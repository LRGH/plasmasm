	.file	"l2.c"
	.common	b,4,4
# ----------------------
	.section       ".data"
	.align 4
	.globl	c
	.type	c, #object
c:
	.long	1
	.size	c, 4
# ----------------------
	.common	v,4,4
# ----------------------
	.common	O,36,4
# ----------------------
	.common	j,4,4
# ----------------------
	.align 4
	.globl	s
	.type	s, #object
s:
	.long	16
	.size	s, 4
# ----------------------
	.common	a,4,4
# ----------------------
	.common	n,4,4
# ----------------------
	.common	Z,12,4
# ----------------------
	.common	L,99,8
# ----------------------
	.align 4
	.globl	S
	.type	S, #object
S:
	.long	Z
	.size	S, 4
# ----------------------
	.common	M,999,8
# ----------------------
	.common	m,64,8
# ----------------------
	.common	co,1,1
# ----------------------
	.common	ol,1,1
# ----------------------
	.section       ".rodata"
	.align 8
.LLC0:
	.asciz	"XXX"
	.align 8
.LLC1:
	.asciz	"Y\n : ! ,.?>"
# ----------------------
	.section       ".data"
	.align 4
	.globl	p
	.type	p, #object
p:
	.long	.LLC0+1
	.size	p, 4
# ----------------------
	.section       ".text"
	.align 4
	.align 4
	.globl	y
	.type	y, #function
	.proc	04
y:
	save    %sp, -96, %sp
	st      %i0, [%fp+68]
	sethi   %hi(_impure_ptr), %g1
	bset    %lo(_impure_ptr), %g1
	ld      [%g1], %g1
	ld      [%g1+8], %g1
	ld      [%g1+8], %g2
	inc     -1, %g2
	st      %g2, [%g1+8]
	ld      [%g1+8], %g1
	cmp     %g1, 0, %g0
	bge     .LL2
	nop
	sethi   %hi(_impure_ptr), %g1
	bset    %lo(_impure_ptr), %g1
	ld      [%g1], %g1
	ld      [%g1+8], %g1
	ld      [%g1+8], %g2
	sethi   %hi(_impure_ptr), %g1
	bset    %lo(_impure_ptr), %g1
	ld      [%g1], %g1
	ld      [%g1+8], %g1
	ld      [%g1+24], %g1
	cmp     %g2, %g1, %g0
	bl      .LL3
	nop
	sethi   %hi(_impure_ptr), %g1
	bset    %lo(_impure_ptr), %g1
	ld      [%g1], %g1
	ld      [%g1+8], %g1
	ld      [%g1], %g1
	ld      [%fp+68], %g2
	stb     %g2, [%g1]
	sethi   %hi(_impure_ptr), %g1
	bset    %lo(_impure_ptr), %g1
	ld      [%g1], %g1
	ld      [%g1+8], %g1
	ld      [%g1], %g1
	ldub    [%g1], %g1
	and     %g1, 0xff, %g1
	cmp     %g1, 10, %g0
	be      .LL4
	nop
	sethi   %hi(_impure_ptr), %g1
	bset    %lo(_impure_ptr), %g1
	ld      [%g1], %g1
	ld      [%g1+8], %g2
	ld      [%g2], %g3
	ldub    [%g3], %g1
	and     %g1, 0xff, %g1
	inc     %g3, %g3
	st      %g3, [%g2]
	ba      .LL5
	nop
.LL4:
	sethi   %hi(_impure_ptr), %g1
	bset    %lo(_impure_ptr), %g1
	ld      [%g1], %g1
	ld      [%g1+8], %g1
	mov     0xa, %o0
	mov     %g1, %o1
	call    __swbuf, 0
	nop
	mov     %o0, %g1
.LL5:
	ba      .LL6
	nop
.LL3:
	sethi   %hi(_impure_ptr), %g1
	bset    %lo(_impure_ptr), %g1
	ld      [%g1], %g1
	ld      [%g1+8], %g1
	ld      [%fp+68], %o0
	mov     %g1, %o1
	call    __swbuf, 0
	nop
	mov     %o0, %g1
.LL6:
	ba      .LL7
	nop
.LL2:
	sethi   %hi(_impure_ptr), %g1
	bset    %lo(_impure_ptr), %g1
	ld      [%g1], %g1
	ld      [%g1+8], %g1
	ld      [%g1], %g1
	ld      [%fp+68], %g2
	stb     %g2, [%g1]
	sethi   %hi(_impure_ptr), %g1
	bset    %lo(_impure_ptr), %g1
	ld      [%g1], %g1
	ld      [%g1+8], %g2
	ld      [%g2], %g3
	ldub    [%g3], %g1
	and     %g1, 0xff, %g1
	inc     %g3, %g3
	st      %g3, [%g2]
.LL7:
	mov     %g1, %i0
	restore
	retl
	nop
	.size	y, .-y
# ----------------------
	.align 4
	.align 4
	.globl	r
	.type	r, #function
	.proc	04
r:
	save    %sp, -96, %sp
	st      %i0, [%fp+68]
	sethi   %hi(p), %g1
	bset    %lo(p), %g1
	ld      [%g1], %g1
	ldub    [%g1], %g1
	sll     %g1, 24, %g1
	sra     %g1, 24, %g1
	sethi   %hi(.LLC1), %g2
	bset    %lo(.LLC1), %g2
	ldub    [%g1+%g2], %g1
	sll     %g1, 24, %g1
	sra     %g1, 24, %g1
	mov     %g1, %o0
	call    y, 0
	nop
	mov     %o0, %g1
	mov     %g1, %i0
	restore
	retl
	nop
	.size	r, .-r
# ----------------------
	.align 4
	.align 4
	.globl	X
	.type	X, #function
	.proc	04
X:
	save    %sp, -96, %sp
	st      %i0, [%fp+68]
	mov     0x0, %o0
	call    time, 0
	nop
	mov     %o0, %g3
	sethi   %hi(b), %g1
	bset    %lo(b), %g1
	ld      [%g1], %g2
	mov     0x1, %g1
	cmp     %g3, %g2, %g0
	bg      .LL12
	nop
	mov     0x0, %g1
.LL12:
	mov     %g1, %i0
	restore
	retl
	nop
	.size	X, .-X
# ----------------------
	.align 4
	.align 4
	.globl	main
	.type	main, #function
	.proc	04
main:
	save    %sp, -96, %sp
	mov     0x0, %g1
	mov     %g1, %i0
	restore
	retl
	nop
	.size	main, .-main
# ----------------------
	.ident	"GCC: (GNU) 4.4.2"
