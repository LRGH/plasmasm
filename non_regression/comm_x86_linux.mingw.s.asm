	.file	"a10.c"
	.intel_syntax
	.lcomm s.0,16
# ----------------------
	.text
	.def	_main;	.scl	2;	.type	32;	.endef
_main:
	push      ebp
	mov       ebp, esp
	sub       esp, 88
	and       esp, -16
	mov       eax, 0
	add       eax, 15
	add       eax, 15
	shr       eax, 4
	sal       eax, 4
	mov       DWORD PTR [ebp-76], eax
	mov       eax, DWORD PTR [ebp-76]
	call      __alloca
	call      ___main
	movsx     edx, BYTE PTR [ebp-9]
	movsx     eax, WORD PTR s.0
	lea       eax, [edx+eax]
	add       eax, DWORD PTR [ebp-16]
	cdq       
	add       eax, DWORD PTR [ebp-24]
	adc       edx, DWORD PTR [ebp-20]
	push      edx
	push      eax
	fild      QWORD PTR [esp]
	lea       esp, [esp+8]
	fadd      DWORD PTR [ebp-28]
	fadd      QWORD PTR [ebp-40]
	fld       TBYTE PTR [ebp-56]
	faddp     st(1), st
	fnstcw    WORD PTR [ebp-58]
	movzx     eax, WORD PTR [ebp-58]
	or        ax, 3072
	mov       WORD PTR [ebp-60], ax
	fldcw     WORD PTR [ebp-60]
	fistp     DWORD PTR [ebp-64]
	fldcw     WORD PTR [ebp-58]
	mov       eax, DWORD PTR [ebp-64]
	leave     
	ret       
# ----------------------
	.def	___main;	.scl	2;	.type	32;	.endef
