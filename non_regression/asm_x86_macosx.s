	.section	__TEXT,__text,regular,pure_instructions
	.macosx_version_min 10, 11
	.globl	_main
_main:
	leave
	daa
	das
	aad
	cbtw
	cwtl
	cwtd
	cltd
	rep scasb
	rep scasw
	rep scasl
	pushw	%ax
	pushl	%eax
	pushw	$12
	pushl	$12
	pushw	$1234
	pushl	$1234
	pushl	%ds:1234
	pushl	%fs:1234
	pushl	%gs:1234
	pushl	%fs
	pushl	%gs
	push	%gs
	bswapl	%eax
	shrdw	%ax, %dx
	shrdl	%eax, %edx
	shrdl	%cl, %eax, %edx
	shrdl	$3, %eax, %edx
	#mov %cr0, %eax		## unknown to miasmX
	#mov %eax, %cr0		## unknown to miasmX
	#mov %dr0, %eax		## unknown to miasmX
	#mov %eax, %dr0		## unknown to miasmX
	fdivp %st, %st(2)	## => fdivrp	X
	fdivp %st(2)		## => fdivrp	X
	fdiv %st, %st(2)	## => fdivr	X
	fdiv %st(2)		## => fdiv
	fdiv %st(0)		## => fdiv
	fdivrp %st, %st(2)	## => fdivp	X
	fdivrp %st(2)		## => fdivp	X
	fdivr %st, %st(2)	## => fdiv	X
	fdivr %st(2)		## => fdivr
	fdivr %st(0)		## => fdivr
	fdivs -8(%eax)
	fdivl -8(%eax)
	fdivrs -8(%eax)
	fdivrl -8(%eax)
	fstp %st(1)
	fucom
	fucom %st(2)
	fucomp
	fucomp %st(2)
	fucompp
	fucomip %st(1), %st(0)
	fucomi %st(1)
	fucomip %st(1)
	fldz
	fprem
	fprem1
	fldcw -8(%ebp)
	fnstcw -8(%ebp)
	#fnstsw -8(%ebp) # this asm line cannot be parsed by miasmX :-(
	fnstsw %ax
	flds -8(%ebp)
	fldl -8(%ebp)
	fldt -8(%ebp)
	fildl -8(%ebp)
	fistl -8(%ebp)
	fistpl -8(%ebp)
	fisttpl -8(%ebp)
	fiaddl -8(%ebp)
	faddl -8(%ebp)
	fadd %st(3)
	fadd %st(0), %st(3)
	faddp %st(3)
	faddp %st(0)
	faddp %st(7)
	fiadds (%esp)
	fiaddl (%esp)
	fisubl (%esp)
	fisubrl (%esp)
	fimull (%esp)
	fidivl (%esp)
	fidivrl (%esp)
	movdqu  (%edi), %xmm2
	pshufb  (%edi), %xmm2
	pshufb  %xmm0, %xmm2
	phaddw  %xmm0, %xmm2
	phaddd  %xmm0, %xmm2
	phaddsw  %xmm0, %xmm2
	pmaddubsw  %xmm0, %xmm2
	phsubw  %xmm0, %xmm2
	phsubd  %xmm0, %xmm2
	phsubsw  %xmm0, %xmm2
	psignb  %xmm0, %xmm2
	psignw  %xmm0, %xmm2
	psignd  %xmm0, %xmm2
	pmulhrsw  %xmm0, %xmm2
	pblendvb  %xmm0, %xmm2
	blendvps  %xmm0, %xmm2
	blendvpd  %xmm0, %xmm2
	ptest  %xmm0, %xmm2
	pabsb  %xmm0, %xmm2
	pabsw  %xmm0, %xmm2
	pabsd  %xmm0, %xmm2
	pmuldq  %xmm0, %xmm2
	pcmpeqq  %xmm0, %xmm2
	packusdw  %xmm0, %xmm2
	pcmpgtq  %xmm0, %xmm2
	pminsb  %xmm0, %xmm2
	pminsd  %xmm0, %xmm2
	pminuw  %xmm0, %xmm2
	pminud  %xmm0, %xmm2
	pmaxsb  %xmm0, %xmm2
	pmaxsd  %xmm0, %xmm2
	pmaxuw  %xmm0, %xmm2
	pmaxud  %xmm0, %xmm2
	pmulld  %xmm0, %xmm2
	phminposuw  %xmm0, %xmm2
	pmovsxbw  (%edi), %xmm2
	pmovsxbd  (%edi), %xmm2
	pmovsxbq  (%edi), %xmm2
	pmovsxbw  %xmm0, %xmm2
	pmovsxbd  %xmm0, %xmm2
	pmovsxbq  %xmm0, %xmm2
	pmovsxwd  %xmm0, %xmm2
	pmovsxwq  %xmm0, %xmm2
	pmovsxdq  %xmm0, %xmm2
	pmovzxbw  %xmm0, %xmm2
	pmovzxbd  %xmm0, %xmm2
	pmovzxbq  %xmm0, %xmm2
	pmovzxwd  %xmm0, %xmm2
	pmovzxwq  %xmm0, %xmm2
	pmovzxdq  %xmm0, %xmm2
	pextrb  $0x2, %xmm0, %ebx
	pextrw  $0x6, %xmm0, %ebx
	pextrd  $0x7, %xmm0, %ebx
	extractps  $0x5, %xmm0, %ebx
	pinsrb  $0x3, %ebx, %xmm0
	pinsrw  $0x2, %ebx, %xmm0
	pinsrd  $0x2, %ebx, %xmm0
	pblendw $0xc, (%eax), %xmm2
	pblendw $0xc, %xmm4, %xmm6
	palignr $0xc, %xmm4, %xmm6
	blendps $0xc, %xmm4, %xmm6
	blendpd $0xc, %xmm4, %xmm6
	dpps $0xc, %xmm4, %xmm6
	dppd $0xc, %xmm4, %xmm6
	pslldq  $4, %xmm3
	mulsd 8(%ebp), %xmm2
	mulsd %xmm2, %xmm3
	cmpnlesd %xmm2, %xmm3
	movsd -112(%ebp), %xmm2
	psllq $63, %xmm2
	psrlq $63, %xmm2
	ucomiss (%ebp), %xmm2
	ucomisd -112(%ebp), %xmm2
	haddpd %xmm2, %xmm3
	haddpd (%ebp), %xmm2
	haddps %xmm2, %xmm3
	movlpd (%ebp), %xmm2
	movlps (%ebp), %xmm2
	movhlps %xmm2, %xmm4
	cvttps2dq -24(%ebp), %xmm2
	punpckhqdq %xmm2, %xmm3
	punpckhqdq -24(%ebp), %xmm2
	cvtsi2ss %eax, %xmm2
	cvtsi2ssl %eax, %xmm2
	cvtsi2ssl	4(%esp), %xmm0
	cvtsi2ss	4(%esp), %xmm0
	cvtsi2ss	4(%esp), %xmm0
	movsd     %xmm2, -88(%ebp)
	sahf
	lahf
	clflush	(%eax)
	fxsave	(%eax)
	xrstor	(%eax)
	lfence
	rolb	%ah
	rolb	$3, %ah
	decb	(%eax)
	decw	(%eax)
	decl	(%eax)
	rdrandl	%eax
	movntil	%ebx, (%eax)
	cmpxchgl	%eax, (%eax)
	cmpxchg8b	(%eax)
	prefetcht0	(%eax)
	bound	(%eax), %ebx
	bsrl	%eax, %ebx
	#rep bsrl	%eax, %ebx
	#lzcntl	%eax, %ebx
	#popcntl	%eax, %ebx
	wait
	fld1
	fldl2t
	fldl2e
	fldpi
	fldlg2
	fldln2
	fldz
	fprem
	fyl2x
	fyl2xp1
	fsqrt
	fsincos
	frndint
	fscale
	fsin
	fcos
	fxch
	f2xm1
	fincstp
	fdecstp
	ffree %st(2)
	finit 			## same as wait; fninit
	fninit
	wait
	fninit
	ret

.subsections_via_symbols
