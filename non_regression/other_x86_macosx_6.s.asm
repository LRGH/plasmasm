	.section       __TEXT,__text,regular,pure_instructions
	.align 4, 0x90
	.globl	_umodiu
_umodiu:
	pushl     %ebp
	pushl     %ebx
	pushl     %edi
	pushl     %esi
	subl      $60, %esp
	call      L13$pb
L13$pb:
	popl      %eax
	movl      %eax, 28(%esp)
	movl      84(%esp), %edi
	movl      80(%esp), %ebp
	movl      4(%ebp), %esi
	sarl      $30, %esi
	testl     %edi, %edi
	jne       LBB13_2
	movl      $27, (%esp)
	call      _pari_err
LBB13_2:
	xorl      %eax, %eax
	testl     %esi, %esi
	movl      %esi, 16(%esp)
	je        LBB13_31
	movl      $16777215, %ebx
	andl      4(%ebp), %ebx
	movl      8(%ebp), %esi
	cmpl      %edi, %esi
	jae       LBB13_4
	cmpl      $3, %ebx
	je        LBB13_30
	addl      $4, %ebp
	decl      %ebx
	jmp       LBB13_7
LBB13_4:
	xorl      %esi, %esi
LBB13_7:
	cmpl      $3, %ebx
	jl        LBB13_29
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
	jae       LBB13_9
	addl      $-2, %ebx
	addl      $8, %ebp
	.align 4, 0x90
LBB13_13:
	movl      (%ebp), %ecx
	testl     %esi, %esi
	je        LBB13_15
	shldl     $16, %ecx, %esi
	xorl      %edx, %edx
	movl      %esi, %eax
	divl      %edi
	shll      $16, %edx
	movzwl    %cx, %ecx
	orl       %edx, %ecx
LBB13_15:
	xorl      %edx, %edx
	movl      %ecx, %eax
	divl      %edi
	movl      %edx, %esi
	addl      $4, %ebp
	decl      %ebx
	jne       LBB13_13
	jmp       LBB13_29
LBB13_9:
	leal      -8(%edx), %eax
	movl      %eax, 24(%esp)
	movl      %ecx, %eax
	shrl      $8, %eax
	movl      %eax, 20(%esp)
	addl      $-2, %ebx
	addl      $8, %ebp
	.align 4, 0x90
LBB13_10:
	movl      (%ebp), %eax
	testl     %esi, %esi
	je        LBB13_11
	testl     %edi, %edi
	js        LBB13_17
	movl      %eax, 56(%esp)
	cmpl      $255, %ecx
	cmova     24(%esp), %edx
	movl      %ecx, %eax
	cmova     20(%esp), %eax
	cmpl      $16, %eax
	jb        LBB13_19
	movl      %ebp, 40(%esp)
	movl      %ebx, 44(%esp)
	addl      $-4, %edx
	shrl      $4, %eax
	jmp       LBB13_21
	.align 4, 0x90
LBB13_11:
	xorl      %edx, %edx
	divl      %edi
	movl      %edx, %esi
	movl      36(%esp), %edx
	jmp       LBB13_28
	.align 4, 0x90
LBB13_17:
	movl      %ebp, 40(%esp)
	movl      $0, 48(%esp)
	movl      %ebx, 44(%esp)
	movl      %eax, %ebx
	jmp       LBB13_22
LBB13_19:
	movl      %ebp, 40(%esp)
	movl      %ebx, 44(%esp)
LBB13_21:
	movl      28(%esp), %ecx
	movl      %edx, 48(%esp)
	movb      %dl, %cl
	movl      56(%esp), %ebx
	shldl     %cl, %ebx, %esi
	movb      %dl, %cl
	shll      %cl, %ebx
	movb      %dl, %cl
	shll      %cl, %edi
LBB13_22:
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
	jae       LBB13_23
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
	jmp       LBB13_25
	.align 4, 0x90
LBB13_23:
	movl      %ecx, %ebx
LBB13_25:
	movl      40(%esp), %ebp
	subl      %eax, %esi
	xorl      %edx, %edx
	movl      %esi, %eax
	divl      %edi
	imull     %eax, %edi
	subl      %edi, %esi
	movl      52(%esp), %ecx
	imull     %eax, %ecx
	shll      $16, %esi
	movl      56(%esp), %eax
	movzwl    %ax, %eax
	orl       %esi, %eax
	movl      %ecx, %esi
	cmpl      %esi, %eax
	jae       LBB13_27
	addl      %ebx, %eax
	setb      %dl
	xorb      $1, %dl
	movl      $0, %ecx
	cmove     %ecx, %ebx
	cmpl      %esi, %eax
	cmovae    %ecx, %ebx
	addl      %ebx, %eax
LBB13_27:
	movl      84(%esp), %edi
	movl      44(%esp), %ebx
	movl      36(%esp), %edx
	subl      %esi, %eax
	movl      48(%esp), %ecx
	shrl      %cl, %eax
	movl      %eax, %esi
	movl      32(%esp), %ecx
LBB13_28:
	addl      $4, %ebp
	decl      %ebx
	jne       LBB13_10
LBB13_29:
	xorl      %eax, %eax
	testl     %esi, %esi
	je        LBB13_31
LBB13_30:
	subl      %esi, %edi
	cmpl      $0, 16(%esp)
	cmovg     %esi, %edi
	movl      %edi, %eax
LBB13_31:
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
