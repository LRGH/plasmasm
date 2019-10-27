	.file	"(extract)es.c"
	.text
	.globl	pari_flush
	.type	pari_flush, @function
pari_flush:
	pushl     %ebx
	subl      $8, %esp
	call      .L00000009
.L00000009:
	popl      %ebx
	addl      $_GLOBAL_OFFSET_TABLE_+1, %ebx
	movl      pariOut@GOT(%ebx), %ecx
	movl      (%ecx), %edx
	call      *8(%edx)
.L0000001B:
	addl      $8, %esp
	popl      %ebx
	ret       
	.size	pari_flush, .-pari_flush
# ----------------------
	.ident	"GCC: (GNU) 3.2.3 20030502 (Red Hat Linux 3.2.3-59)"
	.section	.note.GNU-stack,"",@progbits
