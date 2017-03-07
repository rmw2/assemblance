	.section	__TEXT,__text,regular,pure_instructions
	.macosx_version_min 10, 11
	.globl	_square
	.align	4, 0x90
_square:                                ## @square
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp0:
	.cfi_def_cfa_offset 16
Ltmp1:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp2:
	.cfi_def_cfa_register %rbp
	movsd	%xmm0, -8(%rbp)
	movsd	-8(%rbp), %xmm0         ## xmm0 = mem[0],zero
	mulsd	-8(%rbp), %xmm0
	popq	%rbp
	retq
	.cfi_endproc


.subsections_via_symbols
