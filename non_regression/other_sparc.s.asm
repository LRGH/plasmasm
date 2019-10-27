	.file	"a02bis.c"
	.section       ".text"
	.align 4
	.align 4
	.globl	toto
	.type	toto, #function
	.proc	020
toto:
	save  %sp, -96, %sp
	st  %i0, [%fp+68]
	ld  [%fp+68], %g1
	ld  [%g1], %g1
	add  %g1, 1, %g2
	ld  [%fp+68], %g1
	st  %g2, [%g1]
	restore
	retl
	nop
	.size	toto, .-toto
# ----------------------
	.align 4
	.align 4
	.globl	tata
	.type	tata, #function
	.proc	020
tata:
	save  %sp, -96, %sp
	st  %i0, [%fp+68]
	ld  [%fp+68], %g1
	ld  [%g1], %g1
	add  %g1, -1, %g2
	ld  [%fp+68], %g1
	st  %g2, [%g1]
	restore
	retl
	nop
	.size	tata, .-tata
# ----------------------
	.align 4
	.align 4
	.globl	main
	.type	main, #function
	.proc	04
main:
	save  %sp, -112, %sp
	clr  [%fp+-4]
	sethi  %hi(toto), %g1
	bset   %lo(toto), %g1
	st  %g1, [%fp+-12]
	sethi  %hi(tata), %g1
	bset   %lo(tata), %g1
	st  %g1, [%fp+-8]
	ld  [%fp+-12], %g1
	add  %fp, -4, %g2
	mov  %g2, %o0
	call  %g1, 0
	nop
	add  %fp, -4, %g1
	mov  %g1, %o0
	call  tata, 0
	nop
	ld  [%fp+-4], %g1
	mov  %g1, %i0
	restore
	retl
	nop
	.size	main, .-main
# ----------------------
	.ident	"GCC: (GNU) 4.4.2"
