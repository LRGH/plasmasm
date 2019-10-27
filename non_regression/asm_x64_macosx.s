	.section	__TEXT,__text,regular,pure_instructions
	.macosx_version_min 10, 11
	.globl	_main
_main:
	cbtw
	cwtl
	cwtd
	cltd
	cltq
	cqto
	rep scasb
	rep scasw
	rep scasl
	rep scasq
	pushw	%ax
	pushq	%rax
	pushw	$12
	pushq	$12
	pushw	$1234
	pushq	$1234
	pushq	%ds:1234
	pushq	%fs:1234
	pushq	%gs:1234
	pushq	%fs
	pushq	%gs
	push	%gs
	bswapq	%rax
	shrdw	%ax, %dx
	shrdq	%rax, %rdx
	shrdq	%cl, %rax, %rdx
	shrdq	$3, %rax, %rdx
	mov %cr0, %rax
	mov %rax, %cr0
	mov %dr0, %rax
	mov %rax, %dr0
	pextrq  $1, %xmm0, %rax
	pextrd  $1, %xmm0, %eax
	pextrw  $1, %xmm0, %eax
	pextrb  $1, %xmm0, %eax
	pextrq  $1, %xmm0, (%rax)
	pextrd  $1, %xmm0, (%rax)
	pextrw  $1, %xmm0, (%rax)
	pextrb  $1, %xmm0, (%rax)
	pinsrq  $1, %rax, %xmm1
	pinsrd  $1, %eax, %xmm1
	pinsrw  $1, %eax, %xmm1
	pinsrb  $1, %eax, %xmm1
	pinsrq  $1, (%rax), %xmm1
	pinsrd  $1, (%rax), %xmm1
	pinsrw  $1, (%rax), %xmm1
	pinsrb  $1, (%rax), %xmm1
	pextrw  $1, %mm0, %eax
	pinsrw  $1, (%rax), %mm1
	extractps  $1, %xmm0, %eax
	extractps  $1, %xmm0, (%rax)
	CVTTSS2SIQ	%xmm1, %rcx
	cvtsi2ssq	%rcx, %xmm0
	cvtsi2ssq	4(%rsp), %xmm0
	cvtsi2ssl	4(%rsp), %xmm0
	cvtsi2ss	4(%rsp), %xmm0
	cvtsi2ss	4(%rsp), %xmm0
	movsd     %xmm2, -88(%rsp)
	sahf
	lahf
	clflush	(%rax)
	fxsave	(%rax)
	xrstor	(%rax)
	lfence
	rolb	%ah
	rolb	$3, %ah
	decb	(%rax)
	decw	(%rax)
	decl	(%rax)
	rdrandl	%eax
	rdrandq	%rax
	movntil	%ebx, (%rax)
	movntiq	%rbx, (%rax)
	cmpxchgl	%eax, (%rax)
	cmpxchgq	%rax, (%rax)
	cmpxchg8b	(%rax)
	cmpxchg16b	(%rax)
	prefetcht0	(%rax)
	bsrl	%eax, %ebx
	bsrq	%rax, %rbx
	leave
	retq

.subsections_via_symbols
