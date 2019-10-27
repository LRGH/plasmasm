	.file	"F2x.c"
	.section       .text.__x86.get_pc_thunk.bx,"axG",@progbits,__x86.get_pc_thunk.bx,comdat
	.hidden	__x86.get_pc_thunk.bx
	.globl	__x86.get_pc_thunk.bx
	.type	__x86.get_pc_thunk.bx, @function
__x86.get_pc_thunk.bx:
	movl      (%esp), %ebx
	ret       
# ----------------------
	.section       .data.rel.ro.local,"wa",@progbits
	.local	F2xq_star
	.type	F2xq_star, @object
F2xq_star:
	.long	_F2xq_mul
	.long	_F2xq_pow
	.long	_F2xq_rand
	.long	_F2xq_hash
	.long	vecsmall_lexcmp
	.long	F2x_equal1
	.size	F2xq_star, 24
# ----------------------
	.section       .rodata.str1.1,"aMS",@progbits,1
.LC0:
	.string	"mallocing NULL object"
.LC1:
	.string	"lg()"
.LC2:
	.string	"F2x_gcd (d = %ld)"
.LC3:
	.string	"F2x_extgcd (d = %ld)"
.LC4:
	.string	"F2xq_sqrt (i = %ld)"
# ----------------------
	.section       .rodata
	.align 32
.LC00000000:
	.long	.L1082@GOTOFF
	.long	.L1087@GOTOFF
	.long	.L1089@GOTOFF
	.long	.L1090@GOTOFF
	.long	.L1091@GOTOFF
	.long	.L1092@GOTOFF
	.long	.L1093@GOTOFF
	.long	.L1094@GOTOFF
# ----------------------
	.local	__bfffo_tabshi.20469
	.type	__bfffo_tabshi.20469, @object
__bfffo_tabshi.20469:
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
	.size	__bfffo_tabshi.20469, 64
# ----------------------
	.text
	.local	vecsmall_lexcmp
	.type	vecsmall_lexcmp, @function
vecsmall_lexcmp:
	pushl     %ebp
	pushl     %edi
	pushl     %esi
	subl      $8, %esp
	movl      24(%esp), %esi
	movl      28(%esp), %edi
	movl      (%esi), %eax
	movl      %eax, (%esp)
	movl      (%edi), %eax
	andl      $16777215, (%esp)
	movl      (%esp), %edx
	movl      %eax, 4(%esp)
	andl      $16777215, 4(%esp)
	movl      4(%esp), %eax
	cmpl      %eax, %edx
	movl      %eax, %ebp
	cmovle    %edx, %ebp
	cmpl      $1, %ebp
	jle       .L00000061
.L0000003B:
	movl      4(%esi), %ecx
	movl      $1, %eax
	movl      4(%edi), %edx
	cmpl      %edx, %ecx
	je        .L0000005A
.L0000004A:
	jmp       .L00000080
.L0000004C:
	.p2align 3
.L00000050:
	movl      (%esi,%eax,4), %ecx
	movl      (%edi,%eax,4), %edx
	cmpl      %edx, %ecx
	jne       .L00000080
.L0000005A:
	addl      $1, %eax
	cmpl      %ebp, %eax
	jne       .L00000050
.L00000061:
	movl      4(%esp), %eax
	cmpl      %eax, (%esp)
	je        .L00000092
.L0000006A:
	setge     %al
	addl      $8, %esp
	movzbl    %al, %eax
	popl      %esi
	leal      -1(%eax,%eax), %eax
	popl      %edi
	popl      %ebp
	ret       
.L0000007B:
	.p2align 3
.L00000080:
	xorl      %eax, %eax
	cmpl      %edx, %ecx
	setge     %al
	addl      $8, %esp
	popl      %esi
	leal      -1(%eax,%eax), %eax
	popl      %edi
	popl      %ebp
	ret       
.L00000092:
	addl      $8, %esp
	xorl      %eax, %eax
	popl      %esi
	popl      %edi
	popl      %ebp
	ret       
	.size	vecsmall_lexcmp, .-vecsmall_lexcmp
# ----------------------
.L0000009B:
	.p2align 3
# ----------------------
	.local	F2x_equal1
	.type	F2x_equal1, @function
F2x_equal1:
	movl      4(%esp), %ecx
	xorl      %eax, %eax
	movl      (%ecx), %edx
	andl      $16777215, %edx
	cmpl      $3, %edx
	je        .L000000B8
.L000000B3:
	rep; ret       
.L000000B5:
	.p2align 3
.L000000B8:
	xorl      %eax, %eax
	cmpl      $1, 8(%ecx)
	sete      %al
	ret       
	.size	F2x_equal1, .-F2x_equal1
# ----------------------
.L000000C2:
	.p2align 4
# ----------------------
	.local	_F2xq_hash
	.type	_F2xq_hash, @function
_F2xq_hash:
	movl      4(%esp), %eax
	movl      8(%eax), %eax
	ret       
	.size	_F2xq_hash, .-_F2xq_hash
# ----------------------
.L000000D8:
	.p2align 4
# ----------------------
	.local	pari_malloc
	.type	pari_malloc, @function
pari_malloc:
	pushl     %ebp
	pushl     %edi
	pushl     %esi
	pushl     %ebx
	subl      $28, %esp
	call      __x86.get_pc_thunk.bx
.L000000EC:
	addl      $_GLOBAL_OFFSET_TABLE_, %ebx
	testl     %eax, %eax
	jne       .L00000110
.L000000F6:
	movl      DEBUGMEM@GOT(%ebx), %edx
	xorl      %eax, %eax
	movl      (%edx), %edx
	testl     %edx, %edx
	jne       .L00000158
.L00000104:
	addl      $28, %esp
	popl      %ebx
	popl      %esi
	popl      %edi
	popl      %ebp
	ret       
.L0000010C:
	.p2align 3
.L00000110:
	movl      PARI_SIGINT_block@GOT(%ebx), %esi
	movl      %eax, (%esp)
	movl      (%esi), %edi
	movl      $1, (%esi)
	call      malloc@PLT
.L00000126:
	testl     %edi, %edi
	movl      %edi, (%esi)
	movl      %eax, %ebp
	jne       .L0000013A
.L0000012E:
	movl      PARI_SIGINT_pending@GOT(%ebx), %eax
	movl      (%eax), %edx
	testl     %edx, %edx
	jne       .L00000180
.L0000013A:
	testl     %ebp, %ebp
	movl      %ebp, %eax
	jne       .L00000104
.L00000140:
	movl      $28, (%esp)
	movl      %ebp, 12(%esp)
	call      pari_err@PLT
.L00000150:
	movl      12(%esp), %eax
	jmp       .L00000104
.L00000156:
	.p2align 3
.L00000158:
	leal      .LC0@GOTOFF(%ebx), %edx
	movl      %edx, 4(%esp)
	movl      $0, (%esp)
	movl      %eax, 12(%esp)
	call      pari_warn@PLT
.L00000172:
	movl      12(%esp), %eax
	addl      $28, %esp
	popl      %ebx
	popl      %esi
	popl      %edi
	popl      %ebp
	ret       
.L0000017E:
	.p2align 3
.L00000180:
	movl      (%eax), %edx
	movl      $0, (%eax)
	movl      %edx, (%esp)
	call      raise@PLT
.L00000190:
	jmp       .L0000013A
	.size	pari_malloc, .-pari_malloc
# ----------------------
.L00000192:
	.p2align 4
# ----------------------
	.local	pari_free
	.type	pari_free, @function
pari_free:
	pushl     %edi
	pushl     %esi
	pushl     %ebx
	call      __x86.get_pc_thunk.bx
.L000001A8:
	addl      $_GLOBAL_OFFSET_TABLE_, %ebx
	subl      $16, %esp
	movl      %eax, (%esp)
	movl      PARI_SIGINT_block@GOT(%ebx), %esi
	movl      (%esi), %edi
	movl      $1, (%esi)
	call      free@PLT
.L000001C7:
	testl     %edi, %edi
	movl      %edi, (%esi)
	jne       .L000001D9
.L000001CD:
	movl      PARI_SIGINT_pending@GOT(%ebx), %eax
	movl      (%eax), %edx
	testl     %edx, %edx
	jne       .L000001E0
.L000001D9:
	addl      $16, %esp
	popl      %ebx
	popl      %esi
	popl      %edi
	ret       
.L000001E0:
	movl      (%eax), %edx
	movl      $0, (%eax)
	movl      %edx, (%esp)
	call      raise@PLT
.L000001F0:
	addl      $16, %esp
	popl      %ebx
	popl      %esi
	popl      %edi
	ret       
	.size	pari_free, .-pari_free
# ----------------------
.L000001F7:
	.p2align 4
# ----------------------
	.local	F2x_addspec
	.type	F2x_addspec, @function
F2x_addspec:
	pushl     %ebp
	movl      %eax, %ebp
	pushl     %edi
	pushl     %esi
	pushl     %ebx
	subl      $44, %esp
	movl      68(%esp), %edi
	call      __x86.get_pc_thunk.bx
.L00000212:
	addl      $_GLOBAL_OFFSET_TABLE_, %ebx
	cmpl      64(%esp), %edi
	jle       .L0000022E
.L0000021E:
	movl      64(%esp), %eax
	movl      %edi, 64(%esp)
	movl      %eax, %edi
	movl      %ebp, %eax
	movl      %edx, %ebp
	movl      %eax, %edx
.L0000022E:
	movl      64(%esp), %eax
	addl      $2, %eax
	movl      %eax, %esi
	movl      avma@GOT(%ebx), %eax
	movl      %esi, 20(%esp)
	sall      $2, %esi
	movl      %esi, 24(%esp)
	movl      (%eax), %ecx
	movl      %ecx, %eax
	subl      %esi, %eax
	movl      %eax, %esi
	movl      bot@GOT(%ebx), %eax
	subl      (%eax), %ecx
	shrl      $2, %ecx
	cmpl      %ecx, 20(%esp)
	jbe       .L00000275
.L00000261:
	movl      $14, (%esp)
	movl      %edx, 28(%esp)
	call      pari_err@PLT
.L00000271:
	movl      28(%esp), %edx
.L00000275:
	movl      avma@GOT(%ebx), %eax
	testl     $-16777216, 20(%esp)
	movl      %esi, (%eax)
	je        .L000002A5
.L00000287:
	leal      .LC1@GOTOFF(%ebx), %eax
	movl      %eax, 4(%esp)
	movl      $15, (%esp)
	movl      %edx, 28(%esp)
	call      pari_err@PLT
.L000002A1:
	movl      28(%esp), %edx
.L000002A5:
	movl      20(%esp), %eax
	orl       $738197504, %eax
	testl     %edi, %edi
	movl      %eax, (%esi)
	jle       .L00000308
.L000002B4:
	xorl      %eax, %eax
	.p2align 3
.L000002B8:
	movl      (%edx,%eax,4), %ecx
	xorl      (%ebp,%eax,4), %ecx
	movl      %ecx, 8(%esi,%eax,4)
	addl      $1, %eax
	cmpl      %edi, %eax
	jne       .L000002B8
.L000002CA:
	cmpl      %edi, 64(%esp)
	jle       .L000002F0
.L000002D0:
	movl      24(%esp), %edx
	leal      (%ebp,%edi,4), %eax
	leal      -8(%ebp,%edx), %ecx
	negl      %ebp
	.p2align 3
.L000002E0:
	movl      (%eax), %edi
	leal      (%eax,%esi), %edx
	addl      $4, %eax
	cmpl      %ecx, %eax
	movl      %edi, 8(%edx,%ebp)
	jne       .L000002E0
.L000002F0:
	movl      20(%esp), %eax
	movl      %esi, (%esp)
	movl      %eax, 4(%esp)
	call      Flx_renormalize@PLT
.L00000300:
	addl      $44, %esp
	popl      %ebx
	popl      %esi
	popl      %edi
	popl      %ebp
	ret       
.L00000308:
	xorl      %edi, %edi
	jmp       .L000002CA
	.size	F2x_addspec, .-F2x_addspec
# ----------------------
.L0000030C:
	.p2align 3
# ----------------------
	.local	F2x_addshift
	.type	F2x_addshift, @function
F2x_addshift:
	pushl     %ebp
	pushl     %edi
	movl      %edx, %edi
	pushl     %esi
	addl      $8, %edi
	pushl     %ebx
	subl      $60, %esp
	movl      (%edx), %ecx
	movl      %edx, 36(%esp)
	movl      (%eax), %edx
	call      __x86.get_pc_thunk.bx
.L00000329:
	addl      $_GLOBAL_OFFSET_TABLE_, %ebx
	movl      %ecx, 12(%esp)
	andl      $16777215, %edx
	subl      $2, %edx
	andl      $16777215, 12(%esp)
	movl      12(%esp), %ecx
	movl      %edx, 16(%esp)
	movl      4(%eax), %edx
	movl      avma@GOT(%ebx), %esi
	subl      $2, %ecx
	movl      %edx, 28(%esp)
	leal      8(%eax), %edx
	movl      %edx, 32(%esp)
	movl      %ecx, %edx
	movl      (%esi), %esi
	subl      80(%esp), %edx
	movl      %ecx, 24(%esp)
	testl     %edx, %edx
	movl      %edx, 20(%esp)
	jle       .L000004B8
.L0000037B:
	movl      80(%esp), %eax
	movl      %esi, %ebp
	movl      %esi, %ecx
	leal      0(,%eax,4), %edx
	movl      bot@GOT(%ebx), %eax
	subl      %edx, %ecx
	movl      %ecx, 44(%esp)
	subl      (%eax), %ebp
	movl      %ebp, %eax
	shrl      $2, %eax
	cmpl      %eax, 80(%esp)
	ja        .L00000490
.L000003A7:
	movl      avma@GOT(%ebx), %eax
	movl      20(%esp), %ebp
	movl      %ecx, 40(%esp)
	movl      %ecx, (%eax)
	leal      (%edi,%edx), %eax
	movl      16(%esp), %ecx
	movl      %eax, 24(%esp)
	movl      %eax, %edx
	movl      32(%esp), %eax
	movl      %ebp, 4(%esp)
	movl      %ecx, (%esp)
	call      F2x_addspec
.L000003D4:
	movl      16(%esp), %ecx
	cmpl      %ecx, %ebp
	movl      40(%esp), %ecx
	jle       .L00000470
.L000003E4:
	addl      $8, %eax
	cmpl      %ecx, %eax
	jae       .L000003FF
.L000003EB:
	movl      44(%esp), %ebp
	.p2align 3
.L000003F0:
	subl      $4, %ebp
	movl      (%ebp), %edx
	subl      $4, %esi
	cmpl      %ebp, %eax
	movl      %edx, (%esi)
	jb        .L000003F0
.L000003FF:
	movl      24(%esp), %eax
	cmpl      %eax, %edi
	jae       .L00000430
.L00000407:
	movl      %esi, %edx
	.p2align 4
.L00000410:
	subl      $4, %eax
	movl      (%eax), %ecx
	subl      $4, %edx
	cmpl      %eax, %edi
	movl      %ecx, (%edx)
	jb        .L00000410
.L0000041E:
	movl      24(%esp), %edx
	subl      36(%esp), %edx
	leal      -9(%edx), %eax
	notl      %eax
	andl      $-4, %eax
	addl      %eax, %esi
.L00000430:
	movl      28(%esp), %eax
	testl     $-16777216, 12(%esp)
	movl      %eax, -4(%esi)
	je        .L00000457
.L00000441:
	leal      .LC1@GOTOFF(%ebx), %eax
	movl      %eax, 4(%esp)
	movl      $15, (%esp)
	call      pari_err@PLT
.L00000457:
	movl      12(%esp), %eax
	orl       $738197504, %eax
	movl      %eax, -8(%esi)
	addl      $60, %esp
	popl      %ebx
	leal      -8(%esi), %eax
	popl      %esi
	popl      %edi
	popl      %ebp
	ret       
.L0000046E:
	.p2align 3
.L00000470:
	movl      (%eax), %edx
	addl      $8, %eax
	andl      $16777215, %edx
	addl      80(%esp), %edx
	cmpl      %ecx, %eax
	movl      %edx, 12(%esp)
	jb        .L000003EB
.L0000048B:
	jmp       .L000003FF
.L00000490:
	movl      $14, (%esp)
	movl      %ecx, 40(%esp)
	movl      %edx, 24(%esp)
	call      pari_err@PLT
.L000004A4:
	movl      40(%esp), %ecx
	movl      24(%esp), %edx
	jmp       .L000003A7
.L000004B1:
	.p2align 3
.L000004B8:
	movl      16(%esp), %ebp
	movl      80(%esp), %ecx
	cmpl      %ebp, 20(%esp)
	leal      2(%ebp,%ecx), %edx
	movl      %esi, %ebp
	cmovg     12(%esp), %edx
	movl      %edx, %ecx
	movl      %edx, 12(%esp)
	sall      $2, %edx
	subl      %edx, %ebp
	movl      bot@GOT(%ebx), %edx
	movl      %ebp, 40(%esp)
	movl      %esi, %ebp
	subl      (%edx), %ebp
	movl      %ebp, %edx
	shrl      $2, %edx
	cmpl      %edx, %ecx
	jbe       .L00000505
.L000004F1:
	movl      $14, (%esp)
	movl      %eax, 44(%esp)
	call      pari_err@PLT
.L00000501:
	movl      44(%esp), %eax
.L00000505:
	movl      avma@GOT(%ebx), %ecx
	movl      40(%esp), %edx
	movl      %edx, (%ecx)
	movl      32(%esp), %edx
	movl      16(%esp), %ecx
	leal      (%edx,%ecx,4), %ebp
	movl      24(%esp), %ecx
	cmpl      %ebp, %edx
	leal      (%edi,%ecx,4), %ecx
	movl      %ecx, 24(%esp)
	movl      %edx, %ecx
	jae       .L00000564
.L0000052D:
	movl      %edi, 16(%esp)
	movl      %ebp, %edx
	movl      %ecx, %edi
	movl      %eax, 32(%esp)
	.p2align 4
.L00000540:
	subl      $4, %edx
	movl      (%edx), %eax
	movl      %edx, %ecx
	subl      %ebp, %ecx
	cmpl      %edx, %edi
	movl      %eax, (%esi,%ecx)
	jb        .L00000540
.L00000550:
	movl      32(%esp), %eax
	movl      16(%esp), %edi
	subl      %eax, %ebp
	leal      -9(%ebp), %eax
	notl      %eax
	andl      $-4, %eax
	addl      %eax, %esi
.L00000564:
	movl      20(%esp), %eax
	leal      (%esi,%eax,4), %eax
	cmpl      %esi, %eax
	jae       .L000003FF
.L00000573:
	leal      -1(%esi), %edx
	subl      %eax, %edx
	shrl      $2, %edx
	leal      1(%edx), %ebp
	movl      %esi, %edx
	leal      0(,%ebp,4), %eax
	subl      %eax, %edx
	movl      %eax, 8(%esp)
	movl      $0, 4(%esp)
	movl      %edx, (%esp)
	call      memset@PLT
.L0000059D:
	movl      %ebp, %eax
	negl      %eax
	leal      (%esi,%eax,4), %esi
	jmp       .L000003FF
	.size	F2x_addshift, .-F2x_addshift
# ----------------------
.L000005A9:
	.p2align 4
# ----------------------
	.local	F2x_shiftip
	.type	F2x_shiftip, @function
F2x_shiftip:
	pushl     %ebp
	pushl     %edi
	pushl     %esi
	pushl     %ebx
	subl      $44, %esp
	movl      (%edx), %edi
	call      __x86.get_pc_thunk.bx
.L000005BE:
	addl      $_GLOBAL_OFFSET_TABLE_, %ebx
	movl      64(%esp), %ecx
	andl      $16777215, %edi
	cmpl      $2, %edi
	je        .L000006A8
.L000005D7:
	testl     %ecx, %ecx
	je        .L000006A8
.L000005DF:
	movl      avma@GOT(%ebx), %esi
	movl      %eax, (%esi)
	leal      (%edx,%edi,4), %esi
	movl      %esi, 20(%esp)
	movl      bot@GOT(%ebx), %esi
	leal      (%edi,%ecx), %edx
	movl      %edx, 16(%esp)
	leal      0(,%edx,4), %ebp
	movl      %eax, %edx
	subl      %ebp, %edx
	subl      (%esi), %eax
	shrl      $2, %eax
	cmpl      %eax, 16(%esp)
	ja        .L000006F8
.L00000615:
	movl      avma@GOT(%ebx), %eax
	addl      %edx, %ebp
	cmpl      $2, %edi
	movl      %edx, (%eax)
	jle       .L00000656
.L00000624:
	movl      20(%esp), %esi
	movl      %ebp, %edx
	movl      $2, %eax
	movl      %ecx, 64(%esp)
	.p2align 3
.L00000638:
	subl      $4, %esi
	movl      (%esi), %ecx
	addl      $1, %eax
	subl      $4, %edx
	cmpl      %edi, %eax
	movl      %ecx, (%edx)
	jne       .L00000638
.L00000649:
	movl      64(%esp), %ecx
	sall      $2, %eax
	negl      %eax
	leal      8(%ebp,%eax), %ebp
.L00000656:
	testl     %ecx, %ecx
	jle       .L0000067B
.L0000065A:
	leal      0(,%ecx,4), %esi
	movl      %ebp, %eax
	subl      %esi, %eax
	subl      %esi, %ebp
	movl      %esi, 8(%esp)
	movl      $0, 4(%esp)
	movl      %eax, (%esp)
	call      memset@PLT
.L0000067B:
	testl     $-16777216, 16(%esp)
	leal      -8(%ebp), %esi
	jne       .L00000738
.L0000068C:
	movl      16(%esp), %eax
	orl       $738197504, %eax
	movl      %eax, -8(%ebp)
	movl      %esi, %eax
.L0000069A:
	addl      $44, %esp
	popl      %ebx
	popl      %esi
	popl      %edi
	popl      %ebp
	ret       
.L000006A2:
	.p2align 3
.L000006A8:
	movl      bot@GOT(%ebx), %ecx
	cmpl      (%ecx), %edx
	jb        .L00000720
.L000006B2:
	movl      top@GOT(%ebx), %ecx
	cmpl      (%ecx), %edx
	jae       .L00000720
.L000006BC:
	cmpl      %eax, %edx
	jae       .L00000720
.L000006C0:
	movl      avma@GOT(%ebx), %esi
	leal      0(,%edi,4), %ecx
	subl      %ecx, %eax
	testl     %edi, %edi
	movl      %eax, (%esi)
	je        .L0000069A
.L000006D5:
	leal      -4(%ecx,%eax), %ecx
	subl      %eax, %edx
	leal      -4(%eax), %edi
	.p2align 3
.L000006E0:
	movl      (%edx,%ecx), %esi
	subl      $4, %ecx
	movl      %esi, 4(%ecx)
	cmpl      %edi, %ecx
	jne       .L000006E0
.L000006ED:
	addl      $44, %esp
	popl      %ebx
	popl      %esi
	popl      %edi
	popl      %ebp
	ret       
.L000006F5:
	.p2align 3
.L000006F8:
	movl      $14, (%esp)
	movl      %ecx, 28(%esp)
	movl      %edx, 24(%esp)
	call      pari_err@PLT
.L0000070C:
	movl      28(%esp), %ecx
	movl      24(%esp), %edx
	jmp       .L00000615
.L00000719:
	.p2align 4
.L00000720:
	movl      avma@GOT(%ebx), %ecx
	movl      %eax, (%ecx)
	addl      $44, %esp
	movl      %edx, %eax
	popl      %ebx
	popl      %esi
	popl      %edi
	popl      %ebp
	ret       
.L00000732:
	.p2align 3
.L00000738:
	leal      .LC1@GOTOFF(%ebx), %eax
	movl      %eax, 4(%esp)
	movl      $15, (%esp)
	call      pari_err@PLT
.L0000074E:
	jmp       .L0000068C
	.size	F2x_shiftip, .-F2x_shiftip
# ----------------------
.L00000753:
	.p2align 4
# ----------------------
	.local	bin_copy
	.type	bin_copy, @function
bin_copy:
	pushl     %ebp
	pushl     %edi
	pushl     %esi
	movl      %eax, %esi
	pushl     %ebx
	subl      $44, %esp
	movl      4(%eax), %edi
	call      __x86.get_pc_thunk.bx
.L00000771:
	addl      $_GLOBAL_OFFSET_TABLE_, %ebx
	testl     %edi, %edi
	je        .L00000868
.L0000077F:
	movl      %edi, %ebp
	subl      8(%eax), %ebp
	movl      (%eax), %eax
	movl      %ebp, 16(%esp)
	movl      bot@GOT(%ebx), %ebp
	sarl      $2, 16(%esp)
	leal      0(,%eax,4), %edx
	leal      16(%esi), %eax
	movl      %eax, 20(%esp)
	movl      avma@GOT(%ebx), %eax
	movl      (%eax), %ecx
	movl      %ecx, %eax
	subl      (%ebp), %ecx
	subl      %edx, %eax
	shrl      $2, %ecx
	cmpl      %ecx, (%esi)
	jbe       .L000007D5
.L000007B9:
	movl      $14, (%esp)
	movl      %eax, 28(%esp)
	movl      %edx, 24(%esp)
	call      pari_err@PLT
.L000007CD:
	movl      28(%esp), %eax
	movl      24(%esp), %edx
.L000007D5:
	movl      avma@GOT(%ebx), %ecx
	movl      %eax, (%ecx)
	movl      20(%esp), %ecx
	movl      %edx, 8(%esp)
	movl      %eax, (%esp)
	movl      %ecx, 4(%esp)
	call      memcpy@PLT
.L000007F1:
	movl      16(%esp), %ecx
	movl      12(%esi), %edx
	leal      (%eax,%ecx,4), %ebp
	movl      %ebp, %eax
	subl      %edi, %eax
	testl     %edx, %edx
	movl      %eax, 4(%esp)
	movl      %ebp, (%esp)
	jne       .L00000860
.L0000080A:
	call      shiftaddress@PLT
.L0000080F:
	movl      PARI_SIGINT_block@GOT(%ebx), %edi
	movl      (%edi), %edx
	movl      $1, (%edi)
	movl      %esi, (%esp)
	movl      %edx, 16(%esp)
	call      free@PLT
.L00000829:
	movl      16(%esp), %edx
	testl     %edx, %edx
	movl      %edx, (%edi)
	jne       .L0000084F
.L00000833:
	movl      PARI_SIGINT_pending@GOT(%ebx), %eax
	movl      (%eax), %edx
	testl     %edx, %edx
	je        .L0000084F
.L0000083F:
	movl      (%eax), %edx
	movl      $0, (%eax)
	movl      %edx, (%esp)
	call      raise@PLT
.L0000084F:
	addl      $44, %esp
	movl      %ebp, %eax
	popl      %ebx
	popl      %esi
	popl      %edi
	popl      %ebp
	ret       
.L00000859:
	.p2align 4
.L00000860:
	call      shiftaddress_canon@PLT
.L00000865:
	jmp       .L0000080F
.L00000867:
	.p2align 3
.L00000868:
	movl      PARI_SIGINT_block@GOT(%ebx), %edi
	movl      (%edi), %ebp
	movl      $1, (%edi)
	movl      %eax, (%esp)
	call      free@PLT
.L0000087E:
	testl     %ebp, %ebp
	movl      %ebp, (%edi)
	jne       .L00000890
.L00000884:
	movl      PARI_SIGINT_pending@GOT(%ebx), %eax
	movl      (%eax), %edx
	testl     %edx, %edx
	jne       .L000008A8
.L00000890:
	movl      gen_0@GOT(%ebx), %eax
	movl      (%eax), %ebp
	addl      $44, %esp
	popl      %ebx
	popl      %esi
	popl      %edi
	movl      %ebp, %eax
	popl      %ebp
	ret       
.L000008A2:
	.p2align 3
.L000008A8:
	movl      (%eax), %edx
	movl      $0, (%eax)
	movl      %edx, (%esp)
	call      raise@PLT
.L000008B8:
	jmp       .L00000890
	.size	bin_copy, .-bin_copy
# ----------------------
.L000008BA:
	.p2align 3
# ----------------------
	.local	gerepileall.constprop.4
	.type	gerepileall.constprop.4, @function
gerepileall.constprop.4:
	pushl     %ebp
	pushl     %edi
	pushl     %esi
	pushl     %ebx
	call      __x86.get_pc_thunk.bx
.L000008C9:
	addl      $_GLOBAL_OFFSET_TABLE_, %ebx
	subl      $108, %esp
	leal      56(%esp), %edi
	leal      76(%esp), %eax
	leal      140(%esp), %esi
	movl      %edi, 24(%esp)
	movl      %eax, 20(%esp)
	.p2align 4
.L000008F0:
	movl      -4(%esi), %ebp
	addl      $4, %edi
	addl      $4, %esi
	movl      (%ebp), %eax
	movl      %ebp, -4(%edi)
	movl      %eax, (%esp)
	call      copy_bin@PLT
.L00000907:
	cmpl      20(%esp), %edi
	movl      %eax, (%ebp)
	jne       .L000008F0
.L00000910:
	movl      128(%esp), %eax
	leal      72(%esp), %ebp
	movl      avma@GOT(%ebx), %edx
	movl      %ebp, 20(%esp)
	movl      %eax, (%edx)
	movl      24(%esp), %eax
	subl      $4, %eax
	movl      %eax, 36(%esp)
	jmp       .L00000994
.L00000934:
	.p2align 3
.L00000938:
	call      shiftaddress_canon@PLT
.L0000093D:
	movl      PARI_SIGINT_block@GOT(%ebx), %eax
	movl      (%eax), %edi
	movl      $1, (%eax)
	movl      %esi, (%esp)
	call      free@PLT
.L00000953:
	movl      PARI_SIGINT_block@GOT(%ebx), %eax
	testl     %edi, %edi
	movl      %edi, (%eax)
	jne       .L0000097B
.L0000095F:
	movl      PARI_SIGINT_pending@GOT(%ebx), %eax
	movl      (%eax), %edx
	testl     %edx, %edx
	je        .L0000097B
.L0000096B:
	movl      (%eax), %edx
	movl      $0, (%eax)
	movl      %edx, (%esp)
	call      raise@PLT
.L0000097B:
	movl      28(%esp), %eax
	subl      $4, 20(%esp)
	movl      %ebp, (%eax)
	movl      36(%esp), %eax
	cmpl      %eax, 20(%esp)
	je        .L00000A88
.L00000994:
	movl      20(%esp), %eax
	movl      (%eax), %eax
	movl      (%eax), %esi
	movl      %eax, 28(%esp)
	movl      4(%esi), %edi
	testl     %edi, %edi
	je        .L00000A48
.L000009AB:
	movl      (%esi), %eax
	movl      %edi, %ebp
	subl      8(%esi), %ebp
	leal      0(,%eax,4), %edx
	leal      16(%esi), %eax
	movl      %eax, 32(%esp)
	movl      avma@GOT(%ebx), %eax
	movl      %ebp, 24(%esp)
	movl      bot@GOT(%ebx), %ebp
	sarl      $2, 24(%esp)
	movl      (%eax), %eax
	movl      %eax, %ecx
	subl      (%ebp), %eax
	subl      %edx, %ecx
	shrl      $2, %eax
	cmpl      %eax, (%esi)
	jbe       .L00000A01
.L000009E5:
	movl      $14, (%esp)
	movl      %ecx, 44(%esp)
	movl      %edx, 40(%esp)
	call      pari_err@PLT
.L000009F9:
	movl      44(%esp), %ecx
	movl      40(%esp), %edx
.L00000A01:
	movl      avma@GOT(%ebx), %eax
	movl      %ecx, (%eax)
	movl      32(%esp), %eax
	movl      %edx, 8(%esp)
	movl      %ecx, (%esp)
	movl      %eax, 4(%esp)
	call      memcpy@PLT
.L00000A1D:
	movl      24(%esp), %edx
	leal      (%eax,%edx,4), %ebp
	movl      12(%esi), %edx
	movl      %ebp, %eax
	subl      %edi, %eax
	movl      %eax, 4(%esp)
	testl     %edx, %edx
	movl      %ebp, (%esp)
	jne       .L00000938
.L00000A3A:
	call      shiftaddress@PLT
.L00000A3F:
	jmp       .L0000093D
.L00000A44:
	.p2align 3
.L00000A48:
	movl      PARI_SIGINT_block@GOT(%ebx), %eax
	movl      (%eax), %edi
	movl      $1, (%eax)
	movl      %esi, (%esp)
	call      free@PLT
.L00000A5E:
	movl      PARI_SIGINT_block@GOT(%ebx), %eax
	testl     %edi, %edi
	movl      %edi, (%eax)
	jne       .L00000A76
.L00000A6A:
	movl      PARI_SIGINT_pending@GOT(%ebx), %eax
	movl      (%eax), %edx
	testl     %edx, %edx
	jne       .L00000A90
.L00000A76:
	movl      gen_0@GOT(%ebx), %eax
	movl      (%eax), %ebp
	jmp       .L0000097B
.L00000A83:
	.p2align 3
.L00000A88:
	addl      $108, %esp
	popl      %ebx
	popl      %esi
	popl      %edi
	popl      %ebp
	ret       
.L00000A90:
	movl      (%eax), %edx
	movl      $0, (%eax)
	movl      %edx, (%esp)
	call      raise@PLT
.L00000AA0:
	movl      gen_0@GOT(%ebx), %eax
	movl      (%eax), %ebp
	jmp       .L0000097B
	.size	gerepileall.constprop.4, .-gerepileall.constprop.4
# ----------------------
.L00000AAD:
	.p2align 3
# ----------------------
	.local	gerepileall.constprop.5
	.type	gerepileall.constprop.5, @function
gerepileall.constprop.5:
	pushl     %ebp
	movl      $1, %ebp
	pushl     %edi
	pushl     %esi
	pushl     %ebx
	subl      $108, %esp
	movl      136(%esp), %esi
	call      __x86.get_pc_thunk.bx
.L00000AC8:
	addl      $_GLOBAL_OFFSET_TABLE_, %ebx
	movl      (%esi), %eax
	movl      %esi, 56(%esp)
	movl      %eax, (%esp)
	call      copy_bin@PLT
.L00000ADC:
	movl      %eax, (%esi)
	movl      140(%esp), %esi
	movl      (%esi), %eax
	movl      %esi, 60(%esp)
	movl      %eax, (%esp)
	call      copy_bin@PLT
.L00000AF3:
	movl      avma@GOT(%ebx), %ecx
	movl      %ebp, 20(%esp)
	movl      %eax, (%esi)
	movl      128(%esp), %eax
	movl      %eax, (%ecx)
	leal      56(%esp), %eax
	movl      %eax, 36(%esp)
	jmp       .L00000B71
.L00000B12:
	.p2align 3
.L00000B18:
	call      shiftaddress_canon@PLT
.L00000B1D:
	movl      PARI_SIGINT_block@GOT(%ebx), %eax
	movl      (%eax), %edi
	movl      $1, (%eax)
	movl      %esi, (%esp)
	call      free@PLT
.L00000B33:
	movl      PARI_SIGINT_block@GOT(%ebx), %eax
	testl     %edi, %edi
	movl      %edi, (%eax)
	jne       .L00000B5B
.L00000B3F:
	movl      PARI_SIGINT_pending@GOT(%ebx), %eax
	movl      (%eax), %edx
	testl     %edx, %edx
	je        .L00000B5B
.L00000B4B:
	movl      (%eax), %edx
	movl      $0, (%eax)
	movl      %edx, (%esp)
	call      raise@PLT
.L00000B5B:
	movl      28(%esp), %eax
	subl      $1, 20(%esp)
	cmpl      $-1, 20(%esp)
	movl      %ebp, (%eax)
	je        .L00000C68
.L00000B71:
	movl      36(%esp), %eax
	movl      20(%esp), %edx
	movl      (%eax,%edx,4), %eax
	movl      (%eax), %esi
	movl      %eax, 28(%esp)
	movl      4(%esi), %edi
	testl     %edi, %edi
	je        .L00000C28
.L00000B8D:
	movl      (%esi), %eax
	movl      %edi, %ebp
	subl      8(%esi), %ebp
	leal      0(,%eax,4), %edx
	leal      16(%esi), %eax
	movl      %eax, 32(%esp)
	movl      avma@GOT(%ebx), %eax
	movl      %ebp, 24(%esp)
	movl      bot@GOT(%ebx), %ebp
	sarl      $2, 24(%esp)
	movl      (%eax), %eax
	movl      %eax, %ecx
	subl      (%ebp), %eax
	subl      %edx, %ecx
	shrl      $2, %eax
	cmpl      %eax, (%esi)
	jbe       .L00000BE3
.L00000BC7:
	movl      $14, (%esp)
	movl      %ecx, 44(%esp)
	movl      %edx, 40(%esp)
	call      pari_err@PLT
.L00000BDB:
	movl      44(%esp), %ecx
	movl      40(%esp), %edx
.L00000BE3:
	movl      avma@GOT(%ebx), %eax
	movl      %ecx, (%eax)
	movl      32(%esp), %eax
	movl      %edx, 8(%esp)
	movl      %ecx, (%esp)
	movl      %eax, 4(%esp)
	call      memcpy@PLT
.L00000BFF:
	movl      24(%esp), %ecx
	movl      12(%esi), %edx
	leal      (%eax,%ecx,4), %ebp
	movl      %ebp, %eax
	subl      %edi, %eax
	testl     %edx, %edx
	movl      %eax, 4(%esp)
	movl      %ebp, (%esp)
	jne       .L00000B18
.L00000C1C:
	call      shiftaddress@PLT
.L00000C21:
	jmp       .L00000B1D
.L00000C26:
	.p2align 3
.L00000C28:
	movl      PARI_SIGINT_block@GOT(%ebx), %eax
	movl      (%eax), %edi
	movl      $1, (%eax)
	movl      %esi, (%esp)
	call      free@PLT
.L00000C3E:
	movl      PARI_SIGINT_block@GOT(%ebx), %eax
	testl     %edi, %edi
	movl      %edi, (%eax)
	jne       .L00000C56
.L00000C4A:
	movl      PARI_SIGINT_pending@GOT(%ebx), %eax
	movl      (%eax), %edx
	testl     %edx, %edx
	jne       .L00000C70
.L00000C56:
	movl      gen_0@GOT(%ebx), %eax
	movl      (%eax), %ebp
	jmp       .L00000B5B
.L00000C63:
	.p2align 3
.L00000C68:
	addl      $108, %esp
	popl      %ebx
	popl      %esi
	popl      %edi
	popl      %ebp
	ret       
.L00000C70:
	movl      (%eax), %edx
	movl      $0, (%eax)
	movl      %edx, (%esp)
	call      raise@PLT
.L00000C80:
	movl      gen_0@GOT(%ebx), %eax
	movl      (%eax), %ebp
	jmp       .L00000B5B
	.size	gerepileall.constprop.5, .-gerepileall.constprop.5
# ----------------------
.L00000C8D:
	.p2align 3
# ----------------------
	.local	gerepileall
	.type	gerepileall, @function
gerepileall:
	pushl     %ebp
	pushl     %edi
	pushl     %esi
	pushl     %ebx
	subl      $108, %esp
	call      __x86.get_pc_thunk.bx
.L00000C9C:
	addl      $_GLOBAL_OFFSET_TABLE_, %ebx
	leal      136(%esp), %esi
	cmpl      $9, 132(%esp)
	jg        .L00000EC8
.L00000CB7:
	movl      132(%esp), %ebp
	testl     %ebp, %ebp
	jle       .L00001158
.L00000CC6:
	movl      132(%esp), %edx
	leal      56(%esp), %eax
	movl      %eax, 36(%esp)
	movl      %eax, %esi
	leal      140(%esp), %edi
	leal      (%eax,%edx,4), %eax
	movl      %eax, 12(%esp)
	.p2align 3
.L00000CE8:
	movl      -4(%edi), %ebp
	addl      $4, %esi
	addl      $4, %edi
	movl      (%ebp), %eax
	movl      %ebp, -4(%esi)
	movl      %eax, (%esp)
	call      copy_bin@PLT
.L00000CFF:
	cmpl      12(%esp), %esi
	movl      %eax, (%ebp)
	jne       .L00000CE8
.L00000D08:
	movl      132(%esp), %eax
	movl      128(%esp), %edx
	leal      -1(%eax), %ebp
	movl      avma@GOT(%ebx), %eax
	movl      %ebp, 16(%esp)
	movl      %eax, 24(%esp)
	movl      %edx, (%eax)
	movl      PARI_SIGINT_block@GOT(%ebx), %eax
	movl      %eax, 12(%esp)
	jmp       .L00000D8D
.L00000D35:
	.p2align 3
.L00000D38:
	call      shiftaddress_canon@PLT
.L00000D3D:
	movl      12(%esp), %eax
	movl      (%eax), %edi
	movl      $1, (%eax)
	movl      %esi, (%esp)
	call      free@PLT
.L00000D51:
	movl      12(%esp), %eax
	testl     %edi, %edi
	movl      %edi, (%eax)
	jne       .L00000D77
.L00000D5B:
	movl      PARI_SIGINT_pending@GOT(%ebx), %eax
	movl      (%eax), %edx
	testl     %edx, %edx
	je        .L00000D77
.L00000D67:
	movl      (%eax), %edx
	movl      $0, (%eax)
	movl      %edx, (%esp)
	call      raise@PLT
.L00000D77:
	movl      28(%esp), %eax
	subl      $1, 16(%esp)
	cmpl      $-1, 16(%esp)
	movl      %ebp, (%eax)
	je        .L00000E80
.L00000D8D:
	movl      36(%esp), %eax
	movl      16(%esp), %edx
	movl      (%eax,%edx,4), %eax
	movl      (%eax), %esi
	movl      %eax, 28(%esp)
	movl      4(%esi), %edi
	testl     %edi, %edi
	je        .L00000E88
.L00000DA9:
	movl      (%esi), %eax
	movl      %edi, %ebp
	subl      8(%esi), %ebp
	leal      0(,%eax,4), %edx
	leal      16(%esi), %eax
	movl      %eax, 32(%esp)
	movl      24(%esp), %eax
	movl      %ebp, 20(%esp)
	movl      bot@GOT(%ebx), %ebp
	sarl      $2, 20(%esp)
	movl      (%eax), %eax
	movl      %eax, %ecx
	subl      (%ebp), %eax
	subl      %edx, %ecx
	shrl      $2, %eax
	cmpl      %eax, (%esi)
	jbe       .L00000DFD
.L00000DE1:
	movl      $14, (%esp)
	movl      %ecx, 44(%esp)
	movl      %edx, 40(%esp)
	call      pari_err@PLT
.L00000DF5:
	movl      44(%esp), %ecx
	movl      40(%esp), %edx
.L00000DFD:
	movl      24(%esp), %eax
	movl      %ecx, (%eax)
	movl      32(%esp), %eax
	movl      %edx, 8(%esp)
	movl      %ecx, (%esp)
	movl      %eax, 4(%esp)
	call      memcpy@PLT
.L00000E17:
	movl      20(%esp), %edx
	leal      (%eax,%edx,4), %ebp
	movl      %ebp, %eax
	subl      %edi, %eax
	movl      12(%esi), %edi
	movl      %eax, 4(%esp)
	movl      %ebp, (%esp)
	testl     %edi, %edi
	jne       .L00000D38
.L00000E34:
	call      shiftaddress@PLT
.L00000E39:
	jmp       .L00000D3D
.L00000E3E:
	.p2align 3
.L00000E40:
	movl      12(%esp), %edi
	movl      20(%esp), %eax
	movl      (%edi), %esi
	movl      $1, (%edi)
	movl      %eax, (%esp)
	call      free@PLT
.L00000E58:
	testl     %esi, %esi
	movl      %esi, (%edi)
	jne       .L00000E80
.L00000E5E:
	movl      PARI_SIGINT_pending@GOT(%ebx), %eax
	movl      (%eax), %edx
	testl     %edx, %edx
	je        .L00000E80
.L00000E6A:
	movl      (%eax), %edx
	movl      $0, (%eax)
	movl      %edx, (%esp)
	call      raise@PLT
.L00000E7A:
	.p2align 3
.L00000E80:
	addl      $108, %esp
	popl      %ebx
	popl      %esi
	popl      %edi
	popl      %ebp
	ret       
.L00000E88:
	movl      12(%esp), %ebp
	movl      (%ebp), %edi
	movl      $1, (%ebp)
	movl      %esi, (%esp)
	call      free@PLT
.L00000E9E:
	testl     %edi, %edi
	movl      %edi, (%ebp)
	jne       .L00000EB5
.L00000EA5:
	movl      PARI_SIGINT_pending@GOT(%ebx), %eax
	movl      (%eax), %edx
	testl     %edx, %edx
	jne       .L00001058
.L00000EB5:
	movl      gen_0@GOT(%ebx), %eax
	movl      (%eax), %ebp
	jmp       .L00000D77
.L00000EC2:
	.p2align 3
.L00000EC8:
	movl      132(%esp), %eax
	sall      $2, %eax
	testl     %eax, %eax
	jne       .L000010F0
.L00000EDA:
	movl      DEBUGMEM@GOT(%ebx), %eax
	movl      (%eax), %ecx
	testl     %ecx, %ecx
	jne       .L00001075
.L00000EEA:
	movl      PARI_SIGINT_block@GOT(%ebx), %eax
	movl      $0, 20(%esp)
	movl      %eax, 12(%esp)
.L00000EFC:
	leal      4(%esi), %edi
	xorl      %esi, %esi
	.p2align 3
.L00000F08:
	movl      -4(%edi), %ebp
	addl      $4, %edi
	movl      20(%esp), %eax
	movl      %ebp, (%eax,%esi,4)
	movl      (%ebp), %eax
	addl      $1, %esi
	movl      %eax, (%esp)
	call      copy_bin@PLT
.L00000F23:
	cmpl      132(%esp), %esi
	movl      %eax, (%ebp)
	jne       .L00000F08
.L00000F2F:
	leal      -1(%esi), %eax
	movl      128(%esp), %ecx
	movl      %eax, 28(%esp)
	movl      avma@GOT(%ebx), %eax
	movl      %eax, 24(%esp)
	movl      %ecx, (%eax)
	jmp       .L00000FA0
.L00000F4B:
	.p2align 3
.L00000F50:
	call      shiftaddress_canon@PLT
.L00000F55:
	movl      12(%esp), %eax
	movl      (%eax), %edi
	movl      $1, (%eax)
	movl      %esi, (%esp)
	call      free@PLT
.L00000F69:
	movl      12(%esp), %eax
	testl     %edi, %edi
	movl      %edi, (%eax)
	jne       .L00000F8F
.L00000F73:
	movl      PARI_SIGINT_pending@GOT(%ebx), %eax
	movl      (%eax), %edx
	testl     %edx, %edx
	je        .L00000F8F
.L00000F7F:
	movl      (%eax), %edx
	movl      $0, (%eax)
	movl      %edx, (%esp)
	call      raise@PLT
.L00000F8F:
	movl      32(%esp), %eax
	subl      $1, 28(%esp)
	movl      %ebp, (%eax)
	js        .L00000E40
.L00000FA0:
	movl      20(%esp), %eax
	movl      28(%esp), %ecx
	movl      (%eax,%ecx,4), %eax
	movl      (%eax), %esi
	movl      %eax, 32(%esp)
	movl      4(%esi), %edi
	testl     %edi, %edi
	je        .L000010A8
.L00000FBC:
	movl      (%esi), %eax
	movl      %edi, %ebp
	subl      8(%esi), %ebp
	leal      0(,%eax,4), %edx
	leal      16(%esi), %eax
	movl      %eax, 36(%esp)
	movl      24(%esp), %eax
	movl      %ebp, 16(%esp)
	movl      bot@GOT(%ebx), %ebp
	sarl      $2, 16(%esp)
	movl      (%eax), %eax
	movl      %eax, %ecx
	subl      (%ebp), %eax
	subl      %edx, %ecx
	shrl      $2, %eax
	cmpl      %eax, (%esi)
	jbe       .L00001010
.L00000FF4:
	movl      $14, (%esp)
	movl      %ecx, 44(%esp)
	movl      %edx, 40(%esp)
	call      pari_err@PLT
.L00001008:
	movl      44(%esp), %ecx
	movl      40(%esp), %edx
.L00001010:
	movl      24(%esp), %eax
	movl      %ecx, (%eax)
	movl      36(%esp), %eax
	movl      %edx, 8(%esp)
	movl      %ecx, (%esp)
	movl      %eax, 4(%esp)
	call      memcpy@PLT
.L0000102A:
	movl      16(%esp), %ecx
	movl      12(%esi), %edx
	leal      (%eax,%ecx,4), %ebp
	movl      %ebp, %eax
	subl      %edi, %eax
	testl     %edx, %edx
	movl      %eax, 4(%esp)
	movl      %ebp, (%esp)
	jne       .L00000F50
.L00001047:
	call      shiftaddress@PLT
.L0000104C:
	jmp       .L00000F55
.L00001051:
	.p2align 3
.L00001058:
	movl      (%eax), %edx
	movl      $0, (%eax)
	movl      %edx, (%esp)
	call      raise@PLT
.L00001068:
	movl      gen_0@GOT(%ebx), %eax
	movl      (%eax), %ebp
	jmp       .L00000D77
.L00001075:
	leal      .LC0@GOTOFF(%ebx), %eax
	movl      %eax, 4(%esp)
	movl      $0, (%esp)
	call      pari_warn@PLT
.L0000108B:
	movl      PARI_SIGINT_block@GOT(%ebx), %eax
	movl      $0, 20(%esp)
	movl      %eax, 12(%esp)
	jmp       .L00000EFC
.L000010A2:
	.p2align 3
.L000010A8:
	movl      12(%esp), %ebp
	movl      (%ebp), %edi
	movl      $1, (%ebp)
	movl      %esi, (%esp)
	call      free@PLT
.L000010BE:
	testl     %edi, %edi
	movl      %edi, (%ebp)
	jne       .L000010E1
.L000010C5:
	movl      PARI_SIGINT_pending@GOT(%ebx), %eax
	movl      (%eax), %edx
	testl     %edx, %edx
	je        .L000010E1
.L000010D1:
	movl      (%eax), %edx
	movl      $0, (%eax)
	movl      %edx, (%esp)
	call      raise@PLT
.L000010E1:
	movl      gen_0@GOT(%ebx), %eax
	movl      (%eax), %ebp
	jmp       .L00000F8F
.L000010EE:
	.p2align 3
.L000010F0:
	movl      PARI_SIGINT_block@GOT(%ebx), %ecx
	movl      (%ecx), %ebp
	movl      $1, (%ecx)
	movl      %eax, (%esp)
	movl      %ecx, 12(%esp)
	call      malloc@PLT
.L0000110A:
	movl      12(%esp), %ecx
	testl     %ebp, %ebp
	movl      %ebp, (%ecx)
	movl      %eax, %edi
	jne       .L00001138
.L00001116:
	movl      PARI_SIGINT_pending@GOT(%ebx), %eax
	movl      (%eax), %ecx
	testl     %ecx, %ecx
	je        .L00001138
.L00001122:
	movl      (%eax), %ecx
	movl      $0, (%eax)
	movl      %ecx, (%esp)
	call      raise@PLT
.L00001132:
	.p2align 3
.L00001138:
	testl     %edi, %edi
	movl      %edi, 20(%esp)
	jne       .L00000EFC
.L00001144:
	movl      $28, (%esp)
	call      pari_err@PLT
.L00001150:
	jmp       .L00000EFC
.L00001155:
	.p2align 3
.L00001158:
	movl      avma@GOT(%ebx), %eax
	movl      128(%esp), %edx
	movl      %edx, (%eax)
	jmp       .L00000E80
	.size	gerepileall, .-gerepileall
# ----------------------
.L0000116C:
	.p2align 3
# ----------------------
	.globl	F2x_degree
	.type	F2x_degree, @function
F2x_degree:
	pushl     %esi
	pushl     %ebx
	movl      12(%esp), %ecx
	call      __x86.get_pc_thunk.bx
.L0000117B:
	addl      $_GLOBAL_OFFSET_TABLE_, %ebx
	movl      (%ecx), %edx
	andl      $16777215, %edx
	cmpl      $2, %edx
	je        .L000011E8
.L0000118E:
	leal      -2(%edx), %eax
	movl      -4(%ecx,%edx,4), %edx
	sall      $5, %eax
	testl     $-65536, %edx
	jne       .L000011D8
.L000011A0:
	movl      $20, %esi
	movl      $28, %ecx
.L000011AA:
	testl     $-256, %edx
	je        .L000011B7
.L000011B2:
	shrl      $8, %edx
	movl      %esi, %ecx
.L000011B7:
	testl     $-16, %edx
	je        .L000011C5
.L000011BF:
	subl      $4, %ecx
	shrl      $4, %edx
.L000011C5:
	addl      __bfffo_tabshi.20469@GOTOFF(%ebx,%edx,4), %ecx
	subl      %ecx, %eax
	subl      $1, %eax
.L000011D1:
	popl      %ebx
	popl      %esi
	ret       
.L000011D4:
	.p2align 3
.L000011D8:
	shrl      $16, %edx
	movl      $4, %esi
	movl      $12, %ecx
	jmp       .L000011AA
.L000011E7:
	.p2align 3
.L000011E8:
	movl      $-1, %eax
	jmp       .L000011D1
	.size	F2x_degree, .-F2x_degree
# ----------------------
.L000011EF:
	.p2align 3
# ----------------------
	.globl	F2x_to_ZX
	.type	F2x_to_ZX, @function
F2x_to_ZX:
	pushl     %ebp
	pushl     %edi
	pushl     %esi
	pushl     %ebx
	subl      $28, %esp
	call      __x86.get_pc_thunk.bx
.L000011FC:
	addl      $_GLOBAL_OFFSET_TABLE_, %ebx
	movl      48(%esp), %edi
	movl      %edi, (%esp)
	call      F2x_degree@PLT
.L0000120E:
	movl      avma@GOT(%ebx), %esi
	addl      $3, %eax
	movl      %eax, %ecx
	movl      %eax, 8(%esp)
	movl      (%esi), %eax
	leal      0(,%ecx,4), %edx
	movl      %eax, %ebp
	subl      %edx, %ebp
	movl      bot@GOT(%ebx), %edx
	movl      %ebp, 12(%esp)
	subl      (%edx), %eax
	shrl      $2, %eax
	cmpl      %eax, %ecx
	jbe       .L00001249
.L0000123D:
	movl      $14, (%esp)
	call      pari_err@PLT
.L00001249:
	movl      12(%esp), %eax
	testl     $-16777216, 8(%esp)
	movl      %eax, (%esi)
	je        .L0000126F
.L00001259:
	leal      .LC1@GOTOFF(%ebx), %eax
	movl      %eax, 4(%esp)
	movl      $15, (%esp)
	call      pari_err@PLT
.L0000126F:
	movl      8(%esp), %eax
	movl      12(%esp), %ecx
	orl       $335544320, %eax
	movl      %eax, (%ecx)
	movl      (%edi), %ecx
	movl      %ecx, %eax
	andl      $16777215, %eax
	cmpl      $2, %eax
	jle       .L000012EA
.L0000128C:
	movl      $2, %ebp
	movl      $2, %eax
	.p2align 3
.L00001298:
	cmpl      %eax, 8(%esp)
	jle       .L000012DB
.L0000129E:
	xorl      %ecx, %ecx
	jmp       .L000012AD
.L000012A2:
	.p2align 3
.L000012A8:
	cmpl      $31, %ecx
	jg        .L000012D9
.L000012AD:
	movl      gen_0@GOT(%ebx), %esi
	movl      (%esi), %edx
	movl      (%edi,%ebp,4), %esi
	shrl      %cl, %esi
	andl      $1, %esi
	movl      gen_1@GOT(%ebx), %esi
	cmovne    (%esi), %edx
	addl      $1, %ecx
	movl      12(%esp), %esi
	movl      %edx, (%esi,%eax,4)
	addl      $1, %eax
	cmpl      %eax, 8(%esp)
	jg        .L000012A8
.L000012D9:
	movl      (%edi), %ecx
.L000012DB:
	movl      %ecx, %edx
	addl      $1, %ebp
	andl      $16777215, %edx
	cmpl      %ebp, %edx
	jg        .L00001298
.L000012EA:
	cmpl      $3, 8(%esp)
	movl      $1073741824, %eax
	movl      $0, %edx
	cmovl     %edx, %eax
	orl       4(%edi), %eax
	movl      12(%esp), %edi
	movl      %eax, 4(%edi)
	addl      $28, %esp
	movl      %edi, %eax
	popl      %ebx
	popl      %esi
	popl      %edi
	popl      %ebp
	ret       
	.size	F2x_to_ZX, .-F2x_to_ZX
# ----------------------
	.globl	F2xC_to_ZXC
	.type	F2xC_to_ZXC, @function
F2xC_to_ZXC:
	pushl     %ebp
	pushl     %edi
	pushl     %esi
	pushl     %ebx
	subl      $28, %esp
	call      __x86.get_pc_thunk.bx
.L0000131C:
	addl      $_GLOBAL_OFFSET_TABLE_, %ebx
	movl      48(%esp), %ebp
	movl      (%ebp), %eax
	movl      avma@GOT(%ebx), %esi
	movl      %eax, 12(%esp)
	andl      $16777215, 12(%esp)
	movl      (%esi), %eax
	movl      12(%esp), %edx
	movl      %eax, %edi
	leal      0(,%edx,4), %ecx
	subl      %ecx, %edi
	movl      bot@GOT(%ebx), %ecx
	subl      (%ecx), %eax
	shrl      $2, %eax
	cmpl      %eax, %edx
	jbe       .L0000136B
.L0000135B:
	movl      $14, (%esp)
	call      pari_err@PLT
.L00001367:
	movl      12(%esp), %edx
.L0000136B:
	movl      %edx, %eax
	orl       $603979776, %eax
	cmpl      $1, %edx
	movl      %edi, (%esi)
	movl      $1, %esi
	movl      %eax, (%edi)
	jle       .L00001398
.L00001380:
	movl      (%ebp,%esi,4), %eax
	movl      %eax, (%esp)
	call      F2x_to_ZX@PLT
.L0000138C:
	movl      %eax, (%edi,%esi,4)
	addl      $1, %esi
	cmpl      12(%esp), %esi
	jne       .L00001380
.L00001398:
	addl      $28, %esp
	movl      %edi, %eax
	popl      %ebx
	popl      %esi
	popl      %edi
	popl      %ebp
	ret       
	.size	F2xC_to_ZXC, .-F2xC_to_ZXC
# ----------------------
.L000013A2:
	.p2align 4
# ----------------------
	.globl	F2x_to_Flx
	.type	F2x_to_Flx, @function
F2x_to_Flx:
	pushl     %ebp
	pushl     %edi
	pushl     %esi
	pushl     %ebx
	subl      $28, %esp
	call      __x86.get_pc_thunk.bx
.L000013BC:
	addl      $_GLOBAL_OFFSET_TABLE_, %ebx
	movl      48(%esp), %ebp
	movl      %ebp, (%esp)
	call      F2x_degree@PLT
.L000013CE:
	movl      avma@GOT(%ebx), %esi
	movl      (%esi), %edx
	addl      $3, %eax
	movl      %eax, %edi
	movl      %edx, %ecx
	movl      %eax, 8(%esp)
	sall      $2, %eax
	subl      %eax, %ecx
	movl      %ecx, %eax
	movl      bot@GOT(%ebx), %ecx
	subl      (%ecx), %edx
	shrl      $2, %edx
	cmpl      %edx, %edi
	jbe       .L0000140B
.L000013F7:
	movl      $14, (%esp)
	movl      %eax, 12(%esp)
	call      pari_err@PLT
.L00001407:
	movl      12(%esp), %eax
.L0000140B:
	testl     $-16777216, 8(%esp)
	movl      %eax, (%esi)
	je        .L00001435
.L00001417:
	leal      .LC1@GOTOFF(%ebx), %edx
	movl      %edx, 4(%esp)
	movl      $15, (%esp)
	movl      %eax, 12(%esp)
	call      pari_err@PLT
.L00001431:
	movl      12(%esp), %eax
.L00001435:
	movl      8(%esp), %edx
	orl       $738197504, %edx
	movl      %edx, (%eax)
	movl      4(%ebp), %edx
	movl      %edx, 4(%eax)
	movl      (%ebp), %ecx
	movl      %ecx, %edx
	andl      $16777215, %edx
	cmpl      $2, %edx
	jle       .L000014A7
.L00001457:
	movl      $2, %edi
	movl      $2, %esi
	.p2align 3
.L00001468:
	cmpl      %esi, 8(%esp)
	jle       .L00001498
.L0000146E:
	xorl      %ecx, %ecx
	jmp       .L0000147D
.L00001472:
	.p2align 3
.L00001478:
	cmpl      $31, %ecx
	jg        .L00001495
.L0000147D:
	movl      (%ebp,%edi,4), %edx
	sarl      %cl, %edx
	addl      $1, %ecx
	andl      $1, %edx
	movl      %edx, (%eax,%esi,4)
	addl      $1, %esi
	cmpl      %esi, 8(%esp)
	jg        .L00001478
.L00001495:
	movl      (%ebp), %ecx
.L00001498:
	movl      %ecx, %edx
	addl      $1, %edi
	andl      $16777215, %edx
	cmpl      %edi, %edx
	jg        .L00001468
.L000014A7:
	addl      $28, %esp
	popl      %ebx
	popl      %esi
	popl      %edi
	popl      %ebp
	ret       
	.size	F2x_to_Flx, .-F2x_to_Flx
# ----------------------
.L000014AF:
	.p2align 3
# ----------------------
	.globl	Z_to_F2x
	.type	Z_to_F2x, @function
Z_to_F2x:
	pushl     %ebp
	pushl     %edi
	pushl     %esi
	pushl     %ebx
	subl      $28, %esp
	movl      48(%esp), %eax
	call      __x86.get_pc_thunk.bx
.L000014C0:
	addl      $_GLOBAL_OFFSET_TABLE_, %ebx
	movl      4(%eax), %edx
	movl      %edx, %ecx
	sarl      $30, %ecx
	testl     %ecx, %ecx
	je        .L00001520
.L000014D2:
	andl      $16777215, %edx
	testb     $1, -4(%eax,%edx,4)
	je        .L00001520
.L000014DF:
	movl      avma@GOT(%ebx), %esi
	movl      bot@GOT(%ebx), %eax
	movl      (%esi), %ebp
	movl      %ebp, %ecx
	subl      (%eax), %ecx
	leal      -12(%ebp), %edi
	cmpl      $11, %ecx
	jbe       .L00001568
.L000014F9:
	movl      52(%esp), %eax
	movl      %edi, (%esi)
	movl      $738197507, -12(%ebp)
	movl      $1, 8(%edi)
	movl      %eax, 4(%edi)
	addl      $28, %esp
	movl      %edi, %eax
	popl      %ebx
	popl      %esi
	popl      %edi
	popl      %ebp
	ret       
.L0000151A:
	.p2align 3
.L00001520:
	movl      avma@GOT(%ebx), %esi
	movl      bot@GOT(%ebx), %eax
	movl      (%esi), %edi
	movl      %edi, %edx
	subl      (%eax), %edx
	leal      -8(%edi), %ebp
	cmpl      $7, %edx
	jbe       .L00001558
.L0000153A:
	movl      52(%esp), %eax
	movl      %ebp, (%esi)
	movl      $738197506, -8(%edi)
	movl      %eax, 4(%ebp)
	addl      $28, %esp
	movl      %ebp, %eax
	popl      %ebx
	popl      %esi
	popl      %edi
	popl      %ebp
	ret       
.L00001554:
	.p2align 3
.L00001558:
	movl      $14, (%esp)
	call      pari_err@PLT
.L00001564:
	jmp       .L0000153A
.L00001566:
	.p2align 3
.L00001568:
	movl      $14, (%esp)
	call      pari_err@PLT
.L00001574:
	jmp       .L000014F9
	.size	Z_to_F2x, .-Z_to_F2x
# ----------------------
.L00001576:
	.p2align 4
# ----------------------
	.globl	ZX_to_F2x
	.type	ZX_to_F2x, @function
ZX_to_F2x:
	pushl     %ebp
	pushl     %edi
	pushl     %esi
	pushl     %ebx
	subl      $44, %esp
	movl      64(%esp), %ebp
	call      __x86.get_pc_thunk.bx
.L00001590:
	addl      $_GLOBAL_OFFSET_TABLE_, %ebx
	movl      (%ebp), %eax
	movl      avma@GOT(%ebx), %esi
	andl      $16777215, %eax
	addl      $93, %eax
	movl      %eax, 28(%esp)
	shrl      $5, 28(%esp)
	movl      28(%esp), %edi
	movl      (%esi), %eax
	movl      %edi, %edx
	sall      $2, %edx
	movl      %eax, %ecx
	subl      %edx, %ecx
	movl      bot@GOT(%ebx), %edx
	movl      %ecx, 24(%esp)
	subl      (%edx), %eax
	shrl      $2, %eax
	cmpl      %eax, %edi
	jbe       .L000015DE
.L000015D2:
	movl      $14, (%esp)
	call      pari_err@PLT
.L000015DE:
	movl      28(%esp), %eax
	movl      24(%esp), %edx
	movl      $1, 20(%esp)
	orl       $738197504, %eax
	movl      %edx, (%esi)
	movl      %eax, (%edx)
	movl      4(%ebp), %eax
	andl      $1073676288, %eax
	movl      %eax, 4(%edx)
	movl      (%ebp), %ecx
	movl      $32, %edx
	movl      $2, %eax
	andl      $16777215, %ecx
	cmpl      $2, %ecx
	jg        .L0000166B
.L0000161A:
	jmp       .L00001698
.L0000161C:
	.p2align 3
.L00001620:
	movl      %edx, 16(%esp)
	addl      $1, %edx
.L00001627:
	movl      (%ebp,%eax,4), %ecx
	movl      4(%ecx), %esi
	movl      %esi, %edi
	sarl      $30, %edi
	testl     %edi, %edi
	je        .L0000165B
.L00001637:
	andl      $16777215, %esi
	testb     $1, -4(%ecx,%esi,4)
	je        .L0000165B
.L00001644:
	movzbl    16(%esp), %ecx
	movl      $1, %esi
	movl      24(%esp), %edi
	sall      %cl, %esi
	movl      20(%esp), %ecx
	orl       %esi, (%edi,%ecx,4)
.L0000165B:
	movl      (%ebp), %ecx
	addl      $1, %eax
	andl      $16777215, %ecx
	cmpl      %eax, %ecx
	jle       .L00001698
.L0000166B:
	cmpl      $32, %edx
	jne       .L00001620
.L00001670:
	addl      $1, 20(%esp)
	movl      24(%esp), %edx
	movl      20(%esp), %esi
	movl      $0, 16(%esp)
	movl      $0, (%edx,%esi,4)
	movl      $1, %edx
	jmp       .L00001627
.L00001693:
	.p2align 3
.L00001698:
	movl      28(%esp), %eax
	movl      %eax, 4(%esp)
	movl      24(%esp), %eax
	movl      %eax, (%esp)
	call      Flx_renormalize@PLT
.L000016AC:
	addl      $44, %esp
	popl      %ebx
	popl      %esi
	popl      %edi
	popl      %ebp
	ret       
	.size	ZX_to_F2x, .-ZX_to_F2x
# ----------------------
.L000016B4:
	.p2align 4
# ----------------------
	.globl	Flx_to_F2x
	.type	Flx_to_F2x, @function
Flx_to_F2x:
	pushl     %ebp
	pushl     %edi
	pushl     %esi
	pushl     %ebx
	subl      $28, %esp
	movl      48(%esp), %esi
	call      __x86.get_pc_thunk.bx
.L000016D0:
	addl      $_GLOBAL_OFFSET_TABLE_, %ebx
	movl      (%esi), %eax
	movl      avma@GOT(%ebx), %edi
	andl      $16777215, %eax
	addl      $93, %eax
	movl      %eax, 12(%esp)
	shrl      $5, 12(%esp)
	movl      12(%esp), %ecx
	movl      (%edi), %eax
	movl      %ecx, %edx
	sall      $2, %edx
	movl      %eax, %ebp
	subl      %edx, %ebp
	movl      bot@GOT(%ebx), %edx
	movl      %ebp, 8(%esp)
	subl      (%edx), %eax
	shrl      $2, %eax
	cmpl      %eax, %ecx
	jbe       .L0000171D
.L00001711:
	movl      $14, (%esp)
	call      pari_err@PLT
.L0000171D:
	movl      12(%esp), %eax
	movl      $1, %ebp
	movl      8(%esp), %edx
	orl       $738197504, %eax
	movl      %edx, (%edi)
	movl      %eax, (%edx)
	movl      4(%esi), %eax
	movl      %eax, 4(%edx)
	movl      (%esi), %ecx
	movl      $32, %edx
	movl      $2, %eax
	andl      $16777215, %ecx
	cmpl      $2, %ecx
	jg        .L00001781
.L00001750:
	jmp       .L000017A0
.L00001752:
	.p2align 3
.L00001758:
	movl      %edx, %ecx
	addl      $1, %edx
.L0000175D:
	movl      (%esi,%eax,4), %edi
	testl     %edi, %edi
	je        .L00001772
.L00001764:
	movl      $1, %edi
	sall      %cl, %edi
	movl      8(%esp), %ecx
	orl       %edi, (%ecx,%ebp,4)
.L00001772:
	movl      (%esi), %ecx
	addl      $1, %eax
	andl      $16777215, %ecx
	cmpl      %eax, %ecx
	jle       .L000017A0
.L00001781:
	cmpl      $32, %edx
	jne       .L00001758
.L00001786:
	movl      8(%esp), %edi
	addl      $1, %ebp
	movl      $1, %edx
	xorl      %ecx, %ecx
	movl      $0, (%edi,%ebp,4)
	jmp       .L0000175D
.L0000179D:
	.p2align 3
.L000017A0:
	movl      12(%esp), %eax
	movl      %eax, 4(%esp)
	movl      8(%esp), %eax
	movl      %eax, (%esp)
	call      Flx_renormalize@PLT
.L000017B4:
	addl      $28, %esp
	popl      %ebx
	popl      %esi
	popl      %edi
	popl      %ebp
	ret       
	.size	Flx_to_F2x, .-Flx_to_F2x
# ----------------------
.L000017BC:
	.p2align 3
# ----------------------
	.globl	F2x_to_F2v
	.type	F2x_to_F2v, @function
F2x_to_F2v:
	pushl     %ebp
	pushl     %edi
	pushl     %esi
	pushl     %ebx
	call      __x86.get_pc_thunk.bx
.L000017C9:
	addl      $_GLOBAL_OFFSET_TABLE_, %ebx
	subl      $44, %esp
	movl      64(%esp), %eax
	movl      (%eax), %edi
	movl      avma@GOT(%ebx), %edx
	movl      68(%esp), %eax
	andl      $16777215, %edi
	movl      (%edx), %esi
	addl      $95, %eax
	movl      (%edx), %ebp
	shrl      $5, %eax
	leal      0(,%eax,4), %ecx
	subl      %ecx, %esi
	movl      bot@GOT(%ebx), %ecx
	subl      (%ecx), %ebp
	movl      %ebp, %ecx
	shrl      $2, %ecx
	cmpl      %ecx, %eax
	jbe       .L00001828
.L0000180C:
	movl      $14, (%esp)
	movl      %edx, 28(%esp)
	movl      %eax, 24(%esp)
	call      pari_err@PLT
.L00001820:
	movl      28(%esp), %edx
	movl      24(%esp), %eax
.L00001828:
	testl     $117440512, %eax
	movl      %esi, (%edx)
	je        .L0000184F
.L00001831:
	leal      .LC1@GOTOFF(%ebx), %edx
	movl      %edx, 4(%esp)
	movl      $15, (%esp)
	movl      %eax, 24(%esp)
	call      pari_err@PLT
.L0000184B:
	movl      24(%esp), %eax
.L0000184F:
	movl      68(%esp), %ecx
	movl      %eax, %edx
	orl       $738197504, %edx
	cmpl      $2, %edi
	movl      %edx, (%esi)
	movl      %ecx, 4(%esi)
	jle       .L000018A8
.L00001865:
	movl      64(%esp), %ebp
	movl      $2, %edx
	.p2align 3
.L00001870:
	movl      (%ebp,%edx,4), %ecx
	movl      %ecx, (%esi,%edx,4)
	addl      $1, %edx
	cmpl      %edi, %edx
	jne       .L00001870
.L0000187E:
	cmpl      %edi, %eax
	jle       .L0000189E
.L00001882:
	subl      %edi, %eax
	sall      $2, %eax
	leal      (%esi,%edi,4), %edx
	movl      %eax, 8(%esp)
	movl      $0, 4(%esp)
	movl      %edx, (%esp)
	call      memset@PLT
.L0000189E:
	addl      $44, %esp
	movl      %esi, %eax
	popl      %ebx
	popl      %esi
	popl      %edi
	popl      %ebp
	ret       
.L000018A8:
	movl      $2, %edi
	jmp       .L0000187E
	.size	F2x_to_F2v, .-F2x_to_F2v
# ----------------------
.L000018AF:
	.p2align 3
# ----------------------
	.globl	F2x_add
	.type	F2x_add, @function
F2x_add:
	pushl     %ebp
	pushl     %edi
	pushl     %esi
	pushl     %ebx
	subl      $44, %esp
	movl      68(%esp), %ecx
	movl      64(%esp), %ebp
	call      __x86.get_pc_thunk.bx
.L000018C4:
	addl      $_GLOBAL_OFFSET_TABLE_, %ebx
	movl      (%ecx), %eax
	movl      (%ebp), %edi
	movl      %eax, 20(%esp)
	andl      $16777215, 20(%esp)
	andl      $16777215, %edi
	cmpl      20(%esp), %edi
	jl        .L000019A8
.L000018EB:
	movl      20(%esp), %eax
	movl      %edi, 20(%esp)
	movl      %eax, %edi
.L000018F5:
	movl      avma@GOT(%ebx), %eax
	movl      20(%esp), %esi
	movl      (%eax), %edx
	sall      $2, %esi
	movl      %esi, 24(%esp)
	movl      %edx, %eax
	subl      %esi, %eax
	movl      %eax, %esi
	movl      bot@GOT(%ebx), %eax
	subl      (%eax), %edx
	shrl      $2, %edx
	cmpl      %edx, 20(%esp)
	jbe       .L00001933
.L0000191F:
	movl      $14, (%esp)
	movl      %ecx, 28(%esp)
	call      pari_err@PLT
.L0000192F:
	movl      28(%esp), %ecx
.L00001933:
	movl      avma@GOT(%ebx), %eax
	movl      %esi, (%eax)
	movl      20(%esp), %eax
	orl       $738197504, %eax
	cmpl      $2, %edi
	movl      %eax, (%esi)
	movl      4(%ebp), %eax
	movl      %eax, 4(%esi)
	jle       .L000019B3
.L00001951:
	movl      $2, %eax
	.p2align 3
.L00001958:
	movl      (%ecx,%eax,4), %edx
	xorl      (%ebp,%eax,4), %edx
	movl      %edx, (%esi,%eax,4)
	addl      $1, %eax
	cmpl      %edi, %eax
	jne       .L00001958
.L00001969:
	movl      24(%esp), %edx
	leal      (%ebp,%edi,4), %eax
	addl      %ebp, %edx
	negl      %ebp
	cmpl      %edi, 20(%esp)
	jle       .L0000198F
.L0000197B:
	.p2align 3
.L00001980:
	movl      (%eax), %edi
	leal      (%eax,%esi), %ecx
	addl      $4, %eax
	cmpl      %edx, %eax
	movl      %edi, (%ecx,%ebp)
	jne       .L00001980
.L0000198F:
	movl      20(%esp), %eax
	movl      %esi, (%esp)
	movl      %eax, 4(%esp)
	call      Flx_renormalize@PLT
.L0000199F:
	addl      $44, %esp
	popl      %ebx
	popl      %esi
	popl      %edi
	popl      %ebp
	ret       
.L000019A7:
	.p2align 3
.L000019A8:
	movl      %ebp, %eax
	movl      %ecx, %ebp
	movl      %eax, %ecx
	jmp       .L000018F5
.L000019B3:
	movl      $2, %edi
	jmp       .L00001969
	.size	F2x_add, .-F2x_add
# ----------------------
.L000019BA:
	.p2align 3
# ----------------------
	.globl	F2x_1_add
	.type	F2x_1_add, @function
F2x_1_add:
	pushl     %ebp
	pushl     %edi
	pushl     %esi
	pushl     %ebx
	subl      $28, %esp
	movl      48(%esp), %ebp
	call      __x86.get_pc_thunk.bx
.L000019D0:
	addl      $_GLOBAL_OFFSET_TABLE_, %ebx
	movl      (%ebp), %esi
	andl      $16777215, %esi
	cmpl      $2, %esi
	je        .L00001A60
.L000019E4:
	movl      avma@GOT(%ebx), %edx
	leal      0(,%esi,4), %ecx
	movl      (%edx), %eax
	movl      %eax, %edi
	subl      %ecx, %edi
	movl      bot@GOT(%ebx), %ecx
	subl      (%ecx), %eax
	shrl      $2, %eax
	cmpl      %eax, %esi
	ja        .L00001A48
.L00001A06:
	movl      %esi, %eax
	orl       $738197504, %eax
	movl      %edi, (%edx)
	movl      $3, %edx
	movl      %eax, (%edi)
	movl      4(%ebp), %eax
	movl      %eax, 4(%edi)
	movl      8(%ebp), %eax
	xorl      $1, %eax
	cmpl      $3, %esi
	movl      %eax, 8(%edi)
	jle       .L00001AB0
.L00001A2E:
	.p2align 3
.L00001A30:
	movl      (%ebp,%edx,4), %ecx
	movl      %ecx, (%edi,%edx,4)
	addl      $1, %edx
	cmpl      %esi, %edx
	jne       .L00001A30
.L00001A3E:
	addl      $28, %esp
	movl      %edi, %eax
	popl      %ebx
	popl      %esi
	popl      %edi
	popl      %ebp
	ret       
.L00001A48:
	movl      $14, (%esp)
	movl      %edx, 12(%esp)
	call      pari_err@PLT
.L00001A58:
	movl      12(%esp), %edx
	jmp       .L00001A06
.L00001A5E:
	.p2align 3
.L00001A60:
	movl      avma@GOT(%ebx), %edx
	movl      bot@GOT(%ebx), %eax
	movl      4(%ebp), %ebp
	movl      (%edx), %esi
	movl      %esi, %ecx
	subl      (%eax), %ecx
	leal      -12(%esi), %edi
	cmpl      $11, %ecx
	jbe       .L00001A9A
.L00001A7D:
	movl      %edi, (%edx)
	movl      %edi, %eax
	movl      $738197507, -12(%esi)
	movl      %ebp, 4(%edi)
	movl      $1, 8(%edi)
	addl      $28, %esp
	popl      %ebx
	popl      %esi
	popl      %edi
	popl      %ebp
	ret       
.L00001A9A:
	movl      $14, (%esp)
	movl      %edx, 12(%esp)
	call      pari_err@PLT
.L00001AAA:
	movl      12(%esp), %edx
	jmp       .L00001A7D
.L00001AB0:
	jne       .L00001A3E
.L00001AB2:
	movl      %edi, (%esp)
	movl      $3, 4(%esp)
	call      Flx_renormalize@PLT
.L00001AC2:
	addl      $28, %esp
	popl      %ebx
	popl      %esi
	popl      %edi
	popl      %ebp
	ret       
	.size	F2x_1_add, .-F2x_1_add
# ----------------------
.L00001ACA:
	.p2align 3
# ----------------------
	.globl	F2x_mul
	.type	F2x_mul, @function
F2x_mul:
	pushl     %esi
	subl      $24, %esp
	movl      36(%esp), %ecx
	movl      32(%esp), %esi
	leal      8(%ecx), %edx
	movl      (%ecx), %ecx
	leal      8(%esi), %eax
	andl      $16777215, %ecx
	subl      $2, %ecx
	movl      %ecx, 4(%esp)
	movl      (%esi), %ecx
	andl      $16777215, %ecx
	subl      $2, %ecx
	movl      %ecx, (%esp)
	call      F2x_mulspec
.L00001B04:
	movl      4(%esi), %edx
	movl      %edx, 4(%eax)
	addl      $24, %esp
	popl      %esi
	ret       
	.size	F2x_mul, .-F2x_mul
# ----------------------
.L00001B0F:
	.p2align 3
# ----------------------
	.local	F2x_mulspec
	.type	F2x_mulspec, @function
F2x_mulspec:
	pushl     %ebp
	xorl      %ecx, %ecx
	pushl     %edi
	movl      %edx, %edi
	pushl     %esi
	movl      %eax, %esi
	pushl     %ebx
	subl      $60, %esp
	movl      80(%esp), %eax
	call      __x86.get_pc_thunk.bx
.L00001B26:
	addl      $_GLOBAL_OFFSET_TABLE_, %ebx
	movl      84(%esp), %ebp
	testl     %eax, %eax
	jne       .L00001B43
.L00001B34:
	jmp       .L00001B49
.L00001B36:
	.p2align 3
.L00001B38:
	addl      $4, %esi
	addl      $1, %ecx
	subl      $1, %eax
	je        .L00001B49
.L00001B43:
	movl      (%esi), %edx
	testl     %edx, %edx
	je        .L00001B38
.L00001B49:
	testl     %ebp, %ebp
	jne       .L00001B63
.L00001B4D:
	.p2align 3
	jmp       .L00001B69
.L00001B52:
	.p2align 3
.L00001B58:
	addl      $4, %edi
	addl      $1, %ecx
	subl      $1, %ebp
	je        .L00001B69
.L00001B63:
	movl      (%edi), %edx
	testl     %edx, %edx
	je        .L00001B58
.L00001B69:
	cmpl      %eax, %ebp
	jle       .L00001B79
.L00001B6D:
	movl      %eax, %edx
	movl      %ebp, %eax
	movl      %edx, %ebp
	movl      %esi, %edx
	movl      %edi, %esi
	movl      %edx, %edi
.L00001B79:
	testl     %ebp, %ebp
	je        .L00001D40
.L00001B81:
	movl      avma@GOT(%ebx), %edx
	cmpl      $1, %eax
	movl      %edx, 8(%esp)
	movl      (%edx), %edx
	movl      %edx, 28(%esp)
	jle       .L00001D8A
.L00001B9A:
	movl      %eax, %edx
	sarl      $1, %edx
	subl      %edx, %eax
	movl      %eax, 8(%esp)
	sall      $2, %eax
	movl      %edx, 16(%esp)
	leal      (%esi,%eax), %edx
	movl      %edx, 20(%esp)
	movl      8(%esp), %edx
	testl     %edx, %edx
	je        .L000023F3
.L00001BBE:
	cmpl      $0, -4(%esi,%eax)
	je        .L00001BD7
.L00001BC5:
	jmp       .L00002404
.L00001BCA:
	.p2align 3
.L00001BD0:
	cmpl      $0, -4(%esi,%edx,4)
	jne       .L00001BDC
.L00001BD7:
	subl      $1, %edx
	jne       .L00001BD0
.L00001BDC:
	movl      %edx, 24(%esp)
	movl      8(%esp), %edx
.L00001BE4:
	cmpl      %edx, %ebp
	jle       .L00001D08
.L00001BEC:
	subl      %edx, %ebp
	testl     %edx, %edx
	movl      %ebp, 32(%esp)
	leal      (%edi,%eax), %ebp
	movl      %ebp, 36(%esp)
	je        .L000023EC
.L00001C01:
	movl      -4(%edi,%eax), %ebp
	testl     %ebp, %ebp
	jne       .L00002411
.L00001C0D:
	movl      %edx, %ebp
	jmp       .L00001C20
.L00001C11:
	.p2align 3
.L00001C18:
	movl      -4(%edi,%ebp,4), %eax
	testl     %eax, %eax
	jne       .L00001C25
.L00001C20:
	subl      $1, %ebp
	jne       .L00001C18
.L00001C25:
	movl      24(%esp), %eax
	movl      %edi, %edx
	movl      %ebp, 4(%esp)
	movl      %ecx, 44(%esp)
	movl      %eax, (%esp)
	movl      %esi, %eax
	call      F2x_mulspec
.L00001C3D:
	movl      32(%esp), %edx
	movl      16(%esp), %ecx
	movl      %edx, 4(%esp)
	movl      36(%esp), %edx
	movl      %ecx, (%esp)
	movl      %eax, 12(%esp)
	movl      20(%esp), %eax
	call      F2x_mulspec
.L00001C5D:
	movl      24(%esp), %ecx
	movl      %esi, %edx
	movl      %ecx, 4(%esp)
	movl      16(%esp), %ecx
	movl      %eax, 40(%esp)
	movl      20(%esp), %eax
	movl      %ecx, (%esp)
	call      F2x_addspec
.L00001C7B:
	movl      32(%esp), %edx
	movl      %ebp, 4(%esp)
	movl      %edx, (%esp)
	movl      %edi, %edx
	movl      %eax, %esi
	movl      36(%esp), %eax
	call      F2x_addspec
.L00001C93:
	movl      %esi, 4(%esp)
	movl      %eax, (%esp)
	call      F2x_mul@PLT
.L00001C9F:
	movl      12(%esp), %ecx
	movl      40(%esp), %edi
	movl      %ecx, 4(%esp)
	movl      %edi, (%esp)
	movl      %eax, %esi
	call      F2x_add@PLT
.L00001CB5:
	movl      %esi, (%esp)
	movl      %eax, 4(%esp)
	call      F2x_add@PLT
.L00001CC1:
	movl      8(%esp), %ecx
	movl      %ecx, (%esp)
	movl      %eax, %edx
	movl      %edi, %eax
	call      F2x_addshift
.L00001CD1:
	movl      44(%esp), %ecx
.L00001CD5:
	movl      %ecx, 16(%esp)
	movl      8(%esp), %ecx
	movl      12(%esp), %edx
	movl      %ecx, (%esp)
	call      F2x_addshift
.L00001CE9:
	movl      16(%esp), %ecx
	movl      %ecx, 80(%esp)
	movl      %eax, %edx
.L00001CF3:
	movl      28(%esp), %eax
	addl      $60, %esp
	popl      %ebx
	popl      %esi
	popl      %edi
	popl      %ebp
	jmp       F2x_shiftip
.L00001D03:
	.p2align 3
.L00001D08:
	movl      24(%esp), %eax
	movl      %edi, %edx
	movl      %ebp, 4(%esp)
	movl      %ecx, 32(%esp)
	movl      %eax, (%esp)
	movl      %esi, %eax
	call      F2x_mulspec
.L00001D20:
	movl      %edi, %edx
	movl      %ebp, 4(%esp)
	movl      %eax, 12(%esp)
	movl      16(%esp), %eax
	movl      %eax, (%esp)
	movl      20(%esp), %eax
	call      F2x_mulspec
.L00001D3A:
	movl      32(%esp), %ecx
	jmp       .L00001CD5
.L00001D40:
	movl      avma@GOT(%ebx), %eax
	movl      (%eax), %edi
	movl      %eax, 8(%esp)
	movl      bot@GOT(%ebx), %eax
	movl      %edi, %ecx
	subl      (%eax), %ecx
	leal      -8(%edi), %esi
	cmpl      $7, %ecx
	jbe       .L00001D7C
.L00001D5E:
	movl      8(%esp), %eax
	movl      %esi, (%eax)
	movl      %esi, %eax
	movl      $738197506, -8(%edi)
	movl      $0, 4(%esi)
	addl      $60, %esp
	popl      %ebx
	popl      %esi
	popl      %edi
	popl      %ebp
	ret       
.L00001D7C:
	movl      $14, (%esp)
	call      pari_err@PLT
.L00001D88:
	jmp       .L00001D5E
.L00001D8A:
	movl      (%esi), %edx
	movl      (%edi), %ebp
	movl      %edx, %eax
	movzwl    %dx, %esi
	shrl      $16, %eax
	movl      %eax, 16(%esp)
	movl      %ebp, %eax
	movzwl    %bp, %ebp
	shrl      $16, %eax
	testl     %esi, %esi
	movl      %eax, 12(%esp)
	jne       .L000020EB
.L00001DAE:
	xorl      %esi, %esi
	movl      $0, 24(%esp)
.L00001DB8:
	movl      16(%esp), %edx
	xorl      %eax, %eax
	testl     %edx, %edx
	je        .L00002060
.L00001DC6:
	movl      %ecx, 32(%esp)
	movl      16(%esp), %ecx
	movl      %ebp, %edx
	xorl      %esi, %edx
	movl      %edx, 20(%esp)
	movl      %eax, %edx
	movl      12(%esp), %eax
	movl      %ecx, %edi
	andl      $1, %edi
	cmovne    20(%esp), %esi
	cmovne    %eax, %edx
	leal      (%eax,%eax), %edi
	xorl      %edx, %edi
	movl      %esi, 20(%esp)
	movl      %ecx, %esi
	shrl      $1, %esi
	leal      (%ebp,%ebp), %eax
	xorl      20(%esp), %eax
	andl      $1, %esi
	cmove     %edx, %edi
	movl      20(%esp), %edx
	movl      %ecx, %esi
	movl      %edi, 16(%esp)
	cmovne    %eax, %edx
	movl      12(%esp), %eax
	movl      %edx, %edi
	shrl      $2, %esi
	leal      0(,%eax,4), %edx
	leal      0(,%ebp,4), %eax
	xorl      16(%esp), %edx
	xorl      %edi, %eax
	andl      $1, %esi
	movl      %ecx, %esi
	cmovne    %eax, %edi
	movl      12(%esp), %eax
	cmove     16(%esp), %edx
	shrl      $3, %esi
	movl      %edx, 16(%esp)
	leal      0(,%eax,8), %edx
	leal      0(,%ebp,8), %eax
	xorl      16(%esp), %edx
	xorl      %edi, %eax
	andl      $1, %esi
	movl      %ecx, %esi
	cmove     16(%esp), %edx
	cmovne    %eax, %edi
	movl      %ebp, %eax
	sall      $4, %eax
	movl      %edx, 16(%esp)
	movl      12(%esp), %edx
	shrl      $4, %esi
	xorl      %edi, %eax
	sall      $4, %edx
	xorl      16(%esp), %edx
	andl      $1, %esi
	cmove     %edi, %eax
	movl      12(%esp), %edi
	movl      %ecx, %esi
	cmove     16(%esp), %edx
	shrl      $5, %esi
	movl      %ecx, 16(%esp)
	movl      %esi, %ecx
	sall      $5, %edi
	movl      %edi, %esi
	movl      %ebp, %edi
	sall      $5, %edi
	xorl      %edx, %esi
	xorl      %eax, %edi
	andl      $1, %ecx
	movl      16(%esp), %ecx
	cmove     %eax, %edi
	cmove     %edx, %esi
	movl      12(%esp), %edx
	movl      %ecx, %eax
	shrl      $6, %eax
	movl      %eax, 20(%esp)
	movl      %ebp, %eax
	sall      $6, %eax
	movl      %eax, 16(%esp)
	movl      20(%esp), %eax
	sall      $6, %edx
	xorl      %edi, 16(%esp)
	xorl      %esi, %edx
	andl      $1, %eax
	movl      %ecx, %eax
	cmovne    16(%esp), %edi
	cmove     %esi, %edx
	movl      12(%esp), %esi
	shrl      $7, %eax
	movl      %edi, 16(%esp)
	movl      %ebp, %edi
	sall      $7, %edi
	sall      $7, %esi
	movl      %edi, 20(%esp)
	movl      16(%esp), %edi
	xorl      %edx, %esi
	xorl      %edi, 20(%esp)
	andl      $1, %eax
	cmovne    20(%esp), %edi
	cmove     %edx, %esi
	movl      12(%esp), %edx
	movl      %ecx, %eax
	shrl      $8, %eax
	movl      %edi, 20(%esp)
	movl      %ebp, %edi
	sall      $8, %edi
	movl      %edi, 16(%esp)
	sall      $8, %edx
	movl      20(%esp), %edi
	xorl      %edi, 16(%esp)
	xorl      %esi, %edx
	andl      $1, %eax
	movl      %ecx, %eax
	cmove     %esi, %edx
	movl      12(%esp), %esi
	cmovne    16(%esp), %edi
	shrl      $9, %eax
	movl      %edi, 16(%esp)
	sall      $9, %esi
	movl      %ebp, %edi
	xorl      %edx, %esi
	sall      $9, %edi
	xorl      16(%esp), %edi
	andl      $1, %eax
	movl      %ecx, %eax
	cmove     %edx, %esi
	movl      12(%esp), %edx
	cmove     16(%esp), %edi
	shrl      $10, %eax
	movl      %eax, 20(%esp)
	movl      %ebp, %eax
	sall      $10, %eax
	movl      %eax, 16(%esp)
	movl      20(%esp), %eax
	sall      $10, %edx
	xorl      %edi, 16(%esp)
	xorl      %esi, %edx
	andl      $1, %eax
	movl      %ecx, %eax
	cmovne    16(%esp), %edi
	cmove     %esi, %edx
	movl      12(%esp), %esi
	shrl      $11, %eax
	movl      %edi, 16(%esp)
	movl      %ebp, %edi
	sall      $11, %edi
	movl      %edi, 20(%esp)
	movl      16(%esp), %edi
	sall      $11, %esi
	xorl      %edi, 20(%esp)
	xorl      %edx, %esi
	andl      $1, %eax
	movl      %ecx, %eax
	cmovne    20(%esp), %edi
	cmove     %edx, %esi
	movl      12(%esp), %edx
	shrl      $12, %eax
	movl      %edi, 20(%esp)
	movl      %ebp, %edi
	sall      $12, %edi
	movl      %edi, 16(%esp)
	movl      20(%esp), %edi
	sall      $12, %edx
	xorl      %edi, 16(%esp)
	xorl      %esi, %edx
	andl      $1, %eax
	movl      %ecx, %eax
	cmovne    16(%esp), %edi
	cmove     %esi, %edx
	shrl      $13, %eax
	movl      %edi, 16(%esp)
	movl      12(%esp), %esi
	movl      %ebp, %edi
	sall      $13, %edi
	xorl      16(%esp), %edi
	sall      $13, %esi
	xorl      %edx, %esi
	andl      $1, %eax
	cmove     %edx, %esi
	movl      12(%esp), %edx
	movl      %ecx, %eax
	cmove     16(%esp), %edi
	shrl      $14, %eax
	sall      $14, %edx
	movl      %edx, 16(%esp)
	movl      %ebp, %edx
	sall      $14, %edx
	xorl      %edi, %edx
	xorl      %esi, 16(%esp)
	andl      $1, %eax
	movl      %ecx, %eax
	cmove     %edi, %edx
	cmovne    16(%esp), %esi
	shrl      $15, %eax
	movl      %eax, %edi
	movl      12(%esp), %eax
	movl      %esi, %ecx
	sall      $15, %eax
	xorl      %esi, %eax
	movl      %ebp, %esi
	sall      $15, %esi
	xorl      %edx, %esi
	testl     %edi, %edi
	cmove     %ecx, %eax
	movl      32(%esp), %ecx
	cmove     %edx, %esi
.L00002060:
	movl      %esi, %ebp
	movl      bot@GOT(%ebx), %edi
	shrl      $16, %esi
	xorl      %eax, %esi
	sall      $16, %ebp
	xorl      24(%esp), %ebp
	cmpl      $1, %esi
	sbbl      %edx, %edx
	andl      $-4, %edx
	addl      $16, %edx
	cmpl      $1, %esi
	sbbl      %eax, %eax
	movl      %eax, 12(%esp)
	movl      %eax, 16(%esp)
	movl      28(%esp), %eax
	addl      $4, 12(%esp)
	addl      $738197508, 16(%esp)
	subl      %edx, %eax
	movl      %eax, %edx
	movl      28(%esp), %eax
	subl      (%edi), %eax
	shrl      $2, %eax
	cmpl      12(%esp), %eax
	jae       .L000020CC
.L000020B0:
	movl      $14, (%esp)
	movl      %edx, 20(%esp)
	movl      %ecx, 12(%esp)
	call      pari_err@PLT
.L000020C4:
	movl      20(%esp), %edx
	movl      12(%esp), %ecx
.L000020CC:
	movl      8(%esp), %eax
	testl     %esi, %esi
	movl      %ebp, 8(%edx)
	movl      %edx, (%eax)
	movl      16(%esp), %eax
	movl      %eax, (%edx)
	je        .L000020E2
.L000020DF:
	movl      %esi, 12(%edx)
.L000020E2:
	movl      %ecx, 80(%esp)
	jmp       .L00001CF3
.L000020EB:
	movl      %ecx, 32(%esp)
	movl      12(%esp), %ecx
	movl      %edx, %edi
	xorl      %eax, %eax
	andl      $1, %edi
	movl      %eax, %edx
	movl      %esi, %edi
	cmovne    %ebp, %edx
	cmovne    %ecx, %eax
	movl      %eax, 24(%esp)
	leal      (%ebp,%ebp), %eax
	movl      %eax, 12(%esp)
	leal      (%ecx,%ecx), %eax
	movl      %eax, 20(%esp)
	movl      24(%esp), %eax
	shrl      $1, %edi
	xorl      %eax, 20(%esp)
	xorl      %edx, 12(%esp)
	andl      $1, %edi
	cmovne    20(%esp), %eax
	cmovne    12(%esp), %edx
	movl      %eax, %edi
	movl      %esi, %eax
	shrl      $2, %eax
	movl      %eax, 24(%esp)
	leal      0(,%ecx,4), %eax
	movl      %eax, 20(%esp)
	movl      24(%esp), %eax
	xorl      %edi, 20(%esp)
	movl      %edx, 12(%esp)
	leal      0(,%ebp,4), %edx
	xorl      12(%esp), %edx
	andl      $1, %eax
	movl      20(%esp), %eax
	cmove     12(%esp), %edx
	cmove     %edi, %eax
	movl      %eax, %edi
	movl      %esi, %eax
	shrl      $3, %eax
	movl      %eax, 24(%esp)
	leal      0(,%ebp,8), %eax
	movl      %eax, 20(%esp)
	leal      0(,%ecx,8), %eax
	movl      %eax, 12(%esp)
	movl      24(%esp), %eax
	xorl      %edi, 12(%esp)
	xorl      %edx, 20(%esp)
	andl      $1, %eax
	movl      12(%esp), %eax
	cmovne    20(%esp), %edx
	cmove     %edi, %eax
	movl      %edx, 20(%esp)
	movl      %ebp, %edx
	movl      %eax, %edi
	sall      $4, %edx
	movl      %esi, %eax
	xorl      20(%esp), %edx
	movl      %ecx, 12(%esp)
	sall      $4, %ecx
	movl      %ecx, 24(%esp)
	shrl      $4, %eax
	movl      12(%esp), %ecx
	xorl      %edi, 24(%esp)
	andl      $1, %eax
	movl      24(%esp), %eax
	cmove     20(%esp), %edx
	cmove     %edi, %eax
	movl      %ebp, %edi
	sall      $5, %ecx
	movl      %eax, 24(%esp)
	movl      %esi, %eax
	movl      %ecx, 20(%esp)
	movl      24(%esp), %ecx
	sall      $5, %edi
	xorl      %ecx, 20(%esp)
	xorl      %edx, %edi
	shrl      $5, %eax
	andl      $1, %eax
	movl      20(%esp), %eax
	cmove     %edx, %edi
	movl      %ebp, %edx
	cmove     %ecx, %eax
	movl      12(%esp), %ecx
	movl      %eax, 20(%esp)
	movl      %esi, %eax
	sall      $6, %edx
	shrl      $6, %eax
	xorl      %edi, %edx
	sall      $6, %ecx
	movl      %ecx, 24(%esp)
	movl      20(%esp), %ecx
	xorl      %ecx, 24(%esp)
	andl      $1, %eax
	movl      24(%esp), %eax
	cmove     %edi, %edx
	movl      %ebp, %edi
	cmove     %ecx, %eax
	movl      12(%esp), %ecx
	movl      %eax, 24(%esp)
	movl      %esi, %eax
	sall      $7, %edi
	shrl      $7, %eax
	xorl      %edx, %edi
	sall      $7, %ecx
	movl      %ecx, 20(%esp)
	movl      24(%esp), %ecx
	xorl      %ecx, 20(%esp)
	andl      $1, %eax
	movl      20(%esp), %eax
	cmove     %edx, %edi
	movl      %ebp, %edx
	cmove     %ecx, %eax
	movl      12(%esp), %ecx
	movl      %eax, 20(%esp)
	movl      %esi, %eax
	sall      $8, %edx
	shrl      $8, %eax
	xorl      %edi, %edx
	sall      $8, %ecx
	movl      %ecx, 24(%esp)
	movl      20(%esp), %ecx
	xorl      %ecx, 24(%esp)
	andl      $1, %eax
	movl      24(%esp), %eax
	cmove     %edi, %edx
	movl      %ebp, %edi
	cmove     %ecx, %eax
	movl      %eax, 24(%esp)
	movl      12(%esp), %ecx
	movl      %esi, %eax
	sall      $9, %edi
	shrl      $9, %eax
	xorl      %edx, %edi
	sall      $9, %ecx
	movl      %ecx, 20(%esp)
	movl      24(%esp), %ecx
	xorl      %ecx, 20(%esp)
	andl      $1, %eax
	movl      20(%esp), %eax
	cmove     %edx, %edi
	movl      %ebp, %edx
	cmove     %ecx, %eax
	movl      12(%esp), %ecx
	movl      %eax, 20(%esp)
	movl      %esi, %eax
	sall      $10, %edx
	shrl      $10, %eax
	xorl      %edi, %edx
	sall      $10, %ecx
	movl      %ecx, 24(%esp)
	movl      20(%esp), %ecx
	xorl      %ecx, 24(%esp)
	andl      $1, %eax
	movl      24(%esp), %eax
	cmove     %edi, %edx
	movl      %ebp, %edi
	cmove     %ecx, %eax
	movl      12(%esp), %ecx
	movl      %eax, 24(%esp)
	movl      %esi, %eax
	sall      $11, %edi
	shrl      $11, %eax
	xorl      %edx, %edi
	sall      $11, %ecx
	movl      %ecx, 20(%esp)
	movl      24(%esp), %ecx
	xorl      %ecx, 20(%esp)
	andl      $1, %eax
	movl      20(%esp), %eax
	cmove     %edx, %edi
	movl      %ebp, %edx
	cmove     %ecx, %eax
	movl      12(%esp), %ecx
	movl      %eax, 20(%esp)
	movl      %esi, %eax
	sall      $12, %edx
	shrl      $12, %eax
	xorl      %edi, %edx
	sall      $12, %ecx
	movl      %ecx, 24(%esp)
	movl      20(%esp), %ecx
	xorl      %ecx, 24(%esp)
	andl      $1, %eax
	movl      24(%esp), %eax
	cmove     %edi, %edx
	movl      %ebp, %edi
	cmove     %ecx, %eax
	movl      12(%esp), %ecx
	movl      %eax, 24(%esp)
	movl      %esi, %eax
	sall      $13, %edi
	shrl      $13, %eax
	xorl      %edx, %edi
	sall      $13, %ecx
	movl      %ecx, 20(%esp)
	movl      24(%esp), %ecx
	xorl      %ecx, 20(%esp)
	andl      $1, %eax
	movl      20(%esp), %eax
	cmove     %edx, %edi
	movl      %ebp, %edx
	cmove     %ecx, %eax
	movl      %eax, 20(%esp)
	movl      12(%esp), %ecx
	sall      $14, %edx
	movl      %esi, %eax
	movl      %edx, 24(%esp)
	shrl      $14, %eax
	xorl      %edi, 24(%esp)
	movl      %ecx, %edx
	sall      $14, %edx
	xorl      20(%esp), %edx
	andl      $1, %eax
	cmovne    24(%esp), %edi
	movl      %ebp, %eax
	cmove     20(%esp), %edx
	shrl      $15, %esi
	movl      %edi, 24(%esp)
	movl      %esi, %edi
	movl      %ecx, %esi
	sall      $15, %esi
	movl      32(%esp), %ecx
	sall      $15, %eax
	xorl      %edx, %esi
	xorl      24(%esp), %eax
	testl     %edi, %edi
	cmove     24(%esp), %eax
	cmove     %edx, %esi
	movl      %eax, 24(%esp)
	jmp       .L00001DB8
.L000023EC:
	xorl      %ebp, %ebp
	jmp       .L00001C25
.L000023F3:
	movl      $0, 24(%esp)
	movl      8(%esp), %edx
	jmp       .L00001BE4
.L00002404:
	movl      8(%esp), %edx
	movl      %edx, 24(%esp)
	jmp       .L00001BE4
.L00002411:
	movl      8(%esp), %ebp
	jmp       .L00001C25
	.size	F2x_mulspec, .-F2x_mulspec
# ----------------------
.L0000241A:
	.p2align 3
# ----------------------
	.globl	F2x_sqr
	.type	F2x_sqr, @function
F2x_sqr:
	pushl     %ebp
	pushl     %edi
	pushl     %esi
	pushl     %ebx
	subl      $92, %esp
	movl      112(%esp), %eax
	call      __x86.get_pc_thunk.bx
.L00002430:
	addl      $_GLOBAL_OFFSET_TABLE_, %ebx
	movl      $0, 16(%esp)
	movl      $1, 20(%esp)
	movl      (%eax), %eax
	movl      $4, 24(%esp)
	movl      $5, 28(%esp)
	movl      avma@GOT(%ebx), %esi
	movl      %eax, 8(%esp)
	andl      $16777215, 8(%esp)
	movl      8(%esp), %eax
	movl      $16, 32(%esp)
	movl      $17, 36(%esp)
	movl      $20, 40(%esp)
	leal      -2(%eax,%eax), %eax
	movl      %eax, %ecx
	movl      %eax, 12(%esp)
	movl      (%esi), %eax
	leal      0(,%ecx,4), %edx
	movl      $21, 44(%esp)
	movl      $64, 48(%esp)
	movl      $65, 52(%esp)
	movl      %eax, %ebp
	subl      %edx, %ebp
	movl      bot@GOT(%ebx), %edx
	movl      $68, 56(%esp)
	movl      $69, 60(%esp)
	movl      $80, 64(%esp)
	subl      (%edx), %eax
	movl      $81, 68(%esp)
	movl      $84, 72(%esp)
	shrl      $2, %eax
	cmpl      %eax, %ecx
	movl      $85, 76(%esp)
	jbe       .L00002500
.L000024F4:
	movl      $14, (%esp)
	call      pari_err@PLT
.L00002500:
	testl     $-16777216, 12(%esp)
	movl      %ebp, (%esi)
	je        .L00002522
.L0000250C:
	leal      .LC1@GOTOFF(%ebx), %eax
	movl      %eax, 4(%esp)
	movl      $15, (%esp)
	call      pari_err@PLT
.L00002522:
	movl      12(%esp), %eax
	orl       $738197504, %eax
	movl      %eax, (%ebp)
	movl      112(%esp), %eax
	cmpl      $2, 8(%esp)
	movl      4(%eax), %eax
	movl      %eax, 4(%ebp)
	movl      $2, %eax
	jle       .L000025EC
.L00002548:
	movl      112(%esp), %edi
	movl      (%edi,%eax,4), %edi
	movl      $0, -8(%ebp,%eax,8)
	movl      %edi, %ecx
	movzwl    %di, %esi
	shrl      $16, %ecx
	testl     %esi, %esi
	je        .L0000259A
.L00002563:
	movl      %esi, %edx
	andl      $15, %edi
	shrl      $12, %edx
	movl      16(%esp,%edx,4), %edx
	sall      $24, %edx
	orl       16(%esp,%edi,4), %edx
	movl      %esi, %edi
	shrl      $4, %edi
	andl      $15, %edi
	shrl      $8, %esi
	movl      16(%esp,%edi,4), %edi
	andl      $15, %esi
	movl      16(%esp,%esi,4), %esi
	sall      $8, %edi
	orl       %edi, %edx
	sall      $16, %esi
	orl       %esi, %edx
	movl      %edx, -8(%ebp,%eax,8)
.L0000259A:
	testl     %ecx, %ecx
	movl      $0, -4(%ebp,%eax,8)
	je        .L000025DF
.L000025A6:
	movl      %ecx, %edx
	movl      %ecx, %esi
	shrl      $12, %edx
	andl      $15, %esi
	movl      16(%esp,%edx,4), %edx
	sall      $24, %edx
	orl       16(%esp,%esi,4), %edx
	movl      %ecx, %esi
	shrl      $4, %esi
	andl      $15, %esi
	shrl      $8, %ecx
	movl      16(%esp,%esi,4), %esi
	andl      $15, %ecx
	movl      16(%esp,%ecx,4), %ecx
	sall      $8, %esi
	orl       %esi, %edx
	sall      $16, %ecx
	orl       %ecx, %edx
	movl      %edx, -4(%ebp,%eax,8)
.L000025DF:
	addl      $1, %eax
	cmpl      8(%esp), %eax
	jne       .L00002548
.L000025EC:
	movl      12(%esp), %eax
	movl      %ebp, (%esp)
	movl      %eax, 4(%esp)
	call      Flx_renormalize@PLT
.L000025FC:
	addl      $92, %esp
	popl      %ebx
	popl      %esi
	popl      %edi
	popl      %ebp
	ret       
	.size	F2x_sqr, .-F2x_sqr
# ----------------------
.L00002604:
	.p2align 4
# ----------------------
	.globl	F2x_rem
	.type	F2x_rem, @function
F2x_rem:
	pushl     %ebp
	pushl     %edi
	pushl     %esi
	pushl     %ebx
	subl      $60, %esp
	call      __x86.get_pc_thunk.bx
.L0000261C:
	addl      $_GLOBAL_OFFSET_TABLE_, %ebx
	movl      80(%esp), %edi
	movl      84(%esp), %eax
	movl      (%edi), %esi
	movl      %eax, (%esp)
	call      F2x_degree@PLT
.L00002634:
	testl     %eax, %eax
	movl      %eax, 40(%esp)
	je        .L000028DF
.L00002640:
	andl      $16777215, %esi
	cmpl      $2, %esi
	movl      %esi, %ebp
	je        .L00002926
.L00002651:
	movl      -4(%edi,%ebp,4), %eax
	leal      -2(%esi), %esi
	sall      $5, %esi
	testl     $-65536, %eax
	jne       .L000027E7
.L00002666:
	movl      $20, %ecx
	movl      $28, %edx
.L00002670:
	testl     $-256, %eax
	je        .L0000267C
.L00002677:
	shrl      $8, %eax
	movl      %ecx, %edx
.L0000267C:
	testl     $-16, %eax
	je        .L00002689
.L00002683:
	subl      $4, %edx
	shrl      $4, %eax
.L00002689:
	addl      __bfffo_tabshi.20469@GOTOFF(%ebx,%eax,4), %edx
	subl      %edx, %esi
	leal      -1(%esi), %eax
	movl      %eax, 16(%esp)
.L00002699:
	movl      avma@GOT(%ebx), %ecx
	movl      (%edi), %edx
	movl      (%ecx), %esi
	andl      $16777215, %edx
	leal      0(,%edx,4), %eax
	subl      %eax, %esi
	movl      bot@GOT(%ebx), %eax
	movl      %esi, 36(%esp)
	movl      (%ecx), %esi
	subl      (%eax), %esi
	movl      %esi, %eax
	shrl      $2, %eax
	cmpl      %eax, %edx
	jbe       .L000026E5
.L000026C9:
	movl      $14, (%esp)
	movl      %ecx, 24(%esp)
	movl      %edx, 20(%esp)
	call      pari_err@PLT
.L000026DD:
	movl      24(%esp), %ecx
	movl      20(%esp), %edx
.L000026E5:
	movl      36(%esp), %esi
	subl      $1, %edx
	movl      %esi, (%ecx)
	movl      (%edi), %eax
	movl      %esi, %ecx
	andl      $-16777217, %eax
	testl     %edx, %edx
	movl      %eax, (%esi)
	movl      16(%esp), %esi
	jle       .L00002717
.L00002701:
	.p2align 3
.L00002708:
	movl      (%edi,%edx,4), %eax
	movl      %eax, (%ecx,%edx,4)
	subl      $1, %edx
	jne       .L00002708
.L00002713:
	movl      %esi, 16(%esp)
.L00002717:
	movl      36(%esp), %eax
	subl      84(%esp), %eax
	movl      %eax, 24(%esp)
	movl      16(%esp), %eax
	cmpl      %eax, 40(%esp)
	movl      %eax, %esi
	jg        .L000027CF
.L00002733:
	.p2align 3
.L00002738:
	movl      84(%esp), %eax
	subl      40(%esp), %esi
	movl      (%eax), %eax
	movl      %esi, %edi
	sarl      $5, %edi
	movl      %eax, 32(%esp)
	andl      $16777215, 32(%esp)
	andl      $31, %esi
	movl      %esi, 16(%esp)
	jne       .L00002850
.L00002760:
	movl      32(%esp), %esi
	movl      84(%esp), %eax
	movl      84(%esp), %edx
	addl      $8, %eax
	cmpl      $2, %esi
	leal      (%edx,%esi,4), %ecx
	jle       .L00002793
.L00002777:
	movl      24(%esp), %esi
	movl      %ebp, 16(%esp)
	.p2align 3
.L00002780:
	movl      (%eax), %ebp
	leal      (%esi,%eax), %edx
	addl      $4, %eax
	xorl      %ebp, (%edx,%edi,4)
	cmpl      %ecx, %eax
	jne       .L00002780
.L0000278F:
	movl      16(%esp), %ebp
.L00002793:
	cmpl      $2, %ebp
	jle       .L000027F9
.L00002798:
	movl      36(%esp), %eax
	movl      36(%esp), %edx
	movl      -4(%eax,%ebp,4), %eax
	testl     %eax, %eax
	je        .L000027B8
.L000027A8:
	jmp       .L00002803
.L000027AA:
	.p2align 3
.L000027B0:
	movl      -4(%edx,%ebp,4), %eax
	testl     %eax, %eax
	jne       .L00002803
.L000027B8:
	subl      $1, %ebp
	cmpl      $2, %ebp
	jne       .L000027B0
.L000027C0:
	movl      $-1, %esi
.L000027C5:
	cmpl      %esi, 40(%esp)
	jle       .L00002738
.L000027CF:
	movl      36(%esp), %eax
	movl      %ebp, 4(%esp)
	movl      %eax, (%esp)
	call      Flx_renormalize@PLT
.L000027DF:
	addl      $60, %esp
	popl      %ebx
	popl      %esi
	popl      %edi
	popl      %ebp
	ret       
.L000027E7:
	shrl      $16, %eax
	movl      $4, %ecx
	movl      $12, %edx
	jmp       .L00002670
.L000027F9:
	je        .L000027C0
.L000027FB:
	movl      36(%esp), %eax
	movl      -4(%eax,%ebp,4), %eax
.L00002803:
	leal      -2(%ebp), %esi
	sall      $5, %esi
	testl     $-65536, %eax
	je        .L000028D0
.L00002814:
	shrl      $16, %eax
	movl      $4, %ecx
	movl      $12, %edx
.L00002821:
	testl     $-256, %eax
	je        .L0000282D
.L00002828:
	shrl      $8, %eax
	movl      %ecx, %edx
.L0000282D:
	testl     $-16, %eax
	je        .L0000283A
.L00002834:
	subl      $4, %edx
	shrl      $4, %eax
.L0000283A:
	addl      __bfffo_tabshi.20469@GOTOFF(%ebx,%eax,4), %edx
	subl      %edx, %esi
	subl      $1, %esi
	jmp       .L000027C5
.L0000284B:
	.p2align 3
.L00002850:
	movl      32(%esp), %ecx
	movl      $32, 20(%esp)
	subl      %esi, 20(%esp)
	cmpl      $2, %ecx
	jle       .L00002793
.L00002869:
	movl      84(%esp), %edx
	movl      84(%esp), %eax
	movl      %ebp, 44(%esp)
	leal      (%edx,%ecx,4), %esi
	movl      %esi, 28(%esp)
	addl      $8, %eax
	xorl      %esi, %esi
	.p2align 3
.L00002888:
	movl      24(%esp), %ecx
	movl      (%eax), %ebp
	leal      (%ecx,%eax), %edx
	movzbl    16(%esp), %ecx
	addl      $4, %eax
	sall      %cl, %ebp
	movzbl    20(%esp), %ecx
	orl       %esi, %ebp
	xorl      %ebp, (%edx,%edi,4)
	movl      -4(%eax), %esi
	shrl      %cl, %esi
	cmpl      28(%esp), %eax
	jne       .L00002888
.L000028B0:
	testl     %esi, %esi
	movl      44(%esp), %ebp
	je        .L00002793
.L000028BC:
	movl      32(%esp), %eax
	addl      %edi, %eax
	movl      36(%esp), %edi
	xorl      %esi, (%edi,%eax,4)
	jmp       .L00002793
.L000028CE:
	.p2align 3
.L000028D0:
	movl      $20, %ecx
	movl      $28, %edx
	jmp       .L00002821
.L000028DF:
	movl      avma@GOT(%ebx), %ecx
	movl      4(%edi), %ebp
	movl      bot@GOT(%ebx), %edx
	movl      (%ecx), %edi
	movl      %edi, %eax
	subl      (%edx), %eax
	leal      -8(%edi), %esi
	cmpl      $7, %eax
	ja        .L00002910
.L000028FC:
	movl      $14, (%esp)
	movl      %ecx, 16(%esp)
	call      pari_err@PLT
.L0000290C:
	movl      16(%esp), %ecx
.L00002910:
	movl      %esi, (%ecx)
	movl      %esi, %eax
	movl      $738197506, -8(%edi)
	movl      %ebp, 4(%esi)
	addl      $60, %esp
	popl      %ebx
	popl      %esi
	popl      %edi
	popl      %ebp
	ret       
.L00002926:
	movl      $-1, 16(%esp)
	jmp       .L00002699
	.size	F2x_rem, .-F2x_rem
# ----------------------
.L00002933:
	.p2align 4
# ----------------------
	.globl	F2x_divrem
	.type	F2x_divrem, @function
F2x_divrem:
	pushl     %ebp
	pushl     %edi
	pushl     %esi
	pushl     %ebx
	subl      $76, %esp
	movl      96(%esp), %edi
	call      __x86.get_pc_thunk.bx
.L00002950:
	addl      $_GLOBAL_OFFSET_TABLE_, %ebx
	movl      4(%edi), %eax
	movl      (%edi), %esi
	movl      %eax, 24(%esp)
	movl      100(%esp), %eax
	movl      %eax, (%esp)
	call      F2x_degree@PLT
.L0000296B:
	testl     %eax, %eax
	movl      %eax, 44(%esp)
	js        .L00002F09
.L00002977:
	cmpl      $1, 104(%esp)
	je        .L00002FC8
.L00002982:
	movl      44(%esp), %ebp
	testl     %ebp, %ebp
	je        .L00002E1D
.L0000298E:
	andl      $16777215, %esi
	cmpl      $2, %esi
	movl      %esi, %ebp
	je        .L00003000
.L0000299F:
	movl      -4(%edi,%ebp,4), %eax
	leal      -2(%esi), %esi
	sall      $5, %esi
	testl     $-65536, %eax
	jne       .L00002C6B
.L000029B4:
	movl      $20, %ecx
	movl      $28, %edx
.L000029BE:
	testl     $-256, %eax
	je        .L000029CA
.L000029C5:
	shrl      $8, %eax
	movl      %ecx, %edx
.L000029CA:
	testl     $-16, %eax
	je        .L000029D7
.L000029D1:
	subl      $4, %edx
	shrl      $4, %eax
.L000029D7:
	addl      __bfffo_tabshi.20469@GOTOFF(%ebx,%eax,4), %edx
	subl      %edx, %esi
	subl      $1, %esi
.L000029E3:
	cmpl      44(%esp), %esi
	js        .L00002D5F
.L000029ED:
	movl      (%edi), %eax
	movl      %eax, 20(%esp)
	movl      100(%esp), %eax
	andl      $16777215, 20(%esp)
	movl      (%eax), %eax
	andl      $16777215, %eax
	subl      %eax, 20(%esp)
	movl      20(%esp), %eax
	leal      3(%eax), %edx
	movl      avma@GOT(%ebx), %eax
	movl      %edx, 28(%esp)
	movl      %eax, 56(%esp)
	movl      (%eax), %eax
	movl      %eax, %ecx
	leal      0(,%edx,4), %eax
	movl      %ecx, %edx
	subl      %eax, %edx
	movl      bot@GOT(%ebx), %eax
	movl      %edx, 48(%esp)
	movl      %eax, %edx
	movl      %eax, 60(%esp)
	movl      %ecx, %eax
	subl      (%edx), %eax
	movl      28(%esp), %edx
	shrl      $2, %eax
	cmpl      %eax, %edx
	jbe       .L00002A5D
.L00002A4D:
	movl      $14, (%esp)
	call      pari_err@PLT
.L00002A59:
	movl      28(%esp), %edx
.L00002A5D:
	movl      56(%esp), %eax
	testl     $-16777216, %edx
	movl      48(%esp), %ecx
	movl      %ecx, (%eax)
	je        .L00002A91
.L00002A6F:
	leal      .LC1@GOTOFF(%ebx), %eax
	movl      %eax, 4(%esp)
	movl      $15, (%esp)
	movl      %edx, 28(%esp)
	call      pari_err@PLT
.L00002A89:
	movl      28(%esp), %edx
	movl      48(%esp), %ecx
.L00002A91:
	movl      %edx, %eax
	orl       $738197504, %eax
	cmpl      $-1, 20(%esp)
	movl      %eax, (%ecx)
	jl        .L00002AC7
.L00002AA1:
	movl      20(%esp), %eax
	movl      $0, 4(%esp)
	leal      8(,%eax,4), %edx
	movl      48(%esp), %eax
	movl      %edx, 8(%esp)
	addl      $4, %eax
	movl      %eax, (%esp)
	call      memset@PLT
.L00002AC7:
	movl      48(%esp), %eax
	movl      24(%esp), %ecx
	movl      %ecx, 4(%eax)
	movl      (%edi), %eax
	movl      %eax, 20(%esp)
	movl      56(%esp), %eax
	andl      $16777215, 20(%esp)
	movl      20(%esp), %edx
	movl      (%eax), %eax
	sall      $2, %edx
	movl      %eax, %ecx
	subl      %edx, %ecx
	movl      %ecx, 40(%esp)
	movl      60(%esp), %ecx
	subl      (%ecx), %eax
	shrl      $2, %eax
	cmpl      %eax, 20(%esp)
	jbe       .L00002B10
.L00002B04:
	movl      $14, (%esp)
	call      pari_err@PLT
.L00002B10:
	movl      40(%esp), %ecx
	movl      56(%esp), %edx
	movl      %ecx, (%edx)
	movl      (%edi), %eax
	andl      $-16777217, %eax
	movl      %eax, (%ecx)
	movl      20(%esp), %eax
	subl      $1, %eax
	testl     %eax, %eax
	jle       .L00002B3B
.L00002B2E:
	.p2align 3
.L00002B30:
	movl      (%edi,%eax,4), %edx
	movl      %edx, (%ecx,%eax,4)
	subl      $1, %eax
	jne       .L00002B30
.L00002B3B:
	movl      40(%esp), %eax
	subl      100(%esp), %eax
	cmpl      %esi, 44(%esp)
	movl      %eax, 28(%esp)
	jg        .L00002C13
.L00002B51:
	.p2align 3
.L00002B58:
	subl      44(%esp), %esi
	movl      $1, %eax
	movl      %esi, %edi
	andl      $31, %esi
	movl      %esi, %ecx
	sall      %cl, %eax
	movl      48(%esp), %ecx
	sarl      $5, %edi
	movl      %esi, 20(%esp)
	orl       %eax, 8(%ecx,%edi,4)
	movl      100(%esp), %eax
	movl      (%eax), %eax
	movl      %eax, 36(%esp)
	andl      $16777215, 36(%esp)
	testl     %esi, %esi
	jne       .L00002CD0
.L00002B93:
	movl      36(%esp), %ecx
	movl      100(%esp), %eax
	movl      100(%esp), %esi
	addl      $8, %eax
	cmpl      $2, %ecx
	leal      (%esi,%ecx,4), %edx
	jle       .L00002BCB
.L00002BAA:
	movl      28(%esp), %esi
	movl      %ebp, 20(%esp)
	.p2align 3
.L00002BB8:
	movl      (%eax), %ebp
	leal      (%esi,%eax), %ecx
	addl      $4, %eax
	xorl      %ebp, (%ecx,%edi,4)
	cmpl      %edx, %eax
	jne       .L00002BB8
.L00002BC7:
	movl      20(%esp), %ebp
.L00002BCB:
	cmpl      $2, %ebp
	jle       .L00002C7D
.L00002BD4:
	movl      40(%esp), %eax
	movl      40(%esp), %edx
	movl      -4(%eax,%ebp,4), %eax
	testl     %eax, %eax
	je        .L00002BFC
.L00002BE4:
	jmp       .L00002C87
.L00002BE9:
	.p2align 4
.L00002BF0:
	movl      -4(%edx,%ebp,4), %eax
	testl     %eax, %eax
	jne       .L00002C87
.L00002BFC:
	subl      $1, %ebp
	cmpl      $2, %ebp
	jne       .L00002BF0
.L00002C04:
	movl      $-1, %esi
.L00002C09:
	cmpl      %esi, 44(%esp)
	jle       .L00002B58
.L00002C13:
	movl      48(%esp), %edi
	movl      (%edi), %eax
	movl      %edi, (%esp)
	andl      $16777215, %eax
	movl      %eax, 4(%esp)
	call      Flx_renormalize@PLT
.L00002C2A:
	movl      %eax, %ecx
	movl      104(%esp), %eax
	testl     %eax, %eax
	je        .L00002F1A
.L00002C38:
	movl      40(%esp), %eax
	movl      %ebp, 4(%esp)
	movl      %ecx, 20(%esp)
	movl      %eax, (%esp)
	call      Flx_renormalize@PLT
.L00002C4C:
	movl      20(%esp), %ecx
	cmpl      $2, 104(%esp)
	je        .L00002FDF
.L00002C5B:
	movl      104(%esp), %edi
	movl      %eax, (%edi)
.L00002C61:
	addl      $76, %esp
	movl      %ecx, %eax
	popl      %ebx
	popl      %esi
	popl      %edi
	popl      %ebp
	ret       
.L00002C6B:
	shrl      $16, %eax
	movl      $4, %ecx
	movl      $12, %edx
	jmp       .L000029BE
.L00002C7D:
	je        .L00002C04
.L00002C7F:
	movl      40(%esp), %eax
	movl      -4(%eax,%ebp,4), %eax
.L00002C87:
	leal      -2(%ebp), %edx
	sall      $5, %edx
	testl     $-65536, %eax
	je        .L00002D50
.L00002C98:
	shrl      $16, %eax
	movl      $4, %esi
	movl      $12, %ecx
.L00002CA5:
	testl     $-256, %eax
	je        .L00002CB1
.L00002CAC:
	shrl      $8, %eax
	movl      %esi, %ecx
.L00002CB1:
	testl     $-16, %eax
	je        .L00002CBE
.L00002CB8:
	subl      $4, %ecx
	shrl      $4, %eax
.L00002CBE:
	addl      __bfffo_tabshi.20469@GOTOFF(%ebx,%eax,4), %ecx
	subl      %ecx, %edx
	leal      -1(%edx), %esi
	jmp       .L00002C09
.L00002CCF:
	.p2align 3
.L00002CD0:
	movl      36(%esp), %ecx
	movl      $32, 24(%esp)
	subl      %esi, 24(%esp)
	cmpl      $2, %ecx
	jle       .L00002BCB
.L00002CE9:
	movl      100(%esp), %esi
	movl      100(%esp), %eax
	movl      %ebp, 52(%esp)
	leal      (%esi,%ecx,4), %ecx
	xorl      %esi, %esi
	addl      $8, %eax
	movl      %ecx, 32(%esp)
	.p2align 3
.L00002D08:
	movl      (%eax), %ebp
	movzbl    20(%esp), %ecx
	movl      28(%esp), %edx
	sall      %cl, %ebp
	movzbl    24(%esp), %ecx
	addl      %eax, %edx
	orl       %esi, %ebp
	xorl      %ebp, (%edx,%edi,4)
	addl      $4, %eax
	movl      -4(%eax), %esi
	shrl      %cl, %esi
	cmpl      32(%esp), %eax
	jne       .L00002D08
.L00002D2F:
	testl     %esi, %esi
	movl      52(%esp), %ebp
	je        .L00002BCB
.L00002D3B:
	movl      40(%esp), %eax
	addl      36(%esp), %edi
	xorl      %esi, (%eax,%edi,4)
	jmp       .L00002BCB
.L00002D4B:
	.p2align 3
.L00002D50:
	movl      $20, %esi
	movl      $28, %ecx
	jmp       .L00002CA5
.L00002D5F:
	cmpl      $2, 104(%esp)
	je        .L00002F4D
.L00002D6A:
	movl      avma@GOT(%ebx), %eax
	movl      bot@GOT(%ebx), %ecx
	movl      (%eax), %esi
	movl      %eax, 56(%esp)
	movl      %ecx, 60(%esp)
	movl      %esi, %edx
	subl      (%ecx), %edx
	leal      -8(%esi), %eax
	cmpl      $7, %edx
	jbe       .L00002EF0
.L00002D90:
	movl      56(%esp), %edx
	movl      24(%esp), %ecx
	movl      %eax, (%edx)
	movl      $738197506, -8(%esi)
	movl      104(%esp), %esi
	movl      %ecx, 4(%eax)
	movl      %eax, %ecx
	testl     %esi, %esi
	je        .L00002C61
.L00002DB2:
	movl      (%edi), %ebp
	movl      (%edx), %edx
	andl      $16777215, %ebp
	leal      0(,%ebp,4), %ecx
	movl      %edx, %esi
	subl      %ecx, %esi
	movl      60(%esp), %ecx
	subl      (%ecx), %edx
	shrl      $2, %edx
	cmpl      %edx, %ebp
	jbe       .L00002DE8
.L00002DD4:
	movl      $14, (%esp)
	movl      %eax, 20(%esp)
	call      pari_err@PLT
.L00002DE4:
	movl      20(%esp), %eax
.L00002DE8:
	movl      56(%esp), %ecx
	subl      $1, %ebp
	movl      %esi, (%ecx)
	movl      (%edi), %edx
	andl      $-16777217, %edx
	testl     %ebp, %ebp
	movl      %edx, (%esi)
	jle       .L00002E0B
.L00002DFF:
	.p2align 3
.L00002E00:
	movl      (%edi,%ebp,4), %edx
	movl      %edx, (%esi,%ebp,4)
	subl      $1, %ebp
	jne       .L00002E00
.L00002E0B:
	movl      104(%esp), %edi
	movl      %eax, %ecx
	movl      %ecx, %eax
	movl      %esi, (%edi)
	addl      $76, %esp
	popl      %ebx
	popl      %esi
	popl      %edi
	popl      %ebp
	ret       
.L00002E1D:
	movl      avma@GOT(%ebx), %eax
	movl      (%edi), %esi
	movl      %eax, 56(%esp)
	movl      (%eax), %eax
	andl      $16777215, %esi
	leal      0(,%esi,4), %edx
	movl      %eax, %ebp
	subl      %edx, %ebp
	movl      bot@GOT(%ebx), %edx
	subl      (%edx), %eax
	movl      %edx, 60(%esp)
	shrl      $2, %eax
	cmpl      %eax, %esi
	ja        .L00002EDF
.L00002E53:
	movl      56(%esp), %eax
	subl      $1, %esi
	movl      %ebp, (%eax)
	movl      (%edi), %eax
	andl      $-16777217, %eax
	testl     %esi, %esi
	movl      %eax, (%ebp)
	jle       .L00002E7C
.L00002E6A:
	.p2align 3
.L00002E70:
	movl      (%edi,%esi,4), %eax
	movl      %eax, (%ebp,%esi,4)
	subl      $1, %esi
	jne       .L00002E70
.L00002E7C:
	cmpl      $2, 104(%esp)
	jne       .L00002E8F
.L00002E83:
	movl      %ebp, %ecx
.L00002E85:
	addl      $76, %esp
	movl      %ecx, %eax
	popl      %ebx
	popl      %esi
	popl      %edi
	popl      %ebp
	ret       
.L00002E8F:
	movl      104(%esp), %edi
	testl     %edi, %edi
	je        .L00002E83
.L00002E97:
	movl      56(%esp), %eax
	movl      60(%esp), %edx
	movl      (%eax), %edi
	movl      %edi, %eax
	subl      (%edx), %eax
	leal      -8(%edi), %esi
	cmpl      $7, %eax
	ja        .L00002EB9
.L00002EAD:
	movl      $14, (%esp)
	call      pari_err@PLT
.L00002EB9:
	movl      56(%esp), %eax
	movl      %ebp, %ecx
	movl      %esi, (%eax)
	movl      24(%esp), %eax
	movl      $738197506, -8(%edi)
	movl      %eax, 4(%esi)
	movl      104(%esp), %eax
	movl      %esi, (%eax)
	addl      $76, %esp
	movl      %ecx, %eax
	popl      %ebx
	popl      %esi
	popl      %edi
	popl      %ebp
	ret       
.L00002EDF:
	movl      $14, (%esp)
	call      pari_err@PLT
.L00002EEB:
	jmp       .L00002E53
.L00002EF0:
	movl      $14, (%esp)
	movl      %eax, 20(%esp)
	call      pari_err@PLT
.L00002F00:
	movl      20(%esp), %eax
	jmp       .L00002D90
.L00002F09:
	movl      $27, (%esp)
	call      pari_err@PLT
.L00002F15:
	jmp       .L00002977
.L00002F1A:
	movl      40(%esp), %edi
	movl      (%edi), %eax
	andl      $16777215, %eax
	leal      (%edi,%eax,4), %eax
	movl      60(%esp), %edi
	cmpl      (%edi), %eax
	jb        .L00002C61
.L00002F34:
	movl      top@GOT(%ebx), %edx
	cmpl      (%edx), %eax
	jae       .L00002C61
.L00002F42:
	movl      56(%esp), %edi
	movl      %eax, (%edi)
	jmp       .L00002C61
.L00002F4D:
	xorl      %ecx, %ecx
	testl     %esi, %esi
	jns       .L00002C61
.L00002F57:
	movl      avma@GOT(%ebx), %eax
	movl      bot@GOT(%ebx), %edx
	movl      (%edi), %ebp
	movl      (%eax), %ecx
	movl      %eax, 56(%esp)
	andl      $16777215, %ebp
	leal      0(,%ebp,4), %eax
	movl      %ecx, %esi
	subl      (%edx), %ecx
	subl      %eax, %esi
	shrl      $2, %ecx
	cmpl      %ecx, %ebp
	jbe       .L00002F99
.L00002F85:
	movl      $14, (%esp)
	movl      %eax, 20(%esp)
	call      pari_err@PLT
.L00002F95:
	movl      20(%esp), %eax
.L00002F99:
	movl      56(%esp), %edx
	movl      %esi, (%edx)
	movl      (%edi), %edx
	andl      $-16777217, %edx
	cmpl      $1, %ebp
	movl      %edx, (%esi)
	jle       .L00003021
.L00002FAE:
	leal      -4(%eax,%esi), %ebp
	subl      %esi, %edi
.L00002FB4:
	movl      (%edi,%ebp), %eax
	subl      $4, %ebp
	movl      %eax, 4(%ebp)
	cmpl      %esi, %ebp
	jne       .L00002FB4
.L00002FC1:
	movl      %ebp, %ecx
	jmp       .L00002E85
.L00002FC8:
	movl      100(%esp), %eax
	movl      %edi, (%esp)
	movl      %eax, 4(%esp)
	call      F2x_rem@PLT
.L00002FD8:
	movl      %eax, %ecx
	jmp       .L00002C61
.L00002FDF:
	movl      (%eax), %edx
	andl      $16777215, %edx
	cmpl      $2, %edx
	jne       .L0000300A
.L00002FEC:
	movl      60(%esp), %edi
	addl      $8, %eax
	cmpl      (%edi), %eax
	jb        .L00002C61
.L00002FFB:
	jmp       .L00002F34
.L00003000:
	movl      $-1, %esi
	jmp       .L000029E3
.L0000300A:
	movl      (%ecx), %eax
	movl      56(%esp), %edi
	andl      $16777215, %eax
	leal      (%ecx,%eax,4), %eax
	xorl      %ecx, %ecx
	movl      %eax, (%edi)
	jmp       .L00002C61
.L00003021:
	movl      %esi, %ecx
	jmp       .L00002C61
	.size	F2x_divrem, .-F2x_divrem
# ----------------------
.L00003028:
	.p2align 4
# ----------------------
	.globl	F2x_deriv
	.type	F2x_deriv, @function
F2x_deriv:
	pushl     %ebp
	pushl     %edi
	pushl     %esi
	pushl     %ebx
	call      __x86.get_pc_thunk.bx
.L00003039:
	addl      $_GLOBAL_OFFSET_TABLE_, %ebx
	subl      $28, %esp
	movl      48(%esp), %ebp
	movl      (%ebp), %esi
	movl      avma@GOT(%ebx), %edx
	andl      $16777215, %esi
	movl      (%edx), %eax
	leal      0(,%esi,4), %ecx
	movl      %eax, %edi
	subl      %ecx, %edi
	movl      bot@GOT(%ebx), %ecx
	subl      (%ecx), %eax
	shrl      $2, %eax
	cmpl      %eax, %esi
	jbe       .L00003085
.L00003071:
	movl      $14, (%esp)
	movl      %edx, 12(%esp)
	call      pari_err@PLT
.L00003081:
	movl      12(%esp), %edx
.L00003085:
	movl      %esi, %eax
	orl       $738197504, %eax
	cmpl      $2, %esi
	movl      %edi, (%edx)
	movl      $2, %edx
	movl      %eax, (%edi)
	movl      4(%ebp), %eax
	movl      %eax, 4(%edi)
	jle       .L000030B5
.L000030A0:
	movl      (%ebp,%edx,4), %eax
	shrl      $1, %eax
	andl      $1431655765, %eax
	movl      %eax, (%edi,%edx,4)
	addl      $1, %edx
	cmpl      %esi, %edx
	jne       .L000030A0
.L000030B5:
	movl      %esi, 4(%esp)
	movl      %edi, (%esp)
	call      Flx_renormalize@PLT
.L000030C1:
	addl      $28, %esp
	popl      %ebx
	popl      %esi
	popl      %edi
	popl      %ebp
	ret       
	.size	F2x_deriv, .-F2x_deriv
# ----------------------
.L000030C9:
	.p2align 4
# ----------------------
	.globl	F2x_gcd
	.type	F2x_gcd, @function
F2x_gcd:
	pushl     %ebp
	pushl     %edi
	pushl     %esi
	pushl     %ebx
	call      __x86.get_pc_thunk.bx
.L000030D9:
	addl      $_GLOBAL_OFFSET_TABLE_, %ebx
	subl      $44, %esp
	movl      68(%esp), %ebp
	movl      64(%esp), %ecx
	movl      avma@GOT(%ebx), %esi
	movl      bot@GOT(%ebx), %edi
	movl      (%esi), %eax
	movl      (%edi), %edi
	movl      %eax, 24(%esp)
	subl      %edi, %eax
	shrl      $2, %eax
	addl      %eax, %edi
	movl      (%ebp), %eax
	movl      %eax, %edx
	andl      $16777215, %edx
	movl      %edx, 28(%esp)
	movl      (%ecx), %edx
	andl      $16777215, %edx
	cmpl      %edx, 28(%esp)
	jle       .L000031D8
.L00003126:
	movl      %ebp, 64(%esp)
	movl      %ebp, %edx
	movl      %ecx, 68(%esp)
	movl      (%ecx), %eax
.L00003132:
	movl      %eax, %ebp
	jmp       .L00003158
.L00003136:
	.p2align 3
.L00003138:
	movl      %edx, (%esp)
	movl      %ecx, 4(%esp)
	call      F2x_rem@PLT
.L00003144:
	movl      68(%esp), %edx
	cmpl      (%esi), %edi
	movl      %edx, 64(%esp)
	movl      %eax, 68(%esp)
	ja        .L00003178
.L00003154:
	movl      (%eax), %ebp
	movl      %eax, %ecx
.L00003158:
	andl      $16777215, %ebp
	cmpl      $2, %ebp
	jne       .L00003138
.L00003163:
	cmpl      (%esi), %edi
	ja        .L000031E8
.L0000316B:
	addl      $44, %esp
	movl      %edx, %eax
	popl      %ebx
	popl      %esi
	popl      %edi
	popl      %ebp
	ret       
.L00003175:
	.p2align 3
.L00003178:
	movl      DEBUGMEM@GOT(%ebx), %ecx
	cmpl      $1, (%ecx)
	jbe       .L000031A5
.L00003183:
	movl      %eax, (%esp)
	call      F2x_degree@PLT
.L0000318B:
	movl      $3, (%esp)
	movl      %eax, 8(%esp)
	leal      .LC2@GOTOFF(%ebx), %eax
	movl      %eax, 4(%esp)
	call      pari_warn@PLT
.L000031A5:
	leal      68(%esp), %eax
	movl      %eax, 12(%esp)
	leal      64(%esp), %eax
	movl      %eax, 8(%esp)
	movl      24(%esp), %eax
	movl      $2, 4(%esp)
	movl      %eax, (%esp)
	call      gerepileall.constprop.5
.L000031C9:
	movl      68(%esp), %ecx
	movl      64(%esp), %edx
	movl      (%ecx), %ebp
	jmp       .L00003158
.L000031D5:
	.p2align 3
.L000031D8:
	movl      %ecx, %edx
	movl      %ebp, %ecx
	jmp       .L00003132
.L000031E1:
	.p2align 3
.L000031E8:
	movl      bot@GOT(%ebx), %eax
	cmpl      (%eax), %edx
	jb        .L00003248
.L000031F2:
	movl      top@GOT(%ebx), %eax
	cmpl      (%eax), %edx
	jae       .L00003248
.L000031FC:
	cmpl      24(%esp), %edx
	jae       .L00003248
.L00003202:
	movl      (%edx), %eax
	movl      24(%esp), %edi
	andl      $16777215, %eax
	leal      0(,%eax,4), %ecx
	subl      %ecx, %edi
	testl     %eax, %eax
	movl      %edi, (%esi)
	je        .L00003235
.L0000321C:
	leal      -4(%ecx,%edi), %eax
	subl      %edi, %edx
	leal      -4(%edi), %esi
	.p2align 3
.L00003228:
	movl      (%edx,%eax), %ecx
	subl      $4, %eax
	movl      %ecx, 4(%eax)
	cmpl      %esi, %eax
	jne       .L00003228
.L00003235:
	addl      $44, %esp
	movl      %edi, %edx
	popl      %ebx
	movl      %edx, %eax
	popl      %esi
	popl      %edi
	popl      %ebp
	ret       
.L00003241:
	.p2align 3
.L00003248:
	movl      24(%esp), %eax
	movl      %eax, (%esi)
	addl      $44, %esp
	movl      %edx, %eax
	popl      %ebx
	popl      %esi
	popl      %edi
	popl      %ebp
	ret       
	.size	F2x_gcd, .-F2x_gcd
# ----------------------
.L00003258:
	.p2align 4
# ----------------------
	.globl	F2x_extgcd
	.type	F2x_extgcd, @function
F2x_extgcd:
	pushl     %ebp
	pushl     %edi
	pushl     %esi
	pushl     %ebx
	call      __x86.get_pc_thunk.bx
.L00003269:
	addl      $_GLOBAL_OFFSET_TABLE_, %ebx
	subl      $92, %esp
	movl      avma@GOT(%ebx), %esi
	movl      bot@GOT(%ebx), %ecx
	movl      (%esi), %eax
	movl      (%ecx), %edx
	movl      %eax, %ebp
	movl      %eax, 32(%esp)
	subl      %edx, %eax
	subl      $8, %ebp
	movl      %eax, %edi
	shrl      $2, %edi
	addl      %edx, %edi
	cmpl      $7, %eax
	movl      %edi, 36(%esp)
	movl      112(%esp), %edi
	movl      4(%edi), %edx
	movl      %edi, 64(%esp)
	movl      116(%esp), %edi
	movl      %edi, 68(%esp)
	ja        .L000032CC
.L000032B0:
	movl      $14, (%esp)
	movl      %ecx, 44(%esp)
	movl      %edx, 40(%esp)
	call      pari_err@PLT
.L000032C4:
	movl      44(%esp), %ecx
	movl      40(%esp), %edx
.L000032CC:
	movl      32(%esp), %eax
	movl      %ebp, (%esi)
	movl      $738197506, -8(%eax)
	movl      (%esi), %eax
	movl      %edx, 4(%ebp)
	movl      %ebp, 60(%esp)
	movl      %eax, %edi
	subl      (%ecx), %edi
	leal      -12(%eax), %ebp
	cmpl      $11, %edi
	ja        .L0000330A
.L000032EE:
	movl      $14, (%esp)
	movl      %eax, 44(%esp)
	movl      %edx, 40(%esp)
	call      pari_err@PLT
.L00003302:
	movl      44(%esp), %eax
	movl      40(%esp), %edx
.L0000330A:
	movl      %ebp, (%esi)
	movl      36(%esp), %edi
	movl      $738197507, -12(%eax)
	movl      %edx, 4(%ebp)
	movl      68(%esp), %edx
	movl      $1, 8(%ebp)
	movl      %ebp, 72(%esp)
	leal      76(%esp), %ebp
	movl      (%edx), %eax
	andl      $16777215, %eax
	cmpl      $2, %eax
	je        .L00003419
.L0000333D:
	.p2align 3
.L00003340:
	movl      64(%esp), %eax
	movl      %edx, 4(%esp)
	movl      %ebp, 8(%esp)
	movl      %eax, (%esp)
	call      F2x_divrem@PLT
.L00003354:
	movl      72(%esp), %edx
	movl      %edx, 4(%esp)
	movl      %eax, (%esp)
	call      F2x_mul@PLT
.L00003364:
	movl      %eax, 4(%esp)
	movl      60(%esp), %eax
	movl      %eax, (%esp)
	call      F2x_add@PLT
.L00003374:
	movl      72(%esp), %edx
	cmpl      (%esi), %edi
	movl      %edx, 60(%esp)
	movl      76(%esp), %edx
	movl      %eax, 72(%esp)
	movl      68(%esp), %eax
	movl      %edx, 56(%esp)
	movl      %edx, 68(%esp)
	movl      %eax, 64(%esp)
	jbe       .L00003405
.L00003398:
	movl      DEBUGMEM@GOT(%ebx), %ecx
	cmpl      $1, (%ecx)
	jbe       .L000033C5
.L000033A3:
	movl      %eax, (%esp)
	call      F2x_degree@PLT
.L000033AB:
	movl      $3, (%esp)
	movl      %eax, 8(%esp)
	leal      .LC3@GOTOFF(%ebx), %eax
	movl      %eax, 4(%esp)
	call      pari_warn@PLT
.L000033C5:
	leal      72(%esp), %eax
	movl      %eax, 24(%esp)
	leal      60(%esp), %eax
	movl      %eax, 20(%esp)
	leal      56(%esp), %eax
	movl      %eax, 16(%esp)
	leal      68(%esp), %eax
	movl      %eax, 12(%esp)
	leal      64(%esp), %eax
	movl      %eax, 8(%esp)
	movl      32(%esp), %eax
	movl      $5, 4(%esp)
	movl      %eax, (%esp)
	call      gerepileall.constprop.4
.L00003401:
	movl      68(%esp), %edx
.L00003405:
	movl      (%edx), %eax
	andl      $16777215, %eax
	cmpl      $2, %eax
	jne       .L00003340
.L00003415:
	movl      %edi, 36(%esp)
.L00003419:
	movl      120(%esp), %eax
	testl     %eax, %eax
	je        .L000034B8
.L00003425:
	movl      60(%esp), %eax
	movl      %eax, 4(%esp)
	movl      116(%esp), %eax
	movl      %eax, (%esp)
	call      F2x_mul@PLT
.L00003439:
	movl      %eax, 4(%esp)
	movl      64(%esp), %eax
	movl      %eax, (%esp)
	call      F2x_add@PLT
.L00003449:
	movl      112(%esp), %ecx
	movl      $0, 8(%esp)
	movl      %ecx, 4(%esp)
	movl      %eax, (%esp)
	call      F2x_divrem@PLT
.L00003461:
	movl      120(%esp), %ecx
	movl      %eax, (%ecx)
	movl      60(%esp), %eax
	movl      124(%esp), %ecx
	movl      %eax, (%ecx)
	movl      36(%esp), %ecx
	movl      $3, %eax
	cmpl      (%esi), %ecx
	jbe       .L000034A6
.L0000347E:
	movl      120(%esp), %esi
	leal      64(%esp), %edx
	movl      %eax, 4(%esp)
	movl      32(%esp), %eax
	movl      %edx, 8(%esp)
	movl      %esi, 16(%esp)
	movl      124(%esp), %esi
	movl      %eax, (%esp)
	movl      %esi, 12(%esp)
	call      gerepileall
.L000034A6:
	movl      64(%esp), %eax
	addl      $92, %esp
	popl      %ebx
	popl      %esi
	popl      %edi
	popl      %ebp
	ret       
.L000034B2:
	.p2align 3
.L000034B8:
	movl      60(%esp), %eax
	movl      124(%esp), %ecx
	movl      %eax, (%ecx)
	movl      36(%esp), %ecx
	movl      $2, %eax
	cmpl      (%esi), %ecx
	ja        .L0000347E
.L000034CF:
	jmp       .L000034A6
	.size	F2x_extgcd, .-F2x_extgcd
# ----------------------
.L000034D1:
	.p2align 4
# ----------------------
	.globl	F2xq_mul
	.type	F2xq_mul, @function
F2xq_mul:
	pushl     %ebx
	subl      $24, %esp
	movl      36(%esp), %eax
	call      __x86.get_pc_thunk.bx
.L000034ED:
	addl      $_GLOBAL_OFFSET_TABLE_, %ebx
	movl      %eax, 4(%esp)
	movl      32(%esp), %eax
	movl      %eax, (%esp)
	call      F2x_mul@PLT
.L00003503:
	movl      40(%esp), %edx
	movl      %edx, 4(%esp)
	movl      %eax, (%esp)
	call      F2x_rem@PLT
.L00003513:
	addl      $24, %esp
	popl      %ebx
	ret       
	.size	F2xq_mul, .-F2xq_mul
# ----------------------
.L00003518:
	.p2align 4
# ----------------------
	.local	_F2xq_mul
	.type	_F2xq_mul, @function
_F2xq_mul:
	pushl     %ebx
	subl      $24, %esp
	movl      32(%esp), %eax
	call      __x86.get_pc_thunk.bx
.L0000352D:
	addl      $_GLOBAL_OFFSET_TABLE_, %ebx
	movl      %eax, 8(%esp)
	movl      40(%esp), %eax
	movl      %eax, 4(%esp)
	movl      36(%esp), %eax
	movl      %eax, (%esp)
	call      F2xq_mul@PLT
.L0000354B:
	addl      $24, %esp
	popl      %ebx
	ret       
	.size	_F2xq_mul, .-_F2xq_mul
# ----------------------
	.globl	F2xq_sqr
	.type	F2xq_sqr, @function
F2xq_sqr:
	pushl     %ebx
	subl      $24, %esp
	call      __x86.get_pc_thunk.bx
.L00003559:
	addl      $_GLOBAL_OFFSET_TABLE_, %ebx
	movl      32(%esp), %eax
	movl      %eax, (%esp)
	call      F2x_sqr@PLT
.L0000356B:
	movl      36(%esp), %edx
	movl      %edx, 4(%esp)
	movl      %eax, (%esp)
	call      F2x_rem@PLT
.L0000357B:
	addl      $24, %esp
	popl      %ebx
	ret       
	.size	F2xq_sqr, .-F2xq_sqr
# ----------------------
	.local	_F2xq_sqr
	.type	_F2xq_sqr, @function
_F2xq_sqr:
	pushl     %ebx
	subl      $24, %esp
	movl      32(%esp), %eax
	call      __x86.get_pc_thunk.bx
.L0000358D:
	addl      $_GLOBAL_OFFSET_TABLE_, %ebx
	movl      %eax, 4(%esp)
	movl      36(%esp), %eax
	movl      %eax, (%esp)
	call      F2xq_sqr@PLT
.L000035A3:
	addl      $24, %esp
	popl      %ebx
	ret       
	.size	_F2xq_sqr, .-_F2xq_sqr
# ----------------------
.L000035A8:
	.p2align 4
# ----------------------
	.globl	F2xq_invsafe
	.type	F2xq_invsafe, @function
F2xq_invsafe:
	pushl     %ebx
	subl      $40, %esp
	leal      28(%esp), %eax
	movl      %eax, 12(%esp)
	movl      48(%esp), %eax
	call      __x86.get_pc_thunk.bx
.L000035C5:
	addl      $_GLOBAL_OFFSET_TABLE_, %ebx
	movl      $0, 8(%esp)
	movl      %eax, 4(%esp)
	movl      52(%esp), %eax
	movl      %eax, (%esp)
	call      F2x_extgcd@PLT
.L000035E3:
	movl      %eax, (%esp)
	call      F2x_degree@PLT
.L000035EB:
	xorl      %edx, %edx
	testl     %eax, %eax
	cmove     28(%esp), %edx
	addl      $40, %esp
	popl      %ebx
	movl      %edx, %eax
	ret       
	.size	F2xq_invsafe, .-F2xq_invsafe
# ----------------------
.L000035FB:
	.p2align 3
# ----------------------
	.globl	F2xq_inv
	.type	F2xq_inv, @function
F2xq_inv:
	pushl     %edi
	pushl     %esi
	pushl     %ebx
	call      __x86.get_pc_thunk.bx
.L00003608:
	addl      $_GLOBAL_OFFSET_TABLE_, %ebx
	subl      $16, %esp
	movl      36(%esp), %eax
	movl      avma@GOT(%ebx), %esi
	movl      (%esi), %edi
	movl      %eax, 4(%esp)
	movl      32(%esp), %eax
	movl      %eax, (%esp)
	call      F2xq_invsafe@PLT
.L0000362D:
	testl     %eax, %eax
	je        .L00003690
.L00003631:
	movl      bot@GOT(%ebx), %edx
	cmpl      (%edx), %eax
	jb        .L00003645
.L0000363B:
	movl      top@GOT(%ebx), %edx
	cmpl      (%edx), %eax
	jb        .L00003650
.L00003645:
	movl      %edi, (%esi)
	addl      $16, %esp
	popl      %ebx
	popl      %esi
	popl      %edi
	ret       
.L0000364E:
	.p2align 3
.L00003650:
	cmpl      %edi, %eax
	jae       .L00003645
.L00003654:
	movl      (%eax), %edx
	andl      $16777215, %edx
	leal      0(,%edx,4), %ecx
	subl      %ecx, %edi
	testl     %edx, %edx
	movl      %edi, (%esi)
	je        .L00003685
.L0000366B:
	leal      -4(%ecx,%edi), %edx
	subl      %edi, %eax
	leal      -4(%edi), %esi
	.p2align 3
.L00003678:
	movl      (%eax,%edx), %ecx
	subl      $4, %edx
	movl      %ecx, 4(%edx)
	cmpl      %esi, %edx
	jne       .L00003678
.L00003685:
	addl      $16, %esp
	movl      %edi, %eax
	popl      %ebx
	popl      %esi
	popl      %edi
	ret       
.L0000368E:
	.p2align 3
.L00003690:
	movl      $27, (%esp)
	movl      %eax, 12(%esp)
	call      pari_err@PLT
.L000036A0:
	movl      12(%esp), %eax
	jmp       .L00003631
	.size	F2xq_inv, .-F2xq_inv
# ----------------------
.L000036A6:
	.p2align 4
# ----------------------
	.globl	F2xq_div
	.type	F2xq_div, @function
F2xq_div:
	pushl     %ebp
	pushl     %edi
	pushl     %esi
	pushl     %ebx
	call      __x86.get_pc_thunk.bx
.L000036B9:
	addl      $_GLOBAL_OFFSET_TABLE_, %ebx
	subl      $28, %esp
	movl      56(%esp), %esi
	movl      52(%esp), %eax
	movl      avma@GOT(%ebx), %edi
	movl      (%edi), %ebp
	movl      %esi, 4(%esp)
	movl      %eax, (%esp)
	call      F2xq_inv@PLT
.L000036DE:
	movl      %esi, 8(%esp)
	movl      %eax, 4(%esp)
	movl      48(%esp), %eax
	movl      %eax, (%esp)
	call      F2xq_mul@PLT
.L000036F2:
	movl      bot@GOT(%ebx), %edx
	cmpl      (%edx), %eax
	jb        .L00003706
.L000036FC:
	movl      top@GOT(%ebx), %edx
	cmpl      (%edx), %eax
	jb        .L00003710
.L00003706:
	movl      %ebp, (%edi)
	addl      $28, %esp
	popl      %ebx
	popl      %esi
	popl      %edi
	popl      %ebp
	ret       
.L00003710:
	cmpl      %ebp, %eax
	jae       .L00003706
.L00003714:
	movl      (%eax), %edx
	andl      $16777215, %edx
	leal      0(,%edx,4), %ecx
	subl      %ecx, %ebp
	testl     %edx, %edx
	movl      %ebp, (%edi)
	je        .L00003745
.L0000372B:
	subl      %ebp, %eax
	leal      -4(%ecx,%ebp), %edx
	movl      %eax, %esi
	leal      -4(%ebp), %edi
	.p2align 3
.L00003738:
	movl      (%esi,%edx), %ecx
	subl      $4, %edx
	movl      %ecx, 4(%edx)
	cmpl      %edi, %edx
	jne       .L00003738
.L00003745:
	addl      $28, %esp
	movl      %ebp, %eax
	popl      %ebx
	popl      %esi
	popl      %edi
	popl      %ebp
	ret       
	.size	F2xq_div, .-F2xq_div
# ----------------------
.L0000374F:
	.p2align 3
# ----------------------
	.globl	F2xq_pow
	.type	F2xq_pow, @function
F2xq_pow:
	pushl     %ebp
	pushl     %edi
	pushl     %esi
	pushl     %ebx
	subl      $44, %esp
	movl      68(%esp), %esi
	call      __x86.get_pc_thunk.bx
.L00003760:
	addl      $_GLOBAL_OFFSET_TABLE_, %ebx
	movl      4(%esi), %edx
	movl      avma@GOT(%ebx), %edi
	movl      %edx, %eax
	sarl      $30, %eax
	testl     %eax, %eax
	movl      (%edi), %ebp
	je        .L000038D8
.L0000377E:
	andl      $16777215, %edx
	cmpl      $3, %edx
	je        .L00003848
.L0000378D:
	testl     %eax, %eax
	js        .L00003948
.L00003795:
	leal      _F2xq_mul@GOTOFF(%ebx), %eax
	movl      %eax, 16(%esp)
	leal      _F2xq_sqr@GOTOFF(%ebx), %eax
	movl      %eax, 12(%esp)
	movl      72(%esp), %eax
	movl      %esi, 4(%esp)
	movl      %eax, 8(%esp)
	movl      64(%esp), %eax
	movl      %eax, (%esp)
	call      gen_pow@PLT
.L000037C1:
	movl      bot@GOT(%ebx), %edx
	cmpl      (%edx), %eax
	jb        .L00003838
.L000037CB:
	movl      top@GOT(%ebx), %edx
	cmpl      (%edx), %eax
	jae       .L00003838
.L000037D5:
	cmpl      %ebp, %eax
	jae       .L00003838
.L000037D9:
	movl      (%eax), %ecx
	movl      %ecx, %edx
	shrl      $25, %edx
	cmpl      $2, %edx
	je        .L00003990
.L000037E9:
	jg        .L00003988
.L000037EF:
	cmpl      $1, %edx
	jne       .L00003968
.L000037F8:
	movl      4(%eax), %esi
	andl      $16777215, %esi
	leal      0(,%esi,4), %edx
	subl      %edx, %ebp
	leal      -1(%esi), %edx
	testl     %edx, %edx
	jle       .L00003824
.L00003811:
	.p2align 3
.L00003818:
	movl      (%eax,%edx,4), %ecx
	movl      %ecx, (%ebp,%edx,4)
	subl      $1, %edx
	jne       .L00003818
.L00003824:
	orl       $33554432, %esi
	movl      %ebp, %eax
	movl      %esi, (%ebp)
	movl      %ebp, (%edi)
	jmp       .L0000383A
.L00003833:
	.p2align 3
.L00003838:
	movl      %ebp, (%edi)
.L0000383A:
	addl      $44, %esp
	popl      %ebx
	popl      %esi
	popl      %edi
	popl      %ebp
	ret       
.L00003842:
	.p2align 3
.L00003848:
	cmpl      $1, 8(%esi)
	jne       .L0000378D
.L00003852:
	testl     %eax, %eax
	js        .L00003926
.L0000385A:
	movl      64(%esp), %eax
	movl      %ebp, %esi
	movl      bot@GOT(%ebx), %ecx
	movl      (%eax), %eax
	subl      (%ecx), %ebp
	andl      $16777215, %eax
	leal      0(,%eax,4), %edx
	shrl      $2, %ebp
	subl      %edx, %esi
	cmpl      %ebp, %eax
	jbe       .L0000389B
.L0000387F:
	movl      $14, (%esp)
	movl      %edx, 28(%esp)
	movl      %eax, 24(%esp)
	call      pari_err@PLT
.L00003893:
	movl      28(%esp), %edx
	movl      24(%esp), %eax
.L0000389B:
	movl      %esi, (%edi)
	movl      64(%esp), %edi
	movl      (%edi), %ecx
	andl      $-16777217, %ecx
	cmpl      $1, %eax
	movl      %ecx, (%esi)
	jle       .L000039C4
.L000038B4:
	movl      %edi, %ecx
	leal      -4(%edx,%esi), %eax
	subl      %esi, %ecx
	.p2align 3
.L000038C0:
	movl      (%ecx,%eax), %edx
	subl      $4, %eax
	movl      %edx, 4(%eax)
	cmpl      %esi, %eax
	jne       .L000038C0
.L000038CD:
	addl      $44, %esp
	popl      %ebx
	popl      %esi
	popl      %edi
	popl      %ebp
	ret       
.L000038D5:
	.p2align 3
.L000038D8:
	movl      bot@GOT(%ebx), %edx
	movl      %ebp, %ecx
	movl      64(%esp), %eax
	leal      -12(%ebp), %esi
	subl      (%edx), %ecx
	movl      4(%eax), %eax
	cmpl      $11, %ecx
	jbe       .L00003910
.L000038F1:
	movl      %esi, (%edi)
	movl      $738197507, -12(%ebp)
	movl      %eax, 4(%esi)
	movl      %esi, %eax
	movl      $1, 8(%esi)
	addl      $44, %esp
	popl      %ebx
	popl      %esi
	popl      %edi
	popl      %ebp
	ret       
.L0000390E:
	.p2align 3
.L00003910:
	movl      $14, (%esp)
	movl      %eax, 24(%esp)
	call      pari_err@PLT
.L00003920:
	movl      24(%esp), %eax
	jmp       .L000038F1
.L00003926:
	movl      72(%esp), %eax
	movl      %eax, 4(%esp)
	movl      64(%esp), %eax
	movl      %eax, (%esp)
	call      F2xq_inv@PLT
.L0000393A:
	addl      $44, %esp
	popl      %ebx
	popl      %esi
	popl      %edi
	popl      %ebp
	ret       
.L00003942:
	.p2align 3
.L00003948:
	movl      72(%esp), %eax
	movl      %eax, 4(%esp)
	movl      64(%esp), %eax
	movl      %eax, (%esp)
	call      F2xq_inv@PLT
.L0000395C:
	movl      %eax, 64(%esp)
	jmp       .L00003795
.L00003965:
	.p2align 3
.L00003968:
	andl      $16777215, %ecx
	movl      %eax, 8(%esp)
	leal      (%eax,%ecx,4), %eax
	movl      %eax, 4(%esp)
	movl      %ebp, (%esp)
	call      gerepile@PLT
.L00003981:
	jmp       .L0000383A
.L00003986:
	.p2align 3
.L00003988:
	subl      $21, %edx
	cmpl      $1, %edx
	ja        .L00003968
.L00003990:
	andl      $16777215, %ecx
	leal      0(,%ecx,4), %edx
	subl      %edx, %ebp
	subl      %ebp, %eax
	testl     %ecx, %ecx
	movl      %ebp, (%edi)
	leal      -4(%edx,%ebp), %edx
	leal      -4(%ebp), %esi
	je        .L000039BD
.L000039AE:
	.p2align 3
.L000039B0:
	movl      (%eax,%edx), %ecx
	subl      $4, %edx
	movl      %ecx, 4(%edx)
	cmpl      %esi, %edx
	jne       .L000039B0
.L000039BD:
	movl      %ebp, %eax
	jmp       .L0000383A
.L000039C4:
	movl      %esi, %eax
	jmp       .L0000383A
	.size	F2xq_pow, .-F2xq_pow
# ----------------------
.L000039CB:
	.p2align 3
# ----------------------
	.local	_F2xq_pow
	.type	_F2xq_pow, @function
_F2xq_pow:
	pushl     %ebx
	subl      $24, %esp
	movl      32(%esp), %eax
	call      __x86.get_pc_thunk.bx
.L000039DD:
	addl      $_GLOBAL_OFFSET_TABLE_, %ebx
	movl      %eax, 8(%esp)
	movl      40(%esp), %eax
	movl      %eax, 4(%esp)
	movl      36(%esp), %eax
	movl      %eax, (%esp)
	call      F2xq_pow@PLT
.L000039FB:
	addl      $24, %esp
	popl      %ebx
	ret       
	.size	_F2xq_pow, .-_F2xq_pow
# ----------------------
	.globl	F2xq_powers
	.type	F2xq_powers, @function
F2xq_powers:
	pushl     %ebp
	pushl     %edi
	pushl     %esi
	pushl     %ebx
	call      __x86.get_pc_thunk.bx
.L00003A09:
	addl      $_GLOBAL_OFFSET_TABLE_, %ebx
	subl      $44, %esp
	movl      68(%esp), %eax
	leal      2(%eax), %ebp
	movl      avma@GOT(%ebx), %ecx
	leal      0(,%ebp,4), %edx
	movl      (%ecx), %eax
	movl      %eax, %esi
	subl      %edx, %esi
	movl      bot@GOT(%ebx), %edx
	subl      (%edx), %eax
	shrl      $2, %eax
	cmpl      %eax, %ebp
	jbe       .L00003A4F
.L00003A3B:
	movl      $14, (%esp)
	movl      %ecx, 20(%esp)
	call      pari_err@PLT
.L00003A4B:
	movl      20(%esp), %ecx
.L00003A4F:
	testl     $-16777216, %ebp
	movl      %esi, (%ecx)
	je        .L00003A77
.L00003A59:
	leal      .LC1@GOTOFF(%ebx), %eax
	movl      %eax, 4(%esp)
	movl      $15, (%esp)
	movl      %ecx, 20(%esp)
	call      pari_err@PLT
.L00003A73:
	movl      20(%esp), %ecx
.L00003A77:
	movl      72(%esp), %eax
	orl       $570425344, %ebp
	movl      %ebp, (%esi)
	movl      bot@GOT(%ebx), %edi
	movl      4(%eax), %eax
	movl      %eax, 20(%esp)
	movl      (%ecx), %eax
	movl      %eax, %edx
	subl      (%edi), %edx
	leal      -12(%eax), %ebp
	cmpl      $11, %edx
	ja        .L00003ABA
.L00003A9E:
	movl      $14, (%esp)
	movl      %ecx, 28(%esp)
	movl      %eax, 24(%esp)
	call      pari_err@PLT
.L00003AB2:
	movl      28(%esp), %ecx
	movl      24(%esp), %eax
.L00003ABA:
	movl      %ebp, (%ecx)
	movl      $738197507, -12(%eax)
	movl      20(%esp), %eax
	movl      $1, 8(%ebp)
	movl      %eax, 4(%ebp)
	movl      68(%esp), %eax
	movl      %ebp, 4(%esi)
	testl     %eax, %eax
	jne       .L00003AE8
.L00003ADC:
	addl      $44, %esp
	movl      %esi, %eax
	popl      %ebx
	popl      %esi
	popl      %edi
	popl      %ebp
	ret       
.L00003AE6:
	.p2align 3
.L00003AE8:
	movl      64(%esp), %eax
	movl      (%ecx), %edx
	movl      (%eax), %eax
	movl      %edx, %edi
	andl      $16777215, %eax
	leal      0(,%eax,4), %ebp
	subl      %ebp, %edi
	movl      %edi, %ebp
	movl      bot@GOT(%ebx), %edi
	subl      (%edi), %edx
	shrl      $2, %edx
	cmpl      %edx, %eax
	jbe       .L00003B2D
.L00003B11:
	movl      $14, (%esp)
	movl      %ecx, 24(%esp)
	movl      %eax, 20(%esp)
	call      pari_err@PLT
.L00003B25:
	movl      24(%esp), %ecx
	movl      20(%esp), %eax
.L00003B2D:
	movl      %ebp, (%ecx)
	movl      64(%esp), %ecx
	subl      $1, %eax
	movl      (%ecx), %edx
	movl      %ecx, %edi
	andl      $-16777217, %edx
	testl     %eax, %eax
	movl      %edx, (%ebp)
	jle       .L00003B58
.L00003B47:
	.p2align 3
.L00003B48:
	movl      (%edi,%eax,4), %edx
	movl      %edx, (%ebp,%eax,4)
	subl      $1, %eax
	jne       .L00003B48
.L00003B54:
	movl      %edi, 64(%esp)
.L00003B58:
	cmpl      $1, 68(%esp)
	movl      %ebp, 8(%esi)
	je        .L00003ADC
.L00003B66:
	movl      72(%esp), %eax
	movl      %eax, 4(%esp)
	movl      64(%esp), %eax
	movl      %eax, (%esp)
	call      F2xq_sqr@PLT
.L00003B7A:
	movl      %eax, 12(%esi)
	movl      64(%esp), %eax
	movl      %eax, (%esp)
	call      F2x_degree@PLT
.L00003B89:
	movl      %eax, %ebp
	movl      72(%esp), %eax
	addl      %ebp, %ebp
	movl      %eax, (%esp)
	call      F2x_degree@PLT
.L00003B99:
	cmpl      %eax, %ebp
	movl      68(%esp), %eax
	jl        .L00003C10
.L00003BA1:
	addl      $1, %eax
	movl      $5, %ebp
	cmpl      $3, %eax
	movl      %eax, 20(%esp)
	jg        .L00003BE2
.L00003BB2:
	jmp       .L00003ADC
.L00003BB7:
	.p2align 3
.L00003BB8:
	movl      72(%esp), %eax
	movl      %ebp, %edi
	movl      %eax, 4(%esp)
	movl      %ebp, %eax
	sarl      $1, %eax
	movl      (%esi,%eax,4), %eax
	movl      %eax, (%esp)
	call      F2xq_sqr@PLT
.L00003BD1:
	movl      %eax, -4(%esi,%ebp,4)
	addl      $1, %ebp
	cmpl      %edi, 20(%esp)
	jl        .L00003ADC
.L00003BE2:
	testl     $1, %ebp
	je        .L00003BB8
.L00003BEA:
	movl      72(%esp), %eax
	movl      %ebp, %edi
	movl      %eax, 8(%esp)
	movl      64(%esp), %eax
	movl      %eax, 4(%esp)
	movl      -8(%esi,%ebp,4), %eax
	movl      %eax, (%esp)
	call      F2xq_mul@PLT
.L00003C08:
	jmp       .L00003BD1
.L00003C0A:
	.p2align 3
.L00003C10:
	addl      $1, %eax
	cmpl      $3, %eax
	movl      %eax, 20(%esp)
	jle       .L00003ADC
.L00003C20:
	movl      64(%esp), %eax
	movl      $4, %ebp
	movl      %ebp, %edi
	movl      %eax, %ebp
	.p2align 3
.L00003C30:
	movl      72(%esp), %eax
	movl      %ebp, 4(%esp)
	movl      %eax, 8(%esp)
	movl      -4(%esi,%edi,4), %eax
	movl      %eax, (%esp)
	call      F2xq_mul@PLT
.L00003C48:
	movl      %eax, (%esi,%edi,4)
	addl      $1, %edi
	cmpl      %edi, 20(%esp)
	jge       .L00003C30
.L00003C54:
	addl      $44, %esp
	movl      %esi, %eax
	popl      %ebx
	popl      %esi
	popl      %edi
	popl      %ebp
	ret       
	.size	F2xq_powers, .-F2xq_powers
# ----------------------
.L00003C5E:
	.p2align 3
# ----------------------
	.globl	F2xq_trace
	.type	F2xq_trace, @function
F2xq_trace:
	pushl     %ebp
	pushl     %edi
	pushl     %esi
	pushl     %ebx
	call      __x86.get_pc_thunk.bx
.L00003C69:
	addl      $_GLOBAL_OFFSET_TABLE_, %ebx
	subl      $44, %esp
	movl      avma@GOT(%ebx), %eax
	movl      (%eax), %eax
	movl      %eax, 24(%esp)
	movl      68(%esp), %eax
	movl      %eax, (%esp)
	call      F2x_deriv@PLT
.L00003C8A:
	movl      %eax, 4(%esp)
	movl      64(%esp), %eax
	movl      %eax, (%esp)
	call      F2x_mul@PLT
.L00003C9A:
	movl      (%eax), %esi
	movl      %eax, %ebp
	andl      $16777215, %esi
	leal      1(%esi), %eax
	movl      %eax, %ecx
	movl      %eax, 20(%esp)
	movl      avma@GOT(%ebx), %eax
	movl      %ecx, %edi
	sall      $2, %edi
	movl      (%eax), %eax
	movl      %eax, %edx
	subl      %edi, %edx
	movl      %edx, 16(%esp)
	movl      bot@GOT(%ebx), %edx
	subl      (%edx), %eax
	shrl      $2, %eax
	cmpl      %eax, %ecx
	jbe       .L00003CDD
.L00003CD1:
	movl      $14, (%esp)
	call      pari_err@PLT
.L00003CDD:
	movl      avma@GOT(%ebx), %eax
	movl      16(%esp), %ecx
	testl     $16777216, 20(%esp)
	movl      %ecx, (%eax)
	je        .L00003D09
.L00003CF3:
	leal      .LC1@GOTOFF(%ebx), %eax
	movl      %eax, 4(%esp)
	movl      $15, (%esp)
	call      pari_err@PLT
.L00003D09:
	movl      20(%esp), %eax
	movl      16(%esp), %edx
	orl       $738197504, %eax
	cmpl      $2, %esi
	movl      %eax, (%edx)
	movl      $0, 8(%edx)
	jle       .L00003DB8
.L00003D28:
	leal      -4(%edi), %eax
	xorl      %ecx, %ecx
	movl      %eax, 28(%esp)
	leal      8(%ebp), %edx
	addl      %ebp, %eax
	.p2align 3
.L00003D38:
	movl      (%edx), %esi
	movl      %edx, %edi
	addl      $4, %edx
	subl      %ebp, %edi
	addl      %esi, %esi
	orl       %ecx, %esi
	movl      16(%esp), %ecx
	movl      %esi, (%edi,%ecx)
	movl      -4(%edx), %ecx
	shrl      $31, %ecx
	cmpl      %eax, %edx
	jne       .L00003D38
.L00003D56:
	movl      28(%esp), %eax
.L00003D5A:
	movl      16(%esp), %esi
	movl      %ecx, (%esi,%eax)
	movl      20(%esp), %eax
	movl      %esi, (%esp)
	movl      %eax, 4(%esp)
	call      Flx_renormalize@PLT
.L00003D71:
	movl      68(%esp), %edi
	movl      $0, 8(%esp)
	movl      %edi, 4(%esp)
	movl      %eax, (%esp)
	call      F2x_divrem@PLT
.L00003D89:
	movl      (%eax), %edx
	andl      $16777215, %edx
	cmpl      $2, %edx
	je        .L00003DB0
.L00003D96:
	movl      8(%eax), %eax
	andl      $1, %eax
.L00003D9C:
	movl      avma@GOT(%ebx), %esi
	movl      24(%esp), %edi
	movl      %edi, (%esi)
	addl      $44, %esp
	popl      %ebx
	popl      %esi
	popl      %edi
	popl      %ebp
	ret       
.L00003DB0:
	xorl      %eax, %eax
	jmp       .L00003D9C
.L00003DB4:
	.p2align 3
.L00003DB8:
	xorl      %ecx, %ecx
	movl      $8, %eax
	jmp       .L00003D5A
	.size	F2xq_trace, .-F2xq_trace
# ----------------------
.L00003DC1:
	.p2align 4
# ----------------------
	.globl	F2xq_conjvec
	.type	F2xq_conjvec, @function
F2xq_conjvec:
	pushl     %ebp
	pushl     %edi
	pushl     %esi
	pushl     %ebx
	subl      $44, %esp
	call      __x86.get_pc_thunk.bx
.L00003DDC:
	addl      $_GLOBAL_OFFSET_TABLE_, %ebx
	movl      68(%esp), %eax
	movl      64(%esp), %edx
	movl      %eax, (%esp)
	movl      %edx, 20(%esp)
	call      F2x_degree@PLT
.L00003DF6:
	movl      bot@GOT(%ebx), %edx
	movl      %eax, %edi
	movl      avma@GOT(%ebx), %eax
	leal      0(,%edi,4), %ecx
	movl      (%eax), %eax
	movl      %eax, %esi
	subl      (%edx), %eax
	subl      %ecx, %esi
	movl      20(%esp), %edx
	shrl      $2, %eax
	cmpl      %eax, %edi
	jbe       .L00003E2E
.L00003E1E:
	movl      $14, (%esp)
	call      pari_err@PLT
.L00003E2A:
	movl      20(%esp), %edx
.L00003E2E:
	movl      avma@GOT(%ebx), %eax
	testl     $-16777216, %edi
	movl      %esi, (%eax)
	je        .L00003E5C
.L00003E3E:
	leal      .LC1@GOTOFF(%ebx), %eax
	movl      %eax, 4(%esp)
	movl      $15, (%esp)
	movl      %edx, 20(%esp)
	call      pari_err@PLT
.L00003E58:
	movl      20(%esp), %edx
.L00003E5C:
	movl      %edi, %eax
	orl       $603979776, %eax
	movl      %eax, (%esi)
	movl      (%edx), %eax
	movl      %eax, 20(%esp)
	movl      avma@GOT(%ebx), %eax
	andl      $16777215, 20(%esp)
	movl      (%eax), %ecx
	movl      20(%esp), %eax
	movl      %ecx, %ebp
	sall      $2, %eax
	subl      %eax, %ebp
	movl      %ebp, %eax
	movl      bot@GOT(%ebx), %ebp
	subl      (%ebp), %ecx
	shrl      $2, %ecx
	cmpl      %ecx, 20(%esp)
	jbe       .L00003EB6
.L00003E9A:
	movl      $14, (%esp)
	movl      %edx, 28(%esp)
	movl      %eax, 24(%esp)
	call      pari_err@PLT
.L00003EAE:
	movl      28(%esp), %edx
	movl      24(%esp), %eax
.L00003EB6:
	movl      avma@GOT(%ebx), %ecx
	movl      %eax, (%ecx)
	movl      (%edx), %ecx
	andl      $-16777217, %ecx
	movl      %ecx, (%eax)
	movl      20(%esp), %ecx
	subl      $1, %ecx
	testl     %ecx, %ecx
	jle       .L00003EE3
.L00003ED3:
	.p2align 3
.L00003ED8:
	movl      (%edx,%ecx,4), %ebp
	movl      %ebp, (%eax,%ecx,4)
	subl      $1, %ecx
	jne       .L00003ED8
.L00003EE3:
	cmpl      $2, %edi
	movl      $2, %ebp
	movl      %eax, 4(%esi)
	jle       .L00003F1E
.L00003EF0:
	movl      %edi, 20(%esp)
	movl      %esi, %edi
	movl      68(%esp), %esi
	.p2align 3
.L00003F00:
	movl      %esi, 4(%esp)
	movl      -4(%edi,%ebp,4), %eax
	movl      %eax, (%esp)
	call      F2xq_sqr@PLT
.L00003F10:
	movl      %eax, (%edi,%ebp,4)
	addl      $1, %ebp
	cmpl      20(%esp), %ebp
	jne       .L00003F00
.L00003F1C:
	movl      %edi, %esi
.L00003F1E:
	addl      $44, %esp
	movl      %esi, %eax
	popl      %ebx
	popl      %esi
	popl      %edi
	popl      %ebp
	ret       
	.size	F2xq_conjvec, .-F2xq_conjvec
# ----------------------
.L00003F28:
	.p2align 4
# ----------------------
	.globl	random_F2x
	.type	random_F2x, @function
random_F2x:
	pushl     %ebp
	pushl     %edi
	pushl     %esi
	pushl     %ebx
	call      __x86.get_pc_thunk.bx
.L00003F39:
	addl      $_GLOBAL_OFFSET_TABLE_, %ebx
	subl      $28, %esp
	movl      48(%esp), %eax
	leal      96(%eax), %esi
	movl      avma@GOT(%ebx), %ebp
	shrl      $5, %esi
	movl      bot@GOT(%ebx), %ecx
	leal      0(,%esi,4), %edx
	movl      %edx, 12(%esp)
	movl      (%ebp), %eax
	movl      %eax, %edi
	subl      (%ecx), %eax
	subl      %edx, %edi
	shrl      $2, %eax
	cmpl      %eax, %esi
	jbe       .L00003F7F
.L00003F73:
	movl      $14, (%esp)
	call      pari_err@PLT
.L00003F7F:
	testl     $117440512, %esi
	movl      %edi, (%ebp)
	je        .L00003FA0
.L00003F8A:
	leal      .LC1@GOTOFF(%ebx), %eax
	movl      %eax, 4(%esp)
	movl      $15, (%esp)
	call      pari_err@PLT
.L00003FA0:
	movl      %esi, %eax
	movl      $2, %ebp
	orl       $738197504, %eax
	cmpl      $2, %esi
	movl      %eax, (%edi)
	movl      52(%esp), %eax
	movl      %eax, 4(%edi)
	jle       .L00003FCF
.L00003FBA:
	.p2align 3
.L00003FC0:
	call      pari_rand@PLT
.L00003FC5:
	movl      %eax, (%edi,%ebp,4)
	addl      $1, %ebp
	cmpl      %esi, %ebp
	jne       .L00003FC0
.L00003FCF:
	movl      48(%esp), %ecx
	movl      $1, %eax
	sall      %cl, %eax
	movl      12(%esp), %ecx
	subl      $1, %eax
	andl      %eax, -4(%ecx,%edi)
	movl      %esi, 4(%esp)
	movl      %edi, (%esp)
	call      Flx_renormalize@PLT
.L00003FF1:
	addl      $28, %esp
	popl      %ebx
	popl      %esi
	popl      %edi
	popl      %ebp
	ret       
	.size	random_F2x, .-random_F2x
# ----------------------
.L00003FF9:
	.p2align 4
# ----------------------
	.local	_F2xq_rand
	.type	_F2xq_rand, @function
_F2xq_rand:
	pushl     %ebp
	pushl     %edi
	pushl     %esi
	pushl     %ebx
	call      __x86.get_pc_thunk.bx
.L00004009:
	addl      $_GLOBAL_OFFSET_TABLE_, %ebx
	subl      $28, %esp
	movl      48(%esp), %esi
	movl      avma@GOT(%ebx), %eax
	movl      (%eax), %ebp
	movl      %esi, (%esp)
	call      F2x_degree@PLT
.L00004026:
	movl      %eax, %edi
.L00004028:
	movl      avma@GOT(%ebx), %eax
	movl      %ebp, (%eax)
	movl      4(%esi), %eax
	movl      %edi, (%esp)
	movl      %eax, 4(%esp)
	call      random_F2x@PLT
.L0000403F:
	movl      (%eax), %edx
	andl      $16777215, %edx
	cmpl      $2, %edx
	je        .L00004028
.L0000404C:
	addl      $28, %esp
	popl      %ebx
	popl      %esi
	popl      %edi
	popl      %ebp
	ret       
	.size	_F2xq_rand, .-_F2xq_rand
# ----------------------
.L00004054:
	.p2align 4
# ----------------------
	.globl	F2xq_order
	.type	F2xq_order, @function
F2xq_order:
	pushl     %ebx
	call      __x86.get_pc_thunk.bx
.L00004066:
	addl      $_GLOBAL_OFFSET_TABLE_, %ebx
	subl      $24, %esp
	leal      F2xq_star@GOTOFF(%ebx), %eax
	movl      %eax, 12(%esp)
	movl      40(%esp), %eax
	movl      %eax, 8(%esp)
	movl      36(%esp), %eax
	movl      %eax, 4(%esp)
	movl      32(%esp), %eax
	movl      %eax, (%esp)
	call      gen_eltorder@PLT
.L00004095:
	addl      $24, %esp
	popl      %ebx
	ret       
	.size	F2xq_order, .-F2xq_order
# ----------------------
.L0000409A:
	.p2align 3
# ----------------------
	.globl	F2xq_log
	.type	F2xq_log, @function
F2xq_log:
	pushl     %ebx
	call      __x86.get_pc_thunk.bx
.L000040A6:
	addl      $_GLOBAL_OFFSET_TABLE_, %ebx
	subl      $40, %esp
	movl      $0, 20(%esp)
	leal      F2xq_star@GOTOFF(%ebx), %eax
	movl      %eax, 16(%esp)
	movl      60(%esp), %eax
	movl      %eax, 12(%esp)
	movl      56(%esp), %eax
	movl      %eax, 8(%esp)
	movl      52(%esp), %eax
	movl      %eax, 4(%esp)
	movl      48(%esp), %eax
	movl      %eax, (%esp)
	call      gen_PH_log@PLT
.L000040E5:
	addl      $40, %esp
	popl      %ebx
	ret       
	.size	F2xq_log, .-F2xq_log
# ----------------------
.L000040EA:
	.p2align 3
# ----------------------
	.globl	F2xq_sqrt
	.type	F2xq_sqrt, @function
F2xq_sqrt:
	pushl     %ebp
	pushl     %edi
	pushl     %esi
	pushl     %ebx
	call      __x86.get_pc_thunk.bx
.L000040F9:
	addl      $_GLOBAL_OFFSET_TABLE_, %ebx
	subl      $44, %esp
	movl      64(%esp), %esi
	movl      avma@GOT(%ebx), %edi
	movl      bot@GOT(%ebx), %ecx
	movl      (%edi), %eax
	movl      (%ecx), %edx
	movl      %eax, 24(%esp)
	subl      %edx, %eax
	shrl      $2, %eax
	addl      %edx, %eax
	movl      %eax, 16(%esp)
	movl      68(%esp), %eax
	movl      %eax, (%esp)
	call      F2x_degree@PLT
.L00004131:
	cmpl      $1, %eax
	movl      %eax, 20(%esp)
	jle       .L000041FF
.L0000413E:
	movl      $1, %ebp
	movl      %esi, %eax
	.p2align 3
.L00004148:
	movl      68(%esp), %ecx
	movl      %eax, (%esp)
	movl      %ecx, 4(%esp)
	call      F2xq_sqr@PLT
.L00004158:
	movl      16(%esp), %ecx
	cmpl      (%edi), %ecx
	jbe       .L000041F0
.L00004164:
	movl      DEBUGMEM@GOT(%ebx), %esi
	cmpl      $1, (%esi)
	jbe       .L00004191
.L0000416F:
	leal      .LC4@GOTOFF(%ebx), %edx
	movl      %ebp, 8(%esp)
	movl      %edx, 4(%esp)
	movl      $3, (%esp)
	movl      %eax, 28(%esp)
	call      pari_warn@PLT
.L0000418D:
	movl      28(%esp), %eax
.L00004191:
	movl      bot@GOT(%ebx), %esi
	cmpl      (%esi), %eax
	jb        .L00004228
.L0000419F:
	movl      top@GOT(%ebx), %edx
	cmpl      (%edx), %eax
	jae       .L00004228
.L000041A9:
	cmpl      24(%esp), %eax
	jae       .L00004228
.L000041AF:
	movl      (%eax), %edx
	movl      24(%esp), %esi
	andl      $16777215, %edx
	leal      0(,%edx,4), %ecx
	subl      %ecx, %esi
	testl     %edx, %edx
	movl      %esi, (%edi)
	je        .L000041E9
.L000041CA:
	leal      -4(%ecx,%esi), %edx
	subl      %esi, %eax
	leal      -4(%esi), %ecx
	movl      %esi, 28(%esp)
	.p2align 3
.L000041D8:
	movl      (%eax,%edx), %esi
	subl      $4, %edx
	movl      %esi, 4(%edx)
	cmpl      %ecx, %edx
	jne       .L000041D8
.L000041E5:
	movl      28(%esp), %esi
.L000041E9:
	movl      %esi, %eax
	.p2align 3
.L000041F0:
	addl      $1, %ebp
	cmpl      20(%esp), %ebp
	jne       .L00004148
.L000041FD:
	movl      %eax, %esi
.L000041FF:
	movl      bot@GOT(%ebx), %eax
	cmpl      (%eax), %esi
	jb        .L00004213
.L00004209:
	movl      top@GOT(%ebx), %eax
	cmpl      (%eax), %esi
	jb        .L00004230
.L00004213:
	movl      24(%esp), %eax
	movl      %eax, (%edi)
	movl      %esi, %eax
.L0000421B:
	addl      $44, %esp
	popl      %ebx
	popl      %esi
	popl      %edi
	popl      %ebp
	ret       
.L00004223:
	.p2align 3
.L00004228:
	movl      24(%esp), %ecx
	movl      %ecx, (%edi)
	jmp       .L000041F0
.L00004230:
	cmpl      24(%esp), %esi
	jae       .L00004213
.L00004236:
	movl      (%esi), %edx
	movl      24(%esp), %eax
	andl      $16777215, %edx
	leal      0(,%edx,4), %ecx
	subl      %ecx, %eax
	testl     %edx, %edx
	movl      %eax, (%edi)
	je        .L0000421B
.L00004251:
	leal      -4(%ecx,%eax), %edx
	subl      %eax, %esi
	leal      -4(%eax), %edi
	.p2align 3
.L00004260:
	movl      (%esi,%edx), %ecx
	subl      $4, %edx
	movl      %ecx, 4(%edx)
	cmpl      %edi, %edx
	jne       .L00004260
.L0000426D:
	addl      $44, %esp
	popl      %ebx
	popl      %esi
	popl      %edi
	popl      %ebp
	ret       
	.size	F2xq_sqrt, .-F2xq_sqrt
# ----------------------
.L00004275:
	.p2align 4
# ----------------------
	.globl	F2xq_sqrtn
	.type	F2xq_sqrtn, @function
F2xq_sqrtn:
	pushl     %ebp
	pushl     %edi
	pushl     %esi
	pushl     %ebx
	subl      $60, %esp
	movl      80(%esp), %edi
	call      __x86.get_pc_thunk.bx
.L00004290:
	addl      $_GLOBAL_OFFSET_TABLE_, %ebx
	movl      88(%esp), %esi
	movl      (%edi), %eax
	andl      $16777215, %eax
	cmpl      $2, %eax
	je        .L00004310
.L000042A6:
	movl      %esi, (%esp)
	call      F2x_degree@PLT
.L000042AE:
	movl      $2, (%esp)
	movl      %eax, 4(%esp)
	call      powuu@PLT
.L000042BE:
	movl      4(%eax), %edx
	movl      %eax, 4(%esp)
	movl      $-1, (%esp)
	sarl      $30, %edx
	movl      %edx, 8(%esp)
	call      addsi_sign@PLT
.L000042D8:
	movl      92(%esp), %ecx
	leal      F2xq_star@GOTOFF(%ebx), %edx
	movl      %esi, 16(%esp)
	movl      %edi, (%esp)
	movl      %edx, 20(%esp)
	movl      %ecx, 12(%esp)
	movl      %eax, 8(%esp)
	movl      84(%esp), %eax
	movl      %eax, 4(%esp)
	call      gen_Shanks_sqrtn@PLT
.L00004302:
	addl      $60, %esp
	popl      %ebx
	popl      %esi
	popl      %edi
	popl      %ebp
	ret       
.L0000430A:
	.p2align 3
.L00004310:
	movl      92(%esp), %eax
	testl     %eax, %eax
	je        .L000043B8
.L0000431C:
	movl      4(%esi), %eax
	movl      avma@GOT(%ebx), %edi
	movl      bot@GOT(%ebx), %edx
	movl      %eax, 36(%esp)
	movl      (%edi), %eax
	movl      %eax, %ecx
	subl      (%edx), %ecx
	leal      -12(%eax), %ebp
	cmpl      $11, %ecx
	ja        .L00004359
.L0000433D:
	movl      $14, (%esp)
	movl      %edx, 44(%esp)
	movl      %eax, 40(%esp)
	call      pari_err@PLT
.L00004351:
	movl      44(%esp), %edx
	movl      40(%esp), %eax
.L00004359:
	movl      %ebp, (%edi)
	movl      $738197507, -12(%eax)
	movl      36(%esp), %eax
	movl      $1, 8(%ebp)
	movl      %eax, 4(%ebp)
	movl      92(%esp), %eax
	movl      %ebp, (%eax)
.L00004376:
	movl      (%edi), %ebp
	movl      4(%esi), %eax
	movl      %ebp, %ecx
	subl      (%edx), %ecx
	leal      -8(%ebp), %esi
	cmpl      $7, %ecx
	ja        .L0000439B
.L00004387:
	movl      $14, (%esp)
	movl      %eax, 36(%esp)
	call      pari_err@PLT
.L00004397:
	movl      36(%esp), %eax
.L0000439B:
	movl      %esi, (%edi)
	movl      $738197506, -8(%ebp)
	movl      %eax, 4(%esi)
	addl      $60, %esp
	movl      %esi, %eax
	popl      %ebx
	popl      %esi
	popl      %edi
	popl      %ebp
	ret       
.L000043B1:
	.p2align 3
.L000043B8:
	movl      avma@GOT(%ebx), %edi
	movl      bot@GOT(%ebx), %edx
	jmp       .L00004376
	.size	F2xq_sqrtn, .-F2xq_sqrtn
# ----------------------
.L000043C6:
	.p2align 4
# ----------------------
	.globl	gener_F2xq
	.type	gener_F2xq, @function
gener_F2xq:
	pushl     %ebp
	pushl     %edi
	pushl     %esi
	pushl     %ebx
	subl      $76, %esp
	movl      96(%esp), %eax
	call      __x86.get_pc_thunk.bx
.L000043E0:
	addl      $_GLOBAL_OFFSET_TABLE_, %ebx
	movl      4(%eax), %eax
	movl      %eax, 28(%esp)
	movl      96(%esp), %eax
	movl      %eax, (%esp)
	call      F2x_degree@PLT
.L000043F9:
	movl      avma@GOT(%ebx), %ecx
	movl      (%ecx), %ecx
	cmpl      $1, %eax
	movl      %eax, 24(%esp)
	movl      %ecx, 40(%esp)
	je        .L000045FB
.L00004412:
	movl      %eax, 4(%esp)
	movl      %eax, %esi
	movl      $2, (%esp)
	call      powuu@PLT
.L00004424:
	movl      4(%eax), %edx
	movl      %eax, 4(%esp)
	movl      $-1, (%esp)
	sarl      $30, %edx
	movl      %edx, 8(%esp)
	call      addsi_sign@PLT
.L0000443E:
	movl      %esi, 4(%esp)
	movl      %eax, 32(%esp)
	movl      gen_2@GOT(%ebx), %eax
	movl      (%eax), %eax
	movl      %eax, (%esp)
	call      factor_pn_1@PLT
.L00004456:
	movl      4(%eax), %edi
	movl      %eax, 44(%esp)
	movl      avma@GOT(%ebx), %eax
	movl      (%edi), %ebp
	movl      (%eax), %edx
	andl      $16777215, %ebp
	leal      0(,%ebp,4), %eax
	movl      %edx, %esi
	subl      %eax, %esi
	movl      bot@GOT(%ebx), %eax
	subl      (%eax), %edx
	movl      %eax, 36(%esp)
	shrl      $2, %edx
	cmpl      %edx, %ebp
	ja        .L000045EA
.L0000448F:
	movl      avma@GOT(%ebx), %eax
	movl      %esi, (%eax)
	movl      (%edi), %eax
	andl      $-16777217, %eax
	movl      %eax, (%esi)
	leal      -1(%ebp), %eax
	testl     %eax, %eax
	jle       .L000044B3
.L000044A7:
	.p2align 3
.L000044A8:
	movl      (%edi,%eax,4), %edx
	movl      %edx, (%esi,%eax,4)
	subl      $1, %eax
	jne       .L000044A8
.L000044B3:
	movl      (%esi), %ecx
	movl      $1, %edi
	movl      $1, %ebp
	movl      %ecx, %eax
	movl      %ecx, %edx
	andl      $16777215, %eax
	cmpl      $1, %eax
	jle       .L0000475B
.L000044D1:
	movl      %edi, %ecx
	movl      %esi, %edi
	jmp       .L00004508
.L000044D7:
	.p2align 3
.L000044D8:
	movl      %eax, 4(%esp)
	movl      32(%esp), %eax
	leal      1(%ecx), %esi
	movl      %esi, 20(%esp)
	leal      (%edi,%ecx,4), %esi
	addl      $1, %ebp
	movl      %eax, (%esp)
	call      diviiexact@PLT
.L000044F5:
	movl      20(%esp), %ecx
	movl      %eax, (%esi)
	movl      (%edi), %edx
	movl      %edx, %eax
	andl      $16777215, %eax
	cmpl      %ebp, %eax
	jle       .L0000452D
.L00004508:
	movl      (%edi,%ebp,4), %eax
	movl      4(%eax), %esi
	andl      $16777215, %esi
	cmpl      $3, %esi
	jne       .L000044D8
.L00004519:
	cmpl      $2, 8(%eax)
	jne       .L000044D8
.L0000451F:
	movl      %edx, %eax
	addl      $1, %ebp
	andl      $16777215, %eax
	cmpl      %ebp, %eax
	jg        .L00004508
.L0000452D:
	movl      %edi, %esi
	movl      %ecx, %edi
	movl      %edx, %ecx
	movl      %edi, %ebp
	andl      $-16777216, %ecx
	testl     $-16777216, %edi
	jne       .L0000476B
.L00004547:
	movl      avma@GOT(%ebx), %eax
	orl       %ebp, %ecx
	movl      %ecx, (%esi)
	movl      96(%esp), %ebp
	movl      %edi, 20(%esp)
	movl      (%eax), %eax
	movl      %eax, 32(%esp)
	.p2align 3
.L00004560:
	movl      28(%esp), %eax
	movl      %eax, 4(%esp)
	movl      24(%esp), %eax
	movl      %eax, (%esp)
	call      random_F2x@PLT
.L00004574:
	movl      %eax, (%esp)
	movl      %eax, 60(%esp)
	call      F2x_degree@PLT
.L00004580:
	testl     %eax, %eax
	jle       .L000045D9
.L00004584:
	cmpl      $1, 20(%esp)
	je        .L000046B0
.L0000458F:
	movl      $1, %edi
	jmp       .L000045A5
.L00004596:
	.p2align 3
.L00004598:
	addl      $1, %edi
	cmpl      20(%esp), %edi
	je        .L000046B0
.L000045A5:
	movl      %ebp, 8(%esp)
	movl      (%esi,%edi,4), %eax
	movl      %eax, 4(%esp)
	movl      60(%esp), %eax
	movl      %eax, (%esp)
	call      F2xq_pow@PLT
.L000045BC:
	movl      (%eax), %edx
	andl      $16777215, %edx
	cmpl      $3, %edx
	jne       .L00004598
.L000045C9:
	cmpl      $1, 8(%eax)
	jne       .L00004598
.L000045CF:
	cmpl      %edi, 20(%esp)
	je        .L000046B0
.L000045D9:
	movl      avma@GOT(%ebx), %eax
	movl      32(%esp), %ecx
	movl      %ecx, (%eax)
	jmp       .L00004560
.L000045EA:
	movl      $14, (%esp)
	call      pari_err@PLT
.L000045F6:
	jmp       .L0000448F
.L000045FB:
	movl      100(%esp), %esi
	testl     %esi, %esi
	je        .L0000478E
.L00004607:
	call      trivfact@PLT
.L0000460C:
	movl      %eax, %edx
	movl      gen_1@GOT(%ebx), %eax
	movl      (%eax), %ebp
	movl      avma@GOT(%ebx), %eax
	movl      (%eax), %edi
	movl      bot@GOT(%ebx), %eax
	leal      -12(%edi), %esi
	movl      %eax, %ecx
	movl      %eax, 36(%esp)
	movl      %edi, %eax
	subl      (%ecx), %eax
	cmpl      $11, %eax
	ja        .L0000464A
.L00004636:
	movl      $14, (%esp)
	movl      %edx, 20(%esp)
	call      pari_err@PLT
.L00004646:
	movl      20(%esp), %edx
.L0000464A:
	movl      avma@GOT(%ebx), %eax
	movl      36(%esp), %ecx
	movl      %esi, (%eax)
	movl      100(%esp), %eax
	movl      $570425347, -12(%edi)
	movl      %ebp, 4(%esi)
	movl      %edx, 8(%esi)
	movl      %esi, (%eax)
	movl      avma@GOT(%ebx), %eax
	movl      (%eax), %eax
.L00004671:
	leal      -12(%eax), %esi
	subl      (%ecx), %eax
	cmpl      $11, %eax
	ja        .L00004687
.L0000467B:
	movl      $14, (%esp)
	call      pari_err@PLT
.L00004687:
	movl      avma@GOT(%ebx), %eax
	movl      $1, 8(%esi)
	movl      %esi, (%eax)
	movl      28(%esp), %eax
	movl      $738197507, (%esi)
	movl      %eax, 4(%esi)
.L000046A3:
	addl      $76, %esp
	movl      %esi, %eax
	popl      %ebx
	popl      %esi
	popl      %edi
	popl      %ebp
	ret       
.L000046AD:
	.p2align 3
.L000046B0:
	movl      100(%esp), %ecx
	testl     %ecx, %ecx
	je        .L000047A1
.L000046BC:
	movl      24(%esp), %eax
	movl      %eax, (%esp)
	call      int2n@PLT
.L000046C8:
	movl      4(%eax), %edx
	movl      %eax, 4(%esp)
	movl      $-1, (%esp)
	sarl      $30, %edx
	movl      %edx, 8(%esp)
	call      addsi_sign@PLT
.L000046E2:
	movl      avma@GOT(%ebx), %ecx
	movl      (%ecx), %edi
	movl      36(%esp), %ecx
	movl      %edi, %edx
	subl      (%ecx), %edx
	leal      -12(%edi), %esi
	cmpl      $11, %edx
	ja        .L0000470E
.L000046FA:
	movl      $14, (%esp)
	movl      %eax, 20(%esp)
	call      pari_err@PLT
.L0000470A:
	movl      20(%esp), %eax
.L0000470E:
	movl      avma@GOT(%ebx), %ecx
	movl      %esi, (%ecx)
	movl      $570425347, -12(%edi)
	movl      %eax, 4(%esi)
	movl      44(%esp), %eax
	movl      %eax, 8(%esi)
	movl      100(%esp), %eax
	movl      %esi, (%eax)
	movl      %eax, 12(%esp)
	leal      60(%esp), %eax
	movl      %eax, 8(%esp)
	movl      40(%esp), %eax
	movl      $2, 4(%esp)
	movl      %eax, (%esp)
	call      gerepileall.constprop.5
.L0000474D:
	movl      60(%esp), %esi
	addl      $76, %esp
	popl      %ebx
	movl      %esi, %eax
	popl      %esi
	popl      %edi
	popl      %ebp
	ret       
.L0000475B:
	andl      $-16777216, %ecx
	movl      $1, %ebp
	jmp       .L00004547
.L0000476B:
	leal      .LC1@GOTOFF(%ebx), %eax
	movl      %eax, 4(%esp)
	movl      $15, (%esp)
	movl      %ecx, 20(%esp)
	call      pari_err@PLT
.L00004785:
	movl      20(%esp), %ecx
	jmp       .L00004547
.L0000478E:
	movl      bot@GOT(%ebx), %ecx
	movl      40(%esp), %eax
	movl      %ecx, 36(%esp)
	jmp       .L00004671
.L000047A1:
	movl      60(%esp), %eax
	movl      %eax, (%esp)
	call      copy_bin@PLT
.L000047AD:
	movl      40(%esp), %ecx
	movl      %eax, %edi
	movl      avma@GOT(%ebx), %eax
	movl      4(%edi), %ebp
	movl      %ecx, (%eax)
	testl     %ebp, %ebp
	je        .L000048A2
.L000047C6:
	movl      %ebp, %esi
	movl      (%edi), %eax
	movl      %ecx, %edx
	subl      8(%edi), %esi
	leal      16(%edi), %ecx
	movl      %ecx, 24(%esp)
	movl      %edx, %ecx
	movl      %esi, 20(%esp)
	movl      36(%esp), %esi
	sall      $2, %eax
	sarl      $2, 20(%esp)
	subl      %eax, %ecx
	subl      (%esi), %edx
	shrl      $2, %edx
	cmpl      %edx, (%edi)
	jbe       .L0000480F
.L000047F3:
	movl      $14, (%esp)
	movl      %ecx, 32(%esp)
	movl      %eax, 28(%esp)
	call      pari_err@PLT
.L00004807:
	movl      32(%esp), %ecx
	movl      28(%esp), %eax
.L0000480F:
	movl      avma@GOT(%ebx), %esi
	movl      %ecx, (%esi)
	movl      %eax, 8(%esp)
	movl      24(%esp), %eax
	movl      %ecx, (%esp)
	movl      %eax, 4(%esp)
	call      memcpy@PLT
.L0000482B:
	movl      20(%esp), %ecx
	movl      12(%edi), %edx
	leal      (%eax,%ecx,4), %esi
	movl      %esi, %eax
	subl      %ebp, %eax
	testl     %edx, %edx
	movl      %eax, 4(%esp)
	movl      %esi, (%esp)
	jne       .L00004899
.L00004844:
	call      shiftaddress@PLT
.L00004849:
	movl      PARI_SIGINT_block@GOT(%ebx), %ebp
	movl      (%ebp), %eax
	movl      $1, (%ebp)
	movl      %edi, (%esp)
	movl      %eax, 20(%esp)
	call      free@PLT
.L00004865:
	movl      20(%esp), %eax
	testl     %eax, %eax
	movl      %eax, (%ebp)
	jne       .L000046A3
.L00004874:
	movl      PARI_SIGINT_pending@GOT(%ebx), %eax
	movl      (%eax), %edx
	testl     %edx, %edx
	je        .L000046A3
.L00004884:
	movl      (%eax), %edx
	movl      $0, (%eax)
	movl      %edx, (%esp)
	call      raise@PLT
.L00004894:
	jmp       .L000046A3
.L00004899:
	call      shiftaddress_canon@PLT
.L0000489E:
	.p2align 3
	jmp       .L00004849
.L000048A2:
	movl      PARI_SIGINT_block@GOT(%ebx), %esi
	movl      (%esi), %ebp
	movl      $1, (%esi)
	movl      %edi, (%esp)
	call      free@PLT
.L000048B8:
	testl     %ebp, %ebp
	movl      %ebp, (%esi)
	jne       .L000048CA
.L000048BE:
	movl      PARI_SIGINT_pending@GOT(%ebx), %eax
	movl      (%eax), %edx
	testl     %edx, %edx
	jne       .L000048D7
.L000048CA:
	movl      gen_0@GOT(%ebx), %eax
	movl      (%eax), %esi
	jmp       .L000046A3
.L000048D7:
	movl      (%eax), %edx
	movl      $0, (%eax)
	movl      %edx, (%esp)
	call      raise@PLT
.L000048E7:
	jmp       .L000048CA
	.size	gener_F2xq, .-gener_F2xq
# ----------------------
.L000048E9:
	.p2align 4
# ----------------------
	.globl	ZXX_to_F2xX
	.type	ZXX_to_F2xX, @function
ZXX_to_F2xX:
	pushl     %ebp
	pushl     %edi
	pushl     %esi
	pushl     %ebx
	call      __x86.get_pc_thunk.bx
.L000048F9:
	addl      $_GLOBAL_OFFSET_TABLE_, %ebx
	subl      $28, %esp
	movl      48(%esp), %eax
	movl      (%eax), %edi
	movl      avma@GOT(%ebx), %esi
	andl      $16777215, %edi
	movl      (%esi), %eax
	leal      0(,%edi,4), %ecx
	movl      %eax, %ebp
	subl      %ecx, %ebp
	movl      bot@GOT(%ebx), %ecx
	subl      (%ecx), %eax
	shrl      $2, %eax
	cmpl      %eax, %edi
	jbe       .L0000493C
.L00004930:
	movl      $14, (%esp)
	call      pari_err@PLT
.L0000493C:
	movl      %edi, %eax
	orl       $335544320, %eax
	movl      %ebp, (%esi)
	movl      $2, %esi
	movl      %eax, (%ebp)
	movl      48(%esp), %eax
	movl      4(%eax), %eax
	andl      $1073676288, %eax
	orl       $1073741824, %eax
	cmpl      $2, %edi
	movl      %eax, 4(%ebp)
	jle       .L000049C2
.L00004966:
	movl      %ebp, 12(%esp)
	movl      %esi, %ebp
	movl      48(%esp), %esi
	jmp       .L00004993
.L00004972:
	.p2align 3
.L00004978:
	cmpl      $10, %eax
	jne       .L0000498C
.L0000497D:
	movl      %ecx, (%esp)
	call      ZX_to_F2x@PLT
.L00004985:
	movl      12(%esp), %edx
	movl      %eax, (%edx,%ebp,4)
.L0000498C:
	addl      $1, %ebp
	cmpl      %edi, %ebp
	je        .L000049BE
.L00004993:
	movl      (%esi,%ebp,4), %ecx
	movl      (%ecx), %eax
	shrl      $25, %eax
	cmpl      $1, %eax
	jne       .L00004978
.L000049A0:
	movl      52(%esp), %eax
	movl      %ecx, (%esp)
	movl      %eax, 4(%esp)
	call      Z_to_F2x@PLT
.L000049B0:
	movl      12(%esp), %edx
	movl      %eax, (%edx,%ebp,4)
	addl      $1, %ebp
	cmpl      %edi, %ebp
	jne       .L00004993
.L000049BE:
	movl      12(%esp), %ebp
.L000049C2:
	movl      %edi, 4(%esp)
	movl      %ebp, (%esp)
	call      FlxX_renormalize@PLT
.L000049CE:
	addl      $28, %esp
	popl      %ebx
	popl      %esi
	popl      %edi
	popl      %ebp
	ret       
	.size	ZXX_to_F2xX, .-ZXX_to_F2xX
# ----------------------
.L000049D6:
	.p2align 4
# ----------------------
	.globl	F2c_to_ZC
	.type	F2c_to_ZC, @function
F2c_to_ZC:
	pushl     %ebp
	pushl     %edi
	pushl     %esi
	pushl     %ebx
	subl      $28, %esp
	call      __x86.get_pc_thunk.bx
.L000049EC:
	addl      $_GLOBAL_OFFSET_TABLE_, %ebx
	movl      48(%esp), %ebp
	movl      4(%ebp), %eax
	movl      avma@GOT(%ebx), %esi
	addl      $1, %eax
	movl      %eax, %edi
	movl      %eax, 8(%esp)
	movl      (%esi), %eax
	leal      0(,%edi,4), %edx
	movl      %eax, %ecx
	subl      %edx, %ecx
	movl      bot@GOT(%ebx), %edx
	movl      %ecx, 12(%esp)
	subl      (%edx), %eax
	shrl      $2, %eax
	cmpl      %eax, %edi
	jbe       .L00004A34
.L00004A28:
	movl      $14, (%esp)
	call      pari_err@PLT
.L00004A34:
	movl      12(%esp), %eax
	testl     $-16777216, 8(%esp)
	movl      %eax, (%esi)
	je        .L00004A5A
.L00004A44:
	leal      .LC1@GOTOFF(%ebx), %eax
	movl      %eax, 4(%esp)
	movl      $15, (%esp)
	call      pari_err@PLT
.L00004A5A:
	movl      8(%esp), %eax
	movl      12(%esp), %edi
	orl       $603979776, %eax
	movl      %eax, (%edi)
	movl      (%ebp), %ecx
	movl      %ecx, %eax
	andl      $16777215, %eax
	cmpl      $2, %eax
	jle       .L00004ADC
.L00004A78:
	movl      $2, %edi
	movl      $1, %eax
	.p2align 3
.L00004A88:
	cmpl      %eax, 8(%esp)
	jle       .L00004ACD
.L00004A8E:
	xorl      %ecx, %ecx
	jmp       .L00004A9D
.L00004A92:
	.p2align 3
.L00004A98:
	cmpl      $31, %ecx
	jg        .L00004ACA
.L00004A9D:
	movl      gen_0@GOT(%ebx), %esi
	movl      (%esi), %edx
	movl      (%ebp,%edi,4), %esi
	shrl      %cl, %esi
	andl      $1, %esi
	movl      gen_1@GOT(%ebx), %esi
	cmovne    (%esi), %edx
	addl      $1, %ecx
	movl      12(%esp), %esi
	movl      %edx, (%esi,%eax,4)
	addl      $1, %eax
	cmpl      %eax, 8(%esp)
	jg        .L00004A98
.L00004ACA:
	movl      (%ebp), %ecx
.L00004ACD:
	movl      %ecx, %edx
	addl      $1, %edi
	andl      $16777215, %edx
	cmpl      %edi, %edx
	jg        .L00004A88
.L00004ADC:
	movl      12(%esp), %eax
	addl      $28, %esp
	popl      %ebx
	popl      %esi
	popl      %edi
	popl      %ebp
	ret       
	.size	F2c_to_ZC, .-F2c_to_ZC
# ----------------------
.L00004AE8:
	.p2align 4
# ----------------------
	.globl	F2m_to_ZM
	.type	F2m_to_ZM, @function
F2m_to_ZM:
	pushl     %ebp
	pushl     %edi
	pushl     %esi
	pushl     %ebx
	subl      $28, %esp
	call      __x86.get_pc_thunk.bx
.L00004AFC:
	addl      $_GLOBAL_OFFSET_TABLE_, %ebx
	movl      48(%esp), %ebp
	movl      (%ebp), %eax
	movl      avma@GOT(%ebx), %esi
	movl      %eax, 12(%esp)
	andl      $16777215, 12(%esp)
	movl      (%esi), %eax
	movl      12(%esp), %edx
	movl      %eax, %edi
	leal      0(,%edx,4), %ecx
	subl      %ecx, %edi
	movl      bot@GOT(%ebx), %ecx
	subl      (%ecx), %eax
	shrl      $2, %eax
	cmpl      %eax, %edx
	jbe       .L00004B4B
.L00004B3B:
	movl      $14, (%esp)
	call      pari_err@PLT
.L00004B47:
	movl      12(%esp), %edx
.L00004B4B:
	movl      %edx, %eax
	orl       $637534208, %eax
	cmpl      $1, %edx
	movl      %edi, (%esi)
	movl      $1, %esi
	movl      %eax, (%edi)
	jle       .L00004B78
.L00004B60:
	movl      (%ebp,%esi,4), %eax
	movl      %eax, (%esp)
	call      F2c_to_ZC@PLT
.L00004B6C:
	movl      %eax, (%edi,%esi,4)
	addl      $1, %esi
	cmpl      12(%esp), %esi
	jne       .L00004B60
.L00004B78:
	addl      $28, %esp
	movl      %edi, %eax
	popl      %ebx
	popl      %esi
	popl      %edi
	popl      %ebp
	ret       
	.size	F2m_to_ZM, .-F2m_to_ZM
# ----------------------
.L00004B82:
	.p2align 4
# ----------------------
	.globl	ZV_to_F2v
	.type	ZV_to_F2v, @function
ZV_to_F2v:
	pushl     %ebp
	pushl     %edi
	pushl     %esi
	pushl     %ebx
	subl      $28, %esp
	movl      48(%esp), %eax
	call      __x86.get_pc_thunk.bx
.L00004BA0:
	addl      $_GLOBAL_OFFSET_TABLE_, %ebx
	movl      (%eax), %eax
	movl      avma@GOT(%ebx), %ebp
	movl      %eax, 4(%esp)
	andl      $16777215, 4(%esp)
	movl      4(%esp), %eax
	movl      (%ebp), %edx
	leal      94(%eax), %edi
	shrl      $5, %edi
	movl      %edx, %ecx
	leal      -1(%eax), %esi
	leal      0(,%edi,4), %eax
	subl      %eax, %ecx
	movl      bot@GOT(%ebx), %eax
	movl      %ecx, 8(%esp)
	subl      (%eax), %edx
	movl      %edx, %eax
	shrl      $2, %eax
	cmpl      %eax, %edi
	jbe       .L00004BF6
.L00004BEA:
	movl      $14, (%esp)
	call      pari_err@PLT
.L00004BF6:
	movl      8(%esp), %eax
	orl       $738197504, %edi
	testl     %esi, %esi
	movl      $1, 12(%esp)
	movl      $32, %edx
	movl      %eax, (%ebp)
	movl      %esi, 4(%eax)
	movl      %edi, (%eax)
	movl      $1, %eax
	jg        .L00004C60
.L00004C1E:
	jmp       .L00004C88
.L00004C20:
	movl      %edx, %ecx
	addl      $1, %edx
.L00004C25:
	movl      48(%esp), %esi
	movl      (%esi,%eax,4), %esi
	movl      4(%esi), %edi
	movl      %edi, %ebp
	sarl      $30, %ebp
	testl     %ebp, %ebp
	je        .L00004C57
.L00004C38:
	andl      $16777215, %edi
	testb     $1, -4(%esi,%edi,4)
	je        .L00004C57
.L00004C45:
	movl      $1, %esi
	movl      12(%esp), %edi
	sall      %cl, %esi
	movl      8(%esp), %ecx
	orl       %esi, (%ecx,%edi,4)
.L00004C57:
	addl      $1, %eax
	cmpl      4(%esp), %eax
	je        .L00004C88
.L00004C60:
	cmpl      $32, %edx
	jne       .L00004C20
.L00004C65:
	addl      $1, 12(%esp)
	movl      8(%esp), %ecx
	movl      12(%esp), %edx
	movl      $0, (%ecx,%edx,4)
	movl      $1, %edx
	xorl      %ecx, %ecx
	jmp       .L00004C25
.L00004C82:
	.p2align 3
.L00004C88:
	movl      8(%esp), %eax
	addl      $28, %esp
	popl      %ebx
	popl      %esi
	popl      %edi
	popl      %ebp
	ret       
	.size	ZV_to_F2v, .-ZV_to_F2v
# ----------------------
.L00004C94:
	.p2align 4
# ----------------------
	.globl	Flv_to_F2v
	.type	Flv_to_F2v, @function
Flv_to_F2v:
	pushl     %ebp
	pushl     %edi
	pushl     %esi
	pushl     %ebx
	subl      $28, %esp
	movl      48(%esp), %eax
	call      __x86.get_pc_thunk.bx
.L00004CB0:
	addl      $_GLOBAL_OFFSET_TABLE_, %ebx
	movl      (%eax), %eax
	movl      avma@GOT(%ebx), %ebp
	movl      %eax, 8(%esp)
	andl      $16777215, 8(%esp)
	movl      8(%esp), %eax
	movl      (%ebp), %ecx
	leal      94(%eax), %esi
	shrl      $5, %esi
	movl      %ecx, %edx
	leal      -1(%eax), %edi
	leal      0(,%esi,4), %eax
	subl      %eax, %edx
	movl      %edx, %eax
	movl      bot@GOT(%ebx), %edx
	subl      (%edx), %ecx
	movl      %ecx, %edx
	shrl      $2, %edx
	cmpl      %edx, %esi
	jbe       .L00004D0C
.L00004CF8:
	movl      $14, (%esp)
	movl      %eax, 12(%esp)
	call      pari_err@PLT
.L00004D08:
	movl      12(%esp), %eax
.L00004D0C:
	orl       $738197504, %esi
	testl     %edi, %edi
	movl      %eax, (%ebp)
	movl      $1, %edx
	movl      $1, %ebp
	movl      %esi, (%eax)
	movl      $32, %esi
	movl      %edi, 4(%eax)
	jg        .L00004D52
.L00004D2D:
	jmp       .L00004D70
.L00004D2F:
	.p2align 3
.L00004D30:
	movl      %esi, %ecx
	addl      $1, %esi
.L00004D35:
	movl      48(%esp), %edi
	testb     $1, (%edi,%edx,4)
	je        .L00004D49
.L00004D3F:
	movl      $1, %edi
	sall      %cl, %edi
	orl       %edi, (%eax,%ebp,4)
.L00004D49:
	addl      $1, %edx
	cmpl      8(%esp), %edx
	je        .L00004D70
.L00004D52:
	cmpl      $32, %esi
	jne       .L00004D30
.L00004D57:
	addl      $1, %ebp
	movl      $1, %esi
	movl      $0, (%eax,%ebp,4)
	xorl      %ecx, %ecx
	jmp       .L00004D35
.L00004D6A:
	.p2align 3
.L00004D70:
	addl      $28, %esp
	popl      %ebx
	popl      %esi
	popl      %edi
	popl      %ebp
	ret       
	.size	Flv_to_F2v, .-Flv_to_F2v
# ----------------------
.L00004D78:
	.p2align 4
# ----------------------
	.globl	ZM_to_F2m
	.type	ZM_to_F2m, @function
ZM_to_F2m:
	pushl     %ebp
	pushl     %edi
	pushl     %esi
	pushl     %ebx
	subl      $28, %esp
	call      __x86.get_pc_thunk.bx
.L00004D8C:
	addl      $_GLOBAL_OFFSET_TABLE_, %ebx
	movl      48(%esp), %ebp
	movl      (%ebp), %eax
	movl      avma@GOT(%ebx), %esi
	movl      %eax, 12(%esp)
	andl      $16777215, 12(%esp)
	movl      (%esi), %eax
	movl      12(%esp), %edx
	movl      %eax, %edi
	leal      0(,%edx,4), %ecx
	subl      %ecx, %edi
	movl      bot@GOT(%ebx), %ecx
	subl      (%ecx), %eax
	shrl      $2, %eax
	cmpl      %eax, %edx
	jbe       .L00004DDB
.L00004DCB:
	movl      $14, (%esp)
	call      pari_err@PLT
.L00004DD7:
	movl      12(%esp), %edx
.L00004DDB:
	movl      %edx, %eax
	orl       $637534208, %eax
	cmpl      $1, %edx
	movl      %edi, (%esi)
	movl      $1, %esi
	movl      %eax, (%edi)
	jle       .L00004E08
.L00004DF0:
	movl      (%ebp,%esi,4), %eax
	movl      %eax, (%esp)
	call      ZV_to_F2v@PLT
.L00004DFC:
	movl      %eax, (%edi,%esi,4)
	addl      $1, %esi
	cmpl      12(%esp), %esi
	jne       .L00004DF0
.L00004E08:
	addl      $28, %esp
	movl      %edi, %eax
	popl      %ebx
	popl      %esi
	popl      %edi
	popl      %ebp
	ret       
	.size	ZM_to_F2m, .-ZM_to_F2m
# ----------------------
.L00004E12:
	.p2align 4
# ----------------------
	.globl	Flm_to_F2m
	.type	Flm_to_F2m, @function
Flm_to_F2m:
	pushl     %ebp
	pushl     %edi
	pushl     %esi
	pushl     %ebx
	subl      $28, %esp
	call      __x86.get_pc_thunk.bx
.L00004E2C:
	addl      $_GLOBAL_OFFSET_TABLE_, %ebx
	movl      48(%esp), %ebp
	movl      (%ebp), %eax
	movl      avma@GOT(%ebx), %esi
	movl      %eax, 12(%esp)
	andl      $16777215, 12(%esp)
	movl      (%esi), %eax
	movl      12(%esp), %edx
	movl      %eax, %edi
	leal      0(,%edx,4), %ecx
	subl      %ecx, %edi
	movl      bot@GOT(%ebx), %ecx
	subl      (%ecx), %eax
	shrl      $2, %eax
	cmpl      %eax, %edx
	jbe       .L00004E7B
.L00004E6B:
	movl      $14, (%esp)
	call      pari_err@PLT
.L00004E77:
	movl      12(%esp), %edx
.L00004E7B:
	movl      %edx, %eax
	orl       $637534208, %eax
	cmpl      $1, %edx
	movl      %edi, (%esi)
	movl      $1, %esi
	movl      %eax, (%edi)
	jle       .L00004EA8
.L00004E90:
	movl      (%ebp,%esi,4), %eax
	movl      %eax, (%esp)
	call      Flv_to_F2v@PLT
.L00004E9C:
	movl      %eax, (%edi,%esi,4)
	addl      $1, %esi
	cmpl      12(%esp), %esi
	jne       .L00004E90
.L00004EA8:
	addl      $28, %esp
	movl      %edi, %eax
	popl      %ebx
	popl      %esi
	popl      %edi
	popl      %ebp
	ret       
	.size	Flm_to_F2m, .-Flm_to_F2m
# ----------------------
.L00004EB2:
	.p2align 4
# ----------------------
	.globl	F2v_add_inplace
	.type	F2v_add_inplace, @function
F2v_add_inplace:
	pushl     %ebp
	pushl     %edi
	pushl     %esi
	pushl     %ebx
	subl      $4, %esp
	movl      28(%esp), %edi
	call      __x86.get_pc_thunk.bx
.L00004ED0:
	addl      $_GLOBAL_OFFSET_TABLE_, %ebx
	movl      24(%esp), %esi
	movl      (%edi), %eax
	andl      $16777215, %eax
	leal      -2(%eax), %ebp
	andl      $7, %ebp
	subl      %ebp, %eax
	cmpl      $2, %eax
	movl      %eax, %ecx
	jle       .L00004FAC
.L00004EF4:
	subl      $3, %ecx
	movl      %ecx, (%esp)
	leal      8(%esi), %eax
	shrl      $3, (%esp)
	movl      (%esp), %ecx
	leal      8(%edi), %edx
	sall      $5, %ecx
	leal      40(%esi,%ecx), %ecx
	.p2align 3
.L00004F10:
	movl      (%edx), %esi
	addl      $32, %edx
	xorl      %esi, (%eax)
	movl      -28(%edx), %esi
	xorl      %esi, 4(%eax)
	movl      -24(%edx), %esi
	xorl      %esi, 8(%eax)
	movl      -20(%edx), %esi
	xorl      %esi, 12(%eax)
	movl      -16(%edx), %esi
	xorl      %esi, 16(%eax)
	movl      -12(%edx), %esi
	xorl      %esi, 20(%eax)
	movl      -8(%edx), %esi
	xorl      %esi, 24(%eax)
	movl      -4(%edx), %esi
	xorl      %esi, 28(%eax)
	addl      $32, %eax
	cmpl      %ecx, %eax
	jne       .L00004F10
.L00004F48:
	movl      (%esp), %eax
	movl      24(%esp), %esi
	leal      10(,%eax,8), %eax
.L00004F56:
	movl      .LC00000000@GOTOFF(%ebx,%ebp,4), %ecx
	leal      (%ecx,%ebx), %edx
	jmp       *%edx
.L00004F62:
	.p2align 3
.L1094:
	movl      (%edi,%eax,4), %edx
	xorl      %edx, (%esi,%eax,4)
	addl      $1, %eax
.L1093:
	movl      (%edi,%eax,4), %edx
	xorl      %edx, (%esi,%eax,4)
	addl      $1, %eax
.L1092:
	movl      (%edi,%eax,4), %edx
	xorl      %edx, (%esi,%eax,4)
	addl      $1, %eax
.L1091:
	movl      (%edi,%eax,4), %edx
	xorl      %edx, (%esi,%eax,4)
	addl      $1, %eax
.L1090:
	movl      (%edi,%eax,4), %edx
	xorl      %edx, (%esi,%eax,4)
	addl      $1, %eax
.L1089:
	movl      (%edi,%eax,4), %edx
	xorl      %edx, (%esi,%eax,4)
	addl      $1, %eax
.L1087:
	movl      (%edi,%eax,4), %edx
	xorl      %edx, (%esi,%eax,4)
.L1082:
	addl      $4, %esp
	popl      %ebx
	popl      %esi
	popl      %edi
	popl      %ebp
	ret       
.L00004FAC:
	movl      $2, %eax
	jmp       .L00004F56
	.size	F2v_add_inplace, .-F2v_add_inplace
# ----------------------
.L00004FB3:
	.p2align 4
# ----------------------
	.globl	F2xV_to_F2m
	.type	F2xV_to_F2m, @function
F2xV_to_F2m:
	pushl     %ebp
	pushl     %edi
	pushl     %esi
	pushl     %ebx
	subl      $28, %esp
	call      __x86.get_pc_thunk.bx
.L00004FCC:
	addl      $_GLOBAL_OFFSET_TABLE_, %ebx
	movl      48(%esp), %ebp
	movl      (%ebp), %eax
	movl      avma@GOT(%ebx), %esi
	movl      %eax, 12(%esp)
	andl      $16777215, 12(%esp)
	movl      (%esi), %eax
	movl      12(%esp), %edx
	movl      %eax, %edi
	leal      0(,%edx,4), %ecx
	subl      %ecx, %edi
	movl      bot@GOT(%ebx), %ecx
	subl      (%ecx), %eax
	shrl      $2, %eax
	cmpl      %eax, %edx
	jbe       .L0000501B
.L0000500B:
	movl      $14, (%esp)
	call      pari_err@PLT
.L00005017:
	movl      12(%esp), %edx
.L0000501B:
	movl      %edx, %eax
	orl       $637534208, %eax
	cmpl      $1, %edx
	movl      %edi, (%esi)
	movl      $1, %esi
	movl      %eax, (%edi)
	jle       .L00005050
.L00005030:
	movl      52(%esp), %eax
	movl      %eax, 4(%esp)
	movl      (%ebp,%esi,4), %eax
	movl      %eax, (%esp)
	call      F2x_to_F2v@PLT
.L00005044:
	movl      %eax, (%edi,%esi,4)
	addl      $1, %esi
	cmpl      12(%esp), %esi
	jne       .L00005030
.L00005050:
	addl      $28, %esp
	movl      %edi, %eax
	popl      %ebx
	popl      %esi
	popl      %edi
	popl      %ebp
	ret       
	.size	F2xV_to_F2m, .-F2xV_to_F2m
# ----------------------
.L0000505A:
	.p2align 3
# ----------------------
	.globl	F2xq_matrix_pow
	.type	F2xq_matrix_pow, @function
F2xq_matrix_pow:
	pushl     %ebx
	subl      $24, %esp
	movl      44(%esp), %eax
	call      __x86.get_pc_thunk.bx
.L0000506D:
	addl      $_GLOBAL_OFFSET_TABLE_, %ebx
	movl      %eax, 8(%esp)
	movl      40(%esp), %eax
	subl      $1, %eax
	movl      %eax, 4(%esp)
	movl      32(%esp), %eax
	movl      %eax, (%esp)
	call      F2xq_powers@PLT
.L0000508E:
	movl      36(%esp), %edx
	movl      %edx, 4(%esp)
	movl      %eax, (%esp)
	call      F2xV_to_F2m@PLT
.L0000509E:
	addl      $24, %esp
	popl      %ebx
	ret       
	.size	F2xq_matrix_pow, .-F2xq_matrix_pow
# ----------------------
	.ident	"GCC: (Ubuntu 4.8.4-2ubuntu1~14.04.3) 4.8.4"
	.section	.note.GNU-stack,"",@progbits
