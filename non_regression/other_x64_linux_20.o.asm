	.file	"a.c"
	.text
	.globl	main
	.type	main, @function
main:
	endbr64   
	pushq     %rbp
	movq      %rsp, %rbp
	movl      $10, %eax
	popq      %rbp
	ret       
	.size	main, .-main
# ----------------------
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
