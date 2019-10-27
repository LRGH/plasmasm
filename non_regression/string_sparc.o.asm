	.file	"a07.c"
	.data
	.globl	a
	.type	a, #object
a:
	.long	12
	.size	a, 4
# ----------------------
	.globl	s
	.type	s, #object
s:
	.long	.LC00000000
	.size	s, 4
# ----------------------
	.section       .rodata
.LC00000000:
	.string	"hello\n"
# ----------------------
.LC00000007:
	.byte	0
	.align 8
.LC00000008:
	.string	"test"
# ----------------------
.LC0000000D:
	.zero	3
# ----------------------
	.text
	.globl	main
	.type	main, #function
main:
	save  %sp, -112, %sp
	sethi  %hi(.LC00000008), %g1
	bset   %lo(.LC00000008), %g1
	st  %g1, [%fp+-12]
	sethi  %hi(a), %g1
	bset   %lo(a), %g1
	ld  [%g0+%g1]0, %g1
	inc  0xd, %g1
	st  %g1, [%fp+-8]
	ld  [%fp+-12], %g1
	st  %g1, [%fp+-4]
	ld  [%fp+-8], %g1
	inc  %g1
	st  %g1, [%fp+-8]
	sethi  %hi(s), %g1
	bset   %lo(s), %g1
	ld  [%g0+%g1]0, %g1
	st  %g1, [%fp+-4]
	ld  [%fp+-8], %g1
	mov  %g1, %i0
	restore
	retl
	nop  
	.size	main, .-main
# ----------------------
	.ident	"GCC: (GNU) 4.4.2"
