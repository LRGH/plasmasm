	.section	__TEXT,__text,regular,pure_instructions
	.macosx_version_min 10, 12
	.globl	_local_labels
	.align	4, 0x90
_local_labels:                          ## @md5_init_ctx
## BB#0:
	pushl	%ebp
	movl	%esp, %ebp
1:
	movl	8(%ebp), %eax
	jmp	1b
	movl	$1, 4(%eax)
	movl	$2, 8(%eax)
	movl	$3, 12(%eax)
	jmp	1f
	jmp	1b
	movl	$4, 20(%eax)
1:
	movl	$5, 16(%eax)
	movl	$6, 24(%eax)
	popl	%ebp
	retl

.subsections_via_symbols
