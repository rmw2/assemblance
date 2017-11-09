	.file	"decomment.c"
	.text
.Ltext0:
	.globl	handleNormal
	.type	handleNormal, @function
handleNormal:
.LFB20:
	.file 1 "decomment.c"
	.loc 1 17 0
	.cfi_startproc
.LVL0:
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
.LVL1:
	.loc 1 21 0
	cmpl	$39, %edi
	je	.L6
	.loc 1 24 0
	movl	$4, %eax
	.loc 1 21 0
	cmpl	$47, %edi
	je	.L4
	.loc 1 18 0
	cmpl	$34, %edi
	sete	%bl
	movzbl	%bl, %ebx
	jmp	.L3
.L6:
	.loc 1 26 0
	movl	$2, %ebx
.L3:
.LVL2:
.LBB28:
.LBB29:
	.file 2 "/usr/local/gcc-4.8.1-for-linux64/include/bits/stdio.h"
	.loc 2 82 0
	movq	stdout(%rip), %rsi
	call	_IO_putc
.LVL3:
.LBE29:
.LBE28:
	.loc 1 33 0
	movl	%ebx, %eax
.LVL4:
.L4:
	.loc 1 34 0
	popq	%rbx
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE20:
	.size	handleNormal, .-handleNormal
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
.LVL6:
	.loc 1 44 0
	movl	$0, %ebx
	.loc 1 42 0
	cmpl	$34, %edi
	je	.L11
	cmpl	$92, %edi
	.loc 1 39 0
	movl	$1, %eax
	movb	$7, %bl
	cmovne	%eax, %ebx
.L11:
.LVL7:
.LBB30:
.LBB31:
	.loc 2 82 0
	movq	stdout(%rip), %rsi
	call	_IO_putc
.LVL8:
.LBE31:
.LBE30:
	.loc 1 53 0
	movl	%ebx, %eax
	popq	%rbx
	.cfi_def_cfa_offset 8
.LVL9:
	ret
	.cfi_endproc
.LFE21:
	.size	handleInStr, .-handleInStr
	.globl	handleInChar
	.type	handleInChar, @function
handleInChar:
.LFB22:
	.loc 1 57 0
	.cfi_startproc
.LVL10:
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
.LVL11:
	.loc 1 63 0
	movl	$0, %ebx
	.loc 1 61 0
	cmpl	$39, %edi
	je	.L17
	.loc 1 58 0
	cmpl	$92, %edi
	sete	%bl
	movzbl	%bl, %ebx
	leal	2(,%rbx,4), %ebx
.L17:
.LVL12:
.LBB32:
.LBB33:
	.loc 2 82 0
	movq	stdout(%rip), %rsi
	call	_IO_putc
.LVL13:
.LBE33:
.LBE32:
	.loc 1 72 0
	movl	%ebx, %eax
	popq	%rbx
	.cfi_def_cfa_offset 8
.LVL14:
	ret
	.cfi_endproc
.LFE22:
	.size	handleInChar, .-handleInChar
	.globl	handleEscapeChar
	.type	handleEscapeChar, @function
handleEscapeChar:
.LFB23:
	.loc 1 76 0
	.cfi_startproc
.LVL15:
	subq	$8, %rsp
	.cfi_def_cfa_offset 16
.LVL16:
.LBB34:
.LBB35:
	.loc 2 82 0
	movq	stdout(%rip), %rsi
	call	_IO_putc
.LVL17:
.LBE35:
.LBE34:
	.loc 1 80 0
	movl	$2, %eax
	addq	$8, %rsp
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE23:
	.size	handleEscapeChar, .-handleEscapeChar
	.globl	handleEscapeStr
	.type	handleEscapeStr, @function
handleEscapeStr:
.LFB24:
	.loc 1 84 0
	.cfi_startproc
.LVL18:
	subq	$8, %rsp
	.cfi_def_cfa_offset 16
.LVL19:
.LBB36:
.LBB37:
	.loc 2 82 0
	movq	stdout(%rip), %rsi
	call	_IO_putc
.LVL20:
.LBE37:
.LBE36:
	.loc 1 88 0
	movl	$1, %eax
	addq	$8, %rsp
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE24:
	.size	handleEscapeStr, .-handleEscapeStr
	.globl	handleStartComm
	.type	handleStartComm, @function
handleStartComm:
.LFB25:
	.loc 1 92 0
	.cfi_startproc
.LVL21:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushq	%rbx
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	subq	$8, %rsp
	.cfi_def_cfa_offset 32
	movl	%edi, %ebx
.LVL22:
	.loc 1 95 0
	cmpl	$39, %edi
	je	.L33
	cmpl	$39, %edi
	jg	.L28
	.loc 1 110 0
	movl	$1, %ebp
	.loc 1 95 0
	cmpl	$34, %edi
	je	.L27
	jmp	.L26
.L28:
	cmpl	$42, %edi
	je	.L30
	cmpl	$47, %edi
	.p2align 4,,5
	je	.L31
.LVL23:
.L26:
	.loc 1 93 0
	movl	$0, %ebp
	jmp	.L27
.L30:
.LVL24:
.LBB38:
.LBB39:
	.loc 2 82 0
	movq	stdout(%rip), %rsi
	movl	$32, %edi
	call	_IO_putc
.LVL25:
.LBE39:
.LBE38:
	.loc 1 99 0
	movl	$3, %eax
	jmp	.L32
.LVL26:
.L31:
.LBB40:
.LBB41:
	.loc 2 82 0
	movq	stdout(%rip), %rsi
	movl	$47, %edi
	call	_IO_putc
.LVL27:
.LBE41:
.LBE40:
	.loc 1 103 0
	movl	$4, %eax
	jmp	.L32
.LVL28:
.L33:
	.loc 1 106 0
	movl	$2, %ebp
.L27:
.LVL29:
.LBB42:
.LBB43:
	.loc 2 82 0
	movq	stdout(%rip), %rsi
	movl	$47, %edi
	call	_IO_putc
.LVL30:
.LBE43:
.LBE42:
.LBB44:
.LBB45:
	movq	stdout(%rip), %rsi
	movl	%ebx, %edi
	call	_IO_putc
.LVL31:
.LBE45:
.LBE44:
	.loc 1 117 0
	movl	%ebp, %eax
.LVL32:
.L32:
	.loc 1 118 0
	addq	$8, %rsp
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
.LVL33:
	popq	%rbp
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE25:
	.size	handleStartComm, .-handleStartComm
	.globl	handleInComm
	.type	handleInComm, @function
handleInComm:
.LFB26:
	.loc 1 123 0
	.cfi_startproc
.LVL34:
	.loc 1 125 0
	cmpl	$10, %edi
	je	.L37
	.loc 1 134 0
	cmpl	$42, %edi
	sete	%al
	movzbl	%al, %eax
	leal	3(%rax,%rax), %eax
	.loc 1 135 0
	ret
.L37:
	.loc 1 123 0
	subq	$8, %rsp
	.cfi_def_cfa_offset 16
.LVL35:
.LBB46:
.LBB47:
	.loc 2 82 0
	movq	stdout(%rip), %rsi
	movl	$10, %edi
.LVL36:
	call	_IO_putc
.LVL37:
.LBE47:
.LBE46:
	.loc 1 134 0
	movl	$3, %eax
	.loc 1 135 0
	addq	$8, %rsp
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE26:
	.size	handleInComm, .-handleInComm
	.globl	handleEndComm
	.type	handleEndComm, @function
handleEndComm:
.LFB27:
	.loc 1 140 0
	.cfi_startproc
.LVL38:
	.loc 1 149 0
	movl	$5, %eax
	.loc 1 142 0
	cmpl	$42, %edi
	je	.L50
	.loc 1 144 0
	movb	$0, %al
	.loc 1 142 0
	cmpl	$47, %edi
	je	.L50
	cmpl	$10, %edi
	jne	.L47
	.loc 1 140 0
	subq	$8, %rsp
	.cfi_def_cfa_offset 16
.LVL39:
.LBB48:
.LBB49:
	.loc 2 82 0
	movq	stdout(%rip), %rsi
	call	_IO_putc
.LVL40:
.LBE49:
.LBE48:
	.loc 1 152 0
	movl	$3, %eax
	jmp	.L43
.LVL41:
.L47:
	.cfi_def_cfa_offset 8
	movl	$3, %eax
	ret
.LVL42:
.L43:
	.cfi_def_cfa_offset 16
	.loc 1 153 0
	addq	$8, %rsp
	.cfi_def_cfa_offset 8
.LVL43:
.L50:
	rep ret
	.cfi_endproc
.LFE27:
	.size	handleEndComm, .-handleEndComm
	.section	.rodata.str1.8,"aMS",@progbits,1
	.align 8
.LC0:
	.string	"Error: line %d: unterminated comment\n"
	.text
	.globl	main
	.type	main, @function
main:
.LFB28:
	.loc 1 158 0
	.cfi_startproc
	pushq	%r12
	.cfi_def_cfa_offset 16
	.cfi_offset 12, -16
	pushq	%rbp
	.cfi_def_cfa_offset 24
	.cfi_offset 6, -24
	pushq	%rbx
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -32
.LVL44:
	.loc 1 163 0
	movl	$1, %r12d
	.loc 1 162 0
	movl	$1, %ebp
	.loc 1 160 0
	movl	$0, %ebx
	.loc 1 166 0
	jmp	.L52
.LVL45:
.L64:
	.loc 1 168 0
	cmpl	$10, %edi
	sete	%al
	movzbl	%al, %eax
	addl	%eax, %ebp
.LVL46:
	.loc 1 171 0
	cmpl	$7, %ebx
	ja	.L52
	movl	%ebx, %ebx
	jmp	*.L56(,%rbx,8)
	.section	.rodata
	.align 8
	.align 4
.L56:
	.quad	.L55
	.quad	.L57
	.quad	.L58
	.quad	.L59
	.quad	.L60
	.quad	.L61
	.quad	.L62
	.quad	.L63
	.text
.L55:
	.loc 1 173 0
	call	handleNormal
.LVL47:
	movl	%eax, %ebx
.LVL48:
	.loc 1 174 0
	.p2align 4,,4
	jmp	.L52
.LVL49:
.L57:
	.loc 1 176 0
	.p2align 4,,6
	call	handleInStr
.LVL50:
	movl	%eax, %ebx
.LVL51:
	.loc 1 177 0
	.p2align 4,,4
	jmp	.L52
.LVL52:
.L58:
	.loc 1 179 0
	.p2align 4,,6
	call	handleInChar
.LVL53:
	movl	%eax, %ebx
.LVL54:
	.loc 1 180 0
	.p2align 4,,4
	jmp	.L52
.LVL55:
.L62:
	.loc 1 182 0
	.p2align 4,,6
	call	handleEscapeChar
.LVL56:
	movl	%eax, %ebx
.LVL57:
	.loc 1 183 0
	.p2align 4,,4
	jmp	.L52
.LVL58:
.L63:
	.loc 1 185 0
	.p2align 4,,6
	call	handleEscapeStr
.LVL59:
	movl	%eax, %ebx
.LVL60:
	.loc 1 186 0
	.p2align 4,,4
	jmp	.L52
.LVL61:
.L60:
	.loc 1 188 0
	.p2align 4,,6
	call	handleStartComm
.LVL62:
	movl	%eax, %ebx
.LVL63:
	.loc 1 190 0
	cmpl	$3, %eax
	cmove	%ebp, %r12d
.LVL64:
	jmp	.L52
.LVL65:
.L59:
	.loc 1 193 0
	call	handleInComm
.LVL66:
	movl	%eax, %ebx
.LVL67:
	.loc 1 194 0
	jmp	.L52
.LVL68:
.L61:
	.loc 1 196 0
	.p2align 4,,6
	call	handleEndComm
.LVL69:
	movl	%eax, %ebx
.LVL70:
.L52:
.LBB50:
.LBB51:
	.loc 2 47 0 discriminator 1
	movq	stdin(%rip), %rdi
	call	_IO_getc
.LVL71:
	movl	%eax, %edi
.LBE51:
.LBE50:
	.loc 1 166 0 discriminator 1
	cmpl	$-1, %eax
	jne	.L64
	.loc 1 201 0
	cmpl	$4, %ebx
	jne	.L65
.LVL72:
.LBB52:
.LBB53:
	.loc 2 82 0
	movq	stdout(%rip), %rsi
	movl	$47, %edi
	call	_IO_putc
.LVL73:
.LBE53:
.LBE52:
	.loc 1 212 0
	movl	$0, %eax
	jmp	.L66
.LVL74:
.L65:
	.loc 1 204 0
	cmpl	$5, %ebx
	je	.L70
	.loc 1 212 0
	movl	$0, %eax
	.loc 1 204 0
	cmpl	$3, %ebx
	jne	.L66
.L70:
	.loc 1 206 0
	movl	%r12d, %edx
	movl	$.LC0, %esi
	movq	stderr(%rip), %rdi
	movl	$0, %eax
	call	fprintf
.LVL75:
	.loc 1 208 0
	movl	$1, %eax
.L66:
	.loc 1 213 0
	popq	%rbx
	.cfi_def_cfa_offset 24
.LVL76:
	popq	%rbp
	.cfi_def_cfa_offset 16
.LVL77:
	popq	%r12
	.cfi_def_cfa_offset 8
.LVL78:
	ret
	.cfi_endproc
.LFE28:
	.size	main, .-main
.Letext0:
	.file 3 "/usr/local/gcc-4.8.1-for-linux64/lib/gcc/x86_64-pc-linux/4.8.1/include/stddef.h"
	.file 4 "/usr/local/gcc-4.8.1-for-linux64/include/bits/types.h"
	.file 5 "/usr/local/gcc-4.8.1-for-linux64/include/stdio.h"
	.file 6 "/usr/local/gcc-4.8.1-for-linux64/include/libio.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x8ee
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.LASF76
	.byte	0x1
	.long	.LASF77
	.long	.LASF78
	.quad	.Ltext0
	.quad	.Letext0-.Ltext0
	.long	.Ldebug_line0
	.uleb128 0x2
	.long	.LASF7
	.byte	0x3
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
	.byte	0x4
	.byte	0x8d
	.long	0x69
	.uleb128 0x2
	.long	.LASF9
	.byte	0x4
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
	.uleb128 0x2
	.long	.LASF12
	.byte	0x5
	.byte	0x31
	.long	0xa7
	.uleb128 0x7
	.long	.LASF42
	.byte	0xd8
	.byte	0x6
	.value	0x111
	.long	0x22e
	.uleb128 0x8
	.long	.LASF13
	.byte	0x6
	.value	0x112
	.long	0x62
	.byte	0
	.uleb128 0x8
	.long	.LASF14
	.byte	0x6
	.value	0x117
	.long	0x8f
	.byte	0x8
	.uleb128 0x8
	.long	.LASF15
	.byte	0x6
	.value	0x118
	.long	0x8f
	.byte	0x10
	.uleb128 0x8
	.long	.LASF16
	.byte	0x6
	.value	0x119
	.long	0x8f
	.byte	0x18
	.uleb128 0x8
	.long	.LASF17
	.byte	0x6
	.value	0x11a
	.long	0x8f
	.byte	0x20
	.uleb128 0x8
	.long	.LASF18
	.byte	0x6
	.value	0x11b
	.long	0x8f
	.byte	0x28
	.uleb128 0x8
	.long	.LASF19
	.byte	0x6
	.value	0x11c
	.long	0x8f
	.byte	0x30
	.uleb128 0x8
	.long	.LASF20
	.byte	0x6
	.value	0x11d
	.long	0x8f
	.byte	0x38
	.uleb128 0x8
	.long	.LASF21
	.byte	0x6
	.value	0x11e
	.long	0x8f
	.byte	0x40
	.uleb128 0x8
	.long	.LASF22
	.byte	0x6
	.value	0x120
	.long	0x8f
	.byte	0x48
	.uleb128 0x8
	.long	.LASF23
	.byte	0x6
	.value	0x121
	.long	0x8f
	.byte	0x50
	.uleb128 0x8
	.long	.LASF24
	.byte	0x6
	.value	0x122
	.long	0x8f
	.byte	0x58
	.uleb128 0x8
	.long	.LASF25
	.byte	0x6
	.value	0x124
	.long	0x266
	.byte	0x60
	.uleb128 0x8
	.long	.LASF26
	.byte	0x6
	.value	0x126
	.long	0x26c
	.byte	0x68
	.uleb128 0x8
	.long	.LASF27
	.byte	0x6
	.value	0x128
	.long	0x62
	.byte	0x70
	.uleb128 0x8
	.long	.LASF28
	.byte	0x6
	.value	0x12c
	.long	0x62
	.byte	0x74
	.uleb128 0x8
	.long	.LASF29
	.byte	0x6
	.value	0x12e
	.long	0x70
	.byte	0x78
	.uleb128 0x8
	.long	.LASF30
	.byte	0x6
	.value	0x132
	.long	0x46
	.byte	0x80
	.uleb128 0x8
	.long	.LASF31
	.byte	0x6
	.value	0x133
	.long	0x54
	.byte	0x82
	.uleb128 0x8
	.long	.LASF32
	.byte	0x6
	.value	0x134
	.long	0x272
	.byte	0x83
	.uleb128 0x8
	.long	.LASF33
	.byte	0x6
	.value	0x138
	.long	0x282
	.byte	0x88
	.uleb128 0x8
	.long	.LASF34
	.byte	0x6
	.value	0x141
	.long	0x7b
	.byte	0x90
	.uleb128 0x8
	.long	.LASF35
	.byte	0x6
	.value	0x14a
	.long	0x8d
	.byte	0x98
	.uleb128 0x8
	.long	.LASF36
	.byte	0x6
	.value	0x14b
	.long	0x8d
	.byte	0xa0
	.uleb128 0x8
	.long	.LASF37
	.byte	0x6
	.value	0x14c
	.long	0x8d
	.byte	0xa8
	.uleb128 0x8
	.long	.LASF38
	.byte	0x6
	.value	0x14d
	.long	0x8d
	.byte	0xb0
	.uleb128 0x8
	.long	.LASF39
	.byte	0x6
	.value	0x14e
	.long	0x2d
	.byte	0xb8
	.uleb128 0x8
	.long	.LASF40
	.byte	0x6
	.value	0x150
	.long	0x62
	.byte	0xc0
	.uleb128 0x8
	.long	.LASF41
	.byte	0x6
	.value	0x152
	.long	0x288
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
	.long	0x266
	.uleb128 0xb
	.long	.LASF44
	.byte	0x6
	.byte	0xbd
	.long	0x266
	.byte	0
	.uleb128 0xb
	.long	.LASF45
	.byte	0x6
	.byte	0xbe
	.long	0x26c
	.byte	0x8
	.uleb128 0xb
	.long	.LASF46
	.byte	0x6
	.byte	0xc2
	.long	0x62
	.byte	0x10
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x235
	.uleb128 0x6
	.byte	0x8
	.long	0xa7
	.uleb128 0xc
	.long	0x95
	.long	0x282
	.uleb128 0xd
	.long	0x86
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x22e
	.uleb128 0xc
	.long	0x95
	.long	0x298
	.uleb128 0xd
	.long	0x86
	.byte	0x13
	.byte	0
	.uleb128 0xe
	.long	.LASF42
	.byte	0x6
	.value	0x157
	.long	0xa7
	.uleb128 0x6
	.byte	0x8
	.long	0x2aa
	.uleb128 0xf
	.long	0x95
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
	.long	0x2fa
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
	.long	.LASF72
	.byte	0x2
	.byte	0x50
	.long	0x62
	.byte	0x3
	.long	0x316
	.uleb128 0x13
	.string	"__c"
	.byte	0x2
	.byte	0x50
	.long	0x62
	.byte	0
	.uleb128 0x14
	.long	.LASF81
	.byte	0x2
	.byte	0x2d
	.long	0x62
	.byte	0x3
	.uleb128 0x15
	.long	.LASF57
	.byte	0x1
	.byte	0x11
	.long	0x2bd
	.quad	.LFB20
	.quad	.LFE20-.LFB20
	.uleb128 0x1
	.byte	0x9c
	.long	0x397
	.uleb128 0x16
	.string	"ch"
	.byte	0x1
	.byte	0x11
	.long	0x62
	.long	.LLST0
	.uleb128 0x17
	.long	.LASF59
	.byte	0x1
	.byte	0x12
	.long	0x2bd
	.long	.LLST1
	.uleb128 0x18
	.long	0x2fa
	.quad	.LBB28
	.quad	.LBE28-.LBB28
	.byte	0x1
	.byte	0x20
	.uleb128 0x19
	.long	0x30a
	.long	.LLST2
	.uleb128 0x1a
	.quad	.LVL3
	.long	0x898
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
	.long	.LASF58
	.byte	0x1
	.byte	0x26
	.long	0x2bd
	.quad	.LFB21
	.quad	.LFE21-.LFB21
	.uleb128 0x1
	.byte	0x9c
	.long	0x40c
	.uleb128 0x16
	.string	"ch"
	.byte	0x1
	.byte	0x26
	.long	0x62
	.long	.LLST3
	.uleb128 0x17
	.long	.LASF59
	.byte	0x1
	.byte	0x27
	.long	0x2bd
	.long	.LLST4
	.uleb128 0x18
	.long	0x2fa
	.quad	.LBB30
	.quad	.LBE30-.LBB30
	.byte	0x1
	.byte	0x33
	.uleb128 0x19
	.long	0x30a
	.long	.LLST5
	.uleb128 0x1a
	.quad	.LVL8
	.long	0x898
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
	.long	.LASF60
	.byte	0x1
	.byte	0x39
	.long	0x2bd
	.quad	.LFB22
	.quad	.LFE22-.LFB22
	.uleb128 0x1
	.byte	0x9c
	.long	0x481
	.uleb128 0x16
	.string	"ch"
	.byte	0x1
	.byte	0x39
	.long	0x62
	.long	.LLST6
	.uleb128 0x17
	.long	.LASF59
	.byte	0x1
	.byte	0x3a
	.long	0x2bd
	.long	.LLST7
	.uleb128 0x18
	.long	0x2fa
	.quad	.LBB32
	.quad	.LBE32-.LBB32
	.byte	0x1
	.byte	0x46
	.uleb128 0x19
	.long	0x30a
	.long	.LLST8
	.uleb128 0x1a
	.quad	.LVL13
	.long	0x898
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
	.byte	0x4c
	.long	0x2bd
	.quad	.LFB23
	.quad	.LFE23-.LFB23
	.uleb128 0x1
	.byte	0x9c
	.long	0x4e7
	.uleb128 0x16
	.string	"ch"
	.byte	0x1
	.byte	0x4c
	.long	0x62
	.long	.LLST9
	.uleb128 0x18
	.long	0x2fa
	.quad	.LBB34
	.quad	.LBE34-.LBB34
	.byte	0x1
	.byte	0x4e
	.uleb128 0x19
	.long	0x30a
	.long	.LLST10
	.uleb128 0x1a
	.quad	.LVL17
	.long	0x898
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
	.long	.LASF62
	.byte	0x1
	.byte	0x54
	.long	0x2bd
	.quad	.LFB24
	.quad	.LFE24-.LFB24
	.uleb128 0x1
	.byte	0x9c
	.long	0x54d
	.uleb128 0x16
	.string	"ch"
	.byte	0x1
	.byte	0x54
	.long	0x62
	.long	.LLST11
	.uleb128 0x18
	.long	0x2fa
	.quad	.LBB36
	.quad	.LBE36-.LBB36
	.byte	0x1
	.byte	0x56
	.uleb128 0x19
	.long	0x30a
	.long	.LLST12
	.uleb128 0x1a
	.quad	.LVL20
	.long	0x898
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
	.byte	0x5c
	.long	0x2bd
	.quad	.LFB25
	.quad	.LFE25-.LFB25
	.uleb128 0x1
	.byte	0x9c
	.long	0x66c
	.uleb128 0x16
	.string	"ch"
	.byte	0x1
	.byte	0x5c
	.long	0x62
	.long	.LLST13
	.uleb128 0x17
	.long	.LASF59
	.byte	0x1
	.byte	0x5d
	.long	0x2bd
	.long	.LLST14
	.uleb128 0x1c
	.long	0x2fa
	.quad	.LBB38
	.quad	.LBE38-.LBB38
	.byte	0x1
	.byte	0x62
	.long	0x5c4
	.uleb128 0x19
	.long	0x30a
	.long	.LLST15
	.uleb128 0x1a
	.quad	.LVL25
	.long	0x898
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x8
	.byte	0x20
	.byte	0
	.byte	0
	.uleb128 0x1c
	.long	0x2fa
	.quad	.LBB40
	.quad	.LBE40-.LBB40
	.byte	0x1
	.byte	0x66
	.long	0x5fd
	.uleb128 0x19
	.long	0x30a
	.long	.LLST16
	.uleb128 0x1a
	.quad	.LVL27
	.long	0x898
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x8
	.byte	0x2f
	.byte	0
	.byte	0
	.uleb128 0x1c
	.long	0x2fa
	.quad	.LBB42
	.quad	.LBE42-.LBB42
	.byte	0x1
	.byte	0x73
	.long	0x636
	.uleb128 0x19
	.long	0x30a
	.long	.LLST17
	.uleb128 0x1a
	.quad	.LVL30
	.long	0x898
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x8
	.byte	0x2f
	.byte	0
	.byte	0
	.uleb128 0x18
	.long	0x2fa
	.quad	.LBB44
	.quad	.LBE44-.LBB44
	.byte	0x1
	.byte	0x74
	.uleb128 0x19
	.long	0x30a
	.long	.LLST18
	.uleb128 0x1a
	.quad	.LVL31
	.long	0x898
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
	.long	.LASF64
	.byte	0x1
	.byte	0x7b
	.long	0x2bd
	.quad	.LFB26
	.quad	.LFE26-.LFB26
	.uleb128 0x1
	.byte	0x9c
	.long	0x6cd
	.uleb128 0x16
	.string	"ch"
	.byte	0x1
	.byte	0x7b
	.long	0x62
	.long	.LLST19
	.uleb128 0x18
	.long	0x2fa
	.quad	.LBB46
	.quad	.LBE46-.LBB46
	.byte	0x1
	.byte	0x7f
	.uleb128 0x1d
	.long	0x30a
	.byte	0xa
	.uleb128 0x1a
	.quad	.LVL37
	.long	0x898
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x3a
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x15
	.long	.LASF65
	.byte	0x1
	.byte	0x8c
	.long	0x2bd
	.quad	.LFB27
	.quad	.LFE27-.LFB27
	.uleb128 0x1
	.byte	0x9c
	.long	0x733
	.uleb128 0x16
	.string	"ch"
	.byte	0x1
	.byte	0x8c
	.long	0x62
	.long	.LLST20
	.uleb128 0x18
	.long	0x2fa
	.quad	.LBB48
	.quad	.LBE48-.LBB48
	.byte	0x1
	.byte	0x92
	.uleb128 0x19
	.long	0x30a
	.long	.LLST21
	.uleb128 0x1a
	.quad	.LVL40
	.long	0x898
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
	.long	.LASF66
	.byte	0x1
	.byte	0x9e
	.long	0x62
	.quad	.LFB28
	.quad	.LFE28-.LFB28
	.uleb128 0x1
	.byte	0x9c
	.long	0x877
	.uleb128 0x1e
	.string	"ch"
	.byte	0x1
	.byte	0x9f
	.long	0x62
	.uleb128 0x17
	.long	.LASF59
	.byte	0x1
	.byte	0xa0
	.long	0x2bd
	.long	.LLST22
	.uleb128 0x17
	.long	.LASF67
	.byte	0x1
	.byte	0xa2
	.long	0x62
	.long	.LLST23
	.uleb128 0x17
	.long	.LASF68
	.byte	0x1
	.byte	0xa3
	.long	0x62
	.long	.LLST24
	.uleb128 0x1c
	.long	0x316
	.quad	.LBB50
	.quad	.LBE50-.LBB50
	.byte	0x1
	.byte	0xa6
	.long	0x7b4
	.uleb128 0x1f
	.quad	.LVL71
	.long	0x8b9
	.byte	0
	.uleb128 0x1c
	.long	0x2fa
	.quad	.LBB52
	.quad	.LBE52-.LBB52
	.byte	0x1
	.byte	0xc9
	.long	0x7ed
	.uleb128 0x19
	.long	0x30a
	.long	.LLST25
	.uleb128 0x1a
	.quad	.LVL73
	.long	0x898
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
	.long	0x322
	.uleb128 0x1f
	.quad	.LVL50
	.long	0x397
	.uleb128 0x1f
	.quad	.LVL53
	.long	0x40c
	.uleb128 0x1f
	.quad	.LVL56
	.long	0x481
	.uleb128 0x1f
	.quad	.LVL59
	.long	0x4e7
	.uleb128 0x1f
	.quad	.LVL62
	.long	0x54d
	.uleb128 0x1f
	.quad	.LVL66
	.long	0x66c
	.uleb128 0x1f
	.quad	.LVL69
	.long	0x6cd
	.uleb128 0x1a
	.quad	.LVL75
	.long	0x8cf
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
	.uleb128 0x20
	.long	.LASF69
	.byte	0x5
	.byte	0xa5
	.long	0x26c
	.uleb128 0x20
	.long	.LASF70
	.byte	0x5
	.byte	0xa6
	.long	0x26c
	.uleb128 0x20
	.long	.LASF71
	.byte	0x5
	.byte	0xa7
	.long	0x26c
	.uleb128 0x21
	.long	.LASF73
	.byte	0x6
	.value	0x1cf
	.long	0x62
	.long	0x8b3
	.uleb128 0x22
	.long	0x62
	.uleb128 0x22
	.long	0x8b3
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x298
	.uleb128 0x21
	.long	.LASF74
	.byte	0x6
	.value	0x1ce
	.long	0x62
	.long	0x8cf
	.uleb128 0x22
	.long	0x8b3
	.byte	0
	.uleb128 0x21
	.long	.LASF75
	.byte	0x5
	.value	0x161
	.long	0x62
	.long	0x8eb
	.uleb128 0x22
	.long	0x8eb
	.uleb128 0x22
	.long	0x2a4
	.uleb128 0x23
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x9c
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
	.uleb128 0x1d
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x1e
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
	.uleb128 0x21
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
	.uleb128 0x22
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x23
	.uleb128 0x18
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.quad	.LVL0-.Ltext0
	.quad	.LVL3-1-.Ltext0
	.value	0x1
	.byte	0x55
	.quad	.LVL3-1-.Ltext0
	.quad	.LFE20-.Ltext0
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.quad	0
	.quad	0
.LLST1:
	.quad	.LVL1-.Ltext0
	.quad	.LVL2-.Ltext0
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL2-.Ltext0
	.quad	.LVL4-.Ltext0
	.value	0x1
	.byte	0x53
	.quad	0
	.quad	0
.LLST2:
	.quad	.LVL2-.Ltext0
	.quad	.LVL3-1-.Ltext0
	.value	0x1
	.byte	0x55
	.quad	.LVL3-1-.Ltext0
	.quad	.LVL4-.Ltext0
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.quad	0
	.quad	0
.LLST3:
	.quad	.LVL5-.Ltext0
	.quad	.LVL8-1-.Ltext0
	.value	0x1
	.byte	0x55
	.quad	.LVL8-1-.Ltext0
	.quad	.LFE21-.Ltext0
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.quad	0
	.quad	0
.LLST4:
	.quad	.LVL6-.Ltext0
	.quad	.LVL7-.Ltext0
	.value	0x2
	.byte	0x31
	.byte	0x9f
	.quad	.LVL7-.Ltext0
	.quad	.LVL9-.Ltext0
	.value	0x1
	.byte	0x53
	.quad	.LVL9-.Ltext0
	.quad	.LFE21-.Ltext0
	.value	0x1
	.byte	0x50
	.quad	0
	.quad	0
.LLST5:
	.quad	.LVL7-.Ltext0
	.quad	.LVL8-1-.Ltext0
	.value	0x1
	.byte	0x55
	.quad	.LVL8-1-.Ltext0
	.quad	.LFE21-.Ltext0
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.quad	0
	.quad	0
.LLST6:
	.quad	.LVL10-.Ltext0
	.quad	.LVL13-1-.Ltext0
	.value	0x1
	.byte	0x55
	.quad	.LVL13-1-.Ltext0
	.quad	.LFE22-.Ltext0
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.quad	0
	.quad	0
.LLST7:
	.quad	.LVL11-.Ltext0
	.quad	.LVL12-.Ltext0
	.value	0x2
	.byte	0x32
	.byte	0x9f
	.quad	.LVL12-.Ltext0
	.quad	.LVL14-.Ltext0
	.value	0x1
	.byte	0x53
	.quad	.LVL14-.Ltext0
	.quad	.LFE22-.Ltext0
	.value	0x1
	.byte	0x50
	.quad	0
	.quad	0
.LLST8:
	.quad	.LVL12-.Ltext0
	.quad	.LVL13-1-.Ltext0
	.value	0x1
	.byte	0x55
	.quad	.LVL13-1-.Ltext0
	.quad	.LFE22-.Ltext0
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.quad	0
	.quad	0
.LLST9:
	.quad	.LVL15-.Ltext0
	.quad	.LVL17-1-.Ltext0
	.value	0x1
	.byte	0x55
	.quad	.LVL17-1-.Ltext0
	.quad	.LFE23-.Ltext0
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.quad	0
	.quad	0
.LLST10:
	.quad	.LVL16-.Ltext0
	.quad	.LVL17-1-.Ltext0
	.value	0x1
	.byte	0x55
	.quad	.LVL17-1-.Ltext0
	.quad	.LFE23-.Ltext0
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.quad	0
	.quad	0
.LLST11:
	.quad	.LVL18-.Ltext0
	.quad	.LVL20-1-.Ltext0
	.value	0x1
	.byte	0x55
	.quad	.LVL20-1-.Ltext0
	.quad	.LFE24-.Ltext0
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.quad	0
	.quad	0
.LLST12:
	.quad	.LVL19-.Ltext0
	.quad	.LVL20-1-.Ltext0
	.value	0x1
	.byte	0x55
	.quad	.LVL20-1-.Ltext0
	.quad	.LFE24-.Ltext0
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.quad	0
	.quad	0
.LLST13:
	.quad	.LVL21-.Ltext0
	.quad	.LVL23-.Ltext0
	.value	0x1
	.byte	0x55
	.quad	.LVL23-.Ltext0
	.quad	.LVL33-.Ltext0
	.value	0x1
	.byte	0x53
	.quad	.LVL33-.Ltext0
	.quad	.LFE25-.Ltext0
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.quad	0
	.quad	0
.LLST14:
	.quad	.LVL22-.Ltext0
	.quad	.LVL29-.Ltext0
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL29-.Ltext0
	.quad	.LVL32-.Ltext0
	.value	0x1
	.byte	0x56
	.quad	0
	.quad	0
.LLST15:
	.quad	.LVL24-.Ltext0
	.quad	.LVL26-.Ltext0
	.value	0x3
	.byte	0x8
	.byte	0x20
	.byte	0x9f
	.quad	0
	.quad	0
.LLST16:
	.quad	.LVL26-.Ltext0
	.quad	.LVL28-.Ltext0
	.value	0x3
	.byte	0x8
	.byte	0x2f
	.byte	0x9f
	.quad	0
	.quad	0
.LLST17:
	.quad	.LVL29-.Ltext0
	.quad	.LVL32-.Ltext0
	.value	0x3
	.byte	0x8
	.byte	0x2f
	.byte	0x9f
	.quad	0
	.quad	0
.LLST18:
	.quad	.LVL30-.Ltext0
	.quad	.LVL32-.Ltext0
	.value	0x1
	.byte	0x53
	.quad	0
	.quad	0
.LLST19:
	.quad	.LVL34-.Ltext0
	.quad	.LVL36-.Ltext0
	.value	0x1
	.byte	0x55
	.quad	.LVL36-.Ltext0
	.quad	.LFE26-.Ltext0
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.quad	0
	.quad	0
.LLST20:
	.quad	.LVL38-.Ltext0
	.quad	.LVL40-1-.Ltext0
	.value	0x1
	.byte	0x55
	.quad	.LVL40-1-.Ltext0
	.quad	.LVL41-.Ltext0
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.quad	.LVL41-.Ltext0
	.quad	.LVL42-.Ltext0
	.value	0x1
	.byte	0x55
	.quad	.LVL42-.Ltext0
	.quad	.LFE27-.Ltext0
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.quad	0
	.quad	0
.LLST21:
	.quad	.LVL39-.Ltext0
	.quad	.LVL41-.Ltext0
	.value	0x2
	.byte	0x3a
	.byte	0x9f
	.quad	.LVL42-.Ltext0
	.quad	.LVL43-.Ltext0
	.value	0x2
	.byte	0x3a
	.byte	0x9f
	.quad	0
	.quad	0
.LLST22:
	.quad	.LVL44-.Ltext0
	.quad	.LVL45-.Ltext0
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL45-.Ltext0
	.quad	.LVL48-.Ltext0
	.value	0x1
	.byte	0x53
	.quad	.LVL48-.Ltext0
	.quad	.LVL49-.Ltext0
	.value	0x1
	.byte	0x50
	.quad	.LVL49-.Ltext0
	.quad	.LVL51-.Ltext0
	.value	0x1
	.byte	0x53
	.quad	.LVL51-.Ltext0
	.quad	.LVL52-.Ltext0
	.value	0x1
	.byte	0x50
	.quad	.LVL52-.Ltext0
	.quad	.LVL54-.Ltext0
	.value	0x1
	.byte	0x53
	.quad	.LVL54-.Ltext0
	.quad	.LVL55-.Ltext0
	.value	0x1
	.byte	0x50
	.quad	.LVL55-.Ltext0
	.quad	.LVL57-.Ltext0
	.value	0x1
	.byte	0x53
	.quad	.LVL57-.Ltext0
	.quad	.LVL58-.Ltext0
	.value	0x1
	.byte	0x50
	.quad	.LVL58-.Ltext0
	.quad	.LVL60-.Ltext0
	.value	0x1
	.byte	0x53
	.quad	.LVL60-.Ltext0
	.quad	.LVL61-.Ltext0
	.value	0x1
	.byte	0x50
	.quad	.LVL61-.Ltext0
	.quad	.LVL63-.Ltext0
	.value	0x1
	.byte	0x53
	.quad	.LVL63-.Ltext0
	.quad	.LVL65-.Ltext0
	.value	0x1
	.byte	0x50
	.quad	.LVL65-.Ltext0
	.quad	.LVL67-.Ltext0
	.value	0x1
	.byte	0x53
	.quad	.LVL67-.Ltext0
	.quad	.LVL68-.Ltext0
	.value	0x1
	.byte	0x50
	.quad	.LVL68-.Ltext0
	.quad	.LVL76-.Ltext0
	.value	0x1
	.byte	0x53
	.quad	0
	.quad	0
.LLST23:
	.quad	.LVL44-.Ltext0
	.quad	.LVL45-.Ltext0
	.value	0x2
	.byte	0x31
	.byte	0x9f
	.quad	.LVL45-.Ltext0
	.quad	.LVL77-.Ltext0
	.value	0x1
	.byte	0x56
	.quad	0
	.quad	0
.LLST24:
	.quad	.LVL44-.Ltext0
	.quad	.LVL45-.Ltext0
	.value	0x2
	.byte	0x31
	.byte	0x9f
	.quad	.LVL45-.Ltext0
	.quad	.LVL64-.Ltext0
	.value	0x1
	.byte	0x5c
	.quad	.LVL65-.Ltext0
	.quad	.LVL78-.Ltext0
	.value	0x1
	.byte	0x5c
	.quad	0
	.quad	0
.LLST25:
	.quad	.LVL72-.Ltext0
	.quad	.LVL74-.Ltext0
	.value	0x3
	.byte	0x8
	.byte	0x2f
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
.LASF8:
	.string	"__off_t"
.LASF14:
	.string	"_IO_read_ptr"
.LASF26:
	.string	"_chain"
.LASF78:
	.string	"/Users/onetrob/Documents/Princeton/Projects/Assemblance/samples"
.LASF76:
	.string	"GNU C 4.8.1 -mtune=generic -march=x86-64 -g -O1"
.LASF7:
	.string	"size_t"
.LASF32:
	.string	"_shortbuf"
.LASF57:
	.string	"handleNormal"
.LASF20:
	.string	"_IO_buf_base"
.LASF48:
	.string	"long long unsigned int"
.LASF68:
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
.LASF59:
	.string	"state"
.LASF6:
	.string	"long int"
.LASF13:
	.string	"_flags"
.LASF21:
	.string	"_IO_buf_end"
.LASF30:
	.string	"_cur_column"
.LASF72:
	.string	"putchar"
.LASF29:
	.string	"_old_offset"
.LASF34:
	.string	"_offset"
.LASF49:
	.string	"NORMAL"
.LASF67:
	.string	"line"
.LASF51:
	.string	"INCHAR"
.LASF73:
	.string	"_IO_putc"
.LASF43:
	.string	"_IO_marker"
.LASF69:
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
.LASF70:
	.string	"stdout"
.LASF63:
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
.LASF65:
	.string	"handleEndComm"
.LASF60:
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
.LASF61:
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
.LASF71:
	.string	"stderr"
.LASF62:
	.string	"handleEscapeStr"
.LASF23:
	.string	"_IO_backup_base"
.LASF64:
	.string	"handleInComm"
.LASF58:
	.string	"handleInStr"
.LASF50:
	.string	"INSTR"
.LASF54:
	.string	"ENDCOMM"
.LASF56:
	.string	"ESCAPESTR"
.LASF66:
	.string	"main"
.LASF17:
	.string	"_IO_write_base"
.LASF77:
	.string	"decomment.c"
	.ident	"GCC: (GNU) 4.8.1"
	.section	.note.GNU-stack,"",@progbits
