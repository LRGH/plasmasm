	.file	"tools.c"
	.section       .rodata
	.align 32
	.local	named
	.type	named, @object
named:
	.long	1
	.long	2
.LC2:
	.string	"test\n"
	.size	named, 8
# ----------------------
	.text
	.globl	main
	.type	main, @function
main:
	ret       
	.size	main, .-main
# ----------------------
	.local	other
	.type	other, @function
other:
	pushl     %ebp
	movl      %esp, %ebp
	pushl     %edi
	pushl     %esi
	pushl     %ebx
	call      __i686.get_pc_thunk.bx
	addl      $_GLOBAL_OFFSET_TABLE_, %ebx
	movl      named@GOTOFF+4(%ebx), %eax
	leal      .LC2@GOTOFF(%ebx), %eax
	popl      %ebx
	popl      %esi
	popl      %edi
	popl      %ebp
	ret       
	.size	other, .-other
# ----------------------
	.section       .text.__i686.get_pc_thunk.bx,"axG",@progbits,__i686.get_pc_thunk.bx,comdat
	.hidden	__i686.get_pc_thunk.bx
	.globl	__i686.get_pc_thunk.bx
	.type	__i686.get_pc_thunk.bx, @function
__i686.get_pc_thunk.bx:
	movl      (%esp), %ebx
	ret       
# ----------------------
	.ident	"GCC: (GNU) 4.1.1 20070105 (Red Hat 4.1.1-51)"
	.section	.note.GNU-stack,"",@progbits
