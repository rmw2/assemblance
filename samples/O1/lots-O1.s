	.file	"lots.c"
	.text
.Ltext0:
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC0:
	.string	"%d%d%d%d%d%d%d%d%d%d%d%d"
	.text
	.globl	lots
	.type	lots, @function
lots:
.LFB11:
	.file 1 "lots.c"
	.loc 1 3 0
	.cfi_startproc
	subq	$72, %rsp
	.cfi_def_cfa_offset 80
	.loc 1 6 0
	movl	$0, 48(%rsp)
	movl	$0, 40(%rsp)
	movl	$0, 32(%rsp)
	movl	$0, 24(%rsp)
	movl	$0, 16(%rsp)
	movl	$0, 8(%rsp)
	movl	$0, (%rsp)
	movl	$0, %r9d
	movl	$0, %r8d
	movl	$0, %ecx
	movl	$0, %edx
	movl	$0, %esi
	movl	$.LC0, %edi
	movl	$0, %eax
	call	printf
.LVL0:
	.loc 1 10 0
	movl	$0, %eax
	addq	$72, %rsp
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE11:
	.size	lots, .-lots
	.globl	main
	.type	main, @function
main:
.LFB12:
	.loc 1 12 0
	.cfi_startproc
	subq	$8, %rsp
	.cfi_def_cfa_offset 16
	.loc 1 13 0
	call	lots
.LVL1:
	.loc 1 16 0
	movl	$0, %eax
	addq	$8, %rsp
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE12:
	.size	main, .-main
.Letext0:
	.file 2 "/usr/local/gcc-4.8.1-for-linux64/lib/gcc/x86_64-pc-linux/4.8.1/include/stddef.h"
	.file 3 "/usr/local/gcc-4.8.1-for-linux64/include/bits/types.h"
	.file 4 "/usr/local/gcc-4.8.1-for-linux64/include/libio.h"
	.file 5 "/usr/local/gcc-4.8.1-for-linux64/include/stdio.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x3d9
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.LASF48
	.byte	0x1
	.long	.LASF49
	.long	.LASF50
	.quad	.Ltext0
	.quad	.Letext0-.Ltext0
	.long	.Ldebug_line0
	.uleb128 0x2
	.long	.LASF7
	.byte	0x2
	.byte	0xd4
	.long	0x38
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
	.long	0x69
	.uleb128 0x2
	.long	.LASF9
	.byte	0x3
	.byte	0x8e
	.long	0x69
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.long	.LASF10
	.uleb128 0x5
	.byte	0x8
	.uleb128 0x6
	.byte	0x8
	.long	0x95
	.uleb128 0x3
	.byte	0x1
	.byte	0x6
	.long	.LASF11
	.uleb128 0x7
	.long	.LASF41
	.byte	0xd8
	.byte	0x4
	.value	0x111
	.long	0x223
	.uleb128 0x8
	.long	.LASF12
	.byte	0x4
	.value	0x112
	.long	0x62
	.byte	0
	.uleb128 0x8
	.long	.LASF13
	.byte	0x4
	.value	0x117
	.long	0x8f
	.byte	0x8
	.uleb128 0x8
	.long	.LASF14
	.byte	0x4
	.value	0x118
	.long	0x8f
	.byte	0x10
	.uleb128 0x8
	.long	.LASF15
	.byte	0x4
	.value	0x119
	.long	0x8f
	.byte	0x18
	.uleb128 0x8
	.long	.LASF16
	.byte	0x4
	.value	0x11a
	.long	0x8f
	.byte	0x20
	.uleb128 0x8
	.long	.LASF17
	.byte	0x4
	.value	0x11b
	.long	0x8f
	.byte	0x28
	.uleb128 0x8
	.long	.LASF18
	.byte	0x4
	.value	0x11c
	.long	0x8f
	.byte	0x30
	.uleb128 0x8
	.long	.LASF19
	.byte	0x4
	.value	0x11d
	.long	0x8f
	.byte	0x38
	.uleb128 0x8
	.long	.LASF20
	.byte	0x4
	.value	0x11e
	.long	0x8f
	.byte	0x40
	.uleb128 0x8
	.long	.LASF21
	.byte	0x4
	.value	0x120
	.long	0x8f
	.byte	0x48
	.uleb128 0x8
	.long	.LASF22
	.byte	0x4
	.value	0x121
	.long	0x8f
	.byte	0x50
	.uleb128 0x8
	.long	.LASF23
	.byte	0x4
	.value	0x122
	.long	0x8f
	.byte	0x58
	.uleb128 0x8
	.long	.LASF24
	.byte	0x4
	.value	0x124
	.long	0x25b
	.byte	0x60
	.uleb128 0x8
	.long	.LASF25
	.byte	0x4
	.value	0x126
	.long	0x261
	.byte	0x68
	.uleb128 0x8
	.long	.LASF26
	.byte	0x4
	.value	0x128
	.long	0x62
	.byte	0x70
	.uleb128 0x8
	.long	.LASF27
	.byte	0x4
	.value	0x12c
	.long	0x62
	.byte	0x74
	.uleb128 0x8
	.long	.LASF28
	.byte	0x4
	.value	0x12e
	.long	0x70
	.byte	0x78
	.uleb128 0x8
	.long	.LASF29
	.byte	0x4
	.value	0x132
	.long	0x46
	.byte	0x80
	.uleb128 0x8
	.long	.LASF30
	.byte	0x4
	.value	0x133
	.long	0x54
	.byte	0x82
	.uleb128 0x8
	.long	.LASF31
	.byte	0x4
	.value	0x134
	.long	0x267
	.byte	0x83
	.uleb128 0x8
	.long	.LASF32
	.byte	0x4
	.value	0x138
	.long	0x277
	.byte	0x88
	.uleb128 0x8
	.long	.LASF33
	.byte	0x4
	.value	0x141
	.long	0x7b
	.byte	0x90
	.uleb128 0x8
	.long	.LASF34
	.byte	0x4
	.value	0x14a
	.long	0x8d
	.byte	0x98
	.uleb128 0x8
	.long	.LASF35
	.byte	0x4
	.value	0x14b
	.long	0x8d
	.byte	0xa0
	.uleb128 0x8
	.long	.LASF36
	.byte	0x4
	.value	0x14c
	.long	0x8d
	.byte	0xa8
	.uleb128 0x8
	.long	.LASF37
	.byte	0x4
	.value	0x14d
	.long	0x8d
	.byte	0xb0
	.uleb128 0x8
	.long	.LASF38
	.byte	0x4
	.value	0x14e
	.long	0x2d
	.byte	0xb8
	.uleb128 0x8
	.long	.LASF39
	.byte	0x4
	.value	0x150
	.long	0x62
	.byte	0xc0
	.uleb128 0x8
	.long	.LASF40
	.byte	0x4
	.value	0x152
	.long	0x27d
	.byte	0xc4
	.byte	0
	.uleb128 0x9
	.long	.LASF51
	.byte	0x4
	.byte	0xb6
	.uleb128 0xa
	.long	.LASF42
	.byte	0x18
	.byte	0x4
	.byte	0xbc
	.long	0x25b
	.uleb128 0xb
	.long	.LASF43
	.byte	0x4
	.byte	0xbd
	.long	0x25b
	.byte	0
	.uleb128 0xb
	.long	.LASF44
	.byte	0x4
	.byte	0xbe
	.long	0x261
	.byte	0x8
	.uleb128 0xb
	.long	.LASF45
	.byte	0x4
	.byte	0xc2
	.long	0x62
	.byte	0x10
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x22a
	.uleb128 0x6
	.byte	0x8
	.long	0x9c
	.uleb128 0xc
	.long	0x95
	.long	0x277
	.uleb128 0xd
	.long	0x86
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x223
	.uleb128 0xc
	.long	0x95
	.long	0x28d
	.uleb128 0xd
	.long	0x86
	.byte	0x13
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x293
	.uleb128 0xe
	.long	0x95
	.uleb128 0xf
	.long	.LASF52
	.byte	0x1
	.byte	0x3
	.long	0x62
	.quad	.LFB11
	.quad	.LFE11-.LFB11
	.uleb128 0x1
	.byte	0x9c
	.long	0x384
	.uleb128 0x10
	.string	"a"
	.byte	0x1
	.byte	0x4
	.long	0x62
	.uleb128 0x10
	.string	"b"
	.byte	0x1
	.byte	0x4
	.long	0x62
	.uleb128 0x10
	.string	"c"
	.byte	0x1
	.byte	0x4
	.long	0x62
	.uleb128 0x10
	.string	"d"
	.byte	0x1
	.byte	0x4
	.long	0x62
	.uleb128 0x10
	.string	"e"
	.byte	0x1
	.byte	0x4
	.long	0x62
	.uleb128 0x10
	.string	"f"
	.byte	0x1
	.byte	0x4
	.long	0x62
	.uleb128 0x10
	.string	"g"
	.byte	0x1
	.byte	0x4
	.long	0x62
	.uleb128 0x10
	.string	"h"
	.byte	0x1
	.byte	0x4
	.long	0x62
	.uleb128 0x10
	.string	"i"
	.byte	0x1
	.byte	0x4
	.long	0x62
	.uleb128 0x10
	.string	"j"
	.byte	0x1
	.byte	0x4
	.long	0x62
	.uleb128 0x10
	.string	"k"
	.byte	0x1
	.byte	0x4
	.long	0x62
	.uleb128 0x10
	.string	"l"
	.byte	0x1
	.byte	0x4
	.long	0x62
	.uleb128 0x11
	.quad	.LVL0
	.long	0x3c9
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	.LC0
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x58
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x59
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x12
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x12
	.uleb128 0x2
	.byte	0x77
	.sleb128 8
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x12
	.uleb128 0x2
	.byte	0x77
	.sleb128 16
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x12
	.uleb128 0x2
	.byte	0x77
	.sleb128 24
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x12
	.uleb128 0x2
	.byte	0x77
	.sleb128 32
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x12
	.uleb128 0x2
	.byte	0x77
	.sleb128 40
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x12
	.uleb128 0x2
	.byte	0x77
	.sleb128 48
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x13
	.long	.LASF53
	.byte	0x1
	.byte	0xc
	.long	0x62
	.quad	.LFB12
	.quad	.LFE12-.LFB12
	.uleb128 0x1
	.byte	0x9c
	.long	0x3b3
	.uleb128 0x14
	.quad	.LVL1
	.long	0x298
	.byte	0
	.uleb128 0x15
	.long	.LASF46
	.byte	0x5
	.byte	0xa5
	.long	0x261
	.uleb128 0x15
	.long	.LASF47
	.byte	0x5
	.byte	0xa6
	.long	0x261
	.uleb128 0x16
	.long	.LASF54
	.byte	0x5
	.value	0x167
	.long	0x62
	.uleb128 0x17
	.long	0x28d
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
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
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
	.byte	0
	.byte	0
	.uleb128 0x11
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x12
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x13
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
	.uleb128 0x14
	.uleb128 0x4109
	.byte	0
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
	.section	.debug_aranges,"",@progbits
	.long	0x2c
	.value	0x2
	.long	.Ldebug_info0
	.byte	0x8
	.byte	0
	.value	0
	.value	0
	.quad	.Ltext0
	.quad	.Letext0-.Ltext0
	.quad	0
	.quad	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF20:
	.string	"_IO_buf_end"
.LASF28:
	.string	"_old_offset"
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
.LASF48:
	.string	"GNU C 4.8.1 -mtune=generic -march=x86-64 -g -O1"
.LASF24:
	.string	"_markers"
.LASF14:
	.string	"_IO_read_end"
.LASF52:
	.string	"lots"
.LASF32:
	.string	"_lock"
.LASF6:
	.string	"long int"
.LASF54:
	.string	"printf"
.LASF29:
	.string	"_cur_column"
.LASF45:
	.string	"_pos"
.LASF49:
	.string	"lots.c"
.LASF44:
	.string	"_sbuf"
.LASF41:
	.string	"_IO_FILE"
.LASF1:
	.string	"unsigned char"
.LASF4:
	.string	"signed char"
.LASF3:
	.string	"unsigned int"
.LASF42:
	.string	"_IO_marker"
.LASF31:
	.string	"_shortbuf"
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
.LASF53:
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
.LASF46:
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
.LASF50:
	.string	"/Users/onetrob/Documents/Princeton/Projects/Assemblance/samples"
.LASF47:
	.string	"stdout"
.LASF51:
	.string	"_IO_lock_t"
	.ident	"GCC: (GNU) 4.8.1"
	.section	.note.GNU-stack,"",@progbits
