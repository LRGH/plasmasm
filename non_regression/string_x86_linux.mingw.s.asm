	.file	"a07.c"
	.intel_syntax
	.data
	.align 4
	.def	_a;	.scl	2;	.endef
_a:
	.long	12
# ----------------------
	.section       .rdata,"dr"
LC0:
	.ascii	"hello\n\000"
LC1:
	.ascii	"test\000"
# ----------------------
	.data
	.align 4
	.def	_s;	.scl	2;	.endef
_s:
	.long	LC0
# ----------------------
	.text
	.def	_main;	.scl	2;	.type	32;	.endef
_main:
	push      ebp
	mov       ebp, esp
	sub       esp, 24
	and       esp, -16
	mov       eax, 0
	add       eax, 15
	add       eax, 15
	shr       eax, 4
	sal       eax, 4
	mov       DWORD PTR [ebp-16], eax
	mov       eax, DWORD PTR [ebp-16]
	call      __alloca
	call      ___main
	mov       DWORD PTR [ebp-4], OFFSET FLAT:LC1
	mov       eax, DWORD PTR _a
	add       eax, 13
	mov       DWORD PTR [ebp-8], eax
	mov       eax, DWORD PTR [ebp-4]
	mov       DWORD PTR [ebp-12], eax
	lea       eax, [ebp-8]
	inc       DWORD PTR [eax]
	mov       eax, DWORD PTR _s
	mov       DWORD PTR [ebp-12], eax
	mov       eax, DWORD PTR [ebp-8]
	leave     
	ret       
# ----------------------
	.def	___main;	.scl	2;	.type	32;	.endef
