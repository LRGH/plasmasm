	.file	"a02ter.c"
	.text
	.globl	toto
	.type	toto, @function
toto:
	.cfi_startproc
	pushl     %ebp
	movl      %esp, %ebp
	movl      8(%ebp), %eax
	movl      (%eax), %eax
	leal      1(%eax), %edx
	movl      8(%ebp), %eax
	movl      %edx, (%eax)
	popl      %ebp
	ret       
	.cfi_endproc
	.size	toto, .-toto
# ----------------------
	.globl	tata
	.type	tata, @function
tata:
	.cfi_startproc
	pushl     %ebp
	movl      %esp, %ebp
	movl      8(%ebp), %eax
	movl      (%eax), %eax
	leal      -1(%eax), %edx
	movl      8(%ebp), %eax
	movl      %edx, (%eax)
	popl      %ebp
	ret       
	.cfi_endproc
	.size	tata, .-tata
# ----------------------
	.section       .data.rel,"aw",@progbits
	.align 4
	.globl	t
	.type	t, @object
t:
	.long	toto
	.long	tata
	.size	t, 8
# ----------------------
	.text
	.globl	main
	.type	main, @function
main:
	.cfi_startproc
	pushl     %ebp
	movl      %esp, %ebp
	pushl     %ebx
	andl      $-16, %esp
	subl      $32, %esp
	call      __i686.get_pc_thunk.bx
	addl      $_GLOBAL_OFFSET_TABLE_, %ebx
	movl      $0, 28(%esp)
	movl      t@GOT(%ebx), %eax
	movl      (%eax), %edx
	leal      28(%esp), %eax
	movl      %eax, (%esp)
	call      *%edx
	movl      28(%esp), %eax
	movl      -4(%ebp), %ebx
	leave     
	ret       
	.cfi_endproc
	.size	main, .-main
# ----------------------
	.section       .text.__i686.get_pc_thunk.bx,"axG",@progbits,__i686.get_pc_thunk.bx,comdat
	.hidden	__i686.get_pc_thunk.bx
	.globl	__i686.get_pc_thunk.bx
	.type	__i686.get_pc_thunk.bx, @function
__i686.get_pc_thunk.bx:
	.cfi_startproc
	movl      (%esp), %ebx
	ret       
	.cfi_endproc
# ----------------------
	.ident	"GCC: (Ubuntu/Linaro 4.6.3-1ubuntu5) 4.6.3"
	.section	.note.GNU-stack,"",@progbits
