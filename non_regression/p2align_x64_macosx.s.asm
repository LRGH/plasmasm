	.build_version macos, 10, 14	sdk_version 10, 14
	.section       __TEXT,__text,regular,pure_instructions
	.p2align 4, 0x90
# ----------------------
	.globl	_main
_main:
	pushq     %rbp
	.p2align 4, 0x90
	popq      %rbp
	ret       
# ----------------------

.subsections_via_symbols
