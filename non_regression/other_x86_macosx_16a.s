	.section	__TEXT,__text,regular,pure_instructions
	.macosx_version_min 10, 11
	.globl	_main
_main:
	testl %edx, %ebx
	testl %edx, 4(%ebp)
	testl 4(%ebp), %edx
	testb %dh, %dl
	testb $32, 1(%edx,%ecx,2)
	testl $32896, %eax
	xchgl %edx, %ebx
	xchgl %edx, 4(%ebp)
	xchgl 4(%ebp), %edx
	imull	 $31, %eax
	imull	 $31, %eax, %eax
	ret
