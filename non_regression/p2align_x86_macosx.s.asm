	.macosx_version_min 10, 11
	.section       __TEXT,__text,regular,pure_instructions
	.align 4, 0x90
	.globl	_toto
_toto:
	pushl     %ebp
	movl      %esp, %ebp
	movl      8(%ebp), %eax
	incl      (%eax)
	popl      %ebp
	ret       
# ----------------------
	.align 4, 0x90
	.globl	_tata
_tata:
	pushl     %ebp
	movl      %esp, %ebp
	movl      8(%ebp), %eax
	decl      (%eax)
	popl      %ebp
	ret       
# ----------------------
	.align 4, 0x90
	.globl	_main
_main:
	pushl     %ebp
	movl      %esp, %ebp
	movl      $1, %eax
	popl      %ebp
	ret       
# ----------------------

.subsections_via_symbols
