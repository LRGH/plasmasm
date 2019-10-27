	.file	"(extract)plotport.c"
	.section       .rodata.str1.1,"a",@progbits
.LC00000000.str1.1:
	.string	"mallocing NULL object"
# ----------------------
	.text
	.local	pari_malloc
	.type	pari_malloc, @function
pari_malloc:
	pushl     %esi
	pushl     %ebx
	testl     %eax, %eax
	pushl     %ebx
	je        .L00000044
.L00000007:
	subl      $12, %esp
	movl      PARI_SIGINT_block, %ebx
	pushl     %eax
	movl      $1, PARI_SIGINT_block
	call      malloc
.L00000020:
	addl      $16, %esp
	testl     %ebx, %ebx
	movl      %eax, %esi
	movl      %ebx, PARI_SIGINT_block
	jne       .L00000038
.L0000002F:
	movl      PARI_SIGINT_pending, %eax
	testl     %eax, %eax
	jne       .L00000054
.L00000038:
	testl     %esi, %esi
	je        .L00000074
.L0000003C:
	movl      %esi, %eax
.L0000003E:
	popl      %edx
	popl      %ebx
	popl      %esi
	ret       
.L00000042:
	.p2align 2
.L00000044:
	movl      DEBUGMEM, %ecx
	testl     %ecx, %ecx
	jne       .L00000085
.L0000004E:
	xorl      %eax, %eax
.L00000050:
	popl      %edx
	popl      %ebx
	popl      %esi
	ret       
.L00000054:
	subl      $12, %esp
	movl      PARI_SIGINT_pending, %edx
	pushl     %edx
	movl      $0, PARI_SIGINT_pending
	call      raise
.L0000006D:
	addl      $16, %esp
	testl     %esi, %esi
	jne       .L0000003C
.L00000074:
	subl      $12, %esp
	pushl     $28
	call      pari_err
.L0000007E:
	addl      $16, %esp
	movl      %esi, %eax
	jmp       .L0000003E
.L00000085:
	subl      $8, %esp
	pushl     $.LC00000000.str1.1
	pushl     $0
	call      pari_warn
.L00000094:
	addl      $16, %esp
	xorl      %eax, %eax
	jmp       .L00000050
	.size	pari_malloc, .-pari_malloc
# ----------------------
.L0000009B:
	.p2align 2
# ----------------------
	.globl	rectstring
	.type	rectstring, @function
rectstring:
	pushl     %ebp
	pushl     %edi
	pushl     %esi
	pushl     %ebx
	subl      $12, %esp
	cmpl      $17, 32(%esp)
	ja        .L00000178
.L000000AE:
	movl      32(%esp), %eax
	movl      rectgraph(,%eax,4), %esi
	movl      (%esi), %edx
	testl     %edx, %edx
	je        .L0000019C
.L000000C3:
	movl      $40, %eax
	call      pari_malloc
.L000000CD:
	movl      %eax, %ebp
	movl      36(%esp), %edi
	cld       
	xorl      %eax, %eax
	movl      $-1, %ecx
	repnz scasb     
	notl      %ecx
	movl      %ecx, %eax
	leal      -1(%ecx), %edi
	call      pari_malloc
.L000000E9:
	subl      $8, %esp
	pushl     44(%esp)
	movl      %eax, %ebx
	pushl     %eax
	call      strcpy
.L000000F8:
	movl      $6, 4(%ebp)
	movl      %edi, 12(%ebp)
	movl      %ebx, 16(%ebp)
	fldl      16(%esi)
	fmull     32(%esi)
	faddl     48(%esi)
	fstpl     20(%ebp)
	fldl      24(%esi)
	fmull     40(%esi)
	faddl     56(%esi)
	fstpl     28(%ebp)
	movl      $0, 36(%ebp)
	movl      (%esi), %ecx
	addl      $16, %esp
	testl     %ecx, %ecx
	jne       .L00000150
.L0000012D:
	movl      %ebp, (%esi)
	movl      %ebp, 4(%esi)
	movl      $0, (%ebp)
	movl      32(%esp), %ebx
	movl      current_color(,%ebx,4), %esi
	movl      %esi, 8(%ebp)
	addl      $12, %esp
	popl      %ebx
	popl      %esi
	popl      %edi
	popl      %ebp
	ret       
.L0000014F:
	.p2align 3
.L00000150:
	movl      4(%esi), %edx
	movl      %ebp, (%edx)
	movl      %ebp, 4(%esi)
	movl      $0, (%ebp)
	movl      32(%esp), %ebx
	movl      current_color(,%ebx,4), %esi
	movl      %esi, 8(%ebp)
	addl      $12, %esp
	popl      %ebx
	popl      %esi
	popl      %edi
	popl      %ebp
	ret       
.L00000175:
	.p2align 3
.L00000178:
	pushl     $17
	pushl     36(%esp)
	pushl     $.LC678
	pushl     $5
	xorl      %esi, %esi
	call      pari_err
.L0000018C:
	movl      (%esi), %edx
	addl      $16, %esp
	testl     %edx, %edx
	jne       .L000000C3
.L00000199:
	.p2align 2
.L0000019C:
	subl      $8, %esp
	pushl     $.LC679
	pushl     $5
	call      pari_err
.L000001AB:
	addl      $16, %esp
	jmp       .L000000C3
	.size	rectstring, .-rectstring
# ----------------------
.L000001B3:
	.p2align 2
# ----------------------
	.globl	rectpointtype
	.type	rectpointtype, @function
rectpointtype:
	pushl     %esi
	pushl     %ebx
	pushl     %eax
	movl      16(%esp), %eax
	cmpl      $-1, %eax
	movl      20(%esp), %esi
	je        .L0000025C
.L000001C8:
	cmpl      $17, %eax
	ja        .L00000208
.L000001CD:
	movl      rectgraph(,%eax,4), %ebx
	movl      (%ebx), %eax
	testl     %eax, %eax
	je        .L00000224
.L000001DA:
	movl      $16, %eax
	call      pari_malloc
.L000001E4:
	movl      $7, 4(%eax)
	movl      %esi, 12(%eax)
	movl      (%ebx), %ecx
	testl     %ecx, %ecx
	movl      %eax, %edx
	jne       .L00000254
.L000001F6:
	movl      %eax, (%ebx)
.L000001F8:
	movl      %edx, 4(%ebx)
	movl      $0, (%edx)
	popl      %eax
	popl      %ebx
	popl      %esi
	ret       
.L00000205:
	.p2align 3
.L00000208:
	pushl     $17
	pushl     %eax
	pushl     $.LC678
	pushl     $5
	xorl      %ebx, %ebx
	call      pari_err
.L00000219:
	movl      (%ebx), %eax
	addl      $16, %esp
	testl     %eax, %eax
	jne       .L000001DA
.L00000222:
	.p2align 2
.L00000224:
	subl      $8, %esp
	pushl     $.LC679
	pushl     $5
	call      pari_err
.L00000233:
	addl      $16, %esp
	movl      $16, %eax
	call      pari_malloc
.L00000240:
	movl      $7, 4(%eax)
	movl      %esi, 12(%eax)
	movl      (%ebx), %ecx
	testl     %ecx, %ecx
	movl      %eax, %edx
	je        .L000001F6
.L00000252:
	.p2align 2
.L00000254:
	movl      4(%ebx), %esi
	movl      %eax, (%esi)
	jmp       .L000001F8
.L0000025B:
	.p2align 2
.L0000025C:
	movl      %esi, rectpoint_itype
	popl      %eax
	popl      %ebx
	popl      %esi
	ret       
	.size	rectpointtype, .-rectpointtype
# ----------------------
	.local	current_color
	.comm	current_color,72,32
# ----------------------
	.comm	rectgraph,72,32
# ----------------------
	.comm	pari_plot,52,32
# ----------------------
	.comm	pari_psplot,52,32
# ----------------------
	.ident	"GCC: (GNU) 3.4.6 20060404 (Red Hat 3.4.6-11)"
	.section	.note.GNU-stack,"",@progbits
