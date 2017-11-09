	.file	"decomment.c"
	.text
.Ltext0:
	.p2align 4,,15
	.globl	handleNormal
	.type	handleNormal, @function
handleNormal:
.LFB20:
	.file 1 "decomment.c"
	.loc 1 17 0
	.cfi_startproc
.LVL0:
	.loc 1 21 0
	cmpl	$39, %edi
	.loc 1 17 0
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	.loc 1 21 0
	je	.L3
	cmpl	$47, %edi
	.loc 1 24 0
	movl	$4, %eax
	.loc 1 21 0
	je	.L4
	.loc 1 18 0
	xorl	%ebx, %ebx
	cmpl	$34, %edi
	sete	%bl
.L2:
.LVL1:
.LBB36:
.LBB37:
	.file 2 "/usr/local/gcc-4.8.1-for-linux64/include/bits/stdio.h"
	.loc 2 82 0
	movq	stdout(%rip), %rsi
	call	_IO_putc
.LVL2:
.LBE37:
.LBE36:
	.loc 1 33 0
	movl	%ebx, %eax
.LVL3:
.L4:
	.loc 1 34 0
	popq	%rbx
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	ret
.LVL4:
	.p2align 4,,10
	.p2align 3
.L3:
	.cfi_restore_state
	.loc 1 26 0
	movl	$2, %ebx
	jmp	.L2
	.cfi_endproc
.LFE20:
	.size	handleNormal, .-handleNormal
	.p2align 4,,15
	.globl	handleInStr
	.type	handleInStr, @function
handleInStr:
.LFB21:
	.loc 1 38 0
	.cfi_startproc
.LVL5:
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	.loc 1 44 0
	xorl	%ebx, %ebx
	.loc 1 42 0
	cmpl	$34, %edi
	je	.L12
	.loc 1 39 0
	movb	$1, %bl
	cmpl	$92, %edi
	movl	$7, %eax
	cmove	%eax, %ebx
.L12:
.LVL6:
.LBB38:
.LBB39:
	.loc 2 82 0
	movq	stdout(%rip), %rsi
	call	_IO_putc
.LVL7:
.LBE39:
.LBE38:
	.loc 1 53 0
	movl	%ebx, %eax
	popq	%rbx
	.cfi_def_cfa_offset 8
.LVL8:
	ret
	.cfi_endproc
.LFE21:
	.size	handleInStr, .-handleInStr
	.p2align 4,,15
	.globl	handleInChar
	.type	handleInChar, @function
handleInChar:
.LFB22:
	.loc 1 57 0
	.cfi_startproc
.LVL9:
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	.loc 1 63 0
	xorl	%ebx, %ebx
	.loc 1 61 0
	cmpl	$39, %edi
	je	.L19
	.loc 1 58 0
	xorl	%ebx, %ebx
	cmpl	$92, %edi
	sete	%bl
	leal	2(,%rbx,4), %ebx
.L19:
.LVL10:
.LBB40:
.LBB41:
	.loc 2 82 0
	movq	stdout(%rip), %rsi
	call	_IO_putc
.LVL11:
.LBE41:
.LBE40:
	.loc 1 72 0
	movl	%ebx, %eax
	popq	%rbx
	.cfi_def_cfa_offset 8
.LVL12:
	ret
	.cfi_endproc
.LFE22:
	.size	handleInChar, .-handleInChar
	.p2align 4,,15
	.globl	handleEscapeChar
	.type	handleEscapeChar, @function
handleEscapeChar:
.LFB23:
	.loc 1 76 0
	.cfi_startproc
.LVL13:
	subq	$8, %rsp
	.cfi_def_cfa_offset 16
.LBB42:
.LBB43:
	.loc 2 82 0
	movq	stdout(%rip), %rsi
	call	_IO_putc
.LVL14:
.LBE43:
.LBE42:
	.loc 1 80 0
	movl	$2, %eax
	addq	$8, %rsp
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE23:
	.size	handleEscapeChar, .-handleEscapeChar
	.p2align 4,,15
	.globl	handleEscapeStr
	.type	handleEscapeStr, @function
handleEscapeStr:
.LFB24:
	.loc 1 84 0
	.cfi_startproc
.LVL15:
	subq	$8, %rsp
	.cfi_def_cfa_offset 16
.LBB44:
.LBB45:
	.loc 2 82 0
	movq	stdout(%rip), %rsi
	call	_IO_putc
.LVL16:
.LBE45:
.LBE44:
	.loc 1 88 0
	movl	$1, %eax
	addq	$8, %rsp
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE24:
	.size	handleEscapeStr, .-handleEscapeStr
	.p2align 4,,15
	.globl	handleStartComm
	.type	handleStartComm, @function
handleStartComm:
.LFB25:
	.loc 1 92 0
	.cfi_startproc
.LVL17:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushq	%rbx
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	movl	%edi, %ebx
	subq	$8, %rsp
	.cfi_def_cfa_offset 32
	.loc 1 95 0
	cmpl	$39, %edi
	je	.L31
	jle	.L40
	cmpl	$42, %edi
	je	.L34
	cmpl	$47, %edi
	.p2align 4,,5
	jne	.L37
.LVL18:
.LBB46:
.LBB47:
	.loc 2 82 0
	movq	stdout(%rip), %rsi
	movl	$47, %edi
.LVL19:
	call	_IO_putc
.LVL20:
.LBE47:
.LBE46:
	.loc 1 118 0
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	.loc 1 103 0
	movl	$4, %eax
	.loc 1 118 0
	popq	%rbx
	.cfi_def_cfa_offset 16
.LVL21:
	popq	%rbp
	.cfi_def_cfa_offset 8
	ret
.LVL22:
	.p2align 4,,10
	.p2align 3
.L34:
	.cfi_restore_state
.LBB48:
.LBB49:
	.loc 2 82 0
	movq	stdout(%rip), %rsi
	movl	$32, %edi
	call	_IO_putc
.LVL23:
.LBE49:
.LBE48:
	.loc 1 118 0
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	.loc 1 99 0
	movl	$3, %eax
	.loc 1 118 0
	popq	%rbx
	.cfi_def_cfa_offset 16
.LVL24:
	popq	%rbp
	.cfi_def_cfa_offset 8
	ret
.LVL25:
	.p2align 4,,10
	.p2align 3
.L40:
	.cfi_restore_state
	.loc 1 95 0
	cmpl	$34, %edi
	.loc 1 110 0
	movl	$1, %ebp
	.loc 1 95 0
	jne	.L37
.L30:
.LVL26:
.LBB50:
.LBB51:
	.loc 2 82 0
	movq	stdout(%rip), %rsi
	movl	$47, %edi
	call	_IO_putc
.LVL27:
.LBE51:
.LBE50:
.LBB52:
.LBB53:
	movq	stdout(%rip), %rsi
	movl	%ebx, %edi
	call	_IO_putc
.LVL28:
.LBE53:
.LBE52:
	.loc 1 118 0
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	.loc 1 117 0
	movl	%ebp, %eax
	.loc 1 118 0
	popq	%rbx
	.cfi_def_cfa_offset 16
.LVL29:
	popq	%rbp
	.cfi_def_cfa_offset 8
.LVL30:
	ret
.LVL31:
	.p2align 4,,10
	.p2align 3
.L37:
	.cfi_restore_state
	.loc 1 93 0
	xorl	%ebp, %ebp
	jmp	.L30
	.p2align 4,,10
	.p2align 3
.L31:
	.loc 1 106 0
	movl	$2, %ebp
	jmp	.L30
	.cfi_endproc
.LFE25:
	.size	handleStartComm, .-handleStartComm
	.p2align 4,,15
	.globl	handleInComm
	.type	handleInComm, @function
handleInComm:
.LFB26:
	.loc 1 123 0
	.cfi_startproc
.LVL32:
	.loc 1 125 0
	cmpl	$10, %edi
	je	.L43
	.loc 1 134 0
	xorl	%eax, %eax
	cmpl	$42, %edi
	sete	%al
	leal	3(%rax,%rax), %eax
	.loc 1 135 0
	ret
	.p2align 4,,10
	.p2align 3
.L43:
.LVL33:
	.loc 1 123 0
	subq	$8, %rsp
	.cfi_def_cfa_offset 16
.LBB54:
.LBB55:
	.loc 2 82 0
	movq	stdout(%rip), %rsi
	movl	$10, %edi
.LVL34:
	call	_IO_putc
.LVL35:
.LBE55:
.LBE54:
	.loc 1 134 0
	movl	$3, %eax
	.loc 1 135 0
	addq	$8, %rsp
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE26:
	.size	handleInComm, .-handleInComm
	.p2align 4,,15
	.globl	handleEndComm
	.type	handleEndComm, @function
handleEndComm:
.LFB27:
	.loc 1 140 0
	.cfi_startproc
.LVL36:
	.loc 1 142 0
	cmpl	$42, %edi
	.loc 1 149 0
	movl	$5, %eax
	.loc 1 142 0
	je	.L58
	.loc 1 144 0
	xorb	%al, %al
	.loc 1 142 0
	cmpl	$47, %edi
	je	.L58
	cmpl	$10, %edi
	je	.L59
	.loc 1 152 0
	movl	$3, %eax
	ret
	.p2align 4,,10
	.p2align 3
.L59:
.LVL37:
	.loc 1 140 0
	subq	$8, %rsp
	.cfi_def_cfa_offset 16
.LBB56:
.LBB57:
	.loc 2 82 0
	movq	stdout(%rip), %rsi
	call	_IO_putc
.LVL38:
.LBE57:
.LBE56:
	.loc 1 153 0
	addq	$8, %rsp
	.cfi_def_cfa_offset 8
	.loc 1 152 0
	movl	$3, %eax
.LVL39:
.L58:
	.loc 1 153 0
	rep ret
	.cfi_endproc
.LFE27:
	.size	handleEndComm, .-handleEndComm
	.section	.rodata.str1.8,"aMS",@progbits,1
	.align 8
.LC0:
	.string	"Error: line %d: unterminated comment\n"
	.section	.text.startup,"ax",@progbits
	.p2align 4,,15
	.globl	main
	.type	main, @function
main:
.LFB28:
	.loc 1 158 0
	.cfi_startproc
.LVL40:
	pushq	%r12
	.cfi_def_cfa_offset 16
	.cfi_offset 12, -16
	.loc 1 163 0
	movl	$1, %r12d
	.loc 1 158 0
	pushq	%rbp
	.cfi_def_cfa_offset 24
	.cfi_offset 6, -24
	.loc 1 162 0
	movl	$1, %ebp
	.loc 1 158 0
	pushq	%rbx
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -32
	.loc 1 160 0
	xorl	%ebx, %ebx
.LVL41:
	.p2align 4,,10
	.p2align 3
.L61:
.LBB58:
.LBB59:
	.loc 2 47 0 discriminator 1
	movq	stdin(%rip), %rdi
	call	_IO_getc
.LVL42:
.LBE59:
.LBE58:
	.loc 1 166 0 discriminator 1
	cmpl	$-1, %eax
.LBB61:
.LBB60:
	.loc 2 47 0 discriminator 1
	movl	%eax, %edi
.LBE60:
.LBE61:
	.loc 1 166 0 discriminator 1
	je	.L82
	.loc 1 168 0
	xorl	%eax, %eax
	cmpl	$10, %edi
	sete	%al
	addl	%eax, %ebp
.LVL43:
	.loc 1 171 0
	cmpl	$7, %ebx
	ja	.L61
	jmp	*.L65(,%rbx,8)
	.section	.rodata
	.align 8
	.align 4
.L65:
	.quad	.L64
	.quad	.L66
	.quad	.L67
	.quad	.L68
	.quad	.L69
	.quad	.L70
	.quad	.L71
	.quad	.L72
	.section	.text.startup
	.p2align 4,,10
	.p2align 3
.L71:
.LBB62:
.LBB63:
.LBB64:
	.loc 2 82 0
	movq	stdout(%rip), %rsi
.LBE64:
.LBE63:
.LBE62:
	.loc 1 182 0
	movl	$2, %ebx
.LVL44:
.LBB67:
.LBB66:
.LBB65:
	.loc 2 82 0
	call	_IO_putc
.LVL45:
.LBE65:
.LBE66:
.LBE67:
	.loc 1 183 0
	jmp	.L61
.LVL46:
	.p2align 4,,10
	.p2align 3
.L70:
	.loc 1 196 0
	call	handleEndComm
.LVL47:
	movl	%eax, %ebx
.LVL48:
	.loc 1 197 0
	.p2align 4,,6
	jmp	.L61
	.p2align 4,,10
	.p2align 3
.L69:
	.loc 1 188 0
	call	handleStartComm
.LVL49:
	movl	%eax, %ebx
.LVL50:
	.loc 1 190 0
	cmpl	$3, %ebx
	cmove	%ebp, %r12d
.LVL51:
	jmp	.L61
.LVL52:
	.p2align 4,,10
	.p2align 3
.L68:
	.loc 1 193 0
	call	handleInComm
.LVL53:
	movl	%eax, %ebx
.LVL54:
	.loc 1 194 0
	jmp	.L61
	.p2align 4,,10
	.p2align 3
.L67:
	.loc 1 179 0
	call	handleInChar
.LVL55:
	movl	%eax, %ebx
.LVL56:
	.loc 1 180 0
	.p2align 4,,4
	jmp	.L61
	.p2align 4,,10
	.p2align 3
.L66:
	.loc 1 176 0
	call	handleInStr
.LVL57:
	movl	%eax, %ebx
.LVL58:
	.loc 1 177 0
	.p2align 4,,4
	jmp	.L61
	.p2align 4,,10
	.p2align 3
.L64:
	.loc 1 173 0
	call	handleNormal
.LVL59:
	movl	%eax, %ebx
.LVL60:
	.loc 1 174 0
	.p2align 4,,4
	jmp	.L61
	.p2align 4,,10
	.p2align 3
.L72:
.LBB68:
.LBB69:
.LBB70:
	.loc 2 82 0
	movq	stdout(%rip), %rsi
.LBE70:
.LBE69:
.LBE68:
	.loc 1 185 0
	movl	$1, %ebx
.LVL61:
.LBB73:
.LBB72:
.LBB71:
	.loc 2 82 0
	call	_IO_putc
.LVL62:
.LBE71:
.LBE72:
.LBE73:
	.loc 1 186 0
	jmp	.L61
.LVL63:
	.p2align 4,,10
	.p2align 3
.L82:
	.loc 1 201 0
	cmpl	$4, %ebx
	je	.L83
	.loc 1 204 0
	cmpl	$5, %ebx
	.p2align 4,,5
	je	.L79
	.loc 1 212 0
	xorl	%eax, %eax
	.loc 1 204 0
	cmpl	$3, %ebx
	je	.L79
.L75:
	.loc 1 213 0
	popq	%rbx
	.cfi_remember_state
	.cfi_def_cfa_offset 24
.LVL64:
	popq	%rbp
	.cfi_def_cfa_offset 16
.LVL65:
	popq	%r12
	.cfi_def_cfa_offset 8
.LVL66:
	ret
.LVL67:
.L79:
	.cfi_restore_state
	.loc 1 206 0
	movq	stderr(%rip), %rdi
	movl	%r12d, %edx
	movl	$.LC0, %esi
	xorl	%eax, %eax
	call	fprintf
.LVL68:
	.loc 1 208 0
	movl	$1, %eax
	jmp	.L75
.L83:
.LVL69:
.LBB74:
.LBB75:
	.loc 2 82 0
	movq	stdout(%rip), %rsi
	movl	$47, %edi
	call	_IO_putc
.LVL70:
.LBE75:
.LBE74:
	.loc 1 212 0
	xorl	%eax, %eax
	jmp	.L75
	.cfi_endproc
.LFE28:
	.size	main, .-main
	.text
.Letext0:
	.file 3 "/usr/local/gcc-4.8.1-for-linux64/lib/gcc/x86_64-pc-linux/4.8.1/include/stddef.h"
	.file 4 "/usr/local/gcc-4.8.1-for-linux64/include/bits/types.h"
	.file 5 "/usr/local/gcc-4.8.1-for-linux64/include/stdio.h"
	.file 6 "/usr/local/gcc-4.8.1-for-linux64/include/libio.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x967
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.LASF76
	.byte	0x1
	.long	.LASF77
	.long	.LASF78
	.long	.Ldebug_ranges0+0x90
	.quad	0
	.long	.Ldebug_line0
	.uleb128 0x2
	.long	.LASF7
	.byte	0x3
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
	.byte	0x4
	.byte	0x8d
	.long	0x65
	.uleb128 0x2
	.long	.LASF9
	.byte	0x4
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
	.uleb128 0x2
	.long	.LASF12
	.byte	0x5
	.byte	0x31
	.long	0xa3
	.uleb128 0x7
	.long	.LASF42
	.byte	0xd8
	.byte	0x6
	.value	0x111
	.long	0x22a
	.uleb128 0x8
	.long	.LASF13
	.byte	0x6
	.value	0x112
	.long	0x5e
	.byte	0
	.uleb128 0x8
	.long	.LASF14
	.byte	0x6
	.value	0x117
	.long	0x8b
	.byte	0x8
	.uleb128 0x8
	.long	.LASF15
	.byte	0x6
	.value	0x118
	.long	0x8b
	.byte	0x10
	.uleb128 0x8
	.long	.LASF16
	.byte	0x6
	.value	0x119
	.long	0x8b
	.byte	0x18
	.uleb128 0x8
	.long	.LASF17
	.byte	0x6
	.value	0x11a
	.long	0x8b
	.byte	0x20
	.uleb128 0x8
	.long	.LASF18
	.byte	0x6
	.value	0x11b
	.long	0x8b
	.byte	0x28
	.uleb128 0x8
	.long	.LASF19
	.byte	0x6
	.value	0x11c
	.long	0x8b
	.byte	0x30
	.uleb128 0x8
	.long	.LASF20
	.byte	0x6
	.value	0x11d
	.long	0x8b
	.byte	0x38
	.uleb128 0x8
	.long	.LASF21
	.byte	0x6
	.value	0x11e
	.long	0x8b
	.byte	0x40
	.uleb128 0x8
	.long	.LASF22
	.byte	0x6
	.value	0x120
	.long	0x8b
	.byte	0x48
	.uleb128 0x8
	.long	.LASF23
	.byte	0x6
	.value	0x121
	.long	0x8b
	.byte	0x50
	.uleb128 0x8
	.long	.LASF24
	.byte	0x6
	.value	0x122
	.long	0x8b
	.byte	0x58
	.uleb128 0x8
	.long	.LASF25
	.byte	0x6
	.value	0x124
	.long	0x262
	.byte	0x60
	.uleb128 0x8
	.long	.LASF26
	.byte	0x6
	.value	0x126
	.long	0x268
	.byte	0x68
	.uleb128 0x8
	.long	.LASF27
	.byte	0x6
	.value	0x128
	.long	0x5e
	.byte	0x70
	.uleb128 0x8
	.long	.LASF28
	.byte	0x6
	.value	0x12c
	.long	0x5e
	.byte	0x74
	.uleb128 0x8
	.long	.LASF29
	.byte	0x6
	.value	0x12e
	.long	0x6c
	.byte	0x78
	.uleb128 0x8
	.long	.LASF30
	.byte	0x6
	.value	0x132
	.long	0x42
	.byte	0x80
	.uleb128 0x8
	.long	.LASF31
	.byte	0x6
	.value	0x133
	.long	0x50
	.byte	0x82
	.uleb128 0x8
	.long	.LASF32
	.byte	0x6
	.value	0x134
	.long	0x26e
	.byte	0x83
	.uleb128 0x8
	.long	.LASF33
	.byte	0x6
	.value	0x138
	.long	0x27e
	.byte	0x88
	.uleb128 0x8
	.long	.LASF34
	.byte	0x6
	.value	0x141
	.long	0x77
	.byte	0x90
	.uleb128 0x8
	.long	.LASF35
	.byte	0x6
	.value	0x14a
	.long	0x89
	.byte	0x98
	.uleb128 0x8
	.long	.LASF36
	.byte	0x6
	.value	0x14b
	.long	0x89
	.byte	0xa0
	.uleb128 0x8
	.long	.LASF37
	.byte	0x6
	.value	0x14c
	.long	0x89
	.byte	0xa8
	.uleb128 0x8
	.long	.LASF38
	.byte	0x6
	.value	0x14d
	.long	0x89
	.byte	0xb0
	.uleb128 0x8
	.long	.LASF39
	.byte	0x6
	.value	0x14e
	.long	0x29
	.byte	0xb8
	.uleb128 0x8
	.long	.LASF40
	.byte	0x6
	.value	0x150
	.long	0x5e
	.byte	0xc0
	.uleb128 0x8
	.long	.LASF41
	.byte	0x6
	.value	0x152
	.long	0x284
	.byte	0xc4
	.byte	0
	.uleb128 0x9
	.long	.LASF79
	.byte	0x6
	.byte	0xb6
	.uleb128 0xa
	.long	.LASF43
	.byte	0x18
	.byte	0x6
	.byte	0xbc
	.long	0x262
	.uleb128 0xb
	.long	.LASF44
	.byte	0x6
	.byte	0xbd
	.long	0x262
	.byte	0
	.uleb128 0xb
	.long	.LASF45
	.byte	0x6
	.byte	0xbe
	.long	0x268
	.byte	0x8
	.uleb128 0xb
	.long	.LASF46
	.byte	0x6
	.byte	0xc2
	.long	0x5e
	.byte	0x10
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x231
	.uleb128 0x6
	.byte	0x8
	.long	0xa3
	.uleb128 0xc
	.long	0x91
	.long	0x27e
	.uleb128 0xd
	.long	0x82
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x22a
	.uleb128 0xc
	.long	0x91
	.long	0x294
	.uleb128 0xd
	.long	0x82
	.byte	0x13
	.byte	0
	.uleb128 0xe
	.long	.LASF42
	.byte	0x6
	.value	0x157
	.long	0xa3
	.uleb128 0x6
	.byte	0x8
	.long	0x2a6
	.uleb128 0xf
	.long	0x91
	.uleb128 0x3
	.byte	0x8
	.byte	0x5
	.long	.LASF47
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.long	.LASF48
	.uleb128 0x10
	.long	.LASF80
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.long	0x2f6
	.uleb128 0x11
	.long	.LASF49
	.sleb128 0
	.uleb128 0x11
	.long	.LASF50
	.sleb128 1
	.uleb128 0x11
	.long	.LASF51
	.sleb128 2
	.uleb128 0x11
	.long	.LASF52
	.sleb128 3
	.uleb128 0x11
	.long	.LASF53
	.sleb128 4
	.uleb128 0x11
	.long	.LASF54
	.sleb128 5
	.uleb128 0x11
	.long	.LASF55
	.sleb128 6
	.uleb128 0x11
	.long	.LASF56
	.sleb128 7
	.byte	0
	.uleb128 0x12
	.long	.LASF57
	.byte	0x2
	.byte	0x50
	.long	0x5e
	.byte	0x3
	.long	0x312
	.uleb128 0x13
	.string	"__c"
	.byte	0x2
	.byte	0x50
	.long	0x5e
	.byte	0
	.uleb128 0x12
	.long	.LASF58
	.byte	0x1
	.byte	0x4c
	.long	0x2b9
	.byte	0x1
	.long	0x32d
	.uleb128 0x13
	.string	"ch"
	.byte	0x1
	.byte	0x4c
	.long	0x5e
	.byte	0
	.uleb128 0x12
	.long	.LASF59
	.byte	0x1
	.byte	0x54
	.long	0x2b9
	.byte	0x1
	.long	0x348
	.uleb128 0x13
	.string	"ch"
	.byte	0x1
	.byte	0x54
	.long	0x5e
	.byte	0
	.uleb128 0x14
	.long	.LASF81
	.byte	0x2
	.byte	0x2d
	.long	0x5e
	.byte	0x3
	.uleb128 0x15
	.long	.LASF60
	.byte	0x1
	.byte	0x11
	.long	0x2b9
	.quad	.LFB20
	.quad	.LFE20-.LFB20
	.uleb128 0x1
	.byte	0x9c
	.long	0x3c9
	.uleb128 0x16
	.string	"ch"
	.byte	0x1
	.byte	0x11
	.long	0x5e
	.long	.LLST0
	.uleb128 0x17
	.long	.LASF62
	.byte	0x1
	.byte	0x12
	.long	0x2b9
	.long	.LLST1
	.uleb128 0x18
	.long	0x2f6
	.quad	.LBB36
	.quad	.LBE36-.LBB36
	.byte	0x1
	.byte	0x20
	.uleb128 0x19
	.long	0x306
	.long	.LLST2
	.uleb128 0x1a
	.quad	.LVL2
	.long	0x911
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x15
	.long	.LASF61
	.byte	0x1
	.byte	0x26
	.long	0x2b9
	.quad	.LFB21
	.quad	.LFE21-.LFB21
	.uleb128 0x1
	.byte	0x9c
	.long	0x43e
	.uleb128 0x16
	.string	"ch"
	.byte	0x1
	.byte	0x26
	.long	0x5e
	.long	.LLST3
	.uleb128 0x17
	.long	.LASF62
	.byte	0x1
	.byte	0x27
	.long	0x2b9
	.long	.LLST4
	.uleb128 0x18
	.long	0x2f6
	.quad	.LBB38
	.quad	.LBE38-.LBB38
	.byte	0x1
	.byte	0x33
	.uleb128 0x19
	.long	0x306
	.long	.LLST5
	.uleb128 0x1a
	.quad	.LVL7
	.long	0x911
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x15
	.long	.LASF63
	.byte	0x1
	.byte	0x39
	.long	0x2b9
	.quad	.LFB22
	.quad	.LFE22-.LFB22
	.uleb128 0x1
	.byte	0x9c
	.long	0x4b3
	.uleb128 0x16
	.string	"ch"
	.byte	0x1
	.byte	0x39
	.long	0x5e
	.long	.LLST6
	.uleb128 0x17
	.long	.LASF62
	.byte	0x1
	.byte	0x3a
	.long	0x2b9
	.long	.LLST7
	.uleb128 0x18
	.long	0x2f6
	.quad	.LBB40
	.quad	.LBE40-.LBB40
	.byte	0x1
	.byte	0x46
	.uleb128 0x19
	.long	0x306
	.long	.LLST8
	.uleb128 0x1a
	.quad	.LVL11
	.long	0x911
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x1c
	.long	0x312
	.quad	.LFB23
	.quad	.LFE23-.LFB23
	.uleb128 0x1
	.byte	0x9c
	.long	0x50e
	.uleb128 0x19
	.long	0x322
	.long	.LLST9
	.uleb128 0x18
	.long	0x2f6
	.quad	.LBB42
	.quad	.LBE42-.LBB42
	.byte	0x1
	.byte	0x4e
	.uleb128 0x19
	.long	0x306
	.long	.LLST9
	.uleb128 0x1a
	.quad	.LVL14
	.long	0x911
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x1c
	.long	0x32d
	.quad	.LFB24
	.quad	.LFE24-.LFB24
	.uleb128 0x1
	.byte	0x9c
	.long	0x569
	.uleb128 0x19
	.long	0x33d
	.long	.LLST11
	.uleb128 0x18
	.long	0x2f6
	.quad	.LBB44
	.quad	.LBE44-.LBB44
	.byte	0x1
	.byte	0x56
	.uleb128 0x19
	.long	0x306
	.long	.LLST11
	.uleb128 0x1a
	.quad	.LVL16
	.long	0x911
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x15
	.long	.LASF64
	.byte	0x1
	.byte	0x5c
	.long	0x2b9
	.quad	.LFB25
	.quad	.LFE25-.LFB25
	.uleb128 0x1
	.byte	0x9c
	.long	0x688
	.uleb128 0x16
	.string	"ch"
	.byte	0x1
	.byte	0x5c
	.long	0x5e
	.long	.LLST13
	.uleb128 0x17
	.long	.LASF62
	.byte	0x1
	.byte	0x5d
	.long	0x2b9
	.long	.LLST14
	.uleb128 0x1d
	.long	0x2f6
	.quad	.LBB46
	.quad	.LBE46-.LBB46
	.byte	0x1
	.byte	0x66
	.long	0x5e0
	.uleb128 0x19
	.long	0x306
	.long	.LLST15
	.uleb128 0x1a
	.quad	.LVL20
	.long	0x911
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x8
	.byte	0x2f
	.byte	0
	.byte	0
	.uleb128 0x1d
	.long	0x2f6
	.quad	.LBB48
	.quad	.LBE48-.LBB48
	.byte	0x1
	.byte	0x62
	.long	0x619
	.uleb128 0x19
	.long	0x306
	.long	.LLST16
	.uleb128 0x1a
	.quad	.LVL23
	.long	0x911
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x8
	.byte	0x20
	.byte	0
	.byte	0
	.uleb128 0x1d
	.long	0x2f6
	.quad	.LBB50
	.quad	.LBE50-.LBB50
	.byte	0x1
	.byte	0x73
	.long	0x652
	.uleb128 0x19
	.long	0x306
	.long	.LLST17
	.uleb128 0x1a
	.quad	.LVL27
	.long	0x911
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x8
	.byte	0x2f
	.byte	0
	.byte	0
	.uleb128 0x18
	.long	0x2f6
	.quad	.LBB52
	.quad	.LBE52-.LBB52
	.byte	0x1
	.byte	0x74
	.uleb128 0x19
	.long	0x306
	.long	.LLST18
	.uleb128 0x1a
	.quad	.LVL28
	.long	0x911
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x15
	.long	.LASF65
	.byte	0x1
	.byte	0x7b
	.long	0x2b9
	.quad	.LFB26
	.quad	.LFE26-.LFB26
	.uleb128 0x1
	.byte	0x9c
	.long	0x6e9
	.uleb128 0x16
	.string	"ch"
	.byte	0x1
	.byte	0x7b
	.long	0x5e
	.long	.LLST19
	.uleb128 0x18
	.long	0x2f6
	.quad	.LBB54
	.quad	.LBE54-.LBB54
	.byte	0x1
	.byte	0x7f
	.uleb128 0x1e
	.long	0x306
	.byte	0xa
	.uleb128 0x1a
	.quad	.LVL35
	.long	0x911
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x3a
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x15
	.long	.LASF66
	.byte	0x1
	.byte	0x8c
	.long	0x2b9
	.quad	.LFB27
	.quad	.LFE27-.LFB27
	.uleb128 0x1
	.byte	0x9c
	.long	0x747
	.uleb128 0x16
	.string	"ch"
	.byte	0x1
	.byte	0x8c
	.long	0x5e
	.long	.LLST20
	.uleb128 0x18
	.long	0x2f6
	.quad	.LBB56
	.quad	.LBE56-.LBB56
	.byte	0x1
	.byte	0x92
	.uleb128 0x19
	.long	0x306
	.long	.LLST21
	.uleb128 0x1f
	.quad	.LVL38
	.long	0x911
	.byte	0
	.byte	0
	.uleb128 0x15
	.long	.LASF67
	.byte	0x1
	.byte	0x9e
	.long	0x5e
	.quad	.LFB28
	.quad	.LFE28-.LFB28
	.uleb128 0x1
	.byte	0x9c
	.long	0x8f0
	.uleb128 0x20
	.string	"ch"
	.byte	0x1
	.byte	0x9f
	.long	0x5e
	.uleb128 0x17
	.long	.LASF62
	.byte	0x1
	.byte	0xa0
	.long	0x2b9
	.long	.LLST22
	.uleb128 0x17
	.long	.LASF68
	.byte	0x1
	.byte	0xa2
	.long	0x5e
	.long	.LLST23
	.uleb128 0x17
	.long	.LASF69
	.byte	0x1
	.byte	0xa3
	.long	0x5e
	.long	.LLST24
	.uleb128 0x21
	.long	0x348
	.quad	.LBB58
	.long	.Ldebug_ranges0+0
	.byte	0x1
	.byte	0xa6
	.long	0x7c4
	.uleb128 0x1f
	.quad	.LVL42
	.long	0x932
	.byte	0
	.uleb128 0x21
	.long	0x312
	.quad	.LBB62
	.long	.Ldebug_ranges0+0x30
	.byte	0x1
	.byte	0xb6
	.long	0x807
	.uleb128 0x22
	.long	0x322
	.uleb128 0x23
	.long	0x2f6
	.quad	.LBB63
	.long	.Ldebug_ranges0+0x30
	.byte	0x1
	.byte	0x4e
	.uleb128 0x22
	.long	0x306
	.uleb128 0x1f
	.quad	.LVL45
	.long	0x911
	.byte	0
	.byte	0
	.uleb128 0x21
	.long	0x32d
	.quad	.LBB68
	.long	.Ldebug_ranges0+0x60
	.byte	0x1
	.byte	0xb9
	.long	0x84a
	.uleb128 0x22
	.long	0x33d
	.uleb128 0x23
	.long	0x2f6
	.quad	.LBB69
	.long	.Ldebug_ranges0+0x60
	.byte	0x1
	.byte	0x56
	.uleb128 0x22
	.long	0x306
	.uleb128 0x1f
	.quad	.LVL62
	.long	0x911
	.byte	0
	.byte	0
	.uleb128 0x1d
	.long	0x2f6
	.quad	.LBB74
	.quad	.LBE74-.LBB74
	.byte	0x1
	.byte	0xc9
	.long	0x880
	.uleb128 0x1e
	.long	0x306
	.byte	0x2f
	.uleb128 0x1a
	.quad	.LVL70
	.long	0x911
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x8
	.byte	0x2f
	.byte	0
	.byte	0
	.uleb128 0x1f
	.quad	.LVL47
	.long	0x6e9
	.uleb128 0x1f
	.quad	.LVL49
	.long	0x569
	.uleb128 0x1f
	.quad	.LVL53
	.long	0x688
	.uleb128 0x1f
	.quad	.LVL55
	.long	0x43e
	.uleb128 0x1f
	.quad	.LVL57
	.long	0x3c9
	.uleb128 0x1f
	.quad	.LVL59
	.long	0x354
	.uleb128 0x1a
	.quad	.LVL68
	.long	0x948
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x9
	.byte	0x3
	.quad	.LC0
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x7c
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x24
	.long	.LASF70
	.byte	0x5
	.byte	0xa5
	.long	0x268
	.uleb128 0x24
	.long	.LASF71
	.byte	0x5
	.byte	0xa6
	.long	0x268
	.uleb128 0x24
	.long	.LASF72
	.byte	0x5
	.byte	0xa7
	.long	0x268
	.uleb128 0x25
	.long	.LASF73
	.byte	0x6
	.value	0x1cf
	.long	0x5e
	.long	0x92c
	.uleb128 0x26
	.long	0x5e
	.uleb128 0x26
	.long	0x92c
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x294
	.uleb128 0x25
	.long	.LASF74
	.byte	0x6
	.value	0x1ce
	.long	0x5e
	.long	0x948
	.uleb128 0x26
	.long	0x92c
	.byte	0
	.uleb128 0x25
	.long	.LASF75
	.byte	0x5
	.value	0x161
	.long	0x5e
	.long	0x964
	.uleb128 0x26
	.long	0x964
	.uleb128 0x26
	.long	0x2a0
	.uleb128 0x27
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x98
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
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0x4
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
	.uleb128 0x11
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xd
	.byte	0
	.byte	0
	.uleb128 0x12
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
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x13
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
	.byte	0
	.byte	0
	.uleb128 0x14
	.uleb128 0x2e
	.byte	0
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
	.uleb128 0x20
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x15
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
	.uleb128 0x16
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
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x18
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x58
	.uleb128 0xb
	.uleb128 0x59
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x19
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x1a
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1b
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x1c
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x31
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
	.uleb128 0x1d
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x58
	.uleb128 0xb
	.uleb128 0x59
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1e
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x1f
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x20
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
	.uleb128 0x21
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x52
	.uleb128 0x1
	.uleb128 0x55
	.uleb128 0x17
	.uleb128 0x58
	.uleb128 0xb
	.uleb128 0x59
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x22
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x23
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x52
	.uleb128 0x1
	.uleb128 0x55
	.uleb128 0x17
	.uleb128 0x58
	.uleb128 0xb
	.uleb128 0x59
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x24
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
	.uleb128 0x25
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
	.uleb128 0x26
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x27
	.uleb128 0x18
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.quad	.LVL0
	.quad	.LVL2-1
	.value	0x1
	.byte	0x55
	.quad	.LVL2-1
	.quad	.LVL4
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.quad	.LVL4
	.quad	.LFE20
	.value	0x1
	.byte	0x55
	.quad	0
	.quad	0
.LLST1:
	.quad	.LVL0
	.quad	.LVL1
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL1
	.quad	.LVL3
	.value	0x1
	.byte	0x53
	.quad	.LVL4
	.quad	.LFE20
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	0
	.quad	0
.LLST2:
	.quad	.LVL1
	.quad	.LVL2-1
	.value	0x1
	.byte	0x55
	.quad	.LVL2-1
	.quad	.LVL3
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.quad	0
	.quad	0
.LLST3:
	.quad	.LVL5
	.quad	.LVL7-1
	.value	0x1
	.byte	0x55
	.quad	.LVL7-1
	.quad	.LFE21
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.quad	0
	.quad	0
.LLST4:
	.quad	.LVL5
	.quad	.LVL6
	.value	0x2
	.byte	0x31
	.byte	0x9f
	.quad	.LVL6
	.quad	.LVL8
	.value	0x1
	.byte	0x53
	.quad	.LVL8
	.quad	.LFE21
	.value	0x1
	.byte	0x50
	.quad	0
	.quad	0
.LLST5:
	.quad	.LVL6
	.quad	.LVL7-1
	.value	0x1
	.byte	0x55
	.quad	.LVL7-1
	.quad	.LFE21
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.quad	0
	.quad	0
.LLST6:
	.quad	.LVL9
	.quad	.LVL11-1
	.value	0x1
	.byte	0x55
	.quad	.LVL11-1
	.quad	.LFE22
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.quad	0
	.quad	0
.LLST7:
	.quad	.LVL9
	.quad	.LVL10
	.value	0x2
	.byte	0x32
	.byte	0x9f
	.quad	.LVL10
	.quad	.LVL12
	.value	0x1
	.byte	0x53
	.quad	.LVL12
	.quad	.LFE22
	.value	0x1
	.byte	0x50
	.quad	0
	.quad	0
.LLST8:
	.quad	.LVL10
	.quad	.LVL11-1
	.value	0x1
	.byte	0x55
	.quad	.LVL11-1
	.quad	.LFE22
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.quad	0
	.quad	0
.LLST9:
	.quad	.LVL13
	.quad	.LVL14-1
	.value	0x1
	.byte	0x55
	.quad	.LVL14-1
	.quad	.LFE23
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.quad	0
	.quad	0
.LLST11:
	.quad	.LVL15
	.quad	.LVL16-1
	.value	0x1
	.byte	0x55
	.quad	.LVL16-1
	.quad	.LFE24
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.quad	0
	.quad	0
.LLST13:
	.quad	.LVL17
	.quad	.LVL19
	.value	0x1
	.byte	0x55
	.quad	.LVL19
	.quad	.LVL21
	.value	0x1
	.byte	0x53
	.quad	.LVL21
	.quad	.LVL22
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.quad	.LVL22
	.quad	.LVL24
	.value	0x1
	.byte	0x53
	.quad	.LVL24
	.quad	.LVL25
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.quad	.LVL25
	.quad	.LVL29
	.value	0x1
	.byte	0x53
	.quad	.LVL29
	.quad	.LVL31
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.quad	.LVL31
	.quad	.LFE25
	.value	0x1
	.byte	0x53
	.quad	0
	.quad	0
.LLST14:
	.quad	.LVL17
	.quad	.LVL26
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL26
	.quad	.LVL30
	.value	0x1
	.byte	0x56
	.quad	.LVL30
	.quad	.LVL31
	.value	0x1
	.byte	0x50
	.quad	.LVL31
	.quad	.LFE25
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	0
	.quad	0
.LLST15:
	.quad	.LVL18
	.quad	.LVL22
	.value	0x3
	.byte	0x8
	.byte	0x2f
	.byte	0x9f
	.quad	0
	.quad	0
.LLST16:
	.quad	.LVL22
	.quad	.LVL25
	.value	0x3
	.byte	0x8
	.byte	0x20
	.byte	0x9f
	.quad	0
	.quad	0
.LLST17:
	.quad	.LVL26
	.quad	.LVL31
	.value	0x3
	.byte	0x8
	.byte	0x2f
	.byte	0x9f
	.quad	0
	.quad	0
.LLST18:
	.quad	.LVL27
	.quad	.LVL29
	.value	0x1
	.byte	0x53
	.quad	.LVL29
	.quad	.LVL31
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.quad	0
	.quad	0
.LLST19:
	.quad	.LVL32
	.quad	.LVL34
	.value	0x1
	.byte	0x55
	.quad	.LVL34
	.quad	.LFE26
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.quad	0
	.quad	0
.LLST20:
	.quad	.LVL36
	.quad	.LVL38-1
	.value	0x1
	.byte	0x55
	.quad	.LVL38-1
	.quad	.LFE27
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.quad	0
	.quad	0
.LLST21:
	.quad	.LVL37
	.quad	.LVL39
	.value	0x2
	.byte	0x3a
	.byte	0x9f
	.quad	0
	.quad	0
.LLST22:
	.quad	.LVL40
	.quad	.LVL41
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL41
	.quad	.LVL44
	.value	0x1
	.byte	0x53
	.quad	.LVL46
	.quad	.LVL61
	.value	0x1
	.byte	0x53
	.quad	.LVL63
	.quad	.LVL64
	.value	0x1
	.byte	0x53
	.quad	.LVL67
	.quad	.LFE28
	.value	0x1
	.byte	0x53
	.quad	0
	.quad	0
.LLST23:
	.quad	.LVL40
	.quad	.LVL41
	.value	0x2
	.byte	0x31
	.byte	0x9f
	.quad	.LVL41
	.quad	.LVL65
	.value	0x1
	.byte	0x56
	.quad	.LVL67
	.quad	.LFE28
	.value	0x1
	.byte	0x56
	.quad	0
	.quad	0
.LLST24:
	.quad	.LVL40
	.quad	.LVL41
	.value	0x2
	.byte	0x31
	.byte	0x9f
	.quad	.LVL41
	.quad	.LVL51
	.value	0x1
	.byte	0x5c
	.quad	.LVL52
	.quad	.LVL66
	.value	0x1
	.byte	0x5c
	.quad	.LVL67
	.quad	.LFE28
	.value	0x1
	.byte	0x5c
	.quad	0
	.quad	0
	.section	.debug_aranges,"",@progbits
	.long	0x3c
	.value	0x2
	.long	.Ldebug_info0
	.byte	0x8
	.byte	0
	.value	0
	.value	0
	.quad	.Ltext0
	.quad	.Letext0-.Ltext0
	.quad	.LFB28
	.quad	.LFE28-.LFB28
	.quad	0
	.quad	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.quad	.LBB58
	.quad	.LBE58
	.quad	.LBB61
	.quad	.LBE61
	.quad	0
	.quad	0
	.quad	.LBB62
	.quad	.LBE62
	.quad	.LBB67
	.quad	.LBE67
	.quad	0
	.quad	0
	.quad	.LBB68
	.quad	.LBE68
	.quad	.LBB73
	.quad	.LBE73
	.quad	0
	.quad	0
	.quad	.Ltext0
	.quad	.Letext0
	.quad	.LFB28
	.quad	.LFE28
	.quad	0
	.quad	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF8:
	.string	"__off_t"
.LASF14:
	.string	"_IO_read_ptr"
.LASF26:
	.string	"_chain"
.LASF78:
	.string	"/Users/onetrob/Documents/Princeton/Projects/Assemblance/samples"
.LASF76:
	.string	"GNU C 4.8.1 -mtune=generic -march=x86-64 -g -O3"
.LASF32:
	.string	"_shortbuf"
.LASF60:
	.string	"handleNormal"
.LASF20:
	.string	"_IO_buf_base"
.LASF48:
	.string	"long long unsigned int"
.LASF69:
	.string	"lastCommentStart"
.LASF55:
	.string	"ESCAPECHAR"
.LASF47:
	.string	"long long int"
.LASF4:
	.string	"signed char"
.LASF27:
	.string	"_fileno"
.LASF15:
	.string	"_IO_read_end"
.LASF62:
	.string	"state"
.LASF6:
	.string	"long int"
.LASF13:
	.string	"_flags"
.LASF21:
	.string	"_IO_buf_end"
.LASF30:
	.string	"_cur_column"
.LASF57:
	.string	"putchar"
.LASF29:
	.string	"_old_offset"
.LASF34:
	.string	"_offset"
.LASF49:
	.string	"NORMAL"
.LASF68:
	.string	"line"
.LASF51:
	.string	"INCHAR"
.LASF7:
	.string	"size_t"
.LASF73:
	.string	"_IO_putc"
.LASF43:
	.string	"_IO_marker"
.LASF70:
	.string	"stdin"
.LASF3:
	.string	"unsigned int"
.LASF75:
	.string	"fprintf"
.LASF0:
	.string	"long unsigned int"
.LASF18:
	.string	"_IO_write_ptr"
.LASF45:
	.string	"_sbuf"
.LASF2:
	.string	"short unsigned int"
.LASF22:
	.string	"_IO_save_base"
.LASF33:
	.string	"_lock"
.LASF28:
	.string	"_flags2"
.LASF40:
	.string	"_mode"
.LASF71:
	.string	"stdout"
.LASF64:
	.string	"handleStartComm"
.LASF10:
	.string	"sizetype"
.LASF19:
	.string	"_IO_write_end"
.LASF79:
	.string	"_IO_lock_t"
.LASF42:
	.string	"_IO_FILE"
.LASF52:
	.string	"INCOMM"
.LASF74:
	.string	"_IO_getc"
.LASF46:
	.string	"_pos"
.LASF66:
	.string	"handleEndComm"
.LASF63:
	.string	"handleInChar"
.LASF25:
	.string	"_markers"
.LASF1:
	.string	"unsigned char"
.LASF5:
	.string	"short int"
.LASF31:
	.string	"_vtable_offset"
.LASF12:
	.string	"FILE"
.LASF58:
	.string	"handleEscapeChar"
.LASF11:
	.string	"char"
.LASF80:
	.string	"State"
.LASF44:
	.string	"_next"
.LASF9:
	.string	"__off64_t"
.LASF16:
	.string	"_IO_read_base"
.LASF24:
	.string	"_IO_save_end"
.LASF81:
	.string	"getchar"
.LASF53:
	.string	"STARTCOMM"
.LASF35:
	.string	"__pad1"
.LASF36:
	.string	"__pad2"
.LASF37:
	.string	"__pad3"
.LASF38:
	.string	"__pad4"
.LASF39:
	.string	"__pad5"
.LASF41:
	.string	"_unused2"
.LASF72:
	.string	"stderr"
.LASF59:
	.string	"handleEscapeStr"
.LASF23:
	.string	"_IO_backup_base"
.LASF65:
	.string	"handleInComm"
.LASF61:
	.string	"handleInStr"
.LASF50:
	.string	"INSTR"
.LASF54:
	.string	"ENDCOMM"
.LASF56:
	.string	"ESCAPESTR"
.LASF67:
	.string	"main"
.LASF17:
	.string	"_IO_write_base"
.LASF77:
	.string	"decomment.c"
	.ident	"GCC: (GNU) 4.8.1"
	.section	.note.GNU-stack,"",@progbits
