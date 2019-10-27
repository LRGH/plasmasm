	.section	__TEXT,__text,regular,pure_instructions
	.macosx_version_min 10, 12
	.globl	_exclude_add_pattern_buffer
	.align	4, 0x90
_exclude_add_pattern_buffer:            ## @exclude_add_pattern_buffer
## BB#0:
	pushl	%ebp
	movl	%esp, %ebp
	pushl	%edi
	pushl	%esi
	subl	$16, %esp
	movl	8(%ebp), %esi
	movl	12(%ebp), %edi
	movl	$8, (%esp)
	calll	_xmalloc
	movl	%edi, 4(%eax)
	movl	4(%esi), %ecx
	movl	%ecx, (%eax)
	movl	%eax, 4(%esi)
	addl	$16, %esp
	popl	%esi
	popl	%edi
	popl	%ebp
	retl

	.globl	_fnmatch_pattern_has_wildcards
	.align	4, 0x90
_fnmatch_pattern_has_wildcards:         ## @fnmatch_pattern_has_wildcards
## BB#0:
	pushl	%ebp
	movl	%esp, %ebp
	pushl	%ebx
	pushl	%edi
	pushl	%esi
	pushl	%eax
	movl	8(%ebp), %esi
	movl	12(%ebp), %eax
	movl	%eax, %ecx
	andl	$134217728, %ecx        ## imm = 0x8000000
	movl	%eax, %edx
	andl	$2, %edx
	andl	$32, %eax
	movl	%eax, -16(%ebp)         ## 4-byte Spill
	jmp	LBB1_1
LBB1_19:                                ##   in Loop: Header=BB1_1 Depth=1
	movzbl	%al, %eax
	leal	1(%eax,%ebx), %esi
	.align	4, 0x90
LBB1_1:                                 ## %.backedge
                                        ## =>This Inner Loop Header: Depth=1
	movl	%esi, %ebx
	leal	1(%ebx), %esi
	movsbl	(%ebx), %edi
	cmpl	$90, %edi
	jg	LBB1_9
## BB#2:                                ## %.backedge
                                        ##   in Loop: Header=BB1_1 Depth=1
	cmpl	$32, %edi
	jg	LBB1_5
## BB#3:                                ## %.backedge
                                        ##   in Loop: Header=BB1_1 Depth=1
	testl	%edi, %edi
	jne	LBB1_1
	jmp	LBB1_4
	.align	4, 0x90
LBB1_9:                                 ## %.backedge
                                        ##   in Loop: Header=BB1_1 Depth=1
	cmpl	$122, %edi
	jg	LBB1_12
## BB#10:                               ## %.backedge
                                        ##   in Loop: Header=BB1_1 Depth=1
	cmpl	$92, %edi
	jne	LBB1_11
## BB#15:                               ##   in Loop: Header=BB1_1 Depth=1
	testl	%ecx, %ecx
	jne	LBB1_1
## BB#16:                               ##   in Loop: Header=BB1_1 Depth=1
	testl	%edx, %edx
	jne	LBB1_17
## BB#18:                               ##   in Loop: Header=BB1_1 Depth=1
	cmpb	$0, (%esi)
	setne	%al
	jmp	LBB1_19
	.align	4, 0x90
LBB1_5:                                 ## %.backedge
                                        ##   in Loop: Header=BB1_1 Depth=1
	addl	$-33, %edi
	cmpl	$31, %edi
	ja	LBB1_1
## BB#6:                                ## %.backedge
                                        ##   in Loop: Header=BB1_1 Depth=1
	movl	$-2147482623, %eax      ## imm = 0xFFFFFFFF80000401
	btl	%edi, %eax
	jb	LBB1_20
## BB#7:                                ## %.backedge
                                        ##   in Loop: Header=BB1_1 Depth=1
	movl	$8576, %eax             ## imm = 0x2180
	btl	%edi, %eax
	jb	LBB1_14
## BB#8:                                ## %.backedge
                                        ##   in Loop: Header=BB1_1 Depth=1
	movl	$1073742336, %eax       ## imm = 0x40000200
	btl	%edi, %eax
	jae	LBB1_1
	jmp	LBB1_22
	.align	4, 0x90
LBB1_12:                                ## %.backedge
                                        ##   in Loop: Header=BB1_1 Depth=1
	cmpl	$123, %edi
	je	LBB1_14
## BB#13:                               ## %.backedge
                                        ##   in Loop: Header=BB1_1 Depth=1
	cmpl	$125, %edi
	jne	LBB1_1
	.align	4, 0x90
LBB1_14:                                ##   in Loop: Header=BB1_1 Depth=1
	testl	%ecx, %ecx
	je	LBB1_1
	jmp	LBB1_22
LBB1_20:                                ##   in Loop: Header=BB1_1 Depth=1
	cmpl	$0, -16(%ebp)           ## 4-byte Folded Reload
	je	LBB1_1
## BB#21:                               ##   in Loop: Header=BB1_1 Depth=1
	movzbl	(%esi), %eax
	cmpl	$40, %eax
	jne	LBB1_1
	jmp	LBB1_22
LBB1_17:                                ##   in Loop: Header=BB1_1 Depth=1
	xorl	%eax, %eax
	jmp	LBB1_19
LBB1_11:                                ## %.backedge
                                        ##   in Loop: Header=BB1_1 Depth=1
	cmpl	$91, %edi
	jne	LBB1_1
LBB1_22:                                ## %.loopexit.loopexit
	movb	$1, %al
	jmp	LBB1_23
LBB1_4:
	xorl	%eax, %eax
LBB1_23:                                ## %.loopexit
	movzbl	%al, %eax
	addl	$4, %esp
	popl	%esi
	popl	%edi
	popl	%ebx
	popl	%ebp
	retl

	.globl	_new_exclude
	.align	4, 0x90
_new_exclude:                           ## @new_exclude
## BB#0:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$8, %esp
	movl	$8, (%esp)
	calll	_xzalloc
	addl	$8, %esp
	popl	%ebp
	retl

	.globl	_free_exclude
	.align	4, 0x90
_free_exclude:                          ## @free_exclude
## BB#0:
	pushl	%ebp
	movl	%esp, %ebp
	pushl	%ebx
	pushl	%edi
	pushl	%esi
	subl	$12, %esp
	movl	8(%ebp), %eax
	movl	%eax, -20(%ebp)         ## 4-byte Spill
	movl	(%eax), %esi
	jmp	LBB3_1
	.align	4, 0x90
LBB3_11:                                ## %free_exclude_segment.exit
                                        ##   in Loop: Header=BB3_1 Depth=1
	movl	%ebx, (%esp)
	calll	_free
LBB3_1:                                 ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB3_6 Depth 2
	testl	%esi, %esi
	je	LBB3_12
## BB#2:                                ## %.lr.ph5
                                        ##   in Loop: Header=BB3_1 Depth=1
	movl	%esi, %ebx
	movl	(%ebx), %esi
	movl	4(%ebx), %eax
	testl	%eax, %eax
	jne	LBB3_3
## BB#10:                               ##   in Loop: Header=BB3_1 Depth=1
	movl	12(%ebx), %eax
	movl	%eax, (%esp)
	calll	_hash_free
	jmp	LBB3_11
	.align	4, 0x90
LBB3_3:                                 ## %.lr.ph5
                                        ##   in Loop: Header=BB3_1 Depth=1
	cmpl	$1, %eax
	jne	LBB3_11
## BB#4:                                ## %.preheader.i
                                        ##   in Loop: Header=BB3_1 Depth=1
	movl	%esi, -16(%ebp)         ## 4-byte Spill
	movl	20(%ebx), %eax
	testl	%eax, %eax
	je	LBB3_9
## BB#5:                                ## %.lr.ph.i
                                        ##   in Loop: Header=BB3_1 Depth=1
	xorl	%esi, %esi
	movl	$4, %edi
	.align	4, 0x90
LBB3_6:                                 ##   Parent Loop BB3_1 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	movl	12(%ebx), %ecx
	testb	$8, -1(%ecx,%edi)
	je	LBB3_8
## BB#7:                                ##   in Loop: Header=BB3_6 Depth=2
	addl	%edi, %ecx
	movl	%ecx, (%esp)
	calll	_rpl_regfree
	movl	20(%ebx), %eax
LBB3_8:                                 ##   in Loop: Header=BB3_6 Depth=2
	incl	%esi
	addl	$36, %edi
	cmpl	%eax, %esi
	jb	LBB3_6
LBB3_9:                                 ## %._crit_edge.i
                                        ##   in Loop: Header=BB3_1 Depth=1
	movl	12(%ebx), %eax
	movl	%eax, (%esp)
	calll	_free
	movl	-16(%ebp), %esi         ## 4-byte Reload
	jmp	LBB3_11
LBB3_12:                                ## %._crit_edge6
	movl	-20(%ebp), %eax         ## 4-byte Reload
	movl	4(%eax), %esi
	testl	%esi, %esi
	je	LBB3_14
	.align	4, 0x90
LBB3_13:                                ## %.lr.ph
                                        ## =>This Inner Loop Header: Depth=1
	movl	(%esi), %edi
	movl	4(%esi), %eax
	movl	%eax, (%esp)
	calll	_free
	movl	%esi, (%esp)
	calll	_free
	testl	%edi, %edi
	movl	%edi, %esi
	jne	LBB3_13
LBB3_14:                                ## %._crit_edge
	addl	$12, %esp
	popl	%esi
	popl	%edi
	popl	%ebx
	popl	%ebp
	jmp	_free                   ## TAILCALL

	.globl	_exclude_fnmatch
	.align	4, 0x90
_exclude_fnmatch:                       ## @exclude_fnmatch
## BB#0:
	pushl	%ebp
	movl	%esp, %ebp
	pushl	%ebx
	pushl	%edi
	pushl	%esi
	subl	$12, %esp
	calll	L4$pb
L4$pb:
	popl	%eax
	movl	16(%ebp), %esi
	movl	12(%ebp), %edi
	movl	8(%ebp), %ecx
	leal	_fnmatch_no_wildcards-L4$pb(%eax), %ebx
	testl	$268435456, %esi        ## imm = 0x10000000
	cmovnel	L_gnu_fnmatch$non_lazy_ptr-L4$pb(%eax), %ebx
	movl	%esi, 8(%esp)
	movl	%edi, 4(%esp)
	movl	%ecx, (%esp)
	calll	*%ebx
	testl	%eax, %eax
	sete	%cl
	testl	$1073741824, %esi       ## imm = 0x40000000
	jne	LBB4_9
## BB#1:                                ## %.preheader
	movl	8(%ebp), %esi
	movb	(%edi), %dl
	testl	%eax, %eax
	setne	%al
	testb	%dl, %dl
	je	LBB4_9
## BB#2:                                ## %.preheader
	testb	%al, %al
	je	LBB4_9
## BB#3:                                ## %.lr.ph.preheader
	incl	%edi
	.align	4, 0x90
LBB4_4:                                 ## %.lr.ph
                                        ## =>This Inner Loop Header: Depth=1
	movzbl	%dl, %eax
	cmpl	$47, %eax
	jne	LBB4_7
## BB#5:                                ##   in Loop: Header=BB4_4 Depth=1
	movzbl	(%edi), %eax
	cmpl	$47, %eax
	je	LBB4_7
## BB#6:                                ##   in Loop: Header=BB4_4 Depth=1
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edi, 4(%esp)
	movl	%esi, (%esp)
	calll	*%ebx
	testl	%eax, %eax
	sete	%cl
LBB4_7:                                 ## %._crit_edge
                                        ##   in Loop: Header=BB4_4 Depth=1
	testb	$1, %cl
	jne	LBB4_9
## BB#8:                                ## %._crit_edge
                                        ##   in Loop: Header=BB4_4 Depth=1
	movb	(%edi), %dl
	incl	%edi
	testb	%dl, %dl
	jne	LBB4_4
LBB4_9:                                 ## %.critedge
	andb	$1, %cl
	movzbl	%cl, %eax
	addl	$12, %esp
	popl	%esi
	popl	%edi
	popl	%ebx
	popl	%ebp
	retl

	.align	4, 0x90
_fnmatch_no_wildcards:                  ## @fnmatch_no_wildcards
## BB#0:
	pushl	%ebp
	movl	%esp, %ebp
	pushl	%ebx
	pushl	%edi
	pushl	%esi
	subl	$28, %esp
	movl	16(%ebp), %ecx
	movl	%ecx, %eax
	andl	$16, %eax
	testb	$8, %cl
	jne	LBB5_3
## BB#1:
	addl	$28, %esp
	testl	%eax, %eax
	je	LBB5_2
## BB#13:
	popl	%esi
	popl	%edi
	popl	%ebx
	popl	%ebp
	jmp	_mbscasecmp             ## TAILCALL
LBB5_3:
	movl	12(%ebp), %edi
	movl	8(%ebp), %ebx
	testl	%eax, %eax
	je	LBB5_4
## BB#7:
	movl	%edi, (%esp)
	calll	_xstrdup
	movl	%eax, -16(%ebp)         ## 4-byte Spill
	movl	%eax, (%esp)
	jmp	LBB5_8
	.align	4, 0x90
LBB5_12:                                ##   in Loop: Header=BB5_8 Depth=1
	movb	$47, (%edi)
	incl	%edi
	movl	%edi, (%esp)
LBB5_8:                                 ## =>This Inner Loop Header: Depth=1
	movl	$47, 4(%esp)
	calll	_strchr
	movl	%eax, %edi
	testl	%edi, %edi
	je	LBB5_9
## BB#11:                               ## %.lr.ph
                                        ##   in Loop: Header=BB5_8 Depth=1
	movb	$0, (%edi)
	movl	-16(%ebp), %eax         ## 4-byte Reload
	movl	%eax, 4(%esp)
	movl	%ebx, (%esp)
	calll	_mbscasecmp
	movl	%eax, %esi
	testl	%esi, %esi
	jg	LBB5_12
	jmp	LBB5_10
LBB5_2:
	popl	%esi
	popl	%edi
	popl	%ebx
	popl	%ebp
	jmp	_strcmp                 ## TAILCALL
LBB5_4:
	movl	%ebx, (%esp)
	calll	_strlen
	movl	%eax, -16(%ebp)         ## 4-byte Spill
	movl	%eax, 8(%esp)
	movl	%edi, 4(%esp)
	movl	%ebx, (%esp)
	calll	_strncmp
	movl	%eax, %esi
	testl	%esi, %esi
	jne	LBB5_6
## BB#5:
	movl	-16(%ebp), %eax         ## 4-byte Reload
	movsbl	(%edi,%eax), %eax
	xorl	%esi, %esi
	cmpl	$47, %eax
	cmovnel	%eax, %esi
	jmp	LBB5_6
LBB5_9:                                 ## %.thread
	movl	-16(%ebp), %eax         ## 4-byte Reload
	movl	%eax, 4(%esp)
	movl	%ebx, (%esp)
	calll	_mbscasecmp
	movl	%eax, %esi
LBB5_10:                                ## %.loopexit
	movl	-16(%ebp), %eax         ## 4-byte Reload
	movl	%eax, (%esp)
	calll	_free
LBB5_6:
	movl	%esi, %eax
	addl	$28, %esp
	popl	%esi
	popl	%edi
	popl	%ebx
	popl	%ebp
	retl

	.globl	_excluded_file_name
	.align	4, 0x90
_excluded_file_name:                    ## @excluded_file_name
## BB#0:
	pushl	%ebp
	movl	%esp, %ebp
	pushl	%ebx
	pushl	%edi
	pushl	%esi
	subl	$60, %esp
	calll	L6$pb
L6$pb:
	popl	%edx
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	xorl	%ecx, %ecx
	testl	%eax, %eax
	je	LBB6_33
## BB#1:                                ## %.preheader.preheader
	movl	$0, -32(%ebp)           ## 4-byte Folded Spill
	movl	12(%ebp), %edi
	leal	1(%edi), %ecx
	movl	%ecx, -44(%ebp)         ## 4-byte Spill
	leal	_fnmatch_no_wildcards-L6$pb(%edx), %ecx
	movl	%ecx, -40(%ebp)         ## 4-byte Spill
	movl	%edx, -36(%ebp)         ## 4-byte Spill
LBB6_2:                                 ## %.preheader
                                        ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB6_16 Depth 2
                                        ##       Child Loop BB6_22 Depth 3
                                        ##     Child Loop BB6_6 Depth 2
                                        ##       Child Loop BB6_9 Depth 3
	movl	%eax, %esi
	cmpl	$0, 4(%esi)
	je	LBB6_3
## BB#14:                               ##   in Loop: Header=BB6_2 Depth=1
	movl	20(%esi), %eax
	movl	%eax, -24(%ebp)         ## 4-byte Spill
	testl	%eax, %eax
	je	LBB6_31
## BB#15:                               ##   in Loop: Header=BB6_2 Depth=1
	movl	12(%esi), %eax
	movl	%eax, -28(%ebp)         ## 4-byte Spill
	movl	%esi, -48(%ebp)         ## 4-byte Spill
	xorl	%esi, %esi
	.align	4, 0x90
LBB6_16:                                ## %.lr.ph.i1
                                        ##   Parent Loop BB6_2 Depth=1
                                        ## =>  This Loop Header: Depth=2
                                        ##       Child Loop BB6_22 Depth 3
	leal	(%esi,%esi,8), %eax
	movl	-28(%ebp), %ecx         ## 4-byte Reload
	movl	(%ecx,%eax,4), %ebx
	testl	$134217728, %ebx        ## imm = 0x8000000
	leal	4(%ecx,%eax,4), %eax
	jne	LBB6_17
## BB#19:                               ##   in Loop: Header=BB6_16 Depth=2
	movl	%edi, %ecx
	movl	(%eax), %edx
	movl	%edx, -16(%ebp)         ## 4-byte Spill
	testl	$268435456, %ebx        ## imm = 0x10000000
	movl	-36(%ebp), %eax         ## 4-byte Reload
	movl	L_gnu_fnmatch$non_lazy_ptr-L6$pb(%eax), %edi
	cmovel	-40(%ebp), %edi         ## 4-byte Folded Reload
	movl	%ebx, 8(%esp)
	movl	%ecx, 4(%esp)
	movl	%edx, (%esp)
	calll	*%edi
	testl	%eax, %eax
	sete	%cl
	testl	$1073741824, %ebx       ## imm = 0x40000000
	jne	LBB6_27
## BB#20:                               ## %.preheader.i.i.i
                                        ##   in Loop: Header=BB6_16 Depth=2
	movl	%edi, -20(%ebp)         ## 4-byte Spill
	movl	12(%ebp), %edx
	movb	(%edx), %dl
	testl	%eax, %eax
	setne	%al
	testb	%dl, %dl
	je	LBB6_27
## BB#21:                               ## %.preheader.i.i.i
                                        ##   in Loop: Header=BB6_16 Depth=2
	testb	%al, %al
	movl	-44(%ebp), %edi         ## 4-byte Reload
	je	LBB6_27
	.align	4, 0x90
LBB6_22:                                ## %.lr.ph.i.i.i
                                        ##   Parent Loop BB6_2 Depth=1
                                        ##     Parent Loop BB6_16 Depth=2
                                        ## =>    This Inner Loop Header: Depth=3
	movzbl	%dl, %eax
	cmpl	$47, %eax
	jne	LBB6_25
## BB#23:                               ##   in Loop: Header=BB6_22 Depth=3
	movzbl	(%edi), %eax
	cmpl	$47, %eax
	je	LBB6_25
## BB#24:                               ##   in Loop: Header=BB6_22 Depth=3
	movl	%ebx, 8(%esp)
	movl	%edi, 4(%esp)
	movl	-16(%ebp), %eax         ## 4-byte Reload
	movl	%eax, (%esp)
	calll	*-20(%ebp)              ## 4-byte Folded Reload
	testl	%eax, %eax
	sete	%cl
LBB6_25:                                ## %._crit_edge.i.i.i
                                        ##   in Loop: Header=BB6_22 Depth=3
	testb	$1, %cl
	jne	LBB6_27
## BB#26:                               ## %._crit_edge.i.i.i
                                        ##   in Loop: Header=BB6_22 Depth=3
	movb	(%edi), %dl
	incl	%edi
	testb	%dl, %dl
	jne	LBB6_22
	.align	4, 0x90
LBB6_27:                                ## %exclude_patopts.exit.i
                                        ##   in Loop: Header=BB6_16 Depth=2
	xorl	%ebx, %ebx
	testb	$1, %cl
	movl	12(%ebp), %edi
	je	LBB6_29
	jmp	LBB6_28
	.align	4, 0x90
LBB6_17:                                ##   in Loop: Header=BB6_16 Depth=2
	movl	%edi, 4(%esp)
	movl	%eax, (%esp)
	movl	$0, 16(%esp)
	movl	$0, 12(%esp)
	movl	$0, 8(%esp)
	calll	_rpl_regexec
	xorl	%ebx, %ebx
	testl	%eax, %eax
	je	LBB6_18
LBB6_29:                                ##   in Loop: Header=BB6_16 Depth=2
	incl	%esi
	cmpl	-24(%ebp), %esi         ## 4-byte Folded Reload
	jb	LBB6_16
	jmp	LBB6_30
	.align	4, 0x90
LBB6_3:                                 ##   in Loop: Header=BB6_2 Depth=1
	movl	-32(%ebp), %ebx         ## 4-byte Reload
	testl	%ebx, %ebx
	jne	LBB6_5
## BB#4:                                ##   in Loop: Header=BB6_2 Depth=1
	movl	%edi, (%esp)
	calll	_strlen
	incl	%eax
	movl	%eax, (%esp)
	calll	_xmalloc
	movl	%eax, %ebx
LBB6_5:                                 ##   in Loop: Header=BB6_2 Depth=1
	movl	%ebx, -32(%ebp)         ## 4-byte Spill
	movl	8(%esi), %eax
	movl	12(%esi), %ecx
	movl	%ecx, -16(%ebp)         ## 4-byte Spill
	movl	%esi, -48(%ebp)         ## 4-byte Spill
	movl	%eax, %ecx
	andl	$8, %ecx
	movl	%ecx, -20(%ebp)         ## 4-byte Spill
	andl	$1073741824, %eax       ## imm = 0x40000000
	movl	%eax, -24(%ebp)         ## 4-byte Spill
	movl	%edi, %esi
LBB6_6:                                 ##   Parent Loop BB6_2 Depth=1
                                        ## =>  This Loop Header: Depth=2
                                        ##       Child Loop BB6_9 Depth 3
	movl	%esi, 4(%esp)
	movl	%ebx, (%esp)
	calll	_strcpy
	movl	%ebx, 4(%esp)
	movl	-16(%ebp), %eax         ## 4-byte Reload
	movl	%eax, (%esp)
	calll	_hash_lookup
	xorl	%ebx, %ebx
	testl	%eax, %eax
	jne	LBB6_7
## BB#8:                                ## %.lr.ph.i
                                        ##   in Loop: Header=BB6_6 Depth=2
	cmpl	$0, -20(%ebp)           ## 4-byte Folded Reload
	movl	-32(%ebp), %edi         ## 4-byte Reload
	je	LBB6_12
	.align	4, 0x90
LBB6_9:                                 ## %.lr.ph..lr.ph.split_crit_edge.i
                                        ##   Parent Loop BB6_2 Depth=1
                                        ##     Parent Loop BB6_6 Depth=2
                                        ## =>    This Inner Loop Header: Depth=3
	movl	%edi, (%esp)
	movl	$47, 4(%esp)
	calll	_strrchr
	testl	%eax, %eax
	je	LBB6_12
## BB#10:                               ##   in Loop: Header=BB6_9 Depth=3
	movb	$0, (%eax)
	movl	%edi, 4(%esp)
	movl	-16(%ebp), %eax         ## 4-byte Reload
	movl	%eax, (%esp)
	calll	_hash_lookup
	testl	%eax, %eax
	je	LBB6_9
	jmp	LBB6_11
	.align	4, 0x90
LBB6_12:                                ## %.split.i
                                        ##   in Loop: Header=BB6_6 Depth=2
	cmpl	$0, -24(%ebp)           ## 4-byte Folded Reload
	movl	12(%ebp), %edi
	jne	LBB6_30
## BB#13:                               ##   in Loop: Header=BB6_6 Depth=2
	movl	%esi, (%esp)
	movl	$47, 4(%esp)
	calll	_strchr
	leal	1(%eax), %esi
	testl	%eax, %eax
	cmovel	%eax, %esi
	movl	-32(%ebp), %ebx         ## 4-byte Reload
	jne	LBB6_6
	.align	4, 0x90
LBB6_30:                                ##   in Loop: Header=BB6_2 Depth=1
	movl	-48(%ebp), %esi         ## 4-byte Reload
LBB6_31:                                ## %file_name_matches.exit
                                        ##   in Loop: Header=BB6_2 Depth=1
	movl	(%esi), %eax
	movl	$1, %ebx
	testl	%eax, %eax
	jne	LBB6_2
	jmp	LBB6_32
LBB6_11:
	movl	-48(%ebp), %esi         ## 4-byte Reload
	jmp	LBB6_32
LBB6_28:
	movl	-48(%ebp), %esi         ## 4-byte Reload
	jmp	LBB6_32
LBB6_18:
	movl	-48(%ebp), %esi         ## 4-byte Reload
	jmp	LBB6_32
LBB6_7:
	movl	-48(%ebp), %esi         ## 4-byte Reload
LBB6_32:                                ## %file_name_matches.exit.thread
	movl	-32(%ebp), %eax         ## 4-byte Reload
	movl	%eax, (%esp)
	calll	_free
	movl	8(%esi), %eax
	shrl	$29, %eax
	notl	%eax
	andl	$1, %eax
	cmpl	%eax, %ebx
	setne	%cl
LBB6_33:
	movzbl	%cl, %eax
	addl	$60, %esp
	popl	%esi
	popl	%edi
	popl	%ebx
	popl	%ebp
	retl

	.globl	_add_exclude
	.align	4, 0x90
_add_exclude:                           ## @add_exclude
## BB#0:
	pushl	%ebp
	movl	%esp, %ebp
	pushl	%ebx
	pushl	%edi
	pushl	%esi
	subl	$44, %esp
	calll	L7$pb
L7$pb:
	popl	%eax
	movl	%eax, -16(%ebp)         ## 4-byte Spill
	testl	$402653184, 16(%ebp)    ## imm = 0x18000000
	je	LBB7_5
## BB#1:
	movl	16(%ebp), %eax
	movl	%eax, %ecx
	movl	%ecx, %ebx
	andl	$134217728, %ebx        ## imm = 0x8000000
                                        ## kill: EAX<def> ECX<kill>
	andl	$2, %eax
	andl	$32, %ecx
	movl	12(%ebp), %edx
	jmp	LBB7_2
LBB7_27:                                ##   in Loop: Header=BB7_2 Depth=1
	movzbl	%dl, %edx
	leal	1(%edx,%esi), %edx
	.align	4, 0x90
LBB7_2:                                 ## %.backedge.i
                                        ## =>This Inner Loop Header: Depth=1
	movl	%edx, %esi
	leal	1(%esi), %edx
	movsbl	(%esi), %edi
	cmpl	$90, %edi
	jg	LBB7_17
## BB#3:                                ## %.backedge.i
                                        ##   in Loop: Header=BB7_2 Depth=1
	cmpl	$32, %edi
	jg	LBB7_13
## BB#4:                                ## %.backedge.i
                                        ##   in Loop: Header=BB7_2 Depth=1
	testl	%edi, %edi
	jne	LBB7_2
	jmp	LBB7_5
	.align	4, 0x90
LBB7_17:                                ## %.backedge.i
                                        ##   in Loop: Header=BB7_2 Depth=1
	cmpl	$122, %edi
	jg	LBB7_20
## BB#18:                               ## %.backedge.i
                                        ##   in Loop: Header=BB7_2 Depth=1
	cmpl	$92, %edi
	jne	LBB7_19
## BB#23:                               ##   in Loop: Header=BB7_2 Depth=1
	testl	%ebx, %ebx
	jne	LBB7_2
## BB#24:                               ##   in Loop: Header=BB7_2 Depth=1
	testl	%eax, %eax
	jne	LBB7_25
## BB#26:                               ##   in Loop: Header=BB7_2 Depth=1
	cmpb	$0, (%edx)
	setne	%dl
	jmp	LBB7_27
	.align	4, 0x90
LBB7_13:                                ## %.backedge.i
                                        ##   in Loop: Header=BB7_2 Depth=1
	addl	$-33, %edi
	cmpl	$31, %edi
	ja	LBB7_2
## BB#14:                               ## %.backedge.i
                                        ##   in Loop: Header=BB7_2 Depth=1
	movl	$-2147482623, %esi      ## imm = 0xFFFFFFFF80000401
	btl	%edi, %esi
	jb	LBB7_28
## BB#15:                               ## %.backedge.i
                                        ##   in Loop: Header=BB7_2 Depth=1
	movl	$8576, %esi             ## imm = 0x2180
	btl	%edi, %esi
	jb	LBB7_22
## BB#16:                               ## %.backedge.i
                                        ##   in Loop: Header=BB7_2 Depth=1
	movl	$1073742336, %esi       ## imm = 0x40000200
	btl	%edi, %esi
	jae	LBB7_2
	jmp	LBB7_30
	.align	4, 0x90
LBB7_20:                                ## %.backedge.i
                                        ##   in Loop: Header=BB7_2 Depth=1
	cmpl	$123, %edi
	je	LBB7_22
## BB#21:                               ## %.backedge.i
                                        ##   in Loop: Header=BB7_2 Depth=1
	cmpl	$125, %edi
	jne	LBB7_2
	.align	4, 0x90
LBB7_22:                                ##   in Loop: Header=BB7_2 Depth=1
	testl	%ebx, %ebx
	je	LBB7_2
	jmp	LBB7_30
LBB7_28:                                ##   in Loop: Header=BB7_2 Depth=1
	testl	%ecx, %ecx
	je	LBB7_2
## BB#29:                               ##   in Loop: Header=BB7_2 Depth=1
	movzbl	(%edx), %esi
	cmpl	$40, %esi
	jne	LBB7_2
	jmp	LBB7_30
LBB7_25:                                ##   in Loop: Header=BB7_2 Depth=1
	xorl	%edx, %edx
	jmp	LBB7_27
LBB7_19:                                ## %.backedge.i
                                        ##   in Loop: Header=BB7_2 Depth=1
	cmpl	$91, %edi
	jne	LBB7_2
LBB7_30:
	movl	8(%ebp), %esi
	movl	(%esi), %edi
	testl	%edi, %edi
	je	LBB7_33
## BB#31:
	cmpl	$1, 4(%edi)
	jne	LBB7_33
## BB#32:
	movl	8(%edi), %eax
	xorl	16(%ebp), %eax
	testl	$536870912, %eax        ## imm = 0x20000000
	je	LBB7_34
LBB7_33:
	movl	$24, (%esp)
	calll	_xzalloc
	movl	%eax, %edi
	movl	$1, 4(%edi)
	movl	16(%ebp), %eax
	movl	%eax, 8(%edi)
	movl	(%esi), %eax
	movl	%eax, (%edi)
	movl	%edi, (%esi)
LBB7_34:
	movl	20(%edi), %eax
	cmpl	16(%edi), %eax
	jne	LBB7_35
## BB#36:
	movl	12(%edi), %ecx
	testl	%ecx, %ecx
	je	LBB7_37
## BB#38:
	cmpl	$79536431, %eax         ## imm = 0x4BDA12F
	jae	LBB7_60
## BB#39:
	movl	%eax, %edx
	shrl	%edx
	leal	1(%eax,%edx), %edx
	jmp	LBB7_40
LBB7_5:                                 ## %fnmatch_pattern_has_wildcards.exit
	movl	8(%ebp), %esi
	movl	(%esi), %edi
	testl	%edi, %edi
	movl	16(%ebp), %ebx
	je	LBB7_8
## BB#6:
	cmpl	$0, 4(%edi)
	jne	LBB7_8
## BB#7:
	movl	8(%edi), %eax
	xorl	%ebx, %eax
	testl	$1610612760, %eax       ## imm = 0x60000018
	je	LBB7_9
LBB7_8:
	movl	$24, (%esp)
	calll	_xzalloc
	movl	%eax, %edi
	movl	$0, 4(%edi)
	movl	%ebx, 8(%edi)
	movl	%ebx, %eax
	andl	$16, %eax
	shrl	$4, %eax
	movl	-16(%ebp), %eax         ## 4-byte Reload
	leal	_string_hasher_ci-L7$pb(%eax), %edx
	leal	_string_hasher-L7$pb(%eax), %ecx
	cmovnel	%edx, %ecx
	leal	_string_compare_ci-L7$pb(%eax), %edx
	movl	%edx, -20(%ebp)         ## 4-byte Spill
	leal	_string_compare-L7$pb(%eax), %edx
	cmovnel	-20(%ebp), %edx         ## 4-byte Folded Reload
	leal	_string_free-L7$pb(%eax), %eax
	movl	%eax, 16(%esp)
	movl	%edx, 12(%esp)
	movl	%ecx, 8(%esp)
	movl	$0, 4(%esp)
	movl	$0, (%esp)
	calll	_hash_initialize
	movl	%eax, 12(%edi)
	movl	(%esi), %eax
	movl	%eax, (%edi)
	movl	%edi, (%esi)
LBB7_9:
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	calll	_xstrdup
	movl	%eax, %esi
	andl	$268435458, %ebx        ## imm = 0x10000002
	cmpl	$268435456, %ebx        ## imm = 0x10000000
	jne	LBB7_57
## BB#10:
	movl	%esi, %eax
	movl	%esi, %ecx
	.align	4, 0x90
LBB7_11:                                ## %.preheader
                                        ## =>This Inner Loop Header: Depth=1
	movzbl	(%ecx), %edx
	cmpl	$92, %edx
	jne	LBB7_12
## BB#55:                               ##   in Loop: Header=BB7_11 Depth=1
	cmpb	$0, 1(%ecx)
	setne	%bl
	movzbl	%bl, %edx
	movb	(%ecx,%edx), %dl
	jmp	LBB7_56
	.align	4, 0x90
LBB7_12:                                ##   in Loop: Header=BB7_11 Depth=1
	xorl	%ebx, %ebx
LBB7_56:                                ##   in Loop: Header=BB7_11 Depth=1
	movzbl	%bl, %ebx
	leal	1(%ebx,%ecx), %ecx
	movb	%dl, (%eax)
	incl	%eax
	testb	%dl, %dl
	jne	LBB7_11
LBB7_57:                                ## %unescape_pattern.exit
	movl	12(%edi), %eax
	movl	%esi, 4(%esp)
	movl	%eax, (%esp)
	calll	_hash_insert
	cmpl	%esi, %eax
	je	LBB7_59
## BB#58:
	movl	%esi, (%esp)
	calll	_free
	jmp	LBB7_59
LBB7_35:                                ## %._crit_edge
	movl	12(%edi), %ecx
	jmp	LBB7_41
LBB7_37:
	testl	%eax, %eax
	movl	$1, %edx
	cmovnel	%eax, %edx
LBB7_40:                                ## %x2nrealloc.exit
	movl	%edx, 16(%edi)
	shll	$2, %edx
	leal	(%edx,%edx,8), %eax
	movl	%eax, 4(%esp)
	movl	%ecx, (%esp)
	calll	_xrealloc
	movl	%eax, %ecx
	movl	%ecx, 12(%edi)
	movl	20(%edi), %eax
LBB7_41:
	leal	1(%eax), %edx
	movl	%edx, -20(%ebp)         ## 4-byte Spill
	testl	%ebx, %ebx
	movl	%edx, 20(%edi)
	leal	(%eax,%eax,8), %ebx
	movl	16(%ebp), %eax
	movl	%eax, (%ecx,%ebx,4)
	movl	12(%ebp), %edx
	jne	LBB7_42
## BB#52:
	movl	%ebx, -16(%ebp)         ## 4-byte Spill
	movl	%ecx, %ebx
	movl	%esi, %edi
	testl	$67108864, %eax         ## imm = 0x4000000
	je	LBB7_54
## BB#53:
	movl	%edx, (%esp)
	calll	_xstrdup
	movl	%eax, %esi
	movl	$8, (%esp)
	calll	_xmalloc
	movl	%esi, %edx
	movl	%edx, 4(%eax)
	movl	4(%edi), %ecx
	movl	%ecx, (%eax)
	movl	%eax, 4(%edi)
LBB7_54:
	movl	-16(%ebp), %eax         ## 4-byte Reload
	movl	%edx, 4(%ebx,%eax,4)
	jmp	LBB7_59
LBB7_42:
	movl	%eax, %esi
	shrl	$3, %esi
	andl	$2, %esi
	orl	$9, %esi
	testb	$8, %al
	jne	LBB7_43
## BB#48:
	leal	4(%ecx,%ebx,4), %eax
	movl	%esi, 8(%esp)
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	calll	_rpl_regcomp
	movl	%eax, %esi
	jmp	LBB7_49
LBB7_43:
	movl	%ebx, -16(%ebp)         ## 4-byte Spill
	movl	%ecx, -24(%ebp)         ## 4-byte Spill
	movl	%edx, (%esp)
	movl	%edx, %ebx
	calll	_strlen
	movl	%ebx, %ecx
	movl	%eax, %ebx
	incl	%ebx
	.align	4, 0x90
LBB7_44:                                ## =>This Inner Loop Header: Depth=1
	cmpl	$1, %ebx
	je	LBB7_45
## BB#46:                               ##   in Loop: Header=BB7_44 Depth=1
	movzbl	-2(%ecx,%ebx), %eax
	decl	%ebx
	cmpl	$47, %eax
	je	LBB7_44
## BB#47:                               ## %.critedge
	leal	7(%ebx), %eax
	movl	%eax, (%esp)
	calll	_xmalloc
	movl	%eax, -20(%ebp)         ## 4-byte Spill
	movl	%ebx, 8(%esp)
	movl	12(%ebp), %ecx
	movl	%ecx, 4(%esp)
	movl	%eax, (%esp)
	calll	_memcpy
	movl	-20(%ebp), %edx         ## 4-byte Reload
	movb	$0, 6(%edx,%ebx)
	movw	$16169, 4(%edx,%ebx)    ## imm = 0x3F29
	movl	$707669800, (%edx,%ebx) ## imm = 0x2A2E2F28
	movl	-24(%ebp), %eax         ## 4-byte Reload
	movl	-16(%ebp), %ecx         ## 4-byte Reload
	leal	4(%eax,%ecx,4), %eax
	movl	%esi, 8(%esp)
	movl	%edx, 4(%esp)
	movl	%edx, %ebx
	movl	%eax, (%esp)
	calll	_rpl_regcomp
	movl	%eax, %esi
	movl	%ebx, (%esp)
	calll	_free
LBB7_49:
	testl	%esi, %esi
	je	LBB7_59
## BB#50:                               ## %..thread_crit_edge
	movl	20(%edi), %eax
	jmp	LBB7_51
LBB7_45:
	movl	-20(%ebp), %eax         ## 4-byte Reload
LBB7_51:                                ## %.thread
	decl	%eax
	movl	%eax, 20(%edi)
LBB7_59:
	addl	$44, %esp
	popl	%esi
	popl	%edi
	popl	%ebx
	popl	%ebp
	retl
LBB7_60:
	calll	_xalloc_die

	.globl	_add_exclude_fp
	.align	4, 0x90
_add_exclude_fp:                        ## @add_exclude_fp
## BB#0:
	pushl	%ebp
	movl	%esp, %ebp
	pushl	%ebx
	pushl	%edi
	pushl	%esi
	subl	$44, %esp
	calll	L8$pb
L8$pb:
	popl	%eax
	movl	%eax, -20(%ebp)         ## 4-byte Spill
	movl	16(%ebp), %edx
	movl	$0, -16(%ebp)
	xorl	%edi, %edi
	xorl	%esi, %esi
	jmp	LBB8_1
	.align	4, 0x90
LBB8_6:                                 ##   in Loop: Header=BB8_1 Depth=1
	movb	%bl, (%esi,%edi)
	incl	%edi
LBB8_1:                                 ## =>This Inner Loop Header: Depth=1
	movl	4(%edx), %eax
	leal	-1(%eax), %ecx
	movl	%ecx, 4(%edx)
	testl	%eax, %eax
	jle	LBB8_3
## BB#2:                                ## %.thread
                                        ##   in Loop: Header=BB8_1 Depth=1
	movl	(%edx), %eax
	leal	1(%eax), %ecx
	movl	%ecx, (%edx)
	movzbl	(%eax), %ebx
	jmp	LBB8_4
	.align	4, 0x90
LBB8_3:                                 ##   in Loop: Header=BB8_1 Depth=1
	movl	%edx, (%esp)
	movl	%edx, %ebx
	calll	___srget
	movl	%ebx, %edx
	movl	%eax, %ebx
	cmpl	$-1, %ebx
	je	LBB8_7
LBB8_4:                                 ##   in Loop: Header=BB8_1 Depth=1
	cmpl	-16(%ebp), %edi
	jne	LBB8_6
## BB#5:                                ##   in Loop: Header=BB8_1 Depth=1
	leal	-16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%esi, (%esp)
	movl	%edx, %esi
	calll	_x2realloc
	movl	%esi, %edx
	movl	%eax, %esi
	jmp	LBB8_6
LBB8_7:
	xorl	%eax, %eax
	testb	$64, 12(%edx)
	je	LBB8_9
## BB#8:
	calll	___error
	movl	(%eax), %eax
LBB8_9:
	movl	%eax, -32(%ebp)         ## 4-byte Spill
	leal	1(%edi), %eax
	movl	%eax, 4(%esp)
	movl	%esi, (%esp)
	calll	_xrealloc
	movl	%eax, %ebx
	movb	24(%ebp), %cl
	movb	%cl, (%ebx,%edi)
	testl	%edi, %edi
	je	LBB8_10
## BB#11:
	movzbl	-1(%edi,%ebx), %eax
	movzbl	%cl, %ecx
	cmpl	%ecx, %eax
	setne	%al
	jmp	LBB8_12
LBB8_10:
	xorl	%eax, %eax
LBB8_12:
	movzbl	%al, %esi
	addl	%edi, %esi
	movl	$8, (%esp)
	calll	_xmalloc
	movl	%ebx, 4(%eax)
	movl	12(%ebp), %ecx
	movl	%ecx, %edx
	movl	4(%edx), %ecx
	movl	%ecx, (%eax)
	movl	%eax, 4(%edx)
	testl	%esi, %esi
	jle	LBB8_29
## BB#13:                               ## %.lr.ph
	movl	%ebx, %eax
	addl	%esi, %eax
	movl	%eax, -24(%ebp)         ## 4-byte Spill
	movl	%eax, %ecx
	movzbl	24(%ebp), %edx
	movl	%edx, -28(%ebp)         ## 4-byte Spill
	movl	%ebx, %edi
	.align	4, 0x90
LBB8_14:                                ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB8_20 Depth 2
	movzbl	(%ebx), %eax
	cmpl	%edx, %eax
	jne	LBB8_15
## BB#16:                               ##   in Loop: Header=BB8_14 Depth=1
	movb	24(%ebp), %al
	testb	%al, %al
	js	LBB8_18
## BB#17:                               ##   in Loop: Header=BB8_14 Depth=1
	movl	-20(%ebp), %eax         ## 4-byte Reload
	movl	L__DefaultRuneLocale$non_lazy_ptr-L8$pb(%eax), %eax
	movl	52(%eax,%edx,4), %eax
	movl	$16384, %ecx            ## imm = 0x4000
	andl	%ecx, %eax
	jmp	LBB8_19
	.align	4, 0x90
LBB8_15:                                ## %._crit_edge10
                                        ##   in Loop: Header=BB8_14 Depth=1
	incl	%ebx
	jmp	LBB8_28
LBB8_18:                                ##   in Loop: Header=BB8_14 Depth=1
	movl	%edx, (%esp)
	movl	$16384, 4(%esp)         ## imm = 0x4000
	calll	___maskrune
LBB8_19:                                ## %isspace.exit
                                        ##   in Loop: Header=BB8_14 Depth=1
	testl	%eax, %eax
	movl	%ebx, %esi
	je	LBB8_26
	.align	4, 0x90
LBB8_20:                                ## %.preheader
                                        ##   Parent Loop BB8_14 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	cmpl	%esi, %edi
	je	LBB8_27
## BB#21:                               ##   in Loop: Header=BB8_20 Depth=2
	movzbl	-1(%esi), %eax
	testb	%al, %al
	js	LBB8_23
## BB#22:                               ##   in Loop: Header=BB8_20 Depth=2
	movl	-20(%ebp), %ecx         ## 4-byte Reload
	movl	L__DefaultRuneLocale$non_lazy_ptr-L8$pb(%ecx), %ecx
	movl	52(%ecx,%eax,4), %eax
	movl	$16384, %ecx            ## imm = 0x4000
	andl	%ecx, %eax
	jmp	LBB8_24
	.align	4, 0x90
LBB8_23:                                ##   in Loop: Header=BB8_20 Depth=2
	movl	%eax, (%esp)
	movl	$16384, 4(%esp)         ## imm = 0x4000
	calll	___maskrune
LBB8_24:                                ## %isspace.exit3
                                        ##   in Loop: Header=BB8_20 Depth=2
	decl	%esi
	testl	%eax, %eax
	jne	LBB8_20
## BB#25:                               ##   in Loop: Header=BB8_14 Depth=1
	incl	%esi
LBB8_26:                                ## %.loopexit4
                                        ##   in Loop: Header=BB8_14 Depth=1
	movb	$0, (%esi)
	movl	28(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	20(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edi, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	calll	*8(%ebp)
LBB8_27:                                ## %.loopexit
                                        ##   in Loop: Header=BB8_14 Depth=1
	incl	%ebx
	movl	%ebx, %edi
	movl	-24(%ebp), %ecx         ## 4-byte Reload
	movl	-28(%ebp), %edx         ## 4-byte Reload
LBB8_28:                                ##   in Loop: Header=BB8_14 Depth=1
	cmpl	%ecx, %ebx
	jb	LBB8_14
LBB8_29:                                ## %._crit_edge
	calll	___error
	movl	-32(%ebp), %ecx         ## 4-byte Reload
	movl	%ecx, (%eax)
	negl	%ecx
	sbbl	%eax, %eax
	addl	$44, %esp
	popl	%esi
	popl	%edi
	popl	%ebx
	popl	%ebp
	retl

	.globl	_add_exclude_file
	.align	4, 0x90
_add_exclude_file:                      ## @add_exclude_file
## BB#0:
	pushl	%ebp
	movl	%esp, %ebp
	pushl	%ebx
	pushl	%edi
	pushl	%esi
	subl	$28, %esp
	calll	L9$pb
L9$pb:
	popl	%edi
	movb	24(%ebp), %bl
	movl	20(%ebp), %edx
	movl	16(%ebp), %eax
	movl	12(%ebp), %esi
	movl	8(%ebp), %ecx
	movl	%ecx, -16(%ebp)
	movzbl	(%eax), %ecx
	cmpl	$45, %ecx
	jne	LBB9_3
## BB#1:
	cmpb	$0, 1(%eax)
	je	LBB9_2
LBB9_3:                                 ## %.thread
	leal	L_.str1-L9$pb(%edi), %ecx
	movl	%ecx, 4(%esp)
	movl	%eax, (%esp)
	calll	_fopen$DARWIN_EXTSN
	movl	%eax, %esi
	movl	$-1, %eax
	testl	%esi, %esi
	je	LBB9_5
## BB#4:
	leal	-16(%ebp), %eax
	movl	%eax, 20(%esp)
	movsbl	%bl, %eax
	movl	%eax, 16(%esp)
	movl	20(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	%esi, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	_call_addfn-L9$pb(%edi), %eax
	movl	%eax, (%esp)
	calll	_add_exclude_fp
	movl	%eax, %edi
	movl	%esi, (%esp)
	calll	_rpl_fclose
	cmpl	$1, %eax
	sbbl	%eax, %eax
	notl	%eax
	orl	%eax, %edi
	movl	%edi, %eax
	jmp	LBB9_5
LBB9_2:                                 ## %.thread1
	movl	L___stdinp$non_lazy_ptr-L9$pb(%edi), %eax
	movl	(%eax), %eax
	leal	-16(%ebp), %ecx
	movl	%ecx, 20(%esp)
	movsbl	%bl, %ecx
	movl	%ecx, 16(%esp)
	movl	%edx, 12(%esp)
	movl	%eax, 8(%esp)
	movl	%esi, 4(%esp)
	leal	_call_addfn-L9$pb(%edi), %eax
	movl	%eax, (%esp)
	calll	_add_exclude_fp
LBB9_5:
	addl	$28, %esp
	popl	%esi
	popl	%edi
	popl	%ebx
	popl	%ebp
	retl

	.align	4, 0x90
_call_addfn:                            ## @call_addfn
## BB#0:
	pushl	%ebp
	movl	%esp, %ebp
	movl	20(%ebp), %eax
	movl	(%eax), %eax
	popl	%ebp
	jmpl	*%eax                   ## TAILCALL

	.align	4, 0x90
_string_hasher_ci:                      ## @string_hasher_ci
## BB#0:
	pushl	%ebp
	movl	%esp, %ebp
	pushl	%ebx
	pushl	%edi
	pushl	%esi
	subl	$204, %esp
	calll	L11$pb
L11$pb:
	popl	%esi
	movl	8(%ebp), %edi
	movl	L___stack_chk_guard$non_lazy_ptr-L11$pb(%esi), %eax
	movl	%eax, -196(%ebp)        ## 4-byte Spill
	movl	(%eax), %eax
	movl	%eax, -16(%ebp)
	movl	%edi, -56(%ebp)
	movb	$0, -192(%ebp)
	movl	$0, -184(%ebp)
	movl	$0, -188(%ebp)
	movl	$0, -176(%ebp)
	movl	$0, -180(%ebp)
	movl	$0, -168(%ebp)
	movl	$0, -172(%ebp)
	movl	$0, -160(%ebp)
	movl	$0, -164(%ebp)
	movl	$0, -152(%ebp)
	movl	$0, -156(%ebp)
	movl	$0, -144(%ebp)
	movl	$0, -148(%ebp)
	movl	$0, -136(%ebp)
	movl	$0, -140(%ebp)
	movl	$0, -128(%ebp)
	movl	$0, -132(%ebp)
	movl	$0, -120(%ebp)
	movl	$0, -124(%ebp)
	movl	$0, -112(%ebp)
	movl	$0, -116(%ebp)
	movl	$0, -104(%ebp)
	movl	$0, -108(%ebp)
	movl	$0, -96(%ebp)
	movl	$0, -100(%ebp)
	movl	$0, -88(%ebp)
	movl	$0, -92(%ebp)
	movl	$0, -80(%ebp)
	movl	$0, -84(%ebp)
	movl	$0, -72(%ebp)
	movl	$0, -76(%ebp)
	movl	$0, -64(%ebp)
	movl	$0, -68(%ebp)
	xorl	%eax, %eax
	xorl	%ebx, %ebx
	jmp	LBB11_1
	.align	4, 0x90
LBB11_19:                               ##   in Loop: Header=BB11_1 Depth=1
	imull	$31, %ebx, %ecx
	addl	%eax, %ecx
	xorl	%edx, %edx
	movl	%ecx, %eax
	divl	12(%ebp)
	addl	-52(%ebp), %edi
	movl	%edi, -56(%ebp)
	movb	-192(%ebp), %al
	movl	%edx, %ebx
LBB11_1:                                ## =>This Inner Loop Header: Depth=1
	movb	$0, -60(%ebp)
	testb	%al, %al
	jne	LBB11_6
## BB#2:                                ##   in Loop: Header=BB11_1 Depth=1
	movzbl	(%edi), %eax
	movl	%eax, %ecx
	shrl	$3, %ecx
	andl	$28, %ecx
	movl	L_is_basic_table$non_lazy_ptr-L11$pb(%esi), %edx
	movl	(%edx,%ecx), %ecx
	btl	%eax, %ecx
	jae	LBB11_4
## BB#3:                                ##   in Loop: Header=BB11_1 Depth=1
	movl	$1, -52(%ebp)
	movsbl	(%edi), %eax
	movl	%eax, -44(%ebp)
	movb	$1, -48(%ebp)
	jmp	LBB11_15
LBB11_4:                                ##   in Loop: Header=BB11_1 Depth=1
	leal	-188(%ebp), %eax
	movl	%eax, (%esp)
	calll	_mbsinit
	testl	%eax, %eax
	je	LBB11_22
## BB#5:                                ##   in Loop: Header=BB11_1 Depth=1
	movb	$1, -192(%ebp)
	movl	-56(%ebp), %edi
	.align	4, 0x90
LBB11_6:                                ## %._crit_edge.i
                                        ##   in Loop: Header=BB11_1 Depth=1
	movl	L___mb_cur_max$non_lazy_ptr-L11$pb(%esi), %eax
	movl	(%eax), %eax
	movl	%eax, 4(%esp)
	movl	%edi, (%esp)
	calll	_strnlen1
	leal	-188(%ebp), %ecx
	movl	%ecx, 12(%esp)
	movl	%eax, 8(%esp)
	movl	%edi, 4(%esp)
	leal	-44(%ebp), %eax
	movl	%eax, (%esp)
	calll	_mbrtowc
	movl	%eax, -52(%ebp)
	cmpl	$-2, %eax
	je	LBB11_10
## BB#7:                                ## %._crit_edge.i
                                        ##   in Loop: Header=BB11_1 Depth=1
	testl	%eax, %eax
	jne	LBB11_8
## BB#11:                               ##   in Loop: Header=BB11_1 Depth=1
	movl	$1, -52(%ebp)
	movl	-56(%ebp), %eax
	cmpb	$0, (%eax)
	jne	LBB11_23
## BB#12:                               ##   in Loop: Header=BB11_1 Depth=1
	cmpl	$0, -44(%ebp)
	je	LBB11_13
	jmp	LBB11_24
	.align	4, 0x90
LBB11_10:                               ##   in Loop: Header=BB11_1 Depth=1
	movl	-56(%ebp), %eax
	movl	%eax, (%esp)
	calll	_strlen
	movl	%eax, -52(%ebp)
	movb	$0, -48(%ebp)
	jmp	LBB11_15
	.align	4, 0x90
LBB11_8:                                ## %._crit_edge.i
                                        ##   in Loop: Header=BB11_1 Depth=1
	cmpl	$-1, %eax
	jne	LBB11_13
## BB#9:                                ##   in Loop: Header=BB11_1 Depth=1
	movl	$1, -52(%ebp)
	movb	$0, -48(%ebp)
	jmp	LBB11_15
	.align	4, 0x90
LBB11_13:                               ##   in Loop: Header=BB11_1 Depth=1
	movb	$1, -48(%ebp)
	leal	-188(%ebp), %eax
	movl	%eax, (%esp)
	calll	_mbsinit
	testl	%eax, %eax
	je	LBB11_15
## BB#14:                               ##   in Loop: Header=BB11_1 Depth=1
	movb	$0, -192(%ebp)
LBB11_15:                               ## %mbuiter_multi_next.exit
                                        ##   in Loop: Header=BB11_1 Depth=1
	movb	$1, -60(%ebp)
	cmpb	$0, -48(%ebp)
	je	LBB11_18
## BB#16:                               ##   in Loop: Header=BB11_1 Depth=1
	cmpl	$0, -44(%ebp)
	je	LBB11_20
## BB#17:                               ##   in Loop: Header=BB11_1 Depth=1
	movl	-44(%ebp), %eax
	movl	%eax, (%esp)
	calll	___tolower
	movl	-56(%ebp), %edi
	jmp	LBB11_19
	.align	4, 0x90
LBB11_18:                               ##   in Loop: Header=BB11_1 Depth=1
	movl	-56(%ebp), %edi
	movsbl	(%edi), %eax
	jmp	LBB11_19
LBB11_20:
	movl	-196(%ebp), %eax        ## 4-byte Reload
	movl	(%eax), %eax
	cmpl	-16(%ebp), %eax
	jne	LBB11_25
## BB#21:
	movl	%ebx, %eax
	addl	$204, %esp
	popl	%esi
	popl	%edi
	popl	%ebx
	popl	%ebp
	retl
LBB11_23:
	leal	L_.str4-L11$pb(%esi), %eax
	movl	%eax, 12(%esp)
	leal	L_.str2-L11$pb(%esi), %eax
	movl	%eax, 4(%esp)
	leal	L___func__.mbuiter_multi_next-L11$pb(%esi), %eax
	movl	%eax, (%esp)
	movl	$178, 8(%esp)
	calll	___assert_rtn
LBB11_24:
	leal	L_.str5-L11$pb(%esi), %eax
	movl	%eax, 12(%esp)
	leal	L_.str2-L11$pb(%esi), %eax
	movl	%eax, 4(%esp)
	leal	L___func__.mbuiter_multi_next-L11$pb(%esi), %eax
	movl	%eax, (%esp)
	movl	$179, 8(%esp)
	calll	___assert_rtn
LBB11_22:
	leal	L_.str3-L11$pb(%esi), %eax
	movl	%eax, 12(%esp)
	leal	L_.str2-L11$pb(%esi), %eax
	movl	%eax, 4(%esp)
	leal	L___func__.mbuiter_multi_next-L11$pb(%esi), %eax
	movl	%eax, (%esp)
	movl	$150, 8(%esp)
	calll	___assert_rtn
LBB11_25:
	calll	___stack_chk_fail

	.align	4, 0x90
_string_hasher:                         ## @string_hasher
## BB#0:
	pushl	%ebp
	movl	%esp, %ebp
	popl	%ebp
	jmp	_hash_string            ## TAILCALL

	.align	4, 0x90
_string_compare_ci:                     ## @string_compare_ci
## BB#0:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$8, %esp
	movl	8(%ebp), %eax
	movl	12(%ebp), %ecx
	movl	%ecx, 4(%esp)
	movl	%eax, (%esp)
	calll	_mbscasecmp
	testl	%eax, %eax
	sete	%al
	movzbl	%al, %eax
	addl	$8, %esp
	popl	%ebp
	retl

	.align	4, 0x90
_string_compare:                        ## @string_compare
## BB#0:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$8, %esp
	movl	8(%ebp), %eax
	movl	12(%ebp), %ecx
	movl	%ecx, 4(%esp)
	movl	%eax, (%esp)
	calll	_strcmp
	testl	%eax, %eax
	sete	%al
	movzbl	%al, %eax
	addl	$8, %esp
	popl	%ebp
	retl

	.align	4, 0x90
_string_free:                           ## @string_free
## BB#0:
	pushl	%ebp
	movl	%esp, %ebp
	popl	%ebp
	jmp	_free                   ## TAILCALL

	.section	__TEXT,__cstring,cstring_literals
L_.str:                                 ## @.str
	.asciz	"(/.*)?"

L_.str1:                                ## @.str1
	.asciz	"r"

L___func__.mbuiter_multi_next:          ## @__func__.mbuiter_multi_next
	.asciz	"mbuiter_multi_next"

L_.str2:                                ## @.str2
	.asciz	"./lib/mbuiter.h"

L_.str3:                                ## @.str3
	.asciz	"mbsinit (&iter->state)"

L_.str4:                                ## @.str4
	.asciz	"*iter->cur.ptr == '\\0'"

L_.str5:                                ## @.str5
	.asciz	"iter->cur.wc == 0"


	.section	__IMPORT,__pointers,non_lazy_symbol_pointers
L__DefaultRuneLocale$non_lazy_ptr:
	.indirect_symbol	__DefaultRuneLocale
	.long	0
L___mb_cur_max$non_lazy_ptr:
	.indirect_symbol	___mb_cur_max
	.long	0
L___stack_chk_guard$non_lazy_ptr:
	.indirect_symbol	___stack_chk_guard
	.long	0
L___stdinp$non_lazy_ptr:
	.indirect_symbol	___stdinp
	.long	0
L_gnu_fnmatch$non_lazy_ptr:
	.indirect_symbol	_gnu_fnmatch
	.long	0
L_is_basic_table$non_lazy_ptr:
	.indirect_symbol	_is_basic_table
	.long	0

.subsections_via_symbols
