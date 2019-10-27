	.file	"b0.c"
	.section       .text.startup,"ax",@progbits
	.globl	main
	.type	main, @function
main:
	rep; ret       
	.size	main, .-main
# ----------------------
	.text
	.globl	I
	.type	I, @function
I:
	jmp       .LTHUNK7
	.size	I, .-I
# ----------------------
.L00000002:
	.p2align 4
# ----------------------
	.globl	H
	.type	H, @function
H:
	jmp       .LTHUNK8
	.size	H, .-H
# ----------------------
	.set	.LTHUNK7,I
	.set	.LTHUNK8,H
	.ident	"GCC: (Ubuntu 4.8.4-2ubuntu1~14.04) 4.8.4"
	.section	.note.GNU-stack,"",@progbits
