	.file	"a.c"
	.text
	.globl	main
	.type	main, @function
main:
	.cfi_startproc
	endbr64   
	pushq     %rbp
	movq      %rsp, %rbp
	movl      $10, %eax
	popq      %rbp
	ret       
	.cfi_endproc
	.size	main, .-main
# ----------------------
	.section       .note.gnu.property,"a"
.L0_LOCAL_LABEL_1:
.L1_LOCAL_LABEL_1:
.L2_LOCAL_LABEL_1:
.L3_LOCAL_LABEL_1:
	.align 8
.L4_LOCAL_LABEL_1:
# ----------------------
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
