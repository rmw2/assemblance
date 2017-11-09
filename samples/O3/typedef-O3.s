	.file	"typedef.c"
	.text
.Ltext0:
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC0:
	.string	"%s"
	.section	.text.startup,"ax",@progbits
	.p2align 4,,15
	.globl	main
	.type	main, @function
main:
.LFB11:
	.file 1 "typedef.c"
	.loc 1 5 0
	.cfi_startproc
.LVL0:
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	.loc 1 6 0
	movq	(%rsi), %rbx
.LVL1:
	.loc 1 9 0
	movl	$.LC0, %edi
.LVL2:
	xorl	%eax, %eax
	movq	%rbx, %rsi
.LVL3:
	call	printf
.LVL4:
	.loc 1 10 0
	movq	%rbx, %rsi
	movl	$.LC0, %edi
	xorl	%eax, %eax
	call	printf
.LVL5:
	.loc 1 13 0
	xorl	%eax, %eax
	popq	%rbx
	.cfi_def_cfa_offset 8
.LVL6:
	ret
	.cfi_endproc
.LFE11:
	.size	main, .-main
	.text
.Letext0:
	.file 2 "/usr/local/gcc-4.8.1-for-linux64/lib/gcc/x86_64-pc-linux/4.8.1/include/stddef.h"
	.file 3 "/usr/local/gcc-4.8.1-for-linux64/include/bits/types.h"
	.file 4 "/usr/local/gcc-4.8.1-for-linux64/include/libio.h"
	.file 5 "/usr/local/gcc-4.8.1-for-linux64/include/stdio.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x36f
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.LASF53
	.byte	0x1
	.long	.LASF54
	.long	.LASF55
	.long	.Ldebug_ranges0+0
	.quad	0
	.long	.Ldebug_line0
	.uleb128 0x2
	.long	.LASF7
	.byte	0x2
	.byte	0xd4
	.long	0x34
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.long	.LASF0
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.long	.LASF1
	.uleb128 0x3
	.byte	0x2
	.byte	0x7
	.long	.LASF2
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.long	.LASF3
	.uleb128 0x3
	.byte	0x1
	.byte	0x6
	.long	.LASF4
	.uleb128 0x3
	.byte	0x2
	.byte	0x5
	.long	.LASF5
	.uleb128 0x4
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x3
	.byte	0x8
	.byte	0x5
	.long	.LASF6
	.uleb128 0x2
	.long	.LASF8
	.byte	0x3
	.byte	0x8d
	.long	0x65
	.uleb128 0x2
	.long	.LASF9
	.byte	0x3
	.byte	0x8e
	.long	0x65
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.long	.LASF10
	.uleb128 0x5
	.byte	0x8
	.uleb128 0x6
	.byte	0x8
	.long	0x91
	.uleb128 0x3
	.byte	0x1
	.byte	0x6
	.long	.LASF11
	.uleb128 0x7
	.long	.LASF41
	.byte	0xd8
	.byte	0x4
	.value	0x111
	.long	0x21f
	.uleb128 0x8
	.long	.LASF12
	.byte	0x4
	.value	0x112
	.long	0x5e
	.byte	0
	.uleb128 0x8
	.long	.LASF13
	.byte	0x4
	.value	0x117
	.long	0x8b
	.byte	0x8
	.uleb128 0x8
	.long	.LASF14
	.byte	0x4
	.value	0x118
	.long	0x8b
	.byte	0x10
	.uleb128 0x8
	.long	.LASF15
	.byte	0x4
	.value	0x119
	.long	0x8b
	.byte	0x18
	.uleb128 0x8
	.long	.LASF16
	.byte	0x4
	.value	0x11a
	.long	0x8b
	.byte	0x20
	.uleb128 0x8
	.long	.LASF17
	.byte	0x4
	.value	0x11b
	.long	0x8b
	.byte	0x28
	.uleb128 0x8
	.long	.LASF18
	.byte	0x4
	.value	0x11c
	.long	0x8b
	.byte	0x30
	.uleb128 0x8
	.long	.LASF19
	.byte	0x4
	.value	0x11d
	.long	0x8b
	.byte	0x38
	.uleb128 0x8
	.long	.LASF20
	.byte	0x4
	.value	0x11e
	.long	0x8b
	.byte	0x40
	.uleb128 0x8
	.long	.LASF21
	.byte	0x4
	.value	0x120
	.long	0x8b
	.byte	0x48
	.uleb128 0x8
	.long	.LASF22
	.byte	0x4
	.value	0x121
	.long	0x8b
	.byte	0x50
	.uleb128 0x8
	.long	.LASF23
	.byte	0x4
	.value	0x122
	.long	0x8b
	.byte	0x58
	.uleb128 0x8
	.long	.LASF24
	.byte	0x4
	.value	0x124
	.long	0x257
	.byte	0x60
	.uleb128 0x8
	.long	.LASF25
	.byte	0x4
	.value	0x126
	.long	0x25d
	.byte	0x68
	.uleb128 0x8
	.long	.LASF26
	.byte	0x4
	.value	0x128
	.long	0x5e
	.byte	0x70
	.uleb128 0x8
	.long	.LASF27
	.byte	0x4
	.value	0x12c
	.long	0x5e
	.byte	0x74
	.uleb128 0x8
	.long	.LASF28
	.byte	0x4
	.value	0x12e
	.long	0x6c
	.byte	0x78
	.uleb128 0x8
	.long	.LASF29
	.byte	0x4
	.value	0x132
	.long	0x42
	.byte	0x80
	.uleb128 0x8
	.long	.LASF30
	.byte	0x4
	.value	0x133
	.long	0x50
	.byte	0x82
	.uleb128 0x8
	.long	.LASF31
	.byte	0x4
	.value	0x134
	.long	0x263
	.byte	0x83
	.uleb128 0x8
	.long	.LASF32
	.byte	0x4
	.value	0x138
	.long	0x273
	.byte	0x88
	.uleb128 0x8
	.long	.LASF33
	.byte	0x4
	.value	0x141
	.long	0x77
	.byte	0x90
	.uleb128 0x8
	.long	.LASF34
	.byte	0x4
	.value	0x14a
	.long	0x89
	.byte	0x98
	.uleb128 0x8
	.long	.LASF35
	.byte	0x4
	.value	0x14b
	.long	0x89
	.byte	0xa0
	.uleb128 0x8
	.long	.LASF36
	.byte	0x4
	.value	0x14c
	.long	0x89
	.byte	0xa8
	.uleb128 0x8
	.long	.LASF37
	.byte	0x4
	.value	0x14d
	.long	0x89
	.byte	0xb0
	.uleb128 0x8
	.long	.LASF38
	.byte	0x4
	.value	0x14e
	.long	0x29
	.byte	0xb8
	.uleb128 0x8
	.long	.LASF39
	.byte	0x4
	.value	0x150
	.long	0x5e
	.byte	0xc0
	.uleb128 0x8
	.long	.LASF40
	.byte	0x4
	.value	0x152
	.long	0x279
	.byte	0xc4
	.byte	0
	.uleb128 0x9
	.long	.LASF56
	.byte	0x4
	.byte	0xb6
	.uleb128 0xa
	.long	.LASF42
	.byte	0x18
	.byte	0x4
	.byte	0xbc
	.long	0x257
	.uleb128 0xb
	.long	.LASF43
	.byte	0x4
	.byte	0xbd
	.long	0x257
	.byte	0
	.uleb128 0xb
	.long	.LASF44
	.byte	0x4
	.byte	0xbe
	.long	0x25d
	.byte	0x8
	.uleb128 0xb
	.long	.LASF45
	.byte	0x4
	.byte	0xc2
	.long	0x5e
	.byte	0x10
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x226
	.uleb128 0x6
	.byte	0x8
	.long	0x98
	.uleb128 0xc
	.long	0x91
	.long	0x273
	.uleb128 0xd
	.long	0x82
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x21f
	.uleb128 0xc
	.long	0x91
	.long	0x289
	.uleb128 0xd
	.long	0x82
	.byte	0x13
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x28f
	.uleb128 0xe
	.long	0x91
	.uleb128 0x2
	.long	.LASF46
	.byte	0x1
	.byte	0x3
	.long	0x8b
	.uleb128 0xf
	.long	.LASF57
	.byte	0x1
	.byte	0x5
	.long	0x5e
	.quad	.LFB11
	.quad	.LFE11-.LFB11
	.uleb128 0x1
	.byte	0x9c
	.long	0x343
	.uleb128 0x10
	.long	.LASF47
	.byte	0x1
	.byte	0x5
	.long	0x5e
	.long	.LLST0
	.uleb128 0x10
	.long	.LASF48
	.byte	0x1
	.byte	0x5
	.long	0x343
	.long	.LLST1
	.uleb128 0x11
	.long	.LASF49
	.byte	0x1
	.byte	0x6
	.long	0x294
	.long	.LLST2
	.uleb128 0x11
	.long	.LASF50
	.byte	0x1
	.byte	0x7
	.long	0x8b
	.long	.LLST2
	.uleb128 0x12
	.quad	.LVL4
	.long	0x35f
	.long	0x321
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	.LC0
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x14
	.quad	.LVL5
	.long	0x35f
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	.LC0
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x8b
	.uleb128 0x15
	.long	.LASF51
	.byte	0x5
	.byte	0xa5
	.long	0x25d
	.uleb128 0x15
	.long	.LASF52
	.byte	0x5
	.byte	0xa6
	.long	0x25d
	.uleb128 0x16
	.long	.LASF58
	.byte	0x5
	.value	0x167
	.long	0x5e
	.uleb128 0x17
	.long	0x289
	.uleb128 0x18
	.byte	0
	.byte	0
	.section	.debug_abbrev,"",@progbits
.Ldebug_abbrev0:
	.uleb128 0x1
	.uleb128 0x11
	.byte	0x1
	.uleb128 0x25
	.uleb128 0xe
	.uleb128 0x13
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1b
	.uleb128 0xe
	.uleb128 0x55
	.uleb128 0x17
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x10
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x2
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x3
	.uleb128 0x24
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0xe
	.byte	0
	.byte	0
	.uleb128 0x4
	.uleb128 0x24
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0x8
	.byte	0
	.byte	0
	.uleb128 0x5
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x7
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x2117
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x11
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x12
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x13
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x14
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x15
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x16
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x17
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x18
	.uleb128 0x18
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.quad	.LVL0
	.quad	.LVL2
	.value	0x1
	.byte	0x55
	.quad	.LVL2
	.quad	.LFE11
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.quad	0
	.quad	0
.LLST1:
	.quad	.LVL0
	.quad	.LVL3
	.value	0x1
	.byte	0x54
	.quad	.LVL3
	.quad	.LFE11
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.quad	0
	.quad	0
.LLST2:
	.quad	.LVL1
	.quad	.LVL6
	.value	0x1
	.byte	0x53
	.quad	0
	.quad	0
	.section	.debug_aranges,"",@progbits
	.long	0x2c
	.value	0x2
	.long	.Ldebug_info0
	.byte	0x8
	.byte	0
	.value	0
	.value	0
	.quad	.LFB11
	.quad	.LFE11-.LFB11
	.quad	0
	.quad	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.quad	.LFB11
	.quad	.LFE11
	.quad	0
	.quad	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF20:
	.string	"_IO_buf_end"
.LASF28:
	.string	"_old_offset"
.LASF49:
	.string	"specialVar"
.LASF23:
	.string	"_IO_save_end"
.LASF5:
	.string	"short int"
.LASF7:
	.string	"size_t"
.LASF10:
	.string	"sizetype"
.LASF33:
	.string	"_offset"
.LASF17:
	.string	"_IO_write_ptr"
.LASF12:
	.string	"_flags"
.LASF19:
	.string	"_IO_buf_base"
.LASF53:
	.string	"GNU C 4.8.1 -mtune=generic -march=x86-64 -g -O3"
.LASF24:
	.string	"_markers"
.LASF14:
	.string	"_IO_read_end"
.LASF50:
	.string	"regularVar"
.LASF32:
	.string	"_lock"
.LASF6:
	.string	"long int"
.LASF58:
	.string	"printf"
.LASF29:
	.string	"_cur_column"
.LASF46:
	.string	"MyNewType"
.LASF45:
	.string	"_pos"
.LASF48:
	.string	"argv"
.LASF44:
	.string	"_sbuf"
.LASF41:
	.string	"_IO_FILE"
.LASF1:
	.string	"unsigned char"
.LASF47:
	.string	"argc"
.LASF4:
	.string	"signed char"
.LASF3:
	.string	"unsigned int"
.LASF42:
	.string	"_IO_marker"
.LASF31:
	.string	"_shortbuf"
.LASF54:
	.string	"typedef.c"
.LASF16:
	.string	"_IO_write_base"
.LASF40:
	.string	"_unused2"
.LASF13:
	.string	"_IO_read_ptr"
.LASF2:
	.string	"short unsigned int"
.LASF11:
	.string	"char"
.LASF57:
	.string	"main"
.LASF43:
	.string	"_next"
.LASF34:
	.string	"__pad1"
.LASF35:
	.string	"__pad2"
.LASF36:
	.string	"__pad3"
.LASF37:
	.string	"__pad4"
.LASF38:
	.string	"__pad5"
.LASF0:
	.string	"long unsigned int"
.LASF18:
	.string	"_IO_write_end"
.LASF9:
	.string	"__off64_t"
.LASF8:
	.string	"__off_t"
.LASF25:
	.string	"_chain"
.LASF22:
	.string	"_IO_backup_base"
.LASF51:
	.string	"stdin"
.LASF27:
	.string	"_flags2"
.LASF39:
	.string	"_mode"
.LASF15:
	.string	"_IO_read_base"
.LASF30:
	.string	"_vtable_offset"
.LASF21:
	.string	"_IO_save_base"
.LASF26:
	.string	"_fileno"
.LASF55:
	.string	"/Users/onetrob/Documents/Princeton/Projects/Assemblance/samples"
.LASF52:
	.string	"stdout"
.LASF56:
	.string	"_IO_lock_t"
	.ident	"GCC: (GNU) 4.8.1"
	.section	.note.GNU-stack,"",@progbits
