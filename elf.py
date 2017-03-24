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

from elftools.elf.elffile import ELFFile

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
						'type'	: typ,
						'line'	: line,
						'loc'	: loc
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
			loc = symbols[fcn][sym]['loc'][1]
			typ = symbols[fcn][sym]['type']

			if typ in types:
				# Add location to dictionary
				locs[fcn][loc] = {
					'name'	: sym,
					'type'	: types[typ],
					'line'	: symbols[fcn][sym]['line']
				}

	return locs, symbols

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
