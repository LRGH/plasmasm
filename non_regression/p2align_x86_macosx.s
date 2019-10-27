	.section	__TEXT,__text,regular,pure_instructions
	.macosx_version_min 10, 11
	.globl	_toto
	.align	4, 0x90
_toto:                                  ## @toto
## BB#0:
	pushl	%ebp
	movl	%esp, %ebp
	movl	8(%ebp), %eax
	incl	(%eax)
	popl	%ebp
	retl

	.globl	_tata
	.align	4, 0x90
_tata:                                  ## @tata
## BB#0:
	pushl	%ebp
	movl	%esp, %ebp
	movl	8(%ebp), %eax
	decl	(%eax)
	popl	%ebp
	retl

	.globl	_main
	.align	4, 0x90
_main:                                  ## @main
## BB#0:
	pushl	%ebp
	movl	%esp, %ebp
	movl	$1, %eax
	popl	%ebp
	retl


.subsections_via_symbols
