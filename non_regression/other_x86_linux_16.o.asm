	.file	"a02ter.c"
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
	pushl     %ebp
	movl      %esp, %ebp
	movl      8(%ebp), %eax
	movl      (%eax), %eax
	leal      1(%eax), %edx
	movl      8(%ebp), %eax
	movl      %edx, (%eax)
	popl      %ebp
	ret       
	.size	toto, .-toto
# ----------------------
	.globl	tata
	.type	tata, @function
tata:
	pushl     %ebp
	movl      %esp, %ebp
	movl      8(%ebp), %eax
	movl      (%eax), %eax
	leal      -1(%eax), %edx
	movl      8(%ebp), %eax
	movl      %edx, (%eax)
	popl      %ebp
	ret       
	.size	tata, .-tata
# ----------------------
	.globl	main
	.type	main, @function
main:
	pushl     %ebp
	movl      %esp, %ebp
	pushl     %ebx
	andl      $-16, %esp
	subl      $32, %esp
	call      __i686.get_pc_thunk.bx
.L00000033:
	addl      $_GLOBAL_OFFSET_TABLE_, %ebx
	movl      $0, 28(%esp)
	movl      t@GOT(%ebx), %eax
	movl      (%eax), %edx
	leal      28(%esp), %eax
	movl      %eax, (%esp)
	call      *%edx
.L00000052:
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
