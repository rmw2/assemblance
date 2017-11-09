	.file	"loop.c"
	.text
.Ltext0:
	.globl	countdown
	.type	countdown, @function
countdown:
.LFB0:
	.file 1 "loop.c"
	.loc 1 1 0
	.cfi_startproc
.LVL0:
	movl	%edi, %eax
.LVL1:
	.loc 1 4 0
	testl	%edi, %edi
	jle	.L2
	movl	$0, %edx
.LVL2:
.L3:
	.loc 1 5 0 discriminator 2
	subl	$1, %eax
.LVL3:
	.loc 1 4 0 discriminator 2
	addl	$1, %edx
.LVL4:
	cmpl	%edx, %eax
	jg	.L3
.LVL5:
.L2:
	.loc 1 9 0
	rep ret
	.cfi_endproc
.LFE0:
	.size	countdown, .-countdown
	.globl	main
	.type	main, @function
main:
.LFB1:
	.loc 1 11 0
	.cfi_startproc
.LVL6:
	.loc 1 14 0
	call	countdown
.LVL7:
	.loc 1 15 0
	rep ret
	.cfi_endproc
.LFE1:
	.size	main, .-main
.Letext0:
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0xe2
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.LASF5
	.byte	0x1
	.long	.LASF6
	.long	.LASF7
	.quad	.Ltext0
	.quad	.Letext0-.Ltext0
	.long	.Ldebug_line0
	.uleb128 0x2
	.long	.LASF0
	.byte	0x1
	.byte	0x1
	.long	0x69
	.quad	.LFB0
	.quad	.LFE0-.LFB0
	.uleb128 0x1
	.byte	0x9c
	.long	0x69
	.uleb128 0x3
	.string	"n"
	.byte	0x1
	.byte	0x1
	.long	0x69
	.long	.LLST0
	.uleb128 0x4
	.string	"i"
	.byte	0x1
	.byte	0x2
	.long	0x69
	.long	.LLST1
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x2
	.long	.LASF1
	.byte	0x1
	.byte	0xb
	.long	0x69
	.quad	.LFB1
	.quad	.LFE1-.LFB1
	.uleb128 0x1
	.byte	0x9c
	.long	0xd2
	.uleb128 0x6
	.long	.LASF2
	.byte	0x1
	.byte	0xb
	.long	0x69
	.long	.LLST2
	.uleb128 0x6
	.long	.LASF3
	.byte	0x1
	.byte	0xb
	.long	0xd2
	.long	.LLST3
	.uleb128 0x4
	.string	"n"
	.byte	0x1
	.byte	0xc
	.long	0x69
	.long	.LLST2
	.uleb128 0x7
	.quad	.LVL7
	.long	0x2d
	.uleb128 0x8
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0
	.byte	0
	.uleb128 0x9
	.byte	0x8
	.long	0xd8
	.uleb128 0x9
	.byte	0x8
	.long	0xde
	.uleb128 0xa
	.byte	0x1
	.byte	0x6
	.long	.LASF4
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
	.uleb128 0x7
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xa
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
	.quad	.LFE0-.Ltext0
	.value	0x1
	.byte	0x50
	.quad	0
	.quad	0
.LLST1:
	.quad	.LVL1-.Ltext0
	.quad	.LVL2-.Ltext0
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL2-.Ltext0
	.quad	.LVL5-.Ltext0
	.value	0x1
	.byte	0x51
	.quad	0
	.quad	0
.LLST2:
	.quad	.LVL6-.Ltext0
	.quad	.LVL7-1-.Ltext0
	.value	0x1
	.byte	0x55
	.quad	.LVL7-1-.Ltext0
	.quad	.LFE1-.Ltext0
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.quad	0
	.quad	0
.LLST3:
	.quad	.LVL6-.Ltext0
	.quad	.LVL7-1-.Ltext0
	.value	0x1
	.byte	0x54
	.quad	.LVL7-1-.Ltext0
	.quad	.LFE1-.Ltext0
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
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
.LASF7:
	.string	"/Users/onetrob/Documents/Princeton/Projects/Assemblance/samples"
.LASF2:
	.string	"argc"
.LASF4:
	.string	"char"
.LASF5:
	.string	"GNU C 4.8.1 -mtune=generic -march=x86-64 -g -O1"
.LASF1:
	.string	"main"
.LASF6:
	.string	"loop.c"
.LASF0:
	.string	"countdown"
.LASF3:
	.string	"argv"
	.ident	"GCC: (GNU) 4.8.1"
	.section	.note.GNU-stack,"",@progbits
