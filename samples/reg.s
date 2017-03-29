	.file	"reg.c"
	.text
.Ltext0:
	.globl	main
	.type	main, @function
main:
.LFB0:
	.file 1 "reg.c"
	.loc 1 2 0
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r12
	pushq	%rbx
	.cfi_offset 12, -24
	.cfi_offset 3, -32
	movl	%edi, -36(%rbp)
	movq	%rsi, -48(%rbp)
	.loc 1 4 0
	movl	$0, -20(%rbp)
	movl	$1, -24(%rbp)
	.loc 1 6 0
	movl	-36(%rbp), %ebx
	.loc 1 8 0
	movl	$0, %r12d
	jmp	.L2
.L4:
	.loc 1 9 0
	movl	-20(%rbp), %eax
	cltd
	idivl	%ebx
	movl	%edx, %eax
	testl	%eax, %eax
	je	.L3
	.loc 1 10 0
	addl	$1, %ebx
.L3:
	.loc 1 12 0
	movl	%r12d, %eax
	imull	%ebx, %eax
	movl	%eax, -24(%rbp)
	.loc 1 13 0
	movl	-24(%rbp), %eax
	addl	%eax, -20(%rbp)
	.loc 1 8 0
	addl	$1, %r12d
	subl	$1, %ebx
.L2:
	.loc 1 8 0 is_stmt 0 discriminator 1
	cmpl	%ebx, %r12d
	jl	.L4
	.loc 1 16 0 is_stmt 1
	movl	%r12d, %eax
	.loc 1 17 0
	popq	%rbx
	popq	%r12
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	main, .-main
.Letext0:
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0xb0
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.LASF3
	.byte	0x1
	.long	.LASF4
	.long	.LASF5
	.quad	.Ltext0
	.quad	.Letext0-.Ltext0
	.long	.Ldebug_line0
	.uleb128 0x2
	.long	.LASF6
	.byte	0x1
	.byte	0x2
	.long	0x99
	.quad	.LFB0
	.quad	.LFE0-.LFB0
	.uleb128 0x1
	.byte	0x9c
	.long	0x99
	.uleb128 0x3
	.long	.LASF0
	.byte	0x1
	.byte	0x2
	.long	0x99
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x3
	.long	.LASF1
	.byte	0x1
	.byte	0x2
	.long	0xa0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x4
	.string	"a"
	.byte	0x1
	.byte	0x3
	.long	0x99
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x4
	.string	"b"
	.byte	0x1
	.byte	0x3
	.long	0x99
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x4
	.string	"c"
	.byte	0x1
	.byte	0x4
	.long	0x99
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x4
	.string	"d"
	.byte	0x1
	.byte	0x4
	.long	0x99
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x6
	.byte	0x8
	.long	0xa6
	.uleb128 0x6
	.byte	0x8
	.long	0xac
	.uleb128 0x7
	.byte	0x1
	.byte	0x6
	.long	.LASF2
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
	.uleb128 0x3
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
	.uleb128 0x4
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
	.uleb128 0x5
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
.LASF1:
	.string	"argv"
.LASF0:
	.string	"argc"
.LASF4:
	.string	"reg.c"
.LASF6:
	.string	"main"
.LASF2:
	.string	"char"
.LASF3:
	.string	"GNU C 4.8.1 -mtune=generic -march=x86-64 -g"
.LASF5:
	.string	"/Users/onetrob/Documents/Princeton/JP2/src/samples"
	.ident	"GCC: (GNU) 4.8.1"
	.section	.note.GNU-stack,"",@progbits
