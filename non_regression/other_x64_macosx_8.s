	.section	__TEXT,__text,regular,pure_instructions
	.globl	__Z4BLAHv
	.align	4, 0x90
__Z4BLAHv:                              ## @_Z4BLAHv
## BB#0:
	pushl	%ebp
	movl	%esp, %ebp
	calll	L0$pb
L0$pb:
	popl	%eax
	movl	_a-L0$pb(%eax), %eax
	popl	%ebp
	retl

	.globl	_main
	.align	4, 0x90
_main:                                  ## @main
	.cfi_startproc
## BB#0:
	pushl	%ebp
Ltmp2:
	.cfi_def_cfa_offset 8
Ltmp3:
	.cfi_offset %ebp, -8
	movl	%esp, %ebp
Ltmp4:
	.cfi_def_cfa_register %ebp
	subl	$8, %esp
	movl	$0, -4(%ebp)
	calll	__Z4TESTv
	calll	__Z4BLAHv
	movl	%eax, (%esp)
	calll	__Z4FUNCi
	addl	$8, %esp
	popl	%ebp
	retl
	.cfi_endproc

	.section	__TEXT,__textcoal_nt,coalesced,pure_instructions
	.globl	__Z4TESTv
	.weak_def_can_be_hidden	__Z4TESTv
	.align	4, 0x90
__Z4TESTv:                              ## @_Z4TESTv
## BB#0:
	pushl	%ebp
	movl	%esp, %ebp
	calll	L2$pb
L2$pb:
	popl	%eax
	movl	_a-L2$pb(%eax), %ecx
	addl	$1, %ecx
	movl	%ecx, _a-L2$pb(%eax)
	popl	%ebp
	retl

	.globl	__Z4FUNCi
	.weak_def_can_be_hidden	__Z4FUNCi
	.align	4, 0x90
__Z4FUNCi:                              ## @_Z4FUNCi
## BB#0:
	pushl	%ebp
	movl	%esp, %ebp
	pushl	%eax
	movl	8(%ebp), %eax
	movl	%eax, -4(%ebp)
	movl	-4(%ebp), %eax
	movl	%eax, %ecx
	addl	$1, %ecx
	movl	%ecx, -4(%ebp)
	addl	$4, %esp
	popl	%ebp
	retl

	.globl	_a                      ## @a
.zerofill __DATA,__common,_a,4,2

.subsections_via_symbols
