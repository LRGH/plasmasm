	.file	"a07.c"
	.intel_syntax noprefix
	.data
	.align 4
	.globl	a
	.type	a, @object
a:
	.long	12
	.size	a, 4
# ----------------------
	.section       .rodata
.LC0:
	.string	"hello\n"
.LC1:
	.string	"test"
# ----------------------
	.section       .data.rel.local,"aw",@progbits
	.align 4
	.globl	s
	.type	s, @object
s:
	.long	.LC0
	.size	s, 4
# ----------------------
	.text
	.globl	main
	.type	main, @function
main:
	.cfi_startproc
	push      ebp
	mov       ebp, esp
	sub       esp, 16
	call      __i686.get_pc_thunk.cx
	add       ecx, OFFSET FLAT:_GLOBAL_OFFSET_TABLE_
	lea       eax, .LC1@GOTOFF[ecx]
	mov       DWORD PTR [ebp-12], eax
	mov       eax, DWORD PTR a@GOT[ecx]
	mov       eax, DWORD PTR [eax]
	add       eax, 13
	mov       DWORD PTR [ebp-8], eax
	mov       eax, DWORD PTR [ebp-12]
	mov       DWORD PTR [ebp-4], eax
	add       DWORD PTR [ebp-8], 1
	mov       eax, DWORD PTR s@GOT[ecx]
	mov       eax, DWORD PTR [eax]
	mov       DWORD PTR [ebp-4], eax
	mov       eax, DWORD PTR [ebp-8]
	leave     
	ret       
	.cfi_endproc
	.size	main, .-main
# ----------------------
	.section       .text.__i686.get_pc_thunk.cx,"axG",@progbits,__i686.get_pc_thunk.cx,comdat
	.hidden	__i686.get_pc_thunk.cx
	.globl	__i686.get_pc_thunk.cx
	.type	__i686.get_pc_thunk.cx, @function
__i686.get_pc_thunk.cx:
	.cfi_startproc
	mov       ecx, DWORD PTR [esp]
	ret       
	.cfi_endproc
# ----------------------
	.ident	"GCC: (Ubuntu/Linaro 4.6.3-1ubuntu5) 4.6.3"
	.section	.note.GNU-stack,"",@progbits
