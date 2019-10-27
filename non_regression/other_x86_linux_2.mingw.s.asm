	.file	"a03bis.c"
	.intel_syntax
	.text
	.def	_toto;	.scl	2;	.type	32;	.endef
_toto:
	push      ebp
	mov       ebp, esp
	mov       eax, DWORD PTR [ebp+8]
	inc       DWORD PTR [eax]
	pop       ebp
	ret       
# ----------------------
	.def	_tata;	.scl	2;	.type	32;	.endef
_tata:
	push      ebp
	mov       ebp, esp
	mov       eax, DWORD PTR [ebp+8]
	dec       DWORD PTR [eax]
	pop       ebp
	ret       
# ----------------------
	.data
	.align 4
	.def	_t;	.scl	2;	.endef
_t:
	.long	_toto
	.long	_tata
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
	mov       DWORD PTR [ebp-8], eax
	mov       eax, DWORD PTR [ebp-8]
	call      __alloca
	call      ___main
	mov       DWORD PTR [ebp-4], 0
	mov       edx, DWORD PTR [ebp+8]
	lea       eax, [ebp-4]
	mov       DWORD PTR [esp], eax
	mov       eax, DWORD PTR _t[-4+edx*4]
	call      eax
	mov       eax, DWORD PTR [ebp-4]
	leave     
	ret       
# ----------------------
	.def	___main;	.scl	2;	.type	32;	.endef
