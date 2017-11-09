	.file	"reg.c"
	.text
.Ltext0:
	.section	.text.startup,"ax",@progbits
	.p2align 4,,15
	.globl	main
	.type	main, @function
main:
.LFB0:
	.file 1 "reg.c"
	.loc 1 2 0
	.cfi_startproc
.LVL0:
	.loc 1 8 0
	testl	%edi, %edi
	jle	.L6
	leal	-1(%rdi), %esi
.LVL1:
	.loc 1 4 0
	xorl	%r8d, %r8d
	.loc 1 8 0
	xorl	%ecx, %ecx
.LVL2:
	.p2align 4,,10
	.p2align 3
.L3:
	.loc 1 12 0
	movl	%ecx, %eax
	.loc 1 8 0
	addl	$1, %ecx
.LVL3:
	.loc 1 12 0
	imull	%edi, %eax
.LVL4:
	.loc 1 13 0
	addl	%eax, %r8d
.LVL5:
	.loc 1 8 0
	cmpl	%esi, %ecx
	jge	.L2
.L5:
	.loc 1 9 0
	movl	%r8d, %eax
.LVL6:
	cltd
	idivl	%esi
	testl	%edx, %edx
	jne	.L3
	movl	%esi, %edi
	.loc 1 12 0
	movl	%ecx, %eax
	subl	$1, %esi
.LVL7:
	imull	%edi, %eax
.LVL8:
	.loc 1 8 0
	addl	$1, %ecx
.LVL9:
	.loc 1 13 0
	addl	%eax, %r8d
.LVL10:
	.loc 1 8 0
	cmpl	%esi, %ecx
	jl	.L5
.LVL11:
.L2:
	.loc 1 17 0
	movl	%ecx, %eax
	ret
.LVL12:
.L6:
	.loc 1 8 0
	xorl	%ecx, %ecx
	jmp	.L2
	.cfi_endproc
.LFE0:
	.size	main, .-main
	.text
.Letext0:
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0xb4
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.LASF3
	.byte	0x1
	.long	.LASF4
	.long	.LASF5
	.long	.Ldebug_ranges0+0
	.quad	0
	.long	.Ldebug_line0
	.uleb128 0x2
	.long	.LASF6
	.byte	0x1
	.byte	0x2
	.long	0x9d
	.quad	.LFB0
	.quad	.LFE0-.LFB0
	.uleb128 0x1
	.byte	0x9c
	.long	0x9d
	.uleb128 0x3
	.long	.LASF0
	.byte	0x1
	.byte	0x2
	.long	0x9d
	.long	.LLST0
	.uleb128 0x3
	.long	.LASF1
	.byte	0x1
	.byte	0x2
	.long	0xa4
	.long	.LLST1
	.uleb128 0x4
	.string	"a"
	.byte	0x1
	.byte	0x3
	.long	0x9d
	.long	.LLST2
	.uleb128 0x4
	.string	"b"
	.byte	0x1
	.byte	0x3
	.long	0x9d
	.long	.LLST3
	.uleb128 0x4
	.string	"c"
	.byte	0x1
	.byte	0x4
	.long	0x9d
	.long	.LLST4
	.uleb128 0x4
	.string	"d"
	.byte	0x1
	.byte	0x4
	.long	0x9d
	.long	.LLST5
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x6
	.byte	0x8
	.long	0xaa
	.uleb128 0x6
	.byte	0x8
	.long	0xb0
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
	.uleb128 0x55
	.uleb128 0x17
	.uleb128 0x11
	.uleb128 0x1
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
	.uleb128 0x17
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
	.uleb128 0x17
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
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.quad	.LVL0
	.quad	.LVL2
	.value	0x1
	.byte	0x55
	.quad	.LVL2
	.quad	.LVL12
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.quad	.LVL12
	.quad	.LFE0
	.value	0x1
	.byte	0x55
	.quad	0
	.quad	0
.LLST1:
	.quad	.LVL0
	.quad	.LVL1
	.value	0x1
	.byte	0x54
	.quad	.LVL1
	.quad	.LVL12
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.quad	.LVL12
	.quad	.LFE0
	.value	0x1
	.byte	0x54
	.quad	0
	.quad	0
.LLST2:
	.quad	.LVL0
	.quad	.LVL2
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL5
	.quad	.LVL9
	.value	0x1
	.byte	0x52
	.quad	.LVL9
	.quad	.LVL10
	.value	0x3
	.byte	0x72
	.sleb128 -1
	.byte	0x9f
	.quad	.LVL10
	.quad	.LVL11
	.value	0x1
	.byte	0x52
	.quad	.LVL12
	.quad	.LFE0
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	0
	.quad	0
.LLST3:
	.quad	.LVL0
	.quad	.LVL5
	.value	0x1
	.byte	0x55
	.quad	.LVL5
	.quad	.LVL7
	.value	0x1
	.byte	0x54
	.quad	.LVL7
	.quad	.LVL10
	.value	0x1
	.byte	0x55
	.quad	.LVL10
	.quad	.LVL11
	.value	0x1
	.byte	0x54
	.quad	.LVL12
	.quad	.LFE0
	.value	0x1
	.byte	0x55
	.quad	0
	.quad	0
.LLST4:
	.quad	.LVL0
	.quad	.LVL2
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL5
	.quad	.LVL11
	.value	0x1
	.byte	0x58
	.quad	.LVL12
	.quad	.LFE0
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	0
	.quad	0
.LLST5:
	.quad	.LVL0
	.quad	.LVL2
	.value	0x2
	.byte	0x31
	.byte	0x9f
	.quad	.LVL2
	.quad	.LVL3
	.value	0x6
	.byte	0x72
	.sleb128 0
	.byte	0x75
	.sleb128 0
	.byte	0x1e
	.byte	0x9f
	.quad	.LVL3
	.quad	.LVL4
	.value	0x6
	.byte	0x70
	.sleb128 0
	.byte	0x75
	.sleb128 0
	.byte	0x1e
	.byte	0x9f
	.quad	.LVL4
	.quad	.LVL6
	.value	0x1
	.byte	0x50
	.quad	.LVL7
	.quad	.LVL8
	.value	0x6
	.byte	0x72
	.sleb128 0
	.byte	0x75
	.sleb128 0
	.byte	0x1e
	.byte	0x9f
	.quad	.LVL8
	.quad	.LVL11
	.value	0x1
	.byte	0x50
	.quad	.LVL12
	.quad	.LFE0
	.value	0x2
	.byte	0x31
	.byte	0x9f
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
	.quad	.LFB0
	.quad	.LFE0-.LFB0
	.quad	0
	.quad	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.quad	.LFB0
	.quad	.LFE0
	.quad	0
	.quad	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF5:
	.string	"/Users/onetrob/Documents/Princeton/Projects/Assemblance/samples"
.LASF0:
	.string	"argc"
.LASF4:
	.string	"reg.c"
.LASF3:
	.string	"GNU C 4.8.1 -mtune=generic -march=x86-64 -g -O3"
.LASF6:
	.string	"main"
.LASF2:
	.string	"char"
.LASF1:
	.string	"argv"
	.ident	"GCC: (GNU) 4.8.1"
	.section	.note.GNU-stack,"",@progbits
