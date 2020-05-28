	.macosx_version_min 10, 11
	.section       __TEXT,__text,regular,pure_instructions
	.align 4, 0x90
	.globl	_c1
_c1:
	pushq     %rbp
Ltmp0:
Ltmp1:
	movq      %rsp, %rbp
Ltmp2:
	popq      %rbp
	ret       
# ----------------------
	.align 4, 0x90
	.globl	_main
_main:
	pushq     %rbp
Ltmp3:
Ltmp4:
	movq      %rsp, %rbp
Ltmp5:
	subq      $16, %rsp
	movl      $0, -4(%rbp)
	call      _c1
	xorl      %eax, %eax
	addq      $16, %rsp
	popq      %rbp
	ret       
# ----------------------
	.section       __DATA,__mod_init_func,mod_init_funcs
	.quad	_c1
# ----------------------

.subsections_via_symbols
