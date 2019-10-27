	.file	"python.c"
	.text
	.globl	main
	.type	main, @function
main:
	pushl     %ebp
	movl      %esp, %ebp
	andl      $-16, %esp
	subl      $16, %esp
	movl      12(%ebp), %eax
	movl      %eax, 4(%esp)
	movl      8(%ebp), %eax
	movl      %eax, (%esp)
	call      Py_Main
.L0000001B:
	leave     
	ret       
	.size	main, .-main
# ----------------------
	.ident	"GCC: (Debian 4.4.5-8) 4.4.5"
	.section	.note.GNU-stack,"",@progbits
