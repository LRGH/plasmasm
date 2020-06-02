	.section	__TEXT,__text,regular,pure_instructions
	.globl	_xstrtoimax
	.align	4, 0x90
_xstrtoimax:                            ## @xstrtoimax
## BB#0:
	pushl	%ebp
	movl	%esp, %ebp
	pushl	%ebx
	pushl	%edi
	pushl	%esi
	subl	$76, %esp
	calll	L0$pb
L0$pb:
	popl	%eax
	movl	%eax, -32(%ebp)         ## 4-byte Spill
	movl	16(%ebp), %ebx
	cmpl	$37, %ebx
	jae	LBB0_320
## BB#1:
	movl	12(%ebp), %eax
	movl	8(%ebp), %esi
	testl	%eax, %eax
	leal	-16(%ebp), %edi
	cmovnel	%eax, %edi
	movl	%edi, -20(%ebp)         ## 4-byte Spill
	calll	___error
	movl	$0, (%eax)
	movl	%ebx, 8(%esp)
	movl	%edi, 4(%esp)
	movl	%esi, (%esp)
	calll	_strtoimax
	cmpl	%esi, (%edi)
	je	LBB0_2
## BB#6:
	movl	24(%ebp), %edi
	movl	%eax, -28(%ebp)         ## 4-byte Spill
	movl	%edx, -24(%ebp)         ## 4-byte Spill
	calll	___error
	xorl	%esi, %esi
	cmpl	$0, (%eax)
	je	LBB0_8
## BB#7:
	calll	___error
	movl	$4, %ebx
	movl	$1, %esi
	cmpl	$34, (%eax)
	jne	LBB0_14
	jmp	LBB0_8
LBB0_2:
	movl	$4, %ebx
	movl	24(%ebp), %eax
	testl	%eax, %eax
	movl	%eax, %ecx
	je	LBB0_14
## BB#3:
	movsbl	(%esi), %eax
	testl	%eax, %eax
	je	LBB0_14
## BB#4:
	movl	%eax, 4(%esp)
	movl	%ecx, (%esp)
	movl	%ecx, %edi
	calll	_strchr
	testl	%eax, %eax
	je	LBB0_14
## BB#5:
	movl	$1, -28(%ebp)           ## 4-byte Folded Spill
	movl	$0, -24(%ebp)           ## 4-byte Folded Spill
	xorl	%esi, %esi
LBB0_8:
	testl	%edi, %edi
	je	LBB0_9
## BB#10:
	movl	-20(%ebp), %eax         ## 4-byte Reload
	movl	(%eax), %eax
	movl	%eax, -36(%ebp)         ## 4-byte Spill
	movsbl	(%eax), %ebx
	testl	%ebx, %ebx
	je	LBB0_11
## BB#15:
	movl	%ebx, 4(%esp)
	movl	%edi, (%esp)
	calll	_strchr
	testl	%eax, %eax
	je	LBB0_16
## BB#17:
	movl	%edi, (%esp)
	movl	$48, 4(%esp)
	calll	_strchr
	xorl	%ecx, %ecx
	testl	%eax, %eax
	movl	$1024, -40(%ebp)        ## 4-byte Folded Spill
                                        ## imm = 0x400
	movl	$1, %edx
	je	LBB0_24
## BB#18:
	movl	-36(%ebp), %eax         ## 4-byte Reload
	movsbl	1(%eax), %eax
	cmpl	$66, %eax
	je	LBB0_23
## BB#19:
	cmpl	$68, %eax
	jne	LBB0_20
LBB0_23:
	movl	$1000, -40(%ebp)        ## 4-byte Folded Spill
                                        ## imm = 0x3E8
	movl	$2, %edx
	jmp	LBB0_24
LBB0_9:
	movl	20(%ebp), %eax
	movl	-28(%ebp), %ecx         ## 4-byte Reload
	movl	%ecx, (%eax)
	movl	-24(%ebp), %ecx         ## 4-byte Reload
	movl	%ecx, 4(%eax)
	jmp	LBB0_13
LBB0_11:
	movl	-28(%ebp), %ecx         ## 4-byte Reload
	movl	-24(%ebp), %ebx         ## 4-byte Reload
	jmp	LBB0_12
LBB0_20:
	cmpl	$105, %eax
	jne	LBB0_24
## BB#21:
	movl	-36(%ebp), %eax         ## 4-byte Reload
	movzbl	2(%eax), %eax
	movl	$3, %edx
	cmpl	$66, %eax
	je	LBB0_24
## BB#22:                               ## %select.mid
	movl	$1, %edx
LBB0_24:
	cmpl	$68, %ebx
	jg	LBB0_28
## BB#25:
	movl	%edx, -44(%ebp)         ## 4-byte Spill
	cmpl	$66, %ebx
	jne	LBB0_16
## BB#26:
	movl	$-1, %eax
	addl	$1, %eax
	movl	%eax, -32(%ebp)         ## 4-byte Spill
	movl	$2147483647, %ebx       ## imm = 0x7FFFFFFF
	adcl	$0, %ebx
	cmpl	$-2097152, -24(%ebp)    ## 4-byte Folded Reload
                                        ## imm = 0xFFFFFFFFFFE00000
	movl	$1, %edx
	jl	LBB0_113
## BB#27:
	movl	-24(%ebp), %edi         ## 4-byte Reload
	movl	%edi, %ebx
	movl	-28(%ebp), %eax         ## 4-byte Reload
	shldl	$10, %eax, %ebx
	shll	$10, %eax
	cmpl	$2097151, %edi          ## imm = 0x1FFFFF
	jmp	LBB0_62
LBB0_28:
	cmpl	$118, %ebx
	jg	LBB0_173
## BB#29:
	cmpl	$115, %ebx
	jg	LBB0_197
## BB#30:
	cmpl	$97, %ebx
	jg	LBB0_58
## BB#31:
	cmpl	$88, %ebx
	jg	LBB0_35
## BB#32:
	movl	%edx, -44(%ebp)         ## 4-byte Spill
	cmpl	$83, %ebx
	jg	LBB0_151
## BB#33:
	addl	$-69, %ebx
	cmpl	$11, %ebx
	ja	LBB0_16
## BB#34:
	movl	-32(%ebp), %eax         ## 4-byte Reload
Ltmp0 = LJTI0_1-L0$pb
	addl	Ltmp0(%eax,%ebx,4), %eax
	jmpl	*%eax
LBB0_63:
	movl	%esi, -60(%ebp)         ## 4-byte Spill
	movl	$-1, %esi
	addl	$1, %esi
	movl	$2147483647, %ebx       ## imm = 0x7FFFFFFF
	adcl	$0, %ebx
	movl	%ecx, 12(%esp)
	movl	%ecx, -48(%ebp)         ## 4-byte Spill
	movl	-40(%ebp), %eax         ## 4-byte Reload
	movl	%eax, 8(%esp)
	movl	%esi, (%esp)
	movl	%ebx, 4(%esp)
	calll	___divdi3
	movl	%eax, -32(%ebp)         ## 4-byte Spill
	cmpl	%eax, -28(%ebp)         ## 4-byte Folded Reload
	setb	%al
	movl	-24(%ebp), %edi         ## 4-byte Reload
	cmpl	%edx, %edi
	setl	%cl
	je	LBB0_65
## BB#64:
	movb	%cl, %al
LBB0_65:
	movl	$1, -52(%ebp)           ## 4-byte Folded Spill
	testb	%al, %al
	jne	LBB0_70
## BB#66:
	movl	%edx, -56(%ebp)         ## 4-byte Spill
	movl	-48(%ebp), %eax         ## 4-byte Reload
	movl	%eax, 12(%esp)
	movl	-40(%ebp), %eax         ## 4-byte Reload
	movl	%eax, 8(%esp)
	movl	$2147483647, %eax       ## imm = 0x7FFFFFFF
	movl	%eax, 4(%esp)
	movl	$-1, %eax
	movl	%eax, (%esp)
	calll	___udivdi3
	cmpl	-28(%ebp), %eax         ## 4-byte Folded Reload
	setb	%al
	cmpl	%edi, %edx
	setl	%cl
	je	LBB0_68
## BB#67:
	movb	%cl, %al
LBB0_68:
	movl	$1, -52(%ebp)           ## 4-byte Folded Spill
	testb	%al, %al
	movl	$-1, %esi
	movl	$2147483647, %ebx       ## imm = 0x7FFFFFFF
	jne	LBB0_73
## BB#69:
	movl	-28(%ebp), %ebx         ## 4-byte Reload
	movl	%ebx, %eax
	movl	-40(%ebp), %ecx         ## 4-byte Reload
	mull	%ecx
	movl	%eax, %esi
	movl	%edx, %eax
	imull	-48(%ebp), %ebx         ## 4-byte Folded Reload
	addl	%eax, %ebx
	movl	%edi, %eax
	imull	%ecx, %eax
	addl	%ebx, %eax
	movl	$0, -52(%ebp)           ## 4-byte Folded Spill
	movl	%eax, %ebx
	movl	-56(%ebp), %edx         ## 4-byte Reload
LBB0_70:                                ## %bkm_scale.exit.i44
	movl	%edx, -56(%ebp)         ## 4-byte Spill
	cmpl	-32(%ebp), %esi         ## 4-byte Folded Reload
	setb	%al
	cmpl	%edx, %ebx
	setl	%cl
	je	LBB0_72
## BB#71:                               ## %bkm_scale.exit.i44
	movb	%cl, %al
LBB0_72:                                ## %bkm_scale.exit.i44
	movl	$-1, %ecx
	addl	$1, %ecx
	movl	%ecx, -24(%ebp)         ## 4-byte Spill
	movl	$2147483647, %ecx       ## imm = 0x7FFFFFFF
	adcl	$0, %ecx
	movl	%ecx, -28(%ebp)         ## 4-byte Spill
	movl	$1, %edi
	testb	%al, %al
	jne	LBB0_77
LBB0_73:                                ## %bkm_scale.exit.i44.thread
	movl	-48(%ebp), %eax         ## 4-byte Reload
	movl	%eax, 12(%esp)
	movl	-40(%ebp), %eax         ## 4-byte Reload
	movl	%eax, 8(%esp)
	movl	$2147483647, %eax       ## imm = 0x7FFFFFFF
	movl	%eax, 4(%esp)
	movl	$-1, %eax
	movl	%eax, (%esp)
	calll	___udivdi3
	movl	%edx, %ecx
	cmpl	%esi, %eax
	setb	%al
	cmpl	%ebx, %ecx
	setl	%cl
	je	LBB0_75
## BB#74:                               ## %bkm_scale.exit.i44.thread
	movb	%cl, %al
LBB0_75:                                ## %bkm_scale.exit.i44.thread
	movl	$1, %edi
	testb	%al, %al
	movl	$-1, -24(%ebp)          ## 4-byte Folded Spill
	movl	$2147483647, -28(%ebp)  ## 4-byte Folded Spill
                                        ## imm = 0x7FFFFFFF
	jne	LBB0_80
## BB#76:
	movl	%esi, %eax
	movl	-40(%ebp), %ecx         ## 4-byte Reload
	mull	%ecx
	movl	%eax, -24(%ebp)         ## 4-byte Spill
	movl	%edx, %eax
	imull	-48(%ebp), %esi         ## 4-byte Folded Reload
	addl	%eax, %esi
	imull	%ecx, %ebx
	addl	%esi, %ebx
	xorl	%edi, %edi
	movl	%ebx, -28(%ebp)         ## 4-byte Spill
LBB0_77:                                ## %bkm_scale.exit.i44.1
	movl	-24(%ebp), %eax         ## 4-byte Reload
	cmpl	-32(%ebp), %eax         ## 4-byte Folded Reload
	setb	%al
	movl	-28(%ebp), %ecx         ## 4-byte Reload
	cmpl	-56(%ebp), %ecx         ## 4-byte Folded Reload
	setl	%cl
	je	LBB0_79
## BB#78:                               ## %bkm_scale.exit.i44.1
	movb	%cl, %al
LBB0_79:                                ## %bkm_scale.exit.i44.1
	orl	-52(%ebp), %edi         ## 4-byte Folded Reload
	movl	$-1, %ebx
	addl	$1, %ebx
	movl	$2147483647, %ecx       ## imm = 0x7FFFFFFF
	adcl	$0, %ecx
	movl	%ecx, -52(%ebp)         ## 4-byte Spill
	movl	$1, %esi
	testb	%al, %al
	jne	LBB0_199
LBB0_80:                                ## %bkm_scale.exit.i44.1.thread
	movl	-48(%ebp), %eax         ## 4-byte Reload
	movl	%eax, 12(%esp)
	movl	-40(%ebp), %eax         ## 4-byte Reload
	movl	%eax, 8(%esp)
	movl	$2147483647, %eax       ## imm = 0x7FFFFFFF
	movl	%eax, 4(%esp)
	movl	$-1, %eax
	movl	%eax, (%esp)
	calll	___udivdi3
	movl	%edx, %ecx
	cmpl	-24(%ebp), %eax         ## 4-byte Folded Reload
	setae	%al
	cmpl	-28(%ebp), %ecx         ## 4-byte Folded Reload
	setge	%cl
	je	LBB0_82
## BB#81:                               ## %bkm_scale.exit.i44.1.thread
	movb	%cl, %al
LBB0_82:                                ## %bkm_scale.exit.i44.1.thread
	testb	%al, %al
	jne	LBB0_198
## BB#83:                               ## %bkm_scale.exit.i44.2.thread
	movl	$1, %esi
	movl	$-1, %ebx
	movl	$2147483647, -52(%ebp)  ## 4-byte Folded Spill
                                        ## imm = 0x7FFFFFFF
	jmp	LBB0_202
LBB0_173:
	movl	%edx, -44(%ebp)         ## 4-byte Spill
	cmpl	$119, %ebx
	jne	LBB0_16
## BB#174:
	movl	$-1, %eax
	addl	$1, %eax
	movl	%eax, -32(%ebp)         ## 4-byte Spill
	movl	$2147483647, %ebx       ## imm = 0x7FFFFFFF
	adcl	$0, %ebx
	cmpl	$-1073741824, -24(%ebp) ## 4-byte Folded Reload
                                        ## imm = 0xFFFFFFFFC0000000
	movl	$1, %edx
	jl	LBB0_113
## BB#175:
	movl	-28(%ebp), %eax         ## 4-byte Reload
	addl	%eax, %eax
	movl	-24(%ebp), %edi         ## 4-byte Reload
	movl	%edi, %ebx
	adcl	%ebx, %ebx
	cmpl	$1073741823, %edi       ## imm = 0x3FFFFFFF
LBB0_62:                                ## %bkm_scale.exit
	setg	%dl
	movl	$-1, %ecx
	cmovgl	%ecx, %eax
	movl	$2147483647, %ecx       ## imm = 0x7FFFFFFF
	cmovgl	%ecx, %ebx
	movzbl	%dl, %edx
	movl	%eax, -32(%ebp)         ## 4-byte Spill
	jmp	LBB0_113
LBB0_197:
	movl	%edx, -44(%ebp)         ## 4-byte Spill
	cmpl	$116, %ebx
	jne	LBB0_16
	jmp	LBB0_152
LBB0_58:
	movl	%edx, -44(%ebp)         ## 4-byte Spill
	addl	$-98, %ebx
	cmpl	$11, %ebx
	ja	LBB0_16
## BB#59:
	movl	-32(%ebp), %edi         ## 4-byte Reload
Ltmp1 = LJTI0_0-L0$pb
	addl	Ltmp1(%edi,%ebx,4), %edi
	movl	-28(%ebp), %eax         ## 4-byte Reload
	movl	%eax, -32(%ebp)         ## 4-byte Spill
	movl	-24(%ebp), %ebx         ## 4-byte Reload
	xorl	%edx, %edx
	jmpl	*%edi
LBB0_60:
	movl	$-1, %eax
	addl	$1, %eax
	movl	%eax, -32(%ebp)         ## 4-byte Spill
	movl	$2147483647, %ebx       ## imm = 0x7FFFFFFF
	adcl	$0, %ebx
	cmpl	$-4194304, -24(%ebp)    ## 4-byte Folded Reload
                                        ## imm = 0xFFFFFFFFFFC00000
	movl	$1, %edx
	jl	LBB0_113
## BB#61:
	movl	-24(%ebp), %edi         ## 4-byte Reload
	movl	%edi, %ebx
	movl	-28(%ebp), %eax         ## 4-byte Reload
	shldl	$9, %eax, %ebx
	shll	$9, %eax
	cmpl	$4194303, %edi          ## imm = 0x3FFFFF
	jmp	LBB0_62
LBB0_35:
	cmpl	$89, %ebx
	jne	LBB0_36
## BB#176:
	movl	%edx, -44(%ebp)         ## 4-byte Spill
	movl	%esi, -60(%ebp)         ## 4-byte Spill
	movl	$-1, %ebx
	addl	$1, %ebx
	movl	$2147483647, %esi       ## imm = 0x7FFFFFFF
	adcl	$0, %esi
	movl	%ecx, 12(%esp)
	movl	%ecx, -48(%ebp)         ## 4-byte Spill
	movl	-40(%ebp), %eax         ## 4-byte Reload
	movl	%eax, 8(%esp)
	movl	%ebx, (%esp)
	movl	%esi, 4(%esp)
	calll	___divdi3
	movl	%eax, -56(%ebp)         ## 4-byte Spill
	movl	%edx, -32(%ebp)         ## 4-byte Spill
	cmpl	%eax, -28(%ebp)         ## 4-byte Folded Reload
	setb	%al
	cmpl	%edx, -24(%ebp)         ## 4-byte Folded Reload
	setl	%cl
	je	LBB0_178
## BB#177:
	movb	%cl, %al
LBB0_178:
	movl	$1, %ecx
	testb	%al, %al
	jne	LBB0_183
## BB#179:
	movl	-48(%ebp), %eax         ## 4-byte Reload
	movl	%eax, 12(%esp)
	movl	-40(%ebp), %eax         ## 4-byte Reload
	movl	%eax, 8(%esp)
	movl	$2147483647, %eax       ## imm = 0x7FFFFFFF
	movl	%eax, 4(%esp)
	movl	$-1, %eax
	movl	%eax, (%esp)
	calll	___udivdi3
	cmpl	-28(%ebp), %eax         ## 4-byte Folded Reload
	setb	%al
	cmpl	-24(%ebp), %edx         ## 4-byte Folded Reload
	setl	%cl
	je	LBB0_181
## BB#180:
	movb	%cl, %al
LBB0_181:
	movl	$1, -52(%ebp)           ## 4-byte Folded Spill
	testb	%al, %al
	movl	$-1, %ebx
	movl	$2147483647, %esi       ## imm = 0x7FFFFFFF
	jne	LBB0_186
## BB#182:
	movl	-28(%ebp), %esi         ## 4-byte Reload
	movl	%esi, %eax
	movl	-40(%ebp), %ecx         ## 4-byte Reload
	mull	%ecx
	movl	%eax, %ebx
	imull	-48(%ebp), %esi         ## 4-byte Folded Reload
	addl	%edx, %esi
	movl	-24(%ebp), %edi         ## 4-byte Reload
	imull	%ecx, %edi
	addl	%esi, %edi
	xorl	%ecx, %ecx
	movl	%edi, %esi
LBB0_183:                               ## %bkm_scale.exit.i6
	movl	%ecx, -52(%ebp)         ## 4-byte Spill
	cmpl	-56(%ebp), %ebx         ## 4-byte Folded Reload
	setb	%ch
	cmpl	-32(%ebp), %esi         ## 4-byte Folded Reload
	setl	%cl
	je	LBB0_185
## BB#184:                              ## %bkm_scale.exit.i6
	movb	%cl, %ch
LBB0_185:                               ## %bkm_scale.exit.i6
	movl	$-1, %eax
	addl	$1, %eax
	movl	$2147483647, %edi       ## imm = 0x7FFFFFFF
	adcl	$0, %edi
	movl	$1, %edx
	testb	%ch, %ch
	jne	LBB0_190
LBB0_186:                               ## %bkm_scale.exit.i6.thread
	movl	-48(%ebp), %eax         ## 4-byte Reload
	movl	%eax, 12(%esp)
	movl	-40(%ebp), %eax         ## 4-byte Reload
	movl	%eax, 8(%esp)
	movl	$2147483647, %eax       ## imm = 0x7FFFFFFF
	movl	%eax, 4(%esp)
	movl	$-1, %eax
	movl	%eax, (%esp)
	calll	___udivdi3
	cmpl	%ebx, %eax
	setb	%al
	cmpl	%esi, %edx
	setl	%cl
	je	LBB0_188
## BB#187:                              ## %bkm_scale.exit.i6.thread
	movb	%cl, %al
LBB0_188:                               ## %bkm_scale.exit.i6.thread
	movl	$1, %edx
	testb	%al, %al
	movl	$-1, -28(%ebp)          ## 4-byte Folded Spill
	movl	$2147483647, %edi       ## imm = 0x7FFFFFFF
	jne	LBB0_193
## BB#189:
	movl	%ebx, %eax
	movl	-40(%ebp), %ecx         ## 4-byte Reload
	mull	%ecx
	imull	-48(%ebp), %ebx         ## 4-byte Folded Reload
	addl	%edx, %ebx
	imull	%ecx, %esi
	addl	%ebx, %esi
	xorl	%edx, %edx
	movl	%esi, %edi
LBB0_190:                               ## %bkm_scale.exit.i6.1
	movl	%eax, -28(%ebp)         ## 4-byte Spill
	cmpl	-56(%ebp), %eax         ## 4-byte Folded Reload
	setb	%al
	cmpl	-32(%ebp), %edi         ## 4-byte Folded Reload
	setl	%cl
	je	LBB0_192
## BB#191:                              ## %bkm_scale.exit.i6.1
	movb	%cl, %al
LBB0_192:                               ## %bkm_scale.exit.i6.1
	orl	-52(%ebp), %edx         ## 4-byte Folded Reload
	movl	$-1, %ebx
	addl	$1, %ebx
	movl	$2147483647, %esi       ## imm = 0x7FFFFFFF
	adcl	$0, %esi
	movl	$1, -24(%ebp)           ## 4-byte Folded Spill
	testb	%al, %al
	jne	LBB0_252
LBB0_193:                               ## %bkm_scale.exit.i6.1.thread
	movl	%edx, -52(%ebp)         ## 4-byte Spill
	movl	-48(%ebp), %eax         ## 4-byte Reload
	movl	%eax, 12(%esp)
	movl	-40(%ebp), %eax         ## 4-byte Reload
	movl	%eax, 8(%esp)
	movl	$2147483647, %eax       ## imm = 0x7FFFFFFF
	movl	%eax, 4(%esp)
	movl	$-1, %eax
	movl	%eax, (%esp)
	calll	___udivdi3
	movl	-28(%ebp), %esi         ## 4-byte Reload
	cmpl	%esi, %eax
	setae	%al
	cmpl	%edi, %edx
	setge	%cl
	je	LBB0_195
## BB#194:                              ## %bkm_scale.exit.i6.1.thread
	movb	%cl, %al
LBB0_195:                               ## %bkm_scale.exit.i6.1.thread
	testb	%al, %al
	jne	LBB0_251
## BB#196:                              ## %bkm_scale.exit.i6.2.thread
	movl	$1, %edx
	movl	$-1, %ebx
	movl	$2147483647, %esi       ## imm = 0x7FFFFFFF
	jmp	LBB0_255
LBB0_151:
	cmpl	$84, %ebx
	jne	LBB0_16
LBB0_152:
	movl	%esi, -60(%ebp)         ## 4-byte Spill
	movl	$-1, %ebx
	addl	$1, %ebx
	movl	$2147483647, %esi       ## imm = 0x7FFFFFFF
	adcl	$0, %esi
	movl	%ecx, 12(%esp)
	movl	%ecx, -48(%ebp)         ## 4-byte Spill
	movl	-40(%ebp), %eax         ## 4-byte Reload
	movl	%eax, 8(%esp)
	movl	%ebx, (%esp)
	movl	%esi, 4(%esp)
	calll	___divdi3
	movl	%eax, -56(%ebp)         ## 4-byte Spill
	movl	%edx, -32(%ebp)         ## 4-byte Spill
	cmpl	%eax, -28(%ebp)         ## 4-byte Folded Reload
	setb	%al
	cmpl	%edx, -24(%ebp)         ## 4-byte Folded Reload
	setl	%cl
	je	LBB0_154
## BB#153:
	movb	%cl, %al
LBB0_154:
	movl	$1, %ecx
	testb	%al, %al
	jne	LBB0_159
## BB#155:
	movl	-48(%ebp), %eax         ## 4-byte Reload
	movl	%eax, 12(%esp)
	movl	-40(%ebp), %eax         ## 4-byte Reload
	movl	%eax, 8(%esp)
	movl	$2147483647, %eax       ## imm = 0x7FFFFFFF
	movl	%eax, 4(%esp)
	movl	$-1, %eax
	movl	%eax, (%esp)
	calll	___udivdi3
	cmpl	-28(%ebp), %eax         ## 4-byte Folded Reload
	setb	%al
	cmpl	-24(%ebp), %edx         ## 4-byte Folded Reload
	setl	%cl
	je	LBB0_157
## BB#156:
	movb	%cl, %al
LBB0_157:
	movl	$1, -52(%ebp)           ## 4-byte Folded Spill
	testb	%al, %al
	movl	$-1, %ebx
	movl	$2147483647, %esi       ## imm = 0x7FFFFFFF
	jne	LBB0_162
## BB#158:
	movl	-28(%ebp), %esi         ## 4-byte Reload
	movl	%esi, %eax
	movl	-40(%ebp), %ecx         ## 4-byte Reload
	mull	%ecx
	movl	%eax, %ebx
	imull	-48(%ebp), %esi         ## 4-byte Folded Reload
	addl	%edx, %esi
	movl	-24(%ebp), %edi         ## 4-byte Reload
	imull	%ecx, %edi
	addl	%esi, %edi
	xorl	%ecx, %ecx
	movl	%edi, %esi
LBB0_159:                               ## %bkm_scale.exit.i14
	movl	%ecx, -52(%ebp)         ## 4-byte Spill
	cmpl	-56(%ebp), %ebx         ## 4-byte Folded Reload
	setb	%ch
	cmpl	-32(%ebp), %esi         ## 4-byte Folded Reload
	setl	%cl
	je	LBB0_161
## BB#160:                              ## %bkm_scale.exit.i14
	movb	%cl, %ch
LBB0_161:                               ## %bkm_scale.exit.i14
	movl	$-1, %eax
	addl	$1, %eax
	movl	$2147483647, %edi       ## imm = 0x7FFFFFFF
	adcl	$0, %edi
	movl	$1, %edx
	testb	%ch, %ch
	jne	LBB0_166
LBB0_162:                               ## %bkm_scale.exit.i14.thread
	movl	-48(%ebp), %eax         ## 4-byte Reload
	movl	%eax, 12(%esp)
	movl	-40(%ebp), %eax         ## 4-byte Reload
	movl	%eax, 8(%esp)
	movl	$2147483647, %eax       ## imm = 0x7FFFFFFF
	movl	%eax, 4(%esp)
	movl	$-1, %eax
	movl	%eax, (%esp)
	calll	___udivdi3
	cmpl	%ebx, %eax
	setb	%al
	cmpl	%esi, %edx
	setl	%cl
	je	LBB0_164
## BB#163:                              ## %bkm_scale.exit.i14.thread
	movb	%cl, %al
LBB0_164:                               ## %bkm_scale.exit.i14.thread
	movl	$1, %edx
	testb	%al, %al
	movl	$-1, -24(%ebp)          ## 4-byte Folded Spill
	movl	$2147483647, %edi       ## imm = 0x7FFFFFFF
	jne	LBB0_169
## BB#165:
	movl	%ebx, %eax
	movl	-40(%ebp), %ecx         ## 4-byte Reload
	mull	%ecx
	imull	-48(%ebp), %ebx         ## 4-byte Folded Reload
	addl	%edx, %ebx
	imull	%ecx, %esi
	addl	%ebx, %esi
	xorl	%edx, %edx
	movl	%esi, %edi
LBB0_166:                               ## %bkm_scale.exit.i14.1
	movl	%eax, -24(%ebp)         ## 4-byte Spill
	cmpl	-56(%ebp), %eax         ## 4-byte Folded Reload
	setb	%ch
	cmpl	-32(%ebp), %edi         ## 4-byte Folded Reload
	setl	%cl
	je	LBB0_168
## BB#167:                              ## %bkm_scale.exit.i14.1
	movb	%cl, %ch
LBB0_168:                               ## %bkm_scale.exit.i14.1
	orl	-52(%ebp), %edx         ## 4-byte Folded Reload
	movl	$-1, %eax
	addl	$1, %eax
	movl	$2147483647, %esi       ## imm = 0x7FFFFFFF
	adcl	$0, %esi
	movl	$1, -52(%ebp)           ## 4-byte Folded Spill
	testb	%ch, %ch
	jne	LBB0_242
LBB0_169:                               ## %bkm_scale.exit.i14.1.thread
	movl	%edx, %ebx
	movl	-48(%ebp), %eax         ## 4-byte Reload
	movl	%eax, 12(%esp)
	movl	-40(%ebp), %eax         ## 4-byte Reload
	movl	%eax, 8(%esp)
	movl	$2147483647, %eax       ## imm = 0x7FFFFFFF
	movl	%eax, 4(%esp)
	movl	$-1, %eax
	movl	%eax, (%esp)
	calll	___udivdi3
	movl	-24(%ebp), %esi         ## 4-byte Reload
	cmpl	%esi, %eax
	setae	%al
	cmpl	%edi, %edx
	setge	%cl
	je	LBB0_171
## BB#170:                              ## %bkm_scale.exit.i14.1.thread
	movb	%cl, %al
LBB0_171:                               ## %bkm_scale.exit.i14.1.thread
	testb	%al, %al
	je	LBB0_172
## BB#241:
	movl	%esi, %eax
	movl	-40(%ebp), %ecx         ## 4-byte Reload
	mull	%ecx
	imull	-48(%ebp), %esi         ## 4-byte Folded Reload
	addl	%edx, %esi
	imull	%ecx, %edi
	addl	%esi, %edi
	movl	$0, -52(%ebp)           ## 4-byte Folded Spill
	movl	%edi, %esi
	movl	%ebx, %edx
LBB0_242:                               ## %bkm_scale.exit.i14.2
	cmpl	-56(%ebp), %eax         ## 4-byte Folded Reload
	setb	%cl
	cmpl	-32(%ebp), %esi         ## 4-byte Folded Reload
	setl	%ch
	movl	%eax, %edi
	je	LBB0_244
## BB#243:                              ## %bkm_scale.exit.i14.2
	movb	%ch, %cl
LBB0_244:                               ## %bkm_scale.exit.i14.2
	orl	%edx, -52(%ebp)         ## 4-byte Folded Spill
	jmp	LBB0_245
LBB0_36:
	cmpl	$90, %ebx
	jne	LBB0_16
## BB#37:
	movl	%edx, -44(%ebp)         ## 4-byte Spill
	movl	%esi, -60(%ebp)         ## 4-byte Spill
	movl	$-1, %ebx
	addl	$1, %ebx
	movl	$2147483647, %esi       ## imm = 0x7FFFFFFF
	adcl	$0, %esi
	movl	%ecx, 12(%esp)
	movl	%ecx, -48(%ebp)         ## 4-byte Spill
	movl	-40(%ebp), %eax         ## 4-byte Reload
	movl	%eax, 8(%esp)
	movl	%ebx, (%esp)
	movl	%esi, 4(%esp)
	calll	___divdi3
	movl	%eax, -56(%ebp)         ## 4-byte Spill
	movl	%edx, -32(%ebp)         ## 4-byte Spill
	cmpl	%eax, -28(%ebp)         ## 4-byte Folded Reload
	setb	%al
	cmpl	%edx, -24(%ebp)         ## 4-byte Folded Reload
	setl	%cl
	je	LBB0_39
## BB#38:
	movb	%cl, %al
LBB0_39:
	movl	$1, %ecx
	testb	%al, %al
	jne	LBB0_44
## BB#40:
	movl	-48(%ebp), %eax         ## 4-byte Reload
	movl	%eax, 12(%esp)
	movl	-40(%ebp), %eax         ## 4-byte Reload
	movl	%eax, 8(%esp)
	movl	$2147483647, %eax       ## imm = 0x7FFFFFFF
	movl	%eax, 4(%esp)
	movl	$-1, %eax
	movl	%eax, (%esp)
	calll	___udivdi3
	cmpl	-28(%ebp), %eax         ## 4-byte Folded Reload
	setb	%al
	cmpl	-24(%ebp), %edx         ## 4-byte Folded Reload
	setl	%cl
	je	LBB0_42
## BB#41:
	movb	%cl, %al
LBB0_42:
	movl	$1, -52(%ebp)           ## 4-byte Folded Spill
	testb	%al, %al
	movl	$-1, %ebx
	movl	$2147483647, %esi       ## imm = 0x7FFFFFFF
	jne	LBB0_47
## BB#43:
	movl	-28(%ebp), %esi         ## 4-byte Reload
	movl	%esi, %eax
	movl	-40(%ebp), %ecx         ## 4-byte Reload
	mull	%ecx
	movl	%eax, %ebx
	imull	-48(%ebp), %esi         ## 4-byte Folded Reload
	addl	%edx, %esi
	movl	-24(%ebp), %edi         ## 4-byte Reload
	imull	%ecx, %edi
	addl	%esi, %edi
	xorl	%ecx, %ecx
	movl	%edi, %esi
LBB0_44:                                ## %bkm_scale.exit.i
	movl	%ecx, -52(%ebp)         ## 4-byte Spill
	cmpl	-56(%ebp), %ebx         ## 4-byte Folded Reload
	setb	%ch
	cmpl	-32(%ebp), %esi         ## 4-byte Folded Reload
	setl	%cl
	je	LBB0_46
## BB#45:                               ## %bkm_scale.exit.i
	movb	%cl, %ch
LBB0_46:                                ## %bkm_scale.exit.i
	movl	$-1, %eax
	addl	$1, %eax
	movl	$2147483647, %edi       ## imm = 0x7FFFFFFF
	adcl	$0, %edi
	movl	$1, %edx
	testb	%ch, %ch
	jne	LBB0_51
LBB0_47:                                ## %bkm_scale.exit.i.thread
	movl	-48(%ebp), %eax         ## 4-byte Reload
	movl	%eax, 12(%esp)
	movl	-40(%ebp), %eax         ## 4-byte Reload
	movl	%eax, 8(%esp)
	movl	$2147483647, %eax       ## imm = 0x7FFFFFFF
	movl	%eax, 4(%esp)
	movl	$-1, %eax
	movl	%eax, (%esp)
	calll	___udivdi3
	cmpl	%ebx, %eax
	setb	%al
	cmpl	%esi, %edx
	setl	%cl
	je	LBB0_49
## BB#48:                               ## %bkm_scale.exit.i.thread
	movb	%cl, %al
LBB0_49:                                ## %bkm_scale.exit.i.thread
	movl	$1, %edx
	testb	%al, %al
	movl	$-1, -28(%ebp)          ## 4-byte Folded Spill
	movl	$2147483647, %edi       ## imm = 0x7FFFFFFF
	jne	LBB0_54
## BB#50:
	movl	%ebx, %eax
	movl	-40(%ebp), %ecx         ## 4-byte Reload
	mull	%ecx
	imull	-48(%ebp), %ebx         ## 4-byte Folded Reload
	addl	%edx, %ebx
	imull	%ecx, %esi
	addl	%ebx, %esi
	xorl	%edx, %edx
	movl	%esi, %edi
LBB0_51:                                ## %bkm_scale.exit.i.1
	movl	%eax, -28(%ebp)         ## 4-byte Spill
	cmpl	-56(%ebp), %eax         ## 4-byte Folded Reload
	setb	%al
	cmpl	-32(%ebp), %edi         ## 4-byte Folded Reload
	setl	%cl
	je	LBB0_53
## BB#52:                               ## %bkm_scale.exit.i.1
	movb	%cl, %al
LBB0_53:                                ## %bkm_scale.exit.i.1
	orl	-52(%ebp), %edx         ## 4-byte Folded Reload
	movl	$-1, %ebx
	addl	$1, %ebx
	movl	$2147483647, %esi       ## imm = 0x7FFFFFFF
	adcl	$0, %esi
	movl	$1, -24(%ebp)           ## 4-byte Folded Spill
	testb	%al, %al
	jne	LBB0_287
LBB0_54:                                ## %bkm_scale.exit.i.1.thread
	movl	%edx, -52(%ebp)         ## 4-byte Spill
	movl	-48(%ebp), %eax         ## 4-byte Reload
	movl	%eax, 12(%esp)
	movl	-40(%ebp), %eax         ## 4-byte Reload
	movl	%eax, 8(%esp)
	movl	$2147483647, %eax       ## imm = 0x7FFFFFFF
	movl	%eax, 4(%esp)
	movl	$-1, %eax
	movl	%eax, (%esp)
	calll	___udivdi3
	movl	-28(%ebp), %esi         ## 4-byte Reload
	cmpl	%esi, %eax
	setae	%al
	cmpl	%edi, %edx
	setge	%cl
	je	LBB0_56
## BB#55:                               ## %bkm_scale.exit.i.1.thread
	movb	%cl, %al
LBB0_56:                                ## %bkm_scale.exit.i.1.thread
	testb	%al, %al
	jne	LBB0_286
## BB#57:                               ## %bkm_scale.exit.i.2.thread
	movl	$1, %edx
	movl	$-1, %ebx
	movl	$2147483647, %esi       ## imm = 0x7FFFFFFF
	movl	-48(%ebp), %ecx         ## 4-byte Reload
	jmp	LBB0_290
LBB0_16:
	movl	20(%ebp), %eax
	movl	-28(%ebp), %ecx         ## 4-byte Reload
	movl	%ecx, (%eax)
	movl	-24(%ebp), %ecx         ## 4-byte Reload
	movl	%ecx, 4(%eax)
	orl	$2, %esi
	jmp	LBB0_13
LBB0_84:
	movl	%esi, -60(%ebp)         ## 4-byte Spill
	movl	$-1, %ebx
	addl	$1, %ebx
	movl	$2147483647, %esi       ## imm = 0x7FFFFFFF
	adcl	$0, %esi
	movl	%ecx, 12(%esp)
	movl	%ecx, -48(%ebp)         ## 4-byte Spill
	movl	-40(%ebp), %eax         ## 4-byte Reload
	movl	%eax, 8(%esp)
	movl	%ebx, (%esp)
	movl	%esi, 4(%esp)
	calll	___divdi3
	movl	%eax, -56(%ebp)         ## 4-byte Spill
	movl	%edx, -32(%ebp)         ## 4-byte Spill
	cmpl	%eax, -28(%ebp)         ## 4-byte Folded Reload
	setb	%al
	cmpl	%edx, -24(%ebp)         ## 4-byte Folded Reload
	setl	%cl
	je	LBB0_86
## BB#85:
	movb	%cl, %al
LBB0_86:
	movl	$1, %edx
	testb	%al, %al
	jne	LBB0_91
## BB#87:
	movl	-48(%ebp), %eax         ## 4-byte Reload
	movl	%eax, 12(%esp)
	movl	-40(%ebp), %eax         ## 4-byte Reload
	movl	%eax, 8(%esp)
	movl	$2147483647, %eax       ## imm = 0x7FFFFFFF
	movl	%eax, 4(%esp)
	movl	$-1, %eax
	movl	%eax, (%esp)
	calll	___udivdi3
	cmpl	-28(%ebp), %eax         ## 4-byte Folded Reload
	setb	%al
	cmpl	-24(%ebp), %edx         ## 4-byte Folded Reload
	setl	%cl
	je	LBB0_89
## BB#88:
	movb	%cl, %al
LBB0_89:
	movl	$1, %edx
	testb	%al, %al
	movl	$-1, %ebx
	movl	$2147483647, %esi       ## imm = 0x7FFFFFFF
	jne	LBB0_94
## BB#90:
	movl	-28(%ebp), %esi         ## 4-byte Reload
	movl	%esi, %eax
	movl	-40(%ebp), %ecx         ## 4-byte Reload
	mull	%ecx
	movl	%eax, %ebx
	imull	-48(%ebp), %esi         ## 4-byte Folded Reload
	addl	%edx, %esi
	movl	-24(%ebp), %edi         ## 4-byte Reload
	imull	%ecx, %edi
	addl	%esi, %edi
	xorl	%edx, %edx
	movl	%edi, %esi
LBB0_91:                                ## %bkm_scale.exit.i38
	cmpl	-56(%ebp), %ebx         ## 4-byte Folded Reload
	setb	%al
	cmpl	-32(%ebp), %esi         ## 4-byte Folded Reload
	setl	%cl
	je	LBB0_93
## BB#92:                               ## %bkm_scale.exit.i38
	movb	%cl, %al
LBB0_93:                                ## %bkm_scale.exit.i38
	movl	$-1, %ecx
	addl	$1, %ecx
	movl	$2147483647, %edi       ## imm = 0x7FFFFFFF
	adcl	$0, %edi
	movl	$1, -52(%ebp)           ## 4-byte Folded Spill
	testb	%al, %al
	jne	LBB0_98
LBB0_94:                                ## %bkm_scale.exit.i38.thread
	movl	%edx, -28(%ebp)         ## 4-byte Spill
	movl	-48(%ebp), %eax         ## 4-byte Reload
	movl	%eax, 12(%esp)
	movl	-40(%ebp), %eax         ## 4-byte Reload
	movl	%eax, 8(%esp)
	movl	$2147483647, %eax       ## imm = 0x7FFFFFFF
	movl	%eax, 4(%esp)
	movl	$-1, %eax
	movl	%eax, (%esp)
	calll	___udivdi3
	cmpl	%ebx, %eax
	setb	%al
	cmpl	%esi, %edx
	setl	%cl
	je	LBB0_96
## BB#95:                               ## %bkm_scale.exit.i38.thread
	movb	%cl, %al
LBB0_96:                                ## %bkm_scale.exit.i38.thread
	movl	$1, -52(%ebp)           ## 4-byte Folded Spill
	testb	%al, %al
	movl	$-1, -24(%ebp)          ## 4-byte Folded Spill
	movl	$2147483647, %edi       ## imm = 0x7FFFFFFF
	jne	LBB0_101
## BB#97:
	movl	%ebx, %eax
	movl	-40(%ebp), %ecx         ## 4-byte Reload
	mull	%ecx
	imull	-48(%ebp), %ebx         ## 4-byte Folded Reload
	addl	%edx, %ebx
	imull	%ecx, %esi
	movl	%eax, %ecx
	addl	%ebx, %esi
	movl	$0, -52(%ebp)           ## 4-byte Folded Spill
	movl	%esi, %edi
	movl	-28(%ebp), %edx         ## 4-byte Reload
LBB0_98:                                ## %bkm_scale.exit.i38.1
	movl	%ecx, -24(%ebp)         ## 4-byte Spill
	cmpl	-56(%ebp), %ecx         ## 4-byte Folded Reload
	setb	%cl
	cmpl	-32(%ebp), %edi         ## 4-byte Folded Reload
	setl	%al
	je	LBB0_100
## BB#99:                               ## %bkm_scale.exit.i38.1
	movb	%al, %cl
LBB0_100:                               ## %bkm_scale.exit.i38.1
	orl	%edx, -52(%ebp)         ## 4-byte Folded Spill
	movl	$-1, %eax
	addl	$1, %eax
	movl	%eax, -32(%ebp)         ## 4-byte Spill
	movl	$2147483647, %ebx       ## imm = 0x7FFFFFFF
	adcl	$0, %ebx
	movl	$1, %eax
	testb	%cl, %cl
	jne	LBB0_224
LBB0_101:                               ## %bkm_scale.exit.i38.1.thread
	movl	-48(%ebp), %eax         ## 4-byte Reload
	movl	%eax, 12(%esp)
	movl	-40(%ebp), %eax         ## 4-byte Reload
	movl	%eax, 8(%esp)
	movl	$2147483647, %eax       ## imm = 0x7FFFFFFF
	movl	%eax, 4(%esp)
	movl	$-1, %eax
	movl	%eax, (%esp)
	calll	___udivdi3
	cmpl	-24(%ebp), %eax         ## 4-byte Folded Reload
	setb	%cl
	cmpl	%edi, %edx
	setl	%al
	je	LBB0_103
## BB#102:                              ## %bkm_scale.exit.i38.1.thread
	movb	%al, %cl
LBB0_103:                               ## %bkm_scale.exit.i38.1.thread
	movl	$1, %eax
	testb	%cl, %cl
	jne	LBB0_221
## BB#104:
	movl	-24(%ebp), %esi         ## 4-byte Reload
	movl	%esi, %eax
	movl	-40(%ebp), %ecx         ## 4-byte Reload
	mull	%ecx
	movl	%eax, -32(%ebp)         ## 4-byte Spill
	movl	-48(%ebp), %eax         ## 4-byte Reload
	imull	%esi, %eax
	addl	%edx, %eax
	imull	%ecx, %edi
	addl	%eax, %edi
	xorl	%eax, %eax
	movl	%edi, %ebx
	jmp	LBB0_224
LBB0_105:
	movl	$-1, %edx
	addl	$1, %edx
	movl	%edx, -32(%ebp)         ## 4-byte Spill
	movl	$2147483647, %ebx       ## imm = 0x7FFFFFFF
	adcl	$0, %ebx
	movl	%ecx, 12(%esp)
	movl	%ecx, -48(%ebp)         ## 4-byte Spill
	movl	-40(%ebp), %eax         ## 4-byte Reload
	movl	%eax, 8(%esp)
	movl	%edx, (%esp)
	movl	%ebx, 4(%esp)
	calll	___divdi3
	cmpl	%eax, -28(%ebp)         ## 4-byte Folded Reload
	setb	%al
	cmpl	%edx, -24(%ebp)         ## 4-byte Folded Reload
	setl	%cl
	je	LBB0_107
## BB#106:
	movb	%cl, %al
LBB0_107:
	testb	%al, %al
	je	LBB0_109
## BB#108:
	movl	$1, %edx
	jmp	LBB0_113
LBB0_116:
	movl	%esi, -60(%ebp)         ## 4-byte Spill
	movl	$-1, %edx
	addl	$1, %edx
	movl	%edx, -56(%ebp)         ## 4-byte Spill
	movl	$2147483647, %esi       ## imm = 0x7FFFFFFF
	adcl	$0, %esi
	movl	%ecx, 12(%esp)
	movl	%ecx, -48(%ebp)         ## 4-byte Spill
	movl	-40(%ebp), %eax         ## 4-byte Reload
	movl	%eax, 8(%esp)
	movl	%edx, (%esp)
	movl	%esi, 4(%esp)
	calll	___divdi3
	movl	%eax, %ebx
	cmpl	%ebx, -28(%ebp)         ## 4-byte Folded Reload
	setb	%al
	cmpl	%edx, -24(%ebp)         ## 4-byte Folded Reload
	setl	%cl
	je	LBB0_118
## BB#117:
	movb	%cl, %al
LBB0_118:
	movl	$1, -52(%ebp)           ## 4-byte Folded Spill
	testb	%al, %al
	jne	LBB0_123
## BB#119:
	movl	%edx, -32(%ebp)         ## 4-byte Spill
	movl	-48(%ebp), %eax         ## 4-byte Reload
	movl	%eax, 12(%esp)
	movl	-40(%ebp), %eax         ## 4-byte Reload
	movl	%eax, 8(%esp)
	movl	$2147483647, %eax       ## imm = 0x7FFFFFFF
	movl	%eax, 4(%esp)
	movl	$-1, %eax
	movl	%eax, (%esp)
	calll	___udivdi3
	cmpl	-28(%ebp), %eax         ## 4-byte Folded Reload
	setb	%al
	cmpl	-24(%ebp), %edx         ## 4-byte Folded Reload
	setl	%cl
	je	LBB0_121
## BB#120:
	movb	%cl, %al
LBB0_121:
	movl	$1, -52(%ebp)           ## 4-byte Folded Spill
	testb	%al, %al
	movl	$-1, -56(%ebp)          ## 4-byte Folded Spill
	movl	$2147483647, %esi       ## imm = 0x7FFFFFFF
	jne	LBB0_126
## BB#122:
	movl	-28(%ebp), %esi         ## 4-byte Reload
	movl	%esi, %eax
	movl	-40(%ebp), %ecx         ## 4-byte Reload
	mull	%ecx
	movl	%eax, -56(%ebp)         ## 4-byte Spill
	imull	-48(%ebp), %esi         ## 4-byte Folded Reload
	addl	%edx, %esi
	movl	-24(%ebp), %edi         ## 4-byte Reload
	imull	%ecx, %edi
	addl	%esi, %edi
	movl	$0, -52(%ebp)           ## 4-byte Folded Spill
	movl	%edi, %esi
	movl	-32(%ebp), %edx         ## 4-byte Reload
LBB0_123:                               ## %bkm_scale.exit.i26
	cmpl	%ebx, -56(%ebp)         ## 4-byte Folded Reload
	setb	%cl
	cmpl	%edx, %esi
	setl	%al
	je	LBB0_125
## BB#124:                              ## %bkm_scale.exit.i26
	movb	%al, %cl
LBB0_125:                               ## %bkm_scale.exit.i26
	movl	$-1, %eax
	addl	$1, %eax
	movl	%eax, -32(%ebp)         ## 4-byte Spill
	movl	$2147483647, %ebx       ## imm = 0x7FFFFFFF
	adcl	$0, %ebx
	movl	$1, %eax
	testb	%cl, %cl
	jne	LBB0_224
LBB0_126:                               ## %bkm_scale.exit.i26.thread
	movl	-48(%ebp), %eax         ## 4-byte Reload
	movl	%eax, 12(%esp)
	movl	-40(%ebp), %eax         ## 4-byte Reload
	movl	%eax, 8(%esp)
	movl	$2147483647, %eax       ## imm = 0x7FFFFFFF
	movl	%eax, 4(%esp)
	movl	$-1, %eax
	movl	%eax, (%esp)
	calll	___udivdi3
	cmpl	-56(%ebp), %eax         ## 4-byte Folded Reload
	setb	%cl
	cmpl	%esi, %edx
	setl	%al
	je	LBB0_128
## BB#127:                              ## %bkm_scale.exit.i26.thread
	movb	%al, %cl
LBB0_128:                               ## %bkm_scale.exit.i26.thread
	movl	$1, %eax
	testb	%cl, %cl
	jne	LBB0_221
## BB#129:
	movl	-56(%ebp), %ebx         ## 4-byte Reload
	movl	%ebx, %eax
	movl	-40(%ebp), %ecx         ## 4-byte Reload
	mull	%ecx
	movl	%eax, -32(%ebp)         ## 4-byte Spill
	movl	-48(%ebp), %edi         ## 4-byte Reload
	imull	%ebx, %edi
	addl	%edx, %edi
	imull	%ecx, %esi
	addl	%edi, %esi
	jmp	LBB0_250
LBB0_251:
	movl	%esi, %eax
	movl	-40(%ebp), %ecx         ## 4-byte Reload
	mull	%ecx
	movl	%eax, %ebx
	imull	-48(%ebp), %esi         ## 4-byte Folded Reload
	addl	%edx, %esi
	imull	%ecx, %edi
	addl	%esi, %edi
	movl	$0, -24(%ebp)           ## 4-byte Folded Spill
	movl	%edi, %esi
	movl	-52(%ebp), %edx         ## 4-byte Reload
LBB0_252:                               ## %bkm_scale.exit.i6.2
	cmpl	-56(%ebp), %ebx         ## 4-byte Folded Reload
	setb	%al
	cmpl	-32(%ebp), %esi         ## 4-byte Folded Reload
	setl	%cl
	je	LBB0_254
## BB#253:                              ## %bkm_scale.exit.i6.2
	movb	%cl, %al
LBB0_254:                               ## %bkm_scale.exit.i6.2
	movl	-24(%ebp), %ecx         ## 4-byte Reload
	orl	%edx, %ecx
	movl	%ecx, %edx
	movb	%al, %cl
	movl	$-1, %eax
	addl	$1, %eax
	movl	$2147483647, %edi       ## imm = 0x7FFFFFFF
	adcl	$0, %edi
	movl	$1, -28(%ebp)           ## 4-byte Folded Spill
	testb	%cl, %cl
	jne	LBB0_260
LBB0_255:
	movl	%edx, -24(%ebp)         ## 4-byte Spill
	movl	-48(%ebp), %eax         ## 4-byte Reload
	movl	%eax, 12(%esp)
	movl	-40(%ebp), %eax         ## 4-byte Reload
	movl	%eax, 8(%esp)
	movl	$2147483647, %eax       ## imm = 0x7FFFFFFF
	movl	%eax, 4(%esp)
	movl	$-1, %eax
	movl	%eax, (%esp)
	calll	___udivdi3
	cmpl	%ebx, %eax
	setae	%al
	cmpl	%esi, %edx
	setge	%cl
	je	LBB0_257
## BB#256:
	movb	%cl, %al
LBB0_257:
	testb	%al, %al
	jne	LBB0_259
## BB#258:                              ## %bkm_scale.exit.i6.3.thread
	movl	$1, %edx
	movl	$-1, -52(%ebp)          ## 4-byte Folded Spill
	movl	$2147483647, %edi       ## imm = 0x7FFFFFFF
	jmp	LBB0_263
LBB0_259:
	movl	%ebx, %eax
	movl	-40(%ebp), %ecx         ## 4-byte Reload
	mull	%ecx
	imull	-48(%ebp), %ebx         ## 4-byte Folded Reload
	addl	%edx, %ebx
	imull	%ecx, %esi
	addl	%ebx, %esi
	movl	$0, -28(%ebp)           ## 4-byte Folded Spill
	movl	%esi, %edi
	movl	-24(%ebp), %edx         ## 4-byte Reload
LBB0_260:                               ## %bkm_scale.exit.i6.3
	movl	%eax, -52(%ebp)         ## 4-byte Spill
	cmpl	-56(%ebp), %eax         ## 4-byte Folded Reload
	setb	%al
	cmpl	-32(%ebp), %edi         ## 4-byte Folded Reload
	setl	%cl
	je	LBB0_262
## BB#261:                              ## %bkm_scale.exit.i6.3
	movb	%cl, %al
LBB0_262:                               ## %bkm_scale.exit.i6.3
	movl	-28(%ebp), %ecx         ## 4-byte Reload
	orl	%edx, %ecx
	movl	%ecx, %edx
	movl	$-1, %ebx
	addl	$1, %ebx
	movl	$2147483647, %esi       ## imm = 0x7FFFFFFF
	adcl	$0, %esi
	movl	$1, -24(%ebp)           ## 4-byte Folded Spill
	testb	%al, %al
	jne	LBB0_268
LBB0_263:
	movl	%edx, -28(%ebp)         ## 4-byte Spill
	movl	-48(%ebp), %eax         ## 4-byte Reload
	movl	%eax, 12(%esp)
	movl	-40(%ebp), %eax         ## 4-byte Reload
	movl	%eax, 8(%esp)
	movl	$2147483647, %eax       ## imm = 0x7FFFFFFF
	movl	%eax, 4(%esp)
	movl	$-1, %eax
	movl	%eax, (%esp)
	calll	___udivdi3
	movl	-52(%ebp), %esi         ## 4-byte Reload
	cmpl	%esi, %eax
	setae	%al
	cmpl	%edi, %edx
	setge	%cl
	je	LBB0_265
## BB#264:
	movb	%cl, %al
LBB0_265:
	testb	%al, %al
	jne	LBB0_267
## BB#266:                              ## %bkm_scale.exit.i6.4.thread
	movl	$1, %edx
	movl	$-1, %ebx
	movl	$2147483647, %esi       ## imm = 0x7FFFFFFF
	jmp	LBB0_271
LBB0_267:
	movl	%esi, %eax
	movl	-40(%ebp), %ecx         ## 4-byte Reload
	mull	%ecx
	movl	%eax, %ebx
	imull	-48(%ebp), %esi         ## 4-byte Folded Reload
	addl	%edx, %esi
	imull	%ecx, %edi
	addl	%esi, %edi
	movl	$0, -24(%ebp)           ## 4-byte Folded Spill
	movl	%edi, %esi
	movl	-28(%ebp), %edx         ## 4-byte Reload
LBB0_268:                               ## %bkm_scale.exit.i6.4
	cmpl	-56(%ebp), %ebx         ## 4-byte Folded Reload
	setb	%al
	cmpl	-32(%ebp), %esi         ## 4-byte Folded Reload
	setl	%cl
	je	LBB0_270
## BB#269:                              ## %bkm_scale.exit.i6.4
	movb	%cl, %al
LBB0_270:                               ## %bkm_scale.exit.i6.4
	movl	-24(%ebp), %ecx         ## 4-byte Reload
	orl	%edx, %ecx
	movl	%ecx, %edx
	movb	%al, %cl
	movl	$-1, %eax
	addl	$1, %eax
	movl	$2147483647, %edi       ## imm = 0x7FFFFFFF
	adcl	$0, %edi
	movl	$1, -28(%ebp)           ## 4-byte Folded Spill
	testb	%cl, %cl
	jne	LBB0_276
LBB0_271:
	movl	%edx, -24(%ebp)         ## 4-byte Spill
	movl	-48(%ebp), %eax         ## 4-byte Reload
	movl	%eax, 12(%esp)
	movl	-40(%ebp), %eax         ## 4-byte Reload
	movl	%eax, 8(%esp)
	movl	$2147483647, %eax       ## imm = 0x7FFFFFFF
	movl	%eax, 4(%esp)
	movl	$-1, %eax
	movl	%eax, (%esp)
	calll	___udivdi3
	cmpl	%ebx, %eax
	setae	%al
	cmpl	%esi, %edx
	setge	%cl
	je	LBB0_273
## BB#272:
	movb	%cl, %al
LBB0_273:
	testb	%al, %al
	jne	LBB0_275
## BB#274:                              ## %bkm_scale.exit.i6.5.thread
	movl	$1, %ebx
	movl	$-1, -24(%ebp)          ## 4-byte Folded Spill
	movl	$2147483647, %edi       ## imm = 0x7FFFFFFF
	jmp	LBB0_279
LBB0_275:
	movl	%ebx, %eax
	movl	-40(%ebp), %ecx         ## 4-byte Reload
	mull	%ecx
	imull	-48(%ebp), %ebx         ## 4-byte Folded Reload
	addl	%edx, %ebx
	imull	%ecx, %esi
	addl	%ebx, %esi
	movl	$0, -28(%ebp)           ## 4-byte Folded Spill
	movl	%esi, %edi
	movl	-24(%ebp), %edx         ## 4-byte Reload
LBB0_276:                               ## %bkm_scale.exit.i6.5
	movl	%eax, -24(%ebp)         ## 4-byte Spill
	cmpl	-56(%ebp), %eax         ## 4-byte Folded Reload
	setb	%ch
	cmpl	-32(%ebp), %edi         ## 4-byte Folded Reload
	setl	%cl
	je	LBB0_278
## BB#277:                              ## %bkm_scale.exit.i6.5
	movb	%cl, %ch
LBB0_278:                               ## %bkm_scale.exit.i6.5
	movl	-28(%ebp), %ebx         ## 4-byte Reload
	orl	%edx, %ebx
	movl	$-1, %eax
	addl	$1, %eax
	movl	$2147483647, %esi       ## imm = 0x7FFFFFFF
	adcl	$0, %esi
	movl	$1, -52(%ebp)           ## 4-byte Folded Spill
	testb	%ch, %ch
	jne	LBB0_283
LBB0_279:
	movl	-48(%ebp), %eax         ## 4-byte Reload
	movl	%eax, 12(%esp)
	movl	-40(%ebp), %eax         ## 4-byte Reload
	movl	%eax, 8(%esp)
	movl	$2147483647, %eax       ## imm = 0x7FFFFFFF
	movl	%eax, 4(%esp)
	movl	$-1, %eax
	movl	%eax, (%esp)
	calll	___udivdi3
	movl	-24(%ebp), %esi         ## 4-byte Reload
	cmpl	%esi, %eax
	setae	%al
	cmpl	%edi, %edx
	setge	%cl
	je	LBB0_281
## BB#280:
	movb	%cl, %al
LBB0_281:
	testb	%al, %al
	jne	LBB0_282
LBB0_172:                               ## %bkm_scale.exit.i14.2.thread
	movl	$1, -52(%ebp)           ## 4-byte Folded Spill
	movl	$-1, %edi
	movl	$2147483647, %esi       ## imm = 0x7FFFFFFF
	jmp	LBB0_246
LBB0_282:
	movl	%esi, %eax
	movl	-40(%ebp), %ecx         ## 4-byte Reload
	mull	%ecx
	imull	-48(%ebp), %esi         ## 4-byte Folded Reload
	addl	%edx, %esi
	imull	%ecx, %edi
	addl	%esi, %edi
	movl	$0, -52(%ebp)           ## 4-byte Folded Spill
	movl	%edi, %esi
LBB0_283:                               ## %bkm_scale.exit.i6.6
	cmpl	-56(%ebp), %eax         ## 4-byte Folded Reload
	setb	%cl
	cmpl	-32(%ebp), %esi         ## 4-byte Folded Reload
	setl	%dl
	movl	%eax, %edi
	je	LBB0_285
## BB#284:                              ## %bkm_scale.exit.i6.6
	movb	%dl, %cl
LBB0_285:                               ## %bkm_scale.exit.i6.6
	orl	%ebx, -52(%ebp)         ## 4-byte Folded Spill
LBB0_245:                               ## %bkm_scale.exit.i14.2
	movl	$-1, %eax
	addl	$1, %eax
	movl	%eax, -32(%ebp)         ## 4-byte Spill
	movl	$2147483647, %ebx       ## imm = 0x7FFFFFFF
	adcl	$0, %ebx
	movl	$1, %eax
	testb	%cl, %cl
	jne	LBB0_224
LBB0_246:
	movl	-48(%ebp), %eax         ## 4-byte Reload
	movl	%eax, 12(%esp)
	movl	-40(%ebp), %eax         ## 4-byte Reload
	movl	%eax, 8(%esp)
	movl	$2147483647, %eax       ## imm = 0x7FFFFFFF
	movl	%eax, 4(%esp)
	movl	$-1, %eax
	movl	%eax, (%esp)
	calll	___udivdi3
	cmpl	%edi, %eax
	setb	%cl
	cmpl	%esi, %edx
	setl	%al
	je	LBB0_248
## BB#247:
	movb	%al, %cl
LBB0_248:
	movl	$1, %eax
	testb	%cl, %cl
	jne	LBB0_221
## BB#249:
	movl	%edi, %eax
	movl	-40(%ebp), %ecx         ## 4-byte Reload
	mull	%ecx
	movl	%eax, -32(%ebp)         ## 4-byte Spill
	movl	-48(%ebp), %eax         ## 4-byte Reload
	imull	%edi, %eax
	addl	%edx, %eax
	imull	%ecx, %esi
	addl	%eax, %esi
LBB0_250:                               ## %bkm_scale.exit.i44.5
	xorl	%eax, %eax
	movl	%esi, %ebx
	jmp	LBB0_224
LBB0_109:
	movl	-48(%ebp), %eax         ## 4-byte Reload
	movl	%eax, 12(%esp)
	movl	-40(%ebp), %eax         ## 4-byte Reload
	movl	%eax, 8(%esp)
	movl	$2147483647, %eax       ## imm = 0x7FFFFFFF
	movl	%eax, 4(%esp)
	movl	$-1, %eax
	movl	%eax, (%esp)
	calll	___udivdi3
	cmpl	-28(%ebp), %eax         ## 4-byte Folded Reload
	setb	%al
	cmpl	-24(%ebp), %edx         ## 4-byte Folded Reload
	setl	%cl
	je	LBB0_111
## BB#110:
	movb	%cl, %al
LBB0_111:
	testb	%al, %al
	movl	$-1, -32(%ebp)          ## 4-byte Folded Spill
	movl	$2147483647, %ebx       ## imm = 0x7FFFFFFF
	movl	-48(%ebp), %eax         ## 4-byte Reload
	movl	$1, %edx
	jne	LBB0_113
## BB#112:
	movl	%eax, %ecx
	movl	-28(%ebp), %eax         ## 4-byte Reload
	imull	%eax, %ecx
	movl	-40(%ebp), %ebx         ## 4-byte Reload
	mull	%ebx
	movl	%eax, -32(%ebp)         ## 4-byte Spill
	addl	%edx, %ecx
	movl	-24(%ebp), %edi         ## 4-byte Reload
	imull	%ebx, %edi
	addl	%ecx, %edi
	movl	%edi, %ebx
	movl	-48(%ebp), %edx         ## 4-byte Reload
	jmp	LBB0_113
LBB0_286:
	movl	%esi, %eax
	movl	-40(%ebp), %ecx         ## 4-byte Reload
	mull	%ecx
	movl	%eax, %ebx
	imull	-48(%ebp), %esi         ## 4-byte Folded Reload
	addl	%edx, %esi
	imull	%ecx, %edi
	addl	%esi, %edi
	movl	$0, -24(%ebp)           ## 4-byte Folded Spill
	movl	%edi, %esi
	movl	-52(%ebp), %edx         ## 4-byte Reload
LBB0_287:                               ## %bkm_scale.exit.i.2
	cmpl	-56(%ebp), %ebx         ## 4-byte Folded Reload
	setb	%al
	cmpl	-32(%ebp), %esi         ## 4-byte Folded Reload
	setl	%cl
	je	LBB0_289
## BB#288:                              ## %bkm_scale.exit.i.2
	movb	%cl, %al
LBB0_289:                               ## %bkm_scale.exit.i.2
	movl	-24(%ebp), %ecx         ## 4-byte Reload
	orl	%edx, %ecx
	movl	%ecx, %edx
	movb	%al, %cl
	movl	$-1, %eax
	addl	$1, %eax
	movl	$2147483647, %edi       ## imm = 0x7FFFFFFF
	adcl	$0, %edi
	movl	$1, -28(%ebp)           ## 4-byte Folded Spill
	testb	%cl, %cl
	movl	-48(%ebp), %ecx         ## 4-byte Reload
	jne	LBB0_295
LBB0_290:
	movl	%edx, -24(%ebp)         ## 4-byte Spill
	movl	%ecx, 12(%esp)
	movl	-40(%ebp), %eax         ## 4-byte Reload
	movl	%eax, 8(%esp)
	movl	$2147483647, %eax       ## imm = 0x7FFFFFFF
	movl	%eax, 4(%esp)
	movl	$-1, %eax
	movl	%eax, (%esp)
	calll	___udivdi3
	cmpl	%ebx, %eax
	setae	%al
	cmpl	%esi, %edx
	setge	%cl
	je	LBB0_292
## BB#291:
	movb	%cl, %al
LBB0_292:
	testb	%al, %al
	jne	LBB0_294
## BB#293:                              ## %bkm_scale.exit.i.3.thread
	movl	$1, %edx
	movl	$-1, -52(%ebp)          ## 4-byte Folded Spill
	movl	$2147483647, %edi       ## imm = 0x7FFFFFFF
	jmp	LBB0_298
LBB0_294:
	movl	%ebx, %eax
	movl	-40(%ebp), %ecx         ## 4-byte Reload
	mull	%ecx
	movl	-48(%ebp), %edi         ## 4-byte Reload
	imull	%edi, %ebx
	addl	%edx, %ebx
	imull	%ecx, %esi
	addl	%ebx, %esi
	movl	$0, -28(%ebp)           ## 4-byte Folded Spill
	movl	%esi, %edi
	movl	-24(%ebp), %edx         ## 4-byte Reload
LBB0_295:                               ## %bkm_scale.exit.i.3
	movl	%eax, -52(%ebp)         ## 4-byte Spill
	cmpl	-56(%ebp), %eax         ## 4-byte Folded Reload
	setb	%al
	cmpl	-32(%ebp), %edi         ## 4-byte Folded Reload
	setl	%cl
	je	LBB0_297
## BB#296:                              ## %bkm_scale.exit.i.3
	movb	%cl, %al
LBB0_297:                               ## %bkm_scale.exit.i.3
	movl	-28(%ebp), %ecx         ## 4-byte Reload
	orl	%edx, %ecx
	movl	%ecx, %edx
	movl	$-1, %ebx
	addl	$1, %ebx
	movl	$2147483647, %esi       ## imm = 0x7FFFFFFF
	adcl	$0, %esi
	movl	$1, -24(%ebp)           ## 4-byte Folded Spill
	testb	%al, %al
	jne	LBB0_303
LBB0_298:
	movl	%edx, -28(%ebp)         ## 4-byte Spill
	movl	-48(%ebp), %eax         ## 4-byte Reload
	movl	%eax, 12(%esp)
	movl	-40(%ebp), %eax         ## 4-byte Reload
	movl	%eax, 8(%esp)
	movl	$2147483647, %eax       ## imm = 0x7FFFFFFF
	movl	%eax, 4(%esp)
	movl	$-1, %eax
	movl	%eax, (%esp)
	calll	___udivdi3
	movl	-52(%ebp), %esi         ## 4-byte Reload
	cmpl	%esi, %eax
	setae	%al
	cmpl	%edi, %edx
	setge	%cl
	je	LBB0_300
## BB#299:
	movb	%cl, %al
LBB0_300:
	testb	%al, %al
	jne	LBB0_302
## BB#301:                              ## %bkm_scale.exit.i.4.thread
	movl	$1, %edx
	movl	$-1, %ebx
	movl	$2147483647, %esi       ## imm = 0x7FFFFFFF
	movl	-48(%ebp), %ecx         ## 4-byte Reload
	jmp	LBB0_306
LBB0_302:
	movl	%esi, %eax
	movl	-40(%ebp), %ecx         ## 4-byte Reload
	mull	%ecx
	movl	%eax, %ebx
	imull	-48(%ebp), %esi         ## 4-byte Folded Reload
	addl	%edx, %esi
	imull	%ecx, %edi
	addl	%esi, %edi
	movl	$0, -24(%ebp)           ## 4-byte Folded Spill
	movl	%edi, %esi
	movl	-28(%ebp), %edx         ## 4-byte Reload
LBB0_303:                               ## %bkm_scale.exit.i.4
	cmpl	-56(%ebp), %ebx         ## 4-byte Folded Reload
	setb	%al
	cmpl	-32(%ebp), %esi         ## 4-byte Folded Reload
	setl	%cl
	je	LBB0_305
## BB#304:                              ## %bkm_scale.exit.i.4
	movb	%cl, %al
LBB0_305:                               ## %bkm_scale.exit.i.4
	movl	-24(%ebp), %ecx         ## 4-byte Reload
	orl	%edx, %ecx
	movl	%ecx, %edx
	movb	%al, %cl
	movl	$-1, %eax
	addl	$1, %eax
	movl	$2147483647, %edi       ## imm = 0x7FFFFFFF
	adcl	$0, %edi
	movl	$1, -52(%ebp)           ## 4-byte Folded Spill
	testb	%cl, %cl
	movl	-48(%ebp), %ecx         ## 4-byte Reload
	jne	LBB0_311
LBB0_306:
	movl	%edx, -24(%ebp)         ## 4-byte Spill
	movl	%ecx, 12(%esp)
	movl	-40(%ebp), %eax         ## 4-byte Reload
	movl	%eax, 8(%esp)
	movl	$2147483647, %eax       ## imm = 0x7FFFFFFF
	movl	%eax, 4(%esp)
	movl	$-1, %eax
	movl	%eax, (%esp)
	calll	___udivdi3
	cmpl	%ebx, %eax
	setae	%al
	cmpl	%esi, %edx
	setge	%cl
	je	LBB0_308
## BB#307:
	movb	%cl, %al
LBB0_308:
	testb	%al, %al
	jne	LBB0_310
## BB#309:                              ## %bkm_scale.exit.i.5.thread
	movl	$1, -52(%ebp)           ## 4-byte Folded Spill
	movl	$-1, -24(%ebp)          ## 4-byte Folded Spill
	movl	$2147483647, %edi       ## imm = 0x7FFFFFFF
	movl	-60(%ebp), %esi         ## 4-byte Reload
	jmp	LBB0_314
LBB0_310:
	movl	%ebx, %eax
	movl	-40(%ebp), %ecx         ## 4-byte Reload
	mull	%ecx
	movl	-48(%ebp), %edi         ## 4-byte Reload
	imull	%edi, %ebx
	addl	%edx, %ebx
	imull	%ecx, %esi
	addl	%ebx, %esi
	movl	$0, -52(%ebp)           ## 4-byte Folded Spill
	movl	%esi, %edi
	movl	-24(%ebp), %edx         ## 4-byte Reload
LBB0_311:                               ## %bkm_scale.exit.i.5
	movl	%eax, -24(%ebp)         ## 4-byte Spill
	cmpl	-56(%ebp), %eax         ## 4-byte Folded Reload
	setb	%cl
	cmpl	-32(%ebp), %edi         ## 4-byte Folded Reload
	setl	%al
	je	LBB0_313
## BB#312:                              ## %bkm_scale.exit.i.5
	movb	%al, %cl
LBB0_313:                               ## %bkm_scale.exit.i.5
	orl	%edx, -52(%ebp)         ## 4-byte Folded Spill
	movl	$-1, %eax
	addl	$1, %eax
	movl	%eax, -32(%ebp)         ## 4-byte Spill
	movl	$2147483647, %ebx       ## imm = 0x7FFFFFFF
	adcl	$0, %ebx
	movl	$1, %eax
	testb	%cl, %cl
	movl	-60(%ebp), %esi         ## 4-byte Reload
	jne	LBB0_319
LBB0_314:
	movl	-48(%ebp), %eax         ## 4-byte Reload
	movl	%eax, 12(%esp)
	movl	-40(%ebp), %eax         ## 4-byte Reload
	movl	%eax, 8(%esp)
	movl	$2147483647, %eax       ## imm = 0x7FFFFFFF
	movl	%eax, 4(%esp)
	movl	$-1, %eax
	movl	%eax, (%esp)
	calll	___udivdi3
	movl	-24(%ebp), %ebx         ## 4-byte Reload
	cmpl	%ebx, %eax
	setb	%cl
	cmpl	%edi, %edx
	setl	%al
	je	LBB0_316
## BB#315:
	movb	%al, %cl
LBB0_316:
	movl	$1, %eax
	testb	%cl, %cl
	je	LBB0_318
## BB#317:
	movl	$-1, -32(%ebp)          ## 4-byte Folded Spill
	movl	$2147483647, %ebx       ## imm = 0x7FFFFFFF
	jmp	LBB0_319
LBB0_318:
	movl	%ebx, %eax
	movl	-40(%ebp), %ecx         ## 4-byte Reload
	mull	%ecx
	movl	%eax, -32(%ebp)         ## 4-byte Spill
	movl	-48(%ebp), %eax         ## 4-byte Reload
	imull	%ebx, %eax
	addl	%edx, %eax
	imull	%ecx, %edi
	addl	%eax, %edi
	xorl	%eax, %eax
	movl	%edi, %ebx
LBB0_319:                               ## %bkm_scale.exit.i.6
	movl	-52(%ebp), %edx         ## 4-byte Reload
	orl	%eax, %edx
	jmp	LBB0_113
LBB0_130:
	movl	%esi, -60(%ebp)         ## 4-byte Spill
	movl	$-1, %esi
	addl	$1, %esi
	movl	$2147483647, %ebx       ## imm = 0x7FFFFFFF
	adcl	$0, %ebx
	movl	%ecx, 12(%esp)
	movl	%ecx, -48(%ebp)         ## 4-byte Spill
	movl	-40(%ebp), %eax         ## 4-byte Reload
	movl	%eax, 8(%esp)
	movl	%esi, (%esp)
	movl	%ebx, 4(%esp)
	calll	___divdi3
	movl	%eax, -32(%ebp)         ## 4-byte Spill
	cmpl	%eax, -28(%ebp)         ## 4-byte Folded Reload
	setb	%al
	movl	-24(%ebp), %edi         ## 4-byte Reload
	cmpl	%edx, %edi
	setl	%cl
	je	LBB0_132
## BB#131:
	movb	%cl, %al
LBB0_132:
	movl	$1, -52(%ebp)           ## 4-byte Folded Spill
	testb	%al, %al
	jne	LBB0_137
## BB#133:
	movl	%edx, -56(%ebp)         ## 4-byte Spill
	movl	-48(%ebp), %eax         ## 4-byte Reload
	movl	%eax, 12(%esp)
	movl	-40(%ebp), %eax         ## 4-byte Reload
	movl	%eax, 8(%esp)
	movl	$2147483647, %eax       ## imm = 0x7FFFFFFF
	movl	%eax, 4(%esp)
	movl	$-1, %eax
	movl	%eax, (%esp)
	calll	___udivdi3
	cmpl	-28(%ebp), %eax         ## 4-byte Folded Reload
	setb	%al
	cmpl	%edi, %edx
	setl	%cl
	je	LBB0_135
## BB#134:
	movb	%cl, %al
LBB0_135:
	movl	$1, -52(%ebp)           ## 4-byte Folded Spill
	testb	%al, %al
	movl	$-1, %esi
	movl	$2147483647, %ebx       ## imm = 0x7FFFFFFF
	jne	LBB0_140
## BB#136:
	movl	-28(%ebp), %ebx         ## 4-byte Reload
	movl	%ebx, %eax
	movl	-40(%ebp), %ecx         ## 4-byte Reload
	mull	%ecx
	movl	%eax, %esi
	movl	%edx, %eax
	imull	-48(%ebp), %ebx         ## 4-byte Folded Reload
	addl	%eax, %ebx
	movl	%edi, %eax
	imull	%ecx, %eax
	addl	%ebx, %eax
	movl	$0, -52(%ebp)           ## 4-byte Folded Spill
	movl	%eax, %ebx
	movl	-56(%ebp), %edx         ## 4-byte Reload
LBB0_137:                               ## %bkm_scale.exit.i20
	movl	%edx, -56(%ebp)         ## 4-byte Spill
	cmpl	-32(%ebp), %esi         ## 4-byte Folded Reload
	setb	%al
	cmpl	%edx, %ebx
	setl	%cl
	je	LBB0_139
## BB#138:                              ## %bkm_scale.exit.i20
	movb	%cl, %al
LBB0_139:                               ## %bkm_scale.exit.i20
	movl	$-1, %ecx
	addl	$1, %ecx
	movl	%ecx, -24(%ebp)         ## 4-byte Spill
	movl	$2147483647, %ecx       ## imm = 0x7FFFFFFF
	adcl	$0, %ecx
	movl	%ecx, -28(%ebp)         ## 4-byte Spill
	movl	$1, %edi
	testb	%al, %al
	jne	LBB0_144
LBB0_140:                               ## %bkm_scale.exit.i20.thread
	movl	-48(%ebp), %eax         ## 4-byte Reload
	movl	%eax, 12(%esp)
	movl	-40(%ebp), %eax         ## 4-byte Reload
	movl	%eax, 8(%esp)
	movl	$2147483647, %eax       ## imm = 0x7FFFFFFF
	movl	%eax, 4(%esp)
	movl	$-1, %eax
	movl	%eax, (%esp)
	calll	___udivdi3
	movl	%edx, %ecx
	cmpl	%esi, %eax
	setb	%al
	cmpl	%ebx, %ecx
	setl	%cl
	je	LBB0_142
## BB#141:                              ## %bkm_scale.exit.i20.thread
	movb	%cl, %al
LBB0_142:                               ## %bkm_scale.exit.i20.thread
	movl	$1, %edi
	testb	%al, %al
	movl	$-1, -24(%ebp)          ## 4-byte Folded Spill
	movl	$2147483647, -28(%ebp)  ## 4-byte Folded Spill
                                        ## imm = 0x7FFFFFFF
	jne	LBB0_147
## BB#143:
	movl	%esi, %eax
	movl	-40(%ebp), %ecx         ## 4-byte Reload
	mull	%ecx
	movl	%eax, -24(%ebp)         ## 4-byte Spill
	movl	%edx, %eax
	imull	-48(%ebp), %esi         ## 4-byte Folded Reload
	addl	%eax, %esi
	imull	%ecx, %ebx
	addl	%esi, %ebx
	xorl	%edi, %edi
	movl	%ebx, -28(%ebp)         ## 4-byte Spill
LBB0_144:                               ## %bkm_scale.exit.i20.1
	movl	-24(%ebp), %eax         ## 4-byte Reload
	cmpl	-32(%ebp), %eax         ## 4-byte Folded Reload
	setb	%al
	movl	-28(%ebp), %ecx         ## 4-byte Reload
	cmpl	-56(%ebp), %ecx         ## 4-byte Folded Reload
	setl	%cl
	je	LBB0_146
## BB#145:                              ## %bkm_scale.exit.i20.1
	movb	%cl, %al
LBB0_146:                               ## %bkm_scale.exit.i20.1
	orl	-52(%ebp), %edi         ## 4-byte Folded Reload
	movl	$-1, %ebx
	addl	$1, %ebx
	movl	$2147483647, %ecx       ## imm = 0x7FFFFFFF
	adcl	$0, %ecx
	movl	%ecx, -64(%ebp)         ## 4-byte Spill
	movl	$1, %esi
	testb	%al, %al
	jne	LBB0_226
LBB0_147:                               ## %bkm_scale.exit.i20.1.thread
	movl	-48(%ebp), %eax         ## 4-byte Reload
	movl	%eax, 12(%esp)
	movl	-40(%ebp), %eax         ## 4-byte Reload
	movl	%eax, 8(%esp)
	movl	$2147483647, %eax       ## imm = 0x7FFFFFFF
	movl	%eax, 4(%esp)
	movl	$-1, %eax
	movl	%eax, (%esp)
	calll	___udivdi3
	movl	%edx, %ecx
	cmpl	-24(%ebp), %eax         ## 4-byte Folded Reload
	setae	%al
	cmpl	-28(%ebp), %ecx         ## 4-byte Folded Reload
	setge	%cl
	je	LBB0_149
## BB#148:                              ## %bkm_scale.exit.i20.1.thread
	movb	%cl, %al
LBB0_149:                               ## %bkm_scale.exit.i20.1.thread
	testb	%al, %al
	jne	LBB0_225
## BB#150:                              ## %bkm_scale.exit.i20.2.thread
	movl	$1, %esi
	movl	$-1, %ebx
	movl	$2147483647, -64(%ebp)  ## 4-byte Folded Spill
                                        ## imm = 0x7FFFFFFF
	jmp	LBB0_229
LBB0_320:
	movl	-32(%ebp), %ecx         ## 4-byte Reload
	leal	L_.str1-L0$pb(%ecx), %eax
	movl	%eax, 12(%esp)
	leal	L_.str-L0$pb(%ecx), %eax
	movl	%eax, 4(%esp)
	leal	L___func__.xstrtoimax-L0$pb(%ecx), %eax
	movl	%eax, (%esp)
	movl	$96, 8(%esp)
	calll	___assert_rtn
LBB0_198:
	movl	-24(%ebp), %esi         ## 4-byte Reload
	movl	%esi, %eax
	movl	-40(%ebp), %ecx         ## 4-byte Reload
	mull	%ecx
	movl	%eax, %ebx
	movl	%edx, %eax
	imull	-48(%ebp), %esi         ## 4-byte Folded Reload
	addl	%eax, %esi
	movl	-28(%ebp), %eax         ## 4-byte Reload
	imull	%ecx, %eax
	addl	%esi, %eax
	xorl	%esi, %esi
	movl	%eax, -52(%ebp)         ## 4-byte Spill
LBB0_199:                               ## %bkm_scale.exit.i44.2
	cmpl	-32(%ebp), %ebx         ## 4-byte Folded Reload
	setb	%al
	movl	-52(%ebp), %ecx         ## 4-byte Reload
	cmpl	-56(%ebp), %ecx         ## 4-byte Folded Reload
	setl	%cl
	je	LBB0_201
## BB#200:                              ## %bkm_scale.exit.i44.2
	movb	%cl, %al
LBB0_201:                               ## %bkm_scale.exit.i44.2
	orl	%edi, %esi
	movl	$-1, %ecx
	addl	$1, %ecx
	movl	%ecx, -24(%ebp)         ## 4-byte Spill
	movl	$2147483647, %ecx       ## imm = 0x7FFFFFFF
	adcl	$0, %ecx
	movl	%ecx, -28(%ebp)         ## 4-byte Spill
	movl	$1, %edi
	testb	%al, %al
	jne	LBB0_207
LBB0_202:
	movl	-48(%ebp), %eax         ## 4-byte Reload
	movl	%eax, 12(%esp)
	movl	-40(%ebp), %eax         ## 4-byte Reload
	movl	%eax, 8(%esp)
	movl	$2147483647, %eax       ## imm = 0x7FFFFFFF
	movl	%eax, 4(%esp)
	movl	$-1, %eax
	movl	%eax, (%esp)
	calll	___udivdi3
	movl	%edx, %ecx
	cmpl	%ebx, %eax
	setae	%al
	cmpl	-52(%ebp), %ecx         ## 4-byte Folded Reload
	setge	%cl
	je	LBB0_204
## BB#203:
	movb	%cl, %al
LBB0_204:
	testb	%al, %al
	jne	LBB0_206
## BB#205:                              ## %bkm_scale.exit.i44.3.thread
	movl	$1, %edi
	movl	$-1, -24(%ebp)          ## 4-byte Folded Spill
	movl	$2147483647, -28(%ebp)  ## 4-byte Folded Spill
                                        ## imm = 0x7FFFFFFF
	jmp	LBB0_210
LBB0_225:
	movl	-24(%ebp), %esi         ## 4-byte Reload
	movl	%esi, %eax
	movl	-40(%ebp), %ecx         ## 4-byte Reload
	mull	%ecx
	movl	%eax, %ebx
	movl	%edx, %eax
	imull	-48(%ebp), %esi         ## 4-byte Folded Reload
	addl	%eax, %esi
	movl	-28(%ebp), %eax         ## 4-byte Reload
	imull	%ecx, %eax
	addl	%esi, %eax
	xorl	%esi, %esi
	movl	%eax, -64(%ebp)         ## 4-byte Spill
LBB0_226:                               ## %bkm_scale.exit.i20.2
	cmpl	-32(%ebp), %ebx         ## 4-byte Folded Reload
	setb	%al
	movl	-64(%ebp), %ecx         ## 4-byte Reload
	cmpl	-56(%ebp), %ecx         ## 4-byte Folded Reload
	setl	%cl
	je	LBB0_228
## BB#227:                              ## %bkm_scale.exit.i20.2
	movb	%cl, %al
LBB0_228:                               ## %bkm_scale.exit.i20.2
	orl	%edi, %esi
	movl	$-1, %edi
	addl	$1, %edi
	movl	$2147483647, %ecx       ## imm = 0x7FFFFFFF
	adcl	$0, %ecx
	movl	%ecx, -24(%ebp)         ## 4-byte Spill
	movl	$1, -52(%ebp)           ## 4-byte Folded Spill
	testb	%al, %al
	jne	LBB0_234
LBB0_229:
	movl	-48(%ebp), %eax         ## 4-byte Reload
	movl	%eax, 12(%esp)
	movl	-40(%ebp), %eax         ## 4-byte Reload
	movl	%eax, 8(%esp)
	movl	$2147483647, %eax       ## imm = 0x7FFFFFFF
	movl	%eax, 4(%esp)
	movl	$-1, %eax
	movl	%eax, (%esp)
	calll	___udivdi3
	movl	%edx, %ecx
	cmpl	%ebx, %eax
	setae	%al
	cmpl	-64(%ebp), %ecx         ## 4-byte Folded Reload
	setge	%cl
	je	LBB0_231
## BB#230:
	movb	%cl, %al
LBB0_231:
	testb	%al, %al
	jne	LBB0_233
## BB#232:                              ## %bkm_scale.exit.i20.3.thread
	movl	$1, -52(%ebp)           ## 4-byte Folded Spill
	movl	$-1, %edi
	movl	$2147483647, -24(%ebp)  ## 4-byte Folded Spill
                                        ## imm = 0x7FFFFFFF
	jmp	LBB0_237
LBB0_206:
	movl	%ebx, %eax
	movl	-40(%ebp), %ecx         ## 4-byte Reload
	mull	%ecx
	movl	%eax, -24(%ebp)         ## 4-byte Spill
	movl	%edx, %eax
	imull	-48(%ebp), %ebx         ## 4-byte Folded Reload
	addl	%eax, %ebx
	movl	-52(%ebp), %eax         ## 4-byte Reload
	imull	%ecx, %eax
	addl	%ebx, %eax
	xorl	%edi, %edi
	movl	%eax, -28(%ebp)         ## 4-byte Spill
LBB0_207:                               ## %bkm_scale.exit.i44.3
	movl	-24(%ebp), %eax         ## 4-byte Reload
	cmpl	-32(%ebp), %eax         ## 4-byte Folded Reload
	setb	%al
	movl	-28(%ebp), %ecx         ## 4-byte Reload
	cmpl	-56(%ebp), %ecx         ## 4-byte Folded Reload
	setl	%cl
	je	LBB0_209
## BB#208:                              ## %bkm_scale.exit.i44.3
	movb	%cl, %al
LBB0_209:                               ## %bkm_scale.exit.i44.3
	orl	%esi, %edi
	movl	$-1, %esi
	addl	$1, %esi
	movl	$2147483647, %ecx       ## imm = 0x7FFFFFFF
	adcl	$0, %ecx
	movl	%ecx, -64(%ebp)         ## 4-byte Spill
	movl	$1, -52(%ebp)           ## 4-byte Folded Spill
	testb	%al, %al
	jne	LBB0_215
LBB0_210:
	movl	-48(%ebp), %eax         ## 4-byte Reload
	movl	%eax, 12(%esp)
	movl	-40(%ebp), %eax         ## 4-byte Reload
	movl	%eax, 8(%esp)
	movl	$2147483647, %eax       ## imm = 0x7FFFFFFF
	movl	%eax, 4(%esp)
	movl	$-1, %eax
	movl	%eax, (%esp)
	calll	___udivdi3
	movl	%edx, %ecx
	cmpl	-24(%ebp), %eax         ## 4-byte Folded Reload
	setae	%al
	cmpl	-28(%ebp), %ecx         ## 4-byte Folded Reload
	setge	%cl
	je	LBB0_212
## BB#211:
	movb	%cl, %al
LBB0_212:
	testb	%al, %al
	jne	LBB0_214
## BB#213:                              ## %bkm_scale.exit.i44.4.thread
	movl	$1, -52(%ebp)           ## 4-byte Folded Spill
	movl	$-1, %esi
	movl	$2147483647, -64(%ebp)  ## 4-byte Folded Spill
                                        ## imm = 0x7FFFFFFF
	jmp	LBB0_218
LBB0_233:
	movl	%ebx, %eax
	movl	-40(%ebp), %ecx         ## 4-byte Reload
	mull	%ecx
	movl	%eax, %edi
	movl	%edx, %eax
	imull	-48(%ebp), %ebx         ## 4-byte Folded Reload
	addl	%eax, %ebx
	movl	-64(%ebp), %eax         ## 4-byte Reload
	imull	%ecx, %eax
	addl	%ebx, %eax
	movl	$0, -52(%ebp)           ## 4-byte Folded Spill
	movl	%eax, -24(%ebp)         ## 4-byte Spill
LBB0_234:                               ## %bkm_scale.exit.i20.3
	cmpl	-32(%ebp), %edi         ## 4-byte Folded Reload
	setb	%cl
	movl	-24(%ebp), %eax         ## 4-byte Reload
	cmpl	-56(%ebp), %eax         ## 4-byte Folded Reload
	setl	%al
	je	LBB0_236
## BB#235:                              ## %bkm_scale.exit.i20.3
	movb	%al, %cl
LBB0_236:                               ## %bkm_scale.exit.i20.3
	orl	%esi, -52(%ebp)         ## 4-byte Folded Spill
	movl	$-1, %eax
	addl	$1, %eax
	movl	%eax, -32(%ebp)         ## 4-byte Spill
	movl	$2147483647, %ebx       ## imm = 0x7FFFFFFF
	adcl	$0, %ebx
	movl	$1, %eax
	testb	%cl, %cl
	jne	LBB0_224
LBB0_237:
	movl	-48(%ebp), %eax         ## 4-byte Reload
	movl	%eax, 12(%esp)
	movl	-40(%ebp), %eax         ## 4-byte Reload
	movl	%eax, 8(%esp)
	movl	$2147483647, %eax       ## imm = 0x7FFFFFFF
	movl	%eax, 4(%esp)
	movl	$-1, %eax
	movl	%eax, (%esp)
	calll	___udivdi3
	cmpl	%edi, %eax
	setb	%cl
	cmpl	-24(%ebp), %edx         ## 4-byte Folded Reload
	setl	%al
	je	LBB0_239
## BB#238:
	movb	%al, %cl
LBB0_239:
	movl	$1, %eax
	testb	%cl, %cl
	jne	LBB0_221
## BB#240:
	movl	%edi, %eax
	movl	-40(%ebp), %esi         ## 4-byte Reload
	mull	%esi
	movl	%eax, -32(%ebp)         ## 4-byte Spill
	movl	%edx, %eax
	movl	-48(%ebp), %ecx         ## 4-byte Reload
	imull	%edi, %ecx
	addl	%eax, %ecx
	movl	-24(%ebp), %edx         ## 4-byte Reload
	imull	%esi, %edx
	jmp	LBB0_223
LBB0_214:
	movl	-24(%ebp), %ebx         ## 4-byte Reload
	movl	%ebx, %eax
	movl	-40(%ebp), %ecx         ## 4-byte Reload
	mull	%ecx
	movl	%eax, %esi
	movl	%edx, %eax
	imull	-48(%ebp), %ebx         ## 4-byte Folded Reload
	addl	%eax, %ebx
	movl	-28(%ebp), %eax         ## 4-byte Reload
	imull	%ecx, %eax
	addl	%ebx, %eax
	movl	$0, -52(%ebp)           ## 4-byte Folded Spill
	movl	%eax, -64(%ebp)         ## 4-byte Spill
LBB0_215:                               ## %bkm_scale.exit.i44.4
	cmpl	-32(%ebp), %esi         ## 4-byte Folded Reload
	setb	%cl
	movl	-64(%ebp), %eax         ## 4-byte Reload
	cmpl	-56(%ebp), %eax         ## 4-byte Folded Reload
	setl	%al
	je	LBB0_217
## BB#216:                              ## %bkm_scale.exit.i44.4
	movb	%al, %cl
LBB0_217:                               ## %bkm_scale.exit.i44.4
	orl	%edi, -52(%ebp)         ## 4-byte Folded Spill
	movl	$-1, %eax
	addl	$1, %eax
	movl	%eax, -32(%ebp)         ## 4-byte Spill
	movl	$2147483647, %ebx       ## imm = 0x7FFFFFFF
	adcl	$0, %ebx
	movl	$1, %eax
	testb	%cl, %cl
	jne	LBB0_224
LBB0_218:
	movl	-48(%ebp), %eax         ## 4-byte Reload
	movl	%eax, 12(%esp)
	movl	-40(%ebp), %eax         ## 4-byte Reload
	movl	%eax, 8(%esp)
	movl	$2147483647, %eax       ## imm = 0x7FFFFFFF
	movl	%eax, 4(%esp)
	movl	$-1, %eax
	movl	%eax, (%esp)
	calll	___udivdi3
	cmpl	%esi, %eax
	setb	%cl
	cmpl	-64(%ebp), %edx         ## 4-byte Folded Reload
	setl	%al
	je	LBB0_220
## BB#219:
	movb	%al, %cl
LBB0_220:
	movl	$1, %eax
	testb	%cl, %cl
	je	LBB0_222
LBB0_221:
	movl	$-1, -32(%ebp)          ## 4-byte Folded Spill
	movl	$2147483647, %ebx       ## imm = 0x7FFFFFFF
LBB0_224:                               ## %bkm_scale.exit.i44.5
	movl	-52(%ebp), %edx         ## 4-byte Reload
	orl	%eax, %edx
	movl	-60(%ebp), %esi         ## 4-byte Reload
LBB0_113:                               ## %bkm_scale.exit
	orl	%esi, %edx
	movl	-36(%ebp), %esi         ## 4-byte Reload
	movl	-44(%ebp), %edi         ## 4-byte Reload
	leal	(%esi,%edi), %eax
	movl	-20(%ebp), %ecx         ## 4-byte Reload
	movl	%eax, (%ecx)
	cmpb	$0, (%esi,%edi)
	je	LBB0_115
## BB#114:                              ## %select.mid145
	orl	$2, %edx
LBB0_115:                               ## %select.end144
	movl	-32(%ebp), %ecx         ## 4-byte Reload
	movl	%edx, %esi
LBB0_12:
	movl	20(%ebp), %eax
	movl	%ecx, (%eax)
	movl	%ebx, 4(%eax)
LBB0_13:
	movl	%esi, %ebx
LBB0_14:
	movl	%ebx, %eax
	addl	$76, %esp
	popl	%esi
	popl	%edi
	popl	%ebx
	popl	%ebp
	retl
LBB0_222:
	movl	%esi, %eax
	movl	-40(%ebp), %ebx         ## 4-byte Reload
	mull	%ebx
	movl	%eax, -32(%ebp)         ## 4-byte Spill
	movl	%edx, %eax
	movl	-48(%ebp), %ecx         ## 4-byte Reload
	imull	%esi, %ecx
	addl	%eax, %ecx
	movl	-64(%ebp), %edx         ## 4-byte Reload
	imull	%ebx, %edx
LBB0_223:                               ## %bkm_scale.exit.i44.5
	addl	%ecx, %edx
	xorl	%eax, %eax
	movl	%edx, %ebx
	jmp	LBB0_224
	.align	2, 0x90
L0_0_set_60 = LBB0_60-L0$pb
L0_0_set_113 = LBB0_113-L0$pb
L0_0_set_16 = LBB0_16-L0$pb
L0_0_set_84 = LBB0_84-L0$pb
L0_0_set_105 = LBB0_105-L0$pb
L0_0_set_116 = LBB0_116-L0$pb
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
L0_1_set_63 = LBB0_63-L0$pb
L0_1_set_16 = LBB0_16-L0$pb
L0_1_set_84 = LBB0_84-L0$pb
L0_1_set_105 = LBB0_105-L0$pb
L0_1_set_116 = LBB0_116-L0$pb
L0_1_set_130 = LBB0_130-L0$pb
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

	.section	__TEXT,__cstring,cstring_literals
L___func__.xstrtoimax:                  ## @__func__.xstrtoimax
	.asciz	"xstrtoimax"

L_.str:                                 ## @.str
	.asciz	"lib/xstrtol.c"

L_.str1:                                ## @.str1
	.asciz	"0 <= strtol_base && strtol_base <= 36"


.subsections_via_symbols
