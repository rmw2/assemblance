"""
elf.py

Handle parsing of the DWARF DIE tree and locating variables
"""

# Relevant tags
FCN_TAG = 'DW_TAG_subprogram'
VAR_TAG = 'DW_TAG_variable'
PAR_TAG = 'DW_TAG_formal_paramater'
TYP_TAG = 'DW_TAG_base_type'
DEF_TAG = 'DW_TAG_typedef'
PTR_TAG = 'DW_TAG_pointer_type'
ARR_TAG = 'DW_TAG_array_type'
STC_TAG = 'DW_TAG_structure_type'
ENM_TAG = 'DW_TAG_enumeration_type'

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

from elftools.elf.elffile import ELFFile

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
            fcn = die.attributes[NAME].value.decode('UTF-8')

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
                if child.tag == VAR_TAG:
                    # Get variable name, type, and locations
                    name = child.attributes[NAME].value.decode('UTF-8')
                    typ = child.attributes[TYPE].value
                    line = child.attributes[LINE].value
                    loc = child.attributes[LOC].value

                    # Add to dictionary
                    symbols[fcn][name] = {
                        'type'  : typ,
                        'line'  : line,
                        'loc'   : loc
                    }

        elif die.tag == TYP_TAG:
            # Add type to dictionary
            name = die.attributes[NAME].value
            offset = die.offset
            types[offset] = name

        elif die.tag == ENM_TAG:
            # Lookup base type and add to dictionary
            pass

        elif die.tag == DEF_TAG:
            # Lookup defined tag and add to dictionary
            pass

    # Refactor dictionary and include symbols
    locs = {}
    for fcn in symbols:
        # Divide by function
        locs[fcn] = {}
        for sym in symbols[fcn]:
            if sym.startswith('$'): continue

            # Translate location into assembly
            loc = parse_location(symbols[fcn][sym]['loc'])
            typ = symbols[fcn][sym]['type']

            if typ in types:
                # Add location to dictionary
                locs[fcn][loc] = {
                    'name'  : sym,
                    'type'  : types[typ],
                    'line'  : symbols[fcn][sym]['line']
                }

    return locs, symbols

def parse_location(loc):
    """ Take the value of a location attribute (DW_AT_location) loc
    and return a string corresponding to its location in memory in
    x86-assembly (usually either a register or offset from one).
    """

    # Format string for indirect addressing
    ind = "{}(%{})"

    if loc[0] == OP_CFA:
        # Indicates (signed) LEB128 offset from base pointer
        offset = get_leb128(loc[1:])
        result = ind.format(offset, 'rbp')

        return result

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

        return ind.format(offset, reg)

if __name__ == "__main__":
    from elftools.elf.elffile import ELFFile
    from pprint import pprint
    import sys

    # Process each file
    for filename in sys.argv[1:]:
        with open(filename, 'rb') as file:
            (locs, symbols) = find_variables(file)

        print('\nSymbols:')
        pprint(symbols)
        print('\nLocations:')
        pprint(locs)
