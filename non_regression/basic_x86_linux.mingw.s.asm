	.file	"a00.c"
	.intel_syntax
	.text
	.def	_main;	.scl	2;	.type	32;	.endef
_main:
	push      ebp
	mov       ebp, esp
	sub       esp, 8
	and       esp, -16
	mov       eax, 0
	add       eax, 15
	add       eax, 15
	shr       eax, 4
	sal       eax, 4
	mov       DWORD PTR [ebp-8], eax
	mov       eax, DWORD PTR [ebp-8]
	call      __alloca
	call      ___main
	mov       DWORD PTR [ebp-4], 0
	lea       eax, [ebp-4]
	add       DWORD PTR [eax], 66
	mov       eax, DWORD PTR [ebp-4]
	leave     
	ret       
# ----------------------
	.def	___main;	.scl	2;	.type	32;	.endef
