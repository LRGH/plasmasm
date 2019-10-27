	.file	"a00.c"
	.intel_syntax noprefix
	.text
	.globl	main
	.type	main, @function
main:
	.cfi_startproc
	push      ebp
	mov       ebp, esp
	sub       esp, 16
	mov       DWORD PTR [ebp-4], 0
	add       DWORD PTR [ebp-4], 66
	mov       eax, DWORD PTR [ebp-4]
	leave     
	ret       
	.cfi_endproc
	.size	main, .-main
# ----------------------
	.ident	"GCC: (Ubuntu/Linaro 4.6.3-1ubuntu5) 4.6.3"
	.section	.note.GNU-stack,"",@progbits
