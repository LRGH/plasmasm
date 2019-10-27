	.section	__TEXT,__text,regular,pure_instructions
	.macosx_version_min 10, 12
	.globl	_usage
	.p2align	4, 0x90
_usage:                                 ## @usage
## BB#0:
	pushl	%ebp
	movl	%esp, %ebp
	pushl	%ebx
	pushl	%edi
	pushl	%esi
	subl	$12, %esp
	calll	L0$pb
L0$pb:
	popl	%edi
	movl	8(%ebp), %esi
	testl	%esi, %esi
	jne	LBB0_1
## BB#2:
	movl	L_program_name$non_lazy_ptr-L0$pb(%edi), %eax
	movl	(%eax), %eax
	subl	$4, %esp
	leal	L_.str-L0$pb(%edi), %ecx
	pushl	%eax
	pushl	%eax
	pushl	%ecx
	calll	_printf
	addl	$16, %esp
	movl	L___stdoutp$non_lazy_ptr-L0$pb(%edi), %ebx
	subl	$8, %esp
	leal	L_.str.1-L0$pb(%edi), %eax
	pushl	(%ebx)
	pushl	%eax
	calll	_fputs$UNIX2003
	addl	$8, %esp
	leal	L_.str.41-L0$pb(%edi), %eax
	pushl	(%ebx)
	pushl	%eax
	calll	_fputs$UNIX2003
	addl	$8, %esp
	leal	L_.str.2-L0$pb(%edi), %eax
	pushl	(%ebx)
	pushl	%eax
	calll	_fputs$UNIX2003
	addl	$8, %esp
	leal	L_.str.3-L0$pb(%edi), %eax
	pushl	(%ebx)
	pushl	%eax
	calll	_fputs$UNIX2003
	addl	$8, %esp
	leal	L_.str.4-L0$pb(%edi), %eax
	pushl	(%ebx)
	pushl	%eax
	calll	_fputs$UNIX2003
	addl	$8, %esp
	leal	L_.str.5-L0$pb(%edi), %eax
	pushl	(%ebx)
	pushl	%eax
	calll	_fputs$UNIX2003
	addl	$8, %esp
	leal	L_.str.6-L0$pb(%edi), %eax
	pushl	(%ebx)
	pushl	%eax
	calll	_fputs$UNIX2003
	addl	$8, %esp
	leal	L_.str.7-L0$pb(%edi), %eax
	pushl	(%ebx)
	pushl	%eax
	calll	_fputs$UNIX2003
	addl	$8, %esp
	leal	L_.str.8-L0$pb(%edi), %eax
	pushl	(%ebx)
	pushl	%eax
	calll	_fputs$UNIX2003
	addl	$8, %esp
	leal	L_.str.9-L0$pb(%edi), %eax
	pushl	(%ebx)
	pushl	%eax
	calll	_fputs$UNIX2003
	addl	$8, %esp
	leal	L_.str.10-L0$pb(%edi), %eax
	pushl	(%ebx)
	pushl	%eax
	calll	_fputs$UNIX2003
	addl	$8, %esp
	leal	L_.str.11-L0$pb(%edi), %eax
	pushl	(%ebx)
	pushl	%eax
	calll	_fputs$UNIX2003
	addl	$8, %esp
	leal	L_.str.12-L0$pb(%edi), %eax
	pushl	(%ebx)
	pushl	%eax
	calll	_fputs$UNIX2003
	addl	$8, %esp
	leal	L_.str.13-L0$pb(%edi), %eax
	pushl	(%ebx)
	pushl	%eax
	calll	_fputs$UNIX2003
	addl	$8, %esp
	leal	L_.str.14-L0$pb(%edi), %eax
	pushl	(%ebx)
	pushl	%eax
	calll	_fputs$UNIX2003
	addl	$8, %esp
	leal	L_.str.15-L0$pb(%edi), %eax
	pushl	(%ebx)
	pushl	%eax
	calll	_fputs$UNIX2003
	addl	$8, %esp
	leal	L_.str.16-L0$pb(%edi), %eax
	pushl	(%ebx)
	pushl	%eax
	calll	_fputs$UNIX2003
	addl	$8, %esp
	leal	L_.str.17-L0$pb(%edi), %eax
	pushl	(%ebx)
	pushl	%eax
	calll	_fputs$UNIX2003
	addl	$8, %esp
	leal	L_.str.18-L0$pb(%edi), %eax
	pushl	(%ebx)
	pushl	%eax
	calll	_fputs$UNIX2003
	addl	$8, %esp
	leal	L_.str.19-L0$pb(%edi), %eax
	pushl	(%ebx)
	pushl	%eax
	calll	_fputs$UNIX2003
	addl	$8, %esp
	leal	L_.str.20-L0$pb(%edi), %eax
	pushl	(%ebx)
	pushl	%eax
	calll	_fputs$UNIX2003
	addl	$8, %esp
	leal	L_.str.21-L0$pb(%edi), %eax
	pushl	(%ebx)
	pushl	%eax
	calll	_fputs$UNIX2003
	addl	$8, %esp
	leal	L_.str.22-L0$pb(%edi), %eax
	pushl	(%ebx)
	pushl	%eax
	calll	_fputs$UNIX2003
	addl	$8, %esp
	leal	L_.str.23-L0$pb(%edi), %eax
	pushl	(%ebx)
	pushl	%eax
	calll	_fputs$UNIX2003
	addl	$12, %esp
	leal	L_.str.52-L0$pb(%edi), %ebx
	leal	L_.str.29-L0$pb(%edi), %eax
	leal	L_.str.51-L0$pb(%edi), %ecx
	pushl	%ebx
	pushl	%eax
	pushl	%ecx
	calll	_printf
	addl	$8, %esp
	pushl	$0
	pushl	$6
	calll	_setlocale
	addl	$16, %esp
	testl	%eax, %eax
	je	LBB0_5
## BB#3:
	subl	$4, %esp
	leal	L_.str.53-L0$pb(%edi), %ecx
	pushl	$3
	pushl	%ecx
	pushl	%eax
	calll	_strncmp
	addl	$16, %esp
	testl	%eax, %eax
	je	LBB0_5
## BB#4:
	subl	$8, %esp
	leal	L_.str.24-L0$pb(%edi), %eax
	leal	L_.str.54-L0$pb(%edi), %ecx
	pushl	%eax
	pushl	%ecx
	calll	_printf
	addl	$16, %esp
LBB0_5:
	subl	$4, %esp
	leal	L_.str.24-L0$pb(%edi), %esi
	leal	L_.str.55-L0$pb(%edi), %eax
	pushl	%esi
	pushl	%ebx
	pushl	%eax
	calll	_printf
	addl	$12, %esp
	leal	L_.str.57-L0$pb(%edi), %eax
	leal	L_.str.56-L0$pb(%edi), %ecx
	pushl	%eax
	pushl	%esi
	pushl	%ecx
	calll	_printf
	addl	$16, %esp
	movl	8(%ebp), %esi
	jmp	LBB0_6
LBB0_1:
	movl	L___stderrp$non_lazy_ptr-L0$pb(%edi), %eax
	movl	L_program_name$non_lazy_ptr-L0$pb(%edi), %ecx
	subl	$4, %esp
	leal	L_.str.40-L0$pb(%edi), %edx
	pushl	(%ecx)
	pushl	%edx
	pushl	(%eax)
	calll	_fprintf
	addl	$16, %esp
LBB0_6:
	subl	$12, %esp
	pushl	%esi
	calll	_exit
	addl	$12, %esp

	.globl	_main
	.p2align	4, 0x90
_main:                                  ## @main
## BB#0:
	pushl	%ebp
	movl	%esp, %ebp
	pushl	%ebx
	pushl	%edi
	pushl	%esi
	subl	$156, %esp
	calll	L1$pb
L1$pb:
	popl	%esi
	movl	12(%ebp), %edi
	subl	$12, %esp
	pushl	(%edi)
	calll	_set_program_name
	addl	$8, %esp
	leal	L_.str.25-L1$pb(%esi), %eax
	pushl	%eax
	pushl	$0
	calll	_setlocale
	movl	L_close_stdout$non_lazy_ptr-L1$pb(%esi), %eax
	movl	%eax, (%esp)
	calll	_atexit
	addl	$16, %esp
	movl	$0, -16(%ebp)           ## 4-byte Folded Spill
	movl	$0, -32(%ebp)           ## 4-byte Folded Spill
	movl	$0, -40(%ebp)           ## 4-byte Folded Spill
	movl	$0, -28(%ebp)           ## 4-byte Folded Spill
	movl	$0, -44(%ebp)           ## 4-byte Folded Spill
	movl	$0, -36(%ebp)           ## 4-byte Folded Spill
	jmp	LBB1_1
LBB1_14:                                ##   in Loop: Header=BB1_1 Depth=1
	movl	L_rpl_optarg$non_lazy_ptr-L1$pb(%esi), %eax
	movl	(%eax), %eax
	movl	%eax, -44(%ebp)         ## 4-byte Spill
	movb	$1, %al
	movl	%eax, -28(%ebp)         ## 4-byte Spill
	.p2align	4, 0x90
LBB1_1:                                 ## =>This Inner Loop Header: Depth=1
	subl	$12, %esp
	pushl	$0
	leal	_long_options-L1$pb(%esi), %eax
	pushl	%eax
	leal	_short_options-L1$pb(%esi), %eax
	pushl	%eax
	pushl	%edi
	pushl	8(%ebp)
	calll	_rpl_getopt_long
	addl	$32, %esp
	cmpl	$72, %eax
	jle	LBB1_2
## BB#6:                                ##   in Loop: Header=BB1_1 Depth=1
	addl	$-73, %eax
	cmpl	$55, %eax
	ja	LBB1_18
## BB#7:                                ##   in Loop: Header=BB1_1 Depth=1
Ltmp0 = LJTI1_0-L1$pb
	movl	Ltmp0(%esi,%eax,4), %eax
	addl	%esi, %eax
	leal	_rfc_2822_format-L1$pb(%esi), %ebx
	jmpl	*%eax
LBB1_10:                                ##   in Loop: Header=BB1_1 Depth=1
	movl	L_rpl_optarg$non_lazy_ptr-L1$pb(%esi), %eax
	movl	(%eax), %eax
	xorl	%ecx, %ecx
	testl	%eax, %eax
	je	LBB1_12
## BB#11:                               ##   in Loop: Header=BB1_1 Depth=1
	movl	L_argmatch_die$non_lazy_ptr-L1$pb(%esi), %ecx
	subl	$8, %esp
	pushl	(%ecx)
	pushl	$4
	leal	_time_spec-L1$pb(%esi), %ecx
	pushl	%ecx
	leal	_time_spec_string-L1$pb(%esi), %ecx
	pushl	%ecx
	pushl	%eax
	leal	L_.str.27-L1$pb(%esi), %eax
	pushl	%eax
	calll	___xargmatch_internal
	addl	$32, %esp
	movl	_time_spec-L1$pb(%esi,%eax,4), %ecx
LBB1_12:                                ##   in Loop: Header=BB1_1 Depth=1
	shll	$5, %ecx
	leal	_main.iso_8601_format-L1$pb(%esi,%ecx), %ebx
	jmp	LBB1_21
LBB1_8:                                 ##   in Loop: Header=BB1_1 Depth=1
	movl	L_rpl_optarg$non_lazy_ptr-L1$pb(%esi), %eax
	movl	(%eax), %eax
	movl	%eax, -36(%ebp)         ## 4-byte Spill
	jmp	LBB1_1
LBB1_9:                                 ##   in Loop: Header=BB1_1 Depth=1
	movl	L_rpl_optarg$non_lazy_ptr-L1$pb(%esi), %eax
	movl	(%eax), %eax
	movl	%eax, -32(%ebp)         ## 4-byte Spill
	jmp	LBB1_1
LBB1_13:                                ##   in Loop: Header=BB1_1 Depth=1
	movl	L_rpl_optarg$non_lazy_ptr-L1$pb(%esi), %eax
	movl	(%eax), %eax
	movl	%eax, -40(%ebp)         ## 4-byte Spill
	jmp	LBB1_1
LBB1_15:                                ##   in Loop: Header=BB1_1 Depth=1
	subl	$12, %esp
	leal	L_.str.28-L1$pb(%esi), %eax
	pushl	%eax
	calll	_rpl_putenv
	addl	$16, %esp
	testl	%eax, %eax
	je	LBB1_1
	jmp	LBB1_16
LBB1_20:                                ##   in Loop: Header=BB1_1 Depth=1
	movl	L_rpl_optarg$non_lazy_ptr-L1$pb(%esi), %eax
	movl	L_argmatch_die$non_lazy_ptr-L1$pb(%esi), %ecx
	subl	$8, %esp
	pushl	(%ecx)
	pushl	$4
	leal	(_time_spec-L1$pb)+8(%esi), %ecx
	pushl	%ecx
	leal	(_time_spec_string-L1$pb)+8(%esi), %ecx
	pushl	%ecx
	pushl	(%eax)
	leal	L_.str.26-L1$pb(%esi), %eax
	pushl	%eax
	calll	___xargmatch_internal
	addl	$32, %esp
	movl	(_time_spec-L1$pb)+8(%esi,%eax,4), %eax
	shll	$5, %eax
	leal	_main.rfc_3339_format-L1$pb(%esi,%eax), %ebx
LBB1_21:                                ##   in Loop: Header=BB1_1 Depth=1
	testl	%ebx, %ebx
	je	LBB1_1
LBB1_22:                                ##   in Loop: Header=BB1_1 Depth=1
	cmpl	$0, -16(%ebp)           ## 4-byte Folded Reload
	movl	%ebx, -16(%ebp)         ## 4-byte Spill
	je	LBB1_1
## BB#23:                               ##   in Loop: Header=BB1_1 Depth=1
	subl	$4, %esp
	leal	L_.str.31-L1$pb(%esi), %eax
	pushl	%eax
	pushl	$0
	pushl	$1
	calll	_error
	addl	$16, %esp
	movl	%ebx, -16(%ebp)         ## 4-byte Spill
	jmp	LBB1_1
LBB1_2:
	cmpl	$-1, %eax
	movl	-32(%ebp), %ecx         ## 4-byte Reload
	jne	LBB1_3
## BB#24:
	xorl	%eax, %eax
	cmpl	$0, -36(%ebp)           ## 4-byte Folded Reload
	setne	%al
	xorl	%ebx, %ebx
	testl	%ecx, %ecx
	setne	%bl
	cmpl	$1, -40(%ebp)           ## 4-byte Folded Reload
	sbbl	$-1, %ebx
	addl	%eax, %ebx
	cmpl	$2, %ebx
	jae	LBB1_25
## BB#28:
	movl	-28(%ebp), %eax         ## 4-byte Reload
	testb	%al, %al
	je	LBB1_31
## BB#29:
	testl	%ebx, %ebx
	jne	LBB1_30
LBB1_31:
	movl	%ecx, -32(%ebp)         ## 4-byte Spill
	movl	L_rpl_optind$non_lazy_ptr-L1$pb(%esi), %edi
	movl	(%edi), %eax
	movl	8(%ebp), %edx
	cmpl	%edx, %eax
	jge	LBB1_32
## BB#33:
	leal	1(%eax), %ecx
	cmpl	%edx, %ecx
	jl	LBB1_34
## BB#35:
	movl	12(%ebp), %ecx
	movl	(%ecx,%eax,4), %edx
	cmpb	$43, (%edx)
	jne	LBB1_42
## BB#36:
	cmpl	$0, -16(%ebp)           ## 4-byte Folded Reload
	je	LBB1_38
## BB#37:
	subl	$4, %esp
	leal	L_.str.31-L1$pb(%esi), %eax
	pushl	%eax
	pushl	$0
	pushl	$1
	calll	_error
	addl	$16, %esp
	movl	(%edi), %eax
	movl	12(%ebp), %ecx
	movl	(%ecx,%eax,4), %edx
LBB1_38:
	incl	%eax
	movl	%eax, (%edi)
	incl	%edx
	jmp	LBB1_39
LBB1_32:
	movl	-16(%ebp), %edx         ## 4-byte Reload
	jmp	LBB1_39
LBB1_42:
	movl	%edx, %edi
	movl	-28(%ebp), %ecx         ## 4-byte Reload
	testb	%cl, %cl
	movl	-16(%ebp), %edx         ## 4-byte Reload
	jne	LBB1_44
## BB#43:
	testl	%ebx, %ebx
	jne	LBB1_44
LBB1_39:
	testl	%edx, %edx
	leal	L_.str.36-L1$pb(%esi), %ecx
	cmovnel	%edx, %ecx
	movl	%ecx, -48(%ebp)         ## 4-byte Spill
	movl	-32(%ebp), %ecx         ## 4-byte Reload
	testl	%ecx, %ecx
	movl	12(%ebp), %edi
	je	LBB1_59
## BB#40:
	subl	$8, %esp
	leal	L_.str.74-L1$pb(%esi), %eax
	pushl	%eax
	pushl	%ecx
	movl	%ecx, %ebx
	calll	_strcmp
	addl	$16, %esp
	testl	%eax, %eax
	je	LBB1_41
## BB#46:
	subl	$8, %esp
	leal	L_.str.76-L1$pb(%esi), %eax
	pushl	%eax
	pushl	%ebx
	calll	_fopen$DARWIN_EXTSN
	addl	$16, %esp
	movl	%eax, %edi
	testl	%edi, %edi
	jne	LBB1_48
## BB#47:
	calll	___error
	movl	(%eax), %edi
	subl	$12, %esp
	pushl	%ebx
	calll	_quote
	addl	$16, %esp
	leal	L_.str.37-L1$pb(%esi), %ecx
	pushl	%eax
	pushl	%ecx
	pushl	%edi
	pushl	$1
	calll	_error
	addl	$16, %esp
	xorl	%edi, %edi
	jmp	LBB1_48
LBB1_59:
	movl	-28(%ebp), %ecx         ## 4-byte Reload
	testb	%cl, %cl
	jne	LBB1_63
## BB#60:
	testl	%ebx, %ebx
	jne	LBB1_63
## BB#61:
	cmpl	8(%ebp), %eax
	jge	LBB1_62
## BB#68:
	movl	(%edi,%eax,4), %edi
	subl	$4, %esp
	leal	-24(%ebp), %eax
	pushl	$14
	pushl	%edi
	pushl	%eax
	calll	_posixtime
	addl	$16, %esp
	movl	$0, -20(%ebp)
	movb	$1, %cl
	movl	%ecx, -28(%ebp)         ## 4-byte Spill
	testb	%al, %al
	je	LBB1_69
	jmp	LBB1_71
LBB1_41:
	movl	L___stdinp$non_lazy_ptr-L1$pb(%esi), %eax
	movl	(%eax), %edi
	leal	L_.str.75-L1$pb(%esi), %eax
	movl	%eax, -32(%ebp)         ## 4-byte Spill
LBB1_48:
	movl	$0, -24(%ebp)
	movl	$0, -52(%ebp)
	subl	$4, %esp
	leal	-52(%ebp), %eax
	leal	-24(%ebp), %ecx
	pushl	%edi
	pushl	%eax
	pushl	%ecx
	calll	_getline
	addl	$16, %esp
	movl	%eax, %ebx
	movb	$1, %al
	movl	%eax, -16(%ebp)         ## 4-byte Spill
	testl	%ebx, %ebx
	js	LBB1_56
## BB#49:
	movb	$1, %al
	movl	%eax, -16(%ebp)         ## 4-byte Spill
	.p2align	4, 0x90
LBB1_50:                                ## =>This Inner Loop Header: Depth=1
	subl	$4, %esp
	pushl	$0
	pushl	-24(%ebp)
	leal	-160(%ebp), %eax
	pushl	%eax
	calll	_parse_datetime
	addl	$16, %esp
	testb	%al, %al
	je	LBB1_51
## BB#54:                               ##   in Loop: Header=BB1_50 Depth=1
	movl	-160(%ebp), %edx
	subl	$12, %esp
	movl	-48(%ebp), %ecx         ## 4-byte Reload
	pushl	-156(%ebp)
	calll	_show_date
	addl	$16, %esp
	movl	-16(%ebp), %ecx         ## 4-byte Reload
	andb	%cl, %al
                                        ## kill: %AL<def> %AL<kill> %EAX<def>
	movl	%eax, -16(%ebp)         ## 4-byte Spill
	jmp	LBB1_55
	.p2align	4, 0x90
LBB1_51:                                ##   in Loop: Header=BB1_50 Depth=1
	movl	-24(%ebp), %eax
	cmpb	$10, -1(%eax,%ebx)
	jne	LBB1_53
## BB#52:                               ##   in Loop: Header=BB1_50 Depth=1
	movb	$0, -1(%eax,%ebx)
	movl	-24(%ebp), %eax
LBB1_53:                                ##   in Loop: Header=BB1_50 Depth=1
	subl	$12, %esp
	pushl	%eax
	calll	_quote
	addl	$16, %esp
	pushl	%eax
	leal	L_.str.38-L1$pb(%esi), %eax
	pushl	%eax
	pushl	$0
	pushl	$0
	calll	_error
	addl	$16, %esp
	movl	$0, -16(%ebp)           ## 4-byte Folded Spill
LBB1_55:                                ##   in Loop: Header=BB1_50 Depth=1
	subl	$4, %esp
	pushl	%edi
	leal	-52(%ebp), %eax
	pushl	%eax
	leal	-24(%ebp), %eax
	pushl	%eax
	calll	_getline
	addl	$16, %esp
	movl	%eax, %ebx
	testl	%ebx, %ebx
	jns	LBB1_50
LBB1_56:
	subl	$12, %esp
	pushl	%edi
	calll	_rpl_fclose
	addl	$16, %esp
	cmpl	$-1, %eax
	jne	LBB1_58
## BB#57:
	calll	___error
	movl	(%eax), %edi
	subl	$12, %esp
	pushl	-32(%ebp)               ## 4-byte Folded Reload
	calll	_quote
	addl	$16, %esp
	leal	L_.str.37-L1$pb(%esi), %ecx
	pushl	%eax
	pushl	%ecx
	pushl	%edi
	pushl	$1
	calll	_error
	addl	$16, %esp
LBB1_58:
	subl	$12, %esp
	pushl	-24(%ebp)
	calll	_free
	addl	$16, %esp
	movl	-16(%ebp), %eax         ## 4-byte Reload
	movzbl	%al, %eax
	jmp	LBB1_74
LBB1_63:
	movl	-40(%ebp), %edi         ## 4-byte Reload
	testl	%edi, %edi
	je	LBB1_67
## BB#64:
	subl	$8, %esp
	leal	-160(%ebp), %eax
	pushl	%eax
	pushl	%edi
	calll	_rpl_stat
	addl	$16, %esp
	testl	%eax, %eax
	je	LBB1_66
## BB#65:
	calll	___error
	leal	L_.str.37-L1$pb(%esi), %ecx
	pushl	%edi
	pushl	%ecx
	pushl	(%eax)
	pushl	$1
	calll	_error
	addl	$16, %esp
LBB1_66:
	movsd	-124(%ebp), %xmm0       ## xmm0 = mem[0],zero
	movsd	%xmm0, -24(%ebp)
	jmp	LBB1_70
LBB1_62:
	subl	$12, %esp
	leal	-24(%ebp), %eax
	pushl	%eax
	calll	_gettime
	addl	$16, %esp
	movl	$1, %edi
	jmp	LBB1_73
LBB1_67:
	movl	-44(%ebp), %eax         ## 4-byte Reload
	testl	%eax, %eax
	movl	-36(%ebp), %edi         ## 4-byte Reload
	cmovnel	%eax, %edi
	subl	$4, %esp
	leal	-24(%ebp), %eax
	pushl	$0
	pushl	%edi
	pushl	%eax
	calll	_parse_datetime
	addl	$16, %esp
	testb	%al, %al
	jne	LBB1_70
LBB1_69:
	subl	$12, %esp
	pushl	%edi
	calll	_quote
	addl	$16, %esp
	leal	L_.str.38-L1$pb(%esi), %ecx
	pushl	%eax
	pushl	%ecx
	pushl	$0
	pushl	$1
	calll	_error
	addl	$16, %esp
LBB1_70:
	movl	$1, %edi
	movl	-28(%ebp), %eax         ## 4-byte Reload
	testb	$1, %al
	je	LBB1_73
LBB1_71:
	subl	$12, %esp
	leal	-24(%ebp), %eax
	pushl	%eax
	calll	_settime
	addl	$16, %esp
	movl	$1, %edi
	testl	%eax, %eax
	je	LBB1_73
## BB#72:
	calll	___error
	subl	$4, %esp
	leal	L_.str.39-L1$pb(%esi), %ecx
	pushl	%ecx
	pushl	(%eax)
	pushl	$0
	calll	_error
	addl	$16, %esp
	xorl	%edi, %edi
LBB1_73:
	movl	-24(%ebp), %edx
	subl	$12, %esp
	movl	-48(%ebp), %ecx         ## 4-byte Reload
	pushl	-20(%ebp)
	calll	_show_date
	addl	$16, %esp
	movzbl	%al, %eax
	andl	%edi, %eax
LBB1_74:
	notl	%eax
	andl	$1, %eax
	addl	$156, %esp
	popl	%esi
	popl	%edi
	popl	%ebx
	popl	%ebp
	retl
LBB1_3:
	cmpl	$-131, %eax
	je	LBB1_17
## BB#4:
	cmpl	$-130, %eax
	jne	LBB1_18
## BB#5:
	subl	$12, %esp
	pushl	$0
	calll	_usage
	addl	$12, %esp
LBB1_17:
	movl	L___stdoutp$non_lazy_ptr-L1$pb(%esi), %eax
	movl	L_Version$non_lazy_ptr-L1$pb(%esi), %ecx
	subl	$8, %esp
	leal	L_.str.30-L1$pb(%esi), %edx
	leal	L_.str.29-L1$pb(%esi), %edi
	leal	L_.str.24-L1$pb(%esi), %esi
	pushl	$0
	pushl	%edx
	pushl	(%ecx)
	pushl	%edi
	pushl	%esi
	pushl	(%eax)
	calll	_version_etc
	addl	$20, %esp
	pushl	$0
	calll	_exit
	addl	$12, %esp
LBB1_18:
	subl	$12, %esp
	jmp	LBB1_19
LBB1_25:
	subl	$4, %esp
	leal	L_.str.32-L1$pb(%esi), %eax
	jmp	LBB1_26
LBB1_30:
	subl	$4, %esp
	leal	L_.str.33-L1$pb(%esi), %eax
LBB1_26:
	pushl	%eax
	jmp	LBB1_27
LBB1_16:
	calll	_xalloc_die
LBB1_34:
	subl	$12, %esp
	movl	12(%ebp), %ecx
	pushl	4(%ecx,%eax,4)
	calll	_quote
	addl	$16, %esp
	leal	L_.str.34-L1$pb(%esi), %ecx
	jmp	LBB1_45
LBB1_44:
	subl	$12, %esp
	pushl	%edi
	calll	_quote
	addl	$16, %esp
	leal	L_.str.35-L1$pb(%esi), %ecx
LBB1_45:
	pushl	%eax
	pushl	%ecx
LBB1_27:
	pushl	$0
	pushl	$0
	calll	_error
	addl	$4, %esp
LBB1_19:
	pushl	$1
	calll	_usage
	addl	$12, %esp
	.p2align	2, 0x90
	.data_region jt32
L1_0_set_10 = LBB1_10-L1$pb
L1_0_set_18 = LBB1_18-L1$pb
L1_0_set_22 = LBB1_22-L1$pb
L1_0_set_8 = LBB1_8-L1$pb
L1_0_set_9 = LBB1_9-L1$pb
L1_0_set_13 = LBB1_13-L1$pb
L1_0_set_14 = LBB1_14-L1$pb
L1_0_set_15 = LBB1_15-L1$pb
L1_0_set_20 = LBB1_20-L1$pb
LJTI1_0:
	.long	L1_0_set_10
	.long	L1_0_set_18
	.long	L1_0_set_18
	.long	L1_0_set_18
	.long	L1_0_set_18
	.long	L1_0_set_18
	.long	L1_0_set_18
	.long	L1_0_set_18
	.long	L1_0_set_18
	.long	L1_0_set_22
	.long	L1_0_set_18
	.long	L1_0_set_18
	.long	L1_0_set_18
	.long	L1_0_set_18
	.long	L1_0_set_18
	.long	L1_0_set_18
	.long	L1_0_set_18
	.long	L1_0_set_18
	.long	L1_0_set_18
	.long	L1_0_set_18
	.long	L1_0_set_18
	.long	L1_0_set_18
	.long	L1_0_set_18
	.long	L1_0_set_18
	.long	L1_0_set_18
	.long	L1_0_set_18
	.long	L1_0_set_18
	.long	L1_0_set_8
	.long	L1_0_set_18
	.long	L1_0_set_9
	.long	L1_0_set_18
	.long	L1_0_set_18
	.long	L1_0_set_18
	.long	L1_0_set_18
	.long	L1_0_set_18
	.long	L1_0_set_18
	.long	L1_0_set_18
	.long	L1_0_set_18
	.long	L1_0_set_18
	.long	L1_0_set_18
	.long	L1_0_set_18
	.long	L1_0_set_13
	.long	L1_0_set_14
	.long	L1_0_set_18
	.long	L1_0_set_15
	.long	L1_0_set_18
	.long	L1_0_set_18
	.long	L1_0_set_18
	.long	L1_0_set_18
	.long	L1_0_set_18
	.long	L1_0_set_18
	.long	L1_0_set_18
	.long	L1_0_set_18
	.long	L1_0_set_18
	.long	L1_0_set_18
	.long	L1_0_set_20
	.end_data_region

	.p2align	4, 0x90
_show_date:                             ## @show_date
## BB#0:
	pushl	%ebp
	movl	%esp, %ebp
	pushl	%ebx
	pushl	%edi
	pushl	%esi
	subl	$44, %esp
	movl	%ecx, %esi
	calll	L2$pb
L2$pb:
	popl	%ebx
	movl	L___stack_chk_guard$non_lazy_ptr-L2$pb(%ebx), %eax
	movl	%eax, -52(%ebp)         ## 4-byte Spill
	movl	(%eax), %eax
	movl	%eax, -16(%ebp)
	movl	%edx, -48(%ebp)
	movl	8(%ebp), %eax
	movl	%eax, -44(%ebp)
	subl	$12, %esp
	leal	-48(%ebp), %eax
	pushl	%eax
	calll	_localtime
	addl	$16, %esp
	movl	%eax, %edi
	testl	%edi, %edi
	je	LBB2_1
## BB#2:
	leal	_rfc_2822_format-L2$pb(%ebx), %eax
	cmpl	%eax, %esi
	je	LBB2_3
## BB#4:
	movl	L___stdoutp$non_lazy_ptr-L2$pb(%ebx), %ebx
	subl	$12, %esp
	pushl	-44(%ebp)
	pushl	$0
	pushl	%edi
	pushl	%esi
	pushl	(%ebx)
	calll	_fprintftime
	addl	$24, %esp
	pushl	(%ebx)
	pushl	$10
	calll	_fputc
	jmp	LBB2_5
LBB2_1:
	movl	-48(%ebp), %eax
	movl	%eax, %ecx
	sarl	$31, %ecx
	subl	$4, %esp
	leal	-37(%ebp), %edx
	pushl	%edx
	pushl	%ecx
	pushl	%eax
	calll	_imaxtostr
	addl	$16, %esp
	leal	L_.str.77-L2$pb(%ebx), %ecx
	pushl	%eax
	pushl	%ecx
	pushl	$0
	pushl	$0
	calll	_error
	addl	$16, %esp
	xorl	%eax, %eax
	jmp	LBB2_6
LBB2_3:
	subl	$8, %esp
	leal	L_.str.78-L2$pb(%ebx), %eax
	pushl	%eax
	pushl	$5
	calll	_setlocale
	addl	$16, %esp
	movl	L___stdoutp$non_lazy_ptr-L2$pb(%ebx), %esi
	subl	$12, %esp
	pushl	-44(%ebp)
	pushl	$0
	pushl	%edi
	leal	_rfc_2822_format-L2$pb(%ebx), %eax
	pushl	%eax
	pushl	(%esi)
	calll	_fprintftime
	addl	$24, %esp
	pushl	(%esi)
	pushl	$10
	calll	_fputc
	addl	$8, %esp
	leal	L_.str.25-L2$pb(%ebx), %eax
	pushl	%eax
	pushl	$5
	calll	_setlocale
LBB2_5:
	addl	$16, %esp
	movb	$1, %al
LBB2_6:
	movl	-52(%ebp), %ecx         ## 4-byte Reload
	movl	(%ecx), %ecx
	cmpl	-16(%ebp), %ecx
	jne	LBB2_8
## BB#7:
                                        ## kill: %AL<def> %AL<kill> %EAX<kill>
	addl	$44, %esp
	popl	%esi
	popl	%edi
	popl	%ebx
	popl	%ebp
	retl
LBB2_8:
	calll	___stack_chk_fail

	.section	__TEXT,__cstring,cstring_literals
L_.str:                                 ## @.str
	.asciz	"Usage: %s [OPTION]... [+FORMAT]\n  or:  %s [-u|--utc|--universal] [MMDDhhmm[[CC]YY][.ss]]\n"

L_.str.1:                               ## @.str.1
	.asciz	"Display the current time in the given FORMAT, or set the system date.\n"

L_.str.2:                               ## @.str.2
	.asciz	"  -d, --date=STRING          display time described by STRING, not 'now'\n  -f, --file=DATEFILE        like --date; once for each line of DATEFILE\n"

L_.str.3:                               ## @.str.3
	.asciz	"  -I[FMT], --iso-8601[=FMT]  output date/time in ISO 8601 format.\n                               FMT='date' for date only (the default),\n                               'hours', 'minutes', 'seconds', or 'ns'\n                               for date and time to the indicated precision.\n                               Example: 2006-08-14T02:34:56-0600\n"

L_.str.4:                               ## @.str.4
	.asciz	"  -R, --rfc-2822             output date and time in RFC 2822 format.\n                               Example: Mon, 14 Aug 2006 02:34:56 -0600\n"

L_.str.5:                               ## @.str.5
	.asciz	"      --rfc-3339=FMT         output date/time in RFC 3339 format.\n                               FMT='date', 'seconds', or 'ns'\n                               for date and time to the indicated precision.\n                               Example: 2006-08-14 02:34:56-06:00\n"

L_.str.6:                               ## @.str.6
	.asciz	"  -r, --reference=FILE       display the last modification time of FILE\n"

L_.str.7:                               ## @.str.7
	.asciz	"  -s, --set=STRING           set time described by STRING\n  -u, --utc, --universal     print or set Coordinated Universal Time (UTC)\n"

L_.str.8:                               ## @.str.8
	.asciz	"      --help     display this help and exit\n"

L_.str.9:                               ## @.str.9
	.asciz	"      --version  output version information and exit\n"

L_.str.10:                              ## @.str.10
	.asciz	"\nFORMAT controls the output.  Interpreted sequences are:\n\n  %%   a literal %\n  %a   locale's abbreviated weekday name (e.g., Sun)\n"

L_.str.11:                              ## @.str.11
	.asciz	"  %A   locale's full weekday name (e.g., Sunday)\n  %b   locale's abbreviated month name (e.g., Jan)\n  %B   locale's full month name (e.g., January)\n  %c   locale's date and time (e.g., Thu Mar  3 23:05:25 2005)\n"

L_.str.12:                              ## @.str.12
	.asciz	"  %C   century; like %Y, except omit last two digits (e.g., 20)\n  %d   day of month (e.g., 01)\n  %D   date; same as %m/%d/%y\n  %e   day of month, space padded; same as %_d\n"

L_.str.13:                              ## @.str.13
	.asciz	"  %F   full date; same as %Y-%m-%d\n  %g   last two digits of year of ISO week number (see %G)\n  %G   year of ISO week number (see %V); normally useful only with %V\n"

L_.str.14:                              ## @.str.14
	.asciz	"  %h   same as %b\n  %H   hour (00..23)\n  %I   hour (01..12)\n  %j   day of year (001..366)\n"

L_.str.15:                              ## @.str.15
	.asciz	"  %k   hour, space padded ( 0..23); same as %_H\n  %l   hour, space padded ( 1..12); same as %_I\n  %m   month (01..12)\n  %M   minute (00..59)\n"

L_.str.16:                              ## @.str.16
	.asciz	"  %n   a newline\n  %N   nanoseconds (000000000..999999999)\n  %p   locale's equivalent of either AM or PM; blank if not known\n  %P   like %p, but lower case\n  %r   locale's 12-hour clock time (e.g., 11:11:04 PM)\n  %R   24-hour hour and minute; same as %H:%M\n  %s   seconds since 1970-01-01 00:00:00 UTC\n"

L_.str.17:                              ## @.str.17
	.asciz	"  %S   second (00..60)\n  %t   a tab\n  %T   time; same as %H:%M:%S\n  %u   day of week (1..7); 1 is Monday\n"

L_.str.18:                              ## @.str.18
	.asciz	"  %U   week number of year, with Sunday as first day of week (00..53)\n  %V   ISO week number, with Monday as first day of week (01..53)\n  %w   day of week (0..6); 0 is Sunday\n  %W   week number of year, with Monday as first day of week (00..53)\n"

L_.str.19:                              ## @.str.19
	.asciz	"  %x   locale's date representation (e.g., 12/31/99)\n  %X   locale's time representation (e.g., 23:13:48)\n  %y   last two digits of year (00..99)\n  %Y   year\n"

L_.str.20:                              ## @.str.20
	.asciz	"  %z   +hhmm numeric time zone (e.g., -0400)\n  %:z  +hh:mm numeric time zone (e.g., -04:00)\n  %::z  +hh:mm:ss numeric time zone (e.g., -04:00:00)\n  %:::z  numeric time zone with : to necessary precision (e.g., -04, +05:30)\n  %Z   alphabetic time zone abbreviation (e.g., EDT)\n\nBy default, date pads numeric fields with zeroes.\n"

L_.str.21:                              ## @.str.21
	.asciz	"The following optional flags may follow '%':\n\n  -  (hyphen) do not pad the field\n  _  (underscore) pad with spaces\n  0  (zero) pad with zeros\n  ^  use upper case if possible\n  #  use opposite case if possible\n"

L_.str.22:                              ## @.str.22
	.asciz	"\nAfter any flags comes an optional field width, as a decimal number;\nthen an optional modifier, which is either\nE to use the locale's alternate representations if available, or\nO to use the locale's alternate numeric symbols if available.\n"

L_.str.23:                              ## @.str.23
	.asciz	"\nExamples:\nConvert seconds since the epoch (1970-01-01 UTC) to a date\n  $ date --date='@2147483647'\n\nShow the time on the west coast of the US (use tzselect(1) to find TZ)\n  $ TZ='America/Los_Angeles' date\n\nShow the local time for 9AM next Friday on the west coast of the US\n  $ date --date='TZ=\"America/Los_Angeles\" 09:00 next Fri'\n"

L_.str.24:                              ## @.str.24
	.asciz	"date"

L_.str.25:                              ## @.str.25
	.space	1

	.section	__TEXT,__const
_short_options:                         ## @short_options
	.asciz	"d:f:I::r:Rs:u"

	.section	__DATA,__const
	.p2align	2               ## @long_options
_long_options:
	.long	L_.str.24
	.long	1                       ## 0x1
	.long	0
	.long	100                     ## 0x64
	.long	L_.str.58
	.long	1                       ## 0x1
	.long	0
	.long	102                     ## 0x66
	.long	L_.str.59
	.long	2                       ## 0x2
	.long	0
	.long	73                      ## 0x49
	.long	L_.str.60
	.long	1                       ## 0x1
	.long	0
	.long	114                     ## 0x72
	.long	L_.str.61
	.long	0                       ## 0x0
	.long	0
	.long	82                      ## 0x52
	.long	L_.str.62
	.long	0                       ## 0x0
	.long	0
	.long	82                      ## 0x52
	.long	L_.str.63
	.long	1                       ## 0x1
	.long	0
	.long	128                     ## 0x80
	.long	L_.str.64
	.long	1                       ## 0x1
	.long	0
	.long	115                     ## 0x73
	.long	L_.str.65
	.long	0                       ## 0x0
	.long	0
	.long	117                     ## 0x75
	.long	L_.str.66
	.long	0                       ## 0x0
	.long	0
	.long	117                     ## 0x75
	.long	L_.str.67
	.long	0                       ## 0x0
	.long	0
	.long	117                     ## 0x75
	.long	L_.str.68
	.long	0                       ## 0x0
	.long	0
	.long	4294967166              ## 0xffffff7e
	.long	L_.str.69
	.long	0                       ## 0x0
	.long	0
	.long	4294967165              ## 0xffffff7d
	.space	16

	.section	__TEXT,__const
_main.rfc_3339_format:                  ## @main.rfc_3339_format
	.asciz	"%Y-%m-%d\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000"
	.asciz	"%Y-%m-%d %H:%M:%S%:z\000\000\000\000\000\000\000\000\000\000\000"
	.asciz	"%Y-%m-%d %H:%M:%S.%N%:z\000\000\000\000\000\000\000\000"

	.section	__TEXT,__cstring,cstring_literals
L_.str.26:                              ## @.str.26
	.asciz	"--rfc-3339"

	.section	__DATA,__const
	.p2align	2               ## @time_spec_string
_time_spec_string:
	.long	L_.str.70
	.long	L_.str.71
	.long	L_.str.24
	.long	L_.str.72
	.long	L_.str.73
	.long	0

	.section	__TEXT,__const
	.p2align	2               ## @time_spec
_time_spec:
	.long	3                       ## 0x3
	.long	4                       ## 0x4
	.long	0                       ## 0x0
	.long	1                       ## 0x1
	.long	2                       ## 0x2

_main.iso_8601_format:                  ## @main.iso_8601_format
	.asciz	"%Y-%m-%d\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000"
	.asciz	"%Y-%m-%dT%H:%M:%S%z\000\000\000\000\000\000\000\000\000\000\000\000"
	.asciz	"%Y-%m-%dT%H:%M:%S,%N%z\000\000\000\000\000\000\000\000\000"
	.asciz	"%Y-%m-%dT%H%z\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000"
	.asciz	"%Y-%m-%dT%H:%M%z\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000"

	.section	__TEXT,__cstring,cstring_literals
L_.str.27:                              ## @.str.27
	.asciz	"--iso-8601"

	.section	__TEXT,__const
_rfc_2822_format:                       ## @rfc_2822_format
	.asciz	"%a, %d %b %Y %H:%M:%S %z"

	.section	__TEXT,__cstring,cstring_literals
L_.str.28:                              ## @.str.28
	.asciz	"TZ=UTC0"

L_.str.29:                              ## @.str.29
	.asciz	"GNU coreutils"

L_.str.30:                              ## @.str.30
	.asciz	"David MacKenzie"

L_.str.31:                              ## @.str.31
	.asciz	"multiple output formats specified"

L_.str.32:                              ## @.str.32
	.asciz	"the options to specify dates for printing are mutually exclusive"

L_.str.33:                              ## @.str.33
	.asciz	"the options to print and set the time may not be used together"

L_.str.34:                              ## @.str.34
	.asciz	"extra operand %s"

L_.str.35:                              ## @.str.35
	.asciz	"the argument %s lacks a leading '+';\nwhen using an option to specify date(s), any non-option\nargument must be a format string beginning with '+'"

L_.str.36:                              ## @.str.36
	.asciz	"%a %b %e %H:%M:%S %Z %Y"

L_.str.37:                              ## @.str.37
	.asciz	"%s"

L_.str.38:                              ## @.str.38
	.asciz	"invalid date %s"

L_.str.39:                              ## @.str.39
	.asciz	"cannot set date"

L_.str.40:                              ## @.str.40
	.asciz	"Try '%s --help' for more information.\n"

L_.str.41:                              ## @.str.41
	.asciz	"\nMandatory arguments to long options are mandatory for short options too.\n"

L_.str.51:                              ## @.str.51
	.asciz	"\n%s online help: <%s>\n"

L_.str.52:                              ## @.str.52
	.asciz	"http://www.gnu.org/software/coreutils/"

L_.str.53:                              ## @.str.53
	.asciz	"en_"

L_.str.54:                              ## @.str.54
	.asciz	"Report %s translation bugs to <http://translationproject.org/team/>\n"

L_.str.55:                              ## @.str.55
	.asciz	"Full documentation at: <%s%s>\n"

L_.str.56:                              ## @.str.56
	.asciz	"or available locally via: info '(coreutils) %s%s'\n"

L_.str.57:                              ## @.str.57
	.asciz	" invocation"

L_.str.58:                              ## @.str.58
	.asciz	"file"

L_.str.59:                              ## @.str.59
	.asciz	"iso-8601"

L_.str.60:                              ## @.str.60
	.asciz	"reference"

L_.str.61:                              ## @.str.61
	.asciz	"rfc-822"

L_.str.62:                              ## @.str.62
	.asciz	"rfc-2822"

L_.str.63:                              ## @.str.63
	.asciz	"rfc-3339"

L_.str.64:                              ## @.str.64
	.asciz	"set"

L_.str.65:                              ## @.str.65
	.asciz	"uct"

L_.str.66:                              ## @.str.66
	.asciz	"utc"

L_.str.67:                              ## @.str.67
	.asciz	"universal"

L_.str.68:                              ## @.str.68
	.asciz	"help"

L_.str.69:                              ## @.str.69
	.asciz	"version"

L_.str.70:                              ## @.str.70
	.asciz	"hours"

L_.str.71:                              ## @.str.71
	.asciz	"minutes"

L_.str.72:                              ## @.str.72
	.asciz	"seconds"

L_.str.73:                              ## @.str.73
	.asciz	"ns"

L_.str.74:                              ## @.str.74
	.asciz	"-"

L_.str.75:                              ## @.str.75
	.asciz	"standard input"

L_.str.76:                              ## @.str.76
	.asciz	"r"

L_.str.77:                              ## @.str.77
	.asciz	"time %s is out of range"

L_.str.78:                              ## @.str.78
	.asciz	"C"


	.section	__IMPORT,__pointers,non_lazy_symbol_pointers
L_Version$non_lazy_ptr:
	.indirect_symbol	_Version
	.long	0
L___stack_chk_guard$non_lazy_ptr:
	.indirect_symbol	___stack_chk_guard
	.long	0
L___stderrp$non_lazy_ptr:
	.indirect_symbol	___stderrp
	.long	0
L___stdinp$non_lazy_ptr:
	.indirect_symbol	___stdinp
	.long	0
L___stdoutp$non_lazy_ptr:
	.indirect_symbol	___stdoutp
	.long	0
L_argmatch_die$non_lazy_ptr:
	.indirect_symbol	_argmatch_die
	.long	0
L_close_stdout$non_lazy_ptr:
	.indirect_symbol	_close_stdout
	.long	0
L_program_name$non_lazy_ptr:
	.indirect_symbol	_program_name
	.long	0
L_rpl_optarg$non_lazy_ptr:
	.indirect_symbol	_rpl_optarg
	.long	0
L_rpl_optind$non_lazy_ptr:
	.indirect_symbol	_rpl_optind
	.long	0

.subsections_via_symbols
