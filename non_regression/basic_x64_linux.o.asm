	.file	"a00.c"
	.text
	.globl	main
	.type	main, @function
main:
	pushq     %rbp
	movq      %rsp, %rbp
	movl      $0, -4(%rbp)
	addl      $66, -4(%rbp)
	movl      -4(%rbp), %eax
	popq      %rbp
	ret       
	.size	main, .-main
# ----------------------
	.ident	"GCC: (Ubuntu 4.8.4-2ubuntu1~14.04) 4.8.4"
	.section	.note.GNU-stack,"",@progbits
