	.macosx_version_min 10, 11
	.section       __TEXT,__text,regular,pure_instructions
	.align 4, 0x90
	.globl	_c1
_c1:
	pushq     %rbp
	movq      %rsp, %rbp
	popq      %rbp
	ret       
# ----------------------
	.align 4, 0x90
	.globl	_main
_main:
	pushq     %rbp
	movq      %rsp, %rbp
	subq      $16, %rsp
	movl      $0, -4(%rbp)
	call      _c1
L00000024:
	xorl      %eax, %eax
	addq      $16, %rsp
	popq      %rbp
	ret       
# ----------------------
	.section       __DATA,__mod_init_func,mod_init_funcs
	.align 3
.LD__mod_init_func:
	.quad	_c1
# ----------------------

.subsections_via_symbols
