	.file	"a18.c"
	.intel_syntax
	.text
.globl _eax
	.def	_eax;	.scl	2;	.type	32;	.endef
_eax:
	push	ebp
	mov	ebp, esp
	pop	ebp
	ret
.globl _ebp
	.def	_ebp;	.scl	2;	.type	32;	.endef
_ebp:
	push	ebp
	mov	ebp, esp
	pop	ebp
	ret
.globl _ezx
	.def	_ezx;	.scl	2;	.type	32;	.endef
_ezx:
	push	ebp
	mov	ebp, esp
	pop	ebp
	ret
	.def	___main;	.scl	2;	.type	32;	.endef
.globl _main
	.def	_main;	.scl	2;	.type	32;	.endef
_main:
	push	ebp
	mov	ebp, esp
	sub	esp, 40
	and	esp, -16
	mov	eax, 0
	add	eax, 15
	add	eax, 15
	shr	eax, 4
	sal	eax, 4
	mov	DWORD PTR [ebp-28], eax
	mov	eax, DWORD PTR [ebp-28]
	call	__alloca
	call	___main
	mov	DWORD PTR [ebp-24], OFFSET FLAT:_eax
	mov	DWORD PTR [ebp-20], OFFSET FLAT:_ebp
	mov	DWORD PTR [ebp-16], OFFSET FLAT:_ezx
	mov	eax, DWORD PTR [ebp+8]
	mov	eax, DWORD PTR [ebp-24+eax*4]
	call	eax
	call	_eax
	leave
	ret
