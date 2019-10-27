	.file	"parse.c"
	.text
	.p2align 4,,15
	.type	yydestruct.isra.0, @function
yydestruct.isra.0:
.LFB755:
	.cfi_startproc
	subl	$63, %eax
	cmpl	$14, %eax
	ja	.L20
	call	__x86.get_pc_thunk.cx
	addl	$_GLOBAL_OFFSET_TABLE_, %ecx
	movl	.L4@GOTOFF(%ecx,%eax,4), %eax
	addl	%ecx, %eax
	jmp	*%eax
	.section	.rodata
	.align 4
	.align 4
.L4:
	.long	.L17@GOTOFF
	.long	.L17@GOTOFF
	.long	.L17@GOTOFF
	.long	.L17@GOTOFF
	.long	.L17@GOTOFF
	.long	.L17@GOTOFF
	.long	.L17@GOTOFF
	.long	.L17@GOTOFF
	.long	.L17@GOTOFF
	.long	.L17@GOTOFF
	.long	.L20@GOTOFF
	.long	.L17@GOTOFF
	.long	.L17@GOTOFF
	.long	.L17@GOTOFF
	.long	.L17@GOTOFF
	.text
	.p2align 4,,7
	.p2align 3
.L17:
	addl	$1, pari_discarded@GOTOFF(%ecx)
.L20:
	rep ret
	.cfi_endproc
.LFE755:
	.size	yydestruct.isra.0, .-yydestruct.isra.0
	.p2align 4,,15
	.type	newnode, @function
newnode:
.LFB745:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	pushl	%edi
	.cfi_def_cfa_offset 12
	.cfi_offset 7, -12
	movl	%eax, %edi
	pushl	%esi
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushl	%ebx
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	call	__x86.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	subl	$44, %esp
	.cfi_def_cfa_offset 64
	movl	%edx, 20(%esp)
	movl	68(%esp), %ebp
	movl	4+s_node@GOTOFF(%ebx), %esi
	movl	8+s_node@GOTOFF(%ebx), %edx
	movl	s_node@GOTOFF(%ebx), %eax
	leal	1(%esi), %ecx
	cmpl	%edx, %ecx
	jle	.L23
	testl	%edx, %edx
	jne	.L27
	movl	$1, 8+s_node@GOTOFF(%ebx)
	movb	$1, %dl
.L25:
	imull	12+s_node@GOTOFF(%ebx), %edx
	movl	PARI_SIGINT_block@GOT(%ebx), %ecx
	leal	s_node@GOTOFF(%ebx,%eax), %esi
	movl	(%esi), %eax
	movl	%edx, 24(%esp)
	movl	PARI_SIGINT_block@GOT(%ebx), %edx
	movl	(%ecx), %ecx
	testl	%eax, %eax
	movl	$1, (%edx)
	movl	%ecx, 28(%esp)
	je	.L37
	movl	24(%esp), %ecx
	movl	%eax, (%esp)
	movl	%ecx, 4(%esp)
	call	realloc@PLT
	movl	28(%esp), %ecx
	movl	%eax, %edx
.L29:
	movl	PARI_SIGINT_block@GOT(%ebx), %eax
	testl	%ecx, %ecx
	movl	%ecx, (%eax)
	jne	.L30
	movl	PARI_SIGINT_pending@GOT(%ebx), %ecx
	movl	(%ecx), %eax
	testl	%eax, %eax
	jne	.L38
.L30:
	testl	%edx, %edx
	je	.L39
.L31:
	movl	%edx, (%esi)
	movl	4+s_node@GOTOFF(%ebx), %esi
	leal	1(%esi), %ecx
.L23:
	movl	pari_tree@GOT(%ebx), %edx
	leal	(%esi,%esi,2), %eax
	movl	%ecx, 4+s_node@GOTOFF(%ebx)
	sall	$3, %eax
	movl	(%edx), %ecx
	movl	%edi, (%ecx,%eax)
	movl	20(%esp), %edi
	addl	(%edx), %eax
	movl	64(%esp), %edx
	movl	%edi, 4(%eax)
	movl	%edx, 8(%eax)
	movl	0(%ebp), %edx
	movl	%edx, 12(%eax)
	movl	4(%ebp), %edx
	subl	0(%ebp), %edx
	movl	$0, 20(%eax)
	movl	%edx, 16(%eax)
	addl	$44, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	movl	%esi, %eax
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,7
	.p2align 3
.L27:
	.cfi_restore_state
	addl	%edx, %edx
	cmpl	%edx, %ecx
	jg	.L27
	movl	%edx, 8+s_node@GOTOFF(%ebx)
	jmp	.L25
	.p2align 4,,7
	.p2align 3
.L37:
	movl	24(%esp), %eax
	movl	%eax, (%esp)
	call	malloc@PLT
	movl	28(%esp), %ecx
	movl	%eax, %edx
	jmp	.L29
	.p2align 4,,7
	.p2align 3
.L38:
	movl	(%ecx), %eax
	movl	$0, (%ecx)
	movl	%edx, 24(%esp)
	movl	%eax, (%esp)
	call	raise@PLT
	movl	24(%esp), %edx
	jmp	.L30
	.p2align 4,,7
	.p2align 3
.L39:
	movl	$28, (%esp)
	movl	%edx, 24(%esp)
	call	pari_err@PLT
	movl	24(%esp), %edx
	jmp	.L31
	.cfi_endproc
.LFE745:
	.size	newnode, .-newnode
	.p2align 4,,15
	.type	yysyntax_error, @function
yysyntax_error:
.LFB752:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	pushl	%edi
	.cfi_def_cfa_offset 12
	.cfi_offset 7, -12
	pushl	%esi
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushl	%ebx
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	call	__x86.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	subl	$156, %esp
	.cfi_def_cfa_offset 176
	movl	%eax, 40(%esp)
	movl	%gs:20, %eax
	movl	%eax, 140(%esp)
	xorl	%eax, %eax
	movswl	yypact@GOTOFF(%ebx,%edx,2), %eax
	leal	54(%eax), %edx
	movl	%eax, 20(%esp)
	xorl	%eax, %eax
	cmpl	$643, %edx
	ja	.L41
	cmpl	$290, 176(%esp)
	movb	$2, %al
	ja	.L42
	movl	176(%esp), %eax
	movzbl	yytranslate@GOTOFF(%ebx,%eax), %eax
.L42:
	movl	yytname@GOTOFF(%ebx,%eax,4), %edi
	cmpb	$34, (%edi)
	je	.L132
.L43:
	movl	%edi, (%esp)
	call	strlen@PLT
	movl	%eax, 36(%esp)
.L46:
	movl	20(%esp), %ecx
	xorl	%esi, %esi
	movl	$590, 12(%esp)
	leal	yyunexpected.20788@GOTOFF(%ebx), %edx
	movl	%edi, 60(%esp)
	movl	%ecx, %eax
	negl	%eax
	testl	%ecx, %ecx
	cmovs	%eax, %esi
	movl	$61, %eax
	subl	%ecx, 12(%esp)
	movl	12(%esp), %ecx
	cmpl	$61, %ecx
	cmovle	%ecx, %eax
	movl	%eax, 12(%esp)
	leal	80(%esp), %eax
	movl	%eax, 32(%esp)
	movl	%eax, %ecx
.L52:
	addl	$1, %edx
	movzbl	-1(%edx), %eax
	addl	$1, %ecx
	testb	%al, %al
	movb	%al, -1(%ecx)
	jne	.L52
	movl	36(%esp), %eax
	cmpl	12(%esp), %esi
	movl	%eax, 16(%esp)
	jge	.L88
	movl	$1, %ebp
	movl	%ebp, %edx
	movl	%ecx, %ebp
	movl	20(%esp), %ecx
	leal	yyexpecting.20789@GOTOFF(%ebx), %edi
	movl	$0, 28(%esp)
	jmp	.L64
	.p2align 4,,7
	.p2align 3
.L54:
	addl	$1, %esi
	cmpl	12(%esp), %esi
	je	.L133
.L64:
	leal	(%ecx,%esi), %eax
	movswl	yycheck@GOTOFF(%ebx,%eax,2), %eax
	cmpl	%esi, %eax
	jne	.L54
	cmpl	$1, %esi
	je	.L54
	cmpl	$5, %edx
	je	.L134
	leal	1(%edx), %eax
	movl	%eax, 20(%esp)
	movl	yytname@GOTOFF(%ebx,%esi,4), %eax
	cmpb	$34, (%eax)
	movl	%eax, 60(%esp,%edx,4)
	je	.L135
.L56:
	movl	%eax, (%esp)
	movl	%ecx, 24(%esp)
	call	strlen@PLT
	movl	24(%esp), %ecx
.L59:
	xorl	%edx, %edx
	addl	16(%esp), %eax
	setc	%dl
	addl	$1, %edi
	orl	%edx, 28(%esp)
	movzbl	-1(%edi), %edx
	testb	%dl, %dl
	movb	%dl, -1(%ebp)
	je	.L90
.L136:
	addl	$1, %edi
	movzbl	-1(%edi), %edx
	addl	$1, %ebp
	testb	%dl, %dl
	movb	%dl, -1(%ebp)
	jne	.L136
.L90:
	addl	$1, %esi
	movl	20(%esp), %edx
	cmpl	12(%esp), %esi
	movl	%eax, 16(%esp)
	leal	yyor.20790@GOTOFF(%ebx), %edi
	jne	.L64
.L133:
	movl	%edx, %ebp
.L53:
	movl	32(%esp), %eax
.L65:
	movl	(%eax), %ecx
	addl	$4, %eax
	leal	-16843009(%ecx), %edx
	notl	%ecx
	andl	%ecx, %edx
	andl	$-2139062144, %edx
	je	.L65
	movl	%edx, %ecx
	movl	28(%esp), %edi
	shrl	$16, %ecx
	testl	$32896, %edx
	cmove	%ecx, %edx
	leal	2(%eax), %ecx
	cmove	%ecx, %eax
	addb	%dl, %dl
	sbbl	$3, %eax
	subl	32(%esp), %eax
	addl	16(%esp), %eax
	setc	%dl
	movzbl	%dl, %edx
	orl	%edx, %edi
	movl	%eax, 12(%esp)
	movl	$-1, %eax
	jne	.L41
	movl	40(%esp), %esi
	testl	%esi, %esi
	je	.L92
	movzbl	80(%esp), %edx
	xorl	%ecx, %ecx
	movl	32(%esp), %eax
	jmp	.L68
	.p2align 4,,7
	.p2align 3
.L70:
	addl	$1, %esi
	addl	$1, %eax
.L68:
	testb	%dl, %dl
	movb	%dl, (%esi)
	je	.L92
	cmpb	$37, %dl
	movzbl	1(%eax), %edx
	jne	.L70
	cmpb	$115, %dl
	jne	.L70
	cmpl	%ecx, %ebp
	jle	.L70
	movl	60(%esp,%ecx,4), %edx
	leal	1(%ecx), %edi
	movl	%edi, 16(%esp)
	cmpb	$34, (%edx)
	je	.L137
.L73:
.L81:
	addl	$1, %edx
	movzbl	-1(%edx), %ecx
	leal	1(%esi), %edi
	testb	%cl, %cl
	movb	%cl, (%esi)
	je	.L79
	movl	%edi, %esi
	jmp	.L81
	.p2align 4,,7
	.p2align 3
.L92:
	movl	12(%esp), %eax
.L41:
	movl	140(%esp), %edi
	xorl	%gs:20, %edi
	jne	.L138
	addl	$156, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,7
	.p2align 3
.L135:
	.cfi_restore_state
	movzbl	1(%eax), %edx
	movl	$0, 24(%esp)
	movl	%eax, 44(%esp)
	cmpb	$39, %dl
	je	.L127
.L140:
	jle	.L139
	cmpb	$44, %dl
	je	.L127
	cmpb	$92, %dl
	.p2align 4,,5
	jne	.L57
	cmpb	$92, 2(%eax)
	leal	2(%eax), %edx
	jne	.L127
	movl	%edx, %eax
.L61:
	movzbl	1(%eax), %edx
	addl	$1, 24(%esp)
	cmpb	$39, %dl
	jne	.L140
.L127:
	movl	44(%esp), %eax
	jmp	.L56
	.p2align 4,,7
	.p2align 3
.L139:
	cmpb	$34, %dl
	jne	.L57
	movl	24(%esp), %eax
	jmp	.L59
	.p2align 4,,7
	.p2align 3
.L57:
	addl	$1, %eax
	jmp	.L61
	.p2align 4,,7
	.p2align 3
.L132:
	movl	%edi, %edx
	movzbl	1(%edx), %eax
	movl	$0, 36(%esp)
	cmpb	$39, %al
	je	.L43
	jle	.L141
.L45:
	cmpb	$44, %al
	je	.L43
	cmpb	$92, %al
	.p2align 4,,7
	jne	.L44
	cmpb	$92, 2(%edx)
	leal	2(%edx), %eax
	jne	.L43
	movl	%eax, %edx
.L48:
	movzbl	1(%edx), %eax
	addl	$1, 36(%esp)
	cmpb	$39, %al
	je	.L43
	jg	.L45
.L141:
	cmpb	$34, %al
	je	.L46
.L44:
	addl	$1, %edx
	.p2align 4,,6
	jmp	.L48
.L142:
	cmpb	$34, %cl
	.p2align 4,,3
	jne	.L72
	addl	20(%esp), %esi
	movb	$0, (%esi)
.L79:
	movzbl	2(%eax), %edx
	addl	$2, %eax
	movl	16(%esp), %ecx
	jmp	.L68
	.p2align 4,,7
	.p2align 3
.L134:
	movl	36(%esp), %eax
	movl	$1, %ebp
	movb	$0, 107(%esp)
	movl	%eax, 16(%esp)
	jmp	.L53
.L137:
	movl	%edx, %edi
	movzbl	1(%edi), %ecx
	movl	$0, 20(%esp)
	cmpb	$39, %cl
	je	.L81
.L143:
	jle	.L142
	cmpb	$44, %cl
	je	.L81
	cmpb	$92, %cl
	.p2align 4,,5
	jne	.L72
	cmpb	$92, 2(%edi)
	leal	2(%edi), %ecx
	movl	%ecx, 24(%esp)
	jne	.L81
	movl	$92, %ecx
.L77:
	movl	20(%esp), %edi
	addl	$1, 20(%esp)
	movb	%cl, (%esi,%edi)
	movl	24(%esp), %edi
	movzbl	1(%edi), %ecx
	cmpb	$39, %cl
	jne	.L143
	jmp	.L81
	.p2align 4,,7
	.p2align 3
.L88:
	movl	$0, 28(%esp)
	movl	$1, %ebp
	jmp	.L53
.L72:
	addl	$1, %edi
	movl	%edi, 24(%esp)
	jmp	.L77
.L138:
	call	__stack_chk_fail_local
	.cfi_endproc
.LFE752:
	.size	yysyntax_error, .-yysyntax_error
	.p2align 4,,15
	.type	newopcall.part.1, @function
newopcall.part.1:
.LFB756:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	pushl	%edi
	.cfi_def_cfa_offset 12
	.cfi_offset 7, -12
	movl	%eax, %edi
	pushl	%esi
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushl	%ebx
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	call	__x86.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	subl	$44, %esp
	.cfi_def_cfa_offset 64
	movl	%edx, 20(%esp)
	movl	64(%esp), %ebp
	movl	4+s_node@GOTOFF(%ebx), %esi
	movl	8+s_node@GOTOFF(%ebx), %edx
	movl	s_node@GOTOFF(%ebx), %eax
	leal	1(%esi), %ecx
	cmpl	%edx, %ecx
	jle	.L145
	testl	%edx, %edx
	jne	.L149
	movl	$1, 8+s_node@GOTOFF(%ebx)
	movb	$1, %dl
.L147:
	imull	12+s_node@GOTOFF(%ebx), %edx
	movl	PARI_SIGINT_block@GOT(%ebx), %ecx
	leal	s_node@GOTOFF(%ebx,%eax), %esi
	movl	(%esi), %eax
	movl	%edx, 24(%esp)
	movl	PARI_SIGINT_block@GOT(%ebx), %edx
	movl	(%ecx), %ecx
	testl	%eax, %eax
	movl	$1, (%edx)
	movl	%ecx, 28(%esp)
	je	.L159
	movl	24(%esp), %ecx
	movl	%eax, (%esp)
	movl	%ecx, 4(%esp)
	call	realloc@PLT
	movl	28(%esp), %ecx
	movl	%eax, %edx
.L151:
	movl	PARI_SIGINT_block@GOT(%ebx), %eax
	testl	%ecx, %ecx
	movl	%ecx, (%eax)
	jne	.L152
	movl	PARI_SIGINT_pending@GOT(%ebx), %ecx
	movl	(%ecx), %eax
	testl	%eax, %eax
	jne	.L160
.L152:
	testl	%edx, %edx
	je	.L161
.L153:
	movl	%edx, (%esi)
	movl	4+s_node@GOTOFF(%ebx), %esi
	leal	1(%esi), %ecx
.L145:
	movl	pari_tree@GOT(%ebx), %edx
	leal	(%esi,%esi,2), %eax
	movl	%ecx, 4+s_node@GOTOFF(%ebx)
	sall	$3, %eax
	movl	(%edx), %ecx
	movl	$18, (%ecx,%eax)
	addl	(%edx), %eax
	movl	%edi, 4(%eax)
	movl	20(%esp), %edi
	movl	%edi, 8(%eax)
	movl	0(%ebp), %edx
	movl	%edx, 12(%eax)
	movl	4(%ebp), %edx
	subl	0(%ebp), %edx
	movl	$0, 20(%eax)
	movl	%edx, 16(%eax)
	addl	$44, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	movl	%esi, %eax
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,7
	.p2align 3
.L149:
	.cfi_restore_state
	addl	%edx, %edx
	cmpl	%edx, %ecx
	jg	.L149
	movl	%edx, 8+s_node@GOTOFF(%ebx)
	jmp	.L147
	.p2align 4,,7
	.p2align 3
.L159:
	movl	24(%esp), %eax
	movl	%eax, (%esp)
	call	malloc@PLT
	movl	28(%esp), %ecx
	movl	%eax, %edx
	jmp	.L151
	.p2align 4,,7
	.p2align 3
.L160:
	movl	(%ecx), %eax
	movl	$0, (%ecx)
	movl	%edx, 24(%esp)
	movl	%eax, (%esp)
	call	raise@PLT
	movl	24(%esp), %edx
	jmp	.L152
	.p2align 4,,7
	.p2align 3
.L161:
	movl	$28, (%esp)
	movl	%edx, 24(%esp)
	call	pari_err@PLT
	movl	24(%esp), %edx
	jmp	.L153
	.cfi_endproc
.LFE756:
	.size	newopcall.part.1, .-newopcall.part.1
	.p2align 4,,15
	.type	newintnode, @function
newintnode:
.LFB748:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	pushl	%edi
	.cfi_def_cfa_offset 12
	.cfi_offset 7, -12
	pushl	%esi
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movl	%eax, %esi
	pushl	%ebx
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	call	__x86.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	subl	$44, %esp
	.cfi_def_cfa_offset 64
	movl	(%eax), %ecx
	movl	4(%eax), %eax
	fnstcw	30(%esp)
	subl	%ecx, %eax
	movl	LOG10_2@GOT(%ebx), %edx
	flds	.LC42@GOTOFF(%ebx)
	fmull	(%edx)
	movzwl	30(%esp), %edx
	movb	$12, %dh
	fadds	.LC43@GOTOFF(%ebx)
	movw	%dx, 28(%esp)
	fldcw	28(%esp)
	fistpl	24(%esp)
	fldcw	30(%esp)
	movl	24(%esp), %edx
	cmpl	%edx, %eax
	jg	.L163
	movl	avma@GOT(%ebx), %edi
	movl	(%edi), %ebp
	movl	%ecx, (%esp)
	call	strtoi@PLT
	movl	%ebp, (%edi)
	movl	4(%eax), %edx
	movl	%edx, %ecx
	sarl	$30, %ecx
	testl	%ecx, %ecx
	je	.L185
	andl	$16777215, %edx
	cmpl	$3, %edx
	je	.L186
.L163:
	movl	4+s_node@GOTOFF(%ebx), %eax
	movl	8+s_node@GOTOFF(%ebx), %edx
	movl	s_node@GOTOFF(%ebx), %edi
	leal	1(%eax), %ecx
	cmpl	%edx, %ecx
	jle	.L167
	testl	%edx, %edx
	jne	.L171
	movl	$1, 8+s_node@GOTOFF(%ebx)
	movb	$1, %dl
.L169:
	leal	s_node@GOTOFF(%ebx,%edi), %ebp
	movl	PARI_SIGINT_block@GOT(%ebx), %edi
	movl	0(%ebp), %eax
	imull	12+s_node@GOTOFF(%ebx), %edx
	movl	(%edi), %ecx
	testl	%eax, %eax
	movl	$1, (%edi)
	movl	%ecx, 20(%esp)
	je	.L187
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	realloc@PLT
	movl	20(%esp), %ecx
	movl	%eax, %edx
.L173:
	testl	%ecx, %ecx
	movl	%ecx, (%edi)
	jne	.L174
	movl	PARI_SIGINT_pending@GOT(%ebx), %eax
	movl	(%eax), %ecx
	testl	%ecx, %ecx
	jne	.L188
.L174:
	testl	%edx, %edx
	je	.L189
.L175:
	movl	%edx, 0(%ebp)
	movl	4+s_node@GOTOFF(%ebx), %eax
	leal	1(%eax), %ecx
.L167:
	movl	%ecx, 4+s_node@GOTOFF(%ebx)
	movl	pari_tree@GOT(%ebx), %ecx
	leal	(%eax,%eax,2), %edx
	sall	$3, %edx
	movl	(%ecx), %edi
	movl	$13, (%edi,%edx)
	addl	(%ecx), %edx
	movl	$2, 4(%edx)
	movl	$-1, 8(%edx)
	movl	(%esi), %ecx
	movl	%ecx, 12(%edx)
	movl	4(%esi), %ecx
	subl	(%esi), %ecx
	movl	$0, 20(%edx)
	movl	%ecx, 16(%edx)
.L183:
	addl	$44, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,7
	.p2align 3
.L171:
	.cfi_restore_state
	addl	%edx, %edx
	cmpl	%edx, %ecx
	jg	.L171
	movl	%edx, 8+s_node@GOTOFF(%ebx)
	jmp	.L169
	.p2align 4,,7
	.p2align 3
.L186:
	movl	8(%eax), %edx
	testl	%edx, %edx
	js	.L163
	movl	%edx, %eax
	negl	%eax
	testl	%ecx, %ecx
	cmovle	%eax, %edx
	testl	%edx, %edx
	je	.L163
	movl	%esi, 4(%esp)
	movl	$14, %eax
	movl	$-1, (%esp)
	call	newnode
	jmp	.L183
	.p2align 4,,7
	.p2align 3
.L185:
	movl	%esi, 4(%esp)
	xorl	%edx, %edx
	movl	$14, %eax
	movl	$-1, (%esp)
	call	newnode
	addl	$44, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,7
	.p2align 3
.L188:
	.cfi_restore_state
	movl	(%eax), %ecx
	movl	$0, (%eax)
	movl	%edx, 20(%esp)
	movl	%ecx, (%esp)
	call	raise@PLT
	movl	20(%esp), %edx
	jmp	.L174
	.p2align 4,,7
	.p2align 3
.L187:
	movl	%edx, (%esp)
	call	malloc@PLT
	movl	20(%esp), %ecx
	movl	%eax, %edx
	jmp	.L173
	.p2align 4,,7
	.p2align 3
.L189:
	movl	$28, (%esp)
	movl	%edx, 20(%esp)
	call	pari_err@PLT
	movl	20(%esp), %edx
	jmp	.L175
	.cfi_endproc
.LFE748:
	.size	newintnode, .-newintnode
	.p2align 4,,15
	.type	newopcall, @function
newopcall:
.LFB747:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	pushl	%edi
	.cfi_def_cfa_offset 12
	.cfi_offset 7, -12
	pushl	%esi
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushl	%ebx
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	subl	$44, %esp
	.cfi_def_cfa_offset 64
	movl	%eax, 8(%esp)
	movl	64(%esp), %eax
	call	__x86.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	movl	68(%esp), %esi
	cmpl	$-1, %eax
	movl	%eax, 12(%esp)
	je	.L220
	leal	s_node@GOTOFF(%ebx), %eax
	movl	4+s_node@GOTOFF(%ebx), %edi
	movl	%eax, 16(%esp)
	movl	8+s_node@GOTOFF(%ebx), %eax
	movl	s_node@GOTOFF(%ebx), %ebp
	leal	1(%edi), %ecx
	cmpl	%eax, %ecx
	jle	.L192
	testl	%eax, %eax
	jne	.L196
	movl	$1, 8+s_node@GOTOFF(%ebx)
	movb	$1, %al
.L194:
	imull	12+s_node@GOTOFF(%ebx), %eax
	addl	16(%esp), %ebp
	movl	%edx, 28(%esp)
	movl	%ebp, 20(%esp)
	movl	%eax, %edi
	movl	0(%ebp), %eax
	movl	PARI_SIGINT_block@GOT(%ebx), %ebp
	testl	%eax, %eax
	movl	0(%ebp), %ecx
	movl	$1, 0(%ebp)
	movl	%ecx, 24(%esp)
	je	.L221
	movl	%edi, 4(%esp)
	movl	%eax, (%esp)
	call	realloc@PLT
	movl	28(%esp), %edx
	movl	24(%esp), %ecx
	movl	%eax, %edi
.L198:
	testl	%ecx, %ecx
	movl	%ecx, 0(%ebp)
	jne	.L199
	movl	PARI_SIGINT_pending@GOT(%ebx), %eax
	movl	(%eax), %ecx
	testl	%ecx, %ecx
	jne	.L222
.L199:
	testl	%edi, %edi
	je	.L223
.L200:
	movl	20(%esp), %eax
	movl	%edi, (%eax)
	movl	4+s_node@GOTOFF(%ebx), %edi
	leal	1(%edi), %ecx
.L192:
	movl	%ecx, 4+s_node@GOTOFF(%ebx)
	movl	pari_tree@GOT(%ebx), %ecx
	leal	(%edi,%edi,2), %eax
	sall	$3, %eax
	movl	(%ecx), %ecx
	movl	$11, (%ecx,%eax)
	movl	pari_tree@GOT(%ebx), %ecx
	movl	(%ecx), %ebp
	movl	12(%esp), %ecx
	addl	%ebp, %eax
	movl	%edx, 4(%eax)
	movl	%ecx, 8(%eax)
	movl	(%esi), %edx
	movl	%edx, 12(%eax)
	movl	4(%esi), %edx
	subl	(%esi), %edx
	movl	$0, 20(%eax)
	movl	%edx, 16(%eax)
	movl	s_node@GOTOFF(%ebx), %eax
	movl	8+s_node@GOTOFF(%ebx), %edx
	movl	%eax, 12(%esp)
	movl	4+s_node@GOTOFF(%ebx), %eax
	leal	1(%eax), %ecx
	cmpl	%edx, %ecx
	jle	.L201
	testl	%edx, %edx
	jne	.L205
	movl	$1, 8+s_node@GOTOFF(%ebx)
	movb	$1, %dl
.L203:
	movl	12(%esp), %eax
	addl	16(%esp), %eax
	movl	PARI_SIGINT_block@GOT(%ebx), %ebp
	imull	12+s_node@GOTOFF(%ebx), %edx
	movl	%eax, 12(%esp)
	movl	(%eax), %eax
	movl	0(%ebp), %ecx
	movl	$1, 0(%ebp)
	testl	%eax, %eax
	movl	%ecx, 16(%esp)
	je	.L224
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	realloc@PLT
	movl	16(%esp), %ecx
	movl	%eax, %edx
.L207:
	testl	%ecx, %ecx
	movl	%ecx, 0(%ebp)
	jne	.L208
	movl	PARI_SIGINT_pending@GOT(%ebx), %ecx
	movl	(%ecx), %eax
	testl	%eax, %eax
	jne	.L225
.L208:
	testl	%edx, %edx
	je	.L226
.L209:
	movl	12(%esp), %eax
	movl	%edx, (%eax)
	movl	pari_tree@GOT(%ebx), %edx
	movl	4+s_node@GOTOFF(%ebx), %eax
	movl	(%edx), %ebp
	leal	1(%eax), %ecx
.L201:
	movl	%ecx, 4+s_node@GOTOFF(%ebx)
	movl	pari_tree@GOT(%ebx), %ecx
	leal	(%eax,%eax,2), %edx
	sall	$3, %edx
	movl	$18, 0(%ebp,%edx)
	addl	(%ecx), %edx
	movl	8(%esp), %ecx
	movl	%edi, 8(%edx)
	movl	%ecx, 4(%edx)
	movl	(%esi), %ecx
	movl	%ecx, 12(%edx)
	movl	4(%esi), %ecx
	subl	(%esi), %ecx
	movl	$0, 20(%edx)
	movl	%ecx, 16(%edx)
	addl	$44, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,7
	.p2align 3
.L205:
	.cfi_restore_state
	addl	%edx, %edx
	cmpl	%edx, %ecx
	jg	.L205
	movl	%edx, 8+s_node@GOTOFF(%ebx)
	jmp	.L203
	.p2align 4,,7
	.p2align 3
.L196:
	addl	%eax, %eax
	cmpl	%eax, %ecx
	jg	.L196
	movl	%eax, 8+s_node@GOTOFF(%ebx)
	jmp	.L194
	.p2align 4,,7
	.p2align 3
.L222:
	movl	(%eax), %ecx
	movl	$0, (%eax)
	movl	%edx, 24(%esp)
	movl	%ecx, (%esp)
	call	raise@PLT
	movl	24(%esp), %edx
	jmp	.L199
	.p2align 4,,7
	.p2align 3
.L225:
	movl	(%ecx), %eax
	movl	$0, (%ecx)
	movl	%edx, 16(%esp)
	movl	%eax, (%esp)
	call	raise@PLT
	movl	16(%esp), %edx
	jmp	.L208
	.p2align 4,,7
	.p2align 3
.L220:
	movl	%edx, 64(%esp)
	movl	8(%esp), %edx
	addl	$44, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	movl	$18, %eax
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	jmp	newnode
	.p2align 4,,7
	.p2align 3
.L221:
	.cfi_restore_state
	movl	%edi, (%esp)
	call	malloc@PLT
	movl	24(%esp), %ecx
	movl	28(%esp), %edx
	movl	%eax, %edi
	jmp	.L198
	.p2align 4,,7
	.p2align 3
.L224:
	movl	%edx, (%esp)
	call	malloc@PLT
	movl	16(%esp), %ecx
	movl	%eax, %edx
	jmp	.L207
	.p2align 4,,7
	.p2align 3
.L223:
	movl	$28, (%esp)
	movl	%edx, 24(%esp)
	call	pari_err@PLT
	movl	24(%esp), %edx
	jmp	.L200
	.p2align 4,,7
	.p2align 3
.L226:
	movl	$28, (%esp)
	movl	%edx, 16(%esp)
	call	pari_err@PLT
	movl	16(%esp), %edx
	jmp	.L209
	.cfi_endproc
.LFE747:
	.size	newopcall, .-newopcall
	.p2align 4,,15
	.globl	pari_close_parser
	.type	pari_close_parser, @function
pari_close_parser:
.LFB737:
	.cfi_startproc
	pushl	%ebx
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	call	__x86.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	subl	$24, %esp
	.cfi_def_cfa_offset 32
	movl	s_node@GOTOFF(%ebx), %eax
	movl	s_node@GOTOFF(%eax,%ebx), %eax
	testl	%eax, %eax
	je	.L227
	movl	%eax, (%esp)
	call	free@PLT
.L227:
	addl	$24, %esp
	.cfi_def_cfa_offset 8
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
.LFE737:
	.size	pari_close_parser, .-pari_close_parser
	.p2align 4,,15
	.globl	compile_err
	.type	compile_err, @function
compile_err:
.LFB739:
	.cfi_startproc
	pushl	%ebx
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	call	__x86.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	subl	$24, %esp
	.cfi_def_cfa_offset 32
	movl	$1, (%esp)
	movl	pari_lex_start@GOTOFF(%ebx), %eax
	movl	%eax, 12(%esp)
	movl	36(%esp), %eax
	movl	%eax, 8(%esp)
	movl	32(%esp), %eax
	movl	%eax, 4(%esp)
	call	pari_err@PLT
	addl	$24, %esp
	.cfi_def_cfa_offset 8
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
.LFE739:
	.size	compile_err, .-compile_err
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC44:
	.string	"variable name expected"
	.text
	.p2align 4,,15
	.globl	compile_varerr
	.type	compile_varerr, @function
compile_varerr:
.LFB740:
	.cfi_startproc
	pushl	%ebx
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	call	__x86.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	subl	$24, %esp
	.cfi_def_cfa_offset 32
	movl	$1, (%esp)
	movl	pari_lex_start@GOTOFF(%ebx), %eax
	movl	%eax, 12(%esp)
	movl	32(%esp), %eax
	movl	%eax, 8(%esp)
	leal	.LC44@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	call	pari_err@PLT
	addl	$24, %esp
	.cfi_def_cfa_offset 8
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
.LFE740:
	.size	compile_varerr, .-compile_varerr
	.p2align 4,,15
	.globl	parsestate_reset
	.type	parsestate_reset, @function
parsestate_reset:
.LFB741:
	.cfi_startproc
	call	__x86.get_pc_thunk.cx
	addl	$_GLOBAL_OFFSET_TABLE_, %ecx
	movl	$40, 4+s_node@GOTOFF(%ecx)
	movl	$0, pari_lex_start@GOTOFF(%ecx)
	movl	$0, pari_unused_chars@GOTOFF(%ecx)
	movl	$1, pari_once@GOTOFF(%ecx)
	movl	$0, pari_discarded@GOTOFF(%ecx)
	movl	$0, pari_lasterror@GOTOFF(%ecx)
	ret
	.cfi_endproc
.LFE741:
	.size	parsestate_reset, .-parsestate_reset
	.section	.rodata.str1.1
.LC0:
	.string	"_||_"
.LC1:
	.string	"_&&_"
.LC2:
	.string	"_===_"
.LC3:
	.string	"_==_"
.LC4:
	.string	"_!=_"
.LC5:
	.string	"_>=_"
.LC6:
	.string	"_>_"
.LC7:
	.string	"_<=_"
.LC8:
	.string	"_<_"
.LC9:
	.string	"_-_"
.LC10:
	.string	"_+_"
.LC11:
	.string	"_<<_"
.LC12:
	.string	"_>>_"
.LC13:
	.string	"_%_"
.LC14:
	.string	"_\\/_"
.LC15:
	.string	"_\\_"
.LC16:
	.string	"_/_"
.LC17:
	.string	"_*_"
.LC18:
	.string	"_^_"
.LC19:
	.string	"__"
.LC20:
	.string	"_=_"
.LC21:
	.string	"_--"
.LC22:
	.string	"_++"
.LC23:
	.string	"_-=_"
.LC24:
	.string	"_+=_"
.LC25:
	.string	"_<<=_"
.LC26:
	.string	"_>>=_"
.LC27:
	.string	"_%=_"
.LC28:
	.string	"_\\/=_"
.LC29:
	.string	"_\\=_"
.LC30:
	.string	"_/=_"
.LC31:
	.string	"_*=_"
.LC32:
	.string	"+_"
.LC33:
	.string	"-_"
.LC34:
	.string	"!_"
.LC35:
	.string	"_!"
.LC36:
	.string	"_'"
.LC37:
	.string	"_~"
.LC38:
	.string	"%"
.LC39:
	.string	"#_"
.LC40:
	.string	""
	.data
	.align 32
.LC45:
	.long	.LC0
	.long	.LC1
	.long	.LC2
	.long	.LC3
	.long	.LC4
	.long	.LC5
	.long	.LC6
	.long	.LC7
	.long	.LC8
	.long	.LC9
	.long	.LC10
	.long	.LC11
	.long	.LC12
	.long	.LC13
	.long	.LC14
	.long	.LC15
	.long	.LC16
	.long	.LC17
	.long	.LC18
	.long	.LC19
	.long	.LC20
	.long	.LC21
	.long	.LC22
	.long	.LC23
	.long	.LC24
	.long	.LC25
	.long	.LC26
	.long	.LC27
	.long	.LC28
	.long	.LC29
	.long	.LC30
	.long	.LC31
	.long	.LC32
	.long	.LC33
	.long	.LC34
	.long	.LC35
	.long	.LC36
	.long	.LC37
	.long	.LC38
	.long	.LC39
	.long	.LC40
	.long	.LC40
	.text
	.p2align 4,,15
	.globl	pari_init_parser
	.type	pari_init_parser, @function
pari_init_parser:
.LFB736:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	$42, %ecx
	pushl	%edi
	.cfi_def_cfa_offset 12
	.cfi_offset 7, -12
	pushl	%esi
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushl	%ebx
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	call	__x86.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	subl	$204, %esp
	.cfi_def_cfa_offset 224
	leal	24(%esp), %ebp
	movl	%ebp, %edi
	leal	.LC45@GOTOFF(%ebx), %esi
	rep movsl
	movl	pari_tree@GOT(%ebx), %edi
	leal	s_node@GOTOFF(%ebx), %eax
	movl	PARI_SIGINT_block@GOT(%ebx), %esi
	movl	$0, 4+s_node@GOTOFF(%ebx)
	movl	$24, 12+s_node@GOTOFF(%ebx)
	subl	%eax, %edi
	movl	pari_tree@GOT(%ebx), %eax
	movl	(%esi), %edx
	movl	$1, (%esi)
	movl	%edi, s_node@GOTOFF(%ebx)
	movl	$0, (%eax)
	movl	$960, (%esp)
	movl	%edx, 12(%esp)
	movl	$40, 8+s_node@GOTOFF(%ebx)
	call	malloc@PLT
	movl	12(%esp), %edx
	testl	%edx, %edx
	movl	%edx, (%esi)
	movl	%eax, %ecx
	jne	.L240
	movl	PARI_SIGINT_pending@GOT(%ebx), %eax
	movl	(%eax), %edx
	testl	%edx, %edx
	jne	.L248
.L240:
	testl	%ecx, %ecx
	je	.L249
.L241:
	movl	pari_tree@GOT(%ebx), %eax
	xorl	%esi, %esi
	movl	%ecx, (%eax)
	call	parsestate_reset@PLT
	movl	pari_tree@GOT(%ebx), %eax
	movl	(%eax), %ecx
	jmp	.L243
	.p2align 4,,7
	.p2align 3
.L250:
	movl	%edi, %ecx
.L243:
	leal	(%esi,%esi,2), %eax
	movl	$13, (%ecx,%eax,8)
	movl	pari_tree@GOT(%ebx), %ecx
	movl	(%ecx), %edi
	leal	(%edi,%eax,8), %edx
	movl	0(%ebp,%esi,4), %eax
	addl	$1, %esi
	movl	$5, 4(%edx)
	movl	$-1, 8(%edx)
	movl	%edx, 12(%esp)
	movl	%eax, 12(%edx)
	movl	%eax, (%esp)
	call	strlen@PLT
	movl	12(%esp), %edx
	cmpl	$40, %esi
	movl	$0, 20(%edx)
	movl	%eax, 16(%edx)
	jne	.L250
	addl	$204, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
.L248:
	.cfi_restore_state
	movl	(%eax), %edx
	movl	$0, (%eax)
	movl	%ecx, 12(%esp)
	movl	%edx, (%esp)
	call	raise@PLT
	movl	12(%esp), %ecx
	jmp	.L240
.L249:
	movl	$28, (%esp)
	movl	%ecx, 12(%esp)
	call	pari_err@PLT
	movl	12(%esp), %ecx
	jmp	.L241
	.cfi_endproc
.LFE736:
	.size	pari_init_parser, .-pari_init_parser
	.p2align 4,,15
	.globl	parsestate_save
	.type	parsestate_save, @function
parsestate_save:
.LFB742:
	.cfi_startproc
	call	__x86.get_pc_thunk.cx
	addl	$_GLOBAL_OFFSET_TABLE_, %ecx
	movl	4(%esp), %eax
	movl	4+s_node@GOTOFF(%ecx), %edx
	movl	%edx, (%eax)
	movl	pari_lex_start@GOTOFF(%ecx), %edx
	movl	%edx, 12(%eax)
	movl	pari_unused_chars@GOTOFF(%ecx), %edx
	movl	%edx, 16(%eax)
	movl	pari_once@GOTOFF(%ecx), %edx
	movl	%edx, 4(%eax)
	movl	pari_discarded@GOTOFF(%ecx), %edx
	movl	%edx, 8(%eax)
	movl	pari_lasterror@GOTOFF(%ecx), %edx
	movl	%edx, 20(%eax)
	ret
	.cfi_endproc
.LFE742:
	.size	parsestate_save, .-parsestate_save
	.p2align 4,,15
	.globl	parsestate_restore
	.type	parsestate_restore, @function
parsestate_restore:
.LFB743:
	.cfi_startproc
	movl	4(%esp), %eax
	call	__x86.get_pc_thunk.cx
	addl	$_GLOBAL_OFFSET_TABLE_, %ecx
	movl	(%eax), %edx
	movl	%edx, 4+s_node@GOTOFF(%ecx)
	movl	12(%eax), %edx
	movl	%edx, pari_lex_start@GOTOFF(%ecx)
	movl	16(%eax), %edx
	movl	%edx, pari_unused_chars@GOTOFF(%ecx)
	movl	4(%eax), %edx
	movl	%edx, pari_once@GOTOFF(%ecx)
	movl	8(%eax), %edx
	movl	20(%eax), %eax
	movl	%edx, pari_discarded@GOTOFF(%ecx)
	movl	%eax, pari_lasterror@GOTOFF(%ecx)
	ret
	.cfi_endproc
.LFE743:
	.size	parsestate_restore, .-parsestate_restore
	.section	.rodata.str1.1
.LC46:
	.string	"syntax error"
.LC47:
	.string	"memory exhausted"
	.text
	.p2align 4,,15
	.globl	pari_parse
	.type	pari_parse, @function
pari_parse:
.LFB754:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	pushl	%edi
	.cfi_def_cfa_offset 12
	.cfi_offset 7, -12
	pushl	%esi
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushl	%ebx
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	subl	$3068, %esp
	.cfi_def_cfa_offset 3088
	movl	3088(%esp), %eax
	leal	1324(%esp), %edi
	movl	%gs:20, %ecx
	movl	%ecx, 3052(%esp)
	xorl	%ecx, %ecx
	call	__x86.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	movl	$128, 84(%esp)
	movl	%eax, 88(%esp)
	movl	(%eax), %eax
	movl	$0, 52(%esp)
	movl	$200, 44(%esp)
	movl	%ecx, %esi
	movl	%eax, 112(%esp)
	movl	112(%esp), %edx
	movl	%eax, 108(%esp)
	movl	108(%esp), %eax
	movl	%edi, 60(%esp)
	movl	$0, 32(%esp)
	movl	%edx, 1328(%esp)
	movl	%eax, 1324(%esp)
	leal	2924(%esp), %eax
	movl	%eax, 76(%esp)
	movl	%eax, 72(%esp)
	leal	524(%esp), %eax
	movl	%eax, 36(%esp)
	movl	%eax, 56(%esp)
	leal	124(%esp), %eax
	movl	%eax, 64(%esp)
	movl	%eax, %ebp
	movl	%eax, %ecx
	movl	%eax, 24(%esp)
	movl	$-2, 48(%esp)
	movl	%edi, 40(%esp)
.L256:
	movl	44(%esp), %eax
	movw	%si, 0(%ebp)
	leal	-2(%eax,%eax), %eax
	leal	(%ecx,%eax), %edx
	cmpl	%edx, %ebp
	jb	.L258
	movl	%ebp, %edx
	subl	%ecx, %edx
	sarl	%edx
	cmpl	$9999, 44(%esp)
	leal	1(%edx), %ecx
	movl	%ecx, 28(%esp)
	ja	.L259
	addl	$2, %eax
	movl	$10000, %ecx
	cmpl	$10000, %eax
	cmova	%ecx, %eax
	movl	%eax, 44(%esp)
	addl	$1, %eax
	imull	$14, %eax, %eax
	movl	%eax, (%esp)
	call	malloc@PLT
	testl	%eax, %eax
	movl	%eax, %edx
	je	.L259
	movl	28(%esp), %eax
	movl	24(%esp), %edi
	movl	%edx, (%esp)
	movl	%edx, 36(%esp)
	leal	(%eax,%eax), %ebp
	movl	%edi, 4(%esp)
	movl	%ebp, 8(%esp)
	call	memcpy@PLT
	movl	44(%esp), %edx
	leal	(%edx,%edx), %ecx
	movl	36(%esp), %edx
	movl	%ecx, 68(%esp)
	leal	7(%ecx), %edi
	movl	28(%esp), %ecx
	andl	$-8, %edi
	addl	%edx, %edi
	movl	%edx, 80(%esp)
	leal	0(,%ecx,4), %edx
	movl	%edx, 36(%esp)
	movl	%edx, 8(%esp)
	movl	56(%esp), %edx
	movl	%edi, (%esp)
	movl	%edx, 4(%esp)
	call	memcpy@PLT
	movl	28(%esp), %ecx
	leal	0(,%ecx,8), %edx
	movl	44(%esp), %ecx
	movl	%edx, 28(%esp)
	movl	%edx, 8(%esp)
	movl	60(%esp), %edx
	leal	(%edi,%ecx,4), %ecx
	movl	%ecx, (%esp)
	movl	%edx, 4(%esp)
	movl	%ecx, 40(%esp)
	call	memcpy@PLT
	movl	24(%esp), %eax
	cmpl	64(%esp), %eax
	movl	40(%esp), %ecx
	movl	80(%esp), %edx
	je	.L262
	movl	%eax, (%esp)
	movl	%edx, 40(%esp)
	movl	%ecx, 24(%esp)
	call	free@PLT
	movl	40(%esp), %edx
	movl	24(%esp), %ecx
.L262:
	movl	36(%esp), %eax
	leal	-2(%edx,%ebp), %ebp
	leal	-4(%edi,%eax), %eax
	movl	%eax, 36(%esp)
	movl	28(%esp), %eax
	leal	-8(%ecx,%eax), %eax
	movl	%eax, 40(%esp)
	movl	68(%esp), %eax
	leal	-2(%edx,%eax), %eax
	cmpl	%eax, %ebp
	jnb	.L434
	movl	%ecx, 60(%esp)
	movl	%edi, 56(%esp)
	movl	%edx, 24(%esp)
.L258:
	cmpl	$44, %esi
	je	.L435
.L264:
	movzwl	yypact@GOTOFF(%ebx,%esi,2), %eax
	movswl	%ax, %edi
	cmpl	$-55, %edi
	movw	%ax, 68(%esp)
	je	.L265
	cmpl	$-2, 48(%esp)
	je	.L487
.L266:
	movl	48(%esp), %eax
	testl	%eax, %eax
	jle	.L436
	cmpl	$290, %eax
	movl	$2, 52(%esp)
	ja	.L267
	movzbl	yytranslate@GOTOFF(%ebx,%eax), %eax
	movl	%eax, 52(%esp)
.L267:
	movl	52(%esp), %eax
	leal	(%edi,%eax), %edx
	cmpl	$589, %edx
	ja	.L265
	movswl	yycheck@GOTOFF(%ebx,%edx,2), %ecx
	cmpl	%eax, %ecx
	je	.L488
.L265:
	movzbl	yydefact@GOTOFF(%ebx,%esi), %eax
	testl	%eax, %eax
	movl	%eax, 28(%esp)
	je	.L269
.L270:
	movzbl	yyr2@GOTOFF(%ebx,%eax), %edx
	movl	$1, %eax
	movl	36(%esp), %ecx
	subl	%edx, %eax
	testl	%edx, %edx
	movl	(%ecx,%eax,4), %eax
	jne	.L489
	movl	40(%esp), %ecx
	xorl	%esi, %esi
	movl	4(%ecx), %ecx
.L273:
	movl	%ecx, 116(%esp)
	movl	40(%esp), %ecx
	movl	4(%ecx), %ecx
	movl	%ecx, 120(%esp)
	movl	28(%esp), %ecx
	cmpl	$96, %ecx
	ja	.L274
	movl	.L276@GOTOFF(%ebx,%ecx,4), %ecx
	addl	%ebx, %ecx
	jmp	*%ecx
	.section	.rodata
	.align 4
	.align 4
.L276:
	.long	.L274@GOTOFF
	.long	.L274@GOTOFF
	.long	.L363@GOTOFF
	.long	.L277@GOTOFF
	.long	.L278@GOTOFF
	.long	.L363@GOTOFF
	.long	.L280@GOTOFF
	.long	.L281@GOTOFF
	.long	.L282@GOTOFF
	.long	.L283@GOTOFF
	.long	.L284@GOTOFF
	.long	.L285@GOTOFF
	.long	.L286@GOTOFF
	.long	.L287@GOTOFF
	.long	.L288@GOTOFF
	.long	.L289@GOTOFF
	.long	.L290@GOTOFF
	.long	.L291@GOTOFF
	.long	.L293@GOTOFF
	.long	.L293@GOTOFF
	.long	.L294@GOTOFF
	.long	.L295@GOTOFF
	.long	.L296@GOTOFF
	.long	.L363@GOTOFF
	.long	.L298@GOTOFF
	.long	.L363@GOTOFF
	.long	.L363@GOTOFF
	.long	.L363@GOTOFF
	.long	.L363@GOTOFF
	.long	.L303@GOTOFF
	.long	.L304@GOTOFF
	.long	.L305@GOTOFF
	.long	.L306@GOTOFF
	.long	.L307@GOTOFF
	.long	.L308@GOTOFF
	.long	.L309@GOTOFF
	.long	.L310@GOTOFF
	.long	.L311@GOTOFF
	.long	.L312@GOTOFF
	.long	.L313@GOTOFF
	.long	.L314@GOTOFF
	.long	.L315@GOTOFF
	.long	.L316@GOTOFF
	.long	.L318@GOTOFF
	.long	.L318@GOTOFF
	.long	.L320@GOTOFF
	.long	.L320@GOTOFF
	.long	.L321@GOTOFF
	.long	.L322@GOTOFF
	.long	.L323@GOTOFF
	.long	.L324@GOTOFF
	.long	.L325@GOTOFF
	.long	.L326@GOTOFF
	.long	.L327@GOTOFF
	.long	.L328@GOTOFF
	.long	.L329@GOTOFF
	.long	.L330@GOTOFF
	.long	.L331@GOTOFF
	.long	.L332@GOTOFF
	.long	.L333@GOTOFF
	.long	.L334@GOTOFF
	.long	.L335@GOTOFF
	.long	.L336@GOTOFF
	.long	.L363@GOTOFF
	.long	.L338@GOTOFF
	.long	.L339@GOTOFF
	.long	.L340@GOTOFF
	.long	.L341@GOTOFF
	.long	.L342@GOTOFF
	.long	.L348@GOTOFF
	.long	.L363@GOTOFF
	.long	.L345@GOTOFF
	.long	.L346@GOTOFF
	.long	.L347@GOTOFF
	.long	.L348@GOTOFF
	.long	.L349@GOTOFF
	.long	.L363@GOTOFF
	.long	.L351@GOTOFF
	.long	.L353@GOTOFF
	.long	.L353@GOTOFF
	.long	.L354@GOTOFF
	.long	.L355@GOTOFF
	.long	.L356@GOTOFF
	.long	.L357@GOTOFF
	.long	.L486@GOTOFF
	.long	.L363@GOTOFF
	.long	.L360@GOTOFF
	.long	.L361@GOTOFF
	.long	.L362@GOTOFF
	.long	.L363@GOTOFF
	.long	.L364@GOTOFF
	.long	.L365@GOTOFF
	.long	.L366@GOTOFF
	.long	.L367@GOTOFF
	.long	.L368@GOTOFF
	.long	.L370@GOTOFF
	.long	.L370@GOTOFF
	.text
	.p2align 4,,7
	.p2align 3
.L488:
	movswl	yytable@GOTOFF(%ebx,%edx,2), %eax
	testl	%eax, %eax
	jg	.L268
	cmpl	$-91, %eax
	jne	.L490
.L438:
	movl	%ecx, 52(%esp)
	.p2align 4,,7
	.p2align 3
.L269:
	movl	32(%esp), %eax
	testl	%eax, %eax
	je	.L491
	cmpl	$3, 32(%esp)
	movl	108(%esp), %edx
	movswl	68(%esp), %edi
	je	.L492
.L383:
	movl	pari_discarded@GOTOFF(%ebx), %eax
	movl	%edx, 28(%esp)
	movl	36(%esp), %ecx
	movl	40(%esp), %edx
	movl	%eax, 32(%esp)
	.p2align 4,,7
	.p2align 3
.L405:
	cmpl	$-55, %edi
	je	.L386
	addl	$1, %edi
	cmpl	$589, %edi
	ja	.L386
	cmpw	$1, yycheck@GOTOFF(%ebx,%edi,2)
	je	.L493
.L386:
	cmpl	24(%esp), %ebp
	je	.L494
	movzbl	yystos@GOTOFF(%ebx,%esi), %esi
	movl	(%edx), %eax
	subl	$63, %esi
	movl	%eax, 28(%esp)
	movl	%esi, %eax
	cmpb	$14, %al
	ja	.L389
	movzbl	%al, %esi
	movl	.L391@GOTOFF(%ebx,%esi,4), %eax
	leal	(%eax,%ebx), %esi
	jmp	*%esi
	.section	.rodata
	.align 4
	.align 4
.L391:
	.long	.L404@GOTOFF
	.long	.L404@GOTOFF
	.long	.L404@GOTOFF
	.long	.L404@GOTOFF
	.long	.L404@GOTOFF
	.long	.L404@GOTOFF
	.long	.L404@GOTOFF
	.long	.L404@GOTOFF
	.long	.L404@GOTOFF
	.long	.L404@GOTOFF
	.long	.L389@GOTOFF
	.long	.L404@GOTOFF
	.long	.L404@GOTOFF
	.long	.L404@GOTOFF
	.long	.L404@GOTOFF
	.text
	.p2align 4,,7
	.p2align 3
.L404:
	addl	$1, 32(%esp)
.L389:
	subl	$2, %ebp
	movswl	0(%ebp), %esi
	subl	$4, %ecx
	subl	$8, %edx
	movswl	yypact@GOTOFF(%ebx,%esi,2), %edi
	jmp	.L405
	.p2align 4,,7
	.p2align 3
.L493:
	movswl	yytable@GOTOFF(%ebx,%edi,2), %edi
	testl	%edi, %edi
	jle	.L386
	movl	32(%esp), %eax
	movl	%edx, %esi
	movl	%ecx, 36(%esp)
	movl	%edi, %ecx
	movl	%esi, %edi
	movl	36(%esp), %esi
	movl	%edx, 40(%esp)
	movl	28(%esp), %edx
	movl	%eax, pari_discarded@GOTOFF(%ebx)
	movl	104(%esp), %eax
	addl	$4, 36(%esp)
	addl	$8, 40(%esp)
	movl	%eax, 4(%esi)
	movl	112(%esp), %eax
	movl	%ecx, %esi
	movl	%edx, 116(%esp)
	movl	$3, 32(%esp)
	movl	%eax, 120(%esp)
	movl	116(%esp), %eax
	movl	120(%esp), %edx
	movl	%eax, 8(%edi)
	movl	%edx, 12(%edi)
	jmp	.L257
	.p2align 4,,7
	.p2align 3
.L494:
	movl	32(%esp), %eax
	xorl	%edi, %edi
	movl	$1, %esi
	movl	%eax, pari_discarded@GOTOFF(%ebx)
.L263:
.L408:
	cmpl	$-2, 48(%esp)
	je	.L409
.L385:
	movl	52(%esp), %eax
	call	yydestruct.isra.0
.L409:
	leal	0(%ebp,%edi), %edx
	movl	pari_discarded@GOTOFF(%ebx), %ecx
	cmpl	24(%esp), %edx
	movl	24(%esp), %edi
	je	.L430
	.p2align 4,,7
	.p2align 3
.L468:
	movswl	(%edx), %eax
	movzbl	yystos@GOTOFF(%ebx,%eax), %eax
	subl	$63, %eax
	cmpb	$14, %al
	ja	.L413
	movzbl	%al, %eax
	movl	.L415@GOTOFF(%ebx,%eax,4), %eax
	addl	%ebx, %eax
	jmp	*%eax
	.section	.rodata
	.align 4
	.align 4
.L415:
	.long	.L428@GOTOFF
	.long	.L428@GOTOFF
	.long	.L428@GOTOFF
	.long	.L428@GOTOFF
	.long	.L428@GOTOFF
	.long	.L428@GOTOFF
	.long	.L428@GOTOFF
	.long	.L428@GOTOFF
	.long	.L428@GOTOFF
	.long	.L428@GOTOFF
	.long	.L413@GOTOFF
	.long	.L428@GOTOFF
	.long	.L428@GOTOFF
	.long	.L428@GOTOFF
	.long	.L428@GOTOFF
	.text
	.p2align 4,,7
	.p2align 3
.L428:
	addl	$1, %ecx
.L413:
	subl	$2, %edx
	cmpl	%edi, %edx
	jne	.L468
	movl	%ecx, pari_discarded@GOTOFF(%ebx)
.L430:
	movl	64(%esp), %eax
	cmpl	%eax, 24(%esp)
	je	.L412
	movl	24(%esp), %eax
	movl	%eax, (%esp)
	call	free@PLT
.L412:
	movl	76(%esp), %ecx
	movl	72(%esp), %eax
	cmpl	%ecx, %eax
	je	.L432
	movl	%eax, (%esp)
	call	free@PLT
.L432:
	movl	3052(%esp), %ecx
	xorl	%gs:20, %ecx
	movl	%esi, %eax
	jne	.L495
	addl	$3068, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,7
	.p2align 3
.L489:
	.cfi_restore_state
	movl	40(%esp), %edi
	movl	%edx, %ecx
	movl	%edx, %esi
	negl	%ecx
	movl	8(%edi,%ecx,8), %ecx
	jmp	.L273
	.p2align 4,,7
	.p2align 3
.L492:
	cmpl	$0, 48(%esp)
	jle	.L496
	movl	52(%esp), %eax
	movl	%edx, 28(%esp)
	call	yydestruct.isra.0
	movl	28(%esp), %edx
	movl	$-2, 48(%esp)
	jmp	.L383
.L368:
	movl	36(%esp), %eax
	movl	$4, %edx
	movl	(%eax), %ecx
	movl	-16(%eax), %eax
	movl	$-1, (%esp)
	movl	%ecx, %edi
	movl	40(%esp), %ecx
	movl	%eax, 68(%esp)
	subl	$16, %ecx
	movl	%ecx, 4(%esp)
	movl	%ecx, 80(%esp)
.L485:
	movl	$13, %eax
	call	newnode
	movl	80(%esp), %ecx
	movl	$-1, (%esp)
	movl	%ecx, 4(%esp)
	movl	%eax, %edx
	movl	$16, %eax
	call	newnode
	movl	68(%esp), %edx
	leal	116(%esp), %ecx
	movl	%ecx, 4(%esp)
	movl	%edi, (%esp)
	movl	%ecx, 92(%esp)
	movl	%eax, 80(%esp)
	movl	$19, %eax
	call	newnode
	movl	92(%esp), %ecx
	movl	80(%esp), %edx
	movl	%ecx, 4(%esp)
	movl	%eax, (%esp)
	movl	$4, %eax
	call	newnode
	.p2align 4,,7
	.p2align 3
.L274:
	movl	36(%esp), %ecx
	leal	0(,%esi,4), %edx
	movl	40(%esp), %edi
	subl	%edx, %ecx
	leal	(%esi,%esi), %edx
	subl	%edx, %ebp
	leal	0(,%esi,8), %edx
	subl	%edx, %edi
	movl	%edi, %edx
	movl	%eax, 4(%ecx)
	leal	4(%ecx), %edi
	movl	116(%esp), %esi
	leal	8(%edx), %eax
	movl	%edi, 36(%esp)
	movl	120(%esp), %edi
	movl	%eax, 40(%esp)
	movl	28(%esp), %eax
	movl	%esi, 8(%edx)
	movl	%edi, 12(%edx)
	movzbl	yyr1@GOTOFF(%ebx,%eax), %edx
	movzwl	0(%ebp), %eax
	movsbl	-61+yypgoto@GOTOFF(%ebx,%edx), %ecx
	leal	-61(%edx), %esi
	movswl	%ax, %edx
	addl	%ecx, %edx
	cmpl	$589, %edx
	ja	.L372
	cmpw	yycheck@GOTOFF(%ebx,%edx,2), %ax
	je	.L497
.L372:
	movswl	yydefgoto@GOTOFF(%ebx,%esi,2), %esi
.L257:
	addl	$2, %ebp
	movl	24(%esp), %ecx
	jmp	.L256
	.p2align 4,,7
	.p2align 3
.L436:
	movl	$0, 52(%esp)
	movl	$0, 48(%esp)
	jmp	.L267
	.p2align 4,,7
	.p2align 3
.L491:
	movl	48(%esp), %eax
	movl	%esi, %edx
	movl	%eax, (%esp)
	xorl	%eax, %eax
	call	yysyntax_error
	cmpl	%eax, 84(%esp)
	movl	%eax, %edx
	jnb	.L374
	cmpl	$-1, 84(%esp)
	je	.L374
	leal	(%eax,%eax), %eax
	movl	%eax, %ecx
	cmpl	%eax, %edx
	movl	$-1, %eax
	cmovbe	%ecx, %eax
	movl	76(%esp), %ecx
	movl	%eax, 84(%esp)
	movl	72(%esp), %eax
	cmpl	%ecx, %eax
	je	.L376
	movl	%eax, (%esp)
	movl	%edx, 28(%esp)
	call	free@PLT
	movl	28(%esp), %edx
.L376:
	movl	84(%esp), %eax
	movl	%edx, 28(%esp)
	movl	%eax, (%esp)
	call	malloc@PLT
	movl	28(%esp), %edx
	testl	%eax, %eax
	movl	%eax, 72(%esp)
	je	.L498
.L374:
	testl	%edx, %edx
	setne	%cl
	cmpl	84(%esp), %edx
	ja	.L377
	testb	%cl, %cl
	je	.L377
	movl	48(%esp), %eax
	movl	%esi, %edx
	movl	%eax, (%esp)
	movl	72(%esp), %eax
	call	yysyntax_error
	movl	pari_lasterror@GOTOFF(%ebx), %eax
	testl	%eax, %eax
	je	.L378
	movl	(%eax), %edx
	andl	$16777215, %edx
	leal	(%eax,%edx,4), %eax
	movl	bot@GOT(%ebx), %edx
	cmpl	(%edx), %eax
	jb	.L378
	movl	top@GOT(%ebx), %edx
	cmpl	(%edx), %eax
	jb	.L379
.L378:
	movl	72(%esp), %eax
	movl	%eax, (%esp)
	call	strtoGENstr@PLT
	movswl	68(%esp), %edi
	movl	%eax, pari_lasterror@GOTOFF(%ebx)
.L380:
	movl	108(%esp), %edx
	jmp	.L383
	.p2align 4,,7
	.p2align 3
.L487:
	movl	88(%esp), %eax
	movl	%eax, 8(%esp)
	leal	108(%esp), %eax
	movl	%eax, 4(%esp)
	leal	104(%esp), %eax
	movl	%eax, (%esp)
	call	pari_lex@PLT
	movl	%eax, 48(%esp)
	jmp	.L266
.L268:
	movl	36(%esp), %ecx
	movl	104(%esp), %edx
	cmpl	$1, 32(%esp)
	adcl	$-1, 32(%esp)
	addl	$4, %ecx
	movl	%edx, (%ecx)
	movl	40(%esp), %edx
	movl	108(%esp), %esi
	movl	112(%esp), %edi
	movl	%ecx, 36(%esp)
	addl	$8, %edx
	movl	%esi, (%edx)
	movl	%eax, %esi
	movl	%edi, 4(%edx)
	movl	$-2, 48(%esp)
	movl	%edx, 40(%esp)
	jmp	.L257
	.p2align 4,,7
	.p2align 3
.L377:
	movl	pari_lasterror@GOTOFF(%ebx), %eax
	testl	%eax, %eax
	je	.L381
	movl	(%eax), %edx
	andl	$16777215, %edx
	leal	(%eax,%edx,4), %eax
	movl	bot@GOT(%ebx), %edx
	cmpl	(%edx), %eax
	jb	.L381
	movl	top@GOT(%ebx), %edx
	cmpl	(%edx), %eax
	jb	.L382
.L381:
	leal	.LC46@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	movl	%ecx, 28(%esp)
	call	strtoGENstr@PLT
	movl	28(%esp), %ecx
	testb	%cl, %cl
	movl	%eax, pari_lasterror@GOTOFF(%ebx)
	jne	.L261
	movswl	68(%esp), %edi
	jmp	.L380
.L496:
	jne	.L383
	xorl	%edi, %edi
	movl	$1, %esi
	jmp	.L385
	.p2align 4,,7
	.p2align 3
.L363:
	movl	36(%esp), %eax
	movl	(%eax), %eax
	jmp	.L274
.L497:
	movswl	yytable@GOTOFF(%ebx,%edx,2), %esi
	jmp	.L257
.L382:
	movl	avma@GOT(%ebx), %edx
	movl	%eax, (%edx)
	jmp	.L381
.L379:
	movl	avma@GOT(%ebx), %edx
	movl	%eax, (%edx)
	jmp	.L378
.L490:
	testl	%eax, %eax
	je	.L438
	negl	%eax
	movl	%eax, 28(%esp)
	jmp	.L270
.L498:
	movl	76(%esp), %eax
	movl	$128, 84(%esp)
	movl	%eax, 72(%esp)
	jmp	.L374
.L293:
	leal	116(%esp), %eax
	movl	$3, %edx
	movl	%eax, 4(%esp)
	movl	$13, %eax
	movl	$-1, (%esp)
	call	newnode
	jmp	.L274
.L348:
	movl	36(%esp), %ecx
	leal	116(%esp), %eax
	movl	-4(%ecx), %edx
	movl	%eax, 4(%esp)
	movl	(%ecx), %eax
	movl	%eax, (%esp)
	movl	$5, %eax
	call	newnode
	jmp	.L274
.L353:
	movl	36(%esp), %ecx
	leal	116(%esp), %eax
	movl	-8(%ecx), %edx
	movl	%eax, 4(%esp)
	movl	(%ecx), %eax
	movl	%eax, (%esp)
	movl	$7, %eax
	call	newnode
	jmp	.L274
.L318:
	movl	36(%esp), %ecx
	leal	116(%esp), %eax
	movl	-8(%ecx), %edx
	movl	%eax, 4(%esp)
	movl	(%ecx), %eax
	movl	%eax, (%esp)
	xorl	%eax, %eax
	call	newopcall
	jmp	.L274
.L320:
	movl	36(%esp), %ecx
	leal	116(%esp), %eax
	movl	-8(%ecx), %edx
	movl	%eax, 4(%esp)
	movl	(%ecx), %eax
	movl	%eax, (%esp)
	movl	$1, %eax
	call	newopcall
	jmp	.L274
.L370:
	movl	36(%esp), %ecx
	leal	116(%esp), %eax
	movl	-8(%ecx), %edx
	movl	%eax, 4(%esp)
	movl	(%ecx), %eax
	movl	%eax, (%esp)
	movl	$19, %eax
	call	newnode
	jmp	.L274
.L277:
	movl	40(%esp), %edi
	movl	-4(%edi), %eax
	movl	%eax, pari_unused_chars@GOTOFF(%ebx)
.L486:
	leal	(%edx,%edx), %edi
	movl	$1, %esi
	negl	%edi
	jmp	.L408
.L364:
	movl	36(%esp), %ecx
	leal	116(%esp), %eax
	movl	-8(%ecx), %edx
	movl	%eax, 4(%esp)
	movl	(%ecx), %eax
	movl	%eax, (%esp)
	movl	$11, %eax
	call	newnode
	jmp	.L274
.L338:
	leal	116(%esp), %eax
	movl	%eax, (%esp)
	movl	36(%esp), %eax
	movl	(%eax), %edx
	movl	$33, %eax
	call	newopcall.part.1
	jmp	.L274
.L339:
	movl	36(%esp), %ecx
	leal	116(%esp), %eax
	movl	-8(%ecx), %edx
	movl	%eax, 4(%esp)
	movl	(%ecx), %eax
	movl	%eax, (%esp)
	movl	$18, %eax
	call	newopcall
	jmp	.L274
.L336:
	movl	36(%esp), %ecx
	leal	116(%esp), %eax
	movl	-8(%ecx), %edx
	movl	%eax, 4(%esp)
	movl	(%ecx), %eax
	movl	%eax, (%esp)
	movl	$17, %eax
	call	newopcall
	jmp	.L274
.L328:
	movl	36(%esp), %ecx
	leal	116(%esp), %eax
	movl	-8(%ecx), %edx
	movl	%eax, 4(%esp)
	movl	(%ecx), %eax
	movl	%eax, (%esp)
	movl	$9, %eax
	call	newopcall
	jmp	.L274
.L329:
	movl	36(%esp), %ecx
	leal	116(%esp), %eax
	movl	-8(%ecx), %edx
	movl	%eax, 4(%esp)
	movl	(%ecx), %eax
	movl	%eax, (%esp)
	movl	$10, %eax
	call	newopcall
	jmp	.L274
.L330:
	movl	36(%esp), %ecx
	leal	116(%esp), %eax
	movl	-8(%ecx), %edx
	movl	%eax, 4(%esp)
	movl	(%ecx), %eax
	movl	%eax, (%esp)
	movl	$11, %eax
	call	newopcall
	jmp	.L274
.L331:
	movl	36(%esp), %ecx
	leal	116(%esp), %eax
	movl	-8(%ecx), %edx
	movl	%eax, 4(%esp)
	movl	(%ecx), %eax
	movl	%eax, (%esp)
	movl	$12, %eax
	call	newopcall
	jmp	.L274
.L332:
	movl	36(%esp), %ecx
	leal	116(%esp), %eax
	movl	-8(%ecx), %edx
	movl	%eax, 4(%esp)
	movl	(%ecx), %eax
	movl	%eax, (%esp)
	movl	$13, %eax
	call	newopcall
	jmp	.L274
.L333:
	movl	36(%esp), %ecx
	leal	116(%esp), %eax
	movl	-8(%ecx), %edx
	movl	%eax, 4(%esp)
	movl	(%ecx), %eax
	movl	%eax, (%esp)
	movl	$14, %eax
	call	newopcall
	jmp	.L274
.L334:
	movl	36(%esp), %ecx
	leal	116(%esp), %eax
	movl	-8(%ecx), %edx
	movl	%eax, 4(%esp)
	movl	(%ecx), %eax
	movl	%eax, (%esp)
	movl	$15, %eax
	call	newopcall
	jmp	.L274
.L335:
	movl	36(%esp), %ecx
	leal	116(%esp), %eax
	movl	-8(%ecx), %edx
	movl	%eax, 4(%esp)
	movl	(%ecx), %eax
	movl	%eax, (%esp)
	movl	$16, %eax
	call	newopcall
	jmp	.L274
.L324:
	movl	36(%esp), %ecx
	leal	116(%esp), %eax
	movl	-8(%ecx), %edx
	movl	%eax, 4(%esp)
	movl	(%ecx), %eax
	movl	%eax, (%esp)
	movl	$5, %eax
	call	newopcall
	jmp	.L274
.L325:
	movl	36(%esp), %ecx
	leal	116(%esp), %eax
	movl	-8(%ecx), %edx
	movl	%eax, 4(%esp)
	movl	(%ecx), %eax
	movl	%eax, (%esp)
	movl	$6, %eax
	call	newopcall
	jmp	.L274
.L326:
	movl	36(%esp), %ecx
	leal	116(%esp), %eax
	movl	-8(%ecx), %edx
	movl	%eax, 4(%esp)
	movl	(%ecx), %eax
	movl	%eax, (%esp)
	movl	$7, %eax
	call	newopcall
	jmp	.L274
.L327:
	movl	36(%esp), %ecx
	leal	116(%esp), %eax
	movl	-8(%ecx), %edx
	movl	%eax, 4(%esp)
	movl	(%ecx), %eax
	movl	%eax, (%esp)
	movl	$8, %eax
	call	newopcall
	jmp	.L274
.L322:
	movl	36(%esp), %ecx
	leal	116(%esp), %eax
	movl	-8(%ecx), %edx
	movl	%eax, 4(%esp)
	movl	(%ecx), %eax
	movl	%eax, (%esp)
	movl	$3, %eax
	call	newopcall
	jmp	.L274
.L323:
	movl	36(%esp), %ecx
	leal	116(%esp), %eax
	movl	-8(%ecx), %edx
	movl	%eax, 4(%esp)
	movl	(%ecx), %eax
	movl	%eax, (%esp)
	movl	$4, %eax
	call	newopcall
	jmp	.L274
.L294:
	movl	40(%esp), %edi
	movl	%edi, %eax
	subl	$16, %eax
	call	newintnode
	movl	$4, %edx
	movl	%edi, 4(%esp)
	movl	$-1, (%esp)
	movl	%eax, 68(%esp)
.L484:
	movl	$13, %eax
	call	newnode
	movl	68(%esp), %ecx
	leal	116(%esp), %edx
	movl	%edx, 4(%esp)
	movl	%ecx, (%esp)
	movl	%eax, %edx
	movl	$18, %eax
	call	newnode
	jmp	.L274
.L295:
	leal	116(%esp), %eax
	xorl	%edx, %edx
	movl	%eax, 4(%esp)
	movl	$13, %eax
	movl	$-1, (%esp)
	call	newnode
	jmp	.L274
.L304:
	movl	36(%esp), %eax
	movl	-4(%eax), %edx
	leal	116(%esp), %eax
	movl	%eax, (%esp)
	movl	$22, %eax
	call	newopcall.part.1
	jmp	.L274
.L305:
	movl	36(%esp), %eax
	movl	-4(%eax), %edx
	leal	116(%esp), %eax
	movl	%eax, (%esp)
	movl	$21, %eax
	call	newopcall.part.1
	jmp	.L274
.L349:
	movl	40(%esp), %eax
	movl	$5, %edx
	movl	$-1, (%esp)
	subl	$8, %eax
	movl	%eax, 4(%esp)
	movl	$13, %eax
	call	newnode
	movl	36(%esp), %ecx
	leal	116(%esp), %edx
	movl	-8(%ecx), %ecx
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	movl	$15, %eax
	movl	%ecx, %edx
	call	newnode
	jmp	.L274
.L354:
	leal	116(%esp), %eax
	movl	$-1, %edx
	movl	%eax, 4(%esp)
	movl	$9, %eax
	movl	$-1, (%esp)
	call	newnode
	jmp	.L274
.L340:
	movl	36(%esp), %eax
	movl	-4(%eax), %edx
	leal	116(%esp), %eax
	movl	%eax, (%esp)
	movl	$37, %eax
	call	newopcall.part.1
	jmp	.L274
.L341:
	movl	36(%esp), %eax
	movl	-4(%eax), %edx
	leal	116(%esp), %eax
	movl	%eax, (%esp)
	movl	$36, %eax
	call	newopcall.part.1
	jmp	.L274
.L342:
	movl	36(%esp), %eax
	movl	-4(%eax), %edx
	leal	116(%esp), %eax
	movl	%eax, (%esp)
	movl	$35, %eax
	call	newopcall.part.1
	jmp	.L274
.L357:
	movl	36(%esp), %eax
	movl	-4(%eax), %edx
	leal	116(%esp), %eax
	movl	%eax, 4(%esp)
	movl	$8, %eax
	movl	$-1, (%esp)
	call	newnode
	jmp	.L274
.L288:
	leal	116(%esp), %eax
	movl	$-1, %edx
	movl	%eax, (%esp)
	movl	$38, %eax
	call	newopcall.part.1
	jmp	.L274
.L289:
	movl	40(%esp), %eax
	call	newintnode
	leal	116(%esp), %edx
	movl	%edx, (%esp)
	movl	%eax, %edx
	movl	$38, %eax
	call	newopcall.part.1
	jmp	.L274
.L290:
	movl	36(%esp), %eax
	leal	116(%esp), %ecx
	movl	%ecx, 68(%esp)
	movl	(%eax), %edx
	movl	$14, %eax
	movl	%ecx, 4(%esp)
	movl	$-1, (%esp)
	negl	%edx
	call	newnode
	movl	68(%esp), %ecx
	movl	%ecx, (%esp)
	movl	%eax, %edx
	movl	$38, %eax
	call	newopcall.part.1
	jmp	.L274
.L291:
	movl	40(%esp), %eax
	call	newintnode
	.p2align 4,,4
	jmp	.L274
.L296:
	leal	116(%esp), %eax
	movl	$1, %edx
	movl	%eax, 4(%esp)
	movl	$13, %eax
	movl	$-1, (%esp)
	call	newnode
	jmp	.L274
.L366:
	movl	36(%esp), %eax
	movl	$4, %edx
	movl	-8(%eax), %ecx
	movl	40(%esp), %eax
	movl	$-1, (%esp)
	movl	%ecx, 68(%esp)
	movl	%eax, 4(%esp)
	jmp	.L484
.L298:
	movl	36(%esp), %ecx
	leal	116(%esp), %eax
	movl	-12(%ecx), %edx
	movl	%eax, 4(%esp)
	movl	-4(%ecx), %eax
	movl	%eax, (%esp)
	movl	$17, %eax
	call	newnode
	jmp	.L274
.L365:
	movl	36(%esp), %eax
	movl	$5, %edx
	movl	-4(%eax), %ecx
	movl	40(%esp), %eax
	movl	$-1, (%esp)
	movl	%ecx, 68(%esp)
	subl	$24, %eax
	movl	%eax, 4(%esp)
	jmp	.L484
.L362:
	movl	36(%esp), %ecx
	leal	116(%esp), %eax
	movl	$0, pari_once@GOTOFF(%ebx)
	movl	-12(%ecx), %edx
	movl	%eax, 4(%esp)
	movl	(%ecx), %eax
	movl	%eax, (%esp)
	movl	$19, %eax
	call	newopcall
	jmp	.L274
.L303:
	movl	36(%esp), %ecx
	leal	116(%esp), %eax
	movl	-8(%ecx), %edx
	movl	%eax, 4(%esp)
	movl	(%ecx), %eax
	movl	%eax, (%esp)
	movl	$4, %eax
	call	newnode
	jmp	.L274
.L306:
	movl	36(%esp), %ecx
	leal	116(%esp), %eax
	movl	-8(%ecx), %edx
	movl	%eax, 4(%esp)
	movl	(%ecx), %eax
	movl	%eax, (%esp)
	movl	$31, %eax
	call	newopcall
	jmp	.L274
.L307:
	movl	36(%esp), %ecx
	leal	116(%esp), %eax
	movl	-8(%ecx), %edx
	movl	%eax, 4(%esp)
	movl	(%ecx), %eax
	movl	%eax, (%esp)
	movl	$30, %eax
	call	newopcall
	jmp	.L274
.L308:
	movl	36(%esp), %ecx
	leal	116(%esp), %eax
	movl	-8(%ecx), %edx
	movl	%eax, 4(%esp)
	movl	(%ecx), %eax
	movl	%eax, (%esp)
	movl	$28, %eax
	call	newopcall
	jmp	.L274
.L309:
	movl	36(%esp), %ecx
	leal	116(%esp), %eax
	movl	-8(%ecx), %edx
	movl	%eax, 4(%esp)
	movl	(%ecx), %eax
	movl	%eax, (%esp)
	movl	$29, %eax
	call	newopcall
	jmp	.L274
.L310:
	movl	36(%esp), %ecx
	leal	116(%esp), %eax
	movl	-8(%ecx), %edx
	movl	%eax, 4(%esp)
	movl	(%ecx), %eax
	movl	%eax, (%esp)
	movl	$27, %eax
	call	newopcall
	jmp	.L274
.L311:
	movl	36(%esp), %ecx
	leal	116(%esp), %eax
	movl	-8(%ecx), %edx
	movl	%eax, 4(%esp)
	movl	(%ecx), %eax
	movl	%eax, (%esp)
	movl	$25, %eax
	call	newopcall
	jmp	.L274
.L312:
	movl	36(%esp), %ecx
	leal	116(%esp), %eax
	movl	-8(%ecx), %edx
	movl	%eax, 4(%esp)
	movl	(%ecx), %eax
	movl	%eax, (%esp)
	movl	$26, %eax
	call	newopcall
	jmp	.L274
.L313:
	movl	36(%esp), %ecx
	leal	116(%esp), %eax
	movl	-8(%ecx), %edx
	movl	%eax, 4(%esp)
	movl	(%ecx), %eax
	movl	%eax, (%esp)
	movl	$24, %eax
	call	newopcall
	jmp	.L274
.L314:
	movl	36(%esp), %ecx
	leal	116(%esp), %eax
	movl	-8(%ecx), %edx
	movl	%eax, 4(%esp)
	movl	(%ecx), %eax
	movl	%eax, (%esp)
	movl	$23, %eax
	call	newopcall
	jmp	.L274
.L315:
	leal	116(%esp), %eax
	movl	%eax, (%esp)
	movl	36(%esp), %eax
	movl	(%eax), %edx
	movl	$34, %eax
	call	newopcall.part.1
	jmp	.L274
.L316:
	leal	116(%esp), %eax
	movl	%eax, (%esp)
	movl	36(%esp), %eax
	movl	(%eax), %edx
	movl	$39, %eax
	call	newopcall.part.1
	jmp	.L274
.L361:
	movl	pari_once@GOTOFF(%ebx), %edx
	movl	$1, pari_once@GOTOFF(%ebx)
	testl	%edx, %edx
	movl	$0, %edx
	cmovne	32(%esp), %edx
	movl	%edx, 32(%esp)
	jmp	.L274
.L360:
	leal	116(%esp), %eax
	movl	%eax, 4(%esp)
	movl	36(%esp), %eax
	movl	$-1, (%esp)
	movl	(%eax), %edx
	movl	$12, %eax
	call	newnode
	jmp	.L274
.L321:
	movl	36(%esp), %ecx
	leal	116(%esp), %eax
	movl	-8(%ecx), %edx
	movl	%eax, 4(%esp)
	movl	(%ecx), %eax
	movl	%eax, (%esp)
	movl	$2, %eax
	call	newopcall
	jmp	.L274
.L280:
	movl	40(%esp), %ecx
	movl	36(%esp), %eax
	movl	-8(%ecx), %edx
	movl	-4(%ecx), %ecx
	movl	-4(%eax), %eax
	movl	%edx, 116(%esp)
	movl	%ecx, 120(%esp)
	jmp	.L274
.L281:
	movl	36(%esp), %ecx
	leal	116(%esp), %eax
	movl	-8(%ecx), %edx
	movl	%eax, 4(%esp)
	movl	(%ecx), %eax
	movl	%eax, (%esp)
	xorl	%eax, %eax
	call	newnode
	jmp	.L274
.L282:
	movl	36(%esp), %ecx
	leal	116(%esp), %eax
	movl	-12(%ecx), %edx
	movl	%eax, 4(%esp)
	movl	-4(%ecx), %eax
	movl	%eax, (%esp)
	movl	$1, %eax
	call	newnode
	jmp	.L274
.L283:
	movl	36(%esp), %eax
	movl	-4(%eax), %edx
	leal	116(%esp), %eax
	movl	%eax, 4(%esp)
	movl	$1, %eax
	movl	$-1, (%esp)
	call	newnode
	jmp	.L274
.L284:
	movl	36(%esp), %eax
	movl	-8(%eax), %edx
	leal	116(%esp), %eax
	movl	%eax, 4(%esp)
	movl	$2, %eax
	movl	$-1, (%esp)
	call	newnode
	jmp	.L274
.L285:
	movl	36(%esp), %eax
	movl	-4(%eax), %edx
	leal	116(%esp), %eax
	movl	%eax, 4(%esp)
	movl	$3, %eax
	movl	$-1, (%esp)
	call	newnode
	jmp	.L274
.L286:
	movl	$1, %eax
	jmp	.L274
.L287:
	movl	36(%esp), %eax
	movl	-4(%eax), %eax
	movl	%eax, 68(%esp)
	addl	$1, %eax
	jmp	.L274
.L278:
	leal	116(%esp), %eax
	movl	$-1, %edx
	movl	%eax, 4(%esp)
	movl	$10, %eax
	movl	$-1, (%esp)
	call	newnode
	jmp	.L274
.L367:
	movl	36(%esp), %eax
	movl	$5, %edx
	movl	(%eax), %ecx
	movl	-12(%eax), %eax
	movl	$-1, (%esp)
	movl	%ecx, %edi
	movl	40(%esp), %ecx
	movl	%eax, 68(%esp)
	subl	$40, %ecx
	movl	%ecx, 4(%esp)
	movl	%ecx, 80(%esp)
	jmp	.L485
.L356:
	movl	36(%esp), %eax
	movl	-4(%eax), %edx
	leal	116(%esp), %eax
	movl	%eax, 4(%esp)
	movl	$9, %eax
	movl	$-1, (%esp)
	call	newnode
	jmp	.L274
.L345:
	movl	36(%esp), %eax
	movl	-8(%eax), %edx
	leal	116(%esp), %eax
	movl	%eax, 4(%esp)
	movl	$15, %eax
	movl	$0, (%esp)
	call	newnode
	jmp	.L274
.L346:
	movl	36(%esp), %eax
	movl	-4(%eax), %eax
	jmp	.L274
.L347:
	movl	40(%esp), %eax
	movl	$5, %edx
	movl	$-1, (%esp)
	movl	%eax, 4(%esp)
	movl	$13, %eax
	call	newnode
	leal	116(%esp), %edx
	movl	%edx, 4(%esp)
	movl	$-1, (%esp)
	movl	%eax, %edx
	movl	$16, %eax
	call	newnode
	jmp	.L274
.L355:
	leal	116(%esp), %eax
	movl	$-1, %edx
	movl	%eax, 4(%esp)
	movl	$8, %eax
	movl	$-1, (%esp)
	call	newnode
	jmp	.L274
.L351:
	movl	36(%esp), %ecx
	leal	116(%esp), %eax
	movl	-8(%ecx), %edx
	movl	%eax, 4(%esp)
	movl	(%ecx), %eax
	movl	%eax, (%esp)
	movl	$6, %eax
	call	newnode
	jmp	.L274
.L259:
	movl	pari_lasterror@GOTOFF(%ebx), %eax
.L261:
	testl	%eax, %eax
	je	.L406
	movl	(%eax), %edx
	andl	$16777215, %edx
	leal	(%eax,%edx,4), %eax
	movl	bot@GOT(%ebx), %edx
	cmpl	(%edx), %eax
	jb	.L406
	movl	top@GOT(%ebx), %edx
	cmpl	(%edx), %eax
	jnb	.L406
	movl	avma@GOT(%ebx), %edx
	movl	%eax, (%edx)
.L406:
	leal	.LC47@GOTOFF(%ebx), %eax
	xorl	%edi, %edi
	movl	%eax, (%esp)
	movl	$2, %esi
	call	strtoGENstr@PLT
	movl	%eax, pari_lasterror@GOTOFF(%ebx)
	jmp	.L408
.L435:
	xorl	%edi, %edi
	xorl	%esi, %esi
	jmp	.L408
.L434:
	movl	%edx, 24(%esp)
	xorl	%edi, %edi
	movl	$1, %esi
	jmp	.L408
.L495:
	call	__stack_chk_fail_local
	.cfi_endproc
.LFE754:
	.size	pari_parse, .-pari_parse
	.section	.rodata.str1.1
.LC48:
	.string	"unused characters"
.LC49:
	.string	"unused characters: %.*s[+++]"
.LC50:
	.string	"unused characters: %s"
	.text
	.p2align 4,,15
	.globl	pari_compile_str
	.type	pari_compile_str, @function
pari_compile_str:
.LFB744:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	pushl	%edi
	.cfi_def_cfa_offset 12
	.cfi_offset 7, -12
	pushl	%esi
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushl	%ebx
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	call	__x86.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	subl	$76, %esp
	.cfi_def_cfa_offset 96
	leal	40(%esp), %esi
	movl	avma@GOT(%ebx), %edi
	movl	(%edi), %ebp
	movl	%esi, (%esp)
	call	parsestate_save@PLT
	movl	96(%esp), %eax
	movl	$0, pari_discarded@GOTOFF(%ebx)
	movl	%eax, pari_lex_start@GOTOFF(%ebx)
	leal	96(%esp), %eax
	movl	%eax, (%esp)
	call	pari_parse@PLT
	testl	%eax, %eax
	jne	.L500
	movl	pari_discarded@GOTOFF(%ebx), %eax
	testl	%eax, %eax
	je	.L501
.L500:
	movl	pari_unused_chars@GOTOFF(%ebx), %edx
	testl	%edx, %edx
	je	.L502
	movl	pari_discarded@GOTOFF(%ebx), %ecx
	testl	%ecx, %ecx
	je	.L513
.L502:
	movl	pari_lasterror@GOTOFF(%ebx), %eax
	testl	%eax, %eax
	je	.L505
	movl	96(%esp), %ecx
	addl	$4, %eax
	movl	%eax, (%esp)
	leal	-1(%ecx), %edx
	movl	%edx, 4(%esp)
	call	compile_err@PLT
.L501:
	movl	4+s_node@GOTOFF(%ebx), %eax
	movl	%ebp, (%edi)
	subl	$1, %eax
	movl	%eax, (%esp)
	call	optimizenode@PLT
	movl	4+s_node@GOTOFF(%ebx), %eax
	subl	$1, %eax
	movl	%eax, (%esp)
	call	gp_closure@PLT
	movl	%esi, (%esp)
	movl	%eax, %edi
	call	parsestate_restore@PLT
	addl	$76, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	movl	%edi, %eax
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,7
	.p2align 3
.L505:
	.cfi_restore_state
	movl	96(%esp), %eax
	subl	$1, %eax
	movl	%eax, 4(%esp)
	leal	.LC46@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	compile_err@PLT
	jmp	.L501
	.p2align 4,,7
	.p2align 3
.L513:
	movl	%edx, 24(%esp)
	call	term_width@PLT
	movl	24(%esp), %edx
	addl	%eax, %eax
	movl	%eax, 28(%esp)
	subl	$37, %eax
	movl	%eax, 20(%esp)
	movl	100(%esp), %eax
	testl	%eax, %eax
	jne	.L514
.L503:
	movl	%edx, (%esp)
	movl	%edx, 24(%esp)
	call	strlen@PLT
	movl	24(%esp), %edx
	cmpl	%eax, 20(%esp)
	jl	.L515
	leal	.LC50@GOTOFF(%ebx), %eax
	movl	%edx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	$0, (%esp)
	call	pari_warn@PLT
	jmp	.L501
	.p2align 4,,7
	.p2align 3
.L515:
	movl	28(%esp), %eax
	movl	%edx, 12(%esp)
	movl	$0, (%esp)
	subl	$42, %eax
	movl	%eax, 8(%esp)
	leal	.LC49@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	call	pari_warn@PLT
	jmp	.L501
	.p2align 4,,7
	.p2align 3
.L514:
	leal	.LC48@GOTOFF(%ebx), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	compile_err@PLT
	movl	24(%esp), %edx
	jmp	.L503
	.cfi_endproc
.LFE744:
	.size	pari_compile_str, .-pari_compile_str
	.section	.rodata
	.type	yyor.20790, @object
	.size	yyor.20790, 7
yyor.20790:
	.string	" or %s"
	.type	yyunexpected.20788, @object
	.size	yyunexpected.20788, 28
yyunexpected.20788:
	.string	"syntax error, unexpected %s"
	.type	yyexpecting.20789, @object
	.size	yyexpecting.20789, 15
yyexpecting.20789:
	.string	", expecting %s"
	.align 32
	.type	yystos, @object
	.size	yystos, 166
yystos:
	.byte	0
	.byte	26
	.byte	27
	.byte	28
	.byte	29
	.byte	41
	.byte	42
	.byte	43
	.byte	49
	.byte	50
	.byte	52
	.byte	53
	.byte	54
	.byte	56
	.byte	62
	.byte	63
	.byte	66
	.byte	67
	.byte	68
	.byte	71
	.byte	75
	.byte	76
	.byte	77
	.byte	54
	.byte	56
	.byte	67
	.byte	67
	.byte	26
	.byte	59
	.byte	65
	.byte	67
	.byte	67
	.byte	1
	.byte	34
	.byte	58
	.byte	67
	.byte	69
	.byte	70
	.byte	28
	.byte	37
	.byte	63
	.byte	67
	.byte	72
	.byte	74
	.byte	0
	.byte	1
	.byte	34
	.byte	12
	.byte	13
	.byte	14
	.byte	15
	.byte	16
	.byte	17
	.byte	18
	.byte	21
	.byte	22
	.byte	23
	.byte	37
	.byte	38
	.byte	39
	.byte	40
	.byte	41
	.byte	42
	.byte	43
	.byte	44
	.byte	45
	.byte	46
	.byte	48
	.byte	50
	.byte	51
	.byte	52
	.byte	53
	.byte	54
	.byte	56
	.byte	57
	.byte	64
	.byte	4
	.byte	5
	.byte	6
	.byte	7
	.byte	8
	.byte	9
	.byte	10
	.byte	11
	.byte	19
	.byte	20
	.byte	24
	.byte	25
	.byte	36
	.byte	57
	.byte	64
	.byte	28
	.byte	74
	.byte	59
	.byte	58
	.byte	58
	.byte	34
	.byte	35
	.byte	58
	.byte	34
	.byte	58
	.byte	28
	.byte	68
	.byte	60
	.byte	1
	.byte	3
	.byte	35
	.byte	67
	.byte	67
	.byte	67
	.byte	67
	.byte	67
	.byte	67
	.byte	67
	.byte	67
	.byte	67
	.byte	67
	.byte	67
	.byte	67
	.byte	67
	.byte	67
	.byte	67
	.byte	67
	.byte	67
	.byte	67
	.byte	67
	.byte	67
	.byte	67
	.byte	67
	.byte	35
	.byte	67
	.byte	28
	.byte	74
	.byte	28
	.byte	63
	.byte	67
	.byte	67
	.byte	67
	.byte	67
	.byte	67
	.byte	67
	.byte	67
	.byte	67
	.byte	67
	.byte	67
	.byte	28
	.byte	60
	.byte	69
	.byte	67
	.byte	69
	.byte	73
	.byte	63
	.byte	72
	.byte	67
	.byte	35
	.byte	58
	.byte	36
	.byte	60
	.byte	36
	.byte	67
	.byte	58
	.byte	58
	.byte	67
	.byte	63
	.byte	63
	.byte	58
	.align 32
	.type	yycheck, @object
	.size	yycheck, 1180
yycheck:
	.value	0
	.value	26
	.value	35
	.value	18
	.value	35
	.value	54
	.value	5
	.value	6
	.value	3
	.value	8
	.value	9
	.value	10
	.value	0
	.value	1
	.value	13
	.value	34
	.value	35
	.value	34
	.value	50
	.value	51
	.value	52
	.value	53
	.value	54
	.value	24
	.value	56
	.value	57
	.value	52
	.value	60
	.value	56
	.value	60
	.value	54
	.value	57
	.value	56
	.value	57
	.value	59
	.value	1
	.value	1
	.value	3
	.value	3
	.value	58
	.value	35
	.value	58
	.value	96
	.value	28
	.value	0
	.value	99
	.value	34
	.value	46
	.value	47
	.value	48
	.value	49
	.value	50
	.value	51
	.value	52
	.value	53
	.value	54
	.value	55
	.value	56
	.value	57
	.value	58
	.value	59
	.value	60
	.value	61
	.value	62
	.value	63
	.value	64
	.value	65
	.value	66
	.value	67
	.value	35
	.value	35
	.value	70
	.value	73
	.value	28
	.value	28
	.value	59
	.value	76
	.value	58
	.value	77
	.value	78
	.value	79
	.value	80
	.value	81
	.value	82
	.value	83
	.value	84
	.value	85
	.value	102
	.value	58
	.value	88
	.value	34
	.value	1
	.value	28
	.value	28
	.value	60
	.value	60
	.value	28
	.value	96
	.value	97
	.value	36
	.value	99
	.value	39
	.value	36
	.value	106
	.value	35
	.value	105
	.value	4
	.value	5
	.value	6
	.value	7
	.value	8
	.value	9
	.value	10
	.value	11
	.value	-1
	.value	-1
	.value	26
	.value	27
	.value	28
	.value	29
	.value	-1
	.value	19
	.value	20
	.value	-1
	.value	34
	.value	-1
	.value	24
	.value	25
	.value	-1
	.value	-1
	.value	129
	.value	41
	.value	42
	.value	43
	.value	-1
	.value	-1
	.value	-1
	.value	-1
	.value	36
	.value	49
	.value	50
	.value	-1
	.value	52
	.value	53
	.value	54
	.value	-1
	.value	56
	.value	-1
	.value	58
	.value	-1
	.value	-1
	.value	150
	.value	-1
	.value	-1
	.value	52
	.value	154
	.value	156
	.value	-1
	.value	158
	.value	57
	.value	12
	.value	13
	.value	14
	.value	15
	.value	16
	.value	17
	.value	18
	.value	-1
	.value	-1
	.value	21
	.value	22
	.value	23
	.value	48
	.value	-1
	.value	50
	.value	51
	.value	52
	.value	53
	.value	54
	.value	-1
	.value	56
	.value	57
	.value	-1
	.value	-1
	.value	-1
	.value	37
	.value	38
	.value	39
	.value	40
	.value	41
	.value	42
	.value	43
	.value	44
	.value	45
	.value	46
	.value	-1
	.value	48
	.value	-1
	.value	50
	.value	51
	.value	52
	.value	53
	.value	54
	.value	-1
	.value	56
	.value	57
	.value	-1
	.value	-1
	.value	60
	.value	12
	.value	13
	.value	14
	.value	15
	.value	16
	.value	17
	.value	18
	.value	-1
	.value	-1
	.value	21
	.value	22
	.value	23
	.value	-1
	.value	-1
	.value	-1
	.value	-1
	.value	-1
	.value	-1
	.value	-1
	.value	-1
	.value	-1
	.value	-1
	.value	-1
	.value	35
	.value	-1
	.value	37
	.value	38
	.value	39
	.value	40
	.value	41
	.value	42
	.value	43
	.value	44
	.value	45
	.value	46
	.value	-1
	.value	48
	.value	-1
	.value	50
	.value	51
	.value	52
	.value	53
	.value	54
	.value	-1
	.value	56
	.value	57
	.value	58
	.value	12
	.value	13
	.value	14
	.value	15
	.value	16
	.value	17
	.value	18
	.value	-1
	.value	-1
	.value	21
	.value	22
	.value	23
	.value	-1
	.value	-1
	.value	-1
	.value	-1
	.value	-1
	.value	-1
	.value	-1
	.value	-1
	.value	-1
	.value	-1
	.value	-1
	.value	-1
	.value	-1
	.value	37
	.value	38
	.value	39
	.value	40
	.value	41
	.value	42
	.value	43
	.value	44
	.value	45
	.value	46
	.value	-1
	.value	48
	.value	-1
	.value	50
	.value	51
	.value	52
	.value	53
	.value	54
	.value	-1
	.value	56
	.value	57
	.value	58
	.value	12
	.value	13
	.value	14
	.value	15
	.value	16
	.value	17
	.value	18
	.value	-1
	.value	-1
	.value	21
	.value	22
	.value	23
	.value	-1
	.value	-1
	.value	-1
	.value	-1
	.value	-1
	.value	-1
	.value	-1
	.value	-1
	.value	-1
	.value	-1
	.value	-1
	.value	-1
	.value	-1
	.value	37
	.value	38
	.value	39
	.value	40
	.value	41
	.value	42
	.value	43
	.value	44
	.value	45
	.value	46
	.value	-1
	.value	48
	.value	-1
	.value	50
	.value	51
	.value	52
	.value	53
	.value	54
	.value	-1
	.value	56
	.value	57
	.value	58
	.value	12
	.value	13
	.value	14
	.value	15
	.value	16
	.value	17
	.value	18
	.value	-1
	.value	-1
	.value	21
	.value	22
	.value	23
	.value	-1
	.value	-1
	.value	-1
	.value	-1
	.value	-1
	.value	-1
	.value	-1
	.value	-1
	.value	-1
	.value	-1
	.value	-1
	.value	-1
	.value	-1
	.value	37
	.value	38
	.value	39
	.value	40
	.value	41
	.value	42
	.value	43
	.value	44
	.value	45
	.value	46
	.value	-1
	.value	48
	.value	-1
	.value	50
	.value	51
	.value	52
	.value	53
	.value	54
	.value	-1
	.value	56
	.value	57
	.value	14
	.value	15
	.value	16
	.value	17
	.value	18
	.value	-1
	.value	-1
	.value	21
	.value	22
	.value	23
	.value	-1
	.value	-1
	.value	-1
	.value	-1
	.value	-1
	.value	-1
	.value	-1
	.value	-1
	.value	-1
	.value	-1
	.value	-1
	.value	-1
	.value	-1
	.value	-1
	.value	-1
	.value	39
	.value	40
	.value	41
	.value	42
	.value	43
	.value	44
	.value	45
	.value	46
	.value	-1
	.value	48
	.value	-1
	.value	50
	.value	51
	.value	52
	.value	53
	.value	54
	.value	-1
	.value	56
	.value	57
	.value	21
	.value	22
	.value	23
	.value	-1
	.value	-1
	.value	-1
	.value	-1
	.value	-1
	.value	-1
	.value	-1
	.value	-1
	.value	-1
	.value	-1
	.value	-1
	.value	-1
	.value	21
	.value	22
	.value	23
	.value	-1
	.value	-1
	.value	41
	.value	42
	.value	43
	.value	44
	.value	45
	.value	46
	.value	-1
	.value	48
	.value	-1
	.value	50
	.value	51
	.value	52
	.value	53
	.value	54
	.value	-1
	.value	56
	.value	57
	.value	43
	.value	44
	.value	45
	.value	46
	.value	-1
	.value	48
	.value	-1
	.value	50
	.value	51
	.value	52
	.value	53
	.value	54
	.value	-1
	.value	56
	.value	57
	.value	26
	.value	27
	.value	28
	.value	29
	.value	-1
	.value	-1
	.value	-1
	.value	-1
	.value	-1
	.value	-1
	.value	-1
	.value	-1
	.value	-1
	.value	-1
	.value	-1
	.value	41
	.value	42
	.value	43
	.value	26
	.value	27
	.value	28
	.value	29
	.value	-1
	.value	49
	.value	50
	.value	-1
	.value	52
	.value	53
	.value	54
	.value	37
	.value	56
	.value	-1
	.value	58
	.value	41
	.value	42
	.value	43
	.value	-1
	.value	-1
	.value	-1
	.value	-1
	.value	-1
	.value	49
	.value	50
	.value	-1
	.value	52
	.value	53
	.value	54
	.value	-1
	.value	56
	.value	26
	.value	27
	.value	28
	.value	29
	.value	-1
	.value	-1
	.value	-1
	.value	-1
	.value	-1
	.value	35
	.value	-1
	.value	-1
	.value	-1
	.value	-1
	.value	-1
	.value	41
	.value	42
	.value	43
	.value	26
	.value	27
	.value	28
	.value	29
	.value	-1
	.value	49
	.value	50
	.value	-1
	.value	52
	.value	53
	.value	54
	.value	-1
	.value	56
	.value	-1
	.value	-1
	.value	41
	.value	42
	.value	43
	.value	-1
	.value	-1
	.value	-1
	.value	-1
	.value	-1
	.value	49
	.value	50
	.value	-1
	.value	52
	.value	53
	.value	54
	.value	-1
	.value	56
	.align 32
	.type	yytable, @object
	.size	yytable, 1180
yytable:
	.value	15
	.value	27
	.value	106
	.value	90
	.value	106
	.value	23
	.value	25
	.value	26
	.value	105
	.value	30
	.value	31
	.value	35
	.value	-2
	.value	45
	.value	41
	.value	96
	.value	97
	.value	99
	.value	68
	.value	69
	.value	70
	.value	71
	.value	72
	.value	92
	.value	73
	.value	74
	.value	70
	.value	146
	.value	24
	.value	157
	.value	72
	.value	89
	.value	73
	.value	74
	.value	28
	.value	104
	.value	104
	.value	-89
	.value	-90
	.value	98
	.value	106
	.value	100
	.value	147
	.value	38
	.value	44
	.value	149
	.value	46
	.value	107
	.value	108
	.value	109
	.value	110
	.value	111
	.value	112
	.value	113
	.value	114
	.value	115
	.value	116
	.value	117
	.value	118
	.value	119
	.value	120
	.value	121
	.value	122
	.value	123
	.value	124
	.value	125
	.value	126
	.value	127
	.value	128
	.value	-89
	.value	-90
	.value	130
	.value	132
	.value	91
	.value	101
	.value	93
	.value	134
	.value	94
	.value	135
	.value	136
	.value	137
	.value	138
	.value	139
	.value	140
	.value	141
	.value	142
	.value	143
	.value	90
	.value	95
	.value	144
	.value	46
	.value	32
	.value	131
	.value	133
	.value	-89
	.value	-90
	.value	145
	.value	35
	.value	148
	.value	156
	.value	35
	.value	102
	.value	158
	.value	152
	.value	97
	.value	151
	.value	76
	.value	77
	.value	78
	.value	79
	.value	80
	.value	81
	.value	82
	.value	83
	.value	0
	.value	0
	.value	1
	.value	2
	.value	3
	.value	4
	.value	0
	.value	84
	.value	85
	.value	0
	.value	33
	.value	0
	.value	86
	.value	87
	.value	0
	.value	0
	.value	153
	.value	5
	.value	6
	.value	7
	.value	0
	.value	0
	.value	0
	.value	0
	.value	88
	.value	8
	.value	9
	.value	0
	.value	10
	.value	11
	.value	12
	.value	0
	.value	13
	.value	0
	.value	34
	.value	0
	.value	0
	.value	159
	.value	0
	.value	0
	.value	70
	.value	162
	.value	163
	.value	0
	.value	164
	.value	89
	.value	47
	.value	48
	.value	49
	.value	50
	.value	51
	.value	52
	.value	53
	.value	0
	.value	0
	.value	54
	.value	55
	.value	56
	.value	67
	.value	0
	.value	68
	.value	69
	.value	70
	.value	71
	.value	72
	.value	0
	.value	73
	.value	74
	.value	0
	.value	0
	.value	0
	.value	57
	.value	58
	.value	59
	.value	60
	.value	61
	.value	62
	.value	63
	.value	64
	.value	65
	.value	66
	.value	0
	.value	67
	.value	0
	.value	68
	.value	69
	.value	70
	.value	71
	.value	72
	.value	0
	.value	73
	.value	74
	.value	0
	.value	0
	.value	103
	.value	47
	.value	48
	.value	49
	.value	50
	.value	51
	.value	52
	.value	53
	.value	0
	.value	0
	.value	54
	.value	55
	.value	56
	.value	0
	.value	0
	.value	0
	.value	0
	.value	0
	.value	0
	.value	0
	.value	0
	.value	0
	.value	0
	.value	0
	.value	154
	.value	0
	.value	57
	.value	58
	.value	59
	.value	60
	.value	61
	.value	62
	.value	63
	.value	64
	.value	65
	.value	66
	.value	0
	.value	67
	.value	0
	.value	68
	.value	69
	.value	70
	.value	71
	.value	72
	.value	0
	.value	73
	.value	74
	.value	155
	.value	47
	.value	48
	.value	49
	.value	50
	.value	51
	.value	52
	.value	53
	.value	0
	.value	0
	.value	54
	.value	55
	.value	56
	.value	0
	.value	0
	.value	0
	.value	0
	.value	0
	.value	0
	.value	0
	.value	0
	.value	0
	.value	0
	.value	0
	.value	0
	.value	0
	.value	57
	.value	58
	.value	59
	.value	60
	.value	61
	.value	62
	.value	63
	.value	64
	.value	65
	.value	66
	.value	0
	.value	67
	.value	0
	.value	68
	.value	69
	.value	70
	.value	71
	.value	72
	.value	0
	.value	73
	.value	74
	.value	160
	.value	47
	.value	48
	.value	49
	.value	50
	.value	51
	.value	52
	.value	53
	.value	0
	.value	0
	.value	54
	.value	55
	.value	56
	.value	0
	.value	0
	.value	0
	.value	0
	.value	0
	.value	0
	.value	0
	.value	0
	.value	0
	.value	0
	.value	0
	.value	0
	.value	0
	.value	57
	.value	58
	.value	59
	.value	60
	.value	61
	.value	62
	.value	63
	.value	64
	.value	65
	.value	66
	.value	0
	.value	67
	.value	0
	.value	68
	.value	69
	.value	70
	.value	71
	.value	72
	.value	0
	.value	73
	.value	74
	.value	165
	.value	47
	.value	48
	.value	49
	.value	50
	.value	51
	.value	52
	.value	53
	.value	0
	.value	0
	.value	54
	.value	55
	.value	56
	.value	0
	.value	0
	.value	0
	.value	0
	.value	0
	.value	0
	.value	0
	.value	0
	.value	0
	.value	0
	.value	0
	.value	0
	.value	0
	.value	57
	.value	58
	.value	59
	.value	60
	.value	61
	.value	62
	.value	63
	.value	64
	.value	65
	.value	66
	.value	0
	.value	67
	.value	0
	.value	68
	.value	69
	.value	70
	.value	71
	.value	72
	.value	0
	.value	73
	.value	74
	.value	49
	.value	50
	.value	51
	.value	52
	.value	53
	.value	0
	.value	0
	.value	54
	.value	55
	.value	56
	.value	0
	.value	0
	.value	0
	.value	0
	.value	0
	.value	0
	.value	0
	.value	0
	.value	0
	.value	0
	.value	0
	.value	0
	.value	0
	.value	0
	.value	0
	.value	59
	.value	60
	.value	61
	.value	62
	.value	63
	.value	64
	.value	65
	.value	66
	.value	0
	.value	67
	.value	0
	.value	68
	.value	69
	.value	70
	.value	71
	.value	72
	.value	0
	.value	73
	.value	74
	.value	54
	.value	55
	.value	56
	.value	0
	.value	0
	.value	0
	.value	0
	.value	0
	.value	0
	.value	0
	.value	0
	.value	0
	.value	0
	.value	0
	.value	0
	.value	54
	.value	55
	.value	56
	.value	0
	.value	0
	.value	61
	.value	62
	.value	63
	.value	64
	.value	65
	.value	66
	.value	0
	.value	67
	.value	0
	.value	68
	.value	69
	.value	70
	.value	71
	.value	72
	.value	0
	.value	73
	.value	74
	.value	63
	.value	64
	.value	65
	.value	66
	.value	0
	.value	67
	.value	0
	.value	68
	.value	69
	.value	70
	.value	71
	.value	72
	.value	0
	.value	73
	.value	74
	.value	1
	.value	2
	.value	3
	.value	4
	.value	0
	.value	0
	.value	0
	.value	0
	.value	0
	.value	0
	.value	0
	.value	0
	.value	0
	.value	0
	.value	0
	.value	5
	.value	6
	.value	7
	.value	1
	.value	2
	.value	3
	.value	4
	.value	0
	.value	8
	.value	9
	.value	0
	.value	10
	.value	11
	.value	12
	.value	39
	.value	13
	.value	0
	.value	161
	.value	5
	.value	6
	.value	7
	.value	0
	.value	0
	.value	0
	.value	0
	.value	0
	.value	8
	.value	9
	.value	0
	.value	10
	.value	11
	.value	12
	.value	0
	.value	13
	.value	1
	.value	2
	.value	3
	.value	4
	.value	0
	.value	0
	.value	0
	.value	0
	.value	0
	.value	129
	.value	0
	.value	0
	.value	0
	.value	0
	.value	0
	.value	5
	.value	6
	.value	7
	.value	1
	.value	2
	.value	3
	.value	4
	.value	0
	.value	8
	.value	9
	.value	0
	.value	10
	.value	11
	.value	12
	.value	0
	.value	13
	.value	0
	.value	0
	.value	5
	.value	6
	.value	7
	.value	0
	.value	0
	.value	0
	.value	0
	.value	0
	.value	8
	.value	9
	.value	0
	.value	10
	.value	11
	.value	12
	.value	0
	.value	13
	.type	yypgoto, @object
	.size	yypgoto, 17
yypgoto:
	.byte	-55
	.byte	-55
	.byte	0
	.byte	-15
	.byte	-55
	.byte	-55
	.byte	1
	.byte	62
	.byte	-54
	.byte	-55
	.byte	-55
	.byte	-3
	.byte	-55
	.byte	-1
	.byte	-55
	.byte	-55
	.byte	-55
	.align 32
	.type	yypact, @object
	.size	yypact, 332
yypact:
	.value	533
	.value	-49
	.value	-55
	.value	-28
	.value	-55
	.value	533
	.value	533
	.value	-25
	.value	533
	.value	533
	.value	90
	.value	15
	.value	-55
	.value	484
	.value	44
	.value	12
	.value	-55
	.value	338
	.value	102
	.value	-55
	.value	-55
	.value	-55
	.value	-55
	.value	45
	.value	484
	.value	124
	.value	124
	.value	-55
	.value	-55
	.value	16
	.value	-32
	.value	-24
	.value	19
	.value	30
	.value	-55
	.value	338
	.value	-19
	.value	-17
	.value	-55
	.value	46
	.value	56
	.value	148
	.value	34
	.value	5
	.value	-55
	.value	-55
	.value	533
	.value	533
	.value	533
	.value	533
	.value	533
	.value	533
	.value	533
	.value	533
	.value	533
	.value	533
	.value	533
	.value	533
	.value	533
	.value	533
	.value	533
	.value	533
	.value	533
	.value	533
	.value	533
	.value	533
	.value	533
	.value	533
	.value	-55
	.value	-55
	.value	515
	.value	-55
	.value	64
	.value	484
	.value	65
	.value	-55
	.value	533
	.value	533
	.value	533
	.value	533
	.value	533
	.value	533
	.value	533
	.value	533
	.value	533
	.value	533
	.value	-55
	.value	-55
	.value	533
	.value	68
	.value	-55
	.value	-55
	.value	-33
	.value	-55
	.value	-55
	.value	-55
	.value	533
	.value	533
	.value	-55
	.value	533
	.value	-55
	.value	-55
	.value	-26
	.value	-55
	.value	-55
	.value	533
	.value	484
	.value	338
	.value	382
	.value	382
	.value	419
	.value	419
	.value	419
	.value	419
	.value	419
	.value	124
	.value	124
	.value	124
	.value	382
	.value	382
	.value	419
	.value	419
	.value	434
	.value	434
	.value	124
	.value	124
	.value	124
	.value	124
	.value	124
	.value	533
	.value	197
	.value	63
	.value	-31
	.value	-55
	.value	56
	.value	338
	.value	338
	.value	338
	.value	338
	.value	338
	.value	338
	.value	338
	.value	338
	.value	338
	.value	338
	.value	-55
	.value	66
	.value	69
	.value	338
	.value	69
	.value	533
	.value	56
	.value	35
	.value	244
	.value	466
	.value	-55
	.value	533
	.value	-55
	.value	533
	.value	338
	.value	-55
	.value	-55
	.value	291
	.value	56
	.value	56
	.value	-55
	.align 32
	.type	yydefgoto, @object
	.size	yydefgoto, 34
yydefgoto:
	.value	-1
	.value	14
	.value	40
	.value	75
	.value	29
	.value	16
	.value	17
	.value	18
	.value	36
	.value	37
	.value	19
	.value	42
	.value	150
	.value	43
	.value	20
	.value	21
	.value	22
	.align 32
	.type	yydefact, @object
	.size	yydefact, 166
yydefact:
	.byte	4
	.byte	17
	.byte	18
	.byte	73
	.byte	21
	.byte	0
	.byte	0
	.byte	14
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	19
	.byte	4
	.byte	0
	.byte	0
	.byte	23
	.byte	5
	.byte	26
	.byte	27
	.byte	25
	.byte	70
	.byte	28
	.byte	0
	.byte	4
	.byte	63
	.byte	64
	.byte	15
	.byte	12
	.byte	16
	.byte	42
	.byte	41
	.byte	0
	.byte	0
	.byte	80
	.byte	76
	.byte	0
	.byte	0
	.byte	22
	.byte	0
	.byte	85
	.byte	5
	.byte	0
	.byte	0
	.byte	1
	.byte	3
	.byte	6
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	68
	.byte	66
	.byte	0
	.byte	67
	.byte	0
	.byte	4
	.byte	0
	.byte	69
	.byte	4
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	30
	.byte	31
	.byte	0
	.byte	0
	.byte	74
	.byte	20
	.byte	0
	.byte	13
	.byte	84
	.byte	81
	.byte	0
	.byte	0
	.byte	82
	.byte	0
	.byte	83
	.byte	73
	.byte	86
	.byte	72
	.byte	87
	.byte	4
	.byte	4
	.byte	7
	.byte	45
	.byte	43
	.byte	47
	.byte	48
	.byte	49
	.byte	50
	.byte	52
	.byte	57
	.byte	56
	.byte	59
	.byte	46
	.byte	44
	.byte	51
	.byte	53
	.byte	55
	.byte	54
	.byte	58
	.byte	60
	.byte	61
	.byte	62
	.byte	65
	.byte	0
	.byte	0
	.byte	92
	.byte	0
	.byte	71
	.byte	95
	.byte	39
	.byte	40
	.byte	32
	.byte	33
	.byte	34
	.byte	35
	.byte	36
	.byte	38
	.byte	37
	.byte	29
	.byte	75
	.byte	91
	.byte	78
	.byte	77
	.byte	79
	.byte	0
	.byte	96
	.byte	0
	.byte	0
	.byte	0
	.byte	9
	.byte	4
	.byte	24
	.byte	4
	.byte	88
	.byte	11
	.byte	10
	.byte	0
	.byte	94
	.byte	93
	.byte	8
	.align 32
	.type	yyr2, @object
	.size	yyr2, 97
yyr2:
	.byte	0
	.byte	2
	.byte	1
	.byte	2
	.byte	0
	.byte	1
	.byte	2
	.byte	3
	.byte	5
	.byte	3
	.byte	4
	.byte	4
	.byte	1
	.byte	2
	.byte	1
	.byte	2
	.byte	2
	.byte	1
	.byte	1
	.byte	1
	.byte	3
	.byte	1
	.byte	2
	.byte	1
	.byte	4
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	3
	.byte	2
	.byte	2
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	2
	.byte	2
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	2
	.byte	2
	.byte	3
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	1
	.byte	3
	.byte	3
	.byte	1
	.byte	2
	.byte	3
	.byte	1
	.byte	3
	.byte	3
	.byte	3
	.byte	2
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	1
	.byte	2
	.byte	0
	.byte	4
	.byte	1
	.byte	3
	.byte	4
	.byte	3
	.byte	6
	.byte	5
	.byte	3
	.byte	4
	.align 32
	.type	yyr1, @object
	.size	yyr1, 97
yyr1:
	.byte	0
	.byte	61
	.byte	62
	.byte	62
	.byte	63
	.byte	63
	.byte	63
	.byte	63
	.byte	64
	.byte	64
	.byte	64
	.byte	64
	.byte	65
	.byte	65
	.byte	66
	.byte	66
	.byte	66
	.byte	67
	.byte	67
	.byte	67
	.byte	67
	.byte	67
	.byte	67
	.byte	67
	.byte	67
	.byte	67
	.byte	67
	.byte	67
	.byte	67
	.byte	67
	.byte	67
	.byte	67
	.byte	67
	.byte	67
	.byte	67
	.byte	67
	.byte	67
	.byte	67
	.byte	67
	.byte	67
	.byte	67
	.byte	67
	.byte	67
	.byte	67
	.byte	67
	.byte	67
	.byte	67
	.byte	67
	.byte	67
	.byte	67
	.byte	67
	.byte	67
	.byte	67
	.byte	67
	.byte	67
	.byte	67
	.byte	67
	.byte	67
	.byte	67
	.byte	67
	.byte	67
	.byte	67
	.byte	67
	.byte	67
	.byte	67
	.byte	67
	.byte	67
	.byte	67
	.byte	67
	.byte	67
	.byte	67
	.byte	67
	.byte	67
	.byte	68
	.byte	68
	.byte	68
	.byte	69
	.byte	69
	.byte	70
	.byte	70
	.byte	71
	.byte	71
	.byte	71
	.byte	71
	.byte	71
	.byte	72
	.byte	72
	.byte	73
	.byte	72
	.byte	74
	.byte	74
	.byte	75
	.byte	76
	.byte	77
	.byte	77
	.byte	77
	.byte	77
	.section	.rodata.str1.1
.LC51:
	.string	"$end"
.LC52:
	.string	"error"
.LC53:
	.string	"$undefined"
.LC54:
	.string	"\")->\""
.LC55:
	.string	"\"->\""
.LC56:
	.string	"\"+=\""
.LC57:
	.string	"\"-=\""
.LC58:
	.string	"\"*=\""
.LC59:
	.string	"\"/=\""
.LC60:
	.string	"\"\\\\/=\""
.LC61:
	.string	"\"\\\\=\""
.LC62:
	.string	"\"%=\""
.LC63:
	.string	"\"&&\""
.LC64:
	.string	"\"||\""
.LC65:
	.string	"\"===\""
.LC66:
	.string	"\"==\""
.LC67:
	.string	"\"!=\""
.LC68:
	.string	"\">=\""
.LC69:
	.string	"\"<=\""
.LC70:
	.string	"\">>=\""
.LC71:
	.string	"\"<<=\""
.LC72:
	.string	"\">>\""
.LC73:
	.string	"\"<<\""
.LC74:
	.string	"\"\\\\/\""
.LC75:
	.string	"\"++\""
.LC76:
	.string	"\"--\""
.LC77:
	.string	"\"integer\""
.LC78:
	.string	"\"real number\""
.LC79:
	.string	"\"variable name\""
.LC80:
	.string	"\"character string\""
.LC81:
	.string	"DEFFUNC"
.LC82:
	.string	"SEQ"
.LC83:
	.string	"LVAL"
.LC84:
	.string	"INT"
.LC85:
	.string	"';'"
.LC86:
	.string	"','"
.LC87:
	.string	"'='"
.LC88:
	.string	"'&'"
.LC89:
	.string	"'|'"
.LC90:
	.string	"'>'"
.LC91:
	.string	"'<'"
.LC92:
	.string	"'+'"
.LC93:
	.string	"'-'"
.LC94:
	.string	"'%'"
.LC95:
	.string	"'\\\\'"
.LC96:
	.string	"'/'"
.LC97:
	.string	"'*'"
.LC98:
	.string	"SIGN"
.LC99:
	.string	"'^'"
.LC100:
	.string	"'#'"
.LC101:
	.string	"'!'"
.LC102:
	.string	"'~'"
.LC103:
	.string	"'['"
.LC104:
	.string	"'\\''"
.LC105:
	.string	"'.'"
.LC106:
	.string	"MAT"
.LC107:
	.string	"'('"
.LC108:
	.string	"':'"
.LC109:
	.string	"']'"
.LC110:
	.string	"'`'"
.LC111:
	.string	"')'"
.LC112:
	.string	"$accept"
.LC113:
	.string	"sequnused"
.LC114:
	.string	"seq"
.LC115:
	.string	"matrix_index"
.LC116:
	.string	"backticks"
.LC117:
	.string	"history"
.LC118:
	.string	"expr"
.LC119:
	.string	"lvalue"
.LC120:
	.string	"matrixelts"
.LC121:
	.string	"matrixlines"
.LC122:
	.string	"matrix"
.LC123:
	.string	"arg"
.LC124:
	.string	"$@1"
.LC125:
	.string	"listarg"
.LC126:
	.string	"funcid"
.LC127:
	.string	"memberid"
.LC128:
	.string	"definition"
	.section	.data.rel.ro.local,"aw",@progbits
	.align 32
	.type	yytname, @object
	.size	yytname, 316
yytname:
	.long	.LC51
	.long	.LC52
	.long	.LC53
	.long	.LC54
	.long	.LC55
	.long	.LC56
	.long	.LC57
	.long	.LC58
	.long	.LC59
	.long	.LC60
	.long	.LC61
	.long	.LC62
	.long	.LC63
	.long	.LC64
	.long	.LC65
	.long	.LC66
	.long	.LC67
	.long	.LC68
	.long	.LC69
	.long	.LC70
	.long	.LC71
	.long	.LC72
	.long	.LC73
	.long	.LC74
	.long	.LC75
	.long	.LC76
	.long	.LC77
	.long	.LC78
	.long	.LC79
	.long	.LC80
	.long	.LC81
	.long	.LC82
	.long	.LC83
	.long	.LC84
	.long	.LC85
	.long	.LC86
	.long	.LC87
	.long	.LC88
	.long	.LC89
	.long	.LC90
	.long	.LC91
	.long	.LC92
	.long	.LC93
	.long	.LC94
	.long	.LC95
	.long	.LC96
	.long	.LC97
	.long	.LC98
	.long	.LC99
	.long	.LC100
	.long	.LC101
	.long	.LC102
	.long	.LC103
	.long	.LC104
	.long	.LC105
	.long	.LC106
	.long	.LC107
	.long	.LC108
	.long	.LC109
	.long	.LC110
	.long	.LC111
	.long	.LC112
	.long	.LC113
	.long	.LC114
	.long	.LC115
	.long	.LC116
	.long	.LC117
	.long	.LC118
	.long	.LC119
	.long	.LC120
	.long	.LC121
	.long	.LC122
	.long	.LC123
	.long	.LC124
	.long	.LC125
	.long	.LC126
	.long	.LC127
	.long	.LC128
	.long	0
	.section	.rodata
	.align 32
	.type	yytranslate, @object
	.size	yytranslate, 291
yytranslate:
	.byte	0
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	50
	.byte	2
	.byte	49
	.byte	2
	.byte	43
	.byte	37
	.byte	53
	.byte	56
	.byte	60
	.byte	46
	.byte	41
	.byte	35
	.byte	42
	.byte	54
	.byte	45
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	57
	.byte	34
	.byte	40
	.byte	36
	.byte	39
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	52
	.byte	44
	.byte	58
	.byte	48
	.byte	2
	.byte	59
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	38
	.byte	2
	.byte	51
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	1
	.byte	2
	.byte	3
	.byte	4
	.byte	5
	.byte	6
	.byte	7
	.byte	8
	.byte	9
	.byte	10
	.byte	11
	.byte	12
	.byte	13
	.byte	14
	.byte	15
	.byte	16
	.byte	17
	.byte	18
	.byte	19
	.byte	20
	.byte	21
	.byte	22
	.byte	23
	.byte	24
	.byte	25
	.byte	26
	.byte	27
	.byte	28
	.byte	29
	.byte	30
	.byte	31
	.byte	32
	.byte	33
	.byte	47
	.byte	55
	.comm	pari_tree,4,4
	.local	s_node
	.comm	s_node,16,4
	.local	pari_lasterror
	.comm	pari_lasterror,4,4
	.local	pari_unused_chars
	.comm	pari_unused_chars,4,4
	.local	pari_lex_start
	.comm	pari_lex_start,4,4
	.local	pari_discarded
	.comm	pari_discarded,4,4
	.local	pari_once
	.comm	pari_once,4,4
	.section	.rodata.cst4,"aM",@progbits,4
	.align 4
.LC42:
	.long	1107296256
	.align 4
.LC43:
	.long	1065353216
	.section	.text.__x86.get_pc_thunk.cx,"axG",@progbits,__x86.get_pc_thunk.cx,comdat
	.globl	__x86.get_pc_thunk.cx
	.hidden	__x86.get_pc_thunk.cx
	.type	__x86.get_pc_thunk.cx, @function
__x86.get_pc_thunk.cx:
.LFB765:
	.cfi_startproc
	movl	(%esp), %ecx
	ret
	.cfi_endproc
.LFE765:
	.section	.text.__x86.get_pc_thunk.bx,"axG",@progbits,__x86.get_pc_thunk.bx,comdat
	.globl	__x86.get_pc_thunk.bx
	.hidden	__x86.get_pc_thunk.bx
	.type	__x86.get_pc_thunk.bx, @function
__x86.get_pc_thunk.bx:
.LFB766:
	.cfi_startproc
	movl	(%esp), %ebx
	ret
	.cfi_endproc
.LFE766:
	.hidden	__stack_chk_fail_local
	.ident	"GCC: (Ubuntu 4.8.4-2ubuntu1~14.04.3) 4.8.4"
	.section	.note.GNU-stack,"",@progbits
