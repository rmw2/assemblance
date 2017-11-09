	.file	"arrays.c"
	.text
.Ltext0:
	.section	.rodata
.LC0:
	.string	"%d, %d"
	.text
	.globl	main
	.type	main, @function
main:
.LFB0:
	.file 1 "arrays.c"
	.loc 1 5 0
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movl	%edi, -52(%rbp)
	movq	%rsi, -64(%rbp)
	.loc 1 6 0
	movq	$0, -48(%rbp)
	movq	$0, -40(%rbp)
	movl	$0, -32(%rbp)
	movl	$1, -48(%rbp)
	movl	$2, -44(%rbp)
	.loc 1 11 0
	movl	-48(%rbp), %edx
	movl	-44(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, -40(%rbp)
	.loc 1 14 0
	leaq	-48(%rbp), %rax
	addq	$8, %rax
	movq	%rax, -8(%rbp)
	.loc 1 17 0
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, -12(%rbp)
	.loc 1 20 0
	movl	-52(%rbp), %eax
	cltq
	salq	$2, %rax
	movq	%rax, %rdi
	call	malloc
	movq	%rax, -24(%rbp)
	.loc 1 23 0
	movq	-24(%rbp), %rax
	movl	(%rax), %edx
	movl	-12(%rbp), %eax
	movl	%eax, %esi
	movl	$.LC0, %edi
	movl	$0, %eax
	call	printf
	.loc 1 25 0
	movl	-36(%rbp), %eax
	.loc 1 26 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	main, .-main
.Letext0:
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x10c
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
	.uleb128 0x3
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.long	.LASF1
	.uleb128 0x4
	.byte	0x8
	.long	0x34
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.long	.LASF2
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.long	.LASF3
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.long	.LASF4
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.long	.LASF5
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.long	.LASF6
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.long	.LASF7
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.long	.LASF8
	.uleb128 0x4
	.byte	0x8
	.long	0x7f
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.long	.LASF9
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.long	.LASF10
	.uleb128 0x5
	.long	.LASF16
	.byte	0x1
	.byte	0x5
	.long	0x34
	.quad	.LFB0
	.quad	.LFE0-.LFB0
	.uleb128 0x1
	.byte	0x9c
	.long	0xfd
	.uleb128 0x6
	.long	.LASF11
	.byte	0x1
	.byte	0x5
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x6
	.long	.LASF12
	.byte	0x1
	.byte	0x5
	.long	0xfd
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x7
	.string	"a"
	.byte	0x1
	.byte	0x6
	.long	0x103
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x7
	.string	"b"
	.byte	0x1
	.byte	0x7
	.long	0x42
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x7
	.string	"c"
	.byte	0x1
	.byte	0x7
	.long	0x42
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x7
	.string	"x"
	.byte	0x1
	.byte	0x8
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0x4
	.byte	0x8
	.long	0x79
	.uleb128 0x8
	.long	0x34
	.uleb128 0x9
	.long	0x72
	.byte	0x4
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
	.uleb128 0x6
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
	.uleb128 0x7
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
	.uleb128 0x8
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
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
.LASF3:
	.string	"long long int"
.LASF1:
	.string	"unsigned int"
.LASF14:
	.string	"arrays.c"
.LASF16:
	.string	"main"
.LASF15:
	.string	"/Users/onetrob/Documents/Princeton/Projects/Assemblance/samples"
.LASF0:
	.string	"long unsigned int"
.LASF10:
	.string	"long long unsigned int"
.LASF13:
	.string	"GNU C 4.8.1 -mtune=generic -march=x86-64 -g -O0"
.LASF4:
	.string	"unsigned char"
.LASF9:
	.string	"char"
.LASF2:
	.string	"long int"
.LASF11:
	.string	"argc"
.LASF5:
	.string	"short unsigned int"
.LASF6:
	.string	"signed char"
.LASF12:
	.string	"argv"
.LASF7:
	.string	"short int"
.LASF8:
	.string	"sizetype"
	.ident	"GCC: (GNU) 4.8.1"
	.section	.note.GNU-stack,"",@progbits
