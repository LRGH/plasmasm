	.file	"a03bis.c"
	.section       .data.rel,"wa",@progbits
	.globl	t
	.type	t, @object
t:
	.long	toto
	.long	tata
	.size	t, 8
# ----------------------
	.text
	.globl	toto
	.type	toto, @function
toto:
	movl      4(%esp), %eax
	addl      $1, (%eax)
	ret       
	.size	toto, .-toto
# ----------------------
.L00000008:
	.p2align 4
# ----------------------
	.globl	tata
	.type	tata, @function
tata:
	movl      4(%esp), %eax
	subl      $1, (%eax)
	ret       
	.size	tata, .-tata
# ----------------------
	.section       .text.startup,"ax",@progbits
	.globl	main
	.type	main, @function
main:
	pushl     %ebp
	movl      %esp, %ebp
	pushl     %ebx
	call      __i686.get_pc_thunk.bx
.L00000009.startup:
	addl      $_GLOBAL_OFFSET_TABLE_, %ebx
	andl      $-16, %esp
	subl      $32, %esp
	movl      8(%ebp), %edx
	leal      28(%esp), %eax
	movl      %eax, (%esp)
	movl      $0, 28(%esp)
	movl      t@GOT(%ebx), %eax
	call      *-4(%eax,%edx,4)
.L00000031.startup:
	movl      28(%esp), %eax
	movl      -4(%ebp), %ebx
	leave     
	ret       
	.size	main, .-main
# ----------------------
	.section       .text.__i686.get_pc_thunk.bx,"axG",@progbits,__i686.get_pc_thunk.bx,comdat
	.hidden	__i686.get_pc_thunk.bx
	.globl	__i686.get_pc_thunk.bx
	.type	__i686.get_pc_thunk.bx, @function
__i686.get_pc_thunk.bx:
	movl      (%esp), %ebx
	ret       
# ----------------------
	.ident	"GCC: (Ubuntu/Linaro 4.6.3-1ubuntu5) 4.6.3"
	.section	.note.GNU-stack,"",@progbits
