	.file	"a03.c"
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
	st      %i0, [%fp+68]
	st      %i1, [%fp+72]
	clr     [%fp+-4]
	sethi   %hi(toto), %g1
	bset    %lo(toto), %g1
	st      %g1, [%fp+-12]
	sethi   %hi(tata), %g1
	bset    %lo(tata), %g1
	st      %g1, [%fp+-8]
	ld      [%fp+68], %g1
	inc     -1, %g1
	sll     %g1, 2, %g1
	add     %fp, %g1, %g1
	ld      [%g1+-12], %g1
	add     %fp, -4, %g2
	mov     %g2, %o0
	call    %g0+%g1, %o7
	nop     
.L0000009C:
	ld      [%fp+-4], %g1
	mov     %g1, %i0
	restore
	retl
	nop     
	.size	main, .-main
# ----------------------
	.ident	"GCC: (GNU) 4.4.2"
