	.macosx_version_min 10, 11
	.section       __TEXT,__text,regular,pure_instructions
	.align 4, 0x90
	.globl	_main
_main:
	pushq     %rbp
	movq      %rsp, %rbp
	movl      $0, -4(%rbp)
	movl      $0, -8(%rbp)
	movl      -8(%rbp), %eax
	addl      $66, %eax
	movl      %eax, -8(%rbp)
	movl      -8(%rbp), %eax
	popq      %rbp
	ret       
# ----------------------

.subsections_via_symbols
