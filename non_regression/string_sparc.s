	.file	"a07.c"
	.global a
	.section	".data"
	.align 4
	.type	a, #object
	.size	a, 4
a:
	.long	12
	.global s
	.section	".rodata"
	.align 8
.LLC0:
	.asciz	"hello\n"
	.section	".data"
	.align 4
	.type	s, #object
	.size	s, 4
s:
	.long	.LLC0
	.section	".rodata"
	.align 8
.LLC1:
	.asciz	"test"
	.section	".text"
	.align 4
	.global main
	.type	main, #function
	.proc	04
main:
	save	%sp, -112, %sp
	sethi	%hi(.LLC1), %g1
	or	%g1, %lo(.LLC1), %g1
	st	%g1, [%fp-12]
	sethi	%hi(a), %g1
	or	%g1, %lo(a), %g1
	ld	[%g1], %g1
	add	%g1, 13, %g1
	st	%g1, [%fp-8]
	ld	[%fp-12], %g1
	st	%g1, [%fp-4]
	ld	[%fp-8], %g1
	add	%g1, 1, %g1
	st	%g1, [%fp-8]
	sethi	%hi(s), %g1
	or	%g1, %lo(s), %g1
	ld	[%g1], %g1
	st	%g1, [%fp-4]
	ld	[%fp-8], %g1
	mov	%g1, %i0
	restore
	jmp	%o7+8
	 nop
	.size	main, .-main
	.ident	"GCC: (GNU) 4.4.2"
