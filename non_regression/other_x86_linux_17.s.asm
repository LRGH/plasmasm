	.file	"a03bis.c"
	.text
	.p2align 4,,15
# ----------------------
	.globl	toto
	.type	toto, @function
toto:
	.cfi_startproc
	movl      4(%esp), %eax
	addl      $1, (%eax)
	ret       
	.cfi_endproc
	.size	toto, .-toto
# ----------------------
	.p2align 4,,15
# ----------------------
	.globl	tata
	.type	tata, @function
tata:
	.cfi_startproc
	movl      4(%esp), %eax
	subl      $1, (%eax)
	ret       
	.cfi_endproc
	.size	tata, .-tata
# ----------------------
	.section       .text.startup,"ax",@progbits
	.p2align 4,,15
# ----------------------
	.globl	main
	.type	main, @function
main:
	.cfi_startproc
	pushl     %ebp
	movl      %esp, %ebp
	pushl     %ebx
	call      __i686.get_pc_thunk.bx
	addl      $_GLOBAL_OFFSET_TABLE_, %ebx
	andl      $-16, %esp
	subl      $32, %esp
	movl      8(%ebp), %edx
	leal      28(%esp), %eax
	movl      %eax, (%esp)
	movl      $0, 28(%esp)
	movl      t@GOT(%ebx), %eax
	call      *-4(%eax,%edx,4)
	movl      28(%esp), %eax
	movl      -4(%ebp), %ebx
	leave     
	ret       
	.cfi_endproc
	.size	main, .-main
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
