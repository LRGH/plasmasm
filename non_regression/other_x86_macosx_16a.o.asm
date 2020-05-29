	.macosx_version_min 10, 11
	.section       __TEXT,__text,regular,pure_instructions
	.align 4, 0x90
	.globl	_main
_main:
	testl     %edx, %ebx
	testl     4(%ebp), %edx
	testl     4(%ebp), %edx
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
