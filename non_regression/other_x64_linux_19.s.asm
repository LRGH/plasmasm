	.file	"jmemnobs.c"
	.section       .text.unlikely,"ax",@progbits
.LCOLDB0:
.LCOLDE0:
.LCOLDB1:
.LCOLDE1:
.LCOLDB2:
.LCOLDE2:
.LCOLDB3:
.LCOLDE3:
.LCOLDB4:
.LCOLDE4:
.LCOLDB5:
.LCOLDE5:
.LCOLDB6:
.LCOLDE6:
.LCOLDB7:
.LCOLDE7:
# ----------------------
	.text
.LHOTB0:
# ----------------------
	.p2align 4,,15
# ----------------------
	.globl	jpeg_get_small
	.type	jpeg_get_small, @function
jpeg_get_small:
	.cfi_startproc
	movq      %rsi, %rdi
	jmp       malloc
.LHOTE0:
.LHOTB1:
	.cfi_endproc
	.size	jpeg_get_small, .-jpeg_get_small
# ----------------------
	.p2align 4,,15
# ----------------------
	.globl	jpeg_free_small
	.type	jpeg_free_small, @function
jpeg_free_small:
	.cfi_startproc
	movq      %rsi, %rdi
	jmp       free
.LHOTE1:
.LHOTB2:
	.cfi_endproc
	.size	jpeg_free_small, .-jpeg_free_small
# ----------------------
	.p2align 4,,15
# ----------------------
	.globl	jpeg_get_large
	.type	jpeg_get_large, @function
jpeg_get_large:
	.cfi_startproc
	movq      %rsi, %rdi
	jmp       malloc
.LHOTE2:
.LHOTB3:
	.cfi_endproc
	.size	jpeg_get_large, .-jpeg_get_large
# ----------------------
	.p2align 4,,15
# ----------------------
	.globl	jpeg_free_large
	.type	jpeg_free_large, @function
jpeg_free_large:
	.cfi_startproc
	movq      %rsi, %rdi
	jmp       free
.LHOTE3:
.LHOTB4:
	.cfi_endproc
	.size	jpeg_free_large, .-jpeg_free_large
# ----------------------
	.p2align 4,,15
# ----------------------
	.globl	jpeg_mem_available
	.type	jpeg_mem_available, @function
jpeg_mem_available:
	.cfi_startproc
	movq      %rdx, %rax
	ret       
.LHOTE4:
.LHOTB5:
	.cfi_endproc
	.size	jpeg_mem_available, .-jpeg_mem_available
# ----------------------
	.p2align 4,,15
# ----------------------
	.globl	jpeg_open_backing_store
	.type	jpeg_open_backing_store, @function
jpeg_open_backing_store:
	.cfi_startproc
	movq      (%rdi), %rax
	movl      $49, 40(%rax)
	movq      (%rax), %rdx
	xorl      %eax, %eax
	jmp       *%rdx
.LHOTE5:
.LHOTB6:
	.cfi_endproc
	.size	jpeg_open_backing_store, .-jpeg_open_backing_store
# ----------------------
	.p2align 4,,15
# ----------------------
	.globl	jpeg_mem_init
	.type	jpeg_mem_init, @function
jpeg_mem_init:
	.cfi_startproc
	xorl      %eax, %eax
	ret       
.LHOTE6:
.LHOTB7:
	.cfi_endproc
	.size	jpeg_mem_init, .-jpeg_mem_init
# ----------------------
	.p2align 4,,15
# ----------------------
	.globl	jpeg_mem_term
	.type	jpeg_mem_term, @function
jpeg_mem_term:
	.cfi_startproc
	rep; ret       
.LHOTE7:
	.cfi_endproc
	.size	jpeg_mem_term, .-jpeg_mem_term
# ----------------------
	.ident	"GCC: (Debian 4.9.2-10) 4.9.2"
	.section	.note.GNU-stack,"",@progbits
