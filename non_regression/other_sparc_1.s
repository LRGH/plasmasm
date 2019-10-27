	.file	"a02ter.c"
	.section	".text"
	.align 4
	.global toto
	.type	toto, #function
	.proc	020
toto:
	save	%sp, -96, %sp
	st	%i0, [%fp+68]
	ld	[%fp+68], %g1
	ld	[%g1], %g1
	add	%g1, 1, %g2
	ld	[%fp+68], %g1
	st	%g2, [%g1]
	restore
	jmp	%o7+8
	 nop
	.size	toto, .-toto
	.align 4
	.global tata
	.type	tata, #function
	.proc	020
tata:
	save	%sp, -96, %sp
	st	%i0, [%fp+68]
	ld	[%fp+68], %g1
	ld	[%g1], %g1
	add	%g1, -1, %g2
	ld	[%fp+68], %g1
	st	%g2, [%g1]
	restore
	jmp	%o7+8
	 nop
	.size	tata, .-tata
	.global t
	.section	".data"
	.align 4
	.type	t, #object
	.size	t, 8
t:
	.long	toto
	.long	tata
	.section	".text"
	.align 4
	.global main
	.type	main, #function
	.proc	04
main:
	save	%sp, -104, %sp
	st	%g0, [%fp-4]
	sethi	%hi(t), %g1
	or	%g1, %lo(t), %g1
	ld	[%g1], %g1
	add	%fp, -4, %g2
	mov	%g2, %o0
	call	%g1, 0
	 nop
	ld	[%fp-4], %g1
	mov	%g1, %i0
	restore
	jmp	%o7+8
	 nop
	.size	main, .-main
	.ident	"GCC: (GNU) 4.4.2"
