	.file	"(extract)plotport.c"
.globl XX_LOWER
	.section	.rodata
	.type	XX_LOWER, @object
	.size	XX_LOWER, 1
XX_LOWER:
	.byte	46
.globl XX_UPPER
	.type	XX_UPPER, @object
	.size	XX_UPPER, 1
XX_UPPER:
	.byte	39
.globl YY
	.type	YY, @object
	.size	YY, 1
YY:
	.byte	124
.globl BLANK
	.type	BLANK, @object
	.size	BLANK, 1
BLANK:
	.byte	32
	.text
	.p2align 2,,3
	.type	gtofp, @function
gtofp:
	pushl	%ebp
	pushl	%edi
	pushl	%esi
	pushl	%ebx
	subl	$44, %esp
	movl	%eax, %edi
	movl	(%eax), %eax
	shrl	$25, %eax
	cmpl	$8, %eax
	movl	%edx, %esi
	ja	.L240
	jmp	*.L241(,%eax,4)
	.section	.rodata
	.align 4
	.align 4
.L241:
	.long	.L240
	.long	.L16
	.long	.L45
	.long	.L240
	.long	.L23
	.long	.L240
	.long	.L52
	.long	.L240
	.long	.L239
	.text
	.p2align 2,,3
.L240:
	subl	$8, %esp
	pushl	$.LC662
	pushl	$11
	call	pari_err
	xorl	%eax, %eax
.L267:
	addl	$16, %esp
.L14:
	addl	$44, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
	.p2align 2,,3
.L239:
	subl	$8, %esp
	pushl	%edx
	pushl	%edi
	call	quadtofp
	jmp	.L267
	.p2align 2,,3
.L16:
	movl	avma, %eax
	movl	%eax, %ebx
	subl	bot, %eax
	leal	0(,%edx,4), %edx
	shrl	$2, %eax
	subl	%edx, %ebx
	cmpl	%esi, %eax
	jb	.L274
.L17:
	testl	$-16777216, %esi
	movl	%ebx, avma
	jne	.L275
.L19:
	subl	$8, %esp
	orl	$67108864, %esi
	movl	%esi, (%ebx)
	pushl	%ebx
	pushl	%edi
	call	affir
	addl	$16, %esp
.L268:
	movl	%ebx, %eax
.L282:
	addl	$44, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
	.p2align 2,,3
.L45:
	movl	avma, %ebp
	movl	%ebp, %ebx
	subl	bot, %ebp
	leal	0(,%edx,4), %ecx
	shrl	$2, %ebp
	subl	%ecx, %ebx
	cmpl	%edx, %ebp
	jb	.L276
.L46:
	testl	$-16777216, %esi
	movl	%ebx, avma
	jne	.L277
.L48:
	subl	$8, %esp
	orl	$67108864, %esi
	movl	%esi, (%ebx)
	pushl	%ebx
	pushl	%edi
	call	affrr
	addl	$16, %esp
	jmp	.L268
	.p2align 2,,3
.L23:
	movl	4(%edi), %ebx
	movl	avma, %ecx
	movl	%ebx, 40(%esp)
	movl	%ecx, %ebx
	subl	bot, %ecx
	movl	8(%edi), %ebp
	shrl	$2, %ecx
	leal	0(,%edx,4), %edi
	subl	%edi, %ebx
	cmpl	%edx, %ecx
	jb	.L278
.L24:
	testl	$-16777216, %esi
	movl	%ebx, avma
	jne	.L279
.L26:
	movl	%esi, %ecx
	orl	$67108864, %ecx
	movl	%ecx, (%ebx)
	movl	avma, %edx
	movl	%edx, 36(%esp)
	subl	$8, %esp
	pushl	%ebx
	pushl	52(%esp)
	call	affir
	movl	4(%ebp), %eax
	andl	$16777215, %eax
	addl	$16, %esp
	cmpl	$3, %eax
	jg	.L31
	je	.L280
.L242:
	subl	$8, %esp
	pushl	%ebx
	subl	$12, %esp
	pushl	8(%ebp)
	pushl	%ebx
	call	divrs
	addl	$20, %esp
	pushl	%eax
	call	affrr
	movl	4(%ebp), %esi
	addl	$16, %esp
	testl	%esi, %esi
	js	.L281
.L36:
	movl	36(%esp), %eax
.L270:
	movl	%eax, avma
	movl	%ebx, %eax
	jmp	.L282
	.p2align 2,,3
.L52:
	movl	8(%edi), %ebp
	movl	(%ebp), %eax
	shrl	$25, %eax
	decl	%eax
	movl	4(%edi), %ebx
	je	.L283
.L53:
	movl	(%ebx), %ecx
	shrl	$25, %ecx
	decl	%ecx
	je	.L284
.L96:
	movl	avma, %ebx
	movl	%ebx, %ebp
	subl	bot, %ebp
	shrl	$2, %ebp
	leal	-12(%ebx), %edx
	cmpl	$3, %ebp
	movl	%edx, 20(%esp)
	jb	.L285
.L153:
	movl	20(%esp), %eax
	movl	%eax, avma
	movl	$201326595, -12(%ebx)
	movl	4(%edi), %ebp
	movl	(%ebp), %eax
	shrl	$25, %eax
	cmpl	$2, %eax
	je	.L189
	jle	.L286
	cmpl	$4, %eax
	je	.L287
.L196:
	subl	$8, %esp
	pushl	$.LC660
	pushl	$11
	call	pari_err
	addl	$16, %esp
	xorl	%eax, %eax
.L166:
	movl	20(%esp), %ebx
	movl	%eax, 4(%ebx)
	movl	8(%edi), %edi
	movl	(%edi), %eax
	shrl	$25, %eax
	cmpl	$2, %eax
	je	.L229
	jg	.L237
	decl	%eax
	je	.L288
.L236:
	subl	$8, %esp
	pushl	$.LC660
	pushl	$11
	call	pari_err
	addl	$16, %esp
	xorl	%eax, %eax
.L206:
	movl	20(%esp), %ebx
	movl	%eax, 8(%ebx)
	addl	$44, %esp
	movl	%ebx, %eax
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
	.size	gtofp, .-gtofp
	.comm	pari_plot,52,32
	.comm	pari_psplot,52,32
	.comm	rectgraph,72,32
	.local	current_color
	.comm	current_color,72,32
	.section	.note.GNU-stack,"",@progbits
	.ident	"GCC: (GNU) 3.4.6 20060404 (Red Hat 3.4.6-11)"
