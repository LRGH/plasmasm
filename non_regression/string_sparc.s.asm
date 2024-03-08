	.file	"a07.c"
	.section       ".data"
	.align 4
	.globl	a
	.type	a, #object
a:
	.long	12
	.size	a, 4
# ----------------------
	.section       ".rodata"
	.align 8
.LLC0:
	.asciz	"hello\n"
	.align 8
.LLC1:
	.asciz	"test"
# ----------------------
	.section       ".data"
	.align 4
	.globl	s
	.type	s, #object
s:
	.long	.LLC0
	.size	s, 4
# ----------------------
	.section       ".text"
	.align 4
	.align 4
	.globl	main
	.type	main, #function
	.proc	04
main:
	save    %sp, -112, %sp
	sethi   %hi(.LLC1), %g1
	bset    %lo(.LLC1), %g1
	st      %g1, [%fp+-12]
	sethi   %hi(a), %g1
	bset    %lo(a), %g1
	ld      [%g1], %g1
	inc     13, %g1
	st      %g1, [%fp+-8]
	ld      [%fp+-12], %g1
	st      %g1, [%fp+-4]
	ld      [%fp+-8], %g1
	inc     %g1, %g1
	st      %g1, [%fp+-8]
	sethi   %hi(s), %g1
	bset    %lo(s), %g1
	ld      [%g1], %g1
	st      %g1, [%fp+-4]
	ld      [%fp+-8], %g1
	mov     %g1, %i0
	restore
	retl
	nop
	.size	main, .-main
# ----------------------
	.ident	"GCC: (GNU) 4.4.2"
