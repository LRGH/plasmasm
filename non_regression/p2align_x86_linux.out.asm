	.file	"a02.c"
	.text
	.globl	main
	.type	main, @function
main:
	subl      $20, %esp
	leal      16(%esp), %eax
	movl      %eax, (%esp)
	movl      $0, 16(%esp)
	call      toto
.L08048317:
	movl      16(%esp), %eax
	addl      $20, %esp
	ret       
	.size	main, .-main
# ----------------------
.L0804831F:
	.p2align 3
# ----------------------
	.globl	toto
	.type	toto, @function
toto:
	movl      4(%esp), %eax
	addl      $1, (%eax)
	ret       
	.size	toto, .-toto
# ----------------------
.L080483E8:
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
	.ident	"GCC: (Ubuntu/Linaro 4.6.3-1ubuntu5) 4.6.3"
	.section	.note.GNU-stack,"",@progbits
