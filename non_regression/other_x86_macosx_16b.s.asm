	.build_version macos, 10, 14	sdk_version 10, 14
	.section       __TEXT,__text,regular,pure_instructions
	.globl	_main
_main:
	testl     %edx, %ebx
	testl     %edx, 4(%ebp)
	testl     %edx, 4(%ebp)
	testb     %dh, %dl
	testb     $32, 1(%edx,%ecx,2)
	testl     $32896, %eax
	xchgl     %edx, %ebx
	xchgl     %edx, 4(%ebp)
	xchgl     %edx, 4(%ebp)
	imull     $31, %eax, %eax
	imull     $31, %eax, %eax
	ret       
# ----------------------

.subsections_via_symbols
