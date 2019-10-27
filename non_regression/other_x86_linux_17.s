	.file	"a03bis.c"
	.text
	.p2align 4,,15
	.globl	toto
	.type	toto, @function
toto:
.LFB0:
	.cfi_startproc
	movl	4(%esp), %eax
	addl	$1, (%eax)
	ret
	.cfi_endproc
.LFE0:
	.size	toto, .-toto
	.p2align 4,,15
	.globl	tata
	.type	tata, @function
tata:
.LFB1:
	.cfi_startproc
	movl	4(%esp), %eax
	subl	$1, (%eax)
	ret
	.cfi_endproc
.LFE1:
	.size	tata, .-tata
	.section	.text.startup,"ax",@progbits
	.p2align 4,,15
	.globl	main
	.type	main, @function
main:
.LFB2:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%ebx
	.cfi_offset 3, -12
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	andl	$-16, %esp
	subl	$32, %esp
	movl	8(%ebp), %edx
	leal	28(%esp), %eax
	movl	%eax, (%esp)
	movl	$0, 28(%esp)
	movl	t@GOT(%ebx), %eax
	call	*-4(%eax,%edx,4)
	movl	28(%esp), %eax
	movl	-4(%ebp), %ebx
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	.cfi_restore 3
	ret
	.cfi_endproc
.LFE2:
	.size	main, .-main
	.globl	t
	.section	.data.rel,"aw",@progbits
	.align 4
	.type	t, @object
	.size	t, 8
t:
	.long	toto
	.long	tata
	.section	.text.__i686.get_pc_thunk.bx,"axG",@progbits,__i686.get_pc_thunk.bx,comdat
	.globl	__i686.get_pc_thunk.bx
	.hidden	__i686.get_pc_thunk.bx
	.type	__i686.get_pc_thunk.bx, @function
__i686.get_pc_thunk.bx:
.LFB3:
	.cfi_startproc
	movl	(%esp), %ebx
	ret
	.cfi_endproc
.LFE3:
	.ident	"GCC: (Ubuntu/Linaro 4.6.3-1ubuntu5) 4.6.3"
	.section	.note.GNU-stack,"",@progbits
