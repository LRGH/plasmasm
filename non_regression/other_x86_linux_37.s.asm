	.file	"python.c"
	.text
	.p2align 4,,15
# ----------------------
	.globl	main
	.type	main, @function
main:
	.cfi_startproc
	pushl     %ebp
	movl      %esp, %ebp
	andl      $-16, %esp
	subl      $16, %esp
	movl      12(%ebp), %eax
	movl      %eax, 4(%esp)
	movl      8(%ebp), %eax
	movl      %eax, (%esp)
	call      Py_Main
	leave     
	ret       
	.cfi_endproc
	.size	main, .-main
# ----------------------
	.cfi_sections	.debug_frame
	.ident	"GCC: (Debian 4.4.5-8) 4.4.5"
	.section	.note.GNU-stack,"",@progbits
