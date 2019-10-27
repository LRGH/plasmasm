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
	je        L00000064
L00000016:
	movl      -4(%edx,%ecx,4), %edx
	movl      %edx, %eax
	shrl      $16, %eax
	cmpl      $65535, %edx
	cmovbe    %edx, %eax
	movl      $12, %esi
	movl      $28, %edx
	cmova     %esi, %edx
	cmpl      $256, %eax
	jb        L00000042
L0000003C:
	addl      $-8, %edx
	shrl      $8, %eax
L00000042:
	call      L00000047
L00000047:
	popl      %esi
	sall      $5, %ecx
	cmpl      $16, %eax
	jb        L00000056
L00000050:
	addl      $-4, %edx
	shrl      $4, %eax
L00000056:
	addl      $-65, %ecx
	subl      %edx, %ecx
	subl      _F2x_degree_lg.__bfffo_tabshi-L00000047(%esi,%eax,4), %ecx
	movl      %ecx, %eax
L00000064:
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
	call      L0000007C
L0000007C:
	popl      %ebx
	movl      %ebx, 56(%esp)
	movl      80(%esp), %ecx
	movl      $16777215, %eax
	andl      (%ecx), %eax
	movl      $2, %ebp
	cmpl      $2, %eax
	je        L000000E3
L00000096:
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
	jb        L000000C7
L000000C1:
	addl      $-8, %edx
	shrl      $8, %ecx
L000000C7:
	sall      $5, %eax
	cmpl      $16, %ecx
	jb        L000000D5
L000000CF:
	addl      $-4, %edx
	shrl      $4, %ecx
L000000D5:
	addl      $-62, %eax
	subl      %edx, %eax
	subl      _F2x_degree_lg.__bfffo_tabshi-L0000007C(%ebx,%ecx,4), %eax
	movl      %eax, %ebp
L000000E3:
	movl      %ebp, 36(%esp)
	movl      L_avma$non_lazy_ptr-L0000007C(%ebx), %esi
	movl      (%esi), %ecx
	movl      %ecx, 28(%esp)
	leal      0(,%ebp,4), %eax
	movl      %ecx, %edx
	subl      %eax, %edx
	movl      %edx, 20(%esp)
	movl      L_bot$non_lazy_ptr-L0000007C(%ebx), %eax
	subl      (%eax), %ecx
	shrl      $2, %ecx
	cmpl      %ebp, %ecx
	jae       L0000011D
L00000111:
	movl      $14, (%esp)
	call      _pari_err
L0000011D:
	movl      20(%esp), %eax
	movl      %eax, (%esi)
	cmpl      $16777216, %ebp
	jb        L00000141
L0000012B:
	leal      LC00009591-L0000007C(%ebx), %eax
	movl      %eax, 4(%esp)
	movl      $15, (%esp)
	call      _pari_err
L00000141:
	movl      %ebp, %eax
	orl       $335544320, %eax
	movl      20(%esp), %ecx
	movl      %eax, (%ecx)
	movl      80(%esp), %eax
	movl      (%eax), %eax
	movl      %eax, %ecx
	andl      $16777215, %ecx
	cmpl      $3, %ecx
	jb        L00000295
L00000165:
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
L00000190:
	movl      %esi, %edx
	subl      %ebp, %edx
	jge       L00000280
L0000019A:
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
	je        L000001F1
L000001CA:
	movl      80(%esp), %eax
	movl      (%eax,%edi,4), %eax
	testb     $1, %al
	movl      L_gen_0$non_lazy_ptr-L0000007C(%ebx), %eax
	cmovne    L_gen_1$non_lazy_ptr-L0000007C(%ebx), %eax
	movl      (%eax), %eax
	movl      28(%esp), %ecx
	movl      %eax, (%ecx,%edx,4)
	movl      $1, %eax
	leal      1(%esi), %ecx
L000001F1:
	movl      %ecx, 40(%esp)
	movl      %esi, 44(%esp)
	testl     %ebp, %ebp
	movl      80(%esp), %ecx
	movl      %edi, %edx
	je        L0000026D
L00000203:
	movl      48(%esp), %esi
	notl      %esi
	movl      %esi, 52(%esp)
	movl      %ecx, %esi
	movl      24(%esp), %ecx
	movl      40(%esp), %edi
	leal      (%ecx,%edi,4), %ebp
	movl      %esi, %ecx
	.align 4, 0x90
L00000220:
	movl      (%ecx,%edx,4), %esi
	btl       %eax, %esi
	movl      L_gen_1$non_lazy_ptr-L0000007C(%ebx), %esi
	movl      56(%esp), %ecx
	movl      L_gen_0$non_lazy_ptr-L0000007C(%ecx), %ebx
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
	jne       L00000220
L0000026D:
	movl      44(%esp), %esi
	subl      48(%esp), %esi
	movl      (%ecx), %eax
	movl      36(%esp), %ebp
	movl      %edx, %ecx
	jmp       L00000282
L0000027F:
	.align 4, 0x90
L00000280:
	movl      %edi, %ecx
L00000282:
	incl      %ecx
	movl      %ecx, %edi
	movl      %eax, %edx
	andl      $16777215, %edx
	cmpl      %edx, %edi
	jl        L00000190
L00000295:
	cmpl      $2, %ebp
	setg      %al
	movzbl    %al, %eax
	sall      $30, %eax
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
	call      L000002DC
L000002DC:
	popl      %eax
	movl      32(%esp), %edi
	movl      (%edi), %ebx
	andl      $16777215, %ebx
	movl      L_avma$non_lazy_ptr-L000002DC(%eax), %ebp
	movl      (%ebp), %ecx
	leal      0(,%ebx,4), %edx
	movl      %ecx, %esi
	subl      %edx, %esi
	movl      L_bot$non_lazy_ptr-L000002DC(%eax), %eax
	subl      (%eax), %ecx
	shrl      $2, %ecx
	cmpl      %ebx, %ecx
	jae       L00000318
L0000030C:
	movl      $14, (%esp)
	call      _pari_err
L00000318:
	movl      %esi, (%ebp)
	movl      %ebx, %eax
	orl       $603979776, %eax
	movl      %eax, (%esi)
	cmpl      $2, %ebx
	jb        L00000343
L00000329:
	movl      $1, %ebp
	.align 4, 0x90
L00000330:
	movl      (%edi,%ebp,4), %eax
	movl      %eax, (%esp)
	call      _F2x_to_ZX
L0000033B:
	movl      %eax, (%esi,%ebp,4)
	incl      %ebp
	cmpl      %ebx, %ebp
	jl        L00000330
L00000343:
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
	call      L0000035C
L0000035C:
	popl      %esi
	movl      64(%esp), %edi
	movl      $16777215, %eax
	andl      (%edi), %eax
	movl      $2, %ecx
	cmpl      $2, %eax
	je        L000003BB
L00000372:
	movl      -4(%edi,%eax,4), %edx
	movl      %edx, %ecx
	shrl      $16, %ecx
	cmpl      $65535, %edx
	cmovbe    %edx, %ecx
	movl      $12, %ebx
	movl      $28, %edx
	cmova     %ebx, %edx
	cmpl      $256, %ecx
	jb        L0000039F
L00000399:
	addl      $-8, %edx
	shrl      $8, %ecx
L0000039F:
	sall      $5, %eax
	cmpl      $16, %ecx
	jb        L000003AD
L000003A7:
	addl      $-4, %edx
	shrl      $4, %ecx
L000003AD:
	addl      $-62, %eax
	subl      %edx, %eax
	subl      _F2x_degree_lg.__bfffo_tabshi-L0000035C(%esi,%ecx,4), %eax
	movl      %eax, %ecx
L000003BB:
	movl      %ecx, %edx
	movl      L_avma$non_lazy_ptr-L0000035C(%esi), %ebx
	movl      (%ebx), %ecx
	movl      %ecx, 24(%esp)
	leal      0(,%edx,4), %eax
	movl      %ecx, %ebp
	subl      %eax, %ebp
	movl      %ebp, 16(%esp)
	movl      L_bot$non_lazy_ptr-L0000035C(%esi), %eax
	subl      (%eax), %ecx
	shrl      $2, %ecx
	cmpl      %edx, %ecx
	movl      %edx, %ebp
	jae       L000003F5
L000003E9:
	movl      $14, (%esp)
	call      _pari_err
L000003F5:
	movl      16(%esp), %eax
	movl      %eax, (%ebx)
	movl      %ebp, %ebx
	movl      %ebx, 32(%esp)
	cmpl      $16777216, %ebx
	jb        L0000041F
L00000409:
	leal      LC00009591-L0000035C(%esi), %eax
	movl      %eax, 4(%esp)
	movl      $15, (%esp)
	call      _pari_err
L0000041F:
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
	jb        L00000523
L00000450:
	movl      %ebx, %edx
	negl      %edx
	movl      %edx, 28(%esp)
	movl      24(%esp), %edx
	leal      (%edx,%ecx,4), %ecx
	movl      %ecx, 20(%esp)
	movl      $2, %esi
	movl      $2, %ebp
	.align 4, 0x90
L00000470:
	movl      %esi, %edx
	subl      %ebx, %edx
	jge       L00000512
L0000047A:
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
	je        L000004C7
L000004AE:
	movl      (%edi,%ebp,4), %eax
	andl      $1, %eax
	movl      24(%esp), %esi
	movl      %eax, (%esi,%edx,4)
	movl      $1, %eax
	movl      40(%esp), %edx
	leal      1(%edx), %ebx
L000004C7:
	testl     %ecx, %ecx
	je        L00000504
L000004CB:
	movl      36(%esp), %edx
	notl      %edx
	movl      20(%esp), %ecx
	leal      (%ecx,%ebx,4), %ebx
	.align 4, 0x90
L000004E0:
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
	jne       L000004E0
L00000504:
	movl      40(%esp), %esi
	subl      36(%esp), %esi
	movl      (%edi), %eax
	movl      32(%esp), %ebx
L00000512:
	incl      %ebp
	movl      %eax, %ecx
	andl      $16777215, %ecx
	cmpl      %ecx, %ebp
	jl        L00000470
L00000523:
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
	call      L0000053C
L0000053C:
	popl      %ebp
	movl      36(%esp), %edi
	movl      32(%esp), %eax
	movl      4(%eax), %ecx
	cmpl      $1073741823, %ecx
	jbe       L0000056B
L00000550:
	andl      $16777215, %ecx
	testb     $1, -4(%eax,%ecx,4)
	movl      L_avma$non_lazy_ptr-L0000053C(%ebp), %edi
	movl      (%edi), %ebx
	jne       L000005A5
L00000565:
	movl      36(%esp), %edi
	jmp       L00000573
L0000056B:
	movl      L_avma$non_lazy_ptr-L0000053C(%ebp), %eax
	movl      (%eax), %ebx
L00000573:
	leal      -8(%ebx), %esi
	movl      L_bot$non_lazy_ptr-L0000053C(%ebp), %eax
	movl      %ebx, %ecx
	subl      (%eax), %ecx
	cmpl      $7, %ecx
	ja        L00000591
L00000585:
	movl      $14, (%esp)
	call      _pari_err
L00000591:
	movl      L_avma$non_lazy_ptr-L0000053C(%ebp), %eax
	movl      %esi, (%eax)
	movl      $738197506, -8(%ebx)
	movl      %edi, -4(%ebx)
	jmp       L000005DC
L000005A5:
	movl      %ebx, %esi
	addl      $-12, %esi
	movl      L_bot$non_lazy_ptr-L0000053C(%ebp), %eax
	movl      %ebx, %ecx
	subl      (%eax), %ecx
	cmpl      $11, %ecx
	ja        L000005C5
L000005B9:
	movl      $14, (%esp)
	call      _pari_err
L000005C5:
	movl      %esi, (%edi)
	movl      $738197507, -12(%ebx)
	movl      36(%esp), %eax
	movl      %eax, -8(%ebx)
	movl      $1, -4(%ebx)
L000005DC:
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
	call      L000005FC
L000005FC:
	popl      %eax
	movl      48(%esp), %ecx
	movl      $16777215, %ebx
	movl      (%ecx), %esi
	andl      %ebx, %esi
	addl      $93, %esi
	shrl      $5, %esi
	movl      %esi, 20(%esp)
	movl      L_avma$non_lazy_ptr-L000005FC(%eax), %ecx
	movl      %ecx, 12(%esp)
	movl      (%ecx), %edx
	movl      %edx, 24(%esp)
	leal      0(,%esi,4), %ecx
	movl      %edx, %edi
	subl      %ecx, %edi
	movl      %edi, 16(%esp)
	movl      L_bot$non_lazy_ptr-L000005FC(%eax), %eax
	subl      (%eax), %edx
	shrl      $2, %edx
	cmpl      %esi, %edx
	jae       L0000064E
L00000642:
	movl      $14, (%esp)
	call      _pari_err
L0000064E:
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
	jb        L000006FB
L00000688:
	movl      $2, %edx
	movl      $32, %ecx
	.align 4, 0x90
L000006A0:
	cmpl      $32, %ecx
	jne       L000006B7
L000006A5:
	incl      %eax
	movl      %eax, %ecx
	subl      %esi, %ecx
	movl      24(%esp), %ebx
	movl      $0, (%ebx,%ecx,4)
	xorl      %ecx, %ecx
L000006B7:
	movl      (%edi,%edx,4), %ebx
	movl      4(%ebx), %ebp
	cmpl      $1073741824, %ebp
	jb        L000006EC
L000006C5:
	andl      $16777215, %ebp
	testb     $1, -4(%ebx,%ebp,4)
	je        L000006EC
L000006D2:
	movl      $1, %ebx
	sall      %cl, %ebx
	movl      %eax, %ebp
	subl      %esi, %ebp
	movl      %edi, %esi
	movl      24(%esp), %edi
	orl       %ebx, (%edi,%ebp,4)
	movl      %esi, %edi
	movl      20(%esp), %esi
L000006EC:
	incl      %edx
	incl      %ecx
	movl      (%edi), %ebx
	movl      $16777215, %ebp
	andl      %ebp, %ebx
	cmpl      %ebx, %edx
	jl        L000006A0
L000006FB:
	movl      %esi, 4(%esp)
	movl      16(%esp), %eax
	movl      %eax, (%esp)
	call      _Flx_renormalize
L0000070B:
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
	call      L0000072C
L0000072C:
	popl      %eax
	movl      48(%esp), %ecx
	movl      $16777215, %ebx
	movl      (%ecx), %esi
	andl      %ebx, %esi
	addl      $93, %esi
	shrl      $5, %esi
	movl      L_avma$non_lazy_ptr-L0000072C(%eax), %ecx
	movl      %ecx, 16(%esp)
	movl      (%ecx), %ebp
	movl      %ebp, 24(%esp)
	leal      0(,%esi,4), %ecx
	movl      %ebp, %edi
	subl      %ecx, %edi
	movl      L_bot$non_lazy_ptr-L0000072C(%eax), %eax
	subl      (%eax), %ebp
	shrl      $2, %ebp
	cmpl      %esi, %ebp
	jae       L00000776
L0000076A:
	movl      $14, (%esp)
	call      _pari_err
L00000776:
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
	jb        L0000080A
L000007AC:
	movl      $2, %edx
	movl      $32, %ecx
	.align 4, 0x90
L000007C0:
	cmpl      $32, %ecx
	jne       L000007D7
L000007C5:
	incl      %edi
	movl      %edi, %ecx
	subl      %esi, %ecx
	movl      24(%esp), %eax
	movl      $0, (%eax,%ecx,4)
	xorl      %ecx, %ecx
L000007D7:
	cmpl      $0, (%ebx,%edx,4)
	je        L000007FB
L000007DD:
	movl      $1, %ebx
	sall      %cl, %ebx
	movl      %edi, %eax
	subl      %esi, %eax
	movl      %edi, %ebp
	movl      %esi, %edi
	movl      24(%esp), %esi
	orl       %ebx, (%esi,%eax,4)
	movl      %edi, %esi
	movl      %ebp, %edi
	movl      48(%esp), %ebx
L000007FB:
	incl      %edx
	incl      %ecx
	movl      (%ebx), %eax
	movl      $16777215, %ebp
	andl      %ebp, %eax
	cmpl      %eax, %edx
	jl        L000007C0
L0000080A:
	movl      %esi, 4(%esp)
	movl      20(%esp), %eax
	movl      %eax, (%esp)
	call      _Flx_renormalize
L0000081A:
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
	call      L0000083C
L0000083C:
	popl      %esi
	movl      68(%esp), %eax
	leal      95(%eax), %edx
	movl      %edx, 28(%esp)
	shrl      $5, %edx
	movl      %edx, 40(%esp)
	movl      L_avma$non_lazy_ptr-L0000083C(%esi), %edi
	movl      (%edi), %ebx
	movl      %ebx, 36(%esp)
	leal      0(,%edx,4), %eax
	movl      %ebx, %ecx
	subl      %eax, %ecx
	movl      %ecx, 32(%esp)
	movl      L_bot$non_lazy_ptr-L0000083C(%esi), %eax
	movl      %ebx, %ecx
	subl      (%eax), %ecx
	shrl      $2, %ecx
	cmpl      %edx, %ecx
	movl      64(%esp), %ebx
	movl      (%ebx), %ebp
	jae       L0000088D
L00000881:
	movl      $14, (%esp)
	call      _pari_err
L0000088D:
	andl      $16777215, %ebp
	movl      32(%esp), %eax
	movl      %eax, (%edi)
	movl      %eax, %edi
	cmpl      $536870912, 28(%esp)
	jb        L000008BB
L000008A5:
	leal      LC00009591-L0000083C(%esi), %eax
	movl      %eax, 4(%esp)
	movl      $15, (%esp)
	call      _pari_err
L000008BB:
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
	jb        L00000AC0
L000008E8:
	movl      $3, %eax
	cmova     %ebp, %eax
	movl      $2, %ecx
	cmpl      $2, %eax
	je        L00000A19
L000008FE:
	leal      -2(%eax), %esi
	andl      $-8, %esi
	orl       $2, %esi
	movl      %esi, 24(%esp)
	leal      -1(%ebp), %edx
	cmpl      $3, %ebp
	movl      $2, %ecx
	cmovbe    %ecx, %edx
	cmpl      $2, %esi
	je        L00000A0D
L00000922:
	leal      (%ebx,%edx,4), %ecx
	movl      %ecx, 20(%esp)
	movl      $2, %ecx
	movl      $2, %edi
	subl      40(%esp), %edi
	movl      36(%esp), %esi
	leal      (%esi,%edi,4), %edi
	cmpl      20(%esp), %edi
	movl      32(%esp), %edi
	ja        L00000964
L00000948:
	leal      8(%ebx), %esi
	movl      %esi, 20(%esp)
	subl      40(%esp), %edx
	movl      36(%esp), %esi
	leal      (%esi,%edx,4), %edx
	cmpl      %edx, 20(%esp)
	jbe       L00000A0D
L00000964:
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
	je        L000009AB
L00000988:
	movups    8(%ebx), %xmm0
	movups    24(%ebx), %xmm1
	movl      $2, %edx
	subl      40(%esp), %edx
	movl      36(%esp), %esi
	movups    %xmm0, (%esi,%edx,4)
	movups    %xmm1, 16(%esi,%edx,4)
	movl      $10, %esi
L000009AB:
	testl     %ecx, %ecx
	je        L00000A09
L000009AF:
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
L000009E0:
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
	jne       L000009E0
L00000A09:
	movl      24(%esp), %ecx
L00000A0D:
	cmpl      %ecx, %eax
	movl      40(%esp), %esi
	je        L00000AB5
L00000A19:
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
	je        L00000A6A
L00000A3C:
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
L00000A60:
	movl      (%ebx,%ecx,4), %edi
	movl      %edi, (%esi,%ecx,4)
	incl      %ecx
	incl      %edx
	jne       L00000A60
L00000A6A:
	cmpl      $3, 24(%esp)
	movl      32(%esp), %edi
	movl      40(%esp), %esi
	jb        L00000AB5
L00000A79:
	movl      $3, %eax
	subl      %esi, %eax
	movl      36(%esp), %edx
	leal      (%edx,%eax,4), %eax
	.align 4, 0x90
L00000A90:
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
	jl        L00000A90
L00000AB5:
	cmpl      $3, %ebp
	movl      $3, %eax
	cmova     %ebp, %eax
L00000AC0:
	movl      %eax, %ecx
	subl      %esi, %ecx
	jge       L00000ADE
L00000AC6:
	movl      36(%esp), %edx
	leal      (%edx,%ecx,4), %ecx
	subl      %eax, %esi
	sall      $2, %esi
	movl      %esi, 4(%esp)
	movl      %ecx, (%esp)
	call      ___bzero
L00000ADE:
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
	call      L00000B3E
L00000B3E:
	popl      %eax
	movl      L_avma$non_lazy_ptr-L00000B3E(%eax), %edi
	movl      (%edi), %ebx
	movl      %ebx, 68(%esp)
	leal      0(,%edx,4), %ecx
	movl      %ebx, %ebp
	subl      %ecx, %ebp
	movl      %ebp, 64(%esp)
	movl      L_bot$non_lazy_ptr-L00000B3E(%eax), %eax
	subl      (%eax), %ebx
	shrl      $2, %ebx
	cmpl      %edx, %ebx
	movl      %edx, %ebx
	jae       L00000B77
L00000B6B:
	movl      $14, (%esp)
	call      _pari_err
L00000B77:
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
	jb        L00000E50
L00000BB0:
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
	je        L00000DA1
L00000BF8:
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
	jne       L00000C41
L00000C38:
	movl      44(%esp), %edi
	jmp       L00000D95
L00000C41:
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
	jne       L00000D8D
L00000CA0:
	andb      %ch, %cl
	movl      44(%esp), %edi
	movl      28(%esp), %ebp
	jne       L00000D95
L00000CB0:
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
	je        L00000D09
L00000CE1:
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
L00000D09:
	movl      %ecx, %edx
	testl     %eax, %eax
	jne       L00000D15
L00000D0F:
	movl      16(%esp), %eax
	jmp       L00000D91
L00000D15:
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
L00000D60:
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
	jne       L00000D60
L00000D89:
	movl      16(%esp), %eax
L00000D8D:
	movl      44(%esp), %edi
L00000D91:
	movl      28(%esp), %ebp
L00000D95:
	cmpl      %eax, %ebp
	movl      60(%esp), %edx
	je        L00000E3D
L00000DA1:
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
	je        L00000DF2
L00000DDC:
	movl      40(%esp), %ebx
	movl      (%ebx,%eax,4), %edx
	xorl      (%esi,%eax,4), %edx
	subl      %edi, %eax
	movl      68(%esp), %ebp
	movl      %edx, (%ebp,%eax,4)
	jmp       L00000DF8
L00000DF2:
	movl      40(%esp), %ebx
	movl      %eax, %ecx
L00000DF8:
	cmpl      $0, 52(%esp)
	movl      %ebx, %ebp
	movl      60(%esp), %ebx
	je        L00000E3D
L00000E05:
	movl      72(%esp), %edx
	movl      56(%esp), %eax
	cmpl      %eax, %edx
	cmova     %edx, %eax
	movl      $1, %edx
	subl      %eax, %edx
	movl      68(%esp), %eax
	leal      (%eax,%edx,4), %eax
L00000E20:
	movl      (%ebp,%ecx,4), %edx
	xorl      (%esi,%ecx,4), %edx
	movl      %edx, -4(%eax,%ecx,4)
	movl      4(%ebp,%ecx,4), %edx
	xorl      4(%esi,%ecx,4), %edx
	movl      %edx, (%eax,%ecx,4)
	addl      $2, %ecx
	cmpl      %ebx, %ecx
	jl        L00000E20
L00000E3D:
	movl      36(%esp), %eax
	cmpl      $3, %eax
	movl      $3, %ecx
	cmova     %eax, %ecx
	movl      72(%esp), %ebx
L00000E50:
	cmpl      %edi, %ecx
	jge       L00001075
L00000E58:
	movl      56(%esp), %ebp
	cmpl      %ebp, %ebx
	movl      %ebp, %eax
	cmova     %ebx, %eax
	leal      -1(%eax), %edx
	subl      %ecx, %edx
	cmpl      $-1, %edx
	je        L00000FC9
L00000E71:
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
	je        L00000FBD
L00000E92:
	leal      -4(%esi,%edx,4), %edi
	movl      %ecx, %ebx
	subl      %edx, %ebx
	movl      68(%esp), %ebp
	leal      (%ebp,%ebx,4), %edx
	cmpl      %edi, %edx
	ja        L00000EB4
L00000EA6:
	leal      (%esi,%ecx,4), %edx
	leal      -4(%ebp), %edi
	cmpl      %edi, %edx
	jbe       L00000F40
L00000EB4:
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
	je        L00000F31
L00000EDA:
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
L00000F20:
	movups    (%esi,%ebp,4), %xmm0
	movups    %xmm0, (%edi,%ebp,4)
	addl      $4, %ebp
	addl      $-4, %ebx
	incl      %edx
	jne       L00000F20
L00000F31:
	movl      60(%esp), %edx
	addl      %ecx, %edx
	cmpl      $3, 52(%esp)
	jae       L00000F4A
L00000F3E:
	movl      %edx, %ecx
L00000F40:
	movl      44(%esp), %edi
	movl      72(%esp), %ebx
	jmp       L00000FC1
L00000F4A:
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
L00000F90:
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
	jne       L00000F90
L00000FB9:
	movl      60(%esp), %ecx
L00000FBD:
	movl      44(%esp), %edi
L00000FC1:
	cmpl      %ecx, %eax
	je        L00001075
L00000FC9:
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
	je        L0000102C
L00000FEC:
	cmpl      %ebp, %ebx
	movl      %edi, 60(%esp)
	movl      %ebp, %edi
	movl      %ebx, %ebp
	movl      %edi, %ebx
	cmova     %ebp, %ebx
	sall      $2, %ebx
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
L00001020:
	movl      (%esi,%ecx,4), %edi
	movl      %edi, (%edx,%ecx,4)
	incl      %ecx
	incl      %ebx
	jne       L00001020
L0000102A:
	jmp       L0000102E
L0000102C:
	movl      %ebx, %ebp
L0000102E:
	cmpl      $3, %eax
	movl      44(%esp), %edi
	jb        L00001075
L00001037:
	movl      56(%esp), %edx
	cmpl      %edx, %ebp
	cmova     %ebp, %edx
	movl      $3, %eax
	subl      %edx, %eax
	movl      68(%esp), %edx
	leal      (%edx,%eax,4), %eax
	.align 4, 0x90
L00001050:
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
	jl        L00001050
L00001075:
	movl      %edi, 4(%esp)
	movl      64(%esp), %eax
	movl      %eax, (%esp)
	call      _Flx_renormalize
L00001085:
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
	call      L0000109C
L0000109C:
	popl      %eax
	movl      48(%esp), %edi
	movl      (%edi), %ebx
	andl      $16777215, %ebx
	cmpl      $2, %ebx
	jne       L000010F3
L000010AE:
	movl      4(%edi), %edi
	movl      L_avma$non_lazy_ptr-L0000109C(%eax), %ebp
	movl      (%ebp), %ebx
	leal      -12(%ebx), %esi
	movl      L_bot$non_lazy_ptr-L0000109C(%eax), %eax
	movl      %ebx, %ecx
	subl      (%eax), %ecx
	cmpl      $11, %ecx
	ja        L000010D8
L000010CC:
	movl      $14, (%esp)
	call      _pari_err
L000010D8:
	movl      %esi, (%ebp)
	movl      %esi, %ebp
	movl      $738197507, -12(%ebx)
	movl      %edi, -8(%ebx)
	movl      $1, -4(%ebx)
	jmp       L0000134C
L000010F3:
	movl      L_avma$non_lazy_ptr-L0000109C(%eax), %ebp
	movl      (%ebp), %edx
	movl      %edx, 24(%esp)
	leal      0(,%ebx,4), %esi
	movl      %esi, 20(%esp)
	movl      %edx, %ecx
	subl      %esi, %ecx
	movl      %ecx, %esi
	movl      L_bot$non_lazy_ptr-L0000109C(%eax), %eax
	movl      %edx, %ecx
	subl      (%eax), %ecx
	shrl      $2, %ecx
	cmpl      %ebx, %ecx
	jae       L0000112E
L00001122:
	movl      $14, (%esp)
	call      _pari_err
L0000112E:
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
	jb        L00001335
L00001167:
	movl      $4, %esi
	cmova     %ebx, %esi
	movl      $3, %edx
	cmpl      $3, %esi
	je        L000012A5
L0000117D:
	leal      -3(%esi), %ecx
	andl      $-8, %ecx
	orl       $3, %ecx
	movl      %ecx, 12(%esp)
	leal      -1(%ebx), %eax
	cmpl      $4, %ebx
	movl      $3, %edx
	cmovbe    %edx, %eax
	cmpl      $3, %ecx
	je        L0000129D
L000011A1:
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
	ja        L000011EB
L000011CD:
	leal      12(%edi), %ecx
	movl      %ecx, 8(%esp)
	subl      %ebx, %eax
	movl      %esi, %ecx
	movl      24(%esp), %esi
	leal      (%esi,%eax,4), %eax
	movl      %ecx, %esi
	cmpl      %eax, 8(%esp)
	jbe       L0000129D
L000011EB:
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
	je        L00001230
L0000120F:
	movups    12(%edi), %xmm0
	movups    28(%edi), %xmm1
	movl      $3, %ecx
	subl      %ebx, %ecx
	movl      24(%esp), %edx
	movups    %xmm0, (%edx,%ecx,4)
	movups    %xmm1, 16(%edx,%ecx,4)
	movl      $11, %edx
L00001230:
	testl     %eax, %eax
	je        L00001299
L00001234:
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
L00001270:
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
	jne       L00001270
L00001299:
	movl      12(%esp), %edx
L0000129D:
	cmpl      %edx, %esi
	je        L00001335
L000012A5:
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
	je        L000012EB
L000012C4:
	movl      24(%esp), %ebp
	subl      20(%esp), %ebp
	cmpl      %ebx, %ecx
	cmovl     %ebx, %ecx
	subl      %edx, %ecx
	andl      $3, %ecx
	negl      %ecx
	.align 4, 0x90
L000012E0:
	movl      (%edi,%edx,4), %esi
	movl      %esi, (%ebp,%edx,4)
	incl      %edx
	incl      %ecx
	jne       L000012E0
L000012EB:
	cmpl      $3, 12(%esp)
	movl      16(%esp), %ebp
	jb        L00001335
L000012F6:
	movl      $3, %eax
	subl      %ebx, %eax
	movl      24(%esp), %ecx
	leal      (%ecx,%eax,4), %eax
	.align 4, 0x90
L00001310:
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
	jl        L00001310
L00001335:
	cmpl      $3, %ebx
	jne       L0000134C
L0000133A:
	movl      %ebp, (%esp)
	movl      $3, 4(%esp)
	call      _Flx_renormalize
L0000134A:
	jmp       L0000134E
L0000134C:
	movl      %ebp, %eax
L0000134E:
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
L00001390:
	movl      4(%esi), %ecx
	movl      %ecx, 4(%eax)
	addl      $20, %esp
	popl      %esi
	popl      %edi
	ret       
L0000139C:
	.align 4, 0x90
_F2x_mulspec:
	pushl     %ebp
	pushl     %ebx
	pushl     %edi
	pushl     %esi
	subl      $124, %esp
	movl      %ecx, %esi
	call      L000013AE
L000013AE:
	popl      %ebp
	movl      148(%esp), %eax
	movl      144(%esp), %edi
	xorl      %ebx, %ebx
	testl     %edi, %edi
	je        L000013E0
L000013C3:
	xorl      %ecx, %ecx
	.align 4, 0x90
L000013D0:
	cmpl      $0, (%esi)
	jne       L000013E4
L000013D5:
	addl      $4, %esi
	incl      %ecx
	decl      %edi
	jne       L000013D0
L000013DC:
	xorl      %edi, %edi
	jmp       L000013E4
L000013E0:
	xorl      %edi, %edi
	xorl      %ecx, %ecx
L000013E4:
	testl     %eax, %eax
	je        L000013FC
L000013E8:
	.align 4, 0x90
L000013F0:
	cmpl      $0, (%edx)
	jne       L00001402
L000013F5:
	addl      $4, %edx
	incl      %ecx
	decl      %eax
	jne       L000013F0
L000013FC:
	movl      %ebp, 112(%esp)
	jmp       L00001408
L00001402:
	movl      %ebp, 112(%esp)
	movl      %eax, %ebx
L00001408:
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
	movl      L_avma$non_lazy_ptr-L000013AE(%eax), %edx
	movl      (%edx), %eax
	testl     %ebp, %ebp
	je        L0000150E
L0000143A:
	movl      %eax, 96(%esp)
	cmpl      $1, %ebx
	jg        L0000154F
L00001447:
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
	je        L000014BD
L0000147D:
	xorl      %ecx, %ecx
	xorl      %edi, %edi
	movl      $0, 116(%esp)
	.align 4, 0x90
L00001490:
	btl       %ecx, %esi
	jae       L000014A3
L00001495:
	movl      %edx, %ebx
	sall      %cl, %ebx
	xorl      %ebx, 116(%esp)
	movl      %ebp, %ebx
	sall      %cl, %ebx
	xorl      %ebx, %edi
L000014A3:
	incl      %ecx
	btl       %ecx, %esi
	jae       L000014B7
L000014A9:
	movl      %edx, %ebx
	sall      %cl, %ebx
	xorl      %ebx, 116(%esp)
	movl      %ebp, %ebx
	sall      %cl, %ebx
	xorl      %ebx, %edi
L000014B7:
	incl      %ecx
	cmpl      $16, %ecx
	jne       L00001490
L000014BD:
	cmpl      $0, 120(%esp)
	je        L000018A4
L000014C8:
	xorl      %esi, %esi
	.align 4, 0x90
L000014D0:
	movl      120(%esp), %ecx
	btl       %eax, %ecx
	jae       L000014E9
L000014D9:
	movl      %ebp, %ebx
	movb      %al, %cl
	sall      %cl, %ebx
	xorl      %ebx, %esi
	movl      %edx, %ebx
	movb      %al, %cl
	sall      %cl, %ebx
	xorl      %ebx, %edi
L000014E9:
	incl      %eax
	movl      120(%esp), %ecx
	btl       %eax, %ecx
	jae       L00001503
L000014F3:
	movl      %ebp, %ebx
	movb      %al, %cl
	sall      %cl, %ebx
	xorl      %ebx, %esi
	movl      %edx, %ebx
	movb      %al, %cl
	sall      %cl, %ebx
	xorl      %ebx, %edi
L00001503:
	incl      %eax
	cmpl      $16, %eax
	jne       L000014D0
L00001509:
	jmp       L000018A6
L0000150E:
	leal      -8(%eax), %esi
	movl      112(%esp), %ecx
	movl      L_bot$non_lazy_ptr-L000013AE(%ecx), %edi
	movl      %eax, %ecx
	subl      (%edi), %ecx
	cmpl      $7, %ecx
	ja        L00001538
L00001524:
	movl      $14, (%esp)
	movl      %eax, %edi
	movl      %edx, %ebx
	call      _pari_err
L00001534:
	movl      %ebx, %edx
	movl      %edi, %eax
L00001538:
	movl      %esi, (%edx)
	movl      $738197506, -8(%eax)
	movl      $0, -4(%eax)
	movl      %esi, %eax
	jmp       L000024DC
L0000154F:
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
L00001580:
	xorl      %edi, %edi
	cmpl      $1, %eax
	je        L00001593
L00001587:
	cmpl      $0, -8(%esi,%eax,4)
	leal      -1(%eax), %eax
	movl      %eax, %edi
	je        L00001580
L00001593:
	movl      %ebp, %eax
	movl      80(%esp), %ebx
	subl      %ebx, %eax
	movl      108(%esp), %edx
	jle       L0000186F
L000015A5:
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
L000015D0:
	xorl      %ebx, %ebx
	cmpl      $1, %eax
	je        L000015E3
L000015D7:
	cmpl      $0, -8(%edx,%eax,4)
	leal      -1(%eax), %eax
	movl      %eax, %ebx
	je        L000015D0
L000015E3:
	movl      %ebx, 4(%esp)
	movl      %edi, (%esp)
	movl      %esi, %ecx
	call      _F2x_mulspec
L000015F1:
	movl      %eax, 52(%esp)
	movl      68(%esp), %eax
	movl      %eax, 4(%esp)
	movl      %ebp, (%esp)
	movl      104(%esp), %ebp
	movl      %ebp, %ecx
	movl      84(%esp), %edx
	call      _F2x_mulspec
L0000160F:
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
	movl      L_bot$non_lazy_ptr-L000013AE(%eax), %edx
	movl      %edx, 44(%esp)
	movl      %esi, %eax
	subl      (%edx), %eax
	shrl      $2, %eax
	leal      2(%ebp), %edx
	cmpl      %edx, %eax
	leal      (%esi,%ecx,4), %esi
	jae       L0000168B
L0000166B:
	movl      $14, (%esp)
	movl      %ebp, 72(%esp)
	movl      %edx, %ebp
	movl      %esi, 60(%esp)
	call      _pari_err
L00001681:
	movl      60(%esp), %esi
	movl      %ebp, %edx
	movl      72(%esp), %ebp
L0000168B:
	movl      100(%esp), %ecx
	movl      %esi, (%ecx)
	cmpl      $16777216, %edx
	movl      104(%esp), %ecx
	jb        L000016C7
L0000169D:
	movl      112(%esp), %eax
	leal      LC00009591-L000013AE(%eax), %eax
	movl      %eax, 4(%esp)
	movl      $15, (%esp)
	movl      %ebp, 72(%esp)
	movl      %edx, %ebp
	call      _pari_err
L000016BD:
	movl      %ebp, %edx
	movl      104(%esp), %ecx
	movl      72(%esp), %ebp
L000016C7:
	movl      %edx, 40(%esp)
	movl      %edx, %eax
	orl       $738197504, %eax
	movl      %eax, (%esi)
	movl      %esi, 60(%esp)
	xorl      %eax, %eax
	cmpl      $0, 36(%esp)
	jle       L00001A08
L000016E5:
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
	je        L00001955
L00001714:
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
	je        L00001935
L0000173B:
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
	jne       L0000193D
L00001799:
	andb      %ch, %bl
	movl      64(%esp), %ecx
	movl      24(%esp), %ebp
	movl      36(%esp), %esi
	movl      $0, %ebx
	jne       L0000194B
L000017B2:
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
	je        L000017F0
L000017D2:
	movups    (%esi), %xmm0
	movl      32(%esp), %ecx
	movups    (%ecx), %xmm1
	xorps     %xmm0, %xmm1
	movl      56(%esp), %ecx
	movl      64(%esp), %ebx
	movups    %xmm1, (%ecx,%ebx,4)
	movl      $4, %ebx
L000017F0:
	testl     %edx, %edx
	je        L0000185A
L000017F4:
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
L00001830:
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
	jne       L00001830
L0000185A:
	movl      16(%esp), %ebx
	movl      24(%esp), %ebp
	movl      36(%esp), %esi
	movl      64(%esp), %ecx
	jmp       L0000194B
L0000186F:
	movl      %ecx, 92(%esp)
	movl      %ebp, 4(%esp)
	movl      %edi, (%esp)
	movl      %esi, %ecx
	movl      %edx, %edi
	call      _F2x_mulspec
L00001883:
	movl      %eax, %esi
	movl      %ebp, 4(%esp)
	movl      116(%esp), %eax
	movl      %eax, (%esp)
	movl      104(%esp), %ecx
	movl      %edi, %edx
	call      _F2x_mulspec
L0000189B:
	movl      %eax, %ecx
	movl      %ebx, %eax
	jmp       L000024C0
L000018A4:
	xorl      %esi, %esi
L000018A6:
	movl      %edi, %eax
	sall      $16, %eax
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
	movl      L_bot$non_lazy_ptr-L000013AE(%eax), %eax
	movl      %ecx, %edx
	subl      (%eax), %edx
	addl      $3, %ebp
	shrl      $2, %edx
	cmpl      %ebp, %edx
	jae       L000018F5
L000018E5:
	movl      $14, (%esp)
	call      _pari_err
L000018F1:
	movl      96(%esp), %ecx
L000018F5:
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
	je        L00001922
L00001916:
	xorl      %edi, %esi
	movl      $3, %eax
	subl      %ebp, %eax
	movl      %esi, (%ecx,%eax,4)
L00001922:
	movl      92(%esp), %eax
	movl      %eax, (%esp)
	movl      %ebx, %edx
	call      _F2x_shiftip
L00001930:
	jmp       L000024DC
L00001935:
	movl      64(%esp), %ecx
	xorl      %ebx, %ebx
	jmp       L0000194B
L0000193D:
	movl      64(%esp), %ecx
	movl      24(%esp), %ebp
	movl      36(%esp), %esi
	xorl      %ebx, %ebx
L0000194B:
	cmpl      28(%esp), %ebx
	je        L000019FE
L00001955:
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
	je        L000019A4
L00001976:
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
L000019A4:
	testl     %ecx, %ecx
	movl      36(%esp), %esi
	je        L000019FE
L000019AC:
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
L000019E0:
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
	jne       L000019E0
L000019FE:
	notl      %eax
	movl      76(%esp), %ebx
	movl      72(%esp), %ebp
L00001A08:
	cmpl      %ebp, %eax
	jge       L00001C35
L00001A10:
	movl      %ebp, 72(%esp)
	movl      116(%esp), %ebp
	cmpl      %ebp, %edi
	movl      %ebp, %esi
	cmovge    %edi, %esi
	leal      -1(%esi), %ecx
	subl      %eax, %ecx
	cmpl      $-1, %ecx
	je        L00001A7C
L00001A29:
	movl      %esi, %edx
	subl      %eax, %edx
	movl      %edx, %ecx
	andl      $-4, %ecx
	movl      %ecx, 36(%esp)
	cmpl      %ebp, %edi
	cmovge    %edi, %ebp
	andl      $-4, %edx
	je        L00001A85
L00001A40:
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
	ja        L00001A8E
L00001A66:
	leal      (%ebp,%eax,4), %ecx
	leal      -4(%esi), %edx
	cmpl      %edx, %ecx
	ja        L00001A8E
L00001A71:
	movl      32(%esp), %esi
	movl      %ebp, %ecx
	jmp       L00001B75
L00001A7C:
	movl      104(%esp), %ecx
	jmp       L00001B7D
L00001A85:
	movl      104(%esp), %ecx
	jmp       L00001B75
L00001A8E:
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
	je        L00001AF9
L00001AB0:
	movl      116(%esp), %ecx
	cmpl      %ecx, %edi
	movl      %ecx, %edx
	cmovge    %edi, %edx
	movl      %edx, %ecx
	subl      %eax, %ecx
	andl      $-4, %ecx
	addl      $-4, %ecx
	sall      $2, %edx
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
L00001AE0:
	movl      104(%esp), %esi
	movups    (%esi,%ebp,4), %xmm0
	movl      64(%esp), %esi
	movups    %xmm0, (%esi,%ebp,4)
	addl      $4, %ebp
	addl      $-4, %ecx
	incl      %edx
	jne       L00001AE0
L00001AF9:
	movl      36(%esp), %ecx
	addl      %eax, %ecx
	cmpl      $3, 28(%esp)
	jae       L00001B0A
L00001B06:
	movl      %ecx, %eax
	jmp       L00001B6D
L00001B0A:
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
L00001B40:
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
	jne       L00001B40
L00001B69:
	movl      36(%esp), %eax
L00001B6D:
	movl      104(%esp), %ecx
	movl      32(%esp), %esi
L00001B75:
	cmpl      %eax, %esi
	je        L00001C35
L00001B7D:
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
	je        L00001BDC
L00001BA4:
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
L00001BD0:
	movl      (%ecx,%eax,4), %ebp
	movl      %ebp, (%esi,%eax,4)
	incl      %eax
	incl      %edx
	jne       L00001BD0
L00001BDA:
	jmp       L00001BE0
L00001BDC:
	movl      104(%esp), %ecx
L00001BE0:
	cmpl      $3, 64(%esp)
	movl      %ecx, %esi
	movl      72(%esp), %ebp
	jb        L00001C35
L00001BED:
	movl      116(%esp), %ecx
	cmpl      %ecx, %edi
	cmovl     %ecx, %edi
	movl      $3, %ecx
	subl      %edi, %ecx
	movl      56(%esp), %edx
	leal      (%edx,%ecx,4), %ecx
	.align 4, 0x90
L00001C10:
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
	jl        L00001C10
L00001C35:
	movl      40(%esp), %eax
	movl      %eax, 4(%esp)
	movl      60(%esp), %eax
	movl      %eax, (%esp)
	call      _Flx_renormalize
L00001C49:
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
	jae       L00001CC7
L00001CA3:
	movl      $14, (%esp)
	movl      %ebp, 104(%esp)
	movl      %edx, %ebp
	movl      %eax, 72(%esp)
	call      _pari_err
L00001CB9:
	movl      72(%esp), %eax
	movl      %ebp, %edx
	movl      100(%esp), %ecx
	movl      104(%esp), %ebp
L00001CC7:
	movl      %edi, 84(%esp)
	movl      %eax, (%ecx)
	cmpl      $16777216, %edx
	movl      88(%esp), %esi
	movl      %eax, %edi
	jb        L00001CFD
L00001CDB:
	movl      112(%esp), %eax
	leal      LC00009591-L000013AE(%eax), %eax
	movl      %eax, 4(%esp)
	movl      $15, (%esp)
	movl      %edx, 108(%esp)
	call      _pari_err
L00001CF9:
	movl      108(%esp), %edx
L00001CFD:
	movl      %edx, 108(%esp)
	movl      %edx, %eax
	orl       $738197504, %eax
	movl      %eax, (%edi)
	movl      %edi, 72(%esp)
	xorl      %eax, %eax
	cmpl      $0, 56(%esp)
	movl      120(%esp), %edi
	jle       L0000208F
L00001D1F:
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
	je        L00001F82
L00001D67:
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
	je        L00001EAB
L00001DC9:
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
	jne       L00001EB2
L00001E1F:
	andb      %bl, %cl
	movl      68(%esp), %ebx
	movl      $0, %ecx
	movl      56(%esp), %edx
	jne       L00001F72
L00001E34:
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
	je        L00001E96
L00001E74:
	movl      84(%esp), %esi
	movups    (%esi), %xmm0
	movl      40(%esp), %esi
	movups    (%esi), %xmm1
	xorps     %xmm0, %xmm1
	movl      64(%esp), %esi
	movl      44(%esp), %ebx
	movups    %xmm1, (%esi,%ebx,4)
	movl      $4, %esi
L00001E96:
	movl      %esi, 32(%esp)
	testl     %ecx, %ecx
	jne       L00001EBD
L00001E9E:
	movl      36(%esp), %ecx
	movl      68(%esp), %ebx
	jmp       L00001F72
L00001EAB:
	xorl      %ecx, %ecx
	jmp       L00001F72
L00001EB2:
	movl      68(%esp), %ebx
	xorl      %ecx, %ecx
	jmp       L00001F6E
L00001EBD:
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
L00001F40:
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
	jne       L00001F40
L00001F6A:
	movl      36(%esp), %ecx
L00001F6E:
	movl      56(%esp), %edx
L00001F72:
	cmpl      %edx, %ecx
	movl      112(%esp), %ebp
	movl      100(%esp), %edi
	je        L0000207D
L00001F82:
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
	je        L00001FE3
L00001FC1:
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
	jmp       L00001FE7
L00001FE3:
	movl      %edi, 100(%esp)
L00001FE7:
	movl      %ebp, %esi
	testl     %ecx, %ecx
	movl      112(%esp), %ebp
	movl      100(%esp), %edi
	je        L0000207D
L00001FF9:
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
L00002060:
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
	jne       L00002060
L0000207D:
	notl      %eax
	movl      88(%esp), %esi
	movl      120(%esp), %edi
	movl      76(%esp), %ebx
	movl      104(%esp), %ebp
L0000208F:
	cmpl      %ebp, %eax
	jge       L00002445
L00002097:
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
	je        L0000223B
L000020CF:
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
	je        L0000224C
L00002110:
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
	ja        L00002140
L00002132:
	leal      (%ebx,%eax,4), %ecx
	leal      -4(%edi), %edx
	cmpl      %edx, %ecx
	jbe       L0000222E
L00002140:
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
	je        L00002221
L00002186:
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
L00002210:
	movups    (%ebx,%edi,4), %xmm0
	movups    %xmm0, (%edx,%edi,4)
	addl      $4, %edi
	addl      $-4, %ebp
	incl      %ecx
	jne       L00002210
L00002221:
	movl      44(%esp), %ecx
	addl      %eax, %ecx
	cmpl      $3, %esi
	jae       L00002255
L0000222C:
	movl      %ecx, %eax
L0000222E:
	movl      88(%esp), %edx
	movl      76(%esp), %ebx
	jmp       L00002301
L0000223B:
	movl      %edx, 112(%esp)
	movl      %esi, 100(%esp)
	movl      88(%esp), %edx
	jmp       L00002311
L0000224C:
	movl      %esi, 100(%esp)
	jmp       L000022FD
L00002255:
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
L000022D0:
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
	jne       L000022D0
L000022F9:
	movl      44(%esp), %eax
L000022FD:
	movl      88(%esp), %edx
L00002301:
	movl      120(%esp), %edi
	movl      56(%esp), %ecx
	cmpl      %eax, %ecx
	je        L00002445
L00002311:
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
	je        L000023CC
L00002350:
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
	sall      $2, %ebx
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
L000023C0:
	movl      (%ebx,%eax,4), %ecx
	movl      %ecx, (%edi,%eax,4)
	incl      %eax
	incl      %edx
	jne       L000023C0
L000023CA:
	jmp       L000023D8
L000023CC:
	movl      %ecx, 76(%esp)
	movl      %edi, 120(%esp)
	movl      84(%esp), %ebx
L000023D8:
	cmpl      $3, %esi
	movl      %ebx, %esi
	movl      88(%esp), %ebp
	movl      120(%esp), %ecx
	movl      76(%esp), %edi
	movl      104(%esp), %ebx
	jb        L00002445
L000023EF:
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
L00002420:
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
	jl        L00002420
L00002445:
	movl      108(%esp), %eax
	movl      %eax, 4(%esp)
	movl      72(%esp), %eax
	movl      %eax, (%esp)
	call      _Flx_renormalize
L00002459:
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
L00002484:
	movl      %eax, %edi
	movl      4(%esi), %eax
	movl      %eax, 4(%edi)
	movl      52(%esp), %esi
	movl      %esi, 4(%esp)
	movl      48(%esp), %ebx
	movl      %ebx, (%esp)
	call      _F2x_add
L000024A0:
	movl      %eax, 4(%esp)
	movl      %edi, (%esp)
	call      _F2x_add
L000024AC:
	movl      80(%esp), %edi
	movl      %edi, (%esp)
	movl      %ebx, %ecx
	movl      %eax, %edx
	call      _F2x_addshift
L000024BC:
	movl      %eax, %ecx
	movl      %edi, %eax
L000024C0:
	movl      %eax, (%esp)
	movl      %esi, %edx
	call      _F2x_addshift
L000024CA:
	movl      92(%esp), %ecx
	movl      %ecx, (%esp)
	movl      96(%esp), %ecx
	movl      %eax, %edx
	call      _F2x_shiftip
L000024DC:
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
	call      L000024FC
L000024FC:
	popl      %esi
	movl      48(%esp), %eax
	movl      (%eax), %edx
	andl      $16777215, %edx
	movl      %edx, 24(%esp)
	leal      (%edx,%edx), %eax
	movl      L_avma$non_lazy_ptr-L000024FC(%esi), %ecx
	movl      %ecx, 20(%esp)
	movl      (%ecx), %ebx
	movl      $2, %edi
	subl      %eax, %edi
	movl      L_bot$non_lazy_ptr-L000024FC(%esi), %eax
	movl      %ebx, %ecx
	subl      (%eax), %ecx
	shrl      $2, %ecx
	leal      -2(%edx,%edx), %ebp
	cmpl      %ebp, %ecx
	leal      (%ebx,%edi,4), %eax
	movl      %eax, 16(%esp)
	jae       L0000254B
L0000253F:
	movl      $14, (%esp)
	call      _pari_err
L0000254B:
	movl      16(%esp), %eax
	movl      20(%esp), %ecx
	movl      %eax, (%ecx)
	cmpl      $16777216, %ebp
	jb        L00002573
L0000255D:
	leal      LC00009591-L000024FC(%esi), %eax
	movl      %eax, 4(%esp)
	movl      $15, (%esp)
	call      _pari_err
L00002573:
	movl      %ebp, %eax
	movl      %ebp, 12(%esp)
	orl       $738197504, %eax
	movl      %eax, (%ebx,%edi,4)
	movl      48(%esp), %eax
	movl      4(%eax), %eax
	orl       $1, %edi
	movl      %eax, (%ebx,%edi,4)
	cmpl      $3, 24(%esp)
	jb        L00002676
L00002599:
	movl      24(%esp), %eax
	leal      0(,%eax,8), %eax
	subl      %eax, %ebx
	movl      %ebx, 20(%esp)
	movl      $2, %eax
	.align 4, 0x90
L000025B0:
	movl      48(%esp), %ecx
	movl      (%ecx,%eax,4), %edi
	movl      %edi, %ebp
	shrl      $16, %ebp
	leal      (%eax,%eax), %ecx
	movl      $0, (%ebx,%eax,8)
	testw     %di, %di
	je        L00002618
L000025CB:
	movl      %edi, %ebx
	andl      $15, %ebx
	movl      %edi, %edx
	shrl      $2, %edx
	andl      $60, %edx
	movl      _F2x_sqr.sq-L000024FC(%esi,%edx), %edx
	sall      $8, %edx
	orl       _F2x_sqr.sq-L000024FC(%esi,%ebx,4), %edx
	movl      %edi, %ebx
	shrl      $6, %ebx
	andl      $60, %ebx
	movl      _F2x_sqr.sq-L000024FC(%esi,%ebx), %ebx
	sall      $16, %ebx
	orl       %edx, %ebx
	movl      %edi, %edx
	shrl      $10, %edx
	andl      $60, %edx
	movl      _F2x_sqr.sq-L000024FC(%esi,%edx), %edx
	sall      $24, %edx
	orl       %ebx, %edx
	movl      20(%esp), %ebx
	movl      %edx, (%ebx,%ecx,4)
L00002618:
	movl      $0, 4(%ebx,%eax,8)
	testl     %ebp, %ebp
	je        L0000266B
L00002624:
	andl      $15, %ebp
	movl      %edi, %edx
	shrl      $18, %edx
	andl      $60, %edx
	movl      _F2x_sqr.sq-L000024FC(%esi,%edx), %edx
	sall      $8, %edx
	orl       _F2x_sqr.sq-L000024FC(%esi,%ebp,4), %edx
	movl      %ebx, %ebp
	movl      %edi, %ebx
	shrl      $22, %ebx
	andl      $60, %ebx
	movl      _F2x_sqr.sq-L000024FC(%esi,%ebx), %ebx
	sall      $16, %ebx
	orl       %edx, %ebx
	shrl      $28, %edi
	movl      _F2x_sqr.sq-L000024FC(%esi,%edi,4), %edx
	sall      $24, %edx
	orl       %ebx, %edx
	movl      %ebp, %ebx
	movl      %edx, 4(%ebx,%ecx,4)
L0000266B:
	incl      %eax
	cmpl      24(%esp), %eax
	jl        L000025B0
L00002676:
	movl      12(%esp), %eax
	movl      %eax, 4(%esp)
	movl      16(%esp), %eax
	movl      %eax, (%esp)
	call      _Flx_renormalize
L0000268A:
	addl      $28, %esp
	popl      %esi
	popl      %edi
	popl      %ebx
	popl      %ebp
	ret       
# ----------------------
	.align 4, 0x90
	.globl	_F2x_rem
_F2x_rem:
	pushl     %ebp
	pushl     %ebx
	pushl     %edi
	pushl     %esi
	subl      $76, %esp
	call      L000026AC
L000026AC:
	popl      %ebx
	movl      100(%esp), %ecx
	movl      96(%esp), %eax
	movl      (%eax), %edi
	movl      $16777215, %eax
	andl      (%ecx), %eax
	movl      $-1, 72(%esp)
	cmpl      $2, %eax
	movl      $-1, %edx
	je        L00002763
L000026D4:
	movl      -4(%ecx,%eax,4), %edx
	movl      %edx, %ecx
	shrl      $16, %ecx
	cmpl      $65535, %edx
	cmovbe    %edx, %ecx
	movl      $12, %esi
	movl      $28, %edx
	cmova     %esi, %edx
	cmpl      $256, %ecx
	jb        L00002701
L000026FB:
	addl      $-8, %edx
	shrl      $8, %ecx
L00002701:
	sall      $5, %eax
	cmpl      $16, %ecx
	jb        L0000270F
L00002709:
	addl      $-4, %edx
	shrl      $4, %ecx
L0000270F:
	addl      $-65, %eax
	subl      %edx, %eax
	subl      _F2x_degree_lg.__bfffo_tabshi-L000026AC(%ebx,%ecx,4), %eax
	movl      %eax, %edx
	jne       L00002763
L0000271F:
	movl      96(%esp), %eax
	movl      4(%eax), %edi
	movl      %ebx, %eax
	movl      L_avma$non_lazy_ptr-L000026AC(%eax), %ebp
	movl      (%ebp), %ebx
	leal      -8(%ebx), %esi
	movl      L_bot$non_lazy_ptr-L000026AC(%eax), %eax
	movl      %ebx, %ecx
	subl      (%eax), %ecx
	cmpl      $7, %ecx
	ja        L0000274F
L00002743:
	movl      $14, (%esp)
	call      _pari_err
L0000274F:
	movl      %esi, (%ebp)
	movl      $738197506, -8(%ebx)
	movl      %edi, -4(%ebx)
	movl      %esi, %eax
	jmp       L00002E27
L00002763:
	movl      %edx, 40(%esp)
	movl      %edi, %esi
	movl      %edi, 68(%esp)
	andl      $16777215, %esi
	cmpl      $2, %esi
	je        L000027C8
L00002778:
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
	jb        L000027A8
L000027A2:
	addl      $-8, %ecx
	shrl      $8, %eax
L000027A8:
	movl      %esi, %edx
	sall      $5, %edx
	cmpl      $16, %eax
	jb        L000027B8
L000027B2:
	addl      $-4, %ecx
	shrl      $4, %eax
L000027B8:
	addl      $-65, %edx
	subl      %ecx, %edx
	subl      _F2x_degree_lg.__bfffo_tabshi-L000026AC(%ebx,%eax,4), %edx
	movl      %edx, 72(%esp)
L000027C8:
	movl      %ebx, 36(%esp)
	movl      L_avma$non_lazy_ptr-L000026AC(%ebx), %ebp
	movl      (%ebp), %ecx
	movl      %ecx, 64(%esp)
	leal      0(,%esi,4), %eax
	movl      %ecx, %edi
	subl      %eax, %edi
	movl      L_bot$non_lazy_ptr-L000026AC(%ebx), %eax
	subl      (%eax), %ecx
	shrl      $2, %ecx
	cmpl      %esi, %ecx
	jae       L000027FF
L000027F3:
	movl      $14, (%esp)
	call      _pari_err
L000027FF:
	movl      %edi, (%ebp)
	movl      $-16777217, %eax
	movl      96(%esp), %ecx
	andl      (%ecx), %eax
	movl      %eax, (%edi)
	cmpl      $2, %esi
	movl      %esi, 52(%esp)
	movl      40(%esp), %ebx
	jb        L000029E7
L00002820:
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
	je        L00002923
L00002848:
	incl      %edx
	cmpl      $-3, %esi
	movl      $-2, %ebx
	cmovg     %esi, %ebx
	xorl      %ecx, %ecx
	movl      %edx, %eax
	andl      $-8, %eax
	je        L0000290F
L00002861:
	movl      %eax, 60(%esp)
	movl      %ebx, %eax
	notl      %eax
	movl      96(%esp), %ecx
	leal      (%ecx,%eax,4), %ecx
	movl      64(%esp), %eax
	leal      -4(%eax), %eax
	cmpl      %ecx, %eax
	ja        L00002898
L0000287B:
	movl      96(%esp), %eax
	leal      -4(%eax,%ebp,4), %eax
	addl      %ebp, %ebx
	notl      %ebx
	movl      64(%esp), %ecx
	leal      (%ecx,%ebx,4), %ebx
	xorl      %ecx, %ecx
	cmpl      %ebx, %eax
	movl      52(%esp), %eax
	jbe       L00002913
L00002898:
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
	movdqa    LC000093F0-L000026AC(%ebx), %xmm0
	movl      64(%esp), %edx
	movl      96(%esp), %edi
L000028D0:
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
	jne       L000028D0
L00002901:
	movl      60(%esp), %ecx
	movl      20(%esp), %edi
	movl      56(%esp), %edx
	jmp       L00002913
L0000290F:
	movl      52(%esp), %eax
L00002913:
	cmpl      %ecx, %edx
	movl      40(%esp), %ebx
	movl      96(%esp), %ecx
	je        L000029E7
L00002923:
	movl      %ecx, %edx
	movl      %eax, %esi
	negl      %esi
	cmpl      $-3, %esi
	movl      $-2, %ecx
	cmovg     %esi, %ecx
	leal      (%eax,%ecx), %ebp
	leal      1(%eax,%ecx), %ecx
	testb     $3, %cl
	je        L0000298F
L00002940:
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
L00002980:
	movl      -4(%edx,%eax,4), %ebx
	movl      %ebx, (%ecx,%eax,4)
	leal      -1(%eax), %eax
	incl      %esi
	jne       L00002980
L0000298D:
	jmp       L00002995
L0000298F:
	movl      %ebp, 60(%esp)
	movl      %ebx, %ebp
L00002995:
	cmpl      $3, 60(%esp)
	movl      %ebp, %ebx
	movl      %edx, %esi
	jb        L000029E7
L000029A0:
	movl      68(%esp), %ecx
	notl      %ecx
	orl       $1056964608, %ecx
	movl      64(%esp), %edx
	leal      (%edx,%ecx,4), %ecx
	.align 4, 0x90
L000029C0:
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
	jg        L000029C0
L000029E7:
	movl      72(%esp), %edx
	cmpl      %ebx, %edx
	jge       L000029FC
L000029EF:
	movl      %edi, 20(%esp)
	movl      52(%esp), %eax
	jmp       L00002E17
L000029FC:
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
	sall      $2, %edi
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
L00002A60:
	subl      %ebx, %edx
	movl      %edx, %eax
	sarl      $5, %eax
	movl      (%ebp), %esi
	andl      $16777215, %esi
	andl      $31, %edx
	je        L00002AF0
L00002A75:
	cmpl      $3, %esi
	jb        L00002D80
L00002A7E:
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
	je        L00002BE9
L00002AAD:
	movl      %edi, 44(%esp)
	movl      %eax, 60(%esp)
	movl      %esi, 68(%esp)
	movl      %edx, %ecx
	movl      %ecx, 72(%esp)
	movl      8(%ebp), %edx
	sall      %cl, %edx
	movl      64(%esp), %eax
	movl      48(%esp), %ecx
	xorl      %edx, 8(%eax,%ecx,4)
	movl      8(%ebp), %esi
	movl      56(%esp), %ecx
	shrl      %cl, %esi
	movl      $3, %edx
	jmp       L00002C00
L00002AE3:
	.align 4, 0x90
L00002AF0:
	cmpl      $3, %esi
	jb        L00002D80
L00002AF9:
	movl      %eax, %ecx
	movl      %eax, 60(%esp)
	subl      52(%esp), %ecx
	movl      %ecx, 72(%esp)
	cmpl      $3, %esi
	movl      $3, %ecx
	cmova     %esi, %ecx
	movl      $2, %edx
	cmpl      $2, %ecx
	je        L00002D0C
L00002B20:
	leal      -2(%ecx), %edx
	andl      $-4, %edx
	orl       $2, %edx
	movl      %edx, 56(%esp)
	cmpl      $3, %esi
	movl      $3, %eax
	cmova     %esi, %eax
	cmpl      $2, %edx
	movl      $2, %edx
	je        L00002D08
L00002B46:
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
	ja        L00002B8F
L00002B72:
	addl      60(%esp), %eax
	addl      32(%esp), %eax
	movl      64(%esp), %esi
	leal      (%esi,%eax,4), %eax
	movl      68(%esp), %esi
	cmpl      %eax, 12(%esp)
	jbe       L00002D08
L00002B8F:
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
	je        L00002BD8
L00002BB6:
	movdqu    8(%ebp), %xmm0
	movl      64(%esp), %eax
	movl      72(%esp), %esi
	movdqu    8(%eax,%esi,4), %xmm1
	pxor      %xmm0, %xmm1
	movdqu    %xmm1, 8(%eax,%esi,4)
	movl      $6, %esi
L00002BD8:
	testl     %edx, %edx
	jne       L00002C8B
L00002BE0:
	movl      56(%esp), %edx
	jmp       L00002D04
L00002BE9:
	movl      %edi, 44(%esp)
	movl      %eax, 60(%esp)
	movl      %esi, 68(%esp)
	movl      %edx, 72(%esp)
	movl      $2, %edx
	xorl      %esi, %esi
L00002C00:
	testl     %ebx, %ebx
	movl      68(%esp), %eax
	movl      56(%esp), %ebx
	je        L00002C5C
L00002C0C:
	movl      24(%esp), %eax
	movl      60(%esp), %ecx
	leal      (%eax,%ecx,4), %edi
	.align 4, 0x90
L00002C20:
	movl      %ebp, %eax
	movl      (%eax,%edx,4), %ebp
	movl      72(%esp), %ecx
	sall      %cl, %ebp
	orl       %esi, %ebp
	xorl      %ebp, (%edi,%edx,4)
	movl      (%eax,%edx,4), %esi
	movb      %bl, %cl
	shrl      %cl, %esi
	movl      4(%eax,%edx,4), %ebp
	movl      72(%esp), %ecx
	sall      %cl, %ebp
	orl       %esi, %ebp
	xorl      %ebp, 4(%edi,%edx,4)
	movl      %eax, %ebp
	movl      68(%esp), %eax
	movl      4(%ebp,%edx,4), %esi
	movb      %bl, %cl
	shrl      %cl, %esi
	addl      $2, %edx
	cmpl      %eax, %edx
	jl        L00002C20
L00002C5C:
	testl     %esi, %esi
	je        L00002C7A
L00002C60:
	movl      %eax, %ecx
	cmpl      $3, %ecx
	movl      $3, %eax
	cmovbe    %eax, %ecx
	movl      48(%esp), %edx
	addl      %ecx, %edx
	movl      64(%esp), %eax
	xorl      %esi, (%eax,%edx,4)
L00002C7A:
	movl      40(%esp), %ebx
	movl      28(%esp), %ecx
	movl      44(%esp), %edi
	jmp       L00002D80
L00002C8B:
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
L00002CD0:
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
	jne       L00002CD0
L00002CFC:
	movl      56(%esp), %edx
	movl      40(%esp), %ebx
L00002D04:
	movl      68(%esp), %esi
L00002D08:
	cmpl      %edx, %ecx
	je        L00002D76
L00002D0C:
	movl      %esi, 68(%esp)
	leal      1(%edx), %ecx
	cmpl      %esi, %ecx
	cmovge    %ecx, %esi
	movl      %esi, %eax
	subl      %edx, %eax
	decl      %esi
	subl      %edx, %esi
	testb     $1, %al
	je        L00002D42
L00002D23:
	movl      (%ebp,%edx,4), %eax
	movl      %eax, 56(%esp)
	movl      72(%esp), %eax
	addl      %edx, %eax
	movl      64(%esp), %edx
	movl      56(%esp), %ebx
	xorl      %ebx, (%edx,%eax,4)
	movl      40(%esp), %ebx
	jmp       L00002D44
L00002D42:
	movl      %edx, %ecx
L00002D44:
	testl     %esi, %esi
	je        L00002D76
L00002D48:
	movl      24(%esp), %eax
	movl      60(%esp), %edx
	leal      (%eax,%edx,4), %eax
	movl      68(%esp), %esi
	.align 4, 0x90
L00002D60:
	movl      (%ebp,%ecx,4), %edx
	xorl      %edx, (%eax,%ecx,4)
	movl      4(%ebp,%ecx,4), %edx
	xorl      %edx, 4(%eax,%ecx,4)
	addl      $2, %ecx
	cmpl      %esi, %ecx
	jl        L00002D60
L00002D76:
	movl      28(%esp), %ecx
	.align 4, 0x90
L00002D80:
	movl      %edi, %eax
	cmpl      $3, %eax
	jl        L00002D90
L00002D87:
	leal      -1(%eax), %edi
	cmpl      $0, (%ecx,%eax,4)
	je        L00002D80
L00002D90:
	cmpl      $2, %eax
	jne       L00002DB0
L00002D95:
	movl      $2, %eax
	movl      $-1, %edx
	jmp       L00002E0D
L00002DA1:
	.align 4, 0x90
L00002DB0:
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
	jb        L00002DE9
L00002DE3:
	addl      $-8, %edx
	shrl      $8, %ecx
L00002DE9:
	movl      %eax, %esi
	sall      $5, %esi
	cmpl      $16, %ecx
	jb        L00002DF9
L00002DF3:
	addl      $-4, %edx
	shrl      $4, %ecx
L00002DF9:
	addl      $-65, %esi
	subl      %edx, %esi
	movl      36(%esp), %edx
	subl      _F2x_degree_lg.__bfffo_tabshi-L000026AC(%edx,%ecx,4), %esi
	movl      %esi, %edx
	movl      %edi, %ecx
L00002E0D:
	cmpl      %ebx, %edx
	movl      %eax, %edi
	jge       L00002A60
L00002E17:
	movl      %eax, 4(%esp)
	movl      20(%esp), %eax
	movl      %eax, (%esp)
	call      _Flx_renormalize
L00002E27:
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
	call      L00002E3C
L00002E3C:
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
	je        L00002EC8
L00002E76:
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
	jb        L00002EA8
L00002EA2:
	addl      $-8, %ecx
	shrl      $8, %eax
L00002EA8:
	movl      %edi, %edx
	sall      $5, %edx
	cmpl      $16, %eax
	jb        L00002EB8
L00002EB2:
	addl      $-4, %ecx
	shrl      $4, %eax
L00002EB8:
	addl      $-65, %edx
	subl      %ecx, %edx
	subl      _F2x_degree_lg.__bfffo_tabshi-L00002E3C(%ebp,%eax,4), %edx
	movl      %edx, %edi
	jns       L00002ED6
L00002EC8:
	movl      $27, (%esp)
	call      _pari_err
L00002ED4:
	movl      %edi, %edx
L00002ED6:
	movl      %ebx, %ecx
	cmpl      $1, %ecx
	je        L00003094
L00002EE1:
	testl     %edx, %edx
	je        L000030A0
L00002EE9:
	movl      $-1, %eax
	cmpl      $2, %esi
	je        L00002F49
L00002EF3:
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
	jb        L00002F27
L00002F21:
	addl      $-8, %ecx
	shrl      $8, %eax
L00002F27:
	movl      %ebx, %edx
	movl      %esi, %ebx
	sall      $5, %ebx
	cmpl      $16, %eax
	jb        L00002F39
L00002F33:
	addl      $-4, %ecx
	shrl      $4, %eax
L00002F39:
	addl      $-65, %ebx
	subl      %ecx, %ebx
	subl      _F2x_degree_lg.__bfffo_tabshi-L00002E3C(%ebp,%eax,4), %ebx
	movl      %ebx, %eax
	movl      %edi, %ecx
L00002F49:
	cmpl      %edx, %eax
	jge       L00003190
L00002F51:
	cmpl      $2, %ecx
	je        L000033BE
L00002F5A:
	movl      L_avma$non_lazy_ptr-L00002E3C(%ebp), %ebx
	movl      (%ebx), %esi
	leal      -8(%esi), %edx
	movl      L_bot$non_lazy_ptr-L00002E3C(%ebp), %edi
	movl      %ebp, 72(%esp)
	movl      %esi, %eax
	subl      (%edi), %eax
	cmpl      $7, %eax
	movl      96(%esp), %eax
	ja        L00002F98
L00002F7C:
	movl      $14, (%esp)
	movl      %ecx, 40(%esp)
	movl      %edx, %ebp
	call      _pari_err
L00002F8E:
	movl      %ebp, %edx
	movl      96(%esp), %eax
	movl      40(%esp), %ecx
L00002F98:
	movl      %edx, (%ebx)
	movl      $738197506, -8(%esi)
	movl      %eax, -4(%esi)
	testl     %ecx, %ecx
	je        L00003D41
L00002FAC:
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
	jae       L00002FF0
L00002FD8:
	movl      $14, (%esp)
	movl      %edx, 104(%esp)
	movl      %ecx, %edi
	call      _pari_err
L00002FEA:
	movl      %edi, %ecx
	movl      104(%esp), %edx
L00002FF0:
	movl      %ecx, 96(%esp)
	movl      %ecx, (%ebx)
	movl      $-16777217, %eax
	movl      100(%esp), %edi
	andl      (%edi), %eax
	movl      %eax, (%ecx)
	cmpl      $2, %esi
	jb        L00003D37
L0000300C:
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
	je        L00003C0D
L00003039:
	incl      %ecx
	movl      %ecx, 88(%esp)
	cmpl      $-3, %ebx
	movl      $-2, %eax
	cmovg     %ebx, %eax
	andl      $-8, %ecx
	je        L00003C1A
L00003052:
	movl      %ecx, 84(%esp)
	movl      %eax, %edi
	notl      %edi
	movl      100(%esp), %ecx
	leal      (%ecx,%edi,4), %edi
	movl      %edi, 80(%esp)
	leal      -4(%ebp), %edi
	cmpl      80(%esp), %edi
	ja        L00003C26
L00003072:
	leal      -4(%ecx,%edx,4), %edi
	addl      %edx, %eax
	notl      %eax
	leal      (%ebp,%eax,4), %eax
	cmpl      %eax, %edi
	ja        L00003C26
L00003086:
	movl      104(%esp), %edx
	movl      $-2, %edi
	jmp       L00003C1E
L00003094:
	addl      $108, %esp
	popl      %esi
	popl      %edi
	popl      %ebx
	popl      %ebp
	jmp       _F2x_rem
L000030A0:
	movl      %ecx, 40(%esp)
	movl      100(%esp), %esi
	movl      (%esi), %ebx
	movl      %ebx, 92(%esp)
	andl      $16777215, %ebx
	movl      %ebp, 72(%esp)
	movl      L_avma$non_lazy_ptr-L00002E3C(%ebp), %edx
	movl      (%edx), %edi
	leal      0(,%ebx,4), %eax
	movl      %edi, %ecx
	subl      %eax, %ecx
	movl      L_bot$non_lazy_ptr-L00002E3C(%ebp), %ebp
	movl      %ebp, 84(%esp)
	movl      %edi, %eax
	subl      (%ebp), %eax
	shrl      $2, %eax
	cmpl      %ebx, %eax
	jae       L000030F9
L000030E1:
	movl      $14, (%esp)
	movl      %ecx, 104(%esp)
	movl      %edx, %ebp
	call      _pari_err
L000030F3:
	movl      %ebp, %edx
	movl      104(%esp), %ecx
L000030F9:
	movl      %edx, 88(%esp)
	movl      %ecx, 104(%esp)
	movl      %ecx, (%edx)
	movl      $-16777217, %eax
	andl      (%esi), %eax
	movl      %eax, (%ecx)
	cmpl      $2, %ebx
	jb        L000035D7
L00003115:
	movl      92(%esp), %edx
	andl      $16777215, %edx
	movl      %edx, %esi
	negl      %esi
	cmpl      $-3, %esi
	movl      $-2, %ecx
	cmovg     %esi, %ecx
	addl      %edx, %ecx
	cmpl      $-1, %ecx
	je        L000034B1
L00003139:
	incl      %ecx
	cmpl      $-3, %esi
	movl      $-2, %ebp
	cmovg     %esi, %ebp
	movl      %ecx, %eax
	andl      $-8, %eax
	je        L000034BA
L00003150:
	movl      %ecx, 76(%esp)
	movl      %eax, 80(%esp)
	movl      %ebp, %eax
	notl      %eax
	movl      100(%esp), %ecx
	leal      (%ecx,%eax,4), %ecx
	leal      -4(%edi), %eax
	cmpl      %ecx, %eax
	ja        L000034BE
L0000316E:
	movl      100(%esp), %eax
	leal      -4(%eax,%edx,4), %eax
	addl      %edx, %ebp
	notl      %ebp
	leal      (%edi,%ebp,4), %ebp
	cmpl      %ebp, %eax
	ja        L000034BE
L00003185:
	xorl      %eax, %eax
	movl      76(%esp), %ecx
	jmp       L00003529
L00003190:
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
	movl      L_avma$non_lazy_ptr-L00002E3C(%esi), %eax
	movl      %eax, 36(%esp)
	movl      (%eax), %edx
	movl      %edx, 68(%esp)
	movl      $-3, %ebp
	subl      %edi, %ebp
	movl      %ebp, 76(%esp)
	movl      L_bot$non_lazy_ptr-L00002E3C(%esi), %ecx
	movl      %ecx, 20(%esp)
	movl      %esi, 72(%esp)
	movl      %edx, %eax
	subl      (%ecx), %eax
	shrl      $2, %eax
	cmpl      %ebx, %eax
	leal      (%edx,%ebp,4), %eax
	movl      %eax, 32(%esp)
	jae       L00003201
L000031F5:
	movl      $14, (%esp)
	call      _pari_err
L00003201:
	leal      2(%edi), %ebp
	movl      36(%esp), %eax
	movl      32(%esp), %ecx
	movl      %ecx, (%eax)
	cmpl      $16777216, %ebx
	jb        L00003230
L00003216:
	movl      72(%esp), %eax
	leal      LC00009591-L00002E3C(%eax), %eax
	movl      %eax, 4(%esp)
	movl      $15, (%esp)
	call      _pari_err
L00003230:
	orl       $738197504, %ebx
	movl      32(%esp), %eax
	movl      %ebx, (%eax)
	testl     %ebp, %ebp
	movl      68(%esp), %ebx
	jle       L0000325D
L00003244:
	movl      $-2, %eax
	subl      %edi, %eax
	leal      (%ebx,%eax,4), %eax
	sall      $2, %ebp
	movl      %ebp, 4(%esp)
	movl      %eax, (%esp)
	call      ___bzero
L0000325D:
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
	jae       L000032AB
L0000329F:
	movl      $14, (%esp)
	call      _pari_err
L000032AB:
	movl      36(%esp), %eax
	movl      28(%esp), %ecx
	movl      %ecx, (%eax)
	movl      $-16777217, %eax
	andl      (%edi), %eax
	movl      %eax, (%ecx)
	cmpl      $2, %ebp
	movl      %ebp, 64(%esp)
	movl      %edi, %ecx
	jb        L000036F7
L000032CD:
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
	je        L0000364F
L000032F3:
	incl      %edx
	cmpl      $-3, %ebp
	movl      $-2, %ebx
	cmovg     %ebp, %ebx
	movl      %edx, %eax
	andl      $-8, %eax
	je        L00003633
L0000330A:
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
	ja        L0000334C
L0000332D:
	movl      100(%esp), %eax
	leal      -4(%eax,%edi,4), %eax
	addl      %edi, %ebx
	notl      %ebx
	movl      80(%esp), %ecx
	leal      (%ecx,%ebx,4), %ebx
	cmpl      %ebx, %eax
	movl      64(%esp), %eax
	jbe       L0000363D
L0000334C:
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
	movdqa    LC00009400-L00002E3C(%ebp), %xmm0
	movl      100(%esp), %ecx
	movl      80(%esp), %edx
L00003380:
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
	jne       L00003380
L000033B1:
	movl      92(%esp), %edx
	movl      84(%esp), %esi
	jmp       L0000363D
L000033BE:
	xorl      %edx, %edx
	testl     %eax, %eax
	jns       L00003D41
L000033C8:
	movl      100(%esp), %edi
	movl      (%edi), %esi
	movl      %esi, 96(%esp)
	andl      $16777215, %esi
	movl      %ebp, %ecx
	movl      %ecx, 72(%esp)
	movl      L_avma$non_lazy_ptr-L00002E3C(%ecx), %ebp
	movl      (%ebp), %ebx
	leal      0(,%esi,4), %eax
	movl      %ebx, %edx
	subl      %eax, %edx
	movl      L_bot$non_lazy_ptr-L00002E3C(%ecx), %eax
	movl      %ebx, %ecx
	subl      (%eax), %ecx
	shrl      $2, %ecx
	cmpl      %esi, %ecx
	jae       L00003417
L00003403:
	movl      $14, (%esp)
	movl      %edx, 104(%esp)
	call      _pari_err
L00003413:
	movl      104(%esp), %edx
L00003417:
	movl      %edx, (%ebp)
	movl      $-16777217, %eax
	andl      (%edi), %eax
	movl      %eax, (%edx)
	cmpl      $2, %esi
	jb        L00003D41
L0000342C:
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
	je        L00003D4B
L00003459:
	incl      %ecx
	movl      %ecx, 92(%esp)
	cmpl      $-3, %ebp
	movl      $-2, %edi
	cmovg     %ebp, %edi
	andl      $-8, %ecx
	movl      %ecx, 88(%esp)
	je        L000034A6
L00003472:
	movl      %edi, %eax
	notl      %eax
	movl      100(%esp), %ecx
	leal      (%ecx,%eax,4), %eax
	movl      %eax, 84(%esp)
	leal      -4(%ebx), %eax
	cmpl      84(%esp), %eax
	ja        L00003D51
L0000348E:
	leal      -4(%ecx,%edx,4), %eax
	addl      %edx, %edi
	notl      %edi
	leal      (%ebx,%edi,4), %edi
	cmpl      %edi, %eax
	ja        L00003D51
L000034A1:
	movl      $-2, %eax
L000034A6:
	movl      92(%esp), %edx
	xorl      %edi, %edi
	jmp       L00003DB9
L000034B1:
	movl      100(%esp), %eax
	jmp       L00003535
L000034BA:
	xorl      %eax, %eax
	jmp       L00003529
L000034BE:
	movl      %ebx, %eax
	subl      80(%esp), %eax
	movl      %eax, 68(%esp)
	cmpl      $-3, %esi
	movl      $-2, %eax
	cmovg     %esi, %eax
	leal      1(%eax,%edx), %esi
	andl      $-8, %esi
	movl      72(%esp), %eax
	movdqa    LC00009400-L00002E3C(%eax), %xmm0
	movl      100(%esp), %ebp
	movl      76(%esp), %ecx
	.align 4, 0x90
L000034F0:
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
	jne       L000034F0
L00003521:
	movl      68(%esp), %ebx
	movl      80(%esp), %eax
L00003529:
	cmpl      %eax, %ecx
	movl      100(%esp), %eax
	je        L000035D7
L00003535:
	movl      %eax, %ebp
	movl      %ebx, %edx
	negl      %edx
	cmpl      $-3, %edx
	movl      $-2, %eax
	cmovg     %edx, %eax
	leal      (%ebx,%eax), %ecx
	leal      1(%ebx,%eax), %eax
	testb     $3, %al
	je        L0000358D
L00003551:
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
L00003580:
	movl      -4(%ebp,%ebx,4), %esi
	movl      %esi, (%eax,%ebx,4)
	leal      -1(%ebx), %ebx
	incl      %edx
	jne       L00003580
L0000358D:
	cmpl      $3, %ecx
	movl      %ebp, %edx
	jb        L000035D7
L00003594:
	movl      92(%esp), %eax
	notl      %eax
	orl       $1056964608, %eax
	leal      (%edi,%eax,4), %eax
	.align 4, 0x90
L000035B0:
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
	jg        L000035B0
L000035D7:
	movl      40(%esp), %ecx
	movl      %ecx, %eax
	orl       $2, %eax
	cmpl      $2, %eax
	jne       L000035EE
L000035E5:
	movl      104(%esp), %edx
	jmp       L00003D41
L000035EE:
	movl      88(%esp), %edx
	movl      (%edx), %esi
	leal      -8(%esi), %edi
	movl      %esi, %eax
	movl      84(%esp), %ebx
	subl      (%ebx), %eax
	cmpl      $7, %eax
	ja        L00003618
L00003604:
	movl      $14, (%esp)
	movl      %ecx, %ebx
	movl      %edx, %ebp
	call      _pari_err
L00003614:
	movl      %ebp, %edx
	movl      %ebx, %ecx
L00003618:
	movl      %edi, (%edx)
	movl      $738197506, -8(%esi)
	movl      96(%esp), %eax
	movl      %eax, -4(%esi)
	movl      %edi, (%ecx)
	movl      104(%esp), %edx
	jmp       L00003D41
L00003633:
	movl      %edx, 96(%esp)
	movl      64(%esp), %eax
	xorl      %edx, %edx
L0000363D:
	cmpl      %edx, 96(%esp)
	movl      100(%esp), %ecx
	movl      68(%esp), %ebx
	je        L000036F7
L0000364F:
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
	je        L000036AD
L00003670:
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
L000036A0:
	movl      -4(%ebp,%eax,4), %ebx
	movl      %ebx, (%ecx,%eax,4)
	leal      -1(%eax), %eax
	incl      %edi
	jne       L000036A0
L000036AD:
	cmpl      $3, %edx
	movl      %ebp, %edi
	movl      68(%esp), %ebx
	jb        L000036F7
L000036B8:
	movl      %esi, %ecx
	notl      %ecx
	orl       $1056964608, %ecx
	movl      80(%esp), %edx
	leal      (%edx,%ecx,4), %ecx
	.align 4, 0x90
L000036D0:
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
	jg        L000036D0
L000036F7:
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
	sall      $2, %esi
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
L00003760:
	subl      %edx, %esi
	movl      %esi, %edi
	sarl      $5, %edi
	movl      %esi, %ecx
	andl      $31, %ecx
	movl      $1, %eax
	sall      %cl, %eax
	movl      76(%esp), %ecx
	leal      (%ecx,%edi), %ecx
	orl       %eax, (%ebx,%ecx,4)
	movl      %esi, %ecx
	movl      (%ebp), %esi
	andl      $16777215, %esi
	andl      $31, %ecx
	je        L00003800
L0000378D:
	cmpl      $3, %esi
	jb        L00003900
L00003796:
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
	je        L00003909
L000037C0:
	movl      %edi, 92(%esp)
	movl      %esi, 100(%esp)
	movl      %edx, %edi
	movl      %edi, 52(%esp)
	movl      8(%ebp), %edx
	movl      %ecx, %esi
	sall      %cl, %edx
	movl      80(%esp), %eax
	xorl      %edx, 8(%eax,%edi,4)
	movl      %ebp, %eax
	movl      8(%eax), %ebp
	movl      96(%esp), %ecx
	shrl      %cl, %ebp
	movl      $3, %edx
	jmp       L00003920
L000037F2:
	.align 4, 0x90
L00003800:
	cmpl      $3, %esi
	jb        L00003900
L00003809:
	movl      %edi, %eax
	movl      %edi, 92(%esp)
	subl      64(%esp), %eax
	movl      %eax, 104(%esp)
	cmpl      $3, %esi
	movl      $3, %ecx
	cmova     %esi, %ecx
	movl      $2, %edx
	cmpl      $2, %ecx
	je        L00003A39
L00003830:
	leal      -2(%ecx), %edi
	andl      $-4, %edi
	orl       $2, %edi
	cmpl      $3, %esi
	movl      $3, %eax
	cmova     %esi, %eax
	movl      %esi, 100(%esp)
	cmpl      $2, %edi
	movl      $2, %edx
	je        L00003A23
L00003856:
	movl      %edi, 96(%esp)
	leal      -4(%ebp,%eax,4), %esi
	movl      24(%esp), %ebp
	movl      92(%esp), %ebx
	leal      (%ebp,%ebx), %ebp
	movl      80(%esp), %edi
	leal      (%edi,%ebp,4), %ebp
	cmpl      %esi, %ebp
	movl      68(%esp), %ebx
	ja        L00003892
L00003879:
	addl      92(%esp), %eax
	addl      60(%esp), %eax
	movl      80(%esp), %edi
	leal      (%edi,%eax,4), %eax
	cmpl      %eax, 16(%esp)
	jbe       L00003A23
L00003892:
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
	je        L000038DF
L000038B9:
	movl      48(%esp), %eax
	movdqu    8(%eax), %xmm0
	movl      80(%esp), %eax
	movl      104(%esp), %esi
	movdqu    8(%eax,%esi,4), %xmm1
	pxor      %xmm0, %xmm1
	movdqu    %xmm1, 8(%eax,%esi,4)
	movl      $6, %edi
L000038DF:
	testl     %edx, %edx
	movl      96(%esp), %esi
	jne       L000039B3
L000038EB:
	movl      %esi, %edx
	jmp       L00003A23
L000038F2:
	.align 4, 0x90
L00003900:
	movl      88(%esp), %eax
	jmp       L00003AA4
L00003909:
	movl      %edx, 52(%esp)
	movl      %edi, 92(%esp)
	movl      %esi, 100(%esp)
	movl      %ecx, %esi
	movl      %ebp, %eax
	movl      $2, %edx
	xorl      %ebp, %ebp
L00003920:
	testl     %ebx, %ebx
	movl      %esi, %ecx
	movl      100(%esp), %edi
	je        L00003984
L0000392A:
	movl      %ecx, 104(%esp)
	movl      44(%esp), %ecx
	movl      92(%esp), %edi
	leal      (%ecx,%edi,4), %ecx
	movl      %ecx, 92(%esp)
	.align 4, 0x90
L00003940:
	movl      (%eax,%edx,4), %edi
	movl      %eax, %esi
	movl      104(%esp), %ecx
	sall      %cl, %edi
	orl       %ebp, %edi
	movl      92(%esp), %eax
	xorl      %edi, (%eax,%edx,4)
	movl      (%esi,%edx,4), %edi
	movl      96(%esp), %ebx
	movb      %bl, %cl
	shrl      %cl, %edi
	movl      4(%esi,%edx,4), %ebp
	movl      104(%esp), %ecx
	sall      %cl, %ebp
	orl       %edi, %ebp
	movl      100(%esp), %edi
	xorl      %ebp, 4(%eax,%edx,4)
	movl      4(%esi,%edx,4), %ebp
	movb      %bl, %cl
	shrl      %cl, %ebp
	movl      %esi, %eax
	addl      $2, %edx
	cmpl      %edi, %edx
	jl        L00003940
L00003984:
	movl      %eax, %ecx
	testl     %ebp, %ebp
	movl      88(%esp), %eax
	je        L000039A8
L0000398E:
	cmpl      $3, %edi
	movl      $3, %edx
	cmovbe    %edx, %edi
	movl      %edi, %edx
	movl      52(%esp), %edi
	addl      %edx, %edi
	movl      80(%esp), %edx
	xorl      %ebp, (%edx,%edi,4)
L000039A8:
	movl      %ecx, %ebp
	movl      56(%esp), %edx
	jmp       L00003AA0
L000039B3:
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
L000039F0:
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
	jne       L000039F0
L00003A1D:
	movl      %esi, %edx
	movl      68(%esp), %ebx
L00003A23:
	cmpl      %edx, %ecx
	movl      48(%esp), %ebp
	movl      100(%esp), %esi
	jne       L00003A39
L00003A2F:
	movl      88(%esp), %eax
	movl      56(%esp), %edx
	jmp       L00003AA4
L00003A39:
	leal      1(%edx), %ecx
	cmpl      %esi, %ecx
	movl      %esi, %ebx
	cmovge    %ecx, %ebx
	movl      %ebx, %eax
	subl      %edx, %eax
	decl      %ebx
	subl      %edx, %ebx
	testb     $1, %al
	je        L00003A61
L00003A4E:
	movl      (%ebp,%edx,4), %eax
	movl      104(%esp), %edi
	addl      %edx, %edi
	movl      80(%esp), %edx
	xorl      %eax, (%edx,%edi,4)
	jmp       L00003A63
L00003A61:
	movl      %edx, %ecx
L00003A63:
	movl      56(%esp), %edx
	movl      92(%esp), %edi
	testl     %ebx, %ebx
	jne       L00003A75
L00003A6F:
	movl      88(%esp), %eax
	jmp       L00003AA0
L00003A75:
	movl      %edx, %ebx
	movl      44(%esp), %eax
	leal      (%eax,%edi,4), %eax
	.align 4, 0x90
L00003A80:
	movl      (%ebp,%ecx,4), %edx
	xorl      %edx, (%eax,%ecx,4)
	movl      4(%ebp,%ecx,4), %edx
	xorl      %edx, 4(%eax,%ecx,4)
	addl      $2, %ecx
	cmpl      %esi, %ecx
	jl        L00003A80
L00003A96:
	movl      88(%esp), %eax
	movl      %ebx, %edx
	.align 4, 0x90
L00003AA0:
	movl      68(%esp), %ebx
L00003AA4:
	movl      84(%esp), %ecx
	.align 4, 0x90
L00003AB0:
	movl      %eax, %esi
	cmpl      $3, %esi
	jl        L00003AC0
L00003AB7:
	leal      -1(%esi), %eax
	cmpl      $0, (%ecx,%esi,4)
	je        L00003AB0
L00003AC0:
	cmpl      $2, %esi
	jne       L00003AE0
L00003AC5:
	movl      %ecx, 84(%esp)
	movl      $2, 88(%esp)
	movl      $-1, %esi
	jmp       L00003B40
L00003AD8:
	.align 4, 0x90
L00003AE0:
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
	jb        L00003B1C
L00003B16:
	addl      $-8, %ecx
	shrl      $8, %eax
L00003B1C:
	movl      %edi, %ebx
	movl      %esi, 88(%esp)
	sall      $5, %esi
	cmpl      $16, %eax
	jb        L00003B30
L00003B2A:
	addl      $-4, %ecx
	shrl      $4, %eax
L00003B30:
	addl      $-65, %esi
	subl      %ecx, %esi
	movl      72(%esp), %ecx
	subl      _F2x_degree_lg.__bfffo_tabshi-L00002E3C(%ecx,%eax,4), %esi
L00003B40:
	cmpl      %edx, %esi
	jge       L00003760
L00003B48:
	movl      32(%esp), %ecx
	movl      (%ecx), %eax
	andl      $16777215, %eax
	movl      %eax, 4(%esp)
	movl      %ecx, (%esp)
	call      _Flx_renormalize
L00003B5F:
	movl      %eax, %edx
	movl      40(%esp), %eax
	testl     %eax, %eax
	je        L00003BBC
L00003B69:
	movl      %edx, %ebx
	movl      88(%esp), %ecx
	movl      %ecx, 4(%esp)
	movl      28(%esp), %ecx
	movl      %ecx, (%esp)
	movl      %eax, %esi
	call      _Flx_renormalize
L00003B81:
	movl      %esi, %ecx
	cmpl      $2, %ecx
	jne       L00003BB3
L00003B88:
	movl      $16777215, %ecx
	movl      (%eax), %edx
	andl      %ecx, %edx
	cmpl      $2, %edx
	jne       L00003BFB
L00003B96:
	addl      $8, %eax
	movl      20(%esp), %ecx
	cmpl      (%ecx), %eax
	jb        L00003BB5
L00003BA1:
	movl      72(%esp), %ecx
	movl      L_top$non_lazy_ptr-L00002E3C(%ecx), %ecx
	cmpl      (%ecx), %eax
	jae       L00003BB5
L00003BAF:
	movl      36(%esp), %ecx
L00003BB3:
	movl      %eax, (%ecx)
L00003BB5:
	movl      %ebx, %edx
	jmp       L00003D41
L00003BBC:
	movl      $16777215, %eax
	movl      28(%esp), %ecx
	andl      (%ecx), %eax
	subl      64(%esp), %eax
	movl      80(%esp), %ecx
	leal      (%ecx,%eax,4), %eax
	movl      20(%esp), %ecx
	cmpl      (%ecx), %eax
	jb        L00003D41
L00003BDE:
	movl      72(%esp), %ecx
	movl      L_top$non_lazy_ptr-L00002E3C(%ecx), %ecx
	cmpl      (%ecx), %eax
	jae       L00003D41
L00003BF0:
	movl      36(%esp), %ecx
	movl      %eax, (%ecx)
	jmp       L00003D41
L00003BFB:
	andl      (%ebx), %ecx
	leal      (%ebx,%ecx,4), %eax
	movl      36(%esp), %ecx
	movl      %eax, (%ecx)
	xorl      %edx, %edx
	jmp       L00003D41
L00003C0D:
	movl      100(%esp), %ecx
	movl      104(%esp), %edx
	jmp       L00003CA2
L00003C1A:
	movl      104(%esp), %edx
L00003C1E:
	movl      88(%esp), %eax
	xorl      %ecx, %ecx
	jmp       L00003C96
L00003C26:
	movl      %esi, %eax
	subl      84(%esp), %eax
	movl      %eax, 80(%esp)
	cmpl      $-3, %ebx
	movl      $-2, %eax
	cmovg     %ebx, %eax
	leal      1(%eax,%edx), %edi
	andl      $-8, %edi
	movl      72(%esp), %eax
	movdqa    LC00009400-L00002E3C(%eax), %xmm0
	.align 4, 0x90
L00003C50:
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
	jne       L00003C50
L00003C81:
	movl      80(%esp), %esi
	movl      84(%esp), %ecx
	movl      104(%esp), %edx
	movl      $-2, %edi
	movl      88(%esp), %eax
L00003C96:
	cmpl      %ecx, %eax
	movl      100(%esp), %ecx
	je        L00003D37
L00003CA2:
	movl      %edx, 104(%esp)
	movl      %ecx, %ebx
	movl      %esi, %edx
	negl      %edx
	cmpl      $-3, %edx
	cmovg     %edx, %edi
	leal      (%esi,%edi), %ecx
	leal      1(%esi,%edi), %eax
	testb     $3, %al
	je        L00003CED
L00003CBD:
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
L00003CE0:
	movl      -4(%ebx,%esi,4), %edi
	movl      %edi, (%eax,%esi,4)
	leal      -1(%esi), %esi
	incl      %edx
	jne       L00003CE0
L00003CED:
	cmpl      $3, %ecx
	movl      104(%esp), %edx
	jb        L00003D37
L00003CF6:
	movl      92(%esp), %eax
	notl      %eax
	orl       $1056964608, %eax
	leal      (%ebp,%eax,4), %eax
	.align 4, 0x90
L00003D10:
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
	jg        L00003D10
L00003D37:
	movl      40(%esp), %eax
	movl      96(%esp), %ecx
	movl      %ecx, (%eax)
L00003D41:
	movl      %edx, %eax
	addl      $108, %esp
	popl      %esi
	popl      %edi
	popl      %ebx
	popl      %ebp
	ret       
L00003D4B:
	movl      100(%esp), %ebp
	jmp       L00003DCA
L00003D51:
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
	movdqa    LC00009400-L00002E3C(%eax), %xmm0
L00003D7B:
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
	jne       L00003D7B
L00003DAC:
	movl      84(%esp), %esi
	movl      $-2, %eax
	movl      92(%esp), %edx
L00003DB9:
	cmpl      %edi, %edx
	movl      100(%esp), %ebp
	jne       L00003DCA
L00003DC1:
	movl      104(%esp), %edx
	jmp       L00003D41
L00003DCA:
	movl      %esi, %edx
	negl      %edx
	cmpl      $-3, %edx
	cmovg     %edx, %eax
	leal      (%esi,%eax), %ecx
	leal      1(%esi,%eax), %eax
	testb     $3, %al
	je        L00003E0E
L00003DDF:
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
L00003E01:
	movl      -4(%ebp,%esi,4), %edi
	movl      %edi, (%eax,%esi,4)
	leal      -1(%esi), %esi
	incl      %edx
	jne       L00003E01
L00003E0E:
	cmpl      $3, %ecx
	jae       L00003E1C
L00003E13:
	movl      104(%esp), %edx
	jmp       L00003D41
L00003E1C:
	movl      96(%esp), %eax
	notl      %eax
	orl       $1056964608, %eax
	leal      (%ebx,%eax,4), %eax
	movl      104(%esp), %edx
L00003E2E:
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
	jg        L00003E2E
L00003E55:
	jmp       L00003D41
# ----------------------
	.align 4, 0x90
	.globl	_F2x_deriv
_F2x_deriv:
	pushl     %ebp
	pushl     %ebx
	pushl     %edi
	pushl     %esi
	subl      $28, %esp
	call      L00003E6C
L00003E6C:
	popl      %edx
	movl      %edx, 20(%esp)
	movl      48(%esp), %edi
	movl      (%edi), %esi
	andl      $16777215, %esi
	movl      L_avma$non_lazy_ptr-L00003E6C(%edx), %ebp
	movl      (%ebp), %ecx
	movl      %ecx, 24(%esp)
	leal      0(,%esi,4), %eax
	movl      %ecx, %ebx
	subl      %eax, %ebx
	movl      L_bot$non_lazy_ptr-L00003E6C(%edx), %eax
	subl      (%eax), %ecx
	shrl      $2, %ecx
	cmpl      %esi, %ecx
	jae       L00003EB0
L00003EA4:
	movl      $14, (%esp)
	call      _pari_err
L00003EB0:
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
	jb        L00004035
L00003ED6:
	movl      $3, %eax
	cmova     %esi, %eax
	movl      $2, %edx
	cmpl      $2, %eax
	je        L00003FB9
L00003EEC:
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
	je        L00003FB3
L00003F14:
	leal      (%edi,%eax,4), %ecx
	movl      %ecx, 8(%esp)
	movl      $2, %edx
	movl      $2, %ebp
	subl      %esi, %ebp
	movl      24(%esp), %ecx
	leal      (%ecx,%ebp,4), %ebp
	cmpl      8(%esp), %ebp
	ja        L00003F45
L00003F34:
	leal      8(%edi), %ecx
	subl      %esi, %eax
	movl      24(%esp), %ebp
	leal      (%ebp,%eax,4), %eax
	cmpl      %eax, %ecx
	jbe       L00003FB3
L00003F45:
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
	movdqa    LC00009410-L00003E6C(%ebp), %xmm0
	.align 4, 0x90
L00003F80:
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
	jne       L00003F80
L00003FAF:
	movl      12(%esp), %edx
L00003FB3:
	cmpl      %edx, 16(%esp)
	je        L00004035
L00003FB9:
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
	je        L00003FEA
L00003FD3:
	movl      (%edi,%edx,4), %ebx
	shrl      $1, %ebx
	andl      $1431655765, %ebx
	subl      %esi, %edx
	movl      24(%esp), %ebp
	movl      %ebx, (%ebp,%edx,4)
	jmp       L00003FEC
L00003FEA:
	movl      %edx, %eax
L00003FEC:
	movl      20(%esp), %ebx
	testl     %ecx, %ecx
	je        L00004035
L00003FF4:
	movl      $1, %ecx
	subl      %esi, %ecx
	movl      24(%esp), %edx
	leal      (%edx,%ecx,4), %ecx
	.align 4, 0x90
L00004010:
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
	jl        L00004010
L00004035:
	movl      %esi, 4(%esp)
	movl      %ebx, (%esp)
	call      _Flx_renormalize
L00004041:
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
	call      L0000405C
L0000405C:
	popl      %ecx
	movl      %ecx, 48(%esp)
	movl      84(%esp), %edx
	movl      80(%esp), %eax
	movl      %eax, 56(%esp)
	movl      %edx, 52(%esp)
	movl      L_avma$non_lazy_ptr-L0000405C(%ecx), %ebx
	movl      (%ebx), %esi
	movl      %esi, 40(%esp)
	movl      L_bot$non_lazy_ptr-L0000405C(%ecx), %ecx
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
	jbe       L000040B8
L000040AA:
	movl      84(%esp), %ecx
	movl      %ecx, 56(%esp)
	movl      %eax, 52(%esp)
	jmp       L000040C0
L000040B8:
	movl      %eax, %ecx
	movl      %edi, %edx
	movl      84(%esp), %eax
L000040C0:
	movl      40(%esp), %edi
	movl      44(%esp), %ebp
	addl      %ebp, %esi
	andl      $16777215, %edx
	cmpl      $2, %edx
	movl      %edi, %edx
	je        L000041D1
L000040DB:
	movl      $16777215, %ebp
	movl      48(%esp), %edx
	leal      LC00009540-L0000405C(%edx), %edx
	movl      %edx, 44(%esp)
	jmp       L000040F4
L000040F0:
	movl      56(%esp), %ecx
L000040F4:
	movl      %eax, 4(%esp)
	movl      %ecx, (%esp)
	call      _F2x_rem
L00004100:
	movl      52(%esp), %ecx
	movl      %ecx, 56(%esp)
	movl      %eax, 52(%esp)
	cmpl      %esi, (%ebx)
	jae       L000041C2
L00004114:
	movl      48(%esp), %ecx
	movl      L_DEBUGMEM$non_lazy_ptr-L0000405C(%ecx), %ecx
	cmpl      $2, (%ecx)
	jb        L0000419E
L00004123:
	movl      (%eax), %ecx
	andl      %ebp, %ecx
	movl      $-1, %edx
	cmpl      $2, %ecx
	je        L00004186
L00004131:
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
	jb        L0000415F
L00004159:
	addl      $-8, %edx
	shrl      $8, %eax
L0000415F:
	movl      %ebp, %edi
	sall      $5, %ecx
	cmpl      $16, %eax
	movl      $16777215, %ebp
	jb        L00004174
L0000416E:
	addl      $-4, %edx
	shrl      $4, %eax
L00004174:
	addl      $-65, %ecx
	subl      %edx, %ecx
	movl      48(%esp), %edx
	subl      _F2x_degree_lg.__bfffo_tabshi-L0000405C(%edx,%eax,4), %ecx
	movl      %ecx, %edx
L00004186:
	movl      %edx, 8(%esp)
	movl      44(%esp), %eax
	movl      %eax, 4(%esp)
	movl      $3, (%esp)
	call      _pari_warn
L0000419E:
	leal      52(%esp), %eax
	movl      %eax, 12(%esp)
	leal      56(%esp), %eax
	movl      %eax, 8(%esp)
	movl      %edi, (%esp)
	movl      $2, 4(%esp)
	call      _gerepileall
L000041BE:
	movl      52(%esp), %eax
L000041C2:
	movl      (%eax), %ecx
	andl      %ebp, %ecx
	cmpl      $2, %ecx
	jne       L000040F0
L000041CF:
	movl      (%ebx), %edx
L000041D1:
	movl      56(%esp), %eax
	cmpl      %esi, %edx
	jae       L00004256
L000041D9:
	movl      36(%esp), %ecx
	cmpl      (%ecx), %eax
	jb        L00004250
L000041E1:
	movl      48(%esp), %ecx
	movl      L_top$non_lazy_ptr-L0000405C(%ecx), %ecx
	cmpl      (%ecx), %eax
	jae       L00004250
L000041EF:
	cmpl      %eax, %edi
	jbe       L00004250
L000041F3:
	movl      (%eax), %ebp
	movl      %ebp, %ecx
	andl      $16777215, %ecx
	sall      $2, %ecx
	movl      %edi, %esi
	subl      %ecx, %esi
	movl      %ebp, %edx
	andl      $16777215, %edx
	movl      %esi, (%ebx)
	je        L0000425E
L00004210:
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
	jne       L00004262
L0000423E:
	movl      %edi, 40(%esp)
	movl      $-2, %esi
	movl      36(%esp), %ebp
	jmp       L00004345
L00004250:
	movl      %edi, (%ebx)
L00004252:
	movl      %eax, 56(%esp)
L00004256:
	addl      $60, %esp
	popl      %esi
	popl      %edi
	popl      %ebx
	popl      %ebp
	ret       
L0000425E:
	movl      %esi, %eax
	jmp       L00004252
L00004262:
	movl      %edi, 40(%esp)
	addl      $2, %ebp
	cmpl      $-16777216, %esi
	movl      $-2, %esi
	cmovne    %esi, %ecx
	xorl      %edi, %edi
	movl      %ebp, %esi
	andl      $-8, %esi
	je        L00004329
L00004284:
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
	ja        L000042C2
L000042AA:
	leal      -4(%eax,%edx,4), %edi
	addl      %edx, %ecx
	subl      %ecx, %esi
	movl      40(%esp), %ecx
	leal      (%ecx,%esi,4), %ecx
	cmpl      %ecx, %edi
	movl      $0, %edi
	jbe       L00004331
L000042C2:
	movl      %edx, %ecx
	subl      28(%esp), %ecx
	movl      %ecx, 24(%esp)
	leal      2(%ebx,%edx), %ebx
	andl      $-8, %ebx
	movl      48(%esp), %ecx
	movdqa    LC00009420-L0000405C(%ecx), %xmm0
	movl      %edx, %edi
	movl      40(%esp), %ecx
	.align 4, 0x90
L000042F0:
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
	jne       L000042F0
L0000431F:
	movl      24(%esp), %edx
	movl      28(%esp), %edi
	jmp       L00004331
L00004329:
	movl      %ebp, 32(%esp)
	movl      36(%esp), %ebp
L00004331:
	cmpl      %edi, 32(%esp)
	movl      $-2, %esi
	jne       L00004345
L0000433C:
	movl      44(%esp), %eax
	jmp       L00004252
L00004345:
	movl      %edx, %ebx
	notl      %ebx
	cmpl      $-3, %ebx
	cmovg     %ebx, %esi
	leal      2(%edx,%esi), %ecx
	leal      1(%edx,%esi), %edi
	testb     $3, %cl
	je        L0000439D
L0000435C:
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
L00004390:
	movl      -4(%eax,%edx,4), %esi
	movl      %esi, (%ecx,%edx,4)
	leal      -1(%edx), %edx
	incl      %ebx
	jne       L00004390
L0000439D:
	cmpl      $3, %edi
	jae       L000043AB
L000043A2:
	movl      44(%esp), %eax
	jmp       L00004252
L000043AB:
	incl      %edx
	andl      $16777215, %ebp
	movl      $-4, %ecx
	subl      %ebp, %ecx
	movl      40(%esp), %esi
	leal      (%esi,%ecx,4), %ecx
	movl      44(%esp), %edi
	.align 4, 0x90
L000043D0:
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
	jg        L000043D0
L000043F7:
	movl      %edi, %eax
	jmp       L00004252
L000043FE:
	.align 4, 0x90
_gerepileall:
	pushl     %ebp
	pushl     %ebx
	pushl     %edi
	pushl     %esi
	subl      $76, %esp
	call      L0000440C
L0000440C:
	popl      %ecx
	movl      100(%esp), %ebx
	movl      96(%esp), %ebp
	movl      L___stack_chk_guard$non_lazy_ptr-L0000440C(%ecx), %edi
	movl      (%edi), %eax
	movl      %eax, 72(%esp)
	leal      104(%esp), %eax
	movl      %eax, 28(%esp)
	cmpl      $9, %ebx
	jg        L00004498
L0000442E:
	testl     %ebx, %ebx
	jle       L00004500
L00004436:
	movl      %edi, 20(%esp)
	movl      %ecx, 24(%esp)
	xorl      %esi, %esi
L00004440:
	movl      28(%esp), %eax
	leal      4(%eax), %ecx
	movl      %ecx, 28(%esp)
	movl      (%eax), %edi
	movl      %edi, 32(%esp,%esi,4)
	movl      (%edi), %eax
	movl      %eax, (%esp)
	call      _copy_bin
L0000445B:
	movl      %eax, (%edi)
	incl      %esi
	cmpl      %esi, %ebx
	jne       L00004440
L00004462:
	movl      24(%esp), %eax
	movl      L_avma$non_lazy_ptr-L0000440C(%eax), %eax
	movl      %ebp, (%eax)
	testl     %ebx, %ebx
	movl      20(%esp), %edi
	jle       L000045D4
L0000447A:
	incl      %ebx
	.align 4, 0x90
L00004480:
	movl      24(%esp,%ebx,4), %esi
	movl      (%esi), %ecx
	call      _bin_copy
L0000448B:
	movl      %eax, (%esi)
	decl      %ebx
	cmpl      $1, %ebx
	jg        L00004480
L00004493:
	jmp       L000045D4
L00004498:
	leal      0(,%ebx,4), %eax
	testl     %eax, %eax
	je        L0000450D
L000044A3:
	movl      %edi, 20(%esp)
	movl      %ecx, 24(%esp)
	movl      L_PARI_SIGINT_block$non_lazy_ptr-L0000440C(%ecx), %edi
	movl      (%edi), %ebp
	movl      $1, (%edi)
	movl      %eax, (%esp)
	call      _malloc
L000044C1:
	movl      %eax, %esi
	movl      %ebp, (%edi)
	testl     %ebp, %ebp
	jne       L000044E8
L000044C9:
	movl      24(%esp), %eax
	movl      L_PARI_SIGINT_pending$non_lazy_ptr-L0000440C(%eax), %eax
	cmpl      $0, (%eax)
	je        L000044E8
L000044D8:
	movl      (%eax), %ecx
	movl      $0, (%eax)
	movl      %ecx, (%esp)
	call      _raise
L000044E8:
	testl     %esi, %esi
	movl      96(%esp), %ebp
	jne       L0000453E
L000044F0:
	movl      $28, (%esp)
	call      _pari_err
L000044FC:
	xorl      %esi, %esi
	jmp       L0000453E
L00004500:
	movl      L_avma$non_lazy_ptr-L0000440C(%ecx), %eax
	movl      %ebp, (%eax)
	jmp       L000045D4
L0000450D:
	movl      %edi, 20(%esp)
	movl      L_DEBUGMEM$non_lazy_ptr-L0000440C(%ecx), %eax
	xorl      %esi, %esi
	cmpl      $0, (%eax)
	je        L0000453A
L0000451E:
	leal      LC0000957B-L0000440C(%ecx), %eax
	movl      %ecx, 24(%esp)
	movl      %eax, 4(%esp)
	movl      $0, (%esp)
	call      _pari_warn
L00004538:
	jmp       L0000453E
L0000453A:
	movl      %ecx, 24(%esp)
L0000453E:
	xorl      %edi, %edi
L00004540:
	movl      28(%esp), %eax
	leal      4(%eax), %ecx
	movl      %ecx, 28(%esp)
	movl      (%eax), %eax
	movl      %eax, (%esi,%edi,4)
	movl      (%eax), %eax
	movl      %eax, (%esp)
	call      _copy_bin
L0000455A:
	movl      (%esi,%edi,4), %ecx
	movl      %eax, (%ecx)
	incl      %edi
	cmpl      %edi, %ebx
	jne       L00004540
L00004564:
	movl      24(%esp), %edi
	movl      L_avma$non_lazy_ptr-L0000440C(%edi), %eax
	movl      %ebp, (%eax)
	testl     %ebx, %ebx
	jle       L00004597
L00004574:
	incl      %ebx
	.align 4, 0x90
L00004580:
	movl      -8(%esi,%ebx,4), %eax
	movl      (%eax), %ecx
	call      _bin_copy
L0000458B:
	movl      -8(%esi,%ebx,4), %ecx
	movl      %eax, (%ecx)
	decl      %ebx
	cmpl      $1, %ebx
	jg        L00004580
L00004597:
	movl      %edi, %ebp
	movl      L_PARI_SIGINT_block$non_lazy_ptr-L0000440C(%ebp), %edi
	movl      (%edi), %ebx
	movl      $1, (%edi)
	movl      %esi, (%esp)
	call      _free
L000045AF:
	movl      %ebx, (%edi)
	testl     %ebx, %ebx
	movl      20(%esp), %edi
	jne       L000045D4
L000045B9:
	movl      L_PARI_SIGINT_pending$non_lazy_ptr-L0000440C(%ebp), %eax
	cmpl      $0, (%eax)
	je        L000045D4
L000045C4:
	movl      (%eax), %ecx
	movl      $0, (%eax)
	movl      %ecx, (%esp)
	call      _raise
L000045D4:
	movl      (%edi), %eax
	cmpl      72(%esp), %eax
	jne       L000045E4
L000045DC:
	addl      $76, %esp
	popl      %esi
	popl      %edi
	popl      %ebx
	popl      %ebp
	ret       
L000045E4:
	call      ___stack_chk_fail
L000045E9:
	.align 4, 0x90
_gerepileuptoleaf:
	pushl     %ebp
	pushl     %ebx
	pushl     %edi
	pushl     %esi
	subl      $24, %esp
	call      L000045FC
L000045FC:
	popl      %ebp
	movl      L_bot$non_lazy_ptr-L000045FC(%ebp), %eax
	cmpl      (%eax), %edx
	jb        L00004674
L00004607:
	movl      L_top$non_lazy_ptr-L000045FC(%ebp), %eax
	cmpl      (%eax), %edx
	jae       L00004674
L00004611:
	cmpl      %edx, %ecx
	jbe       L00004674
L00004615:
	movl      (%edx), %ebx
	movl      %ebx, %eax
	andl      $16777215, %eax
	sall      $2, %eax
	movl      %ecx, %edi
	subl      %eax, %edi
	movl      %ebx, %esi
	andl      $16777215, %esi
	movl      L_avma$non_lazy_ptr-L000045FC(%ebp), %eax
	movl      %edi, (%eax)
	je        L000047F7
L0000463B:
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
	jne       L00004681
L0000466A:
	movl      $-2, %ebx
	jmp       L00004751
L00004674:
	movl      L_avma$non_lazy_ptr-L000045FC(%ebp), %eax
	movl      %ecx, (%eax)
	jmp       L000047F9
L00004681:
	movl      %edi, 8(%esp)
	addl      $2, %eax
	cmpl      $-16777216, %ebx
	movl      12(%esp), %edi
	movl      $-2, %ebx
	cmovne    %ebx, %edi
	movl      %eax, %ebx
	andl      $-8, %ebx
	je        L00004737
L000046A5:
	movl      %ebx, 4(%esp)
	movl      %eax, 12(%esp)
	movl      $-2, %ebx
	subl      %edi, %ebx
	leal      (%edx,%ebx,4), %eax
	leal      -4(%ecx), %ebx
	cmpl      %eax, %ebx
	movl      $0, %eax
	ja        L000046DB
L000046C3:
	leal      -4(%edx,%esi,4), %ebx
	movl      %ebx, (%esp)
	addl      %esi, %edi
	movl      $-2, %ebx
	subl      %edi, %ebx
	leal      (%ecx,%ebx,4), %edi
	cmpl      %edi, (%esp)
	jbe       L0000473D
L000046DB:
	movl      %esi, %edi
	subl      4(%esp), %edi
	movl      8(%esp), %eax
	leal      2(%eax,%esi), %eax
	andl      $-8, %eax
	movdqa    LC00009430-L000045FC(%ebp), %xmm0
	movl      %esi, %ebp
	.align 4, 0x90
L00004700:
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
	jne       L00004700
L0000472F:
	movl      %edi, %esi
	movl      4(%esp), %eax
	jmp       L0000473D
L00004737:
	movl      %eax, 12(%esp)
	xorl      %eax, %eax
L0000473D:
	cmpl      %eax, 12(%esp)
	movl      $-2, %ebx
	jne       L00004751
L00004748:
	movl      20(%esp), %edx
	jmp       L000047F9
L00004751:
	movl      %esi, %edi
	notl      %edi
	cmpl      $-3, %edi
	cmovg     %edi, %ebx
	leal      2(%esi,%ebx), %eax
	leal      1(%esi,%ebx), %ebx
	testb     $3, %al
	je        L0000479D
L00004767:
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
L00004790:
	movl      -4(%edx,%esi,4), %ebp
	movl      %ebp, (%eax,%esi,4)
	leal      -1(%esi), %esi
	incl      %edi
	jne       L00004790
L0000479D:
	cmpl      $3, %ebx
	jae       L000047A8
L000047A2:
	movl      20(%esp), %edx
	jmp       L000047F9
L000047A8:
	incl      %esi
	movl      16(%esp), %edi
	andl      $16777215, %edi
	movl      $-4, %eax
	subl      %edi, %eax
	leal      (%ecx,%eax,4), %eax
	movl      20(%esp), %edi
	.align 4, 0x90
L000047D0:
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
	jg        L000047D0
L000047F7:
	movl      %edi, %edx
L000047F9:
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
	call      L0000481C
L0000481C:
	popl      %ecx
	movl      %ecx, 40(%esp)
	movl      96(%esp), %edx
	movl      L_avma$non_lazy_ptr-L0000481C(%ecx), %ebp
	movl      (%ebp), %eax
	movl      L_bot$non_lazy_ptr-L0000481C(%ecx), %esi
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
	ja        L0000486B
L0000485F:
	movl      $14, (%esp)
	call      _pari_err
L0000486B:
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
	ja        L000048AA
L0000489E:
	movl      $14, (%esp)
	call      _pari_err
L000048AA:
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
	je        L00004A53
L000048E3:
	movl      40(%esp), %ecx
	leal      LC00009552-L0000481C(%ecx), %ecx
	movl      %ecx, 32(%esp)
	.align 4, 0x90
L00004900:
	movl      64(%esp), %ecx
	leal      52(%esp), %edx
	movl      %edx, 8(%esp)
	movl      %eax, 4(%esp)
	movl      %ecx, (%esp)
	call      _F2x_divrem
L00004918:
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
L00004942:
	movl      4(%esi), %ecx
	movl      %ecx, 4(%eax)
	movl      %eax, 4(%esp)
	movl      %ebx, (%esp)
	call      _F2x_add
L00004954:
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
	jae       L00004A46
L00004984:
	movl      40(%esp), %eax
	movl      L_DEBUGMEM$non_lazy_ptr-L0000481C(%eax), %eax
	cmpl      $2, (%eax)
	jb        L00004A06
L00004993:
	movl      (%ecx), %eax
	andl      %edi, %eax
	movl      $-1, %edx
	cmpl      $2, %eax
	je        L000049EE
L000049A1:
	movl      -4(%ecx,%eax,4), %edx
	movl      %edx, %ecx
	shrl      $16, %ecx
	cmpl      $65535, %edx
	cmovbe    %edx, %ecx
	movl      $28, %edx
	movl      $12, %esi
	cmova     %esi, %edx
	cmpl      $256, %ecx
	jb        L000049CE
L000049C8:
	addl      $-8, %edx
	shrl      $8, %ecx
L000049CE:
	sall      $5, %eax
	cmpl      $16, %ecx
	jb        L000049DC
L000049D6:
	addl      $-4, %edx
	shrl      $4, %ecx
L000049DC:
	addl      $-65, %eax
	subl      %edx, %eax
	movl      40(%esp), %edx
	subl      _F2x_degree_lg.__bfffo_tabshi-L0000481C(%edx,%ecx,4), %eax
	movl      %eax, %edx
L000049EE:
	movl      %edx, 8(%esp)
	movl      32(%esp), %eax
	movl      %eax, 4(%esp)
	movl      $3, (%esp)
	call      _pari_warn
L00004A06:
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
L00004A42:
	movl      60(%esp), %eax
L00004A46:
	movl      (%eax), %ecx
	andl      %edi, %ecx
	cmpl      $2, %ecx
	jne       L00004900
L00004A53:
	movl      108(%esp), %edx
	movl      104(%esp), %esi
	testl     %esi, %esi
	je        L00004AC5
L00004A5F:
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
L00004A93:
	movl      4(%ebp), %ecx
	movl      %ecx, 4(%eax)
	movl      %eax, 4(%esp)
	movl      %edi, (%esp)
	call      _F2x_add
L00004AA5:
	movl      96(%esp), %ecx
	movl      %ecx, 4(%esp)
	movl      %eax, (%esp)
	movl      $0, 8(%esp)
	call      _F2x_divrem
L00004ABD:
	movl      %esi, %edx
	movl      104(%esp), %esi
	movl      %eax, (%esi)
L00004AC5:
	movl      68(%esp), %eax
	movl      %eax, (%edx)
	movl      44(%esp), %eax
	movl      48(%esp), %ecx
	cmpl      %ecx, (%eax)
	jae       L00004B02
L00004AD7:
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
L00004B02:
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
L00004B45:
	movl      4(%edi), %ecx
	movl      %ecx, 4(%eax)
	movl      %esi, 4(%esp)
	movl      %eax, (%esp)
	call      _F2x_rem
L00004B57:
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
L00004B74:
	movl      %esi, 4(%esp)
	movl      %eax, (%esp)
	call      _F2x_rem
L00004B80:
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
	call      L00004B9B
L00004B9B:
	popl      %esi
	movl      52(%esp), %eax
	movl      48(%esp), %ecx
	leal      28(%esp), %edx
	movl      %edx, 12(%esp)
	movl      %ecx, 4(%esp)
	movl      %eax, (%esp)
	movl      $0, 8(%esp)
	call      _F2x_extgcd
L00004BC0:
	movl      %eax, %ecx
	movl      $16777215, %edx
	andl      (%ecx), %edx
	xorl      %eax, %eax
	cmpl      $2, %edx
	movl      $0, %ebx
	je        L00004C1F
L00004BD5:
	movl      -4(%ecx,%edx,4), %edi
	movl      %edi, %ecx
	shrl      $16, %ecx
	cmpl      $65535, %edi
	cmovbe    %edi, %ecx
	movl      $12, %ebx
	movl      $28, %edi
	cmova     %ebx, %edi
	cmpl      $256, %ecx
	jb        L00004C02
L00004BFC:
	addl      $-8, %edi
	shrl      $8, %ecx
L00004C02:
	sall      $5, %edx
	cmpl      $16, %ecx
	jb        L00004C10
L00004C0A:
	addl      $-4, %edi
	shrl      $4, %ecx
L00004C10:
	addl      $-65, %edx
	subl      %edi, %edx
	cmpl      _F2x_degree_lg.__bfffo_tabshi-L00004B9B(%esi,%ecx,4), %edx
	sete      %bl
L00004C1F:
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
	call      L00004C3C
L00004C3C:
	popl      %ebx
	movl      68(%esp), %eax
	movl      64(%esp), %ecx
	movl      L_avma$non_lazy_ptr-L00004C3C(%ebx), %edi
	movl      (%edi), %ebp
	leal      40(%esp), %edx
	movl      %edx, 12(%esp)
	movl      %ecx, 4(%esp)
	movl      %eax, (%esp)
	movl      $0, 8(%esp)
	call      _F2x_extgcd
L00004C69:
	movl      $16777215, %ecx
	andl      (%eax), %ecx
	xorl      %esi, %esi
	cmpl      $2, %ecx
	movl      $0, %edx
	je        L00004CCD
L00004C7C:
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
	jb        L00004CAC
L00004CA6:
	addl      $-8, %edx
	shrl      $8, %eax
L00004CAC:
	movl      36(%esp), %ebp
	sall      $5, %ecx
	cmpl      $16, %eax
	jb        L00004CBE
L00004CB8:
	addl      $-4, %edx
	shrl      $4, %eax
L00004CBE:
	addl      $-65, %ecx
	subl      %edx, %ecx
	cmpl      _F2x_degree_lg.__bfffo_tabshi-L00004C3C(%ebx,%eax,4), %ecx
	sete      %dl
L00004CCD:
	testb     %dl, %dl
	cmovne    40(%esp), %esi
	testl     %esi, %esi
	jne       L00004CE4
L00004CD8:
	movl      $27, (%esp)
	call      _pari_err
L00004CE4:
	movl      L_bot$non_lazy_ptr-L00004C3C(%ebx), %eax
	cmpl      (%eax), %esi
	jb        L00004E27
L00004CF2:
	movl      L_top$non_lazy_ptr-L00004C3C(%ebx), %eax
	cmpl      (%eax), %esi
	jae       L00004E27
L00004D00:
	cmpl      %esi, %ebp
	jbe       L00004E27
L00004D08:
	movl      (%esi), %ecx
	movl      %ecx, %eax
	andl      $16777215, %eax
	sall      $2, %eax
	movl      %ebp, %edx
	subl      %eax, %edx
	movl      %ecx, %eax
	andl      $16777215, %ecx
	movl      %edx, (%edi)
	je        L00004E33
L00004D28:
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
	je        L00004E4D
L00004D60:
	movl      %ebp, 20(%esp)
	movl      %edi, 36(%esp)
	addl      $2, %eax
	cmpl      $-16777216, %edx
	movl      24(%esp), %ebp
	movl      $-2, %edx
	cmovne    %edx, %ebp
	movl      %eax, %edx
	andl      $-8, %edx
	je        L00004E37
L00004D88:
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
	ja        L00004DC3
L00004DAF:
	leal      -4(%esi,%ecx,4), %edi
	addl      %ecx, %ebp
	subl      %ebp, %edx
	movl      36(%esp), %ebp
	leal      (%ebp,%edx,4), %edx
	cmpl      %edx, %edi
	jbe       L00004E3D
L00004DC3:
	movl      %ecx, %ebp
	subl      16(%esp), %ebp
	movl      20(%esp), %eax
	leal      2(%eax,%ecx), %eax
	andl      $-8, %eax
	movdqa    LC00009440-L00004C3C(%ebx), %xmm0
	movl      %ecx, %ebx
	movl      36(%esp), %edi
	.align 4, 0x90
L00004DF0:
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
	jne       L00004DF0
L00004E1F:
	movl      %ebp, %ecx
	movl      16(%esp), %eax
	jmp       L00004E3D
L00004E27:
	movl      %ebp, (%edi)
L00004E29:
	movl      %esi, %eax
	addl      $44, %esp
	popl      %esi
	popl      %edi
	popl      %ebx
	popl      %ebp
	ret       
L00004E33:
	movl      %edx, %esi
	jmp       L00004E29
L00004E37:
	movl      %eax, 24(%esp)
	xorl      %eax, %eax
L00004E3D:
	cmpl      %eax, 24(%esp)
	movl      36(%esp), %edi
	jne       L00004E4D
L00004E47:
	movl      32(%esp), %esi
	jmp       L00004E29
L00004E4D:
	movl      %ecx, %ebp
	notl      %ebp
	cmpl      $-3, %ebp
	movl      $-2, %edx
	cmovg     %ebp, %edx
	leal      2(%ecx,%edx), %eax
	leal      1(%ecx,%edx), %ebx
	testb     $3, %al
	je        L00004E9D
L00004E68:
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
L00004E90:
	movl      -4(%esi,%ecx,4), %edx
	movl      %edx, (%eax,%ecx,4)
	leal      -1(%ecx), %ecx
	incl      %ebp
	jne       L00004E90
L00004E9D:
	cmpl      $3, %ebx
	jae       L00004EA8
L00004EA2:
	movl      32(%esp), %esi
	jmp       L00004E29
L00004EA8:
	incl      %ecx
	movl      28(%esp), %edx
	andl      $16777215, %edx
	movl      $-4, %eax
	subl      %edx, %eax
	leal      (%edi,%eax,4), %eax
	movl      32(%esp), %edi
	.align 4, 0x90
L00004ED0:
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
	jg        L00004ED0
L00004EF7:
	movl      %edi, %esi
	jmp       L00004E29
# ----------------------
	.align 4, 0x90
	.globl	_F2xq_div
_F2xq_div:
	pushl     %ebp
	pushl     %ebx
	pushl     %edi
	pushl     %esi
	subl      $44, %esp
	call      L00004F0C
L00004F0C:
	popl      %esi
	movl      64(%esp), %ebp
	movl      68(%esp), %eax
	movl      72(%esp), %edx
	movl      L_avma$non_lazy_ptr-L00004F0C(%esi), %ecx
	movl      %ecx, 36(%esp)
	movl      (%ecx), %ecx
	movl      %ecx, 40(%esp)
	movl      %edx, 4(%esp)
	movl      %eax, (%esp)
	call      _F2xq_inv
L00004F35:
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
L00004F59:
	movl      4(%ebp), %ecx
	movl      %ecx, 4(%eax)
	movl      72(%esp), %ecx
	movl      %ecx, 4(%esp)
	movl      %eax, (%esp)
	call      _F2x_rem
L00004F6F:
	movl      L_bot$non_lazy_ptr-L00004F0C(%esi), %ecx
	cmpl      (%ecx), %eax
	jb        L00004FEC
L00004F79:
	movl      L_top$non_lazy_ptr-L00004F0C(%esi), %ecx
	cmpl      (%ecx), %eax
	jae       L00004FEC
L00004F83:
	cmpl      %eax, 40(%esp)
	jbe       L00004FEC
L00004F89:
	movl      (%eax), %ebx
	movl      %ebx, %ecx
	andl      $16777215, %ecx
	sall      $2, %ecx
	movl      40(%esp), %edi
	subl      %ecx, %edi
	movl      %ebx, %edx
	andl      $16777215, %edx
	movl      36(%esp), %ecx
	movl      %edi, (%ecx)
	je        L00005197
L00004FB0:
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
	jne       L00004FFB
L00004FDF:
	movl      %ebx, 32(%esp)
	movl      %edi, 36(%esp)
	jmp       L000050E4
L00004FEC:
	movl      40(%esp), %ecx
	movl      36(%esp), %edx
	movl      %ecx, (%edx)
	jmp       L00005199
L00004FFB:
	movl      %ebp, 20(%esp)
	addl      $2, %ecx
	cmpl      $-16777216, %esi
	movl      36(%esp), %ebp
	movl      $-2, %esi
	cmovne    %esi, %ebp
	movl      %ecx, %esi
	andl      $-8, %esi
	je        L000050C7
L0000501F:
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
	ja        L00005061
L0000504E:
	leal      -4(%eax,%edx,4), %edi
	addl      %edx, %ebp
	subl      %ebp, %esi
	movl      40(%esp), %ebx
	leal      (%ebx,%esi,4), %esi
	cmpl      %esi, %edi
	jbe       L000050D5
L00005061:
	movl      %edx, %esi
	subl      16(%esp), %esi
	movl      20(%esp), %ecx
	leal      2(%ecx,%edx), %ecx
	andl      $-8, %ecx
	movl      28(%esp), %edi
	movdqa    LC00009450-L00004F0C(%edi), %xmm0
	movl      %edx, %ebx
	movl      40(%esp), %ebp
	.align 4, 0x90
L00005090:
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
	jne       L00005090
L000050BF:
	movl      %esi, %edx
	movl      16(%esp), %ecx
	jmp       L000050D5
L000050C7:
	movl      %ecx, 24(%esp)
	movl      %ebx, 32(%esp)
	movl      %edi, 36(%esp)
	xorl      %ecx, %ecx
L000050D5:
	cmpl      %ecx, 24(%esp)
	jne       L000050E4
L000050DB:
	movl      36(%esp), %eax
	jmp       L00005199
L000050E4:
	movl      %edx, %esi
	notl      %esi
	cmpl      $-3, %esi
	movl      $-2, %edi
	cmovg     %esi, %edi
	leal      2(%edx,%edi), %ecx
	leal      1(%edx,%edi), %ebx
	testb     $3, %cl
	je        L0000513F
L00005100:
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
L00005130:
	movl      -4(%eax,%edx,4), %edi
	movl      %edi, (%ecx,%edx,4)
	leal      -1(%edx), %edx
	incl      %esi
	jne       L00005130
L0000513D:
	jmp       L00005143
L0000513F:
	movl      40(%esp), %ebp
L00005143:
	cmpl      $3, %ebx
	jae       L0000514E
L00005148:
	movl      36(%esp), %eax
	jmp       L00005199
L0000514E:
	incl      %edx
	movl      32(%esp), %esi
	andl      $16777215, %esi
	movl      $-4, %ecx
	subl      %esi, %ecx
	leal      (%ebp,%ecx,4), %ecx
	movl      36(%esp), %edi
	.align 4, 0x90
L00005170:
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
	jg        L00005170
L00005197:
	movl      %edi, %eax
L00005199:
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
	call      L000051BC
L000051BC:
	popl      %esi
	movl      84(%esp), %ebx
	movl      80(%esp), %edi
	movl      L_avma$non_lazy_ptr-L000051BC(%esi), %ebp
	movl      (%ebp), %edx
	movl      4(%ebx), %eax
	cmpl      $1073741823, %eax
	jbe       L000052ED
L000051DC:
	movl      %eax, %ecx
	andl      $16777215, %ecx
	cmpl      $3, %ecx
	jne       L0000532C
L000051ED:
	cmpl      $1, 8(%ebx)
	jne       L0000533C
L000051F7:
	testl     %eax, %eax
	js        L00005434
L000051FF:
	movl      %ebp, 56(%esp)
	movl      (%edi), %ebx
	movl      %ebx, 44(%esp)
	andl      $16777215, %ebx
	leal      0(,%ebx,4), %eax
	movl      %edx, %ebp
	subl      %eax, %ebp
	movl      L_bot$non_lazy_ptr-L000051BC(%esi), %eax
	movl      %edx, %ecx
	movl      %edx, 52(%esp)
	subl      (%eax), %ecx
	shrl      $2, %ecx
	cmpl      %ebx, %ecx
	jae       L0000523B
L0000522F:
	movl      $14, (%esp)
	call      _pari_err
L0000523B:
	movl      56(%esp), %eax
	movl      %ebp, (%eax)
	movl      $-16777217, %eax
	andl      (%edi), %eax
	movl      %eax, (%ebp)
	cmpl      $2, %ebx
	jb        L0000542A
L00005254:
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
	je        L000056DC
L00005281:
	incl      %ecx
	movl      %ecx, 56(%esp)
	cmpl      $-3, %ebp
	movl      %ecx, %eax
	movl      $-2, %ecx
	cmovg     %ebp, %ecx
	andl      $-8, %eax
	movl      %eax, 40(%esp)
	je        L00005707
L000052A0:
	movl      %ecx, %eax
	notl      %eax
	leal      (%edi,%eax,4), %eax
	movl      %eax, 36(%esp)
	movl      52(%esp), %eax
	leal      -4(%eax), %eax
	cmpl      36(%esp), %eax
	ja        L00005718
L000052BC:
	leal      -4(%edi,%edx,4), %eax
	movl      %eax, 36(%esp)
	addl      %edx, %ecx
	notl      %ecx
	movl      52(%esp), %eax
	leal      (%eax,%ecx,4), %ecx
	cmpl      %ecx, 36(%esp)
	ja        L00005718
L000052D9:
	movl      48(%esp), %ebp
	movl      $-2, %eax
	movl      56(%esp), %ecx
	xorl      %edx, %edx
	jmp       L00005792
L000052ED:
	movl      %ebp, %ebx
	movl      4(%edi), %edi
	leal      -12(%edx), %ebp
	movl      L_bot$non_lazy_ptr-L000051BC(%esi), %eax
	movl      %edx, %ecx
	subl      (%eax), %ecx
	cmpl      $11, %ecx
	ja        L00005314
L00005304:
	movl      $14, (%esp)
	movl      %edx, %esi
	call      _pari_err
L00005312:
	movl      %esi, %edx
L00005314:
	movl      %ebp, (%ebx)
	movl      $738197507, -12(%edx)
	movl      %edi, -8(%edx)
	movl      $1, -4(%edx)
	jmp       L0000542A
L0000532C:
	movl      %ebp, 56(%esp)
	testl     %eax, %eax
	movl      88(%esp), %ecx
	js        L0000534C
L00005338:
	movl      %edx, %ebp
	jmp       L00005360
L0000533C:
	movl      %ebp, 56(%esp)
	testl     %eax, %eax
	movl      88(%esp), %ecx
	js        L0000534C
L00005348:
	movl      %edx, %ebp
	jmp       L00005360
L0000534C:
	movl      %edx, %ebp
	movl      %ecx, 4(%esp)
	movl      %edi, (%esp)
	movl      %ecx, %edi
	call      _F2xq_inv
L0000535C:
	movl      %edi, %ecx
	movl      %eax, %edi
L00005360:
	leal      __F2xq_mul-L000051BC(%esi), %eax
	movl      %eax, 16(%esp)
	leal      __F2xq_sqr-L000051BC(%esi), %eax
	movl      %eax, 12(%esp)
	movl      %ecx, 8(%esp)
	movl      %ebx, 4(%esp)
	movl      %edi, (%esp)
	call      _gen_pow
L00005384:
	movl      L_bot$non_lazy_ptr-L000051BC(%esi), %ecx
	cmpl      (%ecx), %eax
	jb        L00005422
L00005392:
	cmpl      %eax, %ebp
	jbe       L00005422
L0000539A:
	movl      L_top$non_lazy_ptr-L000051BC(%esi), %ecx
	cmpl      (%ecx), %eax
	jae       L00005422
L000053A4:
	movl      %ebp, 52(%esp)
	movl      (%eax), %edi
	movl      %edi, %ecx
	shrl      $25, %ecx
	leal      -21(%ecx), %edx
	cmpl      $2, %edx
	jb        L000053C0
L000053B7:
	cmpl      $2, %ecx
	jne       L00005446
L000053C0:
	movl      %edi, %ecx
	andl      $16777215, %ecx
	sall      $2, %ecx
	movl      52(%esp), %ebp
	subl      %ecx, %ebp
	movl      %edi, %edx
	andl      $16777215, %edx
	movl      56(%esp), %ecx
	movl      %ebp, (%ecx)
	je        L0000542A
L000053E1:
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
	jne       L00005570
L00005414:
	movl      48(%esp), %ebp
	movl      $-2, %ecx
	jmp       L0000563E
L00005422:
	movl      56(%esp), %ecx
	movl      %ebp, (%ecx)
	movl      %eax, %ebp
L0000542A:
	movl      %ebp, %eax
L0000542C:
	addl      $60, %esp
	popl      %esi
	popl      %edi
	popl      %ebx
	popl      %ebp
	ret       
L00005434:
	movl      88(%esp), %eax
	movl      %eax, 4(%esp)
	movl      %edi, (%esp)
	call      _F2xq_inv
L00005444:
	jmp       L0000542C
L00005446:
	cmpl      $1, %ecx
	jne       L000056E5
L0000544F:
	movl      4(%eax), %edi
	movl      %edi, 40(%esp)
	andl      $16777215, %edi
	movl      %edi, 44(%esp)
	leal      0(,%edi,4), %edx
	movl      52(%esp), %ebp
	subl      %edx, %ebp
	cmpl      $2, %edi
	jb        L000058DC
L00005476:
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
	je        L0000584E
L0000549E:
	incl      %ebx
	cmpl      $-3, %ecx
	movl      $-2, %edi
	cmovg     %ecx, %edi
	movl      %edi, 48(%esp)
	movl      %ecx, 32(%esp)
	xorl      %ecx, %ecx
	movl      %ebx, %edi
	andl      $-8, %edi
	je        L0000583C
L000054BF:
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
	ja        L00005504
L000054E3:
	leal      -4(%eax,%edx,4), %edi
	movl      %edi, 24(%esp)
	addl      %edx, %ebx
	notl      %ebx
	movl      52(%esp), %edi
	leal      (%edi,%ebx,4), %edi
	cmpl      %edi, 24(%esp)
	movl      44(%esp), %edi
	jbe       L00005844
L00005504:
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
	movdqa    LC00009460-L000051BC(%esi), %xmm0
	movl      52(%esp), %ebp
L00005534:
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
	jne       L00005534
L00005563:
	movl      28(%esp), %ecx
	movl      48(%esp), %ebp
	jmp       L00005844
L00005570:
	addl      $2, %ebx
	cmpl      $-16777216, %ecx
	movl      $-2, %ecx
	cmovne    %ecx, %edi
	movl      $0, 44(%esp)
	movl      %ebx, %ecx
	andl      $-8, %ecx
	je        L0000562B
L00005594:
	movl      %ecx, 36(%esp)
	movl      $-2, %ecx
	subl      %edi, %ecx
	leal      (%eax,%ecx,4), %ecx
	movl      %ecx, 40(%esp)
	movl      52(%esp), %ecx
	leal      -4(%ecx), %ecx
	cmpl      40(%esp), %ecx
	ja        L000055D1
L000055B3:
	leal      -4(%eax,%edx,4), %ecx
	movl      %ecx, 40(%esp)
	addl      %edx, %edi
	movl      $-2, %ecx
	subl      %edi, %ecx
	movl      52(%esp), %edi
	leal      (%edi,%ecx,4), %edi
	cmpl      %edi, 40(%esp)
	jbe       L0000562B
L000055D1:
	movl      %edx, %ecx
	subl      36(%esp), %ecx
	movl      %ecx, 44(%esp)
	leal      2(%ebp,%edx), %ebp
	andl      $-8, %ebp
	movdqa    LC00009460-L000051BC(%esi), %xmm0
	movl      %edx, %esi
	movl      52(%esp), %edi
L000055F0:
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
	jne       L000055F0
L0000561F:
	movl      44(%esp), %edx
	movl      36(%esp), %ecx
	movl      %ecx, 44(%esp)
L0000562B:
	cmpl      44(%esp), %ebx
	movl      48(%esp), %ebp
	movl      $-2, %ecx
	je        L0000542A
L0000563E:
	movl      %edx, %ebx
	notl      %ebx
	cmpl      $-3, %ebx
	cmovg     %ebx, %ecx
	movl      %ecx, %esi
	leal      2(%edx,%esi), %ecx
	leal      1(%edx,%esi), %esi
	testb     $3, %cl
	je        L0000568D
L00005657:
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
L00005680:
	movl      -4(%eax,%edx,4), %ecx
	movl      %ecx, (%edi,%edx,4)
	leal      -1(%edx), %edx
	incl      %ebx
	jne       L00005680
L0000568D:
	cmpl      $3, %esi
	jb        L0000542A
L00005696:
	incl      %edx
	movl      56(%esp), %esi
	andl      $16777215, %esi
	movl      $-4, %ecx
	subl      %esi, %ecx
	movl      52(%esp), %esi
	leal      (%esi,%ecx,4), %ecx
	.align 4, 0x90
L000056B0:
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
	jg        L000056B0
L000056D7:
	jmp       L0000542A
L000056DC:
	movl      48(%esp), %ebp
	jmp       L0000579A
L000056E5:
	andl      $16777215, %edi
	leal      (%eax,%edi,4), %ecx
	movl      %eax, 8(%esp)
	movl      52(%esp), %eax
	movl      %eax, (%esp)
	movl      %ecx, 4(%esp)
	call      _gerepile
L00005702:
	jmp       L0000542C
L00005707:
	movl      48(%esp), %ebp
	movl      56(%esp), %ecx
	movl      $-2, %eax
	xorl      %edx, %edx
	jmp       L00005792
L00005718:
	movl      %ebx, %eax
	movl      40(%esp), %ecx
	subl      %ecx, %eax
	movl      %eax, 36(%esp)
	cmpl      $-3, %ebp
	movl      $-2, %eax
	cmovg     %ebp, %eax
	leal      1(%eax,%edx), %ebp
	andl      $-8, %ebp
	movdqa    LC00009460-L000051BC(%esi), %xmm0
	movl      52(%esp), %esi
	.align 4, 0x90
L00005750:
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
	jne       L00005750
L0000577F:
	movl      36(%esp), %ebx
	movl      %ecx, %edx
	movl      48(%esp), %ebp
	movl      $-2, %eax
	movl      56(%esp), %ecx
L00005792:
	cmpl      %edx, %ecx
	je        L0000542A
L0000579A:
	movl      %ebx, %edx
	negl      %edx
	cmpl      $-3, %edx
	cmovg     %edx, %eax
	leal      (%ebx,%eax), %ecx
	leal      1(%ebx,%eax), %eax
	testb     $3, %al
	je        L000057ED
L000057AF:
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
L000057E0:
	movl      -4(%edi,%ebx,4), %esi
	movl      %esi, (%eax,%ebx,4)
	leal      -1(%ebx), %ebx
	incl      %edx
	jne       L000057E0
L000057ED:
	cmpl      $3, %ecx
	jb        L0000542A
L000057F6:
	movl      44(%esp), %ecx
	notl      %ecx
	orl       $1056964608, %ecx
	movl      52(%esp), %eax
	leal      (%eax,%ecx,4), %eax
	.align 4, 0x90
L00005810:
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
	jg        L00005810
L00005837:
	jmp       L0000542A
L0000583C:
	movl      %ebx, 36(%esp)
	movl      44(%esp), %edi
L00005844:
	cmpl      %ecx, 36(%esp)
	je        L000058DC
L0000584E:
	movl      %edi, %ebx
	negl      %ebx
	cmpl      $-3, %ebx
	movl      $-2, %edx
	cmovg     %ebx, %edx
	leal      (%edi,%edx), %ecx
	leal      1(%edi,%edx), %edx
	testb     $3, %dl
	je        L0000589D
L00005869:
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
L00005890:
	movl      -4(%eax,%edi,4), %edx
	movl      %edx, (%esi,%edi,4)
	leal      -1(%edi), %edi
	incl      %ebx
	jne       L00005890
L0000589D:
	cmpl      $3, %ecx
	movl      40(%esp), %esi
	jb        L000058DC
L000058A6:
	notl      %esi
	orl       $1056964608, %esi
	movl      52(%esp), %edx
	leal      (%edx,%esi,4), %edx
L000058B5:
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
	jg        L000058B5
L000058DC:
	movl      44(%esp), %eax
	orl       $33554432, %eax
	movl      %eax, (%ebp)
	movl      56(%esp), %eax
	movl      %ebp, (%eax)
	jmp       L0000542A
L000058F3:
	.align 4, 0x90
__F2xq_sqr:
	pushl     %esi
	subl      $8, %esp
	movl      16(%esp), %esi
	movl      20(%esp), %eax
	movl      %eax, (%esp)
	call      _F2x_sqr
L00005914:
	movl      %esi, 4(%esp)
	movl      %eax, (%esp)
	call      _F2x_rem
L00005920:
	addl      $8, %esp
	popl      %esi
	ret       
L00005925:
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
L00005965:
	movl      4(%edi), %ecx
	movl      %ecx, 4(%eax)
	movl      %esi, 4(%esp)
	movl      %eax, (%esp)
	call      _F2x_rem
L00005977:
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
	call      L0000598C
L0000598C:
	popl      %eax
	movl      %eax, 32(%esp)
	movl      84(%esp), %edx
	movl      %edx, 52(%esp)
	movl      L_avma$non_lazy_ptr-L0000598C(%eax), %ebx
	movl      (%ebx), %ecx
	movl      $-2, %esi
	subl      %edx, %esi
	movl      L_bot$non_lazy_ptr-L0000598C(%eax), %edi
	movl      %edi, 44(%esp)
	movl      %ecx, %eax
	subl      (%edi), %eax
	shrl      $2, %eax
	leal      2(%edx), %ebp
	movl      %esi, %edx
	cmpl      %ebp, %eax
	leal      (%ecx,%edx,4), %edi
	jae       L000059E1
L000059C5:
	movl      $14, (%esp)
	movl      %ecx, %esi
	movl      %ebp, 48(%esp)
	movl      %edx, %ebp
	call      _pari_err
L000059D9:
	movl      %ebp, %edx
	movl      48(%esp), %ebp
	movl      %esi, %ecx
L000059E1:
	movl      88(%esp), %esi
	movl      %edi, (%ebx)
	cmpl      $16777216, %ebp
	jb        L00005A1D
L000059EF:
	movl      32(%esp), %eax
	leal      LC00009591-L0000598C(%eax), %eax
	movl      %eax, 4(%esp)
	movl      $15, (%esp)
	movl      %ecx, %esi
	movl      %ebp, 48(%esp)
	movl      %edx, %ebp
	call      _pari_err
L00005A11:
	movl      %ebp, %edx
	movl      48(%esp), %ebp
	movl      %esi, %ecx
	movl      88(%esp), %esi
L00005A1D:
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
	ja        L00005A60
L00005A44:
	movl      $14, (%esp)
	movl      %ecx, 40(%esp)
	movl      %edx, 56(%esp)
	call      _pari_err
L00005A58:
	movl      56(%esp), %edx
	movl      40(%esp), %ecx
L00005A60:
	movl      %ebp, (%ebx)
	movl      $738197507, -12(%edi)
	movl      %esi, -8(%edi)
	movl      $1, -4(%edi)
	movl      %ebp, 4(%ecx,%edx,4)
	cmpl      $0, 84(%esp)
	je        L00005EE6
L00005A82:
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
	jae       L00005ACB
L00005AB3:
	movl      $14, (%esp)
	movl      %edx, 56(%esp)
	movl      %ecx, %ebp
	call      _pari_err
L00005AC5:
	movl      %ebp, %ecx
	movl      56(%esp), %edx
L00005ACB:
	movl      %ecx, 28(%esp)
	movl      %ecx, (%ebx)
	movl      $-16777217, %eax
	movl      80(%esp), %ebx
	andl      (%ebx), %eax
	movl      %eax, (%ecx)
	cmpl      $2, %edi
	jb        L00005C97
L00005AE7:
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
	je        L00005B68
L00005B10:
	incl      %ecx
	cmpl      $-3, %ebp
	movl      $-2, %eax
	cmovg     %ebp, %eax
	movl      %ecx, %ebx
	andl      $-8, %ebx
	je        L00005B71
L00005B23:
	movl      %ebx, 16(%esp)
	movl      %ecx, 44(%esp)
	movl      %eax, %ebx
	notl      %ebx
	movl      80(%esp), %ecx
	leal      (%ecx,%ebx,4), %ebx
	movl      %ebx, 20(%esp)
	leal      -4(%esi), %ebx
	cmpl      20(%esp), %ebx
	ja        L00005B82
L00005B43:
	leal      -4(%ecx,%edx,4), %ebx
	addl      %edx, %eax
	notl      %eax
	leal      (%esi,%eax,4), %eax
	cmpl      %eax, %ebx
	ja        L00005B82
L00005B52:
	movl      56(%esp), %edx
	movl      %ecx, %ebx
	movl      $-2, %eax
	movl      44(%esp), %ecx
	xorl      %ebp, %ebp
	jmp       L00005BF0
L00005B68:
	movl      56(%esp), %edx
	jmp       L00005BF8
L00005B71:
	movl      56(%esp), %edx
	movl      80(%esp), %ebx
	movl      $-2, %eax
	xorl      %ebp, %ebp
	jmp       L00005BF0
L00005B82:
	movl      %edi, %eax
	subl      16(%esp), %eax
	movl      %eax, 20(%esp)
	cmpl      $-3, %ebp
	movl      $-2, %eax
	cmovg     %ebp, %eax
	leal      1(%eax,%edx), %ebp
	andl      $-8, %ebp
	movl      32(%esp), %eax
	movdqa    LC00009470-L0000598C(%eax), %xmm0
	movl      %ecx, %ebx
	movl      44(%esp), %ecx
L00005BB0:
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
	jne       L00005BB0
L00005BDF:
	movl      20(%esp), %edi
	movl      16(%esp), %ebp
	movl      56(%esp), %edx
	movl      $-2, %eax
L00005BF0:
	cmpl      %ebp, %ecx
	je        L00005C97
L00005BF8:
	movl      %edx, 56(%esp)
	movl      %edi, %edx
	negl      %edx
	cmpl      $-3, %edx
	cmovg     %edx, %eax
	leal      (%edi,%eax), %ecx
	leal      1(%edi,%eax), %eax
	testb     $3, %al
	je        L00005C51
L00005C11:
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
L00005C40:
	movl      %ebx, %ebp
	movl      -4(%ebp,%edi,4), %ebx
	movl      %ebx, (%eax,%edi,4)
	movl      %ebp, %ebx
	leal      -1(%edi), %edi
	incl      %edx
	jne       L00005C40
L00005C51:
	cmpl      $3, %ecx
	movl      56(%esp), %edx
	jb        L00005C97
L00005C5A:
	movl      24(%esp), %eax
	notl      %eax
	orl       $1056964608, %eax
	leal      (%esi,%eax,4), %eax
	.align 4, 0x90
L00005C70:
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
	jg        L00005C70
L00005C97:
	movl      40(%esp), %eax
	movl      28(%esp), %ecx
	movl      %ecx, 8(%eax,%edx,4)
	cmpl      $1, 84(%esp)
	je        L00005EE6
L00005CAE:
	movl      %ebx, (%esp)
	movl      %eax, %esi
	movl      %edx, %edi
	movl      %edi, 56(%esp)
	call      _F2x_sqr
L00005CBE:
	movl      88(%esp), %ecx
	movl      %ecx, 4(%esp)
	movl      %eax, (%esp)
	call      _F2x_rem
L00005CCE:
	movl      %eax, 12(%esi,%edi,4)
	movl      %esi, %ebp
	movl      (%ebx), %eax
	movl      %eax, %edx
	andl      $16777215, %edx
	movl      $-2, %ecx
	cmpl      $2, %edx
	je        L00005D3A
L00005CE8:
	movl      -4(%ebx,%edx,4), %esi
	movl      %esi, %ecx
	shrl      $16, %ecx
	cmpl      $65535, %esi
	cmovbe    %esi, %ecx
	movl      $12, %edi
	movl      $28, %esi
	cmova     %edi, %esi
	cmpl      $256, %ecx
	jb        L00005D15
L00005D0F:
	addl      $-8, %esi
	shrl      $8, %ecx
L00005D15:
	sall      $5, %edx
	cmpl      $16, %ecx
	jb        L00005D23
L00005D1D:
	addl      $-4, %esi
	shrl      $4, %ecx
L00005D23:
	addl      $2147483583, %edx
	subl      %esi, %edx
	movl      32(%esp), %esi
	subl      _F2x_degree_lg.__bfffo_tabshi-L0000598C(%esi,%ecx,4), %edx
	addl      %edx, %edx
	movl      %edx, %ecx
L00005D3A:
	movl      $16777215, %edx
	movl      88(%esp), %esi
	andl      (%esi), %edx
	movl      $-1, %esi
	cmpl      $2, %edx
	je        L00005DA0
L00005D4F:
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
	jb        L00005D80
L00005D7A:
	addl      $-8, %edi
	shrl      $8, %esi
L00005D80:
	sall      $5, %edx
	cmpl      $16, %esi
	jb        L00005D8E
L00005D88:
	addl      $-4, %edi
	shrl      $4, %esi
L00005D8E:
	addl      $-65, %edx
	subl      %edi, %edx
	movl      32(%esp), %edi
	subl      _F2x_degree_lg.__bfffo_tabshi-L0000598C(%edi,%esi,4), %edx
	movl      %edx, %esi
L00005DA0:
	cmpl      %esi, %ecx
	jge       L00005E21
L00005DA4:
	cmpl      $5, 48(%esp)
	movl      %ebp, %ebx
	jl        L00005EE6
L00005DB1:
	movl      80(%esp), %edx
	leal      8(%edx), %edx
	movl      %edx, 56(%esp)
	movl      $1, %esi
	subl      84(%esp), %esi
	movl      $16777215, %edi
	jmp       L00005DD7
L00005DCC:
	.align 4, 0x90
L00005DD0:
	movl      80(%esp), %eax
	movl      (%eax), %eax
	incl      %esi
L00005DD7:
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
L00005DFD:
	movl      4(%ebp), %ecx
	movl      %ecx, 4(%eax)
	movl      88(%esp), %ecx
	movl      %ecx, 4(%esp)
	movl      %eax, (%esp)
	call      _F2x_rem
L00005E13:
	movl      %eax, 4(%ebx,%esi,4)
	cmpl      $-2, %esi
	jne       L00005DD0
L00005E1C:
	jmp       L00005EE6
L00005E21:
	cmpl      $5, 48(%esp)
	movl      %ebp, %esi
	movl      56(%esp), %edi
	jl        L00005EE6
L00005E32:
	leal      -1(%edi), %eax
	movl      %eax, 48(%esp)
	movl      80(%esp), %eax
	leal      8(%eax), %eax
	movl      %eax, 44(%esp)
	incl      52(%esp)
	movl      $4, %ebx
	.align 4, 0x90
L00005E50:
	testb     $1, %bl
	jne       L00005EB0
L00005E55:
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
L00005E8A:
	movl      4(%ebp), %ecx
	movl      %ecx, 4(%eax)
	movl      88(%esp), %ecx
	movl      %ecx, 4(%esp)
	movl      %eax, (%esp)
	call      _F2x_rem
L00005EA0:
	movl      56(%esp), %edi
	leal      1(%ebx), %ebp
	jmp       L00005ED4
L00005EA9:
	.align 4, 0x90
L00005EB0:
	leal      1(%ebx), %ebp
	movl      %ebp, %eax
	shrl      $1, %eax
	addl      %edi, %eax
	movl      (%esi,%eax,4), %eax
	movl      %eax, (%esp)
	call      _F2x_sqr
L00005EC4:
	movl      88(%esp), %ecx
	movl      %ecx, 4(%esp)
	movl      %eax, (%esp)
	call      _F2x_rem
L00005ED4:
	leal      (%ebx,%edi), %ecx
	movl      %eax, (%esi,%ecx,4)
	cmpl      52(%esp), %ebx
	movl      %ebp, %ebx
	jne       L00005E50
L00005EE6:
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
L00005F25:
	movl      %esi, 4(%esp)
	movl      %eax, (%esp)
	call      _F2xV_to_F2m
L00005F31:
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
	call      L00005F4C
L00005F4C:
	popl      %edi
	movl      112(%esp), %eax
	movl      $16777215, %esi
	andl      (%eax), %esi
	movl      L_avma$non_lazy_ptr-L00005F4C(%edi), %ebx
	movl      (%ebx), %ecx
	movl      %ecx, 72(%esp)
	leal      0(,%esi,4), %eax
	movl      %ecx, %ebp
	subl      %eax, %ebp
	movl      L_bot$non_lazy_ptr-L00005F4C(%edi), %edx
	movl      %edx, 68(%esp)
	movl      %ecx, %eax
	subl      (%edx), %eax
	shrl      $2, %eax
	cmpl      %esi, %eax
	jae       L00005F90
L00005F84:
	movl      $14, (%esp)
	call      _pari_err
L00005F90:
	movl      %ebx, 48(%esp)
	movl      %ebp, (%ebx)
	movl      %esi, 76(%esp)
	movl      %esi, %eax
	orl       $637534208, %eax
	movl      %eax, (%ebp)
	movl      %ebp, 32(%esp)
	cmpl      $2, %esi
	movl      %ebx, %esi
	jb        L00006544
L00005FB3:
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
	jbe       L000062B9
L00006006:
	subl      %ecx, %eax
	movl      %eax, 12(%esp)
	movl      $3, %eax
	subl      %ecx, %eax
	movl      %eax, 24(%esp)
	movl      %ecx, 88(%esp)
	movl      $1, %ebx
	leal      LC00009591-L00005F4C(%edi), %eax
	movl      %eax, 44(%esp)
	.align 4, 0x90
L00006030:
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
	jae       L00006071
L00006061:
	movl      $14, (%esp)
	movl      %eax, %ebp
	call      _pari_err
L0000606F:
	movl      %ebp, %eax
L00006071:
	movl      %eax, 80(%esp)
	movl      %eax, (%esi)
	movl      %eax, %ebp
	movl      44(%esp), %eax
	movl      %eax, 4(%esp)
	movl      $15, (%esp)
	call      _pari_err
L0000608D:
	movl      60(%esp), %eax
	movl      %eax, (%ebp)
	movl      116(%esp), %eax
	movl      56(%esp), %ecx
	movl      84(%esp), %edx
	movl      %eax, (%edx,%ecx,4)
	movl      $2, %eax
	cmpl      $3, %edi
	jb        L00006272
L000060B1:
	movl      $3, %eax
	cmova     %edi, %eax
	movl      $2, %edx
	cmpl      $2, %eax
	je        L000061E7
L000060C7:
	leal      -2(%eax), %ecx
	movl      %eax, 40(%esp)
	andl      $-4, %ecx
	orl       $2, %ecx
	cmpl      $3, %edi
	movl      $3, %eax
	cmova     %edi, %eax
	cmpl      $2, %ecx
	movl      $2, %edx
	je        L000061DD
L000060ED:
	movl      %ecx, 20(%esp)
	leal      -4(%ebx,%eax,4), %ebp
	movl      36(%esp), %ecx
	movl      84(%esp), %esi
	leal      (%esi,%ecx,4), %ecx
	cmpl      %ebp, %ecx
	ja        L0000611A
L00006104:
	leal      8(%ebx), %ebp
	addl      28(%esp), %eax
	movl      84(%esp), %esi
	leal      (%esi,%eax,4), %eax
	cmpl      %eax, %ebp
	jbe       L000061DD
L0000611A:
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
	je        L00006178
L0000613D:
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
L00006160:
	movl      %edx, %esi
	movups    8(%ebx,%esi,4), %xmm0
	movups    %xmm0, (%ecx,%esi,4)
	leal      4(%esi), %edx
	incl      %eax
	jne       L00006160
L00006171:
	addl      $6, %esi
	movl      16(%esp), %edx
L00006178:
	cmpl      $3, %edx
	jb        L000061D9
L0000617D:
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
L000061B0:
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
	jne       L000061B0
L000061D9:
	movl      20(%esp), %edx
L000061DD:
	cmpl      %edx, 40(%esp)
	movl      48(%esp), %esi
	je        L00006265
L000061E7:
	leal      1(%edx), %ecx
	cmpl      %edi, %ecx
	movl      %edi, %ebp
	cmovge    %ecx, %ebp
	movl      %ebp, %eax
	subl      %edx, %eax
	decl      %ebp
	subl      %edx, %ebp
	testb     $3, %al
	je        L0000621C
L000061FC:
	cmpl      %edi, %ecx
	cmovl     %edi, %ecx
	subl      %edx, %ecx
	andl      $3, %ecx
	negl      %ecx
	movl      80(%esp), %eax
	.align 4, 0x90
L00006210:
	movl      (%ebx,%edx,4), %esi
	movl      %esi, (%eax,%edx,4)
	incl      %edx
	incl      %ecx
	jne       L00006210
L0000621A:
	jmp       L00006220
L0000621C:
	movl      80(%esp), %eax
L00006220:
	movl      %eax, 80(%esp)
	cmpl      $3, %ebp
	movl      48(%esp), %esi
	jb        L00006265
L0000622D:
	movl      24(%esp), %eax
	movl      84(%esp), %ecx
	leal      (%ecx,%eax,4), %eax
	.align 4, 0x90
L00006240:
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
	jl        L00006240
L00006265:
	cmpl      $3, %edi
	movl      $3, %eax
	cmovbe    %eax, %edi
	movl      %edi, %eax
L00006272:
	movl      %eax, %ecx
	movl      88(%esp), %edx
	subl      %edx, %ecx
	jge       L00006294
L0000627C:
	movl      84(%esp), %edi
	leal      (%edi,%ecx,4), %ecx
	subl      %eax, %edx
	sall      $2, %edx
	movl      %edx, 4(%esp)
	movl      %ecx, (%esp)
	call      ___bzero
L00006294:
	movl      52(%esp), %ebx
	movl      %ebx, %eax
	movl      76(%esp), %ecx
	subl      %ecx, %eax
	movl      72(%esp), %edx
	movl      80(%esp), %edi
	movl      %edi, (%edx,%eax,4)
	incl      %ebx
	cmpl      %ecx, %ebx
	jl        L00006030
L000062B4:
	jmp       L00006544
L000062B9:
	subl      %ecx, %eax
	movl      %eax, 16(%esp)
	movl      $3, %eax
	subl      %ecx, %eax
	movl      %eax, 40(%esp)
	movl      %ecx, 88(%esp)
	.align 4, 0x90
L000062D0:
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
	jae       L00006311
L00006301:
	movl      $14, (%esp)
	movl      %eax, %ebp
	call      _pari_err
L0000630F:
	movl      %ebp, %eax
L00006311:
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
	jb        L00006502
L0000633C:
	movl      $3, %eax
	cmova     %ebx, %eax
	movl      $2, %edx
	cmpl      $2, %eax
	je        L00006477
L00006352:
	leal      -2(%eax), %ecx
	movl      %eax, 44(%esp)
	andl      $-4, %ecx
	orl       $2, %ecx
	cmpl      $3, %ebx
	movl      $3, %eax
	cmova     %ebx, %eax
	cmpl      $2, %ecx
	movl      $2, %edx
	je        L0000646D
L00006378:
	movl      %ecx, 24(%esp)
	leal      -4(%edi,%eax,4), %ebp
	movl      36(%esp), %ecx
	movl      84(%esp), %esi
	leal      (%esi,%ecx,4), %ecx
	cmpl      %ebp, %ecx
	ja        L000063A5
L0000638F:
	leal      8(%edi), %ebp
	addl      28(%esp), %eax
	movl      84(%esp), %esi
	leal      (%esi,%eax,4), %eax
	cmpl      %eax, %ebp
	jbe       L0000646D
L000063A5:
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
	je        L00006408
L000063C8:
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
L000063F0:
	movl      %edx, %esi
	movups    8(%edi,%esi,4), %xmm0
	movups    %xmm0, (%ecx,%esi,4)
	leal      4(%esi), %edx
	incl      %eax
	jne       L000063F0
L00006401:
	addl      $6, %esi
	movl      20(%esp), %edx
L00006408:
	cmpl      $3, %edx
	jb        L00006469
L0000640D:
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
L00006440:
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
	jne       L00006440
L00006469:
	movl      24(%esp), %edx
L0000646D:
	cmpl      %edx, 44(%esp)
	movl      48(%esp), %esi
	je        L000064F5
L00006477:
	leal      1(%edx), %ecx
	cmpl      %ebx, %ecx
	movl      %ebx, %ebp
	cmovge    %ecx, %ebp
	movl      %ebp, %eax
	subl      %edx, %eax
	decl      %ebp
	subl      %edx, %ebp
	testb     $3, %al
	je        L000064AC
L0000648C:
	cmpl      %ebx, %ecx
	cmovl     %ebx, %ecx
	subl      %edx, %ecx
	andl      $3, %ecx
	negl      %ecx
	movl      80(%esp), %eax
	.align 4, 0x90
L000064A0:
	movl      (%edi,%edx,4), %esi
	movl      %esi, (%eax,%edx,4)
	incl      %edx
	incl      %ecx
	jne       L000064A0
L000064AA:
	jmp       L000064B0
L000064AC:
	movl      80(%esp), %eax
L000064B0:
	movl      %eax, 80(%esp)
	cmpl      $3, %ebp
	movl      48(%esp), %esi
	jb        L000064F5
L000064BD:
	movl      40(%esp), %eax
	movl      84(%esp), %ecx
	leal      (%ecx,%eax,4), %eax
	.align 4, 0x90
L000064D0:
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
	jl        L000064D0
L000064F5:
	cmpl      $3, %ebx
	movl      $3, %eax
	cmovbe    %eax, %ebx
	movl      %ebx, %eax
L00006502:
	movl      %eax, %ecx
	movl      88(%esp), %edx
	subl      %edx, %ecx
	jge       L00006524
L0000650C:
	movl      84(%esp), %edi
	leal      (%edi,%ecx,4), %ecx
	subl      %eax, %edx
	sall      $2, %edx
	movl      %edx, 4(%esp)
	movl      %ecx, (%esp)
	call      ___bzero
L00006524:
	movl      52(%esp), %ebx
	movl      %ebx, %eax
	movl      76(%esp), %ecx
	subl      %ecx, %eax
	movl      72(%esp), %edx
	movl      80(%esp), %edi
	movl      %edi, (%edx,%eax,4)
	incl      %ebx
	cmpl      %ecx, %ebx
	jl        L000062D0
L00006544:
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
	call      L0000655C
L0000655C:
	popl      %ecx
	movl      %ecx, 20(%esp)
	movl      68(%esp), %edi
	movl      L_avma$non_lazy_ptr-L0000655C(%ecx), %eax
	movl      %eax, 40(%esp)
	movl      (%eax), %ebx
	movl      (%edi), %esi
	andl      $16777215, %esi
	leal      0(,%esi,4), %eax
	movl      %ebx, %ebp
	subl      %eax, %ebp
	movl      L_bot$non_lazy_ptr-L0000655C(%ecx), %ecx
	movl      %ecx, 36(%esp)
	movl      %ebx, %eax
	subl      (%ecx), %eax
	shrl      $2, %eax
	cmpl      %esi, %eax
	jae       L000065A5
L00006599:
	movl      $14, (%esp)
	call      _pari_err
L000065A5:
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
	jb        L00006735
L000065D9:
	movl      $3, %eax
	cmova     %esi, %eax
	movl      $2, %edx
	cmpl      $2, %eax
	je        L000066BF
L000065EF:
	leal      -2(%eax), %ecx
	andl      $-8, %ecx
	orl       $2, %ecx
	movl      %ecx, 24(%esp)
	leal      -1(%esi), %ebx
	cmpl      $3, %esi
	movl      $2, %edx
	cmovbe    %edx, %ebx
	cmpl      $2, %ecx
	je        L000066B3
L00006613:
	leal      (%edi,%ebx,4), %ecx
	movl      %ecx, 16(%esp)
	movl      $2, %edx
	movl      $2, %ebp
	subl      %esi, %ebp
	movl      28(%esp), %ecx
	leal      (%ecx,%ebp,4), %ebp
	cmpl      16(%esp), %ebp
	ja        L00006644
L00006633:
	leal      8(%edi), %ecx
	subl      %esi, %ebx
	movl      28(%esp), %ebp
	leal      (%ebp,%ebx,4), %ebx
	cmpl      %ebx, %ecx
	jbe       L000066B3
L00006644:
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
	movdqa    LC00009480-L0000655C(%ecx), %xmm0
	.align 4, 0x90
L00006680:
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
	jne       L00006680
L000066AF:
	movl      24(%esp), %edx
L000066B3:
	cmpl      %edx, %eax
	movl      40(%esp), %ebp
	movl      64(%esp), %ebx
	je        L00006735
L000066BF:
	leal      1(%edx), %eax
	cmpl      %esi, %eax
	movl      %esi, %ecx
	cmovge    %eax, %ecx
	movl      %ecx, %ebx
	subl      %edx, %ebx
	decl      %ecx
	subl      %edx, %ecx
	testb     $1, %bl
	je        L000066EB
L000066D5:
	movl      (%edi,%edx,4), %ebx
	shrl      $1, %ebx
	andl      $1431655765, %ebx
	subl      %esi, %edx
	movl      28(%esp), %edi
	movl      %ebx, (%edi,%edx,4)
	jmp       L000066ED
L000066EB:
	movl      %edx, %eax
L000066ED:
	movl      64(%esp), %ebx
	testl     %ecx, %ecx
	movl      68(%esp), %edi
	je        L00006735
L000066F9:
	movl      $1, %ecx
	subl      %esi, %ecx
	movl      28(%esp), %edx
	leal      (%edx,%ecx,4), %ecx
	.align 4, 0x90
L00006710:
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
	jl        L00006710
L00006735:
	movl      %esi, 4(%esp)
	movl      32(%esp), %eax
	movl      %eax, (%esp)
	call      _Flx_renormalize
L00006745:
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
L00006768:
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
	jae       L000067B3
L000067A7:
	movl      $14, (%esp)
	call      _pari_err
L000067B3:
	movl      40(%esp), %eax
	movl      32(%esp), %ecx
	movl      %ecx, (%eax)
	cmpl      $16777216, 36(%esp)
	jb        L000067E1
L000067C7:
	movl      20(%esp), %eax
	leal      LC00009591-L0000655C(%eax), %eax
	movl      %eax, 4(%esp)
	movl      $15, (%esp)
	call      _pari_err
L000067E1:
	movl      36(%esp), %eax
	orl       $738197504, %eax
	movl      %ebp, 24(%esp)
	movl      %eax, (%ebp,%edi,4)
	movl      $0, 8(%ebp,%edi,4)
	movl      $2, %eax
	cmpl      $3, %ebx
	movl      $0, %ecx
	movl      40(%esp), %ebp
	jb        L00006886
L0000680D:
	cmpl      $2, %ebx
	movl      $3, %eax
	movl      $3, %edx
	cmovg     %ebx, %edx
	leal      -2(%edx), %ecx
	addl      $-3, %edx
	testb     $1, %cl
	je        L0000683D
L00006828:
	movl      8(%esi), %ecx
	addl      %ecx, %ecx
	movl      24(%esp), %ebp
	movl      %ecx, 8(%ebp,%edi,4)
	movl      8(%esi), %ecx
	shrl      $31, %ecx
	jmp       L00006844
L0000683D:
	movl      $2, %eax
	xorl      %ecx, %ecx
L00006844:
	testl     %edx, %edx
	je        L00006877
L00006848:
	movl      24(%esp), %edx
	leal      4(%edx,%edi,4), %edx
L00006850:
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
	jl        L00006850
L00006877:
	cmpl      $3, %ebx
	movl      $3, %eax
	cmova     %ebx, %eax
	movl      40(%esp), %ebp
L00006886:
	addl      %edi, %eax
	movl      24(%esp), %edx
	movl      %ecx, (%edx,%eax,4)
	movl      36(%esp), %eax
	movl      %eax, 4(%esp)
	movl      32(%esp), %eax
	movl      %eax, (%esp)
	call      _Flx_renormalize
L000068A3:
	movl      68(%esp), %ecx
	movl      %ecx, 4(%esp)
	movl      %eax, (%esp)
	movl      $0, 8(%esp)
	call      _F2x_divrem
L000068BB:
	movl      $16777215, %ecx
	andl      (%eax), %ecx
	cmpl      $2, %ecx
	movl      $0, %ecx
	je        L000068D2
L000068CC:
	movl      8(%eax), %ecx
	andl      $1, %ecx
L000068D2:
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
	call      L000068FC
L000068FC:
	popl      %esi
	movl      68(%esp), %ecx
	movl      $16777215, %eax
	andl      (%ecx), %eax
	movl      $-1, %edx
	cmpl      $2, %eax
	je        L0000695F
L00006912:
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
	jb        L00006941
L0000693B:
	addl      $-8, %edx
	shrl      $8, %ecx
L00006941:
	movl      %edi, %esi
	sall      $5, %eax
	cmpl      $16, %ecx
	jb        L00006951
L0000694B:
	addl      $-4, %edx
	shrl      $4, %ecx
L00006951:
	addl      $-65, %eax
	subl      %edx, %eax
	subl      _F2x_degree_lg.__bfffo_tabshi-L000068FC(%esi,%ecx,4), %eax
	movl      %eax, %edx
L0000695F:
	movl      %esi, 12(%esp)
	movl      L_avma$non_lazy_ptr-L000068FC(%esi), %ebp
	movl      (%ebp), %ebx
	leal      0(,%edx,4), %eax
	movl      %ebx, %edi
	subl      %eax, %edi
	movl      L_bot$non_lazy_ptr-L000068FC(%esi), %ecx
	movl      %ecx, 28(%esp)
	movl      %ebx, %eax
	subl      (%ecx), %eax
	shrl      $2, %eax
	cmpl      %edx, %eax
	jae       L0000699C
L0000698C:
	movl      $14, (%esp)
	movl      %edx, %esi
	call      _pari_err
L0000699A:
	movl      %esi, %edx
L0000699C:
	movl      64(%esp), %esi
	movl      %edi, (%ebp)
	cmpl      $16777216, %edx
	jb        L000069CD
L000069AB:
	movl      12(%esp), %eax
	leal      LC00009591-L000068FC(%eax), %eax
	movl      %eax, 4(%esp)
	movl      $15, (%esp)
	movl      %edx, 40(%esp)
	call      _pari_err
L000069C9:
	movl      40(%esp), %edx
L000069CD:
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
	jae       L00006A28
L00006A0C:
	movl      $14, (%esp)
	movl      %edx, 40(%esp)
	movl      %ecx, 36(%esp)
	call      _pari_err
L00006A20:
	movl      36(%esp), %ecx
	movl      40(%esp), %edx
L00006A28:
	movl      %ecx, 36(%esp)
	movl      24(%esp), %eax
	movl      %ecx, (%eax)
	movl      $-16777217, %eax
	andl      (%esi), %eax
	movl      %eax, (%ecx)
	cmpl      $2, %edi
	jb        L00006BE7
L00006A44:
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
	je        L00006AC2
L00006A6D:
	incl      %ecx
	movl      %ecx, 28(%esp)
	cmpl      $-3, %ebp
	movl      %ecx, %eax
	movl      $-2, %ecx
	cmovg     %ebp, %ecx
	andl      $-8, %eax
	je        L00006AB9
L00006A84:
	movl      %eax, 24(%esp)
	movl      %ecx, %eax
	notl      %eax
	leal      (%esi,%eax,4), %eax
	movl      %eax, 8(%esp)
	movl      16(%esp), %eax
	leal      -4(%eax), %eax
	cmpl      8(%esp), %eax
	ja        L00006ACB
L00006AA0:
	leal      -4(%esi,%edx,4), %eax
	movl      %eax, 8(%esp)
	addl      %edx, %ecx
	notl      %ecx
	movl      16(%esp), %eax
	leal      (%eax,%ecx,4), %ecx
	cmpl      %ecx, 8(%esp)
	ja        L00006ACB
L00006AB9:
	movl      $-2, %eax
	xorl      %ecx, %ecx
	jmp       L00006B3C
L00006AC2:
	movl      40(%esp), %edx
	jmp       L00006B4A
L00006ACB:
	movl      %edi, %eax
	subl      24(%esp), %eax
	movl      %eax, 8(%esp)
	cmpl      $-3, %ebp
	movl      $-2, %eax
	cmovg     %ebp, %eax
	leal      1(%eax,%edx), %ebp
	andl      $-8, %ebp
	movl      12(%esp), %eax
	movdqa    LC00009490-L000068FC(%eax), %xmm0
	movl      16(%esp), %ecx
	.align 4, 0x90
L00006B00:
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
	jne       L00006B00
L00006B2F:
	movl      8(%esp), %edi
	movl      24(%esp), %ecx
	movl      $-2, %eax
L00006B3C:
	cmpl      %ecx, 28(%esp)
	movl      40(%esp), %edx
	je        L00006BE7
L00006B4A:
	movl      %edx, 40(%esp)
	movl      %edi, %edx
	negl      %edx
	cmpl      $-3, %edx
	cmovg     %edx, %eax
	leal      (%edi,%eax), %ecx
	leal      1(%edi,%eax), %eax
	testb     $3, %al
	je        L00006B9D
L00006B63:
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
L00006B90:
	movl      -4(%esi,%edi,4), %ebp
	movl      %ebp, (%eax,%edi,4)
	leal      -1(%edi), %edi
	incl      %edx
	jne       L00006B90
L00006B9D:
	cmpl      $3, %ecx
	movl      40(%esp), %edx
	jb        L00006BE7
L00006BA6:
	movl      20(%esp), %eax
	notl      %eax
	orl       $1056964608, %eax
	movl      16(%esp), %ecx
	leal      (%ecx,%eax,4), %eax
	.align 4, 0x90
L00006BC0:
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
	jg        L00006BC0
L00006BE7:
	movl      $1, %eax
	subl      %edx, %eax
	movl      36(%esp), %ecx
	movl      %ecx, (%ebx,%eax,4)
	cmpl      $3, %edx
	movl      68(%esp), %edi
	jl        L00006C2E
L00006BFE:
	movl      $2, %esi
	subl      %edx, %esi
	.align 4, 0x90
L00006C10:
	movl      -4(%ebx,%esi,4), %eax
	movl      %eax, (%esp)
	call      _F2x_sqr
L00006C1C:
	movl      %edi, 4(%esp)
	movl      %eax, (%esp)
	call      _F2x_rem
L00006C28:
	movl      %eax, (%ebx,%esi,4)
	incl      %esi
	jne       L00006C10
L00006C2E:
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
	call      L00006C4C
L00006C4C:
	popl      %ebp
	movl      48(%esp), %eax
	leal      96(%eax), %ebx
	movl      %ebx, %esi
	shrl      $5, %esi
	movl      L_avma$non_lazy_ptr-L00006C4C(%ebp), %edi
	movl      (%edi), %edx
	movl      %edx, 20(%esp)
	leal      0(,%esi,4), %eax
	movl      %edx, %ecx
	subl      %eax, %ecx
	movl      %ecx, 24(%esp)
	movl      L_bot$non_lazy_ptr-L00006C4C(%ebp), %eax
	movl      %edx, %ecx
	subl      (%eax), %ecx
	shrl      $2, %ecx
	cmpl      %esi, %ecx
	jae       L00006C91
L00006C85:
	movl      $14, (%esp)
	call      _pari_err
L00006C91:
	movl      52(%esp), %edx
	movl      24(%esp), %eax
	movl      %eax, (%edi)
	cmpl      $536870912, %ebx
	jb        L00006CBD
L00006CA3:
	leal      LC00009591-L00006C4C(%ebp), %eax
	movl      %eax, 4(%esp)
	movl      $15, (%esp)
	movl      %edx, %edi
	call      _pari_err
L00006CBB:
	movl      %edi, %edx
L00006CBD:
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
	ja        L00006D0D
L00006CE4:
	shrl      $3, %ebx
	andl      $536870908, %ebx
	movl      20(%esp), %edi
	subl      %ebx, %edi
	movl      $2, %ebx
	.align 4, 0x90
L00006D00:
	call      _pari_rand
L00006D05:
	movl      %eax, (%edi,%ebx,4)
	incl      %ebx
	cmpl      %esi, %ebx
	jl        L00006D00
L00006D0D:
	movl      48(%esp), %ecx
	sall      %cl, %ebp
	decl      %ebp
	movl      20(%esp), %eax
	andl      %ebp, -4(%eax)
	movl      %esi, 4(%esp)
	movl      24(%esp), %eax
	movl      %eax, (%esp)
	call      _Flx_renormalize
L00006D2B:
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
	call      L00006D49
L00006D49:
	popl      %eax
	movl      32(%esp), %ecx
	movl      36(%esp), %edx
	movl      40(%esp), %esi
	leal      _F2xq_star-L00006D49(%eax), %eax
	movl      %eax, 12(%esp)
	movl      %esi, 8(%esp)
	movl      %edx, 4(%esp)
	movl      %ecx, (%esp)
	call      _gen_eltorder
L00006D70:
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
	call      L00006D8A
L00006D8A:
	popl      %eax
	movl      48(%esp), %ecx
	movl      52(%esp), %edx
	movl      56(%esp), %esi
	movl      60(%esp), %edi
	leal      _F2xq_star-L00006D8A(%eax), %eax
	movl      %eax, 16(%esp)
	movl      %edi, 12(%esp)
	movl      %esi, 8(%esp)
	movl      %edx, 4(%esp)
	movl      %ecx, (%esp)
	movl      $0, 20(%esp)
	call      _gen_PH_log
L00006DC1:
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
	call      L00006DDC
L00006DDC:
	popl      %ebx
	movl      %ebx, 80(%esp)
	movl      132(%esp), %ecx
	movl      128(%esp), %esi
	movl      L_avma$non_lazy_ptr-L00006DDC(%ebx), %eax
	movl      %eax, 104(%esp)
	movl      (%eax), %edi
	movl      %edi, 88(%esp)
	movl      L_bot$non_lazy_ptr-L00006DDC(%ebx), %edx
	movl      $16777215, %ebp
	andl      (%ecx), %ebp
	cmpl      $2, %ebp
	movl      (%edx), %eax
	je        L00007156
L00006E17:
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
	jb        L00006E4E
L00006E48:
	addl      $-8, %edx
	shrl      $8, %ecx
L00006E4E:
	movl      %edi, %ebx
	movl      88(%esp), %edi
	sall      $5, %ebp
	cmpl      $16, %ecx
	jb        L00006E62
L00006E5C:
	addl      $-4, %edx
	shrl      $4, %ecx
L00006E62:
	addl      $-65, %ebp
	subl      %edx, %ebp
	subl      _F2x_degree_lg.__bfffo_tabshi-L00006DDC(%ebx,%ecx,4), %ebp
	cmpl      $2, %ebp
	jl        L00007156
L00006E77:
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
	leal      LC00009567-L00006DDC(%ebx), %eax
	movl      %eax, 68(%esp)
	movdqa    LC000094A0-L00006DDC(%ebx), %xmm0
	movdqa    %xmm0, 48(%esp)
	.align 4, 0x90
L00006EC0:
	movl      %esi, (%esp)
	call      _F2x_sqr
L00006EC8:
	movl      132(%esp), %ecx
	movl      %ecx, 4(%esp)
	movl      %eax, (%esp)
	call      _F2x_rem
L00006EDB:
	movl      %eax, %esi
	movl      104(%esp), %eax
	movl      96(%esp), %ecx
	cmpl      %ecx, (%eax)
	jae       L00007143
L00006EED:
	movl      L_DEBUGMEM$non_lazy_ptr-L00006DDC(%ebx), %eax
	cmpl      $2, (%eax)
	jb        L00006F10
L00006EF8:
	movl      %ebp, 8(%esp)
	movl      68(%esp), %eax
	movl      %eax, 4(%esp)
	movl      $3, (%esp)
	call      _pari_warn
L00006F10:
	movl      92(%esp), %eax
	cmpl      (%eax), %esi
	jb        L00007080
L00006F1C:
	movl      L_top$non_lazy_ptr-L00006DDC(%ebx), %eax
	cmpl      (%eax), %esi
	jae       L00007080
L00006F2A:
	cmpl      %esi, %edi
	jbe       L00007080
L00006F32:
	movl      %edi, %ebx
	movl      (%esi), %edi
	movl      %edi, %ecx
	andl      $16777215, %ecx
	sall      $2, %ecx
	movl      %ebx, %edx
	subl      %ecx, %edx
	movl      %edi, %ecx
	andl      $16777215, %ecx
	movl      104(%esp), %eax
	movl      %edx, (%eax)
	movdqa    48(%esp), %xmm2
	je        L0000708B
L00006F5F:
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
	je        L00007094
L00006F90:
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
	je        L00007070
L00006FCF:
	movl      %ebx, 24(%esp)
	movl      %edx, 32(%esp)
	movl      $-2, %eax
	movl      84(%esp), %ebx
	subl      %ebx, %eax
	leal      (%esi,%eax,4), %eax
	cmpl      %eax, 36(%esp)
	ja        L00007003
L00006FEB:
	leal      -4(%esi,%ecx,4), %eax
	addl      %ecx, %ebx
	movl      $-2, %edx
	subl      %ebx, %edx
	movl      88(%esp), %ebx
	leal      (%ebx,%edx,4), %edx
	cmpl      %edx, %eax
	jbe       L00007070
L00007003:
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
L00007030:
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
	jne       L00007030
L00007060:
	movl      84(%esp), %ecx
	movl      32(%esp), %eax
	movl      %eax, 40(%esp)
	movl      44(%esp), %edi
L00007070:
	cmpl      40(%esp), %edi
	je        L00007137
L0000707A:
	jmp       L00007098
L0000707C:
	.align 4, 0x90
L00007080:
	movl      104(%esp), %eax
	movl      %edi, (%eax)
	jmp       L00007143
L0000708B:
	movl      %edx, %esi
	movl      %ebx, %edi
	jmp       L0000713F
L00007094:
	movl      %edi, 72(%esp)
L00007098:
	movl      %ecx, %edi
	notl      %edi
	cmpl      $-3, %edi
	movl      $-2, %eax
	cmovg     %edi, %eax
	leal      2(%ecx,%eax), %edx
	leal      1(%ecx,%eax), %eax
	testb     $3, %dl
	je        L000070EF
L000070B4:
	movl      %eax, %edx
	movl      72(%esp), %eax
	andl      $16777215, %eax
	sall      $2, %eax
	movl      36(%esp), %ebx
	subl      %eax, %ebx
	cmpl      $-3, %edi
	movl      $-2, %eax
	cmovle    %eax, %edi
	leal      2(%ecx,%edi), %edi
	andl      $3, %edi
	negl      %edi
	.align 4, 0x90
L000070E0:
	movl      -4(%esi,%ecx,4), %eax
	movl      %eax, (%ebx,%ecx,4)
	leal      -1(%ecx), %ecx
	incl      %edi
	jne       L000070E0
L000070ED:
	jmp       L000070F1
L000070EF:
	movl      %eax, %edx
L000070F1:
	cmpl      $3, %edx
	jb        L00007137
L000070F6:
	incl      %ecx
	movl      72(%esp), %eax
	andl      $16777215, %eax
	sall      $2, %eax
	movl      28(%esp), %edi
	subl      %eax, %edi
	.align 4, 0x90
L00007110:
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
	jg        L00007110
L00007137:
	movl      76(%esp), %esi
	movl      88(%esp), %edi
L0000713F:
	movl      80(%esp), %ebx
L00007143:
	cmpl      100(%esp), %ebp
	leal      1(%ebp), %ebp
	jne       L00006EC0
L00007150:
	movl      92(%esp), %eax
	movl      (%eax), %eax
L00007156:
	cmpl      %eax, %esi
	jb        L000071C9
L0000715A:
	movl      L_top$non_lazy_ptr-L00006DDC(%ebx), %eax
	cmpl      (%eax), %esi
	jae       L000071C9
L00007164:
	cmpl      %esi, %edi
	jbe       L000071C9
L00007168:
	movl      (%esi), %eax
	movl      %eax, %ecx
	andl      $16777215, %ecx
	sall      $2, %ecx
	movl      %edi, %ebp
	subl      %ecx, %ebp
	movl      %eax, %ecx
	andl      $16777215, %ecx
	movl      104(%esp), %edx
	movl      %ebp, (%edx)
	je        L000071D9
L00007189:
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
	jne       L000071DD
L000071BB:
	movl      88(%esp), %ebx
	movl      $-2, %edx
	jmp       L000072C9
L000071C9:
	movl      104(%esp), %eax
	movl      %edi, (%eax)
L000071CF:
	movl      %esi, %eax
	addl      $108, %esp
	popl      %esi
	popl      %edi
	popl      %ebx
	popl      %ebp
	ret       
L000071D9:
	movl      %ebp, %esi
	jmp       L000071CF
L000071DD:
	addl      $2, %ebp
	cmpl      $-16777216, %edx
	movl      $-2, %edx
	cmovne    %edx, %ebx
	movl      $0, 100(%esp)
	movl      %ebp, %edx
	andl      $-8, %edx
	je        L000072B1
L00007201:
	movl      %edx, 96(%esp)
	movl      $-2, %edx
	subl      %ebx, %edx
	leal      (%esi,%edx,4), %edx
	movl      %edx, 92(%esp)
	movl      88(%esp), %edx
	leal      -4(%edx), %edx
	cmpl      92(%esp), %edx
	ja        L0000723E
L00007220:
	leal      -4(%esi,%ecx,4), %edx
	movl      %edx, 92(%esp)
	addl      %ecx, %ebx
	movl      $-2, %edx
	subl      %ebx, %edx
	movl      88(%esp), %ebx
	leal      (%ebx,%edx,4), %ebx
	cmpl      %ebx, 92(%esp)
	jbe       L000072B1
L0000723E:
	movl      %ebp, 92(%esp)
	movl      %ecx, %edx
	subl      96(%esp), %edx
	movl      %edx, 100(%esp)
	leal      2(%edi,%ecx), %edi
	andl      $-8, %edi
	movl      80(%esp), %edx
	movdqa    LC000094A0-L00006DDC(%edx), %xmm0
	movl      %ecx, %ebx
	movl      88(%esp), %ebp
	.align 4, 0x90
L00007270:
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
	jne       L00007270
L000072A1:
	movl      100(%esp), %ecx
	movl      96(%esp), %edx
	movl      %edx, 100(%esp)
	movl      92(%esp), %ebp
L000072B1:
	cmpl      100(%esp), %ebp
	movl      88(%esp), %ebx
	movl      $-2, %edx
	jne       L000072C9
L000072C0:
	movl      104(%esp), %esi
	jmp       L000071CF
L000072C9:
	movl      %ecx, %ebp
	notl      %ebp
	cmpl      $-3, %ebp
	cmovg     %ebp, %edx
	movl      %edx, %edi
	leal      2(%ecx,%edi), %edx
	leal      1(%ecx,%edi), %edi
	testb     $3, %dl
	je        L0000731D
L000072E2:
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
L00007310:
	movl      -4(%esi,%ecx,4), %edx
	movl      %edx, (%ebx,%ecx,4)
	leal      -1(%ecx), %ecx
	incl      %ebp
	jne       L00007310
L0000731D:
	cmpl      $3, %edi
	jae       L0000732B
L00007322:
	movl      104(%esp), %esi
	jmp       L000071CF
L0000732B:
	incl      %ecx
	andl      $16777215, %eax
	movl      $-4, %edx
	subl      %eax, %edx
	movl      88(%esp), %eax
	leal      (%eax,%edx,4), %edx
	movl      104(%esp), %edi
	.align 4, 0x90
L00007350:
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
	jg        L00007350
L00007377:
	movl      %edi, %esi
	jmp       L000071CF
# ----------------------
	.align 4, 0x90
	.globl	_F2xq_sqrtn
_F2xq_sqrtn:
	pushl     %ebp
	pushl     %ebx
	pushl     %edi
	pushl     %esi
	subl      $28, %esp
	call      L0000738C
L0000738C:
	popl      %edi
	movl      60(%esp), %ebx
	movl      56(%esp), %esi
	movl      48(%esp), %ebp
	movl      $16777215, %eax
	movl      (%ebp), %ecx
	andl      %eax, %ecx
	cmpl      $2, %ecx
	jne       L0000743E
L000073AC:
	testl     %ebx, %ebx
	je        L000073FE
L000073B0:
	movl      L_avma$non_lazy_ptr-L0000738C(%edi), %ebx
	movl      (%ebx), %ebp
	movl      L_bot$non_lazy_ptr-L0000738C(%edi), %eax
	movl      %ebp, %ecx
	subl      (%eax), %ecx
	movl      4(%esi), %eax
	cmpl      $11, %ecx
	leal      -12(%ebp), %esi
	ja        L000073E1
L000073CD:
	movl      $14, (%esp)
	movl      %eax, 24(%esp)
	call      _pari_err
L000073DD:
	movl      24(%esp), %eax
L000073E1:
	movl      %esi, (%ebx)
	movl      $738197507, -12(%ebp)
	movl      %eax, -8(%ebp)
	movl      $1, -4(%ebp)
	movl      60(%esp), %eax
	movl      %esi, (%eax)
	movl      56(%esp), %esi
L000073FE:
	movl      4(%esi), %edx
	movl      L_avma$non_lazy_ptr-L0000738C(%edi), %ebx
	movl      (%ebx), %ebp
	leal      -8(%ebp), %esi
	movl      L_bot$non_lazy_ptr-L0000738C(%edi), %eax
	movl      %ebp, %ecx
	subl      (%eax), %ecx
	cmpl      $7, %ecx
	ja        L0000742B
L0000741B:
	movl      $14, (%esp)
	movl      %edx, %edi
	call      _pari_err
L00007429:
	movl      %edi, %edx
L0000742B:
	movl      %esi, (%ebx)
	movl      $738197506, -8(%ebp)
	movl      %edx, -4(%ebp)
	movl      %esi, %eax
	jmp       L000074EB
L0000743E:
	andl      (%esi), %eax
	movl      $-1, %ecx
	cmpl      $2, %eax
	je        L0000749B
L0000744A:
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
	jb        L00007479
L00007473:
	addl      $-8, %edx
	shrl      $8, %ecx
L00007479:
	sall      $5, %eax
	cmpl      $16, %ecx
	movl      %ebx, %esi
	jb        L00007489
L00007483:
	addl      $-4, %edx
	shrl      $4, %ecx
L00007489:
	movl      60(%esp), %ebx
	addl      $-65, %eax
	subl      %edx, %eax
	subl      _F2x_degree_lg.__bfffo_tabshi-L0000738C(%edi,%ecx,4), %eax
	movl      %eax, %ecx
L0000749B:
	movl      %ecx, 4(%esp)
	movl      $2, (%esp)
	call      _powuu
L000074AB:
	movl      4(%eax), %ecx
	sarl      $30, %ecx
	movl      %ecx, 8(%esp)
	movl      %eax, 4(%esp)
	movl      $-1, (%esp)
	call      _addsi_sign
L000074C5:
	leal      _F2xq_star-L0000738C(%edi), %ecx
	movl      %ecx, 20(%esp)
	movl      %esi, 16(%esp)
	movl      %ebx, 12(%esp)
	movl      %eax, 8(%esp)
	movl      52(%esp), %eax
	movl      %eax, 4(%esp)
	movl      %ebp, (%esp)
	call      _gen_Shanks_sqrtn
L000074EB:
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
	call      L0000750C
L0000750C:
	popl      %ebx
	movl      96(%esp), %ecx
	movl      4(%ecx), %esi
	movl      %esi, 48(%esp)
	movl      $16777215, %eax
	andl      (%ecx), %eax
	movl      $-1, %ebp
	cmpl      $2, %eax
	je        L00007634
L0000752D:
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
	jb        L00007560
L0000755A:
	addl      $-8, %edx
	shrl      $8, %ecx
L00007560:
	movl      %edi, %esi
	sall      $5, %eax
	cmpl      $16, %ecx
	jb        L00007570
L0000756A:
	addl      $-4, %edx
	shrl      $4, %ecx
L00007570:
	addl      $-65, %eax
	subl      %edx, %eax
	subl      _F2x_degree_lg.__bfffo_tabshi-L0000750C(%ebx,%ecx,4), %eax
	cmpl      $1, %eax
	movl      %eax, %ebp
	jne       L00007634
L00007587:
	movl      %esi, 48(%esp)
	cmpl      $0, 100(%esp)
	je        L000075F0
L00007592:
	movl      L_gen_1$non_lazy_ptr-L0000750C(%ebx), %eax
	movl      (%eax), %eax
	movl      %eax, 68(%esp)
	call      _trivfact
L000075A3:
	movl      %eax, %edx
	movl      L_avma$non_lazy_ptr-L0000750C(%ebx), %edi
	movl      %ebx, %esi
	movl      (%edi), %ebx
	leal      -12(%ebx), %ebp
	movl      L_bot$non_lazy_ptr-L0000750C(%esi), %eax
	movl      %ebx, %ecx
	subl      (%eax), %ecx
	cmpl      $11, %ecx
	ja        L000075D5
L000075C1:
	movl      $14, (%esp)
	movl      %edx, 64(%esp)
	call      _pari_err
L000075D1:
	movl      64(%esp), %edx
L000075D5:
	movl      %ebp, (%edi)
	movl      $570425347, -12(%ebx)
	movl      68(%esp), %eax
	movl      %eax, -8(%ebx)
	movl      %edx, -4(%ebx)
	movl      100(%esp), %eax
	movl      %ebp, (%eax)
	movl      %esi, %ebx
L000075F0:
	movl      %ebx, %eax
	movl      L_avma$non_lazy_ptr-L0000750C(%eax), %ebx
	movl      (%ebx), %edi
	leal      -12(%edi), %esi
	movl      L_bot$non_lazy_ptr-L0000750C(%eax), %eax
	movl      %edi, %ecx
	subl      (%eax), %ecx
	cmpl      $11, %ecx
	ja        L00007618
L0000760C:
	movl      $14, (%esp)
	call      _pari_err
L00007618:
	movl      %esi, (%ebx)
	movl      $738197507, -12(%edi)
	movl      48(%esp), %eax
	movl      %eax, -8(%edi)
	movl      $1, -4(%edi)
	jmp       L00007C66
L00007634:
	movl      %ebp, 64(%esp)
	movl      L_avma$non_lazy_ptr-L0000750C(%ebx), %eax
	movl      %eax, 68(%esp)
	movl      (%eax), %eax
	movl      %eax, 28(%esp)
	movl      %ebp, 4(%esp)
	movl      $2, (%esp)
	call      _powuu
L00007658:
	movl      4(%eax), %ecx
	sarl      $30, %ecx
	movl      %ecx, 8(%esp)
	movl      %eax, 4(%esp)
	movl      $-1, (%esp)
	call      _addsi_sign
L00007672:
	movl      %eax, 36(%esp)
	movl      L_gen_2$non_lazy_ptr-L0000750C(%ebx), %eax
	movl      (%eax), %eax
	movl      %ebp, 4(%esp)
	movl      %eax, (%esp)
	call      _factor_pn_1
L0000768A:
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
	movl      L_bot$non_lazy_ptr-L0000750C(%edi), %ecx
	movl      %ecx, 24(%esp)
	movl      %edi, 56(%esp)
	movl      %edx, %eax
	subl      (%ecx), %eax
	movl      %ebx, %ecx
	shrl      $2, %eax
	cmpl      %ecx, %eax
	jae       L000076E6
L000076D6:
	movl      $14, (%esp)
	movl      %ecx, %ebx
	call      _pari_err
L000076E4:
	movl      %ebx, %ecx
L000076E6:
	movl      44(%esp), %eax
	movl      68(%esp), %edi
	movl      %eax, (%edi)
	movl      $-16777217, %ebx
	andl      (%ebp), %ebx
	movl      %ebx, (%eax)
	cmpl      $2, %ecx
	jb        L000078A9
L00007703:
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
	je        L000077F8
L00007736:
	incl      %esi
	movl      %esi, 60(%esp)
	cmpl      $-3, %edi
	movl      %esi, %eax
	movl      $-2, %esi
	cmovg     %edi, %esi
	xorl      %ecx, %ecx
	andl      $-8, %eax
	je        L000077EA
L00007753:
	movl      %eax, 16(%esp)
	movl      %esi, %eax
	notl      %eax
	leal      (%ebp,%eax,4), %ecx
	movl      40(%esp), %eax
	leal      -4(%eax), %eax
	cmpl      %ecx, %eax
	ja        L00007783
L0000776A:
	leal      -4(%ebp,%ebx,4), %eax
	addl      %ebx, %esi
	notl      %esi
	movl      40(%esp), %ecx
	leal      (%ecx,%esi,4), %esi
	xorl      %ecx, %ecx
	cmpl      %esi, %eax
	movl      52(%esp), %eax
	jbe       L000077EE
L00007783:
	movl      52(%esp), %edx
	movl      %edx, %eax
	subl      16(%esp), %eax
	cmpl      $-3, %edi
	movl      $-2, %esi
	cmovg     %edi, %esi
	leal      1(%esi,%ebx), %esi
	andl      $-8, %esi
	movl      56(%esp), %edi
	movdqa    LC000094B0-L0000750C(%edi), %xmm0
	movl      40(%esp), %ecx
	.align 4, 0x90
L000077B0:
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
	jne       L000077B0
L000077DF:
	movl      16(%esp), %ecx
	movl      $-2, %edx
	jmp       L000077EE
L000077EA:
	movl      52(%esp), %eax
L000077EE:
	cmpl      %ecx, 60(%esp)
	je        L00007897
L000077F8:
	movl      %eax, %esi
	negl      %esi
	cmpl      $-3, %esi
	cmovg     %esi, %edx
	movl      %edx, %ecx
	leal      (%eax,%ecx), %edx
	leal      1(%eax,%ecx), %ecx
	testb     $3, %cl
	je        L0000784D
L00007810:
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
L00007840:
	movl      -4(%ebp,%eax,4), %edi
	movl      %edi, (%ecx,%eax,4)
	leal      -1(%eax), %eax
	incl      %esi
	jne       L00007840
L0000784D:
	cmpl      $3, %edx
	jb        L00007897
L00007852:
	movl      32(%esp), %ecx
	notl      %ecx
	orl       $1056964608, %ecx
	movl      40(%esp), %edx
	leal      (%edx,%ecx,4), %ecx
	.align 4, 0x90
L00007870:
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
	jg        L00007870
L00007897:
	movl      44(%esp), %eax
	movl      (%eax), %ebx
	movl      48(%esp), %esi
	movl      68(%esp), %edi
	movl      52(%esp), %ecx
L000078A9:
	movl      %ebx, %eax
	andl      $16777214, %eax
	cmpl      $2, %eax
	jb        L0000796C
L000078B9:
	movl      %ecx, 52(%esp)
	movl      %edi, 68(%esp)
	movl      32(%esp), %eax
	andl      $16777215, %eax
	sall      $2, %eax
	movl      40(%esp), %ecx
	subl      %eax, %ecx
	movl      %ecx, 60(%esp)
	movl      $1, %edi
	movl      $1, %ebp
	.align 4, 0x90
L000078F0:
	movl      60(%esp), %eax
	movl      (%eax,%edi,4), %eax
	movl      4(%eax), %ecx
	movl      $16777215, %edx
	andl      %edx, %ecx
	cmpl      $3, %ecx
	jne       L0000790C
L00007906:
	cmpl      $2, 8(%eax)
	je        L00007932
L0000790C:
	movl      %eax, 4(%esp)
	movl      36(%esp), %eax
	movl      %eax, (%esp)
	call      _diviiexact
L0000791C:
	leal      1(%ebp), %ecx
	subl      52(%esp), %ebp
	movl      40(%esp), %edx
	movl      %eax, (%edx,%ebp,4)
	movl      44(%esp), %eax
	movl      (%eax), %ebx
	movl      %ecx, %ebp
L00007932:
	incl      %edi
	movl      %ebx, %eax
	andl      $16777215, %eax
	cmpl      %eax, %edi
	jl        L000078F0
L0000793E:
	andl      $-16777216, %ebx
	cmpl      $16777216, %ebp
	movl      68(%esp), %edi
	jb        L00007977
L00007950:
	movl      56(%esp), %eax
	leal      LC00009591-L0000750C(%eax), %eax
	movl      %eax, 4(%esp)
	movl      $15, (%esp)
	call      _pari_err
L0000796A:
	jmp       L00007977
L0000796C:
	andl      $-16777216, %ebx
	movl      $1, %ebp
L00007977:
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
	sall      $2, %ecx
	subl      %ecx, %eax
	movl      %eax, %ebx
	jmp       L000079BA
L000079A4:
	.align 4, 0x90
L000079B0:
	movl      68(%esp), %eax
	movl      60(%esp), %ecx
	movl      %ecx, (%eax)
L000079BA:
	movl      %esi, 4(%esp)
	movl      64(%esp), %eax
	movl      %eax, (%esp)
	call      _random_F2x
L000079CA:
	movl      %eax, %edi
	movl      %edi, 72(%esp)
	movl      (%edi), %eax
	movl      $16777215, %ecx
	andl      %ecx, %eax
	cmpl      $2, %eax
	je        L000079B0
L000079DE:
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
	jb        L00007A0D
L00007A07:
	addl      $-8, %edx
	shrl      $8, %ecx
L00007A0D:
	movl      %ebp, %esi
	movl      52(%esp), %ebp
	sall      $5, %eax
	cmpl      $16, %ecx
	jb        L00007A21
L00007A1B:
	addl      $-4, %edx
	shrl      $4, %ecx
L00007A21:
	addl      $-65, %eax
	subl      %edx, %eax
	movl      56(%esp), %edx
	subl      _F2x_degree_lg.__bfffo_tabshi-L0000750C(%edx,%ecx,4), %eax
	testl     %eax, %eax
	jle       L000079B0
L00007A39:
	movl      $1, %esi
	cmpl      $2, %ebp
	jl        L00007A80
L00007A43:
	.align 4, 0x90
L00007A50:
	movl      (%ebx,%esi,4), %eax
	movl      96(%esp), %ecx
	movl      %ecx, 8(%esp)
	movl      %eax, 4(%esp)
	movl      %edi, (%esp)
	call      _F2xq_pow
L00007A67:
	movl      (%eax), %ecx
	movl      $16777215, %edx
	andl      %edx, %ecx
	cmpl      $3, %ecx
	jne       L00007A7B
L00007A75:
	cmpl      $1, 8(%eax)
	je        L00007A80
L00007A7B:
	incl      %esi
	cmpl      %ebp, %esi
	jl        L00007A50
L00007A80:
	cmpl      %ebp, %esi
	movl      48(%esp), %esi
	jne       L000079B0
L00007A8C:
	movl      100(%esp), %ebp
	testl     %ebp, %ebp
	je        L00007B27
L00007A98:
	movl      64(%esp), %eax
	movl      %eax, (%esp)
	call      _int2n
L00007AA4:
	movl      4(%eax), %ecx
	sarl      $30, %ecx
	movl      %ecx, 8(%esp)
	movl      %eax, 4(%esp)
	movl      $-1, (%esp)
	call      _addsi_sign
L00007ABE:
	movl      68(%esp), %edi
	movl      (%edi), %esi
	leal      -12(%esi), %ebx
	movl      %esi, %edx
	movl      24(%esp), %ecx
	subl      (%ecx), %edx
	cmpl      $11, %edx
	ja        L00007AE8
L00007AD4:
	movl      $14, (%esp)
	movl      %eax, 64(%esp)
	call      _pari_err
L00007AE4:
	movl      64(%esp), %eax
L00007AE8:
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
L00007B1E:
	movl      72(%esp), %esi
	jmp       L00007C66
L00007B27:
	movl      %edi, (%esp)
	call      _copy_bin
L00007B2F:
	movl      %eax, %edx
	movl      28(%esp), %esi
	movl      68(%esp), %eax
	movl      %esi, (%eax)
	movl      4(%edx), %eax
	testl     %eax, %eax
	je        L00007BCC
L00007B46:
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
	jae       L00007B84
L00007B78:
	movl      $14, (%esp)
	call      _pari_err
L00007B84:
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
L00007BA7:
	subl      64(%esp), %ebp
	movl      28(%esp), %eax
	leal      (%eax,%ebp,4), %esi
	movl      %esi, %eax
	subl      60(%esp), %eax
	cmpl      $0, 12(%edi)
	je        L00007C17
L00007BBE:
	movl      %eax, 4(%esp)
	movl      %esi, (%esp)
	call      _shiftaddress_canon
L00007BCA:
	jmp       L00007C23
L00007BCC:
	movl      56(%esp), %ebp
	movl      L_PARI_SIGINT_block$non_lazy_ptr-L0000750C(%ebp), %esi
	movl      (%esi), %ebx
	movl      $1, (%esi)
	movl      %edx, (%esp)
	call      _free
L00007BE6:
	movl      %ebx, (%esi)
	testl     %ebx, %ebx
	movl      %ebp, %esi
	jne       L00007C09
L00007BEE:
	movl      L_PARI_SIGINT_pending$non_lazy_ptr-L0000750C(%esi), %eax
	cmpl      $0, (%eax)
	je        L00007C09
L00007BF9:
	movl      (%eax), %ecx
	movl      $0, (%eax)
	movl      %ecx, (%esp)
	call      _raise
L00007C09:
	movl      L_gen_0$non_lazy_ptr-L0000750C(%esi), %eax
	movl      (%eax), %esi
	movl      %esi, 72(%esp)
	jmp       L00007C66
L00007C17:
	movl      %eax, 4(%esp)
	movl      %esi, (%esp)
	call      _shiftaddress
L00007C23:
	movl      56(%esp), %eax
	movl      L_PARI_SIGINT_block$non_lazy_ptr-L0000750C(%eax), %ebx
	movl      (%ebx), %ebp
	movl      $1, (%ebx)
	movl      %edi, (%esp)
	call      _free
L00007C3D:
	movl      %ebp, (%ebx)
	testl     %ebp, %ebp
	jne       L00007C62
L00007C43:
	movl      56(%esp), %eax
	movl      L_PARI_SIGINT_pending$non_lazy_ptr-L0000750C(%eax), %eax
	cmpl      $0, (%eax)
	je        L00007C62
L00007C52:
	movl      (%eax), %ecx
	movl      $0, (%eax)
	movl      %ecx, (%esp)
	call      _raise
L00007C62:
	movl      %esi, 72(%esp)
L00007C66:
	movl      %esi, %eax
	addl      $76, %esp
	popl      %esi
	popl      %edi
	popl      %ebx
	popl      %ebp
	ret       
_F2x_equal1:
	movl      4(%esp), %eax
	movl      $16777215, %ecx
	andl      (%eax), %ecx
	cmpl      $3, %ecx
	jne       L00007C8B
L00007C80:
	cmpl      $1, 8(%eax)
	sete      %al
	movzbl    %al, %eax
	ret       
L00007C8B:
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
	call      L00007CAC
L00007CAC:
	popl      %eax
	movl      48(%esp), %ebx
	movl      (%ebx), %esi
	andl      $16777215, %esi
	movl      L_avma$non_lazy_ptr-L00007CAC(%eax), %ecx
	movl      %ecx, 24(%esp)
	movl      (%ecx), %edi
	leal      0(,%esi,4), %ecx
	movl      %edi, %ebp
	subl      %ecx, %ebp
	movl      %ebp, 20(%esp)
	movl      L_bot$non_lazy_ptr-L00007CAC(%eax), %ecx
	movl      %ecx, 16(%esp)
	movl      %edi, %eax
	subl      (%ecx), %eax
	shrl      $2, %eax
	cmpl      %esi, %eax
	jae       L00007CF5
L00007CE9:
	movl      $14, (%esp)
	call      _pari_err
L00007CF5:
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
	jb        L00007E19
L00007D25:
	movl      $2, %edi
	.align 4, 0x90
L00007D30:
	movl      (%ebx,%edi,4), %eax
	movl      (%eax), %ecx
	shrl      $25, %ecx
	cmpl      $10, %ecx
	jne       L00007D50
L00007D3D:
	movl      %eax, (%esp)
	call      _ZX_to_F2x
L00007D45:
	movl      %eax, (%ebp,%edi,4)
	jmp       L00007E10
L00007D4E:
	.align 4, 0x90
L00007D50:
	cmpl      $1, %ecx
	jne       L00007E10
L00007D59:
	movl      4(%eax), %ecx
	cmpl      $1073741823, %ecx
	jbe       L00007DC2
L00007D64:
	andl      $16777215, %ecx
	testb     $1, -4(%eax,%ecx,4)
	movl      24(%esp), %eax
	movl      (%eax), %ebp
	je        L00007DC8
L00007D77:
	movl      %ebp, %edx
	addl      $-12, %edx
	movl      %ebp, %eax
	movl      16(%esp), %ecx
	subl      (%ecx), %eax
	cmpl      $11, %eax
	ja        L00007D9D
L00007D89:
	movl      $14, (%esp)
	movl      %edx, 12(%esp)
	call      _pari_err
L00007D99:
	movl      12(%esp), %edx
L00007D9D:
	movl      24(%esp), %eax
	movl      %edx, (%eax)
	movl      $738197507, -12(%ebp)
	movl      52(%esp), %eax
	movl      %eax, -8(%ebp)
	movl      $1, -4(%ebp)
	movl      20(%esp), %ebp
	movl      %edx, (%ebp,%edi,4)
	jmp       L00007E10
L00007DC2:
	movl      24(%esp), %eax
	movl      (%eax), %ebp
L00007DC8:
	leal      -8(%ebp), %ebx
	movl      %ebp, %eax
	movl      16(%esp), %ecx
	subl      (%ecx), %eax
	cmpl      $7, %eax
	ja        L00007DE4
L00007DD8:
	movl      $14, (%esp)
	call      _pari_err
L00007DE4:
	movl      24(%esp), %eax
	movl      %ebx, (%eax)
	movl      $738197506, -8(%ebp)
	movl      52(%esp), %eax
	movl      %eax, -4(%ebp)
	movl      20(%esp), %ebp
	movl      %ebx, (%ebp,%edi,4)
	movl      48(%esp), %ebx
	.align 4, 0x90
L00007E10:
	incl      %edi
	cmpl      %esi, %edi
	jl        L00007D30
L00007E19:
	movl      %esi, 4(%esp)
	movl      %ebp, (%esp)
	call      _FlxX_renormalize
L00007E25:
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
	call      L00007E3C
L00007E3C:
	popl      %edi
	movl      %edi, 52(%esp)
	movl      80(%esp), %eax
	movl      4(%eax), %esi
	movl      L_avma$non_lazy_ptr-L00007E3C(%edi), %ebp
	movl      (%ebp), %edx
	movl      %edx, 28(%esp)
	movl      L_bot$non_lazy_ptr-L00007E3C(%edi), %eax
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
	jae       L00007E88
L00007E7C:
	movl      $14, (%esp)
	call      _pari_err
L00007E88:
	movl      20(%esp), %eax
	movl      %eax, (%ebp)
	movl      36(%esp), %ebp
	cmpl      $16777216, %ebp
	jb        L00007EB1
L00007E9B:
	leal      LC00009591-L00007E3C(%edi), %eax
	movl      %eax, 4(%esp)
	movl      $15, (%esp)
	call      _pari_err
L00007EB1:
	movl      %ebp, %eax
	orl       $603979776, %eax
	movl      20(%esp), %ecx
	movl      %eax, (%ecx)
	movl      80(%esp), %eax
	movl      (%eax), %eax
	movl      %eax, %ecx
	andl      $16777215, %ecx
	cmpl      $3, %ecx
	jb        L00007FDD
L00007ED5:
	sall      $2, %esi
	movl      28(%esp), %ecx
	subl      %esi, %ecx
	movl      %ecx, 24(%esp)
	movl      $2, %ebx
	movl      $1, %esi
	.align 4, 0x90
L00007EF0:
	cmpl      %ebp, %esi
	jge       L00007FCC
L00007EF8:
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
	je        L00007F57
L00007F27:
	movl      (%eax,%ebx,4), %edx
	testb     $1, %dl
	movl      L_gen_0$non_lazy_ptr-L00007E3C(%edi), %edx
	cmovne    L_gen_1$non_lazy_ptr-L00007E3C(%edi), %edx
	movl      (%edx), %edx
	movl      %ecx, 48(%esp)
	movl      28(%esp), %ecx
	movl      %edx, (%ecx,%ebp,4)
	movl      $1, %esi
	movl      44(%esp), %ecx
	leal      1(%ecx), %edx
	movl      48(%esp), %ecx
L00007F57:
	testl     %ecx, %ecx
	movl      %ebx, 56(%esp)
	je        L00007FBE
L00007F5F:
	movl      %ecx, 48(%esp)
	movl      24(%esp), %ecx
	leal      (%ecx,%edx,4), %edx
	.align 4, 0x90
L00007F70:
	movl      (%eax,%ebx,4), %ebp
	btl       %esi, %ebp
	movl      L_gen_1$non_lazy_ptr-L00007E3C(%edi), %ebp
	movl      52(%esp), %ecx
	movl      L_gen_0$non_lazy_ptr-L00007E3C(%ecx), %edi
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
	jne       L00007F70
L00007FBE:
	movl      44(%esp), %esi
	subl      40(%esp), %esi
	movl      (%eax), %eax
	movl      36(%esp), %ebp
L00007FCC:
	incl      %ebx
	movl      %eax, %edx
	andl      $16777215, %edx
	cmpl      %edx, %ebx
	jl        L00007EF0
L00007FDD:
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
	call      L00007FFC
L00007FFC:
	popl      %eax
	movl      32(%esp), %edi
	movl      (%edi), %ebx
	andl      $16777215, %ebx
	movl      L_avma$non_lazy_ptr-L00007FFC(%eax), %ebp
	movl      (%ebp), %ecx
	leal      0(,%ebx,4), %edx
	movl      %ecx, %esi
	subl      %edx, %esi
	movl      L_bot$non_lazy_ptr-L00007FFC(%eax), %eax
	subl      (%eax), %ecx
	shrl      $2, %ecx
	cmpl      %ebx, %ecx
	jae       L00008038
L0000802C:
	movl      $14, (%esp)
	call      _pari_err
L00008038:
	movl      %esi, (%ebp)
	movl      %ebx, %eax
	orl       $637534208, %eax
	movl      %eax, (%esi)
	cmpl      $2, %ebx
	jb        L00008063
L00008049:
	movl      $1, %ebp
	.align 4, 0x90
L00008050:
	movl      (%edi,%ebp,4), %eax
	movl      %eax, (%esp)
	call      _F2c_to_ZC
L0000805B:
	movl      %eax, (%esi,%ebp,4)
	incl      %ebp
	cmpl      %ebx, %ebp
	jl        L00008050
L00008063:
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
	call      L0000807C
L0000807C:
	popl      %eax
	movl      48(%esp), %ecx
	movl      $16777215, %edi
	andl      (%ecx), %edi
	leal      94(%edi), %ebx
	shrl      $5, %ebx
	movl      L_avma$non_lazy_ptr-L0000807C(%eax), %ecx
	movl      %ecx, 12(%esp)
	movl      (%ecx), %edx
	movl      %edx, 24(%esp)
	leal      0(,%ebx,4), %ecx
	movl      %edx, %esi
	subl      %ecx, %esi
	movl      L_bot$non_lazy_ptr-L0000807C(%eax), %eax
	movl      %edx, %ecx
	subl      (%eax), %ecx
	shrl      $2, %ecx
	cmpl      %ebx, %ecx
	leal      -1(%edi), %ebp
	jae       L000080C9
L000080BD:
	movl      $14, (%esp)
	call      _pari_err
L000080C9:
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
	jb        L00008167
L000080FA:
	movl      $32, %ecx
	xorl      %edx, %edx
	.align 4, 0x90
L00008110:
	cmpl      $32, %ecx
	jne       L00008127
L00008115:
	incl      %eax
	movl      %eax, %ecx
	subl      %ebx, %ecx
	movl      24(%esp), %edi
	movl      $0, (%edi,%ecx,4)
	xorl      %ecx, %ecx
L00008127:
	movl      48(%esp), %edi
	movl      4(%edi,%edx,4), %edi
	movl      4(%edi), %ebp
	cmpl      $1073741824, %ebp
	jb        L00008161
L0000813A:
	andl      $16777215, %ebp
	testb     $1, -4(%edi,%ebp,4)
	je        L00008161
L00008147:
	movl      $1, %edi
	sall      %cl, %edi
	movl      %eax, %ebp
	subl      %ebx, %ebp
	movl      %ebx, %esi
	movl      24(%esp), %ebx
	orl       %edi, (%ebx,%ebp,4)
	movl      %esi, %ebx
	movl      20(%esp), %esi
L00008161:
	incl      %ecx
	incl      %edx
	cmpl      %esi, %edx
	jl        L00008110
L00008167:
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
	call      L0000818C
L0000818C:
	popl      %eax
	movl      32(%esp), %ecx
	movl      $16777215, %edi
	andl      (%ecx), %edi
	leal      94(%edi), %ebx
	shrl      $5, %ebx
	movl      L_avma$non_lazy_ptr-L0000818C(%eax), %edx
	movl      (%edx), %ebp
	leal      0(,%ebx,4), %ecx
	movl      %ebp, %esi
	subl      %ecx, %esi
	movl      L_bot$non_lazy_ptr-L0000818C(%eax), %eax
	movl      %ebp, %ecx
	subl      (%eax), %ecx
	shrl      $2, %ecx
	cmpl      %ebx, %ecx
	leal      -1(%edi), %eax
	movl      %eax, 8(%esp)
	jae       L000081DD
L000081C9:
	movl      $14, (%esp)
	movl      %edx, 4(%esp)
	call      _pari_err
L000081D9:
	movl      4(%esp), %edx
L000081DD:
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
	jb        L00008246
L00008205:
	movl      $32, %ecx
	xorl      %edx, %edx
	.align 4, 0x90
L00008210:
	cmpl      $32, %ecx
	jne       L00008224
L00008215:
	incl      %esi
	movl      %esi, %ecx
	subl      %ebx, %ecx
	movl      $0, (%ebp,%ecx,4)
	xorl      %ecx, %ecx
L00008224:
	movl      32(%esp), %eax
	testb     $1, 4(%eax,%edx,4)
	je        L0000823E
L0000822F:
	movl      $1, %edi
	sall      %cl, %edi
	movl      %esi, %eax
	subl      %ebx, %eax
	orl       %edi, (%ebp,%eax,4)
L0000823E:
	incl      %ecx
	incl      %edx
	cmpl      8(%esp), %edx
	jl        L00008210
L00008246:
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
	call      L0000826C
L0000826C:
	popl      %eax
	movl      32(%esp), %edi
	movl      (%edi), %ebx
	andl      $16777215, %ebx
	movl      L_avma$non_lazy_ptr-L0000826C(%eax), %ebp
	movl      (%ebp), %ecx
	leal      0(,%ebx,4), %edx
	movl      %ecx, %esi
	subl      %edx, %esi
	movl      L_bot$non_lazy_ptr-L0000826C(%eax), %eax
	subl      (%eax), %ecx
	shrl      $2, %ecx
	cmpl      %ebx, %ecx
	jae       L000082A8
L0000829C:
	movl      $14, (%esp)
	call      _pari_err
L000082A8:
	movl      %esi, (%ebp)
	movl      %ebx, %eax
	orl       $637534208, %eax
	movl      %eax, (%esi)
	cmpl      $2, %ebx
	jb        L000082D3
L000082B9:
	movl      $1, %ebp
	.align 4, 0x90
L000082C0:
	movl      (%edi,%ebp,4), %eax
	movl      %eax, (%esp)
	call      _ZV_to_F2v
L000082CB:
	movl      %eax, (%esi,%ebp,4)
	incl      %ebp
	cmpl      %ebx, %ebp
	jl        L000082C0
L000082D3:
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
	call      L000082EC
L000082EC:
	popl      %eax
	movl      64(%esp), %ecx
	movl      $16777215, %esi
	andl      (%ecx), %esi
	movl      L_avma$non_lazy_ptr-L000082EC(%eax), %edi
	movl      %edi, 28(%esp)
	movl      (%edi), %edx
	movl      %edx, 16(%esp)
	leal      0(,%esi,4), %ecx
	movl      %edx, %ebx
	subl      %ecx, %ebx
	movl      L_bot$non_lazy_ptr-L000082EC(%eax), %ecx
	movl      %ecx, 12(%esp)
	movl      %edx, %eax
	subl      (%ecx), %eax
	shrl      $2, %eax
	cmpl      %esi, %eax
	jae       L00008334
L00008328:
	movl      $14, (%esp)
	call      _pari_err
L00008334:
	movl      %edi, %ecx
	movl      %ecx, 28(%esp)
	movl      %ebx, (%ecx)
	movl      %esi, 20(%esp)
	movl      %esi, %eax
	orl       $637534208, %eax
	movl      %eax, (%ebx)
	movl      %ebx, 8(%esp)
	cmpl      $2, %esi
	jb        L0000846B
L00008356:
	movl      $1, %esi
	.align 4, 0x90
L00008360:
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
	jae       L000083BB
L0000839B:
	movl      $14, (%esp)
	movl      %edx, 32(%esp)
	movl      %ebp, 40(%esp)
	movl      %ecx, %ebp
	call      _pari_err
L000083B1:
	movl      %ebp, %ecx
	movl      40(%esp), %ebp
	movl      32(%esp), %edx
L000083BB:
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
	jb        L00008447
L000083E3:
	movl      $32, %ecx
	movl      $1, 40(%esp)
	xorl      %edx, %edx
	.align 4, 0x90
L00008400:
	cmpl      $32, %ecx
	jne       L0000841B
L00008405:
	movl      40(%esp), %ecx
	incl      %ecx
	movl      %ecx, 40(%esp)
	subl      36(%esp), %ecx
	movl      $0, (%eax,%ecx,4)
	xorl      %ecx, %ecx
L0000841B:
	testb     $1, 4(%esi,%edx,4)
	je        L00008441
L00008422:
	movl      %esi, %ebx
	movl      $1, %esi
	sall      %cl, %esi
	movl      %ebp, %edi
	movl      %eax, %ebp
	movl      40(%esp), %eax
	subl      36(%esp), %eax
	orl       %esi, (%ebp,%eax,4)
	movl      %ebp, %eax
	movl      %edi, %ebp
	movl      %ebx, %esi
L00008441:
	incl      %ecx
	incl      %edx
	cmpl      %ebp, %edx
	jl        L00008400
L00008447:
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
	jl        L00008360
L0000846B:
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
	jl        L0000850A
L000084AA:
	addl      $-3, %edi
	subl      %esi, %edi
	andl      $-8, %edi
	movl      $2, %edx
	.align 4, 0x90
L000084C0:
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
	jl        L000084C0
L00008505:
	addl      $10, %edi
	movl      %edi, %edx
L0000850A:
	decl      %esi
	cmpl      $6, %esi
	ja        L00008551
L00008510:
	call      L00008515
L00008515:
	popl      %edi
	addl      L00008558-L00008515(%edi,%esi,4), %edi
	jmp       *%edi
L0000851F:
	movl      (%ecx,%edx,4), %esi
	xorl      %esi, (%eax,%edx,4)
	orl       $1, %edx
L00008528:
	movl      (%ecx,%edx,4), %esi
	xorl      %esi, (%eax,%edx,4)
	incl      %edx
L0000852F:
	movl      (%ecx,%edx,4), %esi
	xorl      %esi, (%eax,%edx,4)
	incl      %edx
L00008536:
	movl      (%ecx,%edx,4), %esi
	xorl      %esi, (%eax,%edx,4)
	incl      %edx
L0000853D:
	movl      (%ecx,%edx,4), %esi
	xorl      %esi, (%eax,%edx,4)
	incl      %edx
L00008544:
	movl      (%ecx,%edx,4), %esi
	xorl      %esi, (%eax,%edx,4)
	incl      %edx
L0000854B:
	movl      (%ecx,%edx,4), %ecx
	xorl      %ecx, (%eax,%edx,4)
L00008551:
	popl      %esi
	popl      %edi
	popl      %ebx
	popl      %ebp
	ret       
	.align 2, 0x90
L00008558:
	.long	L0000854B-L00008515
	.long	L00008544-L00008515
	.long	L0000853D-L00008515
	.long	L00008536-L00008515
	.long	L0000852F-L00008515
	.long	L00008528-L00008515
	.long	L0000851F-L00008515
L00008574:
	.align 4, 0x90
_F2x_shiftip:
	pushl     %ebp
	pushl     %ebx
	pushl     %edi
	pushl     %esi
	subl      $44, %esp
	call      L0000858C
L0000858C:
	popl      %esi
	movl      64(%esp), %edi
	testl     %edi, %edi
	je        L00008642
L00008599:
	movl      (%edx), %eax
	andl      $16777215, %eax
	cmpl      $2, %eax
	je        L00008642
L000085A9:
	movl      %edx, 24(%esp)
	movl      %eax, 36(%esp)
	leal      (%eax,%edi), %ebx
	movl      %ecx, %ebp
	movl      %ebx, 28(%esp)
	leal      0(,%ebx,4), %eax
	movl      %ebp, %edx
	subl      %eax, %edx
	movl      L_bot$non_lazy_ptr-L0000858C(%esi), %eax
	subl      (%eax), %ecx
	shrl      $2, %ecx
	cmpl      %ebx, %ecx
	movl      L_avma$non_lazy_ptr-L0000858C(%esi), %ebx
	movl      %esi, 32(%esp)
	movl      %ebp, (%ebx)
	movl      %ebp, %esi
	jae       L000085F2
L000085E2:
	movl      $14, (%esp)
	movl      %edx, %ebp
	call      _pari_err
L000085F0:
	movl      %ebp, %edx
L000085F2:
	movl      %edx, (%ebx)
	movl      36(%esp), %ebx
	cmpl      $3, %ebx
	movl      %esi, 40(%esp)
	jb        L000087DA
L00008605:
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
	jne       L0000864C
L00008639:
	movl      40(%esp), %edx
	jmp       L00008733
L00008642:
	call      _gerepileuptoleaf
L00008647:
	jmp       L0000891F
L0000864C:
	movl      %esi, 16(%esp)
	leal      -2(%esi), %esi
	andl      $-8, %esi
	leal      2(%esi), %eax
	cmpl      $3, %ebx
	cmova     %ebx, %edx
	cmpl      $2, %eax
	jne       L00008674
L00008664:
	movl      $2, %eax
	movl      40(%esp), %ebp
	movl      %ebp, %edx
	jmp       L00008721
L00008674:
	movl      %eax, 12(%esp)
	leal      2(%ebx), %eax
	subl      %edx, %eax
	movl      24(%esp), %ebx
	leal      (%ebx,%eax,4), %eax
	movl      40(%esp), %ebp
	leal      -4(%ebp), %ebx
	cmpl      %eax, %ebx
	ja        L000086BA
L0000868F:
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
	jbe       L00008721
L000086BA:
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
L00008700:
	movups    -16(%eax), %xmm0
	movups    (%eax), %xmm1
	movups    %xmm1, (%esi)
	movups    %xmm0, -16(%esi)
	addl      $-32, %eax
	addl      $-32, %esi
	addl      $-8, %ebx
	jne       L00008700
L00008719:
	movl      12(%esp), %eax
	movl      40(%esp), %ebp
L00008721:
	movl      %ebp, 40(%esp)
	cmpl      %eax, 16(%esp)
	movl      36(%esp), %ebx
	je        L000087CB
L00008733:
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
	je        L00008773
L0000874D:
	movl      36(%esp), %ebx
	cmpl      %ebx, %esi
	cmovl     %ebx, %esi
	subl      %eax, %esi
	andl      $7, %esi
	negl      %esi
	xorl      %ebx, %ebx
	.align 4, 0x90
L00008760:
	movl      -4(%ecx,%ebx), %ebp
	movl      %ebp, -4(%edx,%ebx)
	incl      %eax
	addl      $-4, %ebx
	incl      %esi
	jne       L00008760
L0000876F:
	addl      %ebx, %edx
	addl      %ebx, %ecx
L00008773:
	cmpl      $7, 24(%esp)
	movl      36(%esp), %ebx
	jb        L000087CB
L0000877E:
	addl      $-4, %edx
	addl      $-4, %ecx
	.align 4, 0x90
L00008790:
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
	jl        L00008790
L000087CB:
	movl      20(%esp), %eax
	movl      40(%esp), %ecx
	leal      (%ecx,%eax,4), %ecx
	movl      %ecx, 40(%esp)
L000087DA:
	testl     %edi, %edi
	jle       L0000883A
L000087DE:
	movl      %edi, %eax
	negl      %eax
	xorl      %edx, %edx
	testl     %edi, %edi
	movl      40(%esp), %ebp
	movl      %ebp, %ecx
	je        L00008881
L000087F2:
	movl      %edi, %ebx
	andl      $-8, %ebx
	xorl      %edx, %edx
	movl      %edi, %esi
	andl      $-8, %esi
	movl      %ebp, %ecx
	je        L0000887D
L00008802:
	sall      $2, %ebx
	leal      -8(%esi), %edx
	shrl      $3, %edx
	leal      1(%edx), %ecx
	movl      $0, 36(%esp)
	testb     $1, %cl
	je        L0000882E
L0000881B:
	xorps     %xmm0, %xmm0
	movups    %xmm0, -16(%ebp)
	movups    %xmm0, -32(%ebp)
	movl      $8, 36(%esp)
L0000882E:
	movl      %ebp, %ecx
	subl      %ebx, %ecx
	testl     %edx, %edx
	jne       L00008843
L00008836:
	movl      %esi, %edx
	jmp       L0000887D
L0000883A:
	movl      40(%esp), %ebp
	jmp       L000088EB
L00008843:
	movl      $-4, %edx
	subl      36(%esp), %edx
	leal      (%ebp,%edx,4), %edx
	movl      %ebp, 40(%esp)
	movl      %esi, %ebx
	subl      36(%esp), %ebx
	xorps     %xmm0, %xmm0
	.align 4, 0x90
L00008860:
	movups    %xmm0, (%edx)
	movups    %xmm0, -16(%edx)
	movups    %xmm0, -32(%edx)
	movups    %xmm0, -48(%edx)
	addl      $-64, %edx
	addl      $-16, %ebx
	jne       L00008860
L00008877:
	movl      %esi, %edx
	movl      40(%esp), %ebp
L0000887D:
	cmpl      %edi, %edx
	je        L000088E7
L00008881:
	movl      %edi, %ebx
	subl      %edx, %ebx
	leal      -1(%edi), %esi
	subl      %edx, %esi
	testb     $7, %bl
	je        L000088AE
L0000888F:
	andl      $7, %ebx
	negl      %ebx
	.align 4, 0x90
L000088A0:
	movl      $0, -4(%ecx)
	addl      $-4, %ecx
	incl      %edx
	incl      %ebx
	jne       L000088A0
L000088AE:
	cmpl      $7, %esi
	jb        L000088E7
L000088B3:
	addl      $-4, %ecx
	subl      %edx, %edi
	xorps     %xmm0, %xmm0
	.align 4, 0x90
L000088C0:
	movl      $0, (%ecx)
	movl      $0, -4(%ecx)
	movl      $0, -8(%ecx)
	movl      $0, -12(%ecx)
	movups    %xmm0, -28(%ecx)
	addl      $-32, %ecx
	addl      $-8, %edi
	jne       L000088C0
L000088E7:
	leal      (%ebp,%eax,4), %ebp
L000088EB:
	addl      $-8, %ebp
	movl      28(%esp), %esi
	cmpl      $16777216, %esi
	movl      32(%esp), %eax
	jb        L00008914
L000088FE:
	leal      LC00009591-L0000858C(%eax), %eax
	movl      %eax, 4(%esp)
	movl      $15, (%esp)
	call      _pari_err
L00008914:
	orl       $738197504, %esi
	movl      %esi, (%ebp)
	movl      %ebp, %eax
L0000891F:
	addl      $44, %esp
	popl      %esi
	popl      %edi
	popl      %ebx
	popl      %ebp
	ret       
L00008927:
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
	call      L0000896B
L0000896B:
	popl      %edx
	movl      L_avma$non_lazy_ptr-L0000896B(%edx), %esi
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
	jle       L00008C05
L0000899A:
	movl      %ebx, 96(%esp)
	movl      %eax, 92(%esp)
	leal      0(,%edi,4), %eax
	movl      %eax, 52(%esp)
	movl      %esi, %ebx
	subl      %eax, %ebx
	movl      L_bot$non_lazy_ptr-L0000896B(%edx), %ebp
	movl      %edx, 76(%esp)
	movl      (%ebp), %eax
	movl      %esi, %ecx
	subl      %eax, %ecx
	shrl      $2, %ecx
	cmpl      %edi, %ecx
	jae       L000089DF
L000089C9:
	movl      $14, (%esp)
	call      _pari_err
L000089D5:
	movl      128(%esp), %edi
	movl      (%ebp), %eax
L000089DF:
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
	jae       L00008A5B
L00008A43:
	movl      $14, (%esp)
	movl      %ebx, 72(%esp)
	movl      %eax, %ebx
	call      _pari_err
L00008A55:
	movl      %ebx, %eax
	movl      72(%esp), %ebx
L00008A5B:
	movl      88(%esp), %ecx
	movl      %ebp, (%ecx)
	cmpl      $16777216, %eax
	movl      %ebx, %edx
	jb        L00008A90
L00008A6A:
	movl      %eax, 56(%esp)
	movl      76(%esp), %eax
	leal      LC00009591-L0000896B(%eax), %eax
	movl      %eax, 4(%esp)
	movl      $15, (%esp)
	movl      %edx, %ebx
	call      _pari_err
L00008A8A:
	movl      56(%esp), %eax
	movl      %ebx, %edx
L00008A90:
	movl      %eax, 56(%esp)
	orl       $738197504, %eax
	movl      %eax, (%ebp)
	movl      %ebp, 88(%esp)
	xorl      %eax, %eax
	cmpl      $0, 100(%esp)
	jle       L00008E29
L00008AAD:
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
	je        L00008D60
L00008AFA:
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
	je        L00008CBB
L00008B43:
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
	jne       L00008CB7
L00008B9A:
	andb      %ch, %cl
	movl      36(%esp), %ebx
	movl      16(%esp), %ebp
	movl      $0, %edx
	jne       L00008D56
L00008BAF:
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
	je        L00008BF0
L00008BD2:
	movl      104(%esp), %edx
	movups    (%edx), %xmm0
	movl      40(%esp), %edx
	movups    (%edx), %xmm1
	xorps     %xmm0, %xmm1
	movl      44(%esp), %edx
	movups    %xmm1, (%esi,%edx,4)
	movl      $4, %ebx
L00008BF0:
	testl     %ecx, %ecx
	jne       L00008CC6
L00008BF8:
	movl      24(%esp), %edx
	movl      36(%esp), %ebx
	jmp       L00008D56
L00008C05:
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
	movl      L_bot$non_lazy_ptr-L0000896B(%edx), %eax
	movl      %edx, 76(%esp)
	movl      %esi, %ecx
	subl      (%eax), %ecx
	shrl      $2, %ecx
	cmpl      %edi, %ecx
	jae       L00008C48
L00008C3C:
	movl      $14, (%esp)
	call      _pari_err
L00008C48:
	movl      88(%esp), %eax
	movl      %ebp, (%eax)
	movl      68(%esp), %eax
	cmpl      $3, %eax
	movl      64(%esp), %edx
	movl      104(%esp), %edi
	movl      84(%esp), %ecx
	jb        L00008C80
L00008C63:
	leal      (%ecx,%eax,4), %eax
	.align 4, 0x90
L00008C70:
	movl      -4(%eax), %ecx
	addl      $-4, %eax
	movl      %ecx, -4(%esi)
	addl      $-4, %esi
	cmpl      %edi, %eax
	ja        L00008C70
L00008C80:
	movl      80(%esp), %eax
	movl      100(%esp), %ecx
	leal      (%ecx,%eax,4), %edi
	movl      92(%esp), %eax
	testl     %eax, %eax
	movl      24(%esp), %ebx
	movl      60(%esp), %ebp
	jns       L00008CAE
L00008C9B:
	leal      (%esi,%eax,4), %eax
	.align 4, 0x90
L00008CA0:
	movl      $0, -4(%esi)
	addl      $-4, %esi
	cmpl      %eax, %esi
	ja        L00008CA0
L00008CAE:
	movl      76(%esp), %ecx
	jmp       L0000910C
L00008CB7:
	movl      36(%esp), %ebx
L00008CBB:
	movl      16(%esp), %ebp
	xorl      %edx, %edx
	jmp       L00008D56
L00008CC6:
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
L00008D20:
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
	jne       L00008D20
L00008D4A:
	movl      24(%esp), %edx
	movl      36(%esp), %ebx
	movl      16(%esp), %ebp
L00008D56:
	cmpl      20(%esp), %edx
	je        L00008E1F
L00008D60:
	movl      %edx, %ecx
	notl      %ecx
	cmpl      %ebp, %ebx
	cmovge    %ebx, %ebp
	subl      %ebp, %ecx
	movl      $-2, %eax
	subl      %edx, %eax
	subl      %ebp, %eax
	testb     $1, %cl
	je        L00008D99
L00008D79:
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
L00008D99:
	testl     %eax, %eax
	je        L00008E1F
L00008DA1:
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
L00008E00:
	movl      -4(%ecx,%ebx,4), %edx
	xorl      -4(%ebp,%ebx,4), %edx
	movl      %edx, (%eax,%ebx,4)
	movl      (%ecx,%ebx,4), %edx
	xorl      (%ebp,%ebx,4), %edx
	movl      %edx, 4(%eax,%ebx,4)
	addl      $2, %ebx
	cmpl      %ebx, 100(%esp)
	jne       L00008E00
L00008E1F:
	movl      32(%esp), %eax
	notl      %eax
	movl      72(%esp), %edx
L00008E29:
	cmpl      %edx, %eax
	jge       L00009095
L00008E31:
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
	je        L00008F50
L00008E5C:
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
	je        L00008F56
L00008E7F:
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
	ja        L00008EBA
L00008EA9:
	leal      (%ebp,%eax,4), %ecx
	notl      %edx
	leal      (%esi,%edx,4), %edx
	cmpl      %edx, %ecx
	jbe       L00008FBF
L00008EBA:
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
	je        L00008F3B
L00008EE0:
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
L00008F20:
	movups    (%ebp,%ebx,4), %xmm0
	movl      100(%esp), %ebp
	movups    %xmm0, (%ebp,%ebx,4)
	movl      104(%esp), %ebp
	addl      $4, %ebx
	addl      $-4, %ecx
	incl      %edx
	jne       L00008F20
L00008F3B:
	movl      44(%esp), %ebp
	addl      %eax, %ebp
	cmpl      $3, 40(%esp)
	movl      72(%esp), %edx
	jae       L00008F5C
L00008F4C:
	movl      %ebp, %eax
	jmp       L00008FC3
L00008F50:
	movl      %ebx, 84(%esp)
	jmp       L00008FCF
L00008F56:
	movl      %ebx, 84(%esp)
	jmp       L00008FBF
L00008F5C:
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
L00008F90:
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
	jne       L00008F90
L00008FBD:
	movl      %ebp, %eax
L00008FBF:
	movl      72(%esp), %edx
L00008FC3:
	movl      68(%esp), %ecx
	cmpl      %eax, %ecx
	je        L00009095
L00008FCF:
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
	je        L0000903C
L00008FFE:
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
L00009030:
	movl      (%ebx,%eax,4), %ebp
	movl      %ebp, (%ecx,%eax,4)
	incl      %eax
	incl      %edx
	jne       L00009030
L0000903A:
	jmp       L00009040
L0000903C:
	movl      104(%esp), %ebx
L00009040:
	cmpl      $3, 100(%esp)
	jb        L00009095
L00009047:
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
L00009070:
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
	jl        L00009070
L00009095:
	movl      56(%esp), %eax
	movl      %eax, 4(%esp)
	movl      88(%esp), %eax
	movl      %eax, (%esp)
	call      _Flx_renormalize
L000090A9:
	movl      96(%esp), %ecx
	cmpl      %ecx, 92(%esp)
	jg        L000090C5
L000090B3:
	movl      $16777215, %ecx
	andl      (%eax), %ecx
	addl      128(%esp), %ecx
	movl      %ecx, 80(%esp)
L000090C5:
	addl      $8, %eax
	cmpl      %eax, 48(%esp)
	movl      64(%esp), %edx
	movl      52(%esp), %ebx
	jbe       L000090F2
L000090D6:
	negl      %ebx
	.align 4, 0x90
L000090E0:
	movl      -4(%ebx,%esi), %ecx
	movl      %ecx, -4(%esi)
	leal      -4(%esi,%ebx), %ecx
	leal      -4(%esi), %esi
	cmpl      %eax, %ecx
	ja        L000090E0
L000090F2:
	movl      80(%esp), %ebx
	movl      76(%esp), %ecx
	movl      60(%esp), %ebp
	jmp       L0000910C
L00009100:
	movl      -4(%edi), %eax
	addl      $-4, %edi
	movl      %eax, -4(%esi)
	addl      $-4, %esi
L0000910C:
	cmpl      %ebp, %edi
	ja        L00009100
L00009110:
	movl      %edx, -4(%esi)
	cmpl      $16777216, %ebx
	jb        L00009131
L0000911B:
	leal      LC00009591-L0000896B(%ecx), %eax
	movl      %eax, 4(%esp)
	movl      $15, (%esp)
	call      _pari_err
L00009131:
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
L00009147:
	.align 4, 0x90
_bin_copy:
	pushl     %ebp
	pushl     %ebx
	pushl     %edi
	pushl     %esi
	subl      $44, %esp
	movl      %ecx, %esi
	call      L0000915E
L0000915E:
	popl      %ecx
	movl      4(%esi), %ebp
	testl     %ebp, %ebp
	je        L000091F2
L0000916A:
	movl      (%esi), %edx
	movl      %edx, 36(%esp)
	movl      %ebp, 32(%esp)
	subl      8(%esi), %ebp
	sarl      $2, %ebp
	movl      L_avma$non_lazy_ptr-L0000915E(%ecx), %eax
	movl      %eax, 24(%esp)
	movl      (%eax), %ebx
	movl      %ebx, 28(%esp)
	leal      0(,%edx,4), %edi
	movl      L_bot$non_lazy_ptr-L0000915E(%ecx), %eax
	movl      %ecx, 40(%esp)
	movl      %ebx, %ecx
	subl      (%eax), %ecx
	subl      %edi, %ebx
	shrl      $2, %ecx
	cmpl      %edx, %ecx
	jae       L000091B4
L000091A8:
	movl      $14, (%esp)
	call      _pari_err
L000091B4:
	movl      24(%esp), %eax
	movl      %ebx, (%eax)
	leal      16(%esi), %eax
	movl      %edi, 8(%esp)
	movl      %eax, 4(%esp)
	movl      %ebx, (%esp)
	call      _memcpy
L000091CD:
	subl      36(%esp), %ebp
	movl      28(%esp), %eax
	leal      (%eax,%ebp,4), %edi
	movl      %edi, %eax
	subl      32(%esp), %eax
	cmpl      $0, 12(%esi)
	je        L00009237
L000091E4:
	movl      %eax, 4(%esp)
	movl      %edi, (%esp)
	call      _shiftaddress_canon
L000091F0:
	jmp       L00009243
L000091F2:
	movl      %ecx, %ebp
	movl      L_PARI_SIGINT_block$non_lazy_ptr-L0000915E(%ebp), %edi
	movl      (%edi), %ebx
	movl      $1, (%edi)
	movl      %esi, (%esp)
	call      _free
L0000920A:
	movl      %ebx, (%edi)
	movl      %ebp, %esi
	testl     %ebx, %ebx
	jne       L0000922D
L00009212:
	movl      L_PARI_SIGINT_pending$non_lazy_ptr-L0000915E(%esi), %eax
	cmpl      $0, (%eax)
	je        L0000922D
L0000921D:
	movl      (%eax), %ecx
	movl      $0, (%eax)
	movl      %ecx, (%esp)
	call      _raise
L0000922D:
	movl      L_gen_0$non_lazy_ptr-L0000915E(%esi), %eax
	movl      (%eax), %edi
	jmp       L00009282
L00009237:
	movl      %eax, 4(%esp)
	movl      %edi, (%esp)
	call      _shiftaddress
L00009243:
	movl      40(%esp), %eax
	movl      L_PARI_SIGINT_block$non_lazy_ptr-L0000915E(%eax), %ebx
	movl      (%ebx), %ebp
	movl      $1, (%ebx)
	movl      %esi, (%esp)
	call      _free
L0000925D:
	movl      %ebp, (%ebx)
	testl     %ebp, %ebp
	jne       L00009282
L00009263:
	movl      40(%esp), %eax
	movl      L_PARI_SIGINT_pending$non_lazy_ptr-L0000915E(%eax), %eax
	cmpl      $0, (%eax)
	je        L00009282
L00009272:
	movl      (%eax), %ecx
	movl      $0, (%eax)
	movl      %ecx, (%esp)
	call      _raise
L00009282:
	movl      %edi, %eax
	addl      $44, %esp
	popl      %esi
	popl      %edi
	popl      %ebx
	popl      %ebp
	ret       
L0000928C:
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
L000092AF:
	addl      $12, %esp
	ret       
L000092B3:
	.align 4, 0x90
__F2xq_rand:
	pushl     %ebp
	pushl     %ebx
	pushl     %edi
	pushl     %esi
	subl      $12, %esp
	call      L000092CC
L000092CC:
	popl      %ebp
	movl      32(%esp), %edx
	movl      L_avma$non_lazy_ptr-L000092CC(%ebp), %edi
	movl      (%edi), %ebx
	movl      $16777215, %eax
	movl      (%edx), %ecx
	andl      %eax, %ecx
	movl      $-1, %esi
	cmpl      $2, %ecx
	je        L00009340
L000092EC:
	movl      -4(%edx,%ecx,4), %eax
	movl      %eax, %edx
	shrl      $16, %edx
	cmpl      $65535, %eax
	cmovbe    %eax, %edx
	movl      $12, %esi
	movl      $28, %eax
	cmova     %esi, %eax
	cmpl      $256, %edx
	jb        L00009318
L00009312:
	addl      $-8, %eax
	shrl      $8, %edx
L00009318:
	sall      $5, %ecx
	cmpl      $16, %edx
	jb        L00009326
L00009320:
	addl      $-4, %eax
	shrl      $4, %edx
L00009326:
	addl      $-65, %ecx
	subl      %eax, %ecx
	subl      _F2x_degree_lg.__bfffo_tabshi-L000092CC(%ebp,%edx,4), %ecx
	movl      %ecx, %esi
	movl      32(%esp), %edx
	.align 4, 0x90
L00009340:
	movl      %ebx, (%edi)
	movl      4(%edx), %eax
	movl      %eax, 4(%esp)
	movl      %esi, (%esp)
	movl      %edx, %ebp
	call      _random_F2x
L00009353:
	movl      %ebp, %edx
	movl      $16777215, %ebp
	movl      (%eax), %ecx
	andl      %ebp, %ecx
	cmpl      $2, %ecx
	je        L00009340
L00009363:
	addl      $12, %esp
	popl      %esi
	popl      %edi
	popl      %ebx
	popl      %ebp
	ret       
L0000936B:
	.align 4, 0x90
__F2xq_hash:
	movl      4(%esp), %eax
	movl      8(%eax), %eax
	ret       
L00009378:
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
	jbe       L000093BD
L000093A3:
	movl      $1, %ebx
	.align 4, 0x90
L000093B0:
	movl      (%eax,%ebx,4), %ebp
	cmpl      %ebp, (%esi,%ebx,4)
	jne       L000093D2
L000093B8:
	incl      %ebx
	cmpl      %edi, %ebx
	jl        L000093B0
L000093BD:
	xorl      %eax, %eax
	cmpl      %ecx, %edx
	je        L000093DF
L000093C3:
	movl      $-1, %ecx
	movl      $1, %eax
	cmovb     %ecx, %eax
	jmp       L000093DF
L000093D2:
	movl      $-1, %ecx
	movl      $1, %eax
	cmovl     %ecx, %eax
L000093DF:
	popl      %esi
	popl      %edi
	popl      %ebx
	popl      %ebp
	ret       
# ----------------------
	.section       __TEXT,__literal16,16byte_literals
	.align 4
LC000093F0:
	.long	-1
	.long	-2
	.long	-3
	.long	-4
	.align 4
LC00009400:
	.long	-1
	.long	-2
	.long	-3
	.long	-4
	.align 4
LC00009410:
	.ascii	"UUUUUUUUUUUUUUUU"
	.align 4
LC00009420:
	.long	-1
	.long	-2
	.long	-3
	.long	-4
	.align 4
LC00009430:
	.long	-1
	.long	-2
	.long	-3
	.long	-4
	.align 4
LC00009440:
	.long	-1
	.long	-2
	.long	-3
	.long	-4
	.align 4
LC00009450:
	.long	-1
	.long	-2
	.long	-3
	.long	-4
	.align 4
LC00009460:
	.long	-1
	.long	-2
	.long	-3
	.long	-4
	.align 4
LC00009470:
	.long	-1
	.long	-2
	.long	-3
	.long	-4
	.align 4
LC00009480:
	.ascii	"UUUUUUUUUUUUUUUU"
	.align 4
LC00009490:
	.long	-1
	.long	-2
	.long	-3
	.long	-4
	.align 4
LC000094A0:
	.long	-1
	.long	-2
	.long	-3
	.long	-4
	.align 4
LC000094B0:
	.long	-1
	.long	-2
	.long	-3
	.long	-4
# ----------------------
	.section       __TEXT,__const,regular
	.align 4
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
	.align 4
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
LC00009540:
	.string	"F2x_gcd (d = %ld)"
LC00009552:
	.string	"F2x_extgcd (d = %ld)"
LC00009567:
	.string	"F2xq_sqrt (i = %ld)"
LC0000957B:
	.string	"mallocing NULL object"
LC00009591:
	.string	"lg()"
# ----------------------
	.section       __DATA,__const,regular
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

.subsections_via_symbols
