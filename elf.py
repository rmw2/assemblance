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
    g.debug = False

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
CST_TAG = 'DW_TAG_const_type'

TYPES = (TYP_TAG, ARR_TAG, PTR_TAG, ENM_TAG, STC_TAG, DEF_TAG, CST_TAG)

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
FILE = 'DW_AT_decl_file'
CVAL = 'DW_AT_const_value'

# Forms
EXPR = 'DW_FORM_exprloc'
SECO = 'DW_FORM_sec_offset'

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
    try:
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
    except:
        # Give info about crash
        print('LEB128 decoding error: \n\t%s could not be decoded.' % leb)
        raise

def find_variables(dwarf):
    """ Take a dwarf_info object and generate a dictionary of source code
    symbols and stack/register positions.
    """

    # Dictionary to hold stuff
    symbols = {}
    types = {}
    eliminated = []

    root = list(dwarf.iter_CUs())[0].get_top_DIE()

    for die in root.iter_children():
        # Walk through top level children, includes functions and types
        if die.tag == FCN_TAG:
            if g.debug:
                print('(func) %d: %s\t%s '
                    % (die.offset, die.tag, die.attributes[NAME].value))

            # Handle function, descend
            fcn = parse_name(die)

            # Add general function attributes to dictionary
            symbols[fcn] = {'$info': get_fnc_info(die)}

            # Iterate over function's children
            for child in die.iter_children():
                try:
                    if g.debug:
                        print('(var)  %d: %s\%s'
                            % (child.offset, child.tag, child.attributes[NAME].value))
                    if child.tag == VAR_TAG or child.tag == PAR_TAG:
                        # Skip variables declared in other files
                        if FILE in child.attributes and child.attributes[FILE].value != 1:
                            continue

                        # Get variable name, type, and locations
                        name = parse_name(child)
                        typ = parse_type(child)
                        line = parse_line(child)
                        loc = parse_location(child)

                        # Add to dictionary
                        symbols[fcn][name] = {
                            'type'  : typ,
                            'line'  : line,
                            'loc'   : loc,
                            'role'  : ENGLISH[child.tag]
                        }

                except:
                    print('Error parsing debugging entry at %d\n\t(%s, child of %s)'
                        % (child.offset, child.tag, fcn))
                    print(child)
                    raise

        elif die.tag in TYPES:
            try:
                if g.debug:
                    try: name = die.attributes[NAME].value
                    except: name = 'none'
                    print('(type) %d: %s\t%s' % (die.offset, die.tag, name))

                # regular types entries with a name
                name = parse_name(die)
                # pointer types and typedefs have another reference
                ref = parse_type(die)

                # Save in types dictionary by offset
                types[die.offset] = {
                    'name'  :   name,
                    'tag'   :   die.tag,
                    'ref'   :   ref
                }

            except:
                print('Error parsing top level debugging entry at %d\n\t(%s)'
                    % (die.offset, die.tag))
                print(child)
                raise

        elif g.debug:
            print('\n(???)  %d: %s' % (die.offset, die.tag))
            print(die, '\n')

    # Turn type references into actual types
    for fcn in symbols:
        for name in symbols[fcn]:
            if "$" in name: continue
            try:
                symbols[fcn][name]['type'] = resolve_type(types, symbols[fcn][name]['type'])
            except KeyError:
                if g.debug:
                    print('Type %s not found in DIE tree' % symbols[fcn][name]['type'])

    return symbols

def parse_name(die):
    """ Get the name attribute from a debugging entry.
    """
    if NAME in die.attributes:
        return die.attributes[NAME].value.decode('UTF-8')
    else:
        if g.debug:
            print('%s with no name attribute' % die.tag)
            print(die)
        return 'none'

def parse_type(die):
    """ Get the type attribute from a debugging entry.
    """
    if TYPE in die.attributes:
        try:
            return die.attributes[TYPE].value.decode('UTF-8')
        except:
            return die.attributes[TYPE].value
    else:
        if g.debug:
            print('%s with no type' % die.tag)
            print(die)
        return 0

def parse_line(die):
    """ Get declaration line from a debugging entry.
    """
    try:
        return die.attributes[LINE].value
    except:
        return 0


def parse_location(die):
    """ Take the value of a location attribute (DW_AT_location) loc
    and return a string corresponding to its location in memory in
    x86-assembly (usually either a register or offset from one).
    """


    if LOC in die.attributes:
        loc = die.attributes[LOC]
    elif CVAL in die.attributes:
        return '$' + str(die.attributes[CVAL].value)
    else:
        return ''

    if loc.form != EXPR:
        print('Unrecognized location encoding:')
        print('\t%s\t%s' % (die.attributes[LOC].form, die.attributes[LOC].value))
        return '???'

    try:
        if hasattr(loc, 'value'):
            loc = loc.value

        # shitty hack
        if type(loc) is int:
            loc = [loc]

        if loc[0] == OP_CFA:
            if len(loc) > 1:
                # Indicates (signed) LEB128 offset from base pointer
                return get_leb128(loc[1:])
            else:
                # Not sure what this means, maybe just %rbp ?
                return '%rbp'

        if loc[0] >= OP_REG and loc[0] < OP_BREG:
            # Indicates in-register location

            # TODO: figure out size of operand and change register name accordingly
            result = regs[loc[0] - OP_REG]
            return '%' + result

        if loc[0] >= OP_BREG:
            if len(loc) > 1:
                # Get offset from register
                offset = get_leb128(loc[1:])
            else:
                offset = ''

            try:
                # Get register
                reg = regs[loc[0] - OP_BREG]

                return [offset, reg]
            except:
                return '???'

    except:
        print('Unable to resolve location: %s' % loc)
        try: print('\t(decoded: %s)' % get_leb128(loc))
        except: pass
        raise

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
    if tag == CST_TAG:
        newkey = types[key]['ref']
        return 'const ' + resolve_type(types, newkey)

    print('Unable to resolve type:\t%s (%s)' % (key, tag))
    return tag

def get_fnc_info(die):
    """ Get the hi/lo program counter, frame base, and line number of the
    function encoded by the debugging informating entity.
    """
    info = {}

    for att in (BASE, LINE, LOPC, HIPC):
        if att in die.attributes:
            info[att] = die.attributes[att].value
        else:
            info[att] = 0

    return info

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

    if g.debug:
        print('location format not understood: ' + str(loc))

    return '???'


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
        # skip library functions where we don't have variable delcarations
        if fcn not in locs:
            continue

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

def desc(die, func=print):
    """ Apply a function to every node in the the DWARF tree, traversing it
    in preorder. """

    # Find first element
    if hasattr(die, 'iter_CUs'):
        die = list(die.iter_CUs())[0]

    if hasattr(die, 'get_top_DIE'):
        die = die.get_top_DIE()

    # Call the function on the first entry
    func(die)

    # Recur for each child
    for child in die.iter_children():
        desc(child)

def parse_elf(stream, asm):
    """ Take an open stream corresponding to and ELF (.o) file,
    and it's corresponding assembly code as a list of strings
    and parse the debugging information into a dictionary of
    locations and symbols.  Close the stream when finished.
    """

    try:
        # Parse the stream
        elf = ELFFile(stream)
        dwarf = elf.get_dwarf_info()
        # Process elf stuff
        syms = find_variables(dwarf)
        locs = find_locations(syms, asm)
    except:
        if g.debug:
            desc(dwarf)
        raise
    finally:
        stream.close()

    return locs

def print_locs(locs):
    """ Pretty output of locations found in DWARF info.
    """
    for func in locs:
        print(func)

        for loc in locs[func]:
            if loc == 'offset': continue
            print('\t%10s\t%s' % (locs[func][loc]['name'], loc))

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
        print_locs(locs)