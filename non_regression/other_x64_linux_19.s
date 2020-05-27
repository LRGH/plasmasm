	.file	"jmemnobs.c"
	.section	.text.unlikely,"ax",@progbits
.LCOLDB0:
	.text
.LHOTB0:
	.p2align 4,,15
	.globl	jpeg_get_small
	.type	jpeg_get_small, @function
jpeg_get_small:
.LFB25:
	.cfi_startproc
	movq	%rsi, %rdi
	jmp	malloc
	.cfi_endproc
.LFE25:
	.size	jpeg_get_small, .-jpeg_get_small
	.section	.text.unlikely
.LCOLDE0:
	.text
.LHOTE0:
	.section	.text.unlikely
.LCOLDB1:
	.text
.LHOTB1:
	.p2align 4,,15
	.globl	jpeg_free_small
	.type	jpeg_free_small, @function
jpeg_free_small:
.LFB26:
	.cfi_startproc
	movq	%rsi, %rdi
	jmp	free
	.cfi_endproc
.LFE26:
	.size	jpeg_free_small, .-jpeg_free_small
	.section	.text.unlikely
.LCOLDE1:
	.text
.LHOTE1:
	.section	.text.unlikely
.LCOLDB2:
	.text
.LHOTB2:
	.p2align 4,,15
	.globl	jpeg_get_large
	.type	jpeg_get_large, @function
jpeg_get_large:
.LFB27:
	.cfi_startproc
	movq	%rsi, %rdi
	jmp	malloc
	.cfi_endproc
.LFE27:
	.size	jpeg_get_large, .-jpeg_get_large
	.section	.text.unlikely
.LCOLDE2:
	.text
.LHOTE2:
	.section	.text.unlikely
.LCOLDB3:
	.text
.LHOTB3:
	.p2align 4,,15
	.globl	jpeg_free_large
	.type	jpeg_free_large, @function
jpeg_free_large:
.LFB28:
	.cfi_startproc
	movq	%rsi, %rdi
	jmp	free
	.cfi_endproc
.LFE28:
	.size	jpeg_free_large, .-jpeg_free_large
	.section	.text.unlikely
.LCOLDE3:
	.text
.LHOTE3:
	.section	.text.unlikely
.LCOLDB4:
	.text
.LHOTB4:
	.p2align 4,,15
	.globl	jpeg_mem_available
	.type	jpeg_mem_available, @function
jpeg_mem_available:
.LFB29:
	.cfi_startproc
	movq	%rdx, %rax
	ret
	.cfi_endproc
.LFE29:
	.size	jpeg_mem_available, .-jpeg_mem_available
	.section	.text.unlikely
.LCOLDE4:
	.text
.LHOTE4:
	.section	.text.unlikely
.LCOLDB5:
	.text
.LHOTB5:
	.p2align 4,,15
	.globl	jpeg_open_backing_store
	.type	jpeg_open_backing_store, @function
jpeg_open_backing_store:
.LFB30:
	.cfi_startproc
	movq	(%rdi), %rax
	movl	$49, 40(%rax)
	movq	(%rax), %rdx
	xorl	%eax, %eax
	jmp	*%rdx
	.cfi_endproc
.LFE30:
	.size	jpeg_open_backing_store, .-jpeg_open_backing_store
	.section	.text.unlikely
.LCOLDE5:
	.text
.LHOTE5:
	.section	.text.unlikely
.LCOLDB6:
	.text
.LHOTB6:
	.p2align 4,,15
	.globl	jpeg_mem_init
	.type	jpeg_mem_init, @function
jpeg_mem_init:
.LFB31:
	.cfi_startproc
	xorl	%eax, %eax
	ret
	.cfi_endproc
.LFE31:
	.size	jpeg_mem_init, .-jpeg_mem_init
	.section	.text.unlikely
.LCOLDE6:
	.text
.LHOTE6:
	.section	.text.unlikely
.LCOLDB7:
	.text
.LHOTB7:
	.p2align 4,,15
	.globl	jpeg_mem_term
	.type	jpeg_mem_term, @function
jpeg_mem_term:
.LFB32:
	.cfi_startproc
	rep ret
	.cfi_endproc
.LFE32:
	.size	jpeg_mem_term, .-jpeg_mem_term
	.section	.text.unlikely
.LCOLDE7:
	.text
.LHOTE7:
	.ident	"GCC: (Debian 4.9.2-10) 4.9.2"
	.section	.note.GNU-stack,"",@progbits
