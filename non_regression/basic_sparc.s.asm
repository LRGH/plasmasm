	.file	"a00.c"
	.section       ".text"
	.align 4
	.align 4
	.globl	main
	.type	main, #function
	.proc	04
main:
	save  %sp, -104, %sp
	clr  [%fp+-4]
	ld  [%fp+-4], %g1
	inc  0x42, %g1
	st  %g1, [%fp+-4]
	ld  [%fp+-4], %g1
	mov  %g1, %i0
	restore
	retl
	nop
	.size	main, .-main
# ----------------------
	.ident	"GCC: (GNU) 4.4.2"
