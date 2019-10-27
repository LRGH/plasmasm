	.file	"switch_gcc411.c"
	.text
main:
	pushl     %ebp
	movl      %esp, %ebp
	pushl     %edi
	pushl     %esi
	pushl     %ebx
	subl      $1452, %esp
	call      __i686.get_pc_thunk.bx
	addl      $_GLOBAL_OFFSET_TABLE_, %ebx
	movl      $0, -176(%ebp)
	cmpl      $4, 12(%ebp)
	ja        .L42
	movl      12(%ebp), %eax
	sall      $2, %eax
	movl      .L67@GOTOFF(%eax,%ebx), %eax
	movl      %ebx, %edx
	subl      %eax, %edx
	movl      %edx, %eax
	jmp       *%eax
# ----------------------
	.p2align 2
	.align 4
.L67:
	.long	_GLOBAL_OFFSET_TABLE_+[.-.L42]
	.long	_GLOBAL_OFFSET_TABLE_+[.-.L42]
	.long	_GLOBAL_OFFSET_TABLE_+[.-.L43]
	.long	_GLOBAL_OFFSET_TABLE_+[.-.L44]
	.long	_GLOBAL_OFFSET_TABLE_+[.-.L44]
.L43:
	movl      16(%ebp), %eax
	movl      $1, 292(%eax)
	jmp       .L337
.L44:
	movl      16(%ebp), %eax
	movl      $2, 356(%eax)
	jmp       .L337
.L42:
	movl      16(%ebp), %eax
	movl      $2, 356(%eax)
	jmp       .L337
.L337:
	addl      $1452, %esp
	popl      %ebx
	popl      %esi
	popl      %edi
	popl      %ebp
	ret       
# ----------------------
	.section       .text.__i686.get_pc_thunk.cx,"axG",@progbits,__i686.get_pc_thunk.cx,comdat
	.hidden	__i686.get_pc_thunk.cx
	.globl	__i686.get_pc_thunk.cx
	.type	__i686.get_pc_thunk.cx, @function
__i686.get_pc_thunk.cx:
	movl      (%esp), %ecx
	ret       
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
