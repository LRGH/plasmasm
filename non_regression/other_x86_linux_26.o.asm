	.file	"(extract)es.c"
	.section       .text.__x86.get_pc_thunk.bx,"axG",@progbits,__x86.get_pc_thunk.bx,comdat
	.hidden	__x86.get_pc_thunk.bx
	.globl	__x86.get_pc_thunk.bx
	.type	__x86.get_pc_thunk.bx, @function
__x86.get_pc_thunk.bx:
	movl      (%esp), %ebx
	ret       
# ----------------------
	.section       .text.__x86.get_pc_thunk.cx,"axG",@progbits,__x86.get_pc_thunk.cx,comdat
	.hidden	__x86.get_pc_thunk.cx
	.globl	__x86.get_pc_thunk.cx
	.type	__x86.get_pc_thunk.cx, @function
__x86.get_pc_thunk.cx:
	movl      (%esp), %ecx
	ret       
# ----------------------
	.text
	.globl	err_flush
	.type	err_flush, @function
err_flush:
	pushl     %ebx
	call      __x86.get_pc_thunk.bx
.L00000006:
	addl      $_GLOBAL_OFFSET_TABLE_, %ebx
	subl      $8, %esp
	movl      pariErr@GOT(%ebx), %eax
	movl      (%eax), %eax
	call      *8(%eax)
.L0000001A:
	addl      $8, %esp
	popl      %ebx
	ret       
	.size	err_flush, .-err_flush
# ----------------------
	.hidden	__stack_chk_fail_local
	.ident	"GCC: (Ubuntu 4.8.4-2ubuntu1~14.04.3) 4.8.4"
	.section	.note.GNU-stack,"",@progbits
