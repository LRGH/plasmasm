	.file	"a02.c"
	.text
	.globl	toto
	.type	toto, @function
toto:
	movl      4(%esp), %eax
	addl      $1, (%eax)
	ret       
	.size	toto, .-toto
# ----------------------
.L00000008:
	.p2align 4
# ----------------------
	.globl	tata
	.type	tata, @function
tata:
	movl      4(%esp), %eax
	subl      $1, (%eax)
	ret       
	.size	tata, .-tata
# ----------------------
	.section       .text.startup,"ax",@progbits
	.globl	main
	.type	main, @function
main:
	subl      $20, %esp
	leal      16(%esp), %eax
	movl      %eax, (%esp)
	movl      $0, 16(%esp)
	call      toto
.L00000017.startup:
	movl      16(%esp), %eax
	addl      $20, %esp
	ret       
	.size	main, .-main
# ----------------------
	.ident	"GCC: (Ubuntu/Linaro 4.6.3-1ubuntu5) 4.6.3"
	.section	.note.GNU-stack,"",@progbits
