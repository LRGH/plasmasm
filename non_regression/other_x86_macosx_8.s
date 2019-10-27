	.section	__TEXT,__text,regular,pure_instructions
	.macosx_version_min 10, 11


	.align	4, 0x90
_ellrootno_3:                           ## @ellrootno_3
## BB#0:
	pushl	%ebp
	pushl	%ebx
	pushl	%edi
	pushl	%esi
	subl	$44, %esp
	movl	%ecx, %ebx
	calll	L60$pb
L60$pb:
	popl	%ecx
	movl	%ecx, 16(%esp)          ## 4-byte Spill
	movl	40(%ebx), %edx
	movl	44(%ebx), %esi
	movl	48(%ebx), %edi
	movl	$0, 32(%esp)            ## 4-byte Folded Spill
	cmpl	$1073741824, 4(%edx)    ## imm = 0x40000000
	movl	L_avma$non_lazy_ptr-L60$pb(%ecx), %ebp
	movl	(%ebp), %eax
	movl	%eax, 28(%esp)          ## 4-byte Spill
	movl	$12, 24(%esp)           ## 4-byte Folded Spill
	movl	$0, %eax
	jb	LBB60_2
## BB#1:
	leal	40(%esp), %ecx
	movl	%ecx, 8(%esp)
	movl	%edx, (%esp)
	movl	$3, 4(%esp)
	calll	_Z_lvalrem
	movl	%eax, 24(%esp)          ## 4-byte Spill
	movl	40(%esp), %eax
	movl	%eax, (%esp)
	movl	$81, 4(%esp)
	calll	_umodiu
LBB60_2:                                ## %val_aux.exit
	movl	%eax, 20(%esp)          ## 4-byte Spill
	cmpl	$1073741824, 4(%esi)    ## imm = 0x40000000
	jb	LBB60_4
## BB#3:
	leal	40(%esp), %eax
	movl	%eax, 8(%esp)
	movl	%esi, (%esp)
	movl	$3, 4(%esp)
	calll	_Z_lvalrem
	movl	40(%esp), %eax
	movl	%eax, (%esp)
	movl	$81, 4(%esp)
	calll	_umodiu
	movl	%eax, 32(%esp)          ## 4-byte Spill
LBB60_4:                                ## %val_aux.exit7
	cmpl	$1073741823, 4(%edi)    ## imm = 0x3FFFFFFF
	jbe	LBB60_5
## BB#6:                                ## %val_init.exit
	leal	40(%esp), %eax
	movl	%eax, 8(%esp)
	movl	%edi, (%esp)
	movl	$3, 4(%esp)
	calll	_Z_lvalrem
	movl	%eax, %edi
	movl	40(%esp), %eax
	movl	%eax, (%esp)
	movl	$81, 4(%esp)
	calll	_umodiu
	movl	%eax, 12(%esp)          ## 4-byte Spill
	movl	28(%esp), %eax          ## 4-byte Reload
	movl	%eax, (%ebp)
	movl	$1, %eax
	testl	%edi, %edi
	movl	32(%esp), %ebp          ## 4-byte Reload
	jne	LBB60_7
	jmp	LBB60_34
LBB60_5:                                ## %val_init.exit.thread
	movl	28(%esp), %eax          ## 4-byte Reload
	movl	%eax, (%ebp)
	movl	$0, 12(%esp)            ## 4-byte Folded Spill
	movl	32(%esp), %ebp          ## 4-byte Reload
LBB60_7:
	leal	36(%esp), %eax
	movl	%eax, (%esp)
	movl	$3, %edx
	movl	%ebx, %ecx
	calll	_neron
	movl	%eax, %edi
	movl	%ebp, (%esp)
	movl	$3, 4(%esp)
	calll	_kross
	movl	%eax, %ebx
	movl	36(%esp), %esi
	cmpl	$4, %esi
	jle	LBB60_9
## BB#8:
	movl	%ebx, %eax
	jmp	LBB60_34
LBB60_9:
	movl	%edi, 32(%esp)          ## 4-byte Spill
	movl	$954437177, %ecx        ## imm = 0x38E38E39
	movl	%ebp, %eax
	imull	%ecx
	movl	%edx, %edi
	movl	20(%esp), %eax          ## 4-byte Reload
	movl	%eax, (%esp)
	movl	$3, 4(%esp)
	calll	_kross
	movl	%eax, %ecx
	addl	$4, %esi
	cmpl	$8, %esi
	ja	LBB60_33
## BB#10:
	movl	%edi, %eax
	shrl	$31, %eax
	sarl	%edi
	addl	%eax, %edi
	leal	(%edi,%edi,8), %eax
	subl	%eax, %ebp
	movl	16(%esp), %eax          ## 4-byte Reload
Ltmp11 = LJTI60_0-L60$pb
	movl	Ltmp11(%eax,%esi,4), %edx
	addl	%eax, %edx
	movl	%eax, %esi
	movl	$1, %eax
	jmpl	*%edx
LBB60_22:
	movl	32(%esp), %eax          ## 4-byte Reload
	decl	%eax
	cmpl	$3, %eax
	jbe	LBB60_23
LBB60_33:
	movl	$-1, %eax
LBB60_34:
	addl	$44, %esp
	popl	%esi
	popl	%edi
	popl	%ebx
	popl	%ebp
	retl
LBB60_11:
	movl	32(%esp), %eax          ## 4-byte Reload
	leal	-1(%eax), %eax
	cmpl	$3, %eax
	ja	LBB60_21
## BB#12:
Ltmp12 = LJTI60_2-L60$pb
	addl	Ltmp12(%esi,%eax,4), %esi
	movl	$1, %eax
	jmpl	*%esi
LBB60_13:
	cmpl	$4, %ebp
	movl	$1, %eax
	je	LBB60_34
## BB#14:
	cmpl	$6, %ebp
	movl	$1, %ecx
	movl	$-1, %eax
	cmovgl	%ecx, %eax
	jmp	LBB60_34
LBB60_16:
	movl	32(%esp), %eax          ## 4-byte Reload
	cmpl	$3, %eax
	je	LBB60_30
## BB#17:
	cmpl	$2, %eax
	jne	LBB60_18
## BB#20:
	negl	%ecx
	movl	%ecx, %eax
	jmp	LBB60_34
LBB60_23:
Ltmp13 = LJTI60_1-L60$pb
	addl	Ltmp13(%esi,%eax,4), %esi
	movl	%ebx, %eax
	jmpl	*%esi
LBB60_24:
	cmpl	$4, 24(%esp)            ## 4-byte Folded Reload
	jne	LBB60_28
## BB#25:
	cmpl	$4, %ebp
	movl	$1, %eax
	je	LBB60_34
## BB#26:
	cmpl	$8, %ebp
	jmp	LBB60_27
LBB60_30:
	negl	%ebx
	movl	%ebx, %eax
	jmp	LBB60_34
LBB60_18:
	cmpl	$1, %eax
	jne	LBB60_21
## BB#19:
	movl	12(%esp), %eax          ## 4-byte Reload
	movl	%eax, (%esp)
	movl	$3, 4(%esp)
	calll	_kross
	imull	%ebx, %eax
	jmp	LBB60_34
LBB60_21:
	cmpl	$2, 32(%esp)            ## 4-byte Folded Reload
	movl	$1, %eax
	cmovel	%eax, %ebx
	movl	%ebx, %eax
	jmp	LBB60_34
LBB60_15:
	negl	%ebx
	imull	%ebx, %ecx
	movl	%ecx, %eax
	jmp	LBB60_34
LBB60_31:
	cmpl	$2, %ebp
	movl	$1, %eax
	je	LBB60_34
## BB#32:
	cmpl	$7, %ebp
	jmp	LBB60_27
LBB60_28:
	cmpl	$1, %ebp
	movl	$1, %eax
	je	LBB60_34
## BB#29:
	cmpl	$2, %ebp
LBB60_27:
	movl	$1, %ecx
	movl	$-1, %eax
	cmovel	%ecx, %eax
	jmp	LBB60_34
	.align	2, 0x90
L60_0_set_22 = LBB60_22-L60$pb
L60_0_set_34 = LBB60_34-L60$pb
L60_0_set_21 = LBB60_21-L60$pb
L60_0_set_33 = LBB60_33-L60$pb
L60_0_set_11 = LBB60_11-L60$pb
L60_0_set_16 = LBB60_16-L60$pb
LJTI60_0:
	.long	L60_0_set_22
	.long	L60_0_set_34
	.long	L60_0_set_21
	.long	L60_0_set_33
	.long	L60_0_set_33
	.long	L60_0_set_34
	.long	L60_0_set_11
	.long	L60_0_set_34
	.long	L60_0_set_16
L60_1_set_24 = LBB60_24-L60$pb
L60_1_set_30 = LBB60_30-L60$pb
L60_1_set_31 = LBB60_31-L60$pb
L60_1_set_34 = LBB60_34-L60$pb
LJTI60_1:
	.long	L60_1_set_24
	.long	L60_1_set_30
	.long	L60_1_set_31
	.long	L60_1_set_34
L60_2_set_13 = LBB60_13-L60$pb
L60_2_set_15 = LBB60_15-L60$pb
L60_2_set_34 = LBB60_34-L60$pb
L60_2_set_30 = LBB60_30-L60$pb
LJTI60_2:
	.long	L60_2_set_13
	.long	L60_2_set_15
	.long	L60_2_set_34
	.long	L60_2_set_30

	.section	__TEXT,__literal16,16byte_literals
	.align	4
LCPI61_0:
	.long	4294967295              ## 0xffffffff
	.long	4294967294              ## 0xfffffffe
	.long	4294967293              ## 0xfffffffd
	.long	4294967292              ## 0xfffffffc

	.section	__IMPORT,__pointers,non_lazy_symbol_pointers
L_avma$non_lazy_ptr:
	.indirect_symbol	_avma
	.long	0
L_bot$non_lazy_ptr:
	.indirect_symbol	_bot
	.long	0

.subsections_via_symbols
