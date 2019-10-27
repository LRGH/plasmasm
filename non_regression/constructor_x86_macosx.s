	.section	__TEXT,__text,regular,pure_instructions
	.globl	_c1
	.align	4, 0x90
_c1:                                    ## @c1
## BB#0:
	pushl	%ebp
	movl	%esp, %ebp
	popl	%ebp
	retl

	.globl	_main
	.align	4, 0x90
_main:                                  ## @main
## BB#0:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$8, %esp
	movl	$0, -4(%ebp)
	calll	_c1
	movl	$0, %eax
	addl	$8, %esp
	popl	%ebp
	retl

	.section	__DATA,__mod_init_func,mod_init_funcs
	.align	2
	.long	_c1

.subsections_via_symbols
