	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 10, 14	sdk_version 10, 14
	.intel_syntax noprefix
	.globl	_main                   ## -- Begin function main
	.p2align	4, 0x90
_main:                                  ## @main
	.cfi_startproc
## %bb.0:
	push	ebp
	.cfi_def_cfa_offset 8
	.cfi_offset ebp, -8
	mov	ebp, esp
	.cfi_def_cfa_register ebp
	sub	esp, 12
	mov	eax, dword ptr [ebp + 12]
	mov	ecx, dword ptr [ebp + 8]
	mov	dword ptr [ebp - 4], 0
	mov	dword ptr [ebp - 8], eax ## 4-byte Spill
	mov	dword ptr [ebp - 12], ecx ## 4-byte Spill
LBB0_1:                                 ## =>This Inner Loop Header: Depth=1
	cmp	dword ptr [ebp + 8], 1
	jle	LBB0_6
## %bb.2:                               ##   in Loop: Header=BB0_1 Depth=1
	mov	eax, dword ptr [ebp + 8]
	cdq
	mov	ecx, 2
	idiv	ecx
	cmp	edx, 0
	je	LBB0_4
## %bb.3:                               ##   in Loop: Header=BB0_1 Depth=1
	mov	eax, dword ptr [ebp + 8]
	cdq
	mov	ecx, 2
	idiv	ecx
	mov	dword ptr [ebp + 8], eax
	jmp	LBB0_5
LBB0_4:                                 ##   in Loop: Header=BB0_1 Depth=1
	imul	eax, dword ptr [ebp + 8], 3
	add	eax, 1
	mov	dword ptr [ebp + 8], eax
LBB0_5:                                 ##   in Loop: Header=BB0_1 Depth=1
	jmp	LBB0_1
LBB0_6:
	mov	eax, dword ptr [ebp + 8]
	add	esp, 12
	pop	ebp
	ret
	.cfi_endproc
                                        ## -- End function

.subsections_via_symbols
