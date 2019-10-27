	.section       __TEXT,__text,regular,pure_instructions
	.globl	_main
_main:
	leave     
	daa       
	das       
	aad       $10
	cbtw      
	cwtl      
	cwtd      
	cltd      
	repz scasb     
	repz scasw     
	repz scasl     
	pushw     %ax
	pushl     %eax
	pushw     $12
	pushl     $12
	pushw     $1234
	pushl     $1234
	pushl     %ds:1234
	pushl     %fs:1234
	pushl     %gs:1234
	pushl     %fs
	pushl     %gs
	pushl     %gs
	bswap     %eax
	shrdw     %cl, %ax, %dx
	shrdl     %cl, %eax, %edx
	shrdl     %cl, %eax, %edx
	shrdl     $3, %eax, %edx
	fdivp     %st, %st(2)
	fdivp     %st, %st(2)
	fdiv      %st, %st(2)
	fdiv      %st(2), %st
	fdiv      %st(0), %st
	fdivrp    %st, %st(2)
	fdivrp    %st, %st(2)
	fdivr     %st, %st(2)
	fdivr     %st(2), %st
	fdivr     %st(0), %st
	fdivs     -8(%eax)
	fdivl     -8(%eax)
	fdivrs    -8(%eax)
	fdivrl    -8(%eax)
	fstp      %st(1)
	fucom     %st(1)
	fucom     %st(2)
	fucomp    %st(1)
	fucomp    %st(2)
	fucompp   
	fucomip   %st(1), %st
	fucomi    %st(1), %st
	fucomip   %st(1), %st
	fldz      
	fprem     
	fprem1    
	fldcw     -8(%ebp)
	fnstcw    -8(%ebp)
	fnstsw    %ax
	flds      -8(%ebp)
	fldl      -8(%ebp)
	fldt      -8(%ebp)
	fildl     -8(%ebp)
	fistl     -8(%ebp)
	fistpl    -8(%ebp)
	fisttpl   -8(%ebp)
	fiaddl    -8(%ebp)
	faddl     -8(%ebp)
	fadd      %st(3), %st
	fadd      %st, %st(3)
	faddp     %st, %st(3)
	faddp     %st, %st(0)
	faddp     %st, %st(7)
	fiadds    (%esp)
	fiaddl    (%esp)
	fisubl    (%esp)
	fisubrl   (%esp)
	fimull    (%esp)
	fidivl    (%esp)
	fidivrl   (%esp)
	movdqu    (%edi), %xmm2
	pshufb    (%edi), %xmm2
	pshufb    %xmm0, %xmm2
	phaddw    %xmm0, %xmm2
	phaddd    %xmm0, %xmm2
	phaddsw   %xmm0, %xmm2
	pmaddubsw %xmm0, %xmm2
	phsubw    %xmm0, %xmm2
	phsubd    %xmm0, %xmm2
	phsubsw   %xmm0, %xmm2
	psignb    %xmm0, %xmm2
	psignw    %xmm0, %xmm2
	psignd    %xmm0, %xmm2
	pmulhrsw  %xmm0, %xmm2
	pblendvb  %xmm0, %xmm2
	blendvps  %xmm0, %xmm2
	blendvpd  %xmm0, %xmm2
	ptest     %xmm0, %xmm2
	pabsb     %xmm0, %xmm2
	pabsw     %xmm0, %xmm2
	pabsd     %xmm0, %xmm2
	pmuldq    %xmm0, %xmm2
	pcmpeqq   %xmm0, %xmm2
	packusdw  %xmm0, %xmm2
	pcmpgtq   %xmm0, %xmm2
	pminsb    %xmm0, %xmm2
	pminsd    %xmm0, %xmm2
	pminuw    %xmm0, %xmm2
	pminud    %xmm0, %xmm2
	pmaxsb    %xmm0, %xmm2
	pmaxsd    %xmm0, %xmm2
	pmaxuw    %xmm0, %xmm2
	pmaxud    %xmm0, %xmm2
	pmulld    %xmm0, %xmm2
	phminposuw %xmm0, %xmm2
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
	pextrb    $2, %xmm0, %ebx
	pextrw    $6, %xmm0, %ebx
	pextrd    $7, %xmm0, %ebx
	extractps $5, %xmm0, %ebx
	pinsrb    $3, %ebx, %xmm0
	pinsrw    $2, %ebx, %xmm0
	pinsrd    $2, %ebx, %xmm0
	pblendw   $12, (%eax), %xmm2
	pblendw   $12, %xmm4, %xmm6
	palignr   $12, %xmm4, %xmm6
	blendps   $12, %xmm4, %xmm6
	blendpd   $12, %xmm4, %xmm6
	dpps      $12, %xmm4, %xmm6
	dppd      $12, %xmm4, %xmm6
	pslldq    $4, %xmm3
	mulsd     8(%ebp), %xmm2
	mulsd     %xmm2, %xmm3
	cmpsd     $6, %xmm2, %xmm3
	movsd     -112(%ebp), %xmm2
	psllq     $63, %xmm2
	psrlq     $63, %xmm2
	ucomiss   (%ebp), %xmm2
	ucomisd   -112(%ebp), %xmm2
	haddpd    %xmm2, %xmm3
	haddpd    (%ebp), %xmm2
	haddps    %xmm2, %xmm3
	movlpd    (%ebp), %xmm2
	movlps    (%ebp), %xmm2
	movhlps   %xmm2, %xmm4
	cvttps2dq -24(%ebp), %xmm2
	punpckhqdq %xmm2, %xmm3
	punpckhqdq -24(%ebp), %xmm2
	cvtsi2ss  %eax, %xmm2
	cvtsi2ss  %eax, %xmm2
	cvtsi2ss  4(%esp), %xmm0
	cvtsi2ss  4(%esp), %xmm0
	cvtsi2ss  4(%esp), %xmm0
	movsd     %xmm2, -88(%ebp)
	sahf      
	lahf      
	clflush   (%eax)
	fxsave    (%eax)
	xrstor    (%eax)
	lfence    
	rolb      $1, %ah
	rolb      $3, %ah
	decb      (%eax)
	decw      (%eax)
	decl      (%eax)
	rdrandl   %eax
	movntil   %ebx, (%eax)
	cmpxchgl  %eax, (%eax)
	cmpxchg8b (%eax)
	prefetcht0 (%eax)
	bound     (%eax), %ebx
	bsrl      %eax, %ebx
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
	fxch      %st(1)
	f2xm1     
	fincstp   
	fdecstp   
	ffree     %st(2)
	finit     
	fninit    
	wait      
	fninit    
	ret       
# ----------------------

.subsections_via_symbols
