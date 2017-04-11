"""
elf.py

Handle parsing of the DWARF DIE tree and locating variables
"""

class Object():
    """ Hack for running main method outside of flask. """
    pass

from elftools.elf.elffile import ELFFile
if __name__ != "__main__":
    from flask import g
else:
    # Fake flask global object to give debugging flag
    g = Object()
    g.debug = True

from pprint import pprint

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

TYPES = (TYP_TAG, ARR_TAG, PTR_TAG, ENM_TAG, STC_TAG, DEF_TAG)

ENGLISH = {
    VAR_TAG: 'local variable',
    PAR_TAG: 'parameter'
}

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
            if g.debug:
                print('(func) %d: %s' % (die.offset, die.tag))

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
                if g.debug:
                    print('(var)  %d: %s' % (child.offset, child.tag))
                if child.tag == VAR_TAG or child.tag == PAR_TAG:
                    # Get variable name, type, and locations
                    name = parse_name(child.attributes[NAME])
                    typ = parse_type(child.attributes[TYPE])
                    line = child.attributes[LINE].value
                    loc = parse_location(child.attributes[LOC])

                    # Add to dictionary
                    symbols[fcn][name] = {
                        'type'  : typ,
                        'line'  : line,
                        'loc'   : loc,
                        'role'  : ENGLISH[child.tag]
                    }

        elif die.tag in TYPES:
            if g.debug:
                print('(type) %d: %s' % (die.offset, die.tag))

            if die.tag == DEF_TAG:
                print(die)

            # regular types entries with a name
            try: name = parse_type(die.attributes[NAME])
            # no name, not relevant
            except: name = ''
            # pointer types and typedefs have another reference
            try: ref = parse_type(die.attributes[TYPE])
            # no ref, no worries
            except: ref = 0

            # Save in types dictionary by offset
            types[die.offset] = {
                'name'  :   name,
                'tag'   :   die.tag,
                'ref'   :   ref
            }

        elif g.debug:
            print('(???)  %d: %s' % (die.offset, die.tag))

    # Turn type references into actual types
    for fcn in symbols:
        for name in symbols[fcn]:
            if "$" in name: continue
            try:
                symbols[fcn][name]['type'] = resolve_type(types, symbols[fcn][name]['type'])
            except KeyError:
                if g.debug:
                    print('Type %s not found in DIE tree' % symbols[fcn][name]['type'])

    if g.debug:
        pprint(types)
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

def resolve_type(types, key):
    """ Lookup a type in the dictionary generated from the
    DWARF tree, taking account of pointers and enumerations
    and return a string name of the type.
    """
    tag = types[key]['tag']
    if tag == TYP_TAG:
        # return name with trailing space
        return types[key]['name'] + ' '
    if tag == PTR_TAG:
        newkey = types[key]['ref']
        return resolve_type(types, newkey) + '*'
    if tag == ARR_TAG:
        newkey = types[key]['ref']
        return resolve_type(types, newkey) + '[] '
    if tag == ENM_TAG:
        return 'enum ' + types[key]['name'] + ' '
    if tag == DEF_TAG:
        suffix = ' ({}) '.format(resolve_type(types, types[key]['ref']))
        return types[key]['name'] + suffix

    return tag

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
                'line'  : symbols[fcn][sym]['line'],
                'role'  : symbols[fcn][sym]['role']
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
