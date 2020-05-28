	.macosx_version_min 10, 12
	.section       __TEXT,__text,regular,pure_instructions
	.align 4, 0x90
	.globl	_local_labels
_local_labels:
	pushl     %ebp
	movl      %esp, %ebp
L00000003:
	movl      8(%ebp), %eax
	jmp       L00000003
L00000008:
	movl      $1, 4(%eax)
	movl      $2, 8(%eax)
	movl      $3, 12(%eax)
	jmp       L00000028
L0000001F:
	jmp       L00000003
L00000028:
	movl      $5, 16(%eax)
	movl      $6, 24(%eax)
	popl      %ebp
	ret       
# ----------------------

.subsections_via_symbols
