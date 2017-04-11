"""
elf.py

Handle parsing of the DWARF DIE tree and locating variables
"""

# Relevant tags
FCN_TAG = 'DW_TAG_subprogram'
VAR_TAG = 'DW_TAG_variable'
PAR_TAG = 'DW_TAG_formal_parameter'
TYP_TAG = 'DW_TAG_base_type'
DEF_TAG = 'DW_TAG_typedef'
PTR_TAG = 'DW_TAG_pointer_type'
ARR_TAG = 'DW_TAG_array_type'
STC_TAG = 'DW_TAG_structure_type'
ENM_TAG = 'DW_TAG_enumeration_type'

TYPES = (TYP_TAG, ARR_TAG, PTR_TAG, ENM_TAG, STC_TAG)

# Relevant attributes
LOC  = 'DW_AT_location'
TYPE = 'DW_AT_type'
NAME = 'DW_AT_name'
LINE = 'DW_AT_decl_line'
BASE = 'DW_AT_frame_base'
LOPC = 'DW_AT_low_pc'
HIPC = 'DW_AT_high_pc'

# Relevant conversions
OP_CFA = 0x91
OP_REG = 0x50
OP_BREG = 0x71

regs = [    # Register names in order
    'rax', 'rcx', 'rdx', 'rbx',
    'rsp', 'rbp', 'rsi', 'rdi',
    'r8' , 'r9' , 'r10', 'r11',
    'r12', 'r14', 'r14', 'r15'
]

from main import app
from elftools.elf.elffile import ELFFile
from flask import g
from pprint import pprint

def get_leb128(leb, signed=True):
    """ Decode a LEB128 signed integer represented as a list of bytes.
    """

    value = 0
    i = 0

    while leb[i] & 128 > 0:
        value |= (leb[i] & 127) << 7*i
        i += 1

    if signed:
        value |= ((leb[i] & 63) - (leb[i] & 64)) << 7*i
    else:
        value |= (leb[i] & 127) << 7*i

    return value

def find_variables(stream):
    """ Take a dwarf_info object and generate a dictionary of source code
    symbols and stack/register positions.
    """
    # Parse the stream
    elf = ELFFile(stream)
    dwarf = elf.get_dwarf_info()

    # Dictionary to hold stuff
    symbols = {}
    types = {}

    root = list(dwarf.iter_CUs())[0].get_top_DIE()

    for die in root.iter_children():
        # Walk through top level children, includes functions and types
        if die.tag == FCN_TAG:
            # Handle function, descend
            fcn = parse_name(die.attributes[NAME])

            # Add general function attributes to dictionary
            symbols[fcn] = {
                '$info': {
                    'base' : die.attributes[BASE].value,
                    'line' : die.attributes[LINE].value,
                    'lopc' : die.attributes[LOPC].value,
                    'hipc' : die.attributes[HIPC].value
                }
            }

            # Iterate over function's children
            for child in die.iter_children():
                if app.debug:
                    print(child.tag)
                if child.tag == VAR_TAG or child.tag == PAR_TAG:
                    if app.debug:
                        print(child)
                    # Get variable name, type, and locations
                    name = parse_name(child.attributes[NAME])
                    typ = parse_type(child.attributes[TYPE])
                    line = child.attributes[LINE].value
                    loc = parse_location(child.attributes[LOC])

                    # Add to dictionary
                    symbols[fcn][name] = {
                        'type'  : typ,
                        'line'  : line,
                        'loc'   : loc
                    }

        elif die.tag == TYP_TAG:
            # Add type to dictionary
            name = parse_type(die.attributes[NAME])
            offset = die.offset
            types[offset] = name

    # Turn type references into actual types
    for fcn in symbols:
        for name in symbols[fcn]:
            if "$" in name: continue
            try:
                symbols[fcn][name]['type'] = types[symbols[fcn][name]['type']]
            except KeyError:
                pass

    if app.debug:
        pprint(symbols)

    return symbols

def parse_name(name):
    return name.value.decode('UTF-8')

def parse_type(typ):
    try:
        return typ.value.decode('UTF-8')
    except:
        return typ.value

def parse_location(loc):
    """ Take the value of a location attribute (DW_AT_location) loc
    and return a string corresponding to its location in memory in
    x86-assembly (usually either a register or offset from one).
    """
    loc = loc.value

    if loc[0] == OP_CFA:
        # Indicates (signed) LEB128 offset from base pointer
        return get_leb128(loc[1:])

    if loc[0] >= OP_REG and loc[0] < OP_BREG:
        # Indicates in-register location

        # TODO: figure out size of operand and change register name accordingly
        result = regs[loc[0] - OP_REG]
        return '%' + result

    if loc[0] >= OP_BREG:
        # Get offset from register
        offset = get_leb128(loc[1:])
        # Get register
        reg = regs[loc[0] - OP_BREG]

        return [offset, reg]

def format_location(loc, offset):
    # Format string for indirect addressing
    ind = "{}({})"

    if type(loc) is int:
        # offset from %rbp, corrected by cfa_offset
        return ind.format(loc + offset, '%rbp')
    if type(loc) is list:
        # register + offset pair
        return ind.format(loc[0], loc[1])
    if type(loc) is str:
        # register only
        return loc

    raise "you fuq'd up son"


def find_locations(symbols, asm):
    # Refactor dictionary and include symbols
    locs = {}

    # Get cfa offsets from assembly file
    name = None
    for line in asm:
        if "@function" in line:
            tokens = line.strip().split()
            name = tokens[1].strip(',')
        if name is not None and ".cfi_def_cfa_offset" in line:
            tokens = line.strip().split()
            offset = int(tokens[1])
            locs[name] = {'offset' : offset}

    # Get symbols by location, corrected by offset
    for fcn in symbols:
        # Lookup base pointer offset
        for sym in symbols[fcn]:
            if sym.startswith('$'): continue

            # Translate location into x86-assembly
            loc = format_location(symbols[fcn][sym]['loc'], locs[fcn]['offset'])

            # Add to dictionary
            locs[fcn][loc] = {
                'name'  : sym,
                'type'  : symbols[fcn][sym]['type'],
                'line'  : symbols[fcn][sym]['line']
            }

    return locs

def parse_elf(stream, asm):
    """ Take an open stream corresponding to and ELF (.o) file,
    and it's corresponding assembly code as a list of strings
    and parse the debugging information into a dictionary of
    locations and symbols.  Close the stream when finished.
    """

    syms = find_variables(stream)
    locs = find_locations(syms, asm)
    stream.close()

    return locs

if __name__ == "__main__":
    from elftools.elf.elffile import ELFFile
    import sys

    # Process each file
    for filename in sys.argv[1:]:
        with open(filename, 'rb') as ofile:
            with open(filename[:-2] + '.s') as sfile:
                asm = sfile.readlines()
                locs = parse_elf(ofile, asm)

        print('\nLocations:')
        pprint(locs)
