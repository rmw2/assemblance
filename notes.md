## notes.md
Information about DWARF info, gcc, and other tidbits that may be useful.

* .cfi_def_cfa_offset directives give the current height of the stack beyond the canonical frame address (usually the value in %rbp)
* DW_AT_location has two components, first specifies location/type and second is exact location relative to the first
	- 145 = 0x91 is the framebase register
	- 156 = 0x9c is the canonical frame address
	- Offsets are encoded as signed LEB128