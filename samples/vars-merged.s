### --------------------------------------------------------------------
### samples/vars-merged.s
### Author: 
### --------------------------------------------------------------------
	.section	__TEXT,__text,regular,pure_instructions
	.globl	_main
_main:                                  

	## int main() {
	pushq	%rbp
	movq	%rsp, %rbp
	movl	$0, -4(%rbp)

	##   a = 1;
	movl	$1, -8(%rbp)

	##   b = 2;
	movl	$2, -12(%rbp)

	##   c = 3;
	movl	$3, -16(%rbp)

	##   a = (b = c);
	movl	-16(%rbp), %eax
	movl	%eax, -12(%rbp)
	movl	%eax, -8(%rbp)

	##   return a;
	movl	-8(%rbp), %eax
	popq	%rbp
	retq
