	.macosx_version_min 10, 12
	.section       __TEXT,__literal4,4byte_literals
	.p2align 2
LCPI0_0:
	.long	8388608
# ----------------------
	.section       __TEXT,__text,regular,pure_instructions
	.p2align 4, 0x90
# ----------------------
	.globl	_ftoastr
_ftoastr:
	pushl     %ebp
	movl      %esp, %ebp
	pushl     %ebx
	pushl     %edi
	pushl     %esi
	subl      $124, %esp
	call      L0$pb
L0$pb:
	popl      %eax
	movss     24(%ebp), %xmm0
	movl      20(%ebp), %ecx
	movl      16(%ebp), %edx
	movl      12(%ebp), %esi
	movl      8(%ebp), %edi
	xorps     %xmm1, %xmm1
	movl      L___stack_chk_guard$non_lazy_ptr-L0$pb(%eax), %ebx
	movl      (%ebx), %ebx
	movl      %ebx, -16(%ebp)
	movl      %edi, -32(%ebp)
	movl      %esi, -36(%ebp)
	movl      %edx, -40(%ebp)
	movl      %ecx, -44(%ebp)
	movss     %xmm0, -48(%ebp)
	ucomiss   -48(%ebp), %xmm1
	movl      %eax, -72(%ebp)
	jbe       LBB0_2
	movss     -48(%ebp), %xmm0
	movd      %xmm0, %eax
	xorl      $2147483648, %eax
	movd      %eax, %xmm0
	movss     %xmm0, -76(%ebp)
	jmp       LBB0_3
LBB0_2:
	movss     -48(%ebp), %xmm0
	movss     %xmm0, -76(%ebp)
LBB0_3:
	movss     -76(%ebp), %xmm0
	movl      -72(%ebp), %eax
	movss     LCPI0_0-L0$pb(%eax), %xmm1
	movl      $6, %ecx
	movl      $1, %edx
	movl      $103, %esi
	movl      $71, %edi
	leal      -27(%ebp), %ebx
	movss     %xmm0, -52(%ebp)
	movl      %ebx, -60(%ebp)
	movl      -60(%ebp), %ebx
	movl      %ebx, %eax
	addl      $1, %eax
	movl      %eax, -60(%ebp)
	movb      $37, (%ebx)
	movl      -60(%ebp), %eax
	movb      $45, (%eax)
	movl      -40(%ebp), %eax
	andl      $1, %eax
	cmpl      $0, %eax
	setne     %al
	andb      $1, %al
	movzbl    %al, %ebx
	addl      -60(%ebp), %ebx
	movl      %ebx, -60(%ebp)
	movl      -60(%ebp), %ebx
	movb      $43, (%ebx)
	movl      -40(%ebp), %ebx
	andl      $2, %ebx
	cmpl      $0, %ebx
	setne     %al
	andb      $1, %al
	movzbl    %al, %ebx
	addl      -60(%ebp), %ebx
	movl      %ebx, -60(%ebp)
	movl      -60(%ebp), %ebx
	movb      $32, (%ebx)
	movl      -40(%ebp), %ebx
	andl      $4, %ebx
	cmpl      $0, %ebx
	setne     %al
	andb      $1, %al
	movzbl    %al, %ebx
	addl      -60(%ebp), %ebx
	movl      %ebx, -60(%ebp)
	movl      -60(%ebp), %ebx
	movb      $48, (%ebx)
	movl      -40(%ebp), %ebx
	andl      $8, %ebx
	cmpl      $0, %ebx
	setne     %al
	andb      $1, %al
	movzbl    %al, %ebx
	addl      -60(%ebp), %ebx
	movl      %ebx, -60(%ebp)
	movl      -60(%ebp), %ebx
	movl      %ebx, %eax
	addl      $1, %eax
	movl      %eax, -60(%ebp)
	movb      $42, (%ebx)
	movl      -60(%ebp), %eax
	movl      %eax, %ebx
	addl      $1, %ebx
	movl      %ebx, -60(%ebp)
	movb      $46, (%eax)
	movl      -60(%ebp), %eax
	movl      %eax, %ebx
	addl      $1, %ebx
	movl      %ebx, -60(%ebp)
	movb      $42, (%eax)
	movl      -60(%ebp), %eax
	movb      $76, (%eax)
	movl      -60(%ebp), %eax
	movl      %eax, -60(%ebp)
	movl      -40(%ebp), %eax
	andl      $16, %eax
	cmpl      $0, %eax
	cmovne    %edi, %esi
	movl      %esi, %eax
	movl      -60(%ebp), %esi
	movl      %esi, %edi
	addl      $1, %edi
	movl      %edi, -60(%ebp)
	movb      %al, (%esi)
	movl      -60(%ebp), %esi
	movb      $0, (%esi)
	ucomiss   -52(%ebp), %xmm1
	cmova     %edx, %ecx
	movl      %ecx, -56(%ebp)
LBB0_4:
	xorl      %eax, %eax
	leal      -27(%ebp), %ecx
	movl      $-1, %edx
	movl      -32(%ebp), %esi
	movl      -36(%ebp), %edi
	movl      -44(%ebp), %ebx
	movl      %eax, -80(%ebp)
	movl      -56(%ebp), %eax
	cvtss2sd  -48(%ebp), %xmm0
	movl      %esi, (%esp)
	movl      %edi, 4(%esp)
	movl      $0, 8(%esp)
	movl      %edx, 12(%esp)
	movl      %ecx, 16(%esp)
	movl      %ebx, 20(%esp)
	movl      %eax, 24(%esp)
	movsd     %xmm0, 28(%esp)
	call      ___snprintf_chk
	movl      %eax, -64(%ebp)
	cmpl      $0, -64(%ebp)
	jl        LBB0_8
	movl      $9, %eax
	cmpl      -56(%ebp), %eax
	jle       LBB0_8
	movl      -64(%ebp), %eax
	cmpl      -36(%ebp), %eax
	jae       LBB0_10
	xorl      %eax, %eax
	movl      -32(%ebp), %ecx
	movl      %ecx, (%esp)
	movl      $0, 4(%esp)
	movl      %eax, -84(%ebp)
	call      _strtof$UNIX2003
	fstps     -68(%ebp)
	movss     -68(%ebp), %xmm0
	ucomiss   -48(%ebp), %xmm0
	jne       LBB0_10
	jp        LBB0_10
LBB0_8:
	movl      -64(%ebp), %eax
	movl      -72(%ebp), %ecx
	movl      L___stack_chk_guard$non_lazy_ptr-L0$pb(%ecx), %edx
	movl      (%edx), %edx
	movl      -16(%ebp), %esi
	cmpl      %esi, %edx
	movl      %eax, -88(%ebp)
	jne       LBB0_12
	movl      -88(%ebp), %eax
	addl      $124, %esp
	popl      %esi
	popl      %edi
	popl      %ebx
	popl      %ebp
	ret       
LBB0_10:
	jmp       LBB0_11
LBB0_11:
	movl      -56(%ebp), %eax
	addl      $1, %eax
	movl      %eax, -56(%ebp)
	jmp       LBB0_4
LBB0_12:
	call      ___stack_chk_fail
# ----------------------
	.section       __IMPORT,__pointers,non_lazy_symbol_pointers
L___stack_chk_guard$non_lazy_ptr:
	.indirect_symbol ___stack_chk_guard
	.long	0
# ----------------------

.subsections_via_symbols
