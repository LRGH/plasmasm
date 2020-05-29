	.section	__TEXT,__text,regular,pure_instructions
	.macosx_version_min 10, 13
	.private_extern	_inflate_table
	.globl	_inflate_table
	.p2align	4, 0x90
_inflate_table:                         ## @inflate_table
	.cfi_startproc
## BB#0:
	pushq	%rbp
Lcfi0:
	.cfi_def_cfa_offset 16
Lcfi1:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Lcfi2:
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$152, %rsp
Lcfi3:
	.cfi_offset %rbx, -56
Lcfi4:
	.cfi_offset %r12, -48
Lcfi5:
	.cfi_offset %r13, -40
Lcfi6:
	.cfi_offset %r14, -32
Lcfi7:
	.cfi_offset %r15, -24
	movq	___stack_chk_guard@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, -48(%rbp)
	xorps	%xmm0, %xmm0
	movaps	%xmm0, -64(%rbp)
	movaps	%xmm0, -80(%rbp)
	testl	%edx, %edx
	je	LBB0_135
## BB#1:
	movl	%edx, %r14d
	leaq	-1(%r14), %r11
	movq	%r14, %r10
	xorl	%eax, %eax
	andq	$3, %r10
	je	LBB0_3
	.p2align	4, 0x90
LBB0_2:                                 ## =>This Inner Loop Header: Depth=1
	movzwl	(%rsi,%rax,2), %ebx
	incw	-80(%rbp,%rbx,2)
	incq	%rax
	cmpq	%rax, %r10
	jne	LBB0_2
LBB0_3:
	cmpq	$3, %r11
	jb	LBB0_6
## BB#4:
	subq	%rax, %r14
	leaq	6(%rsi,%rax,2), %rbx
	.p2align	4, 0x90
LBB0_5:                                 ## =>This Inner Loop Header: Depth=1
	movzwl	-6(%rbx), %eax
	incw	-80(%rbp,%rax,2)
	movzwl	-4(%rbx), %eax
	incw	-80(%rbp,%rax,2)
	movzwl	-2(%rbx), %eax
	incw	-80(%rbp,%rax,2)
	movzwl	(%rbx), %eax
	incw	-80(%rbp,%rax,2)
	addq	$8, %rbx
	addq	$-4, %r14
	jne	LBB0_5
LBB0_6:
	movw	-50(%rbp), %r15w
	movl	(%r8), %r11d
	movl	$15, %r14d
	testw	%r15w, %r15w
	jne	LBB0_10
	jmp	LBB0_7
LBB0_135:
	movl	(%r8), %r11d
LBB0_7:
	cmpw	$0, -52(%rbp)
	je	LBB0_109
## BB#8:
	movl	$14, %r14d
	jmp	LBB0_9
LBB0_109:
	cmpw	$0, -54(%rbp)
	je	LBB0_111
## BB#110:
	movl	$13, %r14d
	jmp	LBB0_9
LBB0_111:
	cmpw	$0, -56(%rbp)
	je	LBB0_113
## BB#112:
	movl	$12, %r14d
	jmp	LBB0_9
LBB0_113:
	cmpw	$0, -58(%rbp)
	je	LBB0_115
## BB#114:
	movl	$11, %r14d
	jmp	LBB0_9
LBB0_115:
	cmpw	$0, -60(%rbp)
	je	LBB0_117
## BB#116:
	movl	$10, %r14d
	jmp	LBB0_9
LBB0_117:
	cmpw	$0, -62(%rbp)
	je	LBB0_119
## BB#118:
	movl	$9, %r14d
	jmp	LBB0_9
LBB0_119:
	cmpw	$0, -64(%rbp)
	je	LBB0_121
## BB#120:
	movl	$8, %r14d
	jmp	LBB0_9
LBB0_121:
	cmpw	$0, -66(%rbp)
	je	LBB0_123
## BB#122:
	movl	$7, %r14d
	jmp	LBB0_9
LBB0_123:
	cmpw	$0, -68(%rbp)
	je	LBB0_125
## BB#124:
	movl	$6, %r14d
	jmp	LBB0_9
LBB0_125:
	cmpw	$0, -70(%rbp)
	je	LBB0_127
## BB#126:
	movl	$5, %r14d
	jmp	LBB0_9
LBB0_127:
	cmpw	$0, -72(%rbp)
	je	LBB0_129
## BB#128:
	movl	$4, %r14d
	jmp	LBB0_9
LBB0_129:
	cmpw	$0, -74(%rbp)
	je	LBB0_131
## BB#130:
	movl	$3, %r14d
	jmp	LBB0_9
LBB0_131:
	cmpw	$0, -76(%rbp)
	je	LBB0_133
## BB#132:
	movl	$2, %r14d
LBB0_9:
	xorl	%r15d, %r15d
LBB0_10:
	cmpl	%r14d, %r11d
	cmoval	%r14d, %r11d
	movl	$1, %ebx
	.p2align	4, 0x90
LBB0_11:                                ## =>This Inner Loop Header: Depth=1
	cmpw	$0, -80(%rbp,%rbx,2)
	jne	LBB0_13
## BB#12:                               ##   in Loop: Header=BB0_11 Depth=1
	incq	%rbx
	cmpl	%r14d, %ebx
	jb	LBB0_11
LBB0_13:
	cmpl	%ebx, %r11d
	cmovbl	%ebx, %r11d
	movzwl	-78(%rbp), %r10d
	movl	$2, %r13d
	subl	%r10d, %r13d
	movl	$-1, %eax
	js	LBB0_74
## BB#14:
	movl	%edi, -116(%rbp)        ## 4-byte Spill
	addl	%r13d, %r13d
	movzwl	-76(%rbp), %r12d
	subl	%r12d, %r13d
	js	LBB0_74
## BB#15:
	movq	%r9, -160(%rbp)         ## 8-byte Spill
	addl	%r13d, %r13d
	movzwl	-74(%rbp), %r9d
	subl	%r9d, %r13d
	js	LBB0_74
## BB#16:
	movq	%rcx, -152(%rbp)        ## 8-byte Spill
	addl	%r13d, %r13d
	movzwl	-72(%rbp), %ecx
	subl	%ecx, %r13d
	js	LBB0_74
## BB#17:
	movq	%r8, -192(%rbp)         ## 8-byte Spill
	addl	%r13d, %r13d
	movzwl	-70(%rbp), %edi
	subl	%edi, %r13d
	js	LBB0_74
## BB#18:
	movl	%ecx, -128(%rbp)        ## 4-byte Spill
	addl	%r13d, %r13d
	movzwl	-68(%rbp), %ecx
	subl	%ecx, %r13d
	js	LBB0_74
## BB#19:
	movl	%ecx, -124(%rbp)        ## 4-byte Spill
	movl	%edi, -120(%rbp)        ## 4-byte Spill
	addl	%r13d, %r13d
	movzwl	-66(%rbp), %r8d
	movl	%r8d, -132(%rbp)        ## 4-byte Spill
	subl	%r8d, %r13d
	js	LBB0_74
## BB#20:
	addl	%r13d, %r13d
	movzwl	-64(%rbp), %r8d
	subl	%r8d, %r13d
	js	LBB0_74
## BB#21:
	addl	%r13d, %r13d
	movzwl	-62(%rbp), %ecx
	subl	%ecx, %r13d
	js	LBB0_74
## BB#22:
	addl	%r13d, %r13d
	movzwl	-60(%rbp), %edi
	movl	%edi, -176(%rbp)        ## 4-byte Spill
	subl	%edi, %r13d
	js	LBB0_74
## BB#23:
	addl	%r13d, %r13d
	movzwl	-58(%rbp), %edi
	subl	%edi, %r13d
	js	LBB0_74
## BB#24:
	movl	%edi, -168(%rbp)        ## 4-byte Spill
	addl	%r13d, %r13d
	movzwl	-56(%rbp), %edi
	movl	%edi, -144(%rbp)        ## 4-byte Spill
	subl	%edi, %r13d
	js	LBB0_74
## BB#25:
	addl	%r13d, %r13d
	movzwl	-54(%rbp), %edi
	subl	%edi, %r13d
	js	LBB0_74
## BB#26:
	movl	%edi, -136(%rbp)        ## 4-byte Spill
	addl	%r13d, %r13d
	movzwl	-52(%rbp), %edi
	movl	%edi, -184(%rbp)        ## 4-byte Spill
	subl	%edi, %r13d
	js	LBB0_74
## BB#27:
	movl	%ecx, -180(%rbp)        ## 4-byte Spill
	addl	%r13d, %r13d
	movzwl	%r15w, %edi
	subl	%edi, %r13d
	js	LBB0_74
## BB#28:
	movl	%r8d, %r15d
	testl	%r13d, %r13d
	movl	-124(%rbp), %r8d        ## 4-byte Reload
	movl	-120(%rbp), %edi        ## 4-byte Reload
	movl	-128(%rbp), %ecx        ## 4-byte Reload
	je	LBB0_31
## BB#29:
	cmpl	$0, -116(%rbp)          ## 4-byte Folded Reload
	je	LBB0_74
## BB#30:
	cmpl	$1, %r14d
	jne	LBB0_74
LBB0_31:
	addl	%r10d, %r12d
	movw	$0, -110(%rbp)
	movw	%r10w, -108(%rbp)
	addl	%r12d, %r9d
	movw	%r12w, -106(%rbp)
	addl	%r9d, %ecx
	movw	%r9w, -104(%rbp)
	addl	%ecx, %edi
	movw	%cx, -102(%rbp)
	addl	%edi, %r8d
	movw	%di, -100(%rbp)
	movl	-132(%rbp), %eax        ## 4-byte Reload
	addl	%r8d, %eax
	movw	%r8w, -98(%rbp)
	addl	%eax, %r15d
	movw	%ax, -96(%rbp)
	movl	-180(%rbp), %eax        ## 4-byte Reload
	addl	%r15d, %eax
	movw	%r15w, -94(%rbp)
	movl	-176(%rbp), %ecx        ## 4-byte Reload
	addl	%eax, %ecx
	movw	%ax, -92(%rbp)
	movl	-168(%rbp), %eax        ## 4-byte Reload
	addl	%ecx, %eax
	movw	%cx, -90(%rbp)
	movl	-144(%rbp), %ecx        ## 4-byte Reload
	addl	%eax, %ecx
	movw	%ax, -88(%rbp)
	movl	-136(%rbp), %eax        ## 4-byte Reload
	addl	%ecx, %eax
	movw	%cx, -86(%rbp)
	movl	-184(%rbp), %ecx        ## 4-byte Reload
	addl	%eax, %ecx
	movw	%ax, -84(%rbp)
	movw	%cx, -82(%rbp)
	testl	%edx, %edx
	movq	-160(%rbp), %r15        ## 8-byte Reload
	movl	-116(%rbp), %r12d       ## 4-byte Reload
	je	LBB0_43
## BB#32:
	movl	%edx, %r10d
	testb	$1, %r10b
	jne	LBB0_34
## BB#33:
	xorl	%ecx, %ecx
	cmpl	$1, %edx
	jne	LBB0_38
	jmp	LBB0_43
LBB0_34:
	movzwl	(%rsi), %ecx
	testq	%rcx, %rcx
	je	LBB0_36
## BB#35:
	movzwl	-112(%rbp,%rcx,2), %r9d
	leal	1(%r9), %edi
	movw	%di, -112(%rbp,%rcx,2)
	movw	$0, (%r15,%r9,2)
LBB0_36:
	movl	$1, %ecx
	cmpl	$1, %edx
	je	LBB0_43
LBB0_38:                                ## =>This Inner Loop Header: Depth=1
	movzwl	(%rsi,%rcx,2), %edx
	testq	%rdx, %rdx
	je	LBB0_40
## BB#39:                               ##   in Loop: Header=BB0_38 Depth=1
	movzwl	-112(%rbp,%rdx,2), %edi
	leal	1(%rdi), %eax
	movw	%ax, -112(%rbp,%rdx,2)
	movw	%cx, (%r15,%rdi,2)
LBB0_40:                                ##   in Loop: Header=BB0_38 Depth=1
	movzwl	2(%rsi,%rcx,2), %edx
	testq	%rdx, %rdx
	je	LBB0_42
## BB#41:                               ##   in Loop: Header=BB0_38 Depth=1
	leal	1(%rcx), %r8d
	movzwl	-112(%rbp,%rdx,2), %edi
	leal	1(%rdi), %eax
	movw	%ax, -112(%rbp,%rdx,2)
	movw	%r8w, (%r15,%rdi,2)
LBB0_42:                                ##   in Loop: Header=BB0_38 Depth=1
	addq	$2, %rcx
	cmpq	%rcx, %r10
	jne	LBB0_38
LBB0_43:
	xorl	%r10d, %r10d
	testl	%r12d, %r12d
	je	LBB0_44
## BB#45:
	cmpl	$1, %r12d
	jne	LBB0_51
## BB#46:
	movl	$1, %eax
	movl	$1, %edx
	movl	%r11d, %ecx
	shll	%cl, %edx
	cmpl	$9, %r11d
	ja	LBB0_74
## BB#47:
	movq	-152(%rbp), %rax        ## 8-byte Reload
	movq	(%rax), %r13
	movq	%rdx, -144(%rbp)        ## 8-byte Spill
	leal	-1(%rdx), %eax
	movl	%eax, -120(%rbp)        ## 4-byte Spill
	movl	$-1, -124(%rbp)         ## 4-byte Folded Spill
	xorl	%edx, %edx
	movl	%r11d, %ecx
	xorl	%r15d, %r15d
	xorl	%r8d, %r8d
	jmp	LBB0_48
LBB0_44:
	movl	$19, %r12d
	movl	$0, -136(%rbp)          ## 4-byte Folded Spill
	movq	%r15, -176(%rbp)        ## 8-byte Spill
	movq	%r15, -168(%rbp)        ## 8-byte Spill
	jmp	LBB0_53
LBB0_51:
	cmpl	$2, %r12d
	sete	%al
	movl	%eax, -136(%rbp)        ## 4-byte Spill
	movl	$-1, %r12d
	leaq	_inflate_table.dext(%rip), %rax
	movq	%rax, -168(%rbp)        ## 8-byte Spill
	leaq	_inflate_table.dbase(%rip), %rax
	movq	%rax, -176(%rbp)        ## 8-byte Spill
	jne	LBB0_53
## BB#52:
	movl	$1, %eax
	cmpl	$9, %r11d
	ja	LBB0_74
LBB0_53:
	movl	$1, %edx
	movl	%r11d, %ecx
	shll	%cl, %edx
	movq	-152(%rbp), %rax        ## 8-byte Reload
	movq	(%rax), %r13
	movq	%rdx, -144(%rbp)        ## 8-byte Spill
	leal	-1(%rdx), %eax
	movl	%eax, -132(%rbp)        ## 4-byte Spill
	movl	$-1, -120(%rbp)         ## 4-byte Folded Spill
	movl	%r11d, %ecx
	movl	$0, %r15d
	xorl	%r8d, %r8d
	movl	%r12d, -124(%rbp)       ## 4-byte Spill
	jmp	LBB0_54
LBB0_105:                               ##   in Loop: Header=BB0_54 Depth=1
	subl	%r15d, %ecx
LBB0_106:                               ##   in Loop: Header=BB0_54 Depth=1
	movl	$1, %eax
	movl	$1, %r9d
	shll	%cl, %r9d
	movq	-144(%rbp), %rdx        ## 8-byte Reload
	addl	%r9d, %edx
	movq	%rdx, %r9
	cmpl	$592, %r9d              ## imm = 0x250
	seta	%dl
	testb	-136(%rbp), %dl         ## 1-byte Folded Reload
	jne	LBB0_74
## BB#107:                              ##   in Loop: Header=BB0_54 Depth=1
	movq	%r9, -144(%rbp)         ## 8-byte Spill
	movl	-128(%rbp), %eax        ## 4-byte Reload
	leaq	(%r13,%rax,4), %r13
	movq	-152(%rbp), %rax        ## 8-byte Reload
	movq	(%rax), %rax
	movl	%edi, %r9d
	movb	%cl, (%rax,%r9,4)
	movb	%r11b, 1(%rax,%r9,4)
	movl	%r13d, %edx
	subl	%eax, %edx
	shrl	$2, %edx
	movw	%dx, 2(%rax,%r9,4)
	movl	%edi, -120(%rbp)        ## 4-byte Spill
LBB0_54:                                ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB0_55 Depth 2
                                        ##       Child Loop BB0_90 Depth 3
                                        ##       Child Loop BB0_92 Depth 3
                                        ##     Child Loop BB0_103 Depth 2
	movl	$1, %eax
                                        ## kill: %CL<def> %CL<kill> %RCX<kill>
	shll	%cl, %eax
	movl	%eax, -128(%rbp)        ## 4-byte Spill
LBB0_55:                                ##   Parent Loop BB0_54 Depth=1
                                        ## =>  This Loop Header: Depth=2
                                        ##       Child Loop BB0_90 Depth 3
                                        ##       Child Loop BB0_92 Depth 3
	movl	%ebx, %r9d
	subl	%r15d, %r9d
	movl	%r10d, %eax
	movq	-160(%rbp), %rcx        ## 8-byte Reload
	movw	(%rcx,%rax,2), %ax
	movzwl	%ax, %ecx
	cmpl	%r12d, %ecx
	movl	%r10d, -116(%rbp)       ## 4-byte Spill
	jge	LBB0_86
## BB#56:                               ##   in Loop: Header=BB0_55 Depth=2
	xorl	%edi, %edi
	jmp	LBB0_89
LBB0_86:                                ##   in Loop: Header=BB0_55 Depth=2
	cmpl	%r12d, %ecx
	jle	LBB0_87
## BB#88:                               ##   in Loop: Header=BB0_55 Depth=2
	movq	-168(%rbp), %rax        ## 8-byte Reload
	movb	(%rax,%rcx,2), %dil
	movq	-176(%rbp), %rax        ## 8-byte Reload
	movw	(%rax,%rcx,2), %ax
	jmp	LBB0_89
LBB0_87:                                ##   in Loop: Header=BB0_55 Depth=2
	movb	$96, %dil
	xorl	%eax, %eax
LBB0_89:                                ##   in Loop: Header=BB0_55 Depth=2
	movl	$1, %r10d
	movl	%r9d, %ecx
	shll	%cl, %r10d
	movl	%r8d, %r12d
	movl	%r15d, %edx
	movl	%r15d, %ecx
	shrl	%cl, %r12d
	subl	%r10d, %r12d
	movl	-128(%rbp), %ecx        ## 4-byte Reload
                                        ## kill: %ECX<def> %ECX<kill> %RCX<def>
	.p2align	4, 0x90
LBB0_90:                                ##   Parent Loop BB0_54 Depth=1
                                        ##     Parent Loop BB0_55 Depth=2
                                        ## =>    This Inner Loop Header: Depth=3
	leal	(%r12,%rcx), %r15d
	subl	%r10d, %ecx
	movb	%dil, (%r13,%r15,4)
	movb	%r9b, 1(%r13,%r15,4)
	movw	%ax, 2(%r13,%r15,4)
	jne	LBB0_90
## BB#91:                               ##   in Loop: Header=BB0_55 Depth=2
	leal	-1(%rbx), %ecx
	movl	$1, %edi
                                        ## kill: %CL<def> %CL<kill> %ECX<kill>
	shll	%cl, %edi
	.p2align	4, 0x90
LBB0_92:                                ##   Parent Loop BB0_54 Depth=1
                                        ##     Parent Loop BB0_55 Depth=2
                                        ## =>    This Inner Loop Header: Depth=3
	movl	%edi, %eax
	shrl	%edi
	testl	%r8d, %eax
	jne	LBB0_92
## BB#93:                               ##   in Loop: Header=BB0_55 Depth=2
	testl	%eax, %eax
	movq	-152(%rbp), %rdi        ## 8-byte Reload
	movl	-116(%rbp), %r10d       ## 4-byte Reload
	movl	-124(%rbp), %r12d       ## 4-byte Reload
	je	LBB0_94
## BB#95:                               ##   in Loop: Header=BB0_55 Depth=2
	leal	-1(%rax), %ecx
	andl	%r8d, %ecx
	addl	%eax, %ecx
	movl	%ecx, %r8d
	jmp	LBB0_96
LBB0_94:                                ##   in Loop: Header=BB0_55 Depth=2
	xorl	%r8d, %r8d
LBB0_96:                                ##   in Loop: Header=BB0_55 Depth=2
	incl	%r10d
	movl	%ebx, %eax
	decw	-80(%rbp,%rax,2)
	movl	%edx, %r15d
	jne	LBB0_99
## BB#97:                               ##   in Loop: Header=BB0_55 Depth=2
	cmpl	%r14d, %ebx
	je	LBB0_70
## BB#98:                               ##   in Loop: Header=BB0_55 Depth=2
	movl	%r10d, %eax
	movq	-160(%rbp), %rcx        ## 8-byte Reload
	movzwl	(%rcx,%rax,2), %eax
	movzwl	(%rsi,%rax,2), %ebx
LBB0_99:                                ##   in Loop: Header=BB0_55 Depth=2
	cmpl	%r11d, %ebx
	jbe	LBB0_55
## BB#100:                              ##   in Loop: Header=BB0_55 Depth=2
	movl	%r8d, %edi
	andl	-132(%rbp), %edi        ## 4-byte Folded Reload
	cmpl	-120(%rbp), %edi        ## 4-byte Folded Reload
	je	LBB0_55
## BB#101:                              ##   in Loop: Header=BB0_54 Depth=1
	testl	%r15d, %r15d
	cmovel	%r11d, %r15d
	movl	%ebx, %ecx
	subl	%r15d, %ecx
	cmpl	%r14d, %ebx
	jae	LBB0_106
## BB#102:                              ##   in Loop: Header=BB0_54 Depth=1
	movl	$1, %r9d
                                        ## kill: %CL<def> %CL<kill> %RCX<kill>
	shll	%cl, %r9d
	movl	%ebx, %ecx
LBB0_103:                               ##   Parent Loop BB0_54 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	movzwl	-80(%rbp,%rcx,2), %eax
	subl	%eax, %r9d
	jle	LBB0_105
## BB#104:                              ##   in Loop: Header=BB0_103 Depth=2
	addl	%r9d, %r9d
	incq	%rcx
	cmpl	%r14d, %ecx
	jb	LBB0_103
	jmp	LBB0_105
LBB0_83:                                ##   in Loop: Header=BB0_48 Depth=1
	subl	%r12d, %ecx
LBB0_84:                                ##   in Loop: Header=BB0_48 Depth=1
	movl	$1, %eax
	movl	$1, %r9d
	shll	%cl, %r9d
	movq	-144(%rbp), %rdx        ## 8-byte Reload
	addl	%r9d, %edx
	cmpl	$852, %edx              ## imm = 0x354
	ja	LBB0_74
## BB#85:                               ##   in Loop: Header=BB0_48 Depth=1
	movq	%rdx, -144(%rbp)        ## 8-byte Spill
	movl	-116(%rbp), %eax        ## 4-byte Reload
	leaq	(%r13,%rax,4), %r13
	movq	-152(%rbp), %rax        ## 8-byte Reload
	movq	(%rax), %r10
	movl	%edi, %r9d
	movb	%cl, (%r10,%r9,4)
	movb	%r11b, 1(%r10,%r9,4)
	movl	%r13d, %eax
	subl	%r10d, %eax
	shrl	$2, %eax
	movw	%ax, 2(%r10,%r9,4)
	movl	%edi, -124(%rbp)        ## 4-byte Spill
	movl	-132(%rbp), %edx        ## 4-byte Reload
	movl	%r12d, %r15d
LBB0_48:                                ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB0_49 Depth 2
                                        ##       Child Loop BB0_61 Depth 3
                                        ##       Child Loop BB0_63 Depth 3
                                        ##     Child Loop BB0_81 Depth 2
	movl	$1, %eax
                                        ## kill: %CL<def> %CL<kill> %RCX<kill>
	shll	%cl, %eax
	movl	%eax, -116(%rbp)        ## 4-byte Spill
	movl	%r15d, -128(%rbp)       ## 4-byte Spill
LBB0_49:                                ##   Parent Loop BB0_48 Depth=1
                                        ## =>  This Loop Header: Depth=2
                                        ##       Child Loop BB0_61 Depth 3
                                        ##       Child Loop BB0_63 Depth 3
	movl	%ebx, %r9d
	subl	%r15d, %r9d
	movl	%edx, %eax
	movq	-160(%rbp), %rcx        ## 8-byte Reload
	movzwl	(%rcx,%rax,2), %r10d
	cmpq	$256, %r10              ## imm = 0x100
	jae	LBB0_57
## BB#50:                               ##   in Loop: Header=BB0_49 Depth=2
	xorl	%eax, %eax
	jmp	LBB0_60
LBB0_57:                                ##   in Loop: Header=BB0_49 Depth=2
	movzwl	%r10w, %eax
	cmpl	$256, %eax              ## imm = 0x100
	jne	LBB0_59
## BB#58:                               ##   in Loop: Header=BB0_49 Depth=2
	movb	$96, %al
	xorl	%r10d, %r10d
	jmp	LBB0_60
LBB0_59:                                ##   in Loop: Header=BB0_49 Depth=2
	leaq	_inflate_table.lext(%rip), %rax
	movb	-514(%rax,%r10,2), %al
	leaq	_inflate_table.lbase(%rip), %rcx
	movw	-514(%rcx,%r10,2), %r10w
LBB0_60:                                ##   in Loop: Header=BB0_49 Depth=2
	movl	$1, %edi
	movl	%r9d, %ecx
	shll	%cl, %edi
	movl	%r8d, %r12d
	movl	%r15d, %ecx
	shrl	%cl, %r12d
	subl	%edi, %r12d
	movl	-116(%rbp), %ecx        ## 4-byte Reload
                                        ## kill: %ECX<def> %ECX<kill> %RCX<def>
	.p2align	4, 0x90
LBB0_61:                                ##   Parent Loop BB0_48 Depth=1
                                        ##     Parent Loop BB0_49 Depth=2
                                        ## =>    This Inner Loop Header: Depth=3
	leal	(%r12,%rcx), %r15d
	subl	%edi, %ecx
	movb	%al, (%r13,%r15,4)
	movb	%r9b, 1(%r13,%r15,4)
	movw	%r10w, 2(%r13,%r15,4)
	jne	LBB0_61
## BB#62:                               ##   in Loop: Header=BB0_49 Depth=2
	leal	-1(%rbx), %ecx
	movl	$1, %edi
                                        ## kill: %CL<def> %CL<kill> %ECX<kill>
	shll	%cl, %edi
	.p2align	4, 0x90
LBB0_63:                                ##   Parent Loop BB0_48 Depth=1
                                        ##     Parent Loop BB0_49 Depth=2
                                        ## =>    This Inner Loop Header: Depth=3
	movl	%edi, %eax
	shrl	%edi
	testl	%r8d, %eax
	jne	LBB0_63
## BB#64:                               ##   in Loop: Header=BB0_49 Depth=2
	testl	%eax, %eax
	je	LBB0_65
## BB#66:                               ##   in Loop: Header=BB0_49 Depth=2
	leal	-1(%rax), %ecx
	andl	%r8d, %ecx
	addl	%eax, %ecx
	movl	%ecx, %r8d
	jmp	LBB0_67
LBB0_65:                                ##   in Loop: Header=BB0_49 Depth=2
	xorl	%r8d, %r8d
LBB0_67:                                ##   in Loop: Header=BB0_49 Depth=2
	incl	%edx
	movl	%ebx, %eax
	decw	-80(%rbp,%rax,2)
	movl	-128(%rbp), %r15d       ## 4-byte Reload
	jne	LBB0_77
## BB#68:                               ##   in Loop: Header=BB0_49 Depth=2
	cmpl	%r14d, %ebx
	je	LBB0_69
## BB#76:                               ##   in Loop: Header=BB0_49 Depth=2
	movl	%edx, %eax
	movq	-160(%rbp), %rcx        ## 8-byte Reload
	movzwl	(%rcx,%rax,2), %eax
	movzwl	(%rsi,%rax,2), %ebx
LBB0_77:                                ##   in Loop: Header=BB0_49 Depth=2
	cmpl	%r11d, %ebx
	jbe	LBB0_49
## BB#78:                               ##   in Loop: Header=BB0_49 Depth=2
	movl	%r8d, %edi
	andl	-120(%rbp), %edi        ## 4-byte Folded Reload
	cmpl	-124(%rbp), %edi        ## 4-byte Folded Reload
	je	LBB0_49
## BB#79:                               ##   in Loop: Header=BB0_48 Depth=1
	movl	%edx, -132(%rbp)        ## 4-byte Spill
	testl	%r15d, %r15d
	cmovel	%r11d, %r15d
	movl	%ebx, %ecx
	movl	%r15d, %r12d
	subl	%r15d, %ecx
	cmpl	%r14d, %ebx
	jae	LBB0_84
## BB#80:                               ##   in Loop: Header=BB0_48 Depth=1
	movl	$1, %r9d
                                        ## kill: %CL<def> %CL<kill> %RCX<kill>
	shll	%cl, %r9d
	movl	%ebx, %ecx
LBB0_81:                                ##   Parent Loop BB0_48 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	movzwl	-80(%rbp,%rcx,2), %eax
	subl	%eax, %r9d
	jle	LBB0_83
## BB#82:                               ##   in Loop: Header=BB0_81 Depth=2
	addl	%r9d, %r9d
	incq	%rcx
	cmpl	%r14d, %ecx
	jb	LBB0_81
	jmp	LBB0_83
LBB0_69:
	movq	-152(%rbp), %rdi        ## 8-byte Reload
LBB0_70:
	testl	%r8d, %r8d
	je	LBB0_72
## BB#71:
	movl	%r8d, %eax
	movb	$64, (%r13,%rax,4)
	movb	%r9b, 1(%r13,%rax,4)
	movw	$0, 2(%r13,%rax,4)
LBB0_72:
	movl	-144(%rbp), %eax        ## 4-byte Reload
	shlq	$2, %rax
	addq	%rax, (%rdi)
	movq	-192(%rbp), %rax        ## 8-byte Reload
	movl	%r11d, (%rax)
LBB0_73:
	xorl	%eax, %eax
LBB0_74:
	movq	___stack_chk_guard@GOTPCREL(%rip), %rcx
	movq	(%rcx), %rcx
	cmpq	-48(%rbp), %rcx
	jne	LBB0_75
## BB#108:
	addq	$152, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
LBB0_133:
	cmpw	$0, -78(%rbp)
	je	LBB0_134
## BB#136:
	xorl	%eax, %eax
	testl	%r11d, %r11d
	setne	%al
	movl	$1, %r14d
	xorl	%r15d, %r15d
	movl	%eax, %r11d
	movl	$1, %ebx
	jmp	LBB0_13
LBB0_75:
	callq	___stack_chk_fail
LBB0_134:
	movq	%rcx, %rdx
	movq	(%rdx), %rax
	leaq	4(%rax), %rcx
	movq	%rcx, (%rdx)
	movb	$64, (%rax)
	movb	$1, 1(%rax)
	movw	$0, 2(%rax)
	movq	(%rdx), %rax
	leaq	4(%rax), %rcx
	movq	%rcx, (%rdx)
	movb	$64, (%rax)
	movb	$1, 1(%rax)
	movw	$0, 2(%rax)
	movl	$1, (%r8)
	jmp	LBB0_73
	.cfi_endproc

	.section	__TEXT,__const
	.globl	_inflate_copyright      ## @inflate_copyright
	.p2align	4
_inflate_copyright:
	.asciz	" inflate 1.2.8 Copyright 1995-2013 Mark Adler "

	.p2align	4               ## @inflate_table.lbase
_inflate_table.lbase:
	.short	3                       ## 0x3
	.short	4                       ## 0x4
	.short	5                       ## 0x5
	.short	6                       ## 0x6
	.short	7                       ## 0x7
	.short	8                       ## 0x8
	.short	9                       ## 0x9
	.short	10                      ## 0xa
	.short	11                      ## 0xb
	.short	13                      ## 0xd
	.short	15                      ## 0xf
	.short	17                      ## 0x11
	.short	19                      ## 0x13
	.short	23                      ## 0x17
	.short	27                      ## 0x1b
	.short	31                      ## 0x1f
	.short	35                      ## 0x23
	.short	43                      ## 0x2b
	.short	51                      ## 0x33
	.short	59                      ## 0x3b
	.short	67                      ## 0x43
	.short	83                      ## 0x53
	.short	99                      ## 0x63
	.short	115                     ## 0x73
	.short	131                     ## 0x83
	.short	163                     ## 0xa3
	.short	195                     ## 0xc3
	.short	227                     ## 0xe3
	.short	258                     ## 0x102
	.short	0                       ## 0x0
	.short	0                       ## 0x0

	.p2align	4               ## @inflate_table.lext
_inflate_table.lext:
	.short	16                      ## 0x10
	.short	16                      ## 0x10
	.short	16                      ## 0x10
	.short	16                      ## 0x10
	.short	16                      ## 0x10
	.short	16                      ## 0x10
	.short	16                      ## 0x10
	.short	16                      ## 0x10
	.short	17                      ## 0x11
	.short	17                      ## 0x11
	.short	17                      ## 0x11
	.short	17                      ## 0x11
	.short	18                      ## 0x12
	.short	18                      ## 0x12
	.short	18                      ## 0x12
	.short	18                      ## 0x12
	.short	19                      ## 0x13
	.short	19                      ## 0x13
	.short	19                      ## 0x13
	.short	19                      ## 0x13
	.short	20                      ## 0x14
	.short	20                      ## 0x14
	.short	20                      ## 0x14
	.short	20                      ## 0x14
	.short	21                      ## 0x15
	.short	21                      ## 0x15
	.short	21                      ## 0x15
	.short	21                      ## 0x15
	.short	16                      ## 0x10
	.short	72                      ## 0x48
	.short	78                      ## 0x4e

	.p2align	4               ## @inflate_table.dbase
_inflate_table.dbase:
	.short	1                       ## 0x1
	.short	2                       ## 0x2
	.short	3                       ## 0x3
	.short	4                       ## 0x4
	.short	5                       ## 0x5
	.short	7                       ## 0x7
	.short	9                       ## 0x9
	.short	13                      ## 0xd
	.short	17                      ## 0x11
	.short	25                      ## 0x19
	.short	33                      ## 0x21
	.short	49                      ## 0x31
	.short	65                      ## 0x41
	.short	97                      ## 0x61
	.short	129                     ## 0x81
	.short	193                     ## 0xc1
	.short	257                     ## 0x101
	.short	385                     ## 0x181
	.short	513                     ## 0x201
	.short	769                     ## 0x301
	.short	1025                    ## 0x401
	.short	1537                    ## 0x601
	.short	2049                    ## 0x801
	.short	3073                    ## 0xc01
	.short	4097                    ## 0x1001
	.short	6145                    ## 0x1801
	.short	8193                    ## 0x2001
	.short	12289                   ## 0x3001
	.short	16385                   ## 0x4001
	.short	24577                   ## 0x6001
	.short	0                       ## 0x0
	.short	0                       ## 0x0

	.p2align	4               ## @inflate_table.dext
_inflate_table.dext:
	.short	16                      ## 0x10
	.short	16                      ## 0x10
	.short	16                      ## 0x10
	.short	16                      ## 0x10
	.short	17                      ## 0x11
	.short	17                      ## 0x11
	.short	18                      ## 0x12
	.short	18                      ## 0x12
	.short	19                      ## 0x13
	.short	19                      ## 0x13
	.short	20                      ## 0x14
	.short	20                      ## 0x14
	.short	21                      ## 0x15
	.short	21                      ## 0x15
	.short	22                      ## 0x16
	.short	22                      ## 0x16
	.short	23                      ## 0x17
	.short	23                      ## 0x17
	.short	24                      ## 0x18
	.short	24                      ## 0x18
	.short	25                      ## 0x19
	.short	25                      ## 0x19
	.short	26                      ## 0x1a
	.short	26                      ## 0x1a
	.short	27                      ## 0x1b
	.short	27                      ## 0x1b
	.short	28                      ## 0x1c
	.short	28                      ## 0x1c
	.short	29                      ## 0x1d
	.short	29                      ## 0x1d
	.short	64                      ## 0x40
	.short	64                      ## 0x40


.subsections_via_symbols
