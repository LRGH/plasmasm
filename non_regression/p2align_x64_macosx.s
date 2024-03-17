	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 10, 14	sdk_version 10, 14
	.globl	_main
	.p2align	4, 0x90
_main:
	.cfi_startproc
	pushq	%rbp
	.p2align	4, 0x90
	popq	%rbp
	retq
	.cfi_endproc

.subsections_via_symbols
