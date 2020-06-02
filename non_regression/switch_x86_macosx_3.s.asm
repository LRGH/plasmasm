	.section       __TEXT,__text,regular,pure_instructions
	.align 4, 0x90
	.globl	_fprintftime
_fprintftime:
	pushl     %ebp
	movl      %esp, %ebp
	pushl     %esi
	subl      $20, %esp
	movl      8(%ebp), %edx
	movl      12(%ebp), %eax
	movl      16(%ebp), %ecx
	movl      24(%ebp), %esi
	movl      %esi, 8(%esp)
	movl      %ecx, 4(%esp)
	movl      %eax, (%esp)
	xorl      %ecx, %ecx
	call      _strftime_case_
	addl      $20, %esp
	popl      %esi
	popl      %ebp
	ret       
	.align 4, 0x90
_strftime_case_:
	pushl     %ebp
	movl      %esp, %ebp
	pushl     %ebx
	pushl     %edi
	pushl     %esi
	subl      $1196, %esp
	movl      %ecx, -1144(%ebp)
	call      L1$pb
L1$pb:
	popl      %eax
	movl      %eax, -1148(%ebp)
	movl      L___stack_chk_guard$non_lazy_ptr-L1$pb(%eax), %eax
	movl      %eax, -1152(%ebp)
	movl      (%eax), %eax
	movl      %eax, -16(%ebp)
	movl      12(%ebp), %eax
	movl      8(%ebp), %esi
	movl      8(%eax), %ecx
	movl      40(%eax), %eax
	movl      %eax, -1164(%ebp)
	cmpl      $13, %ecx
	jl        LBB1_2
	movl      %edx, -1108(%ebp)
	addl      $-12, %ecx
	jmp       LBB1_3
LBB1_2:
	movl      %edx, -1108(%ebp)
	testl     %ecx, %ecx
	movl      $12, %eax
	cmove     %eax, %ecx
LBB1_3:
	movl      %ecx, -1168(%ebp)
	movb      (%esi), %al
	movl      $0, -1116(%ebp)
	testb     %al, %al
	je        LBB1_330
	leal      -30(%ebp), %ecx
	movl      $-14, %edx
	subl      %ecx, %edx
	movl      %edx, -1172(%ebp)
	movl      $0, -1112(%ebp)
	movl      -1148(%ebp), %ecx
	leal      L_.str2-L1$pb(%ecx), %ecx
	movl      %ecx, -1156(%ebp)
	jmp       LBB1_5
LBB1_312:
	movl      -1120(%ebp), %esi
	movl      -1112(%ebp), %ecx
	jmp       LBB1_329
LBB1_288:
	movl      12(%ebp), %eax
	movl      20(%eax), %edi
	movl      $1374389535, %edx
	movl      %edi, %eax
	imull     %edx
	movl      %edx, %eax
	shrl      $31, %eax
	sarl      $5, %edx
	addl      %eax, %edx
	imull     $100, %edx, %eax
	movl      %edi, %esi
	subl      %eax, %esi
	jns       LBB1_289
	movl      %esi, %eax
	negl      %eax
	addl      $100, %esi
	cmpl      $-1900, %edi
	cmovl     %eax, %esi
LBB1_289:
	movl      %ebx, %eax
	movl      $2, %edi
	jmp       LBB1_118
LBB1_314:
	movl      -1160(%ebp), %esi
	addl      %esi, %ebx
	movl      %ebx, %eax
	shrl      $31, %eax
	sarl      $11, %ebx
	addl      %eax, %ebx
	addl      %edi, %edx
	movl      %edx, %eax
	shrl      $31, %eax
	sarl      $5, %edx
	addl      %eax, %edx
	imull     $60, %edx, %eax
	imull     $60, %edi, %edx
	subl      %eax, %edi
	movl      %esi, %eax
	subl      %edx, %eax
	movl      -1148(%ebp), %esi
	movl      -1136(%ebp), %edx
	movl      Ltmp0(%esi,%edx,4), %edx
	addl      %esi, %edx
	jmp       *%edx
LBB1_315:
	movl      -1160(%ebp), %edx
	imull     $100, %ebx, %ebx
	addl      %edi, %ebx
	movl      $5, %edi
	movl      $0, -1136(%ebp)
	movl      %ebx, %esi
	jmp       LBB1_318
LBB1_76:
	movl      %ecx, %edi
	subl      %eax, %edi
	je        LBB1_78
LBB1_77:
	movl      %ebx, 4(%esp)
	movl      $32, (%esp)
	call      _fputc
	decl      %edi
	jne       LBB1_77
LBB1_78:
	movl      -1132(%ebp), %eax
	testb     %al, %al
	setne     %al
	movl      16(%ebp), %ecx
	movl      %ecx, 8(%esp)
	movl      12(%ebp), %ecx
	movl      %ecx, 4(%esp)
	movl      -1116(%ebp), %ecx
	movl      %ecx, (%esp)
	movzbl    %al, %ecx
	movl      %ebx, %edx
	call      _strftime_case_
	jmp       LBB1_57
LBB1_279:
	movl      $-1840700269, %edx
	movl      %esi, %eax
	imull     %edx
	addl      %esi, %edx
	movl      %edx, %eax
	shrl      $31, %eax
	sarl      $2, %edx
	leal      1(%edx,%eax), %esi
LBB1_276:
	movl      -1116(%ebp), %eax
	movl      $2, %edi
LBB1_118:
	movl      %esi, %edx
	shrl      $31, %edx
LBB1_119:
	movl      $0, -1136(%ebp)
	movl      $0, -1176(%ebp)
LBB1_120:
	cmpl      $79, %eax
	jne       LBB1_123
	testb     %dl, %dl
	jne       LBB1_123
	movl      %eax, -1116(%ebp)
	movl      $0, -1136(%ebp)
	movb      %cl, %al
	movb      %al, -1160(%ebp)
	movl      %edi, %eax
LBB1_68:
	movl      %eax, -1128(%ebp)
	movw      $9504, -1059(%ebp)
	movl      -1116(%ebp), %ebx
	testl     %ebx, %ebx
	movb      -1160(%ebp), %al
	movb      %al, %cl
	leal      -1057(%ebp), %edx
	je        LBB1_81
LBB1_80:
	movb      %bl, -1057(%ebp)
	movb      %al, %cl
	leal      -1056(%ebp), %edx
LBB1_81:
	movb      %cl, (%edx)
	movb      $0, 1(%edx)
	movl      12(%ebp), %eax
	movl      %eax, 12(%esp)
	leal      -1059(%ebp), %eax
	movl      %eax, 8(%esp)
	leal      -1054(%ebp), %eax
	movl      %eax, (%esp)
	movl      $1024, 4(%esp)
	call      _strftime$UNIX2003
	testl     %eax, %eax
	movl      -1112(%ebp), %ecx
	movl      -1124(%ebp), %edx
	je        LBB1_82
	leal      -1(%eax), %ebx
	movl      %ebx, -1160(%ebp)
	xorl      %edi, %edi
	testl     %edx, %edx
	movl      %edx, %esi
	cmovs     %edi, %esi
	movl      $0, -1116(%ebp)
	cmpl      %esi, %ebx
	movl      %ebx, %edi
	cmovb     %esi, %edi
	notl      %ecx
	cmpl      %ecx, %edi
	jae       LBB1_330
	movl      %eax, -1176(%ebp)
	movl      %edi, -1116(%ebp)
	movl      -1108(%ebp), %ebx
	testl     %ebx, %ebx
	je        LBB1_101
	cmpl      %esi, -1160(%ebp)
	setae     %al
	cmpl      $0, -1128(%ebp)
	movl      %ebx, %esi
	jne       LBB1_92
	testb     %al, %al
	jne       LBB1_92
	movl      %edx, %edi
	movl      -1160(%ebp), %eax
	subl      %eax, %edi
	cmpl      $48, -1140(%ebp)
	jne       LBB1_90
	xorl      %ebx, %ebx
	cmpl      %eax, %edx
	je        LBB1_92
	.align 4, 0x90
LBB1_89:
	movl      %esi, 4(%esp)
	movl      $48, (%esp)
	call      _fputc
	incl      %ebx
	cmpl      %edi, %ebx
	jb        LBB1_89
	jmp       LBB1_92
LBB1_123:
	movl      %edi, -1128(%ebp)
	movl      %edx, -1160(%ebp)
	movl      %esi, %edi
	negl      %edi
	testb     %dl, %dl
	cmove     %esi, %edi
	leal      -16(%ebp), %eax
	movl      %eax, %esi
	movl      -1136(%ebp), %eax
	.align 4, 0x90
LBB1_124:
	testb     $1, %al
	je        LBB1_126
	movb      $58, -1(%esi)
	decl      %esi
LBB1_126:
	sarl      $1, %eax
	movl      $-858993459, %ecx
	movl      %eax, %ebx
	movl      %edi, %eax
	mull      %ecx
	shrl      $3, %edx
	imull     $10, %edx, %eax
	movl      %edi, %ecx
	subl      %eax, %ecx
	movl      %ebx, %eax
	orl       $48, %ecx
	movb      %cl, -1(%esi)
	decl      %esi
	cmpl      $9, %edi
	movl      %edx, %edi
	ja        LBB1_124
	testl     %eax, %eax
	movl      %edx, %edi
	jne       LBB1_124
	movl      -1112(%ebp), %edi
	movl      -1128(%ebp), %ebx
LBB1_130:
	movl      -1124(%ebp), %eax
	cmpl      %eax, %ebx
	cmovl     %eax, %ebx
	movb      $45, %dl
	movl      -1160(%ebp), %eax
	testb     %al, %al
	jne       LBB1_134
	movl      -1176(%ebp), %eax
	testb     %al, %al
	je        LBB1_133
	movb      $43, %al
LBB1_133:
	movb      %al, %dl
LBB1_134:
	cmpl      $45, -1140(%ebp)
	jne       LBB1_143
	movl      %esi, -1136(%ebp)
	movl      %ebx, -1128(%ebp)
	testb     %dl, %dl
	je        LBB1_190
	movb      %dl, -1160(%ebp)
	xorl      %ecx, %ecx
	movl      -1124(%ebp), %eax
	testl     %eax, %eax
	cmovs     %ecx, %eax
	movl      $0, -1116(%ebp)
	cmpl      $1, %eax
	movl      $1, %esi
	cmova     %eax, %esi
	movl      %edi, %ecx
	notl      %ecx
	cmpl      %ecx, %esi
	jae       LBB1_330
	movl      -1108(%ebp), %ebx
	testl     %ebx, %ebx
	je        LBB1_189
	cmpl      $2, %eax
	setb      %al
	cmpl      $0, -1128(%ebp)
	jne       LBB1_188
	testb     %al, %al
	jne       LBB1_188
	cmpl      $1, -1124(%ebp)
	je        LBB1_188
	movl      -1124(%ebp), %eax
	leal      -1(%eax), %edi
	.align 4, 0x90
LBB1_142:
	movl      %ebx, 4(%esp)
	movl      $32, (%esp)
	call      _fputc
	decl      %edi
	jne       LBB1_142
	jmp       LBB1_188
LBB1_82:
	movl      -1120(%ebp), %esi
	jmp       LBB1_329
LBB1_143:
	movl      %esi, %eax
	leal      -16(%ebp), %ecx
	subl      %ecx, %eax
	addl      %ebx, %eax
	movb      %dl, %cl
	negb      %cl
	sbbl      %ecx, %ecx
	addl      %eax, %ecx
	testl     %ecx, %ecx
	jle       LBB1_177
	movb      %dl, -1160(%ebp)
	movl      %esi, -1136(%ebp)
	movl      %edi, %eax
	notl      %eax
	cmpl      $95, -1140(%ebp)
	jne       LBB1_158
	movl      %ebx, -1128(%ebp)
	movl      $0, -1116(%ebp)
	movl      %ecx, %ebx
	cmpl      %eax, %ebx
	jae       LBB1_330
	movl      -1108(%ebp), %edi
	testl     %edi, %edi
	sete      %al
	testl     %ebx, %ebx
	je        LBB1_149
	xorl      %esi, %esi
	testb     %al, %al
	jne       LBB1_149
	.align 4, 0x90
LBB1_148:
	movl      %edi, 4(%esp)
	movl      $32, (%esp)
	call      _fputc
	incl      %esi
	cmpl      %ebx, %esi
	jb        LBB1_148
LBB1_149:
	movl      -1112(%ebp), %edi
	addl      %ebx, %edi
	xorl      %edx, %edx
	movl      -1124(%ebp), %ecx
	subl      %ebx, %ecx
	cmovle    %edx, %ecx
	movb      -1160(%ebp), %al
	testb     %al, %al
	je        LBB1_150
	testl     %ecx, %ecx
	movl      %ecx, %eax
	movl      %ecx, -1124(%ebp)
	cmovs     %edx, %eax
	cmpl      $1, %eax
	movl      $1, %esi
	cmova     %eax, %esi
	movl      %edi, %ecx
	movl      %edi, -1112(%ebp)
	notl      %ecx
	cmpl      %ecx, %esi
	movl      $0, -1116(%ebp)
	jae       LBB1_330
	movl      -1108(%ebp), %ebx
	testl     %ebx, %ebx
	je        LBB1_189
	cmpl      $2, %eax
	setb      %al
	cmpl      $0, -1128(%ebp)
	jne       LBB1_188
	testb     %al, %al
	jne       LBB1_188
	cmpl      $1, -1124(%ebp)
	je        LBB1_188
	movl      -1124(%ebp), %eax
	leal      -1(%eax), %edi
LBB1_157:
	movl      %ebx, 4(%esp)
	movl      $32, (%esp)
	call      _fputc
	decl      %edi
	jne       LBB1_157
	jmp       LBB1_188
LBB1_90:
	xorl      %ebx, %ebx
	cmpl      %eax, %edx
	je        LBB1_92
	.align 4, 0x90
LBB1_91:
	movl      %esi, 4(%esp)
	movl      $32, (%esp)
	call      _fputc
	incl      %ebx
	cmpl      %edi, %ebx
	jb        LBB1_91
LBB1_92:
	movl      -1136(%ebp), %eax
	testb     %al, %al
	je        LBB1_96
	cmpl      $0, -1160(%ebp)
	movl      %esi, %ebx
	je        LBB1_101
	movl      $1, %esi
	subl      -1176(%ebp), %esi
	leal      -1053(%ebp), %edi
	.align 4, 0x90
LBB1_95:
	movzbl    (%edi), %eax
	movl      %eax, (%esp)
	call      ___tolower
	movl      %ebx, 4(%esp)
	movl      %eax, (%esp)
	call      _fputc
	incl      %edi
	incl      %esi
	jne       LBB1_95
	jmp       LBB1_101
LBB1_96:
	movl      -1132(%ebp), %eax
	testb     $1, %al
	movl      %esi, %ebx
	je        LBB1_100
	cmpl      $0, -1160(%ebp)
	je        LBB1_101
	movl      $1, %esi
	subl      -1176(%ebp), %esi
	leal      -1053(%ebp), %edi
	.align 4, 0x90
LBB1_99:
	movzbl    (%edi), %eax
	movl      %eax, (%esp)
	call      ___toupper
	movl      %ebx, 4(%esp)
	movl      %eax, (%esp)
	call      _fputc
	incl      %edi
	incl      %esi
	jne       LBB1_99
	jmp       LBB1_101
LBB1_177:
	movl      %esi, -1136(%ebp)
	movl      %ebx, -1128(%ebp)
	testb     %dl, %dl
	je        LBB1_190
	movb      %dl, -1160(%ebp)
	xorl      %ecx, %ecx
	movl      -1124(%ebp), %eax
	testl     %eax, %eax
	cmovs     %ecx, %eax
	movl      $0, -1116(%ebp)
	cmpl      $1, %eax
	movl      $1, %esi
	cmova     %eax, %esi
	movl      %edi, %ecx
	notl      %ecx
	cmpl      %ecx, %esi
	jae       LBB1_330
	movl      -1108(%ebp), %ebx
	testl     %ebx, %ebx
	je        LBB1_189
	cmpl      $2, %eax
	setb      %al
	cmpl      $0, -1128(%ebp)
	jne       LBB1_188
	testb     %al, %al
	jne       LBB1_188
	movl      -1124(%ebp), %eax
	leal      -1(%eax), %edi
	cmpl      $48, -1140(%ebp)
	jne       LBB1_186
	testl     %edi, %edi
	je        LBB1_188
	movl      -1124(%ebp), %eax
	leal      -1(%eax), %edi
LBB1_185:
	movl      %ebx, 4(%esp)
	movl      $48, (%esp)
	call      _fputc
	decl      %edi
	jne       LBB1_185
	jmp       LBB1_188
LBB1_158:
	movl      $0, -1116(%ebp)
	cmpl      %eax, %ebx
	movl      %ebx, -1128(%ebp)
	movl      %ecx, %edi
	jae       LBB1_330
	movb      -1160(%ebp), %cl
	testb     %cl, %cl
	je        LBB1_160
	xorl      %esi, %esi
	movl      -1124(%ebp), %edx
	testl     %edx, %edx
	movl      %edx, %ecx
	cmovs     %esi, %ecx
	movl      $0, -1116(%ebp)
	cmpl      $1, %ecx
	movl      $1, %esi
	cmova     %ecx, %esi
	cmpl      %eax, %esi
	jae       LBB1_330
	movl      %edi, -1116(%ebp)
	movl      -1108(%ebp), %ebx
	testl     %ebx, %ebx
	je        LBB1_172
	cmpl      $2, %ecx
	setb      %al
	cmpl      $0, -1128(%ebp)
	jne       LBB1_171
	testb     %al, %al
	jne       LBB1_171
	leal      -1(%edx), %edi
	movl      %edx, %eax
	cmpl      $48, -1140(%ebp)
	jne       LBB1_169
	testl     %edi, %edi
	movl      %eax, %edi
	je        LBB1_171
	decl      %edi
LBB1_168:
	movl      %ebx, 4(%esp)
	movl      $48, (%esp)
	call      _fputc
	decl      %edi
	jne       LBB1_168
	jmp       LBB1_171
LBB1_100:
	movl      %ebx, 12(%esp)
	movl      -1160(%ebp), %eax
	movl      %eax, 4(%esp)
	leal      -1053(%ebp), %eax
	movl      %eax, (%esp)
	movl      $1, 8(%esp)
	call      _fwrite$UNIX2003
LBB1_101:
	movl      %ebx, -1108(%ebp)
	jmp       LBB1_306
LBB1_150:
	movl      %ecx, -1124(%ebp)
	jmp       LBB1_190
LBB1_160:
	movl      %edi, -1116(%ebp)
	movl      -1108(%ebp), %ebx
	jmp       LBB1_173
LBB1_223:
	movl      $9, -1124(%ebp)
	movl      16(%ebp), %eax
	movl      %eax, %esi
	movl      -1116(%ebp), %eax
	movl      $9, %edi
	jmp       LBB1_118
LBB1_225:
	movl      16(%ebp), %eax
	movl      %eax, %esi
	movl      -1116(%ebp), %eax
	jmp       LBB1_118
LBB1_297:
	movl      %eax, %esi
	subl      -1136(%ebp), %esi
	je        LBB1_299
LBB1_298:
	movl      %edi, 4(%esp)
	movl      $32, (%esp)
	call      _fputc
	decl      %esi
	jne       LBB1_298
LBB1_299:
	cmpb      $0, -1128(%ebp)
	movl      -1132(%ebp), %eax
	je        LBB1_302
	movl      -1136(%ebp), %ecx
	testl     %ecx, %ecx
	movl      -1164(%ebp), %esi
	je        LBB1_306
LBB1_301:
	movzbl    (%esi), %eax
	movl      %eax, (%esp)
	movl      %ecx, %ebx
	call      ___tolower
	movl      %edi, 4(%esp)
	movl      %eax, (%esp)
	call      _fputc
	movl      %ebx, %ecx
	incl      %esi
	decl      %ecx
	jne       LBB1_301
	jmp       LBB1_306
LBB1_302:
	testb     %al, %al
	movl      -1136(%ebp), %ecx
	je        LBB1_305
	testl     %ecx, %ecx
	movl      -1164(%ebp), %esi
	je        LBB1_306
LBB1_304:
	movzbl    (%esi), %eax
	movl      %eax, (%esp)
	movl      %ecx, %ebx
	call      ___toupper
	movl      %edi, 4(%esp)
	movl      %eax, (%esp)
	call      _fputc
	movl      %ebx, %ecx
	incl      %esi
	decl      %ecx
	jne       LBB1_304
	jmp       LBB1_306
LBB1_235:
	testl     %edi, %edi
	je        LBB1_237
LBB1_236:
	movl      %ebx, 4(%esp)
	movl      $32, (%esp)
	call      _fputc
	decl      %edi
	jne       LBB1_236
LBB1_237:
	movl      %ebx, 4(%esp)
	movl      $10, (%esp)
	jmp       LBB1_56
LBB1_257:
	testl     %edi, %edi
	je        LBB1_259
LBB1_258:
	movl      %ebx, 4(%esp)
	movl      $32, (%esp)
	call      _fputc
	decl      %edi
	jne       LBB1_258
LBB1_259:
	movl      %ebx, 4(%esp)
	movl      $9, (%esp)
	jmp       LBB1_56
LBB1_319:
	testl     %eax, %eax
	je        LBB1_320
LBB1_317:
	movl      -1160(%ebp), %edx
	imull     $10000, %ebx, %ebx
	imull     $100, %edi, %esi
	addl      %ebx, %esi
	addl      %eax, %esi
	movl      $9, %edi
	movl      $20, -1136(%ebp)
	jmp       LBB1_318
LBB1_186:
	testl     %edi, %edi
	je        LBB1_188
LBB1_187:
	movl      %ebx, 4(%esp)
	movl      $32, (%esp)
	call      _fputc
	decl      %edi
	jne       LBB1_187
LBB1_188:
	movzbl    -1160(%ebp), %eax
	movl      %ebx, 4(%esp)
	movl      %eax, (%esp)
	call      _fputc
LBB1_189:
	movl      -1112(%ebp), %edi
	addl      %esi, %edi
	jmp       LBB1_190
LBB1_169:
	testl     %edi, %edi
	je        LBB1_171
LBB1_170:
	movl      %ebx, 4(%esp)
	movl      $32, (%esp)
	call      _fputc
	decl      %edi
	jne       LBB1_170
LBB1_171:
	movzbl    -1160(%ebp), %eax
	movl      %ebx, 4(%esp)
	movl      %eax, (%esp)
	call      _fputc
LBB1_172:
	addl      %esi, -1112(%ebp)
LBB1_173:
	testl     %ebx, %ebx
	movl      %ebx, %edi
	movl      -1116(%ebp), %ebx
	je        LBB1_176
	xorl      %esi, %esi
	testl     %ebx, %ebx
	je        LBB1_176
	.align 4, 0x90
LBB1_175:
	movl      %edi, 4(%esp)
	movl      $48, (%esp)
	call      _fputc
	incl      %esi
	cmpl      %ebx, %esi
	jb        LBB1_175
LBB1_176:
	movl      %edi, -1108(%ebp)
	movl      -1112(%ebp), %edi
	addl      %ebx, %edi
	movl      $0, -1124(%ebp)
LBB1_190:
	movl      %edi, -1112(%ebp)
	leal      -16(%ebp), %esi
	subl      -1136(%ebp), %esi
	xorl      %ebx, %ebx
	movl      -1124(%ebp), %ecx
	testl     %ecx, %ecx
	movl      %ecx, %eax
	movl      %ecx, %edx
	cmovs     %ebx, %eax
	movl      $0, -1116(%ebp)
	cmpl      %eax, %esi
	movl      %esi, %ebx
	cmovb     %eax, %ebx
	movl      %edi, %ecx
	notl      %ecx
	cmpl      %ecx, %ebx
	jae       LBB1_330
	movl      %ebx, -1116(%ebp)
	movl      -1108(%ebp), %edi
	testl     %edi, %edi
	je        LBB1_204
	cmpl      %eax, %esi
	movl      %esi, -1160(%ebp)
	setae     %al
	cmpl      $0, -1128(%ebp)
	jne       LBB1_199
	testb     %al, %al
	jne       LBB1_199
	movl      %edx, %eax
	movl      -1160(%ebp), %ecx
	subl      %ecx, %eax
	cmpl      $48, -1140(%ebp)
	jne       LBB1_197
	xorl      %ebx, %ebx
	cmpl      %ecx, %edx
	je        LBB1_199
	.align 4, 0x90
LBB1_196:
	movl      %edi, 4(%esp)
	movl      $48, (%esp)
	movl      %eax, %esi
	call      _fputc
	movl      %esi, %eax
	incl      %ebx
	cmpl      %eax, %ebx
	jb        LBB1_196
	jmp       LBB1_199
LBB1_197:
	xorl      %ebx, %ebx
	cmpl      %ecx, %edx
	je        LBB1_199
	.align 4, 0x90
LBB1_198:
	movl      %edi, 4(%esp)
	movl      $32, (%esp)
	movl      %eax, %esi
	call      _fputc
	movl      %esi, %eax
	incl      %ebx
	cmpl      %eax, %ebx
	jb        LBB1_198
LBB1_199:
	movl      -1132(%ebp), %eax
	testb     %al, %al
	je        LBB1_203
	leal      -16(%ebp), %eax
	movl      -1136(%ebp), %ebx
	cmpl      %ebx, %eax
	je        LBB1_204
	movl      -1172(%ebp), %eax
	leal      (%eax,%ebx), %esi
	.align 4, 0x90
LBB1_202:
	movzbl    (%ebx), %eax
	movl      %eax, (%esp)
	call      ___toupper
	movl      %edi, 4(%esp)
	movl      %eax, (%esp)
	call      _fputc
	incl      %ebx
	incl      %esi
	jne       LBB1_202
	jmp       LBB1_204
LBB1_203:
	movl      %edi, 12(%esp)
	movl      -1160(%ebp), %eax
	movl      %eax, 4(%esp)
	movl      -1136(%ebp), %eax
	movl      %eax, (%esp)
	movl      $1, 8(%esp)
	call      _fwrite$UNIX2003
LBB1_204:
	movl      %edi, -1108(%ebp)
LBB1_306:
	movl      -1112(%ebp), %ecx
	addl      -1116(%ebp), %ecx
	movl      -1120(%ebp), %esi
	jmp       LBB1_329
LBB1_305:
	movl      %edi, 12(%esp)
	movl      %ecx, 4(%esp)
	movl      -1164(%ebp), %eax
	movl      %eax, (%esp)
	movl      $1, 8(%esp)
	call      _fwrite$UNIX2003
	jmp       LBB1_306
LBB1_53:
	testl     %edi, %edi
	je        LBB1_55
LBB1_54:
	movl      %ebx, 4(%esp)
	movl      $32, (%esp)
	call      _fputc
	decl      %edi
	jne       LBB1_54
LBB1_55:
	movl      -1120(%ebp), %eax
	movsbl    (%eax), %eax
	movl      %ebx, 4(%esp)
	movl      %eax, (%esp)
LBB1_56:
	call      _fputc
LBB1_57:
	movl      -1112(%ebp), %ecx
	addl      %esi, %ecx
	movl      -1120(%ebp), %esi
	jmp       LBB1_329
LBB1_320:
	testl     %edi, %edi
	je        LBB1_321
LBB1_316:
	movl      -1160(%ebp), %edx
	imull     $100, %ebx, %ebx
	addl      %edi, %ebx
	movl      $6, %edi
	movl      $4, -1136(%ebp)
	movl      %ebx, %esi
LBB1_318:
	shrl      $31, %edx
	movb      $1, %al
	movl      %eax, -1176(%ebp)
	movl      -1116(%ebp), %eax
	jmp       LBB1_120
LBB1_321:
	movl      -1160(%ebp), %edx
	movl      $0, -1136(%ebp)
	movl      $3, %edi
	movl      %ebx, %esi
	jmp       LBB1_318
	.align 4, 0x90
LBB1_5:
	movzbl    %al, %ecx
	cmpl      $37, %ecx
	jne       LBB1_7
	xorl      %edx, %edx
	movl      -1144(%ebp), %eax
	movb      %al, %bl
	xorl      %edi, %edi
LBB1_15:
	movb      %dl, %al
	movb      %al, -1128(%ebp)
	incl      %esi
	jmp       LBB1_11
	.align 4, 0x90
LBB1_20:
	incl      %esi
	movl      %eax, %edi
LBB1_11:
	movb      (%esi), %cl
	movsbl    %cl, %eax
	movb      $1, %dl
	cmpl      $93, %eax
	jg        LBB1_17
	cmpl      $45, %eax
	je        LBB1_20
	cmpl      $48, %eax
	je        LBB1_20
	jmp       LBB1_14
	.align 4, 0x90
LBB1_17:
	cmpl      $94, %eax
	je        LBB1_18
	cmpl      $95, %eax
	je        LBB1_20
	jmp       LBB1_21
LBB1_18:
	movb      $1, %bl
	incl      %esi
	jmp       LBB1_11
	.align 4, 0x90
LBB1_14:
	cmpl      $35, %eax
	je        LBB1_15
LBB1_21:
	movl      %edi, -1140(%ebp)
	addl      $-48, %eax
	movl      $-1, %edi
	xorl      %edx, %edx
	cmpl      $9, %eax
	ja        LBB1_27
	.align 4, 0x90
LBB1_22:
	movl      $2147483647, %edi
	cmpl      $214748364, %edx
	jg        LBB1_26
	movsbl    %cl, %eax
	cmpl      $214748364, %edx
	jne       LBB1_25
	leal      -48(%eax), %ecx
	cmpl      $7, %ecx
	jg        LBB1_26
LBB1_25:
	imull     $10, %edx, %ecx
	leal      -48(%ecx,%eax), %edi
LBB1_26:
	movsbl    1(%esi), %ecx
	incl      %esi
	movl      %ecx, %eax
	addl      $-48, %eax
	cmpl      $10, %eax
	movl      %edi, %edx
	jb        LBB1_22
LBB1_27:
	movsbl    %cl, %eax
	cmpl      $69, %eax
	je        LBB1_30
	cmpl      $79, %eax
	jne       LBB1_29
LBB1_30:
	movl      %edi, -1124(%ebp)
	movb      1(%esi), %cl
	incl      %esi
	jmp       LBB1_31
	.align 4, 0x90
LBB1_7:
	movl      $0, -1116(%ebp)
	cmpl      $-3, -1112(%ebp)
	ja        LBB1_330
	movl      -1108(%ebp), %ecx
	testl     %ecx, %ecx
	je        LBB1_10
	movsbl    %al, %eax
	movl      %ecx, 4(%esp)
	movl      %eax, (%esp)
	call      _fputc
LBB1_10:
	movl      -1112(%ebp), %ecx
	incl      %ecx
	jmp       LBB1_329
LBB1_29:
	movl      %edi, -1124(%ebp)
	xorl      %eax, %eax
LBB1_31:
	movsbl    %cl, %edi
	cmpl      $36, %edi
	jg        LBB1_43
	movl      %ebx, -1132(%ebp)
	testl     %edi, %edi
	jne       LBB1_34
	decl      %esi
LBB1_34:
	movl      %esi, -1120(%ebp)
	jmp       LBB1_35
	.align 4, 0x90
LBB1_43:
	movl      %ebx, -1132(%ebp)
	movl      %esi, -1120(%ebp)
	leal      -37(%edi), %esi
	cmpl      $85, %esi
	ja        LBB1_35
	movl      %eax, -1116(%ebp)
	movl      $1, %edx
	movl      $0, -1136(%ebp)
	movb      $114, -1160(%ebp)
	movl      -1148(%ebp), %ebx
	movl      Ltmp1(%ebx,%esi,4), %esi
	addl      %ebx, %esi
	movl      -1156(%ebp), %ebx
	xorl      %eax, %eax
	jmp       *%esi
LBB1_263:
	movl      -1116(%ebp), %eax
	cmpl      $69, %eax
	je        LBB1_35
	movl      12(%ebp), %eax
	movl      20(%eax), %edx
	movl      %edx, -1128(%ebp)
	movl      24(%eax), %edx
	movl      %edx, -1160(%ebp)
	movl      28(%eax), %ebx
	movl      %ebx, -1136(%ebp)
	leal      382(%ebx), %esi
	subl      %edx, %esi
	movl      $-1840700269, %edx
	movl      %esi, %eax
	imull     %edx
	addl      %esi, %edx
	movl      %edx, %eax
	shrl      $31, %eax
	sarl      $2, %edx
	addl      %eax, %edx
	movl      -1128(%ebp), %eax
	sarl      $31, %eax
	andl      $400, %eax
	imull     $7, %edx, %edx
	subl      %edx, %esi
	leal      3(%ebx), %edx
	subl      %esi, %edx
	movl      %edx, -1176(%ebp)
	movl      -1128(%ebp), %edx
	leal      -100(%edx,%eax), %eax
	js        LBB1_265
	movl      $365, %esi
	testb     $3, %al
	jne       LBB1_272
	movl      $1374389535, %edx
	movl      %eax, %ebx
	imull     %edx
	movl      %edx, %eax
	shrl      $31, %eax
	sarl      $5, %edx
	addl      %eax, %edx
	imull     $100, %edx, %edx
	movl      $366, %esi
	cmpl      %edx, %ebx
	movl      %ebx, %eax
	jne       LBB1_272
	movl      %eax, %esi
	movl      $1374389535, %edx
	imull     %edx
	movl      %edx, %eax
	shrl      $31, %eax
	sarl      $7, %edx
	addl      %eax, %edx
	imull     $400, %edx, %eax
	cmpl      %eax, %esi
	sete      %al
	movzbl    %al, %esi
	addl      $365, %esi
LBB1_272:
	movl      -1136(%ebp), %ebx
	subl      %esi, %ebx
	leal      382(%ebx), %esi
	subl      -1160(%ebp), %esi
	movl      $-1840700269, %edx
	movl      %esi, %eax
	imull     %edx
	addl      %esi, %edx
	movl      %edx, %eax
	shrl      $31, %eax
	sarl      $2, %edx
	addl      %eax, %edx
	imull     $7, %edx, %eax
	subl      %eax, %esi
	addl      $3, %ebx
	subl      %esi, %ebx
	movl      -1176(%ebp), %esi
	cmovns    %ebx, %esi
	shrl      $31, %ebx
	xorl      $1, %ebx
	jmp       LBB1_273
	.align 4, 0x90
LBB1_309:
	incl      %edx
LBB1_307:
	movl      -1120(%ebp), %esi
	movzbl    (%esi,%edx), %eax
	cmpl      $122, %eax
	je        LBB1_310
	movzbl    %al, %eax
	cmpl      $58, %eax
	je        LBB1_309
	jmp       LBB1_35
LBB1_58:
	cmpl      $0, -1116(%ebp)
	jne       LBB1_35
	cmpb      $0, -1128(%ebp)
	je        LBB1_64
	movb      $1, %al
	movl      %eax, -1132(%ebp)
	jmp       LBB1_64
LBB1_61:
	cmpb      $0, -1128(%ebp)
	je        LBB1_63
	movb      $1, %al
	movl      %eax, -1132(%ebp)
LBB1_63:
	cmpl      $0, -1116(%ebp)
	jne       LBB1_35
LBB1_64:
	movw      $9504, -1059(%ebp)
	movl      $0, -1128(%ebp)
	movl      $0, -1136(%ebp)
	leal      -1057(%ebp), %edx
	jmp       LBB1_81
LBB1_45:
	cmpl      $0, -1116(%ebp)
	jne       LBB1_35
	xorl      %esi, %esi
	movl      -1124(%ebp), %ecx
	testl     %ecx, %ecx
	movl      %ecx, %eax
	movl      %ecx, %edx
	cmovs     %esi, %eax
	movl      $0, -1116(%ebp)
	cmpl      $1, %eax
	movl      $1, %esi
	cmova     %eax, %esi
	movl      -1112(%ebp), %ecx
	notl      %ecx
	cmpl      %ecx, %esi
	jae       LBB1_330
	movl      -1108(%ebp), %ebx
	testl     %ebx, %ebx
	je        LBB1_57
	cmpl      $2, %eax
	jb        LBB1_55
	leal      -1(%edx), %edi
	movl      %edx, %eax
	cmpl      $48, -1140(%ebp)
	jne       LBB1_53
	testl     %edi, %edi
	movl      %eax, %edi
	je        LBB1_55
	decl      %edi
LBB1_52:
	movl      %ebx, 4(%esp)
	movl      $48, (%esp)
	call      _fputc
	decl      %edi
	jne       LBB1_52
	jmp       LBB1_55
LBB1_102:
	movb      $67, %al
	movl      -1116(%ebp), %ebx
	cmpl      $69, %ebx
	je        LBB1_79
	cmpl      $79, %ebx
	je        LBB1_35
	movl      12(%ebp), %eax
	movl      20(%eax), %edi
	movl      $1374389535, %edx
	movl      %edi, %eax
	imull     %edx
	movl      %edx, %eax
	shrl      $31, %eax
	sarl      $5, %edx
	leal      (%edx,%eax), %esi
	leal      19(%edx,%eax), %edx
	imull     $100, %esi, %eax
	movl      %edx, %esi
	cmpl      %eax, %edi
	sets      %al
	testl     %esi, %esi
	setg      %dl
	andb      %al, %dl
	movzbl    %dl, %eax
	subl      %eax, %esi
	movl      %ebx, %eax
	cmpl      $-1900, %edi
	setl      %dl
	movl      $2, %edi
	jmp       LBB1_119
LBB1_107:
	cmpl      $0, -1116(%ebp)
	jne       LBB1_35
	movl      -1148(%ebp), %eax
	leal      L_.str-L1$pb(%eax), %ebx
	jmp       LBB1_70
LBB1_205:
	cmpl      $0, -1116(%ebp)
	jne       LBB1_35
	movl      -1148(%ebp), %eax
	leal      L_.str1-L1$pb(%eax), %ebx
	jmp       LBB1_70
LBB1_207:
	movl      -1116(%ebp), %eax
	cmpl      $69, %eax
	je        LBB1_35
	movl      %eax, %edx
	movl      12(%ebp), %eax
	movl      8(%eax), %esi
	jmp       LBB1_111
LBB1_209:
	movl      $2, %edi
	movl      -1116(%ebp), %eax
	cmpl      $69, %eax
	je        LBB1_35
	movl      -1168(%ebp), %esi
	jmp       LBB1_118
LBB1_216:
	movl      -1116(%ebp), %eax
	cmpl      $69, %eax
	je        LBB1_35
	movl      %eax, %edx
	movl      12(%ebp), %eax
	movl      4(%eax), %esi
	jmp       LBB1_111
LBB1_221:
	movl      -1116(%ebp), %eax
	cmpl      $69, %eax
	je        LBB1_35
	movl      -1124(%ebp), %edi
	cmpl      $-1, %edi
	je        LBB1_223
	movl      $9, %esi
	cmpl      $8, %edi
	movl      16(%ebp), %eax
	movl      %eax, %edx
	jg        LBB1_225
LBB1_226:
	movl      $1717986919, %ebx
	movl      %edx, %eax
	imull     %ebx
	movl      %edx, %eax
	shrl      $31, %eax
	sarl      $2, %edx
	addl      %eax, %edx
	decl      %esi
	cmpl      %esi, %edi
	jne       LBB1_226
	movl      -1116(%ebp), %eax
	movl      %edx, %esi
	jmp       LBB1_118
LBB1_238:
	movb      $1, %al
	movl      %eax, -1136(%ebp)
LBB1_239:
	movl      -1136(%ebp), %eax
	cmpb      $0, -1128(%ebp)
	je        LBB1_241
	movl      $0, -1132(%ebp)
LBB1_241:
	je        LBB1_243
	movb      $1, %al
LBB1_243:
	movl      %eax, -1136(%ebp)
	movb      $112, -1160(%ebp)
	jmp       LBB1_67
LBB1_244:
	movl      -1116(%ebp), %eax
	cmpl      $69, %eax
	je        LBB1_35
	movl      %eax, %edx
	movl      12(%ebp), %eax
	movl      (%eax), %esi
	jmp       LBB1_111
LBB1_69:
	movl      -1148(%ebp), %eax
	leal      L_.str3-L1$pb(%eax), %ebx
LBB1_70:
	movl      -1132(%ebp), %eax
	testb     %al, %al
	setne     %al
	movl      16(%ebp), %ecx
	movl      %ecx, 8(%esp)
	movl      12(%ebp), %ecx
	movl      %ecx, 4(%esp)
	movl      %ebx, (%esp)
	movzbl    %al, %ecx
	xorl      %esi, %esi
	xorl      %edx, %edx
	call      _strftime_case_
	movl      -1124(%ebp), %edx
	testl     %edx, %edx
	movl      %edx, %ecx
	movl      %edx, %edi
	cmovs     %esi, %ecx
	movl      $0, -1116(%ebp)
	cmpl      %ecx, %eax
	movl      %eax, %esi
	cmovb     %ecx, %esi
	movl      -1112(%ebp), %edx
	notl      %edx
	cmpl      %edx, %esi
	jae       LBB1_330
	movl      %ebx, -1116(%ebp)
	movl      -1108(%ebp), %ebx
	testl     %ebx, %ebx
	je        LBB1_57
	cmpl      %ecx, %eax
	jae       LBB1_78
	movl      %edi, %ecx
	cmpl      $48, -1140(%ebp)
	jne       LBB1_76
	movl      %ecx, %edi
	subl      %eax, %edi
	je        LBB1_78
LBB1_75:
	movl      %ebx, 4(%esp)
	movl      $48, (%esp)
	call      _fputc
	decl      %edi
	jne       LBB1_75
	jmp       LBB1_78
LBB1_261:
	movl      -1116(%ebp), %eax
	cmpl      $69, %eax
	je        LBB1_35
	movl      %eax, %esi
	movl      12(%ebp), %eax
	movl      28(%eax), %edi
	addl      $7, %edi
	subl      24(%eax), %edi
	movl      $-1840700269, %edx
	movl      %edi, %eax
	imull     %edx
	addl      %edi, %edx
	movl      %edx, %eax
	shrl      $31, %eax
	sarl      $2, %edx
	addl      %eax, %edx
	movl      %esi, %eax
	movl      %edx, %esi
	movl      $2, %edi
	jmp       LBB1_118
LBB1_280:
	movl      -1116(%ebp), %eax
	cmpl      $69, %eax
	je        LBB1_35
	movl      12(%ebp), %eax
	movl      %eax, %edi
	movl      24(%edi), %esi
	leal      6(%esi), %ebx
	movl      $-1840700269, %edx
	movl      %ebx, %eax
	imull     %edx
	leal      6(%edx,%esi), %eax
	movl      %eax, %edx
	shrl      $31, %edx
	sarl      $2, %eax
	addl      %edx, %eax
	imull     $7, %eax, %eax
	subl      %eax, %ebx
	movl      28(%edi), %edi
	addl      $7, %edi
	subl      %ebx, %edi
	movl      %edi, %eax
	movl      $-1840700269, %edx
	imull     %edx
	movl      %edx, %esi
	addl      %edi, %esi
	movl      %esi, %eax
	shrl      $31, %eax
	sarl      $2, %esi
	addl      %eax, %esi
	jmp       LBB1_276
LBB1_248:
	movl      -1116(%ebp), %eax
	cmpl      $79, %eax
	je        LBB1_35
	movl      $0, -1136(%ebp)
	movb      $88, -1160(%ebp)
	jmp       LBB1_67
LBB1_284:
	movb      $89, %al
	movl      -1116(%ebp), %ebx
	cmpl      $69, %ebx
	je        LBB1_79
	cmpl      $79, %ebx
	je        LBB1_35
	movl      12(%ebp), %eax
	movl      20(%eax), %esi
	movl      %ebx, %eax
	cmpl      $-1900, %esi
	setl      %dl
	addl      $1900, %esi
	movl      $4, %edi
	jmp       LBB1_119
LBB1_291:
	movl      -1164(%ebp), %ecx
	testl     %ecx, %ecx
	movl      -1148(%ebp), %eax
	leal      L_.str4-L1$pb(%eax), %eax
	cmove     %eax, %ecx
	movl      %ecx, -1164(%ebp)
	movl      %ecx, (%esp)
	call      _strlen
	xorl      %edi, %edi
	movl      -1124(%ebp), %ecx
	testl     %ecx, %ecx
	movl      %ecx, %esi
	movl      %ecx, %edx
	cmovs     %edi, %esi
	movl      $0, -1116(%ebp)
	cmpl      %esi, %eax
	movl      %eax, %edi
	cmovb     %esi, %edi
	movl      -1112(%ebp), %ecx
	notl      %ecx
	cmpl      %ecx, %edi
	jae       LBB1_330
	movl      %edi, -1116(%ebp)
	movl      -1108(%ebp), %edi
	testl     %edi, %edi
	je        LBB1_306
	cmpl      %esi, %eax
	movl      %eax, -1136(%ebp)
	jae       LBB1_299
	movl      %edx, %eax
	cmpl      $48, -1140(%ebp)
	jne       LBB1_297
	movl      %eax, %esi
	subl      -1136(%ebp), %esi
	je        LBB1_299
LBB1_296:
	movl      %edi, 4(%esp)
	movl      $48, (%esp)
	call      _fputc
	decl      %esi
	jne       LBB1_296
	jmp       LBB1_299
LBB1_65:
	movl      -1116(%ebp), %eax
	cmpl      $79, %eax
	je        LBB1_35
	movl      $0, -1136(%ebp)
	movb      $99, -1160(%ebp)
	jmp       LBB1_67
LBB1_109:
	movl      -1116(%ebp), %eax
	cmpl      $69, %eax
	je        LBB1_35
	movl      %eax, %edx
	movl      12(%ebp), %eax
	movl      12(%eax), %esi
LBB1_111:
	movl      %edx, %eax
	movl      $2, %edi
	jmp       LBB1_118
LBB1_112:
	movl      -1116(%ebp), %eax
	cmpl      $69, %eax
	je        LBB1_35
	movl      %eax, %edx
	movl      12(%ebp), %eax
	movl      12(%eax), %esi
	jmp       LBB1_114
LBB1_214:
	movl      -1116(%ebp), %eax
	cmpl      $69, %eax
	je        LBB1_35
	movl      %eax, %edx
	movl      12(%ebp), %eax
	movl      28(%eax), %esi
	movl      %edx, %eax
	cmpl      $-1, %esi
	setl      %dl
	incl      %esi
	movl      $3, %edi
	jmp       LBB1_119
LBB1_211:
	movl      -1116(%ebp), %eax
	cmpl      $69, %eax
	je        LBB1_35
	movl      %eax, %edx
	movl      12(%ebp), %eax
	movl      8(%eax), %esi
	jmp       LBB1_114
LBB1_213:
	movl      -1116(%ebp), %eax
	cmpl      $69, %eax
	movl      %eax, %edx
	movl      -1168(%ebp), %esi
	je        LBB1_35
LBB1_114:
	movl      $2, %edi
	movl      -1140(%ebp), %eax
	cmpl      $45, %eax
	je        LBB1_117
	cmpl      $48, %eax
	je        LBB1_117
	movl      $95, -1140(%ebp)
LBB1_117:
	movl      %edx, %eax
	jmp       LBB1_118
LBB1_218:
	movl      -1116(%ebp), %eax
	cmpl      $69, %eax
	je        LBB1_35
	movl      %eax, %edx
	movl      12(%ebp), %eax
	movl      16(%eax), %esi
	movl      %edx, %eax
	cmpl      $-1, %esi
	setl      %dl
	incl      %esi
	movl      $2, %edi
	jmp       LBB1_119
LBB1_228:
	xorl      %esi, %esi
	movl      -1124(%ebp), %ecx
	testl     %ecx, %ecx
	movl      %ecx, %eax
	movl      %ecx, %edx
	cmovs     %esi, %eax
	movl      $0, -1116(%ebp)
	cmpl      $1, %eax
	movl      $1, %esi
	cmova     %eax, %esi
	movl      -1112(%ebp), %ecx
	notl      %ecx
	cmpl      %ecx, %esi
	jae       LBB1_330
	movl      -1108(%ebp), %ebx
	testl     %ebx, %ebx
	je        LBB1_57
	cmpl      $2, %eax
	jb        LBB1_237
	leal      -1(%edx), %edi
	movl      %edx, %eax
	cmpl      $48, -1140(%ebp)
	jne       LBB1_235
	testl     %edi, %edi
	movl      %eax, %edi
	je        LBB1_237
	decl      %edi
LBB1_234:
	movl      %ebx, 4(%esp)
	movl      $48, (%esp)
	call      _fputc
	decl      %edi
	jne       LBB1_234
	jmp       LBB1_237
LBB1_246:
	movl      12(%ebp), %eax
	movl      %eax, %ecx
	movl      40(%ecx), %eax
	movl      %eax, -1064(%ebp)
	movsd     32(%ecx), %xmm0
	movsd     %xmm0, -1072(%ebp)
	movsd     24(%ecx), %xmm0
	movsd     %xmm0, -1080(%ebp)
	movsd     16(%ecx), %xmm0
	movsd     %xmm0, -1088(%ebp)
	movsd     (%ecx), %xmm0
	movsd     8(%ecx), %xmm1
	movsd     %xmm1, -1096(%ebp)
	movsd     %xmm0, -1104(%ebp)
	leal      -1104(%ebp), %eax
	movl      %eax, (%esp)
	call      _mktime$UNIX2003
	movl      %eax, %ecx
	movl      %ecx, %ebx
	shrl      $31, %ebx
	leal      -16(%ebp), %eax
	movl      %eax, %esi
	.align 4, 0x90
LBB1_247:
	movl      $1717986919, %edx
	movl      %ecx, %eax
	imull     %edx
	movl      %edx, %eax
	shrl      $31, %eax
	sarl      $2, %edx
	addl      %eax, %edx
	imull     $10, %edx, %eax
	movl      %esi, %edi
	movl      %ecx, %esi
	subl      %eax, %esi
	movl      %esi, %eax
	negl      %eax
	testl     %ebx, %ebx
	cmove     %esi, %eax
	movl      %edi, %esi
	addl      $48, %eax
	movb      %al, -1(%esi)
	decl      %esi
	addl      $9, %ecx
	cmpl      $18, %ecx
	movl      %edx, %ecx
	ja        LBB1_247
	movl      %ebx, -1160(%ebp)
	movl      $1, %ebx
	movl      $0, -1176(%ebp)
	movl      -1112(%ebp), %edi
	jmp       LBB1_130
LBB1_250:
	xorl      %esi, %esi
	movl      -1124(%ebp), %ecx
	testl     %ecx, %ecx
	movl      %ecx, %eax
	movl      %ecx, %edx
	cmovs     %esi, %eax
	movl      $0, -1116(%ebp)
	cmpl      $1, %eax
	movl      $1, %esi
	cmova     %eax, %esi
	movl      -1112(%ebp), %ecx
	notl      %ecx
	cmpl      %ecx, %esi
	jae       LBB1_330
	movl      -1108(%ebp), %ebx
	testl     %ebx, %ebx
	je        LBB1_57
	cmpl      $2, %eax
	jb        LBB1_259
	leal      -1(%edx), %edi
	movl      %edx, %eax
	cmpl      $48, -1140(%ebp)
	jne       LBB1_257
	testl     %edi, %edi
	movl      %eax, %edi
	je        LBB1_259
	decl      %edi
LBB1_256:
	movl      %ebx, 4(%esp)
	movl      $48, (%esp)
	call      _fputc
	decl      %edi
	jne       LBB1_256
	jmp       LBB1_259
LBB1_260:
	movl      12(%ebp), %eax
	movl      24(%eax), %esi
	leal      6(%esi), %edi
	movl      $-1840700269, %edx
	movl      %edi, %eax
	imull     %edx
	leal      6(%edx,%esi), %eax
	movl      %edi, %esi
	movl      %eax, %edx
	shrl      $31, %edx
	sarl      $2, %eax
	addl      %edx, %eax
	imull     $7, %eax, %eax
	subl      %eax, %esi
	incl      %esi
	movl      $1, %edi
	movl      -1116(%ebp), %eax
	jmp       LBB1_118
LBB1_282:
	movl      -1116(%ebp), %eax
	cmpl      $69, %eax
	je        LBB1_35
	movl      %eax, %edx
	movl      12(%ebp), %eax
	movl      24(%eax), %esi
	movl      %edx, %eax
	movl      $1, %edi
	jmp       LBB1_118
LBB1_105:
	movl      -1116(%ebp), %eax
	cmpl      $79, %eax
	je        LBB1_35
	movl      $0, -1136(%ebp)
	movb      $120, -1160(%ebp)
LBB1_67:
	xorl      %eax, %eax
	jmp       LBB1_68
LBB1_287:
	movb      $121, %al
	movl      -1116(%ebp), %ebx
	cmpl      $69, %ebx
	jne       LBB1_288
LBB1_79:
	movw      $9504, -1059(%ebp)
	movl      $0, -1128(%ebp)
	movl      $0, -1136(%ebp)
	jmp       LBB1_80
LBB1_265:
	decl      %eax
	movl      $365, %ebx
	testb     $3, %al
	jne       LBB1_268
	movl      $1374389535, %edx
	movl      %eax, %esi
	imull     %edx
	movl      %edx, %eax
	shrl      $31, %eax
	sarl      $5, %edx
	addl      %eax, %edx
	imull     $100, %edx, %edx
	movl      %esi, %eax
	movl      $366, %ebx
	cmpl      %edx, %eax
	jne       LBB1_268
	movl      %eax, %esi
	movl      $1374389535, %edx
	imull     %edx
	movl      %edx, %eax
	shrl      $31, %eax
	sarl      $7, %edx
	addl      %eax, %edx
	imull     $400, %edx, %eax
	cmpl      %eax, %esi
	sete      %al
	movzbl    %al, %ebx
	addl      $365, %ebx
LBB1_268:
	movl      %ebx, %esi
	movl      -1136(%ebp), %eax
	leal      382(%esi,%eax), %ebx
	subl      -1160(%ebp), %ebx
	movl      $-1840700269, %edx
	movl      %ebx, %eax
	imull     %edx
	addl      %ebx, %edx
	movl      %edx, %eax
	shrl      $31, %eax
	sarl      $2, %edx
	addl      %eax, %edx
	imull     $7, %edx, %eax
	subl      %eax, %ebx
	movl      -1136(%ebp), %eax
	leal      3(%esi,%eax), %esi
	subl      %ebx, %esi
	movl      $-1, %ebx
LBB1_273:
	cmpl      $71, %edi
	movl      -1128(%ebp), %eax
	jne       LBB1_274
	movl      $-1900, %edx
	subl      %ebx, %edx
	cmpl      %edx, %eax
	setl      %dl
	leal      1900(%ebx,%eax), %esi
	movl      $0, -1136(%ebp)
	movl      $0, -1176(%ebp)
	movl      -1116(%ebp), %eax
	movl      $4, %edi
	jmp       LBB1_120
LBB1_274:
	cmpl      $103, %edi
	jne       LBB1_279
	movl      $1374389535, %edx
	movl      %eax, %esi
	imull     %edx
	movl      %edx, %eax
	shrl      $31, %eax
	sarl      $5, %edx
	addl      %eax, %edx
	imull     $100, %edx, %eax
	movl      %esi, %edi
	subl      %eax, %edi
	addl      %ebx, %edi
	movl      %edi, %eax
	movl      $1374389535, %edx
	imull     %edx
	movl      %edi, %esi
	movl      %edx, %eax
	shrl      $31, %eax
	sarl      $5, %edx
	addl      %eax, %edx
	imull     $100, %edx, %eax
	subl      %eax, %esi
	jns       LBB1_276
	movl      $-1900, %eax
	subl      %ebx, %eax
	movl      %esi, %edx
	negl      %edx
	addl      $100, %esi
	cmpl      %eax, -1128(%ebp)
	cmovl     %edx, %esi
	jmp       LBB1_276
LBB1_310:
	addl      %edx, %esi
	movl      %esi, -1120(%ebp)
	movl      %edx, -1136(%ebp)
LBB1_311:
	movl      -1136(%ebp), %esi
	movl      12(%ebp), %eax
	cmpl      $0, 32(%eax)
	js        LBB1_312
	movl      36(%eax), %ebx
	movl      %ebx, -1160(%ebp)
	movl      $-2004318071, %edx
	movl      %ebx, %eax
	imull     %edx
	movl      %edx, %edi
	addl      %ebx, %edi
	movl      %edi, %eax
	shrl      $31, %eax
	sarl      $5, %edi
	addl      %eax, %edi
	movl      $-1851608123, %edx
	movl      %ebx, %eax
	imull     %edx
	movl      %edx, %ebx
	movl      %edi, %eax
	movl      $-2004318071, %edx
	imull     %edx
	cmpl      $3, %esi
	jbe       LBB1_314
	.align 4, 0x90
LBB1_35:
	movl      -1124(%ebp), %eax
	leal      -1(%eax), %eax
	xorl      %edi, %edi
	movl      $-1, %ecx
	movl      -1120(%ebp), %edx
	.align 4, 0x90
LBB1_36:
	movl      %eax, %ebx
	movl      %ecx, %esi
	leal      -1(%ebx), %eax
	movzbl    (%edx,%edi), %ecx
	decl      %edi
	cmpl      $37, %ecx
	leal      -1(%esi), %ecx
	jne       LBB1_36
	xorl      %ecx, %ecx
	movl      -1124(%ebp), %eax
	testl     %eax, %eax
	cmovs     %ecx, %eax
	movl      $0, -1116(%ebp)
	movl      %edi, %ecx
	negl      %ecx
	movl      %ecx, -1136(%ebp)
	cmpl      %eax, %ecx
	movl      %ecx, %edx
	cmovb     %eax, %edx
	movl      %edx, -1128(%ebp)
	movl      -1112(%ebp), %ecx
	notl      %ecx
	cmpl      %ecx, %edx
	jae       LBB1_330
	cmpl      $0, -1108(%ebp)
	movl      -1120(%ebp), %edx
	je        LBB1_328
	cmpl      %eax, -1136(%ebp)
	movl      -1108(%ebp), %eax
	jae       LBB1_324
	movl      -1124(%ebp), %ecx
	addl      %edi, %ecx
	cmpl      $48, -1140(%ebp)
	jne       LBB1_322
	xorl      %edx, %edx
	testl     %ecx, %ecx
	je        LBB1_324
	.align 4, 0x90
LBB1_42:
	movl      %edx, -1116(%ebp)
	movl      %eax, 4(%esp)
	movl      $48, (%esp)
	call      _fputc
	movl      -1116(%ebp), %edx
	movl      -1108(%ebp), %eax
	incl      %edx
	cmpl      %edx, %ebx
	jne       LBB1_42
	jmp       LBB1_324
LBB1_322:
	testl     %ecx, %ecx
	je        LBB1_324
	.align 4, 0x90
LBB1_323:
	movl      %eax, 4(%esp)
	movl      $32, (%esp)
	call      _fputc
	movl      -1108(%ebp), %eax
	decl      %ebx
	jne       LBB1_323
	.align 4, 0x90
LBB1_324:
	movl      %eax, %ecx
	movl      -1132(%ebp), %eax
	testb     $1, %al
	je        LBB1_327
	testl     %edi, %edi
	movl      -1120(%ebp), %edx
	je        LBB1_328
	.align 4, 0x90
LBB1_326:
	movzbl    1(%edx,%esi), %eax
	movl      %eax, (%esp)
	movl      %edx, %edi
	call      ___toupper
	movl      -1108(%ebp), %ecx
	movl      %ecx, 4(%esp)
	movl      %eax, (%esp)
	call      _fputc
	movl      %edi, %edx
	incl      %esi
	jne       LBB1_326
	jmp       LBB1_328
LBB1_327:
	movl      -1120(%ebp), %esi
	leal      1(%esi,%edi), %eax
	movl      %ecx, 12(%esp)
	movl      -1136(%ebp), %ecx
	movl      %ecx, 4(%esp)
	movl      %eax, (%esp)
	movl      $1, 8(%esp)
	call      _fwrite$UNIX2003
	movl      %esi, %edx
LBB1_328:
	movl      -1112(%ebp), %ecx
	addl      -1128(%ebp), %ecx
	movl      %edx, %esi
LBB1_329:
	movl      %ecx, -1112(%ebp)
	movb      1(%esi), %al
	incl      %esi
	testb     %al, %al
	movl      %ecx, -1116(%ebp)
	jne       LBB1_5
LBB1_330:
	movl      -1116(%ebp), %ecx
	movl      -1152(%ebp), %eax
	movl      (%eax), %eax
	cmpl      -16(%ebp), %eax
	jne       LBB1_332
	movl      %ecx, %eax
	addl      $1196, %esp
	popl      %esi
	popl      %edi
	popl      %ebx
	popl      %ebp
	ret       
LBB1_332:
	call      ___stack_chk_fail
	.align 2, 0x90
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
LJTI1_1:
	.long	L1_1_set_315
	.long	L1_1_set_316
	.long	L1_1_set_317
	.long	L1_1_set_319
# ----------------------
	.section       __TEXT,__cstring,cstring_literals
L_.str:
	.asciz	"%m/%d/%y"
L_.str1:
	.asciz	"%Y-%m-%d"
L_.str2:
	.asciz	"%H:%M"
L_.str3:
	.asciz	"%H:%M:%S"
L_.str4:
	.zero	1
# ----------------------
	.section       __IMPORT,__pointers,non_lazy_symbol_pointers
L___stack_chk_guard$non_lazy_ptr:
	.indirect_symbol ___stack_chk_guard
	.long	0
# ----------------------
	.set	Ltmp0,LJTI1_1-L1$pb
	.set	Ltmp1,LJTI1_0-L1$pb
	.set	L1_0_set_45,LBB1_45-L1$pb
	.set	L1_0_set_35,LBB1_35-L1$pb
	.set	L1_0_set_307,LBB1_307-L1$pb
	.set	L1_0_set_58,LBB1_58-L1$pb
	.set	L1_0_set_102,LBB1_102-L1$pb
	.set	L1_0_set_107,LBB1_107-L1$pb
	.set	L1_0_set_205,LBB1_205-L1$pb
	.set	L1_0_set_263,LBB1_263-L1$pb
	.set	L1_0_set_207,LBB1_207-L1$pb
	.set	L1_0_set_209,LBB1_209-L1$pb
	.set	L1_0_set_216,LBB1_216-L1$pb
	.set	L1_0_set_221,LBB1_221-L1$pb
	.set	L1_0_set_238,LBB1_238-L1$pb
	.set	L1_0_set_70,LBB1_70-L1$pb
	.set	L1_0_set_244,LBB1_244-L1$pb
	.set	L1_0_set_69,LBB1_69-L1$pb
	.set	L1_0_set_261,LBB1_261-L1$pb
	.set	L1_0_set_280,LBB1_280-L1$pb
	.set	L1_0_set_248,LBB1_248-L1$pb
	.set	L1_0_set_284,LBB1_284-L1$pb
	.set	L1_0_set_291,LBB1_291-L1$pb
	.set	L1_0_set_61,LBB1_61-L1$pb
	.set	L1_0_set_65,LBB1_65-L1$pb
	.set	L1_0_set_109,LBB1_109-L1$pb
	.set	L1_0_set_112,LBB1_112-L1$pb
	.set	L1_0_set_214,LBB1_214-L1$pb
	.set	L1_0_set_211,LBB1_211-L1$pb
	.set	L1_0_set_213,LBB1_213-L1$pb
	.set	L1_0_set_218,LBB1_218-L1$pb
	.set	L1_0_set_228,LBB1_228-L1$pb
	.set	L1_0_set_239,LBB1_239-L1$pb
	.set	L1_0_set_68,LBB1_68-L1$pb
	.set	L1_0_set_246,LBB1_246-L1$pb
	.set	L1_0_set_250,LBB1_250-L1$pb
	.set	L1_0_set_260,LBB1_260-L1$pb
	.set	L1_0_set_282,LBB1_282-L1$pb
	.set	L1_0_set_105,LBB1_105-L1$pb
	.set	L1_0_set_287,LBB1_287-L1$pb
	.set	L1_0_set_311,LBB1_311-L1$pb
	.set	L1_1_set_315,LBB1_315-L1$pb
	.set	L1_1_set_316,LBB1_316-L1$pb
	.set	L1_1_set_317,LBB1_317-L1$pb
	.set	L1_1_set_319,LBB1_319-L1$pb

.subsections_via_symbols
