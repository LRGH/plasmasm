	.section	__TEXT,__text,regular,pure_instructions
	.macosx_version_min 10, 12

	.align	4, 0x90
_read_markers:                          ## @read_markers
## BB#0:
	pushl	%ebp
	movl	%esp, %ebp
	pushl	%ebx
	pushl	%edi
	pushl	%esi
	subl	$604, %esp              ## imm = 0x25C
	calll	L4$pb
L4$pb:
	popl	%eax
	movl	%eax, -568(%ebp)        ## 4-byte Spill
	movl	8(%ebp), %edx
	movl	L___stack_chk_guard$non_lazy_ptr-L4$pb(%eax), %eax
	movl	%eax, -588(%ebp)        ## 4-byte Spill
	movl	(%eax), %eax
	movl	%eax, -16(%ebp)
	movl	472(%edx), %edi
	jmp	LBB4_1
	.align	4, 0x90
LBB4_170:                               ##   in Loop: Header=BB4_1 Depth=1
	movl	$0, 472(%esi)
	xorl	%edi, %edi
	movl	%esi, %edx
LBB4_1:                                 ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB4_118 Depth 2
                                        ##       Child Loop BB4_126 Depth 3
                                        ##       Child Loop BB4_141 Depth 3
                                        ##     Child Loop BB4_83 Depth 2
                                        ##       Child Loop BB4_87 Depth 3
                                        ##       Child Loop BB4_95 Depth 3
	testl	%edi, %edi
	jne	LBB4_16
## BB#2:                                ##   in Loop: Header=BB4_1 Depth=1
	movl	496(%edx), %eax
	cmpl	$0, 12(%eax)
	je	LBB4_3
## BB#14:                               ##   in Loop: Header=BB4_1 Depth=1
	movl	%edx, %ecx
	movl	%edx, %esi
	calll	_next_marker
	xorl	%ebx, %ebx
	testl	%eax, %eax
	je	LBB4_172
## BB#15:                               ## %.thread-pre-split_crit_edge
                                        ##   in Loop: Header=BB4_1 Depth=1
	movl	472(%esi), %edi
	movl	%esi, %edx
	jmp	LBB4_16
LBB4_3:                                 ##   in Loop: Header=BB4_1 Depth=1
	movl	24(%edx), %ecx
	movl	4(%ecx), %ebx
	testl	%ebx, %ebx
	jne	LBB4_6
## BB#4:                                ##   in Loop: Header=BB4_1 Depth=1
	movl	%edx, (%esp)
	movl	%edx, %esi
	movl	%ecx, %edi
	calll	*12(%edi)
	xorl	%ebx, %ebx
	testl	%eax, %eax
	je	LBB4_172
## BB#5:                                ##   in Loop: Header=BB4_1 Depth=1
	movl	4(%edi), %ebx
	movl	%esi, %edx
	movl	%edi, %ecx
LBB4_6:                                 ##   in Loop: Header=BB4_1 Depth=1
	movl	(%ecx), %esi
	decl	%ebx
	movzbl	(%esi), %eax
	movl	%eax, -572(%ebp)        ## 4-byte Spill
	je	LBB4_8
## BB#7:                                ##   in Loop: Header=BB4_1 Depth=1
	incl	%esi
	jmp	LBB4_10
LBB4_8:                                 ##   in Loop: Header=BB4_1 Depth=1
	movl	%edx, (%esp)
	movl	%edx, %esi
	movl	%ecx, %edi
	calll	*12(%edi)
	xorl	%ebx, %ebx
	testl	%eax, %eax
	je	LBB4_172
## BB#9:                                ##   in Loop: Header=BB4_1 Depth=1
	movl	%esi, %eax
	movl	(%edi), %esi
	movl	4(%edi), %ebx
	movl	%eax, %edx
	movl	%edi, %ecx
LBB4_10:                                ##   in Loop: Header=BB4_1 Depth=1
	decl	%ebx
	movb	(%esi), %al
	incl	%esi
	movzbl	%al, %edi
	cmpl	$255, -572(%ebp)        ## 4-byte Folded Reload
	jne	LBB4_12
## BB#11:                               ##   in Loop: Header=BB4_1 Depth=1
	movzbl	%al, %eax
	cmpl	$216, %eax
	je	LBB4_13
LBB4_12:                                ##   in Loop: Header=BB4_1 Depth=1
	movl	(%edx), %eax
	movl	%eax, -576(%ebp)        ## 4-byte Spill
	movl	$53, 20(%eax)
	movl	-572(%ebp), %eax        ## 4-byte Reload
	movl	-576(%ebp), %edx        ## 4-byte Reload
	movl	%eax, 24(%edx)
	movl	-576(%ebp), %eax        ## 4-byte Reload
	movl	%edi, 28(%eax)
	movl	8(%ebp), %edx
	movl	%edx, (%esp)
	movl	%ecx, -572(%ebp)        ## 4-byte Spill
	calll	*(%eax)
	movl	-572(%ebp), %ecx        ## 4-byte Reload
	movl	8(%ebp), %edx
LBB4_13:                                ## %first_marker.exit
                                        ##   in Loop: Header=BB4_1 Depth=1
	movl	%edi, 472(%edx)
	movl	%esi, (%ecx)
	movl	%ebx, 4(%ecx)
	.align	4, 0x90
LBB4_16:                                ## %thread-pre-split
                                        ##   in Loop: Header=BB4_1 Depth=1
	cmpl	$191, %edi
	jg	LBB4_19
## BB#17:                               ## %thread-pre-split
                                        ##   in Loop: Header=BB4_1 Depth=1
	cmpl	$1, %edi
	jne	LBB4_168
	jmp	LBB4_18
	.align	4, 0x90
LBB4_19:                                ## %thread-pre-split
                                        ##   in Loop: Header=BB4_1 Depth=1
	leal	-192(%edi), %eax
	cmpl	$62, %eax
	ja	LBB4_168
## BB#20:                               ## %thread-pre-split
                                        ##   in Loop: Header=BB4_1 Depth=1
	movl	-568(%ebp), %ecx        ## 4-byte Reload
Ltmp0 = LJTI4_0-L4$pb
	movl	Ltmp0(%ecx,%eax,4), %eax
	addl	%ecx, %eax
	jmpl	*%eax
LBB4_165:                               ##   in Loop: Header=BB4_1 Depth=1
	movl	496(%edx), %eax
	movl	%edx, (%esp)
	movl	%edx, %esi
	calll	*-864(%eax,%edi,4)
LBB4_28:                                ##   in Loop: Header=BB4_1 Depth=1
	xorl	%ebx, %ebx
LBB4_29:                                ##   in Loop: Header=BB4_1 Depth=1
	testl	%eax, %eax
	jne	LBB4_170
	jmp	LBB4_172
	.align	4, 0x90
LBB4_168:                               ##   in Loop: Header=BB4_1 Depth=1
	movl	(%edx), %eax
	movl	$68, 20(%eax)
LBB4_169:                               ##   in Loop: Header=BB4_1 Depth=1
	movl	%edi, 24(%eax)
	movl	%edx, (%esp)
	movl	%edx, %esi
	calll	*(%eax)
	jmp	LBB4_170
	.align	4, 0x90
LBB4_18:                                ##   in Loop: Header=BB4_1 Depth=1
	movl	(%edx), %eax
	movl	$92, 20(%eax)
	movl	%edi, 24(%eax)
	movl	%edx, (%esp)
	movl	$1, 4(%esp)
	movl	%edx, %esi
	calll	*4(%eax)
	jmp	LBB4_170
LBB4_32:                                ##   in Loop: Header=BB4_1 Depth=1
	movl	(%edx), %eax
	movl	$60, 20(%eax)
	jmp	LBB4_169
LBB4_24:                                ##   in Loop: Header=BB4_1 Depth=1
	movl	$0, (%esp)
	jmp	LBB4_25
LBB4_167:                               ##   in Loop: Header=BB4_1 Depth=1
	movl	%edx, (%esp)
	movl	%edx, %esi
	calll	_skip_variable
	jmp	LBB4_28
LBB4_26:                                ##   in Loop: Header=BB4_1 Depth=1
	movl	$0, (%esp)
	jmp	LBB4_27
LBB4_75:                                ##   in Loop: Header=BB4_1 Depth=1
	movl	24(%edx), %esi
	movl	4(%esi), %ebx
	testl	%ebx, %ebx
	jne	LBB4_78
## BB#76:                               ##   in Loop: Header=BB4_1 Depth=1
	movl	%edx, (%esp)
	movl	%edx, %edi
	calll	*12(%esi)
	testl	%eax, %eax
	je	LBB4_174
## BB#77:                               ##   in Loop: Header=BB4_1 Depth=1
	movl	4(%esi), %ebx
	movl	%edi, %edx
LBB4_78:                                ##   in Loop: Header=BB4_1 Depth=1
	movl	(%esi), %edi
	movzbl	(%edi), %ecx
	decl	%ebx
	je	LBB4_80
## BB#79:                               ##   in Loop: Header=BB4_1 Depth=1
	movl	%esi, -572(%ebp)        ## 4-byte Spill
	incl	%edi
	jmp	LBB4_82
LBB4_30:                                ##   in Loop: Header=BB4_1 Depth=1
	movl	$1, (%esp)
LBB4_25:                                ##   in Loop: Header=BB4_1 Depth=1
	xorl	%ebx, %ebx
	movl	%edx, %esi
	xorl	%edx, %edx
	movl	%esi, %ecx
	calll	_get_sof
	jmp	LBB4_29
LBB4_31:                                ##   in Loop: Header=BB4_1 Depth=1
	movl	$1, (%esp)
LBB4_27:                                ##   in Loop: Header=BB4_1 Depth=1
LBB4_86:                                ##   in Loop: Header=BB4_83 Depth=2
LBB4_87:                                ##   Parent Loop BB4_1 Depth=1
LBB4_90:                                ##   in Loop: Header=BB4_87 Depth=3
LBB4_93:                                ##   in Loop: Header=BB4_83 Depth=2
LBB4_94:                                ## %.preheader.i
LBB4_115:                               ##   in Loop: Header=BB4_1 Depth=1
LBB4_117:                               ##   in Loop: Header=BB4_1 Depth=1
LBB4_21:
LBB4_33:
LBB4_35:
LBB4_38:
LBB4_80:
LBB4_82:
LBB4_110:
LBB4_144:
LBB4_147:
LBB4_152:
LBB4_154:
LBB4_166:
LBB4_171:                               ## %first_marker.exit.thread
LBB4_172:
LBB4_174:                               ## %first_marker.exit.thread
	movl	%ebx, %eax
	addl	$604, %esp              ## imm = 0x25C
	popl	%esi
	popl	%edi
	popl	%ebx
	popl	%ebp
	retl
LBB4_175:                               ## %first_marker.exit.thread
	calll	___stack_chk_fail
	.align	2, 0x90
L4_0_set_24 = LBB4_24-L4$pb
L4_0_set_26 = LBB4_26-L4$pb
L4_0_set_32 = LBB4_32-L4$pb
L4_0_set_75 = LBB4_75-L4$pb
L4_0_set_30 = LBB4_30-L4$pb
L4_0_set_31 = LBB4_31-L4$pb
L4_0_set_167 = LBB4_167-L4$pb
L4_0_set_18 = LBB4_18-L4$pb
L4_0_set_21 = LBB4_21-L4$pb
L4_0_set_171 = LBB4_171-L4$pb
L4_0_set_33 = LBB4_33-L4$pb
L4_0_set_110 = LBB4_110-L4$pb
L4_0_set_147 = LBB4_147-L4$pb
L4_0_set_168 = LBB4_168-L4$pb
L4_0_set_165 = LBB4_165-L4$pb
L4_0_set_166 = LBB4_166-L4$pb
LJTI4_0:
	.long	L4_0_set_24
	.long	L4_0_set_24
	.long	L4_0_set_26
	.long	L4_0_set_32
	.long	L4_0_set_75
	.long	L4_0_set_32
	.long	L4_0_set_32
	.long	L4_0_set_32
	.long	L4_0_set_32
	.long	L4_0_set_30
	.long	L4_0_set_31
	.long	L4_0_set_32
	.long	L4_0_set_167
	.long	L4_0_set_32
	.long	L4_0_set_32
	.long	L4_0_set_32
	.long	L4_0_set_18
	.long	L4_0_set_18
	.long	L4_0_set_18
	.long	L4_0_set_18
	.long	L4_0_set_18
	.long	L4_0_set_18
	.long	L4_0_set_18
	.long	L4_0_set_18
	.long	L4_0_set_21
	.long	L4_0_set_171
	.long	L4_0_set_33
	.long	L4_0_set_110
	.long	L4_0_set_167
	.long	L4_0_set_147
	.long	L4_0_set_168
	.long	L4_0_set_168
	.long	L4_0_set_165
	.long	L4_0_set_165
	.long	L4_0_set_165
	.long	L4_0_set_165
	.long	L4_0_set_165
	.long	L4_0_set_165
	.long	L4_0_set_165
	.long	L4_0_set_165
	.long	L4_0_set_165
	.long	L4_0_set_165
	.long	L4_0_set_165
	.long	L4_0_set_165
	.long	L4_0_set_165
	.long	L4_0_set_165
	.long	L4_0_set_165
	.long	L4_0_set_165
	.long	L4_0_set_168
	.long	L4_0_set_168
	.long	L4_0_set_168
	.long	L4_0_set_168
	.long	L4_0_set_168
	.long	L4_0_set_168
	.long	L4_0_set_168
	.long	L4_0_set_168
	.long	L4_0_set_168
	.long	L4_0_set_168
	.long	L4_0_set_168
	.long	L4_0_set_168
	.long	L4_0_set_168
	.long	L4_0_set_168
	.long	L4_0_set_166


	.section	__IMPORT,__pointers,non_lazy_symbol_pointers
L___stack_chk_guard$non_lazy_ptr:
	.indirect_symbol	___stack_chk_guard
	.long	0
L_jpeg_natural_order$non_lazy_ptr:
	.indirect_symbol	_jpeg_natural_order
	.long	0

.subsections_via_symbols
