	.file	"a02.c"
	.text
	.p2align 4,,15
# ----------------------
	.globl	toto
	.type	toto, @function
toto:
	.cfi_startproc
	movl      4(%esp), %eax
	addl      $1, (%eax)
	ret       
	.cfi_endproc
	.size	toto, .-toto
# ----------------------
	.p2align 4,,15
# ----------------------
	.globl	tata
	.type	tata, @function
tata:
	.cfi_startproc
	movl      4(%esp), %eax
	subl      $1, (%eax)
	ret       
	.cfi_endproc
	.size	tata, .-tata
# ----------------------
	.section       .text.startup,"ax",@progbits
	.p2align 4,,15
# ----------------------
	.globl	main
	.type	main, @function
main:
	.cfi_startproc
	subl      $20, %esp
	leal      16(%esp), %eax
	movl      %eax, (%esp)
	movl      $0, 16(%esp)
	call      toto
	movl      16(%esp), %eax
	addl      $20, %esp
	ret       
	.cfi_endproc
	.size	main, .-main
# ----------------------
	.ident	"GCC: (Ubuntu/Linaro 4.6.3-1ubuntu5) 4.6.3"
	.section	.note.GNU-stack,"",@progbits
