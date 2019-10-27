	.file	"j2.c"
	.section	.rodata
.LC0:
	.string	"blah"
	.text
	.globl	main
	.type	main, @function
main:
.LFB0:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$16, %esp
	call	__i686.get_pc_thunk.cx
	addl	$_GLOBAL_OFFSET_TABLE_, %ecx
	leal	.LC0@GOTOFF(%ecx), %edx
	movl	-4(%ebp), %eax
	addl	%edx, %eax
	movzbl	(%eax), %eax
	movsbl	%al, %eax
	movl	%eax, -4(%ebp)
	jmp	.L2
.L6:
	movl	-4(%ebp), %eax
	subl	$58, %eax
	cmpl	$73, %eax
	ja	.L2
	sall	$2, %eax
	movl	.L5@GOTOFF(%eax,%ecx), %eax
	addl	%ecx, %eax
	jmp	*%eax
	.section	.rodata
	.align 4
	.align 4
.L5:
	.long	.L3@GOTOFF
	.long	.L4@GOTOFF
	.long	.L3@GOTOFF
	.long	.L2@GOTOFF
	.long	.L2@GOTOFF
	.long	.L2@GOTOFF
	.long	.L2@GOTOFF
	.long	.L4@GOTOFF
	.long	.L2@GOTOFF
	.long	.L2@GOTOFF
	.long	.L2@GOTOFF
	.long	.L2@GOTOFF
	.long	.L2@GOTOFF
	.long	.L2@GOTOFF
	.long	.L2@GOTOFF
	.long	.L2@GOTOFF
	.long	.L2@GOTOFF
	.long	.L2@GOTOFF
	.long	.L2@GOTOFF
	.long	.L2@GOTOFF
	.long	.L2@GOTOFF
	.long	.L2@GOTOFF
	.long	.L2@GOTOFF
	.long	.L2@GOTOFF
	.long	.L2@GOTOFF
	.long	.L2@GOTOFF
	.long	.L2@GOTOFF
	.long	.L2@GOTOFF
	.long	.L2@GOTOFF
	.long	.L2@GOTOFF
	.long	.L2@GOTOFF
	.long	.L2@GOTOFF
	.long	.L2@GOTOFF
	.long	.L2@GOTOFF
	.long	.L2@GOTOFF
	.long	.L2@GOTOFF
	.long	.L2@GOTOFF
	.long	.L2@GOTOFF
	.long	.L2@GOTOFF
	.long	.L2@GOTOFF
	.long	.L2@GOTOFF
	.long	.L2@GOTOFF
	.long	.L2@GOTOFF
	.long	.L2@GOTOFF
	.long	.L2@GOTOFF
	.long	.L2@GOTOFF
	.long	.L2@GOTOFF
	.long	.L2@GOTOFF
	.long	.L2@GOTOFF
	.long	.L2@GOTOFF
	.long	.L2@GOTOFF
	.long	.L2@GOTOFF
	.long	.L2@GOTOFF
	.long	.L2@GOTOFF
	.long	.L2@GOTOFF
	.long	.L2@GOTOFF
	.long	.L2@GOTOFF
	.long	.L2@GOTOFF
	.long	.L2@GOTOFF
	.long	.L2@GOTOFF
	.long	.L2@GOTOFF
	.long	.L2@GOTOFF
	.long	.L3@GOTOFF
	.long	.L3@GOTOFF
	.long	.L2@GOTOFF
	.long	.L2@GOTOFF
	.long	.L2@GOTOFF
	.long	.L2@GOTOFF
	.long	.L2@GOTOFF
	.long	.L2@GOTOFF
	.long	.L2@GOTOFF
	.long	.L2@GOTOFF
	.long	.L4@GOTOFF
	.long	.L4@GOTOFF
	.text
.L3:
	addl	$1, -4(%ebp)
.L4:
	subl	$1, -4(%ebp)
.L2:
	cmpl	$0, -4(%ebp)
	jne	.L6
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
	movl	(%esp), %ecx
	ret
	.cfi_endproc
.LFE1:
	.ident	"GCC: (Ubuntu/Linaro 4.6.3-1ubuntu5) 4.6.3"
	.section	.note.GNU-stack,"",@progbits
