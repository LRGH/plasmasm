	.file	"a07.c"
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
	pushl     %ebp
	movl      %esp, %ebp
	subl      $16, %esp
	call      __i686.get_pc_thunk.cx
	addl      $_GLOBAL_OFFSET_TABLE_, %ecx
	leal      .LC1@GOTOFF(%ecx), %eax
	movl      %eax, -12(%ebp)
	movl      a@GOT(%ecx), %eax
	movl      (%eax), %eax
	addl      $13, %eax
	movl      %eax, -8(%ebp)
	movl      -12(%ebp), %eax
	movl      %eax, -4(%ebp)
	addl      $1, -8(%ebp)
	movl      s@GOT(%ecx), %eax
	movl      (%eax), %eax
	movl      %eax, -4(%ebp)
	movl      -8(%ebp), %eax
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
	movl      (%esp), %ecx
	ret       
	.cfi_endproc
# ----------------------
	.ident	"GCC: (Ubuntu/Linaro 4.6.3-1ubuntu5) 4.6.3"
	.section	.note.GNU-stack,"",@progbits
