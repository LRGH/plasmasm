	.file	"(extract)plotport.c"
	.text
	.section	.rodata.str1.1
.LC658:
	.string	"mallocing NULL object"
	.text
	.p2align 2,,3
	.type	pari_malloc, @function
pari_malloc:
	pushl	%esi
	pushl	%ebx
	testl	%eax, %eax
	pushl	%ebx
	je	.L6
	subl	$12, %esp
	movl	PARI_SIGINT_block, %ebx
	pushl	%eax
	movl	$1, PARI_SIGINT_block
	call	malloc
	addl	$16, %esp
	testl	%ebx, %ebx
	movl	%eax, %esi
	movl	%ebx, PARI_SIGINT_block
	jne	.L7
	movl	PARI_SIGINT_pending, %eax
	testl	%eax, %eax
	jne	.L10
.L7:
	testl	%esi, %esi
	je	.L11
.L8:
	movl	%esi, %eax
.L5:
	popl	%edx
	popl	%ebx
	popl	%esi
	ret
	.p2align 2,,3
.L6:
	movl	DEBUGMEM, %ecx
	testl	%ecx, %ecx
	jne	.L12
	xorl	%eax, %eax
.L13:
	popl	%edx
	popl	%ebx
	popl	%esi
	ret
	.p2align 2,,3
.L10:
	subl	$12, %esp
	movl	PARI_SIGINT_pending, %edx
	pushl	%edx
	movl	$0, PARI_SIGINT_pending
	call	raise
	addl	$16, %esp
	testl	%esi, %esi
	jne	.L8
.L11:
	subl	$12, %esp
	pushl	$28
	call	pari_err
	addl	$16, %esp
	movl	%esi, %eax
	jmp	.L5
.L12:
	subl	$8, %esp
	pushl	$.LC658
	pushl	$0
	call	pari_warn
	addl	$16, %esp
	xorl	%eax, %eax
	jmp	.L13
	.size	pari_malloc, .-pari_malloc
	.p2align 2,,3
.globl rectstring
	.type	rectstring, @function
rectstring:
	pushl	%ebp
	pushl	%edi
	pushl	%esi
	pushl	%ebx
	subl	$12, %esp
	cmpl	$17, 32(%esp)
	ja	.L1165
	movl	32(%esp), %eax
	movl	rectgraph(,%eax,4), %esi
	movl	(%esi), %edx
	testl	%edx, %edx
	je	.L1173
.L1167:
	movl	$40, %eax
	call	pari_malloc
	movl	%eax, %ebp
	movl	36(%esp), %edi
	cld
	xorl	%eax, %eax
	movl	$-1, %ecx
	repnz
	scasb
	notl	%ecx
	movl	%ecx, %eax
	leal	-1(%ecx), %edi
	call	pari_malloc
	subl	$8, %esp
	pushl	44(%esp)
	movl	%eax, %ebx
	pushl	%eax
	call	strcpy
	movl	$6, 4(%ebp)
	movl	%edi, 12(%ebp)
	movl	%ebx, 16(%ebp)
	fldl	16(%esi)
	fmull	32(%esi)
	faddl	48(%esi)
	fstpl	20(%ebp)
	fldl	24(%esi)
	fmull	40(%esi)
	faddl	56(%esi)
	fstpl	28(%ebp)
	movl	$0, 36(%ebp)
	movl	(%esi), %ecx
	addl	$16, %esp
	testl	%ecx, %ecx
	jne	.L1169
	movl	%ebp, (%esi)
	movl	%ebp, 4(%esi)
	movl	$0, (%ebp)
	movl	32(%esp), %ebx
	movl	current_color(,%ebx,4), %esi
	movl	%esi, 8(%ebp)
	addl	$12, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
	.p2align 2,,3
.L1169:
	movl	4(%esi), %edx
	movl	%ebp, (%edx)
	movl	%ebp, 4(%esi)
	movl	$0, (%ebp)
	movl	32(%esp), %ebx
	movl	current_color(,%ebx,4), %esi
	movl	%esi, 8(%ebp)
	addl	$12, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
	.p2align 2,,3
.L1165:
	pushl	$17
	pushl	36(%esp)
	pushl	$.LC678
	pushl	$5
	xorl	%esi, %esi
	call	pari_err
	movl	(%esi), %edx
	addl	$16, %esp
	testl	%edx, %edx
	jne	.L1167
	.p2align 2,,3
.L1173:
	subl	$8, %esp
	pushl	$.LC679
	pushl	$5
	call	pari_err
	addl	$16, %esp
	jmp	.L1167
	.size	rectstring, .-rectstring
	.p2align 2,,3
.globl rectpointtype
	.type	rectpointtype, @function
rectpointtype:
	pushl	%esi
	pushl	%ebx
	pushl	%eax
	movl	16(%esp), %eax
	cmpl	$-1, %eax
	movl	20(%esp), %esi
	je	.L1186
	cmpl	$17, %eax
	ja	.L1179
	movl	rectgraph(,%eax,4), %ebx
	movl	(%ebx), %eax
	testl	%eax, %eax
	je	.L1187
.L1181:
	movl	$16, %eax
	call	pari_malloc
	movl	$7, 4(%eax)
	movl	%esi, 12(%eax)
	movl	(%ebx), %ecx
	testl	%ecx, %ecx
	movl	%eax, %edx
	jne	.L1183
.L1188:
	movl	%eax, (%ebx)
.L1184:
	movl	%edx, 4(%ebx)
	movl	$0, (%edx)
	popl	%eax
	popl	%ebx
	popl	%esi
	ret
	.p2align 2,,3
.L1179:
	pushl	$17
	pushl	%eax
	pushl	$.LC678
	pushl	$5
	xorl	%ebx, %ebx
	call	pari_err
	movl	(%ebx), %eax
	addl	$16, %esp
	testl	%eax, %eax
	jne	.L1181
	.p2align 2,,3
.L1187:
	subl	$8, %esp
	pushl	$.LC679
	pushl	$5
	call	pari_err
	addl	$16, %esp
	movl	$16, %eax
	call	pari_malloc
	movl	$7, 4(%eax)
	movl	%esi, 12(%eax)
	movl	(%ebx), %ecx
	testl	%ecx, %ecx
	movl	%eax, %edx
	je	.L1188
	.p2align 2,,3
.L1183:
	movl	4(%ebx), %esi
	movl	%eax, (%esi)
	jmp	.L1184
	.p2align 2,,3
.L1186:
	movl	%esi, rectpoint_itype
	popl	%eax
	popl	%ebx
	popl	%esi
	ret
	.size	rectpointtype, .-rectpointtype
	.comm	pari_plot,52,32
	.comm	pari_psplot,52,32
	.comm	rectgraph,72,32
	.local	current_color
	.comm	current_color,72,32
	.section	.note.GNU-stack,"",@progbits
	.ident	"GCC: (GNU) 3.4.6 20060404 (Red Hat 3.4.6-11)"
