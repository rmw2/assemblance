### --------------------------------------------------------------------
### void-merged.s
### Author:
### --------------------------------------------------------------------
	.section	__TEXT,__text,regular,pure_instructions
	.globl	_a
_a:

	## void a(int *s) {
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -8(%rbp)

	## 	*s = 1;
	movq	-8(%rbp), %rdi
	movl	$1, (%rdi)

	## }
	popq	%rbp
	retq
	.globl	_main
_main:

	## int main() {
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	leaq	-8(%rbp), %rdi
	movl	$0, -4(%rbp)

	## 	a(&b);
	callq	_a
	xorl	%eax, %eax

	## 	return 0;
	addq	$16, %rsp
	popq	%rbp
	retq
