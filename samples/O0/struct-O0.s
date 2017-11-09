	.file	"struct.c"
	.text
.Ltext0:
	.comm	global_struct,8,4
	.comm	singleton_struct,12,4
	.section	.rodata
.LC0:
	.string	"%p"
	.text
	.globl	main
	.type	main, @function
main:
.LFB0:
	.file 1 "struct.c"
	.loc 1 22 0
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movl	%edi, -36(%rbp)
	movq	%rsi, -48(%rbp)
	.loc 1 27 0
	movl	$0, -32(%rbp)
	.loc 1 28 0
	movl	$0, -28(%rbp)
	.loc 1 31 0
	cmpl	$1, -36(%rbp)
	jle	.L2
	.loc 1 32 0
	movq	$global_struct, -8(%rbp)
	jmp	.L3
.L2:
	.loc 1 34 0
	movq	-32(%rbp), %rax
	movq	%rax, -16(%rbp)
	.loc 1 35 0
	leaq	-32(%rbp), %rax
	movq	%rax, -8(%rbp)
.L3:
	.loc 1 39 0
	movq	-8(%rbp), %rax
	movq	%rax, %rsi
	movl	$.LC0, %edi
	movl	$0, %eax
	call	printf
	.loc 1 41 0
	movl	$0, %eax
	.loc 1 42 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	main, .-main
.Letext0:
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x176
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.LASF13
	.byte	0x1
	.long	.LASF14
	.long	.LASF15
	.quad	.Ltext0
	.quad	.Letext0-.Ltext0
	.long	.Ldebug_line0
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.long	.LASF0
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.long	.LASF1
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.long	.LASF2
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.long	.LASF3
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.long	.LASF4
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.long	.LASF5
	.uleb128 0x3
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.long	.LASF6
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.long	.LASF7
	.uleb128 0x4
	.byte	0x8
	.long	0x72
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.long	.LASF8
	.uleb128 0x5
	.string	"S"
	.byte	0x8
	.byte	0x1
	.byte	0x4
	.long	0x98
	.uleb128 0x6
	.string	"a"
	.byte	0x1
	.byte	0x5
	.long	0x57
	.byte	0
	.uleb128 0x6
	.string	"b"
	.byte	0x1
	.byte	0x6
	.long	0x57
	.byte	0x4
	.byte	0
	.uleb128 0x5
	.string	"T"
	.byte	0x8
	.byte	0x1
	.byte	0xa
	.long	0xb7
	.uleb128 0x6
	.string	"a"
	.byte	0x1
	.byte	0xb
	.long	0x57
	.byte	0
	.uleb128 0x6
	.string	"b"
	.byte	0x1
	.byte	0xc
	.long	0x57
	.byte	0x4
	.byte	0
	.uleb128 0x7
	.byte	0xc
	.byte	0x1
	.byte	0x10
	.long	0xde
	.uleb128 0x6
	.string	"a"
	.byte	0x1
	.byte	0x11
	.long	0x57
	.byte	0
	.uleb128 0x6
	.string	"b"
	.byte	0x1
	.byte	0x12
	.long	0x57
	.byte	0x4
	.uleb128 0x6
	.string	"c"
	.byte	0x1
	.byte	0x13
	.long	0x57
	.byte	0x8
	.byte	0
	.uleb128 0x8
	.long	.LASF16
	.byte	0x1
	.byte	0x16
	.long	0x57
	.quad	.LFB0
	.quad	.LFE0-.LFB0
	.uleb128 0x1
	.byte	0x9c
	.long	0x143
	.uleb128 0x9
	.long	.LASF9
	.byte	0x1
	.byte	0x16
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x9
	.long	.LASF10
	.byte	0x1
	.byte	0x16
	.long	0x143
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0xa
	.string	"s1"
	.byte	0x1
	.byte	0x17
	.long	0x79
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0xa
	.string	"s2"
	.byte	0x1
	.byte	0x17
	.long	0x79
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0xa
	.string	"ps"
	.byte	0x1
	.byte	0x18
	.long	0x149
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x4
	.byte	0x8
	.long	0x6c
	.uleb128 0x4
	.byte	0x8
	.long	0x79
	.uleb128 0xb
	.long	.LASF11
	.byte	0x1
	.byte	0xd
	.long	0x98
	.uleb128 0x9
	.byte	0x3
	.quad	global_struct
	.uleb128 0xb
	.long	.LASF12
	.byte	0x1
	.byte	0x14
	.long	0xb7
	.uleb128 0x9
	.byte	0x3
	.quad	singleton_struct
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
	.uleb128 0x3
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
	.uleb128 0x4
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x5
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0x8
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
	.uleb128 0x6
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
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
	.uleb128 0x7
	.uleb128 0x13
	.byte	0x1
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
	.uleb128 0x8
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
	.uleb128 0x2116
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x9
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
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0xa
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
	.uleb128 0xb
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
	.uleb128 0x2
	.uleb128 0x18
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
.LASF2:
	.string	"short unsigned int"
.LASF12:
	.string	"singleton_struct"
.LASF3:
	.string	"unsigned int"
.LASF1:
	.string	"unsigned char"
.LASF15:
	.string	"/Users/onetrob/Documents/Princeton/Projects/Assemblance/samples"
.LASF0:
	.string	"long unsigned int"
.LASF13:
	.string	"GNU C 4.8.1 -mtune=generic -march=x86-64 -g -O0"
.LASF8:
	.string	"char"
.LASF16:
	.string	"main"
.LASF6:
	.string	"long int"
.LASF9:
	.string	"argc"
.LASF4:
	.string	"signed char"
.LASF14:
	.string	"struct.c"
.LASF11:
	.string	"global_struct"
.LASF5:
	.string	"short int"
.LASF7:
	.string	"sizetype"
.LASF10:
	.string	"argv"
	.ident	"GCC: (GNU) 4.8.1"
	.section	.note.GNU-stack,"",@progbits
