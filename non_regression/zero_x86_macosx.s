	.section	__TEXT,__text,regular,pure_instructions
	.globl	_main
	.align	4, 0x90
_main:                                  ## @main
## BB#0:
	pushl	%ebp
	movl	%esp, %ebp
	pushl	%ebx
	pushl	%eax
	calll	L0$pb
L0$pb:
	popl	%eax
	movl	$0, -8(%ebp)
	movl	_F-L0$pb(%eax), %ecx
	movl	%ecx, _E-L0$pb(%eax)
	movw	%cx, %dx
	movw	%dx, _D-L0$pb(%eax)
	movw	%dx, _C-L0$pb(%eax)
	movb	%dl, %bl
	movb	%bl, _B-L0$pb(%eax)
	movb	%bl, _A-L0$pb(%eax)
	movsbl	%bl, %eax
	addl	$4, %esp
	popl	%ebx
	popl	%ebp
	retl

	.section	__DATA,__data
	.globl	_A                      ## @A
_A:
	.byte	2                       ## 0x2

	.globl	_B                      ## @B
.zerofill __DATA,__common,_B,1,0
	.globl	_C                      ## @C
	.align	1
_C:
	.short	3                       ## 0x3

	.globl	_D                      ## @D
.zerofill __DATA,__common,_D,2,1
	.globl	_E                      ## @E
	.align	2
_E:
	.long	5                       ## 0x5

	.globl	_F                      ## @F
.zerofill __DATA,__common,_F,4,2

.subsections_via_symbols
