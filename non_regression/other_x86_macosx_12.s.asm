	.section       __TEXT,__text,regular,pure_instructions
	.align 4, 0x90
	.globl	_local_labels
_local_labels:
	pushl     %ebp
	movl      %esp, %ebp
.L1_LOCAL_LABEL_1:
	movl      8(%ebp), %eax
	jmp       .L1_LOCAL_LABEL_1
	movl      $1, 4(%eax)
	movl      $2, 8(%eax)
	movl      $3, 12(%eax)
	jmp       .L1_LOCAL_LABEL_2
	jmp       .L1_LOCAL_LABEL_1
	movl      $4, 20(%eax)
.L1_LOCAL_LABEL_2:
	movl      $5, 16(%eax)
	movl      $6, 24(%eax)
	popl      %ebp
	ret       
# ----------------------

.subsections_via_symbols
