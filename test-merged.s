### --------------------------------------------------------------------
### test-merged.s
### Author:
### --------------------------------------------------------------------
	.section	__TEXT,__text,regular,pure_instructions
	.globl	_test
_test:

	## int test(int num) {
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, -4(%rbp)

	##   return num * num;
	movl	-4(%rbp), %edi
	imull	-4(%rbp), %edi
	movl	%edi, %eax
	popq	%rbp
	retq
