	.file	"decomment.c"
	.text
.Ltext0:
	.globl	handleNormal
	.type	handleNormal, @function
handleNormal:
.LFB0:
	.file 1 "decomment.c"
	.loc 1 17 0
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movl	%edi, -20(%rbp)
	.loc 1 18 0
	movl	$0, -4(%rbp)
	.loc 1 21 0
	movl	-20(%rbp), %eax
	cmpl	$39, %eax
	je	.L3
	cmpl	$47, %eax
	je	.L4
	cmpl	$34, %eax
	je	.L5
	jmp	.L2
.L4:
	.loc 1 24 0
	movl	$4, %eax
	jmp	.L6
.L3:
	.loc 1 26 0
	movl	$2, -4(%rbp)
	.loc 1 27 0
	jmp	.L2
.L5:
	.loc 1 29 0
	movl	$1, -4(%rbp)
	.loc 1 30 0
	nop
.L2:
	.loc 1 32 0
	movl	-20(%rbp), %eax
	movl	%eax, %edi
	call	putchar
	.loc 1 33 0
	movl	-4(%rbp), %eax
.L6:
	.loc 1 34 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	handleNormal, .-handleNormal
	.globl	handleInStr
	.type	handleInStr, @function
handleInStr:
.LFB1:
	.loc 1 38 0
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movl	%edi, -20(%rbp)
	.loc 1 39 0
	movl	$1, -4(%rbp)
	.loc 1 42 0
	movl	-20(%rbp), %eax
	cmpl	$34, %eax
	je	.L9
	cmpl	$92, %eax
	je	.L10
	jmp	.L8
.L9:
	.loc 1 44 0
	movl	$0, -4(%rbp)
	.loc 1 45 0
	jmp	.L8
.L10:
	.loc 1 47 0
	movl	$7, -4(%rbp)
	.loc 1 48 0
	nop
.L8:
	.loc 1 51 0
	movl	-20(%rbp), %eax
	movl	%eax, %edi
	call	putchar
	.loc 1 52 0
	movl	-4(%rbp), %eax
	.loc 1 53 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1:
	.size	handleInStr, .-handleInStr
	.globl	handleInChar
	.type	handleInChar, @function
handleInChar:
.LFB2:
	.loc 1 57 0
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movl	%edi, -20(%rbp)
	.loc 1 58 0
	movl	$2, -4(%rbp)
	.loc 1 61 0
	movl	-20(%rbp), %eax
	cmpl	$39, %eax
	je	.L14
	cmpl	$92, %eax
	je	.L15
	jmp	.L13
.L14:
	.loc 1 63 0
	movl	$0, -4(%rbp)
	.loc 1 64 0
	jmp	.L13
.L15:
	.loc 1 66 0
	movl	$6, -4(%rbp)
	.loc 1 67 0
	nop
.L13:
	.loc 1 70 0
	movl	-20(%rbp), %eax
	movl	%eax, %edi
	call	putchar
	.loc 1 71 0
	movl	-4(%rbp), %eax
	.loc 1 72 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2:
	.size	handleInChar, .-handleInChar
	.globl	handleEscapeChar
	.type	handleEscapeChar, @function
handleEscapeChar:
.LFB3:
	.loc 1 76 0
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movl	%edi, -4(%rbp)
	.loc 1 78 0
	movl	-4(%rbp), %eax
	movl	%eax, %edi
	call	putchar
	.loc 1 79 0
	movl	$2, %eax
	.loc 1 80 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3:
	.size	handleEscapeChar, .-handleEscapeChar
	.globl	handleEscapeStr
	.type	handleEscapeStr, @function
handleEscapeStr:
.LFB4:
	.loc 1 84 0
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movl	%edi, -4(%rbp)
	.loc 1 86 0
	movl	-4(%rbp), %eax
	movl	%eax, %edi
	call	putchar
	.loc 1 87 0
	movl	$1, %eax
	.loc 1 88 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4:
	.size	handleEscapeStr, .-handleEscapeStr
	.globl	handleStartComm
	.type	handleStartComm, @function
handleStartComm:
.LFB5:
	.loc 1 92 0
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movl	%edi, -20(%rbp)
	.loc 1 93 0
	movl	$0, -4(%rbp)
	.loc 1 95 0
	movl	-20(%rbp), %eax
	cmpl	$39, %eax
	je	.L23
	cmpl	$39, %eax
	jg	.L24
	cmpl	$34, %eax
	je	.L25
	jmp	.L22
.L24:
	cmpl	$42, %eax
	je	.L26
	cmpl	$47, %eax
	je	.L27
	jmp	.L22
.L26:
	.loc 1 98 0
	movl	$32, %edi
	call	putchar
	.loc 1 99 0
	movl	$3, %eax
	jmp	.L28
.L27:
	.loc 1 102 0
	movl	-20(%rbp), %eax
	movl	%eax, %edi
	call	putchar
	.loc 1 103 0
	movl	$4, %eax
	jmp	.L28
.L23:
	.loc 1 106 0
	movl	$2, -4(%rbp)
	.loc 1 107 0
	jmp	.L22
.L25:
	.loc 1 110 0
	movl	$1, -4(%rbp)
	.loc 1 111 0
	nop
.L22:
	.loc 1 115 0
	movl	$47, %edi
	call	putchar
	.loc 1 116 0
	movl	-20(%rbp), %eax
	movl	%eax, %edi
	call	putchar
	.loc 1 117 0
	movl	-4(%rbp), %eax
.L28:
	.loc 1 118 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5:
	.size	handleStartComm, .-handleStartComm
	.globl	handleInComm
	.type	handleInComm, @function
handleInComm:
.LFB6:
	.loc 1 123 0
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movl	%edi, -4(%rbp)
	.loc 1 125 0
	movl	-4(%rbp), %eax
	cmpl	$10, %eax
	je	.L31
	cmpl	$42, %eax
	je	.L32
	jmp	.L30
.L31:
	.loc 1 127 0
	movl	-4(%rbp), %eax
	movl	%eax, %edi
	call	putchar
	.loc 1 128 0
	jmp	.L30
.L32:
	.loc 1 130 0
	movl	$5, %eax
	jmp	.L33
.L30:
	.loc 1 134 0
	movl	$3, %eax
.L33:
	.loc 1 135 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	handleInComm, .-handleInComm
	.globl	handleEndComm
	.type	handleEndComm, @function
handleEndComm:
.LFB7:
	.loc 1 140 0
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movl	%edi, -4(%rbp)
	.loc 1 142 0
	movl	-4(%rbp), %eax
	cmpl	$42, %eax
	je	.L36
	cmpl	$47, %eax
	je	.L37
	cmpl	$10, %eax
	je	.L38
	jmp	.L35
.L37:
	.loc 1 144 0
	movl	$0, %eax
	jmp	.L39
.L38:
	.loc 1 146 0
	movl	-4(%rbp), %eax
	movl	%eax, %edi
	call	putchar
	.loc 1 147 0
	jmp	.L35
.L36:
	.loc 1 149 0
	movl	$5, %eax
	jmp	.L39
.L35:
	.loc 1 152 0
	movl	$3, %eax
.L39:
	.loc 1 153 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7:
	.size	handleEndComm, .-handleEndComm
	.section	.rodata
	.align 8
.LC0:
	.string	"Error: line %d: unterminated comment\n"
	.text
	.globl	main
	.type	main, @function
main:
.LFB8:
	.loc 1 158 0
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	.loc 1 160 0
	movl	$0, -4(%rbp)
	.loc 1 162 0
	movl	$1, -8(%rbp)
	.loc 1 163 0
	movl	$1, -12(%rbp)
	.loc 1 166 0
	jmp	.L41
.L53:
	.loc 1 168 0
	cmpl	$10, -16(%rbp)
	jne	.L42
	.loc 1 168 0 is_stmt 0 discriminator 1
	addl	$1, -8(%rbp)
.L42:
	.loc 1 171 0 is_stmt 1
	cmpl	$7, -4(%rbp)
	ja	.L41
	movl	-4(%rbp), %eax
	movq	.L44(,%rax,8), %rax
	jmp	*%rax
	.section	.rodata
	.align 8
	.align 4
.L44:
	.quad	.L43
	.quad	.L45
	.quad	.L46
	.quad	.L47
	.quad	.L48
	.quad	.L49
	.quad	.L50
	.quad	.L51
	.text
.L43:
	.loc 1 173 0
	movl	-16(%rbp), %eax
	movl	%eax, %edi
	call	handleNormal
	movl	%eax, -4(%rbp)
	.loc 1 174 0
	jmp	.L41
.L45:
	.loc 1 176 0
	movl	-16(%rbp), %eax
	movl	%eax, %edi
	call	handleInStr
	movl	%eax, -4(%rbp)
	.loc 1 177 0
	jmp	.L41
.L46:
	.loc 1 179 0
	movl	-16(%rbp), %eax
	movl	%eax, %edi
	call	handleInChar
	movl	%eax, -4(%rbp)
	.loc 1 180 0
	jmp	.L41
.L50:
	.loc 1 182 0
	movl	-16(%rbp), %eax
	movl	%eax, %edi
	call	handleEscapeChar
	movl	%eax, -4(%rbp)
	.loc 1 183 0
	jmp	.L41
.L51:
	.loc 1 185 0
	movl	-16(%rbp), %eax
	movl	%eax, %edi
	call	handleEscapeStr
	movl	%eax, -4(%rbp)
	.loc 1 186 0
	jmp	.L41
.L48:
	.loc 1 188 0
	movl	-16(%rbp), %eax
	movl	%eax, %edi
	call	handleStartComm
	movl	%eax, -4(%rbp)
	.loc 1 190 0
	cmpl	$3, -4(%rbp)
	jne	.L52
	.loc 1 190 0 is_stmt 0 discriminator 1
	movl	-8(%rbp), %eax
	movl	%eax, -12(%rbp)
	.loc 1 191 0 is_stmt 1 discriminator 1
	jmp	.L41
.L52:
	.loc 1 191 0 is_stmt 0
	jmp	.L41
.L47:
	.loc 1 193 0 is_stmt 1
	movl	-16(%rbp), %eax
	movl	%eax, %edi
	call	handleInComm
	movl	%eax, -4(%rbp)
	.loc 1 194 0
	jmp	.L41
.L49:
	.loc 1 196 0
	movl	-16(%rbp), %eax
	movl	%eax, %edi
	call	handleEndComm
	movl	%eax, -4(%rbp)
	.loc 1 197 0
	nop
.L41:
	.loc 1 166 0 discriminator 1
	call	getchar
	movl	%eax, -16(%rbp)
	cmpl	$-1, -16(%rbp)
	jne	.L53
	.loc 1 201 0
	cmpl	$4, -4(%rbp)
	jne	.L54
	.loc 1 201 0 is_stmt 0 discriminator 1
	movl	$47, %edi
	call	putchar
.L54:
	.loc 1 204 0 is_stmt 1
	cmpl	$3, -4(%rbp)
	je	.L55
	.loc 1 204 0 is_stmt 0 discriminator 1
	cmpl	$5, -4(%rbp)
	jne	.L56
.L55:
	.loc 1 206 0 is_stmt 1
	movq	stderr(%rip), %rax
	movl	-12(%rbp), %edx
	movl	$.LC0, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf
	.loc 1 208 0
	movl	$1, %eax
	jmp	.L57
.L56:
	.loc 1 212 0
	movl	$0, %eax
.L57:
	.loc 1 213 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8:
	.size	main, .-main
.Letext0:
	.file 2 "/usr/local/gcc-4.8.1-for-linux64/lib/gcc/x86_64-pc-linux/4.8.1/include/stddef.h"
	.file 3 "/usr/local/gcc-4.8.1-for-linux64/include/bits/types.h"
	.file 4 "/usr/local/gcc-4.8.1-for-linux64/include/libio.h"
	.file 5 "/usr/local/gcc-4.8.1-for-linux64/include/stdio.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x4e9
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.LASF68
	.byte	0x1
	.long	.LASF69
	.long	.LASF70
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
	.long	.LASF71
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
	.uleb128 0x3
	.byte	0x8
	.byte	0x5
	.long	.LASF46
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.long	.LASF47
	.uleb128 0xe
	.long	.LASF72
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.long	0x2d8
	.uleb128 0xf
	.long	.LASF48
	.sleb128 0
	.uleb128 0xf
	.long	.LASF49
	.sleb128 1
	.uleb128 0xf
	.long	.LASF50
	.sleb128 2
	.uleb128 0xf
	.long	.LASF51
	.sleb128 3
	.uleb128 0xf
	.long	.LASF52
	.sleb128 4
	.uleb128 0xf
	.long	.LASF53
	.sleb128 5
	.uleb128 0xf
	.long	.LASF54
	.sleb128 6
	.uleb128 0xf
	.long	.LASF55
	.sleb128 7
	.byte	0
	.uleb128 0x10
	.long	.LASF56
	.byte	0x1
	.byte	0x11
	.long	0x29b
	.quad	.LFB0
	.quad	.LFE0-.LFB0
	.uleb128 0x1
	.byte	0x9c
	.long	0x315
	.uleb128 0x11
	.string	"ch"
	.byte	0x1
	.byte	0x11
	.long	0x62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x12
	.long	.LASF58
	.byte	0x1
	.byte	0x12
	.long	0x29b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x10
	.long	.LASF57
	.byte	0x1
	.byte	0x26
	.long	0x29b
	.quad	.LFB1
	.quad	.LFE1-.LFB1
	.uleb128 0x1
	.byte	0x9c
	.long	0x352
	.uleb128 0x11
	.string	"ch"
	.byte	0x1
	.byte	0x26
	.long	0x62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x12
	.long	.LASF58
	.byte	0x1
	.byte	0x27
	.long	0x29b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x10
	.long	.LASF59
	.byte	0x1
	.byte	0x39
	.long	0x29b
	.quad	.LFB2
	.quad	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.long	0x38f
	.uleb128 0x11
	.string	"ch"
	.byte	0x1
	.byte	0x39
	.long	0x62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x12
	.long	.LASF58
	.byte	0x1
	.byte	0x3a
	.long	0x29b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x10
	.long	.LASF60
	.byte	0x1
	.byte	0x4c
	.long	0x29b
	.quad	.LFB3
	.quad	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.long	0x3be
	.uleb128 0x11
	.string	"ch"
	.byte	0x1
	.byte	0x4c
	.long	0x62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x10
	.long	.LASF61
	.byte	0x1
	.byte	0x54
	.long	0x29b
	.quad	.LFB4
	.quad	.LFE4-.LFB4
	.uleb128 0x1
	.byte	0x9c
	.long	0x3ed
	.uleb128 0x11
	.string	"ch"
	.byte	0x1
	.byte	0x54
	.long	0x62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x10
	.long	.LASF62
	.byte	0x1
	.byte	0x5c
	.long	0x29b
	.quad	.LFB5
	.quad	.LFE5-.LFB5
	.uleb128 0x1
	.byte	0x9c
	.long	0x42a
	.uleb128 0x11
	.string	"ch"
	.byte	0x1
	.byte	0x5c
	.long	0x62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x12
	.long	.LASF58
	.byte	0x1
	.byte	0x5d
	.long	0x29b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x10
	.long	.LASF63
	.byte	0x1
	.byte	0x7b
	.long	0x29b
	.quad	.LFB6
	.quad	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.long	0x459
	.uleb128 0x11
	.string	"ch"
	.byte	0x1
	.byte	0x7b
	.long	0x62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x10
	.long	.LASF64
	.byte	0x1
	.byte	0x8c
	.long	0x29b
	.quad	.LFB7
	.quad	.LFE7-.LFB7
	.uleb128 0x1
	.byte	0x9c
	.long	0x488
	.uleb128 0x11
	.string	"ch"
	.byte	0x1
	.byte	0x8c
	.long	0x62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x10
	.long	.LASF65
	.byte	0x1
	.byte	0x9e
	.long	0x62
	.quad	.LFB8
	.quad	.LFE8-.LFB8
	.uleb128 0x1
	.byte	0x9c
	.long	0x4e1
	.uleb128 0x13
	.string	"ch"
	.byte	0x1
	.byte	0x9f
	.long	0x62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x12
	.long	.LASF58
	.byte	0x1
	.byte	0xa0
	.long	0x29b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x12
	.long	.LASF66
	.byte	0x1
	.byte	0xa2
	.long	0x62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x12
	.long	.LASF67
	.byte	0x1
	.byte	0xa3
	.long	0x62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0x14
	.long	.LASF73
	.byte	0x5
	.byte	0xa7
	.long	0x261
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
	.uleb128 0xf
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xd
	.byte	0
	.byte	0
	.uleb128 0x10
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
	.uleb128 0x11
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
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x12
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
	.uleb128 0x18
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
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x14
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
.LASF8:
	.string	"__off_t"
.LASF13:
	.string	"_IO_read_ptr"
.LASF25:
	.string	"_chain"
.LASF7:
	.string	"size_t"
.LASF31:
	.string	"_shortbuf"
.LASF56:
	.string	"handleNormal"
.LASF19:
	.string	"_IO_buf_base"
.LASF47:
	.string	"long long unsigned int"
.LASF67:
	.string	"lastCommentStart"
.LASF54:
	.string	"ESCAPECHAR"
.LASF46:
	.string	"long long int"
.LASF4:
	.string	"signed char"
.LASF26:
	.string	"_fileno"
.LASF14:
	.string	"_IO_read_end"
.LASF58:
	.string	"state"
.LASF6:
	.string	"long int"
.LASF12:
	.string	"_flags"
.LASF20:
	.string	"_IO_buf_end"
.LASF29:
	.string	"_cur_column"
.LASF28:
	.string	"_old_offset"
.LASF33:
	.string	"_offset"
.LASF48:
	.string	"NORMAL"
.LASF66:
	.string	"line"
.LASF50:
	.string	"INCHAR"
.LASF42:
	.string	"_IO_marker"
.LASF3:
	.string	"unsigned int"
.LASF68:
	.string	"GNU C 4.8.1 -mtune=generic -march=x86-64 -g"
.LASF0:
	.string	"long unsigned int"
.LASF17:
	.string	"_IO_write_ptr"
.LASF44:
	.string	"_sbuf"
.LASF2:
	.string	"short unsigned int"
.LASF21:
	.string	"_IO_save_base"
.LASF32:
	.string	"_lock"
.LASF27:
	.string	"_flags2"
.LASF39:
	.string	"_mode"
.LASF62:
	.string	"handleStartComm"
.LASF10:
	.string	"sizetype"
.LASF18:
	.string	"_IO_write_end"
.LASF71:
	.string	"_IO_lock_t"
.LASF41:
	.string	"_IO_FILE"
.LASF51:
	.string	"INCOMM"
.LASF45:
	.string	"_pos"
.LASF64:
	.string	"handleEndComm"
.LASF59:
	.string	"handleInChar"
.LASF24:
	.string	"_markers"
.LASF1:
	.string	"unsigned char"
.LASF5:
	.string	"short int"
.LASF30:
	.string	"_vtable_offset"
.LASF70:
	.string	"/Users/onetrob/Documents/Princeton/JP2/src/samples"
.LASF60:
	.string	"handleEscapeChar"
.LASF11:
	.string	"char"
.LASF72:
	.string	"State"
.LASF43:
	.string	"_next"
.LASF9:
	.string	"__off64_t"
.LASF15:
	.string	"_IO_read_base"
.LASF23:
	.string	"_IO_save_end"
.LASF52:
	.string	"STARTCOMM"
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
.LASF40:
	.string	"_unused2"
.LASF73:
	.string	"stderr"
.LASF61:
	.string	"handleEscapeStr"
.LASF22:
	.string	"_IO_backup_base"
.LASF63:
	.string	"handleInComm"
.LASF57:
	.string	"handleInStr"
.LASF49:
	.string	"INSTR"
.LASF53:
	.string	"ENDCOMM"
.LASF55:
	.string	"ESCAPESTR"
.LASF65:
	.string	"main"
.LASF16:
	.string	"_IO_write_base"
.LASF69:
	.string	"decomment.c"
	.ident	"GCC: (GNU) 4.8.1"
	.section	.note.GNU-stack,"",@progbits
