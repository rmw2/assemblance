# TODO: Add support for line mapping

from elftools.elf.elffile import ELFFile
from constants import *
from x86 import regs

class CDwarf():
    """ A class representing a C program's debugging information.
    """

    raw = None
    name = ''

    _types = {}
    _functions = {}
    _globals = {}

    verbose = False

    def __init__(self, file, verbose=False):
        """ Convert a dwarf die tree into a dict with the same structure.

        The input tree should be a DWARF object parsed by pyelftools. This will
        walk the python object representation of that tree and convert it to a
        more verbose and json serializable representation.

        The debugging information is assumed to have been generated for a C90 program.
        """

        self.raw = ELFFile(file).get_dwarf_info()
        self.verbose = verbose

        self._loclist = lambda x: self.raw.location_lists(
            ).get_location_list_at_offset(x)[0].loc_expr

        # Get the root of the tree to begin the walk
        # TODO: include support for multiple compilation units
        self.root = list(self.raw.iter_CUs())[0].get_top_DIE()
        self.name = self.root.attributes[NAME].value.decode('utf8')

        self.find_types()
        self.find_vars()


    def find_types(self):
        # First iterate through tree, gathering types
        for die in self.root.iter_children():
            at = die.attributes
            if die.tag in TYP:
                self._types[die.offset] = self.parse_type(die)
                if self.verbose: print(die)
            elif die.tag == FCN_TAG:
                fcn = at[NAME].value if NAME in at else None
                for child in die.iter_children():
                    if child.tag not in TYP: continue
                    if self.verbose: print(child)
                    self._types[child.offset] = self.parse_type(child, fcn)
            elif die.tag == VAR_TAG:
                continue
            else:
                print('Not function or type', die.tag)


        # Iterate through types and resolve references etc.
        for offset, t in self._types.items():
            # Resolve the names of pointer/compound types
            self._types[offset]['name'] = self.deref_type(t)
            # Include alias field for typedefs
            if t['tag'] == DEF_TAG and t['ref']:
                self._types[offset]['alias'] = self.deref_type(self._types[t['ref']])

    def find_vars(self):
        # Walk through top level children, includes functions and types
        for die in self.root.iter_children():
            at = die.attributes
            # Decode name of tag
            name = at[NAME].value.decode('utf-8') if NAME in at else None

            if die.tag == FCN_TAG:
                if self.verbose: print(die)
                self._functions[name] = self.parse_fcn(die)
            elif die.tag in TYP:
                # That's fine we already dealt with it
                continue
            elif die.tag == VAR_TAG:
                if self.verbose: print(die)
                self._globals[name] = {
                    'type' : at[TYPE].value if TYPE in at else None,
                    'line' : at[LINE].value if LINE in at else None,
                    'loc'  : self.parse_loc(at[LOC]) if LOC in at else None
                }
            else:
                # Not sure what this is, let's find out
                print(die.tag, name)
                print(die)

    def offset_to_name(self):
        """ Invert the internal mapping of C names to addresses.
        Return a dictionary mapping string names of stack offsets to their
        variable names and types.
        """
        offsets = {}

        for fcn, symbols in self._functions.items():
            offsets[fcn] = {}
            for sym, details in symbols['vars'].items():
                if not details['loc'] or not details['type']: 
                    if self.verbose: print('No type or location details for %s\n\t' % sym, details)
                    continue

                typ = self._types[details['type']]

                if typ['size']:
                    loc = loc_to_string(details['loc'], typ['size'])
                else:
                    if self.verbose: print('Unknown type size: ', typ)
                    loc = '__unknown__'

                offsets[fcn][loc] = {
                    'name'  : sym,
                    'type'  : typ['name'],
                    'line'  : details['line'],
                    'role'  : details['role']
                }

        return offsets

    def __str__(self):
        string = """
    C Debugging information for '%s'
        %d functions
        %d global variables
        %d distinct types
        """ % (self.name, len(self._functions), len(self._globals), len(self._types))

        return string

    def parse_fcn(self, die):
        """ Parse a function DIE and its children and return a dict describing it.
        """
        at = die.attributes

        # Intialize data to gather for a function
        fcn = {
            'vars'  : {},
            'base'  : self.parse_loc(at[BASE]) if BASE in at else None,
            'line'  : at[LINE].value if LINE in at else None,
            'loc'   : at[LOPC].value if LOPC in at else None
        }

        # Gather children of function
        for child in die.iter_children():
            if self.verbose: print(child)
            # Gather attributes
            at = child.attributes
            name = at[NAME].value.decode('utf-8') if NAME in at else None
            var = {
                'type' : at[TYPE].value if TYPE in at else None,
                'line' : at[LINE].value if LINE in at else None,
                'loc'  : self.parse_loc(at[LOC], fcn['base']) if LOC in at else None,
                'role' : None
            }
            
            # Add to proper place in dictionary
            if child.tag == TYP_TAG:
                continue

            if child.tag in (VAR_TAG, PAR_TAG):
                var['role'] = 'local variable' if child.tag == VAR_TAG else 'parameter'
                fcn['vars'][name] = var
            else:
                print('Child of function:', child.tag, name)

        return fcn

    def parse_type(self, die, scope='(global)'):
        """ Parse a data type DIE and return a dict describing it.
        """
        at = die.attributes

        sz = at[SIZE].value if SIZE in at else None

        # Correct pointer size to be word size if unspecified
        if not sz and die.tag == PTR_TAG: sz = 8

        typ = {
            'name'   : at[NAME].value.decode('utf-8') if NAME in at else None,
            'ref'    : at[TYPE].value if TYPE in at else None,
            'size'   : sz,
            'tag'    : die.tag,
            'scope'  : scope
        }

        return typ

    def deref_type(self, t):
        """ Follow references of a pointer type to determine its name.
        """
        ref = self._types[t['ref']] if t['ref'] is not None and t['ref'] in self._types else None

        if t['tag'] == TYP_TAG:
            return t['name']

        if t['tag'] == STC_TAG:
            if t['name'] is None:
                return 'struct (unnamed)'
            if t['name'].startswith('struct '):
                # Don't add prefix more than once
                return t['name']
            return 'struct ' + t['name']

        if t['tag'] == ENM_TAG:
            if t['name'] is None:
                return 'enum (unnamed)'
            if t['name'].startswith('enum '):
                return t['name']
            return 'enum ' + t['name']

        if t['tag'] in (PTR_TAG, ARR_TAG):
            if ref is None:
                return 'void*'
            return self.deref_type(ref) + '*'

        if t['tag'] == CST_TAG:
            return 'const ' + self.deref_type(ref)

        if t['tag'] == DEF_TAG:
            return t['name']

        print('Tag %s not handled by type resolution!!' % t['tag'])
        raise RuntimeError('fell thru broh')

    def parse_loc(self, loc, frame_base=None):
        if loc.form == EXPRLOC:
            return exprloc(loc.value, frame_base)
        if loc.form == SECTOFF:
            return exprloc(self._loclist(loc.value))
        raise RuntimeError('Location form unrecognized:', loc.form)

def exprloc(expr, frame_base=None):
    """ Decode a dwarf expression into an explicit description of the location.

    This does not parse the full potential values of a dwarf expression, but
    makes some assumptions about the types of expressions that will be generated
    by a C program.  Undecoded expressions will raise an exception.

    Locations can be parsed in three types:
        - address
        - register
        - offset from address in register
    """

    try:
        expr = list(expr)
    except:
        raise RuntimeError('List expected, got %s instead (%s)' % (type(expr), expr))

    # Store location information in a dict
    loc = {}

    # First byte in the expression specifies type
    op = expr[0]

    # Constant
    if op == OP_CONSTS or op == OP_CONSTU:
        return {
            'type'  : 'constant',
            'val'   : decode_leb128(expr[1:], op == OP_CONSTS),
            'op'    : hex(op)
        }

    # Memory address
    if op == OP_ADDR:
        return {
            'type'  : 'addr',
            'addr'  : decode_leb128(expr[1:]),
            'op'    : hex(op)
        }

    # HACK for gcc fuckery and frame bases
    if op == OP_CFA:
        return {
            'type'  : 'offset',
            'reg'   : 6,
            'offset': 16,
            'op'    : hex(op)
        }

    # Frame base offset
    if op == OP_FBO:
        if not frame_base: 
            raise RuntimeError('No frame base specified to frame base offset')

        # Describe frame base
        fb = frame_base['reg'] if 'reg' in frame_base else None
        offset = frame_base['offset'] if 'offset' in frame_base else 0

        return {
            'type'  : 'offset',
            'reg'   : fb,
            'offset': decode_leb128(expr[1:]) + offset,
            'op'    : hex(op)
        }

    # In-register location
    if op >= OP_REG and op < OP_BREG:
        return {
            'type'  : 'register',
            'reg'   : op - OP_REG,
            'op'    : hex(op)
        }

    # Register offset
    if op >= OP_BREG and op < OP_REGX:
        return {
            'type'  : 'offset',
            'reg'   : op - OP_BREG,
            'offset': decode_leb128(expr[1:]),
            'op'    : hex(op)
        }

    # DWARF Stack operations...

    # Not going to implement the full stack machine, so just going to hack
    # out some literal handling and call it a day
    if op >= OP_LIT and op < OP_REG:
        return {
            'type'  : 'literal',
            'val'   : op - OP_LIT,
            'op'    : hex(op)
        }

    print('Location encoding not understood!')
    print('\tOP:   %x\n\texpr: [%s]' % (op, ', '.join([str(b) for b in expr])))
    return None

def decode_leb128(leb, signed=True):
    """ Decode a LEB128 signed integer represented as a list of bytes.
    Adapted from pseudocode provided in https://en.wikipedia.org/wiki/LEB128
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
        raise RuntimeError('LEB128 decoding error: \n\t%s could not be decoded.' % leb)

def loc_to_string(loc, size):
    """ Make a string from an object describing a memory location.
    """
    if not loc: return None

    if loc['type'] == 'offset':
        return '%d(%%%s)' % (loc['offset'], regs[8][loc['reg']])
    if loc['type'] == 'register':
        return '%' + regs[size][loc['reg']]
    if loc['type'] == 'constant' or loc['type'] == 'literal':
        return '$%d' % loc['val']
    if loc['type'] == 'addr':
        return str(loc['addr'])

    return None

if __name__ == '__main__':
    from pprint import pprint
    import sys

    with open(sys.argv[1], 'rb') as file:
        dw = CDwarf(file, verbose=False)

    print('Functions and variables:')
    pprint(dw._functions)
    print('Locations:')
    pprint(dw.offset_to_name())
