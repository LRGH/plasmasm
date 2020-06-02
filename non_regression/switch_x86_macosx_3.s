	.section	__TEXT,__text,regular,pure_instructions
	.globl	_fprintftime
	.align	4, 0x90
_fprintftime:                           ## @fprintftime
## BB#0:
	pushl	%ebp
	movl	%esp, %ebp
	pushl	%esi
	subl	$20, %esp
	movl	8(%ebp), %edx
	movl	12(%ebp), %eax
	movl	16(%ebp), %ecx
	movl	24(%ebp), %esi
	movl	%esi, 8(%esp)
	movl	%ecx, 4(%esp)
	movl	%eax, (%esp)
	xorl	%ecx, %ecx
	calll	_strftime_case_
	addl	$20, %esp
	popl	%esi
	popl	%ebp
	retl

	.align	4, 0x90
_strftime_case_:                        ## @strftime_case_
## BB#0:
	pushl	%ebp
	movl	%esp, %ebp
	pushl	%ebx
	pushl	%edi
	pushl	%esi
	subl	$1196, %esp             ## imm = 0x4AC
	movl	%ecx, -1144(%ebp)       ## 4-byte Spill
	calll	L1$pb
L1$pb:
	popl	%eax
	movl	%eax, -1148(%ebp)       ## 4-byte Spill
	movl	L___stack_chk_guard$non_lazy_ptr-L1$pb(%eax), %eax
	movl	%eax, -1152(%ebp)       ## 4-byte Spill
	movl	(%eax), %eax
	movl	%eax, -16(%ebp)
	movl	12(%ebp), %eax
	movl	8(%ebp), %esi
	movl	8(%eax), %ecx
	movl	40(%eax), %eax
	movl	%eax, -1164(%ebp)       ## 4-byte Spill
	cmpl	$13, %ecx
	jl	LBB1_2
## BB#1:
	movl	%edx, -1108(%ebp)       ## 4-byte Spill
	addl	$-12, %ecx
	jmp	LBB1_3
LBB1_2:
	movl	%edx, -1108(%ebp)       ## 4-byte Spill
	testl	%ecx, %ecx
	movl	$12, %eax
	cmovel	%eax, %ecx
LBB1_3:
	movl	%ecx, -1168(%ebp)       ## 4-byte Spill
	movb	(%esi), %al
	movl	$0, -1116(%ebp)         ## 4-byte Folded Spill
	testb	%al, %al
	je	LBB1_330
## BB#4:                                ## %.lr.ph212
	leal	-30(%ebp), %ecx
	movl	$-14, %edx
	subl	%ecx, %edx
	movl	%edx, -1172(%ebp)       ## 4-byte Spill
	movl	$0, -1112(%ebp)         ## 4-byte Folded Spill
	movl	-1148(%ebp), %ecx       ## 4-byte Reload
	leal	L_.str2-L1$pb(%ecx), %ecx
	movl	%ecx, -1156(%ebp)       ## 4-byte Spill
	jmp	LBB1_5
LBB1_312:                               ##   in Loop: Header=BB1_5 Depth=1
	movl	-1120(%ebp), %esi       ## 4-byte Reload
	movl	-1112(%ebp), %ecx       ## 4-byte Reload
	jmp	LBB1_329
LBB1_288:                               ##   in Loop: Header=BB1_5 Depth=1
	movl	12(%ebp), %eax
	movl	20(%eax), %edi
	movl	$1374389535, %edx       ## imm = 0x51EB851F
	movl	%edi, %eax
	imull	%edx
	movl	%edx, %eax
	shrl	$31, %eax
	sarl	$5, %edx
	addl	%eax, %edx
	imull	$100, %edx, %eax
	movl	%edi, %esi
	subl	%eax, %esi
	jns	LBB1_289
## BB#290:                              ##   in Loop: Header=BB1_5 Depth=1
	movl	%esi, %eax
	negl	%eax
	addl	$100, %esi
	cmpl	$-1900, %edi            ## imm = 0xFFFFFFFFFFFFF894
	cmovll	%eax, %esi
LBB1_289:                               ##   in Loop: Header=BB1_5 Depth=1
	movl	%ebx, %eax
	movl	$2, %edi
	jmp	LBB1_118
LBB1_314:                               ##   in Loop: Header=BB1_5 Depth=1
	movl	-1160(%ebp), %esi       ## 4-byte Reload
	addl	%esi, %ebx
	movl	%ebx, %eax
	shrl	$31, %eax
	sarl	$11, %ebx
	addl	%eax, %ebx
	addl	%edi, %edx
	movl	%edx, %eax
	shrl	$31, %eax
	sarl	$5, %edx
	addl	%eax, %edx
	imull	$60, %edx, %eax
	imull	$60, %edi, %edx
	subl	%eax, %edi
	movl	%esi, %eax
	subl	%edx, %eax
	movl	-1148(%ebp), %esi       ## 4-byte Reload
	movl	-1136(%ebp), %edx       ## 4-byte Reload
Ltmp0 = LJTI1_1-L1$pb
	movl	Ltmp0(%esi,%edx,4), %edx
	addl	%esi, %edx
	jmpl	*%edx
LBB1_315:                               ##   in Loop: Header=BB1_5 Depth=1
	movl	-1160(%ebp), %edx       ## 4-byte Reload
	imull	$100, %ebx, %ebx
	addl	%edi, %ebx
	movl	$5, %edi
	movl	$0, -1136(%ebp)         ## 4-byte Folded Spill
	movl	%ebx, %esi
	jmp	LBB1_318
LBB1_76:                                ## %.preheader115
                                        ##   in Loop: Header=BB1_5 Depth=1
	movl	%ecx, %edi
	subl	%eax, %edi
	je	LBB1_78
LBB1_77:                                ##   Parent Loop BB1_5 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	movl	%ebx, 4(%esp)
	movl	$32, (%esp)
	calll	_fputc
	decl	%edi
	jne	LBB1_77
LBB1_78:                                ## %.loopexit116
                                        ##   in Loop: Header=BB1_5 Depth=1
	movl	-1132(%ebp), %eax       ## 4-byte Reload
	testb	%al, %al
	setne	%al
	movl	16(%ebp), %ecx
	movl	%ecx, 8(%esp)
	movl	12(%ebp), %ecx
	movl	%ecx, 4(%esp)
	movl	-1116(%ebp), %ecx       ## 4-byte Reload
	movl	%ecx, (%esp)
	movzbl	%al, %ecx
	movl	%ebx, %edx
	calll	_strftime_case_
	jmp	LBB1_57
LBB1_279:                               ##   in Loop: Header=BB1_5 Depth=1
	movl	$-1840700269, %edx      ## imm = 0xFFFFFFFF92492493
	movl	%esi, %eax
	imull	%edx
	addl	%esi, %edx
	movl	%edx, %eax
	shrl	$31, %eax
	sarl	$2, %edx
	leal	1(%edx,%eax), %esi
LBB1_276:                               ##   in Loop: Header=BB1_5 Depth=1
	movl	-1116(%ebp), %eax       ## 4-byte Reload
	movl	$2, %edi
LBB1_118:                               ## %.loopexit111
                                        ##   in Loop: Header=BB1_5 Depth=1
	movl	%esi, %edx
	shrl	$31, %edx
LBB1_119:                               ##   in Loop: Header=BB1_5 Depth=1
	movl	$0, -1136(%ebp)         ## 4-byte Folded Spill
	movl	$0, -1176(%ebp)         ## 4-byte Folded Spill
LBB1_120:                               ##   in Loop: Header=BB1_5 Depth=1
	cmpl	$79, %eax
	jne	LBB1_123
## BB#121:                              ##   in Loop: Header=BB1_5 Depth=1
	testb	%dl, %dl
	jne	LBB1_123
## BB#122:                              ##   in Loop: Header=BB1_5 Depth=1
	movl	%eax, -1116(%ebp)       ## 4-byte Spill
	movl	$0, -1136(%ebp)         ## 4-byte Folded Spill
	movb	%cl, %al
	movb	%al, -1160(%ebp)        ## 1-byte Spill
	movl	%edi, %eax
LBB1_68:                                ##   in Loop: Header=BB1_5 Depth=1
	movl	%eax, -1128(%ebp)       ## 4-byte Spill
	movw	$9504, -1059(%ebp)      ## imm = 0x2520
	movl	-1116(%ebp), %ebx       ## 4-byte Reload
	testl	%ebx, %ebx
	movb	-1160(%ebp), %al        ## 1-byte Reload
	movb	%al, %cl
	leal	-1057(%ebp), %edx
	je	LBB1_81
LBB1_80:                                ##   in Loop: Header=BB1_5 Depth=1
	movb	%bl, -1057(%ebp)
	movb	%al, %cl
	leal	-1056(%ebp), %edx
LBB1_81:                                ##   in Loop: Header=BB1_5 Depth=1
	movb	%cl, (%edx)
	movb	$0, 1(%edx)
	movl	12(%ebp), %eax
	movl	%eax, 12(%esp)
	leal	-1059(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	-1054(%ebp), %eax
	movl	%eax, (%esp)
	movl	$1024, 4(%esp)          ## imm = 0x400
	calll	_strftime$UNIX2003
	testl	%eax, %eax
	movl	-1112(%ebp), %ecx       ## 4-byte Reload
	movl	-1124(%ebp), %edx       ## 4-byte Reload
	je	LBB1_82
## BB#83:                               ##   in Loop: Header=BB1_5 Depth=1
	leal	-1(%eax), %ebx
	movl	%ebx, -1160(%ebp)       ## 4-byte Spill
	xorl	%edi, %edi
	testl	%edx, %edx
	movl	%edx, %esi
	cmovsl	%edi, %esi
	movl	$0, -1116(%ebp)         ## 4-byte Folded Spill
	cmpl	%esi, %ebx
	movl	%ebx, %edi
	cmovbl	%esi, %edi
	notl	%ecx
	cmpl	%ecx, %edi
	jae	LBB1_330
## BB#84:                               ##   in Loop: Header=BB1_5 Depth=1
	movl	%eax, -1176(%ebp)       ## 4-byte Spill
	movl	%edi, -1116(%ebp)       ## 4-byte Spill
	movl	-1108(%ebp), %ebx       ## 4-byte Reload
	testl	%ebx, %ebx
	je	LBB1_101
## BB#85:                               ##   in Loop: Header=BB1_5 Depth=1
	cmpl	%esi, -1160(%ebp)       ## 4-byte Folded Reload
	setae	%al
	cmpl	$0, -1128(%ebp)         ## 4-byte Folded Reload
	movl	%ebx, %esi
	jne	LBB1_92
## BB#86:                               ##   in Loop: Header=BB1_5 Depth=1
	testb	%al, %al
	jne	LBB1_92
## BB#87:                               ##   in Loop: Header=BB1_5 Depth=1
	movl	%edx, %edi
	movl	-1160(%ebp), %eax       ## 4-byte Reload
	subl	%eax, %edi
	cmpl	$48, -1140(%ebp)        ## 4-byte Folded Reload
	jne	LBB1_90
## BB#88:                               ## %.preheader177
                                        ##   in Loop: Header=BB1_5 Depth=1
	xorl	%ebx, %ebx
	cmpl	%eax, %edx
	je	LBB1_92
	.align	4, 0x90
LBB1_89:                                ## %.lr.ph180
                                        ##   Parent Loop BB1_5 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	movl	%esi, 4(%esp)
	movl	$48, (%esp)
	calll	_fputc
	incl	%ebx
	cmpl	%edi, %ebx
	jb	LBB1_89
	jmp	LBB1_92
LBB1_123:                               ##   in Loop: Header=BB1_5 Depth=1
	movl	%edi, -1128(%ebp)       ## 4-byte Spill
	movl	%edx, -1160(%ebp)       ## 4-byte Spill
	movl	%esi, %edi
	negl	%edi
	testb	%dl, %dl
	cmovel	%esi, %edi
	leal	-16(%ebp), %eax
	movl	%eax, %esi
	movl	-1136(%ebp), %eax       ## 4-byte Reload
	.align	4, 0x90
LBB1_124:                               ## %.critedge
                                        ##   Parent Loop BB1_5 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	testb	$1, %al
	je	LBB1_126
## BB#125:                              ##   in Loop: Header=BB1_124 Depth=2
	movb	$58, -1(%esi)
	decl	%esi
LBB1_126:                               ##   in Loop: Header=BB1_124 Depth=2
	sarl	%eax
	movl	$-858993459, %ecx       ## imm = 0xFFFFFFFFCCCCCCCD
	movl	%eax, %ebx
	movl	%edi, %eax
	mull	%ecx
	shrl	$3, %edx
	imull	$10, %edx, %eax
	movl	%edi, %ecx
	subl	%eax, %ecx
	movl	%ebx, %eax
	orl	$48, %ecx
	movb	%cl, -1(%esi)
	decl	%esi
	cmpl	$9, %edi
	movl	%edx, %edi
	ja	LBB1_124
## BB#127:                              ##   in Loop: Header=BB1_124 Depth=2
	testl	%eax, %eax
	movl	%edx, %edi
	jne	LBB1_124
## BB#128:                              ##   in Loop: Header=BB1_5 Depth=1
	movl	-1112(%ebp), %edi       ## 4-byte Reload
	movl	-1128(%ebp), %ebx       ## 4-byte Reload
LBB1_130:                               ## %.loopexit123
                                        ##   in Loop: Header=BB1_5 Depth=1
	movl	-1124(%ebp), %eax       ## 4-byte Reload
	cmpl	%eax, %ebx
	cmovll	%eax, %ebx
	movb	$45, %dl
	movl	-1160(%ebp), %eax       ## 4-byte Reload
	testb	%al, %al
	jne	LBB1_134
## BB#131:                              ##   in Loop: Header=BB1_5 Depth=1
	movl	-1176(%ebp), %eax       ## 4-byte Reload
	testb	%al, %al
	je	LBB1_133
## BB#132:                              ##   in Loop: Header=BB1_5 Depth=1
	movb	$43, %al
LBB1_133:                               ##   in Loop: Header=BB1_5 Depth=1
	movb	%al, %dl
LBB1_134:                               ##   in Loop: Header=BB1_5 Depth=1
	cmpl	$45, -1140(%ebp)        ## 4-byte Folded Reload
	jne	LBB1_143
## BB#135:                              ##   in Loop: Header=BB1_5 Depth=1
	movl	%esi, -1136(%ebp)       ## 4-byte Spill
	movl	%ebx, -1128(%ebp)       ## 4-byte Spill
	testb	%dl, %dl
	je	LBB1_190
## BB#136:                              ##   in Loop: Header=BB1_5 Depth=1
	movb	%dl, -1160(%ebp)        ## 1-byte Spill
	xorl	%ecx, %ecx
	movl	-1124(%ebp), %eax       ## 4-byte Reload
	testl	%eax, %eax
	cmovsl	%ecx, %eax
	movl	$0, -1116(%ebp)         ## 4-byte Folded Spill
	cmpl	$1, %eax
	movl	$1, %esi
	cmoval	%eax, %esi
	movl	%edi, %ecx
	notl	%ecx
	cmpl	%ecx, %esi
	jae	LBB1_330
## BB#137:                              ##   in Loop: Header=BB1_5 Depth=1
	movl	-1108(%ebp), %ebx       ## 4-byte Reload
	testl	%ebx, %ebx
	je	LBB1_189
## BB#138:                              ##   in Loop: Header=BB1_5 Depth=1
	cmpl	$2, %eax
	setb	%al
	cmpl	$0, -1128(%ebp)         ## 4-byte Folded Reload
	jne	LBB1_188
## BB#139:                              ##   in Loop: Header=BB1_5 Depth=1
	testb	%al, %al
	jne	LBB1_188
## BB#140:                              ## %.preheader157
                                        ##   in Loop: Header=BB1_5 Depth=1
	cmpl	$1, -1124(%ebp)         ## 4-byte Folded Reload
	je	LBB1_188
## BB#141:                              ## %.lr.ph160.preheader
                                        ##   in Loop: Header=BB1_5 Depth=1
	movl	-1124(%ebp), %eax       ## 4-byte Reload
	leal	-1(%eax), %edi
	.align	4, 0x90
LBB1_142:                               ## %.lr.ph160
                                        ##   Parent Loop BB1_5 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	movl	%ebx, 4(%esp)
	movl	$32, (%esp)
	calll	_fputc
	decl	%edi
	jne	LBB1_142
	jmp	LBB1_188
LBB1_82:                                ##   in Loop: Header=BB1_5 Depth=1
	movl	-1120(%ebp), %esi       ## 4-byte Reload
	jmp	LBB1_329
LBB1_143:                               ##   in Loop: Header=BB1_5 Depth=1
	movl	%esi, %eax
	leal	-16(%ebp), %ecx
	subl	%ecx, %eax
	addl	%ebx, %eax
	movb	%dl, %cl
	negb	%cl
	sbbl	%ecx, %ecx
	addl	%eax, %ecx
	testl	%ecx, %ecx
	jle	LBB1_177
## BB#144:                              ##   in Loop: Header=BB1_5 Depth=1
	movb	%dl, -1160(%ebp)        ## 1-byte Spill
	movl	%esi, -1136(%ebp)       ## 4-byte Spill
	movl	%edi, %eax
	notl	%eax
	cmpl	$95, -1140(%ebp)        ## 4-byte Folded Reload
	jne	LBB1_158
## BB#145:                              ##   in Loop: Header=BB1_5 Depth=1
	movl	%ebx, -1128(%ebp)       ## 4-byte Spill
	movl	$0, -1116(%ebp)         ## 4-byte Folded Spill
	movl	%ecx, %ebx
	cmpl	%eax, %ebx
	jae	LBB1_330
## BB#146:                              ##   in Loop: Header=BB1_5 Depth=1
	movl	-1108(%ebp), %edi       ## 4-byte Reload
	testl	%edi, %edi
	sete	%al
	testl	%ebx, %ebx
	je	LBB1_149
## BB#147:                              ##   in Loop: Header=BB1_5 Depth=1
	xorl	%esi, %esi
	testb	%al, %al
	jne	LBB1_149
	.align	4, 0x90
LBB1_148:                               ## %.lr.ph148
                                        ##   Parent Loop BB1_5 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	movl	%edi, 4(%esp)
	movl	$32, (%esp)
	calll	_fputc
	incl	%esi
	cmpl	%ebx, %esi
	jb	LBB1_148
LBB1_149:                               ## %.loopexit146
                                        ##   in Loop: Header=BB1_5 Depth=1
	movl	-1112(%ebp), %edi       ## 4-byte Reload
	addl	%ebx, %edi
	xorl	%edx, %edx
	movl	-1124(%ebp), %ecx       ## 4-byte Reload
	subl	%ebx, %ecx
	cmovlel	%edx, %ecx
	movb	-1160(%ebp), %al        ## 1-byte Reload
	testb	%al, %al
	je	LBB1_150
## BB#151:                              ##   in Loop: Header=BB1_5 Depth=1
	testl	%ecx, %ecx
	movl	%ecx, %eax
	movl	%ecx, -1124(%ebp)       ## 4-byte Spill
	cmovsl	%edx, %eax
	cmpl	$1, %eax
	movl	$1, %esi
	cmoval	%eax, %esi
	movl	%edi, %ecx
	movl	%edi, -1112(%ebp)       ## 4-byte Spill
	notl	%ecx
	cmpl	%ecx, %esi
	movl	$0, -1116(%ebp)         ## 4-byte Folded Spill
	jae	LBB1_330
## BB#152:                              ##   in Loop: Header=BB1_5 Depth=1
	movl	-1108(%ebp), %ebx       ## 4-byte Reload
	testl	%ebx, %ebx
	je	LBB1_189
## BB#153:                              ##   in Loop: Header=BB1_5 Depth=1
	cmpl	$2, %eax
	setb	%al
	cmpl	$0, -1128(%ebp)         ## 4-byte Folded Reload
	jne	LBB1_188
## BB#154:                              ##   in Loop: Header=BB1_5 Depth=1
	testb	%al, %al
	jne	LBB1_188
## BB#155:                              ## %.preheader149
                                        ##   in Loop: Header=BB1_5 Depth=1
	cmpl	$1, -1124(%ebp)         ## 4-byte Folded Reload
	je	LBB1_188
## BB#156:                              ## %.lr.ph152.preheader
                                        ##   in Loop: Header=BB1_5 Depth=1
	movl	-1124(%ebp), %eax       ## 4-byte Reload
	leal	-1(%eax), %edi
LBB1_157:                               ## %.lr.ph152
                                        ##   Parent Loop BB1_5 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	movl	%ebx, 4(%esp)
	movl	$32, (%esp)
	calll	_fputc
	decl	%edi
	jne	LBB1_157
	jmp	LBB1_188
LBB1_90:                                ## %.preheader173
                                        ##   in Loop: Header=BB1_5 Depth=1
	xorl	%ebx, %ebx
	cmpl	%eax, %edx
	je	LBB1_92
	.align	4, 0x90
LBB1_91:                                ## %.lr.ph176
                                        ##   Parent Loop BB1_5 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	movl	%esi, 4(%esp)
	movl	$32, (%esp)
	calll	_fputc
	incl	%ebx
	cmpl	%edi, %ebx
	jb	LBB1_91
LBB1_92:                                ## %.loopexit174
                                        ##   in Loop: Header=BB1_5 Depth=1
	movl	-1136(%ebp), %eax       ## 4-byte Reload
	testb	%al, %al
	je	LBB1_96
## BB#93:                               ##   in Loop: Header=BB1_5 Depth=1
	cmpl	$0, -1160(%ebp)         ## 4-byte Folded Reload
	movl	%esi, %ebx
	je	LBB1_101
## BB#94:                               ## %.lr.ph.i40.preheader
                                        ##   in Loop: Header=BB1_5 Depth=1
	movl	$1, %esi
	subl	-1176(%ebp), %esi       ## 4-byte Folded Reload
	leal	-1053(%ebp), %edi
	.align	4, 0x90
LBB1_95:                                ## %.lr.ph.i40
                                        ##   Parent Loop BB1_5 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	movzbl	(%edi), %eax
	movl	%eax, (%esp)
	calll	___tolower
	movl	%ebx, 4(%esp)
	movl	%eax, (%esp)
	calll	_fputc
	incl	%edi
	incl	%esi
	jne	LBB1_95
	jmp	LBB1_101
LBB1_96:                                ##   in Loop: Header=BB1_5 Depth=1
	movl	-1132(%ebp), %eax       ## 4-byte Reload
	testb	$1, %al
	movl	%esi, %ebx
	je	LBB1_100
## BB#97:                               ##   in Loop: Header=BB1_5 Depth=1
	cmpl	$0, -1160(%ebp)         ## 4-byte Folded Reload
	je	LBB1_101
## BB#98:                               ## %.lr.ph.i43.preheader
                                        ##   in Loop: Header=BB1_5 Depth=1
	movl	$1, %esi
	subl	-1176(%ebp), %esi       ## 4-byte Folded Reload
	leal	-1053(%ebp), %edi
	.align	4, 0x90
LBB1_99:                                ## %.lr.ph.i43
                                        ##   Parent Loop BB1_5 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	movzbl	(%edi), %eax
	movl	%eax, (%esp)
	calll	___toupper
	movl	%ebx, 4(%esp)
	movl	%eax, (%esp)
	calll	_fputc
	incl	%edi
	incl	%esi
	jne	LBB1_99
	jmp	LBB1_101
LBB1_177:                               ##   in Loop: Header=BB1_5 Depth=1
	movl	%esi, -1136(%ebp)       ## 4-byte Spill
	movl	%ebx, -1128(%ebp)       ## 4-byte Spill
	testb	%dl, %dl
	je	LBB1_190
## BB#178:                              ##   in Loop: Header=BB1_5 Depth=1
	movb	%dl, -1160(%ebp)        ## 1-byte Spill
	xorl	%ecx, %ecx
	movl	-1124(%ebp), %eax       ## 4-byte Reload
	testl	%eax, %eax
	cmovsl	%ecx, %eax
	movl	$0, -1116(%ebp)         ## 4-byte Folded Spill
	cmpl	$1, %eax
	movl	$1, %esi
	cmoval	%eax, %esi
	movl	%edi, %ecx
	notl	%ecx
	cmpl	%ecx, %esi
	jae	LBB1_330
## BB#179:                              ##   in Loop: Header=BB1_5 Depth=1
	movl	-1108(%ebp), %ebx       ## 4-byte Reload
	testl	%ebx, %ebx
	je	LBB1_189
## BB#180:                              ##   in Loop: Header=BB1_5 Depth=1
	cmpl	$2, %eax
	setb	%al
	cmpl	$0, -1128(%ebp)         ## 4-byte Folded Reload
	jne	LBB1_188
## BB#181:                              ##   in Loop: Header=BB1_5 Depth=1
	testb	%al, %al
	jne	LBB1_188
## BB#182:                              ##   in Loop: Header=BB1_5 Depth=1
	movl	-1124(%ebp), %eax       ## 4-byte Reload
	leal	-1(%eax), %edi
	cmpl	$48, -1140(%ebp)        ## 4-byte Folded Reload
	jne	LBB1_186
## BB#183:                              ## %.preheader129
                                        ##   in Loop: Header=BB1_5 Depth=1
	testl	%edi, %edi
	je	LBB1_188
## BB#184:                              ## %.lr.ph132.preheader
                                        ##   in Loop: Header=BB1_5 Depth=1
	movl	-1124(%ebp), %eax       ## 4-byte Reload
	leal	-1(%eax), %edi
LBB1_185:                               ## %.lr.ph132
                                        ##   Parent Loop BB1_5 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	movl	%ebx, 4(%esp)
	movl	$48, (%esp)
	calll	_fputc
	decl	%edi
	jne	LBB1_185
	jmp	LBB1_188
LBB1_158:                               ##   in Loop: Header=BB1_5 Depth=1
	movl	$0, -1116(%ebp)         ## 4-byte Folded Spill
	cmpl	%eax, %ebx
	movl	%ebx, -1128(%ebp)       ## 4-byte Spill
	movl	%ecx, %edi
	jae	LBB1_330
## BB#159:                              ##   in Loop: Header=BB1_5 Depth=1
	movb	-1160(%ebp), %cl        ## 1-byte Reload
	testb	%cl, %cl
	je	LBB1_160
## BB#161:                              ##   in Loop: Header=BB1_5 Depth=1
	xorl	%esi, %esi
	movl	-1124(%ebp), %edx       ## 4-byte Reload
	testl	%edx, %edx
	movl	%edx, %ecx
	cmovsl	%esi, %ecx
	movl	$0, -1116(%ebp)         ## 4-byte Folded Spill
	cmpl	$1, %ecx
	movl	$1, %esi
	cmoval	%ecx, %esi
	cmpl	%eax, %esi
	jae	LBB1_330
## BB#162:                              ##   in Loop: Header=BB1_5 Depth=1
	movl	%edi, -1116(%ebp)       ## 4-byte Spill
	movl	-1108(%ebp), %ebx       ## 4-byte Reload
	testl	%ebx, %ebx
	je	LBB1_172
## BB#163:                              ##   in Loop: Header=BB1_5 Depth=1
	cmpl	$2, %ecx
	setb	%al
	cmpl	$0, -1128(%ebp)         ## 4-byte Folded Reload
	jne	LBB1_171
## BB#164:                              ##   in Loop: Header=BB1_5 Depth=1
	testb	%al, %al
	jne	LBB1_171
## BB#165:                              ##   in Loop: Header=BB1_5 Depth=1
	leal	-1(%edx), %edi
	movl	%edx, %eax
	cmpl	$48, -1140(%ebp)        ## 4-byte Folded Reload
	jne	LBB1_169
## BB#166:                              ## %.preheader137
                                        ##   in Loop: Header=BB1_5 Depth=1
	testl	%edi, %edi
	movl	%eax, %edi
	je	LBB1_171
## BB#167:                              ## %.lr.ph140.preheader
                                        ##   in Loop: Header=BB1_5 Depth=1
	decl	%edi
LBB1_168:                               ## %.lr.ph140
                                        ##   Parent Loop BB1_5 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	movl	%ebx, 4(%esp)
	movl	$48, (%esp)
	calll	_fputc
	decl	%edi
	jne	LBB1_168
	jmp	LBB1_171
LBB1_100:                               ##   in Loop: Header=BB1_5 Depth=1
	movl	%ebx, 12(%esp)
	movl	-1160(%ebp), %eax       ## 4-byte Reload
	movl	%eax, 4(%esp)
	leal	-1053(%ebp), %eax
	movl	%eax, (%esp)
	movl	$1, 8(%esp)
	calll	_fwrite$UNIX2003
LBB1_101:                               ## %fwrite_lowcase.exit
                                        ##   in Loop: Header=BB1_5 Depth=1
	movl	%ebx, -1108(%ebp)       ## 4-byte Spill
	jmp	LBB1_306
LBB1_150:                               ##   in Loop: Header=BB1_5 Depth=1
	movl	%ecx, -1124(%ebp)       ## 4-byte Spill
	jmp	LBB1_190
LBB1_160:                               ##   in Loop: Header=BB1_5 Depth=1
	movl	%edi, -1116(%ebp)       ## 4-byte Spill
	movl	-1108(%ebp), %ebx       ## 4-byte Reload
	jmp	LBB1_173
LBB1_223:                               ##   in Loop: Header=BB1_5 Depth=1
	movl	$9, -1124(%ebp)         ## 4-byte Folded Spill
	movl	16(%ebp), %eax
	movl	%eax, %esi
	movl	-1116(%ebp), %eax       ## 4-byte Reload
	movl	$9, %edi
	jmp	LBB1_118
LBB1_225:                               ##   in Loop: Header=BB1_5 Depth=1
	movl	16(%ebp), %eax
	movl	%eax, %esi
	movl	-1116(%ebp), %eax       ## 4-byte Reload
	jmp	LBB1_118
LBB1_297:                               ## %.preheader84
                                        ##   in Loop: Header=BB1_5 Depth=1
	movl	%eax, %esi
	subl	-1136(%ebp), %esi       ## 4-byte Folded Reload
	je	LBB1_299
LBB1_298:                               ##   Parent Loop BB1_5 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	movl	%edi, 4(%esp)
	movl	$32, (%esp)
	calll	_fputc
	decl	%esi
	jne	LBB1_298
LBB1_299:                               ## %.loopexit85
                                        ##   in Loop: Header=BB1_5 Depth=1
	cmpb	$0, -1128(%ebp)         ## 1-byte Folded Reload
	movl	-1132(%ebp), %eax       ## 4-byte Reload
	je	LBB1_302
## BB#300:                              ##   in Loop: Header=BB1_5 Depth=1
	movl	-1136(%ebp), %ecx       ## 4-byte Reload
	testl	%ecx, %ecx
	movl	-1164(%ebp), %esi       ## 4-byte Reload
	je	LBB1_306
LBB1_301:                               ## %.lr.ph.i51
                                        ##   Parent Loop BB1_5 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	movzbl	(%esi), %eax
	movl	%eax, (%esp)
	movl	%ecx, %ebx
	calll	___tolower
	movl	%edi, 4(%esp)
	movl	%eax, (%esp)
	calll	_fputc
	movl	%ebx, %ecx
	incl	%esi
	decl	%ecx
	jne	LBB1_301
	jmp	LBB1_306
LBB1_302:                               ##   in Loop: Header=BB1_5 Depth=1
	testb	%al, %al
	movl	-1136(%ebp), %ecx       ## 4-byte Reload
	je	LBB1_305
## BB#303:                              ##   in Loop: Header=BB1_5 Depth=1
	testl	%ecx, %ecx
	movl	-1164(%ebp), %esi       ## 4-byte Reload
	je	LBB1_306
LBB1_304:                               ## %.lr.ph.i36
                                        ##   Parent Loop BB1_5 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	movzbl	(%esi), %eax
	movl	%eax, (%esp)
	movl	%ecx, %ebx
	calll	___toupper
	movl	%edi, 4(%esp)
	movl	%eax, (%esp)
	calll	_fputc
	movl	%ebx, %ecx
	incl	%esi
	decl	%ecx
	jne	LBB1_304
	jmp	LBB1_306
LBB1_235:                               ## %.preheader102
                                        ##   in Loop: Header=BB1_5 Depth=1
	testl	%edi, %edi
	je	LBB1_237
LBB1_236:                               ## %.lr.ph105
                                        ##   Parent Loop BB1_5 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	movl	%ebx, 4(%esp)
	movl	$32, (%esp)
	calll	_fputc
	decl	%edi
	jne	LBB1_236
LBB1_237:                               ## %.loopexit103
                                        ##   in Loop: Header=BB1_5 Depth=1
	movl	%ebx, 4(%esp)
	movl	$10, (%esp)
	jmp	LBB1_56
LBB1_257:                               ## %.preheader92
                                        ##   in Loop: Header=BB1_5 Depth=1
	testl	%edi, %edi
	je	LBB1_259
LBB1_258:                               ## %.lr.ph95
                                        ##   Parent Loop BB1_5 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	movl	%ebx, 4(%esp)
	movl	$32, (%esp)
	calll	_fputc
	decl	%edi
	jne	LBB1_258
LBB1_259:                               ## %.loopexit93
                                        ##   in Loop: Header=BB1_5 Depth=1
	movl	%ebx, 4(%esp)
	movl	$9, (%esp)
	jmp	LBB1_56
LBB1_319:                               ##   in Loop: Header=BB1_5 Depth=1
	testl	%eax, %eax
	je	LBB1_320
LBB1_317:                               ##   in Loop: Header=BB1_5 Depth=1
	movl	-1160(%ebp), %edx       ## 4-byte Reload
	imull	$10000, %ebx, %ebx      ## imm = 0x2710
	imull	$100, %edi, %esi
	addl	%ebx, %esi
	addl	%eax, %esi
	movl	$9, %edi
	movl	$20, -1136(%ebp)        ## 4-byte Folded Spill
	jmp	LBB1_318
LBB1_186:                               ## %.preheader125
                                        ##   in Loop: Header=BB1_5 Depth=1
	testl	%edi, %edi
	je	LBB1_188
LBB1_187:                               ## %.lr.ph128
                                        ##   Parent Loop BB1_5 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	movl	%ebx, 4(%esp)
	movl	$32, (%esp)
	calll	_fputc
	decl	%edi
	jne	LBB1_187
LBB1_188:                               ## %.loopexit126
                                        ##   in Loop: Header=BB1_5 Depth=1
	movzbl	-1160(%ebp), %eax       ## 1-byte Folded Reload
	movl	%ebx, 4(%esp)
	movl	%eax, (%esp)
	calll	_fputc
LBB1_189:                               ##   in Loop: Header=BB1_5 Depth=1
	movl	-1112(%ebp), %edi       ## 4-byte Reload
	addl	%esi, %edi
	jmp	LBB1_190
LBB1_169:                               ## %.preheader133
                                        ##   in Loop: Header=BB1_5 Depth=1
	testl	%edi, %edi
	je	LBB1_171
LBB1_170:                               ## %.lr.ph136
                                        ##   Parent Loop BB1_5 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	movl	%ebx, 4(%esp)
	movl	$32, (%esp)
	calll	_fputc
	decl	%edi
	jne	LBB1_170
LBB1_171:                               ## %.loopexit134
                                        ##   in Loop: Header=BB1_5 Depth=1
	movzbl	-1160(%ebp), %eax       ## 1-byte Folded Reload
	movl	%ebx, 4(%esp)
	movl	%eax, (%esp)
	calll	_fputc
LBB1_172:                               ##   in Loop: Header=BB1_5 Depth=1
	addl	%esi, -1112(%ebp)       ## 4-byte Folded Spill
LBB1_173:                               ##   in Loop: Header=BB1_5 Depth=1
	testl	%ebx, %ebx
	movl	%ebx, %edi
	movl	-1116(%ebp), %ebx       ## 4-byte Reload
	je	LBB1_176
## BB#174:                              ##   in Loop: Header=BB1_5 Depth=1
	xorl	%esi, %esi
	testl	%ebx, %ebx
	je	LBB1_176
	.align	4, 0x90
LBB1_175:                               ## %.lr.ph144
                                        ##   Parent Loop BB1_5 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	movl	%edi, 4(%esp)
	movl	$48, (%esp)
	calll	_fputc
	incl	%esi
	cmpl	%ebx, %esi
	jb	LBB1_175
LBB1_176:                               ## %.loopexit142
                                        ##   in Loop: Header=BB1_5 Depth=1
	movl	%edi, -1108(%ebp)       ## 4-byte Spill
	movl	-1112(%ebp), %edi       ## 4-byte Reload
	addl	%ebx, %edi
	movl	$0, -1124(%ebp)         ## 4-byte Folded Spill
LBB1_190:                               ##   in Loop: Header=BB1_5 Depth=1
	movl	%edi, -1112(%ebp)       ## 4-byte Spill
	leal	-16(%ebp), %esi
	subl	-1136(%ebp), %esi       ## 4-byte Folded Reload
	xorl	%ebx, %ebx
	movl	-1124(%ebp), %ecx       ## 4-byte Reload
	testl	%ecx, %ecx
	movl	%ecx, %eax
	movl	%ecx, %edx
	cmovsl	%ebx, %eax
	movl	$0, -1116(%ebp)         ## 4-byte Folded Spill
	cmpl	%eax, %esi
	movl	%esi, %ebx
	cmovbl	%eax, %ebx
	movl	%edi, %ecx
	notl	%ecx
	cmpl	%ecx, %ebx
	jae	LBB1_330
## BB#191:                              ##   in Loop: Header=BB1_5 Depth=1
	movl	%ebx, -1116(%ebp)       ## 4-byte Spill
	movl	-1108(%ebp), %edi       ## 4-byte Reload
	testl	%edi, %edi
	je	LBB1_204
## BB#192:                              ##   in Loop: Header=BB1_5 Depth=1
	cmpl	%eax, %esi
	movl	%esi, -1160(%ebp)       ## 4-byte Spill
	setae	%al
	cmpl	$0, -1128(%ebp)         ## 4-byte Folded Reload
	jne	LBB1_199
## BB#193:                              ##   in Loop: Header=BB1_5 Depth=1
	testb	%al, %al
	jne	LBB1_199
## BB#194:                              ##   in Loop: Header=BB1_5 Depth=1
	movl	%edx, %eax
	movl	-1160(%ebp), %ecx       ## 4-byte Reload
	subl	%ecx, %eax
	cmpl	$48, -1140(%ebp)        ## 4-byte Folded Reload
	jne	LBB1_197
## BB#195:                              ## %.preheader169
                                        ##   in Loop: Header=BB1_5 Depth=1
	xorl	%ebx, %ebx
	cmpl	%ecx, %edx
	je	LBB1_199
	.align	4, 0x90
LBB1_196:                               ## %.lr.ph172
                                        ##   Parent Loop BB1_5 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	movl	%edi, 4(%esp)
	movl	$48, (%esp)
	movl	%eax, %esi
	calll	_fputc
	movl	%esi, %eax
	incl	%ebx
	cmpl	%eax, %ebx
	jb	LBB1_196
	jmp	LBB1_199
LBB1_197:                               ## %.preheader165
                                        ##   in Loop: Header=BB1_5 Depth=1
	xorl	%ebx, %ebx
	cmpl	%ecx, %edx
	je	LBB1_199
	.align	4, 0x90
LBB1_198:                               ## %.lr.ph168
                                        ##   Parent Loop BB1_5 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	movl	%edi, 4(%esp)
	movl	$32, (%esp)
	movl	%eax, %esi
	calll	_fputc
	movl	%esi, %eax
	incl	%ebx
	cmpl	%eax, %ebx
	jb	LBB1_198
LBB1_199:                               ## %.loopexit166
                                        ##   in Loop: Header=BB1_5 Depth=1
	movl	-1132(%ebp), %eax       ## 4-byte Reload
	testb	%al, %al
	je	LBB1_203
## BB#200:                              ##   in Loop: Header=BB1_5 Depth=1
	leal	-16(%ebp), %eax
	movl	-1136(%ebp), %ebx       ## 4-byte Reload
	cmpl	%ebx, %eax
	je	LBB1_204
## BB#201:                              ## %.lr.ph.i47.preheader
                                        ##   in Loop: Header=BB1_5 Depth=1
	movl	-1172(%ebp), %eax       ## 4-byte Reload
	leal	(%eax,%ebx), %esi
	.align	4, 0x90
LBB1_202:                               ## %.lr.ph.i47
                                        ##   Parent Loop BB1_5 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	movzbl	(%ebx), %eax
	movl	%eax, (%esp)
	calll	___toupper
	movl	%edi, 4(%esp)
	movl	%eax, (%esp)
	calll	_fputc
	incl	%ebx
	incl	%esi
	jne	LBB1_202
	jmp	LBB1_204
LBB1_203:                               ##   in Loop: Header=BB1_5 Depth=1
	movl	%edi, 12(%esp)
	movl	-1160(%ebp), %eax       ## 4-byte Reload
	movl	%eax, 4(%esp)
	movl	-1136(%ebp), %eax       ## 4-byte Reload
	movl	%eax, (%esp)
	movl	$1, 8(%esp)
	calll	_fwrite$UNIX2003
LBB1_204:                               ## %fwrite_uppcase.exit48
                                        ##   in Loop: Header=BB1_5 Depth=1
	movl	%edi, -1108(%ebp)       ## 4-byte Spill
LBB1_306:                               ## %fwrite_lowcase.exit52
                                        ##   in Loop: Header=BB1_5 Depth=1
	movl	-1112(%ebp), %ecx       ## 4-byte Reload
	addl	-1116(%ebp), %ecx       ## 4-byte Folded Reload
	movl	-1120(%ebp), %esi       ## 4-byte Reload
	jmp	LBB1_329
LBB1_305:                               ##   in Loop: Header=BB1_5 Depth=1
	movl	%edi, 12(%esp)
	movl	%ecx, 4(%esp)
	movl	-1164(%ebp), %eax       ## 4-byte Reload
	movl	%eax, (%esp)
	movl	$1, 8(%esp)
	calll	_fwrite$UNIX2003
	jmp	LBB1_306
LBB1_53:                                ## %.preheader182
                                        ##   in Loop: Header=BB1_5 Depth=1
	testl	%edi, %edi
	je	LBB1_55
LBB1_54:                                ## %.lr.ph185
                                        ##   Parent Loop BB1_5 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	movl	%ebx, 4(%esp)
	movl	$32, (%esp)
	calll	_fputc
	decl	%edi
	jne	LBB1_54
LBB1_55:                                ## %.loopexit183
                                        ##   in Loop: Header=BB1_5 Depth=1
	movl	-1120(%ebp), %eax       ## 4-byte Reload
	movsbl	(%eax), %eax
	movl	%ebx, 4(%esp)
	movl	%eax, (%esp)
LBB1_56:                                ##   in Loop: Header=BB1_5 Depth=1
	calll	_fputc
LBB1_57:                                ##   in Loop: Header=BB1_5 Depth=1
	movl	-1112(%ebp), %ecx       ## 4-byte Reload
	addl	%esi, %ecx
	movl	-1120(%ebp), %esi       ## 4-byte Reload
	jmp	LBB1_329
LBB1_320:                               ##   in Loop: Header=BB1_5 Depth=1
	testl	%edi, %edi
	je	LBB1_321
LBB1_316:                               ##   in Loop: Header=BB1_5 Depth=1
	movl	-1160(%ebp), %edx       ## 4-byte Reload
	imull	$100, %ebx, %ebx
	addl	%edi, %ebx
	movl	$6, %edi
	movl	$4, -1136(%ebp)         ## 4-byte Folded Spill
	movl	%ebx, %esi
LBB1_318:                               ##   in Loop: Header=BB1_5 Depth=1
	shrl	$31, %edx
	movb	$1, %al
	movl	%eax, -1176(%ebp)       ## 4-byte Spill
	movl	-1116(%ebp), %eax       ## 4-byte Reload
	jmp	LBB1_120
LBB1_321:                               ##   in Loop: Header=BB1_5 Depth=1
	movl	-1160(%ebp), %edx       ## 4-byte Reload
	movl	$0, -1136(%ebp)         ## 4-byte Folded Spill
	movl	$3, %edi
	movl	%ebx, %esi
	jmp	LBB1_318
	.align	4, 0x90
LBB1_5:                                 ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB1_15 Depth 2
                                        ##       Child Loop BB1_11 Depth 3
                                        ##     Child Loop BB1_22 Depth 2
                                        ##     Child Loop BB1_258 Depth 2
                                        ##     Child Loop BB1_256 Depth 2
                                        ##     Child Loop BB1_247 Depth 2
                                        ##     Child Loop BB1_236 Depth 2
                                        ##     Child Loop BB1_234 Depth 2
                                        ##     Child Loop BB1_298 Depth 2
                                        ##     Child Loop BB1_296 Depth 2
                                        ##     Child Loop BB1_301 Depth 2
                                        ##     Child Loop BB1_304 Depth 2
                                        ##     Child Loop BB1_226 Depth 2
                                        ##     Child Loop BB1_77 Depth 2
                                        ##     Child Loop BB1_75 Depth 2
                                        ##     Child Loop BB1_307 Depth 2
                                        ##     Child Loop BB1_124 Depth 2
                                        ##     Child Loop BB1_187 Depth 2
                                        ##     Child Loop BB1_185 Depth 2
                                        ##     Child Loop BB1_170 Depth 2
                                        ##     Child Loop BB1_168 Depth 2
                                        ##     Child Loop BB1_175 Depth 2
                                        ##     Child Loop BB1_148 Depth 2
                                        ##     Child Loop BB1_157 Depth 2
                                        ##     Child Loop BB1_142 Depth 2
                                        ##     Child Loop BB1_198 Depth 2
                                        ##     Child Loop BB1_196 Depth 2
                                        ##     Child Loop BB1_202 Depth 2
                                        ##     Child Loop BB1_91 Depth 2
                                        ##     Child Loop BB1_89 Depth 2
                                        ##     Child Loop BB1_95 Depth 2
                                        ##     Child Loop BB1_99 Depth 2
                                        ##     Child Loop BB1_54 Depth 2
                                        ##     Child Loop BB1_52 Depth 2
                                        ##     Child Loop BB1_36 Depth 2
                                        ##     Child Loop BB1_323 Depth 2
                                        ##     Child Loop BB1_42 Depth 2
                                        ##     Child Loop BB1_326 Depth 2
	movzbl	%al, %ecx
	cmpl	$37, %ecx
	jne	LBB1_7
## BB#6:                                ##   in Loop: Header=BB1_5 Depth=1
	xorl	%edx, %edx
	movl	-1144(%ebp), %eax       ## 4-byte Reload
	movb	%al, %bl
	xorl	%edi, %edi
LBB1_15:                                ## %.outer
                                        ##   Parent Loop BB1_5 Depth=1
                                        ## =>  This Loop Header: Depth=2
                                        ##       Child Loop BB1_11 Depth 3
	movb	%dl, %al
	movb	%al, -1128(%ebp)        ## 1-byte Spill
	incl	%esi
	jmp	LBB1_11
	.align	4, 0x90
LBB1_20:                                ## %.backedge.backedge
                                        ##   in Loop: Header=BB1_11 Depth=3
	incl	%esi
	movl	%eax, %edi
LBB1_11:                                ## %.backedge
                                        ##   Parent Loop BB1_5 Depth=1
                                        ##     Parent Loop BB1_15 Depth=2
                                        ## =>    This Inner Loop Header: Depth=3
	movb	(%esi), %cl
	movsbl	%cl, %eax
	movb	$1, %dl
	cmpl	$93, %eax
	jg	LBB1_17
## BB#12:                               ## %.backedge
                                        ##   in Loop: Header=BB1_11 Depth=3
	cmpl	$45, %eax
	je	LBB1_20
## BB#13:                               ## %.backedge
                                        ##   in Loop: Header=BB1_11 Depth=3
	cmpl	$48, %eax
	je	LBB1_20
	jmp	LBB1_14
	.align	4, 0x90
LBB1_17:                                ## %.backedge
                                        ##   in Loop: Header=BB1_11 Depth=3
	cmpl	$94, %eax
	je	LBB1_18
## BB#19:                               ## %.backedge
                                        ##   in Loop: Header=BB1_11 Depth=3
	cmpl	$95, %eax
	je	LBB1_20
	jmp	LBB1_21
LBB1_18:                                ##   in Loop: Header=BB1_11 Depth=3
	movb	$1, %bl
	incl	%esi
	jmp	LBB1_11
	.align	4, 0x90
LBB1_14:                                ## %.backedge
                                        ##   in Loop: Header=BB1_15 Depth=2
	cmpl	$35, %eax
	je	LBB1_15
LBB1_21:                                ##   in Loop: Header=BB1_5 Depth=1
	movl	%edi, -1140(%ebp)       ## 4-byte Spill
	addl	$-48, %eax
	movl	$-1, %edi
	xorl	%edx, %edx
	cmpl	$9, %eax
	ja	LBB1_27
	.align	4, 0x90
LBB1_22:                                ## %.preheader76
                                        ##   Parent Loop BB1_5 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	movl	$2147483647, %edi       ## imm = 0x7FFFFFFF
	cmpl	$214748364, %edx        ## imm = 0xCCCCCCC
	jg	LBB1_26
## BB#23:                               ##   in Loop: Header=BB1_22 Depth=2
	movsbl	%cl, %eax
	cmpl	$214748364, %edx        ## imm = 0xCCCCCCC
	jne	LBB1_25
## BB#24:                               ##   in Loop: Header=BB1_22 Depth=2
	leal	-48(%eax), %ecx
	cmpl	$7, %ecx
	jg	LBB1_26
LBB1_25:                                ## %._crit_edge251
                                        ##   in Loop: Header=BB1_22 Depth=2
	imull	$10, %edx, %ecx
	leal	-48(%ecx,%eax), %edi
LBB1_26:                                ##   in Loop: Header=BB1_22 Depth=2
	movsbl	1(%esi), %ecx
	incl	%esi
	movl	%ecx, %eax
	addl	$-48, %eax
	cmpl	$10, %eax
	movl	%edi, %edx
	jb	LBB1_22
LBB1_27:                                ## %.loopexit
                                        ##   in Loop: Header=BB1_5 Depth=1
	movsbl	%cl, %eax
	cmpl	$69, %eax
	je	LBB1_30
## BB#28:                               ## %.loopexit
                                        ##   in Loop: Header=BB1_5 Depth=1
	cmpl	$79, %eax
	jne	LBB1_29
LBB1_30:                                ##   in Loop: Header=BB1_5 Depth=1
	movl	%edi, -1124(%ebp)       ## 4-byte Spill
	movb	1(%esi), %cl
	incl	%esi
	jmp	LBB1_31
	.align	4, 0x90
LBB1_7:                                 ##   in Loop: Header=BB1_5 Depth=1
	movl	$0, -1116(%ebp)         ## 4-byte Folded Spill
	cmpl	$-3, -1112(%ebp)        ## 4-byte Folded Reload
	ja	LBB1_330
## BB#8:                                ##   in Loop: Header=BB1_5 Depth=1
	movl	-1108(%ebp), %ecx       ## 4-byte Reload
	testl	%ecx, %ecx
	je	LBB1_10
## BB#9:                                ##   in Loop: Header=BB1_5 Depth=1
	movsbl	%al, %eax
	movl	%ecx, 4(%esp)
	movl	%eax, (%esp)
	calll	_fputc
LBB1_10:                                ##   in Loop: Header=BB1_5 Depth=1
	movl	-1112(%ebp), %ecx       ## 4-byte Reload
	incl	%ecx
	jmp	LBB1_329
LBB1_29:                                ##   in Loop: Header=BB1_5 Depth=1
	movl	%edi, -1124(%ebp)       ## 4-byte Spill
	xorl	%eax, %eax
LBB1_31:                                ##   in Loop: Header=BB1_5 Depth=1
	movsbl	%cl, %edi
	cmpl	$36, %edi
	jg	LBB1_43
## BB#32:                               ##   in Loop: Header=BB1_5 Depth=1
	movl	%ebx, -1132(%ebp)       ## 4-byte Spill
	testl	%edi, %edi
	jne	LBB1_34
## BB#33:                               ##   in Loop: Header=BB1_5 Depth=1
	decl	%esi
LBB1_34:                                ## %.loopexit79
                                        ##   in Loop: Header=BB1_5 Depth=1
	movl	%esi, -1120(%ebp)       ## 4-byte Spill
	jmp	LBB1_35
	.align	4, 0x90
LBB1_43:                                ##   in Loop: Header=BB1_5 Depth=1
	movl	%ebx, -1132(%ebp)       ## 4-byte Spill
	movl	%esi, -1120(%ebp)       ## 4-byte Spill
	leal	-37(%edi), %esi
	cmpl	$85, %esi
	ja	LBB1_35
## BB#44:                               ##   in Loop: Header=BB1_5 Depth=1
	movl	%eax, -1116(%ebp)       ## 4-byte Spill
	movl	$1, %edx
	movl	$0, -1136(%ebp)         ## 4-byte Folded Spill
	movb	$114, -1160(%ebp)       ## 1-byte Folded Spill
	movl	-1148(%ebp), %ebx       ## 4-byte Reload
Ltmp1 = LJTI1_0-L1$pb
	movl	Ltmp1(%ebx,%esi,4), %esi
	addl	%ebx, %esi
	movl	-1156(%ebp), %ebx       ## 4-byte Reload
	xorl	%eax, %eax
	jmpl	*%esi
LBB1_263:                               ##   in Loop: Header=BB1_5 Depth=1
	movl	-1116(%ebp), %eax       ## 4-byte Reload
	cmpl	$69, %eax
	je	LBB1_35
## BB#264:                              ##   in Loop: Header=BB1_5 Depth=1
	movl	12(%ebp), %eax
	movl	20(%eax), %edx
	movl	%edx, -1128(%ebp)       ## 4-byte Spill
	movl	24(%eax), %edx
	movl	%edx, -1160(%ebp)       ## 4-byte Spill
	movl	28(%eax), %ebx
	movl	%ebx, -1136(%ebp)       ## 4-byte Spill
	leal	382(%ebx), %esi
	subl	%edx, %esi
	movl	$-1840700269, %edx      ## imm = 0xFFFFFFFF92492493
	movl	%esi, %eax
	imull	%edx
	addl	%esi, %edx
	movl	%edx, %eax
	shrl	$31, %eax
	sarl	$2, %edx
	addl	%eax, %edx
	movl	-1128(%ebp), %eax       ## 4-byte Reload
	sarl	$31, %eax
	andl	$400, %eax              ## imm = 0x190
	imull	$7, %edx, %edx
	subl	%edx, %esi
	leal	3(%ebx), %edx
	subl	%esi, %edx
	movl	%edx, -1176(%ebp)       ## 4-byte Spill
	movl	-1128(%ebp), %edx       ## 4-byte Reload
	leal	-100(%edx,%eax), %eax
	js	LBB1_265
## BB#269:                              ##   in Loop: Header=BB1_5 Depth=1
	movl	$365, %esi              ## imm = 0x16D
	testb	$3, %al
	jne	LBB1_272
## BB#270:                              ##   in Loop: Header=BB1_5 Depth=1
	movl	$1374389535, %edx       ## imm = 0x51EB851F
	movl	%eax, %ebx
	imull	%edx
	movl	%edx, %eax
	shrl	$31, %eax
	sarl	$5, %edx
	addl	%eax, %edx
	imull	$100, %edx, %edx
	movl	$366, %esi              ## imm = 0x16E
	cmpl	%edx, %ebx
	movl	%ebx, %eax
	jne	LBB1_272
## BB#271:                              ##   in Loop: Header=BB1_5 Depth=1
	movl	%eax, %esi
	movl	$1374389535, %edx       ## imm = 0x51EB851F
	imull	%edx
	movl	%edx, %eax
	shrl	$31, %eax
	sarl	$7, %edx
	addl	%eax, %edx
	imull	$400, %edx, %eax        ## imm = 0x190
	cmpl	%eax, %esi
	sete	%al
	movzbl	%al, %esi
	addl	$365, %esi              ## imm = 0x16D
LBB1_272:                               ##   in Loop: Header=BB1_5 Depth=1
	movl	-1136(%ebp), %ebx       ## 4-byte Reload
	subl	%esi, %ebx
	leal	382(%ebx), %esi
	subl	-1160(%ebp), %esi       ## 4-byte Folded Reload
	movl	$-1840700269, %edx      ## imm = 0xFFFFFFFF92492493
	movl	%esi, %eax
	imull	%edx
	addl	%esi, %edx
	movl	%edx, %eax
	shrl	$31, %eax
	sarl	$2, %edx
	addl	%eax, %edx
	imull	$7, %edx, %eax
	subl	%eax, %esi
	addl	$3, %ebx
	subl	%esi, %ebx
	movl	-1176(%ebp), %esi       ## 4-byte Reload
	cmovnsl	%ebx, %esi
	shrl	$31, %ebx
	xorl	$1, %ebx
	jmp	LBB1_273
	.align	4, 0x90
LBB1_309:                               ##   in Loop: Header=BB1_307 Depth=2
	incl	%edx
LBB1_307:                               ## %.preheader78
                                        ##   Parent Loop BB1_5 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	movl	-1120(%ebp), %esi       ## 4-byte Reload
	movzbl	(%esi,%edx), %eax
	cmpl	$122, %eax
	je	LBB1_310
## BB#308:                              ## %.preheader78
                                        ##   in Loop: Header=BB1_307 Depth=2
	movzbl	%al, %eax
	cmpl	$58, %eax
	je	LBB1_309
	jmp	LBB1_35
LBB1_58:                                ##   in Loop: Header=BB1_5 Depth=1
	cmpl	$0, -1116(%ebp)         ## 4-byte Folded Reload
	jne	LBB1_35
## BB#59:                               ##   in Loop: Header=BB1_5 Depth=1
	cmpb	$0, -1128(%ebp)         ## 1-byte Folded Reload
	je	LBB1_64
## BB#60:                               ##   in Loop: Header=BB1_5 Depth=1
	movb	$1, %al
	movl	%eax, -1132(%ebp)       ## 4-byte Spill
	jmp	LBB1_64
LBB1_61:                                ##   in Loop: Header=BB1_5 Depth=1
	cmpb	$0, -1128(%ebp)         ## 1-byte Folded Reload
	je	LBB1_63
## BB#62:                               ##   in Loop: Header=BB1_5 Depth=1
	movb	$1, %al
	movl	%eax, -1132(%ebp)       ## 4-byte Spill
LBB1_63:                                ##   in Loop: Header=BB1_5 Depth=1
	cmpl	$0, -1116(%ebp)         ## 4-byte Folded Reload
	jne	LBB1_35
LBB1_64:                                ## %.thread253
                                        ##   in Loop: Header=BB1_5 Depth=1
	movw	$9504, -1059(%ebp)      ## imm = 0x2520
	movl	$0, -1128(%ebp)         ## 4-byte Folded Spill
	movl	$0, -1136(%ebp)         ## 4-byte Folded Spill
	leal	-1057(%ebp), %edx
	jmp	LBB1_81
LBB1_45:                                ##   in Loop: Header=BB1_5 Depth=1
	cmpl	$0, -1116(%ebp)         ## 4-byte Folded Reload
	jne	LBB1_35
## BB#46:                               ##   in Loop: Header=BB1_5 Depth=1
	xorl	%esi, %esi
	movl	-1124(%ebp), %ecx       ## 4-byte Reload
	testl	%ecx, %ecx
	movl	%ecx, %eax
	movl	%ecx, %edx
	cmovsl	%esi, %eax
	movl	$0, -1116(%ebp)         ## 4-byte Folded Spill
	cmpl	$1, %eax
	movl	$1, %esi
	cmoval	%eax, %esi
	movl	-1112(%ebp), %ecx       ## 4-byte Reload
	notl	%ecx
	cmpl	%ecx, %esi
	jae	LBB1_330
## BB#47:                               ##   in Loop: Header=BB1_5 Depth=1
	movl	-1108(%ebp), %ebx       ## 4-byte Reload
	testl	%ebx, %ebx
	je	LBB1_57
## BB#48:                               ##   in Loop: Header=BB1_5 Depth=1
	cmpl	$2, %eax
	jb	LBB1_55
## BB#49:                               ##   in Loop: Header=BB1_5 Depth=1
	leal	-1(%edx), %edi
	movl	%edx, %eax
	cmpl	$48, -1140(%ebp)        ## 4-byte Folded Reload
	jne	LBB1_53
## BB#50:                               ## %.preheader186
                                        ##   in Loop: Header=BB1_5 Depth=1
	testl	%edi, %edi
	movl	%eax, %edi
	je	LBB1_55
## BB#51:                               ## %.lr.ph189.preheader
                                        ##   in Loop: Header=BB1_5 Depth=1
	decl	%edi
LBB1_52:                                ## %.lr.ph189
                                        ##   Parent Loop BB1_5 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	movl	%ebx, 4(%esp)
	movl	$48, (%esp)
	calll	_fputc
	decl	%edi
	jne	LBB1_52
	jmp	LBB1_55
LBB1_102:                               ##   in Loop: Header=BB1_5 Depth=1
	movb	$67, %al
	movl	-1116(%ebp), %ebx       ## 4-byte Reload
	cmpl	$69, %ebx
	je	LBB1_79
## BB#103:                              ##   in Loop: Header=BB1_5 Depth=1
	cmpl	$79, %ebx
	je	LBB1_35
## BB#104:                              ##   in Loop: Header=BB1_5 Depth=1
	movl	12(%ebp), %eax
	movl	20(%eax), %edi
	movl	$1374389535, %edx       ## imm = 0x51EB851F
	movl	%edi, %eax
	imull	%edx
	movl	%edx, %eax
	shrl	$31, %eax
	sarl	$5, %edx
	leal	(%edx,%eax), %esi
	leal	19(%edx,%eax), %edx
	imull	$100, %esi, %eax
	movl	%edx, %esi
	cmpl	%eax, %edi
	sets	%al
	testl	%esi, %esi
	setg	%dl
	andb	%al, %dl
	movzbl	%dl, %eax
	subl	%eax, %esi
	movl	%ebx, %eax
	cmpl	$-1900, %edi            ## imm = 0xFFFFFFFFFFFFF894
	setl	%dl
	movl	$2, %edi
	jmp	LBB1_119
LBB1_107:                               ##   in Loop: Header=BB1_5 Depth=1
	cmpl	$0, -1116(%ebp)         ## 4-byte Folded Reload
	jne	LBB1_35
## BB#108:                              ##   in Loop: Header=BB1_5 Depth=1
	movl	-1148(%ebp), %eax       ## 4-byte Reload
	leal	L_.str-L1$pb(%eax), %ebx
	jmp	LBB1_70
LBB1_205:                               ##   in Loop: Header=BB1_5 Depth=1
	cmpl	$0, -1116(%ebp)         ## 4-byte Folded Reload
	jne	LBB1_35
## BB#206:                              ##   in Loop: Header=BB1_5 Depth=1
	movl	-1148(%ebp), %eax       ## 4-byte Reload
	leal	L_.str1-L1$pb(%eax), %ebx
	jmp	LBB1_70
LBB1_207:                               ##   in Loop: Header=BB1_5 Depth=1
	movl	-1116(%ebp), %eax       ## 4-byte Reload
	cmpl	$69, %eax
	je	LBB1_35
## BB#208:                              ##   in Loop: Header=BB1_5 Depth=1
	movl	%eax, %edx
	movl	12(%ebp), %eax
	movl	8(%eax), %esi
	jmp	LBB1_111
LBB1_209:                               ##   in Loop: Header=BB1_5 Depth=1
	movl	$2, %edi
	movl	-1116(%ebp), %eax       ## 4-byte Reload
	cmpl	$69, %eax
	je	LBB1_35
## BB#210:                              ##   in Loop: Header=BB1_5 Depth=1
	movl	-1168(%ebp), %esi       ## 4-byte Reload
	jmp	LBB1_118
LBB1_216:                               ##   in Loop: Header=BB1_5 Depth=1
	movl	-1116(%ebp), %eax       ## 4-byte Reload
	cmpl	$69, %eax
	je	LBB1_35
## BB#217:                              ##   in Loop: Header=BB1_5 Depth=1
	movl	%eax, %edx
	movl	12(%ebp), %eax
	movl	4(%eax), %esi
	jmp	LBB1_111
LBB1_221:                               ##   in Loop: Header=BB1_5 Depth=1
	movl	-1116(%ebp), %eax       ## 4-byte Reload
	cmpl	$69, %eax
	je	LBB1_35
## BB#222:                              ##   in Loop: Header=BB1_5 Depth=1
	movl	-1124(%ebp), %edi       ## 4-byte Reload
	cmpl	$-1, %edi
	je	LBB1_223
## BB#224:                              ## %.preheader110
                                        ##   in Loop: Header=BB1_5 Depth=1
	movl	$9, %esi
	cmpl	$8, %edi
	movl	16(%ebp), %eax
	movl	%eax, %edx
	jg	LBB1_225
LBB1_226:                               ## %.lr.ph114
                                        ##   Parent Loop BB1_5 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	movl	$1717986919, %ebx       ## imm = 0x66666667
	movl	%edx, %eax
	imull	%ebx
	movl	%edx, %eax
	shrl	$31, %eax
	sarl	$2, %edx
	addl	%eax, %edx
	decl	%esi
	cmpl	%esi, %edi
	jne	LBB1_226
## BB#227:                              ##   in Loop: Header=BB1_5 Depth=1
	movl	-1116(%ebp), %eax       ## 4-byte Reload
	movl	%edx, %esi
	jmp	LBB1_118
LBB1_238:                               ##   in Loop: Header=BB1_5 Depth=1
	movb	$1, %al
	movl	%eax, -1136(%ebp)       ## 4-byte Spill
LBB1_239:                               ##   in Loop: Header=BB1_5 Depth=1
	movl	-1136(%ebp), %eax       ## 4-byte Reload
	cmpb	$0, -1128(%ebp)         ## 1-byte Folded Reload
	je	LBB1_241
## BB#240:                              ##   in Loop: Header=BB1_5 Depth=1
	movl	$0, -1132(%ebp)         ## 4-byte Folded Spill
LBB1_241:                               ##   in Loop: Header=BB1_5 Depth=1
	je	LBB1_243
## BB#242:                              ##   in Loop: Header=BB1_5 Depth=1
	movb	$1, %al
LBB1_243:                               ##   in Loop: Header=BB1_5 Depth=1
	movl	%eax, -1136(%ebp)       ## 4-byte Spill
	movb	$112, -1160(%ebp)       ## 1-byte Folded Spill
	jmp	LBB1_67
LBB1_244:                               ##   in Loop: Header=BB1_5 Depth=1
	movl	-1116(%ebp), %eax       ## 4-byte Reload
	cmpl	$69, %eax
	je	LBB1_35
## BB#245:                              ##   in Loop: Header=BB1_5 Depth=1
	movl	%eax, %edx
	movl	12(%ebp), %eax
	movl	(%eax), %esi
	jmp	LBB1_111
LBB1_69:                                ##   in Loop: Header=BB1_5 Depth=1
	movl	-1148(%ebp), %eax       ## 4-byte Reload
	leal	L_.str3-L1$pb(%eax), %ebx
LBB1_70:                                ##   in Loop: Header=BB1_5 Depth=1
	movl	-1132(%ebp), %eax       ## 4-byte Reload
	testb	%al, %al
	setne	%al
	movl	16(%ebp), %ecx
	movl	%ecx, 8(%esp)
	movl	12(%ebp), %ecx
	movl	%ecx, 4(%esp)
	movl	%ebx, (%esp)
	movzbl	%al, %ecx
	xorl	%esi, %esi
	xorl	%edx, %edx
	calll	_strftime_case_
	movl	-1124(%ebp), %edx       ## 4-byte Reload
	testl	%edx, %edx
	movl	%edx, %ecx
	movl	%edx, %edi
	cmovsl	%esi, %ecx
	movl	$0, -1116(%ebp)         ## 4-byte Folded Spill
	cmpl	%ecx, %eax
	movl	%eax, %esi
	cmovbl	%ecx, %esi
	movl	-1112(%ebp), %edx       ## 4-byte Reload
	notl	%edx
	cmpl	%edx, %esi
	jae	LBB1_330
## BB#71:                               ##   in Loop: Header=BB1_5 Depth=1
	movl	%ebx, -1116(%ebp)       ## 4-byte Spill
	movl	-1108(%ebp), %ebx       ## 4-byte Reload
	testl	%ebx, %ebx
	je	LBB1_57
## BB#72:                               ##   in Loop: Header=BB1_5 Depth=1
	cmpl	%ecx, %eax
	jae	LBB1_78
## BB#73:                               ##   in Loop: Header=BB1_5 Depth=1
	movl	%edi, %ecx
	cmpl	$48, -1140(%ebp)        ## 4-byte Folded Reload
	jne	LBB1_76
## BB#74:                               ## %.preheader119
                                        ##   in Loop: Header=BB1_5 Depth=1
	movl	%ecx, %edi
	subl	%eax, %edi
	je	LBB1_78
LBB1_75:                                ##   Parent Loop BB1_5 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	movl	%ebx, 4(%esp)
	movl	$48, (%esp)
	calll	_fputc
	decl	%edi
	jne	LBB1_75
	jmp	LBB1_78
LBB1_261:                               ##   in Loop: Header=BB1_5 Depth=1
	movl	-1116(%ebp), %eax       ## 4-byte Reload
	cmpl	$69, %eax
	je	LBB1_35
## BB#262:                              ##   in Loop: Header=BB1_5 Depth=1
	movl	%eax, %esi
	movl	12(%ebp), %eax
	movl	28(%eax), %edi
	addl	$7, %edi
	subl	24(%eax), %edi
	movl	$-1840700269, %edx      ## imm = 0xFFFFFFFF92492493
	movl	%edi, %eax
	imull	%edx
	addl	%edi, %edx
	movl	%edx, %eax
	shrl	$31, %eax
	sarl	$2, %edx
	addl	%eax, %edx
	movl	%esi, %eax
	movl	%edx, %esi
	movl	$2, %edi
	jmp	LBB1_118
LBB1_280:                               ##   in Loop: Header=BB1_5 Depth=1
	movl	-1116(%ebp), %eax       ## 4-byte Reload
	cmpl	$69, %eax
	je	LBB1_35
## BB#281:                              ##   in Loop: Header=BB1_5 Depth=1
	movl	12(%ebp), %eax
	movl	%eax, %edi
	movl	24(%edi), %esi
	leal	6(%esi), %ebx
	movl	$-1840700269, %edx      ## imm = 0xFFFFFFFF92492493
	movl	%ebx, %eax
	imull	%edx
	leal	6(%edx,%esi), %eax
	movl	%eax, %edx
	shrl	$31, %edx
	sarl	$2, %eax
	addl	%edx, %eax
	imull	$7, %eax, %eax
	subl	%eax, %ebx
	movl	28(%edi), %edi
	addl	$7, %edi
	subl	%ebx, %edi
	movl	%edi, %eax
	movl	$-1840700269, %edx      ## imm = 0xFFFFFFFF92492493
	imull	%edx
	movl	%edx, %esi
	addl	%edi, %esi
	movl	%esi, %eax
	shrl	$31, %eax
	sarl	$2, %esi
	addl	%eax, %esi
	jmp	LBB1_276
LBB1_248:                               ##   in Loop: Header=BB1_5 Depth=1
	movl	-1116(%ebp), %eax       ## 4-byte Reload
	cmpl	$79, %eax
	je	LBB1_35
## BB#249:                              ##   in Loop: Header=BB1_5 Depth=1
	movl	$0, -1136(%ebp)         ## 4-byte Folded Spill
	movb	$88, -1160(%ebp)        ## 1-byte Folded Spill
	jmp	LBB1_67
LBB1_284:                               ##   in Loop: Header=BB1_5 Depth=1
	movb	$89, %al
	movl	-1116(%ebp), %ebx       ## 4-byte Reload
	cmpl	$69, %ebx
	je	LBB1_79
## BB#285:                              ##   in Loop: Header=BB1_5 Depth=1
	cmpl	$79, %ebx
	je	LBB1_35
## BB#286:                              ##   in Loop: Header=BB1_5 Depth=1
	movl	12(%ebp), %eax
	movl	20(%eax), %esi
	movl	%ebx, %eax
	cmpl	$-1900, %esi            ## imm = 0xFFFFFFFFFFFFF894
	setl	%dl
	addl	$1900, %esi             ## imm = 0x76C
	movl	$4, %edi
	jmp	LBB1_119
LBB1_291:                               ##   in Loop: Header=BB1_5 Depth=1
	movl	-1164(%ebp), %ecx       ## 4-byte Reload
	testl	%ecx, %ecx
	movl	-1148(%ebp), %eax       ## 4-byte Reload
	leal	L_.str4-L1$pb(%eax), %eax
	cmovel	%eax, %ecx
	movl	%ecx, -1164(%ebp)       ## 4-byte Spill
	movl	%ecx, (%esp)
	calll	_strlen
	xorl	%edi, %edi
	movl	-1124(%ebp), %ecx       ## 4-byte Reload
	testl	%ecx, %ecx
	movl	%ecx, %esi
	movl	%ecx, %edx
	cmovsl	%edi, %esi
	movl	$0, -1116(%ebp)         ## 4-byte Folded Spill
	cmpl	%esi, %eax
	movl	%eax, %edi
	cmovbl	%esi, %edi
	movl	-1112(%ebp), %ecx       ## 4-byte Reload
	notl	%ecx
	cmpl	%ecx, %edi
	jae	LBB1_330
## BB#292:                              ##   in Loop: Header=BB1_5 Depth=1
	movl	%edi, -1116(%ebp)       ## 4-byte Spill
	movl	-1108(%ebp), %edi       ## 4-byte Reload
	testl	%edi, %edi
	je	LBB1_306
## BB#293:                              ##   in Loop: Header=BB1_5 Depth=1
	cmpl	%esi, %eax
	movl	%eax, -1136(%ebp)       ## 4-byte Spill
	jae	LBB1_299
## BB#294:                              ##   in Loop: Header=BB1_5 Depth=1
	movl	%edx, %eax
	cmpl	$48, -1140(%ebp)        ## 4-byte Folded Reload
	jne	LBB1_297
## BB#295:                              ## %.preheader87
                                        ##   in Loop: Header=BB1_5 Depth=1
	movl	%eax, %esi
	subl	-1136(%ebp), %esi       ## 4-byte Folded Reload
	je	LBB1_299
LBB1_296:                               ##   Parent Loop BB1_5 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	movl	%edi, 4(%esp)
	movl	$48, (%esp)
	calll	_fputc
	decl	%esi
	jne	LBB1_296
	jmp	LBB1_299
LBB1_65:                                ##   in Loop: Header=BB1_5 Depth=1
	movl	-1116(%ebp), %eax       ## 4-byte Reload
	cmpl	$79, %eax
	je	LBB1_35
## BB#66:                               ##   in Loop: Header=BB1_5 Depth=1
	movl	$0, -1136(%ebp)         ## 4-byte Folded Spill
	movb	$99, -1160(%ebp)        ## 1-byte Folded Spill
	jmp	LBB1_67
LBB1_109:                               ##   in Loop: Header=BB1_5 Depth=1
	movl	-1116(%ebp), %eax       ## 4-byte Reload
	cmpl	$69, %eax
	je	LBB1_35
## BB#110:                              ##   in Loop: Header=BB1_5 Depth=1
	movl	%eax, %edx
	movl	12(%ebp), %eax
	movl	12(%eax), %esi
LBB1_111:                               ## %.loopexit111
                                        ##   in Loop: Header=BB1_5 Depth=1
	movl	%edx, %eax
	movl	$2, %edi
	jmp	LBB1_118
LBB1_112:                               ##   in Loop: Header=BB1_5 Depth=1
	movl	-1116(%ebp), %eax       ## 4-byte Reload
	cmpl	$69, %eax
	je	LBB1_35
## BB#113:                              ##   in Loop: Header=BB1_5 Depth=1
	movl	%eax, %edx
	movl	12(%ebp), %eax
	movl	12(%eax), %esi
	jmp	LBB1_114
LBB1_214:                               ##   in Loop: Header=BB1_5 Depth=1
	movl	-1116(%ebp), %eax       ## 4-byte Reload
	cmpl	$69, %eax
	je	LBB1_35
## BB#215:                              ##   in Loop: Header=BB1_5 Depth=1
	movl	%eax, %edx
	movl	12(%ebp), %eax
	movl	28(%eax), %esi
	movl	%edx, %eax
	cmpl	$-1, %esi
	setl	%dl
	incl	%esi
	movl	$3, %edi
	jmp	LBB1_119
LBB1_211:                               ##   in Loop: Header=BB1_5 Depth=1
	movl	-1116(%ebp), %eax       ## 4-byte Reload
	cmpl	$69, %eax
	je	LBB1_35
## BB#212:                              ##   in Loop: Header=BB1_5 Depth=1
	movl	%eax, %edx
	movl	12(%ebp), %eax
	movl	8(%eax), %esi
	jmp	LBB1_114
LBB1_213:                               ##   in Loop: Header=BB1_5 Depth=1
	movl	-1116(%ebp), %eax       ## 4-byte Reload
	cmpl	$69, %eax
	movl	%eax, %edx
	movl	-1168(%ebp), %esi       ## 4-byte Reload
	je	LBB1_35
LBB1_114:                               ##   in Loop: Header=BB1_5 Depth=1
	movl	$2, %edi
	movl	-1140(%ebp), %eax       ## 4-byte Reload
	cmpl	$45, %eax
	je	LBB1_117
## BB#115:                              ##   in Loop: Header=BB1_5 Depth=1
	cmpl	$48, %eax
	je	LBB1_117
## BB#116:                              ##   in Loop: Header=BB1_5 Depth=1
	movl	$95, -1140(%ebp)        ## 4-byte Folded Spill
LBB1_117:                               ## %.loopexit111
                                        ##   in Loop: Header=BB1_5 Depth=1
	movl	%edx, %eax
	jmp	LBB1_118
LBB1_218:                               ##   in Loop: Header=BB1_5 Depth=1
	movl	-1116(%ebp), %eax       ## 4-byte Reload
	cmpl	$69, %eax
	je	LBB1_35
## BB#219:                              ##   in Loop: Header=BB1_5 Depth=1
	movl	%eax, %edx
	movl	12(%ebp), %eax
	movl	16(%eax), %esi
	movl	%edx, %eax
	cmpl	$-1, %esi
	setl	%dl
	incl	%esi
	movl	$2, %edi
	jmp	LBB1_119
LBB1_228:                               ##   in Loop: Header=BB1_5 Depth=1
	xorl	%esi, %esi
	movl	-1124(%ebp), %ecx       ## 4-byte Reload
	testl	%ecx, %ecx
	movl	%ecx, %eax
	movl	%ecx, %edx
	cmovsl	%esi, %eax
	movl	$0, -1116(%ebp)         ## 4-byte Folded Spill
	cmpl	$1, %eax
	movl	$1, %esi
	cmoval	%eax, %esi
	movl	-1112(%ebp), %ecx       ## 4-byte Reload
	notl	%ecx
	cmpl	%ecx, %esi
	jae	LBB1_330
## BB#229:                              ##   in Loop: Header=BB1_5 Depth=1
	movl	-1108(%ebp), %ebx       ## 4-byte Reload
	testl	%ebx, %ebx
	je	LBB1_57
## BB#230:                              ##   in Loop: Header=BB1_5 Depth=1
	cmpl	$2, %eax
	jb	LBB1_237
## BB#231:                              ##   in Loop: Header=BB1_5 Depth=1
	leal	-1(%edx), %edi
	movl	%edx, %eax
	cmpl	$48, -1140(%ebp)        ## 4-byte Folded Reload
	jne	LBB1_235
## BB#232:                              ## %.preheader106
                                        ##   in Loop: Header=BB1_5 Depth=1
	testl	%edi, %edi
	movl	%eax, %edi
	je	LBB1_237
## BB#233:                              ## %.lr.ph109.preheader
                                        ##   in Loop: Header=BB1_5 Depth=1
	decl	%edi
LBB1_234:                               ## %.lr.ph109
                                        ##   Parent Loop BB1_5 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	movl	%ebx, 4(%esp)
	movl	$48, (%esp)
	calll	_fputc
	decl	%edi
	jne	LBB1_234
	jmp	LBB1_237
LBB1_246:                               ##   in Loop: Header=BB1_5 Depth=1
	movl	12(%ebp), %eax
	movl	%eax, %ecx
	movl	40(%ecx), %eax
	movl	%eax, -1064(%ebp)
	movsd	32(%ecx), %xmm0
	movsd	%xmm0, -1072(%ebp)
	movsd	24(%ecx), %xmm0
	movsd	%xmm0, -1080(%ebp)
	movsd	16(%ecx), %xmm0
	movsd	%xmm0, -1088(%ebp)
	movsd	(%ecx), %xmm0
	movsd	8(%ecx), %xmm1
	movsd	%xmm1, -1096(%ebp)
	movsd	%xmm0, -1104(%ebp)
	leal	-1104(%ebp), %eax
	movl	%eax, (%esp)
	calll	_mktime$UNIX2003
	movl	%eax, %ecx
	movl	%ecx, %ebx
	shrl	$31, %ebx
	leal	-16(%ebp), %eax
	movl	%eax, %esi
	.align	4, 0x90
LBB1_247:                               ##   Parent Loop BB1_5 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	movl	$1717986919, %edx       ## imm = 0x66666667
	movl	%ecx, %eax
	imull	%edx
	movl	%edx, %eax
	shrl	$31, %eax
	sarl	$2, %edx
	addl	%eax, %edx
	imull	$10, %edx, %eax
	movl	%esi, %edi
	movl	%ecx, %esi
	subl	%eax, %esi
	movl	%esi, %eax
	negl	%eax
	testl	%ebx, %ebx
	cmovel	%esi, %eax
	movl	%edi, %esi
	addl	$48, %eax
	movb	%al, -1(%esi)
	decl	%esi
	addl	$9, %ecx
	cmpl	$18, %ecx
	movl	%edx, %ecx
	ja	LBB1_247
## BB#129:                              ## %.loopexit100
                                        ##   in Loop: Header=BB1_5 Depth=1
	movl	%ebx, -1160(%ebp)       ## 4-byte Spill
	movl	$1, %ebx
	movl	$0, -1176(%ebp)         ## 4-byte Folded Spill
	movl	-1112(%ebp), %edi       ## 4-byte Reload
	jmp	LBB1_130
LBB1_250:                               ##   in Loop: Header=BB1_5 Depth=1
	xorl	%esi, %esi
	movl	-1124(%ebp), %ecx       ## 4-byte Reload
	testl	%ecx, %ecx
	movl	%ecx, %eax
	movl	%ecx, %edx
	cmovsl	%esi, %eax
	movl	$0, -1116(%ebp)         ## 4-byte Folded Spill
	cmpl	$1, %eax
	movl	$1, %esi
	cmoval	%eax, %esi
	movl	-1112(%ebp), %ecx       ## 4-byte Reload
	notl	%ecx
	cmpl	%ecx, %esi
	jae	LBB1_330
## BB#251:                              ##   in Loop: Header=BB1_5 Depth=1
	movl	-1108(%ebp), %ebx       ## 4-byte Reload
	testl	%ebx, %ebx
	je	LBB1_57
## BB#252:                              ##   in Loop: Header=BB1_5 Depth=1
	cmpl	$2, %eax
	jb	LBB1_259
## BB#253:                              ##   in Loop: Header=BB1_5 Depth=1
	leal	-1(%edx), %edi
	movl	%edx, %eax
	cmpl	$48, -1140(%ebp)        ## 4-byte Folded Reload
	jne	LBB1_257
## BB#254:                              ## %.preheader96
                                        ##   in Loop: Header=BB1_5 Depth=1
	testl	%edi, %edi
	movl	%eax, %edi
	je	LBB1_259
## BB#255:                              ## %.lr.ph99.preheader
                                        ##   in Loop: Header=BB1_5 Depth=1
	decl	%edi
LBB1_256:                               ## %.lr.ph99
                                        ##   Parent Loop BB1_5 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	movl	%ebx, 4(%esp)
	movl	$48, (%esp)
	calll	_fputc
	decl	%edi
	jne	LBB1_256
	jmp	LBB1_259
LBB1_260:                               ##   in Loop: Header=BB1_5 Depth=1
	movl	12(%ebp), %eax
	movl	24(%eax), %esi
	leal	6(%esi), %edi
	movl	$-1840700269, %edx      ## imm = 0xFFFFFFFF92492493
	movl	%edi, %eax
	imull	%edx
	leal	6(%edx,%esi), %eax
	movl	%edi, %esi
	movl	%eax, %edx
	shrl	$31, %edx
	sarl	$2, %eax
	addl	%edx, %eax
	imull	$7, %eax, %eax
	subl	%eax, %esi
	incl	%esi
	movl	$1, %edi
	movl	-1116(%ebp), %eax       ## 4-byte Reload
	jmp	LBB1_118
LBB1_282:                               ##   in Loop: Header=BB1_5 Depth=1
	movl	-1116(%ebp), %eax       ## 4-byte Reload
	cmpl	$69, %eax
	je	LBB1_35
## BB#283:                              ##   in Loop: Header=BB1_5 Depth=1
	movl	%eax, %edx
	movl	12(%ebp), %eax
	movl	24(%eax), %esi
	movl	%edx, %eax
	movl	$1, %edi
	jmp	LBB1_118
LBB1_105:                               ##   in Loop: Header=BB1_5 Depth=1
	movl	-1116(%ebp), %eax       ## 4-byte Reload
	cmpl	$79, %eax
	je	LBB1_35
## BB#106:                              ##   in Loop: Header=BB1_5 Depth=1
	movl	$0, -1136(%ebp)         ## 4-byte Folded Spill
	movb	$120, -1160(%ebp)       ## 1-byte Folded Spill
LBB1_67:                                ##   in Loop: Header=BB1_5 Depth=1
	xorl	%eax, %eax
	jmp	LBB1_68
LBB1_287:                               ##   in Loop: Header=BB1_5 Depth=1
	movb	$121, %al
	movl	-1116(%ebp), %ebx       ## 4-byte Reload
	cmpl	$69, %ebx
	jne	LBB1_288
LBB1_79:                                ## %.thread262
                                        ##   in Loop: Header=BB1_5 Depth=1
	movw	$9504, -1059(%ebp)      ## imm = 0x2520
	movl	$0, -1128(%ebp)         ## 4-byte Folded Spill
	movl	$0, -1136(%ebp)         ## 4-byte Folded Spill
	jmp	LBB1_80
LBB1_265:                               ##   in Loop: Header=BB1_5 Depth=1
	decl	%eax
	movl	$365, %ebx              ## imm = 0x16D
	testb	$3, %al
	jne	LBB1_268
## BB#266:                              ##   in Loop: Header=BB1_5 Depth=1
	movl	$1374389535, %edx       ## imm = 0x51EB851F
	movl	%eax, %esi
	imull	%edx
	movl	%edx, %eax
	shrl	$31, %eax
	sarl	$5, %edx
	addl	%eax, %edx
	imull	$100, %edx, %edx
	movl	%esi, %eax
	movl	$366, %ebx              ## imm = 0x16E
	cmpl	%edx, %eax
	jne	LBB1_268
## BB#267:                              ##   in Loop: Header=BB1_5 Depth=1
	movl	%eax, %esi
	movl	$1374389535, %edx       ## imm = 0x51EB851F
	imull	%edx
	movl	%edx, %eax
	shrl	$31, %eax
	sarl	$7, %edx
	addl	%eax, %edx
	imull	$400, %edx, %eax        ## imm = 0x190
	cmpl	%eax, %esi
	sete	%al
	movzbl	%al, %ebx
	addl	$365, %ebx              ## imm = 0x16D
LBB1_268:                               ##   in Loop: Header=BB1_5 Depth=1
	movl	%ebx, %esi
	movl	-1136(%ebp), %eax       ## 4-byte Reload
	leal	382(%esi,%eax), %ebx
	subl	-1160(%ebp), %ebx       ## 4-byte Folded Reload
	movl	$-1840700269, %edx      ## imm = 0xFFFFFFFF92492493
	movl	%ebx, %eax
	imull	%edx
	addl	%ebx, %edx
	movl	%edx, %eax
	shrl	$31, %eax
	sarl	$2, %edx
	addl	%eax, %edx
	imull	$7, %edx, %eax
	subl	%eax, %ebx
	movl	-1136(%ebp), %eax       ## 4-byte Reload
	leal	3(%esi,%eax), %esi
	subl	%ebx, %esi
	movl	$-1, %ebx
LBB1_273:                               ##   in Loop: Header=BB1_5 Depth=1
	cmpl	$71, %edi
	movl	-1128(%ebp), %eax       ## 4-byte Reload
	jne	LBB1_274
## BB#278:                              ##   in Loop: Header=BB1_5 Depth=1
	movl	$-1900, %edx            ## imm = 0xFFFFFFFFFFFFF894
	subl	%ebx, %edx
	cmpl	%edx, %eax
	setl	%dl
	leal	1900(%ebx,%eax), %esi
	movl	$0, -1136(%ebp)         ## 4-byte Folded Spill
	movl	$0, -1176(%ebp)         ## 4-byte Folded Spill
	movl	-1116(%ebp), %eax       ## 4-byte Reload
	movl	$4, %edi
	jmp	LBB1_120
LBB1_274:                               ##   in Loop: Header=BB1_5 Depth=1
	cmpl	$103, %edi
	jne	LBB1_279
## BB#275:                              ##   in Loop: Header=BB1_5 Depth=1
	movl	$1374389535, %edx       ## imm = 0x51EB851F
	movl	%eax, %esi
	imull	%edx
	movl	%edx, %eax
	shrl	$31, %eax
	sarl	$5, %edx
	addl	%eax, %edx
	imull	$100, %edx, %eax
	movl	%esi, %edi
	subl	%eax, %edi
	addl	%ebx, %edi
	movl	%edi, %eax
	movl	$1374389535, %edx       ## imm = 0x51EB851F
	imull	%edx
	movl	%edi, %esi
	movl	%edx, %eax
	shrl	$31, %eax
	sarl	$5, %edx
	addl	%eax, %edx
	imull	$100, %edx, %eax
	subl	%eax, %esi
	jns	LBB1_276
## BB#277:                              ##   in Loop: Header=BB1_5 Depth=1
	movl	$-1900, %eax            ## imm = 0xFFFFFFFFFFFFF894
	subl	%ebx, %eax
	movl	%esi, %edx
	negl	%edx
	addl	$100, %esi
	cmpl	%eax, -1128(%ebp)       ## 4-byte Folded Reload
	cmovll	%edx, %esi
	jmp	LBB1_276
LBB1_310:                               ## %.loopexit80.loopexit
                                        ##   in Loop: Header=BB1_5 Depth=1
	addl	%edx, %esi
	movl	%esi, -1120(%ebp)       ## 4-byte Spill
	movl	%edx, -1136(%ebp)       ## 4-byte Spill
LBB1_311:                               ## %.loopexit80
                                        ##   in Loop: Header=BB1_5 Depth=1
	movl	-1136(%ebp), %esi       ## 4-byte Reload
	movl	12(%ebp), %eax
	cmpl	$0, 32(%eax)
	js	LBB1_312
## BB#313:                              ##   in Loop: Header=BB1_5 Depth=1
	movl	36(%eax), %ebx
	movl	%ebx, -1160(%ebp)       ## 4-byte Spill
	movl	$-2004318071, %edx      ## imm = 0xFFFFFFFF88888889
	movl	%ebx, %eax
	imull	%edx
	movl	%edx, %edi
	addl	%ebx, %edi
	movl	%edi, %eax
	shrl	$31, %eax
	sarl	$5, %edi
	addl	%eax, %edi
	movl	$-1851608123, %edx      ## imm = 0xFFFFFFFF91A2B3C5
	movl	%ebx, %eax
	imull	%edx
	movl	%edx, %ebx
	movl	%edi, %eax
	movl	$-2004318071, %edx      ## imm = 0xFFFFFFFF88888889
	imull	%edx
	cmpl	$3, %esi
	jbe	LBB1_314
	.align	4, 0x90
LBB1_35:                                ## %.loopexit79
                                        ##   in Loop: Header=BB1_5 Depth=1
	movl	-1124(%ebp), %eax       ## 4-byte Reload
	leal	-1(%eax), %eax
	xorl	%edi, %edi
	movl	$-1, %ecx
	movl	-1120(%ebp), %edx       ## 4-byte Reload
	.align	4, 0x90
LBB1_36:                                ##   Parent Loop BB1_5 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	movl	%eax, %ebx
	movl	%ecx, %esi
	leal	-1(%ebx), %eax
	movzbl	(%edx,%edi), %ecx
	decl	%edi
	cmpl	$37, %ecx
	leal	-1(%esi), %ecx
	jne	LBB1_36
## BB#37:                               ##   in Loop: Header=BB1_5 Depth=1
	xorl	%ecx, %ecx
	movl	-1124(%ebp), %eax       ## 4-byte Reload
	testl	%eax, %eax
	cmovsl	%ecx, %eax
	movl	$0, -1116(%ebp)         ## 4-byte Folded Spill
	movl	%edi, %ecx
	negl	%ecx
	movl	%ecx, -1136(%ebp)       ## 4-byte Spill
	cmpl	%eax, %ecx
	movl	%ecx, %edx
	cmovbl	%eax, %edx
	movl	%edx, -1128(%ebp)       ## 4-byte Spill
	movl	-1112(%ebp), %ecx       ## 4-byte Reload
	notl	%ecx
	cmpl	%ecx, %edx
	jae	LBB1_330
## BB#38:                               ##   in Loop: Header=BB1_5 Depth=1
	cmpl	$0, -1108(%ebp)         ## 4-byte Folded Reload
	movl	-1120(%ebp), %edx       ## 4-byte Reload
	je	LBB1_328
## BB#39:                               ##   in Loop: Header=BB1_5 Depth=1
	cmpl	%eax, -1136(%ebp)       ## 4-byte Folded Reload
	movl	-1108(%ebp), %eax       ## 4-byte Reload
	jae	LBB1_324
## BB#40:                               ##   in Loop: Header=BB1_5 Depth=1
	movl	-1124(%ebp), %ecx       ## 4-byte Reload
	addl	%edi, %ecx
	cmpl	$48, -1140(%ebp)        ## 4-byte Folded Reload
	jne	LBB1_322
## BB#41:                               ## %.preheader195
                                        ##   in Loop: Header=BB1_5 Depth=1
	xorl	%edx, %edx
	testl	%ecx, %ecx
	je	LBB1_324
	.align	4, 0x90
LBB1_42:                                ##   Parent Loop BB1_5 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	movl	%edx, -1116(%ebp)       ## 4-byte Spill
	movl	%eax, 4(%esp)
	movl	$48, (%esp)
	calll	_fputc
	movl	-1116(%ebp), %edx       ## 4-byte Reload
	movl	-1108(%ebp), %eax       ## 4-byte Reload
	incl	%edx
	cmpl	%edx, %ebx
	jne	LBB1_42
	jmp	LBB1_324
LBB1_322:                               ## %.preheader191
                                        ##   in Loop: Header=BB1_5 Depth=1
	testl	%ecx, %ecx
	je	LBB1_324
	.align	4, 0x90
LBB1_323:                               ##   Parent Loop BB1_5 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	movl	%eax, 4(%esp)
	movl	$32, (%esp)
	calll	_fputc
	movl	-1108(%ebp), %eax       ## 4-byte Reload
	decl	%ebx
	jne	LBB1_323
	.align	4, 0x90
LBB1_324:                               ## %.loopexit192
                                        ##   in Loop: Header=BB1_5 Depth=1
	movl	%eax, %ecx
	movl	-1132(%ebp), %eax       ## 4-byte Reload
	testb	$1, %al
	je	LBB1_327
## BB#325:                              ##   in Loop: Header=BB1_5 Depth=1
	testl	%edi, %edi
	movl	-1120(%ebp), %edx       ## 4-byte Reload
	je	LBB1_328
	.align	4, 0x90
LBB1_326:                               ## %.lr.ph.i
                                        ##   Parent Loop BB1_5 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	movzbl	1(%edx,%esi), %eax
	movl	%eax, (%esp)
	movl	%edx, %edi
	calll	___toupper
	movl	-1108(%ebp), %ecx       ## 4-byte Reload
	movl	%ecx, 4(%esp)
	movl	%eax, (%esp)
	calll	_fputc
	movl	%edi, %edx
	incl	%esi
	jne	LBB1_326
	jmp	LBB1_328
LBB1_327:                               ##   in Loop: Header=BB1_5 Depth=1
	movl	-1120(%ebp), %esi       ## 4-byte Reload
	leal	1(%esi,%edi), %eax
	movl	%ecx, 12(%esp)
	movl	-1136(%ebp), %ecx       ## 4-byte Reload
	movl	%ecx, 4(%esp)
	movl	%eax, (%esp)
	movl	$1, 8(%esp)
	calll	_fwrite$UNIX2003
	movl	%esi, %edx
LBB1_328:                               ## %fwrite_uppcase.exit
                                        ##   in Loop: Header=BB1_5 Depth=1
	movl	-1112(%ebp), %ecx       ## 4-byte Reload
	addl	-1128(%ebp), %ecx       ## 4-byte Folded Reload
	movl	%edx, %esi
LBB1_329:                               ## %.thread
                                        ##   in Loop: Header=BB1_5 Depth=1
	movl	%ecx, -1112(%ebp)       ## 4-byte Spill
	movb	1(%esi), %al
	incl	%esi
	testb	%al, %al
	movl	%ecx, -1116(%ebp)       ## 4-byte Spill
	jne	LBB1_5
LBB1_330:                               ## %split214
	movl	-1116(%ebp), %ecx       ## 4-byte Reload
	movl	-1152(%ebp), %eax       ## 4-byte Reload
	movl	(%eax), %eax
	cmpl	-16(%ebp), %eax
	jne	LBB1_332
## BB#331:                              ## %split214
	movl	%ecx, %eax
	addl	$1196, %esp             ## imm = 0x4AC
	popl	%esi
	popl	%edi
	popl	%ebx
	popl	%ebp
	retl
LBB1_332:                               ## %split214
	calll	___stack_chk_fail
	.align	2, 0x90
L1_0_set_45 = LBB1_45-L1$pb
L1_0_set_35 = LBB1_35-L1$pb
L1_0_set_307 = LBB1_307-L1$pb
L1_0_set_58 = LBB1_58-L1$pb
L1_0_set_102 = LBB1_102-L1$pb
L1_0_set_107 = LBB1_107-L1$pb
L1_0_set_205 = LBB1_205-L1$pb
L1_0_set_263 = LBB1_263-L1$pb
L1_0_set_207 = LBB1_207-L1$pb
L1_0_set_209 = LBB1_209-L1$pb
L1_0_set_216 = LBB1_216-L1$pb
L1_0_set_221 = LBB1_221-L1$pb
L1_0_set_238 = LBB1_238-L1$pb
L1_0_set_70 = LBB1_70-L1$pb
L1_0_set_244 = LBB1_244-L1$pb
L1_0_set_69 = LBB1_69-L1$pb
L1_0_set_261 = LBB1_261-L1$pb
L1_0_set_280 = LBB1_280-L1$pb
L1_0_set_248 = LBB1_248-L1$pb
L1_0_set_284 = LBB1_284-L1$pb
L1_0_set_291 = LBB1_291-L1$pb
L1_0_set_61 = LBB1_61-L1$pb
L1_0_set_65 = LBB1_65-L1$pb
L1_0_set_109 = LBB1_109-L1$pb
L1_0_set_112 = LBB1_112-L1$pb
L1_0_set_214 = LBB1_214-L1$pb
L1_0_set_211 = LBB1_211-L1$pb
L1_0_set_213 = LBB1_213-L1$pb
L1_0_set_218 = LBB1_218-L1$pb
L1_0_set_228 = LBB1_228-L1$pb
L1_0_set_239 = LBB1_239-L1$pb
L1_0_set_68 = LBB1_68-L1$pb
L1_0_set_246 = LBB1_246-L1$pb
L1_0_set_250 = LBB1_250-L1$pb
L1_0_set_260 = LBB1_260-L1$pb
L1_0_set_282 = LBB1_282-L1$pb
L1_0_set_105 = LBB1_105-L1$pb
L1_0_set_287 = LBB1_287-L1$pb
L1_0_set_311 = LBB1_311-L1$pb
LJTI1_0:
	.long	L1_0_set_45
	.long	L1_0_set_35
	.long	L1_0_set_35
	.long	L1_0_set_35
	.long	L1_0_set_35
	.long	L1_0_set_35
	.long	L1_0_set_35
	.long	L1_0_set_35
	.long	L1_0_set_35
	.long	L1_0_set_35
	.long	L1_0_set_35
	.long	L1_0_set_35
	.long	L1_0_set_35
	.long	L1_0_set_35
	.long	L1_0_set_35
	.long	L1_0_set_35
	.long	L1_0_set_35
	.long	L1_0_set_35
	.long	L1_0_set_35
	.long	L1_0_set_35
	.long	L1_0_set_35
	.long	L1_0_set_307
	.long	L1_0_set_35
	.long	L1_0_set_35
	.long	L1_0_set_35
	.long	L1_0_set_35
	.long	L1_0_set_35
	.long	L1_0_set_35
	.long	L1_0_set_58
	.long	L1_0_set_58
	.long	L1_0_set_102
	.long	L1_0_set_107
	.long	L1_0_set_35
	.long	L1_0_set_205
	.long	L1_0_set_263
	.long	L1_0_set_207
	.long	L1_0_set_209
	.long	L1_0_set_35
	.long	L1_0_set_35
	.long	L1_0_set_35
	.long	L1_0_set_216
	.long	L1_0_set_221
	.long	L1_0_set_35
	.long	L1_0_set_238
	.long	L1_0_set_35
	.long	L1_0_set_70
	.long	L1_0_set_244
	.long	L1_0_set_69
	.long	L1_0_set_261
	.long	L1_0_set_263
	.long	L1_0_set_280
	.long	L1_0_set_248
	.long	L1_0_set_284
	.long	L1_0_set_291
	.long	L1_0_set_35
	.long	L1_0_set_35
	.long	L1_0_set_35
	.long	L1_0_set_35
	.long	L1_0_set_35
	.long	L1_0_set_35
	.long	L1_0_set_58
	.long	L1_0_set_61
	.long	L1_0_set_65
	.long	L1_0_set_109
	.long	L1_0_set_112
	.long	L1_0_set_35
	.long	L1_0_set_263
	.long	L1_0_set_61
	.long	L1_0_set_35
	.long	L1_0_set_214
	.long	L1_0_set_211
	.long	L1_0_set_213
	.long	L1_0_set_218
	.long	L1_0_set_228
	.long	L1_0_set_35
	.long	L1_0_set_239
	.long	L1_0_set_35
	.long	L1_0_set_68
	.long	L1_0_set_246
	.long	L1_0_set_250
	.long	L1_0_set_260
	.long	L1_0_set_35
	.long	L1_0_set_282
	.long	L1_0_set_105
	.long	L1_0_set_287
	.long	L1_0_set_311
L1_1_set_315 = LBB1_315-L1$pb
L1_1_set_316 = LBB1_316-L1$pb
L1_1_set_317 = LBB1_317-L1$pb
L1_1_set_319 = LBB1_319-L1$pb
LJTI1_1:
	.long	L1_1_set_315
	.long	L1_1_set_316
	.long	L1_1_set_317
	.long	L1_1_set_319

	.section	__TEXT,__cstring,cstring_literals
L_.str:                                 ## @.str
	.asciz	"%m/%d/%y"

L_.str1:                                ## @.str1
	.asciz	"%Y-%m-%d"

L_.str2:                                ## @.str2
	.asciz	"%H:%M"

L_.str3:                                ## @.str3
	.asciz	"%H:%M:%S"

L_.str4:                                ## @.str4
	.space	1


	.section	__IMPORT,__pointers,non_lazy_symbol_pointers
L___stack_chk_guard$non_lazy_ptr:
	.indirect_symbol	___stack_chk_guard
	.long	0

.subsections_via_symbols
