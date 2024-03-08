	.file	"a02.c"
	.text
	.globl	toto
	.type	toto, #function
toto:
	save    %sp, -96, %sp
	st      %i0, [%fp+68]
	ld      [%fp+68], %g1
	ld      [%g0+%g1]0, %g1
	add     %g1, 1, %g2
	ld      [%fp+68], %g1
	st      %g2, [%g0+%g1]0
	restore
	retl
	nop     
	.size	toto, .-toto
# ----------------------
	.globl	tata
	.type	tata, #function
tata:
	save    %sp, -96, %sp
	st      %i0, [%fp+68]
	ld      [%fp+68], %g1
	ld      [%g0+%g1]0, %g1
	add     %g1, -1, %g2
	ld      [%fp+68], %g1
	st      %g2, [%g0+%g1]0
	restore
	retl
	nop     
	.size	tata, .-tata
# ----------------------
	.globl	main
	.type	main, #function
main:
	save    %sp, -112, %sp
	clr     [%fp+-4]
	sethi   %hi(toto), %g1
	bset    %lo(toto), %g1
	st      %g1, [%fp+-12]
	sethi   %hi(tata), %g1
	bset    %lo(tata), %g1
	st      %g1, [%fp+-8]
	ld      [%fp+-12], %g1
	add     %fp, -4, %g2
	mov     %g2, %o0
	call    %g0+%g1, %o7
	sethi   0, %g1
.L00000084:
	bset    0x0, %g1
	mov     %g1, %i0
	restore
	retl
	nop     
	.size	main, .-main
# ----------------------
	.ident	"GCC: (GNU) 4.4.2"
