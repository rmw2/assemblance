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
.LVL0:
	.loc 1 8 0
	testl	%edi, %edi
	jle	.L6
	.loc 1 4 0
	movl	$0, %r8d
	.loc 1 8 0
	movl	$0, %esi
.LVL1:
	jmp	.L3
.LVL2:
.L5:
	.loc 1 9 0
	movl	%r8d, %eax
.LVL3:
	cltd
	idivl	%ecx
	testl	%edx, %edx
	.loc 1 8 0
	cmove	%ecx, %edi
.LVL4:
.L3:
	.loc 1 12 0
	movl	%esi, %eax
	imull	%edi, %eax
.LVL5:
	.loc 1 13 0
	addl	%eax, %r8d
.LVL6:
	.loc 1 8 0
	addl	$1, %esi
.LVL7:
	leal	-1(%rdi), %ecx
.LVL8:
	cmpl	%ecx, %esi
	jl	.L5
	jmp	.L2
.LVL9:
.L6:
	movl	$0, %esi
.LVL10:
.L2:
	.loc 1 17 0
	movl	%esi, %eax
	ret
	.cfi_endproc
.LFE0:
	.size	main, .-main
.Letext0:
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0xb8
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
	.long	0xa1
	.quad	.LFB0
	.quad	.LFE0-.LFB0
	.uleb128 0x1
	.byte	0x9c
	.long	0xa1
	.uleb128 0x3
	.long	.LASF0
	.byte	0x1
	.byte	0x2
	.long	0xa1
	.long	.LLST0
	.uleb128 0x3
	.long	.LASF1
	.byte	0x1
	.byte	0x2
	.long	0xa8
	.long	.LLST1
	.uleb128 0x4
	.string	"a"
	.byte	0x1
	.byte	0x3
	.long	0xa1
	.long	.LLST2
	.uleb128 0x4
	.string	"b"
	.byte	0x1
	.byte	0x3
	.long	0xa1
	.long	.LLST3
	.uleb128 0x4
	.string	"c"
	.byte	0x1
	.byte	0x4
	.long	0xa1
	.long	.LLST4
	.uleb128 0x4
	.string	"d"
	.byte	0x1
	.byte	0x4
	.long	0xa1
	.long	.LLST5
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x6
	.byte	0x8
	.long	0xae
	.uleb128 0x6
	.byte	0x8
	.long	0xb4
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
	.quad	.LVL0-.Ltext0
	.quad	.LVL2-.Ltext0
	.value	0x1
	.byte	0x55
	.quad	.LVL2-.Ltext0
	.quad	.LVL9-.Ltext0
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.quad	.LVL9-.Ltext0
	.quad	.LVL10-.Ltext0
	.value	0x1
	.byte	0x55
	.quad	.LVL10-.Ltext0
	.quad	.LFE0-.Ltext0
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.quad	0
	.quad	0
.LLST1:
	.quad	.LVL0-.Ltext0
	.quad	.LVL1-.Ltext0
	.value	0x1
	.byte	0x54
	.quad	.LVL1-.Ltext0
	.quad	.LVL9-.Ltext0
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.quad	.LVL9-.Ltext0
	.quad	.LVL10-.Ltext0
	.value	0x1
	.byte	0x54
	.quad	.LVL10-.Ltext0
	.quad	.LFE0-.Ltext0
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.quad	0
	.quad	0
.LLST2:
	.quad	.LVL0-.Ltext0
	.quad	.LVL2-.Ltext0
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL2-.Ltext0
	.quad	.LVL4-.Ltext0
	.value	0x1
	.byte	0x54
	.quad	.LVL7-.Ltext0
	.quad	.LVL9-.Ltext0
	.value	0x1
	.byte	0x54
	.quad	.LVL9-.Ltext0
	.quad	.LVL10-.Ltext0
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	0
	.quad	0
.LLST3:
	.quad	.LVL0-.Ltext0
	.quad	.LVL2-.Ltext0
	.value	0x1
	.byte	0x55
	.quad	.LVL2-.Ltext0
	.quad	.LVL4-.Ltext0
	.value	0x1
	.byte	0x52
	.quad	.LVL4-.Ltext0
	.quad	.LVL8-.Ltext0
	.value	0x1
	.byte	0x55
	.quad	.LVL8-.Ltext0
	.quad	.LVL9-.Ltext0
	.value	0x1
	.byte	0x52
	.quad	.LVL9-.Ltext0
	.quad	.LVL10-.Ltext0
	.value	0x1
	.byte	0x55
	.quad	0
	.quad	0
.LLST4:
	.quad	.LVL0-.Ltext0
	.quad	.LVL2-.Ltext0
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL2-.Ltext0
	.quad	.LVL4-.Ltext0
	.value	0x1
	.byte	0x58
	.quad	.LVL6-.Ltext0
	.quad	.LVL9-.Ltext0
	.value	0x1
	.byte	0x58
	.quad	.LVL9-.Ltext0
	.quad	.LVL10-.Ltext0
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	0
	.quad	0
.LLST5:
	.quad	.LVL0-.Ltext0
	.quad	.LVL2-.Ltext0
	.value	0x2
	.byte	0x31
	.byte	0x9f
	.quad	.LVL2-.Ltext0
	.quad	.LVL3-.Ltext0
	.value	0x1
	.byte	0x50
	.quad	.LVL3-.Ltext0
	.quad	.LVL4-.Ltext0
	.value	0x6
	.byte	0x74
	.sleb128 -1
	.byte	0x75
	.sleb128 0
	.byte	0x1e
	.byte	0x9f
	.quad	.LVL4-.Ltext0
	.quad	.LVL5-.Ltext0
	.value	0x6
	.byte	0x74
	.sleb128 0
	.byte	0x75
	.sleb128 0
	.byte	0x1e
	.byte	0x9f
	.quad	.LVL5-.Ltext0
	.quad	.LVL9-.Ltext0
	.value	0x1
	.byte	0x50
	.quad	.LVL9-.Ltext0
	.quad	.LVL10-.Ltext0
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
	.quad	.Ltext0
	.quad	.Letext0-.Ltext0
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
	.string	"GNU C 4.8.1 -mtune=generic -march=x86-64 -g -O1"
.LASF6:
	.string	"main"
.LASF2:
	.string	"char"
.LASF1:
	.string	"argv"
	.ident	"GCC: (GNU) 4.8.1"
	.section	.note.GNU-stack,"",@progbits
