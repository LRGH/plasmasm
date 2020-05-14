	.text
	.globl	a
	.type	a, @function
a:
	pushl     %ebp
	movl      %esp, %ebp
	popl      %ebp
	ret       
	.size	a, .-a
# ----------------------
.L080483B9:
	.p2align 2
# ----------------------
	.globl	main
	.type	main, @function
main:
	pushl     %ebp
	movl      %esp, %ebp
	popl      %ebp
	ret       
	.size	main, .-main
# ----------------------
	.local	b....0x804a018
	.comm	b....0x804a018,4,4
# ----------------------
	.local	b....0x804a01c
	.comm	b....0x804a01c,4,4
# ----------------------
	.ident	"GCC: (Ubuntu/Linaro 4.6.3-1ubuntu5) 4.6.3"
	.section	.note.GNU-stack,"",@progbits
