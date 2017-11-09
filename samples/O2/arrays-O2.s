	.file	"arrays.c"
	.text
.Ltext0:
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC0:
	.string	"%d, %d"
	.section	.text.startup,"ax",@progbits
	.p2align 4,,15
	.globl	main
	.type	main, @function
main:
.LFB18:
	.file 1 "arrays.c"
	.loc 1 5 0
	.cfi_startproc
.LVL0:
	.loc 1 20 0
	movslq	%edi, %rdi
	.loc 1 5 0
	subq	$8, %rsp
	.cfi_def_cfa_offset 16
	.loc 1 20 0
	salq	$2, %rdi
.LVL1:
	call	malloc
.LVL2:
	.loc 1 23 0
	movl	(%rax), %edx
	movl	$3, %esi
	movl	$.LC0, %edi
	xorl	%eax, %eax
.LVL3:
	call	printf
.LVL4:
	.loc 1 26 0
	xorl	%eax, %eax
	addq	$8, %rsp
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE18:
	.size	main, .-main
	.text
.Letext0:
	.file 2 "/usr/local/gcc-4.8.1-for-linux64/lib/gcc/x86_64-pc-linux/4.8.1/include/stddef.h"
	.file 3 "/usr/local/gcc-4.8.1-for-linux64/include/bits/types.h"
	.file 4 "/usr/local/gcc-4.8.1-for-linux64/include/libio.h"
	.file 5 "/usr/local/gcc-4.8.1-for-linux64/include/stdio.h"
	.file 6 "/usr/local/gcc-4.8.1-for-linux64/include/stdlib.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x3be
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.LASF52
	.byte	0x1
	.long	.LASF53
	.long	.LASF54
	.long	.Ldebug_ranges0+0
	.quad	0
	.long	.Ldebug_line0
	.uleb128 0x2
	.long	.LASF8
	.byte	0x2
	.byte	0xd4
	.long	0x34
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.long	.LASF0
	.uleb128 0x4
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.long	.LASF1
	.uleb128 0x5
	.byte	0x8
	.long	0x3b
	.uleb128 0x3
	.byte	0x8
	.byte	0x5
	.long	.LASF2
	.uleb128 0x3
	.byte	0x8
	.byte	0x5
	.long	.LASF3
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.long	.LASF4
	.uleb128 0x3
	.byte	0x2
	.byte	0x7
	.long	.LASF5
	.uleb128 0x3
	.byte	0x1
	.byte	0x6
	.long	.LASF6
	.uleb128 0x3
	.byte	0x2
	.byte	0x5
	.long	.LASF7
	.uleb128 0x2
	.long	.LASF9
	.byte	0x3
	.byte	0x8d
	.long	0x4f
	.uleb128 0x2
	.long	.LASF10
	.byte	0x3
	.byte	0x8e
	.long	0x4f
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.long	.LASF11
	.uleb128 0x6
	.byte	0x8
	.uleb128 0x5
	.byte	0x8
	.long	0x9e
	.uleb128 0x3
	.byte	0x1
	.byte	0x6
	.long	.LASF12
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.long	.LASF13
	.uleb128 0x7
	.long	.LASF43
	.byte	0xd8
	.byte	0x4
	.value	0x111
	.long	0x233
	.uleb128 0x8
	.long	.LASF14
	.byte	0x4
	.value	0x112
	.long	0x3b
	.byte	0
	.uleb128 0x8
	.long	.LASF15
	.byte	0x4
	.value	0x117
	.long	0x98
	.byte	0x8
	.uleb128 0x8
	.long	.LASF16
	.byte	0x4
	.value	0x118
	.long	0x98
	.byte	0x10
	.uleb128 0x8
	.long	.LASF17
	.byte	0x4
	.value	0x119
	.long	0x98
	.byte	0x18
	.uleb128 0x8
	.long	.LASF18
	.byte	0x4
	.value	0x11a
	.long	0x98
	.byte	0x20
	.uleb128 0x8
	.long	.LASF19
	.byte	0x4
	.value	0x11b
	.long	0x98
	.byte	0x28
	.uleb128 0x8
	.long	.LASF20
	.byte	0x4
	.value	0x11c
	.long	0x98
	.byte	0x30
	.uleb128 0x8
	.long	.LASF21
	.byte	0x4
	.value	0x11d
	.long	0x98
	.byte	0x38
	.uleb128 0x8
	.long	.LASF22
	.byte	0x4
	.value	0x11e
	.long	0x98
	.byte	0x40
	.uleb128 0x8
	.long	.LASF23
	.byte	0x4
	.value	0x120
	.long	0x98
	.byte	0x48
	.uleb128 0x8
	.long	.LASF24
	.byte	0x4
	.value	0x121
	.long	0x98
	.byte	0x50
	.uleb128 0x8
	.long	.LASF25
	.byte	0x4
	.value	0x122
	.long	0x98
	.byte	0x58
	.uleb128 0x8
	.long	.LASF26
	.byte	0x4
	.value	0x124
	.long	0x26b
	.byte	0x60
	.uleb128 0x8
	.long	.LASF27
	.byte	0x4
	.value	0x126
	.long	0x271
	.byte	0x68
	.uleb128 0x8
	.long	.LASF28
	.byte	0x4
	.value	0x128
	.long	0x3b
	.byte	0x70
	.uleb128 0x8
	.long	.LASF29
	.byte	0x4
	.value	0x12c
	.long	0x3b
	.byte	0x74
	.uleb128 0x8
	.long	.LASF30
	.byte	0x4
	.value	0x12e
	.long	0x79
	.byte	0x78
	.uleb128 0x8
	.long	.LASF31
	.byte	0x4
	.value	0x132
	.long	0x64
	.byte	0x80
	.uleb128 0x8
	.long	.LASF32
	.byte	0x4
	.value	0x133
	.long	0x6b
	.byte	0x82
	.uleb128 0x8
	.long	.LASF33
	.byte	0x4
	.value	0x134
	.long	0x277
	.byte	0x83
	.uleb128 0x8
	.long	.LASF34
	.byte	0x4
	.value	0x138
	.long	0x287
	.byte	0x88
	.uleb128 0x8
	.long	.LASF35
	.byte	0x4
	.value	0x141
	.long	0x84
	.byte	0x90
	.uleb128 0x8
	.long	.LASF36
	.byte	0x4
	.value	0x14a
	.long	0x96
	.byte	0x98
	.uleb128 0x8
	.long	.LASF37
	.byte	0x4
	.value	0x14b
	.long	0x96
	.byte	0xa0
	.uleb128 0x8
	.long	.LASF38
	.byte	0x4
	.value	0x14c
	.long	0x96
	.byte	0xa8
	.uleb128 0x8
	.long	.LASF39
	.byte	0x4
	.value	0x14d
	.long	0x96
	.byte	0xb0
	.uleb128 0x8
	.long	.LASF40
	.byte	0x4
	.value	0x14e
	.long	0x29
	.byte	0xb8
	.uleb128 0x8
	.long	.LASF41
	.byte	0x4
	.value	0x150
	.long	0x3b
	.byte	0xc0
	.uleb128 0x8
	.long	.LASF42
	.byte	0x4
	.value	0x152
	.long	0x28d
	.byte	0xc4
	.byte	0
	.uleb128 0x9
	.long	.LASF55
	.byte	0x4
	.byte	0xb6
	.uleb128 0xa
	.long	.LASF44
	.byte	0x18
	.byte	0x4
	.byte	0xbc
	.long	0x26b
	.uleb128 0xb
	.long	.LASF45
	.byte	0x4
	.byte	0xbd
	.long	0x26b
	.byte	0
	.uleb128 0xb
	.long	.LASF46
	.byte	0x4
	.byte	0xbe
	.long	0x271
	.byte	0x8
	.uleb128 0xb
	.long	.LASF47
	.byte	0x4
	.byte	0xc2
	.long	0x3b
	.byte	0x10
	.byte	0
	.uleb128 0x5
	.byte	0x8
	.long	0x23a
	.uleb128 0x5
	.byte	0x8
	.long	0xac
	.uleb128 0xc
	.long	0x9e
	.long	0x287
	.uleb128 0xd
	.long	0x8f
	.byte	0
	.byte	0
	.uleb128 0x5
	.byte	0x8
	.long	0x233
	.uleb128 0xc
	.long	0x9e
	.long	0x29d
	.uleb128 0xd
	.long	0x8f
	.byte	0x13
	.byte	0
	.uleb128 0x5
	.byte	0x8
	.long	0x2a3
	.uleb128 0xe
	.long	0x9e
	.uleb128 0xf
	.long	.LASF56
	.byte	0x1
	.byte	0x5
	.long	0x3b
	.quad	.LFB18
	.quad	.LFE18-.LFB18
	.uleb128 0x1
	.byte	0x9c
	.long	0x36c
	.uleb128 0x10
	.long	.LASF48
	.byte	0x1
	.byte	0x5
	.long	0x3b
	.long	.LLST0
	.uleb128 0x10
	.long	.LASF49
	.byte	0x1
	.byte	0x5
	.long	0x36c
	.long	.LLST1
	.uleb128 0x11
	.string	"a"
	.byte	0x1
	.byte	0x6
	.long	0x372
	.uleb128 0x12
	.byte	0x31
	.byte	0x9f
	.byte	0x93
	.uleb128 0x4
	.byte	0x32
	.byte	0x9f
	.byte	0x93
	.uleb128 0x4
	.byte	0x33
	.byte	0x9f
	.byte	0x93
	.uleb128 0x4
	.byte	0x30
	.byte	0x9f
	.byte	0x93
	.uleb128 0x4
	.byte	0x93
	.uleb128 0x4
	.uleb128 0x11
	.string	"b"
	.byte	0x1
	.byte	0x7
	.long	0x49
	.uleb128 0x6
	.byte	0xf2
	.long	.Ldebug_info0+743
	.sleb128 8
	.uleb128 0x12
	.string	"c"
	.byte	0x1
	.byte	0x7
	.long	0x49
	.long	.LLST2
	.uleb128 0x13
	.string	"x"
	.byte	0x1
	.byte	0x8
	.long	0x3b
	.byte	0x3
	.uleb128 0x14
	.quad	.LVL2
	.long	0x398
	.long	0x34b
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x55
	.uleb128 0xb
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x8
	.byte	0x20
	.byte	0x24
	.byte	0x8
	.byte	0x20
	.byte	0x26
	.byte	0x32
	.byte	0x24
	.byte	0
	.uleb128 0x16
	.quad	.LVL4
	.long	0x3ae
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	.LC0
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1
	.byte	0x33
	.byte	0
	.byte	0
	.uleb128 0x5
	.byte	0x8
	.long	0x98
	.uleb128 0xc
	.long	0x3b
	.long	0x382
	.uleb128 0xd
	.long	0x8f
	.byte	0x4
	.byte	0
	.uleb128 0x17
	.long	.LASF50
	.byte	0x5
	.byte	0xa5
	.long	0x271
	.uleb128 0x17
	.long	.LASF51
	.byte	0x5
	.byte	0xa6
	.long	0x271
	.uleb128 0x18
	.long	.LASF57
	.byte	0x6
	.value	0x1d7
	.long	0x96
	.long	0x3ae
	.uleb128 0x19
	.long	0x29
	.byte	0
	.uleb128 0x1a
	.long	.LASF58
	.byte	0x5
	.value	0x167
	.long	0x3b
	.uleb128 0x19
	.long	0x29d
	.uleb128 0x1b
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
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
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
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x12
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
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
	.uleb128 0x13
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x14
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
	.uleb128 0x15
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x16
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x17
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
	.uleb128 0x18
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
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x19
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1a
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
	.uleb128 0x1b
	.uleb128 0x18
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.quad	.LVL0
	.quad	.LVL1
	.value	0x1
	.byte	0x55
	.quad	.LVL1
	.quad	.LFE18
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.quad	0
	.quad	0
.LLST1:
	.quad	.LVL0
	.quad	.LVL2-1
	.value	0x1
	.byte	0x54
	.quad	.LVL2-1
	.quad	.LFE18
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.quad	0
	.quad	0
.LLST2:
	.quad	.LVL2
	.quad	.LVL3
	.value	0x1
	.byte	0x50
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
	.quad	.LFB18
	.quad	.LFE18-.LFB18
	.quad	0
	.quad	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.quad	.LFB18
	.quad	.LFE18
	.quad	0
	.quad	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF58:
	.string	"printf"
.LASF9:
	.string	"__off_t"
.LASF15:
	.string	"_IO_read_ptr"
.LASF57:
	.string	"malloc"
.LASF27:
	.string	"_chain"
.LASF54:
	.string	"/Users/onetrob/Documents/Princeton/Projects/Assemblance/samples"
.LASF52:
	.string	"GNU C 4.8.1 -mtune=generic -march=x86-64 -g -O2"
.LASF8:
	.string	"size_t"
.LASF33:
	.string	"_shortbuf"
.LASF21:
	.string	"_IO_buf_base"
.LASF13:
	.string	"long long unsigned int"
.LASF3:
	.string	"long long int"
.LASF6:
	.string	"signed char"
.LASF28:
	.string	"_fileno"
.LASF16:
	.string	"_IO_read_end"
.LASF2:
	.string	"long int"
.LASF14:
	.string	"_flags"
.LASF22:
	.string	"_IO_buf_end"
.LASF31:
	.string	"_cur_column"
.LASF30:
	.string	"_old_offset"
.LASF35:
	.string	"_offset"
.LASF44:
	.string	"_IO_marker"
.LASF50:
	.string	"stdin"
.LASF1:
	.string	"unsigned int"
.LASF0:
	.string	"long unsigned int"
.LASF19:
	.string	"_IO_write_ptr"
.LASF46:
	.string	"_sbuf"
.LASF5:
	.string	"short unsigned int"
.LASF23:
	.string	"_IO_save_base"
.LASF34:
	.string	"_lock"
.LASF29:
	.string	"_flags2"
.LASF41:
	.string	"_mode"
.LASF51:
	.string	"stdout"
.LASF11:
	.string	"sizetype"
.LASF20:
	.string	"_IO_write_end"
.LASF55:
	.string	"_IO_lock_t"
.LASF43:
	.string	"_IO_FILE"
.LASF47:
	.string	"_pos"
.LASF26:
	.string	"_markers"
.LASF4:
	.string	"unsigned char"
.LASF7:
	.string	"short int"
.LASF32:
	.string	"_vtable_offset"
.LASF53:
	.string	"arrays.c"
.LASF12:
	.string	"char"
.LASF45:
	.string	"_next"
.LASF10:
	.string	"__off64_t"
.LASF17:
	.string	"_IO_read_base"
.LASF25:
	.string	"_IO_save_end"
.LASF36:
	.string	"__pad1"
.LASF37:
	.string	"__pad2"
.LASF38:
	.string	"__pad3"
.LASF39:
	.string	"__pad4"
.LASF40:
	.string	"__pad5"
.LASF42:
	.string	"_unused2"
.LASF49:
	.string	"argv"
.LASF24:
	.string	"_IO_backup_base"
.LASF48:
	.string	"argc"
.LASF56:
	.string	"main"
.LASF18:
	.string	"_IO_write_base"
	.ident	"GCC: (GNU) 4.8.1"
	.section	.note.GNU-stack,"",@progbits
