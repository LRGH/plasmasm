	.macosx_version_min 10, 12
	.section       __TEXT,__text,regular,pure_instructions
	.align 4, 0x90
	.globl	_ftoastr
_ftoastr:
	pushl     %ebp
	movl      %esp, %ebp
	pushl     %ebx
	pushl     %edi
	pushl     %esi
	subl      $124, %esp
	call      L0000000E
L0000000E:
	popl      %eax
	movss     24(%ebp), %xmm0
	movl      20(%ebp), %ecx
	movl      16(%ebp), %edx
	movl      12(%ebp), %esi
	movl      8(%ebp), %edi
	xorps     %xmm1, %xmm1
	movl      L___stack_chk_guard$non_lazy_ptr-L0000000E(%eax), %ebx
	movl      (%ebx), %ebx
	movl      %ebx, -16(%ebp)
	movl      %edi, -32(%ebp)
	movl      %esi, -36(%ebp)
	movl      %edx, -40(%ebp)
	movl      %ecx, -44(%ebp)
	movss     %xmm0, -48(%ebp)
	ucomiss   -48(%ebp), %xmm1
	movl      %eax, -72(%ebp)
	jbe       L00000068
L0000004C:
	movss     -48(%ebp), %xmm0
	movd      %xmm0, %eax
	xorl      $2147483648, %eax
	movd      %eax, %xmm0
	movss     %xmm0, -76(%ebp)
	jmp       L00000072
L00000068:
	movss     -48(%ebp), %xmm0
	movss     %xmm0, -76(%ebp)
L00000072:
	movss     -76(%ebp), %xmm0
	movl      -72(%ebp), %eax
	movss     LC00000264-L0000000E(%eax), %xmm1
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
L00000184:
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
L000001CC:
	movl      %eax, -64(%ebp)
	cmpl      $0, -64(%ebp)
	jl        L00000223
L000001D9:
	movl      $9, %eax
	cmpl      -56(%ebp), %eax
	jle       L00000223
L000001E7:
	movl      -64(%ebp), %eax
	cmpl      -36(%ebp), %eax
	jae       L0000024A
L000001F3:
	xorl      %eax, %eax
	movl      -32(%ebp), %ecx
	movl      %ecx, (%esp)
	movl      $0, 4(%esp)
	movl      %eax, -84(%ebp)
	call      _strtof$UNIX2003
L0000020B:
	fstps     -68(%ebp)
	movss     -68(%ebp), %xmm0
	ucomiss   -48(%ebp), %xmm0
	jne       L0000024A
L0000021D:
	jp        L0000024A
L00000223:
	movl      -64(%ebp), %eax
	movl      -72(%ebp), %ecx
	movl      L___stack_chk_guard$non_lazy_ptr-L0000000E(%ecx), %edx
	movl      (%edx), %edx
	movl      -16(%ebp), %esi
	cmpl      %esi, %edx
	movl      %eax, -88(%ebp)
	jne       L0000025D
L0000023F:
	movl      -88(%ebp), %eax
	addl      $124, %esp
	popl      %esi
	popl      %edi
	popl      %ebx
	popl      %ebp
	ret       
L0000024A:
	jmp       L0000024F
L0000024F:
	movl      -56(%ebp), %eax
	addl      $1, %eax
	movl      %eax, -56(%ebp)
	jmp       L00000184
L0000025D:
	call      ___stack_chk_fail
# ----------------------
	.section       __TEXT,__literal4,4byte_literals
	.align 2
LC00000264:
	.long	8388608
# ----------------------
	.section       __IMPORT,__pointers,non_lazy_symbol_pointers
L___stack_chk_guard$non_lazy_ptr:
	.indirect_symbol ___stack_chk_guard
	.long	0
# ----------------------

.subsections_via_symbols
