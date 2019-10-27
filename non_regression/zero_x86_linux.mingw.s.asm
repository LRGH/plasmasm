	.file	"b3.c"
	.intel_syntax
	.data
	.def	_A;	.scl	2;	.endef
_A:
	.byte	2
# ----------------------
	.bss
	.def	_B;	.scl	2;	.endef
_B:
	.zero	1
# ----------------------
	.data
	.align 2
	.def	_C;	.scl	2;	.endef
_C:
	.value	3
# ----------------------
	.bss
	.align 2
	.def	_D;	.scl	2;	.endef
_D:
	.zero	2
# ----------------------
	.data
	.align 4
	.def	_E;	.scl	2;	.endef
_E:
	.long	5
# ----------------------
	.bss
	.align 4
	.def	_F;	.scl	2;	.endef
_F:
	.zero	4
# ----------------------
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
	mov       DWORD PTR [ebp-4], eax
	mov       eax, DWORD PTR [ebp-4]
	call      __alloca
	call      ___main
	mov       eax, DWORD PTR _F
	mov       DWORD PTR _E, eax
	mov       WORD PTR _D, ax
	movzx     eax, WORD PTR _D
	mov       WORD PTR _C, ax
	mov       BYTE PTR _B, al
	movzx     eax, BYTE PTR _B
	mov       BYTE PTR _A, al
	movsx     eax, al
	leave     
	ret       
# ----------------------
	.def	___main;	.scl	2;	.type	32;	.endef
