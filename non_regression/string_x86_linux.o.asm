	.file	"a07.c"
	.data
	.globl	a
	.type	a, @object
a:
	.long	12
	.size	a, 4
# ----------------------
	.section       .data.rel.local,"wa",@progbits
	.globl	s
	.type	s, @object
s:
	.long	.LC00000000
	.size	s, 4
# ----------------------
	.section       .rodata
.LC00000000:
	.string	"hello\n"
.LC00000007:
	.string	"test"
# ----------------------
	.text
	.globl	main
	.type	main, @function
main:
	pushl     %ebp
	movl      %esp, %ebp
	subl      $16, %esp
	call      __i686.get_pc_thunk.cx
.L0000000B:
	addl      $_GLOBAL_OFFSET_TABLE_, %ecx
	leal      .LC00000007@GOTOFF(%ecx), %eax
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
	.size	main, .-main
# ----------------------
	.section       .text.__i686.get_pc_thunk.cx,"axG",@progbits,__i686.get_pc_thunk.cx,comdat
	.hidden	__i686.get_pc_thunk.cx
	.globl	__i686.get_pc_thunk.cx
	.type	__i686.get_pc_thunk.cx, @function
__i686.get_pc_thunk.cx:
	movl      (%esp), %ecx
	ret       
# ----------------------
	.ident	"GCC: (Ubuntu/Linaro 4.6.3-1ubuntu5) 4.6.3"
	.section	.note.GNU-stack,"",@progbits
