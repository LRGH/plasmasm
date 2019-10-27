	.section	__TEXT,__StaticInit,regular,no_toc+strip_static_syms+no_dead_strip+live_support+self_modifying_code+debug
	.macosx_version_min 10, 11
	.globl	_main
	.align	4, 0x90
_main:                                  ## @main
## BB#0:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$8, %esp
	movl	$0, -4(%ebp)
	movl	$0, -8(%ebp)
	movl	-8(%ebp), %eax
	addl	$66, %eax
	movl	%eax, -8(%ebp)
	movl	-8(%ebp), %eax
	addl	$8, %esp
	popl	%ebp
	retl


.subsections_via_symbols
