	.section	__TEXT,__text,regular,pure_instructions
	.globl	_square
_square:                                

	## double square(double num) {
	pushq	%rbp
	movq	%rsp, %rbp
	movsd	%xmm0, -8(%rbp)

	##   return num * num;
	movsd	-8(%rbp), %xmm0         
	mulsd	-8(%rbp), %xmm0
	popq	%rbp
	retq
