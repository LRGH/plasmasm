	.file	"a00.c"
	.text
	.globl	main
	.type	main, @function
main:
	pushl     %ebp
	movl      %esp, %ebp
	subl      $16, %esp
	movl      $0, -4(%ebp)
	addl      $66, -4(%ebp)
	movl      -4(%ebp), %eax
	leave     
	ret       
	.size	main, .-main
# ----------------------
	.ident	"GCC: (Ubuntu/Linaro 4.6.3-1ubuntu5) 4.6.3"
	.section	.note.GNU-stack,"",@progbits
