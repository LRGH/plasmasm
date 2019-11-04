	.intel_syntax noprefix
	.section       __TEXT,__text,regular,pure_instructions
	.p2align 4, 0x90
# ----------------------
	.globl	_main
_main:
	push      ebp
	mov       ebp, esp
	sub       esp, 12
	mov       eax, DWORD PTR [ebp+12]
	mov       ecx, DWORD PTR [ebp+8]
	mov       DWORD PTR [ebp-4], 0
	mov       DWORD PTR [ebp-8], eax
	mov       DWORD PTR [ebp-12], ecx
LBB0_1:
	cmp       DWORD PTR [ebp+8], 1
	jle       LBB0_6
	mov       eax, DWORD PTR [ebp+8]
	cdq       
	mov       ecx, 2
	idiv      ecx
	cmp       edx, 0
	je        LBB0_4
	mov       eax, DWORD PTR [ebp+8]
	cdq       
	mov       ecx, 2
	idiv      ecx
	mov       DWORD PTR [ebp+8], eax
	jmp       LBB0_5
LBB0_4:
	imul      eax, DWORD PTR [ebp+8], 3
	add       eax, 1
	mov       DWORD PTR [ebp+8], eax
LBB0_5:
	jmp       LBB0_1
LBB0_6:
	mov       eax, DWORD PTR [ebp+8]
	add       esp, 12
	pop       ebp
	ret       
# ----------------------

.subsections_via_symbols
