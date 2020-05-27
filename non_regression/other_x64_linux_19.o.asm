	.file	"jmemnobs.c"
	.section	.text.unlikely,"ax",@progbits
.LCOLDB1:
	.text
	.globl	jpeg_get_small
	.type	jpeg_get_small, @function
jpeg_get_small:
	movq      %rsi, %rdi
	jmp       malloc
	.size	jpeg_get_small, .-jpeg_get_small
# ----------------------
.L00000008:
	.p2align 4
# ----------------------
	.globl	jpeg_free_small
	.type	jpeg_free_small, @function
jpeg_free_small:
	movq      %rsi, %rdi
	jmp       free
	.size	jpeg_free_small, .-jpeg_free_small
# ----------------------
.L00000018:
	.p2align 4
# ----------------------
	.globl	jpeg_get_large
	.type	jpeg_get_large, @function
jpeg_get_large:
	movq      %rsi, %rdi
	jmp       malloc
	.size	jpeg_get_large, .-jpeg_get_large
# ----------------------
.L00000028:
	.p2align 4
# ----------------------
	.globl	jpeg_free_large
	.type	jpeg_free_large, @function
jpeg_free_large:
	movq      %rsi, %rdi
	jmp       free
	.size	jpeg_free_large, .-jpeg_free_large
# ----------------------
.L00000038:
	.p2align 4
# ----------------------
	.globl	jpeg_mem_available
	.type	jpeg_mem_available, @function
jpeg_mem_available:
	movq      %rdx, %rax
	ret       
	.size	jpeg_mem_available, .-jpeg_mem_available
# ----------------------
.L00000044:
	.p2align 4
# ----------------------
	.globl	jpeg_open_backing_store
	.type	jpeg_open_backing_store, @function
jpeg_open_backing_store:
	movq      (%rdi), %rax
	movl      $49, 40(%rax)
	movq      (%rax), %rdx
	xorl      %eax, %eax
	jmp       *%rdx
	.size	jpeg_open_backing_store, .-jpeg_open_backing_store
# ----------------------
.L00000061:
	.p2align 4
# ----------------------
	.globl	jpeg_mem_init
	.type	jpeg_mem_init, @function
jpeg_mem_init:
	xorl      %eax, %eax
	ret       
	.size	jpeg_mem_init, .-jpeg_mem_init
# ----------------------
.L00000073:
	.p2align 4
# ----------------------
	.globl	jpeg_mem_term
	.type	jpeg_mem_term, @function
jpeg_mem_term:
	rep; ret       
	.size	jpeg_mem_term, .-jpeg_mem_term
# ----------------------
	.ident	"GCC: (Debian 4.9.2-10) 4.9.2"
	.section	.note.GNU-stack,"",@progbits
