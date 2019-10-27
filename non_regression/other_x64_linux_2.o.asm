	.file	"arith2.c"
	.section       .rodata.cst16,"aM",@progbits,16
	.align 16
.LC17:
	.long	1
	.long	0
	.long	1
	.long	0
# ----------------------
	.data
	.local	cache_model
	.type	cache_model, @object
cache_model:
	.long	204800
	.long	0
	.long	-2061584302
	.long	1071141355
	.long	-1924145349
	.long	1066561175
	.size	cache_model, 24
# ----------------------
.LD00000018:
	.zero	8
# ----------------------
	.local	slow2_in_roots
	.type	slow2_in_roots, @object
slow2_in_roots:
	.long	-858993459
	.long	1074056396
	.size	slow2_in_roots, 8
# ----------------------
	.section       .rodata.cst8,"aM",@progbits,8
	.align 8
.LC1:
	.long	0
	.long	1083129856
	.align 8
.LC5:
	.long	0
	.long	1072693248
	.align 8
.LC6:
	.long	-687194767
	.long	1072787619
	.align 8
.LC8:
	.long	0
	.long	1138753536
	.align 8
.LC9:
	.long	0
	.long	1071644672
	.align 8
.LC10:
	.long	171798692
	.long	1073914839
	.align 8
.LC11:
	.long	-1717986918
	.long	1072798105
# ----------------------
	.section       .rodata.str1.8,"aMS",@progbits,1
.LC15:
	.string	"denominators not allowed in divisors"
# ----------------------
.LC00000025.str1.8:
	.zero	3
	.align 4
.LC16:
	.string	"too many divisors (more than %ld)"
# ----------------------
	.section       .rodata.str1.1,"aMS",@progbits,1
.LC0:
	.string	"t_INT-->long assignment"
.LC2:
	.string	"panic: set_optimize"
.LC3:
	.string	"t_INT-->ulong assignment"
.LC7:
	.string	"mallocing NULL object"
.LC12:
	.string	"Too large primelimit"
.LC13:
	.string	"lg()"
.LC14:
	.string	"divisors"
.LC18:
	.string	"corepartial"
.LC19:
	.string	"core2partial"
.LC20:
	.string	"core"
# ----------------------
	.text
	.local	core2fa
	.type	core2fa, @function
core2fa:
	pushq     %r15
	pushq     %r14
	pushq     %r13
	pushq     %r12
	movq      $72057594037927935, %r12
	pushq     %rbp
	pushq     %rbx
	subq      $24, %rsp
	movq      gen_1@GOTPCREL(%rip), %rax
	movq      8(%rdi), %r15
	movq      16(%rdi), %r14
	movq      (%rax), %rax
	movq      %rax, %r13
	movq      %rax, (%rsp)
	movq      %r12, %rax
	andq      (%r15), %rax
	cmpq      $1, %rax
	jle       .L000000E5
.L00000041:
	movl      $1, %ebx
	jmp       .L000000A9
.L00000048:
	.p2align 4
.L00000050:
	andq      %r12, %rax
	movq      16(%rcx), %rbp
	cmpq      $3, %rax
	jg        .L00000148
.L00000061:
	testq     %rbp, %rbp
	js        .L00000148
.L0000006A:
	movq      %rbp, %rax
	negq      %rax
	testq     %rdx, %rdx
	cmovle    %rax, %rbp
	testb     $1, %bpl
	je        .L0000008E
.L0000007D:
	movq      (%r15,%rbx,8), %rsi
	movq      (%rsp), %rdi
	call      mulii@PLT
.L0000008A:
	movq      %rax, (%rsp)
.L0000008E:
	movq      %rbp, %rsi
	sarq      $1, %rsi
	cmpq      $1, %rbp
	jne       .L000000BF
.L0000009A:
	movq      %r12, %rax
	andq      (%r15), %rax
	addq      $1, %rbx
	cmpq      %rbx, %rax
	jle       .L000000E5
.L000000A9:
	movq      (%r14,%rbx,8), %rcx
	movq      8(%rcx), %rax
	movq      %rax, %rdx
	sarq      $62, %rdx
	testq     %rdx, %rdx
	jne       .L00000050
.L000000BD:
	xorl      %esi, %esi
.L000000BF:
	movq      (%r15,%rbx,8), %rdi
	addq      $1, %rbx
	call      powiu@PLT
.L000000CC:
	movq      %r13, %rdi
	movq      %rax, %rsi
	call      mulii@PLT
.L000000D7:
	movq      %rax, %r13
	movq      %r12, %rax
	andq      (%r15), %rax
	cmpq      %rbx, %rax
	jg        .L000000A9
.L000000E5:
	movq      avma@GOTPCREL(%rip), %r12
	movq      bot@GOTPCREL(%rip), %rax
	movq      (%r12), %rbx
	movq      %rbx, %rcx
	subq      (%rax), %rcx
	leaq      -24(%rbx), %rbp
	cmpq      $23, %rcx
	ja        .L00000113
.L00000107:
	movl      $14, %edi
	xorl      %eax, %eax
	call      pari_err@PLT
.L00000113:
	movq      $2449958197289549827, %rax
	movq      %rbp, (%r12)
	movq      %r13, -8(%rbx)
	movq      %rax, -24(%rbx)
	movq      (%rsp), %rax
	movq      %rax, -16(%rbx)
	addq      $24, %rsp
	movq      %rbp, %rax
	popq      %rbx
	popq      %rbp
	popq      %r12
	popq      %r13
	popq      %r14
	popq      %r15
	ret       
.L00000143:
	.p2align 3
.L00000148:
	leaq      .LC0(%rip), %rsi
	movl      $15, %edi
	xorl      %eax, %eax
	movq      %rdx, 8(%rsp)
	call      pari_err@PLT
.L00000160:
	movq      8(%rsp), %rdx
	jmp       .L0000006A
	.size	core2fa, .-core2fa
# ----------------------
.L0000016A:
	.p2align 3
# ----------------------
	.globl	set_optimize
	.type	set_optimize, @function
set_optimize:
	pushq     %r13
	pushq     %r12
	pushq     %rbp
	movq      %rsi, %rbp
	pushq     %rbx
	movq      %rdi, %rbx
	subq      $8, %rsp
	cmpq      $2, %rdi
	je        .L00000300
.L0000018A:
	jle       .L00000258
.L00000190:
	cmpq      $3, %rdi
	je        .L00000238
.L0000019A:
	cmpq      $4, %rdi
	.p2align 3
	jne       .L00000269
.L000001A6:
	movsd     .LC1(%rip), %xmm0
	mulsd     cache_model+16(%rip), %xmm0
	cvttsd2si %xmm0, %r13
.L000001BB:
	testq     %rbp, %rbp
	je        .L00000223
.L000001C0:
	movq      $72057594037927935, %rdx
	andq      8(%rbp), %rdx
	xorl      %r12d, %r12d
	cmpq      $2, %rdx
	je        .L000001E5
.L000001D7:
	cmpq      $3, %rdx
	jne       .L00000288
.L000001E1:
	movq      16(%rbp), %r12
.L000001E5:
	cmpq      $2, %rbx
	je        .L000002A5
.L000001EF:
	jle       .L000002D8
.L000001F5:
	cmpq      $3, %rbx
	je        .L00000320
.L000001FF:
	cmpq      $4, %rbx
	jne       .L00000223
.L00000205:
	testq     %r12, %r12
	js        .L00000350
.L0000020E:
	cvtsi2sd  %r12, %xmm0
.L00000213:
	divsd     .LC1(%rip), %xmm0
	movsd     %xmm0, cache_model+16(%rip)
.L00000223:
	addq      $8, %rsp
	movq      %r13, %rax
	popq      %rbx
	popq      %rbp
	popq      %r12
	popq      %r13
	ret       
.L00000231:
	.p2align 3
.L00000238:
	movsd     .LC1(%rip), %xmm0
	mulsd     cache_model+8(%rip), %xmm0
	cvttsd2si %xmm0, %r13
	jmp       .L000001BB
.L00000252:
	.p2align 3
.L00000258:
	cmpq      $1, %rdi
	movq      cache_model(%rip), %r13
	je        .L000001BB
.L00000269:
	leaq      .LC2(%rip), %rsi
	movl      $5, %edi
	xorl      %eax, %eax
	xorl      %r13d, %r13d
	call      pari_err@PLT
.L0000027F:
	jmp       .L000001BB
.L00000284:
	.p2align 3
.L00000288:
	leaq      .LC3(%rip), %rsi
	xorl      %eax, %eax
	movl      $15, %edi
	call      pari_err@PLT
.L0000029B:
	cmpq      $2, %rbx
	jne       .L000001EF
.L000002A5:
	testq     %r12, %r12
	js        .L00000370
.L000002AE:
	cvtsi2sd  %r12, %xmm0
.L000002B3:
	divsd     .LC1(%rip), %xmm0
	movq      %r13, %rax
	movsd     %xmm0, slow2_in_roots(%rip)
	addq      $8, %rsp
	popq      %rbx
	popq      %rbp
	popq      %r12
	popq      %r13
	ret       
.L000002D1:
	.p2align 3
.L000002D8:
	cmpq      $1, %rbx
	jne       .L00000223
.L000002E2:
	movq      %r12, cache_model(%rip)
	addq      $8, %rsp
	movq      %r13, %rax
	popq      %rbx
	popq      %rbp
	popq      %r12
	popq      %r13
	ret       
.L000002F7:
	.p2align 4
.L00000300:
	movsd     .LC1(%rip), %xmm0
	mulsd     slow2_in_roots(%rip), %xmm0
	cvttsd2si %xmm0, %r13
	jmp       .L000001BB
.L0000031A:
	.p2align 3
.L00000320:
	testq     %r12, %r12
	js        .L00000390
.L00000325:
	cvtsi2sd  %r12, %xmm0
.L0000032A:
	divsd     .LC1(%rip), %xmm0
	movq      %r13, %rax
	movsd     %xmm0, cache_model+8(%rip)
	addq      $8, %rsp
	popq      %rbx
	popq      %rbp
	popq      %r12
	popq      %r13
	ret       
.L00000348:
	.p2align 4
.L00000350:
	movq      %r12, %rax
	andl      $1, %r12d
	shrq      $1, %rax
	orq       %r12, %rax
	cvtsi2sd  %rax, %xmm0
	addsd     %xmm0, %xmm0
	jmp       .L00000213
.L0000036B:
	.p2align 3
.L00000370:
	movq      %r12, %rax
	andl      $1, %r12d
	shrq      $1, %rax
	orq       %r12, %rax
	cvtsi2sd  %rax, %xmm0
	addsd     %xmm0, %xmm0
	jmp       .L000002B3
.L0000038B:
	.p2align 3
.L00000390:
	movq      %r12, %rax
	andl      $1, %r12d
	shrq      $1, %rax
	orq       %r12, %rax
	cvtsi2sd  %rax, %xmm0
	addsd     %xmm0, %xmm0
	jmp       .L0000032A
	.size	set_optimize, .-set_optimize
# ----------------------
.L000003A8:
	.p2align 4
# ----------------------
	.globl	initprimes0
	.type	initprimes0, @function
initprimes0:
	pushq     %r15
	pushq     %r14
	pushq     %r13
	pushq     %r12
	pushq     %rbp
	pushq     %rbx
	subq      $152, %rsp
	cmpq      $131072, %rdi
	movq      %rsi, 88(%rsp)
	movq      %rdx, 96(%rsp)
	jbe       .L0000087C
.L000003D8:
	orq       $1, %rdi
	movq      %rdi, %rbx
	js        .L00000D75
.L000003E5:
	cvtsi2sd  %rdi, %xmm5
	movsd     %xmm5, (%rsp)
	movapd    %xmm5, %xmm0
.L000003F3:
	call      log@PLT
.L000003F8:
	movsd     (%rsp), %xmm1
	mulsd     .LC6(%rip), %xmm1
	divsd     %xmm0, %xmm1
	cvttsd2si %xmm1, %rax
	addq      $146, %rax
	movq      %rax, %rdi
	jne       .L0000071D
.L0000041D:
	movq      DEBUGMEM@GOTPCREL(%rip), %rax
	cmpq      $0, (%rax)
	je        .L0000043A
.L0000042A:
	leaq      .LC7(%rip), %rsi
	xorl      %edi, %edi
	xorl      %eax, %eax
	call      pari_warn@PLT
.L0000043A:
	movq      PARI_SIGINT_block@GOTPCREL(%rip), %rax
	movq      $0, 80(%rsp)
	movl      $2, %ebp
	movq      $0, 56(%rsp)
	movq      %rax, 48(%rsp)
.L0000045D:
	sqrtsd    (%rsp), %xmm0
	ucomisd   %xmm0, %xmm0
	jp        .L00000EF6
.L0000046C:
	ucomisd   .LC8(%rip), %xmm0
	jae       .L000009E2
.L0000047A:
	cvttsd2si %xmm0, %r12
.L0000047F:
	orq       $1, %r12
	leaq      128(%rsp), %rdx
	leaq      112(%rsp), %rsi
	movq      %r12, %rdi
	call      initprimes0@PLT
.L00000498:
	movq      112(%rsp), %rdx
	movq      56(%rsp), %rdi
	movq      %rax, %rsi
	movq      %rax, %r13
	call      memcpy@PLT
.L000004AD:
	movq      48(%rsp), %r15
	movq      %r13, %rdi
	movl      (%r15), %r14d
	movl      $1, (%r15)
	call      free@PLT
.L000004C4:
	testl     %r14d, %r14d
	movl      %r14d, (%r15)
	jne       .L000004E6
.L000004CC:
	movq      PARI_SIGINT_pending@GOTPCREL(%rip), %rax
	movl      (%rax), %edx
	testl     %edx, %edx
	je        .L000004E6
.L000004D9:
	movl      (%rax), %edi
	movl      $0, (%rax)
	call      raise@PLT
.L000004E6:
	movq      112(%rsp), %rax
	movq      56(%rsp), %rdi
	subq      %r12, %rbx
	movq      %rbx, (%rsp)
	shrq      $1, (%rsp)
	movq      cache_model(%rip), %rdx
	movsd     slow2_in_roots(%rip), %xmm2
	leaq      -1(%rdi,%rax), %r15
	movq      (%rsp), %rax
	movsd     cache_model+8(%rip), %xmm1
	movsd     cache_model+16(%rip), %xmm3
	leaq      1(%rax), %r13
	cmpq      %rdx, %r13
	jbe       .L00000568
.L0000052C:
	testq     %r12, %r12
	js        .L00000EC7
.L00000535:
	cvtsi2sd  %r12, %xmm0
.L0000053A:
	mulsd     %xmm2, %xmm0
	ucomisd   .LC8(%rip), %xmm0
	jae       .L00000CC8
.L0000054C:
	cvttsd2si %xmm0, %rax
.L00000551:
	leaq      (%rax,%rax,4), %rcx
	addq      %rcx, %rcx
	cmpq      %rcx, %rdx
	jbe       .L00000A01
.L00000561:
	cmpq      %rdx, %r13
	cmova     %rdx, %r13
.L00000568:
	movq      bot@GOTPCREL(%rip), %rax
	movq      avma@GOTPCREL(%rip), %rdx
	leaq      -1(%r13), %r10
	movq      (%rax), %rbx
	leaq      (%r10,%rbx), %rax
	cmpq      %rax, (%rdx)
	movq      %rbx, 72(%rsp)
	setbe     %al
	movzbl    %al, %eax
	testq     %rax, %rax
	movq      %rax, 104(%rsp)
	jne       .L00000CE7
.L0000059D:
	leaq      2(%r12), %r11
	subq      128(%rsp), %r12
	leaq      (%rbx,%r10), %r9
	shrq      $1, %r12
	cmpq      $0, (%rsp)
	notq      %r12
	leaq      (%rbx,%r12), %r14
	je        .L000007D2
.L000005C3:
	movq      56(%rsp), %rax
	movl      $3, %r12d
	addq      $1, %rax
	cmpq      %r10, (%rsp)
	movq      %rax, 64(%rsp)
	jb        .L0000078F
.L000005E1:
	leaq      (%rbx,%r10), %rax
	leaq      (%r11,%r10,2), %r8
	subq      %r10, (%rsp)
	movq      %rax, 8(%rsp)
	movq      %r12, %rax
	imulq     %r12, %rax
	cmpq      %r8, %rax
	jbe       .L00000622
.L000005FE:
	jmp       .L000007BB
.L00000603:
	.p2align 3
.L00000608:
	addq      %r13, %r12
	movq      %rbp, %rdx
	addq      $1, %rbp
	movq      %r12, %rax
	imulq     %r12, %rax
	cmpq      %r8, %rax
	ja        .L000007C8
.L00000622:
	movzbl    (%rbp), %r13d
	testb     %r13b, %r13b
	jne       .L00000608
.L0000062C:
	movq      %r10, %rdx
	xorl      %esi, %esi
	movq      %rbx, %rdi
	movb      $0, (%rbp)
	movq      %r8, 40(%rsp)
	movq      %r9, 32(%rsp)
	movq      %r11, 24(%rsp)
	movq      %r10, 16(%rsp)
	call      memset@PLT
.L00000651:
	movq      16(%rsp), %r10
	movq      24(%rsp), %r11
	movl      $3, %ecx
	movq      64(%rsp), %rsi
	movq      32(%rsp), %r9
	movq      40(%rsp), %r8
	shrq      $1, %r11
	leaq      -1(%r10), %rdi
	addq      %r10, %r11
	.p2align 4
.L00000680:
	movq      %rcx, %rax
	xorl      %edx, %edx
	shrq      $1, %rax
	addq      %r11, %rax
	divq      %rcx
	movq      %rdi, %rax
	subq      %rdx, %rax
	js        .L000006A9
.L00000696:
	.p2align 4
.L000006A0:
	movb      $1, (%rbx,%rax)
	subq      %rcx, %rax
	jns       .L000006A0
.L000006A9:
	addq      $1, %rsi
	movzbl    (%rsi), %eax
	addq      %rax, %rcx
	testq     %rax, %rax
	jne       .L00000680
.L000006B8:
	movq      8(%rsp), %rax
	movb      %r13b, (%rbp)
	movq      %rbx, %rcx
	movb      $0, (%rax)
	.p2align 4
.L000006D0:
	cmpb      $0, (%rcx)
	jne       .L00000717
.L000006D5:
	cmpq      %r9, %rcx
	jae       .L00000778
.L000006DE:
	movq      %rcx, %rax
	movq      %r15, %rdx
	subq      %r14, %rax
	addq      %rax, %rax
	cmpq      $254, %rax
	jle       .L0000070E
.L000006F2:
	.p2align 3
.L000006F8:
	subq      $255, %rax
	addq      $1, %rdx
	movb      $-1, -1(%rdx)
	cmpq      $254, %rax
	jg        .L000006F8
.L0000070E:
	leaq      1(%rdx), %r15
	movb      %al, (%rdx)
	movq      %rcx, %r14
.L00000717:
	addq      $1, %rcx
	jmp       .L000006D0
.L0000071D:
	movq      PARI_SIGINT_block@GOTPCREL(%rip), %rax
	movl      (%rax), %r12d
	movq      %rax, %r15
	movq      %rax, 48(%rsp)
	movl      $1, (%rax)
	call      malloc@PLT
.L0000073A:
	testl     %r12d, %r12d
	movq      %rax, %rbp
	movl      %r12d, (%r15)
	jne       .L00000756
.L00000745:
	movq      PARI_SIGINT_pending@GOTPCREL(%rip), %rdx
	movl      (%rdx), %eax
	testl     %eax, %eax
	jne       .L00000EE4
.L00000756:
	testq     %rbp, %rbp
	je        .L00001019
.L0000075F:
	movq      %rbp, %rax
	movq      %rbp, 80(%rsp)
	leaq      2(%rbp), %rbp
	movq      %rax, 56(%rsp)
	jmp       .L0000045D
.L00000775:
	.p2align 3
.L00000778:
	subq      %r10, %r14
	cmpq      $0, (%rsp)
	je        .L000007D5
.L00000782:
	cmpq      %r10, (%rsp)
	movq      %r8, %r11
	jae       .L000005E1
.L0000078F:
	movq      (%rsp), %rax
	movq      $0, (%rsp)
	leaq      (%rbx,%rax), %r9
	movq      %rax, %r10
	movq      %r12, %rax
	imulq     %r12, %rax
	leaq      (%r11,%r10,2), %r8
	movq      %r9, 8(%rsp)
	cmpq      %r8, %rax
	jbe       .L00000622
.L000007BB:
	movzbl    (%rbp), %r13d
	jmp       .L0000062C
.L000007C5:
	.p2align 3
.L000007C8:
	movzbl    1(%rdx), %r13d
	jmp       .L0000062C
.L000007D2:
	movq      %r11, %r8
.L000007D5:
	movq      72(%rsp), %rax
	movb      $0, (%r15)
	addq      $1, %r15
	subq      80(%rsp), %r15
	subq      %r14, %rax
	addq      %rax, %rax
	subq      %rax, %r8
	movq      88(%rsp), %rax
	cmpq      $0, 104(%rsp)
	movq      %r8, 128(%rsp)
	movq      %r15, (%rax)
	movq      96(%rsp), %rax
	movq      %r8, (%rax)
	jne       .L00000D30
.L00000814:
	movq      88(%rsp), %rax
	cmpq      $0, 56(%rsp)
	movq      (%rax), %rsi
	movq      48(%rsp), %rax
	movl      (%rax), %ebp
	movl      $1, (%rax)
	je        .L00000EB7
.L00000835:
	movq      56(%rsp), %rdi
	call      realloc@PLT
.L0000083F:
	movq      %rax, %rbx
.L00000842:
	movq      48(%rsp), %rax
	testl     %ebp, %ebp
	movl      %ebp, (%rax)
	jne       .L0000085E
.L0000084D:
	movq      PARI_SIGINT_pending@GOTPCREL(%rip), %rax
	movl      (%rax), %edx
	testl     %edx, %edx
	jne       .L00000EA5
.L0000085E:
	testq     %rbx, %rbx
	je        .L000009D1
.L00000867:
	addq      $152, %rsp
	movq      %rbx, %rax
	popq      %rbx
	popq      %rbp
	popq      %r12
	popq      %r13
	popq      %r14
	popq      %r15
	ret       
.L0000087C:
	movq      PARI_SIGINT_block@GOTPCREL(%rip), %rax
	shrq      $1, %rdi
	leaq      2(%rdi), %r12
	movq      %rdi, %rbp
	movl      (%rax), %r13d
	movq      %r12, %rdi
	movq      %rax, %r15
	movq      %rax, 48(%rsp)
	movl      $1, (%rax)
	call      malloc@PLT
.L000008A6:
	testl     %r13d, %r13d
	movq      %rax, %rbx
	movl      %r13d, (%r15)
	jne       .L000008C2
.L000008B1:
	movq      PARI_SIGINT_pending@GOTPCREL(%rip), %rax
	movl      (%rax), %edx
	testl     %edx, %edx
	jne       .L00001007
.L000008C2:
	testq     %rbx, %rbx
	je        .L00001041
.L000008CB:
	xorl      %esi, %esi
	movq      %rbx, %rdi
	movq      %r12, %rdx
	call      memset@PLT
.L000008D8:
	movq      %rbp, %r9
	movq      %rbx, %rdi
	addq      %rbx, %r9
	jb        .L00000920
.L000008E3:
	movq      %rbx, %r8
	movq      %rbx, %rsi
	movl      $1, %edx
	.p2align 3
.L000008F0:
	addq      %rdx, %r8
	addq      $1, %rsi
	addq      $2, %rdx
	addq      %rdx, %r8
	cmpb      $0, (%rsi)
	jne       .L000008F0
.L00000903:
	cmpq      %r8, %r9
	jb        .L00000920
.L00000908:
	movq      %r8, %rax
	.p2align 3
.L00000910:
	movb      $1, (%rax)
	addq      %rdx, %rax
	cmpq      %r9, %rax
	jbe       .L00000910
.L0000091B:
	cmpq      %r8, %r9
	jae       .L000008F0
.L00000920:
	leaq      1(%rbx), %rdx
	leaq      2(%rbx), %rax
	movb      $2, (%rbx)
	movb      $1, 1(%rbx)
	movq      %rdx, %rcx
.L00000932:
	addq      $1, %rdx
	cmpb      $0, (%rdx)
	jne       .L00000932
.L0000093B:
	cmpq      %rdx, %r9
	jb        .L00000963
.L00000940:
	movq      %rdx, %rsi
	addq      $1, %rax
	subq      %rcx, %rsi
	movq      %rsi, %rcx
	addl      %ecx, %ecx
	movb      %cl, -1(%rax)
	movq      %rdx, %rcx
	addq      $1, %rdx
	cmpb      $0, (%rdx)
	jne       .L00000932
.L0000095E:
	cmpq      %rdx, %r9
	jae       .L00000940
.L00000963:
	movb      $0, (%rax)
	leaq      1(%rax), %rsi
	movq      88(%rsp), %rax
	subq      %rdi, %rcx
	movq      48(%rsp), %r15
	subq      %rdi, %rsi
	movq      96(%rsp), %rdi
	movq      %rsi, (%rax)
	leaq      1(%rcx,%rcx), %rax
	movq      %rax, (%rdi)
	movl      (%r15), %ebp
	movq      %rbx, %rdi
	movl      $1, (%r15)
	call      realloc@PLT
.L0000099C:
	testl     %ebp, %ebp
	movq      %rax, %rbx
	movl      %ebp, (%r15)
	jne       .L0000085E
.L000009AA:
	movq      PARI_SIGINT_pending@GOTPCREL(%rip), %rdx
	movl      (%rdx), %eax
	testl     %eax, %eax
	je        .L0000085E
.L000009BB:
	movl      (%rdx), %edi
	movl      $0, (%rdx)
	call      raise@PLT
.L000009C8:
	testq     %rbx, %rbx
	jne       .L00000867
.L000009D1:
	movl      $28, %edi
	xorl      %eax, %eax
	call      pari_err@PLT
.L000009DD:
	jmp       .L00000867
.L000009E2:
	subsd     .LC8(%rip), %xmm0
	movq      $-9223372036854775808, %rax
	cvttsd2si %xmm0, %r12
	xorq      %rax, %r12
	jmp       .L0000047F
.L00000A01:
	testq     %rdx, %rdx
	js        .L00000E8A
.L00000A0A:
	cvtsi2sd  %rdx, %xmm8
.L00000A0F:
	xorpd     %xmm5, %xmm5
	testq     %rax, %rax
	movsd     .LC5(%rip), %xmm7
	movapd    %xmm5, %xmm0
	divsd     %xmm8, %xmm0
	subsd     %xmm0, %xmm7
	js        .L00000E6F
.L00000A31:
	cvtsi2sd  %rax, %xmm9
.L00000A36:
	divsd     %xmm8, %xmm9
	movapd    %xmm7, %xmm6
	movapd    %xmm7, %xmm11
	movsd     .LC5(%rip), %xmm0
	divsd     %xmm1, %xmm0
	addsd     %xmm7, %xmm9
	movapd    %xmm9, %xmm2
	addsd     %xmm9, %xmm6
	subsd     %xmm7, %xmm2
	mulsd     %xmm9, %xmm11
	mulsd     %xmm2, %xmm0
	subsd     %xmm0, %xmm6
	mulsd     .LC9(%rip), %xmm6
	movapd    %xmm6, %xmm10
	mulsd     %xmm6, %xmm10
	subsd     %xmm11, %xmm10
	ucomisd   %xmm5, %xmm10
	jbe       .L00000F22
.L00000A92:
	movapd    %xmm6, %xmm12
	movapd    %xmm3, %xmm2
	movapd    %xmm3, %xmm0
	testq     %r13, %r13
	addsd     %xmm6, %xmm12
	mulsd     %xmm3, %xmm2
	mulsd     %xmm12, %xmm0
	addsd     %xmm0, %xmm2
	addsd     %xmm11, %xmm2
	js        .L00000F05
.L00000ABF:
	cvtsi2sd  %r13, %xmm4
.L00000AC4:
	ucomisd   %xmm10, %xmm5
	divsd     %xmm8, %xmm4
	jae       .L00000AEC
.L00000AD0:
	ucomisd   %xmm5, %xmm2
	jb        .L00000DA3
.L00000ADA:
	movapd    %xmm3, %xmm0
	addsd     %xmm6, %xmm0
	ucomisd   %xmm5, %xmm0
	jb        .L00000DA5
.L00000AEC:
	movapd    %xmm3, %xmm4
.L00000AF0:
	ucomisd   %xmm4, %xmm3
	jp        .L00000BAC
.L00000AFA:
	jne       .L00000BAC
.L00000B00:
	ucomisd   %xmm5, %xmm7
	jbe       .L00000C80
.L00000B0A:
	movapd    %xmm3, %xmm0
	movsd     %xmm9, 32(%rsp)
	movsd     %xmm7, 24(%rsp)
	movsd     %xmm8, 16(%rsp)
	movsd     %xmm3, 8(%rsp)
	call      pow@PLT
.L00000B2D:
	movsd     8(%rsp), %xmm3
	movsd     32(%rsp), %xmm9
	movapd    %xmm3, %xmm2
	movapd    %xmm3, %xmm1
	movsd     24(%rsp), %xmm7
	addsd     %xmm9, %xmm2
	movsd     16(%rsp), %xmm8
	addsd     %xmm7, %xmm1
	mulsd     .LC10(%rip), %xmm2
	divsd     %xmm1, %xmm2
	mulsd     %xmm0, %xmm2
.L00000B68:
	divsd     %xmm7, %xmm9
	mulsd     .LC11(%rip), %xmm2
	movsd     .LC5(%rip), %xmm0
	ucomisd   %xmm9, %xmm2
	jbe       .L00000D9A
.L00000B88:
	mulsd     %xmm8, %xmm0
	ucomisd   .LC8(%rip), %xmm0
	jae       .L00000CA9
.L00000B9B:
	cvttsd2si %xmm0, %rax
.L00000BA0:
	cmpq      %rax, %r13
	cmova     %rax, %r13
	jmp       .L00000568
.L00000BAC:
	movapd    %xmm3, %xmm6
	movsd     %xmm5, 72(%rsp)
	movapd    %xmm3, %xmm0
	movsd     %xmm8, 64(%rsp)
	addsd     %xmm9, %xmm6
	movsd     %xmm9, 40(%rsp)
	addsd     %xmm7, %xmm0
	movsd     %xmm3, 32(%rsp)
	movsd     %xmm7, 24(%rsp)
	movsd     %xmm4, 8(%rsp)
	divsd     %xmm0, %xmm6
	movapd    %xmm4, %xmm0
	movsd     %xmm6, 16(%rsp)
	call      pow@PLT
.L00000BF6:
	movsd     40(%rsp), %xmm9
	movsd     8(%rsp), %xmm4
	movapd    %xmm9, %xmm2
	movsd     24(%rsp), %xmm7
	movsd     16(%rsp), %xmm6
	addsd     %xmm4, %xmm2
	movapd    %xmm7, %xmm1
	movapd    %xmm6, %xmm5
	addsd     %xmm4, %xmm1
	movsd     32(%rsp), %xmm3
	movsd     64(%rsp), %xmm8
	mulsd     .LC10(%rip), %xmm2
	divsd     %xmm1, %xmm2
	mulsd     %xmm0, %xmm2
	movsd     .LC11(%rip), %xmm0
	mulsd     %xmm2, %xmm0
	cmplesd   %xmm0, %xmm5
	andpd     %xmm5, %xmm3
	movapd    %xmm5, %xmm0
	andpd     %xmm5, %xmm6
	movapd    %xmm3, %xmm1
	andnpd    %xmm2, %xmm0
	movapd    %xmm5, %xmm3
	movsd     72(%rsp), %xmm5
	andnpd    %xmm4, %xmm3
	movapd    %xmm0, %xmm2
	orpd      %xmm1, %xmm3
	orpd      %xmm6, %xmm2
.L00000C80:
	ucomisd   %xmm5, %xmm7
	ja        .L00000B68
.L00000C8A:
	movsd     .LC5(%rip), %xmm0
	addsd     %xmm3, %xmm0
	mulsd     %xmm8, %xmm0
	ucomisd   .LC8(%rip), %xmm0
	jb        .L00000B9B
.L00000CA9:
	subsd     .LC8(%rip), %xmm0
	movq      $-9223372036854775808, %rdx
	cvttsd2si %xmm0, %rax
	xorq      %rdx, %rax
	jmp       .L00000BA0
.L00000CC8:
	subsd     .LC8(%rip), %xmm0
	movq      $-9223372036854775808, %rcx
	cvttsd2si %xmm0, %rax
	xorq      %rcx, %rax
	jmp       .L00000551
.L00000CE7:
	testq     %r13, %r13
	jne       .L00000E0D
.L00000CF0:
	movq      DEBUGMEM@GOTPCREL(%rip), %rax
	xorl      %ebx, %ebx
	movq      $0, 72(%rsp)
	cmpq      $0, (%rax)
	je        .L0000059D
.L00000D0C:
	leaq      .LC7(%rip), %rsi
	xorl      %edi, %edi
	xorl      %eax, %eax
	movq      %r10, 8(%rsp)
	call      pari_warn@PLT
.L00000D21:
	movq      72(%rsp), %rbx
	movq      8(%rsp), %r10
	jmp       .L0000059D
.L00000D30:
	movq      48(%rsp), %r14
	movq      %rbx, %rdi
	movl      (%r14), %ebp
	movl      $1, (%r14)
	call      free@PLT
.L00000D47:
	testl     %ebp, %ebp
	movl      %ebp, (%r14)
	jne       .L00000814
.L00000D52:
	movq      PARI_SIGINT_pending@GOTPCREL(%rip), %rax
	movl      (%rax), %edx
	testl     %edx, %edx
	je        .L00000814
.L00000D63:
	movl      (%rax), %edi
	movl      $0, (%rax)
	call      raise@PLT
.L00000D70:
	jmp       .L00000814
.L00000D75:
	movq      %rdi, %rax
	shrq      $1, %rax
	orq       $1, %rax
	cvtsi2sd  %rax, %xmm1
	movapd    %xmm1, %xmm7
	addsd     %xmm1, %xmm7
	movsd     %xmm7, (%rsp)
	movapd    %xmm7, %xmm0
	jmp       .L000003F3
.L00000D9A:
	addsd     %xmm3, %xmm0
	jmp       .L00000B88
.L00000DA3:
	jb        .L00000DE7
.L00000DA5:
	movapd    %xmm6, %xmm0
	addsd     %xmm4, %xmm0
	ucomisd   %xmm0, %xmm5
	jae       .L00000AF0
.L00000DB7:
	movapd    %xmm6, %xmm12
	movapd    %xmm4, %xmm0
	movapd    %xmm4, %xmm13
	addsd     %xmm6, %xmm12
	mulsd     %xmm4, %xmm0
	mulsd     %xmm12, %xmm13
	addsd     %xmm13, %xmm0
	addsd     %xmm11, %xmm0
	ucomisd   %xmm0, %xmm5
	jae       .L00000AF0
.L00000DE7:
	ucomisd   %xmm2, %xmm5
	jae       .L00000FC4
.L00000DF1:
	sqrtsd    %xmm10, %xmm0
	ucomisd   %xmm0, %xmm0
	jp        .L00000F51
.L00000E00:
	movapd    %xmm0, %xmm4
	subsd     %xmm6, %xmm4
	jmp       .L00000AF0
.L00000E0D:
	movq      48(%rsp), %rax
	movq      %r13, %rdi
	movq      %r10, 8(%rsp)
	movl      (%rax), %r14d
	movl      $1, (%rax)
	call      malloc@PLT
.L00000E28:
	movq      %rax, %rbx
	movq      48(%rsp), %rax
	movq      8(%rsp), %r10
	testl     %r14d, %r14d
	movl      %r14d, (%rax)
	jne       .L00000E5C
.L00000E3D:
	movq      PARI_SIGINT_pending@GOTPCREL(%rip), %rax
	movl      (%rax), %edx
	testl     %edx, %edx
	je        .L00000E5C
.L00000E4A:
	movl      (%rax), %edi
	movl      $0, (%rax)
	call      raise@PLT
.L00000E57:
	movq      8(%rsp), %r10
.L00000E5C:
	testq     %rbx, %rbx
	je        .L00001063
.L00000E65:
	movq      %rbx, 72(%rsp)
	jmp       .L0000059D
.L00000E6F:
	movq      %rax, %rdx
	andl      $1, %eax
	shrq      $1, %rdx
	orq       %rax, %rdx
	cvtsi2sd  %rdx, %xmm9
	addsd     %xmm9, %xmm9
	jmp       .L00000A36
.L00000E8A:
	movq      %rdx, %rcx
	andl      $1, %edx
	shrq      $1, %rcx
	orq       %rdx, %rcx
	cvtsi2sd  %rcx, %xmm8
	addsd     %xmm8, %xmm8
	jmp       .L00000A0F
.L00000EA5:
	movl      (%rax), %edi
	movl      $0, (%rax)
	call      raise@PLT
.L00000EB2:
	jmp       .L0000085E
.L00000EB7:
	movq      %rsi, %rdi
	call      malloc@PLT
.L00000EBF:
	movq      %rax, %rbx
	jmp       .L00000842
.L00000EC7:
	movq      %r12, %rax
	movq      %r12, %rcx
	shrq      $1, %rax
	andl      $1, %ecx
	orq       %rcx, %rax
	cvtsi2sd  %rax, %xmm0
	addsd     %xmm0, %xmm0
	jmp       .L0000053A
.L00000EE4:
	movl      (%rdx), %edi
	movl      $0, (%rdx)
	call      raise@PLT
.L00000EF1:
	jmp       .L00000756
.L00000EF6:
	movsd     (%rsp), %xmm0
	call      sqrt@PLT
.L00000F00:
	jmp       .L0000046C
.L00000F05:
	movq      %r13, %rax
	movq      %r13, %rdx
	shrq      $1, %rax
	andl      $1, %edx
	orq       %rdx, %rax
	cvtsi2sd  %rax, %xmm4
	addsd     %xmm4, %xmm4
	jmp       .L00000AC4
.L00000F22:
	testq     %r13, %r13
	js        .L00000FEA
.L00000F2B:
	cvtsi2sd  %r13, %xmm4
.L00000F30:
	ucomisd   %xmm10, %xmm5
	divsd     %xmm8, %xmm4
	movapd    %xmm5, %xmm2
	jb        .L00000ADA
.L00000F44:
	movapd    %xmm3, %xmm4
	movapd    %xmm5, %xmm2
	jmp       .L00000AF0
.L00000F51:
	movapd    %xmm10, %xmm0
	movsd     %xmm5, 104(%rsp)
	movsd     %xmm6, 72(%rsp)
	movsd     %xmm9, 64(%rsp)
	movsd     %xmm7, 40(%rsp)
	movsd     %xmm8, 32(%rsp)
	movsd     %xmm3, 24(%rsp)
	movsd     %xmm1, 16(%rsp)
	movsd     %xmm2, 8(%rsp)
	call      sqrt@PLT
.L00000F8D:
	movsd     104(%rsp), %xmm5
	movsd     72(%rsp), %xmm6
	movsd     64(%rsp), %xmm9
	movsd     40(%rsp), %xmm7
	movsd     32(%rsp), %xmm8
	movsd     24(%rsp), %xmm3
	movsd     16(%rsp), %xmm1
	movsd     8(%rsp), %xmm2
	jmp       .L00000E00
.L00000FC4:
	movapd    %xmm4, %xmm0
	mulsd     %xmm4, %xmm12
	mulsd     %xmm4, %xmm0
	addsd     %xmm12, %xmm0
	addsd     %xmm11, %xmm0
	ucomisd   %xmm0, %xmm5
	jb        .L00000DF1
.L00000FE5:
	jmp       .L00000AF0
.L00000FEA:
	movq      %r13, %rax
	movq      %r13, %rdx
	shrq      $1, %rax
	andl      $1, %edx
	orq       %rdx, %rax
	cvtsi2sd  %rax, %xmm4
	addsd     %xmm4, %xmm4
	jmp       .L00000F30
.L00001007:
	movl      (%rax), %edi
	movl      $0, (%rax)
	call      raise@PLT
.L00001014:
	jmp       .L000008C2
.L00001019:
	movl      $28, %edi
	xorl      %eax, %eax
	movl      $2, %ebp
	call      pari_err@PLT
.L0000102A:
	movq      $0, 80(%rsp)
	movq      $0, 56(%rsp)
	jmp       .L0000045D
.L00001041:
	movl      $28, %edi
	xorl      %eax, %eax
	call      pari_err@PLT
.L0000104D:
	xorl      %edi, %edi
	movq      %r12, %rdx
	xorl      %esi, %esi
	call      memset@PLT
.L00001059:
	movq      %rbp, %r9
	xorl      %edi, %edi
	jmp       .L000008E3
.L00001063:
	movl      $28, %edi
	xorl      %eax, %eax
	movq      %r10, 8(%rsp)
	call      pari_err@PLT
.L00001074:
	movq      $0, 72(%rsp)
	movq      8(%rsp), %r10
	jmp       .L0000059D
	.size	initprimes0, .-initprimes0
# ----------------------
.L00001087:
	.p2align 4
# ----------------------
	.globl	maxprime
	.type	maxprime, @function
maxprime:
	movq      _maxprime(%rip), %rax
	ret       
	.size	maxprime, .-maxprime
# ----------------------
.L00001098:
	.p2align 4
# ----------------------
	.globl	maxprime_check
	.type	maxprime_check, @function
maxprime_check:
	cmpq      %rdi, _maxprime(%rip)
	jb        .L000010B0
.L000010A9:
	rep; ret       
.L000010AB:
	.p2align 3
.L000010B0:
	movq      %rdi, %rsi
	xorl      %eax, %eax
	movl      $19, %edi
	jmp       pari_err@PLT
	.size	maxprime_check, .-maxprime_check
# ----------------------
.L000010BF:
	.p2align 3
# ----------------------
	.globl	init_primepointer
	.type	init_primepointer, @function
init_primepointer:
	pushq     %r13
	movl      $2, %eax
	movq      %rdx, %r13
	pushq     %r12
	movq      %rdi, %r12
	pushq     %rbp
	movq      %rsi, %rbp
	pushq     %rbx
	subq      $8, %rsp
	testq     %rdi, %rdi
	movq      (%rdx), %rbx
	cmove     %rax, %r12
	movq      %r12, %rdi
	call      maxprime_check@PLT
.L000010EA:
	cmpq      %rbp, %r12
	ja        .L000010FF
.L000010EF:
	jmp       .L00001112
.L000010F1:
	.p2align 3
.L000010F8:
	addq      $255, %rbp
.L000010FF:
	movzbl    (%rbx), %eax
	addq      $1, %rbx
	cmpb      $-1, %al
	je        .L000010F8
.L0000110A:
	addq      %rax, %rbp
	cmpq      %rbp, %r12
	ja        .L000010FF
.L00001112:
	movq      %rbx, (%r13)
	addq      $8, %rsp
	movq      %rbp, %rax
	popq      %rbx
	popq      %rbp
	popq      %r12
	popq      %r13
	ret       
	.size	init_primepointer, .-init_primepointer
# ----------------------
.L00001124:
	.p2align 4
# ----------------------
	.globl	initprimes
	.type	initprimes, @function
initprimes:
	pushq     %rbx
	movq      %rdi, %rax
	movl      $65302, %edi
	subq      $16, %rsp
	cmpq      $65302, %rax
	cmovae    %rax, %rdi
	cmpq      $-2049, %rax
	leaq      512(%rdi), %rbx
	jbe       .L00001169
.L00001156:
	leaq      .LC12(%rip), %rsi
	movl      $5, %edi
	xorl      %eax, %eax
	call      pari_err@PLT
.L00001169:
	leaq      8(%rsp), %rdx
	movq      %rsp, %rsi
	movq      %rbx, %rdi
	call      initprimes0@PLT
.L00001179:
	movq      8(%rsp), %rdx
	movq      %rdx, _maxprime(%rip)
	addq      $16, %rsp
	popq      %rbx
	ret       
	.size	initprimes, .-initprimes
# ----------------------
.L0000118B:
	.p2align 3
# ----------------------
	.globl	boundfact
	.type	boundfact, @function
boundfact:
	pushq     %r15
	pushq     %r14
	pushq     %r13
	pushq     %r12
	pushq     %rbp
	movq      %rsi, %rbp
	pushq     %rbx
	movq      %rdi, %rbx
	subq      $24, %rsp
	movq      (%rdi), %rax
	shrq      $57, %rax
	cmpq      $1, %rax
	je        .L000012E0
.L000011B5:
	cmpq      $4, %rax
	jne       .L000012C0
.L000011BF:
	movq      avma@GOTPCREL(%rip), %r12
	movq      8(%rdi), %rdi
	movq      (%r12), %r13
	call      Z_factor_limit@PLT
.L000011D3:
	movq      16(%rbx), %rdi
	movq      %rbp, %rsi
	movq      %rax, %r14
	call      Z_factor_limit@PLT
.L000011E2:
	movq      16(%rax), %rdi
	movq      %rax, %rbx
	call      ZC_neg@PLT
.L000011EE:
	movq      %rbx, %rsi
	movq      %rax, 16(%rbx)
	movq      %r14, %rdi
	call      merge_factor_i@PLT
.L000011FD:
	movq      %rax, %rdi
	call      copy_bin@PLT
.L00001205:
	movq      8(%rax), %rbp
	movq      %rax, %rbx
	movq      %r13, (%r12)
	testq     %rbp, %rbp
	je        .L00001330
.L00001219:
	movq      bot@GOTPCREL(%rip), %rcx
	movq      (%rax), %rax
	movq      %r13, %r15
	movq      %rbp, %r14
	subq      16(%rbx), %r14
	leaq      32(%rbx), %rsi
	subq      (%rcx), %r13
	leaq      0(,%rax,8), %rdx
	sarq      $3, %r14
	subq      %rdx, %r15
	shrq      $3, %r13
	cmpq      %r13, %rax
	ja        .L00001308
.L00001250:
	movq      %r15, %rdi
	movq      %r15, (%r12)
	leaq      (%r15,%r14,8), %r12
	call      memcpy@PLT
.L00001260:
	movl      24(%rbx), %eax
	movq      %r12, %rsi
	movq      %r12, %rdi
	subq      %rbp, %rsi
	testl     %eax, %eax
	jne       .L000012F8
.L00001274:
	call      shiftaddress@PLT
.L00001279:
	movq      PARI_SIGINT_block@GOTPCREL(%rip), %rbp
	movq      %rbx, %rdi
	movq      %r12, %rbx
	movl      (%rbp), %r13d
	movl      $1, (%rbp)
	call      free@PLT
.L00001296:
	testl     %r13d, %r13d
	movl      %r13d, (%rbp)
	jne       .L000012CE
.L0000129F:
	movq      PARI_SIGINT_pending@GOTPCREL(%rip), %rax
	movl      (%rax), %edx
	testl     %edx, %edx
	je        .L000012CE
.L000012AC:
	movl      (%rax), %edi
	movl      $0, (%rax)
	call      raise@PLT
.L000012B9:
	jmp       .L000012CE
.L000012BB:
	.p2align 3
.L000012C0:
	movl      $18, %edi
	xorl      %eax, %eax
	xorl      %ebx, %ebx
	call      pari_err@PLT
.L000012CE:
	addq      $24, %rsp
	movq      %rbx, %rax
	popq      %rbx
	popq      %rbp
	popq      %r12
	popq      %r13
	popq      %r14
	popq      %r15
	ret       
.L000012E0:
	addq      $24, %rsp
	popq      %rbx
	popq      %rbp
	popq      %r12
	popq      %r13
	popq      %r14
	popq      %r15
	jmp       Z_factor_limit@PLT
.L000012F3:
	.p2align 3
.L000012F8:
	call      shiftaddress_canon@PLT
.L000012FD:
	jmp       .L00001279
.L00001302:
	.p2align 3
.L00001308:
	movl      $14, %edi
	xorl      %eax, %eax
	movq      %rsi, 8(%rsp)
	movq      %rdx, (%rsp)
	call      pari_err@PLT
.L0000131D:
	movq      8(%rsp), %rsi
	movq      (%rsp), %rdx
	jmp       .L00001250
.L0000132B:
	.p2align 3
.L00001330:
	movq      PARI_SIGINT_block@GOTPCREL(%rip), %rbp
	movq      %rax, %rdi
	movl      (%rbp), %r12d
	movl      $1, (%rbp)
	call      free@PLT
.L0000134A:
	testl     %r12d, %r12d
	movl      %r12d, (%rbp)
	jne       .L0000136D
.L00001353:
	movq      PARI_SIGINT_pending@GOTPCREL(%rip), %rax
	movl      (%rax), %edx
	testl     %edx, %edx
	je        .L0000136D
.L00001360:
	movl      (%rax), %edi
	movl      $0, (%rax)
	call      raise@PLT
.L0000136D:
	movq      gen_0@GOTPCREL(%rip), %rax
	movq      (%rax), %rbx
	jmp       .L000012CE
	.size	boundfact, .-boundfact
# ----------------------
.L0000137C:
	.p2align 3
# ----------------------
	.globl	Z_smoothen
	.type	Z_smoothen, @function
Z_smoothen:
	pushq     %r15
	pushq     %r14
	pushq     %r13
	pushq     %r12
	movq      %rsi, %r12
	pushq     %rbp
	movq      $72057594037927935, %rbp
	pushq     %rbx
	subq      $56, %rsp
	movq      avma@GOTPCREL(%rip), %rbx
	movq      bot@GOTPCREL(%rip), %r15
	andq      (%rsi), %rbp
	movq      %rdx, 24(%rsp)
	movq      %rdi, 40(%rsp)
	movq      %rcx, 32(%rsp)
	movq      (%rbx), %rax
	movq      (%r15), %rdx
	leaq      0(,%rbp,8), %r13
	movq      %rax, %r14
	subq      %rdx, %rax
	shrq      $3, %rax
	subq      %r13, %r14
	cmpq      %rax, %rbp
	jbe       .L000013EA
.L000013DB:
	movl      $14, %edi
	xorl      %eax, %eax
	call      pari_err@PLT
.L000013E7:
	movq      (%r15), %rdx
.L000013EA:
	movq      %r14, %rax
	movq      %r14, (%rbx)
	subq      %r13, %rax
	movq      %rax, 16(%rsp)
	movq      %r14, %rax
	subq      %rdx, %rax
	shrq      $3, %rax
	cmpq      %rax, %rbp
	jbe       .L00001413
.L00001407:
	movl      $14, %edi
	xorl      %eax, %eax
	call      pari_err@PLT
.L00001413:
	movq      16(%rsp), %rax
	cmpq      $1, %rbp
	movq      %rax, (%rbx)
	jle       .L00001535
.L00001425:
	leaq      40(%rsp), %rax
	movl      $1, %ebx
	movl      $1, %r15d
	movq      %rax, 8(%rsp)
	jmp       .L00001449
.L0000143C:
	.p2align 3
.L00001440:
	addq      $1, %r15
	cmpq      %rbp, %r15
	je        .L0000149E
.L00001449:
	movq      (%r12,%r15,8), %r13
	movq      8(%rsp), %rdx
	movq      40(%rsp), %rdi
	movq      %r13, %rsi
	call      Z_lvalrem@PLT
.L0000145F:
	testq     %rax, %rax
	je        .L00001440
.L00001464:
	movq      16(%rsp), %rcx
	movq      $72057594037927935, %rdx
	movq      %r13, (%rcx,%rbx,8)
	movq      %rax, (%r14,%rbx,8)
	addq      $1, %rbx
	movq      40(%rsp), %rax
	andq      8(%rax), %rdx
	cmpq      $3, %rdx
	jne       .L00001440
.L0000148E:
	cmpq      $1, 16(%rax)
	jne       .L00001440
.L00001495:
	movq      $0, 40(%rsp)
.L0000149E:
	movq      $-72057594037927936, %rax
	testq     %rax, %rbx
	jne       .L000014F0
.L000014AD:
	movq      $3170534137668829184, %rbp
	orq       %rbx, %rbp
.L000014BA:
	movq      16(%rsp), %rax
	movq      24(%rsp), %rcx
	movq      %rbp, (%rax)
	movq      %rax, (%rcx)
.L000014CA:
	movq      32(%rsp), %rax
	movq      %rbp, (%r14)
	movq      %r14, (%rax)
	movq      40(%rsp), %rax
	addq      $56, %rsp
	popq      %rbx
	popq      %rbp
	popq      %r12
	popq      %r13
	popq      %r14
	popq      %r15
	ret       
.L000014E9:
	.p2align 4
.L000014F0:
	leaq      .LC13(%rip), %rsi
	xorl      %eax, %eax
	movl      $15, %edi
	movq      $3170534137668829184, %rbp
	call      pari_err@PLT
.L0000150D:
	movq      16(%rsp), %rax
	movq      24(%rsp), %rsi
	orq       %rbx, %rbp
	movl      $15, %edi
	movq      %rbp, (%rax)
	movq      %rax, (%rsi)
	leaq      .LC13(%rip), %rsi
	xorl      %eax, %eax
	call      pari_err@PLT
.L00001533:
	jmp       .L000014CA
.L00001535:
	movq      $3170534137668829185, %rbp
	jmp       .L000014BA
	.size	Z_smoothen, .-Z_smoothen
# ----------------------
.L00001544:
	.p2align 4
# ----------------------
	.globl	factoru
	.type	factoru, @function
factoru:
	pushq     %r15
	pushq     %r14
	pushq     %r13
	pushq     %r12
	movq      %rdi, %r12
	pushq     %rbp
	pushq     %rbx
	subq      $40, %rsp
	movq      avma@GOTPCREL(%rip), %r15
	movq      bot@GOTPCREL(%rip), %rdx
	movq      (%r15), %r14
	leaq      -24(%r14), %rax
	movq      %rax, 24(%rsp)
	movq      %r14, %rax
	subq      (%rdx), %rax
	cmpq      $23, %rax
	ja        .L0000159A
.L00001587:
	movl      $14, %edi
	xorl      %eax, %eax
	call      pari_err@PLT
.L00001593:
	movq      bot@GOTPCREL(%rip), %rdx
.L0000159A:
	movq      24(%rsp), %rax
	movq      %rax, (%r15)
	movq      $2449958197289549827, %rax
	movq      %rax, -24(%r14)
	movq      (%r15), %rbp
	movq      %rbp, %rax
	subq      (%rdx), %rax
	leaq      -256(%rbp), %rbx
	cmpq      $255, %rax
	ja        .L000015D4
.L000015C8:
	movl      $14, %edi
	xorl      %eax, %eax
	call      pari_err@PLT
.L000015D4:
	testq     %r12, %r12
	movq      %rbx, (%r15)
	jne       .L00001770
.L000015E0:
	movq      gen_0@GOTPCREL(%rip), %rax
	movq      (%rax), %rdi
.L000015EA:
	call      Z_factor@PLT
.L000015EF:
	movq      8(%rax), %r13
	movq      16(%rax), %rax
	movq      $72057594037927935, %rbx
	movq      %rbp, %r12
	movq      %rax, 8(%rsp)
	movq      bot@GOTPCREL(%rip), %rax
	andq      (%r13), %rbx
	movq      %rbp, (%r15)
	subq      (%rax), %rbp
	leaq      0(,%rbx,8), %r8
	shrq      $3, %rbp
	subq      %r8, %r12
	cmpq      %rbp, %rbx
	jbe       .L00001644
.L0000162E:
	movl      $14, %edi
	xorl      %eax, %eax
	movq      %r8, 16(%rsp)
	call      pari_err@PLT
.L0000163F:
	movq      16(%rsp), %r8
.L00001644:
	movq      $3170534137668829184, %rdx
	movq      %r12, (%r15)
	movq      bot@GOTPCREL(%rip), %rdi
	orq       %rbx, %rdx
	movq      %rdx, (%r12)
	movq      (%r15), %rax
	movq      %r12, -16(%r14)
	movq      %rax, %rbp
	subq      (%rdi), %rax
	subq      %r8, %rbp
	shrq      $3, %rax
	cmpq      %rax, %rbx
	jbe       .L0000168E
.L00001678:
	movl      $14, %edi
	xorl      %eax, %eax
	movq      %rdx, 16(%rsp)
	call      pari_err@PLT
.L00001689:
	movq      16(%rsp), %rdx
.L0000168E:
	cmpq      $1, %rbx
	movq      %rbp, (%r15)
	movq      %rdx, (%rbp)
	movq      $72057594037927935, %r15
	movq      %rbp, -8(%r14)
	movl      $1, %r14d
	jg        .L000016F0
.L000016AF:
	jmp       .L0000175B
.L000016B4:
	.p2align 3
.L000016B8:
	movq      16(%rcx), %r8
.L000016BC:
	movq      %r8, (%r12,%r14,8)
	movq      8(%rsp), %rax
	xorl      %ecx, %ecx
	movq      (%rax,%r14,8), %rsi
	movq      %r15, %rax
	andq      8(%rsi), %rax
	cmpq      $2, %rax
	je        .L000016E2
.L000016D8:
	cmpq      $3, %rax
	jne       .L00001730
.L000016DE:
	movq      16(%rsi), %rcx
.L000016E2:
	movq      %rcx, (%rbp,%r14,8)
	addq      $1, %r14
	cmpq      %rbx, %r14
	je        .L0000175B
.L000016F0:
	movq      (%r13,%r14,8), %rcx
	movq      %r15, %rax
	xorl      %r8d, %r8d
	andq      8(%rcx), %rax
	cmpq      $2, %rax
	je        .L000016BC
.L00001705:
	cmpq      $3, %rax
	je        .L000016B8
.L0000170B:
	leaq      .LC3(%rip), %rsi
	movl      $15, %edi
	xorl      %eax, %eax
	movq      %r8, 16(%rsp)
	call      pari_err@PLT
.L00001723:
	movq      16(%rsp), %r8
	jmp       .L000016BC
.L0000172A:
	.p2align 3
.L00001730:
	leaq      .LC3(%rip), %rsi
	xorl      %eax, %eax
	movl      $15, %edi
	movq      %rcx, 16(%rsp)
	call      pari_err@PLT
.L00001748:
	movq      16(%rsp), %rcx
	movq      %rcx, (%rbp,%r14,8)
	addq      $1, %r14
	cmpq      %rbx, %r14
	jne       .L000016F0
.L0000175B:
	movq      24(%rsp), %rax
	addq      $40, %rsp
	popq      %rbx
	popq      %rbp
	popq      %r12
	popq      %r13
	popq      %r14
	popq      %r15
	ret       
.L0000176F:
	.p2align 3
.L00001770:
	movq      bot@GOTPCREL(%rip), %rdx
	movq      %rbx, %rax
	leaq      -24(%rbx), %r13
	subq      (%rdx), %rax
	cmpq      $23, %rax
	jbe       .L000017B8
.L00001787:
	movq      $144115188075855875, %rax
	movq      %r13, (%r15)
	movq      %r12, -8(%rbx)
	movq      %rax, -24(%rbx)
	movq      $4611686018427387907, %rax
	movq      %r13, %rdi
	movq      %rax, -16(%rbx)
	jmp       .L000015EA
.L000017B2:
	.p2align 3
.L000017B8:
	movl      $14, %edi
	xorl      %eax, %eax
	call      pari_err@PLT
.L000017C4:
	jmp       .L00001787
	.size	factoru, .-factoru
# ----------------------
.L000017C6:
	.p2align 4
# ----------------------
	.globl	factoru_pow
	.type	factoru_pow, @function
factoru_pow:
	pushq     %r15
	pushq     %r14
	pushq     %r13
	pushq     %r12
	movq      %rdi, %r12
	pushq     %rbp
	pushq     %rbx
	subq      $56, %rsp
	movq      avma@GOTPCREL(%rip), %rbp
	movq      bot@GOTPCREL(%rip), %rdx
	movq      (%rbp), %r15
	leaq      -32(%r15), %rax
	movq      %rax, 32(%rsp)
	movq      %r15, %rax
	subq      (%rdx), %rax
	cmpq      $31, %rax
	ja        .L0000181B
.L00001808:
	movl      $14, %edi
	xorl      %eax, %eax
	call      pari_err@PLT
.L00001814:
	movq      bot@GOTPCREL(%rip), %rdx
.L0000181B:
	movq      32(%rsp), %rax
	movq      %rax, (%rbp)
	movq      $2449958197289549828, %rax
	movq      %rax, -32(%r15)
	movq      (%rbp), %r13
	movq      %r13, %rax
	subq      (%rdx), %rax
	leaq      -384(%r13), %rbx
	cmpq      $383, %rax
	ja        .L00001857
.L0000184B:
	movl      $14, %edi
	xorl      %eax, %eax
	call      pari_err@PLT
.L00001857:
	testq     %r12, %r12
	movq      %rbx, (%rbp)
	jne       .L00001A68
.L00001864:
	movq      gen_0@GOTPCREL(%rip), %rax
	movq      (%rax), %rdi
.L0000186E:
	call      Z_factor@PLT
.L00001873:
	movq      8(%rax), %rdx
	movq      16(%rax), %rax
	movq      $72057594037927935, %r12
	movq      %r13, %rbx
	movq      %rax, 16(%rsp)
	movq      bot@GOTPCREL(%rip), %rax
	andq      (%rdx), %r12
	movq      %r13, (%rbp)
	movq      %rdx, 8(%rsp)
	subq      (%rax), %r13
	leaq      0(,%r12,8), %r8
	shrq      $3, %r13
	subq      %r8, %rbx
	cmpq      %r13, %r12
	jbe       .L000018CD
.L000018B7:
	movl      $14, %edi
	xorl      %eax, %eax
	movq      %r8, 24(%rsp)
	call      pari_err@PLT
.L000018C8:
	movq      24(%rsp), %r8
.L000018CD:
	movq      $3170534137668829184, %rsi
	movq      %rbx, (%rbp)
	movq      bot@GOTPCREL(%rip), %rdx
	orq       %r12, %rsi
	movq      %rsi, (%rbx)
	movq      (%rbp), %rax
	movq      %rbx, -24(%r15)
	movq      %rax, %r14
	subq      (%rdx), %rax
	subq      %r8, %r14
	shrq      $3, %rax
	cmpq      %rax, %r12
	jbe       .L00001929
.L00001902:
	movl      $14, %edi
	xorl      %eax, %eax
	movq      %r8, 40(%rsp)
	movq      %rsi, 24(%rsp)
	call      pari_err@PLT
.L00001918:
	movq      40(%rsp), %r8
	movq      24(%rsp), %rsi
	movq      bot@GOTPCREL(%rip), %rdx
.L00001929:
	movq      %r14, (%rbp)
	movq      %rsi, (%r14)
	movq      (%rbp), %rax
	movq      %r14, -16(%r15)
	movq      %rax, %r13
	subq      (%rdx), %rax
	subq      %r8, %r13
	shrq      $3, %rax
	cmpq      %rax, %r12
	jbe       .L00001960
.L0000194A:
	movl      $14, %edi
	xorl      %eax, %eax
	movq      %rsi, 24(%rsp)
	call      pari_err@PLT
.L0000195B:
	movq      24(%rsp), %rsi
.L00001960:
	cmpq      $1, %r12
	movq      %r13, (%rbp)
	movq      %rsi, (%r13)
	movq      $72057594037927935, %rbp
	movq      %r13, -8(%r15)
	movl      $1, %r15d
	jg        .L000019DA
.L00001982:
	jmp       .L00001A50
.L00001987:
	.p2align 4
.L00001990:
	movq      16(%rcx), %r8
.L00001994:
	movq      %r8, (%rbx,%r15,8)
	movq      16(%rsp), %rax
	movq      (%rax,%r15,8), %rcx
	movq      %rbp, %rax
	andq      8(%rcx), %rax
	cmpq      $2, %rax
	je        .L00001A40
.L000019B2:
	cmpq      $3, %rax
	jne       .L00001A20
.L000019B8:
	movq      16(%rcx), %rax
	movq      %rax, %rsi
.L000019BF:
	movq      %rax, (%r14,%r15,8)
	movq      (%rbx,%r15,8), %rdi
	call      upowuu@PLT
.L000019CC:
	movq      %rax, (%r13,%r15,8)
	addq      $1, %r15
	cmpq      %r12, %r15
	je        .L00001A50
.L000019DA:
	movq      8(%rsp), %rax
	xorl      %r8d, %r8d
	movq      (%rax,%r15,8), %rcx
	movq      %rbp, %rax
	andq      8(%rcx), %rax
	cmpq      $2, %rax
	je        .L00001994
.L000019F3:
	cmpq      $3, %rax
	je        .L00001990
.L000019F9:
	leaq      .LC3(%rip), %rsi
	movl      $15, %edi
	xorl      %eax, %eax
	movq      %r8, 24(%rsp)
	call      pari_err@PLT
.L00001A11:
	movq      24(%rsp), %r8
	jmp       .L00001994
.L00001A1B:
	.p2align 3
.L00001A20:
	leaq      .LC3(%rip), %rsi
	xorl      %eax, %eax
	movl      $15, %edi
	call      pari_err@PLT
.L00001A33:
	xorl      %eax, %eax
	xorl      %esi, %esi
	jmp       .L000019BF
.L00001A39:
	.p2align 4
.L00001A40:
	xorl      %eax, %eax
	xorl      %esi, %esi
	jmp       .L000019BF
.L00001A49:
	.p2align 4
.L00001A50:
	movq      32(%rsp), %rax
	addq      $56, %rsp
	popq      %rbx
	popq      %rbp
	popq      %r12
	popq      %r13
	popq      %r14
	popq      %r15
	ret       
.L00001A64:
	.p2align 3
.L00001A68:
	movq      bot@GOTPCREL(%rip), %rdx
	movq      %rbx, %rax
	leaq      -24(%rbx), %r14
	subq      (%rdx), %rax
	cmpq      $23, %rax
	jbe       .L00001AB0
.L00001A7F:
	movq      $144115188075855875, %rax
	movq      %r14, (%rbp)
	movq      %r12, -8(%rbx)
	movq      %rax, -24(%rbx)
	movq      $4611686018427387907, %rax
	movq      %r14, %rdi
	movq      %rax, -16(%rbx)
	jmp       .L0000186E
.L00001AAB:
	.p2align 3
.L00001AB0:
	movl      $14, %edi
	xorl      %eax, %eax
	call      pari_err@PLT
.L00001ABC:
	jmp       .L00001A7F
	.size	factoru_pow, .-factoru_pow
# ----------------------
.L00001ABE:
	.p2align 3
# ----------------------
	.globl	divisors
	.type	divisors, @function
divisors:
	pushq     %r15
	pushq     %r14
	pushq     %r13
	pushq     %r12
	pushq     %rbp
	pushq     %rbx
	movq      %rdi, %rbx
	subq      $72, %rsp
	movq      avma@GOTPCREL(%rip), %rax
	movq      (%rdi), %rdx
	movq      (%rax), %rax
	movq      %rax, 48(%rsp)
	movq      %rdx, %rax
	shrq      $57, %rax
	cmpq      $19, %rax
	je        .L00002002
.L00001AF4:
	cmpq      $1, %rax
	je        .L00002176
.L00001AFE:
	subq      $17, %rax
	cmpq      $2, %rax
	jbe       .L000020A4
.L00001B0C:
	movq      %rbx, %rdi
	call      factor@PLT
.L00001B14:
	movq      8(%rax), %rbp
	movq      $72057594037927935, %rcx
	movq      16(%rax), %r13
	movq      %rcx, 16(%rsp)
	movl      $0, 60(%rsp)
	movq      (%rbp), %rcx
	andq      %rcx, 16(%rsp)
.L00001B3C:
	movq      avma@GOTPCREL(%rip), %rax
	movq      (%rax), %rax
.L00001B46:
	movq      16(%rsp), %rcx
	movq      %rax, %rdi
	leaq      0(,%rcx,8), %rdx
	subq      %rdx, %rdi
	movq      bot@GOTPCREL(%rip), %rdx
	movq      %rdi, 32(%rsp)
	subq      (%rdx), %rax
	shrq      $3, %rax
	cmpq      %rax, %rcx
	jbe       .L00001B7D
.L00001B71:
	movl      $14, %edi
	xorl      %eax, %eax
	call      pari_err@PLT
.L00001B7D:
	movq      avma@GOTPCREL(%rip), %rdx
	movq      32(%rsp), %r12
	movq      $3170534137668829184, %rax
	movq      %r12, (%rdx)
	movq      16(%rsp), %rdx
	orq       %rdx, %rax
	cmpq      $1, %rdx
	movq      %rax, (%r12)
	jle       .L00002158
.L00001BAC:
	movq      %rbp, 24(%rsp)
	movl      $1, %r14d
	movl      $1, %r15d
	movq      $72057594037927935, %rbx
	movq      %rdx, %rbp
	jmp       .L00001C24
.L00001BCC:
	.p2align 3
.L00001BD0:
	andq      %rbx, %rcx
	movq      16(%rax), %r9
	cmpq      $3, %rcx
	jg        .L00001C48
.L00001BDD:
	testq     %r9, %r9
	js        .L00001C48
.L00001BE2:
	movq      %r9, %rcx
	movq      %r9, %rax
	negq      %rcx
	testq     %rdx, %rdx
	cmovle    %rcx, %rax
	testq     %rax, %rax
	movq      %rax, (%r12,%r15,8)
	js        .L00001DFC
.L00001BFF:
	leaq      1(%rax), %rsi
.L00001C03:
	movq      %r14, %rdi
	xorl      %r14d, %r14d
	call      muluu@PLT
.L00001C0E:
	movq      %rbx, %rdx
	andq      8(%rax), %rdx
	cmpq      $3, %rdx
	je        .L00001C72
.L00001C1B:
	addq      $1, %r15
	cmpq      %rbp, %r15
	je        .L00001C7F
.L00001C24:
	movq      (%r13,%r15,8), %rax
	movq      8(%rax), %rcx
	movq      %rcx, %rdx
	sarq      $62, %rdx
	testq     %rdx, %rdx
	jne       .L00001BD0
.L00001C39:
	movq      $0, (%r12,%r15,8)
	movl      $1, %esi
	jmp       .L00001C03
.L00001C48:
	leaq      .LC0(%rip), %rsi
	movl      $15, %edi
	xorl      %eax, %eax
	movq      %r9, 8(%rsp)
	movq      %rdx, (%rsp)
	call      pari_err@PLT
.L00001C64:
	movq      8(%rsp), %r9
	movq      (%rsp), %rdx
	jmp       .L00001BE2
.L00001C72:
	addq      $1, %r15
	movq      16(%rax), %r14
	cmpq      %rbp, %r15
	jne       .L00001C24
.L00001C7F:
	testq     %r14, %r14
	movq      24(%rsp), %rbp
	je        .L00001FE4
.L00001C8D:
	leaq      1(%r14), %r15
	movq      $-72057594037927936, %rax
	movq      $2449958197289549824, %rbx
	movq      %r15, %r13
	orq       %r15, %rbx
	leaq      0(,%r15,8), %r12
	andq      %rax, %r13
	testq     %rax, %r14
	je        .L00001CD8
.L00001CBB:
	leaq      .LC16(%rip), %rsi
	movq      $72057594037927934, %rdx
	movl      $5, %edi
	xorl      %eax, %eax
	call      pari_err@PLT
.L00001CD8:
	movq      avma@GOTPCREL(%rip), %rax
	movq      (%rax), %rax
	movq      %rax, %rcx
	subq      %r12, %rcx
	movq      %rcx, 24(%rsp)
	movq      %rcx, 40(%rsp)
	movq      bot@GOTPCREL(%rip), %rcx
	subq      (%rcx), %rax
	shrq      $3, %rax
	cmpq      %r15, %rax
	jae       .L00001D11
.L00001D05:
	movl      $14, %edi
	xorl      %eax, %eax
	call      pari_err@PLT
.L00001D11:
	movq      avma@GOTPCREL(%rip), %rax
	movq      24(%rsp), %rcx
	testq     %r13, %r13
	movq      %rcx, (%rax)
	je        .L00001D3D
.L00001D25:
	leaq      .LC13(%rip), %rsi
	movl      $15, %edi
	xorl      %eax, %eax
	call      pari_err@PLT
.L00001D38:
	movq      24(%rsp), %rcx
.L00001D3D:
	movq      gen_1@GOTPCREL(%rip), %rax
	movq      %rbx, (%rcx)
	movl      $1, %r14d
	leaq      8(%rcx), %rbx
	movq      (%rax), %rax
	movq      %rax, 8(%rcx)
	movl      60(%rsp), %eax
	testl     %eax, %eax
	jne       .L00001E18
.L00001D64:
	cmpq      $1, 16(%rsp)
	movq      %r14, %rax
	movq      %rbp, %r14
	movq      %rax, %rbp
	jle       .L00001E3C
.L00001D79:
	movq      32(%rsp), %rax
	movq      (%rax,%rbp,8), %rax
	testq     %rax, %rax
	movq      %rax, 8(%rsp)
	je        .L00001F34
.L00001D90:
	movq      24(%rsp), %r12
	movq      %rbp, %rax
	movq      %rbx, (%rsp)
	movq      %r14, %rbp
	movq      %rax, %r14
	.p2align 3
.L00001DA8:
	cmpq      %rbx, %r12
	jae       .L00001DE6
.L00001DAD:
	movq      %r12, %r13
	movq      %rbx, %r15
	.p2align 3
.L00001DB8:
	addq      $8, %r13
	movq      (%rbp,%r14,8), %rsi
	movq      (%r13), %rdi
	addq      $8, %r15
	call      gmul@PLT
.L00001DCE:
	cmpq      %rbx, %r13
	movq      %rax, (%r15)
	jb        .L00001DB8
.L00001DD6:
	notq      %r12
	leaq      (%r12,%rbx), %rax
	shrq      $3, %rax
	leaq      8(%rbx,%rax,8), %rbx
.L00001DE6:
	subq      $1, 8(%rsp)
	je        .L00001F2B
.L00001DF2:
	movq      (%rsp), %r12
	movq      %rbx, (%rsp)
	jmp       .L00001DA8
.L00001DFC:
	leaq      .LC15(%rip), %rsi
	xorl      %eax, %eax
	movl      $5, %edi
	call      pari_err@PLT
.L00001E0F:
	movq      (%r12,%r15,8), %rax
	jmp       .L00001BFF
.L00001E18:
	cmpq      $1, 16(%rsp)
	movq      %r14, %rax
	movq      %rbp, %r14
	movq      %rax, %rbp
	jg        .L00001F68
.L00001E2D:
	movq      24(%rsp), %rdi
	call      sort@PLT
.L00001E37:
	movq      %rax, 40(%rsp)
.L00001E3C:
	movq      bot@GOTPCREL(%rip), %rax
	movq      40(%rsp), %rcx
	cmpq      (%rax), %rcx
	jb        .L00001F08
.L00001E51:
	movq      top@GOTPCREL(%rip), %rax
	cmpq      (%rax), %rcx
	jae       .L00001F08
.L00001E61:
	movq      48(%rsp), %rax
	cmpq      %rax, 40(%rsp)
	jae       .L00001F08
.L00001E71:
	movq      40(%rsp), %rax
	movq      (%rax), %rax
	movq      %rax, %rdx
	shrq      $57, %rdx
	cmpq      $2, %rdx
	je        .L000020F7
.L00001E8A:
	jg        .L000020ED
.L00001E90:
	cmpq      $1, %rdx
	jne       .L000020BC
.L00001E9A:
	movq      40(%rsp), %rax
	movq      $72057594037927935, %rdx
	movq      48(%rsp), %rcx
	movq      40(%rsp), %rdi
	andq      8(%rax), %rdx
	leaq      0(,%rdx,8), %rax
	subq      %rax, %rcx
	leaq      -1(%rdx), %rax
	testq     %rax, %rax
	jle       .L00001ED9
.L00001ECB:
	movq      (%rdi,%rax,8), %rsi
	movq      %rsi, (%rcx,%rax,8)
	subq      $1, %rax
	jne       .L00001ECB
.L00001ED9:
	movq      $144115188075855872, %rax
	orq       %rdx, %rax
	movq      %rax, (%rcx)
	movq      avma@GOTPCREL(%rip), %rax
	movq      %rcx, (%rax)
	addq      $72, %rsp
	movq      %rcx, %rax
	popq      %rbx
	popq      %rbp
	popq      %r12
	popq      %r13
	popq      %r14
	popq      %r15
	ret       
.L00001F05:
	.p2align 3
.L00001F08:
	movq      avma@GOTPCREL(%rip), %rax
	movq      48(%rsp), %rcx
	movq      %rcx, (%rax)
	movq      40(%rsp), %rax
.L00001F1C:
	addq      $72, %rsp
	popq      %rbx
	popq      %rbp
	popq      %r12
	popq      %r13
	popq      %r14
	popq      %r15
	ret       
.L00001F2B:
	movq      %r14, %rax
	movq      %rbp, %r14
	movq      %rax, %rbp
.L00001F34:
	addq      $1, %rbp
	cmpq      16(%rsp), %rbp
	jne       .L00001D79
.L00001F43:
	jmp       .L00001E3C
.L00001F48:
	.p2align 4
.L00001F50:
	movq      %r14, %rax
	movq      %rbp, %r14
	movq      %rax, %rbp
.L00001F59:
	addq      $1, %rbp
	cmpq      16(%rsp), %rbp
	je        .L00001E2D
.L00001F68:
	movq      32(%rsp), %rax
	movq      (%rax,%rbp,8), %rax
	testq     %rax, %rax
	movq      %rax, 8(%rsp)
	je        .L00001F59
.L00001F7B:
	movq      24(%rsp), %r12
	movq      %rbp, %rax
	movq      %rbx, (%rsp)
	movq      %r14, %rbp
	movq      %rax, %r14
	.p2align 3
.L00001F90:
	cmpq      %rbx, %r12
	jae       .L00001FCE
.L00001F95:
	movq      %r12, %r13
	movq      %rbx, %r15
	.p2align 3
.L00001FA0:
	addq      $8, %r13
	movq      (%rbp,%r14,8), %rsi
	movq      (%r13), %rdi
	addq      $8, %r15
	call      mulii@PLT
.L00001FB6:
	cmpq      %rbx, %r13
	movq      %rax, (%r15)
	jb        .L00001FA0
.L00001FBE:
	notq      %r12
	leaq      (%r12,%rbx), %rax
	shrq      $3, %rax
	leaq      8(%rbx,%rax,8), %rbx
.L00001FCE:
	subq      $1, 8(%rsp)
	je        .L00001F50
.L00001FDA:
	movq      (%rsp), %r12
	movq      %rbx, (%rsp)
	jmp       .L00001F90
.L00001FE4:
	movq      $2449958197289549825, %rbx
	xorl      %r13d, %r13d
	movl      $8, %r12d
	movl      $1, %r15d
	jmp       .L00001CBB
.L00002002:
	movq      $72057594037927935, %r14
	andq      %r14, %rdx
	cmpq      $3, %rdx
	jne       .L00001AFE
.L00002019:
	movq      8(%rdi), %rbp
	andq      (%rbp), %r14
	cmpq      $1, %r14
	movq      %r14, 16(%rsp)
	jle       .L000021C8
.L00002030:
	movq      8(%rbp), %rax
	movq      (%rax), %rax
	shrq      $57, %rax
	cmpq      $1, %rax
	je        .L00002066
.L00002041:
	jmp       .L000021B2
.L00002046:
	.p2align 4
.L00002050:
	movq      (%rbp,%rax,8), %rdx
	movq      (%rdx), %rdx
	shrq      $57, %rdx
	cmpq      $1, %rdx
	jne       .L000021B2
.L00002066:
	addq      $1, %rax
	cmpq      16(%rsp), %rax
	jne       .L00002050
.L00002071:
	movq      16(%rbx), %r13
	movq      48(%rsp), %rax
.L0000207A:
	movq      8(%rbp), %rdx
	movl      $1, 60(%rsp)
	cmpq      $0, 8(%rdx)
	jns       .L00001B46
.L00002091:
	addq      $8, %r13
	addq      $8, %rbp
	subq      $1, 16(%rsp)
	jmp       .L00001B46
.L000020A4:
	leaq      .LC14(%rip), %rsi
	movl      $11, %edi
	xorl      %eax, %eax
	call      pari_err@PLT
.L000020B7:
	jmp       .L00001B0C
.L000020BC:
	movq      40(%rsp), %rcx
	movq      48(%rsp), %rdi
	addq      $72, %rsp
	popq      %rbx
	popq      %rbp
	popq      %r12
	popq      %r13
	popq      %r14
	movq      $72057594037927935, %rdx
	popq      %r15
	andq      %rdx, %rax
	movq      %rcx, %rdx
	leaq      (%rcx,%rax,8), %rsi
	jmp       gerepile@PLT
.L000020ED:
	subq      $21, %rdx
	cmpq      $1, %rdx
	ja        .L000020BC
.L000020F7:
	movq      $72057594037927935, %rcx
	movq      avma@GOTPCREL(%rip), %rdi
	andq      %rax, %rcx
	movq      48(%rsp), %rax
	leaq      0(,%rcx,8), %rdx
	subq      %rdx, %rax
	testq     %rcx, %rcx
	movq      %rax, (%rdi)
	je        .L00001F1C
.L00002127:
	movq      40(%rsp), %rcx
	leaq      -8(%rdx,%rax), %rdx
	leaq      -8(%rax), %rsi
	subq      %rax, %rcx
.L00002138:
	movq      (%rcx,%rdx), %rdi
	subq      $8, %rdx
	movq      %rdi, 8(%rdx)
	cmpq      %rsi, %rdx
	jne       .L00002138
.L00002149:
	addq      $72, %rsp
	popq      %rbx
	popq      %rbp
	popq      %r12
	popq      %r13
	popq      %r14
	popq      %r15
	ret       
.L00002158:
	movl      $16, %r12d
	movq      $2449958197289549826, %rbx
	xorl      %r13d, %r13d
	movl      $2, %r15d
	jmp       .L00001CD8
.L00002176:
	call      Z_factor@PLT
.L0000217B:
	movq      8(%rax), %rbp
	movq      $72057594037927935, %rcx
	movq      16(%rax), %r13
	movq      %rcx, 16(%rsp)
	movq      (%rbp), %rcx
	andq      %rcx, 16(%rsp)
	cmpq      $1, 16(%rsp)
	jle       .L000021DE
.L000021A3:
	movq      avma@GOTPCREL(%rip), %rax
	movq      (%rax), %rax
	jmp       .L0000207A
.L000021B2:
	movq      16(%rbx), %r13
	movq      48(%rsp), %rax
	movl      $0, 60(%rsp)
	jmp       .L00001B46
.L000021C8:
	movq      16(%rdi), %r13
	movq      48(%rsp), %rax
	movl      $1, 60(%rsp)
	jmp       .L00001B46
.L000021DE:
	movl      $1, 60(%rsp)
	jmp       .L00001B3C
	.size	divisors, .-divisors
# ----------------------
.L000021EB:
	.p2align 3
# ----------------------
	.globl	divisorsu
	.type	divisorsu, @function
divisorsu:
	pushq     %r15
	pushq     %r14
	pushq     %r13
	pushq     %r12
	movq      $72057594037927935, %r12
	pushq     %rbp
	pushq     %rbx
	subq      $24, %rsp
	movq      avma@GOTPCREL(%rip), %rax
	movq      (%rax), %rax
	movq      %rax, 8(%rsp)
	call      factoru@PLT
.L0000221C:
	movq      8(%rax), %rbx
	movq      16(%rax), %rbp
	andq      (%rbx), %r12
	cmpq      $1, %r12
	jle       .L000026CB
.L00002231:
	leaq      8(%rbp), %rax
	leaq      -1(%r12), %rsi
	salq      $60, %rax
	movq      %rsi, %rdx
	shrq      $63, %rax
	cmpq      %rsi, %rax
	cmova     %rsi, %rax
	cmpq      $5, %rsi
	movq      %rax, %rdi
	ja        .L00002679
.L00002259:
	movq      8(%rbp), %rax
	addq      $1, %rax
	cmpq      $1, %rdx
	jbe       .L000026A3
.L0000226B:
	movq      16(%rbp), %rdi
	leaq      1(%rdi), %rcx
	imulq     %rcx, %rax
	cmpq      $2, %rdx
	jbe       .L000026C1
.L00002281:
	movq      24(%rbp), %rdi
	leaq      1(%rdi), %rcx
	imulq     %rcx, %rax
	cmpq      $3, %rdx
	jbe       .L000026B7
.L00002297:
	movq      32(%rbp), %rdi
	leaq      1(%rdi), %rcx
	imulq     %rcx, %rax
	cmpq      $4, %rdx
	jbe       .L000026AD
.L000022AD:
	movq      40(%rbp), %rdi
	leaq      1(%rdi), %rcx
	imulq     %rcx, %rax
	movl      $6, %ecx
.L000022BE:
	cmpq      %rdx, %rsi
	je        .L00002391
.L000022C7:
	subq      %rdx, %rsi
	movq      %rsi, %rdi
	movq      %rsi, %r9
	shrq      $1, %rdi
	movq      %rdi, %r8
	addq      %r8, %r8
	je        .L00002384
.L000022DF:
	movdqa    .LC17(%rip), %xmm2
	leaq      8(%rbp,%rdx,8), %rsi
	xorl      %edx, %edx
	movdqa    %xmm2, %xmm0
.L000022F2:
	movdqa    (%rsi), %xmm1
	movdqa    %xmm0, %xmm4
	addq      $1, %rdx
	addq      $16, %rsi
	paddq     %xmm2, %xmm1
	movdqa    %xmm1, %xmm3
	movdqa    %xmm1, %xmm5
	cmpq      %rdi, %rdx
	psrlq     $32, %xmm4
	pmuludq   %xmm4, %xmm1
	pmuludq   %xmm0, %xmm3
	psrlq     $32, %xmm5
	pmuludq   %xmm5, %xmm0
	paddq     %xmm1, %xmm0
	psllq     $32, %xmm0
	paddq     %xmm3, %xmm0
	jb        .L000022F2
.L00002336:
	movdqa    %xmm0, %xmm6
	movdqa    %xmm0, %xmm3
	addq      %r8, %rcx
	psrldq    $8, %xmm6
	movdqa    %xmm6, %xmm2
	movdqa    %xmm6, %xmm1
	movdqa    %xmm6, %xmm4
	psrlq     $32, %xmm3
	pmuludq   %xmm0, %xmm1
	pmuludq   %xmm3, %xmm2
	psrlq     $32, %xmm4
	pmuludq   %xmm4, %xmm0
	paddq     %xmm2, %xmm0
	psllq     $32, %xmm0
	paddq     %xmm0, %xmm1
	movq      %xmm1, (%rsp)
	imulq     (%rsp), %rax
	cmpq      %r8, %r9
	je        .L00002391
.L00002384:
	movq      (%rbp,%rcx,8), %rdx
	addq      $1, %rdx
	imulq     %rdx, %rax
.L00002391:
	addq      $1, %rax
	movq      $-72057594037927936, %r15
	movq      $3170534137668829184, %r14
	leaq      0(,%rax,8), %rcx
	andq      %rax, %r15
	orq       %rax, %r14
.L000023B7:
	movq      avma@GOTPCREL(%rip), %rdi
	movq      (%rdi), %rdx
	movq      bot@GOTPCREL(%rip), %rdi
	movq      %rdx, %r13
	subq      (%rdi), %rdx
	subq      %rcx, %r13
	shrq      $3, %rdx
	cmpq      %rax, %rdx
	jae       .L000023E6
.L000023DA:
	movl      $14, %edi
	xorl      %eax, %eax
	call      pari_err@PLT
.L000023E6:
	movq      avma@GOTPCREL(%rip), %rax
	testq     %r15, %r15
	movq      %r13, (%rax)
	je        .L00002408
.L000023F5:
	leaq      .LC13(%rip), %rsi
	movl      $15, %edi
	xorl      %eax, %eax
	call      pari_err@PLT
.L00002408:
	cmpq      $1, %r12
	movq      %r14, (%r13)
	leaq      8(%r13), %rax
	movq      $1, 8(%r13)
	jle       .L00002599
.L00002422:
	leaq      8(%rbx), %r8
	leaq      (%rbp,%r12,8), %rbx
	leaq      8(%rbp), %r15
	movq      %rbx, (%rsp)
	.p2align 3
.L00002438:
	movq      (%r15), %r10
	leaq      8(%r8), %r14
	testq     %r10, %r10
	je        .L00002588
.L00002448:
	leaq      8(%r8), %r14
	movq      %r13, %rcx
	movq      %rax, %rbx
	.p2align 3
.L00002458:
	cmpq      %rcx, %rax
	jbe       .L00002547
.L00002461:
	leaq      8(%rcx), %rdx
	leaq      7(%rax), %rsi
	leaq      8(%rax), %r11
	leaq      24(%rax), %r12
	subq      %rdx, %rsi
	shrq      $3, %rsi
	leaq      1(%rsi), %rdi
	leaq      24(%rcx), %rsi
	cmpq      $21, %rdi
	leaq      0(,%rdi,8), %r9
	seta      %bpl
	cmpq      %rsi, %r11
	setae     %sil
	cmpq      %r12, %rdx
	setae     %r12b
	orl       %r12d, %esi
	testb     %sil, %bpl
	je        .L00002560
.L000024AA:
	leaq      (%r11,%r9), %rsi
	cmpq      %rsi, %r8
	setae     %bpl
	cmpq      %r14, %r11
	setae     %sil
	orb       %sil, %bpl
	je        .L00002560
.L000024C5:
	movq      %rdi, %r11
	xorl      %edx, %edx
	xorl      %esi, %esi
	shrq      $1, %r11
	leaq      (%r11,%r11), %rbp
.L000024D3:
	movq      (%r8), %xmm0
	addq      $1, %rsi
	punpcklqdq %xmm0, %xmm0
	movdqu    8(%rcx,%rdx), %xmm2
	movdqa    %xmm2, %xmm1
	movdqa    %xmm2, %xmm4
	movdqa    %xmm0, %xmm3
	pmuludq   %xmm0, %xmm1
	psrlq     $32, %xmm4
	psrlq     $32, %xmm3
	pmuludq   %xmm4, %xmm0
	pmuludq   %xmm3, %xmm2
	paddq     %xmm2, %xmm0
	psllq     $32, %xmm0
	paddq     %xmm0, %xmm1
	movdqu    %xmm1, 8(%rax,%rdx)
	addq      $16, %rdx
	cmpq      %rsi, %r11
	ja        .L000024D3
.L00002524:
	leaq      0(,%rbp,8), %rdx
	leaq      (%rax,%rdx), %rsi
	addq      %rcx, %rdx
	cmpq      %rdi, %rbp
	je        .L00002544
.L00002538:
	movq      8(%rdx), %rdx
	imulq     (%r8), %rdx
	movq      %rdx, 8(%rsi)
.L00002544:
	addq      %r9, %rax
.L00002547:
	subq      $1, %r10
	je        .L00002588
.L0000254D:
	movq      %rbx, %rcx
	movq      %rax, %rbx
	jmp       .L00002458
.L00002558:
	.p2align 4
.L00002560:
	movq      %rax, %rsi
	jmp       .L0000256C
.L00002565:
	.p2align 3
.L00002568:
	addq      $8, %rdx
.L0000256C:
	movq      (%rdx), %rcx
	addq      $8, %rsi
	imulq     (%r8), %rcx
	cmpq      %rdx, %rax
	movq      %rcx, (%rsi)
	ja        .L00002568
.L0000257F:
	jmp       .L00002544
.L00002581:
	.p2align 3
.L00002588:
	addq      $8, %r15
	cmpq      (%rsp), %r15
	movq      %r14, %r8
	jne       .L00002438
.L00002599:
	movq      %r13, %rdi
	call      vecsmall_sort@PLT
.L000025A1:
	movq      bot@GOTPCREL(%rip), %rax
	cmpq      (%rax), %r13
	jb        .L00002658
.L000025B1:
	movq      top@GOTPCREL(%rip), %rax
	cmpq      (%rax), %r13
	jae       .L00002658
.L000025C1:
	cmpq      8(%rsp), %r13
	jae       .L00002658
.L000025CC:
	movq      (%r13), %rax
	movq      %rax, %rdx
	shrq      $57, %rdx
	cmpq      $2, %rdx
	je        .L0000271E
.L000025E1:
	jg        .L00002714
.L000025E7:
	cmpq      $1, %rdx
	jne       .L000026E7
.L000025F1:
	movq      $72057594037927935, %rdx
	andq      8(%r13), %rdx
	movq      8(%rsp), %rcx
	leaq      0(,%rdx,8), %rax
	subq      %rax, %rcx
	leaq      -1(%rdx), %rax
	testq     %rax, %rax
	jle       .L00002627
.L00002618:
	movq      (%r13,%rax,8), %rsi
	movq      %rsi, (%rcx,%rax,8)
	subq      $1, %rax
	jne       .L00002618
.L00002627:
	movq      $144115188075855872, %rax
	orq       %rdx, %rax
	movq      %rax, (%rcx)
	movq      avma@GOTPCREL(%rip), %rax
	movq      %rcx, (%rax)
	addq      $24, %rsp
	movq      %rcx, %rax
	popq      %rbx
	popq      %rbp
	popq      %r12
	popq      %r13
	popq      %r14
	popq      %r15
	ret       
.L00002653:
	.p2align 3
.L00002658:
	movq      avma@GOTPCREL(%rip), %rax
	movq      8(%rsp), %rbx
	movq      %rbx, (%rax)
	addq      $24, %rsp
	movq      %r13, %rax
	popq      %rbx
	popq      %rbp
	popq      %r12
	popq      %r13
	popq      %r14
	popq      %r15
	ret       
.L00002679:
	xorl      %edx, %edx
	testq     %rdi, %rdi
	movl      $1, %eax
	movl      $1, %ecx
	je        .L000022C7
.L0000268E:
	movq      8(%rbp), %rax
	movq      %rdi, %rdx
	addq      $1, %rax
	cmpq      $1, %rdx
	ja        .L0000226B
.L000026A3:
	movl      $2, %ecx
	jmp       .L000022BE
.L000026AD:
	movl      $5, %ecx
	jmp       .L000022BE
.L000026B7:
	movl      $4, %ecx
	jmp       .L000022BE
.L000026C1:
	movl      $3, %ecx
	jmp       .L000022BE
.L000026CB:
	movl      $16, %ecx
	movq      $3170534137668829186, %r14
	xorl      %r15d, %r15d
	movl      $2, %eax
	jmp       .L000023B7
.L000026E7:
	movq      8(%rsp), %rdi
	addq      $24, %rsp
	movq      $72057594037927935, %rdx
	popq      %rbx
	popq      %rbp
	popq      %r12
	andq      %rdx, %rax
	movq      %r13, %rdx
	leaq      (%r13,%rax,8), %rsi
	popq      %r13
	popq      %r14
	popq      %r15
	jmp       gerepile@PLT
.L00002714:
	subq      $21, %rdx
	cmpq      $1, %rdx
	ja        .L000026E7
.L0000271E:
	movq      $72057594037927935, %rdx
	movq      avma@GOTPCREL(%rip), %rbx
	andq      %rdx, %rax
	movq      8(%rsp), %rdx
	leaq      0(,%rax,8), %rcx
	subq      %rcx, %rdx
	testq     %rax, %rax
	movq      %rdx, (%rbx)
	je        .L00002769
.L0000274A:
	leaq      -8(%r13,%rcx), %rax
	leaq      -8(%r13), %rsi
	movq      %rdx, %rcx
	subq      %r13, %rcx
.L00002759:
	movq      (%rax), %rdi
	movq      %rdi, (%rcx,%rax)
	subq      $8, %rax
	cmpq      %rsi, %rax
	jne       .L00002759
.L00002769:
	addq      $24, %rsp
	movq      %rdx, %rax
	popq      %rbx
	popq      %rbp
	popq      %r12
	popq      %r13
	popq      %r14
	popq      %r15
	ret       
	.size	divisorsu, .-divisorsu
# ----------------------
.L0000277B:
	.p2align 3
# ----------------------
	.globl	factor_pn_1
	.type	factor_pn_1, @function
factor_pn_1:
	pushq     %r15
	pushq     %r14
	movq      %rdi, %r14
	pushq     %r13
	pushq     %r12
	pushq     %rbp
	xorl      %ebp, %ebp
	pushq     %rbx
	movq      %rsi, %rbx
	movq      %rdi, %rsi
	subq      $40, %rsp
	movq      avma@GOTPCREL(%rip), %rax
	movq      8(%rdi), %rdx
	movq      $-1, %rdi
	movq      (%rax), %rax
	sarq      $62, %rdx
	movq      %rax, 16(%rsp)
	call      addsi_sign@PLT
.L000027BC:
	movq      %rax, %rdi
	call      Z_factor@PLT
.L000027C4:
	movq      %rbx, %rdi
	movq      %rax, %r12
	call      divisorsu@PLT
.L000027CF:
	movq      %rax, %r13
	movq      8(%r14), %rax
	movq      $72057594037927935, %rdx
	andq      %rax, %rdx
	cmpq      $3, %rdx
	je        .L00002A40
.L000027ED:
	movq      $72057594037927935, %r15
	movq      %r15, %rax
	andq      (%r13), %rax
	cmpq      $2, %rax
	jle       .L00002910
.L00002808:
	movq      %rbp, %rax
	movl      $2, %ebx
	andl      $3, %eax
	movq      %rax, 8(%rsp)
	jmp       .L00002880
.L0000281A:
	.p2align 3
.L00002820:
	cmpq      $3, 8(%rsp)
	je        .L00002A00
.L0000282C:
	cmpq      $2, %rbp
	je        .L00002A1A
.L00002836:
	.p2align 4
.L00002840:
	movq      %r14, %rsi
	call      polcyclo_eval@PLT
.L00002848:
	movq      %rax, %rdi
	call      Z_factor@PLT
.L00002850:
	movq      %rax, %rsi
.L00002853:
	movq      cmp_nodata@GOTPCREL(%rip), %rcx
	movq      cmpii@GOTPCREL(%rip), %rdx
	movq      %r12, %rdi
	addq      $1, %rbx
	call      merge_factor@PLT
.L0000286D:
	movq      %rax, %r12
	movq      %r15, %rax
	andq      (%r13), %rax
	cmpq      %rbx, %rax
	jle       .L00002910
.L00002880:
	testq     %rbp, %rbp
	movq      (%r13,%rbx,8), %rdi
	je        .L00002840
.L0000288A:
	movq      %rdi, %rax
	cqto      
	idivq     %rbp
	testq     %rdx, %rdx
	jne       .L00002840
.L00002897:
	cmpq      $1, 8(%rsp)
	jne       .L00002820
.L0000289F:
	testb     $1, %dil
	je        .L0000282C
.L000028A5:
	movq      %rdi, %rsi
	movq      %r14, %rdi
	call      factor_Aurifeuille_prime@PLT
.L000028B0:
	movq      %rax, %rdi
	movq      %rax, 24(%rsp)
	call      Z_factor@PLT
.L000028BD:
	movq      cmp_nodata@GOTPCREL(%rip), %rcx
	movq      cmpii@GOTPCREL(%rip), %rdx
	movq      %r12, %rdi
	movq      %rax, %rsi
	call      merge_factor@PLT
.L000028D6:
	movq      (%r13,%rbx,8), %rdi
	movq      %r14, %rsi
	movq      %rax, %r12
	call      polcyclo_eval@PLT
.L000028E6:
	movq      24(%rsp), %r8
	movq      %rax, %rdi
	movq      %r8, %rsi
	call      diviiexact@PLT
.L000028F6:
	movq      %rax, %rdi
	call      Z_factor@PLT
.L000028FE:
	movq      %rax, %rsi
	jmp       .L00002853
.L00002906:
	.p2align 4
.L00002910:
	movq      %r12, %rdi
	call      copy_bin@PLT
.L00002918:
	movq      %rax, %rbx
	movq      16(%rsp), %rcx
	movq      avma@GOTPCREL(%rip), %rax
	movq      8(%rbx), %rbp
	movq      %rcx, (%rax)
	testq     %rbp, %rbp
	je        .L00002A64
.L00002937:
	movq      bot@GOTPCREL(%rip), %rax
	movq      %rcx, %r13
	movq      (%rbx), %rdx
	movq      %rbp, %r12
	subq      16(%rbx), %r12
	leaq      32(%rbx), %r15
	subq      (%rax), %rcx
	leaq      0(,%rdx,8), %r14
	sarq      $3, %r12
	subq      %r14, %r13
	movq      %rcx, %rax
	shrq      $3, %rax
	cmpq      %rax, %rdx
	jbe       .L00002979
.L0000296D:
	movl      $14, %edi
	xorl      %eax, %eax
	call      pari_err@PLT
.L00002979:
	movq      avma@GOTPCREL(%rip), %rax
	movq      %r15, %rsi
	movq      %r13, %rdi
	movq      %r14, %rdx
	leaq      (%r13,%r12,8), %r12
	movq      %r13, (%rax)
	call      memcpy@PLT
.L00002996:
	movl      24(%rbx), %eax
	movq      %r12, %rsi
	movq      %r12, %rdi
	subq      %rbp, %rsi
	testl     %eax, %eax
	jne       .L00002A30
.L000029AA:
	call      shiftaddress@PLT
.L000029AF:
	movq      PARI_SIGINT_block@GOTPCREL(%rip), %rbp
	movq      %rbx, %rdi
	movl      (%rbp), %r13d
	movl      $1, (%rbp)
	call      free@PLT
.L000029C9:
	testl     %r13d, %r13d
	movl      %r13d, (%rbp)
	jne       .L000029EC
.L000029D2:
	movq      PARI_SIGINT_pending@GOTPCREL(%rip), %rax
	movl      (%rax), %edx
	testl     %edx, %edx
	je        .L000029EC
.L000029DF:
	movl      (%rax), %edi
	movl      $0, (%rax)
	call      raise@PLT
.L000029EC:
	addq      $40, %rsp
	movq      %r12, %rax
	popq      %rbx
	popq      %rbp
	popq      %r12
	popq      %r13
	popq      %r14
	popq      %r15
	ret       
.L000029FE:
	.p2align 3
.L00002A00:
	movq      %rdi, %rax
	andl      $3, %eax
	cmpq      $2, %rax
	je        .L000028A5
.L00002A10:
	cmpq      $2, %rbp
	jne       .L00002840
.L00002A1A:
	movq      %rdi, %rax
	andl      $7, %eax
	cmpq      $4, %rax
	jne       .L00002840
.L00002A2A:
	jmp       .L000028A5
.L00002A2F:
	.p2align 3
.L00002A30:
	call      shiftaddress_canon@PLT
.L00002A35:
	jmp       .L000029AF
.L00002A3A:
	.p2align 3
.L00002A40:
	movq      16(%r14), %rdx
	testq     %rdx, %rdx
	js        .L000027ED
.L00002A4D:
	sarq      $62, %rax
	movq      %rdx, %rbp
	negq      %rdx
	cmpq      $1, %rax
	cmovne    %rdx, %rbp
	jmp       .L000027ED
.L00002A64:
	movq      PARI_SIGINT_block@GOTPCREL(%rip), %rbp
	movq      %rbx, %rdi
	movl      (%rbp), %r12d
	movl      $1, (%rbp)
	call      free@PLT
.L00002A7E:
	testl     %r12d, %r12d
	movl      %r12d, (%rbp)
	jne       .L00002A94
.L00002A87:
	movq      PARI_SIGINT_pending@GOTPCREL(%rip), %rax
	movl      (%rax), %edx
	testl     %edx, %edx
	jne       .L00002AA3
.L00002A94:
	movq      gen_0@GOTPCREL(%rip), %rax
	movq      (%rax), %r12
	jmp       .L000029EC
.L00002AA3:
	movl      (%rax), %edi
	movl      $0, (%rax)
	call      raise@PLT
.L00002AB0:
	jmp       .L00002A94
	.size	factor_pn_1, .-factor_pn_1
# ----------------------
.L00002AB2:
	.p2align 4
# ----------------------
	.globl	corepartial
	.type	corepartial, @function
corepartial:
	pushq     %r15
	pushq     %r14
	pushq     %r13
	pushq     %r12
	pushq     %rbp
	movq      %rsi, %rbp
	pushq     %rbx
	movq      %rdi, %rbx
	subq      $8, %rsp
	movq      (%rdi), %rax
	movq      avma@GOTPCREL(%rip), %r12
	shrq      $57, %rax
	movq      (%r12), %r13
	cmpq      $1, %rax
	je        .L00002AFF
.L00002AEC:
	leaq      .LC18(%rip), %rsi
	movl      $11, %edi
	xorl      %eax, %eax
	call      pari_err@PLT
.L00002AFF:
	movq      %rbp, %rsi
	movq      %rbx, %rdi
	movq      $72057594037927935, %rbp
	call      Z_factor_limit@PLT
.L00002B14:
	movq      8(%rax), %r15
	movq      16(%rax), %r14
	movq      gen_1@GOTPCREL(%rip), %rax
	movq      (%r15), %rsi
	movq      (%rax), %rax
	movq      %rsi, %rdx
	andq      %rbp, %rdx
	cmpq      $1, %rdx
	jle       .L00002B7F
.L00002B35:
	movl      $1, %ebx
	jmp       .L00002B4F
.L00002B3C:
	.p2align 3
.L00002B40:
	movq      %rsi, %rdx
	addq      $1, %rbx
	andq      %rbp, %rdx
	cmpq      %rdx, %rbx
	jge       .L00002B7F
.L00002B4F:
	movq      (%r14,%rbx,8), %rdx
	movq      %rbp, %rcx
	andq      8(%rdx), %rcx
	testb     $1, -8(%rdx,%rcx,8)
	je        .L00002B40
.L00002B61:
	movq      (%r15,%rbx,8), %rsi
	movq      %rax, %rdi
	addq      $1, %rbx
	call      mulii@PLT
.L00002B71:
	movq      (%r15), %rsi
	movq      %rsi, %rdx
	andq      %rbp, %rdx
	cmpq      %rdx, %rbx
	jl        .L00002B4F
.L00002B7F:
	movq      bot@GOTPCREL(%rip), %rdx
	cmpq      (%rdx), %rax
	jb        .L00002B97
.L00002B8B:
	movq      top@GOTPCREL(%rip), %rdx
	cmpq      (%rdx), %rax
	jb        .L00002BB0
.L00002B97:
	movq      %r13, (%r12)
	addq      $8, %rsp
	popq      %rbx
	popq      %rbp
	popq      %r12
	popq      %r13
	popq      %r14
	popq      %r15
	ret       
.L00002BAA:
	.p2align 3
.L00002BB0:
	cmpq      %r13, %rax
	jae       .L00002B97
.L00002BB5:
	movq      $72057594037927935, %rsi
	andq      8(%rax), %rsi
	leaq      0(,%rsi,8), %rdx
	subq      %rdx, %r13
	leaq      -1(%rsi), %rdx
	testq     %rdx, %rdx
	jle       .L00002BEF
.L00002BD7:
	.p2align 4
.L00002BE0:
	movq      (%rax,%rdx,8), %rcx
	movq      %rcx, (%r13,%rdx,8)
	subq      $1, %rdx
	jne       .L00002BE0
.L00002BEF:
	movq      $144115188075855872, %rax
	orq       %rsi, %rax
	movq      %rax, (%r13)
	movq      %r13, (%r12)
	addq      $8, %rsp
	popq      %rbx
	popq      %rbp
	popq      %r12
	movq      %r13, %rax
	popq      %r13
	popq      %r14
	popq      %r15
	ret       
	.size	corepartial, .-corepartial
# ----------------------
.L00002C16:
	.p2align 4
# ----------------------
	.globl	core2partial
	.type	core2partial, @function
core2partial:
	pushq     %r15
	pushq     %r14
	pushq     %r13
	pushq     %r12
	movq      %rsi, %r12
	pushq     %rbp
	pushq     %rbx
	movq      %rdi, %rbx
	subq      $24, %rsp
	movq      (%rdi), %rax
	movq      avma@GOTPCREL(%rip), %rbp
	shrq      $57, %rax
	movq      (%rbp), %r13
	cmpq      $1, %rax
	je        .L00002C5F
.L00002C4C:
	leaq      .LC19(%rip), %rsi
	movl      $11, %edi
	xorl      %eax, %eax
	call      pari_err@PLT
.L00002C5F:
	movq      %r12, %rsi
	movq      %rbx, %rdi
	call      Z_factor_limit@PLT
.L00002C6A:
	movq      %rax, %rdi
	call      core2fa
.L00002C72:
	movq      %rax, %rdi
	call      copy_bin@PLT
.L00002C7A:
	movq      8(%rax), %r12
	movq      %rax, %rbx
	movq      %r13, (%rbp)
	testq     %r12, %r12
	je        .L00002D60
.L00002C8E:
	movq      bot@GOTPCREL(%rip), %rcx
	movq      (%rax), %rax
	movq      %r13, %r15
	movq      %r12, %r14
	subq      16(%rbx), %r14
	leaq      32(%rbx), %rsi
	subq      (%rcx), %r13
	leaq      0(,%rax,8), %rdx
	sarq      $3, %r14
	subq      %rdx, %r15
	shrq      $3, %r13
	cmpq      %r13, %rax
	jbe       .L00002CDF
.L00002CC1:
	movl      $14, %edi
	xorl      %eax, %eax
	movq      %rsi, 8(%rsp)
	movq      %rdx, (%rsp)
	call      pari_err@PLT
.L00002CD6:
	movq      8(%rsp), %rsi
	movq      (%rsp), %rdx
.L00002CDF:
	movq      %r15, %rdi
	movq      %r15, (%rbp)
	leaq      (%r15,%r14,8), %rbp
	call      memcpy@PLT
.L00002CEF:
	movl      24(%rbx), %eax
	movq      %rbp, %rsi
	movq      %rbp, %rdi
	subq      %r12, %rsi
	testl     %eax, %eax
	jne       .L00002D58
.L00002CFF:
	call      shiftaddress@PLT
.L00002D04:
	movq      PARI_SIGINT_block@GOTPCREL(%rip), %r12
	movq      %rbx, %rdi
	movl      (%r12), %r13d
	movl      $1, (%r12)
	call      free@PLT
.L00002D1F:
	testl     %r13d, %r13d
	movl      %r13d, (%r12)
	jne       .L00002D42
.L00002D28:
	movq      PARI_SIGINT_pending@GOTPCREL(%rip), %rax
	movl      (%rax), %edx
	testl     %edx, %edx
	je        .L00002D42
.L00002D35:
	movl      (%rax), %edi
	movl      $0, (%rax)
	call      raise@PLT
.L00002D42:
	addq      $24, %rsp
	movq      %rbp, %rax
	popq      %rbx
	popq      %rbp
	popq      %r12
	popq      %r13
	popq      %r14
	popq      %r15
	ret       
.L00002D54:
	.p2align 3
.L00002D58:
	call      shiftaddress_canon@PLT
.L00002D5D:
	jmp       .L00002D04
.L00002D5F:
	.p2align 3
.L00002D60:
	movq      PARI_SIGINT_block@GOTPCREL(%rip), %rbp
	movq      %rax, %rdi
	movl      (%rbp), %r12d
	movl      $1, (%rbp)
	call      free@PLT
.L00002D7A:
	testl     %r12d, %r12d
	movl      %r12d, (%rbp)
	jne       .L00002D90
.L00002D83:
	movq      PARI_SIGINT_pending@GOTPCREL(%rip), %rax
	movl      (%rax), %edx
	testl     %edx, %edx
	jne       .L00002DA0
.L00002D90:
	movq      gen_0@GOTPCREL(%rip), %rax
	movq      (%rax), %rbp
	jmp       .L00002D42
.L00002D9C:
	.p2align 3
.L00002DA0:
	movl      (%rax), %edi
	movl      $0, (%rax)
	call      raise@PLT
.L00002DAD:
	jmp       .L00002D90
	.size	core2partial, .-core2partial
# ----------------------
.L00002DAF:
	.p2align 3
# ----------------------
	.globl	core
	.type	core, @function
core:
	pushq     %r15
	pushq     %r14
	pushq     %r13
	pushq     %r12
	pushq     %rbp
	pushq     %rbx
	movq      %rdi, %rbx
	subq      $8, %rsp
	movq      (%rdi), %rax
	movq      avma@GOTPCREL(%rip), %r12
	shrq      $57, %rax
	movq      (%r12), %r13
	cmpq      $1, %rax
	je        .L00002DEC
.L00002DD9:
	leaq      .LC20(%rip), %rsi
	movl      $11, %edi
	xorl      %eax, %eax
	call      pari_err@PLT
.L00002DEC:
	movq      %rbx, %rdi
	movq      $72057594037927935, %rbp
	call      Z_factor@PLT
.L00002DFE:
	movq      8(%rax), %r15
	movq      16(%rax), %r14
	movq      gen_1@GOTPCREL(%rip), %rax
	movq      (%r15), %rsi
	movq      (%rax), %rax
	movq      %rsi, %rdx
	andq      %rbp, %rdx
	cmpq      $1, %rdx
	jle       .L00002E6F
.L00002E1F:
	movl      $1, %ebx
	jmp       .L00002E3F
.L00002E26:
	.p2align 4
.L00002E30:
	movq      %rsi, %rdx
	addq      $1, %rbx
	andq      %rbp, %rdx
	cmpq      %rdx, %rbx
	jge       .L00002E6F
.L00002E3F:
	movq      (%r14,%rbx,8), %rdx
	movq      %rbp, %rcx
	andq      8(%rdx), %rcx
	testb     $1, -8(%rdx,%rcx,8)
	je        .L00002E30
.L00002E51:
	movq      (%r15,%rbx,8), %rsi
	movq      %rax, %rdi
	addq      $1, %rbx
	call      mulii@PLT
.L00002E61:
	movq      (%r15), %rsi
	movq      %rsi, %rdx
	andq      %rbp, %rdx
	cmpq      %rdx, %rbx
	jl        .L00002E3F
.L00002E6F:
	movq      bot@GOTPCREL(%rip), %rdx
	cmpq      (%rdx), %rax
	jb        .L00002E87
.L00002E7B:
	movq      top@GOTPCREL(%rip), %rdx
	cmpq      (%rdx), %rax
	jb        .L00002EA0
.L00002E87:
	movq      %r13, (%r12)
	addq      $8, %rsp
	popq      %rbx
	popq      %rbp
	popq      %r12
	popq      %r13
	popq      %r14
	popq      %r15
	ret       
.L00002E9A:
	.p2align 3
.L00002EA0:
	cmpq      %r13, %rax
	jae       .L00002E87
.L00002EA5:
	movq      $72057594037927935, %rsi
	andq      8(%rax), %rsi
	leaq      0(,%rsi,8), %rdx
	subq      %rdx, %r13
	leaq      -1(%rsi), %rdx
	testq     %rdx, %rdx
	jle       .L00002EDF
.L00002EC7:
	.p2align 4
.L00002ED0:
	movq      (%rax,%rdx,8), %rcx
	movq      %rcx, (%r13,%rdx,8)
	subq      $1, %rdx
	jne       .L00002ED0
.L00002EDF:
	movq      $144115188075855872, %rax
	orq       %rsi, %rax
	movq      %rax, (%r13)
	movq      %r13, (%r12)
	addq      $8, %rsp
	popq      %rbx
	popq      %rbp
	popq      %r12
	movq      %r13, %rax
	popq      %r13
	popq      %r14
	popq      %r15
	ret       
	.size	core, .-core
# ----------------------
.L00002F06:
	.p2align 4
# ----------------------
	.globl	core2
	.type	core2, @function
core2:
	pushq     %r15
	pushq     %r14
	pushq     %r13
	pushq     %r12
	pushq     %rbp
	pushq     %rbx
	movq      %rdi, %rbx
	subq      $24, %rsp
	movq      (%rdi), %rax
	movq      avma@GOTPCREL(%rip), %rbp
	shrq      $57, %rax
	movq      (%rbp), %r13
	cmpq      $1, %rax
	je        .L00002F4C
.L00002F39:
	leaq      .LC20(%rip), %rsi
	movl      $11, %edi
	xorl      %eax, %eax
	call      pari_err@PLT
.L00002F4C:
	movq      %rbx, %rdi
	call      Z_factor@PLT
.L00002F54:
	movq      %rax, %rdi
	call      core2fa
.L00002F5C:
	movq      %rax, %rdi
	call      copy_bin@PLT
.L00002F64:
	movq      8(%rax), %r12
	movq      %rax, %rbx
	movq      %r13, (%rbp)
	testq     %r12, %r12
	je        .L00003050
.L00002F78:
	movq      bot@GOTPCREL(%rip), %rcx
	movq      (%rax), %rax
	movq      %r13, %r15
	movq      %r12, %r14
	subq      16(%rbx), %r14
	leaq      32(%rbx), %rsi
	subq      (%rcx), %r13
	leaq      0(,%rax,8), %rdx
	sarq      $3, %r14
	subq      %rdx, %r15
	shrq      $3, %r13
	cmpq      %r13, %rax
	jbe       .L00002FC9
.L00002FAB:
	movl      $14, %edi
	xorl      %eax, %eax
	movq      %rsi, 8(%rsp)
	movq      %rdx, (%rsp)
	call      pari_err@PLT
.L00002FC0:
	movq      8(%rsp), %rsi
	movq      (%rsp), %rdx
.L00002FC9:
	movq      %r15, %rdi
	movq      %r15, (%rbp)
	leaq      (%r15,%r14,8), %rbp
	call      memcpy@PLT
.L00002FD9:
	movl      24(%rbx), %eax
	movq      %rbp, %rsi
	movq      %rbp, %rdi
	subq      %r12, %rsi
	testl     %eax, %eax
	jne       .L00003040
.L00002FE9:
	call      shiftaddress@PLT
.L00002FEE:
	movq      PARI_SIGINT_block@GOTPCREL(%rip), %r12
	movq      %rbx, %rdi
	movl      (%r12), %r13d
	movl      $1, (%r12)
	call      free@PLT
.L00003009:
	testl     %r13d, %r13d
	movl      %r13d, (%r12)
	jne       .L0000302C
.L00003012:
	movq      PARI_SIGINT_pending@GOTPCREL(%rip), %rax
	movl      (%rax), %edx
	testl     %edx, %edx
	je        .L0000302C
.L0000301F:
	movl      (%rax), %edi
	movl      $0, (%rax)
	call      raise@PLT
.L0000302C:
	addq      $24, %rsp
	movq      %rbp, %rax
	popq      %rbx
	popq      %rbp
	popq      %r12
	popq      %r13
	popq      %r14
	popq      %r15
	ret       
.L0000303E:
	.p2align 3
.L00003040:
	call      shiftaddress_canon@PLT
.L00003045:
	jmp       .L00002FEE
.L00003047:
	.p2align 4
.L00003050:
	movq      PARI_SIGINT_block@GOTPCREL(%rip), %rbp
	movq      %rax, %rdi
	movl      (%rbp), %r12d
	movl      $1, (%rbp)
	call      free@PLT
.L0000306A:
	testl     %r12d, %r12d
	movl      %r12d, (%rbp)
	jne       .L00003080
.L00003073:
	movq      PARI_SIGINT_pending@GOTPCREL(%rip), %rax
	movl      (%rax), %edx
	testl     %edx, %edx
	jne       .L00003090
.L00003080:
	movq      gen_0@GOTPCREL(%rip), %rax
	movq      (%rax), %rbp
	jmp       .L0000302C
.L0000308C:
	.p2align 3
.L00003090:
	movl      (%rax), %edi
	movl      $0, (%rax)
	call      raise@PLT
.L0000309D:
	jmp       .L00003080
	.size	core2, .-core2
# ----------------------
.L0000309F:
	.p2align 3
# ----------------------
	.globl	core0
	.type	core0, @function
core0:
	testq     %rsi, %rsi
	jne       .L000030B0
.L000030A5:
	jmp       core@PLT
.L000030AA:
	.p2align 3
.L000030B0:
	jmp       core2@PLT
	.size	core0, .-core0
# ----------------------
.L000030B5:
	.p2align 4
# ----------------------
	.globl	coredisc
	.type	coredisc, @function
coredisc:
	pushq     %rbp
	pushq     %rbx
	subq      $8, %rsp
	movq      avma@GOTPCREL(%rip), %rbx
	movq      (%rbx), %rbp
	call      core@PLT
.L000030D5:
	movq      8(%rax), %rcx
	movq      %rax, %rdi
	movq      %rcx, %rdx
	sarq      $62, %rdx
	testq     %rdx, %rdx
	je        .L00003184
.L000030EC:
	movq      $72057594037927935, %rax
	andq      %rax, %rcx
	movq      -8(%rdi,%rcx,8), %rax
	andl      $3, %eax
	testq     %rdx, %rdx
	js        .L000031A0
.L0000310A:
	cmpq      $1, %rax
	jle       .L000031B0
.L00003114:
	movl      $2, %esi
	call      shifti@PLT
.L0000311E:
	movq      bot@GOTPCREL(%rip), %rdx
	cmpq      (%rdx), %rax
	jb        .L00003190
.L0000312A:
	movq      top@GOTPCREL(%rip), %rdx
	cmpq      (%rdx), %rax
	jae       .L00003190
.L00003136:
	cmpq      %rbp, %rax
	jae       .L00003190
.L0000313B:
	movq      $72057594037927935, %rdi
	andq      8(%rax), %rdi
	movq      %rbp, %rsi
	leaq      0(,%rdi,8), %rdx
	subq      %rdx, %rsi
	leaq      -1(%rdi), %rdx
	testq     %rdx, %rdx
	jle       .L0000316E
.L00003160:
	movq      (%rax,%rdx,8), %rcx
	movq      %rcx, (%rsi,%rdx,8)
	subq      $1, %rdx
	jne       .L00003160
.L0000316E:
	movq      $144115188075855872, %rax
	orq       %rdi, %rax
	movq      %rax, (%rsi)
	movq      %rsi, (%rbx)
	movq      %rsi, %rax
.L00003184:
	addq      $8, %rsp
	popq      %rbx
	popq      %rbp
	ret       
.L0000318B:
	.p2align 3
.L00003190:
	movq      %rbp, (%rbx)
	addq      $8, %rsp
	popq      %rbx
	popq      %rbp
	ret       
.L0000319A:
	.p2align 3
.L000031A0:
	movl      $4, %edx
	subq      %rax, %rdx
	movq      %rdx, %rax
	jmp       .L0000310A
.L000031B0:
	movq      %rdi, %rax
	jmp       .L00003184
	.size	coredisc, .-coredisc
# ----------------------
.L000031B5:
	.p2align 4
# ----------------------
	.globl	coredisc2
	.type	coredisc2, @function
coredisc2:
	pushq     %r15
	pushq     %r14
	pushq     %r13
	pushq     %r12
	pushq     %rbp
	pushq     %rbx
	subq      $8, %rsp
	movq      avma@GOTPCREL(%rip), %rbp
	movq      (%rbp), %r13
	call      core2@PLT
.L000031DE:
	movq      8(%rax), %r12
	movq      16(%rax), %r14
	movq      8(%r12), %rcx
	movq      %rcx, %rdx
	sarq      $62, %rdx
	testq     %rdx, %rdx
	je        .L00003320
.L000031FB:
	movq      $72057594037927935, %rsi
	andq      %rsi, %rcx
	movq      -8(%r12,%rcx,8), %rcx
	andl      $3, %ecx
	testq     %rdx, %rdx
	js        .L00003368
.L00003219:
	cmpq      $1, %rcx
	jle       .L00003320
.L00003223:
	movq      (%rbp), %rbx
	movq      bot@GOTPCREL(%rip), %rsi
	movq      %rbx, %rax
	subq      (%rsi), %rax
	leaq      -24(%rbx), %r15
	cmpq      $23, %rax
	jbe       .L00003350
.L00003242:
	movq      $2449958197289549827, %rax
	movq      %r15, (%rbp)
	movl      $2, %esi
	movq      %r12, %rdi
	movq      %rax, -24(%rbx)
	call      shifti@PLT
.L00003261:
	movq      $-1, %rsi
	movq      %rax, -16(%rbx)
	movq      %r14, %rdi
	call      gmul2n@PLT
.L00003274:
	movq      %rax, -8(%rbx)
	movq      bot@GOTPCREL(%rip), %rax
	cmpq      (%rax), %r15
	jb        .L00003330
.L00003288:
	movq      top@GOTPCREL(%rip), %rax
	cmpq      (%rax), %r15
	jae       .L00003330
.L00003298:
	cmpq      %r13, %r15
	jae       .L00003330
.L000032A1:
	movq      -24(%rbx), %rcx
	movq      %rcx, %rax
	shrq      $57, %rax
	cmpq      $2, %rax
	je        .L000033B8
.L000032B6:
	jg        .L00003380
.L000032BC:
	cmpq      $1, %rax
	jne       .L0000338A
.L000032C6:
	movq      $72057594037927935, %rax
	andq      -16(%rbx), %rax
	leaq      0(,%rax,8), %rdx
	leaq      -1(%rax), %rcx
	subq      %rdx, %r13
	testq     %rcx, %rcx
	jle       .L00003300
.L000032E8:
	.p2align 4
.L000032F0:
	movq      -24(%rbx,%rcx,8), %rsi
	movq      %rsi, (%r13,%rcx,8)
	subq      $1, %rcx
	jne       .L000032F0
.L00003300:
	movq      $144115188075855872, %rdx
	orq       %rax, %rdx
	movq      %r13, %rax
	movq      %rdx, (%r13)
	movq      %r13, (%rbp)
	.p2align 4
.L00003320:
	addq      $8, %rsp
	popq      %rbx
	popq      %rbp
	popq      %r12
	popq      %r13
	popq      %r14
	popq      %r15
	ret       
.L0000332F:
	.p2align 3
.L00003330:
	movq      %r13, (%rbp)
	addq      $8, %rsp
	movq      %r15, %rax
	popq      %rbx
	popq      %rbp
	popq      %r12
	popq      %r13
	popq      %r14
	popq      %r15
	ret       
.L00003346:
	.p2align 4
.L00003350:
	movl      $14, %edi
	xorl      %eax, %eax
	call      pari_err@PLT
.L0000335C:
	jmp       .L00003242
.L00003361:
	.p2align 3
.L00003368:
	movl      $4, %edx
	subq      %rcx, %rdx
	movq      %rdx, %rcx
	jmp       .L00003219
.L00003378:
	.p2align 4
.L00003380:
	subq      $21, %rax
	cmpq      $1, %rax
	jbe       .L000033B8
.L0000338A:
	addq      $8, %rsp
	movq      $72057594037927935, %rax
	movq      %r13, %rdi
	popq      %rbx
	popq      %rbp
	popq      %r12
	popq      %r13
	andq      %rax, %rcx
	movq      %r15, %rdx
	popq      %r14
	leaq      (%r15,%rcx,8), %rsi
	popq      %r15
	jmp       gerepile@PLT
.L000033B4:
	.p2align 3
.L000033B8:
	movq      $72057594037927935, %rax
	andq      %rax, %rcx
	leaq      0(,%rcx,8), %rax
	subq      %rax, %r13
	testq     %rcx, %rcx
	movq      %r13, (%rbp)
	je        .L000033FA
.L000033D9:
	leaq      -8(%rax,%r13), %rcx
	leaq      -8(%r13), %rdi
	subq      %r13, %rbx
	.p2align 3
.L000033E8:
	movq      -24(%rbx,%rcx), %rsi
	subq      $8, %rcx
	movq      %rsi, 8(%rcx)
	cmpq      %rdi, %rcx
	jne       .L000033E8
.L000033FA:
	movq      %r13, %rax
	jmp       .L00003320
	.size	coredisc2, .-coredisc2
# ----------------------
.L00003402:
	.p2align 4
# ----------------------
	.globl	coredisc0
	.type	coredisc0, @function
coredisc0:
	testq     %rsi, %rsi
	jne       .L00003420
.L00003415:
	jmp       coredisc@PLT
.L0000341A:
	.p2align 3
.L00003420:
	jmp       coredisc2@PLT
	.size	coredisc0, .-coredisc0
# ----------------------
	.local	_maxprime
	.comm	_maxprime,8,8
# ----------------------
	.ident	"GCC: (Ubuntu 4.8.4-2ubuntu1~14.04) 4.8.4"
	.section	.note.GNU-stack,"",@progbits
