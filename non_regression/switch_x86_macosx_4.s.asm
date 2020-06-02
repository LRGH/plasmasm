	.section       __TEXT,__text,regular,pure_instructions
	.align 4, 0x90
	.globl	_xstrtoimax
_xstrtoimax:
	pushl     %ebp
	movl      %esp, %ebp
	pushl     %ebx
	pushl     %edi
	pushl     %esi
	subl      $76, %esp
	call      L0$pb
L0$pb:
	popl      %eax
	movl      %eax, -32(%ebp)
	movl      16(%ebp), %ebx
	cmpl      $37, %ebx
	jae       LBB0_320
	movl      12(%ebp), %eax
	movl      8(%ebp), %esi
	testl     %eax, %eax
	leal      -16(%ebp), %edi
	cmovne    %eax, %edi
	movl      %edi, -20(%ebp)
	call      ___error
	movl      $0, (%eax)
	movl      %ebx, 8(%esp)
	movl      %edi, 4(%esp)
	movl      %esi, (%esp)
	call      _strtoimax
	cmpl      %esi, (%edi)
	je        LBB0_2
	movl      24(%ebp), %edi
	movl      %eax, -28(%ebp)
	movl      %edx, -24(%ebp)
	call      ___error
	xorl      %esi, %esi
	cmpl      $0, (%eax)
	je        LBB0_8
	call      ___error
	movl      $4, %ebx
	movl      $1, %esi
	cmpl      $34, (%eax)
	jne       LBB0_14
	jmp       LBB0_8
LBB0_2:
	movl      $4, %ebx
	movl      24(%ebp), %eax
	testl     %eax, %eax
	movl      %eax, %ecx
	je        LBB0_14
	movsbl    (%esi), %eax
	testl     %eax, %eax
	je        LBB0_14
	movl      %eax, 4(%esp)
	movl      %ecx, (%esp)
	movl      %ecx, %edi
	call      _strchr
	testl     %eax, %eax
	je        LBB0_14
	movl      $1, -28(%ebp)
	movl      $0, -24(%ebp)
	xorl      %esi, %esi
LBB0_8:
	testl     %edi, %edi
	je        LBB0_9
	movl      -20(%ebp), %eax
	movl      (%eax), %eax
	movl      %eax, -36(%ebp)
	movsbl    (%eax), %ebx
	testl     %ebx, %ebx
	je        LBB0_11
	movl      %ebx, 4(%esp)
	movl      %edi, (%esp)
	call      _strchr
	testl     %eax, %eax
	je        LBB0_16
	movl      %edi, (%esp)
	movl      $48, 4(%esp)
	call      _strchr
	xorl      %ecx, %ecx
	testl     %eax, %eax
	movl      $1024, -40(%ebp)
	movl      $1, %edx
	je        LBB0_24
	movl      -36(%ebp), %eax
	movsbl    1(%eax), %eax
	cmpl      $66, %eax
	je        LBB0_23
	cmpl      $68, %eax
	jne       LBB0_20
LBB0_23:
	movl      $1000, -40(%ebp)
	movl      $2, %edx
	jmp       LBB0_24
LBB0_9:
	movl      20(%ebp), %eax
	movl      -28(%ebp), %ecx
	movl      %ecx, (%eax)
	movl      -24(%ebp), %ecx
	movl      %ecx, 4(%eax)
	jmp       LBB0_13
LBB0_11:
	movl      -28(%ebp), %ecx
	movl      -24(%ebp), %ebx
	jmp       LBB0_12
LBB0_20:
	cmpl      $105, %eax
	jne       LBB0_24
	movl      -36(%ebp), %eax
	movzbl    2(%eax), %eax
	movl      $3, %edx
	cmpl      $66, %eax
	je        LBB0_24
	movl      $1, %edx
LBB0_24:
	cmpl      $68, %ebx
	jg        LBB0_28
	movl      %edx, -44(%ebp)
	cmpl      $66, %ebx
	jne       LBB0_16
	movl      $-1, %eax
	addl      $1, %eax
	movl      %eax, -32(%ebp)
	movl      $2147483647, %ebx
	adcl      $0, %ebx
	cmpl      $-2097152, -24(%ebp)
	movl      $1, %edx
	jl        LBB0_113
	movl      -24(%ebp), %edi
	movl      %edi, %ebx
	movl      -28(%ebp), %eax
	shldl     $10, %eax, %ebx
	shll      $10, %eax
	cmpl      $2097151, %edi
	jmp       LBB0_62
LBB0_28:
	cmpl      $118, %ebx
	jg        LBB0_173
	cmpl      $115, %ebx
	jg        LBB0_197
	cmpl      $97, %ebx
	jg        LBB0_58
	cmpl      $88, %ebx
	jg        LBB0_35
	movl      %edx, -44(%ebp)
	cmpl      $83, %ebx
	jg        LBB0_151
	addl      $-69, %ebx
	cmpl      $11, %ebx
	ja        LBB0_16
	movl      -32(%ebp), %eax
	addl      Ltmp0(%eax,%ebx,4), %eax
	jmp       *%eax
LBB0_63:
	movl      %esi, -60(%ebp)
	movl      $-1, %esi
	addl      $1, %esi
	movl      $2147483647, %ebx
	adcl      $0, %ebx
	movl      %ecx, 12(%esp)
	movl      %ecx, -48(%ebp)
	movl      -40(%ebp), %eax
	movl      %eax, 8(%esp)
	movl      %esi, (%esp)
	movl      %ebx, 4(%esp)
	call      ___divdi3
	movl      %eax, -32(%ebp)
	cmpl      %eax, -28(%ebp)
	setb      %al
	movl      -24(%ebp), %edi
	cmpl      %edx, %edi
	setl      %cl
	je        LBB0_65
	movb      %cl, %al
LBB0_65:
	movl      $1, -52(%ebp)
	testb     %al, %al
	jne       LBB0_70
	movl      %edx, -56(%ebp)
	movl      -48(%ebp), %eax
	movl      %eax, 12(%esp)
	movl      -40(%ebp), %eax
	movl      %eax, 8(%esp)
	movl      $2147483647, %eax
	movl      %eax, 4(%esp)
	movl      $-1, %eax
	movl      %eax, (%esp)
	call      ___udivdi3
	cmpl      -28(%ebp), %eax
	setb      %al
	cmpl      %edi, %edx
	setl      %cl
	je        LBB0_68
	movb      %cl, %al
LBB0_68:
	movl      $1, -52(%ebp)
	testb     %al, %al
	movl      $-1, %esi
	movl      $2147483647, %ebx
	jne       LBB0_73
	movl      -28(%ebp), %ebx
	movl      %ebx, %eax
	movl      -40(%ebp), %ecx
	mull      %ecx
	movl      %eax, %esi
	movl      %edx, %eax
	imull     -48(%ebp), %ebx
	addl      %eax, %ebx
	movl      %edi, %eax
	imull     %ecx, %eax
	addl      %ebx, %eax
	movl      $0, -52(%ebp)
	movl      %eax, %ebx
	movl      -56(%ebp), %edx
LBB0_70:
	movl      %edx, -56(%ebp)
	cmpl      -32(%ebp), %esi
	setb      %al
	cmpl      %edx, %ebx
	setl      %cl
	je        LBB0_72
	movb      %cl, %al
LBB0_72:
	movl      $-1, %ecx
	addl      $1, %ecx
	movl      %ecx, -24(%ebp)
	movl      $2147483647, %ecx
	adcl      $0, %ecx
	movl      %ecx, -28(%ebp)
	movl      $1, %edi
	testb     %al, %al
	jne       LBB0_77
LBB0_73:
	movl      -48(%ebp), %eax
	movl      %eax, 12(%esp)
	movl      -40(%ebp), %eax
	movl      %eax, 8(%esp)
	movl      $2147483647, %eax
	movl      %eax, 4(%esp)
	movl      $-1, %eax
	movl      %eax, (%esp)
	call      ___udivdi3
	movl      %edx, %ecx
	cmpl      %esi, %eax
	setb      %al
	cmpl      %ebx, %ecx
	setl      %cl
	je        LBB0_75
	movb      %cl, %al
LBB0_75:
	movl      $1, %edi
	testb     %al, %al
	movl      $-1, -24(%ebp)
	movl      $2147483647, -28(%ebp)
	jne       LBB0_80
	movl      %esi, %eax
	movl      -40(%ebp), %ecx
	mull      %ecx
	movl      %eax, -24(%ebp)
	movl      %edx, %eax
	imull     -48(%ebp), %esi
	addl      %eax, %esi
	imull     %ecx, %ebx
	addl      %esi, %ebx
	xorl      %edi, %edi
	movl      %ebx, -28(%ebp)
LBB0_77:
	movl      -24(%ebp), %eax
	cmpl      -32(%ebp), %eax
	setb      %al
	movl      -28(%ebp), %ecx
	cmpl      -56(%ebp), %ecx
	setl      %cl
	je        LBB0_79
	movb      %cl, %al
LBB0_79:
	orl       -52(%ebp), %edi
	movl      $-1, %ebx
	addl      $1, %ebx
	movl      $2147483647, %ecx
	adcl      $0, %ecx
	movl      %ecx, -52(%ebp)
	movl      $1, %esi
	testb     %al, %al
	jne       LBB0_199
LBB0_80:
	movl      -48(%ebp), %eax
	movl      %eax, 12(%esp)
	movl      -40(%ebp), %eax
	movl      %eax, 8(%esp)
	movl      $2147483647, %eax
	movl      %eax, 4(%esp)
	movl      $-1, %eax
	movl      %eax, (%esp)
	call      ___udivdi3
	movl      %edx, %ecx
	cmpl      -24(%ebp), %eax
	setae     %al
	cmpl      -28(%ebp), %ecx
	setge     %cl
	je        LBB0_82
	movb      %cl, %al
LBB0_82:
	testb     %al, %al
	jne       LBB0_198
	movl      $1, %esi
	movl      $-1, %ebx
	movl      $2147483647, -52(%ebp)
	jmp       LBB0_202
LBB0_173:
	movl      %edx, -44(%ebp)
	cmpl      $119, %ebx
	jne       LBB0_16
	movl      $-1, %eax
	addl      $1, %eax
	movl      %eax, -32(%ebp)
	movl      $2147483647, %ebx
	adcl      $0, %ebx
	cmpl      $-1073741824, -24(%ebp)
	movl      $1, %edx
	jl        LBB0_113
	movl      -28(%ebp), %eax
	addl      %eax, %eax
	movl      -24(%ebp), %edi
	movl      %edi, %ebx
	adcl      %ebx, %ebx
	cmpl      $1073741823, %edi
LBB0_62:
	setg      %dl
	movl      $-1, %ecx
	cmovg     %ecx, %eax
	movl      $2147483647, %ecx
	cmovg     %ecx, %ebx
	movzbl    %dl, %edx
	movl      %eax, -32(%ebp)
	jmp       LBB0_113
LBB0_197:
	movl      %edx, -44(%ebp)
	cmpl      $116, %ebx
	jne       LBB0_16
	jmp       LBB0_152
LBB0_58:
	movl      %edx, -44(%ebp)
	addl      $-98, %ebx
	cmpl      $11, %ebx
	ja        LBB0_16
	movl      -32(%ebp), %edi
	addl      Ltmp1(%edi,%ebx,4), %edi
	movl      -28(%ebp), %eax
	movl      %eax, -32(%ebp)
	movl      -24(%ebp), %ebx
	xorl      %edx, %edx
	jmp       *%edi
LBB0_60:
	movl      $-1, %eax
	addl      $1, %eax
	movl      %eax, -32(%ebp)
	movl      $2147483647, %ebx
	adcl      $0, %ebx
	cmpl      $-4194304, -24(%ebp)
	movl      $1, %edx
	jl        LBB0_113
	movl      -24(%ebp), %edi
	movl      %edi, %ebx
	movl      -28(%ebp), %eax
	shldl     $9, %eax, %ebx
	shll      $9, %eax
	cmpl      $4194303, %edi
	jmp       LBB0_62
LBB0_35:
	cmpl      $89, %ebx
	jne       LBB0_36
	movl      %edx, -44(%ebp)
	movl      %esi, -60(%ebp)
	movl      $-1, %ebx
	addl      $1, %ebx
	movl      $2147483647, %esi
	adcl      $0, %esi
	movl      %ecx, 12(%esp)
	movl      %ecx, -48(%ebp)
	movl      -40(%ebp), %eax
	movl      %eax, 8(%esp)
	movl      %ebx, (%esp)
	movl      %esi, 4(%esp)
	call      ___divdi3
	movl      %eax, -56(%ebp)
	movl      %edx, -32(%ebp)
	cmpl      %eax, -28(%ebp)
	setb      %al
	cmpl      %edx, -24(%ebp)
	setl      %cl
	je        LBB0_178
	movb      %cl, %al
LBB0_178:
	movl      $1, %ecx
	testb     %al, %al
	jne       LBB0_183
	movl      -48(%ebp), %eax
	movl      %eax, 12(%esp)
	movl      -40(%ebp), %eax
	movl      %eax, 8(%esp)
	movl      $2147483647, %eax
	movl      %eax, 4(%esp)
	movl      $-1, %eax
	movl      %eax, (%esp)
	call      ___udivdi3
	cmpl      -28(%ebp), %eax
	setb      %al
	cmpl      -24(%ebp), %edx
	setl      %cl
	je        LBB0_181
	movb      %cl, %al
LBB0_181:
	movl      $1, -52(%ebp)
	testb     %al, %al
	movl      $-1, %ebx
	movl      $2147483647, %esi
	jne       LBB0_186
	movl      -28(%ebp), %esi
	movl      %esi, %eax
	movl      -40(%ebp), %ecx
	mull      %ecx
	movl      %eax, %ebx
	imull     -48(%ebp), %esi
	addl      %edx, %esi
	movl      -24(%ebp), %edi
	imull     %ecx, %edi
	addl      %esi, %edi
	xorl      %ecx, %ecx
	movl      %edi, %esi
LBB0_183:
	movl      %ecx, -52(%ebp)
	cmpl      -56(%ebp), %ebx
	setb      %ch
	cmpl      -32(%ebp), %esi
	setl      %cl
	je        LBB0_185
	movb      %cl, %ch
LBB0_185:
	movl      $-1, %eax
	addl      $1, %eax
	movl      $2147483647, %edi
	adcl      $0, %edi
	movl      $1, %edx
	testb     %ch, %ch
	jne       LBB0_190
LBB0_186:
	movl      -48(%ebp), %eax
	movl      %eax, 12(%esp)
	movl      -40(%ebp), %eax
	movl      %eax, 8(%esp)
	movl      $2147483647, %eax
	movl      %eax, 4(%esp)
	movl      $-1, %eax
	movl      %eax, (%esp)
	call      ___udivdi3
	cmpl      %ebx, %eax
	setb      %al
	cmpl      %esi, %edx
	setl      %cl
	je        LBB0_188
	movb      %cl, %al
LBB0_188:
	movl      $1, %edx
	testb     %al, %al
	movl      $-1, -28(%ebp)
	movl      $2147483647, %edi
	jne       LBB0_193
	movl      %ebx, %eax
	movl      -40(%ebp), %ecx
	mull      %ecx
	imull     -48(%ebp), %ebx
	addl      %edx, %ebx
	imull     %ecx, %esi
	addl      %ebx, %esi
	xorl      %edx, %edx
	movl      %esi, %edi
LBB0_190:
	movl      %eax, -28(%ebp)
	cmpl      -56(%ebp), %eax
	setb      %al
	cmpl      -32(%ebp), %edi
	setl      %cl
	je        LBB0_192
	movb      %cl, %al
LBB0_192:
	orl       -52(%ebp), %edx
	movl      $-1, %ebx
	addl      $1, %ebx
	movl      $2147483647, %esi
	adcl      $0, %esi
	movl      $1, -24(%ebp)
	testb     %al, %al
	jne       LBB0_252
LBB0_193:
	movl      %edx, -52(%ebp)
	movl      -48(%ebp), %eax
	movl      %eax, 12(%esp)
	movl      -40(%ebp), %eax
	movl      %eax, 8(%esp)
	movl      $2147483647, %eax
	movl      %eax, 4(%esp)
	movl      $-1, %eax
	movl      %eax, (%esp)
	call      ___udivdi3
	movl      -28(%ebp), %esi
	cmpl      %esi, %eax
	setae     %al
	cmpl      %edi, %edx
	setge     %cl
	je        LBB0_195
	movb      %cl, %al
LBB0_195:
	testb     %al, %al
	jne       LBB0_251
	movl      $1, %edx
	movl      $-1, %ebx
	movl      $2147483647, %esi
	jmp       LBB0_255
LBB0_151:
	cmpl      $84, %ebx
	jne       LBB0_16
LBB0_152:
	movl      %esi, -60(%ebp)
	movl      $-1, %ebx
	addl      $1, %ebx
	movl      $2147483647, %esi
	adcl      $0, %esi
	movl      %ecx, 12(%esp)
	movl      %ecx, -48(%ebp)
	movl      -40(%ebp), %eax
	movl      %eax, 8(%esp)
	movl      %ebx, (%esp)
	movl      %esi, 4(%esp)
	call      ___divdi3
	movl      %eax, -56(%ebp)
	movl      %edx, -32(%ebp)
	cmpl      %eax, -28(%ebp)
	setb      %al
	cmpl      %edx, -24(%ebp)
	setl      %cl
	je        LBB0_154
	movb      %cl, %al
LBB0_154:
	movl      $1, %ecx
	testb     %al, %al
	jne       LBB0_159
	movl      -48(%ebp), %eax
	movl      %eax, 12(%esp)
	movl      -40(%ebp), %eax
	movl      %eax, 8(%esp)
	movl      $2147483647, %eax
	movl      %eax, 4(%esp)
	movl      $-1, %eax
	movl      %eax, (%esp)
	call      ___udivdi3
	cmpl      -28(%ebp), %eax
	setb      %al
	cmpl      -24(%ebp), %edx
	setl      %cl
	je        LBB0_157
	movb      %cl, %al
LBB0_157:
	movl      $1, -52(%ebp)
	testb     %al, %al
	movl      $-1, %ebx
	movl      $2147483647, %esi
	jne       LBB0_162
	movl      -28(%ebp), %esi
	movl      %esi, %eax
	movl      -40(%ebp), %ecx
	mull      %ecx
	movl      %eax, %ebx
	imull     -48(%ebp), %esi
	addl      %edx, %esi
	movl      -24(%ebp), %edi
	imull     %ecx, %edi
	addl      %esi, %edi
	xorl      %ecx, %ecx
	movl      %edi, %esi
LBB0_159:
	movl      %ecx, -52(%ebp)
	cmpl      -56(%ebp), %ebx
	setb      %ch
	cmpl      -32(%ebp), %esi
	setl      %cl
	je        LBB0_161
	movb      %cl, %ch
LBB0_161:
	movl      $-1, %eax
	addl      $1, %eax
	movl      $2147483647, %edi
	adcl      $0, %edi
	movl      $1, %edx
	testb     %ch, %ch
	jne       LBB0_166
LBB0_162:
	movl      -48(%ebp), %eax
	movl      %eax, 12(%esp)
	movl      -40(%ebp), %eax
	movl      %eax, 8(%esp)
	movl      $2147483647, %eax
	movl      %eax, 4(%esp)
	movl      $-1, %eax
	movl      %eax, (%esp)
	call      ___udivdi3
	cmpl      %ebx, %eax
	setb      %al
	cmpl      %esi, %edx
	setl      %cl
	je        LBB0_164
	movb      %cl, %al
LBB0_164:
	movl      $1, %edx
	testb     %al, %al
	movl      $-1, -24(%ebp)
	movl      $2147483647, %edi
	jne       LBB0_169
	movl      %ebx, %eax
	movl      -40(%ebp), %ecx
	mull      %ecx
	imull     -48(%ebp), %ebx
	addl      %edx, %ebx
	imull     %ecx, %esi
	addl      %ebx, %esi
	xorl      %edx, %edx
	movl      %esi, %edi
LBB0_166:
	movl      %eax, -24(%ebp)
	cmpl      -56(%ebp), %eax
	setb      %ch
	cmpl      -32(%ebp), %edi
	setl      %cl
	je        LBB0_168
	movb      %cl, %ch
LBB0_168:
	orl       -52(%ebp), %edx
	movl      $-1, %eax
	addl      $1, %eax
	movl      $2147483647, %esi
	adcl      $0, %esi
	movl      $1, -52(%ebp)
	testb     %ch, %ch
	jne       LBB0_242
LBB0_169:
	movl      %edx, %ebx
	movl      -48(%ebp), %eax
	movl      %eax, 12(%esp)
	movl      -40(%ebp), %eax
	movl      %eax, 8(%esp)
	movl      $2147483647, %eax
	movl      %eax, 4(%esp)
	movl      $-1, %eax
	movl      %eax, (%esp)
	call      ___udivdi3
	movl      -24(%ebp), %esi
	cmpl      %esi, %eax
	setae     %al
	cmpl      %edi, %edx
	setge     %cl
	je        LBB0_171
	movb      %cl, %al
LBB0_171:
	testb     %al, %al
	je        LBB0_172
	movl      %esi, %eax
	movl      -40(%ebp), %ecx
	mull      %ecx
	imull     -48(%ebp), %esi
	addl      %edx, %esi
	imull     %ecx, %edi
	addl      %esi, %edi
	movl      $0, -52(%ebp)
	movl      %edi, %esi
	movl      %ebx, %edx
LBB0_242:
	cmpl      -56(%ebp), %eax
	setb      %cl
	cmpl      -32(%ebp), %esi
	setl      %ch
	movl      %eax, %edi
	je        LBB0_244
	movb      %ch, %cl
LBB0_244:
	orl       %edx, -52(%ebp)
	jmp       LBB0_245
LBB0_36:
	cmpl      $90, %ebx
	jne       LBB0_16
	movl      %edx, -44(%ebp)
	movl      %esi, -60(%ebp)
	movl      $-1, %ebx
	addl      $1, %ebx
	movl      $2147483647, %esi
	adcl      $0, %esi
	movl      %ecx, 12(%esp)
	movl      %ecx, -48(%ebp)
	movl      -40(%ebp), %eax
	movl      %eax, 8(%esp)
	movl      %ebx, (%esp)
	movl      %esi, 4(%esp)
	call      ___divdi3
	movl      %eax, -56(%ebp)
	movl      %edx, -32(%ebp)
	cmpl      %eax, -28(%ebp)
	setb      %al
	cmpl      %edx, -24(%ebp)
	setl      %cl
	je        LBB0_39
	movb      %cl, %al
LBB0_39:
	movl      $1, %ecx
	testb     %al, %al
	jne       LBB0_44
	movl      -48(%ebp), %eax
	movl      %eax, 12(%esp)
	movl      -40(%ebp), %eax
	movl      %eax, 8(%esp)
	movl      $2147483647, %eax
	movl      %eax, 4(%esp)
	movl      $-1, %eax
	movl      %eax, (%esp)
	call      ___udivdi3
	cmpl      -28(%ebp), %eax
	setb      %al
	cmpl      -24(%ebp), %edx
	setl      %cl
	je        LBB0_42
	movb      %cl, %al
LBB0_42:
	movl      $1, -52(%ebp)
	testb     %al, %al
	movl      $-1, %ebx
	movl      $2147483647, %esi
	jne       LBB0_47
	movl      -28(%ebp), %esi
	movl      %esi, %eax
	movl      -40(%ebp), %ecx
	mull      %ecx
	movl      %eax, %ebx
	imull     -48(%ebp), %esi
	addl      %edx, %esi
	movl      -24(%ebp), %edi
	imull     %ecx, %edi
	addl      %esi, %edi
	xorl      %ecx, %ecx
	movl      %edi, %esi
LBB0_44:
	movl      %ecx, -52(%ebp)
	cmpl      -56(%ebp), %ebx
	setb      %ch
	cmpl      -32(%ebp), %esi
	setl      %cl
	je        LBB0_46
	movb      %cl, %ch
LBB0_46:
	movl      $-1, %eax
	addl      $1, %eax
	movl      $2147483647, %edi
	adcl      $0, %edi
	movl      $1, %edx
	testb     %ch, %ch
	jne       LBB0_51
LBB0_47:
	movl      -48(%ebp), %eax
	movl      %eax, 12(%esp)
	movl      -40(%ebp), %eax
	movl      %eax, 8(%esp)
	movl      $2147483647, %eax
	movl      %eax, 4(%esp)
	movl      $-1, %eax
	movl      %eax, (%esp)
	call      ___udivdi3
	cmpl      %ebx, %eax
	setb      %al
	cmpl      %esi, %edx
	setl      %cl
	je        LBB0_49
	movb      %cl, %al
LBB0_49:
	movl      $1, %edx
	testb     %al, %al
	movl      $-1, -28(%ebp)
	movl      $2147483647, %edi
	jne       LBB0_54
	movl      %ebx, %eax
	movl      -40(%ebp), %ecx
	mull      %ecx
	imull     -48(%ebp), %ebx
	addl      %edx, %ebx
	imull     %ecx, %esi
	addl      %ebx, %esi
	xorl      %edx, %edx
	movl      %esi, %edi
LBB0_51:
	movl      %eax, -28(%ebp)
	cmpl      -56(%ebp), %eax
	setb      %al
	cmpl      -32(%ebp), %edi
	setl      %cl
	je        LBB0_53
	movb      %cl, %al
LBB0_53:
	orl       -52(%ebp), %edx
	movl      $-1, %ebx
	addl      $1, %ebx
	movl      $2147483647, %esi
	adcl      $0, %esi
	movl      $1, -24(%ebp)
	testb     %al, %al
	jne       LBB0_287
LBB0_54:
	movl      %edx, -52(%ebp)
	movl      -48(%ebp), %eax
	movl      %eax, 12(%esp)
	movl      -40(%ebp), %eax
	movl      %eax, 8(%esp)
	movl      $2147483647, %eax
	movl      %eax, 4(%esp)
	movl      $-1, %eax
	movl      %eax, (%esp)
	call      ___udivdi3
	movl      -28(%ebp), %esi
	cmpl      %esi, %eax
	setae     %al
	cmpl      %edi, %edx
	setge     %cl
	je        LBB0_56
	movb      %cl, %al
LBB0_56:
	testb     %al, %al
	jne       LBB0_286
	movl      $1, %edx
	movl      $-1, %ebx
	movl      $2147483647, %esi
	movl      -48(%ebp), %ecx
	jmp       LBB0_290
LBB0_16:
	movl      20(%ebp), %eax
	movl      -28(%ebp), %ecx
	movl      %ecx, (%eax)
	movl      -24(%ebp), %ecx
	movl      %ecx, 4(%eax)
	orl       $2, %esi
	jmp       LBB0_13
LBB0_84:
	movl      %esi, -60(%ebp)
	movl      $-1, %ebx
	addl      $1, %ebx
	movl      $2147483647, %esi
	adcl      $0, %esi
	movl      %ecx, 12(%esp)
	movl      %ecx, -48(%ebp)
	movl      -40(%ebp), %eax
	movl      %eax, 8(%esp)
	movl      %ebx, (%esp)
	movl      %esi, 4(%esp)
	call      ___divdi3
	movl      %eax, -56(%ebp)
	movl      %edx, -32(%ebp)
	cmpl      %eax, -28(%ebp)
	setb      %al
	cmpl      %edx, -24(%ebp)
	setl      %cl
	je        LBB0_86
	movb      %cl, %al
LBB0_86:
	movl      $1, %edx
	testb     %al, %al
	jne       LBB0_91
	movl      -48(%ebp), %eax
	movl      %eax, 12(%esp)
	movl      -40(%ebp), %eax
	movl      %eax, 8(%esp)
	movl      $2147483647, %eax
	movl      %eax, 4(%esp)
	movl      $-1, %eax
	movl      %eax, (%esp)
	call      ___udivdi3
	cmpl      -28(%ebp), %eax
	setb      %al
	cmpl      -24(%ebp), %edx
	setl      %cl
	je        LBB0_89
	movb      %cl, %al
LBB0_89:
	movl      $1, %edx
	testb     %al, %al
	movl      $-1, %ebx
	movl      $2147483647, %esi
	jne       LBB0_94
	movl      -28(%ebp), %esi
	movl      %esi, %eax
	movl      -40(%ebp), %ecx
	mull      %ecx
	movl      %eax, %ebx
	imull     -48(%ebp), %esi
	addl      %edx, %esi
	movl      -24(%ebp), %edi
	imull     %ecx, %edi
	addl      %esi, %edi
	xorl      %edx, %edx
	movl      %edi, %esi
LBB0_91:
	cmpl      -56(%ebp), %ebx
	setb      %al
	cmpl      -32(%ebp), %esi
	setl      %cl
	je        LBB0_93
	movb      %cl, %al
LBB0_93:
	movl      $-1, %ecx
	addl      $1, %ecx
	movl      $2147483647, %edi
	adcl      $0, %edi
	movl      $1, -52(%ebp)
	testb     %al, %al
	jne       LBB0_98
LBB0_94:
	movl      %edx, -28(%ebp)
	movl      -48(%ebp), %eax
	movl      %eax, 12(%esp)
	movl      -40(%ebp), %eax
	movl      %eax, 8(%esp)
	movl      $2147483647, %eax
	movl      %eax, 4(%esp)
	movl      $-1, %eax
	movl      %eax, (%esp)
	call      ___udivdi3
	cmpl      %ebx, %eax
	setb      %al
	cmpl      %esi, %edx
	setl      %cl
	je        LBB0_96
	movb      %cl, %al
LBB0_96:
	movl      $1, -52(%ebp)
	testb     %al, %al
	movl      $-1, -24(%ebp)
	movl      $2147483647, %edi
	jne       LBB0_101
	movl      %ebx, %eax
	movl      -40(%ebp), %ecx
	mull      %ecx
	imull     -48(%ebp), %ebx
	addl      %edx, %ebx
	imull     %ecx, %esi
	movl      %eax, %ecx
	addl      %ebx, %esi
	movl      $0, -52(%ebp)
	movl      %esi, %edi
	movl      -28(%ebp), %edx
LBB0_98:
	movl      %ecx, -24(%ebp)
	cmpl      -56(%ebp), %ecx
	setb      %cl
	cmpl      -32(%ebp), %edi
	setl      %al
	je        LBB0_100
	movb      %al, %cl
LBB0_100:
	orl       %edx, -52(%ebp)
	movl      $-1, %eax
	addl      $1, %eax
	movl      %eax, -32(%ebp)
	movl      $2147483647, %ebx
	adcl      $0, %ebx
	movl      $1, %eax
	testb     %cl, %cl
	jne       LBB0_224
LBB0_101:
	movl      -48(%ebp), %eax
	movl      %eax, 12(%esp)
	movl      -40(%ebp), %eax
	movl      %eax, 8(%esp)
	movl      $2147483647, %eax
	movl      %eax, 4(%esp)
	movl      $-1, %eax
	movl      %eax, (%esp)
	call      ___udivdi3
	cmpl      -24(%ebp), %eax
	setb      %cl
	cmpl      %edi, %edx
	setl      %al
	je        LBB0_103
	movb      %al, %cl
LBB0_103:
	movl      $1, %eax
	testb     %cl, %cl
	jne       LBB0_221
	movl      -24(%ebp), %esi
	movl      %esi, %eax
	movl      -40(%ebp), %ecx
	mull      %ecx
	movl      %eax, -32(%ebp)
	movl      -48(%ebp), %eax
	imull     %esi, %eax
	addl      %edx, %eax
	imull     %ecx, %edi
	addl      %eax, %edi
	xorl      %eax, %eax
	movl      %edi, %ebx
	jmp       LBB0_224
LBB0_105:
	movl      $-1, %edx
	addl      $1, %edx
	movl      %edx, -32(%ebp)
	movl      $2147483647, %ebx
	adcl      $0, %ebx
	movl      %ecx, 12(%esp)
	movl      %ecx, -48(%ebp)
	movl      -40(%ebp), %eax
	movl      %eax, 8(%esp)
	movl      %edx, (%esp)
	movl      %ebx, 4(%esp)
	call      ___divdi3
	cmpl      %eax, -28(%ebp)
	setb      %al
	cmpl      %edx, -24(%ebp)
	setl      %cl
	je        LBB0_107
	movb      %cl, %al
LBB0_107:
	testb     %al, %al
	je        LBB0_109
	movl      $1, %edx
	jmp       LBB0_113
LBB0_116:
	movl      %esi, -60(%ebp)
	movl      $-1, %edx
	addl      $1, %edx
	movl      %edx, -56(%ebp)
	movl      $2147483647, %esi
	adcl      $0, %esi
	movl      %ecx, 12(%esp)
	movl      %ecx, -48(%ebp)
	movl      -40(%ebp), %eax
	movl      %eax, 8(%esp)
	movl      %edx, (%esp)
	movl      %esi, 4(%esp)
	call      ___divdi3
	movl      %eax, %ebx
	cmpl      %ebx, -28(%ebp)
	setb      %al
	cmpl      %edx, -24(%ebp)
	setl      %cl
	je        LBB0_118
	movb      %cl, %al
LBB0_118:
	movl      $1, -52(%ebp)
	testb     %al, %al
	jne       LBB0_123
	movl      %edx, -32(%ebp)
	movl      -48(%ebp), %eax
	movl      %eax, 12(%esp)
	movl      -40(%ebp), %eax
	movl      %eax, 8(%esp)
	movl      $2147483647, %eax
	movl      %eax, 4(%esp)
	movl      $-1, %eax
	movl      %eax, (%esp)
	call      ___udivdi3
	cmpl      -28(%ebp), %eax
	setb      %al
	cmpl      -24(%ebp), %edx
	setl      %cl
	je        LBB0_121
	movb      %cl, %al
LBB0_121:
	movl      $1, -52(%ebp)
	testb     %al, %al
	movl      $-1, -56(%ebp)
	movl      $2147483647, %esi
	jne       LBB0_126
	movl      -28(%ebp), %esi
	movl      %esi, %eax
	movl      -40(%ebp), %ecx
	mull      %ecx
	movl      %eax, -56(%ebp)
	imull     -48(%ebp), %esi
	addl      %edx, %esi
	movl      -24(%ebp), %edi
	imull     %ecx, %edi
	addl      %esi, %edi
	movl      $0, -52(%ebp)
	movl      %edi, %esi
	movl      -32(%ebp), %edx
LBB0_123:
	cmpl      %ebx, -56(%ebp)
	setb      %cl
	cmpl      %edx, %esi
	setl      %al
	je        LBB0_125
	movb      %al, %cl
LBB0_125:
	movl      $-1, %eax
	addl      $1, %eax
	movl      %eax, -32(%ebp)
	movl      $2147483647, %ebx
	adcl      $0, %ebx
	movl      $1, %eax
	testb     %cl, %cl
	jne       LBB0_224
LBB0_126:
	movl      -48(%ebp), %eax
	movl      %eax, 12(%esp)
	movl      -40(%ebp), %eax
	movl      %eax, 8(%esp)
	movl      $2147483647, %eax
	movl      %eax, 4(%esp)
	movl      $-1, %eax
	movl      %eax, (%esp)
	call      ___udivdi3
	cmpl      -56(%ebp), %eax
	setb      %cl
	cmpl      %esi, %edx
	setl      %al
	je        LBB0_128
	movb      %al, %cl
LBB0_128:
	movl      $1, %eax
	testb     %cl, %cl
	jne       LBB0_221
	movl      -56(%ebp), %ebx
	movl      %ebx, %eax
	movl      -40(%ebp), %ecx
	mull      %ecx
	movl      %eax, -32(%ebp)
	movl      -48(%ebp), %edi
	imull     %ebx, %edi
	addl      %edx, %edi
	imull     %ecx, %esi
	addl      %edi, %esi
	jmp       LBB0_250
LBB0_251:
	movl      %esi, %eax
	movl      -40(%ebp), %ecx
	mull      %ecx
	movl      %eax, %ebx
	imull     -48(%ebp), %esi
	addl      %edx, %esi
	imull     %ecx, %edi
	addl      %esi, %edi
	movl      $0, -24(%ebp)
	movl      %edi, %esi
	movl      -52(%ebp), %edx
LBB0_252:
	cmpl      -56(%ebp), %ebx
	setb      %al
	cmpl      -32(%ebp), %esi
	setl      %cl
	je        LBB0_254
	movb      %cl, %al
LBB0_254:
	movl      -24(%ebp), %ecx
	orl       %edx, %ecx
	movl      %ecx, %edx
	movb      %al, %cl
	movl      $-1, %eax
	addl      $1, %eax
	movl      $2147483647, %edi
	adcl      $0, %edi
	movl      $1, -28(%ebp)
	testb     %cl, %cl
	jne       LBB0_260
LBB0_255:
	movl      %edx, -24(%ebp)
	movl      -48(%ebp), %eax
	movl      %eax, 12(%esp)
	movl      -40(%ebp), %eax
	movl      %eax, 8(%esp)
	movl      $2147483647, %eax
	movl      %eax, 4(%esp)
	movl      $-1, %eax
	movl      %eax, (%esp)
	call      ___udivdi3
	cmpl      %ebx, %eax
	setae     %al
	cmpl      %esi, %edx
	setge     %cl
	je        LBB0_257
	movb      %cl, %al
LBB0_257:
	testb     %al, %al
	jne       LBB0_259
	movl      $1, %edx
	movl      $-1, -52(%ebp)
	movl      $2147483647, %edi
	jmp       LBB0_263
LBB0_259:
	movl      %ebx, %eax
	movl      -40(%ebp), %ecx
	mull      %ecx
	imull     -48(%ebp), %ebx
	addl      %edx, %ebx
	imull     %ecx, %esi
	addl      %ebx, %esi
	movl      $0, -28(%ebp)
	movl      %esi, %edi
	movl      -24(%ebp), %edx
LBB0_260:
	movl      %eax, -52(%ebp)
	cmpl      -56(%ebp), %eax
	setb      %al
	cmpl      -32(%ebp), %edi
	setl      %cl
	je        LBB0_262
	movb      %cl, %al
LBB0_262:
	movl      -28(%ebp), %ecx
	orl       %edx, %ecx
	movl      %ecx, %edx
	movl      $-1, %ebx
	addl      $1, %ebx
	movl      $2147483647, %esi
	adcl      $0, %esi
	movl      $1, -24(%ebp)
	testb     %al, %al
	jne       LBB0_268
LBB0_263:
	movl      %edx, -28(%ebp)
	movl      -48(%ebp), %eax
	movl      %eax, 12(%esp)
	movl      -40(%ebp), %eax
	movl      %eax, 8(%esp)
	movl      $2147483647, %eax
	movl      %eax, 4(%esp)
	movl      $-1, %eax
	movl      %eax, (%esp)
	call      ___udivdi3
	movl      -52(%ebp), %esi
	cmpl      %esi, %eax
	setae     %al
	cmpl      %edi, %edx
	setge     %cl
	je        LBB0_265
	movb      %cl, %al
LBB0_265:
	testb     %al, %al
	jne       LBB0_267
	movl      $1, %edx
	movl      $-1, %ebx
	movl      $2147483647, %esi
	jmp       LBB0_271
LBB0_267:
	movl      %esi, %eax
	movl      -40(%ebp), %ecx
	mull      %ecx
	movl      %eax, %ebx
	imull     -48(%ebp), %esi
	addl      %edx, %esi
	imull     %ecx, %edi
	addl      %esi, %edi
	movl      $0, -24(%ebp)
	movl      %edi, %esi
	movl      -28(%ebp), %edx
LBB0_268:
	cmpl      -56(%ebp), %ebx
	setb      %al
	cmpl      -32(%ebp), %esi
	setl      %cl
	je        LBB0_270
	movb      %cl, %al
LBB0_270:
	movl      -24(%ebp), %ecx
	orl       %edx, %ecx
	movl      %ecx, %edx
	movb      %al, %cl
	movl      $-1, %eax
	addl      $1, %eax
	movl      $2147483647, %edi
	adcl      $0, %edi
	movl      $1, -28(%ebp)
	testb     %cl, %cl
	jne       LBB0_276
LBB0_271:
	movl      %edx, -24(%ebp)
	movl      -48(%ebp), %eax
	movl      %eax, 12(%esp)
	movl      -40(%ebp), %eax
	movl      %eax, 8(%esp)
	movl      $2147483647, %eax
	movl      %eax, 4(%esp)
	movl      $-1, %eax
	movl      %eax, (%esp)
	call      ___udivdi3
	cmpl      %ebx, %eax
	setae     %al
	cmpl      %esi, %edx
	setge     %cl
	je        LBB0_273
	movb      %cl, %al
LBB0_273:
	testb     %al, %al
	jne       LBB0_275
	movl      $1, %ebx
	movl      $-1, -24(%ebp)
	movl      $2147483647, %edi
	jmp       LBB0_279
LBB0_275:
	movl      %ebx, %eax
	movl      -40(%ebp), %ecx
	mull      %ecx
	imull     -48(%ebp), %ebx
	addl      %edx, %ebx
	imull     %ecx, %esi
	addl      %ebx, %esi
	movl      $0, -28(%ebp)
	movl      %esi, %edi
	movl      -24(%ebp), %edx
LBB0_276:
	movl      %eax, -24(%ebp)
	cmpl      -56(%ebp), %eax
	setb      %ch
	cmpl      -32(%ebp), %edi
	setl      %cl
	je        LBB0_278
	movb      %cl, %ch
LBB0_278:
	movl      -28(%ebp), %ebx
	orl       %edx, %ebx
	movl      $-1, %eax
	addl      $1, %eax
	movl      $2147483647, %esi
	adcl      $0, %esi
	movl      $1, -52(%ebp)
	testb     %ch, %ch
	jne       LBB0_283
LBB0_279:
	movl      -48(%ebp), %eax
	movl      %eax, 12(%esp)
	movl      -40(%ebp), %eax
	movl      %eax, 8(%esp)
	movl      $2147483647, %eax
	movl      %eax, 4(%esp)
	movl      $-1, %eax
	movl      %eax, (%esp)
	call      ___udivdi3
	movl      -24(%ebp), %esi
	cmpl      %esi, %eax
	setae     %al
	cmpl      %edi, %edx
	setge     %cl
	je        LBB0_281
	movb      %cl, %al
LBB0_281:
	testb     %al, %al
	jne       LBB0_282
LBB0_172:
	movl      $1, -52(%ebp)
	movl      $-1, %edi
	movl      $2147483647, %esi
	jmp       LBB0_246
LBB0_282:
	movl      %esi, %eax
	movl      -40(%ebp), %ecx
	mull      %ecx
	imull     -48(%ebp), %esi
	addl      %edx, %esi
	imull     %ecx, %edi
	addl      %esi, %edi
	movl      $0, -52(%ebp)
	movl      %edi, %esi
LBB0_283:
	cmpl      -56(%ebp), %eax
	setb      %cl
	cmpl      -32(%ebp), %esi
	setl      %dl
	movl      %eax, %edi
	je        LBB0_285
	movb      %dl, %cl
LBB0_285:
	orl       %ebx, -52(%ebp)
LBB0_245:
	movl      $-1, %eax
	addl      $1, %eax
	movl      %eax, -32(%ebp)
	movl      $2147483647, %ebx
	adcl      $0, %ebx
	movl      $1, %eax
	testb     %cl, %cl
	jne       LBB0_224
LBB0_246:
	movl      -48(%ebp), %eax
	movl      %eax, 12(%esp)
	movl      -40(%ebp), %eax
	movl      %eax, 8(%esp)
	movl      $2147483647, %eax
	movl      %eax, 4(%esp)
	movl      $-1, %eax
	movl      %eax, (%esp)
	call      ___udivdi3
	cmpl      %edi, %eax
	setb      %cl
	cmpl      %esi, %edx
	setl      %al
	je        LBB0_248
	movb      %al, %cl
LBB0_248:
	movl      $1, %eax
	testb     %cl, %cl
	jne       LBB0_221
	movl      %edi, %eax
	movl      -40(%ebp), %ecx
	mull      %ecx
	movl      %eax, -32(%ebp)
	movl      -48(%ebp), %eax
	imull     %edi, %eax
	addl      %edx, %eax
	imull     %ecx, %esi
	addl      %eax, %esi
LBB0_250:
	xorl      %eax, %eax
	movl      %esi, %ebx
	jmp       LBB0_224
LBB0_109:
	movl      -48(%ebp), %eax
	movl      %eax, 12(%esp)
	movl      -40(%ebp), %eax
	movl      %eax, 8(%esp)
	movl      $2147483647, %eax
	movl      %eax, 4(%esp)
	movl      $-1, %eax
	movl      %eax, (%esp)
	call      ___udivdi3
	cmpl      -28(%ebp), %eax
	setb      %al
	cmpl      -24(%ebp), %edx
	setl      %cl
	je        LBB0_111
	movb      %cl, %al
LBB0_111:
	testb     %al, %al
	movl      $-1, -32(%ebp)
	movl      $2147483647, %ebx
	movl      -48(%ebp), %eax
	movl      $1, %edx
	jne       LBB0_113
	movl      %eax, %ecx
	movl      -28(%ebp), %eax
	imull     %eax, %ecx
	movl      -40(%ebp), %ebx
	mull      %ebx
	movl      %eax, -32(%ebp)
	addl      %edx, %ecx
	movl      -24(%ebp), %edi
	imull     %ebx, %edi
	addl      %ecx, %edi
	movl      %edi, %ebx
	movl      -48(%ebp), %edx
	jmp       LBB0_113
LBB0_286:
	movl      %esi, %eax
	movl      -40(%ebp), %ecx
	mull      %ecx
	movl      %eax, %ebx
	imull     -48(%ebp), %esi
	addl      %edx, %esi
	imull     %ecx, %edi
	addl      %esi, %edi
	movl      $0, -24(%ebp)
	movl      %edi, %esi
	movl      -52(%ebp), %edx
LBB0_287:
	cmpl      -56(%ebp), %ebx
	setb      %al
	cmpl      -32(%ebp), %esi
	setl      %cl
	je        LBB0_289
	movb      %cl, %al
LBB0_289:
	movl      -24(%ebp), %ecx
	orl       %edx, %ecx
	movl      %ecx, %edx
	movb      %al, %cl
	movl      $-1, %eax
	addl      $1, %eax
	movl      $2147483647, %edi
	adcl      $0, %edi
	movl      $1, -28(%ebp)
	testb     %cl, %cl
	movl      -48(%ebp), %ecx
	jne       LBB0_295
LBB0_290:
	movl      %edx, -24(%ebp)
	movl      %ecx, 12(%esp)
	movl      -40(%ebp), %eax
	movl      %eax, 8(%esp)
	movl      $2147483647, %eax
	movl      %eax, 4(%esp)
	movl      $-1, %eax
	movl      %eax, (%esp)
	call      ___udivdi3
	cmpl      %ebx, %eax
	setae     %al
	cmpl      %esi, %edx
	setge     %cl
	je        LBB0_292
	movb      %cl, %al
LBB0_292:
	testb     %al, %al
	jne       LBB0_294
	movl      $1, %edx
	movl      $-1, -52(%ebp)
	movl      $2147483647, %edi
	jmp       LBB0_298
LBB0_294:
	movl      %ebx, %eax
	movl      -40(%ebp), %ecx
	mull      %ecx
	movl      -48(%ebp), %edi
	imull     %edi, %ebx
	addl      %edx, %ebx
	imull     %ecx, %esi
	addl      %ebx, %esi
	movl      $0, -28(%ebp)
	movl      %esi, %edi
	movl      -24(%ebp), %edx
LBB0_295:
	movl      %eax, -52(%ebp)
	cmpl      -56(%ebp), %eax
	setb      %al
	cmpl      -32(%ebp), %edi
	setl      %cl
	je        LBB0_297
	movb      %cl, %al
LBB0_297:
	movl      -28(%ebp), %ecx
	orl       %edx, %ecx
	movl      %ecx, %edx
	movl      $-1, %ebx
	addl      $1, %ebx
	movl      $2147483647, %esi
	adcl      $0, %esi
	movl      $1, -24(%ebp)
	testb     %al, %al
	jne       LBB0_303
LBB0_298:
	movl      %edx, -28(%ebp)
	movl      -48(%ebp), %eax
	movl      %eax, 12(%esp)
	movl      -40(%ebp), %eax
	movl      %eax, 8(%esp)
	movl      $2147483647, %eax
	movl      %eax, 4(%esp)
	movl      $-1, %eax
	movl      %eax, (%esp)
	call      ___udivdi3
	movl      -52(%ebp), %esi
	cmpl      %esi, %eax
	setae     %al
	cmpl      %edi, %edx
	setge     %cl
	je        LBB0_300
	movb      %cl, %al
LBB0_300:
	testb     %al, %al
	jne       LBB0_302
	movl      $1, %edx
	movl      $-1, %ebx
	movl      $2147483647, %esi
	movl      -48(%ebp), %ecx
	jmp       LBB0_306
LBB0_302:
	movl      %esi, %eax
	movl      -40(%ebp), %ecx
	mull      %ecx
	movl      %eax, %ebx
	imull     -48(%ebp), %esi
	addl      %edx, %esi
	imull     %ecx, %edi
	addl      %esi, %edi
	movl      $0, -24(%ebp)
	movl      %edi, %esi
	movl      -28(%ebp), %edx
LBB0_303:
	cmpl      -56(%ebp), %ebx
	setb      %al
	cmpl      -32(%ebp), %esi
	setl      %cl
	je        LBB0_305
	movb      %cl, %al
LBB0_305:
	movl      -24(%ebp), %ecx
	orl       %edx, %ecx
	movl      %ecx, %edx
	movb      %al, %cl
	movl      $-1, %eax
	addl      $1, %eax
	movl      $2147483647, %edi
	adcl      $0, %edi
	movl      $1, -52(%ebp)
	testb     %cl, %cl
	movl      -48(%ebp), %ecx
	jne       LBB0_311
LBB0_306:
	movl      %edx, -24(%ebp)
	movl      %ecx, 12(%esp)
	movl      -40(%ebp), %eax
	movl      %eax, 8(%esp)
	movl      $2147483647, %eax
	movl      %eax, 4(%esp)
	movl      $-1, %eax
	movl      %eax, (%esp)
	call      ___udivdi3
	cmpl      %ebx, %eax
	setae     %al
	cmpl      %esi, %edx
	setge     %cl
	je        LBB0_308
	movb      %cl, %al
LBB0_308:
	testb     %al, %al
	jne       LBB0_310
	movl      $1, -52(%ebp)
	movl      $-1, -24(%ebp)
	movl      $2147483647, %edi
	movl      -60(%ebp), %esi
	jmp       LBB0_314
LBB0_310:
	movl      %ebx, %eax
	movl      -40(%ebp), %ecx
	mull      %ecx
	movl      -48(%ebp), %edi
	imull     %edi, %ebx
	addl      %edx, %ebx
	imull     %ecx, %esi
	addl      %ebx, %esi
	movl      $0, -52(%ebp)
	movl      %esi, %edi
	movl      -24(%ebp), %edx
LBB0_311:
	movl      %eax, -24(%ebp)
	cmpl      -56(%ebp), %eax
	setb      %cl
	cmpl      -32(%ebp), %edi
	setl      %al
	je        LBB0_313
	movb      %al, %cl
LBB0_313:
	orl       %edx, -52(%ebp)
	movl      $-1, %eax
	addl      $1, %eax
	movl      %eax, -32(%ebp)
	movl      $2147483647, %ebx
	adcl      $0, %ebx
	movl      $1, %eax
	testb     %cl, %cl
	movl      -60(%ebp), %esi
	jne       LBB0_319
LBB0_314:
	movl      -48(%ebp), %eax
	movl      %eax, 12(%esp)
	movl      -40(%ebp), %eax
	movl      %eax, 8(%esp)
	movl      $2147483647, %eax
	movl      %eax, 4(%esp)
	movl      $-1, %eax
	movl      %eax, (%esp)
	call      ___udivdi3
	movl      -24(%ebp), %ebx
	cmpl      %ebx, %eax
	setb      %cl
	cmpl      %edi, %edx
	setl      %al
	je        LBB0_316
	movb      %al, %cl
LBB0_316:
	movl      $1, %eax
	testb     %cl, %cl
	je        LBB0_318
	movl      $-1, -32(%ebp)
	movl      $2147483647, %ebx
	jmp       LBB0_319
LBB0_318:
	movl      %ebx, %eax
	movl      -40(%ebp), %ecx
	mull      %ecx
	movl      %eax, -32(%ebp)
	movl      -48(%ebp), %eax
	imull     %ebx, %eax
	addl      %edx, %eax
	imull     %ecx, %edi
	addl      %eax, %edi
	xorl      %eax, %eax
	movl      %edi, %ebx
LBB0_319:
	movl      -52(%ebp), %edx
	orl       %eax, %edx
	jmp       LBB0_113
LBB0_130:
	movl      %esi, -60(%ebp)
	movl      $-1, %esi
	addl      $1, %esi
	movl      $2147483647, %ebx
	adcl      $0, %ebx
	movl      %ecx, 12(%esp)
	movl      %ecx, -48(%ebp)
	movl      -40(%ebp), %eax
	movl      %eax, 8(%esp)
	movl      %esi, (%esp)
	movl      %ebx, 4(%esp)
	call      ___divdi3
	movl      %eax, -32(%ebp)
	cmpl      %eax, -28(%ebp)
	setb      %al
	movl      -24(%ebp), %edi
	cmpl      %edx, %edi
	setl      %cl
	je        LBB0_132
	movb      %cl, %al
LBB0_132:
	movl      $1, -52(%ebp)
	testb     %al, %al
	jne       LBB0_137
	movl      %edx, -56(%ebp)
	movl      -48(%ebp), %eax
	movl      %eax, 12(%esp)
	movl      -40(%ebp), %eax
	movl      %eax, 8(%esp)
	movl      $2147483647, %eax
	movl      %eax, 4(%esp)
	movl      $-1, %eax
	movl      %eax, (%esp)
	call      ___udivdi3
	cmpl      -28(%ebp), %eax
	setb      %al
	cmpl      %edi, %edx
	setl      %cl
	je        LBB0_135
	movb      %cl, %al
LBB0_135:
	movl      $1, -52(%ebp)
	testb     %al, %al
	movl      $-1, %esi
	movl      $2147483647, %ebx
	jne       LBB0_140
	movl      -28(%ebp), %ebx
	movl      %ebx, %eax
	movl      -40(%ebp), %ecx
	mull      %ecx
	movl      %eax, %esi
	movl      %edx, %eax
	imull     -48(%ebp), %ebx
	addl      %eax, %ebx
	movl      %edi, %eax
	imull     %ecx, %eax
	addl      %ebx, %eax
	movl      $0, -52(%ebp)
	movl      %eax, %ebx
	movl      -56(%ebp), %edx
LBB0_137:
	movl      %edx, -56(%ebp)
	cmpl      -32(%ebp), %esi
	setb      %al
	cmpl      %edx, %ebx
	setl      %cl
	je        LBB0_139
	movb      %cl, %al
LBB0_139:
	movl      $-1, %ecx
	addl      $1, %ecx
	movl      %ecx, -24(%ebp)
	movl      $2147483647, %ecx
	adcl      $0, %ecx
	movl      %ecx, -28(%ebp)
	movl      $1, %edi
	testb     %al, %al
	jne       LBB0_144
LBB0_140:
	movl      -48(%ebp), %eax
	movl      %eax, 12(%esp)
	movl      -40(%ebp), %eax
	movl      %eax, 8(%esp)
	movl      $2147483647, %eax
	movl      %eax, 4(%esp)
	movl      $-1, %eax
	movl      %eax, (%esp)
	call      ___udivdi3
	movl      %edx, %ecx
	cmpl      %esi, %eax
	setb      %al
	cmpl      %ebx, %ecx
	setl      %cl
	je        LBB0_142
	movb      %cl, %al
LBB0_142:
	movl      $1, %edi
	testb     %al, %al
	movl      $-1, -24(%ebp)
	movl      $2147483647, -28(%ebp)
	jne       LBB0_147
	movl      %esi, %eax
	movl      -40(%ebp), %ecx
	mull      %ecx
	movl      %eax, -24(%ebp)
	movl      %edx, %eax
	imull     -48(%ebp), %esi
	addl      %eax, %esi
	imull     %ecx, %ebx
	addl      %esi, %ebx
	xorl      %edi, %edi
	movl      %ebx, -28(%ebp)
LBB0_144:
	movl      -24(%ebp), %eax
	cmpl      -32(%ebp), %eax
	setb      %al
	movl      -28(%ebp), %ecx
	cmpl      -56(%ebp), %ecx
	setl      %cl
	je        LBB0_146
	movb      %cl, %al
LBB0_146:
	orl       -52(%ebp), %edi
	movl      $-1, %ebx
	addl      $1, %ebx
	movl      $2147483647, %ecx
	adcl      $0, %ecx
	movl      %ecx, -64(%ebp)
	movl      $1, %esi
	testb     %al, %al
	jne       LBB0_226
LBB0_147:
	movl      -48(%ebp), %eax
	movl      %eax, 12(%esp)
	movl      -40(%ebp), %eax
	movl      %eax, 8(%esp)
	movl      $2147483647, %eax
	movl      %eax, 4(%esp)
	movl      $-1, %eax
	movl      %eax, (%esp)
	call      ___udivdi3
	movl      %edx, %ecx
	cmpl      -24(%ebp), %eax
	setae     %al
	cmpl      -28(%ebp), %ecx
	setge     %cl
	je        LBB0_149
	movb      %cl, %al
LBB0_149:
	testb     %al, %al
	jne       LBB0_225
	movl      $1, %esi
	movl      $-1, %ebx
	movl      $2147483647, -64(%ebp)
	jmp       LBB0_229
LBB0_320:
	movl      -32(%ebp), %ecx
	leal      L_.str1-L0$pb(%ecx), %eax
	movl      %eax, 12(%esp)
	leal      L_.str-L0$pb(%ecx), %eax
	movl      %eax, 4(%esp)
	leal      L___func__.xstrtoimax-L0$pb(%ecx), %eax
	movl      %eax, (%esp)
	movl      $96, 8(%esp)
	call      ___assert_rtn
LBB0_198:
	movl      -24(%ebp), %esi
	movl      %esi, %eax
	movl      -40(%ebp), %ecx
	mull      %ecx
	movl      %eax, %ebx
	movl      %edx, %eax
	imull     -48(%ebp), %esi
	addl      %eax, %esi
	movl      -28(%ebp), %eax
	imull     %ecx, %eax
	addl      %esi, %eax
	xorl      %esi, %esi
	movl      %eax, -52(%ebp)
LBB0_199:
	cmpl      -32(%ebp), %ebx
	setb      %al
	movl      -52(%ebp), %ecx
	cmpl      -56(%ebp), %ecx
	setl      %cl
	je        LBB0_201
	movb      %cl, %al
LBB0_201:
	orl       %edi, %esi
	movl      $-1, %ecx
	addl      $1, %ecx
	movl      %ecx, -24(%ebp)
	movl      $2147483647, %ecx
	adcl      $0, %ecx
	movl      %ecx, -28(%ebp)
	movl      $1, %edi
	testb     %al, %al
	jne       LBB0_207
LBB0_202:
	movl      -48(%ebp), %eax
	movl      %eax, 12(%esp)
	movl      -40(%ebp), %eax
	movl      %eax, 8(%esp)
	movl      $2147483647, %eax
	movl      %eax, 4(%esp)
	movl      $-1, %eax
	movl      %eax, (%esp)
	call      ___udivdi3
	movl      %edx, %ecx
	cmpl      %ebx, %eax
	setae     %al
	cmpl      -52(%ebp), %ecx
	setge     %cl
	je        LBB0_204
	movb      %cl, %al
LBB0_204:
	testb     %al, %al
	jne       LBB0_206
	movl      $1, %edi
	movl      $-1, -24(%ebp)
	movl      $2147483647, -28(%ebp)
	jmp       LBB0_210
LBB0_225:
	movl      -24(%ebp), %esi
	movl      %esi, %eax
	movl      -40(%ebp), %ecx
	mull      %ecx
	movl      %eax, %ebx
	movl      %edx, %eax
	imull     -48(%ebp), %esi
	addl      %eax, %esi
	movl      -28(%ebp), %eax
	imull     %ecx, %eax
	addl      %esi, %eax
	xorl      %esi, %esi
	movl      %eax, -64(%ebp)
LBB0_226:
	cmpl      -32(%ebp), %ebx
	setb      %al
	movl      -64(%ebp), %ecx
	cmpl      -56(%ebp), %ecx
	setl      %cl
	je        LBB0_228
	movb      %cl, %al
LBB0_228:
	orl       %edi, %esi
	movl      $-1, %edi
	addl      $1, %edi
	movl      $2147483647, %ecx
	adcl      $0, %ecx
	movl      %ecx, -24(%ebp)
	movl      $1, -52(%ebp)
	testb     %al, %al
	jne       LBB0_234
LBB0_229:
	movl      -48(%ebp), %eax
	movl      %eax, 12(%esp)
	movl      -40(%ebp), %eax
	movl      %eax, 8(%esp)
	movl      $2147483647, %eax
	movl      %eax, 4(%esp)
	movl      $-1, %eax
	movl      %eax, (%esp)
	call      ___udivdi3
	movl      %edx, %ecx
	cmpl      %ebx, %eax
	setae     %al
	cmpl      -64(%ebp), %ecx
	setge     %cl
	je        LBB0_231
	movb      %cl, %al
LBB0_231:
	testb     %al, %al
	jne       LBB0_233
	movl      $1, -52(%ebp)
	movl      $-1, %edi
	movl      $2147483647, -24(%ebp)
	jmp       LBB0_237
LBB0_206:
	movl      %ebx, %eax
	movl      -40(%ebp), %ecx
	mull      %ecx
	movl      %eax, -24(%ebp)
	movl      %edx, %eax
	imull     -48(%ebp), %ebx
	addl      %eax, %ebx
	movl      -52(%ebp), %eax
	imull     %ecx, %eax
	addl      %ebx, %eax
	xorl      %edi, %edi
	movl      %eax, -28(%ebp)
LBB0_207:
	movl      -24(%ebp), %eax
	cmpl      -32(%ebp), %eax
	setb      %al
	movl      -28(%ebp), %ecx
	cmpl      -56(%ebp), %ecx
	setl      %cl
	je        LBB0_209
	movb      %cl, %al
LBB0_209:
	orl       %esi, %edi
	movl      $-1, %esi
	addl      $1, %esi
	movl      $2147483647, %ecx
	adcl      $0, %ecx
	movl      %ecx, -64(%ebp)
	movl      $1, -52(%ebp)
	testb     %al, %al
	jne       LBB0_215
LBB0_210:
	movl      -48(%ebp), %eax
	movl      %eax, 12(%esp)
	movl      -40(%ebp), %eax
	movl      %eax, 8(%esp)
	movl      $2147483647, %eax
	movl      %eax, 4(%esp)
	movl      $-1, %eax
	movl      %eax, (%esp)
	call      ___udivdi3
	movl      %edx, %ecx
	cmpl      -24(%ebp), %eax
	setae     %al
	cmpl      -28(%ebp), %ecx
	setge     %cl
	je        LBB0_212
	movb      %cl, %al
LBB0_212:
	testb     %al, %al
	jne       LBB0_214
	movl      $1, -52(%ebp)
	movl      $-1, %esi
	movl      $2147483647, -64(%ebp)
	jmp       LBB0_218
LBB0_233:
	movl      %ebx, %eax
	movl      -40(%ebp), %ecx
	mull      %ecx
	movl      %eax, %edi
	movl      %edx, %eax
	imull     -48(%ebp), %ebx
	addl      %eax, %ebx
	movl      -64(%ebp), %eax
	imull     %ecx, %eax
	addl      %ebx, %eax
	movl      $0, -52(%ebp)
	movl      %eax, -24(%ebp)
LBB0_234:
	cmpl      -32(%ebp), %edi
	setb      %cl
	movl      -24(%ebp), %eax
	cmpl      -56(%ebp), %eax
	setl      %al
	je        LBB0_236
	movb      %al, %cl
LBB0_236:
	orl       %esi, -52(%ebp)
	movl      $-1, %eax
	addl      $1, %eax
	movl      %eax, -32(%ebp)
	movl      $2147483647, %ebx
	adcl      $0, %ebx
	movl      $1, %eax
	testb     %cl, %cl
	jne       LBB0_224
LBB0_237:
	movl      -48(%ebp), %eax
	movl      %eax, 12(%esp)
	movl      -40(%ebp), %eax
	movl      %eax, 8(%esp)
	movl      $2147483647, %eax
	movl      %eax, 4(%esp)
	movl      $-1, %eax
	movl      %eax, (%esp)
	call      ___udivdi3
	cmpl      %edi, %eax
	setb      %cl
	cmpl      -24(%ebp), %edx
	setl      %al
	je        LBB0_239
	movb      %al, %cl
LBB0_239:
	movl      $1, %eax
	testb     %cl, %cl
	jne       LBB0_221
	movl      %edi, %eax
	movl      -40(%ebp), %esi
	mull      %esi
	movl      %eax, -32(%ebp)
	movl      %edx, %eax
	movl      -48(%ebp), %ecx
	imull     %edi, %ecx
	addl      %eax, %ecx
	movl      -24(%ebp), %edx
	imull     %esi, %edx
	jmp       LBB0_223
LBB0_214:
	movl      -24(%ebp), %ebx
	movl      %ebx, %eax
	movl      -40(%ebp), %ecx
	mull      %ecx
	movl      %eax, %esi
	movl      %edx, %eax
	imull     -48(%ebp), %ebx
	addl      %eax, %ebx
	movl      -28(%ebp), %eax
	imull     %ecx, %eax
	addl      %ebx, %eax
	movl      $0, -52(%ebp)
	movl      %eax, -64(%ebp)
LBB0_215:
	cmpl      -32(%ebp), %esi
	setb      %cl
	movl      -64(%ebp), %eax
	cmpl      -56(%ebp), %eax
	setl      %al
	je        LBB0_217
	movb      %al, %cl
LBB0_217:
	orl       %edi, -52(%ebp)
	movl      $-1, %eax
	addl      $1, %eax
	movl      %eax, -32(%ebp)
	movl      $2147483647, %ebx
	adcl      $0, %ebx
	movl      $1, %eax
	testb     %cl, %cl
	jne       LBB0_224
LBB0_218:
	movl      -48(%ebp), %eax
	movl      %eax, 12(%esp)
	movl      -40(%ebp), %eax
	movl      %eax, 8(%esp)
	movl      $2147483647, %eax
	movl      %eax, 4(%esp)
	movl      $-1, %eax
	movl      %eax, (%esp)
	call      ___udivdi3
	cmpl      %esi, %eax
	setb      %cl
	cmpl      -64(%ebp), %edx
	setl      %al
	je        LBB0_220
	movb      %al, %cl
LBB0_220:
	movl      $1, %eax
	testb     %cl, %cl
	je        LBB0_222
LBB0_221:
	movl      $-1, -32(%ebp)
	movl      $2147483647, %ebx
LBB0_224:
	movl      -52(%ebp), %edx
	orl       %eax, %edx
	movl      -60(%ebp), %esi
LBB0_113:
	orl       %esi, %edx
	movl      -36(%ebp), %esi
	movl      -44(%ebp), %edi
	leal      (%esi,%edi), %eax
	movl      -20(%ebp), %ecx
	movl      %eax, (%ecx)
	cmpb      $0, (%esi,%edi)
	je        LBB0_115
	orl       $2, %edx
LBB0_115:
	movl      -32(%ebp), %ecx
	movl      %edx, %esi
LBB0_12:
	movl      20(%ebp), %eax
	movl      %ecx, (%eax)
	movl      %ebx, 4(%eax)
LBB0_13:
	movl      %esi, %ebx
LBB0_14:
	movl      %ebx, %eax
	addl      $76, %esp
	popl      %esi
	popl      %edi
	popl      %ebx
	popl      %ebp
	ret       
LBB0_222:
	movl      %esi, %eax
	movl      -40(%ebp), %ebx
	mull      %ebx
	movl      %eax, -32(%ebp)
	movl      %edx, %eax
	movl      -48(%ebp), %ecx
	imull     %esi, %ecx
	addl      %eax, %ecx
	movl      -64(%ebp), %edx
	imull     %ebx, %edx
LBB0_223:
	addl      %ecx, %edx
	xorl      %eax, %eax
	movl      %edx, %ebx
	jmp       LBB0_224
	.align 2, 0x90
LJTI0_0:
	.long	L0_0_set_60
	.long	L0_0_set_113
	.long	L0_0_set_16
	.long	L0_0_set_16
	.long	L0_0_set_16
	.long	L0_0_set_84
	.long	L0_0_set_16
	.long	L0_0_set_16
	.long	L0_0_set_16
	.long	L0_0_set_105
	.long	L0_0_set_16
	.long	L0_0_set_116
LJTI0_1:
	.long	L0_1_set_63
	.long	L0_1_set_16
	.long	L0_1_set_84
	.long	L0_1_set_16
	.long	L0_1_set_16
	.long	L0_1_set_16
	.long	L0_1_set_105
	.long	L0_1_set_16
	.long	L0_1_set_116
	.long	L0_1_set_16
	.long	L0_1_set_16
	.long	L0_1_set_130
# ----------------------
	.section       __TEXT,__cstring,cstring_literals
L___func__.xstrtoimax:
	.asciz	"xstrtoimax"
L_.str:
	.asciz	"lib/xstrtol.c"
L_.str1:
	.asciz	"0 <= strtol_base && strtol_base <= 36"
# ----------------------
	.set	Ltmp0,LJTI0_1-L0$pb
	.set	Ltmp1,LJTI0_0-L0$pb
	.set	L0_0_set_60,LBB0_60-L0$pb
	.set	L0_0_set_113,LBB0_113-L0$pb
	.set	L0_0_set_16,LBB0_16-L0$pb
	.set	L0_0_set_84,LBB0_84-L0$pb
	.set	L0_0_set_105,LBB0_105-L0$pb
	.set	L0_0_set_116,LBB0_116-L0$pb
	.set	L0_1_set_63,LBB0_63-L0$pb
	.set	L0_1_set_16,LBB0_16-L0$pb
	.set	L0_1_set_84,LBB0_84-L0$pb
	.set	L0_1_set_105,LBB0_105-L0$pb
	.set	L0_1_set_116,LBB0_116-L0$pb
	.set	L0_1_set_130,LBB0_130-L0$pb

.subsections_via_symbols
