"""
Relevant string constants in the dwarf specification
"""

# Type Tags
TYP_TAG = 'DW_TAG_base_type'
DEF_TAG = 'DW_TAG_typedef'
PTR_TAG = 'DW_TAG_pointer_type'
ARR_TAG = 'DW_TAG_array_type'
STC_TAG = 'DW_TAG_structure_type'
ENM_TAG = 'DW_TAG_enumeration_type'
CST_TAG = 'DW_TAG_const_type'

TYP = (TYP_TAG, ARR_TAG, PTR_TAG, ENM_TAG, STC_TAG, DEF_TAG, CST_TAG)

# Top-level tags
FCN_TAG = 'DW_TAG_subprogram'
VAR_TAG = 'DW_TAG_variable'
PAR_TAG = 'DW_TAG_formal_parameter'

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
SIZE = 'DW_AT_byte_size'

# Relevant forms
SECTOFF = 'DW_FORM_sec_offset'
EXPRLOC = 'DW_FORM_exprloc'


# Constants, unsigned and signed
OP_CONSTU = 0x10
OP_CONSTS = 0x11
# Literal, pushed onto the dwarf stack
OP_LIT = 0x30

# Followed by number of bytes corresponding to target address size
OP_ADDR = 0x03
# No operands, register number
OP_REG = 0x50
# One operand, offset from register number
OP_BREG = 0x71
# One operand, register number
OP_REGX = 0x90
# One operand, offset from frame base
OP_FBO = 0x91
# Two operands, register number and offset
OP_BREGX = 0x92
# Canonical frame address
OP_CFA = 0x9c

