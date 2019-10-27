	.file	"l2.c"
	.common	b,4,4
	.global c
	.section	".data"
	.align 4
	.type	c, #object
	.size	c, 4
c:
	.long	1
	.common	v,4,4
	.common	O,36,4
	.common	j,4,4
	.global s
	.align 4
	.type	s, #object
	.size	s, 4
s:
	.long	16
	.common	a,4,4
	.common	n,4,4
	.common	Z,12,4
	.common	L,99,8
	.global S
	.align 4
	.type	S, #object
	.size	S, 4
S:
	.long	Z
	.common	M,999,8
	.common	m,64,8
	.common	co,1,1
	.common	ol,1,1
	.global p
	.section	".rodata"
	.align 8
.LLC0:
	.asciz	"XXX"
	.section	".data"
	.align 4
	.type	p, #object
	.size	p, 4
p:
	.long	.LLC0+1
	.section	".text"
	.align 4
	.global y
	.type	y, #function
	.proc	04
y:
	save	%sp, -96, %sp
	st	%i0, [%fp+68]
	sethi	%hi(_impure_ptr), %g1
	or	%g1, %lo(_impure_ptr), %g1
	ld	[%g1], %g1
	ld	[%g1+8], %g1
	ld	[%g1+8], %g2
	add	%g2, -1, %g2
	st	%g2, [%g1+8]
	ld	[%g1+8], %g1
	cmp	%g1, 0
	bge	.LL2
	 nop
	sethi	%hi(_impure_ptr), %g1
	or	%g1, %lo(_impure_ptr), %g1
	ld	[%g1], %g1
	ld	[%g1+8], %g1
	ld	[%g1+8], %g2
	sethi	%hi(_impure_ptr), %g1
	or	%g1, %lo(_impure_ptr), %g1
	ld	[%g1], %g1
	ld	[%g1+8], %g1
	ld	[%g1+24], %g1
	cmp	%g2, %g1
	bl	.LL3
	 nop
	sethi	%hi(_impure_ptr), %g1
	or	%g1, %lo(_impure_ptr), %g1
	ld	[%g1], %g1
	ld	[%g1+8], %g1
	ld	[%g1], %g1
	ld	[%fp+68], %g2
	stb	%g2, [%g1]
	sethi	%hi(_impure_ptr), %g1
	or	%g1, %lo(_impure_ptr), %g1
	ld	[%g1], %g1
	ld	[%g1+8], %g1
	ld	[%g1], %g1
	ldub	[%g1], %g1
	and	%g1, 0xff, %g1
	cmp	%g1, 10
	be	.LL4
	 nop
	sethi	%hi(_impure_ptr), %g1
	or	%g1, %lo(_impure_ptr), %g1
	ld	[%g1], %g1
	ld	[%g1+8], %g2
	ld	[%g2], %g3
	ldub	[%g3], %g1
	and	%g1, 0xff, %g1
	add	%g3, 1, %g3
	st	%g3, [%g2]
	b	.LL5
	 nop
.LL4:
	sethi	%hi(_impure_ptr), %g1
	or	%g1, %lo(_impure_ptr), %g1
	ld	[%g1], %g1
	ld	[%g1+8], %g1
	mov	10, %o0
	mov	%g1, %o1
	call	__swbuf, 0
	 nop
	mov	%o0, %g1
.LL5:
	b	.LL6
	 nop
.LL3:
	sethi	%hi(_impure_ptr), %g1
	or	%g1, %lo(_impure_ptr), %g1
	ld	[%g1], %g1
	ld	[%g1+8], %g1
	ld	[%fp+68], %o0
	mov	%g1, %o1
	call	__swbuf, 0
	 nop
	mov	%o0, %g1
.LL6:
	b	.LL7
	 nop
.LL2:
	sethi	%hi(_impure_ptr), %g1
	or	%g1, %lo(_impure_ptr), %g1
	ld	[%g1], %g1
	ld	[%g1+8], %g1
	ld	[%g1], %g1
	ld	[%fp+68], %g2
	stb	%g2, [%g1]
	sethi	%hi(_impure_ptr), %g1
	or	%g1, %lo(_impure_ptr), %g1
	ld	[%g1], %g1
	ld	[%g1+8], %g2
	ld	[%g2], %g3
	ldub	[%g3], %g1
	and	%g1, 0xff, %g1
	add	%g3, 1, %g3
	st	%g3, [%g2]
.LL7:
	mov	%g1, %i0
	restore
	jmp	%o7+8
	 nop
	.size	y, .-y
	.section	".rodata"
	.align 8
.LLC1:
	.asciz	"Y\n : ! ,.?>"
	.section	".text"
	.align 4
	.global r
	.type	r, #function
	.proc	04
r:
	save	%sp, -96, %sp
	st	%i0, [%fp+68]
	sethi	%hi(p), %g1
	or	%g1, %lo(p), %g1
	ld	[%g1], %g1
	ldub	[%g1], %g1
	sll	%g1, 24, %g1
	sra	%g1, 24, %g1
	sethi	%hi(.LLC1), %g2
	or	%g2, %lo(.LLC1), %g2
	ldub	[%g2+%g1], %g1
	sll	%g1, 24, %g1
	sra	%g1, 24, %g1
	mov	%g1, %o0
	call	y, 0
	 nop
	mov	%o0, %g1
	mov	%g1, %i0
	restore
	jmp	%o7+8
	 nop
	.size	r, .-r
	.align 4
	.global X
	.type	X, #function
	.proc	04
X:
	save	%sp, -96, %sp
	st	%i0, [%fp+68]
	mov	0, %o0
	call	time, 0
	 nop
	mov	%o0, %g3
	sethi	%hi(b), %g1
	or	%g1, %lo(b), %g1
	ld	[%g1], %g2
	mov	1, %g1
	cmp	%g3, %g2
	bg	.LL12
	 nop
	mov	0, %g1
.LL12:
	mov	%g1, %i0
	restore
	jmp	%o7+8
	 nop
	.size	X, .-X
	.align 4
	.global main
	.type	main, #function
	.proc	04
main:
	save	%sp, -96, %sp
	mov	0, %g1
	mov	%g1, %i0
	restore
	jmp	%o7+8
	 nop
	.size	main, .-main
	.ident	"GCC: (GNU) 4.4.2"
