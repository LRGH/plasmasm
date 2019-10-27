	.file	"a07.c"
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
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$16, %esp
	call	__i686.get_pc_thunk.cx
	addl	$_GLOBAL_OFFSET_TABLE_, %ecx
	leal	.LC1@GOTOFF(%ecx), %eax
	movl	%eax, -12(%ebp)
	movl	a@GOT(%ecx), %eax
	movl	(%eax), %eax
	addl	$13, %eax
	movl	%eax, -8(%ebp)
	movl	-12(%ebp), %eax
	movl	%eax, -4(%ebp)
	addl	$1, -8(%ebp)
	movl	s@GOT(%ecx), %eax
	movl	(%eax), %eax
	movl	%eax, -4(%ebp)
	movl	-8(%ebp), %eax
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
