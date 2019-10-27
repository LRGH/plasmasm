	.file	"a10.c"
	.intel_syntax noprefix
	.text
	.globl	main
	.type	main, @function
main:
.LFB0:
	.cfi_startproc
	push	ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	mov	ebp, esp
	.cfi_def_cfa_register 5
	and	esp, -8
	sub	esp, 64
	movsx	edx, BYTE PTR [esp+63]
	movzx	eax, WORD PTR s.1229
	cwde
	add	eax, edx
	add	eax, DWORD PTR [esp+52]
	mov	edx, eax
	sar	edx, 31
	add	eax, DWORD PTR [esp+32]
	adc	edx, DWORD PTR [esp+36]
	mov	DWORD PTR [esp+8], eax
	mov	DWORD PTR [esp+12], edx
	fild	QWORD PTR [esp+8]
	fadd	DWORD PTR [esp+56]
	fadd	QWORD PTR [esp+40]
	fld	TBYTE PTR [esp+16]
	faddp	st(1), st
	fnstcw	WORD PTR [esp+6]
	movzx	eax, WORD PTR [esp+6]
	mov	ah, 12
	mov	WORD PTR [esp+4], ax
	fldcw	WORD PTR [esp+4]
	fistp	DWORD PTR [esp]
	fldcw	WORD PTR [esp+6]
	mov	eax, DWORD PTR [esp]
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE0:
	.size	main, .-main
	.local	s.1229
	.comm	s.1229,2,2
	.ident	"GCC: (Ubuntu/Linaro 4.6.3-1ubuntu5) 4.6.3"
	.section	.note.GNU-stack,"",@progbits
