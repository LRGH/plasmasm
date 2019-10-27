	.file	"b0.c"
	.text
	.p2align 4,,15
	.globl	I
	.type	I, @function
I:
.LFB0:
	.cfi_startproc
	.p2align 4,,10
	.p2align 3
.L2:
	jmp	.L2
	.cfi_endproc
.LFE0:
	.size	I, .-I
	.p2align 4,,15
	.globl	H
	.type	H, @function
H:
.LFB1:
	.cfi_startproc
	.p2align 4,,10
	.p2align 3
.L4:
	jmp	.L4
	.cfi_endproc
.LFE1:
	.size	H, .-H
	.section	.text.startup,"ax",@progbits
	.p2align 4,,15
	.globl	main
	.type	main, @function
main:
.LFB2:
	.cfi_startproc
	rep ret
	.cfi_endproc
.LFE2:
	.size	main, .-main
	.ident	"GCC: (Ubuntu 4.8.4-2ubuntu1~14.04) 4.8.4"
	.section	.note.GNU-stack,"",@progbits
