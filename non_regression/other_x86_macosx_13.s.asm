	.section       __TEXT,__text,regular,pure_instructions
	.align 4, 0x90
	.globl	_F2x_degree
_F2x_degree:
	pushl     %esi
	movl      8(%esp), %edx
	movl      $16777215, %ecx
	andl      (%edx), %ecx
	movl      $-1, %eax
	cmpl      $2, %ecx
	je        LBB0_6
	movl      -4(%edx,%ecx,4), %edx
	movl      %edx, %eax
	shrl      $16, %eax
	cmpl      $65535, %edx
	cmovbe    %edx, %eax
	movl      $12, %esi
	movl      $28, %edx
	cmova     %esi, %edx
	cmpl      $256, %eax
	jb        LBB0_3
	addl      $-8, %edx
	shrl      $8, %eax
LBB0_3:
	call      L0$pb
L0$pb:
	popl      %esi
	shll      $5, %ecx
	cmpl      $16, %eax
	jb        LBB0_5
	addl      $-4, %edx
	shrl      $4, %eax
LBB0_5:
	addl      $-65, %ecx
	subl      %edx, %ecx
	subl      _F2x_degree_lg.__bfffo_tabshi-L0$pb(%esi,%eax,4), %ecx
	movl      %ecx, %eax
LBB0_6:
	popl      %esi
	ret       
# ----------------------
	.align 4, 0x90
	.globl	_F2x_to_ZX
_F2x_to_ZX:
	pushl     %ebp
	pushl     %ebx
	pushl     %edi
	pushl     %esi
	subl      $60, %esp
	call      L1$pb
L1$pb:
	popl      %ebx
	movl      %ebx, 56(%esp)
	movl      80(%esp), %ecx
	movl      $16777215, %eax
	andl      (%ecx), %eax
	movl      $2, %ebp
	cmpl      $2, %eax
	je        LBB1_6
	movl      80(%esp), %ecx
	movl      -4(%ecx,%eax,4), %edx
	movl      %edx, %ecx
	shrl      $16, %ecx
	cmpl      $65535, %edx
	cmovbe    %edx, %ecx
	movl      $12, %esi
	movl      $28, %edx
	cmova     %esi, %edx
	cmpl      $256, %ecx
	jb        LBB1_3
	addl      $-8, %edx
	shrl      $8, %ecx
LBB1_3:
	shll      $5, %eax
	cmpl      $16, %ecx
	jb        LBB1_5
	addl      $-4, %edx
	shrl      $4, %ecx
LBB1_5:
	addl      $-62, %eax
	subl      %edx, %eax
	subl      _F2x_degree_lg.__bfffo_tabshi-L1$pb(%ebx,%ecx,4), %eax
	movl      %eax, %ebp
LBB1_6:
	movl      %ebp, 36(%esp)
	movl      L_avma$non_lazy_ptr-L1$pb(%ebx), %esi
	movl      (%esi), %ecx
	movl      %ecx, 28(%esp)
	leal      0(,%ebp,4), %eax
	movl      %ecx, %edx
	subl      %eax, %edx
	movl      %edx, 20(%esp)
	movl      L_bot$non_lazy_ptr-L1$pb(%ebx), %eax
	subl      (%eax), %ecx
	shrl      $2, %ecx
	cmpl      %ebp, %ecx
	jae       LBB1_8
	movl      $14, (%esp)
	call      _pari_err
LBB1_8:
	movl      20(%esp), %eax
	movl      %eax, (%esi)
	cmpl      $16777216, %ebp
	jb        LBB1_10
	leal      L_.str4-L1$pb(%ebx), %eax
	movl      %eax, 4(%esp)
	movl      $15, (%esp)
	call      _pari_err
LBB1_10:
	movl      %ebp, %eax
	orl       $335544320, %eax
	movl      20(%esp), %ecx
	movl      %eax, (%ecx)
	movl      80(%esp), %eax
	movl      (%eax), %eax
	movl      %eax, %ecx
	andl      $16777215, %ecx
	cmpl      $3, %ecx
	jb        LBB1_21
	movl      %ebp, %ecx
	negl      %ecx
	movl      %ecx, 32(%esp)
	movl      $1, %ecx
	subl      %ebp, %ecx
	movl      28(%esp), %edx
	leal      (%edx,%ecx,4), %ecx
	movl      %ecx, 24(%esp)
	movl      $2, %esi
	movl      $2, %edi
	.align 4, 0x90
LBB1_12:
	movl      %esi, %edx
	subl      %ebp, %edx
	jge       LBB1_13
	cmpl      $-32, %edx
	movl      $-32, %eax
	cmova     %edx, %eax
	movl      %eax, 48(%esp)
	movl      32(%esp), %eax
	leal      (%eax,%esi), %ebp
	cmpl      $-32, %ebp
	movl      $-32, %eax
	cmovbe    %eax, %ebp
	movl      %ebp, %ecx
	negl      %ecx
	notl      %ebp
	xorl      %eax, %eax
	testb     $1, %cl
	movl      %esi, %ecx
	je        LBB1_16
	movl      80(%esp), %eax
	movl      (%eax,%edi,4), %eax
	testb     $1, %al
	movl      L_gen_0$non_lazy_ptr-L1$pb(%ebx), %eax
	cmovne    L_gen_1$non_lazy_ptr-L1$pb(%ebx), %eax
	movl      (%eax), %eax
	movl      28(%esp), %ecx
	movl      %eax, (%ecx,%edx,4)
	movl      $1, %eax
	leal      1(%esi), %ecx
LBB1_16:
	movl      %ecx, 40(%esp)
	movl      %esi, 44(%esp)
	testl     %ebp, %ebp
	movl      80(%esp), %ecx
	movl      %edi, %edx
	je        LBB1_19
	movl      48(%esp), %esi
	notl      %esi
	movl      %esi, 52(%esp)
	movl      %ecx, %esi
	movl      24(%esp), %ecx
	movl      40(%esp), %edi
	leal      (%ecx,%edi,4), %ebp
	movl      %esi, %ecx
	.align 4, 0x90
LBB1_18:
	movl      (%ecx,%edx,4), %esi
	btl       %eax, %esi
	movl      L_gen_1$non_lazy_ptr-L1$pb(%ebx), %esi
	movl      56(%esp), %ecx
	movl      L_gen_0$non_lazy_ptr-L1$pb(%ecx), %ebx
	movl      %ebx, %edi
	cmovb     %esi, %edi
	movl      (%edi), %edi
	movl      %edi, -4(%ebp)
	leal      1(%eax), %edi
	movl      %edx, %ecx
	movl      80(%esp), %edx
	movl      (%edx,%ecx,4), %edx
	btl       %edi, %edx
	cmovb     %esi, %ebx
	movl      (%ebx), %edx
	movl      56(%esp), %ebx
	movl      %edx, (%ebp)
	movl      %ecx, %edx
	movl      80(%esp), %ecx
	addl      $2, %eax
	addl      $8, %ebp
	cmpl      52(%esp), %edi
	jne       LBB1_18
LBB1_19:
	movl      44(%esp), %esi
	subl      48(%esp), %esi
	movl      (%ecx), %eax
	movl      36(%esp), %ebp
	movl      %edx, %ecx
	jmp       LBB1_20
	.align 4, 0x90
LBB1_13:
	movl      %edi, %ecx
LBB1_20:
	incl      %ecx
	movl      %ecx, %edi
	movl      %eax, %edx
	andl      $16777215, %edx
	cmpl      %edx, %edi
	jl        LBB1_12
LBB1_21:
	cmpl      $2, %ebp
	setg      %al
	movzbl    %al, %eax
	shll      $30, %eax
	movl      80(%esp), %ecx
	orl       4(%ecx), %eax
	movl      $1, %ecx
	subl      %ebp, %ecx
	movl      28(%esp), %edx
	movl      %eax, (%edx,%ecx,4)
	movl      20(%esp), %eax
	addl      $60, %esp
	popl      %esi
	popl      %edi
	popl      %ebx
	popl      %ebp
	ret       
# ----------------------
	.align 4, 0x90
	.globl	_F2xC_to_ZXC
_F2xC_to_ZXC:
	pushl     %ebp
	pushl     %ebx
	pushl     %edi
	pushl     %esi
	subl      $12, %esp
	call      L2$pb
L2$pb:
	popl      %eax
	movl      32(%esp), %edi
	movl      (%edi), %ebx
	andl      $16777215, %ebx
	movl      L_avma$non_lazy_ptr-L2$pb(%eax), %ebp
	movl      (%ebp), %ecx
	leal      0(,%ebx,4), %edx
	movl      %ecx, %esi
	subl      %edx, %esi
	movl      L_bot$non_lazy_ptr-L2$pb(%eax), %eax
	subl      (%eax), %ecx
	shrl      $2, %ecx
	cmpl      %ebx, %ecx
	jae       LBB2_2
	movl      $14, (%esp)
	call      _pari_err
LBB2_2:
	movl      %esi, (%ebp)
	movl      %ebx, %eax
	orl       $603979776, %eax
	movl      %eax, (%esi)
	cmpl      $2, %ebx
	jb        LBB2_5
	movl      $1, %ebp
	.align 4, 0x90
LBB2_4:
	movl      (%edi,%ebp,4), %eax
	movl      %eax, (%esp)
	call      _F2x_to_ZX
	movl      %eax, (%esi,%ebp,4)
	incl      %ebp
	cmpl      %ebx, %ebp
	jl        LBB2_4
LBB2_5:
	movl      %esi, %eax
	addl      $12, %esp
	popl      %esi
	popl      %edi
	popl      %ebx
	popl      %ebp
	ret       
# ----------------------
	.align 4, 0x90
	.globl	_F2x_to_Flx
_F2x_to_Flx:
	pushl     %ebp
	pushl     %ebx
	pushl     %edi
	pushl     %esi
	subl      $44, %esp
	call      L3$pb
L3$pb:
	popl      %esi
	movl      64(%esp), %edi
	movl      $16777215, %eax
	andl      (%edi), %eax
	movl      $2, %ecx
	cmpl      $2, %eax
	je        LBB3_6
	movl      -4(%edi,%eax,4), %edx
	movl      %edx, %ecx
	shrl      $16, %ecx
	cmpl      $65535, %edx
	cmovbe    %edx, %ecx
	movl      $12, %ebx
	movl      $28, %edx
	cmova     %ebx, %edx
	cmpl      $256, %ecx
	jb        LBB3_3
	addl      $-8, %edx
	shrl      $8, %ecx
LBB3_3:
	shll      $5, %eax
	cmpl      $16, %ecx
	jb        LBB3_5
	addl      $-4, %edx
	shrl      $4, %ecx
LBB3_5:
	addl      $-62, %eax
	subl      %edx, %eax
	subl      _F2x_degree_lg.__bfffo_tabshi-L3$pb(%esi,%ecx,4), %eax
	movl      %eax, %ecx
LBB3_6:
	movl      %ecx, %edx
	movl      L_avma$non_lazy_ptr-L3$pb(%esi), %ebx
	movl      (%ebx), %ecx
	movl      %ecx, 24(%esp)
	leal      0(,%edx,4), %eax
	movl      %ecx, %ebp
	subl      %eax, %ebp
	movl      %ebp, 16(%esp)
	movl      L_bot$non_lazy_ptr-L3$pb(%esi), %eax
	subl      (%eax), %ecx
	shrl      $2, %ecx
	cmpl      %edx, %ecx
	movl      %edx, %ebp
	jae       LBB3_8
	movl      $14, (%esp)
	call      _pari_err
LBB3_8:
	movl      16(%esp), %eax
	movl      %eax, (%ebx)
	movl      %ebp, %ebx
	movl      %ebx, 32(%esp)
	cmpl      $16777216, %ebx
	jb        LBB3_10
	leal      L_.str4-L3$pb(%esi), %eax
	movl      %eax, 4(%esp)
	movl      $15, (%esp)
	call      _pari_err
LBB3_10:
	movl      %ebx, %eax
	orl       $738197504, %eax
	movl      16(%esp), %ecx
	movl      %eax, (%ecx)
	movl      4(%edi), %eax
	movl      $1, %ecx
	subl      %ebx, %ecx
	movl      24(%esp), %edx
	movl      %eax, (%edx,%ecx,4)
	movl      (%edi), %eax
	movl      %eax, %edx
	andl      $16777215, %edx
	cmpl      $3, %edx
	jb        LBB3_20
	movl      %ebx, %edx
	negl      %edx
	movl      %edx, 28(%esp)
	movl      24(%esp), %edx
	leal      (%edx,%ecx,4), %ecx
	movl      %ecx, 20(%esp)
	movl      $2, %esi
	movl      $2, %ebp
	.align 4, 0x90
LBB3_12:
	movl      %esi, %edx
	subl      %ebx, %edx
	jge       LBB3_19
	cmpl      $-32, %edx
	movl      $-32, %eax
	cmova     %edx, %eax
	movl      %eax, 36(%esp)
	movl      28(%esp), %eax
	leal      (%eax,%esi), %ecx
	cmpl      $-32, %ecx
	movl      $-32, %eax
	cmovbe    %eax, %ecx
	movl      %ecx, %ebx
	negl      %ebx
	notl      %ecx
	xorl      %eax, %eax
	testb     $1, %bl
	movl      %esi, %ebx
	movl      %esi, 40(%esp)
	je        LBB3_15
	movl      (%edi,%ebp,4), %eax
	andl      $1, %eax
	movl      24(%esp), %esi
	movl      %eax, (%esi,%edx,4)
	movl      $1, %eax
	movl      40(%esp), %edx
	leal      1(%edx), %ebx
LBB3_15:
	testl     %ecx, %ecx
	je        LBB3_18
	movl      36(%esp), %edx
	notl      %edx
	movl      20(%esp), %ecx
	leal      (%ecx,%ebx,4), %ebx
	.align 4, 0x90
LBB3_17:
	movl      (%edi,%ebp,4), %esi
	movb      %al, %cl
	shrl      %cl, %esi
	andl      $1, %esi
	movl      %esi, -4(%ebx)
	leal      1(%eax), %ecx
	movl      (%edi,%ebp,4), %esi
	shrl      %cl, %esi
	andl      $1, %esi
	movl      %esi, (%ebx)
	addl      $2, %eax
	addl      $8, %ebx
	cmpl      %edx, %ecx
	jne       LBB3_17
LBB3_18:
	movl      40(%esp), %esi
	subl      36(%esp), %esi
	movl      (%edi), %eax
	movl      32(%esp), %ebx
LBB3_19:
	incl      %ebp
	movl      %eax, %ecx
	andl      $16777215, %ecx
	cmpl      %ecx, %ebp
	jl        LBB3_12
LBB3_20:
	movl      16(%esp), %eax
	addl      $44, %esp
	popl      %esi
	popl      %edi
	popl      %ebx
	popl      %ebp
	ret       
# ----------------------
	.align 4, 0x90
	.globl	_Z_to_F2x
_Z_to_F2x:
	pushl     %ebp
	pushl     %ebx
	pushl     %edi
	pushl     %esi
	subl      $12, %esp
	call      L4$pb
L4$pb:
	popl      %ebp
	movl      36(%esp), %edi
	movl      32(%esp), %eax
	movl      4(%eax), %ecx
	cmpl      $1073741823, %ecx
	jbe       LBB4_1
	andl      $16777215, %ecx
	testb     $1, -4(%eax,%ecx,4)
	movl      L_avma$non_lazy_ptr-L4$pb(%ebp), %edi
	movl      (%edi), %ebx
	jne       LBB4_7
	movl      36(%esp), %edi
	jmp       LBB4_2
LBB4_1:
	movl      L_avma$non_lazy_ptr-L4$pb(%ebp), %eax
	movl      (%eax), %ebx
LBB4_2:
	leal      -8(%ebx), %esi
	movl      L_bot$non_lazy_ptr-L4$pb(%ebp), %eax
	movl      %ebx, %ecx
	subl      (%eax), %ecx
	cmpl      $7, %ecx
	ja        LBB4_4
	movl      $14, (%esp)
	call      _pari_err
LBB4_4:
	movl      L_avma$non_lazy_ptr-L4$pb(%ebp), %eax
	movl      %esi, (%eax)
	movl      $738197506, -8(%ebx)
	movl      %edi, -4(%ebx)
	jmp       LBB4_10
LBB4_7:
	movl      %ebx, %esi
	addl      $-12, %esi
	movl      L_bot$non_lazy_ptr-L4$pb(%ebp), %eax
	movl      %ebx, %ecx
	subl      (%eax), %ecx
	cmpl      $11, %ecx
	ja        LBB4_9
	movl      $14, (%esp)
	call      _pari_err
LBB4_9:
	movl      %esi, (%edi)
	movl      $738197507, -12(%ebx)
	movl      36(%esp), %eax
	movl      %eax, -8(%ebx)
	movl      $1, -4(%ebx)
LBB4_10:
	movl      %esi, %eax
	addl      $12, %esp
	popl      %esi
	popl      %edi
	popl      %ebx
	popl      %ebp
	ret       
# ----------------------
	.align 4, 0x90
	.globl	_ZX_to_F2x
_ZX_to_F2x:
	pushl     %ebp
	pushl     %ebx
	pushl     %edi
	pushl     %esi
	subl      $28, %esp
	call      L5$pb
L5$pb:
	popl      %eax
	movl      48(%esp), %ecx
	movl      $16777215, %ebx
	movl      (%ecx), %esi
	andl      %ebx, %esi
	addl      $93, %esi
	shrl      $5, %esi
	movl      %esi, 20(%esp)
	movl      L_avma$non_lazy_ptr-L5$pb(%eax), %ecx
	movl      %ecx, 12(%esp)
	movl      (%ecx), %edx
	movl      %edx, 24(%esp)
	leal      0(,%esi,4), %ecx
	movl      %edx, %edi
	subl      %ecx, %edi
	movl      %edi, 16(%esp)
	movl      L_bot$non_lazy_ptr-L5$pb(%eax), %eax
	subl      (%eax), %edx
	shrl      $2, %edx
	cmpl      %esi, %edx
	jae       LBB5_2
	movl      $14, (%esp)
	call      _pari_err
LBB5_2:
	movl      16(%esp), %ebp
	movl      12(%esp), %eax
	movl      %ebp, (%eax)
	movl      %esi, %eax
	orl       $738197504, %eax
	movl      %eax, (%ebp)
	movl      $1073676288, %eax
	movl      48(%esp), %edi
	andl      4(%edi), %eax
	movl      $1, %ecx
	subl      %esi, %ecx
	movl      24(%esp), %edx
	movl      %eax, (%edx,%ecx,4)
	andl      (%edi), %ebx
	cmpl      $3, %ebx
	movl      $1, %eax
	jb        LBB5_10
	movl      $2, %edx
	movl      $32, %ecx
	.align 4, 0x90
LBB5_4:
	cmpl      $32, %ecx
	jne       LBB5_6
	incl      %eax
	movl      %eax, %ecx
	subl      %esi, %ecx
	movl      24(%esp), %ebx
	movl      $0, (%ebx,%ecx,4)
	xorl      %ecx, %ecx
LBB5_6:
	movl      (%edi,%edx,4), %ebx
	movl      4(%ebx), %ebp
	cmpl      $1073741824, %ebp
	jb        LBB5_9
	andl      $16777215, %ebp
	testb     $1, -4(%ebx,%ebp,4)
	je        LBB5_9
	movl      $1, %ebx
	shll      %cl, %ebx
	movl      %eax, %ebp
	subl      %esi, %ebp
	movl      %edi, %esi
	movl      24(%esp), %edi
	orl       %ebx, (%edi,%ebp,4)
	movl      %esi, %edi
	movl      20(%esp), %esi
LBB5_9:
	incl      %edx
	incl      %ecx
	movl      (%edi), %ebx
	movl      $16777215, %ebp
	andl      %ebp, %ebx
	cmpl      %ebx, %edx
	jl        LBB5_4
LBB5_10:
	movl      %esi, 4(%esp)
	movl      16(%esp), %eax
	movl      %eax, (%esp)
	call      _Flx_renormalize
	addl      $28, %esp
	popl      %esi
	popl      %edi
	popl      %ebx
	popl      %ebp
	ret       
# ----------------------
	.align 4, 0x90
	.globl	_Flx_to_F2x
_Flx_to_F2x:
	pushl     %ebp
	pushl     %ebx
	pushl     %edi
	pushl     %esi
	subl      $28, %esp
	call      L6$pb
L6$pb:
	popl      %eax
	movl      48(%esp), %ecx
	movl      $16777215, %ebx
	movl      (%ecx), %esi
	andl      %ebx, %esi
	addl      $93, %esi
	shrl      $5, %esi
	movl      L_avma$non_lazy_ptr-L6$pb(%eax), %ecx
	movl      %ecx, 16(%esp)
	movl      (%ecx), %ebp
	movl      %ebp, 24(%esp)
	leal      0(,%esi,4), %ecx
	movl      %ebp, %edi
	subl      %ecx, %edi
	movl      L_bot$non_lazy_ptr-L6$pb(%eax), %eax
	subl      (%eax), %ebp
	shrl      $2, %ebp
	cmpl      %esi, %ebp
	jae       LBB6_2
	movl      $14, (%esp)
	call      _pari_err
LBB6_2:
	movl      %edi, 20(%esp)
	movl      16(%esp), %eax
	movl      %edi, (%eax)
	movl      %esi, %eax
	orl       $738197504, %eax
	movl      %eax, (%edi)
	movl      48(%esp), %edi
	movl      4(%edi), %eax
	movl      $1, %ecx
	subl      %esi, %ecx
	movl      24(%esp), %edx
	movl      %eax, (%edx,%ecx,4)
	andl      (%edi), %ebx
	cmpl      $3, %ebx
	movl      %edi, %ebx
	movl      $1, %edi
	jb        LBB6_9
	movl      $2, %edx
	movl      $32, %ecx
	.align 4, 0x90
LBB6_4:
	cmpl      $32, %ecx
	jne       LBB6_6
	incl      %edi
	movl      %edi, %ecx
	subl      %esi, %ecx
	movl      24(%esp), %eax
	movl      $0, (%eax,%ecx,4)
	xorl      %ecx, %ecx
LBB6_6:
	cmpl      $0, (%ebx,%edx,4)
	je        LBB6_8
	movl      $1, %ebx
	shll      %cl, %ebx
	movl      %edi, %eax
	subl      %esi, %eax
	movl      %edi, %ebp
	movl      %esi, %edi
	movl      24(%esp), %esi
	orl       %ebx, (%esi,%eax,4)
	movl      %edi, %esi
	movl      %ebp, %edi
	movl      48(%esp), %ebx
LBB6_8:
	incl      %edx
	incl      %ecx
	movl      (%ebx), %eax
	movl      $16777215, %ebp
	andl      %ebp, %eax
	cmpl      %eax, %edx
	jl        LBB6_4
LBB6_9:
	movl      %esi, 4(%esp)
	movl      20(%esp), %eax
	movl      %eax, (%esp)
	call      _Flx_renormalize
	addl      $28, %esp
	popl      %esi
	popl      %edi
	popl      %ebx
	popl      %ebp
	ret       
# ----------------------
	.align 4, 0x90
	.globl	_F2x_to_F2v
_F2x_to_F2v:
	pushl     %ebp
	pushl     %ebx
	pushl     %edi
	pushl     %esi
	subl      $44, %esp
	call      L7$pb
L7$pb:
	popl      %esi
	movl      68(%esp), %eax
	leal      95(%eax), %edx
	movl      %edx, 28(%esp)
	shrl      $5, %edx
	movl      %edx, 40(%esp)
	movl      L_avma$non_lazy_ptr-L7$pb(%esi), %edi
	movl      (%edi), %ebx
	movl      %ebx, 36(%esp)
	leal      0(,%edx,4), %eax
	movl      %ebx, %ecx
	subl      %eax, %ecx
	movl      %ecx, 32(%esp)
	movl      L_bot$non_lazy_ptr-L7$pb(%esi), %eax
	movl      %ebx, %ecx
	subl      (%eax), %ecx
	shrl      $2, %ecx
	cmpl      %edx, %ecx
	movl      64(%esp), %ebx
	movl      (%ebx), %ebp
	jae       LBB7_2
	movl      $14, (%esp)
	call      _pari_err
LBB7_2:
	andl      $16777215, %ebp
	movl      32(%esp), %eax
	movl      %eax, (%edi)
	movl      %eax, %edi
	cmpl      $536870912, 28(%esp)
	jb        LBB7_4
	leal      L_.str4-L7$pb(%esi), %eax
	movl      %eax, 4(%esp)
	movl      $15, (%esp)
	call      _pari_err
LBB7_4:
	movl      40(%esp), %esi
	movl      %esi, %eax
	orl       $738197504, %eax
	movl      %eax, (%edi)
	movl      $1, %eax
	subl      %esi, %eax
	movl      36(%esp), %ecx
	movl      68(%esp), %edx
	movl      %edx, (%ecx,%eax,4)
	movl      $2, %eax
	cmpl      $3, %ebp
	jb        LBB7_23
	movl      $3, %eax
	cmova     %ebp, %eax
	movl      $2, %ecx
	cmpl      $2, %eax
	je        LBB7_6
	leal      -2(%eax), %esi
	andl      $-8, %esi
	orl       $2, %esi
	movl      %esi, 24(%esp)
	leal      -1(%ebp), %edx
	cmpl      $3, %ebp
	movl      $2, %ecx
	cmovbe    %ecx, %edx
	cmpl      $2, %esi
	je        LBB7_21
	leal      (%ebx,%edx,4), %ecx
	movl      %ecx, 20(%esp)
	movl      $2, %ecx
	movl      $2, %edi
	subl      40(%esp), %edi
	movl      36(%esp), %esi
	leal      (%esi,%edi,4), %edi
	cmpl      20(%esp), %edi
	movl      32(%esp), %edi
	ja        LBB7_15
	leal      8(%ebx), %esi
	movl      %esi, 20(%esp)
	subl      40(%esp), %edx
	movl      36(%esp), %esi
	leal      (%esi,%edx,4), %edx
	cmpl      %edx, 20(%esp)
	jbe       LBB7_21
LBB7_15:
	cmpl      $3, %ebp
	movl      $3, %ecx
	cmova     %ebp, %ecx
	addl      $-2, %ecx
	andl      $-8, %ecx
	addl      $-8, %ecx
	shrl      $3, %ecx
	leal      1(%ecx), %edx
	movl      $2, %esi
	testb     $1, %dl
	je        LBB7_17
	movups    8(%ebx), %xmm0
	movups    24(%ebx), %xmm1
	movl      $2, %edx
	subl      40(%esp), %edx
	movl      36(%esp), %esi
	movups    %xmm0, (%esi,%edx,4)
	movups    %xmm1, 16(%esi,%edx,4)
	movl      $10, %esi
LBB7_17:
	testl     %ecx, %ecx
	je        LBB7_20
	movl      40(%esp), %ecx
	negl      %ecx
	leal      12(%esi,%ecx), %ecx
	movl      36(%esp), %edx
	leal      (%edx,%ecx,4), %ecx
	cmpl      $3, %ebp
	movl      %esi, %edx
	movl      $3, %esi
	cmova     %ebp, %esi
	addl      $-2, %esi
	andl      $-8, %esi
	orl       $2, %esi
	subl      %edx, %esi
	leal      48(%ebx,%edx,4), %edx
	.align 4, 0x90
LBB7_19:
	movups    -48(%edx), %xmm0
	movups    -32(%edx), %xmm1
	movups    %xmm0, -48(%ecx)
	movups    %xmm1, -32(%ecx)
	movups    -16(%edx), %xmm0
	movups    (%edx), %xmm1
	movups    %xmm0, -16(%ecx)
	movups    %xmm1, (%ecx)
	addl      $64, %ecx
	addl      $64, %edx
	addl      $-16, %esi
	jne       LBB7_19
LBB7_20:
	movl      24(%esp), %ecx
LBB7_21:
	cmpl      %ecx, %eax
	movl      40(%esp), %esi
	je        LBB7_22
LBB7_6:
	movl      %esi, 40(%esp)
	movl      %edi, 32(%esp)
	leal      1(%ecx), %edx
	cmpl      %ebp, %edx
	movl      %ebp, %eax
	cmovge    %edx, %eax
	movl      %eax, %esi
	subl      %ecx, %esi
	decl      %eax
	subl      %ecx, %eax
	movl      %eax, 24(%esp)
	movl      %esi, %eax
	testb     $3, %al
	je        LBB7_9
	movl      28(%esp), %edi
	shrl      $3, %edi
	andl      $536870908, %edi
	movl      36(%esp), %esi
	subl      %edi, %esi
	cmpl      %ebp, %edx
	cmovl     %ebp, %edx
	subl      %ecx, %edx
	andl      $3, %edx
	negl      %edx
	.align 4, 0x90
LBB7_8:
	movl      (%ebx,%ecx,4), %edi
	movl      %edi, (%esi,%ecx,4)
	incl      %ecx
	incl      %edx
	jne       LBB7_8
LBB7_9:
	cmpl      $3, 24(%esp)
	movl      32(%esp), %edi
	movl      40(%esp), %esi
	jb        LBB7_22
	movl      $3, %eax
	subl      %esi, %eax
	movl      36(%esp), %edx
	leal      (%edx,%eax,4), %eax
	.align 4, 0x90
LBB7_11:
	movl      (%ebx,%ecx,4), %edx
	movl      %edx, -12(%eax,%ecx,4)
	movl      4(%ebx,%ecx,4), %edx
	movl      %edx, -8(%eax,%ecx,4)
	movl      8(%ebx,%ecx,4), %edx
	movl      %edx, -4(%eax,%ecx,4)
	movl      12(%ebx,%ecx,4), %edx
	movl      %edx, (%eax,%ecx,4)
	addl      $4, %ecx
	cmpl      %ebp, %ecx
	jl        LBB7_11
LBB7_22:
	cmpl      $3, %ebp
	movl      $3, %eax
	cmova     %ebp, %eax
LBB7_23:
	movl      %eax, %ecx
	subl      %esi, %ecx
	jge       LBB7_25
	movl      36(%esp), %edx
	leal      (%edx,%ecx,4), %ecx
	subl      %eax, %esi
	shll      $2, %esi
	movl      %esi, 4(%esp)
	movl      %ecx, (%esp)
	call      ___bzero
LBB7_25:
	movl      %edi, %eax
	addl      $44, %esp
	popl      %esi
	popl      %edi
	popl      %ebx
	popl      %ebp
	ret       
# ----------------------
	.align 4, 0x90
	.globl	_F2x_add
_F2x_add:
	pushl     %ebp
	pushl     %ebx
	pushl     %edi
	pushl     %esi
	subl      $76, %esp
	movl      100(%esp), %eax
	movl      96(%esp), %esi
	movl      (%esi), %ecx
	movl      %ecx, 48(%esp)
	andl      $16777215, %ecx
	movl      %ecx, 72(%esp)
	movl      (%eax), %edi
	movl      %edi, 52(%esp)
	andl      $16777215, %edi
	movl      %edi, 56(%esp)
	cmpl      %ecx, %edi
	movl      %eax, %edx
	cmova     %esi, %edx
	movl      %edx, 40(%esp)
	cmova     %eax, %esi
	movl      %ecx, %edx
	cmova     %edi, %edx
	cmova     %ecx, %edi
	movl      %edi, 60(%esp)
	call      L8$pb
L8$pb:
	popl      %eax
	movl      L_avma$non_lazy_ptr-L8$pb(%eax), %edi
	movl      (%edi), %ebx
	movl      %ebx, 68(%esp)
	leal      0(,%edx,4), %ecx
	movl      %ebx, %ebp
	subl      %ecx, %ebp
	movl      %ebp, 64(%esp)
	movl      L_bot$non_lazy_ptr-L8$pb(%eax), %eax
	subl      (%eax), %ebx
	shrl      $2, %ebx
	cmpl      %edx, %ebx
	movl      %edx, %ebx
	jae       LBB8_2
	movl      $14, (%esp)
	call      _pari_err
LBB8_2:
	movl      64(%esp), %ebp
	movl      %ebp, (%edi)
	movl      %ebx, %edi
	movl      %edi, %eax
	orl       $738197504, %eax
	movl      %eax, (%ebp)
	movl      4(%esi), %eax
	movl      $1, %ecx
	subl      %edi, %ecx
	movl      68(%esp), %edx
	movl      %eax, (%edx,%ecx,4)
	movl      $2, %ecx
	movl      60(%esp), %eax
	cmpl      $3, %eax
	movl      72(%esp), %ebx
	jb        LBB8_25
	movl      48(%esp), %ecx
	orl       $-16777216, %ecx
	xorl      $16777215, %ecx
	movl      52(%esp), %ebx
	orl       $-16777216, %ebx
	xorl      $16777215, %ebx
	cmpl      %ebx, %ecx
	movl      %ebx, %edx
	cmova     %ecx, %edx
	notl      %edx
	movl      %edx, 36(%esp)
	cmpl      $3, %edx
	movl      $3, %ebp
	cmova     %edx, %ebp
	movl      %eax, %edx
	movl      $2, %eax
	cmpl      $2, %ebp
	je        LBB8_4
	movl      %edi, 44(%esp)
	leal      -2(%ebp), %edx
	andl      $-4, %edx
	orl       $2, %edx
	movl      72(%esp), %edi
	movl      56(%esp), %eax
	cmpl      %eax, %edi
	cmova     %edi, %eax
	movl      %eax, 32(%esp)
	cmpl      %ebx, %ecx
	movl      %ebx, %eax
	cmova     %ecx, %eax
	movl      %ecx, 24(%esp)
	movl      $-2, %edi
	subl      %eax, %edi
	cmpl      $-4, %eax
	movl      $2, %eax
	cmovae    %eax, %edi
	cmpl      $2, %edx
	jne       LBB8_12
	movl      44(%esp), %edi
	jmp       LBB8_23
LBB8_12:
	movl      %edx, 16(%esp)
	movl      %ebp, 28(%esp)
	movl      $2, %ebp
	movl      32(%esp), %ecx
	subl      %ecx, %ebp
	movl      %edi, %edx
	subl      %ecx, %edx
	movl      %edx, 32(%esp)
	movl      68(%esp), %edx
	leal      (%edx,%ebp,4), %ecx
	movl      32(%esp), %ebp
	leal      (%edx,%ebp,4), %ebp
	leal      (%esi,%edi,4), %edx
	cmpl      %edx, %ecx
	leal      8(%esi), %edx
	setbe     32(%esp)
	cmpl      %ebp, %edx
	movl      40(%esp), %edx
	leal      (%edx,%edi,4), %edi
	setbe     23(%esp)
	cmpl      %edi, %ecx
	leal      8(%edx), %edx
	setbe     %cl
	cmpl      %ebp, %edx
	setbe     %ch
	movb      23(%esp), %dl
	testb     32(%esp), %dl
	jne       LBB8_21
	andb      %ch, %cl
	movl      44(%esp), %edi
	movl      28(%esp), %ebp
	jne       LBB8_23
	movl      24(%esp), %ebp
	cmpl      %ebp, %ebx
	movl      %ebp, %edx
	cmova     %ebx, %edx
	notl      %edx
	cmpl      $3, %edx
	movl      $3, %eax
	cmova     %edx, %eax
	addl      $-2, %eax
	andl      $-4, %eax
	addl      $-4, %eax
	shrl      $2, %eax
	leal      1(%eax), %edx
	movl      $2, %ecx
	testb     $1, %dl
	je        LBB8_16
	movups    8(%esi), %xmm0
	movl      40(%esp), %edx
	movups    8(%edx), %xmm1
	xorps     %xmm0, %xmm1
	movl      $2, %edx
	subl      %edi, %edx
	movl      %ebp, %ecx
	movl      68(%esp), %ebp
	movups    %xmm1, (%ebp,%edx,4)
	movl      %ecx, %ebp
	movl      $6, %ecx
LBB8_16:
	movl      %ecx, %edx
	testl     %eax, %eax
	jne       LBB8_18
	movl      16(%esp), %eax
	jmp       LBB8_22
LBB8_18:
	movl      56(%esp), %eax
	movl      72(%esp), %ecx
	cmpl      %eax, %ecx
	cmova     %ecx, %eax
	negl      %eax
	movl      %edx, %edi
	leal      4(%edi,%eax), %eax
	movl      68(%esp), %edx
	leal      (%edx,%eax,4), %eax
	cmpl      %ebp, %ebx
	cmova     %ebx, %ebp
	notl      %ebp
	cmpl      $3, %ebp
	movl      $3, %ecx
	cmova     %ebp, %ecx
	movl      %edi, %ebx
	leal      16(%esi,%ebx,4), %edx
	addl      $-2, %ecx
	andl      $-4, %ecx
	orl       $2, %ecx
	subl      %ebx, %ecx
	movl      40(%esp), %edi
	leal      16(%edi,%ebx,4), %edi
	.align 4, 0x90
LBB8_19:
	movups    -16(%edx), %xmm0
	movups    -16(%edi), %xmm1
	xorps     %xmm0, %xmm1
	movups    %xmm1, -16(%eax)
	movups    (%edx), %xmm0
	movups    (%edi), %xmm1
	xorps     %xmm0, %xmm1
	movups    %xmm1, (%eax)
	addl      $32, %eax
	addl      $32, %edx
	addl      $32, %edi
	addl      $-8, %ecx
	jne       LBB8_19
	movl      16(%esp), %eax
LBB8_21:
	movl      44(%esp), %edi
LBB8_22:
	movl      28(%esp), %ebp
LBB8_23:
	cmpl      %eax, %ebp
	movl      60(%esp), %edx
	je        LBB8_24
LBB8_4:
	movl      %edx, 60(%esp)
	movl      48(%esp), %ecx
	notl      %ecx
	orl       $-16777216, %ecx
	movl      52(%esp), %ebx
	notl      %ebx
	orl       $-16777216, %ebx
	cmpl      %ebx, %ecx
	cmova     %ecx, %ebx
	notl      %ebx
	leal      1(%eax), %ecx
	cmpl      %ecx, %ebx
	cmovl     %ecx, %ebx
	movl      %ebx, %edx
	subl      %eax, %edx
	decl      %ebx
	subl      %eax, %ebx
	movl      %ebx, 52(%esp)
	testb     $1, %dl
	je        LBB8_5
	movl      40(%esp), %ebx
	movl      (%ebx,%eax,4), %edx
	xorl      (%esi,%eax,4), %edx
	subl      %edi, %eax
	movl      68(%esp), %ebp
	movl      %edx, (%ebp,%eax,4)
	jmp       LBB8_7
LBB8_5:
	movl      40(%esp), %ebx
	movl      %eax, %ecx
LBB8_7:
	cmpl      $0, 52(%esp)
	movl      %ebx, %ebp
	movl      60(%esp), %ebx
	je        LBB8_24
	movl      72(%esp), %edx
	movl      56(%esp), %eax
	cmpl      %eax, %edx
	cmova     %edx, %eax
	movl      $1, %edx
	subl      %eax, %edx
	movl      68(%esp), %eax
	leal      (%eax,%edx,4), %eax
	.align 4, 0x90
LBB8_9:
	movl      (%ebp,%ecx,4), %edx
	xorl      (%esi,%ecx,4), %edx
	movl      %edx, -4(%eax,%ecx,4)
	movl      4(%ebp,%ecx,4), %edx
	xorl      4(%esi,%ecx,4), %edx
	movl      %edx, (%eax,%ecx,4)
	addl      $2, %ecx
	cmpl      %ebx, %ecx
	jl        LBB8_9
LBB8_24:
	movl      36(%esp), %eax
	cmpl      $3, %eax
	movl      $3, %ecx
	cmova     %eax, %ecx
	movl      72(%esp), %ebx
LBB8_25:
	cmpl      %edi, %ecx
	jge       LBB8_48
	movl      56(%esp), %ebp
	cmpl      %ebp, %ebx
	movl      %ebp, %eax
	cmova     %ebx, %eax
	leal      -1(%eax), %edx
	subl      %ecx, %edx
	cmpl      $-1, %edx
	je        LBB8_27
	movl      %edi, 44(%esp)
	movl      %eax, %edi
	subl      %ecx, %edi
	movl      %edi, %edx
	andl      $-4, %edx
	movl      %edx, 60(%esp)
	cmpl      %ebp, %ebx
	movl      %ebp, %edx
	cmova     %ebx, %edx
	andl      $-4, %edi
	je        LBB8_46
	leal      -4(%esi,%edx,4), %edi
	movl      %ecx, %ebx
	subl      %edx, %ebx
	movl      68(%esp), %ebp
	leal      (%ebp,%ebx,4), %edx
	cmpl      %edi, %edx
	ja        LBB8_38
	leal      (%esi,%ecx,4), %edx
	leal      -4(%ebp), %edi
	cmpl      %edi, %edx
	jbe       LBB8_37
LBB8_38:
	movl      72(%esp), %ebp
	movl      56(%esp), %edx
	cmpl      %ebp, %edx
	cmova     %edx, %ebp
	subl      %ecx, %ebp
	andl      $-4, %ebp
	addl      $-4, %ebp
	shrl      $2, %ebp
	movl      %ebp, 52(%esp)
	leal      1(%ebp), %edx
	testb     $3, %dl
	movl      %ecx, %ebp
	je        LBB8_41
	movl      72(%esp), %edi
	movl      56(%esp), %edx
	cmpl      %edi, %edx
	movl      %edi, %ebx
	cmova     %edx, %ebx
	subl      %ecx, %ebx
	andl      $-4, %ebx
	addl      $-4, %ebx
	cmpl      %edx, %edi
	cmova     %edi, %edx
	leal      0(,%edx,4), %ebp
	movl      68(%esp), %edi
	subl      %ebp, %edi
	subl      %ecx, %edx
	andl      $12, %edx
	addl      $-4, %edx
	shrl      $2, %edx
	incl      %edx
	andl      $3, %edx
	negl      %edx
	movl      %ecx, %ebp
	.align 4, 0x90
LBB8_40:
	movups    (%esi,%ebp,4), %xmm0
	movups    %xmm0, (%edi,%ebp,4)
	addl      $4, %ebp
	addl      $-4, %ebx
	incl      %edx
	jne       LBB8_40
LBB8_41:
	movl      60(%esp), %edx
	addl      %ecx, %edx
	cmpl      $3, 52(%esp)
	jae       LBB8_43
	movl      %edx, %ecx
LBB8_37:
	movl      44(%esp), %edi
	movl      72(%esp), %ebx
	jmp       LBB8_47
LBB8_43:
	movl      %edx, 60(%esp)
	movl      72(%esp), %ebx
	movl      56(%esp), %edi
	cmpl      %edi, %ebx
	movl      %edi, %edx
	cmova     %ebx, %edx
	negl      %edx
	movl      %edx, 52(%esp)
	cmpl      %ebx, %edi
	movl      %ebx, %edx
	cmova     %edi, %edx
	subl      %ecx, %edx
	andl      $-4, %edx
	addl      %ecx, %edx
	movl      52(%esp), %ecx
	leal      12(%ebp,%ecx), %ecx
	movl      68(%esp), %edi
	leal      (%edi,%ecx,4), %ecx
	subl      %ebp, %edx
	leal      48(%esi,%ebp,4), %edi
	.align 4, 0x90
LBB8_44:
	movups    -48(%edi), %xmm0
	movups    %xmm0, -48(%ecx)
	movups    -32(%edi), %xmm0
	movups    %xmm0, -32(%ecx)
	movups    -16(%edi), %xmm0
	movups    %xmm0, -16(%ecx)
	movups    (%edi), %xmm0
	movups    %xmm0, (%ecx)
	addl      $64, %ecx
	addl      $64, %edi
	addl      $-16, %edx
	jne       LBB8_44
	movl      60(%esp), %ecx
LBB8_46:
	movl      44(%esp), %edi
LBB8_47:
	cmpl      %ecx, %eax
	je        LBB8_48
LBB8_27:
	movl      %edi, 44(%esp)
	movl      56(%esp), %ebp
	cmpl      %ebp, %ebx
	movl      %ebp, %eax
	cmova     %ebx, %eax
	leal      1(%ecx), %edi
	cmpl      %edi, %eax
	cmovl     %edi, %eax
	movl      %eax, %edx
	subl      %ecx, %edx
	decl      %eax
	subl      %ecx, %eax
	testb     $3, %dl
	je        LBB8_28
	cmpl      %ebp, %ebx
	movl      %edi, 60(%esp)
	movl      %ebp, %edi
	movl      %ebx, %ebp
	movl      %edi, %ebx
	cmova     %ebp, %ebx
	shll      $2, %ebx
	movl      68(%esp), %edx
	subl      %ebx, %edx
	cmpl      %ebp, %edi
	movl      %ebp, %ebx
	cmova     %edi, %ebx
	movl      60(%esp), %edi
	cmpl      %edi, %ebx
	cmovl     %edi, %ebx
	subl      %ecx, %ebx
	andl      $3, %ebx
	negl      %ebx
	.align 4, 0x90
LBB8_30:
	movl      (%esi,%ecx,4), %edi
	movl      %edi, (%edx,%ecx,4)
	incl      %ecx
	incl      %ebx
	jne       LBB8_30
	jmp       LBB8_31
LBB8_28:
	movl      %ebx, %ebp
LBB8_31:
	cmpl      $3, %eax
	movl      44(%esp), %edi
	jb        LBB8_48
	movl      56(%esp), %edx
	cmpl      %edx, %ebp
	cmova     %ebp, %edx
	movl      $3, %eax
	subl      %edx, %eax
	movl      68(%esp), %edx
	leal      (%edx,%eax,4), %eax
	.align 4, 0x90
LBB8_33:
	movl      (%esi,%ecx,4), %edx
	movl      %edx, -12(%eax,%ecx,4)
	movl      4(%esi,%ecx,4), %edx
	movl      %edx, -8(%eax,%ecx,4)
	movl      8(%esi,%ecx,4), %edx
	movl      %edx, -4(%eax,%ecx,4)
	movl      12(%esi,%ecx,4), %edx
	movl      %edx, (%eax,%ecx,4)
	addl      $4, %ecx
	cmpl      %edi, %ecx
	jl        LBB8_33
LBB8_48:
	movl      %edi, 4(%esp)
	movl      64(%esp), %eax
	movl      %eax, (%esp)
	call      _Flx_renormalize
	addl      $76, %esp
	popl      %esi
	popl      %edi
	popl      %ebx
	popl      %ebp
	ret       
# ----------------------
	.align 4, 0x90
	.globl	_F2x_1_add
_F2x_1_add:
	pushl     %ebp
	pushl     %ebx
	pushl     %edi
	pushl     %esi
	subl      $28, %esp
	call      L9$pb
L9$pb:
	popl      %eax
	movl      48(%esp), %edi
	movl      (%edi), %ebx
	andl      $16777215, %ebx
	cmpl      $2, %ebx
	jne       LBB9_5
	movl      4(%edi), %edi
	movl      L_avma$non_lazy_ptr-L9$pb(%eax), %ebp
	movl      (%ebp), %ebx
	leal      -12(%ebx), %esi
	movl      L_bot$non_lazy_ptr-L9$pb(%eax), %eax
	movl      %ebx, %ecx
	subl      (%eax), %ecx
	cmpl      $11, %ecx
	ja        LBB9_3
	movl      $14, (%esp)
	call      _pari_err
LBB9_3:
	movl      %esi, (%ebp)
	movl      %esi, %ebp
	movl      $738197507, -12(%ebx)
	movl      %edi, -8(%ebx)
	movl      $1, -4(%ebx)
	jmp       LBB9_4
LBB9_5:
	movl      L_avma$non_lazy_ptr-L9$pb(%eax), %ebp
	movl      (%ebp), %edx
	movl      %edx, 24(%esp)
	leal      0(,%ebx,4), %esi
	movl      %esi, 20(%esp)
	movl      %edx, %ecx
	subl      %esi, %ecx
	movl      %ecx, %esi
	movl      L_bot$non_lazy_ptr-L9$pb(%eax), %eax
	movl      %edx, %ecx
	subl      (%eax), %ecx
	shrl      $2, %ecx
	cmpl      %ebx, %ecx
	jae       LBB9_7
	movl      $14, (%esp)
	call      _pari_err
LBB9_7:
	movl      %esi, (%ebp)
	movl      %esi, %ebp
	movl      %ebx, %eax
	orl       $738197504, %eax
	movl      %eax, (%ebp)
	movl      4(%edi), %eax
	movl      $1, %ecx
	subl      %ebx, %ecx
	movl      24(%esp), %esi
	movl      %eax, (%esi,%ecx,4)
	movl      8(%edi), %eax
	xorl      $1, %eax
	movl      $2, %ecx
	subl      %ebx, %ecx
	movl      %eax, (%esi,%ecx,4)
	cmpl      $4, %ebx
	jb        LBB9_25
	movl      $4, %esi
	cmova     %ebx, %esi
	movl      $3, %edx
	cmpl      $3, %esi
	je        LBB9_19
	leal      -3(%esi), %ecx
	andl      $-8, %ecx
	orl       $3, %ecx
	movl      %ecx, 12(%esp)
	leal      -1(%ebx), %eax
	cmpl      $4, %ebx
	movl      $3, %edx
	cmovbe    %edx, %eax
	cmpl      $3, %ecx
	je        LBB9_18
	leal      (%edi,%eax,4), %ecx
	movl      %ecx, 8(%esp)
	movl      $3, %edx
	movl      %ebp, 16(%esp)
	movl      $3, %ebp
	subl      %ebx, %ebp
	movl      %esi, %ecx
	movl      24(%esp), %esi
	leal      (%esi,%ebp,4), %ebp
	movl      %ecx, %esi
	cmpl      8(%esp), %ebp
	movl      16(%esp), %ebp
	ja        LBB9_12
	leal      12(%edi), %ecx
	movl      %ecx, 8(%esp)
	subl      %ebx, %eax
	movl      %esi, %ecx
	movl      24(%esp), %esi
	leal      (%esi,%eax,4), %eax
	movl      %ecx, %esi
	cmpl      %eax, 8(%esp)
	jbe       LBB9_18
LBB9_12:
	cmpl      $4, %ebx
	movl      $4, %eax
	cmova     %ebx, %eax
	addl      $-3, %eax
	andl      $-8, %eax
	addl      $-8, %eax
	shrl      $3, %eax
	leal      1(%eax), %ecx
	movl      $3, %edx
	testb     $1, %cl
	je        LBB9_14
	movups    12(%edi), %xmm0
	movups    28(%edi), %xmm1
	movl      $3, %ecx
	subl      %ebx, %ecx
	movl      24(%esp), %edx
	movups    %xmm0, (%edx,%ecx,4)
	movups    %xmm1, 16(%edx,%ecx,4)
	movl      $11, %edx
LBB9_14:
	testl     %eax, %eax
	je        LBB9_17
	leal      12(%edx), %eax
	subl      %ebx, %eax
	movl      24(%esp), %ecx
	movl      %edx, 8(%esp)
	leal      (%ecx,%eax,4), %edx
	movl      8(%esp), %eax
	leal      48(%edi,%eax,4), %ecx
	cmpl      $4, %ebx
	movl      $4, %eax
	cmova     %ebx, %eax
	addl      $-3, %eax
	andl      $-8, %eax
	orl       $3, %eax
	subl      8(%esp), %eax
	.align 4, 0x90
LBB9_16:
	movups    -48(%ecx), %xmm0
	movups    -32(%ecx), %xmm1
	movups    %xmm0, -48(%edx)
	movups    %xmm1, -32(%edx)
	movups    -16(%ecx), %xmm0
	movups    (%ecx), %xmm1
	movups    %xmm0, -16(%edx)
	movups    %xmm1, (%edx)
	addl      $64, %edx
	addl      $64, %ecx
	addl      $-16, %eax
	jne       LBB9_16
LBB9_17:
	movl      12(%esp), %edx
LBB9_18:
	cmpl      %edx, %esi
	je        LBB9_25
LBB9_19:
	movl      %ebp, 16(%esp)
	leal      1(%edx), %ecx
	cmpl      %ebx, %ecx
	movl      %ebx, %eax
	cmovge    %ecx, %eax
	movl      %eax, %esi
	subl      %edx, %esi
	decl      %eax
	subl      %edx, %eax
	movl      %eax, 12(%esp)
	movl      %esi, %eax
	testb     $3, %al
	je        LBB9_22
	movl      24(%esp), %ebp
	subl      20(%esp), %ebp
	cmpl      %ebx, %ecx
	cmovl     %ebx, %ecx
	subl      %edx, %ecx
	andl      $3, %ecx
	negl      %ecx
	.align 4, 0x90
LBB9_21:
	movl      (%edi,%edx,4), %esi
	movl      %esi, (%ebp,%edx,4)
	incl      %edx
	incl      %ecx
	jne       LBB9_21
LBB9_22:
	cmpl      $3, 12(%esp)
	movl      16(%esp), %ebp
	jb        LBB9_25
	movl      $3, %eax
	subl      %ebx, %eax
	movl      24(%esp), %ecx
	leal      (%ecx,%eax,4), %eax
	.align 4, 0x90
LBB9_24:
	movl      (%edi,%edx,4), %ecx
	movl      %ecx, -12(%eax,%edx,4)
	movl      4(%edi,%edx,4), %ecx
	movl      %ecx, -8(%eax,%edx,4)
	movl      8(%edi,%edx,4), %ecx
	movl      %ecx, -4(%eax,%edx,4)
	movl      12(%edi,%edx,4), %ecx
	movl      %ecx, (%eax,%edx,4)
	addl      $4, %edx
	cmpl      %ebx, %edx
	jl        LBB9_24
LBB9_25:
	cmpl      $3, %ebx
	jne       LBB9_4
	movl      %ebp, (%esp)
	movl      $3, 4(%esp)
	call      _Flx_renormalize
	jmp       LBB9_27
LBB9_4:
	movl      %ebp, %eax
LBB9_27:
	addl      $28, %esp
	popl      %esi
	popl      %edi
	popl      %ebx
	popl      %ebp
	ret       
# ----------------------
	.align 4, 0x90
	.globl	_F2x_mul
_F2x_mul:
	pushl     %edi
	pushl     %esi
	subl      $20, %esp
	movl      36(%esp), %edx
	movl      32(%esp), %esi
	leal      8(%esi), %ecx
	movl      $16777215, %eax
	movl      (%esi), %edi
	andl      %eax, %edi
	addl      $-2, %edi
	andl      (%edx), %eax
	addl      $8, %edx
	addl      $-2, %eax
	movl      %eax, 4(%esp)
	movl      %edi, (%esp)
	call      _F2x_mulspec
	movl      4(%esi), %ecx
	movl      %ecx, 4(%eax)
	addl      $20, %esp
	popl      %esi
	popl      %edi
	ret       
	.align 4, 0x90
_F2x_mulspec:
	pushl     %ebp
	pushl     %ebx
	pushl     %edi
	pushl     %esi
	subl      $124, %esp
	movl      %ecx, %esi
	call      L11$pb
L11$pb:
	popl      %ebp
	movl      148(%esp), %eax
	movl      144(%esp), %edi
	xorl      %ebx, %ebx
	testl     %edi, %edi
	je        LBB11_1
	xorl      %ecx, %ecx
	.align 4, 0x90
LBB11_6:
	cmpl      $0, (%esi)
	jne       LBB11_2
	addl      $4, %esi
	incl      %ecx
	decl      %edi
	jne       LBB11_6
	xorl      %edi, %edi
	jmp       LBB11_2
LBB11_1:
	xorl      %edi, %edi
	xorl      %ecx, %ecx
LBB11_2:
	testl     %eax, %eax
	je        LBB11_10
	.align 4, 0x90
LBB11_3:
	cmpl      $0, (%edx)
	jne       LBB11_4
	addl      $4, %edx
	incl      %ecx
	decl      %eax
	jne       LBB11_3
LBB11_10:
	movl      %ebp, 112(%esp)
	jmp       LBB11_11
LBB11_4:
	movl      %ebp, 112(%esp)
	movl      %eax, %ebx
LBB11_11:
	movl      %ebx, 120(%esp)
	cmpl      %ebx, %edi
	movl      %ebx, %eax
	movl      %eax, %ebp
	cmovle    %edi, %ebp
	movl      %edi, %ebx
	cmovl     %eax, %ebx
	movl      %edx, %eax
	cmovl     %esi, %eax
	movl      %eax, 108(%esp)
	cmovl     %edx, %esi
	movl      112(%esp), %eax
	movl      L_avma$non_lazy_ptr-L11$pb(%eax), %edx
	movl      (%edx), %eax
	testl     %ebp, %ebp
	je        LBB11_12
	movl      %eax, 96(%esp)
	cmpl      $1, %ebx
	jg        LBB11_38
	movl      %edx, 100(%esp)
	movl      %ecx, 92(%esp)
	movl      (%esi), %esi
	movl      108(%esp), %eax
	movl      (%eax), %ebp
	movl      %esi, %eax
	shrl      $16, %eax
	movl      %eax, 120(%esp)
	movzwl    %bp, %edx
	shrl      $16, %ebp
	xorl      %eax, %eax
	andl      $65535, %esi
	movl      $0, 116(%esp)
	movl      $0, %edi
	je        LBB11_24
	xorl      %ecx, %ecx
	xorl      %edi, %edi
	movl      $0, 116(%esp)
	.align 4, 0x90
LBB11_19:
	btl       %ecx, %esi
	jae       LBB11_21
	movl      %edx, %ebx
	shll      %cl, %ebx
	xorl      %ebx, 116(%esp)
	movl      %ebp, %ebx
	shll      %cl, %ebx
	xorl      %ebx, %edi
LBB11_21:
	incl      %ecx
	btl       %ecx, %esi
	jae       LBB11_23
	movl      %edx, %ebx
	shll      %cl, %ebx
	xorl      %ebx, 116(%esp)
	movl      %ebp, %ebx
	shll      %cl, %ebx
	xorl      %ebx, %edi
LBB11_23:
	incl      %ecx
	cmpl      $16, %ecx
	jne       LBB11_19
LBB11_24:
	cmpl      $0, 120(%esp)
	je        LBB11_25
	xorl      %esi, %esi
	.align 4, 0x90
LBB11_33:
	movl      120(%esp), %ecx
	btl       %eax, %ecx
	jae       LBB11_35
	movl      %ebp, %ebx
	movb      %al, %cl
	shll      %cl, %ebx
	xorl      %ebx, %esi
	movl      %edx, %ebx
	movb      %al, %cl
	shll      %cl, %ebx
	xorl      %ebx, %edi
LBB11_35:
	incl      %eax
	movl      120(%esp), %ecx
	btl       %eax, %ecx
	jae       LBB11_37
	movl      %ebp, %ebx
	movb      %al, %cl
	shll      %cl, %ebx
	xorl      %ebx, %esi
	movl      %edx, %ebx
	movb      %al, %cl
	shll      %cl, %ebx
	xorl      %ebx, %edi
LBB11_37:
	incl      %eax
	cmpl      $16, %eax
	jne       LBB11_33
	jmp       LBB11_26
LBB11_12:
	leal      -8(%eax), %esi
	movl      112(%esp), %ecx
	movl      L_bot$non_lazy_ptr-L11$pb(%ecx), %edi
	movl      %eax, %ecx
	subl      (%edi), %ecx
	cmpl      $7, %ecx
	ja        LBB11_14
	movl      $14, (%esp)
	movl      %eax, %edi
	movl      %edx, %ebx
	call      _pari_err
	movl      %ebx, %edx
	movl      %edi, %eax
LBB11_14:
	movl      %esi, (%edx)
	movl      $738197506, -8(%eax)
	movl      $0, -4(%eax)
	movl      %esi, %eax
	jmp       LBB11_15
LBB11_38:
	movl      %edx, 100(%esp)
	movl      %ebx, %edx
	sarl      $1, %edx
	movl      %edx, 116(%esp)
	subl      %edx, %ebx
	movl      %ebx, 80(%esp)
	leal      (%esi,%ebx,4), %eax
	movl      %eax, 104(%esp)
	movl      120(%esp), %ebx
	cmpl      %ebx, %edi
	movl      %edi, %eax
	movl      %edi, 88(%esp)
	cmovl     %ebx, %eax
	incl      %eax
	subl      %edx, %eax
	.align 4, 0x90
LBB11_39:
	xorl      %edi, %edi
	cmpl      $1, %eax
	je        LBB11_41
	cmpl      $0, -8(%esi,%eax,4)
	leal      -1(%eax), %eax
	movl      %eax, %edi
	je        LBB11_39
LBB11_41:
	movl      %ebp, %eax
	movl      80(%esp), %ebx
	subl      %ebx, %eax
	movl      108(%esp), %edx
	jle       LBB11_147
	movl      %eax, 68(%esp)
	movl      %ecx, 92(%esp)
	leal      (%edx,%ebx,4), %eax
	movl      %eax, 84(%esp)
	movl      88(%esp), %ebx
	movl      120(%esp), %ecx
	cmpl      %ecx, %ebx
	movl      %ebx, %eax
	cmovl     %ecx, %eax
	incl      %eax
	movl      116(%esp), %ebp
	subl      %ebp, %eax
	.align 4, 0x90
LBB11_43:
	xorl      %ebx, %ebx
	cmpl      $1, %eax
	je        LBB11_45
	cmpl      $0, -8(%edx,%eax,4)
	leal      -1(%eax), %eax
	movl      %eax, %ebx
	je        LBB11_43
LBB11_45:
	movl      %ebx, 4(%esp)
	movl      %edi, (%esp)
	movl      %esi, %ecx
	call      _F2x_mulspec
	movl      %eax, 52(%esp)
	movl      68(%esp), %eax
	movl      %eax, 4(%esp)
	movl      %ebp, (%esp)
	movl      104(%esp), %ebp
	movl      %ebp, %ecx
	movl      84(%esp), %edx
	call      _F2x_mulspec
	movl      %eax, 48(%esp)
	movl      116(%esp), %eax
	cmpl      %eax, %edi
	movl      %edi, %ecx
	cmovg     %eax, %ecx
	movl      %ecx, 36(%esp)
	cmovge    %edi, %eax
	movl      %esi, %ecx
	cmovg     %ebp, %ecx
	movl      %ecx, 32(%esp)
	cmovg     %esi, %ebp
	movl      %ebp, 104(%esp)
	movl      %eax, %ebp
	movl      100(%esp), %eax
	movl      (%eax), %esi
	movl      %esi, 56(%esp)
	movl      $-2, %ecx
	subl      %ebp, %ecx
	movl      %ecx, 64(%esp)
	movl      112(%esp), %eax
	movl      L_bot$non_lazy_ptr-L11$pb(%eax), %edx
	movl      %edx, 44(%esp)
	movl      %esi, %eax
	subl      (%edx), %eax
	shrl      $2, %eax
	leal      2(%ebp), %edx
	cmpl      %edx, %eax
	leal      (%esi,%ecx,4), %esi
	jae       LBB11_47
	movl      $14, (%esp)
	movl      %ebp, 72(%esp)
	movl      %edx, %ebp
	movl      %esi, 60(%esp)
	call      _pari_err
	movl      60(%esp), %esi
	movl      %ebp, %edx
	movl      72(%esp), %ebp
LBB11_47:
	movl      100(%esp), %ecx
	movl      %esi, (%ecx)
	cmpl      $16777216, %edx
	movl      104(%esp), %ecx
	jb        LBB11_49
	movl      112(%esp), %eax
	leal      L_.str4-L11$pb(%eax), %eax
	movl      %eax, 4(%esp)
	movl      $15, (%esp)
	movl      %ebp, 72(%esp)
	movl      %edx, %ebp
	call      _pari_err
	movl      %ebp, %edx
	movl      104(%esp), %ecx
	movl      72(%esp), %ebp
LBB11_49:
	movl      %edx, 40(%esp)
	movl      %edx, %eax
	orl       $738197504, %eax
	movl      %eax, (%esi)
	movl      %esi, 60(%esp)
	xorl      %eax, %eax
	cmpl      $0, 36(%esp)
	jle       LBB11_69
	movl      %ebp, 72(%esp)
	movl      %ecx, 104(%esp)
	movl      %ebx, 76(%esp)
	movl      %edi, %ebp
	notl      %ebp
	movl      116(%esp), %esi
	notl      %esi
	cmpl      %esi, %ebp
	movl      %esi, %eax
	cmovge    %ebp, %eax
	movl      64(%esp), %ecx
	addl      $2, %ecx
	xorl      %ebx, %ebx
	cmpl      $-1, %eax
	je        LBB11_51
	movl      %ecx, 64(%esp)
	movl      %eax, %ebx
	notl      %ebx
	movl      %ebx, 28(%esp)
	movl      116(%esp), %ecx
	cmpl      %ecx, %edi
	movl      %ecx, %edx
	cmovge    %edi, %edx
	cmpl      %esi, %ebp
	movl      %esi, %ecx
	cmovge    %ebp, %ecx
	andl      $-4, %ebx
	je        LBB11_57
	movl      %ebx, 16(%esp)
	movl      %esi, 36(%esp)
	movl      %ebp, 24(%esp)
	leal      0(,%edx,4), %ebp
	movl      56(%esp), %ebx
	movl      %ebx, %esi
	subl      %ebp, %esi
	movl      $-2, %ebp
	subl      %edx, %ebp
	movl      $-2, %edx
	subl      %ecx, %ebp
	subl      %ecx, %edx
	leal      (%ebx,%ebp,4), %ebp
	movl      32(%esp), %ecx
	leal      (%ecx,%edx,4), %ebx
	movl      %ebx, 20(%esp)
	movl      104(%esp), %ebx
	leal      (%ebx,%edx,4), %edx
	cmpl      %edx, %esi
	setbe     %dh
	cmpl      %ebp, %ebx
	setbe     %dl
	cmpl      20(%esp), %esi
	setbe     %bl
	cmpl      %ebp, %ecx
	setbe     %ch
	testb     %dl, %dh
	jne       LBB11_59
	andb      %ch, %bl
	movl      64(%esp), %ecx
	movl      24(%esp), %ebp
	movl      36(%esp), %esi
	movl      $0, %ebx
	jne       LBB11_67
	cmpl      %esi, %ebp
	movl      %esi, %edx
	cmovge    %ebp, %edx
	notl      %edx
	andl      $-4, %edx
	addl      $-4, %edx
	shrl      $2, %edx
	leal      1(%edx), %ecx
	xorl      %ebx, %ebx
	testb     $1, %cl
	movl      104(%esp), %esi
	je        LBB11_63
	movups    (%esi), %xmm0
	movl      32(%esp), %ecx
	movups    (%ecx), %xmm1
	xorps     %xmm0, %xmm1
	movl      56(%esp), %ecx
	movl      64(%esp), %ebx
	movups    %xmm1, (%ecx,%ebx,4)
	movl      $4, %ebx
LBB11_63:
	testl     %edx, %edx
	je        LBB11_66
	movl      116(%esp), %ecx
	cmpl      %ecx, %edi
	cmovge    %edi, %ecx
	negl      %ecx
	leal      4(%ebx,%ecx), %ecx
	movl      56(%esp), %edx
	leal      (%edx,%ecx,4), %ebp
	leal      16(%esi,%ebx,4), %esi
	movl      24(%esp), %ecx
	movl      36(%esp), %edx
	cmpl      %edx, %ecx
	cmovge    %ecx, %edx
	notl      %edx
	andl      $-4, %edx
	subl      %ebx, %edx
	movl      32(%esp), %ecx
	leal      16(%ecx,%ebx,4), %ecx
	.align 4, 0x90
LBB11_65:
	movups    -16(%esi), %xmm0
	movups    -16(%ecx), %xmm1
	xorps     %xmm0, %xmm1
	movups    %xmm1, -16(%ebp)
	movups    (%esi), %xmm0
	movups    (%ecx), %xmm1
	xorps     %xmm0, %xmm1
	movups    %xmm1, (%ebp)
	addl      $32, %ebp
	addl      $32, %esi
	addl      $32, %ecx
	addl      $-8, %edx
	jne       LBB11_65
LBB11_66:
	movl      16(%esp), %ebx
	movl      24(%esp), %ebp
	movl      36(%esp), %esi
	movl      64(%esp), %ecx
	jmp       LBB11_67
LBB11_147:
	movl      %ecx, 92(%esp)
	movl      %ebp, 4(%esp)
	movl      %edi, (%esp)
	movl      %esi, %ecx
	movl      %edx, %edi
	call      _F2x_mulspec
	movl      %eax, %esi
	movl      %ebp, 4(%esp)
	movl      116(%esp), %eax
	movl      %eax, (%esp)
	movl      104(%esp), %ecx
	movl      %edi, %edx
	call      _F2x_mulspec
	movl      %eax, %ecx
	movl      %ebx, %eax
	jmp       LBB11_148
LBB11_25:
	xorl      %esi, %esi
LBB11_26:
	movl      %edi, %eax
	shll      $16, %eax
	xorl      116(%esp), %eax
	movl      %eax, 120(%esp)
	shrl      $16, %edi
	cmpl      %edi, %esi
	setne     %al
	movzbl    %al, %ebp
	leal      12(,%ebp,4), %eax
	movl      96(%esp), %ecx
	movl      %ecx, %ebx
	subl      %eax, %ebx
	movl      112(%esp), %eax
	movl      L_bot$non_lazy_ptr-L11$pb(%eax), %eax
	movl      %ecx, %edx
	subl      (%eax), %edx
	addl      $3, %ebp
	shrl      $2, %edx
	cmpl      %ebp, %edx
	jae       LBB11_28
	movl      $14, (%esp)
	call      _pari_err
	movl      96(%esp), %ecx
LBB11_28:
	movl      100(%esp), %eax
	movl      %ebx, (%eax)
	movl      %ebp, %eax
	orl       $738197504, %eax
	movl      %eax, (%ebx)
	movl      $2, %eax
	subl      %ebp, %eax
	movl      120(%esp), %edx
	movl      %edx, (%ecx,%eax,4)
	cmpl      %edi, %esi
	je        LBB11_30
	xorl      %edi, %esi
	movl      $3, %eax
	subl      %ebp, %eax
	movl      %esi, (%ecx,%eax,4)
LBB11_30:
	movl      92(%esp), %eax
	movl      %eax, (%esp)
	movl      %ebx, %edx
	call      _F2x_shiftip
	jmp       LBB11_15
LBB11_57:
	movl      64(%esp), %ecx
	xorl      %ebx, %ebx
	jmp       LBB11_67
LBB11_59:
	movl      64(%esp), %ecx
	movl      24(%esp), %ebp
	movl      36(%esp), %esi
	xorl      %ebx, %ebx
LBB11_67:
	cmpl      28(%esp), %ebx
	je        LBB11_68
LBB11_51:
	movl      %ecx, 64(%esp)
	movl      %esi, 36(%esp)
	movl      %ebx, %edx
	notl      %edx
	cmpl      %esi, %ebp
	cmovge    %ebp, %esi
	subl      %esi, %edx
	movl      $-2, %ecx
	subl      %ebx, %ecx
	subl      %esi, %ecx
	testb     $1, %dl
	je        LBB11_53
	movl      32(%esp), %edx
	movl      (%edx,%ebx,4), %edx
	movl      104(%esp), %esi
	xorl      (%esi,%ebx,4), %edx
	movl      %edx, 28(%esp)
	addl      %ebx, 64(%esp)
	movl      56(%esp), %esi
	movl      28(%esp), %edx
	movl      %ecx, 20(%esp)
	movl      64(%esp), %ecx
	movl      %edx, (%esi,%ecx,4)
	movl      20(%esp), %ecx
	incl      %ebx
LBB11_53:
	testl     %ecx, %ecx
	movl      36(%esp), %esi
	je        LBB11_68
	movl      116(%esp), %ecx
	cmpl      %ecx, %edi
	cmovge    %edi, %ecx
	negl      %ecx
	cmpl      %esi, %ebp
	cmovge    %ebp, %esi
	movl      %ebx, %ebp
	movl      %ebp, %edx
	notl      %edx
	subl      %esi, %edx
	leal      1(%ebp,%ecx), %ecx
	movl      56(%esp), %esi
	leal      (%esi,%ecx,4), %ecx
	movl      32(%esp), %esi
	leal      4(%esi,%ebp,4), %esi
	movl      104(%esp), %ebx
	leal      4(%ebx,%ebp,4), %ebp
	.align 4, 0x90
LBB11_55:
	movl      -4(%esi), %ebx
	xorl      -4(%ebp), %ebx
	movl      %ebx, -4(%ecx)
	movl      (%esi), %ebx
	xorl      (%ebp), %ebx
	movl      %ebx, (%ecx)
	addl      $8, %ecx
	addl      $8, %esi
	addl      $8, %ebp
	addl      $-2, %edx
	jne       LBB11_55
LBB11_68:
	notl      %eax
	movl      76(%esp), %ebx
	movl      72(%esp), %ebp
LBB11_69:
	cmpl      %ebp, %eax
	jge       LBB11_94
	movl      %ebp, 72(%esp)
	movl      116(%esp), %ebp
	cmpl      %ebp, %edi
	movl      %ebp, %esi
	cmovge    %edi, %esi
	leal      -1(%esi), %ecx
	subl      %eax, %ecx
	cmpl      $-1, %ecx
	je        LBB11_71
	movl      %esi, %edx
	subl      %eax, %edx
	movl      %edx, %ecx
	andl      $-4, %ecx
	movl      %ecx, 36(%esp)
	cmpl      %ebp, %edi
	cmovge    %edi, %ebp
	andl      $-4, %edx
	je        LBB11_80
	movl      %esi, 32(%esp)
	movl      104(%esp), %edx
	leal      -4(%edx,%ebp,4), %esi
	movl      %esi, 64(%esp)
	movl      %eax, %esi
	subl      %ebp, %esi
	movl      56(%esp), %ebp
	leal      (%ebp,%esi,4), %ecx
	movl      %ebp, %esi
	movl      %edx, %ebp
	cmpl      64(%esp), %ecx
	ja        LBB11_84
	leal      (%ebp,%eax,4), %ecx
	leal      -4(%esi), %edx
	cmpl      %edx, %ecx
	ja        LBB11_84
	movl      32(%esp), %esi
	movl      %ebp, %ecx
	jmp       LBB11_93
LBB11_71:
	movl      104(%esp), %ecx
	jmp       LBB11_72
LBB11_80:
	movl      104(%esp), %ecx
	jmp       LBB11_93
LBB11_84:
	movl      116(%esp), %ecx
	cmpl      %ecx, %edi
	cmovge    %edi, %ecx
	subl      %eax, %ecx
	andl      $-4, %ecx
	addl      $-4, %ecx
	shrl      $2, %ecx
	movl      %ecx, 28(%esp)
	leal      1(%ecx), %ecx
	testb     $3, %cl
	movl      %eax, %ebp
	je        LBB11_87
	movl      116(%esp), %ecx
	cmpl      %ecx, %edi
	movl      %ecx, %edx
	cmovge    %edi, %edx
	movl      %edx, %ecx
	subl      %eax, %ecx
	andl      $-4, %ecx
	addl      $-4, %ecx
	shll      $2, %edx
	movl      56(%esp), %esi
	subl      %edx, %esi
	movl      %esi, 64(%esp)
	movl      %ecx, %edx
	shrl      $2, %edx
	incl      %edx
	andl      $3, %edx
	negl      %edx
	movl      %eax, %ebp
	.align 4, 0x90
LBB11_86:
	movl      104(%esp), %esi
	movups    (%esi,%ebp,4), %xmm0
	movl      64(%esp), %esi
	movups    %xmm0, (%esi,%ebp,4)
	addl      $4, %ebp
	addl      $-4, %ecx
	incl      %edx
	jne       LBB11_86
LBB11_87:
	movl      36(%esp), %ecx
	addl      %eax, %ecx
	cmpl      $3, 28(%esp)
	jae       LBB11_89
	movl      %ecx, %eax
	jmp       LBB11_92
LBB11_89:
	movl      %ecx, 36(%esp)
	leal      12(%ebp), %ecx
	movl      116(%esp), %edx
	cmpl      %edx, %edi
	cmovge    %edi, %edx
	subl      %edx, %ecx
	subl      %eax, %edx
	andl      $-4, %edx
	addl      %eax, %edx
	movl      56(%esp), %eax
	leal      (%eax,%ecx,4), %eax
	subl      %ebp, %edx
	movl      104(%esp), %ecx
	leal      48(%ecx,%ebp,4), %ecx
	.align 4, 0x90
LBB11_90:
	movups    -48(%ecx), %xmm0
	movups    %xmm0, -48(%eax)
	movups    -32(%ecx), %xmm0
	movups    %xmm0, -32(%eax)
	movups    -16(%ecx), %xmm0
	movups    %xmm0, -16(%eax)
	movups    (%ecx), %xmm0
	movups    %xmm0, (%eax)
	addl      $64, %eax
	addl      $64, %ecx
	addl      $-16, %edx
	jne       LBB11_90
	movl      36(%esp), %eax
LBB11_92:
	movl      104(%esp), %ecx
	movl      32(%esp), %esi
LBB11_93:
	cmpl      %eax, %esi
	je        LBB11_94
LBB11_72:
	movl      %ecx, 104(%esp)
	movl      116(%esp), %ecx
	cmpl      %ecx, %edi
	movl      %ecx, %esi
	cmovge    %edi, %esi
	leal      1(%eax), %ebp
	cmpl      %ebp, %esi
	cmovl     %ebp, %esi
	movl      %esi, %edx
	subl      %eax, %edx
	decl      %esi
	subl      %eax, %esi
	movl      %esi, 64(%esp)
	testb     $3, %dl
	je        LBB11_73
	cmpl      %ecx, %edi
	movl      %ecx, %edx
	cmovge    %edi, %edx
	leal      0(,%edx,4), %ecx
	movl      56(%esp), %esi
	subl      %ecx, %esi
	cmpl      %ebp, %edx
	cmovl     %ebp, %edx
	subl      %eax, %edx
	andl      $3, %edx
	negl      %edx
	movl      104(%esp), %ecx
	.align 4, 0x90
LBB11_75:
	movl      (%ecx,%eax,4), %ebp
	movl      %ebp, (%esi,%eax,4)
	incl      %eax
	incl      %edx
	jne       LBB11_75
	jmp       LBB11_76
LBB11_73:
	movl      104(%esp), %ecx
LBB11_76:
	cmpl      $3, 64(%esp)
	movl      %ecx, %esi
	movl      72(%esp), %ebp
	jb        LBB11_94
	movl      116(%esp), %ecx
	cmpl      %ecx, %edi
	cmovl     %ecx, %edi
	movl      $3, %ecx
	subl      %edi, %ecx
	movl      56(%esp), %edx
	leal      (%edx,%ecx,4), %ecx
	.align 4, 0x90
LBB11_78:
	movl      (%esi,%eax,4), %edx
	movl      %edx, -12(%ecx,%eax,4)
	movl      4(%esi,%eax,4), %edx
	movl      %edx, -8(%ecx,%eax,4)
	movl      8(%esi,%eax,4), %edx
	movl      %edx, -4(%ecx,%eax,4)
	movl      12(%esi,%eax,4), %edx
	movl      %edx, (%ecx,%eax,4)
	addl      $4, %eax
	cmpl      %ebp, %eax
	jl        LBB11_78
LBB11_94:
	movl      40(%esp), %eax
	movl      %eax, 4(%esp)
	movl      60(%esp), %eax
	movl      %eax, (%esp)
	call      _Flx_renormalize
	movl      %eax, 60(%esp)
	movl      68(%esp), %eax
	cmpl      %eax, %ebx
	movl      %ebx, %ecx
	cmovg     %eax, %ecx
	movl      %ecx, 56(%esp)
	movl      %eax, %ebp
	cmovge    %ebx, %ebp
	movl      108(%esp), %eax
	movl      %eax, %ecx
	movl      84(%esp), %edi
	cmovg     %edi, %ecx
	movl      %ecx, 40(%esp)
	cmovg     %eax, %edi
	movl      100(%esp), %eax
	movl      (%eax), %ecx
	movl      %ecx, 64(%esp)
	movl      %ecx, %eax
	movl      44(%esp), %edx
	subl      (%edx), %eax
	movl      $-2, %esi
	subl      %ebp, %esi
	movl      %esi, 44(%esp)
	shrl      $2, %eax
	leal      2(%ebp), %edx
	cmpl      %edx, %eax
	leal      (%ecx,%esi,4), %eax
	movl      100(%esp), %ecx
	jae       LBB11_96
	movl      $14, (%esp)
	movl      %ebp, 104(%esp)
	movl      %edx, %ebp
	movl      %eax, 72(%esp)
	call      _pari_err
	movl      72(%esp), %eax
	movl      %ebp, %edx
	movl      100(%esp), %ecx
	movl      104(%esp), %ebp
LBB11_96:
	movl      %edi, 84(%esp)
	movl      %eax, (%ecx)
	cmpl      $16777216, %edx
	movl      88(%esp), %esi
	movl      %eax, %edi
	jb        LBB11_98
	movl      112(%esp), %eax
	leal      L_.str4-L11$pb(%eax), %eax
	movl      %eax, 4(%esp)
	movl      $15, (%esp)
	movl      %edx, 108(%esp)
	call      _pari_err
	movl      108(%esp), %edx
LBB11_98:
	movl      %edx, 108(%esp)
	movl      %edx, %eax
	orl       $738197504, %eax
	movl      %eax, (%edi)
	movl      %edi, 72(%esp)
	xorl      %eax, %eax
	cmpl      $0, 56(%esp)
	movl      120(%esp), %edi
	jle       LBB11_121
	movl      %ebp, 104(%esp)
	movl      %ebx, %eax
	movl      %ebx, 76(%esp)
	notl      %ebx
	movl      68(%esp), %eax
	notl      %eax
	cmpl      %eax, %ebx
	cmovge    %ebx, %eax
	addl      $2, 44(%esp)
	cmpl      %edi, %esi
	movl      %esi, %ecx
	cmovl     %edi, %ecx
	notl      %esi
	movl      %edi, %ebp
	movl      %esi, %edi
	notl      %ebp
	cmpl      %ebp, %edi
	movl      %ebp, %edx
	cmovge    %edi, %edx
	addl      %ecx, %edx
	subl      116(%esp), %edx
	cmpl      %ebx, %edx
	cmovl     %ebx, %edx
	xorl      %ecx, %ecx
	cmpl      $-1, %edx
	je        LBB11_100
	notl      %edx
	movl      %edx, 56(%esp)
	movl      %ebx, 68(%esp)
	movl      116(%esp), %ecx
	leal      -1(%ecx), %ebx
	movl      %ebx, 28(%esp)
	movl      88(%esp), %ecx
	movl      120(%esp), %esi
	cmpl      %esi, %ecx
	movl      %edi, %edx
	movl      %edx, 100(%esp)
	movl      %ecx, %edi
	cmovl     %esi, %edi
	movl      %ebx, %esi
	subl      %edi, %esi
	cmpl      %ebp, %edx
	movl      %ebp, %ecx
	movl      %ebp, 112(%esp)
	cmovge    %edx, %ecx
	movl      56(%esp), %edx
	subl      %ecx, %esi
	movl      76(%esp), %ebp
	cmpl      %esi, %ebp
	cmovge    %ebp, %esi
	addl      %edi, %ecx
	subl      116(%esp), %ecx
	movl      68(%esp), %ebx
	cmpl      %ebx, %ecx
	cmovl     %ebx, %ecx
	movl      %edx, %ebp
	andl      $-4, %ebp
	je        LBB11_107
	leal      0(,%esi,4), %edi
	movl      64(%esp), %edx
	movl      %edx, %ebx
	subl      %edi, %ebx
	movl      $-2, %edi
	subl      %esi, %edi
	movl      $-2, %esi
	subl      %ecx, %edi
	subl      %ecx, %esi
	leal      (%edx,%edi,4), %edx
	movl      40(%esp), %edi
	leal      (%edi,%esi,4), %ecx
	movl      %ecx, 32(%esp)
	movl      84(%esp), %ecx
	leal      (%ecx,%esi,4), %esi
	cmpl      %esi, %ebx
	setbe     36(%esp)
	cmpl      %edx, %ecx
	setbe     %ch
	cmpl      32(%esp), %ebx
	setbe     %cl
	cmpl      %edx, %edi
	setbe     %bl
	testb     36(%esp), %ch
	jne       LBB11_109
	andb      %bl, %cl
	movl      68(%esp), %ebx
	movl      $0, %ecx
	movl      56(%esp), %edx
	jne       LBB11_119
	movl      %ebp, 36(%esp)
	movl      88(%esp), %edi
	movl      120(%esp), %ecx
	cmpl      %edi, %ecx
	movl      %edi, %esi
	cmovge    %ecx, %esi
	movl      112(%esp), %ebp
	movl      100(%esp), %ecx
	cmpl      %ecx, %ebp
	cmovge    %ebp, %ecx
	addl      %esi, %ecx
	subl      116(%esp), %ecx
	cmpl      %ebx, %ecx
	cmovl     %ebx, %ecx
	notl      %ecx
	andl      $-4, %ecx
	addl      $-4, %ecx
	shrl      $2, %ecx
	leal      1(%ecx), %ebx
	xorl      %esi, %esi
	testb     $1, %bl
	je        LBB11_113
	movl      84(%esp), %esi
	movups    (%esi), %xmm0
	movl      40(%esp), %esi
	movups    (%esi), %xmm1
	xorps     %xmm0, %xmm1
	movl      64(%esp), %esi
	movl      44(%esp), %ebx
	movups    %xmm1, (%esi,%ebx,4)
	movl      $4, %esi
LBB11_113:
	movl      %esi, 32(%esp)
	testl     %ecx, %ecx
	jne       LBB11_115
	movl      36(%esp), %ecx
	movl      68(%esp), %ebx
	jmp       LBB11_119
LBB11_107:
	xorl      %ecx, %ecx
	jmp       LBB11_119
LBB11_109:
	movl      68(%esp), %ebx
	xorl      %ecx, %ecx
	jmp       LBB11_118
LBB11_115:
	movl      120(%esp), %esi
	cmpl      %esi, %edi
	movl      %edi, %ecx
	cmovl     %esi, %ecx
	movl      28(%esp), %ebx
	subl      %ecx, %ebx
	movl      100(%esp), %edx
	cmpl      %ebp, %edx
	movl      %ebp, %ecx
	cmovge    %edx, %ecx
	subl      %ecx, %ebx
	movl      76(%esp), %ecx
	cmpl      %ebx, %ecx
	cmovge    %ecx, %ebx
	negl      %ebx
	movl      32(%esp), %ecx
	leal      4(%ecx,%ebx), %ecx
	movl      64(%esp), %ebx
	leal      (%ebx,%ecx,4), %ebp
	cmpl      %edi, %esi
	movl      %edi, %ecx
	cmovge    %esi, %ecx
	movl      112(%esp), %edi
	cmpl      %edx, %edi
	movl      %edx, %esi
	cmovge    %edi, %esi
	addl      %ecx, %esi
	movl      84(%esp), %ecx
	movl      32(%esp), %edx
	leal      16(%ecx,%edx,4), %ecx
	subl      116(%esp), %esi
	movl      68(%esp), %ebx
	cmpl      %ebx, %esi
	cmovl     %ebx, %esi
	notl      %esi
	andl      $-4, %esi
	subl      %edx, %esi
	movl      40(%esp), %edi
	leal      16(%edi,%edx,4), %edi
	.align 4, 0x90
LBB11_116:
	movups    -16(%ecx), %xmm0
	movups    -16(%edi), %xmm1
	xorps     %xmm0, %xmm1
	movups    %xmm1, -16(%ebp)
	movups    (%ecx), %xmm0
	movups    (%edi), %xmm1
	xorps     %xmm0, %xmm1
	movups    %xmm1, (%ebp)
	addl      $32, %ebp
	addl      $32, %ecx
	addl      $32, %edi
	addl      $-8, %esi
	jne       LBB11_116
	movl      36(%esp), %ecx
LBB11_118:
	movl      56(%esp), %edx
LBB11_119:
	cmpl      %edx, %ecx
	movl      112(%esp), %ebp
	movl      100(%esp), %edi
	je        LBB11_120
LBB11_100:
	movl      %ecx, 68(%esp)
	movl      %ebp, 112(%esp)
	movl      %ecx, %edx
	notl      %edx
	movl      88(%esp), %ecx
	movl      120(%esp), %esi
	cmpl      %esi, %ecx
	cmovl     %esi, %ecx
	cmpl      %ebp, %edi
	movl      %ebp, %esi
	cmovge    %edi, %esi
	addl      %ecx, %esi
	subl      116(%esp), %esi
	cmpl      %ebx, %esi
	cmovl     %ebx, %esi
	subl      %esi, %edx
	movl      $-2, %ecx
	movl      68(%esp), %ebp
	subl      %ebp, %ecx
	subl      %esi, %ecx
	testb     $1, %dl
	je        LBB11_101
	movl      %edi, 100(%esp)
	movl      40(%esp), %edx
	movl      (%edx,%ebp,4), %edx
	movl      84(%esp), %esi
	xorl      (%esi,%ebp,4), %edx
	movl      44(%esp), %edi
	addl      %ebp, %edi
	movl      64(%esp), %esi
	movl      %edx, (%esi,%edi,4)
	incl      %ebp
	jmp       LBB11_103
LBB11_101:
	movl      %edi, 100(%esp)
LBB11_103:
	movl      %ebp, %esi
	testl     %ecx, %ecx
	movl      112(%esp), %ebp
	movl      100(%esp), %edi
	je        LBB11_120
	movl      116(%esp), %ecx
	leal      -1(%ecx), %edx
	movl      88(%esp), %ecx
	movl      %esi, 68(%esp)
	movl      120(%esp), %esi
	cmpl      %esi, %ecx
	cmovl     %esi, %ecx
	subl      %ecx, %edx
	cmpl      %ebp, %edi
	cmovge    %edi, %ebp
	subl      %ebp, %edx
	movl      76(%esp), %esi
	cmpl      %edx, %esi
	cmovge    %esi, %edx
	addl      %ecx, %ebp
	negl      %edx
	subl      116(%esp), %ebp
	cmpl      %ebx, %ebp
	cmovl     %ebx, %ebp
	movl      68(%esp), %ebx
	movl      %ebx, %ecx
	notl      %ecx
	subl      %ebp, %ecx
	leal      1(%ebx,%edx), %edx
	movl      64(%esp), %esi
	leal      (%esi,%edx,4), %edx
	movl      40(%esp), %esi
	leal      4(%esi,%ebx,4), %esi
	movl      84(%esp), %edi
	leal      4(%edi,%ebx,4), %edi
	.align 4, 0x90
LBB11_105:
	movl      -4(%esi), %ebx
	xorl      -4(%edi), %ebx
	movl      %ebx, -4(%edx)
	movl      (%esi), %ebx
	xorl      (%edi), %ebx
	movl      %ebx, (%edx)
	addl      $8, %edx
	addl      $8, %esi
	addl      $8, %edi
	addl      $-2, %ecx
	jne       LBB11_105
LBB11_120:
	notl      %eax
	movl      88(%esp), %esi
	movl      120(%esp), %edi
	movl      76(%esp), %ebx
	movl      104(%esp), %ebp
LBB11_121:
	cmpl      %ebp, %eax
	jge       LBB11_146
	movl      %ebp, 104(%esp)
	movl      116(%esp), %ebp
	decl      %ebp
	movl      %ebp, 116(%esp)
	cmpl      %edi, %esi
	movl      %esi, %ecx
	cmovl     %edi, %ecx
	subl      %ecx, %ebp
	notl      %esi
	movl      %edi, %edx
	notl      %edx
	cmpl      %edx, %esi
	movl      %edx, %ecx
	cmovge    %esi, %ecx
	subl      %ecx, %ebp
	cmpl      %ebp, %ebx
	cmovge    %ebx, %ebp
	leal      -1(%ebp), %ecx
	subl      %eax, %ecx
	cmpl      $-1, %ecx
	je        LBB11_123
	movl      %ebp, %ecx
	movl      %ebp, 56(%esp)
	subl      %eax, %ecx
	movl      %ecx, 68(%esp)
	andl      $-4, %ecx
	movl      %ecx, 44(%esp)
	movl      88(%esp), %ebp
	cmpl      %edi, %ebp
	movl      %edi, %ecx
	cmovl     %ecx, %ebp
	movl      116(%esp), %ecx
	subl      %ebp, %ecx
	cmpl      %edx, %esi
	movl      %edx, %edi
	movl      %edx, 112(%esp)
	cmovge    %esi, %edi
	subl      %edi, %ecx
	cmpl      %ecx, %ebx
	cmovge    %ebx, %ecx
	andl      $-4, 68(%esp)
	je        LBB11_132
	movl      %esi, 100(%esp)
	movl      %ebx, 76(%esp)
	movl      84(%esp), %ebx
	leal      -4(%ebx,%ecx,4), %edx
	movl      %eax, %edi
	subl      %ecx, %edi
	movl      64(%esp), %ebp
	leal      (%ebp,%edi,4), %ecx
	movl      %ebp, %edi
	cmpl      %edx, %ecx
	ja        LBB11_136
	leal      (%ebx,%eax,4), %ecx
	leal      -4(%edi), %edx
	cmpl      %edx, %ecx
	jbe       LBB11_135
LBB11_136:
	movl      88(%esp), %ebp
	movl      120(%esp), %edx
	cmpl      %ebp, %edx
	movl      %ebp, %ecx
	cmovge    %edx, %ecx
	movl      116(%esp), %esi
	subl      %ecx, %esi
	movl      100(%esp), %ecx
	movl      112(%esp), %edx
	cmpl      %ecx, %edx
	cmovge    %edx, %ecx
	subl      %ecx, %esi
	movl      76(%esp), %ecx
	cmpl      %esi, %ecx
	cmovge    %ecx, %esi
	subl      %eax, %esi
	andl      $-4, %esi
	addl      $-4, %esi
	shrl      $2, %esi
	leal      1(%esi), %ecx
	testb     $3, %cl
	movl      %eax, %edi
	je        LBB11_139
	movl      88(%esp), %edx
	movl      120(%esp), %edi
	cmpl      %edx, %edi
	movl      %edx, %ecx
	cmovge    %edi, %ecx
	movl      116(%esp), %ebp
	subl      %ecx, %ebp
	movl      %esi, 68(%esp)
	movl      112(%esp), %esi
	cmpl      100(%esp), %esi
	movl      100(%esp), %ecx
	cmovge    %esi, %ecx
	subl      %ecx, %ebp
	movl      76(%esp), %ecx
	cmpl      %ebp, %ecx
	cmovge    %ecx, %ebp
	subl      %eax, %ebp
	andl      $-4, %ebp
	addl      $-4, %ebp
	cmpl      %edi, %edx
	cmovl     %edi, %edx
	movl      116(%esp), %ecx
	subl      %edx, %ecx
	movl      100(%esp), %edi
	cmpl      %esi, %edi
	movl      %esi, %edx
	movl      68(%esp), %esi
	cmovge    %edi, %edx
	subl      %edx, %ecx
	movl      76(%esp), %edx
	cmpl      %ecx, %edx
	cmovge    %edx, %ecx
	leal      0(,%ecx,4), %edi
	movl      64(%esp), %edx
	subl      %edi, %edx
	subl      %eax, %ecx
	andl      $12, %ecx
	addl      $-4, %ecx
	shrl      $2, %ecx
	incl      %ecx
	andl      $3, %ecx
	negl      %ecx
	movl      %eax, %edi
	.align 4, 0x90
LBB11_138:
	movups    (%ebx,%edi,4), %xmm0
	movups    %xmm0, (%edx,%edi,4)
	addl      $4, %edi
	addl      $-4, %ebp
	incl      %ecx
	jne       LBB11_138
LBB11_139:
	movl      44(%esp), %ecx
	addl      %eax, %ecx
	cmpl      $3, %esi
	jae       LBB11_141
	movl      %ecx, %eax
LBB11_135:
	movl      88(%esp), %edx
	movl      76(%esp), %ebx
	jmp       LBB11_145
LBB11_123:
	movl      %edx, 112(%esp)
	movl      %esi, 100(%esp)
	movl      88(%esp), %edx
	jmp       LBB11_124
LBB11_132:
	movl      %esi, 100(%esp)
	jmp       LBB11_144
LBB11_141:
	movl      %ecx, 44(%esp)
	movl      88(%esp), %ebp
	movl      120(%esp), %ebx
	cmpl      %ebx, %ebp
	movl      %ebp, %ecx
	cmovl     %ebx, %ecx
	movl      116(%esp), %edx
	subl      %ecx, %edx
	movl      100(%esp), %esi
	cmpl      112(%esp), %esi
	movl      112(%esp), %ecx
	cmovge    %esi, %ecx
	subl      %ecx, %edx
	movl      76(%esp), %ecx
	cmpl      %edx, %ecx
	cmovge    %ecx, %edx
	negl      %edx
	cmpl      %ebp, %ebx
	movl      %ebx, %ecx
	movl      %ebp, %ebx
	cmovge    %ecx, %ebx
	movl      116(%esp), %ecx
	subl      %ebx, %ecx
	movl      112(%esp), %ebp
	cmpl      %esi, %ebp
	movl      %esi, %ebx
	cmovge    %ebp, %ebx
	subl      %ebx, %ecx
	movl      76(%esp), %ebx
	cmpl      %ecx, %ebx
	cmovge    %ebx, %ecx
	subl      %eax, %ecx
	andl      $-4, %ecx
	addl      %eax, %ecx
	leal      12(%edi,%edx), %eax
	movl      64(%esp), %edx
	leal      (%edx,%eax,4), %eax
	subl      %edi, %ecx
	movl      84(%esp), %edx
	leal      48(%edx,%edi,4), %edx
	.align 4, 0x90
LBB11_142:
	movups    -48(%edx), %xmm0
	movups    %xmm0, -48(%eax)
	movups    -32(%edx), %xmm0
	movups    %xmm0, -32(%eax)
	movups    -16(%edx), %xmm0
	movups    %xmm0, -16(%eax)
	movups    (%edx), %xmm0
	movups    %xmm0, (%eax)
	addl      $64, %eax
	addl      $64, %edx
	addl      $-16, %ecx
	jne       LBB11_142
	movl      44(%esp), %eax
LBB11_144:
	movl      88(%esp), %edx
LBB11_145:
	movl      120(%esp), %edi
	movl      56(%esp), %ecx
	cmpl      %eax, %ecx
	je        LBB11_146
LBB11_124:
	cmpl      %edi, %edx
	movl      %edx, %ecx
	cmovl     %edi, %ecx
	movl      116(%esp), %esi
	subl      %ecx, %esi
	movl      100(%esp), %ebp
	movl      112(%esp), %ecx
	cmpl      %ecx, %ebp
	cmovge    %ebp, %ecx
	subl      %ecx, %esi
	cmpl      %esi, %ebx
	cmovge    %ebx, %esi
	leal      1(%eax), %ecx
	movl      %ecx, 68(%esp)
	cmpl      %ecx, %esi
	cmovl     %ecx, %esi
	movl      %esi, %edx
	subl      %eax, %edx
	decl      %esi
	subl      %eax, %esi
	testb     $3, %dl
	movl      %ebx, %ecx
	je        LBB11_125
	movl      88(%esp), %edx
	cmpl      %edi, %edx
	cmovl     %edi, %edx
	movl      116(%esp), %ebx
	subl      %edx, %ebx
	movl      112(%esp), %edx
	cmpl      %edx, %ebp
	cmovge    %ebp, %edx
	subl      %edx, %ebx
	cmpl      %ebx, %ecx
	cmovge    %ecx, %ebx
	shll      $2, %ebx
	movl      88(%esp), %edx
	movl      64(%esp), %edi
	subl      %ebx, %edi
	cmpl      %edx, 120(%esp)
	movl      %edx, %ebx
	cmovge    120(%esp), %ebx
	movl      116(%esp), %edx
	subl      %ebx, %edx
	cmpl      %ebp, 112(%esp)
	cmovge    112(%esp), %ebp
	subl      %ebp, %edx
	cmpl      %edx, %ecx
	cmovge    %ecx, %edx
	movl      %ecx, 76(%esp)
	movl      68(%esp), %ecx
	cmpl      %ecx, %edx
	cmovl     %ecx, %edx
	subl      %eax, %edx
	andl      $3, %edx
	negl      %edx
	movl      84(%esp), %ebx
	.align 4, 0x90
LBB11_127:
	movl      (%ebx,%eax,4), %ecx
	movl      %ecx, (%edi,%eax,4)
	incl      %eax
	incl      %edx
	jne       LBB11_127
	jmp       LBB11_128
LBB11_125:
	movl      %ecx, 76(%esp)
	movl      %edi, 120(%esp)
	movl      84(%esp), %ebx
LBB11_128:
	cmpl      $3, %esi
	movl      %ebx, %esi
	movl      88(%esp), %ebp
	movl      120(%esp), %ecx
	movl      76(%esp), %edi
	movl      104(%esp), %ebx
	jb        LBB11_146
	cmpl      %ecx, %ebp
	cmovl     %ecx, %ebp
	movl      116(%esp), %edx
	subl      %ebp, %edx
	movl      100(%esp), %ecx
	movl      112(%esp), %ebp
	cmpl      %ebp, %ecx
	cmovge    %ecx, %ebp
	subl      %ebp, %edx
	cmpl      %edx, %edi
	cmovge    %edi, %edx
	movl      $3, %ecx
	subl      %edx, %ecx
	movl      64(%esp), %edx
	leal      (%edx,%ecx,4), %ecx
	.align 4, 0x90
LBB11_130:
	movl      (%esi,%eax,4), %edx
	movl      %edx, -12(%ecx,%eax,4)
	movl      4(%esi,%eax,4), %edx
	movl      %edx, -8(%ecx,%eax,4)
	movl      8(%esi,%eax,4), %edx
	movl      %edx, -4(%ecx,%eax,4)
	movl      12(%esi,%eax,4), %edx
	movl      %edx, (%ecx,%eax,4)
	addl      $4, %eax
	cmpl      %ebx, %eax
	jl        LBB11_130
LBB11_146:
	movl      108(%esp), %eax
	movl      %eax, 4(%esp)
	movl      72(%esp), %eax
	movl      %eax, (%esp)
	call      _Flx_renormalize
	movl      %eax, %esi
	leal      8(%esi), %ecx
	movl      60(%esp), %ebx
	movl      %ebx, %edx
	addl      $8, %edx
	movl      $16777215, %eax
	movl      (%esi), %edi
	andl      %eax, %edi
	addl      $-2, %edi
	andl      (%ebx), %eax
	addl      $-2, %eax
	movl      %eax, 4(%esp)
	movl      %edi, (%esp)
	call      _F2x_mulspec
	movl      %eax, %edi
	movl      4(%esi), %eax
	movl      %eax, 4(%edi)
	movl      52(%esp), %esi
	movl      %esi, 4(%esp)
	movl      48(%esp), %ebx
	movl      %ebx, (%esp)
	call      _F2x_add
	movl      %eax, 4(%esp)
	movl      %edi, (%esp)
	call      _F2x_add
	movl      80(%esp), %edi
	movl      %edi, (%esp)
	movl      %ebx, %ecx
	movl      %eax, %edx
	call      _F2x_addshift
	movl      %eax, %ecx
	movl      %edi, %eax
LBB11_148:
	movl      %eax, (%esp)
	movl      %esi, %edx
	call      _F2x_addshift
	movl      92(%esp), %ecx
	movl      %ecx, (%esp)
	movl      96(%esp), %ecx
	movl      %eax, %edx
	call      _F2x_shiftip
LBB11_15:
	addl      $124, %esp
	popl      %esi
	popl      %edi
	popl      %ebx
	popl      %ebp
	ret       
# ----------------------
	.align 4, 0x90
	.globl	_F2x_sqr
_F2x_sqr:
	pushl     %ebp
	pushl     %ebx
	pushl     %edi
	pushl     %esi
	subl      $28, %esp
	call      L12$pb
L12$pb:
	popl      %esi
	movl      48(%esp), %eax
	movl      (%eax), %edx
	andl      $16777215, %edx
	movl      %edx, 24(%esp)
	leal      (%edx,%edx), %eax
	movl      L_avma$non_lazy_ptr-L12$pb(%esi), %ecx
	movl      %ecx, 20(%esp)
	movl      (%ecx), %ebx
	movl      $2, %edi
	subl      %eax, %edi
	movl      L_bot$non_lazy_ptr-L12$pb(%esi), %eax
	movl      %ebx, %ecx
	subl      (%eax), %ecx
	shrl      $2, %ecx
	leal      -2(%edx,%edx), %ebp
	cmpl      %ebp, %ecx
	leal      (%ebx,%edi,4), %eax
	movl      %eax, 16(%esp)
	jae       LBB12_2
	movl      $14, (%esp)
	call      _pari_err
LBB12_2:
	movl      16(%esp), %eax
	movl      20(%esp), %ecx
	movl      %eax, (%ecx)
	cmpl      $16777216, %ebp
	jb        LBB12_4
	leal      L_.str4-L12$pb(%esi), %eax
	movl      %eax, 4(%esp)
	movl      $15, (%esp)
	call      _pari_err
LBB12_4:
	movl      %ebp, %eax
	movl      %ebp, 12(%esp)
	orl       $738197504, %eax
	movl      %eax, (%ebx,%edi,4)
	movl      48(%esp), %eax
	movl      4(%eax), %eax
	orl       $1, %edi
	movl      %eax, (%ebx,%edi,4)
	cmpl      $3, 24(%esp)
	jb        LBB12_11
	movl      24(%esp), %eax
	leal      0(,%eax,8), %eax
	subl      %eax, %ebx
	movl      %ebx, 20(%esp)
	movl      $2, %eax
	.align 4, 0x90
LBB12_6:
	movl      48(%esp), %ecx
	movl      (%ecx,%eax,4), %edi
	movl      %edi, %ebp
	shrl      $16, %ebp
	leal      (%eax,%eax), %ecx
	movl      $0, (%ebx,%eax,8)
	testw     %di, %di
	je        LBB12_8
	movl      %edi, %ebx
	andl      $15, %ebx
	movl      %edi, %edx
	shrl      $2, %edx
	andl      $60, %edx
	movl      _F2x_sqr.sq-L12$pb(%esi,%edx), %edx
	shll      $8, %edx
	orl       _F2x_sqr.sq-L12$pb(%esi,%ebx,4), %edx
	movl      %edi, %ebx
	shrl      $6, %ebx
	andl      $60, %ebx
	movl      _F2x_sqr.sq-L12$pb(%esi,%ebx), %ebx
	shll      $16, %ebx
	orl       %edx, %ebx
	movl      %edi, %edx
	shrl      $10, %edx
	andl      $60, %edx
	movl      _F2x_sqr.sq-L12$pb(%esi,%edx), %edx
	shll      $24, %edx
	orl       %ebx, %edx
	movl      20(%esp), %ebx
	movl      %edx, (%ebx,%ecx,4)
LBB12_8:
	movl      $0, 4(%ebx,%eax,8)
	testl     %ebp, %ebp
	je        LBB12_10
	andl      $15, %ebp
	movl      %edi, %edx
	shrl      $18, %edx
	andl      $60, %edx
	movl      _F2x_sqr.sq-L12$pb(%esi,%edx), %edx
	shll      $8, %edx
	orl       _F2x_sqr.sq-L12$pb(%esi,%ebp,4), %edx
	movl      %ebx, %ebp
	movl      %edi, %ebx
	shrl      $22, %ebx
	andl      $60, %ebx
	movl      _F2x_sqr.sq-L12$pb(%esi,%ebx), %ebx
	shll      $16, %ebx
	orl       %edx, %ebx
	shrl      $28, %edi
	movl      _F2x_sqr.sq-L12$pb(%esi,%edi,4), %edx
	shll      $24, %edx
	orl       %ebx, %edx
	movl      %ebp, %ebx
	movl      %edx, 4(%ebx,%ecx,4)
LBB12_10:
	incl      %eax
	cmpl      24(%esp), %eax
	jl        LBB12_6
LBB12_11:
	movl      12(%esp), %eax
	movl      %eax, 4(%esp)
	movl      16(%esp), %eax
	movl      %eax, (%esp)
	call      _Flx_renormalize
	addl      $28, %esp
	popl      %esi
	popl      %edi
	popl      %ebx
	popl      %ebp
	ret       
# ----------------------
	.section       __TEXT,__literal16,16byte_literals
	.align 4
LCPI13_0:
	.long	-1
	.long	-2
	.long	-3
	.long	-4
	.align 4
LCPI14_0:
	.long	-1
	.long	-2
	.long	-3
	.long	-4
	.align 4
LCPI15_0:
	.byte	85, 85, 85, 85, 85, 85, 85, 85, 85, 85, 85, 85, 85, 85, 85, 85
	.align 4
LCPI16_0:
	.long	-1
	.long	-2
	.long	-3
	.long	-4
	.align 4
LCPI18_0:
	.long	-1
	.long	-2
	.long	-3
	.long	-4
	.align 4
LCPI23_0:
	.long	-1
	.long	-2
	.long	-3
	.long	-4
	.align 4
LCPI24_0:
	.long	-1
	.long	-2
	.long	-3
	.long	-4
	.align 4
LCPI25_0:
	.long	-1
	.long	-2
	.long	-3
	.long	-4
	.align 4
LCPI28_0:
	.long	-1
	.long	-2
	.long	-3
	.long	-4
	.align 4
LCPI31_0:
	.byte	85, 85, 85, 85, 85, 85, 85, 85, 85, 85, 85, 85, 85, 85, 85, 85
	.align 4
LCPI32_0:
	.long	-1
	.long	-2
	.long	-3
	.long	-4
	.align 4
LCPI36_0:
	.long	-1
	.long	-2
	.long	-3
	.long	-4
	.align 4
LCPI38_0:
	.long	-1
	.long	-2
	.long	-3
	.long	-4
# ----------------------
	.section       __TEXT,__text,regular,pure_instructions
	.align 4, 0x90
	.globl	_F2x_rem
_F2x_rem:
	pushl     %ebp
	pushl     %ebx
	pushl     %edi
	pushl     %esi
	subl      $76, %esp
	call      L13$pb
L13$pb:
	popl      %ebx
	movl      100(%esp), %ecx
	movl      96(%esp), %eax
	movl      (%eax), %edi
	movl      $16777215, %eax
	andl      (%ecx), %eax
	movl      $-1, 72(%esp)
	cmpl      $2, %eax
	movl      $-1, %edx
	je        LBB13_9
	movl      -4(%ecx,%eax,4), %edx
	movl      %edx, %ecx
	shrl      $16, %ecx
	cmpl      $65535, %edx
	cmovbe    %edx, %ecx
	movl      $12, %esi
	movl      $28, %edx
	cmova     %esi, %edx
	cmpl      $256, %ecx
	jb        LBB13_3
	addl      $-8, %edx
	shrl      $8, %ecx
LBB13_3:
	shll      $5, %eax
	cmpl      $16, %ecx
	jb        LBB13_5
	addl      $-4, %edx
	shrl      $4, %ecx
LBB13_5:
	addl      $-65, %eax
	subl      %edx, %eax
	subl      _F2x_degree_lg.__bfffo_tabshi-L13$pb(%ebx,%ecx,4), %eax
	movl      %eax, %edx
	jne       LBB13_9
	movl      96(%esp), %eax
	movl      4(%eax), %edi
	movl      %ebx, %eax
	movl      L_avma$non_lazy_ptr-L13$pb(%eax), %ebp
	movl      (%ebp), %ebx
	leal      -8(%ebx), %esi
	movl      L_bot$non_lazy_ptr-L13$pb(%eax), %eax
	movl      %ebx, %ecx
	subl      (%eax), %ecx
	cmpl      $7, %ecx
	ja        LBB13_8
	movl      $14, (%esp)
	call      _pari_err
LBB13_8:
	movl      %esi, (%ebp)
	movl      $738197506, -8(%ebx)
	movl      %edi, -4(%ebx)
	movl      %esi, %eax
	jmp       LBB13_80
LBB13_9:
	movl      %edx, 40(%esp)
	movl      %edi, %esi
	movl      %edi, 68(%esp)
	andl      $16777215, %esi
	cmpl      $2, %esi
	je        LBB13_15
	movl      96(%esp), %eax
	movl      -4(%eax,%esi,4), %ecx
	movl      %ecx, %eax
	shrl      $16, %eax
	cmpl      $65535, %ecx
	cmovbe    %ecx, %eax
	movl      $12, %edx
	movl      $28, %ecx
	cmova     %edx, %ecx
	cmpl      $256, %eax
	jb        LBB13_12
	addl      $-8, %ecx
	shrl      $8, %eax
LBB13_12:
	movl      %esi, %edx
	shll      $5, %edx
	cmpl      $16, %eax
	jb        LBB13_14
	addl      $-4, %ecx
	shrl      $4, %eax
LBB13_14:
	addl      $-65, %edx
	subl      %ecx, %edx
	subl      _F2x_degree_lg.__bfffo_tabshi-L13$pb(%ebx,%eax,4), %edx
	movl      %edx, 72(%esp)
LBB13_15:
	movl      %ebx, 36(%esp)
	movl      L_avma$non_lazy_ptr-L13$pb(%ebx), %ebp
	movl      (%ebp), %ecx
	movl      %ecx, 64(%esp)
	leal      0(,%esi,4), %eax
	movl      %ecx, %edi
	subl      %eax, %edi
	movl      L_bot$non_lazy_ptr-L13$pb(%ebx), %eax
	subl      (%eax), %ecx
	shrl      $2, %ecx
	cmpl      %esi, %ecx
	jae       LBB13_17
	movl      $14, (%esp)
	call      _pari_err
LBB13_17:
	movl      %edi, (%ebp)
	movl      $-16777217, %eax
	movl      96(%esp), %ecx
	andl      (%ecx), %eax
	movl      %eax, (%edi)
	cmpl      $2, %esi
	movl      %esi, 52(%esp)
	movl      40(%esp), %ebx
	jb        LBB13_34
	movl      68(%esp), %ebp
	andl      $16777215, %ebp
	movl      %ebp, %esi
	negl      %esi
	cmpl      $-3, %esi
	movl      $-2, %edx
	cmovg     %esi, %edx
	addl      %ebp, %edx
	cmpl      $-1, %edx
	movl      52(%esp), %eax
	je        LBB13_27
	incl      %edx
	cmpl      $-3, %esi
	movl      $-2, %ebx
	cmovg     %esi, %ebx
	xorl      %ecx, %ecx
	movl      %edx, %eax
	andl      $-8, %eax
	je        LBB13_20
	movl      %eax, 60(%esp)
	movl      %ebx, %eax
	notl      %eax
	movl      96(%esp), %ecx
	leal      (%ecx,%eax,4), %ecx
	movl      64(%esp), %eax
	leal      -4(%eax), %eax
	cmpl      %ecx, %eax
	ja        LBB13_23
	movl      96(%esp), %eax
	leal      -4(%eax,%ebp,4), %eax
	addl      %ebp, %ebx
	notl      %ebx
	movl      64(%esp), %ecx
	leal      (%ecx,%ebx,4), %ebx
	xorl      %ecx, %ecx
	cmpl      %ebx, %eax
	movl      52(%esp), %eax
	jbe       LBB13_26
LBB13_23:
	movl      %edx, 56(%esp)
	movl      %edi, 20(%esp)
	movl      52(%esp), %ecx
	movl      %ecx, %eax
	subl      60(%esp), %eax
	cmpl      $-3, %esi
	movl      $-2, %ebx
	cmovg     %esi, %ebx
	leal      1(%ebx,%ebp), %esi
	andl      $-8, %esi
	movl      36(%esp), %ebx
	movdqa    LCPI13_0-L13$pb(%ebx), %xmm0
	movl      64(%esp), %edx
	movl      96(%esp), %edi
	.align 4, 0x90
LBB13_24:
	movd      %ebp, %xmm1
	pshufd    $0, %xmm1, %xmm1
	paddd     %xmm0, %xmm1
	movd      %xmm1, %ebx
	movdqu    -12(%edi,%ebx,4), %xmm1
	movups    -28(%edi,%ebx,4), %xmm2
	subl      %ecx, %ebx
	movdqu    %xmm1, -12(%edx,%ebx,4)
	movups    %xmm2, -28(%edx,%ebx,4)
	addl      $-8, %ebp
	addl      $-8, %esi
	jne       LBB13_24
	movl      60(%esp), %ecx
	movl      20(%esp), %edi
	movl      56(%esp), %edx
	jmp       LBB13_26
LBB13_20:
	movl      52(%esp), %eax
LBB13_26:
	cmpl      %ecx, %edx
	movl      40(%esp), %ebx
	movl      96(%esp), %ecx
	je        LBB13_34
LBB13_27:
	movl      %ecx, %edx
	movl      %eax, %esi
	negl      %esi
	cmpl      $-3, %esi
	movl      $-2, %ecx
	cmovg     %esi, %ecx
	leal      (%eax,%ecx), %ebp
	leal      1(%eax,%ecx), %ecx
	testb     $3, %cl
	je        LBB13_28
	movl      %ebp, 60(%esp)
	movl      %ebx, %ebp
	movl      68(%esp), %ecx
	notl      %ecx
	orl       $1056964608, %ecx
	movl      %edi, %ebx
	movl      64(%esp), %edi
	leal      (%edi,%ecx,4), %ecx
	movl      %ebx, %edi
	cmpl      $-3, %esi
	movl      $-2, %ebx
	cmovg     %esi, %ebx
	leal      1(%eax,%ebx), %esi
	andl      $3, %esi
	negl      %esi
	.align 4, 0x90
LBB13_30:
	movl      -4(%edx,%eax,4), %ebx
	movl      %ebx, (%ecx,%eax,4)
	leal      -1(%eax), %eax
	incl      %esi
	jne       LBB13_30
	jmp       LBB13_31
LBB13_28:
	movl      %ebp, 60(%esp)
	movl      %ebx, %ebp
LBB13_31:
	cmpl      $3, 60(%esp)
	movl      %ebp, %ebx
	movl      %edx, %esi
	jb        LBB13_34
	movl      68(%esp), %ecx
	notl      %ecx
	orl       $1056964608, %ecx
	movl      64(%esp), %edx
	leal      (%edx,%ecx,4), %ecx
	.align 4, 0x90
LBB13_33:
	movl      -4(%esi,%eax,4), %edx
	movl      %edx, (%ecx,%eax,4)
	movl      -8(%esi,%eax,4), %edx
	movl      %edx, -4(%ecx,%eax,4)
	movl      -12(%esi,%eax,4), %edx
	movl      %edx, -8(%ecx,%eax,4)
	movl      -16(%esi,%eax,4), %edx
	movl      %edx, -12(%ecx,%eax,4)
	leal      -4(%eax), %eax
	cmpl      $1, %eax
	jg        LBB13_33
LBB13_34:
	movl      72(%esp), %edx
	cmpl      %ebx, %edx
	jge       LBB13_36
	movl      %edi, 20(%esp)
	movl      52(%esp), %eax
	jmp       LBB13_79
LBB13_36:
	movl      %edi, 20(%esp)
	movl      68(%esp), %edi
	movl      %edi, %eax
	notl      %eax
	movl      %edi, %ecx
	orl       $-16777216, %ecx
	xorl      $16777215, %ecx
	movl      %ecx, 32(%esp)
	andl      $16777215, %edi
	movl      $2, %ecx
	subl      %edi, %ecx
	movl      %ecx, 16(%esp)
	movl      100(%esp), %ebp
	leal      8(%ebp), %ecx
	movl      %ecx, 12(%esp)
	shll      $2, %edi
	movl      64(%esp), %ecx
	movl      %ecx, %esi
	subl      %edi, %esi
	movl      %esi, 24(%esp)
	leal      16(%ebp), %esi
	movl      %esi, 8(%esp)
	orl       $1056964608, %eax
	leal      (%ecx,%eax,4), %ecx
	movl      %ecx, 28(%esp)
	movl      52(%esp), %edi
	.align 4, 0x90
LBB13_37:
	subl      %ebx, %edx
	movl      %edx, %eax
	sarl      $5, %eax
	movl      (%ebp), %esi
	andl      $16777215, %esi
	andl      $31, %edx
	je        LBB13_38
	cmpl      $3, %esi
	jb        LBB13_68
	movl      $32, %ecx
	subl      %edx, %ecx
	movl      %ecx, 56(%esp)
	movl      %eax, %ecx
	subl      52(%esp), %ecx
	movl      %ecx, 48(%esp)
	cmpl      $2, %esi
	movl      $3, %ebx
	cmovg     %esi, %ebx
	leal      -2(%ebx), %ecx
	addl      $-3, %ebx
	testb     $1, %cl
	je        LBB13_61
	movl      %edi, 44(%esp)
	movl      %eax, 60(%esp)
	movl      %esi, 68(%esp)
	movl      %edx, %ecx
	movl      %ecx, 72(%esp)
	movl      8(%ebp), %edx
	shll      %cl, %edx
	movl      64(%esp), %eax
	movl      48(%esp), %ecx
	xorl      %edx, 8(%eax,%ecx,4)
	movl      8(%ebp), %esi
	movl      56(%esp), %ecx
	shrl      %cl, %esi
	movl      $3, %edx
	jmp       LBB13_63
	.align 4, 0x90
LBB13_38:
	cmpl      $3, %esi
	jb        LBB13_68
	movl      %eax, %ecx
	movl      %eax, 60(%esp)
	subl      52(%esp), %ecx
	movl      %ecx, 72(%esp)
	cmpl      $3, %esi
	movl      $3, %ecx
	cmova     %esi, %ecx
	movl      $2, %edx
	cmpl      $2, %ecx
	je        LBB13_40
	leal      -2(%ecx), %edx
	andl      $-4, %edx
	orl       $2, %edx
	movl      %edx, 56(%esp)
	cmpl      $3, %esi
	movl      $3, %eax
	cmova     %esi, %eax
	cmpl      $2, %edx
	movl      $2, %edx
	je        LBB13_58
	leal      -4(%ebp,%eax,4), %ebx
	movl      %ebx, 48(%esp)
	movl      %esi, 68(%esp)
	movl      16(%esp), %esi
	movl      60(%esp), %ebx
	leal      (%esi,%ebx), %ebx
	movl      64(%esp), %esi
	leal      (%esi,%ebx,4), %ebx
	movl      68(%esp), %esi
	cmpl      48(%esp), %ebx
	movl      40(%esp), %ebx
	ja        LBB13_50
	addl      60(%esp), %eax
	addl      32(%esp), %eax
	movl      64(%esp), %esi
	leal      (%esi,%eax,4), %eax
	movl      68(%esp), %esi
	cmpl      %eax, 12(%esp)
	jbe       LBB13_58
LBB13_50:
	movl      %esi, 68(%esp)
	cmpl      $3, %esi
	movl      $3, %edx
	cmova     %esi, %edx
	addl      $-2, %edx
	andl      $-4, %edx
	addl      $-4, %edx
	shrl      $2, %edx
	leal      1(%edx), %eax
	movl      $2, %esi
	testb     $1, %al
	je        LBB13_52
	movdqu    8(%ebp), %xmm0
	movl      64(%esp), %eax
	movl      72(%esp), %esi
	movdqu    8(%eax,%esi,4), %xmm1
	pxor      %xmm0, %xmm1
	movdqu    %xmm1, 8(%eax,%esi,4)
	movl      $6, %esi
LBB13_52:
	testl     %edx, %edx
	jne       LBB13_54
	movl      56(%esp), %edx
	jmp       LBB13_57
LBB13_61:
	movl      %edi, 44(%esp)
	movl      %eax, 60(%esp)
	movl      %esi, 68(%esp)
	movl      %edx, 72(%esp)
	movl      $2, %edx
	xorl      %esi, %esi
LBB13_63:
	testl     %ebx, %ebx
	movl      68(%esp), %eax
	movl      56(%esp), %ebx
	je        LBB13_66
	movl      24(%esp), %eax
	movl      60(%esp), %ecx
	leal      (%eax,%ecx,4), %edi
	.align 4, 0x90
LBB13_65:
	movl      %ebp, %eax
	movl      (%eax,%edx,4), %ebp
	movl      72(%esp), %ecx
	shll      %cl, %ebp
	orl       %esi, %ebp
	xorl      %ebp, (%edi,%edx,4)
	movl      (%eax,%edx,4), %esi
	movb      %bl, %cl
	shrl      %cl, %esi
	movl      4(%eax,%edx,4), %ebp
	movl      72(%esp), %ecx
	shll      %cl, %ebp
	orl       %esi, %ebp
	xorl      %ebp, 4(%edi,%edx,4)
	movl      %eax, %ebp
	movl      68(%esp), %eax
	movl      4(%ebp,%edx,4), %esi
	movb      %bl, %cl
	shrl      %cl, %esi
	addl      $2, %edx
	cmpl      %eax, %edx
	jl        LBB13_65
LBB13_66:
	testl     %esi, %esi
	je        LBB13_67
	movl      %eax, %ecx
	cmpl      $3, %ecx
	movl      $3, %eax
	cmovbe    %eax, %ecx
	movl      48(%esp), %edx
	addl      %ecx, %edx
	movl      64(%esp), %eax
	xorl      %esi, (%eax,%edx,4)
LBB13_67:
	movl      40(%esp), %ebx
	movl      28(%esp), %ecx
	movl      44(%esp), %edi
	jmp       LBB13_68
LBB13_54:
	movl      60(%esp), %eax
	leal      (%esi,%eax), %eax
	movl      24(%esp), %edx
	leal      (%edx,%eax,4), %edx
	movl      8(%esp), %eax
	movl      %esi, 48(%esp)
	leal      (%eax,%esi,4), %esi
	movl      68(%esp), %eax
	cmpl      $3, %eax
	movl      $3, %ebx
	cmova     %eax, %ebx
	addl      $-2, %ebx
	andl      $-4, %ebx
	orl       $2, %ebx
	subl      48(%esp), %ebx
	xorl      %eax, %eax
	.align 4, 0x90
LBB13_55:
	movups    -16(%esi,%eax,4), %xmm0
	movups    (%edx,%eax,4), %xmm1
	xorps     %xmm0, %xmm1
	movups    %xmm1, (%edx,%eax,4)
	movdqu    (%esi,%eax,4), %xmm0
	movdqu    16(%edx,%eax,4), %xmm1
	pxor      %xmm0, %xmm1
	movdqu    %xmm1, 16(%edx,%eax,4)
	addl      $8, %eax
	cmpl      %eax, %ebx
	jne       LBB13_55
	movl      56(%esp), %edx
	movl      40(%esp), %ebx
LBB13_57:
	movl      68(%esp), %esi
LBB13_58:
	cmpl      %edx, %ecx
	je        LBB13_46
LBB13_40:
	movl      %esi, 68(%esp)
	leal      1(%edx), %ecx
	cmpl      %esi, %ecx
	cmovge    %ecx, %esi
	movl      %esi, %eax
	subl      %edx, %eax
	decl      %esi
	subl      %edx, %esi
	testb     $1, %al
	je        LBB13_41
	movl      (%ebp,%edx,4), %eax
	movl      %eax, 56(%esp)
	movl      72(%esp), %eax
	addl      %edx, %eax
	movl      64(%esp), %edx
	movl      56(%esp), %ebx
	xorl      %ebx, (%edx,%eax,4)
	movl      40(%esp), %ebx
	jmp       LBB13_43
LBB13_41:
	movl      %edx, %ecx
LBB13_43:
	testl     %esi, %esi
	je        LBB13_46
	movl      24(%esp), %eax
	movl      60(%esp), %edx
	leal      (%eax,%edx,4), %eax
	movl      68(%esp), %esi
	.align 4, 0x90
LBB13_45:
	movl      (%ebp,%ecx,4), %edx
	xorl      %edx, (%eax,%ecx,4)
	movl      4(%ebp,%ecx,4), %edx
	xorl      %edx, 4(%eax,%ecx,4)
	addl      $2, %ecx
	cmpl      %esi, %ecx
	jl        LBB13_45
LBB13_46:
	movl      28(%esp), %ecx
	.align 4, 0x90
LBB13_68:
	movl      %edi, %eax
	cmpl      $3, %eax
	jl        LBB13_70
	leal      -1(%eax), %edi
	cmpl      $0, (%ecx,%eax,4)
	je        LBB13_68
LBB13_70:
	cmpl      $2, %eax
	jne       LBB13_73
	movl      $2, %eax
	movl      $-1, %edx
	jmp       LBB13_78
	.align 4, 0x90
LBB13_73:
	movl      %ecx, %edi
	movl      32(%esp), %ecx
	leal      (%ecx,%eax), %ecx
	movl      64(%esp), %edx
	movl      (%edx,%ecx,4), %edx
	movl      %edx, %ecx
	shrl      $16, %ecx
	cmpl      $65535, %edx
	cmovbe    %edx, %ecx
	movl      $28, %edx
	movl      $12, %esi
	cmova     %esi, %edx
	cmpl      $256, %ecx
	jb        LBB13_75
	addl      $-8, %edx
	shrl      $8, %ecx
LBB13_75:
	movl      %eax, %esi
	shll      $5, %esi
	cmpl      $16, %ecx
	jb        LBB13_77
	addl      $-4, %edx
	shrl      $4, %ecx
LBB13_77:
	addl      $-65, %esi
	subl      %edx, %esi
	movl      36(%esp), %edx
	subl      _F2x_degree_lg.__bfffo_tabshi-L13$pb(%edx,%ecx,4), %esi
	movl      %esi, %edx
	movl      %edi, %ecx
LBB13_78:
	cmpl      %ebx, %edx
	movl      %eax, %edi
	jge       LBB13_37
LBB13_79:
	movl      %eax, 4(%esp)
	movl      20(%esp), %eax
	movl      %eax, (%esp)
	call      _Flx_renormalize
LBB13_80:
	addl      $76, %esp
	popl      %esi
	popl      %edi
	popl      %ebx
	popl      %ebp
	ret       
# ----------------------
	.align 4, 0x90
	.globl	_F2x_divrem
_F2x_divrem:
	pushl     %ebp
	pushl     %ebx
	pushl     %edi
	pushl     %esi
	subl      $108, %esp
	call      L14$pb
L14$pb:
	popl      %ebp
	movl      136(%esp), %ebx
	movl      132(%esp), %ecx
	movl      %ecx, 48(%esp)
	movl      128(%esp), %eax
	movl      %eax, 100(%esp)
	movl      $16777215, %edx
	movl      (%eax), %esi
	andl      %edx, %esi
	movl      4(%eax), %eax
	movl      %eax, 96(%esp)
	andl      (%ecx), %edx
	cmpl      $2, %edx
	movl      $-1, %edi
	je        LBB14_6
	movl      48(%esp), %eax
	movl      -4(%eax,%edx,4), %ecx
	movl      %edx, %edi
	movl      %ecx, %eax
	shrl      $16, %eax
	cmpl      $65535, %ecx
	cmovbe    %ecx, %eax
	movl      $12, %edx
	movl      $28, %ecx
	cmova     %edx, %ecx
	cmpl      $256, %eax
	jb        LBB14_3
	addl      $-8, %ecx
	shrl      $8, %eax
LBB14_3:
	movl      %edi, %edx
	shll      $5, %edx
	cmpl      $16, %eax
	jb        LBB14_5
	addl      $-4, %ecx
	shrl      $4, %eax
LBB14_5:
	addl      $-65, %edx
	subl      %ecx, %edx
	subl      _F2x_degree_lg.__bfffo_tabshi-L14$pb(%ebp,%eax,4), %edx
	movl      %edx, %edi
	jns       LBB14_7
LBB14_6:
	movl      $27, (%esp)
	call      _pari_err
	movl      %edi, %edx
LBB14_7:
	movl      %ebx, %ecx
	cmpl      $1, %ecx
	je        LBB14_173
	testl     %edx, %edx
	je        LBB14_9
	movl      $-1, %eax
	cmpl      $2, %esi
	je        LBB14_40
	movl      %edx, %ebx
	movl      %ecx, %edi
	movl      100(%esp), %eax
	movl      -4(%eax,%esi,4), %ecx
	movl      %ecx, %eax
	shrl      $16, %eax
	cmpl      $65535, %ecx
	cmovbe    %ecx, %eax
	movl      $12, %edx
	movl      $28, %ecx
	cmova     %edx, %ecx
	cmpl      $256, %eax
	jb        LBB14_37
	addl      $-8, %ecx
	shrl      $8, %eax
LBB14_37:
	movl      %ebx, %edx
	movl      %esi, %ebx
	shll      $5, %ebx
	cmpl      $16, %eax
	jb        LBB14_39
	addl      $-4, %ecx
	shrl      $4, %eax
LBB14_39:
	addl      $-65, %ebx
	subl      %ecx, %ebx
	subl      _F2x_degree_lg.__bfffo_tabshi-L14$pb(%ebp,%eax,4), %ebx
	movl      %ebx, %eax
	movl      %edi, %ecx
LBB14_40:
	cmpl      %edx, %eax
	jge       LBB14_90
	cmpl      $2, %ecx
	je        LBB14_42
	movl      L_avma$non_lazy_ptr-L14$pb(%ebp), %ebx
	movl      (%ebx), %esi
	leal      -8(%esi), %edx
	movl      L_bot$non_lazy_ptr-L14$pb(%ebp), %edi
	movl      %ebp, 72(%esp)
	movl      %esi, %eax
	subl      (%edi), %eax
	cmpl      $7, %eax
	movl      96(%esp), %eax
	ja        LBB14_67
	movl      $14, (%esp)
	movl      %ecx, 40(%esp)
	movl      %edx, %ebp
	call      _pari_err
	movl      %ebp, %edx
	movl      96(%esp), %eax
	movl      40(%esp), %ecx
LBB14_67:
	movl      %edx, (%ebx)
	movl      $738197506, -8(%esi)
	movl      %eax, -4(%esi)
	testl     %ecx, %ecx
	je        LBB14_172
	movl      %ecx, 40(%esp)
	movl      100(%esp), %eax
	movl      (%eax), %esi
	movl      %esi, 92(%esp)
	andl      $16777215, %esi
	movl      (%ebx), %ebp
	leal      0(,%esi,4), %eax
	movl      %ebp, %ecx
	subl      %eax, %ecx
	movl      %ebp, %eax
	subl      (%edi), %eax
	shrl      $2, %eax
	cmpl      %esi, %eax
	jae       LBB14_70
	movl      $14, (%esp)
	movl      %edx, 104(%esp)
	movl      %ecx, %edi
	call      _pari_err
	movl      %edi, %ecx
	movl      104(%esp), %edx
LBB14_70:
	movl      %ecx, 96(%esp)
	movl      %ecx, (%ebx)
	movl      $-16777217, %eax
	movl      100(%esp), %edi
	andl      (%edi), %eax
	movl      %eax, (%ecx)
	cmpl      $2, %esi
	jb        LBB14_89
	movl      %edx, 104(%esp)
	movl      92(%esp), %edx
	andl      $16777215, %edx
	movl      %edx, %ebx
	negl      %ebx
	cmpl      $-3, %ebx
	movl      $-2, %edi
	movl      $-2, %ecx
	cmovg     %ebx, %ecx
	addl      %edx, %ecx
	cmpl      $-1, %ecx
	je        LBB14_72
	incl      %ecx
	movl      %ecx, 88(%esp)
	cmpl      $-3, %ebx
	movl      $-2, %eax
	cmovg     %ebx, %eax
	andl      $-8, %ecx
	je        LBB14_74
	movl      %ecx, 84(%esp)
	movl      %eax, %edi
	notl      %edi
	movl      100(%esp), %ecx
	leal      (%ecx,%edi,4), %edi
	movl      %edi, 80(%esp)
	leal      -4(%ebp), %edi
	cmpl      80(%esp), %edi
	ja        LBB14_79
	leal      -4(%ecx,%edx,4), %edi
	addl      %edx, %eax
	notl      %eax
	leal      (%ebp,%eax,4), %eax
	cmpl      %eax, %edi
	ja        LBB14_79
	movl      104(%esp), %edx
	movl      $-2, %edi
	jmp       LBB14_75
LBB14_173:
	addl      $108, %esp
	popl      %esi
	popl      %edi
	popl      %ebx
	popl      %ebp
	jmp       _F2x_rem
LBB14_9:
	movl      %ecx, 40(%esp)
	movl      100(%esp), %esi
	movl      (%esi), %ebx
	movl      %ebx, 92(%esp)
	andl      $16777215, %ebx
	movl      %ebp, 72(%esp)
	movl      L_avma$non_lazy_ptr-L14$pb(%ebp), %edx
	movl      (%edx), %edi
	leal      0(,%ebx,4), %eax
	movl      %edi, %ecx
	subl      %eax, %ecx
	movl      L_bot$non_lazy_ptr-L14$pb(%ebp), %ebp
	movl      %ebp, 84(%esp)
	movl      %edi, %eax
	subl      (%ebp), %eax
	shrl      $2, %eax
	cmpl      %ebx, %eax
	jae       LBB14_11
	movl      $14, (%esp)
	movl      %ecx, 104(%esp)
	movl      %edx, %ebp
	call      _pari_err
	movl      %ebp, %edx
	movl      104(%esp), %ecx
LBB14_11:
	movl      %edx, 88(%esp)
	movl      %ecx, 104(%esp)
	movl      %ecx, (%edx)
	movl      $-16777217, %eax
	andl      (%esi), %eax
	movl      %eax, (%ecx)
	cmpl      $2, %ebx
	jb        LBB14_29
	movl      92(%esp), %edx
	andl      $16777215, %edx
	movl      %edx, %esi
	negl      %esi
	cmpl      $-3, %esi
	movl      $-2, %ecx
	cmovg     %esi, %ecx
	addl      %edx, %ecx
	cmpl      $-1, %ecx
	je        LBB14_13
	incl      %ecx
	cmpl      $-3, %esi
	movl      $-2, %ebp
	cmovg     %esi, %ebp
	movl      %ecx, %eax
	andl      $-8, %eax
	je        LBB14_15
	movl      %ecx, 76(%esp)
	movl      %eax, 80(%esp)
	movl      %ebp, %eax
	notl      %eax
	movl      100(%esp), %ecx
	leal      (%ecx,%eax,4), %ecx
	leal      -4(%edi), %eax
	cmpl      %ecx, %eax
	ja        LBB14_19
	movl      100(%esp), %eax
	leal      -4(%eax,%edx,4), %eax
	addl      %edx, %ebp
	notl      %ebp
	leal      (%edi,%ebp,4), %ebp
	cmpl      %ebp, %eax
	ja        LBB14_19
	xorl      %eax, %eax
	movl      76(%esp), %ecx
	jmp       LBB14_22
LBB14_90:
	movl      %esi, 88(%esp)
	movl      %eax, 104(%esp)
	movl      %edx, 56(%esp)
	movl      %ecx, 40(%esp)
	movl      $16777215, %eax
	movl      100(%esp), %ecx
	movl      (%ecx), %edi
	andl      %eax, %edi
	movl      48(%esp), %ecx
	andl      (%ecx), %eax
	subl      %eax, %edi
	leal      3(%edi), %ebx
	movl      %ebp, %esi
	movl      L_avma$non_lazy_ptr-L14$pb(%esi), %eax
	movl      %eax, 36(%esp)
	movl      (%eax), %edx
	movl      %edx, 68(%esp)
	movl      $-3, %ebp
	subl      %edi, %ebp
	movl      %ebp, 76(%esp)
	movl      L_bot$non_lazy_ptr-L14$pb(%esi), %ecx
	movl      %ecx, 20(%esp)
	movl      %esi, 72(%esp)
	movl      %edx, %eax
	subl      (%ecx), %eax
	shrl      $2, %eax
	cmpl      %ebx, %eax
	leal      (%edx,%ebp,4), %eax
	movl      %eax, 32(%esp)
	jae       LBB14_92
	movl      $14, (%esp)
	call      _pari_err
LBB14_92:
	leal      2(%edi), %ebp
	movl      36(%esp), %eax
	movl      32(%esp), %ecx
	movl      %ecx, (%eax)
	cmpl      $16777216, %ebx
	jb        LBB14_94
	movl      72(%esp), %eax
	leal      L_.str4-L14$pb(%eax), %eax
	movl      %eax, 4(%esp)
	movl      $15, (%esp)
	call      _pari_err
LBB14_94:
	orl       $738197504, %ebx
	movl      32(%esp), %eax
	movl      %ebx, (%eax)
	testl     %ebp, %ebp
	movl      68(%esp), %ebx
	jle       LBB14_96
	movl      $-2, %eax
	subl      %edi, %eax
	leal      (%ebx,%eax,4), %eax
	shll      $2, %ebp
	movl      %ebp, 4(%esp)
	movl      %eax, (%esp)
	call      ___bzero
LBB14_96:
	movl      76(%esp), %eax
	movl      96(%esp), %ecx
	movl      %ecx, 4(%ebx,%eax,4)
	movl      100(%esp), %edi
	movl      (%edi), %esi
	movl      %esi, %ebp
	andl      $16777215, %ebp
	movl      36(%esp), %eax
	movl      (%eax), %ecx
	movl      %ecx, 80(%esp)
	leal      0(,%ebp,4), %eax
	movl      %ecx, %edx
	subl      %eax, %edx
	movl      %edx, 28(%esp)
	movl      %ecx, %eax
	movl      20(%esp), %ecx
	subl      (%ecx), %eax
	shrl      $2, %eax
	cmpl      %ebp, %eax
	jae       LBB14_98
	movl      $14, (%esp)
	call      _pari_err
LBB14_98:
	movl      36(%esp), %eax
	movl      28(%esp), %ecx
	movl      %ecx, (%eax)
	movl      $-16777217, %eax
	andl      (%edi), %eax
	movl      %eax, (%ecx)
	cmpl      $2, %ebp
	movl      %ebp, 64(%esp)
	movl      %edi, %ecx
	jb        LBB14_114
	movl      %esi, %edi
	andl      $16777215, %edi
	movl      %edi, %ebp
	negl      %ebp
	cmpl      $-3, %ebp
	movl      $-2, %edx
	cmovg     %ebp, %edx
	addl      %edi, %edx
	cmpl      $-1, %edx
	movl      64(%esp), %eax
	je        LBB14_108
	incl      %edx
	cmpl      $-3, %ebp
	movl      $-2, %ebx
	cmovg     %ebp, %ebx
	movl      %edx, %eax
	andl      $-8, %eax
	je        LBB14_101
	movl      %eax, 92(%esp)
	movl      %edx, 96(%esp)
	movl      %ebx, %eax
	notl      %eax
	movl      100(%esp), %ecx
	leal      (%ecx,%eax,4), %ecx
	movl      80(%esp), %eax
	leal      -4(%eax), %eax
	cmpl      %ecx, %eax
	movl      $0, %edx
	ja        LBB14_104
	movl      100(%esp), %eax
	leal      -4(%eax,%edi,4), %eax
	addl      %edi, %ebx
	notl      %ebx
	movl      80(%esp), %ecx
	leal      (%ecx,%ebx,4), %ebx
	cmpl      %ebx, %eax
	movl      64(%esp), %eax
	jbe       LBB14_107
LBB14_104:
	movl      %esi, 84(%esp)
	movl      64(%esp), %esi
	movl      %esi, %eax
	subl      92(%esp), %eax
	cmpl      $-3, %ebp
	movl      $-2, %ebx
	cmovg     %ebp, %ebx
	leal      1(%ebx,%edi), %ebx
	andl      $-8, %ebx
	movl      72(%esp), %ebp
	movdqa    LCPI14_0-L14$pb(%ebp), %xmm0
	movl      100(%esp), %ecx
	movl      80(%esp), %edx
	.align 4, 0x90
LBB14_105:
	movd      %edi, %xmm1
	pshufd    $0, %xmm1, %xmm1
	paddd     %xmm0, %xmm1
	movd      %xmm1, %ebp
	movdqu    -12(%ecx,%ebp,4), %xmm1
	movups    -28(%ecx,%ebp,4), %xmm2
	subl      %esi, %ebp
	movdqu    %xmm1, -12(%edx,%ebp,4)
	movups    %xmm2, -28(%edx,%ebp,4)
	addl      $-8, %edi
	addl      $-8, %ebx
	jne       LBB14_105
	movl      92(%esp), %edx
	movl      84(%esp), %esi
	jmp       LBB14_107
LBB14_42:
	xorl      %edx, %edx
	testl     %eax, %eax
	jns       LBB14_172
	movl      100(%esp), %edi
	movl      (%edi), %esi
	movl      %esi, 96(%esp)
	andl      $16777215, %esi
	movl      %ebp, %ecx
	movl      %ecx, 72(%esp)
	movl      L_avma$non_lazy_ptr-L14$pb(%ecx), %ebp
	movl      (%ebp), %ebx
	leal      0(,%esi,4), %eax
	movl      %ebx, %edx
	subl      %eax, %edx
	movl      L_bot$non_lazy_ptr-L14$pb(%ecx), %eax
	movl      %ebx, %ecx
	subl      (%eax), %ecx
	shrl      $2, %ecx
	cmpl      %esi, %ecx
	jae       LBB14_45
	movl      $14, (%esp)
	movl      %edx, 104(%esp)
	call      _pari_err
	movl      104(%esp), %edx
LBB14_45:
	movl      %edx, (%ebp)
	movl      $-16777217, %eax
	andl      (%edi), %eax
	movl      %eax, (%edx)
	cmpl      $2, %esi
	jb        LBB14_172
	movl      %edx, 104(%esp)
	movl      96(%esp), %edx
	andl      $16777215, %edx
	movl      %edx, %ebp
	negl      %ebp
	cmpl      $-3, %ebp
	movl      $-2, %eax
	movl      $-2, %ecx
	cmovg     %ebp, %ecx
	addl      %edx, %ecx
	cmpl      $-1, %ecx
	je        LBB14_47
	incl      %ecx
	movl      %ecx, 92(%esp)
	cmpl      $-3, %ebp
	movl      $-2, %edi
	cmovg     %ebp, %edi
	andl      $-8, %ecx
	movl      %ecx, 88(%esp)
	je        LBB14_54
	movl      %edi, %eax
	notl      %eax
	movl      100(%esp), %ecx
	leal      (%ecx,%eax,4), %eax
	movl      %eax, 84(%esp)
	leal      -4(%ebx), %eax
	cmpl      84(%esp), %eax
	ja        LBB14_58
	leal      -4(%ecx,%edx,4), %eax
	addl      %edx, %edi
	notl      %edi
	leal      (%ebx,%edi,4), %edi
	cmpl      %edi, %eax
	ja        LBB14_58
	movl      $-2, %eax
LBB14_54:
	movl      92(%esp), %edx
	xorl      %edi, %edi
	jmp       LBB14_61
LBB14_13:
	movl      100(%esp), %eax
	jmp       LBB14_23
LBB14_15:
	xorl      %eax, %eax
	jmp       LBB14_22
LBB14_19:
	movl      %ebx, %eax
	subl      80(%esp), %eax
	movl      %eax, 68(%esp)
	cmpl      $-3, %esi
	movl      $-2, %eax
	cmovg     %esi, %eax
	leal      1(%eax,%edx), %esi
	andl      $-8, %esi
	movl      72(%esp), %eax
	movdqa    LCPI14_0-L14$pb(%eax), %xmm0
	movl      100(%esp), %ebp
	movl      76(%esp), %ecx
	.align 4, 0x90
LBB14_20:
	movd      %edx, %xmm1
	pshufd    $0, %xmm1, %xmm1
	paddd     %xmm0, %xmm1
	movd      %xmm1, %eax
	movdqu    -12(%ebp,%eax,4), %xmm1
	movups    -28(%ebp,%eax,4), %xmm2
	subl      %ebx, %eax
	movdqu    %xmm1, -12(%edi,%eax,4)
	movups    %xmm2, -28(%edi,%eax,4)
	addl      $-8, %edx
	addl      $-8, %esi
	jne       LBB14_20
	movl      68(%esp), %ebx
	movl      80(%esp), %eax
LBB14_22:
	cmpl      %eax, %ecx
	movl      100(%esp), %eax
	je        LBB14_29
LBB14_23:
	movl      %eax, %ebp
	movl      %ebx, %edx
	negl      %edx
	cmpl      $-3, %edx
	movl      $-2, %eax
	cmovg     %edx, %eax
	leal      (%ebx,%eax), %ecx
	leal      1(%ebx,%eax), %eax
	testb     $3, %al
	je        LBB14_26
	movl      92(%esp), %eax
	notl      %eax
	orl       $1056964608, %eax
	leal      (%edi,%eax,4), %eax
	cmpl      $-3, %edx
	movl      $-2, %esi
	cmovg     %edx, %esi
	leal      1(%ebx,%esi), %edx
	andl      $3, %edx
	negl      %edx
	.align 4, 0x90
LBB14_25:
	movl      -4(%ebp,%ebx,4), %esi
	movl      %esi, (%eax,%ebx,4)
	leal      -1(%ebx), %ebx
	incl      %edx
	jne       LBB14_25
LBB14_26:
	cmpl      $3, %ecx
	movl      %ebp, %edx
	jb        LBB14_29
	movl      92(%esp), %eax
	notl      %eax
	orl       $1056964608, %eax
	leal      (%edi,%eax,4), %eax
	.align 4, 0x90
LBB14_28:
	movl      -4(%edx,%ebx,4), %ecx
	movl      %ecx, (%eax,%ebx,4)
	movl      -8(%edx,%ebx,4), %ecx
	movl      %ecx, -4(%eax,%ebx,4)
	movl      -12(%edx,%ebx,4), %ecx
	movl      %ecx, -8(%eax,%ebx,4)
	movl      -16(%edx,%ebx,4), %ecx
	movl      %ecx, -12(%eax,%ebx,4)
	leal      -4(%ebx), %ebx
	cmpl      $1, %ebx
	jg        LBB14_28
LBB14_29:
	movl      40(%esp), %ecx
	movl      %ecx, %eax
	orl       $2, %eax
	cmpl      $2, %eax
	jne       LBB14_31
	movl      104(%esp), %edx
	jmp       LBB14_172
LBB14_31:
	movl      88(%esp), %edx
	movl      (%edx), %esi
	leal      -8(%esi), %edi
	movl      %esi, %eax
	movl      84(%esp), %ebx
	subl      (%ebx), %eax
	cmpl      $7, %eax
	ja        LBB14_33
	movl      $14, (%esp)
	movl      %ecx, %ebx
	movl      %edx, %ebp
	call      _pari_err
	movl      %ebp, %edx
	movl      %ebx, %ecx
LBB14_33:
	movl      %edi, (%edx)
	movl      $738197506, -8(%esi)
	movl      96(%esp), %eax
	movl      %eax, -4(%esi)
	movl      %edi, (%ecx)
	movl      104(%esp), %edx
	jmp       LBB14_172
LBB14_101:
	movl      %edx, 96(%esp)
	movl      64(%esp), %eax
	xorl      %edx, %edx
LBB14_107:
	cmpl      %edx, 96(%esp)
	movl      100(%esp), %ecx
	movl      68(%esp), %ebx
	je        LBB14_114
LBB14_108:
	movl      %ebx, 68(%esp)
	movl      %ecx, %ebp
	movl      %eax, %edi
	negl      %edi
	cmpl      $-3, %edi
	movl      $-2, %ecx
	cmovg     %edi, %ecx
	leal      (%eax,%ecx), %edx
	leal      1(%eax,%ecx), %ecx
	testb     $3, %cl
	je        LBB14_111
	movl      %esi, %ecx
	notl      %ecx
	orl       $1056964608, %ecx
	movl      80(%esp), %ebx
	leal      (%ebx,%ecx,4), %ecx
	cmpl      $-3, %edi
	movl      $-2, %ebx
	cmovg     %edi, %ebx
	leal      1(%eax,%ebx), %edi
	andl      $3, %edi
	negl      %edi
	.align 4, 0x90
LBB14_110:
	movl      -4(%ebp,%eax,4), %ebx
	movl      %ebx, (%ecx,%eax,4)
	leal      -1(%eax), %eax
	incl      %edi
	jne       LBB14_110
LBB14_111:
	cmpl      $3, %edx
	movl      %ebp, %edi
	movl      68(%esp), %ebx
	jb        LBB14_114
	movl      %esi, %ecx
	notl      %ecx
	orl       $1056964608, %ecx
	movl      80(%esp), %edx
	leal      (%edx,%ecx,4), %ecx
	.align 4, 0x90
LBB14_113:
	movl      -4(%edi,%eax,4), %edx
	movl      %edx, (%ecx,%eax,4)
	movl      -8(%edi,%eax,4), %edx
	movl      %edx, -4(%ecx,%eax,4)
	movl      -12(%edi,%eax,4), %edx
	movl      %edx, -8(%ecx,%eax,4)
	movl      -16(%edi,%eax,4), %edx
	movl      %edx, -12(%ecx,%eax,4)
	leal      -4(%eax), %eax
	cmpl      $1, %eax
	jg        LBB14_113
LBB14_114:
	addl      $2, 76(%esp)
	movl      %esi, %eax
	notl      %eax
	movl      %esi, %ecx
	orl       $-16777216, %ecx
	xorl      $16777215, %ecx
	movl      %ecx, 60(%esp)
	andl      $16777215, %esi
	movl      $2, %ecx
	subl      %esi, %ecx
	movl      %ecx, 24(%esp)
	movl      48(%esp), %ebp
	leal      8(%ebp), %ecx
	movl      %ecx, 16(%esp)
	shll      $2, %esi
	movl      80(%esp), %edx
	movl      %edx, %ecx
	subl      %esi, %ecx
	movl      %ecx, 44(%esp)
	leal      16(%ebp), %ecx
	movl      %ecx, 12(%esp)
	orl       $1056964608, %eax
	leal      (%edx,%eax,4), %eax
	movl      %eax, 84(%esp)
	movl      56(%esp), %edx
	movl      104(%esp), %esi
	.align 4, 0x90
LBB14_115:
	subl      %edx, %esi
	movl      %esi, %edi
	sarl      $5, %edi
	movl      %esi, %ecx
	andl      $31, %ecx
	movl      $1, %eax
	shll      %cl, %eax
	movl      76(%esp), %ecx
	leal      (%ecx,%edi), %ecx
	orl       %eax, (%ebx,%ecx,4)
	movl      %esi, %ecx
	movl      (%ebp), %esi
	andl      $16777215, %esi
	andl      $31, %ecx
	je        LBB14_116
	cmpl      $3, %esi
	jb        LBB14_136
	movl      $32, %eax
	subl      %ecx, %eax
	movl      %eax, 96(%esp)
	movl      %edi, %edx
	subl      64(%esp), %edx
	cmpl      $2, %esi
	movl      $3, %ebx
	cmovg     %esi, %ebx
	leal      -2(%ebx), %eax
	addl      $-3, %ebx
	testb     $1, %al
	je        LBB14_138
	movl      %edi, 92(%esp)
	movl      %esi, 100(%esp)
	movl      %edx, %edi
	movl      %edi, 52(%esp)
	movl      8(%ebp), %edx
	movl      %ecx, %esi
	shll      %cl, %edx
	movl      80(%esp), %eax
	xorl      %edx, 8(%eax,%edi,4)
	movl      %ebp, %eax
	movl      8(%eax), %ebp
	movl      96(%esp), %ecx
	shrl      %cl, %ebp
	movl      $3, %edx
	jmp       LBB14_140
	.align 4, 0x90
LBB14_116:
	cmpl      $3, %esi
	jb        LBB14_136
	movl      %edi, %eax
	movl      %edi, 92(%esp)
	subl      64(%esp), %eax
	movl      %eax, 104(%esp)
	cmpl      $3, %esi
	movl      $3, %ecx
	cmova     %esi, %ecx
	movl      $2, %edx
	cmpl      $2, %ecx
	je        LBB14_118
	leal      -2(%ecx), %edi
	andl      $-4, %edi
	orl       $2, %edi
	cmpl      $3, %esi
	movl      $3, %eax
	cmova     %esi, %eax
	movl      %esi, 100(%esp)
	cmpl      $2, %edi
	movl      $2, %edx
	je        LBB14_133
	movl      %edi, 96(%esp)
	leal      -4(%ebp,%eax,4), %esi
	movl      24(%esp), %ebp
	movl      92(%esp), %ebx
	leal      (%ebp,%ebx), %ebp
	movl      80(%esp), %edi
	leal      (%edi,%ebp,4), %ebp
	cmpl      %esi, %ebp
	movl      68(%esp), %ebx
	ja        LBB14_126
	addl      92(%esp), %eax
	addl      60(%esp), %eax
	movl      80(%esp), %edi
	leal      (%edi,%eax,4), %eax
	cmpl      %eax, 16(%esp)
	jbe       LBB14_133
LBB14_126:
	movl      100(%esp), %eax
	cmpl      $3, %eax
	movl      $3, %edx
	cmova     %eax, %edx
	addl      $-2, %edx
	andl      $-4, %edx
	addl      $-4, %edx
	shrl      $2, %edx
	leal      1(%edx), %eax
	movl      $2, %edi
	testb     $1, %al
	je        LBB14_128
	movl      48(%esp), %eax
	movdqu    8(%eax), %xmm0
	movl      80(%esp), %eax
	movl      104(%esp), %esi
	movdqu    8(%eax,%esi,4), %xmm1
	pxor      %xmm0, %xmm1
	movdqu    %xmm1, 8(%eax,%esi,4)
	movl      $6, %edi
LBB14_128:
	testl     %edx, %edx
	movl      96(%esp), %esi
	jne       LBB14_130
	movl      %esi, %edx
	jmp       LBB14_133
	.align 4, 0x90
LBB14_136:
	movl      88(%esp), %eax
	jmp       LBB14_150
LBB14_138:
	movl      %edx, 52(%esp)
	movl      %edi, 92(%esp)
	movl      %esi, 100(%esp)
	movl      %ecx, %esi
	movl      %ebp, %eax
	movl      $2, %edx
	xorl      %ebp, %ebp
LBB14_140:
	testl     %ebx, %ebx
	movl      %esi, %ecx
	movl      100(%esp), %edi
	je        LBB14_143
	movl      %ecx, 104(%esp)
	movl      44(%esp), %ecx
	movl      92(%esp), %edi
	leal      (%ecx,%edi,4), %ecx
	movl      %ecx, 92(%esp)
	.align 4, 0x90
LBB14_142:
	movl      (%eax,%edx,4), %edi
	movl      %eax, %esi
	movl      104(%esp), %ecx
	shll      %cl, %edi
	orl       %ebp, %edi
	movl      92(%esp), %eax
	xorl      %edi, (%eax,%edx,4)
	movl      (%esi,%edx,4), %edi
	movl      96(%esp), %ebx
	movb      %bl, %cl
	shrl      %cl, %edi
	movl      4(%esi,%edx,4), %ebp
	movl      104(%esp), %ecx
	shll      %cl, %ebp
	orl       %edi, %ebp
	movl      100(%esp), %edi
	xorl      %ebp, 4(%eax,%edx,4)
	movl      4(%esi,%edx,4), %ebp
	movb      %bl, %cl
	shrl      %cl, %ebp
	movl      %esi, %eax
	addl      $2, %edx
	cmpl      %edi, %edx
	jl        LBB14_142
LBB14_143:
	movl      %eax, %ecx
	testl     %ebp, %ebp
	movl      88(%esp), %eax
	je        LBB14_144
	cmpl      $3, %edi
	movl      $3, %edx
	cmovbe    %edx, %edi
	movl      %edi, %edx
	movl      52(%esp), %edi
	addl      %edx, %edi
	movl      80(%esp), %edx
	xorl      %ebp, (%edx,%edi,4)
LBB14_144:
	movl      %ecx, %ebp
	movl      56(%esp), %edx
	jmp       LBB14_149
LBB14_130:
	movl      92(%esp), %eax
	leal      (%edi,%eax), %eax
	movl      44(%esp), %edx
	leal      (%edx,%eax,4), %edx
	movl      12(%esp), %eax
	leal      (%eax,%edi,4), %ebp
	movl      100(%esp), %eax
	cmpl      $3, %eax
	movl      $3, %ebx
	cmova     %eax, %ebx
	addl      $-2, %ebx
	andl      $-4, %ebx
	orl       $2, %ebx
	subl      %edi, %ebx
	xorl      %eax, %eax
	.align 4, 0x90
LBB14_131:
	movups    -16(%ebp,%eax,4), %xmm0
	movups    (%edx,%eax,4), %xmm1
	xorps     %xmm0, %xmm1
	movups    %xmm1, (%edx,%eax,4)
	movdqu    (%ebp,%eax,4), %xmm0
	movdqu    16(%edx,%eax,4), %xmm1
	pxor      %xmm0, %xmm1
	movdqu    %xmm1, 16(%edx,%eax,4)
	addl      $8, %eax
	cmpl      %eax, %ebx
	jne       LBB14_131
	movl      %esi, %edx
	movl      68(%esp), %ebx
LBB14_133:
	cmpl      %edx, %ecx
	movl      48(%esp), %ebp
	movl      100(%esp), %esi
	jne       LBB14_118
	movl      88(%esp), %eax
	movl      56(%esp), %edx
	jmp       LBB14_150
LBB14_118:
	leal      1(%edx), %ecx
	cmpl      %esi, %ecx
	movl      %esi, %ebx
	cmovge    %ecx, %ebx
	movl      %ebx, %eax
	subl      %edx, %eax
	decl      %ebx
	subl      %edx, %ebx
	testb     $1, %al
	je        LBB14_119
	movl      (%ebp,%edx,4), %eax
	movl      104(%esp), %edi
	addl      %edx, %edi
	movl      80(%esp), %edx
	xorl      %eax, (%edx,%edi,4)
	jmp       LBB14_121
LBB14_119:
	movl      %edx, %ecx
LBB14_121:
	movl      56(%esp), %edx
	movl      92(%esp), %edi
	testl     %ebx, %ebx
	jne       LBB14_146
	movl      88(%esp), %eax
	jmp       LBB14_149
LBB14_146:
	movl      %edx, %ebx
	movl      44(%esp), %eax
	leal      (%eax,%edi,4), %eax
	.align 4, 0x90
LBB14_147:
	movl      (%ebp,%ecx,4), %edx
	xorl      %edx, (%eax,%ecx,4)
	movl      4(%ebp,%ecx,4), %edx
	xorl      %edx, 4(%eax,%ecx,4)
	addl      $2, %ecx
	cmpl      %esi, %ecx
	jl        LBB14_147
	movl      88(%esp), %eax
	movl      %ebx, %edx
	.align 4, 0x90
LBB14_149:
	movl      68(%esp), %ebx
LBB14_150:
	movl      84(%esp), %ecx
	.align 4, 0x90
LBB14_151:
	movl      %eax, %esi
	cmpl      $3, %esi
	jl        LBB14_153
	leal      -1(%esi), %eax
	cmpl      $0, (%ecx,%esi,4)
	je        LBB14_151
LBB14_153:
	cmpl      $2, %esi
	jne       LBB14_160
	movl      %ecx, 84(%esp)
	movl      $2, 88(%esp)
	movl      $-1, %esi
	jmp       LBB14_155
	.align 4, 0x90
LBB14_160:
	movl      %ebx, %edi
	movl      %ecx, 84(%esp)
	movl      60(%esp), %eax
	leal      (%eax,%esi), %eax
	movl      80(%esp), %ecx
	movl      (%ecx,%eax,4), %ecx
	movl      %ecx, %eax
	shrl      $16, %eax
	cmpl      $65535, %ecx
	cmovbe    %ecx, %eax
	movl      $28, %ecx
	movl      $12, %ebx
	cmova     %ebx, %ecx
	cmpl      $256, %eax
	jb        LBB14_162
	addl      $-8, %ecx
	shrl      $8, %eax
LBB14_162:
	movl      %edi, %ebx
	movl      %esi, 88(%esp)
	shll      $5, %esi
	cmpl      $16, %eax
	jb        LBB14_164
	addl      $-4, %ecx
	shrl      $4, %eax
LBB14_164:
	addl      $-65, %esi
	subl      %ecx, %esi
	movl      72(%esp), %ecx
	subl      _F2x_degree_lg.__bfffo_tabshi-L14$pb(%ecx,%eax,4), %esi
LBB14_155:
	cmpl      %edx, %esi
	jge       LBB14_115
	movl      32(%esp), %ecx
	movl      (%ecx), %eax
	andl      $16777215, %eax
	movl      %eax, 4(%esp)
	movl      %ecx, (%esp)
	call      _Flx_renormalize
	movl      %eax, %edx
	movl      40(%esp), %eax
	testl     %eax, %eax
	je        LBB14_157
	movl      %edx, %ebx
	movl      88(%esp), %ecx
	movl      %ecx, 4(%esp)
	movl      28(%esp), %ecx
	movl      %ecx, (%esp)
	movl      %eax, %esi
	call      _Flx_renormalize
	movl      %esi, %ecx
	cmpl      $2, %ecx
	jne       LBB14_170
	movl      $16777215, %ecx
	movl      (%eax), %edx
	andl      %ecx, %edx
	cmpl      $2, %edx
	jne       LBB14_174
	addl      $8, %eax
	movl      20(%esp), %ecx
	cmpl      (%ecx), %eax
	jb        LBB14_171
	movl      72(%esp), %ecx
	movl      L_top$non_lazy_ptr-L14$pb(%ecx), %ecx
	cmpl      (%ecx), %eax
	jae       LBB14_171
	movl      36(%esp), %ecx
LBB14_170:
	movl      %eax, (%ecx)
LBB14_171:
	movl      %ebx, %edx
	jmp       LBB14_172
LBB14_157:
	movl      $16777215, %eax
	movl      28(%esp), %ecx
	andl      (%ecx), %eax
	subl      64(%esp), %eax
	movl      80(%esp), %ecx
	leal      (%ecx,%eax,4), %eax
	movl      20(%esp), %ecx
	cmpl      (%ecx), %eax
	jb        LBB14_172
	movl      72(%esp), %ecx
	movl      L_top$non_lazy_ptr-L14$pb(%ecx), %ecx
	cmpl      (%ecx), %eax
	jae       LBB14_172
	movl      36(%esp), %ecx
	movl      %eax, (%ecx)
	jmp       LBB14_172
LBB14_174:
	andl      (%ebx), %ecx
	leal      (%ebx,%ecx,4), %eax
	movl      36(%esp), %ecx
	movl      %eax, (%ecx)
	xorl      %edx, %edx
	jmp       LBB14_172
LBB14_72:
	movl      100(%esp), %ecx
	movl      104(%esp), %edx
	jmp       LBB14_83
LBB14_74:
	movl      104(%esp), %edx
LBB14_75:
	movl      88(%esp), %eax
	xorl      %ecx, %ecx
	jmp       LBB14_82
LBB14_79:
	movl      %esi, %eax
	subl      84(%esp), %eax
	movl      %eax, 80(%esp)
	cmpl      $-3, %ebx
	movl      $-2, %eax
	cmovg     %ebx, %eax
	leal      1(%eax,%edx), %edi
	andl      $-8, %edi
	movl      72(%esp), %eax
	movdqa    LCPI14_0-L14$pb(%eax), %xmm0
	.align 4, 0x90
LBB14_80:
	movd      %edx, %xmm1
	pshufd    $0, %xmm1, %xmm1
	paddd     %xmm0, %xmm1
	movd      %xmm1, %eax
	movdqu    -12(%ecx,%eax,4), %xmm1
	movups    -28(%ecx,%eax,4), %xmm2
	subl      %esi, %eax
	movdqu    %xmm1, -12(%ebp,%eax,4)
	movups    %xmm2, -28(%ebp,%eax,4)
	addl      $-8, %edx
	addl      $-8, %edi
	jne       LBB14_80
	movl      80(%esp), %esi
	movl      84(%esp), %ecx
	movl      104(%esp), %edx
	movl      $-2, %edi
	movl      88(%esp), %eax
LBB14_82:
	cmpl      %ecx, %eax
	movl      100(%esp), %ecx
	je        LBB14_89
LBB14_83:
	movl      %edx, 104(%esp)
	movl      %ecx, %ebx
	movl      %esi, %edx
	negl      %edx
	cmpl      $-3, %edx
	cmovg     %edx, %edi
	leal      (%esi,%edi), %ecx
	leal      1(%esi,%edi), %eax
	testb     $3, %al
	je        LBB14_86
	movl      92(%esp), %eax
	notl      %eax
	orl       $1056964608, %eax
	leal      (%ebp,%eax,4), %eax
	cmpl      $-3, %edx
	movl      $-2, %edi
	cmovg     %edx, %edi
	leal      1(%esi,%edi), %edx
	andl      $3, %edx
	negl      %edx
	.align 4, 0x90
LBB14_85:
	movl      -4(%ebx,%esi,4), %edi
	movl      %edi, (%eax,%esi,4)
	leal      -1(%esi), %esi
	incl      %edx
	jne       LBB14_85
LBB14_86:
	cmpl      $3, %ecx
	movl      104(%esp), %edx
	jb        LBB14_89
	movl      92(%esp), %eax
	notl      %eax
	orl       $1056964608, %eax
	leal      (%ebp,%eax,4), %eax
	.align 4, 0x90
LBB14_88:
	movl      -4(%ebx,%esi,4), %ecx
	movl      %ecx, (%eax,%esi,4)
	movl      -8(%ebx,%esi,4), %ecx
	movl      %ecx, -4(%eax,%esi,4)
	movl      -12(%ebx,%esi,4), %ecx
	movl      %ecx, -8(%eax,%esi,4)
	movl      -16(%ebx,%esi,4), %ecx
	movl      %ecx, -12(%eax,%esi,4)
	leal      -4(%esi), %esi
	cmpl      $1, %esi
	jg        LBB14_88
LBB14_89:
	movl      40(%esp), %eax
	movl      96(%esp), %ecx
	movl      %ecx, (%eax)
LBB14_172:
	movl      %edx, %eax
	addl      $108, %esp
	popl      %esi
	popl      %edi
	popl      %ebx
	popl      %ebp
	ret       
LBB14_47:
	movl      100(%esp), %ebp
	jmp       LBB14_48
LBB14_58:
	movl      %esi, %eax
	movl      88(%esp), %edi
	subl      %edi, %eax
	movl      %eax, 84(%esp)
	cmpl      $-3, %ebp
	movl      $-2, %eax
	cmovg     %ebp, %eax
	leal      1(%eax,%edx), %ebp
	andl      $-8, %ebp
	movl      72(%esp), %eax
	movdqa    LCPI14_0-L14$pb(%eax), %xmm0
LBB14_59:
	movd      %edx, %xmm1
	pshufd    $0, %xmm1, %xmm1
	paddd     %xmm0, %xmm1
	movd      %xmm1, %eax
	movdqu    -12(%ecx,%eax,4), %xmm1
	movups    -28(%ecx,%eax,4), %xmm2
	subl      %esi, %eax
	movdqu    %xmm1, -12(%ebx,%eax,4)
	movups    %xmm2, -28(%ebx,%eax,4)
	addl      $-8, %edx
	addl      $-8, %ebp
	jne       LBB14_59
	movl      84(%esp), %esi
	movl      $-2, %eax
	movl      92(%esp), %edx
LBB14_61:
	cmpl      %edi, %edx
	movl      100(%esp), %ebp
	jne       LBB14_48
	movl      104(%esp), %edx
	jmp       LBB14_172
LBB14_48:
	movl      %esi, %edx
	negl      %edx
	cmpl      $-3, %edx
	cmovg     %edx, %eax
	leal      (%esi,%eax), %ecx
	leal      1(%esi,%eax), %eax
	testb     $3, %al
	je        LBB14_51
	movl      96(%esp), %eax
	notl      %eax
	orl       $1056964608, %eax
	leal      (%ebx,%eax,4), %eax
	cmpl      $-3, %edx
	movl      $-2, %edi
	cmovg     %edx, %edi
	leal      1(%esi,%edi), %edx
	andl      $3, %edx
	negl      %edx
LBB14_50:
	movl      -4(%ebp,%esi,4), %edi
	movl      %edi, (%eax,%esi,4)
	leal      -1(%esi), %esi
	incl      %edx
	jne       LBB14_50
LBB14_51:
	cmpl      $3, %ecx
	jae       LBB14_63
	movl      104(%esp), %edx
	jmp       LBB14_172
LBB14_63:
	movl      96(%esp), %eax
	notl      %eax
	orl       $1056964608, %eax
	leal      (%ebx,%eax,4), %eax
	movl      104(%esp), %edx
LBB14_64:
	movl      -4(%ebp,%esi,4), %ecx
	movl      %ecx, (%eax,%esi,4)
	movl      -8(%ebp,%esi,4), %ecx
	movl      %ecx, -4(%eax,%esi,4)
	movl      -12(%ebp,%esi,4), %ecx
	movl      %ecx, -8(%eax,%esi,4)
	movl      -16(%ebp,%esi,4), %ecx
	movl      %ecx, -12(%eax,%esi,4)
	leal      -4(%esi), %esi
	cmpl      $1, %esi
	jg        LBB14_64
	jmp       LBB14_172
# ----------------------
	.align 4, 0x90
	.globl	_F2x_deriv
_F2x_deriv:
	pushl     %ebp
	pushl     %ebx
	pushl     %edi
	pushl     %esi
	subl      $28, %esp
	call      L15$pb
L15$pb:
	popl      %edx
	movl      %edx, 20(%esp)
	movl      48(%esp), %edi
	movl      (%edi), %esi
	andl      $16777215, %esi
	movl      L_avma$non_lazy_ptr-L15$pb(%edx), %ebp
	movl      (%ebp), %ecx
	movl      %ecx, 24(%esp)
	leal      0(,%esi,4), %eax
	movl      %ecx, %ebx
	subl      %eax, %ebx
	movl      L_bot$non_lazy_ptr-L15$pb(%edx), %eax
	subl      (%eax), %ecx
	shrl      $2, %ecx
	cmpl      %esi, %ecx
	jae       LBB15_2
	movl      $14, (%esp)
	call      _pari_err
LBB15_2:
	movl      %ebx, (%ebp)
	movl      %esi, %eax
	orl       $738197504, %eax
	movl      %eax, (%ebx)
	movl      4(%edi), %eax
	movl      $1, %ecx
	subl      %esi, %ecx
	movl      24(%esp), %edx
	movl      %eax, (%edx,%ecx,4)
	cmpl      $3, %esi
	jb        LBB15_17
	movl      $3, %eax
	cmova     %esi, %eax
	movl      $2, %edx
	cmpl      $2, %eax
	je        LBB15_11
	leal      -2(%eax), %ecx
	movl      %eax, 16(%esp)
	andl      $-8, %ecx
	orl       $2, %ecx
	movl      %ecx, 12(%esp)
	leal      -1(%esi), %eax
	cmpl      $3, %esi
	movl      $2, %edx
	cmovbe    %edx, %eax
	cmpl      $2, %ecx
	je        LBB15_10
	leal      (%edi,%eax,4), %ecx
	movl      %ecx, 8(%esp)
	movl      $2, %edx
	movl      $2, %ebp
	subl      %esi, %ebp
	movl      24(%esp), %ecx
	leal      (%ecx,%ebp,4), %ebp
	cmpl      8(%esp), %ebp
	ja        LBB15_7
	leal      8(%edi), %ecx
	subl      %esi, %eax
	movl      24(%esp), %ebp
	leal      (%ebp,%eax,4), %eax
	cmpl      %eax, %ecx
	jbe       LBB15_10
LBB15_7:
	movl      $6, %eax
	subl      %esi, %eax
	movl      24(%esp), %ecx
	leal      (%ecx,%eax,4), %edx
	leal      24(%edi), %ecx
	cmpl      $3, %esi
	movl      $3, %eax
	cmova     %esi, %eax
	addl      $-2, %eax
	andl      $-8, %eax
	movl      20(%esp), %ebp
	movdqa    LCPI15_0-L15$pb(%ebp), %xmm0
	.align 4, 0x90
LBB15_8:
	movdqu    -16(%ecx), %xmm1
	movdqu    (%ecx), %xmm2
	psrld     $1, %xmm1
	psrld     $1, %xmm2
	pand      %xmm0, %xmm1
	pand      %xmm0, %xmm2
	movdqu    %xmm1, -16(%edx)
	movdqu    %xmm2, (%edx)
	addl      $32, %edx
	addl      $32, %ecx
	addl      $-8, %eax
	jne       LBB15_8
	movl      12(%esp), %edx
LBB15_10:
	cmpl      %edx, 16(%esp)
	je        LBB15_17
LBB15_11:
	movl      %ebx, 20(%esp)
	leal      1(%edx), %eax
	cmpl      %esi, %eax
	movl      %esi, %ecx
	cmovge    %eax, %ecx
	movl      %ecx, %ebx
	subl      %edx, %ebx
	decl      %ecx
	subl      %edx, %ecx
	testb     $1, %bl
	je        LBB15_12
	movl      (%edi,%edx,4), %ebx
	shrl      $1, %ebx
	andl      $1431655765, %ebx
	subl      %esi, %edx
	movl      24(%esp), %ebp
	movl      %ebx, (%ebp,%edx,4)
	jmp       LBB15_14
LBB15_12:
	movl      %edx, %eax
LBB15_14:
	movl      20(%esp), %ebx
	testl     %ecx, %ecx
	je        LBB15_17
	movl      $1, %ecx
	subl      %esi, %ecx
	movl      24(%esp), %edx
	leal      (%edx,%ecx,4), %ecx
	.align 4, 0x90
LBB15_16:
	movl      (%edi,%eax,4), %edx
	shrl      $1, %edx
	andl      $1431655765, %edx
	movl      %edx, -4(%ecx,%eax,4)
	movl      4(%edi,%eax,4), %edx
	shrl      $1, %edx
	andl      $1431655765, %edx
	movl      %edx, (%ecx,%eax,4)
	addl      $2, %eax
	cmpl      %esi, %eax
	jl        LBB15_16
LBB15_17:
	movl      %esi, 4(%esp)
	movl      %ebx, (%esp)
	call      _Flx_renormalize
	addl      $28, %esp
	popl      %esi
	popl      %edi
	popl      %ebx
	popl      %ebp
	ret       
# ----------------------
	.align 4, 0x90
	.globl	_F2x_gcd
_F2x_gcd:
	pushl     %ebp
	pushl     %ebx
	pushl     %edi
	pushl     %esi
	subl      $60, %esp
	call      L16$pb
L16$pb:
	popl      %ecx
	movl      %ecx, 48(%esp)
	movl      84(%esp), %edx
	movl      80(%esp), %eax
	movl      %eax, 56(%esp)
	movl      %edx, 52(%esp)
	movl      L_avma$non_lazy_ptr-L16$pb(%ecx), %ebx
	movl      (%ebx), %esi
	movl      %esi, 40(%esp)
	movl      L_bot$non_lazy_ptr-L16$pb(%ecx), %ecx
	movl      %ecx, 36(%esp)
	movl      (%ecx), %ecx
	movl      %ecx, 44(%esp)
	subl      %ecx, %esi
	shrl      $2, %esi
	movl      (%edx), %edi
	movl      %edi, %ecx
	andl      $16777215, %ecx
	movl      (%eax), %edx
	movl      %edx, %ebp
	andl      $16777215, %ebp
	cmpl      %ebp, %ecx
	jbe       LBB16_1
	movl      84(%esp), %ecx
	movl      %ecx, 56(%esp)
	movl      %eax, 52(%esp)
	jmp       LBB16_3
LBB16_1:
	movl      %eax, %ecx
	movl      %edi, %edx
	movl      84(%esp), %eax
LBB16_3:
	movl      40(%esp), %edi
	movl      44(%esp), %ebp
	addl      %ebp, %esi
	andl      $16777215, %edx
	cmpl      $2, %edx
	movl      %edi, %edx
	je        LBB16_18
	movl      $16777215, %ebp
	movl      48(%esp), %edx
	leal      L_.str-L16$pb(%edx), %edx
	movl      %edx, 44(%esp)
	jmp       LBB16_5
	.align 4, 0x90
LBB16_16:
	movl      56(%esp), %ecx
LBB16_5:
	movl      %eax, 4(%esp)
	movl      %ecx, (%esp)
	call      _F2x_rem
	movl      52(%esp), %ecx
	movl      %ecx, 56(%esp)
	movl      %eax, 52(%esp)
	cmpl      %esi, (%ebx)
	jae       LBB16_15
	movl      48(%esp), %ecx
	movl      L_DEBUGMEM$non_lazy_ptr-L16$pb(%ecx), %ecx
	cmpl      $2, (%ecx)
	jb        LBB16_14
	movl      (%eax), %ecx
	andl      %ebp, %ecx
	movl      $-1, %edx
	cmpl      $2, %ecx
	je        LBB16_13
	movl      %edi, %ebp
	movl      -4(%eax,%ecx,4), %edx
	movl      %edx, %eax
	shrl      $16, %eax
	cmpl      $65535, %edx
	cmovbe    %edx, %eax
	movl      $28, %edx
	movl      $12, %edi
	cmova     %edi, %edx
	cmpl      $256, %eax
	jb        LBB16_10
	addl      $-8, %edx
	shrl      $8, %eax
LBB16_10:
	movl      %ebp, %edi
	shll      $5, %ecx
	cmpl      $16, %eax
	movl      $16777215, %ebp
	jb        LBB16_12
	addl      $-4, %edx
	shrl      $4, %eax
LBB16_12:
	addl      $-65, %ecx
	subl      %edx, %ecx
	movl      48(%esp), %edx
	subl      _F2x_degree_lg.__bfffo_tabshi-L16$pb(%edx,%eax,4), %ecx
	movl      %ecx, %edx
LBB16_13:
	movl      %edx, 8(%esp)
	movl      44(%esp), %eax
	movl      %eax, 4(%esp)
	movl      $3, (%esp)
	call      _pari_warn
LBB16_14:
	leal      52(%esp), %eax
	movl      %eax, 12(%esp)
	leal      56(%esp), %eax
	movl      %eax, 8(%esp)
	movl      %edi, (%esp)
	movl      $2, 4(%esp)
	call      _gerepileall
	movl      52(%esp), %eax
LBB16_15:
	movl      (%eax), %ecx
	andl      %ebp, %ecx
	cmpl      $2, %ecx
	jne       LBB16_16
	movl      (%ebx), %edx
LBB16_18:
	movl      56(%esp), %eax
	cmpl      %esi, %edx
	jae       LBB16_45
	movl      36(%esp), %ecx
	cmpl      (%ecx), %eax
	jb        LBB16_22
	movl      48(%esp), %ecx
	movl      L_top$non_lazy_ptr-L16$pb(%ecx), %ecx
	cmpl      (%ecx), %eax
	jae       LBB16_22
	cmpl      %eax, %edi
	jbe       LBB16_22
	movl      (%eax), %ebp
	movl      %ebp, %ecx
	andl      $16777215, %ecx
	shll      $2, %ecx
	movl      %edi, %esi
	subl      %ecx, %esi
	movl      %ebp, %edx
	andl      $16777215, %edx
	movl      %esi, (%ebx)
	je        LBB16_24
	movl      %esi, 44(%esp)
	movl      %ebp, %esi
	movl      %ebp, 36(%esp)
	orl       $-16777216, %esi
	movl      %esi, %ecx
	xorl      $16777215, %ecx
	cmpl      $-16777216, %esi
	movl      $-2, %ebx
	cmove     %ecx, %ebx
	leal      (%ebx,%edx), %ebp
	cmpl      $-2, %ebp
	jne       LBB16_32
	movl      %edi, 40(%esp)
	movl      $-2, %esi
	movl      36(%esp), %ebp
	jmp       LBB16_27
LBB16_22:
	movl      %edi, (%ebx)
LBB16_44:
	movl      %eax, 56(%esp)
LBB16_45:
	addl      $60, %esp
	popl      %esi
	popl      %edi
	popl      %ebx
	popl      %ebp
	ret       
LBB16_24:
	movl      %esi, %eax
	jmp       LBB16_44
LBB16_32:
	movl      %edi, 40(%esp)
	addl      $2, %ebp
	cmpl      $-16777216, %esi
	movl      $-2, %esi
	cmovne    %esi, %ecx
	xorl      %edi, %edi
	movl      %ebp, %esi
	andl      $-8, %esi
	je        LBB16_33
	movl      %esi, 28(%esp)
	movl      %ebp, 32(%esp)
	movl      $-2, %esi
	movl      $-2, %edi
	subl      %ecx, %edi
	leal      (%eax,%edi,4), %ebp
	movl      40(%esp), %edi
	leal      -4(%edi), %edi
	cmpl      %ebp, %edi
	movl      36(%esp), %ebp
	ja        LBB16_36
	leal      -4(%eax,%edx,4), %edi
	addl      %edx, %ecx
	subl      %ecx, %esi
	movl      40(%esp), %ecx
	leal      (%ecx,%esi,4), %ecx
	cmpl      %ecx, %edi
	movl      $0, %edi
	jbe       LBB16_39
LBB16_36:
	movl      %edx, %ecx
	subl      28(%esp), %ecx
	movl      %ecx, 24(%esp)
	leal      2(%ebx,%edx), %ebx
	andl      $-8, %ebx
	movl      48(%esp), %ecx
	movdqa    LCPI16_0-L16$pb(%ecx), %xmm0
	movl      %edx, %edi
	movl      40(%esp), %ecx
	.align 4, 0x90
LBB16_37:
	movd      %edi, %xmm1
	pshufd    $0, %xmm1, %xmm1
	paddd     %xmm0, %xmm1
	movd      %xmm1, %esi
	movups    -12(%eax,%esi,4), %xmm1
	movups    -28(%eax,%esi,4), %xmm2
	subl      %edx, %esi
	movups    %xmm1, -12(%ecx,%esi,4)
	movups    %xmm2, -28(%ecx,%esi,4)
	addl      $-8, %edi
	addl      $-8, %ebx
	jne       LBB16_37
	movl      24(%esp), %edx
	movl      28(%esp), %edi
	jmp       LBB16_39
LBB16_33:
	movl      %ebp, 32(%esp)
	movl      36(%esp), %ebp
LBB16_39:
	cmpl      %edi, 32(%esp)
	movl      $-2, %esi
	jne       LBB16_27
	movl      44(%esp), %eax
	jmp       LBB16_44
LBB16_27:
	movl      %edx, %ebx
	notl      %ebx
	cmpl      $-3, %ebx
	cmovg     %ebx, %esi
	leal      2(%edx,%esi), %ecx
	leal      1(%edx,%esi), %edi
	testb     $3, %cl
	je        LBB16_30
	movl      %ebp, %ecx
	notl      %ecx
	orl       $1056964608, %ecx
	movl      40(%esp), %esi
	leal      (%esi,%ecx,4), %ecx
	cmpl      $-3, %ebx
	movl      $-2, %esi
	cmovg     %ebx, %esi
	leal      2(%edx,%esi), %ebx
	andl      $3, %ebx
	negl      %ebx
	.align 4, 0x90
LBB16_29:
	movl      -4(%eax,%edx,4), %esi
	movl      %esi, (%ecx,%edx,4)
	leal      -1(%edx), %edx
	incl      %ebx
	jne       LBB16_29
LBB16_30:
	cmpl      $3, %edi
	jae       LBB16_41
	movl      44(%esp), %eax
	jmp       LBB16_44
LBB16_41:
	incl      %edx
	andl      $16777215, %ebp
	movl      $-4, %ecx
	subl      %ebp, %ecx
	movl      40(%esp), %esi
	leal      (%esi,%ecx,4), %ecx
	movl      44(%esp), %edi
	.align 4, 0x90
LBB16_42:
	movl      -8(%eax,%edx,4), %esi
	movl      %esi, 8(%ecx,%edx,4)
	movl      -12(%eax,%edx,4), %esi
	movl      %esi, 4(%ecx,%edx,4)
	movl      -16(%eax,%edx,4), %esi
	movl      %esi, (%ecx,%edx,4)
	movl      -20(%eax,%edx,4), %esi
	movl      %esi, -4(%ecx,%edx,4)
	addl      $-4, %edx
	cmpl      $1, %edx
	jg        LBB16_42
	movl      %edi, %eax
	jmp       LBB16_44
	.align 4, 0x90
_gerepileall:
	pushl     %ebp
	pushl     %ebx
	pushl     %edi
	pushl     %esi
	subl      $76, %esp
	call      L17$pb
L17$pb:
	popl      %ecx
	movl      100(%esp), %ebx
	movl      96(%esp), %ebp
	movl      L___stack_chk_guard$non_lazy_ptr-L17$pb(%ecx), %edi
	movl      (%edi), %eax
	movl      %eax, 72(%esp)
	leal      104(%esp), %eax
	movl      %eax, 28(%esp)
	cmpl      $9, %ebx
	jg        LBB17_7
	testl     %ebx, %ebx
	jle       LBB17_26
	movl      %edi, 20(%esp)
	movl      %ecx, 24(%esp)
	xorl      %esi, %esi
	.align 4, 0x90
LBB17_3:
	movl      28(%esp), %eax
	leal      4(%eax), %ecx
	movl      %ecx, 28(%esp)
	movl      (%eax), %edi
	movl      %edi, 32(%esp,%esi,4)
	movl      (%edi), %eax
	movl      %eax, (%esp)
	call      _copy_bin
	movl      %eax, (%edi)
	incl      %esi
	cmpl      %esi, %ebx
	jne       LBB17_3
	movl      24(%esp), %eax
	movl      L_avma$non_lazy_ptr-L17$pb(%eax), %eax
	movl      %ebp, (%eax)
	testl     %ebx, %ebx
	movl      20(%esp), %edi
	jle       LBB17_24
	incl      %ebx
	.align 4, 0x90
LBB17_6:
	movl      24(%esp,%ebx,4), %esi
	movl      (%esi), %ecx
	call      _bin_copy
	movl      %eax, (%esi)
	decl      %ebx
	cmpl      $1, %ebx
	jg        LBB17_6
	jmp       LBB17_24
LBB17_7:
	leal      0(,%ebx,4), %eax
	testl     %eax, %eax
	je        LBB17_13
	movl      %edi, 20(%esp)
	movl      %ecx, 24(%esp)
	movl      L_PARI_SIGINT_block$non_lazy_ptr-L17$pb(%ecx), %edi
	movl      (%edi), %ebp
	movl      $1, (%edi)
	movl      %eax, (%esp)
	call      _malloc
	movl      %eax, %esi
	movl      %ebp, (%edi)
	testl     %ebp, %ebp
	jne       LBB17_11
	movl      24(%esp), %eax
	movl      L_PARI_SIGINT_pending$non_lazy_ptr-L17$pb(%eax), %eax
	cmpl      $0, (%eax)
	je        LBB17_11
	movl      (%eax), %ecx
	movl      $0, (%eax)
	movl      %ecx, (%esp)
	call      _raise
LBB17_11:
	testl     %esi, %esi
	movl      96(%esp), %ebp
	jne       LBB17_16
	movl      $28, (%esp)
	call      _pari_err
	xorl      %esi, %esi
	jmp       LBB17_16
LBB17_26:
	movl      L_avma$non_lazy_ptr-L17$pb(%ecx), %eax
	movl      %ebp, (%eax)
	jmp       LBB17_24
LBB17_13:
	movl      %edi, 20(%esp)
	movl      L_DEBUGMEM$non_lazy_ptr-L17$pb(%ecx), %eax
	xorl      %esi, %esi
	cmpl      $0, (%eax)
	je        LBB17_14
	leal      L_.str3-L17$pb(%ecx), %eax
	movl      %ecx, 24(%esp)
	movl      %eax, 4(%esp)
	movl      $0, (%esp)
	call      _pari_warn
	jmp       LBB17_16
LBB17_14:
	movl      %ecx, 24(%esp)
LBB17_16:
	xorl      %edi, %edi
	.align 4, 0x90
LBB17_17:
	movl      28(%esp), %eax
	leal      4(%eax), %ecx
	movl      %ecx, 28(%esp)
	movl      (%eax), %eax
	movl      %eax, (%esi,%edi,4)
	movl      (%eax), %eax
	movl      %eax, (%esp)
	call      _copy_bin
	movl      (%esi,%edi,4), %ecx
	movl      %eax, (%ecx)
	incl      %edi
	cmpl      %edi, %ebx
	jne       LBB17_17
	movl      24(%esp), %edi
	movl      L_avma$non_lazy_ptr-L17$pb(%edi), %eax
	movl      %ebp, (%eax)
	testl     %ebx, %ebx
	jle       LBB17_21
	incl      %ebx
	.align 4, 0x90
LBB17_20:
	movl      -8(%esi,%ebx,4), %eax
	movl      (%eax), %ecx
	call      _bin_copy
	movl      -8(%esi,%ebx,4), %ecx
	movl      %eax, (%ecx)
	decl      %ebx
	cmpl      $1, %ebx
	jg        LBB17_20
LBB17_21:
	movl      %edi, %ebp
	movl      L_PARI_SIGINT_block$non_lazy_ptr-L17$pb(%ebp), %edi
	movl      (%edi), %ebx
	movl      $1, (%edi)
	movl      %esi, (%esp)
	call      _free
	movl      %ebx, (%edi)
	testl     %ebx, %ebx
	movl      20(%esp), %edi
	jne       LBB17_24
	movl      L_PARI_SIGINT_pending$non_lazy_ptr-L17$pb(%ebp), %eax
	cmpl      $0, (%eax)
	je        LBB17_24
	movl      (%eax), %ecx
	movl      $0, (%eax)
	movl      %ecx, (%esp)
	call      _raise
LBB17_24:
	movl      (%edi), %eax
	cmpl      72(%esp), %eax
	jne       LBB17_27
	addl      $76, %esp
	popl      %esi
	popl      %edi
	popl      %ebx
	popl      %ebp
	ret       
LBB17_27:
	call      ___stack_chk_fail
	.align 4, 0x90
_gerepileuptoleaf:
	pushl     %ebp
	pushl     %ebx
	pushl     %edi
	pushl     %esi
	subl      $24, %esp
	call      L18$pb
L18$pb:
	popl      %ebp
	movl      L_bot$non_lazy_ptr-L18$pb(%ebp), %eax
	cmpl      (%eax), %edx
	jb        LBB18_3
	movl      L_top$non_lazy_ptr-L18$pb(%ebp), %eax
	cmpl      (%eax), %edx
	jae       LBB18_3
	cmpl      %edx, %ecx
	jbe       LBB18_3
	movl      (%edx), %ebx
	movl      %ebx, %eax
	andl      $16777215, %eax
	shll      $2, %eax
	movl      %ecx, %edi
	subl      %eax, %edi
	movl      %ebx, %esi
	andl      $16777215, %esi
	movl      L_avma$non_lazy_ptr-L18$pb(%ebp), %eax
	movl      %edi, (%eax)
	je        LBB18_23
	movl      %edi, 20(%esp)
	movl      %ebx, 16(%esp)
	orl       $-16777216, %ebx
	movl      %ebx, %eax
	xorl      $16777215, %eax
	movl      %eax, 12(%esp)
	cmpl      $-16777216, %ebx
	movl      $-2, %edi
	cmove     %eax, %edi
	leal      (%edi,%esi), %eax
	cmpl      $-2, %eax
	jne       LBB18_12
	movl      $-2, %ebx
	jmp       LBB18_7
LBB18_3:
	movl      L_avma$non_lazy_ptr-L18$pb(%ebp), %eax
	movl      %ecx, (%eax)
	jmp       LBB18_24
LBB18_12:
	movl      %edi, 8(%esp)
	addl      $2, %eax
	cmpl      $-16777216, %ebx
	movl      12(%esp), %edi
	movl      $-2, %ebx
	cmovne    %ebx, %edi
	movl      %eax, %ebx
	andl      $-8, %ebx
	je        LBB18_13
	movl      %ebx, 4(%esp)
	movl      %eax, 12(%esp)
	movl      $-2, %ebx
	subl      %edi, %ebx
	leal      (%edx,%ebx,4), %eax
	leal      -4(%ecx), %ebx
	cmpl      %eax, %ebx
	movl      $0, %eax
	ja        LBB18_16
	leal      -4(%edx,%esi,4), %ebx
	movl      %ebx, (%esp)
	addl      %esi, %edi
	movl      $-2, %ebx
	subl      %edi, %ebx
	leal      (%ecx,%ebx,4), %edi
	cmpl      %edi, (%esp)
	jbe       LBB18_19
LBB18_16:
	movl      %esi, %edi
	subl      4(%esp), %edi
	movl      8(%esp), %eax
	leal      2(%eax,%esi), %eax
	andl      $-8, %eax
	movdqa    LCPI18_0-L18$pb(%ebp), %xmm0
	movl      %esi, %ebp
	.align 4, 0x90
LBB18_17:
	movd      %ebp, %xmm1
	pshufd    $0, %xmm1, %xmm1
	paddd     %xmm0, %xmm1
	movd      %xmm1, %ebx
	movups    -12(%edx,%ebx,4), %xmm1
	movups    -28(%edx,%ebx,4), %xmm2
	subl      %esi, %ebx
	movups    %xmm1, -12(%ecx,%ebx,4)
	movups    %xmm2, -28(%ecx,%ebx,4)
	addl      $-8, %ebp
	addl      $-8, %eax
	jne       LBB18_17
	movl      %edi, %esi
	movl      4(%esp), %eax
	jmp       LBB18_19
LBB18_13:
	movl      %eax, 12(%esp)
	xorl      %eax, %eax
LBB18_19:
	cmpl      %eax, 12(%esp)
	movl      $-2, %ebx
	jne       LBB18_7
	movl      20(%esp), %edx
	jmp       LBB18_24
LBB18_7:
	movl      %esi, %edi
	notl      %edi
	cmpl      $-3, %edi
	cmovg     %edi, %ebx
	leal      2(%esi,%ebx), %eax
	leal      1(%esi,%ebx), %ebx
	testb     $3, %al
	je        LBB18_10
	movl      16(%esp), %eax
	notl      %eax
	orl       $1056964608, %eax
	leal      (%ecx,%eax,4), %eax
	cmpl      $-3, %edi
	movl      $-2, %ebp
	cmovg     %edi, %ebp
	leal      2(%esi,%ebp), %edi
	andl      $3, %edi
	negl      %edi
	.align 4, 0x90
LBB18_9:
	movl      -4(%edx,%esi,4), %ebp
	movl      %ebp, (%eax,%esi,4)
	leal      -1(%esi), %esi
	incl      %edi
	jne       LBB18_9
LBB18_10:
	cmpl      $3, %ebx
	jae       LBB18_21
	movl      20(%esp), %edx
	jmp       LBB18_24
LBB18_21:
	incl      %esi
	movl      16(%esp), %edi
	andl      $16777215, %edi
	movl      $-4, %eax
	subl      %edi, %eax
	leal      (%ecx,%eax,4), %eax
	movl      20(%esp), %edi
	.align 4, 0x90
LBB18_22:
	movl      -8(%edx,%esi,4), %ecx
	movl      %ecx, 8(%eax,%esi,4)
	movl      -12(%edx,%esi,4), %ecx
	movl      %ecx, 4(%eax,%esi,4)
	movl      -16(%edx,%esi,4), %ecx
	movl      %ecx, (%eax,%esi,4)
	movl      -20(%edx,%esi,4), %ecx
	movl      %ecx, -4(%eax,%esi,4)
	addl      $-4, %esi
	cmpl      $1, %esi
	jg        LBB18_22
LBB18_23:
	movl      %edi, %edx
LBB18_24:
	movl      %edx, %eax
	addl      $24, %esp
	popl      %esi
	popl      %edi
	popl      %ebx
	popl      %ebp
	ret       
# ----------------------
	.align 4, 0x90
	.globl	_F2x_extgcd
_F2x_extgcd:
	pushl     %ebp
	pushl     %ebx
	pushl     %edi
	pushl     %esi
	subl      $76, %esp
	call      L19$pb
L19$pb:
	popl      %ecx
	movl      %ecx, 40(%esp)
	movl      96(%esp), %edx
	movl      L_avma$non_lazy_ptr-L19$pb(%ecx), %ebp
	movl      (%ebp), %eax
	movl      L_bot$non_lazy_ptr-L19$pb(%ecx), %esi
	movl      (%esi), %edi
	movl      %edi, 28(%esp)
	movl      %eax, %ecx
	subl      %edi, %ecx
	movl      %ecx, 48(%esp)
	movl      4(%edx), %edi
	movl      %edi, 32(%esp)
	movl      %edx, 64(%esp)
	movl      100(%esp), %edx
	movl      %edx, 60(%esp)
	cmpl      $7, %ecx
	leal      -8(%eax), %edi
	movl      %eax, %ebx
	ja        LBB19_2
	movl      $14, (%esp)
	call      _pari_err
LBB19_2:
	movl      %ebp, 44(%esp)
	movl      %edi, (%ebp)
	movl      %ebx, 36(%esp)
	movl      $738197506, -8(%ebx)
	movl      32(%esp), %eax
	movl      %eax, -4(%ebx)
	movl      %eax, %ebx
	movl      %edi, 68(%esp)
	movl      (%ebp), %edi
	movl      %edi, %eax
	subl      (%esi), %eax
	shrl      $2, 48(%esp)
	cmpl      $11, %eax
	leal      -12(%edi), %esi
	ja        LBB19_4
	movl      $14, (%esp)
	call      _pari_err
LBB19_4:
	movl      28(%esp), %eax
	addl      %eax, 48(%esp)
	movl      44(%esp), %eax
	movl      %esi, (%eax)
	movl      $738197507, -12(%edi)
	movl      %ebx, -8(%edi)
	movl      $1, -4(%edi)
	movl      %esi, 56(%esp)
	movl      60(%esp), %eax
	movl      $16777215, %edi
	movl      (%eax), %ecx
	andl      %edi, %ecx
	cmpl      $2, %ecx
	je        LBB19_17
	movl      40(%esp), %ecx
	leal      L_.str1-L19$pb(%ecx), %ecx
	movl      %ecx, 32(%esp)
	.align 4, 0x90
LBB19_6:
	movl      64(%esp), %ecx
	leal      52(%esp), %edx
	movl      %edx, 8(%esp)
	movl      %eax, 4(%esp)
	movl      %ecx, (%esp)
	call      _F2x_divrem
	movl      %eax, %esi
	movl      68(%esp), %ebx
	movl      56(%esp), %edx
	leal      8(%esi), %ecx
	movl      (%esi), %eax
	andl      %edi, %eax
	addl      $-2, %eax
	movl      (%edx), %ebp
	andl      %edi, %ebp
	addl      $8, %edx
	addl      $-2, %ebp
	movl      %ebp, 4(%esp)
	movl      %eax, (%esp)
	call      _F2x_mulspec
	movl      4(%esi), %ecx
	movl      %ecx, 4(%eax)
	movl      %eax, 4(%esp)
	movl      %ebx, (%esp)
	call      _F2x_add
	movl      56(%esp), %ecx
	movl      %ecx, 68(%esp)
	movl      %eax, 56(%esp)
	movl      52(%esp), %eax
	movl      %eax, 72(%esp)
	movl      60(%esp), %ecx
	movl      %ecx, 64(%esp)
	movl      %eax, 60(%esp)
	movl      44(%esp), %edx
	movl      48(%esp), %esi
	cmpl      %esi, (%edx)
	jae       LBB19_16
	movl      40(%esp), %eax
	movl      L_DEBUGMEM$non_lazy_ptr-L19$pb(%eax), %eax
	cmpl      $2, (%eax)
	jb        LBB19_15
	movl      (%ecx), %eax
	andl      %edi, %eax
	movl      $-1, %edx
	cmpl      $2, %eax
	je        LBB19_14
	movl      -4(%ecx,%eax,4), %edx
	movl      %edx, %ecx
	shrl      $16, %ecx
	cmpl      $65535, %edx
	cmovbe    %edx, %ecx
	movl      $28, %edx
	movl      $12, %esi
	cmova     %esi, %edx
	cmpl      $256, %ecx
	jb        LBB19_11
	addl      $-8, %edx
	shrl      $8, %ecx
LBB19_11:
	shll      $5, %eax
	cmpl      $16, %ecx
	jb        LBB19_13
	addl      $-4, %edx
	shrl      $4, %ecx
LBB19_13:
	addl      $-65, %eax
	subl      %edx, %eax
	movl      40(%esp), %edx
	subl      _F2x_degree_lg.__bfffo_tabshi-L19$pb(%edx,%ecx,4), %eax
	movl      %eax, %edx
LBB19_14:
	movl      %edx, 8(%esp)
	movl      32(%esp), %eax
	movl      %eax, 4(%esp)
	movl      $3, (%esp)
	call      _pari_warn
LBB19_15:
	leal      56(%esp), %eax
	movl      %eax, 24(%esp)
	leal      68(%esp), %eax
	movl      %eax, 20(%esp)
	leal      72(%esp), %eax
	movl      %eax, 16(%esp)
	leal      60(%esp), %eax
	movl      %eax, 12(%esp)
	leal      64(%esp), %eax
	movl      %eax, 8(%esp)
	movl      36(%esp), %eax
	movl      %eax, (%esp)
	movl      $5, 4(%esp)
	call      _gerepileall
	movl      60(%esp), %eax
LBB19_16:
	movl      (%eax), %ecx
	andl      %edi, %ecx
	cmpl      $2, %ecx
	jne       LBB19_6
LBB19_17:
	movl      108(%esp), %edx
	movl      104(%esp), %esi
	testl     %esi, %esi
	je        LBB19_19
	movl      64(%esp), %edi
	movl      %edx, %esi
	movl      68(%esp), %edx
	movl      100(%esp), %eax
	movl      %eax, %ebp
	leal      8(%ebp), %ecx
	movl      $16777215, %eax
	movl      (%ebp), %ebx
	andl      %eax, %ebx
	addl      $-2, %ebx
	andl      (%edx), %eax
	addl      $8, %edx
	addl      $-2, %eax
	movl      %eax, 4(%esp)
	movl      %ebx, (%esp)
	call      _F2x_mulspec
	movl      4(%ebp), %ecx
	movl      %ecx, 4(%eax)
	movl      %eax, 4(%esp)
	movl      %edi, (%esp)
	call      _F2x_add
	movl      96(%esp), %ecx
	movl      %ecx, 4(%esp)
	movl      %eax, (%esp)
	movl      $0, 8(%esp)
	call      _F2x_divrem
	movl      %esi, %edx
	movl      104(%esp), %esi
	movl      %eax, (%esi)
LBB19_19:
	movl      68(%esp), %eax
	movl      %eax, (%edx)
	movl      44(%esp), %eax
	movl      48(%esp), %ecx
	cmpl      %ecx, (%eax)
	jae       LBB19_21
	testl     %esi, %esi
	setne     %al
	movzbl    %al, %eax
	orl       $2, %eax
	movl      %esi, 16(%esp)
	movl      %edx, 12(%esp)
	leal      64(%esp), %ecx
	movl      %ecx, 8(%esp)
	movl      36(%esp), %ecx
	movl      %ecx, (%esp)
	movl      %eax, 4(%esp)
	call      _gerepileall
LBB19_21:
	movl      64(%esp), %eax
	addl      $76, %esp
	popl      %esi
	popl      %edi
	popl      %ebx
	popl      %ebp
	ret       
# ----------------------
	.align 4, 0x90
	.globl	_F2xq_mul
_F2xq_mul:
	pushl     %ebx
	pushl     %edi
	pushl     %esi
	subl      $16, %esp
	movl      40(%esp), %esi
	movl      36(%esp), %edx
	movl      32(%esp), %edi
	leal      8(%edi), %ecx
	movl      $16777215, %eax
	movl      (%edi), %ebx
	andl      %eax, %ebx
	addl      $-2, %ebx
	andl      (%edx), %eax
	addl      $8, %edx
	addl      $-2, %eax
	movl      %eax, 4(%esp)
	movl      %ebx, (%esp)
	call      _F2x_mulspec
	movl      4(%edi), %ecx
	movl      %ecx, 4(%eax)
	movl      %esi, 4(%esp)
	movl      %eax, (%esp)
	call      _F2x_rem
	addl      $16, %esp
	popl      %esi
	popl      %edi
	popl      %ebx
	ret       
# ----------------------
	.align 4, 0x90
	.globl	_F2xq_sqr
_F2xq_sqr:
	pushl     %esi
	subl      $8, %esp
	movl      20(%esp), %esi
	movl      16(%esp), %eax
	movl      %eax, (%esp)
	call      _F2x_sqr
	movl      %esi, 4(%esp)
	movl      %eax, (%esp)
	call      _F2x_rem
	addl      $8, %esp
	popl      %esi
	ret       
# ----------------------
	.align 4, 0x90
	.globl	_F2xq_invsafe
_F2xq_invsafe:
	pushl     %ebx
	pushl     %edi
	pushl     %esi
	subl      $32, %esp
	call      L22$pb
L22$pb:
	popl      %esi
	movl      52(%esp), %eax
	movl      48(%esp), %ecx
	leal      28(%esp), %edx
	movl      %edx, 12(%esp)
	movl      %ecx, 4(%esp)
	movl      %eax, (%esp)
	movl      $0, 8(%esp)
	call      _F2x_extgcd
	movl      %eax, %ecx
	movl      $16777215, %edx
	andl      (%ecx), %edx
	xorl      %eax, %eax
	cmpl      $2, %edx
	movl      $0, %ebx
	je        LBB22_6
	movl      -4(%ecx,%edx,4), %edi
	movl      %edi, %ecx
	shrl      $16, %ecx
	cmpl      $65535, %edi
	cmovbe    %edi, %ecx
	movl      $12, %ebx
	movl      $28, %edi
	cmova     %ebx, %edi
	cmpl      $256, %ecx
	jb        LBB22_3
	addl      $-8, %edi
	shrl      $8, %ecx
LBB22_3:
	shll      $5, %edx
	cmpl      $16, %ecx
	jb        LBB22_5
	addl      $-4, %edi
	shrl      $4, %ecx
LBB22_5:
	addl      $-65, %edx
	subl      %edi, %edx
	cmpl      _F2x_degree_lg.__bfffo_tabshi-L22$pb(%esi,%ecx,4), %edx
	sete      %bl
LBB22_6:
	testb     %bl, %bl
	cmovne    28(%esp), %eax
	addl      $32, %esp
	popl      %esi
	popl      %edi
	popl      %ebx
	ret       
# ----------------------
	.align 4, 0x90
	.globl	_F2xq_inv
_F2xq_inv:
	pushl     %ebp
	pushl     %ebx
	pushl     %edi
	pushl     %esi
	subl      $44, %esp
	call      L23$pb
L23$pb:
	popl      %ebx
	movl      68(%esp), %eax
	movl      64(%esp), %ecx
	movl      L_avma$non_lazy_ptr-L23$pb(%ebx), %edi
	movl      (%edi), %ebp
	leal      40(%esp), %edx
	movl      %edx, 12(%esp)
	movl      %ecx, 4(%esp)
	movl      %eax, (%esp)
	movl      $0, 8(%esp)
	call      _F2x_extgcd
	movl      $16777215, %ecx
	andl      (%eax), %ecx
	xorl      %esi, %esi
	cmpl      $2, %ecx
	movl      $0, %edx
	je        LBB23_6
	movl      %ebp, 36(%esp)
	movl      -4(%eax,%ecx,4), %edx
	movl      %edx, %eax
	shrl      $16, %eax
	cmpl      $65535, %edx
	cmovbe    %edx, %eax
	movl      $28, %edx
	movl      $12, %ebp
	cmova     %ebp, %edx
	cmpl      $256, %eax
	jb        LBB23_3
	addl      $-8, %edx
	shrl      $8, %eax
LBB23_3:
	movl      36(%esp), %ebp
	shll      $5, %ecx
	cmpl      $16, %eax
	jb        LBB23_5
	addl      $-4, %edx
	shrl      $4, %eax
LBB23_5:
	addl      $-65, %ecx
	subl      %edx, %ecx
	cmpl      _F2x_degree_lg.__bfffo_tabshi-L23$pb(%ebx,%eax,4), %ecx
	sete      %dl
LBB23_6:
	testb     %dl, %dl
	cmovne    40(%esp), %esi
	testl     %esi, %esi
	jne       LBB23_8
	movl      $27, (%esp)
	call      _pari_err
LBB23_8:
	movl      L_bot$non_lazy_ptr-L23$pb(%ebx), %eax
	cmpl      (%eax), %esi
	jb        LBB23_11
	movl      L_top$non_lazy_ptr-L23$pb(%ebx), %eax
	cmpl      (%eax), %esi
	jae       LBB23_11
	cmpl      %esi, %ebp
	jbe       LBB23_11
	movl      (%esi), %ecx
	movl      %ecx, %eax
	andl      $16777215, %eax
	shll      $2, %eax
	movl      %ebp, %edx
	subl      %eax, %edx
	movl      %ecx, %eax
	andl      $16777215, %ecx
	movl      %edx, (%edi)
	je        LBB23_13
	movl      %ebp, %edi
	movl      %edx, 32(%esp)
	movl      %eax, %edx
	movl      %eax, 28(%esp)
	orl       $-16777216, %edx
	movl      %edx, %eax
	xorl      $16777215, %eax
	movl      %eax, 24(%esp)
	cmpl      $-16777216, %edx
	movl      $-2, %ebp
	cmove     %eax, %ebp
	leal      (%ebp,%ecx), %eax
	cmpl      $-2, %eax
	je        LBB23_24
	movl      %ebp, 20(%esp)
	movl      %edi, 36(%esp)
	addl      $2, %eax
	cmpl      $-16777216, %edx
	movl      24(%esp), %ebp
	movl      $-2, %edx
	cmovne    %edx, %ebp
	movl      %eax, %edx
	andl      $-8, %edx
	je        LBB23_16
	movl      %edx, 16(%esp)
	movl      %eax, 24(%esp)
	movl      $-2, %edx
	movl      $-2, %edi
	subl      %ebp, %edi
	leal      (%esi,%edi,4), %eax
	movl      36(%esp), %edi
	leal      -4(%edi), %edi
	cmpl      %eax, %edi
	movl      $0, %eax
	ja        LBB23_19
	leal      -4(%esi,%ecx,4), %edi
	addl      %ecx, %ebp
	subl      %ebp, %edx
	movl      36(%esp), %ebp
	leal      (%ebp,%edx,4), %edx
	cmpl      %edx, %edi
	jbe       LBB23_22
LBB23_19:
	movl      %ecx, %ebp
	subl      16(%esp), %ebp
	movl      20(%esp), %eax
	leal      2(%eax,%ecx), %eax
	andl      $-8, %eax
	movdqa    LCPI23_0-L23$pb(%ebx), %xmm0
	movl      %ecx, %ebx
	movl      36(%esp), %edi
	.align 4, 0x90
LBB23_20:
	movd      %ebx, %xmm1
	pshufd    $0, %xmm1, %xmm1
	paddd     %xmm0, %xmm1
	movd      %xmm1, %edx
	movups    -12(%esi,%edx,4), %xmm1
	movups    -28(%esi,%edx,4), %xmm2
	subl      %ecx, %edx
	movups    %xmm1, -12(%edi,%edx,4)
	movups    %xmm2, -28(%edi,%edx,4)
	addl      $-8, %ebx
	addl      $-8, %eax
	jne       LBB23_20
	movl      %ebp, %ecx
	movl      16(%esp), %eax
	jmp       LBB23_22
LBB23_11:
	movl      %ebp, (%edi)
LBB23_32:
	movl      %esi, %eax
	addl      $44, %esp
	popl      %esi
	popl      %edi
	popl      %ebx
	popl      %ebp
	ret       
LBB23_13:
	movl      %edx, %esi
	jmp       LBB23_32
LBB23_16:
	movl      %eax, 24(%esp)
	xorl      %eax, %eax
LBB23_22:
	cmpl      %eax, 24(%esp)
	movl      36(%esp), %edi
	jne       LBB23_24
	movl      32(%esp), %esi
	jmp       LBB23_32
LBB23_24:
	movl      %ecx, %ebp
	notl      %ebp
	cmpl      $-3, %ebp
	movl      $-2, %edx
	cmovg     %ebp, %edx
	leal      2(%ecx,%edx), %eax
	leal      1(%ecx,%edx), %ebx
	testb     $3, %al
	je        LBB23_27
	movl      28(%esp), %eax
	notl      %eax
	orl       $1056964608, %eax
	leal      (%edi,%eax,4), %eax
	cmpl      $-3, %ebp
	movl      $-2, %edx
	cmovg     %ebp, %edx
	leal      2(%ecx,%edx), %ebp
	andl      $3, %ebp
	negl      %ebp
	.align 4, 0x90
LBB23_26:
	movl      -4(%esi,%ecx,4), %edx
	movl      %edx, (%eax,%ecx,4)
	leal      -1(%ecx), %ecx
	incl      %ebp
	jne       LBB23_26
LBB23_27:
	cmpl      $3, %ebx
	jae       LBB23_29
	movl      32(%esp), %esi
	jmp       LBB23_32
LBB23_29:
	incl      %ecx
	movl      28(%esp), %edx
	andl      $16777215, %edx
	movl      $-4, %eax
	subl      %edx, %eax
	leal      (%edi,%eax,4), %eax
	movl      32(%esp), %edi
	.align 4, 0x90
LBB23_30:
	movl      -8(%esi,%ecx,4), %edx
	movl      %edx, 8(%eax,%ecx,4)
	movl      -12(%esi,%ecx,4), %edx
	movl      %edx, 4(%eax,%ecx,4)
	movl      -16(%esi,%ecx,4), %edx
	movl      %edx, (%eax,%ecx,4)
	movl      -20(%esi,%ecx,4), %edx
	movl      %edx, -4(%eax,%ecx,4)
	addl      $-4, %ecx
	cmpl      $1, %ecx
	jg        LBB23_30
	movl      %edi, %esi
	jmp       LBB23_32
# ----------------------
	.align 4, 0x90
	.globl	_F2xq_div
_F2xq_div:
	pushl     %ebp
	pushl     %ebx
	pushl     %edi
	pushl     %esi
	subl      $44, %esp
	call      L24$pb
L24$pb:
	popl      %esi
	movl      64(%esp), %ebp
	movl      68(%esp), %eax
	movl      72(%esp), %edx
	movl      L_avma$non_lazy_ptr-L24$pb(%esi), %ecx
	movl      %ecx, 36(%esp)
	movl      (%ecx), %ecx
	movl      %ecx, 40(%esp)
	movl      %edx, 4(%esp)
	movl      %eax, (%esp)
	call      _F2xq_inv
	leal      8(%ebp), %ecx
	movl      $16777215, %ebx
	movl      (%ebp), %edi
	andl      %ebx, %edi
	addl      $-2, %edi
	andl      (%eax), %ebx
	leal      8(%eax), %edx
	addl      $-2, %ebx
	movl      %ebx, 4(%esp)
	movl      %edi, (%esp)
	call      _F2x_mulspec
	movl      4(%ebp), %ecx
	movl      %ecx, 4(%eax)
	movl      72(%esp), %ecx
	movl      %ecx, 4(%esp)
	movl      %eax, (%esp)
	call      _F2x_rem
	movl      L_bot$non_lazy_ptr-L24$pb(%esi), %ecx
	cmpl      (%ecx), %eax
	jb        LBB24_3
	movl      L_top$non_lazy_ptr-L24$pb(%esi), %ecx
	cmpl      (%ecx), %eax
	jae       LBB24_3
	cmpl      %eax, 40(%esp)
	jbe       LBB24_3
	movl      (%eax), %ebx
	movl      %ebx, %ecx
	andl      $16777215, %ecx
	shll      $2, %ecx
	movl      40(%esp), %edi
	subl      %ecx, %edi
	movl      %ebx, %edx
	andl      $16777215, %edx
	movl      36(%esp), %ecx
	movl      %edi, (%ecx)
	je        LBB24_24
	movl      %esi, 28(%esp)
	movl      %ebx, %esi
	orl       $-16777216, %esi
	movl      %esi, %ecx
	xorl      $16777215, %ecx
	movl      %ecx, 36(%esp)
	cmpl      $-16777216, %esi
	movl      $-2, %ebp
	cmove     %ecx, %ebp
	leal      (%ebp,%edx), %ecx
	cmpl      $-2, %ecx
	jne       LBB24_9
	movl      %ebx, 32(%esp)
	movl      %edi, 36(%esp)
	jmp       LBB24_7
LBB24_3:
	movl      40(%esp), %ecx
	movl      36(%esp), %edx
	movl      %ecx, (%edx)
	jmp       LBB24_25
LBB24_9:
	movl      %ebp, 20(%esp)
	addl      $2, %ecx
	cmpl      $-16777216, %esi
	movl      36(%esp), %ebp
	movl      $-2, %esi
	cmovne    %esi, %ebp
	movl      %ecx, %esi
	andl      $-8, %esi
	je        LBB24_10
	movl      %esi, 16(%esp)
	movl      %ecx, 24(%esp)
	movl      %ebx, 32(%esp)
	movl      %edi, 36(%esp)
	movl      $-2, %esi
	movl      $-2, %edi
	subl      %ebp, %edi
	leal      (%eax,%edi,4), %edi
	movl      40(%esp), %ebx
	leal      -4(%ebx), %ebx
	cmpl      %edi, %ebx
	movl      $0, %ecx
	ja        LBB24_13
	leal      -4(%eax,%edx,4), %edi
	addl      %edx, %ebp
	subl      %ebp, %esi
	movl      40(%esp), %ebx
	leal      (%ebx,%esi,4), %esi
	cmpl      %esi, %edi
	jbe       LBB24_16
LBB24_13:
	movl      %edx, %esi
	subl      16(%esp), %esi
	movl      20(%esp), %ecx
	leal      2(%ecx,%edx), %ecx
	andl      $-8, %ecx
	movl      28(%esp), %edi
	movdqa    LCPI24_0-L24$pb(%edi), %xmm0
	movl      %edx, %ebx
	movl      40(%esp), %ebp
	.align 4, 0x90
LBB24_14:
	movd      %ebx, %xmm1
	pshufd    $0, %xmm1, %xmm1
	paddd     %xmm0, %xmm1
	movd      %xmm1, %edi
	movups    -12(%eax,%edi,4), %xmm1
	movups    -28(%eax,%edi,4), %xmm2
	subl      %edx, %edi
	movups    %xmm1, -12(%ebp,%edi,4)
	movups    %xmm2, -28(%ebp,%edi,4)
	addl      $-8, %ebx
	addl      $-8, %ecx
	jne       LBB24_14
	movl      %esi, %edx
	movl      16(%esp), %ecx
	jmp       LBB24_16
LBB24_10:
	movl      %ecx, 24(%esp)
	movl      %ebx, 32(%esp)
	movl      %edi, 36(%esp)
	xorl      %ecx, %ecx
LBB24_16:
	cmpl      %ecx, 24(%esp)
	jne       LBB24_7
	movl      36(%esp), %eax
	jmp       LBB24_25
LBB24_7:
	movl      %edx, %esi
	notl      %esi
	cmpl      $-3, %esi
	movl      $-2, %edi
	cmovg     %esi, %edi
	leal      2(%edx,%edi), %ecx
	leal      1(%edx,%edi), %ebx
	testb     $3, %cl
	je        LBB24_8
	movl      32(%esp), %ecx
	notl      %ecx
	orl       $1056964608, %ecx
	movl      40(%esp), %ebp
	leal      (%ebp,%ecx,4), %ecx
	cmpl      $-3, %esi
	movl      $-2, %edi
	cmovg     %esi, %edi
	leal      2(%edx,%edi), %esi
	andl      $3, %esi
	negl      %esi
	.align 4, 0x90
LBB24_19:
	movl      -4(%eax,%edx,4), %edi
	movl      %edi, (%ecx,%edx,4)
	leal      -1(%edx), %edx
	incl      %esi
	jne       LBB24_19
	jmp       LBB24_20
LBB24_8:
	movl      40(%esp), %ebp
LBB24_20:
	cmpl      $3, %ebx
	jae       LBB24_22
	movl      36(%esp), %eax
	jmp       LBB24_25
LBB24_22:
	incl      %edx
	movl      32(%esp), %esi
	andl      $16777215, %esi
	movl      $-4, %ecx
	subl      %esi, %ecx
	leal      (%ebp,%ecx,4), %ecx
	movl      36(%esp), %edi
	.align 4, 0x90
LBB24_23:
	movl      -8(%eax,%edx,4), %esi
	movl      %esi, 8(%ecx,%edx,4)
	movl      -12(%eax,%edx,4), %esi
	movl      %esi, 4(%ecx,%edx,4)
	movl      -16(%eax,%edx,4), %esi
	movl      %esi, (%ecx,%edx,4)
	movl      -20(%eax,%edx,4), %esi
	movl      %esi, -4(%ecx,%edx,4)
	addl      $-4, %edx
	cmpl      $1, %edx
	jg        LBB24_23
LBB24_24:
	movl      %edi, %eax
LBB24_25:
	addl      $44, %esp
	popl      %esi
	popl      %edi
	popl      %ebx
	popl      %ebp
	ret       
# ----------------------
	.align 4, 0x90
	.globl	_F2xq_pow
_F2xq_pow:
	pushl     %ebp
	pushl     %ebx
	pushl     %edi
	pushl     %esi
	subl      $60, %esp
	call      L25$pb
L25$pb:
	popl      %esi
	movl      84(%esp), %ebx
	movl      80(%esp), %edi
	movl      L_avma$non_lazy_ptr-L25$pb(%esi), %ebp
	movl      (%ebp), %edx
	movl      4(%ebx), %eax
	cmpl      $1073741823, %eax
	jbe       LBB25_1
	movl      %eax, %ecx
	andl      $16777215, %ecx
	cmpl      $3, %ecx
	jne       LBB25_5
	cmpl      $1, 8(%ebx)
	jne       LBB25_30
	testl     %eax, %eax
	js        LBB25_9
	movl      %ebp, 56(%esp)
	movl      (%edi), %ebx
	movl      %ebx, 44(%esp)
	andl      $16777215, %ebx
	leal      0(,%ebx,4), %eax
	movl      %edx, %ebp
	subl      %eax, %ebp
	movl      L_bot$non_lazy_ptr-L25$pb(%esi), %eax
	movl      %edx, %ecx
	movl      %edx, 52(%esp)
	subl      (%eax), %ecx
	shrl      $2, %ecx
	cmpl      %ebx, %ecx
	jae       LBB25_12
	movl      $14, (%esp)
	call      _pari_err
LBB25_12:
	movl      56(%esp), %eax
	movl      %ebp, (%eax)
	movl      $-16777217, %eax
	andl      (%edi), %eax
	movl      %eax, (%ebp)
	cmpl      $2, %ebx
	jb        LBB25_73
	movl      %ebp, 48(%esp)
	movl      44(%esp), %edx
	andl      $16777215, %edx
	movl      %edx, %ebp
	negl      %ebp
	cmpl      $-3, %ebp
	movl      $-2, %eax
	movl      $-2, %ecx
	cmovg     %ebp, %ecx
	addl      %edx, %ecx
	cmpl      $-1, %ecx
	je        LBB25_14
	incl      %ecx
	movl      %ecx, 56(%esp)
	cmpl      $-3, %ebp
	movl      %ecx, %eax
	movl      $-2, %ecx
	cmovg     %ebp, %ecx
	andl      $-8, %eax
	movl      %eax, 40(%esp)
	je        LBB25_16
	movl      %ecx, %eax
	notl      %eax
	leal      (%edi,%eax,4), %eax
	movl      %eax, 36(%esp)
	movl      52(%esp), %eax
	leal      -4(%eax), %eax
	cmpl      36(%esp), %eax
	ja        LBB25_20
	leal      -4(%edi,%edx,4), %eax
	movl      %eax, 36(%esp)
	addl      %edx, %ecx
	notl      %ecx
	movl      52(%esp), %eax
	leal      (%eax,%ecx,4), %ecx
	cmpl      %ecx, 36(%esp)
	ja        LBB25_20
	movl      48(%esp), %ebp
	movl      $-2, %eax
	movl      56(%esp), %ecx
	xorl      %edx, %edx
	jmp       LBB25_23
LBB25_1:
	movl      %ebp, %ebx
	movl      4(%edi), %edi
	leal      -12(%edx), %ebp
	movl      L_bot$non_lazy_ptr-L25$pb(%esi), %eax
	movl      %edx, %ecx
	subl      (%eax), %ecx
	cmpl      $11, %ecx
	ja        LBB25_3
	movl      $14, (%esp)
	movl      %edx, %esi
	call      _pari_err
	movl      %esi, %edx
LBB25_3:
	movl      %ebp, (%ebx)
	movl      $738197507, -12(%edx)
	movl      %edi, -8(%edx)
	movl      $1, -4(%edx)
	jmp       LBB25_73
LBB25_5:
	movl      %ebp, 56(%esp)
	testl     %eax, %eax
	movl      88(%esp), %ecx
	js        LBB25_32
	movl      %edx, %ebp
	jmp       LBB25_33
LBB25_30:
	movl      %ebp, 56(%esp)
	testl     %eax, %eax
	movl      88(%esp), %ecx
	js        LBB25_32
	movl      %edx, %ebp
	jmp       LBB25_33
LBB25_32:
	movl      %edx, %ebp
	movl      %ecx, 4(%esp)
	movl      %edi, (%esp)
	movl      %ecx, %edi
	call      _F2xq_inv
	movl      %edi, %ecx
	movl      %eax, %edi
LBB25_33:
	leal      __F2xq_mul-L25$pb(%esi), %eax
	movl      %eax, 16(%esp)
	leal      __F2xq_sqr-L25$pb(%esi), %eax
	movl      %eax, 12(%esp)
	movl      %ecx, 8(%esp)
	movl      %ebx, 4(%esp)
	movl      %edi, (%esp)
	call      _gen_pow
	movl      L_bot$non_lazy_ptr-L25$pb(%esi), %ecx
	cmpl      (%ecx), %eax
	jb        LBB25_36
	cmpl      %eax, %ebp
	jbe       LBB25_36
	movl      L_top$non_lazy_ptr-L25$pb(%esi), %ecx
	cmpl      (%ecx), %eax
	jae       LBB25_36
	movl      %ebp, 52(%esp)
	movl      (%eax), %edi
	movl      %edi, %ecx
	shrl      $25, %ecx
	leal      -21(%ecx), %edx
	cmpl      $2, %edx
	jb        LBB25_57
	cmpl      $2, %ecx
	jne       LBB25_39
LBB25_57:
	movl      %edi, %ecx
	andl      $16777215, %ecx
	shll      $2, %ecx
	movl      52(%esp), %ebp
	subl      %ecx, %ebp
	movl      %edi, %edx
	andl      $16777215, %edx
	movl      56(%esp), %ecx
	movl      %ebp, (%ecx)
	je        LBB25_73
	movl      %ebp, 48(%esp)
	movl      %edi, %ecx
	movl      %edi, 56(%esp)
	orl       $-16777216, %ecx
	movl      %ecx, %edi
	xorl      $16777215, %edi
	cmpl      $-16777216, %ecx
	movl      $-2, %ebp
	cmove     %edi, %ebp
	leal      (%ebp,%edx), %ebx
	cmpl      $-2, %ebx
	jne       LBB25_60
	movl      48(%esp), %ebp
	movl      $-2, %ecx
	jmp       LBB25_67
LBB25_36:
	movl      56(%esp), %ecx
	movl      %ebp, (%ecx)
	movl      %eax, %ebp
LBB25_73:
	movl      %ebp, %eax
LBB25_74:
	addl      $60, %esp
	popl      %esi
	popl      %edi
	popl      %ebx
	popl      %ebp
	ret       
LBB25_9:
	movl      88(%esp), %eax
	movl      %eax, 4(%esp)
	movl      %edi, (%esp)
	call      _F2xq_inv
	jmp       LBB25_74
LBB25_39:
	cmpl      $1, %ecx
	jne       LBB25_75
	movl      4(%eax), %edi
	movl      %edi, 40(%esp)
	andl      $16777215, %edi
	movl      %edi, 44(%esp)
	leal      0(,%edi,4), %edx
	movl      52(%esp), %ebp
	subl      %edx, %ebp
	cmpl      $2, %edi
	jb        LBB25_56
	movl      40(%esp), %edx
	andl      $16777215, %edx
	movl      %edx, %ecx
	negl      %ecx
	cmpl      $-3, %ecx
	movl      $-2, %ebx
	cmovg     %ecx, %ebx
	addl      %edx, %ebx
	cmpl      $-1, %ebx
	movl      44(%esp), %edi
	je        LBB25_50
	incl      %ebx
	cmpl      $-3, %ecx
	movl      $-2, %edi
	cmovg     %ecx, %edi
	movl      %edi, 48(%esp)
	movl      %ecx, 32(%esp)
	xorl      %ecx, %ecx
	movl      %ebx, %edi
	andl      $-8, %edi
	je        LBB25_43
	movl      %edi, 28(%esp)
	movl      %ebx, 36(%esp)
	movl      48(%esp), %ebx
	movl      %ebx, %edi
	notl      %edi
	leal      (%eax,%edi,4), %edi
	movl      %edi, 24(%esp)
	movl      52(%esp), %edi
	leal      -4(%edi), %edi
	cmpl      24(%esp), %edi
	ja        LBB25_46
	leal      -4(%eax,%edx,4), %edi
	movl      %edi, 24(%esp)
	addl      %edx, %ebx
	notl      %ebx
	movl      52(%esp), %edi
	leal      (%edi,%ebx,4), %edi
	cmpl      %edi, 24(%esp)
	movl      44(%esp), %edi
	jbe       LBB25_49
LBB25_46:
	movl      %ebp, 48(%esp)
	movl      44(%esp), %ecx
	movl      %ecx, %edi
	subl      28(%esp), %edi
	movl      32(%esp), %ebp
	cmpl      $-3, %ebp
	movl      $-2, %ebx
	cmovg     %ebp, %ebx
	leal      1(%ebx,%edx), %ebx
	andl      $-8, %ebx
	movdqa    LCPI25_0-L25$pb(%esi), %xmm0
	movl      52(%esp), %ebp
LBB25_47:
	movd      %edx, %xmm1
	pshufd    $0, %xmm1, %xmm1
	paddd     %xmm0, %xmm1
	movd      %xmm1, %esi
	movups    -12(%eax,%esi,4), %xmm1
	movups    -28(%eax,%esi,4), %xmm2
	subl      %ecx, %esi
	movups    %xmm1, -12(%ebp,%esi,4)
	movups    %xmm2, -28(%ebp,%esi,4)
	addl      $-8, %edx
	addl      $-8, %ebx
	jne       LBB25_47
	movl      28(%esp), %ecx
	movl      48(%esp), %ebp
	jmp       LBB25_49
LBB25_60:
	addl      $2, %ebx
	cmpl      $-16777216, %ecx
	movl      $-2, %ecx
	cmovne    %ecx, %edi
	movl      $0, 44(%esp)
	movl      %ebx, %ecx
	andl      $-8, %ecx
	je        LBB25_66
	movl      %ecx, 36(%esp)
	movl      $-2, %ecx
	subl      %edi, %ecx
	leal      (%eax,%ecx,4), %ecx
	movl      %ecx, 40(%esp)
	movl      52(%esp), %ecx
	leal      -4(%ecx), %ecx
	cmpl      40(%esp), %ecx
	ja        LBB25_63
	leal      -4(%eax,%edx,4), %ecx
	movl      %ecx, 40(%esp)
	addl      %edx, %edi
	movl      $-2, %ecx
	subl      %edi, %ecx
	movl      52(%esp), %edi
	leal      (%edi,%ecx,4), %edi
	cmpl      %edi, 40(%esp)
	jbe       LBB25_66
LBB25_63:
	movl      %edx, %ecx
	subl      36(%esp), %ecx
	movl      %ecx, 44(%esp)
	leal      2(%ebp,%edx), %ebp
	andl      $-8, %ebp
	movdqa    LCPI25_0-L25$pb(%esi), %xmm0
	movl      %edx, %esi
	movl      52(%esp), %edi
	.align 4, 0x90
LBB25_64:
	movd      %esi, %xmm1
	pshufd    $0, %xmm1, %xmm1
	paddd     %xmm0, %xmm1
	movd      %xmm1, %ecx
	movups    -12(%eax,%ecx,4), %xmm1
	movups    -28(%eax,%ecx,4), %xmm2
	subl      %edx, %ecx
	movups    %xmm1, -12(%edi,%ecx,4)
	movups    %xmm2, -28(%edi,%ecx,4)
	addl      $-8, %esi
	addl      $-8, %ebp
	jne       LBB25_64
	movl      44(%esp), %edx
	movl      36(%esp), %ecx
	movl      %ecx, 44(%esp)
LBB25_66:
	cmpl      44(%esp), %ebx
	movl      48(%esp), %ebp
	movl      $-2, %ecx
	je        LBB25_73
LBB25_67:
	movl      %edx, %ebx
	notl      %ebx
	cmpl      $-3, %ebx
	cmovg     %ebx, %ecx
	movl      %ecx, %esi
	leal      2(%edx,%esi), %ecx
	leal      1(%edx,%esi), %esi
	testb     $3, %cl
	je        LBB25_70
	movl      56(%esp), %ecx
	notl      %ecx
	orl       $1056964608, %ecx
	movl      52(%esp), %edi
	leal      (%edi,%ecx,4), %edi
	cmpl      $-3, %ebx
	movl      $-2, %ecx
	cmovg     %ebx, %ecx
	leal      2(%edx,%ecx), %ebx
	andl      $3, %ebx
	negl      %ebx
	.align 4, 0x90
LBB25_69:
	movl      -4(%eax,%edx,4), %ecx
	movl      %ecx, (%edi,%edx,4)
	leal      -1(%edx), %edx
	incl      %ebx
	jne       LBB25_69
LBB25_70:
	cmpl      $3, %esi
	jb        LBB25_73
	incl      %edx
	movl      56(%esp), %esi
	andl      $16777215, %esi
	movl      $-4, %ecx
	subl      %esi, %ecx
	movl      52(%esp), %esi
	leal      (%esi,%ecx,4), %ecx
	.align 4, 0x90
LBB25_72:
	movl      -8(%eax,%edx,4), %esi
	movl      %esi, 8(%ecx,%edx,4)
	movl      -12(%eax,%edx,4), %esi
	movl      %esi, 4(%ecx,%edx,4)
	movl      -16(%eax,%edx,4), %esi
	movl      %esi, (%ecx,%edx,4)
	movl      -20(%eax,%edx,4), %esi
	movl      %esi, -4(%ecx,%edx,4)
	addl      $-4, %edx
	cmpl      $1, %edx
	jg        LBB25_72
	jmp       LBB25_73
LBB25_14:
	movl      48(%esp), %ebp
	jmp       LBB25_24
LBB25_75:
	andl      $16777215, %edi
	leal      (%eax,%edi,4), %ecx
	movl      %eax, 8(%esp)
	movl      52(%esp), %eax
	movl      %eax, (%esp)
	movl      %ecx, 4(%esp)
	call      _gerepile
	jmp       LBB25_74
LBB25_16:
	movl      48(%esp), %ebp
	movl      56(%esp), %ecx
	movl      $-2, %eax
	xorl      %edx, %edx
	jmp       LBB25_23
LBB25_20:
	movl      %ebx, %eax
	movl      40(%esp), %ecx
	subl      %ecx, %eax
	movl      %eax, 36(%esp)
	cmpl      $-3, %ebp
	movl      $-2, %eax
	cmovg     %ebp, %eax
	leal      1(%eax,%edx), %ebp
	andl      $-8, %ebp
	movdqa    LCPI25_0-L25$pb(%esi), %xmm0
	movl      52(%esp), %esi
	.align 4, 0x90
LBB25_21:
	movd      %edx, %xmm1
	pshufd    $0, %xmm1, %xmm1
	paddd     %xmm0, %xmm1
	movd      %xmm1, %eax
	movups    -12(%edi,%eax,4), %xmm1
	movups    -28(%edi,%eax,4), %xmm2
	subl      %ebx, %eax
	movups    %xmm1, -12(%esi,%eax,4)
	movups    %xmm2, -28(%esi,%eax,4)
	addl      $-8, %edx
	addl      $-8, %ebp
	jne       LBB25_21
	movl      36(%esp), %ebx
	movl      %ecx, %edx
	movl      48(%esp), %ebp
	movl      $-2, %eax
	movl      56(%esp), %ecx
LBB25_23:
	cmpl      %edx, %ecx
	je        LBB25_73
LBB25_24:
	movl      %ebx, %edx
	negl      %edx
	cmpl      $-3, %edx
	cmovg     %edx, %eax
	leal      (%ebx,%eax), %ecx
	leal      1(%ebx,%eax), %eax
	testb     $3, %al
	je        LBB25_27
	movl      44(%esp), %eax
	notl      %eax
	orl       $1056964608, %eax
	movl      52(%esp), %esi
	leal      (%esi,%eax,4), %eax
	cmpl      $-3, %edx
	movl      $-2, %esi
	cmovg     %edx, %esi
	leal      1(%ebx,%esi), %edx
	andl      $3, %edx
	negl      %edx
	.align 4, 0x90
LBB25_26:
	movl      -4(%edi,%ebx,4), %esi
	movl      %esi, (%eax,%ebx,4)
	leal      -1(%ebx), %ebx
	incl      %edx
	jne       LBB25_26
LBB25_27:
	cmpl      $3, %ecx
	jb        LBB25_73
	movl      44(%esp), %ecx
	notl      %ecx
	orl       $1056964608, %ecx
	movl      52(%esp), %eax
	leal      (%eax,%ecx,4), %eax
	.align 4, 0x90
LBB25_29:
	movl      -4(%edi,%ebx,4), %ecx
	movl      %ecx, (%eax,%ebx,4)
	movl      -8(%edi,%ebx,4), %ecx
	movl      %ecx, -4(%eax,%ebx,4)
	movl      -12(%edi,%ebx,4), %ecx
	movl      %ecx, -8(%eax,%ebx,4)
	movl      -16(%edi,%ebx,4), %ecx
	movl      %ecx, -12(%eax,%ebx,4)
	leal      -4(%ebx), %ebx
	cmpl      $1, %ebx
	jg        LBB25_29
	jmp       LBB25_73
LBB25_43:
	movl      %ebx, 36(%esp)
	movl      44(%esp), %edi
LBB25_49:
	cmpl      %ecx, 36(%esp)
	je        LBB25_56
LBB25_50:
	movl      %edi, %ebx
	negl      %ebx
	cmpl      $-3, %ebx
	movl      $-2, %edx
	cmovg     %ebx, %edx
	leal      (%edi,%edx), %ecx
	leal      1(%edi,%edx), %edx
	testb     $3, %dl
	je        LBB25_53
	movl      40(%esp), %edx
	notl      %edx
	orl       $1056964608, %edx
	movl      52(%esp), %esi
	leal      (%esi,%edx,4), %esi
	cmpl      $-3, %ebx
	movl      $-2, %edx
	cmovg     %ebx, %edx
	leal      1(%edi,%edx), %ebx
	andl      $3, %ebx
	negl      %ebx
LBB25_52:
	movl      -4(%eax,%edi,4), %edx
	movl      %edx, (%esi,%edi,4)
	leal      -1(%edi), %edi
	incl      %ebx
	jne       LBB25_52
LBB25_53:
	cmpl      $3, %ecx
	movl      40(%esp), %esi
	jb        LBB25_56
	notl      %esi
	orl       $1056964608, %esi
	movl      52(%esp), %edx
	leal      (%edx,%esi,4), %edx
LBB25_55:
	movl      -4(%eax,%edi,4), %esi
	movl      %esi, (%edx,%edi,4)
	movl      -8(%eax,%edi,4), %esi
	movl      %esi, -4(%edx,%edi,4)
	movl      -12(%eax,%edi,4), %esi
	movl      %esi, -8(%edx,%edi,4)
	movl      -16(%eax,%edi,4), %esi
	movl      %esi, -12(%edx,%edi,4)
	leal      -4(%edi), %edi
	cmpl      $1, %edi
	jg        LBB25_55
LBB25_56:
	movl      44(%esp), %eax
	orl       $33554432, %eax
	movl      %eax, (%ebp)
	movl      56(%esp), %eax
	movl      %ebp, (%eax)
	jmp       LBB25_73
	.align 4, 0x90
__F2xq_sqr:
	pushl     %esi
	subl      $8, %esp
	movl      16(%esp), %esi
	movl      20(%esp), %eax
	movl      %eax, (%esp)
	call      _F2x_sqr
	movl      %esi, 4(%esp)
	movl      %eax, (%esp)
	call      _F2x_rem
	addl      $8, %esp
	popl      %esi
	ret       
	.align 4, 0x90
__F2xq_mul:
	pushl     %ebx
	pushl     %edi
	pushl     %esi
	subl      $16, %esp
	movl      32(%esp), %esi
	movl      40(%esp), %edx
	movl      36(%esp), %edi
	leal      8(%edi), %ecx
	movl      $16777215, %eax
	movl      (%edi), %ebx
	andl      %eax, %ebx
	addl      $-2, %ebx
	andl      (%edx), %eax
	addl      $8, %edx
	addl      $-2, %eax
	movl      %eax, 4(%esp)
	movl      %ebx, (%esp)
	call      _F2x_mulspec
	movl      4(%edi), %ecx
	movl      %ecx, 4(%eax)
	movl      %esi, 4(%esp)
	movl      %eax, (%esp)
	call      _F2x_rem
	addl      $16, %esp
	popl      %esi
	popl      %edi
	popl      %ebx
	ret       
# ----------------------
	.align 4, 0x90
	.globl	_F2xq_powers
_F2xq_powers:
	pushl     %ebp
	pushl     %ebx
	pushl     %edi
	pushl     %esi
	subl      $60, %esp
	call      L28$pb
L28$pb:
	popl      %eax
	movl      %eax, 32(%esp)
	movl      84(%esp), %edx
	movl      %edx, 52(%esp)
	movl      L_avma$non_lazy_ptr-L28$pb(%eax), %ebx
	movl      (%ebx), %ecx
	movl      $-2, %esi
	subl      %edx, %esi
	movl      L_bot$non_lazy_ptr-L28$pb(%eax), %edi
	movl      %edi, 44(%esp)
	movl      %ecx, %eax
	subl      (%edi), %eax
	shrl      $2, %eax
	leal      2(%edx), %ebp
	movl      %esi, %edx
	cmpl      %ebp, %eax
	leal      (%ecx,%edx,4), %edi
	jae       LBB28_2
	movl      $14, (%esp)
	movl      %ecx, %esi
	movl      %ebp, 48(%esp)
	movl      %edx, %ebp
	call      _pari_err
	movl      %ebp, %edx
	movl      48(%esp), %ebp
	movl      %esi, %ecx
LBB28_2:
	movl      88(%esp), %esi
	movl      %edi, (%ebx)
	cmpl      $16777216, %ebp
	jb        LBB28_4
	movl      32(%esp), %eax
	leal      L_.str4-L28$pb(%eax), %eax
	movl      %eax, 4(%esp)
	movl      $15, (%esp)
	movl      %ecx, %esi
	movl      %ebp, 48(%esp)
	movl      %edx, %ebp
	call      _pari_err
	movl      %ebp, %edx
	movl      48(%esp), %ebp
	movl      %esi, %ecx
	movl      88(%esp), %esi
LBB28_4:
	movl      %ebp, 48(%esp)
	movl      %ebp, %eax
	orl       $570425344, %eax
	movl      %eax, (%edi)
	movl      %edi, 36(%esp)
	movl      4(%esi), %esi
	movl      (%ebx), %edi
	movl      %edi, %eax
	movl      44(%esp), %ebp
	subl      (%ebp), %eax
	cmpl      $11, %eax
	leal      -12(%edi), %ebp
	ja        LBB28_6
	movl      $14, (%esp)
	movl      %ecx, 40(%esp)
	movl      %edx, 56(%esp)
	call      _pari_err
	movl      56(%esp), %edx
	movl      40(%esp), %ecx
LBB28_6:
	movl      %ebp, (%ebx)
	movl      $738197507, -12(%edi)
	movl      %esi, -8(%edi)
	movl      $1, -4(%edi)
	movl      %ebp, 4(%ecx,%edx,4)
	cmpl      $0, 84(%esp)
	je        LBB28_51
	movl      %ecx, 40(%esp)
	movl      80(%esp), %eax
	movl      (%eax), %edi
	movl      %edi, 24(%esp)
	andl      $16777215, %edi
	movl      (%ebx), %esi
	leal      0(,%edi,4), %eax
	movl      %esi, %ecx
	subl      %eax, %ecx
	movl      %esi, %eax
	movl      44(%esp), %ebp
	subl      (%ebp), %eax
	shrl      $2, %eax
	cmpl      %edi, %eax
	jae       LBB28_9
	movl      $14, (%esp)
	movl      %edx, 56(%esp)
	movl      %ecx, %ebp
	call      _pari_err
	movl      %ebp, %ecx
	movl      56(%esp), %edx
LBB28_9:
	movl      %ecx, 28(%esp)
	movl      %ecx, (%ebx)
	movl      $-16777217, %eax
	movl      80(%esp), %ebx
	andl      (%ebx), %eax
	movl      %eax, (%ecx)
	cmpl      $2, %edi
	jb        LBB28_27
	movl      %edx, 56(%esp)
	movl      24(%esp), %edx
	andl      $16777215, %edx
	movl      %edx, %ebp
	negl      %ebp
	cmpl      $-3, %ebp
	movl      $-2, %eax
	movl      $-2, %ecx
	cmovg     %ebp, %ecx
	addl      %edx, %ecx
	cmpl      $-1, %ecx
	je        LBB28_11
	incl      %ecx
	cmpl      $-3, %ebp
	movl      $-2, %eax
	cmovg     %ebp, %eax
	movl      %ecx, %ebx
	andl      $-8, %ebx
	je        LBB28_13
	movl      %ebx, 16(%esp)
	movl      %ecx, 44(%esp)
	movl      %eax, %ebx
	notl      %ebx
	movl      80(%esp), %ecx
	leal      (%ecx,%ebx,4), %ebx
	movl      %ebx, 20(%esp)
	leal      -4(%esi), %ebx
	cmpl      20(%esp), %ebx
	ja        LBB28_17
	leal      -4(%ecx,%edx,4), %ebx
	addl      %edx, %eax
	notl      %eax
	leal      (%esi,%eax,4), %eax
	cmpl      %eax, %ebx
	ja        LBB28_17
	movl      56(%esp), %edx
	movl      %ecx, %ebx
	movl      $-2, %eax
	movl      44(%esp), %ecx
	xorl      %ebp, %ebp
	jmp       LBB28_20
LBB28_11:
	movl      56(%esp), %edx
	jmp       LBB28_21
LBB28_13:
	movl      56(%esp), %edx
	movl      80(%esp), %ebx
	movl      $-2, %eax
	xorl      %ebp, %ebp
	jmp       LBB28_20
LBB28_17:
	movl      %edi, %eax
	subl      16(%esp), %eax
	movl      %eax, 20(%esp)
	cmpl      $-3, %ebp
	movl      $-2, %eax
	cmovg     %ebp, %eax
	leal      1(%eax,%edx), %ebp
	andl      $-8, %ebp
	movl      32(%esp), %eax
	movdqa    LCPI28_0-L28$pb(%eax), %xmm0
	movl      %ecx, %ebx
	movl      44(%esp), %ecx
	.align 4, 0x90
LBB28_18:
	movd      %edx, %xmm1
	pshufd    $0, %xmm1, %xmm1
	paddd     %xmm0, %xmm1
	movd      %xmm1, %eax
	movups    -12(%ebx,%eax,4), %xmm1
	movups    -28(%ebx,%eax,4), %xmm2
	subl      %edi, %eax
	movups    %xmm1, -12(%esi,%eax,4)
	movups    %xmm2, -28(%esi,%eax,4)
	addl      $-8, %edx
	addl      $-8, %ebp
	jne       LBB28_18
	movl      20(%esp), %edi
	movl      16(%esp), %ebp
	movl      56(%esp), %edx
	movl      $-2, %eax
LBB28_20:
	cmpl      %ebp, %ecx
	je        LBB28_27
LBB28_21:
	movl      %edx, 56(%esp)
	movl      %edi, %edx
	negl      %edx
	cmpl      $-3, %edx
	cmovg     %edx, %eax
	leal      (%edi,%eax), %ecx
	leal      1(%edi,%eax), %eax
	testb     $3, %al
	je        LBB28_24
	movl      24(%esp), %eax
	notl      %eax
	orl       $1056964608, %eax
	leal      (%esi,%eax,4), %eax
	cmpl      $-3, %edx
	movl      %ebx, %ebp
	movl      $-2, %ebx
	cmovg     %edx, %ebx
	leal      1(%edi,%ebx), %edx
	movl      %ebp, %ebx
	andl      $3, %edx
	negl      %edx
	.align 4, 0x90
LBB28_23:
	movl      %ebx, %ebp
	movl      -4(%ebp,%edi,4), %ebx
	movl      %ebx, (%eax,%edi,4)
	movl      %ebp, %ebx
	leal      -1(%edi), %edi
	incl      %edx
	jne       LBB28_23
LBB28_24:
	cmpl      $3, %ecx
	movl      56(%esp), %edx
	jb        LBB28_27
	movl      24(%esp), %eax
	notl      %eax
	orl       $1056964608, %eax
	leal      (%esi,%eax,4), %eax
	.align 4, 0x90
LBB28_26:
	movl      -4(%ebx,%edi,4), %ecx
	movl      %ecx, (%eax,%edi,4)
	movl      -8(%ebx,%edi,4), %ecx
	movl      %ecx, -4(%eax,%edi,4)
	movl      -12(%ebx,%edi,4), %ecx
	movl      %ecx, -8(%eax,%edi,4)
	movl      -16(%ebx,%edi,4), %ecx
	movl      %ecx, -12(%eax,%edi,4)
	leal      -4(%edi), %edi
	cmpl      $1, %edi
	jg        LBB28_26
LBB28_27:
	movl      40(%esp), %eax
	movl      28(%esp), %ecx
	movl      %ecx, 8(%eax,%edx,4)
	cmpl      $1, 84(%esp)
	je        LBB28_51
	movl      %ebx, (%esp)
	movl      %eax, %esi
	movl      %edx, %edi
	movl      %edi, 56(%esp)
	call      _F2x_sqr
	movl      88(%esp), %ecx
	movl      %ecx, 4(%esp)
	movl      %eax, (%esp)
	call      _F2x_rem
	movl      %eax, 12(%esi,%edi,4)
	movl      %esi, %ebp
	movl      (%ebx), %eax
	movl      %eax, %edx
	andl      $16777215, %edx
	movl      $-2, %ecx
	cmpl      $2, %edx
	je        LBB28_34
	movl      -4(%ebx,%edx,4), %esi
	movl      %esi, %ecx
	shrl      $16, %ecx
	cmpl      $65535, %esi
	cmovbe    %esi, %ecx
	movl      $12, %edi
	movl      $28, %esi
	cmova     %edi, %esi
	cmpl      $256, %ecx
	jb        LBB28_31
	addl      $-8, %esi
	shrl      $8, %ecx
LBB28_31:
	shll      $5, %edx
	cmpl      $16, %ecx
	jb        LBB28_33
	addl      $-4, %esi
	shrl      $4, %ecx
LBB28_33:
	addl      $2147483583, %edx
	subl      %esi, %edx
	movl      32(%esp), %esi
	subl      _F2x_degree_lg.__bfffo_tabshi-L28$pb(%esi,%ecx,4), %edx
	addl      %edx, %edx
	movl      %edx, %ecx
LBB28_34:
	movl      $16777215, %edx
	movl      88(%esp), %esi
	andl      (%esi), %edx
	movl      $-1, %esi
	cmpl      $2, %edx
	je        LBB28_40
	movl      88(%esp), %esi
	movl      -4(%esi,%edx,4), %edi
	movl      %edi, %esi
	shrl      $16, %esi
	cmpl      $65535, %edi
	cmovbe    %edi, %esi
	movl      $12, %ebx
	movl      $28, %edi
	cmova     %ebx, %edi
	cmpl      $256, %esi
	jb        LBB28_37
	addl      $-8, %edi
	shrl      $8, %esi
LBB28_37:
	shll      $5, %edx
	cmpl      $16, %esi
	jb        LBB28_39
	addl      $-4, %edi
	shrl      $4, %esi
LBB28_39:
	addl      $-65, %edx
	subl      %edi, %edx
	movl      32(%esp), %edi
	subl      _F2x_degree_lg.__bfffo_tabshi-L28$pb(%edi,%esi,4), %edx
	movl      %edx, %esi
LBB28_40:
	cmpl      %esi, %ecx
	jge       LBB28_41
	cmpl      $5, 48(%esp)
	movl      %ebp, %ebx
	jl        LBB28_51
	movl      80(%esp), %edx
	leal      8(%edx), %edx
	movl      %edx, 56(%esp)
	movl      $1, %esi
	subl      84(%esp), %esi
	movl      $16777215, %edi
	jmp       LBB28_47
	.align 4, 0x90
LBB28_48:
	movl      80(%esp), %eax
	movl      (%eax), %eax
	incl      %esi
LBB28_47:
	movl      (%ebx,%esi,4), %ebp
	leal      8(%ebp), %ecx
	movl      (%ebp), %edx
	andl      %edi, %edx
	addl      $-2, %edx
	andl      $16777215, %eax
	addl      $-2, %eax
	movl      %eax, 4(%esp)
	movl      %edx, (%esp)
	movl      56(%esp), %edx
	call      _F2x_mulspec
	movl      4(%ebp), %ecx
	movl      %ecx, 4(%eax)
	movl      88(%esp), %ecx
	movl      %ecx, 4(%esp)
	movl      %eax, (%esp)
	call      _F2x_rem
	movl      %eax, 4(%ebx,%esi,4)
	cmpl      $-2, %esi
	jne       LBB28_48
	jmp       LBB28_51
LBB28_41:
	cmpl      $5, 48(%esp)
	movl      %ebp, %esi
	movl      56(%esp), %edi
	jl        LBB28_51
	leal      -1(%edi), %eax
	movl      %eax, 48(%esp)
	movl      80(%esp), %eax
	leal      8(%eax), %eax
	movl      %eax, 44(%esp)
	incl      52(%esp)
	movl      $4, %ebx
	.align 4, 0x90
LBB28_43:
	testb     $1, %bl
	jne       LBB28_44
	movl      48(%esp), %eax
	leal      (%eax,%ebx), %eax
	movl      (%esi,%eax,4), %ebp
	leal      8(%ebp), %ecx
	movl      (%ebp), %eax
	movl      $16777215, %edi
	andl      %edi, %eax
	addl      $-2, %eax
	movl      80(%esp), %edx
	movl      (%edx), %edx
	andl      %edi, %edx
	addl      $-2, %edx
	movl      %edx, 4(%esp)
	movl      %eax, (%esp)
	movl      44(%esp), %edx
	call      _F2x_mulspec
	movl      4(%ebp), %ecx
	movl      %ecx, 4(%eax)
	movl      88(%esp), %ecx
	movl      %ecx, 4(%esp)
	movl      %eax, (%esp)
	call      _F2x_rem
	movl      56(%esp), %edi
	leal      1(%ebx), %ebp
	jmp       LBB28_50
	.align 4, 0x90
LBB28_44:
	leal      1(%ebx), %ebp
	movl      %ebp, %eax
	shrl      $1, %eax
	addl      %edi, %eax
	movl      (%esi,%eax,4), %eax
	movl      %eax, (%esp)
	call      _F2x_sqr
	movl      88(%esp), %ecx
	movl      %ecx, 4(%esp)
	movl      %eax, (%esp)
	call      _F2x_rem
LBB28_50:
	leal      (%ebx,%edi), %ecx
	movl      %eax, (%esi,%ecx,4)
	cmpl      52(%esp), %ebx
	movl      %ebp, %ebx
	jne       LBB28_43
LBB28_51:
	movl      36(%esp), %eax
	addl      $60, %esp
	popl      %esi
	popl      %edi
	popl      %ebx
	popl      %ebp
	ret       
# ----------------------
	.align 4, 0x90
	.globl	_F2xq_matrix_pow
_F2xq_matrix_pow:
	pushl     %esi
	subl      $24, %esp
	movl      36(%esp), %esi
	movl      32(%esp), %eax
	movl      44(%esp), %ecx
	movl      40(%esp), %edx
	decl      %edx
	movl      %ecx, 8(%esp)
	movl      %edx, 4(%esp)
	movl      %eax, (%esp)
	call      _F2xq_powers
	movl      %esi, 4(%esp)
	movl      %eax, (%esp)
	call      _F2xV_to_F2m
	addl      $24, %esp
	popl      %esi
	ret       
# ----------------------
	.align 4, 0x90
	.globl	_F2xV_to_F2m
_F2xV_to_F2m:
	pushl     %ebp
	pushl     %ebx
	pushl     %edi
	pushl     %esi
	subl      $92, %esp
	call      L30$pb
L30$pb:
	popl      %edi
	movl      112(%esp), %eax
	movl      $16777215, %esi
	andl      (%eax), %esi
	movl      L_avma$non_lazy_ptr-L30$pb(%edi), %ebx
	movl      (%ebx), %ecx
	movl      %ecx, 72(%esp)
	leal      0(,%esi,4), %eax
	movl      %ecx, %ebp
	subl      %eax, %ebp
	movl      L_bot$non_lazy_ptr-L30$pb(%edi), %edx
	movl      %edx, 68(%esp)
	movl      %ecx, %eax
	subl      (%edx), %eax
	shrl      $2, %eax
	cmpl      %esi, %eax
	jae       LBB30_2
	movl      $14, (%esp)
	call      _pari_err
LBB30_2:
	movl      %ebx, 48(%esp)
	movl      %ebp, (%ebx)
	movl      %esi, 76(%esp)
	movl      %esi, %eax
	orl       $637534208, %eax
	movl      %eax, (%ebp)
	movl      %ebp, 32(%esp)
	cmpl      $2, %esi
	movl      %ebx, %esi
	jb        LBB30_60
	movl      116(%esp), %eax
	leal      95(%eax), %eax
	movl      %eax, %ecx
	shrl      $5, %ecx
	movl      %ecx, %edx
	negl      %edx
	movl      %edx, 64(%esp)
	movl      %ecx, %edx
	orl       $738197504, %edx
	movl      %edx, 60(%esp)
	movl      $1, %edx
	subl      %ecx, %edx
	movl      %edx, 56(%esp)
	movl      $2, %edx
	subl      %ecx, %edx
	movl      %edx, 36(%esp)
	cmpl      $536870911, %eax
	movl      %ecx, %eax
	notl      %eax
	movl      %eax, 28(%esp)
	movl      $1, %ebx
	movl      $12, %eax
	jbe       LBB30_4
	subl      %ecx, %eax
	movl      %eax, 12(%esp)
	movl      $3, %eax
	subl      %ecx, %eax
	movl      %eax, 24(%esp)
	movl      %ecx, 88(%esp)
	movl      $1, %ebx
	leal      L_.str4-L30$pb(%edi), %eax
	movl      %eax, 44(%esp)
	.align 4, 0x90
LBB30_12:
	movl      %ebx, 52(%esp)
	movl      112(%esp), %eax
	movl      (%eax,%ebx,4), %ebx
	movl      (%ebx), %edi
	andl      $16777215, %edi
	movl      (%esi), %edx
	movl      %edx, 84(%esp)
	movl      %edx, %eax
	movl      68(%esp), %ecx
	subl      (%ecx), %eax
	shrl      $2, %eax
	cmpl      88(%esp), %eax
	movl      64(%esp), %eax
	leal      (%edx,%eax,4), %eax
	jae       LBB30_14
	movl      $14, (%esp)
	movl      %eax, %ebp
	call      _pari_err
	movl      %ebp, %eax
LBB30_14:
	movl      %eax, 80(%esp)
	movl      %eax, (%esi)
	movl      %eax, %ebp
	movl      44(%esp), %eax
	movl      %eax, 4(%esp)
	movl      $15, (%esp)
	call      _pari_err
	movl      60(%esp), %eax
	movl      %eax, (%ebp)
	movl      116(%esp), %eax
	movl      56(%esp), %ecx
	movl      84(%esp), %edx
	movl      %eax, (%edx,%ecx,4)
	movl      $2, %eax
	cmpl      $3, %edi
	jb        LBB30_36
	movl      $3, %eax
	cmova     %edi, %eax
	movl      $2, %edx
	cmpl      $2, %eax
	je        LBB30_28
	leal      -2(%eax), %ecx
	movl      %eax, 40(%esp)
	andl      $-4, %ecx
	orl       $2, %ecx
	cmpl      $3, %edi
	movl      $3, %eax
	cmova     %edi, %eax
	cmpl      $2, %ecx
	movl      $2, %edx
	je        LBB30_27
	movl      %ecx, 20(%esp)
	leal      -4(%ebx,%eax,4), %ebp
	movl      36(%esp), %ecx
	movl      84(%esp), %esi
	leal      (%esi,%ecx,4), %ecx
	cmpl      %ebp, %ecx
	ja        LBB30_19
	leal      8(%ebx), %ebp
	addl      28(%esp), %eax
	movl      84(%esp), %esi
	leal      (%esi,%eax,4), %eax
	cmpl      %eax, %ebp
	jbe       LBB30_27
LBB30_19:
	cmpl      $3, %edi
	movl      $3, %edx
	cmova     %edi, %edx
	addl      $-2, %edx
	andl      $-4, %edx
	addl      $-4, %edx
	shrl      $2, %edx
	leal      1(%edx), %eax
	movl      $2, %esi
	testb     $3, %al
	je        LBB30_23
	movl      %edx, 16(%esp)
	cmpl      $3, %edi
	movl      $3, %eax
	cmova     %edi, %eax
	addl      $-2, %eax
	andl      $12, %eax
	addl      $-4, %eax
	shrl      $2, %eax
	incl      %eax
	andl      $3, %eax
	negl      %eax
	xorl      %edx, %edx
	.align 4, 0x90
LBB30_21:
	movl      %edx, %esi
	movups    8(%ebx,%esi,4), %xmm0
	movups    %xmm0, (%ecx,%esi,4)
	leal      4(%esi), %edx
	incl      %eax
	jne       LBB30_21
	addl      $6, %esi
	movl      16(%esp), %edx
LBB30_23:
	cmpl      $3, %edx
	jb        LBB30_26
	movl      12(%esp), %eax
	movl      84(%esp), %ecx
	leal      (%ecx,%eax,4), %eax
	leal      (%eax,%esi,4), %ecx
	cmpl      $3, %edi
	movl      $3, %eax
	cmova     %edi, %eax
	addl      $-2, %eax
	andl      $-4, %eax
	orl       $2, %eax
	subl      %esi, %eax
	leal      48(%ebx,%esi,4), %edx
	.align 4, 0x90
LBB30_25:
	movups    -48(%edx), %xmm0
	movups    %xmm0, -48(%ecx)
	movups    -32(%edx), %xmm0
	movups    %xmm0, -32(%ecx)
	movups    -16(%edx), %xmm0
	movups    %xmm0, -16(%ecx)
	movups    (%edx), %xmm0
	movups    %xmm0, (%ecx)
	addl      $64, %ecx
	addl      $64, %edx
	addl      $-16, %eax
	jne       LBB30_25
LBB30_26:
	movl      20(%esp), %edx
LBB30_27:
	cmpl      %edx, 40(%esp)
	movl      48(%esp), %esi
	je        LBB30_35
LBB30_28:
	leal      1(%edx), %ecx
	cmpl      %edi, %ecx
	movl      %edi, %ebp
	cmovge    %ecx, %ebp
	movl      %ebp, %eax
	subl      %edx, %eax
	decl      %ebp
	subl      %edx, %ebp
	testb     $3, %al
	je        LBB30_29
	cmpl      %edi, %ecx
	cmovl     %edi, %ecx
	subl      %edx, %ecx
	andl      $3, %ecx
	negl      %ecx
	movl      80(%esp), %eax
	.align 4, 0x90
LBB30_31:
	movl      (%ebx,%edx,4), %esi
	movl      %esi, (%eax,%edx,4)
	incl      %edx
	incl      %ecx
	jne       LBB30_31
	jmp       LBB30_32
LBB30_29:
	movl      80(%esp), %eax
LBB30_32:
	movl      %eax, 80(%esp)
	cmpl      $3, %ebp
	movl      48(%esp), %esi
	jb        LBB30_35
	movl      24(%esp), %eax
	movl      84(%esp), %ecx
	leal      (%ecx,%eax,4), %eax
	.align 4, 0x90
LBB30_34:
	movl      (%ebx,%edx,4), %ecx
	movl      %ecx, -12(%eax,%edx,4)
	movl      4(%ebx,%edx,4), %ecx
	movl      %ecx, -8(%eax,%edx,4)
	movl      8(%ebx,%edx,4), %ecx
	movl      %ecx, -4(%eax,%edx,4)
	movl      12(%ebx,%edx,4), %ecx
	movl      %ecx, (%eax,%edx,4)
	addl      $4, %edx
	cmpl      %edi, %edx
	jl        LBB30_34
LBB30_35:
	cmpl      $3, %edi
	movl      $3, %eax
	cmovbe    %eax, %edi
	movl      %edi, %eax
LBB30_36:
	movl      %eax, %ecx
	movl      88(%esp), %edx
	subl      %edx, %ecx
	jge       LBB30_38
	movl      84(%esp), %edi
	leal      (%edi,%ecx,4), %ecx
	subl      %eax, %edx
	shll      $2, %edx
	movl      %edx, 4(%esp)
	movl      %ecx, (%esp)
	call      ___bzero
LBB30_38:
	movl      52(%esp), %ebx
	movl      %ebx, %eax
	movl      76(%esp), %ecx
	subl      %ecx, %eax
	movl      72(%esp), %edx
	movl      80(%esp), %edi
	movl      %edi, (%edx,%eax,4)
	incl      %ebx
	cmpl      %ecx, %ebx
	jl        LBB30_12
	jmp       LBB30_60
LBB30_4:
	subl      %ecx, %eax
	movl      %eax, 16(%esp)
	movl      $3, %eax
	subl      %ecx, %eax
	movl      %eax, 40(%esp)
	movl      %ecx, 88(%esp)
	.align 4, 0x90
LBB30_5:
	movl      %ebx, 52(%esp)
	movl      112(%esp), %eax
	movl      (%eax,%ebx,4), %edi
	movl      (%edi), %ebx
	andl      $16777215, %ebx
	movl      (%esi), %edx
	movl      %edx, 84(%esp)
	movl      %edx, %eax
	movl      68(%esp), %ecx
	subl      (%ecx), %eax
	shrl      $2, %eax
	cmpl      88(%esp), %eax
	movl      64(%esp), %eax
	leal      (%edx,%eax,4), %eax
	jae       LBB30_7
	movl      $14, (%esp)
	movl      %eax, %ebp
	call      _pari_err
	movl      %ebp, %eax
LBB30_7:
	movl      %eax, 80(%esp)
	movl      %eax, (%esi)
	movl      %eax, %ecx
	movl      60(%esp), %eax
	movl      %eax, (%ecx)
	movl      116(%esp), %eax
	movl      56(%esp), %ecx
	movl      84(%esp), %edx
	movl      %eax, (%edx,%ecx,4)
	movl      $2, %eax
	cmpl      $3, %ebx
	jb        LBB30_57
	movl      $3, %eax
	cmova     %ebx, %eax
	movl      $2, %edx
	cmpl      $2, %eax
	je        LBB30_9
	leal      -2(%eax), %ecx
	movl      %eax, 44(%esp)
	andl      $-4, %ecx
	orl       $2, %ecx
	cmpl      $3, %ebx
	movl      $3, %eax
	cmova     %ebx, %eax
	cmpl      $2, %ecx
	movl      $2, %edx
	je        LBB30_55
	movl      %ecx, 24(%esp)
	leal      -4(%edi,%eax,4), %ebp
	movl      36(%esp), %ecx
	movl      84(%esp), %esi
	leal      (%esi,%ecx,4), %ecx
	cmpl      %ebp, %ecx
	ja        LBB30_47
	leal      8(%edi), %ebp
	addl      28(%esp), %eax
	movl      84(%esp), %esi
	leal      (%esi,%eax,4), %eax
	cmpl      %eax, %ebp
	jbe       LBB30_55
LBB30_47:
	cmpl      $3, %ebx
	movl      $3, %edx
	cmova     %ebx, %edx
	addl      $-2, %edx
	andl      $-4, %edx
	addl      $-4, %edx
	shrl      $2, %edx
	leal      1(%edx), %eax
	movl      $2, %esi
	testb     $3, %al
	je        LBB30_51
	movl      %edx, 20(%esp)
	cmpl      $3, %ebx
	movl      $3, %eax
	cmova     %ebx, %eax
	addl      $-2, %eax
	andl      $12, %eax
	addl      $-4, %eax
	shrl      $2, %eax
	incl      %eax
	andl      $3, %eax
	negl      %eax
	xorl      %edx, %edx
	.align 4, 0x90
LBB30_49:
	movl      %edx, %esi
	movups    8(%edi,%esi,4), %xmm0
	movups    %xmm0, (%ecx,%esi,4)
	leal      4(%esi), %edx
	incl      %eax
	jne       LBB30_49
	addl      $6, %esi
	movl      20(%esp), %edx
LBB30_51:
	cmpl      $3, %edx
	jb        LBB30_54
	movl      16(%esp), %eax
	movl      84(%esp), %ecx
	leal      (%ecx,%eax,4), %eax
	leal      (%eax,%esi,4), %ecx
	cmpl      $3, %ebx
	movl      $3, %eax
	cmova     %ebx, %eax
	addl      $-2, %eax
	andl      $-4, %eax
	orl       $2, %eax
	subl      %esi, %eax
	leal      48(%edi,%esi,4), %edx
	.align 4, 0x90
LBB30_53:
	movups    -48(%edx), %xmm0
	movups    %xmm0, -48(%ecx)
	movups    -32(%edx), %xmm0
	movups    %xmm0, -32(%ecx)
	movups    -16(%edx), %xmm0
	movups    %xmm0, -16(%ecx)
	movups    (%edx), %xmm0
	movups    %xmm0, (%ecx)
	addl      $64, %ecx
	addl      $64, %edx
	addl      $-16, %eax
	jne       LBB30_53
LBB30_54:
	movl      24(%esp), %edx
LBB30_55:
	cmpl      %edx, 44(%esp)
	movl      48(%esp), %esi
	je        LBB30_56
LBB30_9:
	leal      1(%edx), %ecx
	cmpl      %ebx, %ecx
	movl      %ebx, %ebp
	cmovge    %ecx, %ebp
	movl      %ebp, %eax
	subl      %edx, %eax
	decl      %ebp
	subl      %edx, %ebp
	testb     $3, %al
	je        LBB30_10
	cmpl      %ebx, %ecx
	cmovl     %ebx, %ecx
	subl      %edx, %ecx
	andl      $3, %ecx
	negl      %ecx
	movl      80(%esp), %eax
	.align 4, 0x90
LBB30_40:
	movl      (%edi,%edx,4), %esi
	movl      %esi, (%eax,%edx,4)
	incl      %edx
	incl      %ecx
	jne       LBB30_40
	jmp       LBB30_41
LBB30_10:
	movl      80(%esp), %eax
LBB30_41:
	movl      %eax, 80(%esp)
	cmpl      $3, %ebp
	movl      48(%esp), %esi
	jb        LBB30_56
	movl      40(%esp), %eax
	movl      84(%esp), %ecx
	leal      (%ecx,%eax,4), %eax
	.align 4, 0x90
LBB30_43:
	movl      (%edi,%edx,4), %ecx
	movl      %ecx, -12(%eax,%edx,4)
	movl      4(%edi,%edx,4), %ecx
	movl      %ecx, -8(%eax,%edx,4)
	movl      8(%edi,%edx,4), %ecx
	movl      %ecx, -4(%eax,%edx,4)
	movl      12(%edi,%edx,4), %ecx
	movl      %ecx, (%eax,%edx,4)
	addl      $4, %edx
	cmpl      %ebx, %edx
	jl        LBB30_43
LBB30_56:
	cmpl      $3, %ebx
	movl      $3, %eax
	cmovbe    %eax, %ebx
	movl      %ebx, %eax
LBB30_57:
	movl      %eax, %ecx
	movl      88(%esp), %edx
	subl      %edx, %ecx
	jge       LBB30_59
	movl      84(%esp), %edi
	leal      (%edi,%ecx,4), %ecx
	subl      %eax, %edx
	shll      $2, %edx
	movl      %edx, 4(%esp)
	movl      %ecx, (%esp)
	call      ___bzero
LBB30_59:
	movl      52(%esp), %ebx
	movl      %ebx, %eax
	movl      76(%esp), %ecx
	subl      %ecx, %eax
	movl      72(%esp), %edx
	movl      80(%esp), %edi
	movl      %edi, (%edx,%eax,4)
	incl      %ebx
	cmpl      %ecx, %ebx
	jl        LBB30_5
LBB30_60:
	movl      32(%esp), %eax
	addl      $92, %esp
	popl      %esi
	popl      %edi
	popl      %ebx
	popl      %ebp
	ret       
# ----------------------
	.align 4, 0x90
	.globl	_F2xq_trace
_F2xq_trace:
	pushl     %ebp
	pushl     %ebx
	pushl     %edi
	pushl     %esi
	subl      $44, %esp
	call      L31$pb
L31$pb:
	popl      %ecx
	movl      %ecx, 20(%esp)
	movl      68(%esp), %edi
	movl      L_avma$non_lazy_ptr-L31$pb(%ecx), %eax
	movl      %eax, 40(%esp)
	movl      (%eax), %ebx
	movl      (%edi), %esi
	andl      $16777215, %esi
	leal      0(,%esi,4), %eax
	movl      %ebx, %ebp
	subl      %eax, %ebp
	movl      L_bot$non_lazy_ptr-L31$pb(%ecx), %ecx
	movl      %ecx, 36(%esp)
	movl      %ebx, %eax
	subl      (%ecx), %eax
	shrl      $2, %eax
	cmpl      %esi, %eax
	jae       LBB31_2
	movl      $14, (%esp)
	call      _pari_err
LBB31_2:
	movl      %ebp, 32(%esp)
	movl      40(%esp), %ecx
	movl      %ebp, (%ecx)
	movl      %esi, %eax
	orl       $738197504, %eax
	movl      %eax, (%ebp)
	movl      %ecx, %ebp
	movl      4(%edi), %eax
	movl      $1, %ecx
	subl      %esi, %ecx
	movl      %eax, (%ebx,%ecx,4)
	movl      %ebx, 28(%esp)
	movl      64(%esp), %ebx
	cmpl      $3, %esi
	jb        LBB31_17
	movl      $3, %eax
	cmova     %esi, %eax
	movl      $2, %edx
	cmpl      $2, %eax
	je        LBB31_11
	leal      -2(%eax), %ecx
	andl      $-8, %ecx
	orl       $2, %ecx
	movl      %ecx, 24(%esp)
	leal      -1(%esi), %ebx
	cmpl      $3, %esi
	movl      $2, %edx
	cmovbe    %edx, %ebx
	cmpl      $2, %ecx
	je        LBB31_10
	leal      (%edi,%ebx,4), %ecx
	movl      %ecx, 16(%esp)
	movl      $2, %edx
	movl      $2, %ebp
	subl      %esi, %ebp
	movl      28(%esp), %ecx
	leal      (%ecx,%ebp,4), %ebp
	cmpl      16(%esp), %ebp
	ja        LBB31_7
	leal      8(%edi), %ecx
	subl      %esi, %ebx
	movl      28(%esp), %ebp
	leal      (%ebp,%ebx,4), %ebx
	cmpl      %ebx, %ecx
	jbe       LBB31_10
LBB31_7:
	movl      $6, %edx
	subl      %esi, %edx
	movl      28(%esp), %ecx
	leal      (%ecx,%edx,4), %edx
	leal      24(%edi), %ebx
	cmpl      $3, %esi
	movl      $3, %ebp
	cmova     %esi, %ebp
	addl      $-2, %ebp
	andl      $-8, %ebp
	movl      20(%esp), %ecx
	movdqa    LCPI31_0-L31$pb(%ecx), %xmm0
	.align 4, 0x90
LBB31_8:
	movdqu    -16(%ebx), %xmm1
	movdqu    (%ebx), %xmm2
	psrld     $1, %xmm1
	psrld     $1, %xmm2
	pand      %xmm0, %xmm1
	pand      %xmm0, %xmm2
	movdqu    %xmm1, -16(%edx)
	movdqu    %xmm2, (%edx)
	addl      $32, %edx
	addl      $32, %ebx
	addl      $-8, %ebp
	jne       LBB31_8
	movl      24(%esp), %edx
LBB31_10:
	cmpl      %edx, %eax
	movl      40(%esp), %ebp
	movl      64(%esp), %ebx
	je        LBB31_17
LBB31_11:
	leal      1(%edx), %eax
	cmpl      %esi, %eax
	movl      %esi, %ecx
	cmovge    %eax, %ecx
	movl      %ecx, %ebx
	subl      %edx, %ebx
	decl      %ecx
	subl      %edx, %ecx
	testb     $1, %bl
	je        LBB31_12
	movl      (%edi,%edx,4), %ebx
	shrl      $1, %ebx
	andl      $1431655765, %ebx
	subl      %esi, %edx
	movl      28(%esp), %edi
	movl      %ebx, (%edi,%edx,4)
	jmp       LBB31_14
LBB31_12:
	movl      %edx, %eax
LBB31_14:
	movl      64(%esp), %ebx
	testl     %ecx, %ecx
	movl      68(%esp), %edi
	je        LBB31_17
	movl      $1, %ecx
	subl      %esi, %ecx
	movl      28(%esp), %edx
	leal      (%edx,%ecx,4), %ecx
	.align 4, 0x90
LBB31_16:
	movl      (%edi,%eax,4), %edx
	shrl      $1, %edx
	andl      $1431655765, %edx
	movl      %edx, -4(%ecx,%eax,4)
	movl      4(%edi,%eax,4), %edx
	shrl      $1, %edx
	andl      $1431655765, %edx
	movl      %edx, (%ecx,%eax,4)
	addl      $2, %eax
	cmpl      %esi, %eax
	jl        LBB31_16
LBB31_17:
	movl      %esi, 4(%esp)
	movl      32(%esp), %eax
	movl      %eax, (%esp)
	call      _Flx_renormalize
	leal      8(%ebx), %ecx
	movl      $16777215, %esi
	movl      (%ebx), %edi
	andl      %esi, %edi
	addl      $-2, %edi
	andl      (%eax), %esi
	leal      8(%eax), %edx
	addl      $-2, %esi
	movl      %esi, 4(%esp)
	movl      %edi, (%esp)
	call      _F2x_mulspec
	movl      %eax, %esi
	movl      4(%ebx), %eax
	movl      %eax, 4(%esi)
	movl      (%esi), %edi
	movl      %edi, %ebx
	andl      $16777215, %ebx
	movl      (%ebp), %ebp
	movl      %ebp, %eax
	movl      36(%esp), %ecx
	subl      (%ecx), %eax
	leal      1(%ebx), %ecx
	movl      %ecx, 36(%esp)
	orl       $-16777216, %edi
	xorl      $16777215, %edi
	shrl      $2, %eax
	cmpl      %ecx, %eax
	leal      (%ebp,%edi,4), %eax
	movl      %eax, 32(%esp)
	jae       LBB31_19
	movl      $14, (%esp)
	call      _pari_err
LBB31_19:
	movl      40(%esp), %eax
	movl      32(%esp), %ecx
	movl      %ecx, (%eax)
	cmpl      $16777216, 36(%esp)
	jb        LBB31_21
	movl      20(%esp), %eax
	leal      L_.str4-L31$pb(%eax), %eax
	movl      %eax, 4(%esp)
	movl      $15, (%esp)
	call      _pari_err
LBB31_21:
	movl      36(%esp), %eax
	orl       $738197504, %eax
	movl      %ebp, 24(%esp)
	movl      %eax, (%ebp,%edi,4)
	movl      $0, 8(%ebp,%edi,4)
	movl      $2, %eax
	cmpl      $3, %ebx
	movl      $0, %ecx
	movl      40(%esp), %ebp
	jb        LBB31_29
	cmpl      $2, %ebx
	movl      $3, %eax
	movl      $3, %edx
	cmovg     %ebx, %edx
	leal      -2(%edx), %ecx
	addl      $-3, %edx
	testb     $1, %cl
	je        LBB31_23
	movl      8(%esi), %ecx
	addl      %ecx, %ecx
	movl      24(%esp), %ebp
	movl      %ecx, 8(%ebp,%edi,4)
	movl      8(%esi), %ecx
	shrl      $31, %ecx
	jmp       LBB31_25
LBB31_23:
	movl      $2, %eax
	xorl      %ecx, %ecx
LBB31_25:
	testl     %edx, %edx
	je        LBB31_28
	movl      24(%esp), %edx
	leal      4(%edx,%edi,4), %edx
	.align 4, 0x90
LBB31_27:
	movl      (%esi,%eax,4), %ebp
	addl      %ebp, %ebp
	orl       %ecx, %ebp
	movl      %ebp, -4(%edx,%eax,4)
	movl      (%esi,%eax,4), %ecx
	movl      4(%esi,%eax,4), %ebp
	shldl     $1, %ecx, %ebp
	movl      %ebp, (%edx,%eax,4)
	movl      4(%esi,%eax,4), %ecx
	shrl      $31, %ecx
	addl      $2, %eax
	cmpl      %ebx, %eax
	jl        LBB31_27
LBB31_28:
	cmpl      $3, %ebx
	movl      $3, %eax
	cmova     %ebx, %eax
	movl      40(%esp), %ebp
LBB31_29:
	addl      %edi, %eax
	movl      24(%esp), %edx
	movl      %ecx, (%edx,%eax,4)
	movl      36(%esp), %eax
	movl      %eax, 4(%esp)
	movl      32(%esp), %eax
	movl      %eax, (%esp)
	call      _Flx_renormalize
	movl      68(%esp), %ecx
	movl      %ecx, 4(%esp)
	movl      %eax, (%esp)
	movl      $0, 8(%esp)
	call      _F2x_divrem
	movl      $16777215, %ecx
	andl      (%eax), %ecx
	cmpl      $2, %ecx
	movl      $0, %ecx
	je        LBB31_31
	movl      8(%eax), %ecx
	andl      $1, %ecx
LBB31_31:
	movl      28(%esp), %eax
	movl      %eax, (%ebp)
	movl      %ecx, %eax
	addl      $44, %esp
	popl      %esi
	popl      %edi
	popl      %ebx
	popl      %ebp
	ret       
# ----------------------
	.align 4, 0x90
	.globl	_F2xq_conjvec
_F2xq_conjvec:
	pushl     %ebp
	pushl     %ebx
	pushl     %edi
	pushl     %esi
	subl      $44, %esp
	call      L32$pb
L32$pb:
	popl      %esi
	movl      68(%esp), %ecx
	movl      $16777215, %eax
	andl      (%ecx), %eax
	movl      $-1, %edx
	cmpl      $2, %eax
	je        LBB32_6
	movl      %esi, %edi
	movl      -4(%ecx,%eax,4), %edx
	movl      %edx, %ecx
	shrl      $16, %ecx
	cmpl      $65535, %edx
	cmovbe    %edx, %ecx
	movl      $12, %esi
	movl      $28, %edx
	cmova     %esi, %edx
	cmpl      $256, %ecx
	jb        LBB32_3
	addl      $-8, %edx
	shrl      $8, %ecx
LBB32_3:
	movl      %edi, %esi
	shll      $5, %eax
	cmpl      $16, %ecx
	jb        LBB32_5
	addl      $-4, %edx
	shrl      $4, %ecx
LBB32_5:
	addl      $-65, %eax
	subl      %edx, %eax
	subl      _F2x_degree_lg.__bfffo_tabshi-L32$pb(%esi,%ecx,4), %eax
	movl      %eax, %edx
LBB32_6:
	movl      %esi, 12(%esp)
	movl      L_avma$non_lazy_ptr-L32$pb(%esi), %ebp
	movl      (%ebp), %ebx
	leal      0(,%edx,4), %eax
	movl      %ebx, %edi
	subl      %eax, %edi
	movl      L_bot$non_lazy_ptr-L32$pb(%esi), %ecx
	movl      %ecx, 28(%esp)
	movl      %ebx, %eax
	subl      (%ecx), %eax
	shrl      $2, %eax
	cmpl      %edx, %eax
	jae       LBB32_8
	movl      $14, (%esp)
	movl      %edx, %esi
	call      _pari_err
	movl      %esi, %edx
LBB32_8:
	movl      64(%esp), %esi
	movl      %edi, (%ebp)
	cmpl      $16777216, %edx
	jb        LBB32_10
	movl      12(%esp), %eax
	leal      L_.str4-L32$pb(%eax), %eax
	movl      %eax, 4(%esp)
	movl      $15, (%esp)
	movl      %edx, 40(%esp)
	call      _pari_err
	movl      40(%esp), %edx
LBB32_10:
	movl      %edx, %eax
	orl       $603979776, %eax
	movl      %eax, (%edi)
	movl      %edi, 32(%esp)
	movl      (%esi), %edi
	movl      %edi, 20(%esp)
	andl      $16777215, %edi
	movl      %ebp, 24(%esp)
	movl      (%ebp), %ebp
	movl      %ebp, 16(%esp)
	leal      0(,%edi,4), %eax
	movl      %ebp, %ecx
	subl      %eax, %ecx
	movl      %ebp, %eax
	movl      28(%esp), %ebp
	subl      (%ebp), %eax
	shrl      $2, %eax
	cmpl      %edi, %eax
	jae       LBB32_12
	movl      $14, (%esp)
	movl      %edx, 40(%esp)
	movl      %ecx, 36(%esp)
	call      _pari_err
	movl      36(%esp), %ecx
	movl      40(%esp), %edx
LBB32_12:
	movl      %ecx, 36(%esp)
	movl      24(%esp), %eax
	movl      %ecx, (%eax)
	movl      $-16777217, %eax
	andl      (%esi), %eax
	movl      %eax, (%ecx)
	cmpl      $2, %edi
	jb        LBB32_29
	movl      %edx, 40(%esp)
	movl      20(%esp), %edx
	andl      $16777215, %edx
	movl      %edx, %ebp
	negl      %ebp
	cmpl      $-3, %ebp
	movl      $-2, %eax
	movl      $-2, %ecx
	cmovg     %ebp, %ecx
	addl      %edx, %ecx
	cmpl      $-1, %ecx
	je        LBB32_14
	incl      %ecx
	movl      %ecx, 28(%esp)
	cmpl      $-3, %ebp
	movl      %ecx, %eax
	movl      $-2, %ecx
	cmovg     %ebp, %ecx
	andl      $-8, %eax
	je        LBB32_16
	movl      %eax, 24(%esp)
	movl      %ecx, %eax
	notl      %eax
	leal      (%esi,%eax,4), %eax
	movl      %eax, 8(%esp)
	movl      16(%esp), %eax
	leal      -4(%eax), %eax
	cmpl      8(%esp), %eax
	ja        LBB32_19
	leal      -4(%esi,%edx,4), %eax
	movl      %eax, 8(%esp)
	addl      %edx, %ecx
	notl      %ecx
	movl      16(%esp), %eax
	leal      (%eax,%ecx,4), %ecx
	cmpl      %ecx, 8(%esp)
	ja        LBB32_19
LBB32_16:
	movl      $-2, %eax
	xorl      %ecx, %ecx
	jmp       LBB32_22
LBB32_14:
	movl      40(%esp), %edx
	jmp       LBB32_23
LBB32_19:
	movl      %edi, %eax
	subl      24(%esp), %eax
	movl      %eax, 8(%esp)
	cmpl      $-3, %ebp
	movl      $-2, %eax
	cmovg     %ebp, %eax
	leal      1(%eax,%edx), %ebp
	andl      $-8, %ebp
	movl      12(%esp), %eax
	movdqa    LCPI32_0-L32$pb(%eax), %xmm0
	movl      16(%esp), %ecx
	.align 4, 0x90
LBB32_20:
	movd      %edx, %xmm1
	pshufd    $0, %xmm1, %xmm1
	paddd     %xmm0, %xmm1
	movd      %xmm1, %eax
	movups    -12(%esi,%eax,4), %xmm1
	movups    -28(%esi,%eax,4), %xmm2
	subl      %edi, %eax
	movups    %xmm1, -12(%ecx,%eax,4)
	movups    %xmm2, -28(%ecx,%eax,4)
	addl      $-8, %edx
	addl      $-8, %ebp
	jne       LBB32_20
	movl      8(%esp), %edi
	movl      24(%esp), %ecx
	movl      $-2, %eax
LBB32_22:
	cmpl      %ecx, 28(%esp)
	movl      40(%esp), %edx
	je        LBB32_29
LBB32_23:
	movl      %edx, 40(%esp)
	movl      %edi, %edx
	negl      %edx
	cmpl      $-3, %edx
	cmovg     %edx, %eax
	leal      (%edi,%eax), %ecx
	leal      1(%edi,%eax), %eax
	testb     $3, %al
	je        LBB32_26
	movl      20(%esp), %eax
	notl      %eax
	orl       $1056964608, %eax
	movl      16(%esp), %ebp
	leal      (%ebp,%eax,4), %eax
	cmpl      $-3, %edx
	movl      $-2, %ebp
	cmovg     %edx, %ebp
	leal      1(%edi,%ebp), %edx
	andl      $3, %edx
	negl      %edx
	.align 4, 0x90
LBB32_25:
	movl      -4(%esi,%edi,4), %ebp
	movl      %ebp, (%eax,%edi,4)
	leal      -1(%edi), %edi
	incl      %edx
	jne       LBB32_25
LBB32_26:
	cmpl      $3, %ecx
	movl      40(%esp), %edx
	jb        LBB32_29
	movl      20(%esp), %eax
	notl      %eax
	orl       $1056964608, %eax
	movl      16(%esp), %ecx
	leal      (%ecx,%eax,4), %eax
	.align 4, 0x90
LBB32_28:
	movl      -4(%esi,%edi,4), %ecx
	movl      %ecx, (%eax,%edi,4)
	movl      -8(%esi,%edi,4), %ecx
	movl      %ecx, -4(%eax,%edi,4)
	movl      -12(%esi,%edi,4), %ecx
	movl      %ecx, -8(%eax,%edi,4)
	movl      -16(%esi,%edi,4), %ecx
	movl      %ecx, -12(%eax,%edi,4)
	leal      -4(%edi), %edi
	cmpl      $1, %edi
	jg        LBB32_28
LBB32_29:
	movl      $1, %eax
	subl      %edx, %eax
	movl      36(%esp), %ecx
	movl      %ecx, (%ebx,%eax,4)
	cmpl      $3, %edx
	movl      68(%esp), %edi
	jl        LBB32_32
	movl      $2, %esi
	subl      %edx, %esi
	.align 4, 0x90
LBB32_31:
	movl      -4(%ebx,%esi,4), %eax
	movl      %eax, (%esp)
	call      _F2x_sqr
	movl      %edi, 4(%esp)
	movl      %eax, (%esp)
	call      _F2x_rem
	movl      %eax, (%ebx,%esi,4)
	incl      %esi
	jne       LBB32_31
LBB32_32:
	movl      32(%esp), %eax
	addl      $44, %esp
	popl      %esi
	popl      %edi
	popl      %ebx
	popl      %ebp
	ret       
# ----------------------
	.align 4, 0x90
	.globl	_random_F2x
_random_F2x:
	pushl     %ebp
	pushl     %ebx
	pushl     %edi
	pushl     %esi
	subl      $28, %esp
	call      L33$pb
L33$pb:
	popl      %ebp
	movl      48(%esp), %eax
	leal      96(%eax), %ebx
	movl      %ebx, %esi
	shrl      $5, %esi
	movl      L_avma$non_lazy_ptr-L33$pb(%ebp), %edi
	movl      (%edi), %edx
	movl      %edx, 20(%esp)
	leal      0(,%esi,4), %eax
	movl      %edx, %ecx
	subl      %eax, %ecx
	movl      %ecx, 24(%esp)
	movl      L_bot$non_lazy_ptr-L33$pb(%ebp), %eax
	movl      %edx, %ecx
	subl      (%eax), %ecx
	shrl      $2, %ecx
	cmpl      %esi, %ecx
	jae       LBB33_2
	movl      $14, (%esp)
	call      _pari_err
LBB33_2:
	movl      52(%esp), %edx
	movl      24(%esp), %eax
	movl      %eax, (%edi)
	cmpl      $536870912, %ebx
	jb        LBB33_4
	leal      L_.str4-L33$pb(%ebp), %eax
	movl      %eax, 4(%esp)
	movl      $15, (%esp)
	movl      %edx, %edi
	call      _pari_err
	movl      %edi, %edx
LBB33_4:
	movl      %esi, %eax
	orl       $738197504, %eax
	movl      24(%esp), %ecx
	movl      %eax, (%ecx)
	movl      $1, %ebp
	movl      $1, %eax
	subl      %esi, %eax
	movl      20(%esp), %ecx
	movl      %edx, (%ecx,%eax,4)
	cmpl      $-97, 48(%esp)
	ja        LBB33_7
	shrl      $3, %ebx
	andl      $536870908, %ebx
	movl      20(%esp), %edi
	subl      %ebx, %edi
	movl      $2, %ebx
	.align 4, 0x90
LBB33_6:
	call      _pari_rand
	movl      %eax, (%edi,%ebx,4)
	incl      %ebx
	cmpl      %esi, %ebx
	jl        LBB33_6
LBB33_7:
	movl      48(%esp), %ecx
	shll      %cl, %ebp
	decl      %ebp
	movl      20(%esp), %eax
	andl      %ebp, -4(%eax)
	movl      %esi, 4(%esp)
	movl      24(%esp), %eax
	movl      %eax, (%esp)
	call      _Flx_renormalize
	addl      $28, %esp
	popl      %esi
	popl      %edi
	popl      %ebx
	popl      %ebp
	ret       
# ----------------------
	.align 4, 0x90
	.globl	_F2xq_order
_F2xq_order:
	pushl     %esi
	subl      $24, %esp
	call      L34$pb
L34$pb:
	popl      %eax
	movl      32(%esp), %ecx
	movl      36(%esp), %edx
	movl      40(%esp), %esi
	leal      _F2xq_star-L34$pb(%eax), %eax
	movl      %eax, 12(%esp)
	movl      %esi, 8(%esp)
	movl      %edx, 4(%esp)
	movl      %ecx, (%esp)
	call      _gen_eltorder
	addl      $24, %esp
	popl      %esi
	ret       
# ----------------------
	.align 4, 0x90
	.globl	_F2xq_log
_F2xq_log:
	pushl     %edi
	pushl     %esi
	subl      $36, %esp
	call      L35$pb
L35$pb:
	popl      %eax
	movl      48(%esp), %ecx
	movl      52(%esp), %edx
	movl      56(%esp), %esi
	movl      60(%esp), %edi
	leal      _F2xq_star-L35$pb(%eax), %eax
	movl      %eax, 16(%esp)
	movl      %edi, 12(%esp)
	movl      %esi, 8(%esp)
	movl      %edx, 4(%esp)
	movl      %ecx, (%esp)
	movl      $0, 20(%esp)
	call      _gen_PH_log
	addl      $36, %esp
	popl      %esi
	popl      %edi
	ret       
# ----------------------
	.align 4, 0x90
	.globl	_F2xq_sqrt
_F2xq_sqrt:
	pushl     %ebp
	pushl     %ebx
	pushl     %edi
	pushl     %esi
	subl      $108, %esp
	call      L36$pb
L36$pb:
	popl      %ebx
	movl      %ebx, 80(%esp)
	movl      132(%esp), %ecx
	movl      128(%esp), %esi
	movl      L_avma$non_lazy_ptr-L36$pb(%ebx), %eax
	movl      %eax, 104(%esp)
	movl      (%eax), %edi
	movl      %edi, 88(%esp)
	movl      L_bot$non_lazy_ptr-L36$pb(%ebx), %edx
	movl      $16777215, %ebp
	andl      (%ecx), %ebp
	cmpl      $2, %ebp
	movl      (%edx), %eax
	je        LBB36_36
	movl      %edi, 88(%esp)
	movl      %edx, 92(%esp)
	movl      %ebx, %edi
	movl      -4(%ecx,%ebp,4), %edx
	movl      %edx, %ecx
	shrl      $16, %ecx
	cmpl      $65535, %edx
	cmovbe    %edx, %ecx
	movl      $12, %ebx
	movl      $28, %edx
	cmova     %ebx, %edx
	cmpl      $256, %ecx
	jb        LBB36_3
	addl      $-8, %edx
	shrl      $8, %ecx
LBB36_3:
	movl      %edi, %ebx
	movl      88(%esp), %edi
	shll      $5, %ebp
	cmpl      $16, %ecx
	jb        LBB36_5
	addl      $-4, %edx
	shrl      $4, %ecx
LBB36_5:
	addl      $-65, %ebp
	subl      %edx, %ebp
	subl      _F2x_degree_lg.__bfffo_tabshi-L36$pb(%ebx,%ecx,4), %ebp
	cmpl      $2, %ebp
	jl        LBB36_36
	movl      %edi, %ecx
	subl      %eax, %ecx
	shrl      $2, %ecx
	addl      %eax, %ecx
	movl      %ecx, 96(%esp)
	decl      %ebp
	movl      %ebp, 100(%esp)
	leal      -4(%edi), %eax
	movl      %eax, 36(%esp)
	leal      -16(%edi), %eax
	movl      %eax, 28(%esp)
	movl      $1, %ebp
	leal      L_.str2-L36$pb(%ebx), %eax
	movl      %eax, 68(%esp)
	movdqa    LCPI36_0-L36$pb(%ebx), %xmm0
	movdqa    %xmm0, 48(%esp)
	.align 4, 0x90
LBB36_7:
	movl      %esi, (%esp)
	call      _F2x_sqr
	movl      132(%esp), %ecx
	movl      %ecx, 4(%esp)
	movl      %eax, (%esp)
	call      _F2x_rem
	movl      %eax, %esi
	movl      104(%esp), %eax
	movl      96(%esp), %ecx
	cmpl      %ecx, (%eax)
	jae       LBB36_34
	movl      L_DEBUGMEM$non_lazy_ptr-L36$pb(%ebx), %eax
	cmpl      $2, (%eax)
	jb        LBB36_10
	movl      %ebp, 8(%esp)
	movl      68(%esp), %eax
	movl      %eax, 4(%esp)
	movl      $3, (%esp)
	call      _pari_warn
LBB36_10:
	movl      92(%esp), %eax
	cmpl      (%eax), %esi
	jb        LBB36_13
	movl      L_top$non_lazy_ptr-L36$pb(%ebx), %eax
	cmpl      (%eax), %esi
	jae       LBB36_13
	cmpl      %esi, %edi
	jbe       LBB36_13
	movl      %edi, %ebx
	movl      (%esi), %edi
	movl      %edi, %ecx
	andl      $16777215, %ecx
	shll      $2, %ecx
	movl      %ebx, %edx
	subl      %ecx, %edx
	movl      %edi, %ecx
	andl      $16777215, %ecx
	movl      104(%esp), %eax
	movl      %edx, (%eax)
	movdqa    48(%esp), %xmm2
	je        LBB36_15
	movl      %edx, 76(%esp)
	movl      %edi, %edx
	orl       $-16777216, %edx
	movl      %edx, %eax
	xorl      $16777215, %eax
	movl      %eax, 84(%esp)
	cmpl      $-16777216, %edx
	movl      $-2, %ebx
	cmove     %eax, %ebx
	leal      (%ebx,%ecx), %eax
	cmpl      $-2, %eax
	je        LBB36_17
	leal      2(%ebx,%ecx), %eax
	movl      %eax, 44(%esp)
	leal      2(%edi,%ebx), %eax
	movl      %edi, 72(%esp)
	andl      $7, %eax
	cmpl      $-16777216, %edx
	movl      $-2, %edx
	movl      84(%esp), %edi
	cmovne    %edx, %edi
	movl      %edi, 84(%esp)
	movl      44(%esp), %edi
	movl      $0, 40(%esp)
	movl      %edi, %edx
	subl      %eax, %edx
	je        LBB36_24
	movl      %ebx, 24(%esp)
	movl      %edx, 32(%esp)
	movl      $-2, %eax
	movl      84(%esp), %ebx
	subl      %ebx, %eax
	leal      (%esi,%eax,4), %eax
	cmpl      %eax, 36(%esp)
	ja        LBB36_21
	leal      -4(%esi,%ecx,4), %eax
	addl      %ecx, %ebx
	movl      $-2, %edx
	subl      %ebx, %edx
	movl      88(%esp), %ebx
	leal      (%ebx,%edx,4), %edx
	cmpl      %edx, %eax
	jbe       LBB36_24
LBB36_21:
	movl      %ecx, %eax
	subl      32(%esp), %eax
	movl      %eax, 84(%esp)
	movl      72(%esp), %eax
	movl      24(%esp), %edx
	leal      2(%edx,%eax), %ebx
	andl      $7, %ebx
	subl      %edx, %ebx
	addl      $-2, %ebx
	movl      %ecx, %edi
	movl      88(%esp), %edx
	.align 4, 0x90
LBB36_22:
	movd      %edi, %xmm0
	pshufd    $0, %xmm0, %xmm0
	paddd     %xmm2, %xmm0
	movd      %xmm0, %eax
	movdqu    -12(%esi,%eax,4), %xmm0
	movups    -28(%esi,%eax,4), %xmm1
	subl      %ecx, %eax
	movdqu    %xmm0, -12(%edx,%eax,4)
	movups    %xmm1, -28(%edx,%eax,4)
	addl      $-8, %edi
	cmpl      %edi, %ebx
	jne       LBB36_22
	movl      84(%esp), %ecx
	movl      32(%esp), %eax
	movl      %eax, 40(%esp)
	movl      44(%esp), %edi
LBB36_24:
	cmpl      40(%esp), %edi
	je        LBB36_32
	jmp       LBB36_25
	.align 4, 0x90
LBB36_13:
	movl      104(%esp), %eax
	movl      %edi, (%eax)
	jmp       LBB36_34
LBB36_15:
	movl      %edx, %esi
	movl      %ebx, %edi
	jmp       LBB36_33
LBB36_17:
	movl      %edi, 72(%esp)
LBB36_25:
	movl      %ecx, %edi
	notl      %edi
	cmpl      $-3, %edi
	movl      $-2, %eax
	cmovg     %edi, %eax
	leal      2(%ecx,%eax), %edx
	leal      1(%ecx,%eax), %eax
	testb     $3, %dl
	je        LBB36_26
	movl      %eax, %edx
	movl      72(%esp), %eax
	andl      $16777215, %eax
	shll      $2, %eax
	movl      36(%esp), %ebx
	subl      %eax, %ebx
	cmpl      $-3, %edi
	movl      $-2, %eax
	cmovle    %eax, %edi
	leal      2(%ecx,%edi), %edi
	andl      $3, %edi
	negl      %edi
	.align 4, 0x90
LBB36_28:
	movl      -4(%esi,%ecx,4), %eax
	movl      %eax, (%ebx,%ecx,4)
	leal      -1(%ecx), %ecx
	incl      %edi
	jne       LBB36_28
	jmp       LBB36_29
LBB36_26:
	movl      %eax, %edx
LBB36_29:
	cmpl      $3, %edx
	jb        LBB36_32
	incl      %ecx
	movl      72(%esp), %eax
	andl      $16777215, %eax
	shll      $2, %eax
	movl      28(%esp), %edi
	subl      %eax, %edi
	.align 4, 0x90
LBB36_31:
	movl      -8(%esi,%ecx,4), %eax
	movl      %eax, 8(%edi,%ecx,4)
	movl      -12(%esi,%ecx,4), %eax
	movl      %eax, 4(%edi,%ecx,4)
	movl      -16(%esi,%ecx,4), %eax
	movl      %eax, (%edi,%ecx,4)
	movl      -20(%esi,%ecx,4), %eax
	movl      %eax, -4(%edi,%ecx,4)
	addl      $-4, %ecx
	cmpl      $1, %ecx
	jg        LBB36_31
LBB36_32:
	movl      76(%esp), %esi
	movl      88(%esp), %edi
LBB36_33:
	movl      80(%esp), %ebx
LBB36_34:
	cmpl      100(%esp), %ebp
	leal      1(%ebp), %ebp
	jne       LBB36_7
	movl      92(%esp), %eax
	movl      (%eax), %eax
LBB36_36:
	cmpl      %eax, %esi
	jb        LBB36_39
	movl      L_top$non_lazy_ptr-L36$pb(%ebx), %eax
	cmpl      (%eax), %esi
	jae       LBB36_39
	cmpl      %esi, %edi
	jbe       LBB36_39
	movl      (%esi), %eax
	movl      %eax, %ecx
	andl      $16777215, %ecx
	shll      $2, %ecx
	movl      %edi, %ebp
	subl      %ecx, %ebp
	movl      %eax, %ecx
	andl      $16777215, %ecx
	movl      104(%esp), %edx
	movl      %ebp, (%edx)
	je        LBB36_41
	movl      %ebp, 104(%esp)
	movl      %ebx, 80(%esp)
	movl      %edi, 88(%esp)
	movl      %eax, %edx
	orl       $-16777216, %edx
	movl      %edx, %ebx
	xorl      $16777215, %ebx
	cmpl      $-16777216, %edx
	movl      $-2, %edi
	cmove     %ebx, %edi
	leal      (%edi,%ecx), %ebp
	cmpl      $-2, %ebp
	jne       LBB36_49
	movl      88(%esp), %ebx
	movl      $-2, %edx
	jmp       LBB36_44
LBB36_39:
	movl      104(%esp), %eax
	movl      %edi, (%eax)
LBB36_60:
	movl      %esi, %eax
	addl      $108, %esp
	popl      %esi
	popl      %edi
	popl      %ebx
	popl      %ebp
	ret       
LBB36_41:
	movl      %ebp, %esi
	jmp       LBB36_60
LBB36_49:
	addl      $2, %ebp
	cmpl      $-16777216, %edx
	movl      $-2, %edx
	cmovne    %edx, %ebx
	movl      $0, 100(%esp)
	movl      %ebp, %edx
	andl      $-8, %edx
	je        LBB36_55
	movl      %edx, 96(%esp)
	movl      $-2, %edx
	subl      %ebx, %edx
	leal      (%esi,%edx,4), %edx
	movl      %edx, 92(%esp)
	movl      88(%esp), %edx
	leal      -4(%edx), %edx
	cmpl      92(%esp), %edx
	ja        LBB36_52
	leal      -4(%esi,%ecx,4), %edx
	movl      %edx, 92(%esp)
	addl      %ecx, %ebx
	movl      $-2, %edx
	subl      %ebx, %edx
	movl      88(%esp), %ebx
	leal      (%ebx,%edx,4), %ebx
	cmpl      %ebx, 92(%esp)
	jbe       LBB36_55
LBB36_52:
	movl      %ebp, 92(%esp)
	movl      %ecx, %edx
	subl      96(%esp), %edx
	movl      %edx, 100(%esp)
	leal      2(%edi,%ecx), %edi
	andl      $-8, %edi
	movl      80(%esp), %edx
	movdqa    LCPI36_0-L36$pb(%edx), %xmm0
	movl      %ecx, %ebx
	movl      88(%esp), %ebp
	.align 4, 0x90
LBB36_53:
	movd      %ebx, %xmm1
	pshufd    $0, %xmm1, %xmm1
	paddd     %xmm0, %xmm1
	movd      %xmm1, %edx
	movups    -12(%esi,%edx,4), %xmm1
	movdqu    -28(%esi,%edx,4), %xmm2
	subl      %ecx, %edx
	movups    %xmm1, -12(%ebp,%edx,4)
	movdqu    %xmm2, -28(%ebp,%edx,4)
	addl      $-8, %ebx
	addl      $-8, %edi
	jne       LBB36_53
	movl      100(%esp), %ecx
	movl      96(%esp), %edx
	movl      %edx, 100(%esp)
	movl      92(%esp), %ebp
LBB36_55:
	cmpl      100(%esp), %ebp
	movl      88(%esp), %ebx
	movl      $-2, %edx
	jne       LBB36_44
	movl      104(%esp), %esi
	jmp       LBB36_60
LBB36_44:
	movl      %ecx, %ebp
	notl      %ebp
	cmpl      $-3, %ebp
	cmovg     %ebp, %edx
	movl      %edx, %edi
	leal      2(%ecx,%edi), %edx
	leal      1(%ecx,%edi), %edi
	testb     $3, %dl
	je        LBB36_47
	movl      %eax, %edx
	notl      %edx
	orl       $1056964608, %edx
	leal      (%ebx,%edx,4), %ebx
	cmpl      $-3, %ebp
	movl      $-2, %edx
	cmovg     %ebp, %edx
	leal      2(%ecx,%edx), %ebp
	andl      $3, %ebp
	negl      %ebp
	.align 4, 0x90
LBB36_46:
	movl      -4(%esi,%ecx,4), %edx
	movl      %edx, (%ebx,%ecx,4)
	leal      -1(%ecx), %ecx
	incl      %ebp
	jne       LBB36_46
LBB36_47:
	cmpl      $3, %edi
	jae       LBB36_57
	movl      104(%esp), %esi
	jmp       LBB36_60
LBB36_57:
	incl      %ecx
	andl      $16777215, %eax
	movl      $-4, %edx
	subl      %eax, %edx
	movl      88(%esp), %eax
	leal      (%eax,%edx,4), %edx
	movl      104(%esp), %edi
	.align 4, 0x90
LBB36_58:
	movl      -8(%esi,%ecx,4), %eax
	movl      %eax, 8(%edx,%ecx,4)
	movl      -12(%esi,%ecx,4), %eax
	movl      %eax, 4(%edx,%ecx,4)
	movl      -16(%esi,%ecx,4), %eax
	movl      %eax, (%edx,%ecx,4)
	movl      -20(%esi,%ecx,4), %eax
	movl      %eax, -4(%edx,%ecx,4)
	addl      $-4, %ecx
	cmpl      $1, %ecx
	jg        LBB36_58
	movl      %edi, %esi
	jmp       LBB36_60
# ----------------------
	.align 4, 0x90
	.globl	_F2xq_sqrtn
_F2xq_sqrtn:
	pushl     %ebp
	pushl     %ebx
	pushl     %edi
	pushl     %esi
	subl      $28, %esp
	call      L37$pb
L37$pb:
	popl      %edi
	movl      60(%esp), %ebx
	movl      56(%esp), %esi
	movl      48(%esp), %ebp
	movl      $16777215, %eax
	movl      (%ebp), %ecx
	andl      %eax, %ecx
	cmpl      $2, %ecx
	jne       LBB37_8
	testl     %ebx, %ebx
	je        LBB37_5
	movl      L_avma$non_lazy_ptr-L37$pb(%edi), %ebx
	movl      (%ebx), %ebp
	movl      L_bot$non_lazy_ptr-L37$pb(%edi), %eax
	movl      %ebp, %ecx
	subl      (%eax), %ecx
	movl      4(%esi), %eax
	cmpl      $11, %ecx
	leal      -12(%ebp), %esi
	ja        LBB37_4
	movl      $14, (%esp)
	movl      %eax, 24(%esp)
	call      _pari_err
	movl      24(%esp), %eax
LBB37_4:
	movl      %esi, (%ebx)
	movl      $738197507, -12(%ebp)
	movl      %eax, -8(%ebp)
	movl      $1, -4(%ebp)
	movl      60(%esp), %eax
	movl      %esi, (%eax)
	movl      56(%esp), %esi
LBB37_5:
	movl      4(%esi), %edx
	movl      L_avma$non_lazy_ptr-L37$pb(%edi), %ebx
	movl      (%ebx), %ebp
	leal      -8(%ebp), %esi
	movl      L_bot$non_lazy_ptr-L37$pb(%edi), %eax
	movl      %ebp, %ecx
	subl      (%eax), %ecx
	cmpl      $7, %ecx
	ja        LBB37_7
	movl      $14, (%esp)
	movl      %edx, %edi
	call      _pari_err
	movl      %edi, %edx
LBB37_7:
	movl      %esi, (%ebx)
	movl      $738197506, -8(%ebp)
	movl      %edx, -4(%ebp)
	movl      %esi, %eax
	jmp       LBB37_15
LBB37_8:
	andl      (%esi), %eax
	movl      $-1, %ecx
	cmpl      $2, %eax
	je        LBB37_14
	movl      -4(%esi,%eax,4), %edx
	movl      %esi, %ebx
	movl      %edx, %ecx
	shrl      $16, %ecx
	cmpl      $65535, %edx
	cmovbe    %edx, %ecx
	movl      $12, %esi
	movl      $28, %edx
	cmova     %esi, %edx
	cmpl      $256, %ecx
	jb        LBB37_11
	addl      $-8, %edx
	shrl      $8, %ecx
LBB37_11:
	shll      $5, %eax
	cmpl      $16, %ecx
	movl      %ebx, %esi
	jb        LBB37_13
	addl      $-4, %edx
	shrl      $4, %ecx
LBB37_13:
	movl      60(%esp), %ebx
	addl      $-65, %eax
	subl      %edx, %eax
	subl      _F2x_degree_lg.__bfffo_tabshi-L37$pb(%edi,%ecx,4), %eax
	movl      %eax, %ecx
LBB37_14:
	movl      %ecx, 4(%esp)
	movl      $2, (%esp)
	call      _powuu
	movl      4(%eax), %ecx
	sarl      $30, %ecx
	movl      %ecx, 8(%esp)
	movl      %eax, 4(%esp)
	movl      $-1, (%esp)
	call      _addsi_sign
	leal      _F2xq_star-L37$pb(%edi), %ecx
	movl      %ecx, 20(%esp)
	movl      %esi, 16(%esp)
	movl      %ebx, 12(%esp)
	movl      %eax, 8(%esp)
	movl      52(%esp), %eax
	movl      %eax, 4(%esp)
	movl      %ebp, (%esp)
	call      _gen_Shanks_sqrtn
LBB37_15:
	addl      $28, %esp
	popl      %esi
	popl      %edi
	popl      %ebx
	popl      %ebp
	ret       
# ----------------------
	.align 4, 0x90
	.globl	_gener_F2xq
_gener_F2xq:
	pushl     %ebp
	pushl     %ebx
	pushl     %edi
	pushl     %esi
	subl      $76, %esp
	call      L38$pb
L38$pb:
	popl      %ebx
	movl      96(%esp), %ecx
	movl      4(%ecx), %esi
	movl      %esi, 48(%esp)
	movl      $16777215, %eax
	andl      (%ecx), %eax
	movl      $-1, %ebp
	cmpl      $2, %eax
	je        LBB38_13
	movl      %esi, %edi
	movl      96(%esp), %ecx
	movl      -4(%ecx,%eax,4), %edx
	movl      %edx, %ecx
	shrl      $16, %ecx
	cmpl      $65535, %edx
	cmovbe    %edx, %ecx
	movl      $12, %esi
	movl      $28, %edx
	cmova     %esi, %edx
	cmpl      $256, %ecx
	jb        LBB38_3
	addl      $-8, %edx
	shrl      $8, %ecx
LBB38_3:
	movl      %edi, %esi
	shll      $5, %eax
	cmpl      $16, %ecx
	jb        LBB38_5
	addl      $-4, %edx
	shrl      $4, %ecx
LBB38_5:
	addl      $-65, %eax
	subl      %edx, %eax
	subl      _F2x_degree_lg.__bfffo_tabshi-L38$pb(%ebx,%ecx,4), %eax
	cmpl      $1, %eax
	movl      %eax, %ebp
	jne       LBB38_13
	movl      %esi, 48(%esp)
	cmpl      $0, 100(%esp)
	je        LBB38_10
	movl      L_gen_1$non_lazy_ptr-L38$pb(%ebx), %eax
	movl      (%eax), %eax
	movl      %eax, 68(%esp)
	call      _trivfact
	movl      %eax, %edx
	movl      L_avma$non_lazy_ptr-L38$pb(%ebx), %edi
	movl      %ebx, %esi
	movl      (%edi), %ebx
	leal      -12(%ebx), %ebp
	movl      L_bot$non_lazy_ptr-L38$pb(%esi), %eax
	movl      %ebx, %ecx
	subl      (%eax), %ecx
	cmpl      $11, %ecx
	ja        LBB38_9
	movl      $14, (%esp)
	movl      %edx, 64(%esp)
	call      _pari_err
	movl      64(%esp), %edx
LBB38_9:
	movl      %ebp, (%edi)
	movl      $570425347, -12(%ebx)
	movl      68(%esp), %eax
	movl      %eax, -8(%ebx)
	movl      %edx, -4(%ebx)
	movl      100(%esp), %eax
	movl      %ebp, (%eax)
	movl      %esi, %ebx
LBB38_10:
	movl      %ebx, %eax
	movl      L_avma$non_lazy_ptr-L38$pb(%eax), %ebx
	movl      (%ebx), %edi
	leal      -12(%edi), %esi
	movl      L_bot$non_lazy_ptr-L38$pb(%eax), %eax
	movl      %edi, %ecx
	subl      (%eax), %ecx
	cmpl      $11, %ecx
	ja        LBB38_12
	movl      $14, (%esp)
	call      _pari_err
LBB38_12:
	movl      %esi, (%ebx)
	movl      $738197507, -12(%edi)
	movl      48(%esp), %eax
	movl      %eax, -8(%edi)
	movl      $1, -4(%edi)
	jmp       LBB38_71
LBB38_13:
	movl      %ebp, 64(%esp)
	movl      L_avma$non_lazy_ptr-L38$pb(%ebx), %eax
	movl      %eax, 68(%esp)
	movl      (%eax), %eax
	movl      %eax, 28(%esp)
	movl      %ebp, 4(%esp)
	movl      $2, (%esp)
	call      _powuu
	movl      4(%eax), %ecx
	sarl      $30, %ecx
	movl      %ecx, 8(%esp)
	movl      %eax, 4(%esp)
	movl      $-1, (%esp)
	call      _addsi_sign
	movl      %eax, 36(%esp)
	movl      L_gen_2$non_lazy_ptr-L38$pb(%ebx), %eax
	movl      (%eax), %eax
	movl      %ebp, 4(%esp)
	movl      %eax, (%esp)
	call      _factor_pn_1
	movl      %eax, 20(%esp)
	movl      4(%eax), %ebp
	movl      (%ebp), %eax
	movl      %eax, 32(%esp)
	movl      %ebx, %edi
	movl      %eax, %ebx
	andl      $16777215, %ebx
	movl      68(%esp), %eax
	movl      (%eax), %edx
	movl      %edx, 40(%esp)
	leal      0(,%ebx,4), %eax
	movl      %edx, %ecx
	subl      %eax, %ecx
	movl      %ecx, 44(%esp)
	movl      L_bot$non_lazy_ptr-L38$pb(%edi), %ecx
	movl      %ecx, 24(%esp)
	movl      %edi, 56(%esp)
	movl      %edx, %eax
	subl      (%ecx), %eax
	movl      %ebx, %ecx
	shrl      $2, %eax
	cmpl      %ecx, %eax
	jae       LBB38_15
	movl      $14, (%esp)
	movl      %ecx, %ebx
	call      _pari_err
	movl      %ebx, %ecx
LBB38_15:
	movl      44(%esp), %eax
	movl      68(%esp), %edi
	movl      %eax, (%edi)
	movl      $-16777217, %ebx
	andl      (%ebp), %ebx
	movl      %ebx, (%eax)
	cmpl      $2, %ecx
	jb        LBB38_32
	movl      %esi, 48(%esp)
	movl      32(%esp), %ebx
	andl      $16777215, %ebx
	movl      %ebx, %edi
	negl      %edi
	cmpl      $-3, %edi
	movl      $-2, %edx
	movl      $-2, %esi
	cmovg     %edi, %esi
	addl      %ebx, %esi
	cmpl      $-1, %esi
	movl      %ecx, %eax
	movl      %ecx, 52(%esp)
	je        LBB38_25
	incl      %esi
	movl      %esi, 60(%esp)
	cmpl      $-3, %edi
	movl      %esi, %eax
	movl      $-2, %esi
	cmovg     %edi, %esi
	xorl      %ecx, %ecx
	andl      $-8, %eax
	je        LBB38_18
	movl      %eax, 16(%esp)
	movl      %esi, %eax
	notl      %eax
	leal      (%ebp,%eax,4), %ecx
	movl      40(%esp), %eax
	leal      -4(%eax), %eax
	cmpl      %ecx, %eax
	ja        LBB38_21
	leal      -4(%ebp,%ebx,4), %eax
	addl      %ebx, %esi
	notl      %esi
	movl      40(%esp), %ecx
	leal      (%ecx,%esi,4), %esi
	xorl      %ecx, %ecx
	cmpl      %esi, %eax
	movl      52(%esp), %eax
	jbe       LBB38_24
LBB38_21:
	movl      52(%esp), %edx
	movl      %edx, %eax
	subl      16(%esp), %eax
	cmpl      $-3, %edi
	movl      $-2, %esi
	cmovg     %edi, %esi
	leal      1(%esi,%ebx), %esi
	andl      $-8, %esi
	movl      56(%esp), %edi
	movdqa    LCPI38_0-L38$pb(%edi), %xmm0
	movl      40(%esp), %ecx
	.align 4, 0x90
LBB38_22:
	movd      %ebx, %xmm1
	pshufd    $0, %xmm1, %xmm1
	paddd     %xmm0, %xmm1
	movd      %xmm1, %edi
	movups    -12(%ebp,%edi,4), %xmm1
	movups    -28(%ebp,%edi,4), %xmm2
	subl      %edx, %edi
	movups    %xmm1, -12(%ecx,%edi,4)
	movups    %xmm2, -28(%ecx,%edi,4)
	addl      $-8, %ebx
	addl      $-8, %esi
	jne       LBB38_22
	movl      16(%esp), %ecx
	movl      $-2, %edx
	jmp       LBB38_24
LBB38_18:
	movl      52(%esp), %eax
LBB38_24:
	cmpl      %ecx, 60(%esp)
	je        LBB38_31
LBB38_25:
	movl      %eax, %esi
	negl      %esi
	cmpl      $-3, %esi
	cmovg     %esi, %edx
	movl      %edx, %ecx
	leal      (%eax,%ecx), %edx
	leal      1(%eax,%ecx), %ecx
	testb     $3, %cl
	je        LBB38_28
	movl      32(%esp), %ecx
	notl      %ecx
	orl       $1056964608, %ecx
	movl      40(%esp), %edi
	leal      (%edi,%ecx,4), %ecx
	cmpl      $-3, %esi
	movl      $-2, %edi
	cmovg     %esi, %edi
	leal      1(%eax,%edi), %esi
	andl      $3, %esi
	negl      %esi
	.align 4, 0x90
LBB38_27:
	movl      -4(%ebp,%eax,4), %edi
	movl      %edi, (%ecx,%eax,4)
	leal      -1(%eax), %eax
	incl      %esi
	jne       LBB38_27
LBB38_28:
	cmpl      $3, %edx
	jb        LBB38_31
	movl      32(%esp), %ecx
	notl      %ecx
	orl       $1056964608, %ecx
	movl      40(%esp), %edx
	leal      (%edx,%ecx,4), %ecx
	.align 4, 0x90
LBB38_30:
	movl      -4(%ebp,%eax,4), %edx
	movl      %edx, (%ecx,%eax,4)
	movl      -8(%ebp,%eax,4), %edx
	movl      %edx, -4(%ecx,%eax,4)
	movl      -12(%ebp,%eax,4), %edx
	movl      %edx, -8(%ecx,%eax,4)
	movl      -16(%ebp,%eax,4), %edx
	movl      %edx, -12(%ecx,%eax,4)
	leal      -4(%eax), %eax
	cmpl      $1, %eax
	jg        LBB38_30
LBB38_31:
	movl      44(%esp), %eax
	movl      (%eax), %ebx
	movl      48(%esp), %esi
	movl      68(%esp), %edi
	movl      52(%esp), %ecx
LBB38_32:
	movl      %ebx, %eax
	andl      $16777214, %eax
	cmpl      $2, %eax
	jb        LBB38_72
	movl      %ecx, 52(%esp)
	movl      %edi, 68(%esp)
	movl      32(%esp), %eax
	andl      $16777215, %eax
	shll      $2, %eax
	movl      40(%esp), %ecx
	subl      %eax, %ecx
	movl      %ecx, 60(%esp)
	movl      $1, %edi
	movl      $1, %ebp
	.align 4, 0x90
LBB38_34:
	movl      60(%esp), %eax
	movl      (%eax,%edi,4), %eax
	movl      4(%eax), %ecx
	movl      $16777215, %edx
	andl      %edx, %ecx
	cmpl      $3, %ecx
	jne       LBB38_36
	cmpl      $2, 8(%eax)
	je        LBB38_37
LBB38_36:
	movl      %eax, 4(%esp)
	movl      36(%esp), %eax
	movl      %eax, (%esp)
	call      _diviiexact
	leal      1(%ebp), %ecx
	subl      52(%esp), %ebp
	movl      40(%esp), %edx
	movl      %eax, (%edx,%ebp,4)
	movl      44(%esp), %eax
	movl      (%eax), %ebx
	movl      %ecx, %ebp
LBB38_37:
	incl      %edi
	movl      %ebx, %eax
	andl      $16777215, %eax
	cmpl      %eax, %edi
	jl        LBB38_34
	andl      $-16777216, %ebx
	cmpl      $16777216, %ebp
	movl      68(%esp), %edi
	jb        LBB38_40
	movl      56(%esp), %eax
	leal      L_.str4-L38$pb(%eax), %eax
	movl      %eax, 4(%esp)
	movl      $15, (%esp)
	call      _pari_err
	jmp       LBB38_40
LBB38_72:
	andl      $-16777216, %ebx
	movl      $1, %ebp
LBB38_40:
	movl      40(%esp), %eax
	movl      %ebp, 52(%esp)
	movl      %edi, 68(%esp)
	orl       %ebp, %ebx
	movl      44(%esp), %ecx
	movl      %ebx, (%ecx)
	movl      (%edi), %ecx
	movl      %ecx, 60(%esp)
	movl      32(%esp), %ecx
	andl      $16777215, %ecx
	shll      $2, %ecx
	subl      %ecx, %eax
	movl      %eax, %ebx
	jmp       LBB38_41
	.align 4, 0x90
LBB38_52:
	movl      68(%esp), %eax
	movl      60(%esp), %ecx
	movl      %ecx, (%eax)
LBB38_41:
	movl      %esi, 4(%esp)
	movl      64(%esp), %eax
	movl      %eax, (%esp)
	call      _random_F2x
	movl      %eax, %edi
	movl      %edi, 72(%esp)
	movl      (%edi), %eax
	movl      $16777215, %ecx
	andl      %ecx, %eax
	cmpl      $2, %eax
	je        LBB38_52
	movl      %esi, %ebp
	movl      -4(%edi,%eax,4), %edx
	movl      %edx, %ecx
	shrl      $16, %ecx
	cmpl      $65535, %edx
	cmovbe    %edx, %ecx
	movl      $28, %edx
	movl      $12, %esi
	cmova     %esi, %edx
	cmpl      $256, %ecx
	jb        LBB38_44
	addl      $-8, %edx
	shrl      $8, %ecx
LBB38_44:
	movl      %ebp, %esi
	movl      52(%esp), %ebp
	shll      $5, %eax
	cmpl      $16, %ecx
	jb        LBB38_46
	addl      $-4, %edx
	shrl      $4, %ecx
LBB38_46:
	addl      $-65, %eax
	subl      %edx, %eax
	movl      56(%esp), %edx
	subl      _F2x_degree_lg.__bfffo_tabshi-L38$pb(%edx,%ecx,4), %eax
	testl     %eax, %eax
	jle       LBB38_52
	movl      $1, %esi
	cmpl      $2, %ebp
	jl        LBB38_51
	.align 4, 0x90
LBB38_48:
	movl      (%ebx,%esi,4), %eax
	movl      96(%esp), %ecx
	movl      %ecx, 8(%esp)
	movl      %eax, 4(%esp)
	movl      %edi, (%esp)
	call      _F2xq_pow
	movl      (%eax), %ecx
	movl      $16777215, %edx
	andl      %edx, %ecx
	cmpl      $3, %ecx
	jne       LBB38_50
	cmpl      $1, 8(%eax)
	je        LBB38_51
LBB38_50:
	incl      %esi
	cmpl      %ebp, %esi
	jl        LBB38_48
LBB38_51:
	cmpl      %ebp, %esi
	movl      48(%esp), %esi
	jne       LBB38_52
	movl      100(%esp), %ebp
	testl     %ebp, %ebp
	je        LBB38_54
	movl      64(%esp), %eax
	movl      %eax, (%esp)
	call      _int2n
	movl      4(%eax), %ecx
	sarl      $30, %ecx
	movl      %ecx, 8(%esp)
	movl      %eax, 4(%esp)
	movl      $-1, (%esp)
	call      _addsi_sign
	movl      68(%esp), %edi
	movl      (%edi), %esi
	leal      -12(%esi), %ebx
	movl      %esi, %edx
	movl      24(%esp), %ecx
	subl      (%ecx), %edx
	cmpl      $11, %edx
	ja        LBB38_70
	movl      $14, (%esp)
	movl      %eax, 64(%esp)
	call      _pari_err
	movl      64(%esp), %eax
LBB38_70:
	movl      %ebx, (%edi)
	movl      $570425347, -12(%esi)
	movl      %eax, -8(%esi)
	movl      20(%esp), %eax
	movl      %eax, -4(%esi)
	movl      %ebx, (%ebp)
	movl      %ebp, 12(%esp)
	leal      72(%esp), %eax
	movl      %eax, 8(%esp)
	movl      28(%esp), %eax
	movl      %eax, (%esp)
	movl      $2, 4(%esp)
	call      _gerepileall
	movl      72(%esp), %esi
	jmp       LBB38_71
LBB38_54:
	movl      %edi, (%esp)
	call      _copy_bin
	movl      %eax, %edx
	movl      28(%esp), %esi
	movl      68(%esp), %eax
	movl      %esi, (%eax)
	movl      4(%edx), %eax
	testl     %eax, %eax
	je        LBB38_55
	movl      (%edx), %ebx
	movl      %ebx, 64(%esp)
	movl      %eax, 60(%esp)
	movl      %eax, %ebp
	subl      8(%edx), %ebp
	movl      %edx, 48(%esp)
	sarl      $2, %ebp
	leal      0(,%ebx,4), %edi
	movl      %edi, 52(%esp)
	movl      %esi, %eax
	movl      24(%esp), %edx
	subl      (%edx), %eax
	subl      %edi, %esi
	shrl      $2, %eax
	cmpl      %ebx, %eax
	jae       LBB38_61
	movl      $14, (%esp)
	call      _pari_err
LBB38_61:
	movl      68(%esp), %eax
	movl      %esi, (%eax)
	movl      48(%esp), %edi
	movl      %edi, %eax
	addl      $16, %eax
	movl      52(%esp), %ecx
	movl      %ecx, 8(%esp)
	movl      %eax, 4(%esp)
	movl      %esi, (%esp)
	call      _memcpy
	subl      64(%esp), %ebp
	movl      28(%esp), %eax
	leal      (%eax,%ebp,4), %esi
	movl      %esi, %eax
	subl      60(%esp), %eax
	cmpl      $0, 12(%edi)
	je        LBB38_63
	movl      %eax, 4(%esp)
	movl      %esi, (%esp)
	call      _shiftaddress_canon
	jmp       LBB38_64
LBB38_55:
	movl      56(%esp), %ebp
	movl      L_PARI_SIGINT_block$non_lazy_ptr-L38$pb(%ebp), %esi
	movl      (%esi), %ebx
	movl      $1, (%esi)
	movl      %edx, (%esp)
	call      _free
	movl      %ebx, (%esi)
	testl     %ebx, %ebx
	movl      %ebp, %esi
	jne       LBB38_58
	movl      L_PARI_SIGINT_pending$non_lazy_ptr-L38$pb(%esi), %eax
	cmpl      $0, (%eax)
	je        LBB38_58
	movl      (%eax), %ecx
	movl      $0, (%eax)
	movl      %ecx, (%esp)
	call      _raise
LBB38_58:
	movl      L_gen_0$non_lazy_ptr-L38$pb(%esi), %eax
	movl      (%eax), %esi
	movl      %esi, 72(%esp)
	jmp       LBB38_71
LBB38_63:
	movl      %eax, 4(%esp)
	movl      %esi, (%esp)
	call      _shiftaddress
LBB38_64:
	movl      56(%esp), %eax
	movl      L_PARI_SIGINT_block$non_lazy_ptr-L38$pb(%eax), %ebx
	movl      (%ebx), %ebp
	movl      $1, (%ebx)
	movl      %edi, (%esp)
	call      _free
	movl      %ebp, (%ebx)
	testl     %ebp, %ebp
	jne       LBB38_67
	movl      56(%esp), %eax
	movl      L_PARI_SIGINT_pending$non_lazy_ptr-L38$pb(%eax), %eax
	cmpl      $0, (%eax)
	je        LBB38_67
	movl      (%eax), %ecx
	movl      $0, (%eax)
	movl      %ecx, (%esp)
	call      _raise
LBB38_67:
	movl      %esi, 72(%esp)
LBB38_71:
	movl      %esi, %eax
	addl      $76, %esp
	popl      %esi
	popl      %edi
	popl      %ebx
	popl      %ebp
	ret       
	.align 4, 0x90
_F2x_equal1:
	movl      4(%esp), %eax
	movl      $16777215, %ecx
	andl      (%eax), %ecx
	cmpl      $3, %ecx
	jne       LBB39_1
	cmpl      $1, 8(%eax)
	sete      %al
	movzbl    %al, %eax
	ret       
LBB39_1:
	xorl      %eax, %eax
	movzbl    %al, %eax
	ret       
# ----------------------
	.align 4, 0x90
	.globl	_ZXX_to_F2xX
_ZXX_to_F2xX:
	pushl     %ebp
	pushl     %ebx
	pushl     %edi
	pushl     %esi
	subl      $28, %esp
	call      L40$pb
L40$pb:
	popl      %eax
	movl      48(%esp), %ebx
	movl      (%ebx), %esi
	andl      $16777215, %esi
	movl      L_avma$non_lazy_ptr-L40$pb(%eax), %ecx
	movl      %ecx, 24(%esp)
	movl      (%ecx), %edi
	leal      0(,%esi,4), %ecx
	movl      %edi, %ebp
	subl      %ecx, %ebp
	movl      %ebp, 20(%esp)
	movl      L_bot$non_lazy_ptr-L40$pb(%eax), %ecx
	movl      %ecx, 16(%esp)
	movl      %edi, %eax
	subl      (%ecx), %eax
	shrl      $2, %eax
	cmpl      %esi, %eax
	jae       LBB40_2
	movl      $14, (%esp)
	call      _pari_err
LBB40_2:
	movl      24(%esp), %eax
	movl      %ebp, (%eax)
	movl      %esi, %eax
	orl       $335544320, %eax
	movl      %eax, (%ebp)
	movl      $1073676288, %eax
	andl      4(%ebx), %eax
	orl       $1073741824, %eax
	movl      $1, %ecx
	subl      %esi, %ecx
	movl      %eax, (%edi,%ecx,4)
	cmpl      $3, %esi
	jb        LBB40_17
	movl      $2, %edi
	.align 4, 0x90
LBB40_4:
	movl      (%ebx,%edi,4), %eax
	movl      (%eax), %ecx
	shrl      $25, %ecx
	cmpl      $10, %ecx
	jne       LBB40_5
	movl      %eax, (%esp)
	call      _ZX_to_F2x
	movl      %eax, (%ebp,%edi,4)
	jmp       LBB40_16
	.align 4, 0x90
LBB40_5:
	cmpl      $1, %ecx
	jne       LBB40_16
	movl      4(%eax), %ecx
	cmpl      $1073741823, %ecx
	jbe       LBB40_7
	andl      $16777215, %ecx
	testb     $1, -4(%eax,%ecx,4)
	movl      24(%esp), %eax
	movl      (%eax), %ebp
	je        LBB40_8
	movl      %ebp, %edx
	addl      $-12, %edx
	movl      %ebp, %eax
	movl      16(%esp), %ecx
	subl      (%ecx), %eax
	cmpl      $11, %eax
	ja        LBB40_14
	movl      $14, (%esp)
	movl      %edx, 12(%esp)
	call      _pari_err
	movl      12(%esp), %edx
LBB40_14:
	movl      24(%esp), %eax
	movl      %edx, (%eax)
	movl      $738197507, -12(%ebp)
	movl      52(%esp), %eax
	movl      %eax, -8(%ebp)
	movl      $1, -4(%ebp)
	movl      20(%esp), %ebp
	movl      %edx, (%ebp,%edi,4)
	jmp       LBB40_16
LBB40_7:
	movl      24(%esp), %eax
	movl      (%eax), %ebp
LBB40_8:
	leal      -8(%ebp), %ebx
	movl      %ebp, %eax
	movl      16(%esp), %ecx
	subl      (%ecx), %eax
	cmpl      $7, %eax
	ja        LBB40_10
	movl      $14, (%esp)
	call      _pari_err
LBB40_10:
	movl      24(%esp), %eax
	movl      %ebx, (%eax)
	movl      $738197506, -8(%ebp)
	movl      52(%esp), %eax
	movl      %eax, -4(%ebp)
	movl      20(%esp), %ebp
	movl      %ebx, (%ebp,%edi,4)
	movl      48(%esp), %ebx
	.align 4, 0x90
LBB40_16:
	incl      %edi
	cmpl      %esi, %edi
	jl        LBB40_4
LBB40_17:
	movl      %esi, 4(%esp)
	movl      %ebp, (%esp)
	call      _FlxX_renormalize
	addl      $28, %esp
	popl      %esi
	popl      %edi
	popl      %ebx
	popl      %ebp
	ret       
# ----------------------
	.align 4, 0x90
	.globl	_F2c_to_ZC
_F2c_to_ZC:
	pushl     %ebp
	pushl     %ebx
	pushl     %edi
	pushl     %esi
	subl      $60, %esp
	call      L41$pb
L41$pb:
	popl      %edi
	movl      %edi, 52(%esp)
	movl      80(%esp), %eax
	movl      4(%eax), %esi
	movl      L_avma$non_lazy_ptr-L41$pb(%edi), %ebp
	movl      (%ebp), %edx
	movl      %edx, 28(%esp)
	movl      L_bot$non_lazy_ptr-L41$pb(%edi), %eax
	movl      %edx, %ecx
	subl      (%eax), %ecx
	leal      1(%esi), %eax
	movl      %eax, 36(%esp)
	shrl      $2, %ecx
	cmpl      %eax, %ecx
	movl      %esi, %eax
	notl      %eax
	movl      %eax, 32(%esp)
	leal      (%edx,%eax,4), %eax
	movl      %eax, 20(%esp)
	jae       LBB41_2
	movl      $14, (%esp)
	call      _pari_err
LBB41_2:
	movl      20(%esp), %eax
	movl      %eax, (%ebp)
	movl      36(%esp), %ebp
	cmpl      $16777216, %ebp
	jb        LBB41_4
	leal      L_.str4-L41$pb(%edi), %eax
	movl      %eax, 4(%esp)
	movl      $15, (%esp)
	call      _pari_err
LBB41_4:
	movl      %ebp, %eax
	orl       $603979776, %eax
	movl      20(%esp), %ecx
	movl      %eax, (%ecx)
	movl      80(%esp), %eax
	movl      (%eax), %eax
	movl      %eax, %ecx
	andl      $16777215, %ecx
	cmpl      $3, %ecx
	jb        LBB41_14
	shll      $2, %esi
	movl      28(%esp), %ecx
	subl      %esi, %ecx
	movl      %ecx, 24(%esp)
	movl      $2, %ebx
	movl      $1, %esi
	.align 4, 0x90
LBB41_6:
	cmpl      %ebp, %esi
	jge       LBB41_13
	movl      32(%esp), %eax
	leal      (%esi,%eax), %ebp
	cmpl      $-32, %ebp
	movl      $-32, %edx
	cmova     %ebp, %edx
	movl      %edx, 40(%esp)
	movl      %edx, %ecx
	notl      %ecx
	negl      %edx
	movl      %esi, %eax
	movl      %eax, 44(%esp)
	xorl      %esi, %esi
	testb     $1, %dl
	movl      %eax, %edx
	movl      80(%esp), %eax
	je        LBB41_9
	movl      (%eax,%ebx,4), %edx
	testb     $1, %dl
	movl      L_gen_0$non_lazy_ptr-L41$pb(%edi), %edx
	cmovne    L_gen_1$non_lazy_ptr-L41$pb(%edi), %edx
	movl      (%edx), %edx
	movl      %ecx, 48(%esp)
	movl      28(%esp), %ecx
	movl      %edx, (%ecx,%ebp,4)
	movl      $1, %esi
	movl      44(%esp), %ecx
	leal      1(%ecx), %edx
	movl      48(%esp), %ecx
LBB41_9:
	testl     %ecx, %ecx
	movl      %ebx, 56(%esp)
	je        LBB41_12
	movl      %ecx, 48(%esp)
	movl      24(%esp), %ecx
	leal      (%ecx,%edx,4), %edx
	.align 4, 0x90
LBB41_11:
	movl      (%eax,%ebx,4), %ebp
	btl       %esi, %ebp
	movl      L_gen_1$non_lazy_ptr-L41$pb(%edi), %ebp
	movl      52(%esp), %ecx
	movl      L_gen_0$non_lazy_ptr-L41$pb(%ecx), %edi
	movl      %edi, %ebx
	cmovb     %ebp, %ebx
	movl      (%ebx), %ebx
	movl      %ebx, -4(%edx)
	leal      1(%esi), %ebx
	movl      %eax, %ecx
	movl      56(%esp), %eax
	movl      (%ecx,%eax,4), %eax
	btl       %ebx, %eax
	cmovb     %ebp, %edi
	movl      (%edi), %eax
	movl      52(%esp), %edi
	movl      %eax, (%edx)
	movl      %ecx, %eax
	movl      48(%esp), %ecx
	addl      $2, %esi
	addl      $8, %edx
	cmpl      %ecx, %ebx
	movl      56(%esp), %ebx
	jne       LBB41_11
LBB41_12:
	movl      44(%esp), %esi
	subl      40(%esp), %esi
	movl      (%eax), %eax
	movl      36(%esp), %ebp
LBB41_13:
	incl      %ebx
	movl      %eax, %edx
	andl      $16777215, %edx
	cmpl      %edx, %ebx
	jl        LBB41_6
LBB41_14:
	movl      20(%esp), %eax
	addl      $60, %esp
	popl      %esi
	popl      %edi
	popl      %ebx
	popl      %ebp
	ret       
# ----------------------
	.align 4, 0x90
	.globl	_F2m_to_ZM
_F2m_to_ZM:
	pushl     %ebp
	pushl     %ebx
	pushl     %edi
	pushl     %esi
	subl      $12, %esp
	call      L42$pb
L42$pb:
	popl      %eax
	movl      32(%esp), %edi
	movl      (%edi), %ebx
	andl      $16777215, %ebx
	movl      L_avma$non_lazy_ptr-L42$pb(%eax), %ebp
	movl      (%ebp), %ecx
	leal      0(,%ebx,4), %edx
	movl      %ecx, %esi
	subl      %edx, %esi
	movl      L_bot$non_lazy_ptr-L42$pb(%eax), %eax
	subl      (%eax), %ecx
	shrl      $2, %ecx
	cmpl      %ebx, %ecx
	jae       LBB42_2
	movl      $14, (%esp)
	call      _pari_err
LBB42_2:
	movl      %esi, (%ebp)
	movl      %ebx, %eax
	orl       $637534208, %eax
	movl      %eax, (%esi)
	cmpl      $2, %ebx
	jb        LBB42_5
	movl      $1, %ebp
	.align 4, 0x90
LBB42_4:
	movl      (%edi,%ebp,4), %eax
	movl      %eax, (%esp)
	call      _F2c_to_ZC
	movl      %eax, (%esi,%ebp,4)
	incl      %ebp
	cmpl      %ebx, %ebp
	jl        LBB42_4
LBB42_5:
	movl      %esi, %eax
	addl      $12, %esp
	popl      %esi
	popl      %edi
	popl      %ebx
	popl      %ebp
	ret       
# ----------------------
	.align 4, 0x90
	.globl	_ZV_to_F2v
_ZV_to_F2v:
	pushl     %ebp
	pushl     %ebx
	pushl     %edi
	pushl     %esi
	subl      $28, %esp
	call      L43$pb
L43$pb:
	popl      %eax
	movl      48(%esp), %ecx
	movl      $16777215, %edi
	andl      (%ecx), %edi
	leal      94(%edi), %ebx
	shrl      $5, %ebx
	movl      L_avma$non_lazy_ptr-L43$pb(%eax), %ecx
	movl      %ecx, 12(%esp)
	movl      (%ecx), %edx
	movl      %edx, 24(%esp)
	leal      0(,%ebx,4), %ecx
	movl      %edx, %esi
	subl      %ecx, %esi
	movl      L_bot$non_lazy_ptr-L43$pb(%eax), %eax
	movl      %edx, %ecx
	subl      (%eax), %ecx
	shrl      $2, %ecx
	cmpl      %ebx, %ecx
	leal      -1(%edi), %ebp
	jae       LBB43_2
	movl      $14, (%esp)
	call      _pari_err
LBB43_2:
	movl      %esi, 16(%esp)
	movl      12(%esp), %eax
	movl      %esi, (%eax)
	movl      %ebx, %eax
	orl       $738197504, %eax
	movl      %eax, (%esi)
	movl      $1, %eax
	movl      $1, %ecx
	subl      %ebx, %ecx
	movl      24(%esp), %edx
	movl      %ebp, %esi
	movl      %esi, 20(%esp)
	movl      %esi, (%edx,%ecx,4)
	cmpl      $2, %edi
	jb        LBB43_10
	movl      $32, %ecx
	xorl      %edx, %edx
	.align 4, 0x90
LBB43_4:
	cmpl      $32, %ecx
	jne       LBB43_6
	incl      %eax
	movl      %eax, %ecx
	subl      %ebx, %ecx
	movl      24(%esp), %edi
	movl      $0, (%edi,%ecx,4)
	xorl      %ecx, %ecx
LBB43_6:
	movl      48(%esp), %edi
	movl      4(%edi,%edx,4), %edi
	movl      4(%edi), %ebp
	cmpl      $1073741824, %ebp
	jb        LBB43_9
	andl      $16777215, %ebp
	testb     $1, -4(%edi,%ebp,4)
	je        LBB43_9
	movl      $1, %edi
	shll      %cl, %edi
	movl      %eax, %ebp
	subl      %ebx, %ebp
	movl      %ebx, %esi
	movl      24(%esp), %ebx
	orl       %edi, (%ebx,%ebp,4)
	movl      %esi, %ebx
	movl      20(%esp), %esi
LBB43_9:
	incl      %ecx
	incl      %edx
	cmpl      %esi, %edx
	jl        LBB43_4
LBB43_10:
	movl      16(%esp), %eax
	addl      $28, %esp
	popl      %esi
	popl      %edi
	popl      %ebx
	popl      %ebp
	ret       
# ----------------------
	.align 4, 0x90
	.globl	_Flv_to_F2v
_Flv_to_F2v:
	pushl     %ebp
	pushl     %ebx
	pushl     %edi
	pushl     %esi
	subl      $12, %esp
	call      L44$pb
L44$pb:
	popl      %eax
	movl      32(%esp), %ecx
	movl      $16777215, %edi
	andl      (%ecx), %edi
	leal      94(%edi), %ebx
	shrl      $5, %ebx
	movl      L_avma$non_lazy_ptr-L44$pb(%eax), %edx
	movl      (%edx), %ebp
	leal      0(,%ebx,4), %ecx
	movl      %ebp, %esi
	subl      %ecx, %esi
	movl      L_bot$non_lazy_ptr-L44$pb(%eax), %eax
	movl      %ebp, %ecx
	subl      (%eax), %ecx
	shrl      $2, %ecx
	cmpl      %ebx, %ecx
	leal      -1(%edi), %eax
	movl      %eax, 8(%esp)
	jae       LBB44_2
	movl      $14, (%esp)
	movl      %edx, 4(%esp)
	call      _pari_err
	movl      4(%esp), %edx
LBB44_2:
	movl      %esi, (%edx)
	movl      %ebx, %eax
	orl       $738197504, %eax
	movl      %eax, (%esi)
	movl      %esi, 4(%esp)
	movl      $1, %esi
	movl      $1, %ecx
	subl      %ebx, %ecx
	movl      8(%esp), %eax
	movl      %eax, (%ebp,%ecx,4)
	cmpl      $2, %edi
	jb        LBB44_9
	movl      $32, %ecx
	xorl      %edx, %edx
	.align 4, 0x90
LBB44_4:
	cmpl      $32, %ecx
	jne       LBB44_6
	incl      %esi
	movl      %esi, %ecx
	subl      %ebx, %ecx
	movl      $0, (%ebp,%ecx,4)
	xorl      %ecx, %ecx
LBB44_6:
	movl      32(%esp), %eax
	testb     $1, 4(%eax,%edx,4)
	je        LBB44_8
	movl      $1, %edi
	shll      %cl, %edi
	movl      %esi, %eax
	subl      %ebx, %eax
	orl       %edi, (%ebp,%eax,4)
LBB44_8:
	incl      %ecx
	incl      %edx
	cmpl      8(%esp), %edx
	jl        LBB44_4
LBB44_9:
	movl      4(%esp), %eax
	addl      $12, %esp
	popl      %esi
	popl      %edi
	popl      %ebx
	popl      %ebp
	ret       
# ----------------------
	.align 4, 0x90
	.globl	_ZM_to_F2m
_ZM_to_F2m:
	pushl     %ebp
	pushl     %ebx
	pushl     %edi
	pushl     %esi
	subl      $12, %esp
	call      L45$pb
L45$pb:
	popl      %eax
	movl      32(%esp), %edi
	movl      (%edi), %ebx
	andl      $16777215, %ebx
	movl      L_avma$non_lazy_ptr-L45$pb(%eax), %ebp
	movl      (%ebp), %ecx
	leal      0(,%ebx,4), %edx
	movl      %ecx, %esi
	subl      %edx, %esi
	movl      L_bot$non_lazy_ptr-L45$pb(%eax), %eax
	subl      (%eax), %ecx
	shrl      $2, %ecx
	cmpl      %ebx, %ecx
	jae       LBB45_2
	movl      $14, (%esp)
	call      _pari_err
LBB45_2:
	movl      %esi, (%ebp)
	movl      %ebx, %eax
	orl       $637534208, %eax
	movl      %eax, (%esi)
	cmpl      $2, %ebx
	jb        LBB45_5
	movl      $1, %ebp
	.align 4, 0x90
LBB45_4:
	movl      (%edi,%ebp,4), %eax
	movl      %eax, (%esp)
	call      _ZV_to_F2v
	movl      %eax, (%esi,%ebp,4)
	incl      %ebp
	cmpl      %ebx, %ebp
	jl        LBB45_4
LBB45_5:
	movl      %esi, %eax
	addl      $12, %esp
	popl      %esi
	popl      %edi
	popl      %ebx
	popl      %ebp
	ret       
# ----------------------
	.align 4, 0x90
	.globl	_Flm_to_F2m
_Flm_to_F2m:
	pushl     %ebp
	pushl     %ebx
	pushl     %edi
	pushl     %esi
	subl      $44, %esp
	call      L46$pb
L46$pb:
	popl      %eax
	movl      64(%esp), %ecx
	movl      $16777215, %esi
	andl      (%ecx), %esi
	movl      L_avma$non_lazy_ptr-L46$pb(%eax), %edi
	movl      %edi, 28(%esp)
	movl      (%edi), %edx
	movl      %edx, 16(%esp)
	leal      0(,%esi,4), %ecx
	movl      %edx, %ebx
	subl      %ecx, %ebx
	movl      L_bot$non_lazy_ptr-L46$pb(%eax), %ecx
	movl      %ecx, 12(%esp)
	movl      %edx, %eax
	subl      (%ecx), %eax
	shrl      $2, %eax
	cmpl      %esi, %eax
	jae       LBB46_2
	movl      $14, (%esp)
	call      _pari_err
LBB46_2:
	movl      %edi, %ecx
	movl      %ecx, 28(%esp)
	movl      %ebx, (%ecx)
	movl      %esi, 20(%esp)
	movl      %esi, %eax
	orl       $637534208, %eax
	movl      %eax, (%ebx)
	movl      %ebx, 8(%esp)
	cmpl      $2, %esi
	jb        LBB46_14
	movl      $1, %esi
	.align 4, 0x90
LBB46_4:
	movl      %esi, 24(%esp)
	movl      64(%esp), %eax
	movl      (%eax,%esi,4), %esi
	movl      (%esi), %edi
	movl      $16777215, %eax
	andl      %eax, %edi
	leal      94(%edi), %ebp
	shrl      $5, %ebp
	movl      (%ecx), %ebx
	leal      0(,%ebp,4), %eax
	movl      %ebx, %edx
	subl      %eax, %edx
	movl      %ebx, %eax
	movl      12(%esp), %ecx
	subl      (%ecx), %eax
	movl      %ebp, %ecx
	shrl      $2, %eax
	cmpl      %ecx, %eax
	leal      -1(%edi), %ebp
	jae       LBB46_6
	movl      $14, (%esp)
	movl      %edx, 32(%esp)
	movl      %ebp, 40(%esp)
	movl      %ecx, %ebp
	call      _pari_err
	movl      %ebp, %ecx
	movl      40(%esp), %ebp
	movl      32(%esp), %edx
LBB46_6:
	movl      %ecx, 36(%esp)
	movl      %edx, 32(%esp)
	movl      28(%esp), %eax
	movl      %edx, (%eax)
	movl      %ecx, %eax
	orl       $738197504, %eax
	movl      %eax, (%edx)
	movl      $1, %eax
	subl      %ecx, %eax
	movl      %ebp, (%ebx,%eax,4)
	cmpl      $2, %edi
	movl      %ebx, %eax
	jb        LBB46_13
	movl      $32, %ecx
	movl      $1, 40(%esp)
	xorl      %edx, %edx
	.align 4, 0x90
LBB46_8:
	cmpl      $32, %ecx
	jne       LBB46_10
	movl      40(%esp), %ecx
	incl      %ecx
	movl      %ecx, 40(%esp)
	subl      36(%esp), %ecx
	movl      $0, (%eax,%ecx,4)
	xorl      %ecx, %ecx
LBB46_10:
	testb     $1, 4(%esi,%edx,4)
	je        LBB46_12
	movl      %esi, %ebx
	movl      $1, %esi
	shll      %cl, %esi
	movl      %ebp, %edi
	movl      %eax, %ebp
	movl      40(%esp), %eax
	subl      36(%esp), %eax
	orl       %esi, (%ebp,%eax,4)
	movl      %ebp, %eax
	movl      %edi, %ebp
	movl      %ebx, %esi
LBB46_12:
	incl      %ecx
	incl      %edx
	cmpl      %ebp, %edx
	jl        LBB46_8
LBB46_13:
	movl      24(%esp), %esi
	movl      %esi, %eax
	movl      20(%esp), %ecx
	subl      %ecx, %eax
	movl      16(%esp), %edx
	movl      32(%esp), %edi
	movl      %edi, (%edx,%eax,4)
	incl      %esi
	cmpl      %ecx, %esi
	movl      28(%esp), %ecx
	jl        LBB46_4
LBB46_14:
	movl      8(%esp), %eax
	addl      $44, %esp
	popl      %esi
	popl      %edi
	popl      %ebx
	popl      %ebp
	ret       
# ----------------------
	.align 4, 0x90
	.globl	_F2v_add_inplace
_F2v_add_inplace:
	pushl     %ebp
	pushl     %ebx
	pushl     %edi
	pushl     %esi
	movl      24(%esp), %ecx
	movl      20(%esp), %eax
	movl      (%ecx), %esi
	movl      %esi, %edi
	andl      $16777215, %edi
	addl      $6, %esi
	andl      $7, %esi
	movl      %edi, %ebx
	subl      %esi, %ebx
	movl      $2, %edx
	cmpl      $3, %ebx
	jl        LBB47_4
	addl      $-3, %edi
	subl      %esi, %edi
	andl      $-8, %edi
	movl      $2, %edx
	.align 4, 0x90
LBB47_2:
	movl      (%ecx,%edx,4), %ebp
	xorl      %ebp, (%eax,%edx,4)
	movl      4(%ecx,%edx,4), %ebp
	xorl      %ebp, 4(%eax,%edx,4)
	movl      8(%ecx,%edx,4), %ebp
	xorl      %ebp, 8(%eax,%edx,4)
	movl      12(%ecx,%edx,4), %ebp
	xorl      %ebp, 12(%eax,%edx,4)
	movl      16(%ecx,%edx,4), %ebp
	xorl      %ebp, 16(%eax,%edx,4)
	movl      20(%ecx,%edx,4), %ebp
	xorl      %ebp, 20(%eax,%edx,4)
	movl      24(%ecx,%edx,4), %ebp
	xorl      %ebp, 24(%eax,%edx,4)
	movl      28(%ecx,%edx,4), %ebp
	xorl      %ebp, 28(%eax,%edx,4)
	addl      $8, %edx
	cmpl      %ebx, %edx
	jl        LBB47_2
	addl      $10, %edi
	movl      %edi, %edx
LBB47_4:
	decl      %esi
	cmpl      $6, %esi
	ja        LBB47_13
	call      L47$pb
L47$pb:
	popl      %edi
	addl      Ltmp0(%edi,%esi,4), %edi
	jmp       *%edi
LBB47_6:
	movl      (%ecx,%edx,4), %esi
	xorl      %esi, (%eax,%edx,4)
	orl       $1, %edx
LBB47_7:
	movl      (%ecx,%edx,4), %esi
	xorl      %esi, (%eax,%edx,4)
	incl      %edx
LBB47_8:
	movl      (%ecx,%edx,4), %esi
	xorl      %esi, (%eax,%edx,4)
	incl      %edx
LBB47_9:
	movl      (%ecx,%edx,4), %esi
	xorl      %esi, (%eax,%edx,4)
	incl      %edx
LBB47_10:
	movl      (%ecx,%edx,4), %esi
	xorl      %esi, (%eax,%edx,4)
	incl      %edx
LBB47_11:
	movl      (%ecx,%edx,4), %esi
	xorl      %esi, (%eax,%edx,4)
	incl      %edx
LBB47_12:
	movl      (%ecx,%edx,4), %ecx
	xorl      %ecx, (%eax,%edx,4)
LBB47_13:
	popl      %esi
	popl      %edi
	popl      %ebx
	popl      %ebp
	ret       
	.align 2, 0x90
LJTI47_0:
	.long	L47_0_set_12
	.long	L47_0_set_11
	.long	L47_0_set_10
	.long	L47_0_set_9
	.long	L47_0_set_8
	.long	L47_0_set_7
	.long	L47_0_set_6
	.align 4, 0x90
_F2x_shiftip:
	pushl     %ebp
	pushl     %ebx
	pushl     %edi
	pushl     %esi
	subl      $44, %esp
	call      L48$pb
L48$pb:
	popl      %esi
	movl      64(%esp), %edi
	testl     %edi, %edi
	je        LBB48_2
	movl      (%edx), %eax
	andl      $16777215, %eax
	cmpl      $2, %eax
	je        LBB48_2
	movl      %edx, 24(%esp)
	movl      %eax, 36(%esp)
	leal      (%eax,%edi), %ebx
	movl      %ecx, %ebp
	movl      %ebx, 28(%esp)
	leal      0(,%ebx,4), %eax
	movl      %ebp, %edx
	subl      %eax, %edx
	movl      L_bot$non_lazy_ptr-L48$pb(%esi), %eax
	subl      (%eax), %ecx
	shrl      $2, %ecx
	cmpl      %ebx, %ecx
	movl      L_avma$non_lazy_ptr-L48$pb(%esi), %ebx
	movl      %esi, 32(%esp)
	movl      %ebp, (%ebx)
	movl      %ebp, %esi
	jae       LBB48_5
	movl      $14, (%esp)
	movl      %edx, %ebp
	call      _pari_err
	movl      %ebp, %edx
LBB48_5:
	movl      %edx, (%ebx)
	movl      36(%esp), %ebx
	cmpl      $3, %ebx
	movl      %esi, 40(%esp)
	jb        LBB48_24
	movl      24(%esp), %eax
	leal      (%eax,%ebx,4), %ecx
	movl      $2, %eax
	movl      $2, %edx
	subl      %ebx, %edx
	cmpl      $3, %ebx
	movl      $-1, %esi
	cmova     %edx, %esi
	movl      %esi, 20(%esp)
	movl      $3, %edx
	movl      $3, %esi
	cmova     %ebx, %esi
	cmpl      $2, %esi
	jne       LBB48_15
	movl      40(%esp), %edx
	jmp       LBB48_8
LBB48_2:
	call      _gerepileuptoleaf
	jmp       LBB48_46
LBB48_15:
	movl      %esi, 16(%esp)
	leal      -2(%esi), %esi
	andl      $-8, %esi
	leal      2(%esi), %eax
	cmpl      $3, %ebx
	cmova     %ebx, %edx
	cmpl      $2, %eax
	jne       LBB48_17
	movl      $2, %eax
	movl      40(%esp), %ebp
	movl      %ebp, %edx
	jmp       LBB48_22
LBB48_17:
	movl      %eax, 12(%esp)
	leal      2(%ebx), %eax
	subl      %edx, %eax
	movl      24(%esp), %ebx
	leal      (%ebx,%eax,4), %eax
	movl      40(%esp), %ebp
	leal      -4(%ebp), %ebx
	cmpl      %eax, %ebx
	ja        LBB48_19
	movl      36(%esp), %eax
	movl      24(%esp), %ebx
	leal      -4(%ebx,%eax,4), %eax
	movl      %eax, 8(%esp)
	movl      $2, %eax
	movl      %ebp, %ebx
	movl      $2, %ebp
	subl      %edx, %ebp
	leal      (%ebx,%ebp,4), %edx
	movl      %ebx, %ebp
	cmpl      %edx, 8(%esp)
	movl      %ebp, %edx
	jbe       LBB48_22
LBB48_19:
	movl      %ebp, 40(%esp)
	leal      0(,%esi,4), %eax
	movl      %ebp, %edx
	subl      %eax, %edx
	movl      %ebp, %ebx
	movl      36(%esp), %ebp
	movl      %ebp, %eax
	subl      %esi, %eax
	movl      24(%esp), %esi
	leal      (%esi,%eax,4), %ecx
	leal      -16(%esi,%ebp,4), %eax
	leal      -16(%ebx), %esi
	cmpl      $3, %ebp
	movl      $3, %ebx
	cmova     %ebp, %ebx
	addl      $-2, %ebx
	andl      $-8, %ebx
	.align 4, 0x90
LBB48_20:
	movups    -16(%eax), %xmm0
	movups    (%eax), %xmm1
	movups    %xmm1, (%esi)
	movups    %xmm0, -16(%esi)
	addl      $-32, %eax
	addl      $-32, %esi
	addl      $-8, %ebx
	jne       LBB48_20
	movl      12(%esp), %eax
	movl      40(%esp), %ebp
LBB48_22:
	movl      %ebp, 40(%esp)
	cmpl      %eax, 16(%esp)
	movl      36(%esp), %ebx
	je        LBB48_23
LBB48_8:
	leal      1(%eax), %esi
	cmpl      %ebx, %esi
	cmovge    %esi, %ebx
	movl      %ebx, %ebp
	subl      %eax, %ebp
	decl      %ebx
	subl      %eax, %ebx
	movl      %ebx, 24(%esp)
	movl      %ebp, %ebx
	testb     $7, %bl
	je        LBB48_12
	movl      36(%esp), %ebx
	cmpl      %ebx, %esi
	cmovl     %ebx, %esi
	subl      %eax, %esi
	andl      $7, %esi
	negl      %esi
	xorl      %ebx, %ebx
	.align 4, 0x90
LBB48_10:
	movl      -4(%ecx,%ebx), %ebp
	movl      %ebp, -4(%edx,%ebx)
	incl      %eax
	addl      $-4, %ebx
	incl      %esi
	jne       LBB48_10
	addl      %ebx, %edx
	addl      %ebx, %ecx
LBB48_12:
	cmpl      $7, 24(%esp)
	movl      36(%esp), %ebx
	jb        LBB48_23
	addl      $-4, %edx
	addl      $-4, %ecx
	.align 4, 0x90
LBB48_14:
	movl      (%ecx), %esi
	movl      %esi, (%edx)
	movl      -4(%ecx), %esi
	movl      %esi, -4(%edx)
	movl      -8(%ecx), %esi
	movl      %esi, -8(%edx)
	movl      -12(%ecx), %esi
	movl      %esi, -12(%edx)
	movl      -16(%ecx), %esi
	movl      %esi, -16(%edx)
	movl      -20(%ecx), %esi
	movl      %esi, -20(%edx)
	movl      -24(%ecx), %esi
	movl      %esi, -24(%edx)
	movl      -28(%ecx), %esi
	movl      %esi, -28(%edx)
	addl      $8, %eax
	addl      $-32, %edx
	addl      $-32, %ecx
	cmpl      %ebx, %eax
	jl        LBB48_14
LBB48_23:
	movl      20(%esp), %eax
	movl      40(%esp), %ecx
	leal      (%ecx,%eax,4), %ecx
	movl      %ecx, 40(%esp)
LBB48_24:
	testl     %edi, %edi
	jle       LBB48_25
	movl      %edi, %eax
	negl      %eax
	xorl      %edx, %edx
	testl     %edi, %edi
	movl      40(%esp), %ebp
	movl      %ebp, %ecx
	je        LBB48_27
	movl      %edi, %ebx
	andl      $-8, %ebx
	xorl      %edx, %edx
	movl      %edi, %esi
	andl      $-8, %esi
	movl      %ebp, %ecx
	je        LBB48_41
	shll      $2, %ebx
	leal      -8(%esi), %edx
	shrl      $3, %edx
	leal      1(%edx), %ecx
	movl      $0, 36(%esp)
	testb     $1, %cl
	je        LBB48_36
	xorps     %xmm0, %xmm0
	movups    %xmm0, -16(%ebp)
	movups    %xmm0, -32(%ebp)
	movl      $8, 36(%esp)
LBB48_36:
	movl      %ebp, %ecx
	subl      %ebx, %ecx
	testl     %edx, %edx
	jne       LBB48_38
	movl      %esi, %edx
	jmp       LBB48_41
LBB48_25:
	movl      40(%esp), %ebp
	jmp       LBB48_43
LBB48_38:
	movl      $-4, %edx
	subl      36(%esp), %edx
	leal      (%ebp,%edx,4), %edx
	movl      %ebp, 40(%esp)
	movl      %esi, %ebx
	subl      36(%esp), %ebx
	xorps     %xmm0, %xmm0
	.align 4, 0x90
LBB48_39:
	movups    %xmm0, (%edx)
	movups    %xmm0, -16(%edx)
	movups    %xmm0, -32(%edx)
	movups    %xmm0, -48(%edx)
	addl      $-64, %edx
	addl      $-16, %ebx
	jne       LBB48_39
	movl      %esi, %edx
	movl      40(%esp), %ebp
LBB48_41:
	cmpl      %edi, %edx
	je        LBB48_42
LBB48_27:
	movl      %edi, %ebx
	subl      %edx, %ebx
	leal      -1(%edi), %esi
	subl      %edx, %esi
	testb     $7, %bl
	je        LBB48_30
	andl      $7, %ebx
	negl      %ebx
	.align 4, 0x90
LBB48_29:
	movl      $0, -4(%ecx)
	addl      $-4, %ecx
	incl      %edx
	incl      %ebx
	jne       LBB48_29
LBB48_30:
	cmpl      $7, %esi
	jb        LBB48_42
	addl      $-4, %ecx
	subl      %edx, %edi
	xorps     %xmm0, %xmm0
	.align 4, 0x90
LBB48_32:
	movl      $0, (%ecx)
	movl      $0, -4(%ecx)
	movl      $0, -8(%ecx)
	movl      $0, -12(%ecx)
	movups    %xmm0, -28(%ecx)
	addl      $-32, %ecx
	addl      $-8, %edi
	jne       LBB48_32
LBB48_42:
	leal      (%ebp,%eax,4), %ebp
LBB48_43:
	addl      $-8, %ebp
	movl      28(%esp), %esi
	cmpl      $16777216, %esi
	movl      32(%esp), %eax
	jb        LBB48_45
	leal      L_.str4-L48$pb(%eax), %eax
	movl      %eax, 4(%esp)
	movl      $15, (%esp)
	call      _pari_err
LBB48_45:
	orl       $738197504, %esi
	movl      %esi, (%ebp)
	movl      %ebp, %eax
LBB48_46:
	addl      $44, %esp
	popl      %esi
	popl      %edi
	popl      %ebx
	popl      %ebp
	ret       
	.align 4, 0x90
_F2x_addshift:
	pushl     %ebp
	pushl     %ebx
	pushl     %edi
	pushl     %esi
	subl      $108, %esp
	movl      %edx, 100(%esp)
	movl      128(%esp), %edi
	movl      (%edx), %eax
	movl      %eax, 84(%esp)
	andl      $16777215, %eax
	movl      %eax, 80(%esp)
	leal      -2(%eax), %eax
	movl      %eax, 76(%esp)
	movl      (%ecx), %ebx
	andl      $16777215, %ebx
	movl      %ebx, 68(%esp)
	subl      %edi, %eax
	call      L49$pb
L49$pb:
	popl      %edx
	movl      L_avma$non_lazy_ptr-L49$pb(%edx), %esi
	movl      %esi, 88(%esp)
	movl      (%esi), %esi
	movl      4(%ecx), %ebp
	movl      %ebp, 64(%esp)
	leal      -2(%ebx), %ebx
	leal      8(%ecx), %ebp
	movl      %ebp, 104(%esp)
	movl      100(%esp), %ebp
	leal      8(%ebp), %ebp
	movl      %ebp, 60(%esp)
	jle       LBB49_1
	movl      %ebx, 96(%esp)
	movl      %eax, 92(%esp)
	leal      0(,%edi,4), %eax
	movl      %eax, 52(%esp)
	movl      %esi, %ebx
	subl      %eax, %ebx
	movl      L_bot$non_lazy_ptr-L49$pb(%edx), %ebp
	movl      %edx, 76(%esp)
	movl      (%ebp), %eax
	movl      %esi, %ecx
	subl      %eax, %ecx
	shrl      $2, %ecx
	cmpl      %edi, %ecx
	jae       LBB49_17
	movl      $14, (%esp)
	call      _pari_err
	movl      128(%esp), %edi
	movl      (%ebp), %eax
LBB49_17:
	movl      %eax, 44(%esp)
	movl      %ebx, 48(%esp)
	movl      88(%esp), %eax
	movl      %ebx, (%eax)
	movl      %edi, %edx
	movl      100(%esp), %eax
	leal      8(%eax,%edx,4), %edi
	movl      92(%esp), %ecx
	movl      96(%esp), %ebp
	cmpl      %ebp, %ecx
	movl      %ecx, %eax
	cmovg     %ebp, %eax
	movl      %eax, 100(%esp)
	cmovge    %ecx, %ebp
	movl      %edi, %eax
	movl      104(%esp), %ecx
	cmovg     %ecx, %eax
	movl      %eax, 40(%esp)
	cmovg     %edi, %ecx
	movl      %ecx, 104(%esp)
	leal      2(%ebp), %eax
	movl      %ebx, %ecx
	movl      %ebp, %ebx
	subl      44(%esp), %ecx
	movl      $-2, %ebp
	subl      %ebx, %ebp
	subl      %edx, %ebp
	movl      %ebp, 44(%esp)
	shrl      $2, %ecx
	cmpl      %eax, %ecx
	leal      (%esi,%ebp,4), %ebp
	jae       LBB49_19
	movl      $14, (%esp)
	movl      %ebx, 72(%esp)
	movl      %eax, %ebx
	call      _pari_err
	movl      %ebx, %eax
	movl      72(%esp), %ebx
LBB49_19:
	movl      88(%esp), %ecx
	movl      %ebp, (%ecx)
	cmpl      $16777216, %eax
	movl      %ebx, %edx
	jb        LBB49_21
	movl      %eax, 56(%esp)
	movl      76(%esp), %eax
	leal      L_.str4-L49$pb(%eax), %eax
	movl      %eax, 4(%esp)
	movl      $15, (%esp)
	movl      %edx, %ebx
	call      _pari_err
	movl      56(%esp), %eax
	movl      %ebx, %edx
LBB49_21:
	movl      %eax, 56(%esp)
	orl       $738197504, %eax
	movl      %eax, (%ebp)
	movl      %ebp, 88(%esp)
	xorl      %eax, %eax
	cmpl      $0, 100(%esp)
	jle       LBB49_42
	movl      %edx, 72(%esp)
	movl      92(%esp), %eax
	notl      %eax
	movl      $1, %ebp
	subl      68(%esp), %ebp
	cmpl      %eax, %ebp
	cmovge    %ebp, %eax
	movl      %eax, 32(%esp)
	addl      $2, 44(%esp)
	movl      128(%esp), %ecx
	leal      1(%ecx), %ebx
	movl      84(%esp), %ecx
	andl      $16777215, %ecx
	movl      %ecx, 28(%esp)
	subl      %ecx, %ebx
	cmpl      %ebp, %ebx
	movl      %ebp, %eax
	cmovge    %ebx, %eax
	xorl      %edx, %edx
	cmpl      $-1, %eax
	je        LBB49_23
	notl      %eax
	movl      %eax, 20(%esp)
	movl      28(%esp), %ecx
	movl      %ebx, 36(%esp)
	leal      -2(%ecx), %ebx
	movl      %ebp, %edx
	movl      %edx, 16(%esp)
	movl      128(%esp), %ebp
	movl      %ebp, %eax
	subl      %eax, %ebx
	movl      %ebx, 8(%esp)
	movl      96(%esp), %ecx
	cmpl      %ecx, %ebx
	cmovge    %ebx, %ecx
	movl      36(%esp), %ebx
	cmpl      %edx, %ebx
	cmovge    %ebx, %edx
	movl      20(%esp), %ebp
	andl      $-4, %ebp
	movl      %ebp, 24(%esp)
	je        LBB49_29
	movl      %eax, %ebx
	negl      %ebx
	subl      %ecx, %ebx
	movl      $-2, %ebp
	subl      %eax, %ebp
	subl      %ecx, %ebp
	movl      $-2, %ecx
	subl      %edx, %ebp
	subl      %edx, %ecx
	leal      (%esi,%ebx,4), %eax
	movl      %eax, 12(%esp)
	leal      (%esi,%ebp,4), %eax
	movl      40(%esp), %ebp
	leal      (%ebp,%ecx,4), %edx
	movl      %edx, 100(%esp)
	movl      104(%esp), %ebx
	leal      (%ebx,%ecx,4), %edx
	movl      12(%esp), %ecx
	cmpl      %edx, %ecx
	setbe     %dh
	cmpl      %eax, %ebx
	setbe     %dl
	cmpl      100(%esp), %ecx
	setbe     %cl
	cmpl      %eax, %ebp
	setbe     %ch
	testb     %dl, %dh
	jne       LBB49_31
	andb      %ch, %cl
	movl      36(%esp), %ebx
	movl      16(%esp), %ebp
	movl      $0, %edx
	jne       LBB49_40
	movl      $1, %ecx
	subl      68(%esp), %ecx
	cmpl      %ecx, %ebx
	cmovge    %ebx, %ecx
	notl      %ecx
	andl      $-4, %ecx
	addl      $-4, %ecx
	shrl      $2, %ecx
	leal      1(%ecx), %edx
	xorl      %ebx, %ebx
	testb     $1, %dl
	je        LBB49_35
	movl      104(%esp), %edx
	movups    (%edx), %xmm0
	movl      40(%esp), %edx
	movups    (%edx), %xmm1
	xorps     %xmm0, %xmm1
	movl      44(%esp), %edx
	movups    %xmm1, (%esi,%edx,4)
	movl      $4, %ebx
LBB49_35:
	testl     %ecx, %ecx
	jne       LBB49_37
	movl      24(%esp), %edx
	movl      36(%esp), %ebx
	jmp       LBB49_40
LBB49_1:
	movl      %ecx, 84(%esp)
	addl      %ebx, %edi
	cmpl      %ebx, %eax
	movl      %eax, 92(%esp)
	cmovg     76(%esp), %edi
	movl      $-2, %eax
	subl      %edi, %eax
	addl      $2, %edi
	movl      %edi, 24(%esp)
	leal      (%esi,%eax,4), %ebp
	movl      L_bot$non_lazy_ptr-L49$pb(%edx), %eax
	movl      %edx, 76(%esp)
	movl      %esi, %ecx
	subl      (%eax), %ecx
	shrl      $2, %ecx
	cmpl      %edi, %ecx
	jae       LBB49_3
	movl      $14, (%esp)
	call      _pari_err
LBB49_3:
	movl      88(%esp), %eax
	movl      %ebp, (%eax)
	movl      68(%esp), %eax
	cmpl      $3, %eax
	movl      64(%esp), %edx
	movl      104(%esp), %edi
	movl      84(%esp), %ecx
	jb        LBB49_6
	leal      (%ecx,%eax,4), %eax
	.align 4, 0x90
LBB49_5:
	movl      -4(%eax), %ecx
	addl      $-4, %eax
	movl      %ecx, -4(%esi)
	addl      $-4, %esi
	cmpl      %edi, %eax
	ja        LBB49_5
LBB49_6:
	movl      80(%esp), %eax
	movl      100(%esp), %ecx
	leal      (%ecx,%eax,4), %edi
	movl      92(%esp), %eax
	testl     %eax, %eax
	movl      24(%esp), %ebx
	movl      60(%esp), %ebp
	jns       LBB49_7
	leal      (%esi,%eax,4), %eax
	.align 4, 0x90
LBB49_14:
	movl      $0, -4(%esi)
	addl      $-4, %esi
	cmpl      %eax, %esi
	ja        LBB49_14
LBB49_7:
	movl      76(%esp), %ecx
	jmp       LBB49_9
LBB49_31:
	movl      36(%esp), %ebx
LBB49_29:
	movl      16(%esp), %ebp
	xorl      %edx, %edx
	jmp       LBB49_40
LBB49_37:
	movl      %ebx, %ecx
	subl      128(%esp), %ecx
	movl      96(%esp), %edx
	movl      %ebx, %eax
	movl      %eax, 100(%esp)
	movl      8(%esp), %ebx
	cmpl      %edx, %ebx
	cmovl     %edx, %ebx
	subl      %ebx, %ecx
	leal      (%esi,%ecx,4), %ebx
	movl      104(%esp), %ecx
	leal      16(%ecx,%eax,4), %ecx
	movl      40(%esp), %edx
	leal      16(%edx,%eax,4), %edx
	movl      $1, %ebp
	subl      68(%esp), %ebp
	movl      36(%esp), %eax
	cmpl      %ebp, %eax
	cmovge    %eax, %ebp
	notl      %ebp
	andl      $-4, %ebp
	subl      100(%esp), %ebp
	movl      %ebp, 100(%esp)
	xorl      %ebp, %ebp
	.align 4, 0x90
LBB49_38:
	movups    -16(%ecx,%ebp,4), %xmm0
	movups    -16(%edx,%ebp,4), %xmm1
	xorps     %xmm0, %xmm1
	movups    %xmm1, (%ebx,%ebp,4)
	movups    (%ecx,%ebp,4), %xmm0
	movups    (%edx,%ebp,4), %xmm1
	xorps     %xmm0, %xmm1
	movups    %xmm1, 16(%ebx,%ebp,4)
	addl      $8, %ebp
	cmpl      %ebp, 100(%esp)
	jne       LBB49_38
	movl      24(%esp), %edx
	movl      36(%esp), %ebx
	movl      16(%esp), %ebp
LBB49_40:
	cmpl      20(%esp), %edx
	je        LBB49_41
LBB49_23:
	movl      %edx, %ecx
	notl      %ecx
	cmpl      %ebp, %ebx
	cmovge    %ebx, %ebp
	subl      %ebp, %ecx
	movl      $-2, %eax
	subl      %edx, %eax
	subl      %ebp, %eax
	testb     $1, %cl
	je        LBB49_25
	movl      40(%esp), %ecx
	movl      (%ecx,%edx,4), %ecx
	movl      %ebx, 36(%esp)
	movl      104(%esp), %ebx
	xorl      (%ebx,%edx,4), %ecx
	movl      44(%esp), %ebx
	addl      %edx, %ebx
	movl      %ecx, (%esi,%ebx,4)
	movl      36(%esp), %ebx
	incl      %edx
LBB49_25:
	testl     %eax, %eax
	je        LBB49_41
	movl      %edx, %ecx
	movl      %edx, 44(%esp)
	movl      128(%esp), %edx
	subl      %edx, %ecx
	movl      28(%esp), %ebp
	addl      $-2, %ebp
	subl      %edx, %ebp
	movl      96(%esp), %edx
	cmpl      %edx, %ebp
	cmovl     %edx, %ebp
	subl      %ebp, %ecx
	movl      %ebx, %edx
	movl      $1, %ebx
	subl      68(%esp), %ebx
	leal      (%esi,%ecx,4), %eax
	cmpl      %ebx, %edx
	cmovge    %edx, %ebx
	movl      44(%esp), %ebp
	movl      %ebp, %ecx
	notl      %ecx
	subl      %ebx, %ecx
	movl      %ecx, 100(%esp)
	movl      40(%esp), %ecx
	leal      4(%ecx,%ebp,4), %ecx
	movl      104(%esp), %edx
	leal      4(%edx,%ebp,4), %ebp
	xorl      %ebx, %ebx
	.align 4, 0x90
LBB49_27:
	movl      -4(%ecx,%ebx,4), %edx
	xorl      -4(%ebp,%ebx,4), %edx
	movl      %edx, (%eax,%ebx,4)
	movl      (%ecx,%ebx,4), %edx
	xorl      (%ebp,%ebx,4), %edx
	movl      %edx, 4(%eax,%ebx,4)
	addl      $2, %ebx
	cmpl      %ebx, 100(%esp)
	jne       LBB49_27
LBB49_41:
	movl      32(%esp), %eax
	notl      %eax
	movl      72(%esp), %edx
LBB49_42:
	cmpl      %edx, %eax
	jge       LBB49_66
	movl      84(%esp), %ebx
	andl      $16777215, %ebx
	addl      $-2, %ebx
	subl      128(%esp), %ebx
	movl      96(%esp), %ebp
	cmpl      %ebp, %ebx
	cmovge    %ebx, %ebp
	leal      -1(%ebp), %ecx
	subl      %eax, %ecx
	cmpl      $-1, %ecx
	je        LBB49_44
	movl      %edx, 72(%esp)
	movl      %ebp, %edx
	movl      %ebp, 68(%esp)
	subl      %eax, %edx
	movl      %edx, %ebp
	andl      $-4, %ebp
	movl      96(%esp), %ecx
	cmpl      %ecx, %ebx
	cmovge    %ebx, %ecx
	andl      $-4, %edx
	je        LBB49_53
	movl      %ebp, 44(%esp)
	movl      %ebx, 84(%esp)
	movl      104(%esp), %ebp
	leal      -4(%ebp,%ecx,4), %edx
	movl      %edx, 100(%esp)
	movl      %eax, %ebx
	movl      128(%esp), %edx
	subl      %edx, %ebx
	subl      %ecx, %ebx
	leal      (%esi,%ebx,4), %ecx
	cmpl      100(%esp), %ecx
	ja        LBB49_56
	leal      (%ebp,%eax,4), %ecx
	notl      %edx
	leal      (%esi,%edx,4), %edx
	cmpl      %edx, %ecx
	jbe       LBB49_64
LBB49_56:
	movl      96(%esp), %ecx
	movl      84(%esp), %edx
	cmpl      %ecx, %edx
	cmovge    %edx, %ecx
	subl      %eax, %ecx
	andl      $-4, %ecx
	addl      $-4, %ecx
	shrl      $2, %ecx
	movl      %ecx, 40(%esp)
	leal      1(%ecx), %ecx
	testb     $3, %cl
	movl      %eax, %ebx
	je        LBB49_59
	movl      96(%esp), %ecx
	movl      84(%esp), %edx
	cmpl      %ecx, %edx
	cmovge    %edx, %ecx
	movl      128(%esp), %edx
	negl      %edx
	subl      %ecx, %edx
	subl      %eax, %ecx
	andl      $-4, %ecx
	addl      $-4, %ecx
	leal      (%esi,%edx,4), %edx
	movl      %edx, 100(%esp)
	movl      %ecx, %edx
	shrl      $2, %edx
	incl      %edx
	andl      $3, %edx
	negl      %edx
	movl      %eax, %ebx
	.align 4, 0x90
LBB49_58:
	movups    (%ebp,%ebx,4), %xmm0
	movl      100(%esp), %ebp
	movups    %xmm0, (%ebp,%ebx,4)
	movl      104(%esp), %ebp
	addl      $4, %ebx
	addl      $-4, %ecx
	incl      %edx
	jne       LBB49_58
LBB49_59:
	movl      44(%esp), %ebp
	addl      %eax, %ebp
	cmpl      $3, 40(%esp)
	movl      72(%esp), %edx
	jae       LBB49_61
	movl      %ebp, %eax
	jmp       LBB49_65
LBB49_44:
	movl      %ebx, 84(%esp)
	jmp       LBB49_45
LBB49_53:
	movl      %ebx, 84(%esp)
	jmp       LBB49_64
LBB49_61:
	movl      %ebx, %ecx
	subl      128(%esp), %ecx
	movl      96(%esp), %edx
	cmpl      %edx, 84(%esp)
	cmovge    84(%esp), %edx
	subl      %edx, %ecx
	leal      (%esi,%ecx,4), %ecx
	subl      %eax, %edx
	andl      $-4, %edx
	addl      %eax, %edx
	movl      104(%esp), %eax
	leal      48(%eax,%ebx,4), %eax
	subl      %ebx, %edx
	xorl      %ebx, %ebx
	.align 4, 0x90
LBB49_62:
	movups    -48(%eax,%ebx,4), %xmm0
	movups    %xmm0, (%ecx,%ebx,4)
	movups    -32(%eax,%ebx,4), %xmm0
	movups    %xmm0, 16(%ecx,%ebx,4)
	movups    -16(%eax,%ebx,4), %xmm0
	movups    %xmm0, 32(%ecx,%ebx,4)
	movups    (%eax,%ebx,4), %xmm0
	movups    %xmm0, 48(%ecx,%ebx,4)
	addl      $16, %ebx
	cmpl      %ebx, %edx
	jne       LBB49_62
	movl      %ebp, %eax
LBB49_64:
	movl      72(%esp), %edx
LBB49_65:
	movl      68(%esp), %ecx
	cmpl      %eax, %ecx
	je        LBB49_66
LBB49_45:
	movl      %edx, 72(%esp)
	movl      84(%esp), %ebx
	movl      96(%esp), %ecx
	cmpl      %ecx, %ebx
	movl      %ecx, %ebp
	cmovge    %ebx, %ebp
	leal      1(%eax), %edx
	movl      %edx, 68(%esp)
	cmpl      %edx, %ebp
	cmovl     %edx, %ebp
	movl      %ebp, %edx
	subl      %eax, %edx
	decl      %ebp
	subl      %eax, %ebp
	movl      %ebp, 100(%esp)
	testb     $3, %dl
	je        LBB49_46
	movl      128(%esp), %ebp
	negl      %ebp
	cmpl      %ecx, %ebx
	movl      %ecx, %edx
	cmovge    %ebx, %edx
	subl      %edx, %ebp
	movl      68(%esp), %ecx
	cmpl      %ecx, %edx
	cmovl     %ecx, %edx
	leal      (%esi,%ebp,4), %ecx
	subl      %eax, %edx
	andl      $3, %edx
	negl      %edx
	movl      104(%esp), %ebx
	.align 4, 0x90
LBB49_48:
	movl      (%ebx,%eax,4), %ebp
	movl      %ebp, (%ecx,%eax,4)
	incl      %eax
	incl      %edx
	jne       LBB49_48
	jmp       LBB49_49
LBB49_46:
	movl      104(%esp), %ebx
LBB49_49:
	cmpl      $3, 100(%esp)
	jb        LBB49_66
	movl      128(%esp), %ecx
	negl      %ecx
	movl      84(%esp), %edx
	movl      96(%esp), %ebp
	cmpl      %ebp, %edx
	cmovl     %ebp, %edx
	subl      %edx, %ecx
	movl      72(%esp), %ebp
	leal      (%esi,%ecx,4), %ecx
	.align 4, 0x90
LBB49_51:
	movl      (%ebx,%eax,4), %edx
	movl      %edx, (%ecx,%eax,4)
	movl      4(%ebx,%eax,4), %edx
	movl      %edx, 4(%ecx,%eax,4)
	movl      8(%ebx,%eax,4), %edx
	movl      %edx, 8(%ecx,%eax,4)
	movl      12(%ebx,%eax,4), %edx
	movl      %edx, 12(%ecx,%eax,4)
	addl      $4, %eax
	cmpl      %ebp, %eax
	jl        LBB49_51
LBB49_66:
	movl      56(%esp), %eax
	movl      %eax, 4(%esp)
	movl      88(%esp), %eax
	movl      %eax, (%esp)
	call      _Flx_renormalize
	movl      96(%esp), %ecx
	cmpl      %ecx, 92(%esp)
	jg        LBB49_68
	movl      $16777215, %ecx
	andl      (%eax), %ecx
	addl      128(%esp), %ecx
	movl      %ecx, 80(%esp)
LBB49_68:
	addl      $8, %eax
	cmpl      %eax, 48(%esp)
	movl      64(%esp), %edx
	movl      52(%esp), %ebx
	jbe       LBB49_69
	negl      %ebx
	.align 4, 0x90
LBB49_71:
	movl      -4(%ebx,%esi), %ecx
	movl      %ecx, -4(%esi)
	leal      -4(%esi,%ebx), %ecx
	leal      -4(%esi), %esi
	cmpl      %eax, %ecx
	ja        LBB49_71
LBB49_69:
	movl      80(%esp), %ebx
	movl      76(%esp), %ecx
	movl      60(%esp), %ebp
	jmp       LBB49_9
	.align 4, 0x90
LBB49_8:
	movl      -4(%edi), %eax
	addl      $-4, %edi
	movl      %eax, -4(%esi)
	addl      $-4, %esi
LBB49_9:
	cmpl      %ebp, %edi
	ja        LBB49_8
	movl      %edx, -4(%esi)
	cmpl      $16777216, %ebx
	jb        LBB49_12
	leal      L_.str4-L49$pb(%ecx), %eax
	movl      %eax, 4(%esp)
	movl      $15, (%esp)
	call      _pari_err
LBB49_12:
	orl       $738197504, %ebx
	movl      %ebx, -8(%esi)
	addl      $-8, %esi
	movl      %esi, %eax
	addl      $108, %esp
	popl      %esi
	popl      %edi
	popl      %ebx
	popl      %ebp
	ret       
	.align 4, 0x90
_bin_copy:
	pushl     %ebp
	pushl     %ebx
	pushl     %edi
	pushl     %esi
	subl      $44, %esp
	movl      %ecx, %esi
	call      L50$pb
L50$pb:
	popl      %ecx
	movl      4(%esi), %ebp
	testl     %ebp, %ebp
	je        LBB50_1
	movl      (%esi), %edx
	movl      %edx, 36(%esp)
	movl      %ebp, 32(%esp)
	subl      8(%esi), %ebp
	sarl      $2, %ebp
	movl      L_avma$non_lazy_ptr-L50$pb(%ecx), %eax
	movl      %eax, 24(%esp)
	movl      (%eax), %ebx
	movl      %ebx, 28(%esp)
	leal      0(,%edx,4), %edi
	movl      L_bot$non_lazy_ptr-L50$pb(%ecx), %eax
	movl      %ecx, 40(%esp)
	movl      %ebx, %ecx
	subl      (%eax), %ecx
	subl      %edi, %ebx
	shrl      $2, %ecx
	cmpl      %edx, %ecx
	jae       LBB50_7
	movl      $14, (%esp)
	call      _pari_err
LBB50_7:
	movl      24(%esp), %eax
	movl      %ebx, (%eax)
	leal      16(%esi), %eax
	movl      %edi, 8(%esp)
	movl      %eax, 4(%esp)
	movl      %ebx, (%esp)
	call      _memcpy
	subl      36(%esp), %ebp
	movl      28(%esp), %eax
	leal      (%eax,%ebp,4), %edi
	movl      %edi, %eax
	subl      32(%esp), %eax
	cmpl      $0, 12(%esi)
	je        LBB50_9
	movl      %eax, 4(%esp)
	movl      %edi, (%esp)
	call      _shiftaddress_canon
	jmp       LBB50_10
LBB50_1:
	movl      %ecx, %ebp
	movl      L_PARI_SIGINT_block$non_lazy_ptr-L50$pb(%ebp), %edi
	movl      (%edi), %ebx
	movl      $1, (%edi)
	movl      %esi, (%esp)
	call      _free
	movl      %ebx, (%edi)
	movl      %ebp, %esi
	testl     %ebx, %ebx
	jne       LBB50_4
	movl      L_PARI_SIGINT_pending$non_lazy_ptr-L50$pb(%esi), %eax
	cmpl      $0, (%eax)
	je        LBB50_4
	movl      (%eax), %ecx
	movl      $0, (%eax)
	movl      %ecx, (%esp)
	call      _raise
LBB50_4:
	movl      L_gen_0$non_lazy_ptr-L50$pb(%esi), %eax
	movl      (%eax), %edi
	jmp       LBB50_13
LBB50_9:
	movl      %eax, 4(%esp)
	movl      %edi, (%esp)
	call      _shiftaddress
LBB50_10:
	movl      40(%esp), %eax
	movl      L_PARI_SIGINT_block$non_lazy_ptr-L50$pb(%eax), %ebx
	movl      (%ebx), %ebp
	movl      $1, (%ebx)
	movl      %esi, (%esp)
	call      _free
	movl      %ebp, (%ebx)
	testl     %ebp, %ebp
	jne       LBB50_13
	movl      40(%esp), %eax
	movl      L_PARI_SIGINT_pending$non_lazy_ptr-L50$pb(%eax), %eax
	cmpl      $0, (%eax)
	je        LBB50_13
	movl      (%eax), %ecx
	movl      $0, (%eax)
	movl      %ecx, (%esp)
	call      _raise
LBB50_13:
	movl      %edi, %eax
	addl      $44, %esp
	popl      %esi
	popl      %edi
	popl      %ebx
	popl      %ebp
	ret       
	.align 4, 0x90
__F2xq_pow:
	subl      $12, %esp
	movl      20(%esp), %eax
	movl      24(%esp), %ecx
	movl      16(%esp), %edx
	movl      %edx, 8(%esp)
	movl      %ecx, 4(%esp)
	movl      %eax, (%esp)
	call      _F2xq_pow
	addl      $12, %esp
	ret       
	.align 4, 0x90
__F2xq_rand:
	pushl     %ebp
	pushl     %ebx
	pushl     %edi
	pushl     %esi
	subl      $12, %esp
	call      L52$pb
L52$pb:
	popl      %ebp
	movl      32(%esp), %edx
	movl      L_avma$non_lazy_ptr-L52$pb(%ebp), %edi
	movl      (%edi), %ebx
	movl      $16777215, %eax
	movl      (%edx), %ecx
	andl      %eax, %ecx
	movl      $-1, %esi
	cmpl      $2, %ecx
	je        LBB52_6
	movl      -4(%edx,%ecx,4), %eax
	movl      %eax, %edx
	shrl      $16, %edx
	cmpl      $65535, %eax
	cmovbe    %eax, %edx
	movl      $12, %esi
	movl      $28, %eax
	cmova     %esi, %eax
	cmpl      $256, %edx
	jb        LBB52_3
	addl      $-8, %eax
	shrl      $8, %edx
LBB52_3:
	shll      $5, %ecx
	cmpl      $16, %edx
	jb        LBB52_5
	addl      $-4, %eax
	shrl      $4, %edx
LBB52_5:
	addl      $-65, %ecx
	subl      %eax, %ecx
	subl      _F2x_degree_lg.__bfffo_tabshi-L52$pb(%ebp,%edx,4), %ecx
	movl      %ecx, %esi
	movl      32(%esp), %edx
	.align 4, 0x90
LBB52_6:
	movl      %ebx, (%edi)
	movl      4(%edx), %eax
	movl      %eax, 4(%esp)
	movl      %esi, (%esp)
	movl      %edx, %ebp
	call      _random_F2x
	movl      %ebp, %edx
	movl      $16777215, %ebp
	movl      (%eax), %ecx
	andl      %ebp, %ecx
	cmpl      $2, %ecx
	je        LBB52_6
	addl      $12, %esp
	popl      %esi
	popl      %edi
	popl      %ebx
	popl      %ebp
	ret       
	.align 4, 0x90
__F2xq_hash:
	movl      4(%esp), %eax
	movl      8(%eax), %eax
	ret       
	.align 4, 0x90
_vecsmall_lexcmp:
	pushl     %ebp
	pushl     %ebx
	pushl     %edi
	pushl     %esi
	movl      24(%esp), %eax
	movl      20(%esp), %esi
	movl      $16777215, %ecx
	movl      (%esi), %edx
	andl      %ecx, %edx
	andl      (%eax), %ecx
	cmpl      %ecx, %edx
	movl      %ecx, %edi
	cmovb     %edx, %edi
	cmpl      $1, %edi
	jbe       LBB54_5
	movl      $1, %ebx
	.align 4, 0x90
LBB54_3:
	movl      (%eax,%ebx,4), %ebp
	cmpl      %ebp, (%esi,%ebx,4)
	jne       LBB54_4
	incl      %ebx
	cmpl      %edi, %ebx
	jl        LBB54_3
LBB54_5:
	xorl      %eax, %eax
	cmpl      %ecx, %edx
	je        LBB54_7
	movl      $-1, %ecx
	movl      $1, %eax
	cmovb     %ecx, %eax
	jmp       LBB54_7
LBB54_4:
	movl      $-1, %ecx
	movl      $1, %eax
	cmovl     %ecx, %eax
LBB54_7:
	popl      %esi
	popl      %edi
	popl      %ebx
	popl      %ebp
	ret       
# ----------------------
	.section       __TEXT,__const
	.align 2
_F2x_sqr.sq:
	.long	0
	.long	1
	.long	4
	.long	5
	.long	16
	.long	17
	.long	20
	.long	21
	.long	64
	.long	65
	.long	68
	.long	69
	.long	80
	.long	81
	.long	84
	.long	85
	.align 2
_F2x_degree_lg.__bfffo_tabshi:
	.long	4
	.long	3
	.long	2
	.long	2
	.long	1
	.long	1
	.long	1
	.long	1
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
# ----------------------
	.section       __TEXT,__cstring,cstring_literals
L_.str:
	.asciz	"F2x_gcd (d = %ld)"
L_.str1:
	.asciz	"F2x_extgcd (d = %ld)"
L_.str2:
	.asciz	"F2xq_sqrt (i = %ld)"
L_.str3:
	.asciz	"mallocing NULL object"
L_.str4:
	.asciz	"lg()"
# ----------------------
	.section       __DATA,__const
	.align 2
_F2xq_star:
	.long	__F2xq_mul
	.long	__F2xq_pow
	.long	__F2xq_rand
	.long	__F2xq_hash
	.long	_vecsmall_lexcmp
	.long	_F2x_equal1
# ----------------------
	.section       __IMPORT,__pointers,non_lazy_symbol_pointers
L_DEBUGMEM$non_lazy_ptr:
	.indirect_symbol _DEBUGMEM
	.long	0
# ----------------------
L_PARI_SIGINT_block$non_lazy_ptr:
	.indirect_symbol _PARI_SIGINT_block
	.long	0
# ----------------------
L_PARI_SIGINT_pending$non_lazy_ptr:
	.indirect_symbol _PARI_SIGINT_pending
	.long	0
# ----------------------
L___stack_chk_guard$non_lazy_ptr:
	.indirect_symbol ___stack_chk_guard
	.long	0
# ----------------------
L_avma$non_lazy_ptr:
	.indirect_symbol _avma
	.long	0
# ----------------------
L_bot$non_lazy_ptr:
	.indirect_symbol _bot
	.long	0
# ----------------------
L_gen_0$non_lazy_ptr:
	.indirect_symbol _gen_0
	.long	0
# ----------------------
L_gen_1$non_lazy_ptr:
	.indirect_symbol _gen_1
	.long	0
# ----------------------
L_gen_2$non_lazy_ptr:
	.indirect_symbol _gen_2
	.long	0
# ----------------------
L_top$non_lazy_ptr:
	.indirect_symbol _top
	.long	0
# ----------------------
	.set	Ltmp0,LJTI47_0-L47$pb
	.set	L47_0_set_12,LBB47_12-L47$pb
	.set	L47_0_set_11,LBB47_11-L47$pb
	.set	L47_0_set_10,LBB47_10-L47$pb
	.set	L47_0_set_9,LBB47_9-L47$pb
	.set	L47_0_set_8,LBB47_8-L47$pb
	.set	L47_0_set_7,LBB47_7-L47$pb
	.set	L47_0_set_6,LBB47_6-L47$pb

.subsections_via_symbols
