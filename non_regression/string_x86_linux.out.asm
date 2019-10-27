	.file	"a07.c"
	.text
	.globl	main
	.type	main, @function
main:
	pushl     %ebp
	movl      %esp, %ebp
	subl      $16, %esp
	call      __i686.get_pc_thunk.cx
.L080483FF:
	addl      $7157, %ecx
	leal      -6877(%ecx), %eax
	movl      %eax, -12(%ebp)
	movl      -8(%ecx), %eax
	movl      (%eax), %eax
	addl      $13, %eax
	movl      %eax, -8(%ebp)
	movl      -12(%ebp), %eax
	movl      %eax, -4(%ebp)
	addl      $1, -8(%ebp)
	movl      -4(%ecx), %eax
	movl      (%eax), %eax
	movl      %eax, -4(%ebp)
	movl      -8(%ebp), %eax
	leave     
	ret       
	.size	main, .-main
# ----------------------
	.section       .rodata
.LC08048510:
	.long	1819043176
	.long	1946159727
	.long	7631717
# ----------------------
	.data
	.align 4
	.globl	a
	.type	a, @object
a:
	.long	12
	.size	a, 4
# ----------------------
	.globl	s
	.type	s, @object
s:
	.long	.LC08048510
	.size	s, 4
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
