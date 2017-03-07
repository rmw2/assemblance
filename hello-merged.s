### --------------------------------------------------------------------
### hello-merged.s
### Author:
### --------------------------------------------------------------------
	.section	__TEXT,__text,regular,pure_instructions
	.globl	_main
_main:

	## int main(void)
	## {
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	leaq	L_.str(%rip), %rdi
	movl	$0, -4(%rbp)

	##    printf("hello, world\n");
	movb	$0, %al
	callq	_printf
	xorl	%ecx, %ecx

	##    return 0;
	movl	%eax, -8(%rbp)
	movl	%ecx, %eax
	addq	$16, %rsp
	popq	%rbp
	retq
### --------------------------------------------------------------------
	.section	__TEXT,__cstring,cstring_literals
L_.str:
	.asciz	"hello, world\n"
