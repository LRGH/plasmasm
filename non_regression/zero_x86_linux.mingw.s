	.file	"b3.c"
	.intel_syntax
.globl _A
	.data
_A:
	.byte	2
.globl _B
	.bss
_B:
	.space 1
.globl _C
	.data
	.align 2
_C:
	.word	3
.globl _D
	.bss
	.align 2
_D:
	.space 2
.globl _E
	.data
	.align 4
_E:
	.long	5
.globl _F
	.bss
	.align 4
_F:
	.space 4
	.def	___main;	.scl	2;	.type	32;	.endef
	.text
.globl _main
	.def	_main;	.scl	2;	.type	32;	.endef
_main:
	push	ebp
	mov	ebp, esp
	sub	esp, 8
	and	esp, -16
	mov	eax, 0
	add	eax, 15
	add	eax, 15
	shr	eax, 4
	sal	eax, 4
	mov	DWORD PTR [ebp-4], eax
	mov	eax, DWORD PTR [ebp-4]
	call	__alloca
	call	___main
	mov	eax, DWORD PTR _F
	mov	DWORD PTR _E, eax
	mov	WORD PTR _D, ax
	movzx	eax, WORD PTR _D
	mov	WORD PTR _C, ax
	mov	BYTE PTR _B, al
	movzx	eax, BYTE PTR _B
	mov	BYTE PTR _A, al
	movsx	eax, al
	leave
	ret
