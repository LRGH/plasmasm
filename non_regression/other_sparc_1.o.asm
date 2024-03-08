	.file	"a02ter.c"
	.data
	.globl	t
	.type	t, #object
t:
	.long	toto
	.long	tata
	.size	t, 8
# ----------------------
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
	save    %sp, -104, %sp
	clr     [%fp+-4]
	sethi   %hi(t), %g1
	bset    %lo(t), %g1
	ld      [%g0+%g1]0, %g1
	add     %fp, -4, %g2
	mov     %g2, %o0
	call    %g0+%g1, %o7
	nop     
.L00000074:
	ld      [%fp+-4], %g1
	mov     %g1, %i0
	restore
	retl
	nop     
	.size	main, .-main
# ----------------------
	.ident	"GCC: (GNU) 4.4.2"
