	.file	"a07.c"
	.intel_syntax noprefix
	.globl	a
	.data
	.align 4
	.type	a, @object
	.size	a, 4
a:
	.long	12
	.globl	s
	.section	.rodata
.LC0:
	.string	"hello\n"
	.section	.data.rel.local,"aw",@progbits
	.align 4
	.type	s, @object
	.size	s, 4
s:
	.long	.LC0
	.section	.rodata
.LC1:
	.string	"test"
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
	sub	esp, 16
	call	__i686.get_pc_thunk.cx
	add	ecx, OFFSET FLAT:_GLOBAL_OFFSET_TABLE_
	lea	eax, .LC1@GOTOFF[ecx]
	mov	DWORD PTR -12[ebp], eax
	mov	eax, DWORD PTR a@GOT[ecx]
	mov	eax, DWORD PTR [eax]
	add	eax, 13
	mov	DWORD PTR -8[ebp], eax
	mov	eax, DWORD PTR -12[ebp]
	mov	DWORD PTR -4[ebp], eax
	add	DWORD PTR -8[ebp], 1
	mov	eax, DWORD PTR s@GOT[ecx]
	mov	eax, DWORD PTR [eax]
	mov	DWORD PTR -4[ebp], eax
	mov	eax, DWORD PTR -8[ebp]
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE0:
	.size	main, .-main
	.section	.text.__i686.get_pc_thunk.cx,"axG",@progbits,__i686.get_pc_thunk.cx,comdat
	.globl	__i686.get_pc_thunk.cx
	.hidden	__i686.get_pc_thunk.cx
	.type	__i686.get_pc_thunk.cx, @function
__i686.get_pc_thunk.cx:
.LFB1:
	.cfi_startproc
	mov	ecx, DWORD PTR [esp]
	ret
	.cfi_endproc
.LFE1:
	.ident	"GCC: (Ubuntu/Linaro 4.6.3-1ubuntu5) 4.6.3"
	.section	.note.GNU-stack,"",@progbits
