	.macosx_version_min 10, 12
	.section       __TEXT,__text,regular,pure_instructions
	.align 4, 0x90
	.globl	_umodiu
_umodiu:
	pushl     %ebp
	pushl     %ebx
	pushl     %edi
	pushl     %esi
	subl      $60, %esp
	call      L0000000C
L0000000C:
	popl      %eax
	movl      %eax, 28(%esp)
	movl      84(%esp), %edi
	movl      80(%esp), %ebp
	movl      4(%ebp), %esi
	sarl      $30, %esi
	testl     %edi, %edi
	jne       L0000002F
L00000023:
	movl      $27, (%esp)
	call      _pari_err
L0000002F:
	xorl      %eax, %eax
	testl     %esi, %esi
	movl      %esi, 16(%esp)
	je        L00000239
L0000003D:
	movl      $16777215, %ebx
	andl      4(%ebp), %ebx
	movl      8(%ebp), %esi
	cmpl      %edi, %esi
	jae       L0000005B
L0000004C:
	cmpl      $3, %ebx
	je        L0000022D
L00000055:
	addl      $4, %ebp
	decl      %ebx
	jmp       L0000005D
L0000005B:
	xorl      %esi, %esi
L0000005D:
	cmpl      $3, %ebx
	jl        L00000227
L00000066:
	movl      %edi, %ecx
	shrl      $16, %ecx
	cmpl      $65535, %edi
	movl      $12, %eax
	movl      $28, %edx
	cmova     %eax, %edx
	movl      %edx, 36(%esp)
	cmovbe    %edi, %ecx
	movl      %ecx, 32(%esp)
	cmpl      $65535, %edi
	jae       L000000CC
L00000091:
	addl      $-2, %ebx
	addl      $8, %ebp
	.align 4, 0x90
L000000A0:
	movl      (%ebp), %ecx
	testl     %esi, %esi
	je        L000000B9
L000000A7:
	shldl     $16, %ecx, %esi
	xorl      %edx, %edx
	movl      %esi, %eax
	divl      %edi
	sall      $16, %edx
	movzwl    %cx, %ecx
	orl       %edx, %ecx
L000000B9:
	xorl      %edx, %edx
	movl      %ecx, %eax
	divl      %edi
	movl      %edx, %esi
	addl      $4, %ebp
	decl      %ebx
	jne       L000000A0
L000000C7:
	jmp       L00000227
L000000CC:
	leal      -8(%edx), %eax
	movl      %eax, 24(%esp)
	movl      %ecx, %eax
	shrl      $8, %eax
	movl      %eax, 20(%esp)
	addl      $-2, %ebx
	addl      $8, %ebp
	.align 4, 0x90
L000000F0:
	movl      (%ebp), %eax
	testl     %esi, %esi
	je        L00000130
L000000F7:
	testl     %edi, %edi
	js        L00000140
L000000FB:
	movl      %eax, 56(%esp)
	cmpl      $255, %ecx
	cmova     24(%esp), %edx
	movl      %ecx, %eax
	cmova     20(%esp), %eax
	cmpl      $16, %eax
	jb        L00000154
L00000116:
	movl      %ebp, 40(%esp)
	movl      %ebx, 44(%esp)
	addl      $-4, %edx
	shrl      $4, %eax
	jmp       L0000015C
L00000126:
	.align 4, 0x90
L00000130:
	xorl      %edx, %edx
	divl      %edi
	movl      %edx, %esi
	movl      36(%esp), %edx
	jmp       L0000021D
L0000013F:
	.align 4, 0x90
L00000140:
	movl      %ebp, 40(%esp)
	movl      $0, 48(%esp)
	movl      %ebx, 44(%esp)
	movl      %eax, %ebx
	jmp       L00000175
L00000154:
	movl      %ebp, 40(%esp)
	movl      %ebx, 44(%esp)
L0000015C:
	movl      28(%esp), %ecx
	movl      %edx, 48(%esp)
	movb      %dl, %cl
	movl      56(%esp), %ebx
	shldl     %cl, %ebx, %esi
	movb      %dl, %cl
	sall      %cl, %ebx
	movb      %dl, %cl
	sall      %cl, %edi
L00000175:
	movl      %ebx, 56(%esp)
	movzwl    %di, %ebp
	movl      %ebp, 52(%esp)
	movl      %edi, %ecx
	shrl      $16, %edi
	xorl      %edx, %edx
	movl      %esi, %eax
	divl      %edi
	movl      %eax, %edx
	imull     %edi, %edx
	subl      %edx, %esi
	imull     %ebp, %eax
	shldl     $16, %ebx, %esi
	cmpl      %eax, %esi
	jae       L000001C0
L0000019D:
	addl      %ecx, %esi
	setb      %dl
	xorb      $1, %dl
	movl      $0, %edx
	cmovne    %ecx, %edx
	movl      %ecx, %ebx
	cmpl      %eax, %esi
	movl      $0, %ecx
	cmovae    %ecx, %edx
	addl      %edx, %esi
	jmp       L000001C2
L000001BD:
	.align 4, 0x90
L000001C0:
	movl      %ecx, %ebx
L000001C2:
	movl      40(%esp), %ebp
	subl      %eax, %esi
	xorl      %edx, %edx
	movl      %esi, %eax
	divl      %edi
	imull     %eax, %edi
	subl      %edi, %esi
	movl      52(%esp), %ecx
	imull     %eax, %ecx
	sall      $16, %esi
	movl      56(%esp), %eax
	movzwl    %ax, %eax
	orl       %esi, %eax
	movl      %ecx, %esi
	cmpl      %esi, %eax
	jae       L00000203
L000001EC:
	addl      %ebx, %eax
	setb      %dl
	xorb      $1, %dl
	movl      $0, %ecx
	cmove     %ecx, %ebx
	cmpl      %esi, %eax
	cmovae    %ecx, %ebx
	addl      %ebx, %eax
L00000203:
	movl      84(%esp), %edi
	movl      44(%esp), %ebx
	movl      36(%esp), %edx
	subl      %esi, %eax
	movl      48(%esp), %ecx
	shrl      %cl, %eax
	movl      %eax, %esi
	movl      32(%esp), %ecx
L0000021D:
	addl      $4, %ebp
	decl      %ebx
	jne       L000000F0
L00000227:
	xorl      %eax, %eax
	testl     %esi, %esi
	je        L00000239
L0000022D:
	subl      %esi, %edi
	cmpl      $0, 16(%esp)
	cmovg     %esi, %edi
	movl      %edi, %eax
L00000239:
	addl      $60, %esp
	popl      %esi
	popl      %edi
	popl      %ebx
	popl      %ebp
	ret       
# ----------------------
	.section       __IMPORT,__pointers,non_lazy_symbol_pointers
L_DEBUGMEM$non_lazy_ptr:
	.indirect_symbol _DEBUGMEM
	.long	0
# ----------------------
L_LOG10_2$non_lazy_ptr:
	.indirect_symbol _LOG10_2
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
L_gen_m1$non_lazy_ptr:
	.indirect_symbol _gen_m1
	.long	0
# ----------------------
L_gen_m2$non_lazy_ptr:
	.indirect_symbol _gen_m2
	.long	0
# ----------------------
L_top$non_lazy_ptr:
	.indirect_symbol _top
	.long	0
# ----------------------

.subsections_via_symbols
