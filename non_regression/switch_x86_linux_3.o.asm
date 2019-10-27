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
.L00000011:
	addl      $_GLOBAL_OFFSET_TABLE_, %ebx
	movl      $0, -176(%ebp)
	cmpl      $4, 12(%ebp)
	ja        .L0000006E
.L00000027:
	movl      12(%ebp), %eax
	sall      $2, %eax
	movl      .L0000003C@GOTOFF(%eax,%ebx), %eax
	movl      %ebx, %edx
	subl      %eax, %edx
	movl      %edx, %eax
	jmp       *%eax
.L0000003C:
	.long	_GLOBAL_OFFSET_TABLE_+[.-.L0000006E]
	.long	_GLOBAL_OFFSET_TABLE_+[.-.L0000006E]
	.long	_GLOBAL_OFFSET_TABLE_+[.-.L00000050]
	.long	_GLOBAL_OFFSET_TABLE_+[.-.L0000005F]
	.long	_GLOBAL_OFFSET_TABLE_+[.-.L0000005F]
.L00000050:
	movl      16(%ebp), %eax
	movl      $1, 292(%eax)
	jmp       .L0000007D
.L0000005F:
	movl      16(%ebp), %eax
	movl      $2, 356(%eax)
	jmp       .L0000007D
.L0000006E:
	movl      16(%ebp), %eax
	movl      $2, 356(%eax)
	jmp       .L0000007D
.L0000007D:
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
