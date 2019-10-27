	.file	"arith2.c"
	.section       .rodata.cst4,"aM",@progbits,4
	.align 4
.LC1:
	.long	1148846080
	.align 4
.LC5:
	.long	1065353216
	.align 4
.LC8:
	.long	1056964608
# ----------------------
	.section       .rodata.cst8,"aM",@progbits,8
	.align 8
.LC6:
	.long	-687194767
	.long	1072787619
	.align 8
.LC9:
	.long	171798692
	.long	1073914839
	.align 8
.LC10:
	.long	-1717986918
	.long	1072798105
# ----------------------
	.data
	.local	cache_model
	.type	cache_model, @object
cache_model:
	.long	64512
	.long	-2061584302
	.long	1071141355
	.long	-1924145349
	.long	1066561175
	.size	cache_model, 20
# ----------------------
.LD00000014:
	.long	0
# ----------------------
	.align 8
	.local	slow2_in_roots
	.type	slow2_in_roots, @object
slow2_in_roots:
	.long	1889785610
	.long	1071057469
	.size	slow2_in_roots, 8
# ----------------------
	.section       .rodata.str1.4,"aMS",@progbits,1
.LC14:
	.string	"denominators not allowed in divisors"
# ----------------------
.LC00000025.str1.4:
	.zero	3
	.align 4
.LC15:
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
.LC11:
	.string	"Too large primelimit"
.LC12:
	.string	"lg()"
.LC13:
	.string	"divisors"
.LC16:
	.string	"corepartial"
.LC17:
	.string	"core2partial"
.LC18:
	.string	"core"
# ----------------------
	.text
	.local	core2fa
	.type	core2fa, @function
core2fa:
	pushl     %ebp
	pushl     %edi
	pushl     %esi
	pushl     %ebx
	call      __i686.get_pc_thunk.bx
.L00000009:
	addl      $_GLOBAL_OFFSET_TABLE_, %ebx
	subl      $60, %esp
	movl      4(%eax), %ebp
	movl      8(%eax), %eax
	movl      %eax, 36(%esp)
	movl      gen_1@GOT(%ebx), %eax
	movl      (%eax), %eax
	movl      %eax, 40(%esp)
	movl      (%ebp), %eax
	movl      40(%esp), %edx
	andl      $16777215, %eax
	cmpl      $1, %eax
	movl      %edx, 32(%esp)
	jle       .L00000100
.L00000041:
	leal      .LC0@GOTOFF(%ebx), %edx
	movl      $1, %esi
	movl      %edx, 44(%esp)
	jmp       .L000000B8
.L00000052:
	.p2align 3
.L00000058:
	andl      $16777215, %edx
	movl      8(%ecx), %edi
	cmpl      $3, %edx
	jg        .L00000150
.L0000006A:
	movl      %edi, %edx
	shrl      $31, %edx
	testb     %dl, %dl
	jne       .L00000150
.L00000077:
	movl      %edi, %edx
	negl      %edx
	testl     %eax, %eax
	cmovle    %edx, %edi
	testl     $1, %edi
	je        .L000000A0
.L00000088:
	movl      (%ebp,%esi,4), %eax
	movl      %eax, 4(%esp)
	movl      40(%esp), %eax
	movl      %eax, (%esp)
	call      mulii@PLT
.L0000009C:
	movl      %eax, 40(%esp)
.L000000A0:
	cmpl      $1, %edi
	jne       .L00000178
.L000000A9:
	movl      (%ebp), %eax
	addl      $1, %esi
	andl      $16777215, %eax
	cmpl      %esi, %eax
	jle       .L00000100
.L000000B8:
	movl      36(%esp), %edx
	movl      (%edx,%esi,4), %ecx
	movl      4(%ecx), %edx
	movl      %edx, %eax
	sarl      $30, %eax
	testl     %eax, %eax
	jne       .L00000058
.L000000CB:
	xorl      %edi, %edi
.L000000CD:
	movl      %edi, 4(%esp)
	movl      (%ebp,%esi,4), %eax
	addl      $1, %esi
	movl      %eax, (%esp)
	call      powiu@PLT
.L000000E0:
	movl      %eax, 4(%esp)
	movl      32(%esp), %eax
	movl      %eax, (%esp)
	call      mulii@PLT
.L000000F0:
	movl      %eax, 32(%esp)
	movl      (%ebp), %eax
	andl      $16777215, %eax
	cmpl      %esi, %eax
	jg        .L000000B8
.L00000100:
	movl      avma@GOT(%ebx), %ebp
	movl      bot@GOT(%ebx), %eax
	movl      (%ebp), %edi
	movl      %edi, %edx
	subl      (%eax), %edx
	leal      -12(%edi), %esi
	cmpl      $11, %edx
	ja        .L00000127
.L0000011B:
	movl      $14, (%esp)
	call      pari_err@PLT
.L00000127:
	movl      40(%esp), %eax
	movl      %esi, (%ebp)
	movl      $570425347, -12(%edi)
	movl      %eax, 4(%esi)
	movl      32(%esp), %eax
	movl      %eax, 8(%esi)
	addl      $60, %esp
	movl      %esi, %eax
	popl      %ebx
	popl      %esi
	popl      %edi
	popl      %ebp
	ret       
.L00000149:
	.p2align 4
.L00000150:
	movl      44(%esp), %edx
	movl      %eax, 28(%esp)
	movl      $15, (%esp)
	movl      %edx, 4(%esp)
	call      pari_err@PLT
.L00000168:
	movl      28(%esp), %eax
	jmp       .L00000077
.L00000171:
	.p2align 3
.L00000178:
	sarl      $1, %edi
	jmp       .L000000CD
	.size	core2fa, .-core2fa
# ----------------------
.L0000017F:
	.p2align 3
# ----------------------
	.globl	set_optimize
	.type	set_optimize, @function
set_optimize:
	subl      $76, %esp
	movl      %esi, 64(%esp)
	movl      80(%esp), %esi
	movl      %ebx, 60(%esp)
	call      __i686.get_pc_thunk.bx
.L00000194:
	addl      $_GLOBAL_OFFSET_TABLE_, %ebx
	movl      %edi, 68(%esp)
	movl      84(%esp), %edi
	cmpl      $2, %esi
	movl      %ebp, 72(%esp)
	je        .L000002E8
.L000001AF:
	jg        .L00000240
.L000001B5:
	cmpl      $1, %esi
	movl      cache_model@GOTOFF(%ebx), %eax
	je        .L000001D8
.L000001C0:
	leal      .LC2@GOTOFF(%ebx), %eax
	movl      %eax, 4(%esp)
	movl      $5, (%esp)
	call      pari_err@PLT
.L000001D6:
	xorl      %eax, %eax
.L000001D8:
	testl     %edi, %edi
	je        .L00000228
.L000001DC:
	movl      4(%edi), %edx
	xorl      %ebp, %ebp
	andl      $16777215, %edx
	cmpl      $2, %edx
	je        .L00000213
.L000001EC:
	cmpl      $3, %edx
	je        .L000002B8
.L000001F5:
	leal      .LC3@GOTOFF(%ebx), %edx
	movl      %eax, 28(%esp)
	movl      %edx, 4(%esp)
	movl      $15, (%esp)
	call      pari_err@PLT
.L0000020F:
	movl      28(%esp), %eax
.L00000213:
	cmpl      $2, %esi
	je        .L000002C4
.L0000021C:
	jg        .L00000288
.L0000021E:
	cmpl      $1, %esi
	je        .L00000338
.L00000227:
	.p2align 3
.L00000228:
	movl      60(%esp), %ebx
	movl      64(%esp), %esi
	movl      68(%esp), %edi
	movl      72(%esp), %ebp
	addl      $76, %esp
	ret       
.L0000023C:
	.p2align 3
.L00000240:
	cmpl      $3, %esi
	je        .L00000300
.L00000249:
	cmpl      $4, %esi
	jne       .L000001C0
.L00000252:
	flds      .LC1@GOTOFF(%ebx)
	fmull     cache_model@GOTOFF+12(%ebx)
.L0000025E:
	fnstcw    38(%esp)
	movzwl    38(%esp), %eax
	movb      $12, %ah
	movw      %ax, 36(%esp)
	fldcw     36(%esp)
	fistpl    32(%esp)
	fldcw     38(%esp)
	movl      32(%esp), %eax
	jmp       .L000001D8
.L00000283:
	.p2align 3
.L00000288:
	cmpl      $3, %esi
	je        .L00000318
.L00000291:
	cmpl      $4, %esi
	jne       .L00000228
.L00000296:
	xorl      %edi, %edi
	movl      %ebp, 40(%esp)
	movl      %edi, 44(%esp)
	fildq     40(%esp)
	fdivs     .LC1@GOTOFF(%ebx)
	fstpl     cache_model@GOTOFF+12(%ebx)
	jmp       .L00000228
.L000002B5:
	.p2align 3
.L000002B8:
	cmpl      $2, %esi
	movl      8(%edi), %ebp
	jne       .L0000021C
.L000002C4:
	xorl      %edi, %edi
	movl      %ebp, 40(%esp)
	movl      %edi, 44(%esp)
	fildq     40(%esp)
	fdivs     .LC1@GOTOFF(%ebx)
	fstpl     slow2_in_roots@GOTOFF(%ebx)
	jmp       .L00000228
.L000002E3:
	.p2align 3
.L000002E8:
	flds      .LC1@GOTOFF(%ebx)
	fmull     slow2_in_roots@GOTOFF(%ebx)
	jmp       .L0000025E
.L000002F9:
	.p2align 4
.L00000300:
	flds      .LC1@GOTOFF(%ebx)
	fmull     cache_model@GOTOFF+4(%ebx)
	jmp       .L0000025E
.L00000311:
	.p2align 3
.L00000318:
	xorl      %edi, %edi
	movl      %ebp, 40(%esp)
	movl      %edi, 44(%esp)
	fildq     40(%esp)
	fdivs     .LC1@GOTOFF(%ebx)
	fstpl     cache_model@GOTOFF+4(%ebx)
	jmp       .L00000228
.L00000337:
	.p2align 3
.L00000338:
	movl      %ebp, cache_model@GOTOFF(%ebx)
	jmp       .L00000228
	.size	set_optimize, .-set_optimize
# ----------------------
.L00000343:
	.p2align 4
# ----------------------
	.globl	initprimes0
	.type	initprimes0, @function
initprimes0:
	pushl     %ebp
	pushl     %edi
	pushl     %esi
	pushl     %ebx
	subl      $204, %esp
	movl      224(%esp), %edi
	call      __i686.get_pc_thunk.bx
.L00000366:
	addl      $_GLOBAL_OFFSET_TABLE_, %ebx
	cmpl      $131072, %edi
	jbe       .L0000092C
.L00000378:
	movl      %edi, %ebp
	xorl      %edx, %edx
	orl       $1, %ebp
	movl      %ebp, 160(%esp)
	movl      %edx, 164(%esp)
	fildq     160(%esp)
	fstl      72(%esp)
	fstpl     (%esp)
	call      log@PLT
.L000003A0:
	fldl      72(%esp)
	fmull     .LC6@GOTOFF(%ebx)
	fnstcw    174(%esp)
	movzwl    174(%esp), %eax
	fdivp     %st, %st(1)
	movb      $12, %ah
	movw      %ax, 172(%esp)
	fldcw     172(%esp)
	fistpl    168(%esp)
	fldcw     174(%esp)
	movl      168(%esp), %eax
	addl      $146, %eax
	jne       .L000007C2
.L000003EC:
	movl      DEBUGMEM@GOT(%ebx), %eax
	movl      (%eax), %eax
	testl     %eax, %eax
	je        .L0000040E
.L000003F8:
	leal      .LC7@GOTOFF(%ebx), %eax
	movl      %eax, 4(%esp)
	movl      $0, (%esp)
	call      pari_warn@PLT
.L0000040E:
	movl      PARI_SIGINT_block@GOT(%ebx), %ecx
	xorl      %esi, %esi
	movl      $0, 152(%esp)
	movl      $2, 112(%esp)
	movl      $0, 140(%esp)
	movl      %ecx, 116(%esp)
.L00000438:
	fldl      72(%esp)
	fsqrt     
	fucomi    %st(0), %st
	jp        .L00000F11
.L00000446:
	fnstcw    174(%esp)
	movzwl    174(%esp), %eax
	movb      $12, %ah
	movw      %ax, 172(%esp)
	fldcw     172(%esp)
	fistpq    160(%esp)
	fldcw     174(%esp)
	movl      160(%esp), %eax
	movl      %eax, 88(%esp)
	leal      188(%esp), %eax
	orl       $1, 88(%esp)
	movl      88(%esp), %edx
	movl      %eax, 8(%esp)
	leal      184(%esp), %eax
	movl      %eax, 4(%esp)
	movl      %edx, (%esp)
	call      initprimes0@PLT
.L000004A6:
	movl      %esi, (%esp)
	movl      %eax, %edi
	movl      184(%esp), %eax
	movl      %edi, 4(%esp)
	movl      %eax, 8(%esp)
	call      memcpy@PLT
.L000004BF:
	movl      116(%esp), %ecx
	movl      (%ecx), %esi
	movl      $1, (%ecx)
	movl      %edi, (%esp)
	call      free@PLT
.L000004D3:
	movl      116(%esp), %ecx
	testl     %esi, %esi
	movl      %esi, (%ecx)
	jne       .L000004F9
.L000004DD:
	movl      PARI_SIGINT_pending@GOT(%ebx), %eax
	movl      (%eax), %edx
	testl     %edx, %edx
	je        .L000004F9
.L000004E9:
	movl      (%eax), %edx
	movl      $0, (%eax)
	movl      %edx, (%esp)
	call      raise@PLT
.L000004F9:
	movl      184(%esp), %eax
	movl      140(%esp), %edx
	subl      88(%esp), %ebp
	fldl      slow2_in_roots@GOTOFF(%ebx)
	fldl      cache_model@GOTOFF+4(%ebx)
	leal      -1(%edx,%eax), %eax
	movl      %eax, 128(%esp)
	movl      cache_model@GOTOFF(%ebx), %eax
	shrl      $1, %ebp
	movl      %ebp, %esi
	addl      $1, %esi
	fstpl     120(%esp)
	cmpl      %eax, %esi
	fldl      cache_model@GOTOFF+12(%ebx)
	movl      %ebp, 92(%esp)
	jbe       .L000005AA
.L00000541:
	movl      88(%esp), %edx
	xorl      %ecx, %ecx
	fnstcw    174(%esp)
	movl      %ecx, 164(%esp)
	movl      %edx, 160(%esp)
	movzwl    174(%esp), %edx
	fildq     160(%esp)
	fmulp     %st, %st(2)
	fxch      %st(1)
	movb      $12, %dh
	movw      %dx, 172(%esp)
	fldcw     172(%esp)
	fistpq    160(%esp)
	fldcw     174(%esp)
	movl      160(%esp), %edx
	movl      %edx, %ecx
	leal      (%edx,%edx,4), %edx
	addl      %edx, %edx
	cmpl      %edx, %eax
	jbe       .L00000A95
.L000005A4:
	fstp      %st(0)
	movl      %eax, %esi
	jmp       .L000005AE
.L000005AA:
	fstp      %st(0)
	fstp      %st(0)
.L000005AE:
	movl      bot@GOT(%ebx), %eax
	leal      -1(%esi), %ecx
	movl      %ecx, %edx
	movl      %ecx, 80(%esp)
	xorl      %ecx, %ecx
	movl      (%eax), %edi
	movl      avma@GOT(%ebx), %eax
	addl      %edi, %edx
	cmpl      %edx, (%eax)
	movl      %edi, 148(%esp)
	setbe     %cl
	testl     %ecx, %ecx
	movl      %ecx, 156(%esp)
	jne       .L00000C6D
.L000005E4:
	movl      88(%esp), %eax
	subl      188(%esp), %eax
	movl      88(%esp), %ecx
	movl      128(%esp), %esi
	shrl      $1, %eax
	notl      %eax
	addl      %edi, %eax
	addl      $2, %ecx
	movl      %eax, 88(%esp)
	movl      92(%esp), %eax
	movl      %ecx, 96(%esp)
	testl     %eax, %eax
	je        .L00000844
.L00000617:
	movl      80(%esp), %ebp
	movl      140(%esp), %eax
	movl      %esi, 120(%esp)
	addl      %edi, %ebp
	movl      %ebp, 128(%esp)
	movl      $3, %ebp
	addl      $1, %eax
	movl      %ebp, 104(%esp)
	movl      112(%esp), %ebp
	movl      %eax, 144(%esp)
.L00000646:
	movl      92(%esp), %edx
	cmpl      %edx, 80(%esp)
	ja        .L000008F5
.L00000654:
	movl      80(%esp), %eax
	addl      %edi, %eax
	movl      %eax, 132(%esp)
	movl      80(%esp), %eax
	subl      %eax, %edx
	movl      %edx, 92(%esp)
	movl      %eax, %edx
.L0000066D:
	movl      104(%esp), %eax
	leal      (%ecx,%edx,2), %edx
	movl      %edx, 96(%esp)
	imull     %eax, %eax
	cmpl      %eax, %edx
	movzbl    (%ebp), %eax
	jb        .L00000A88
.L00000687:
	testb     %al, %al
	movb      $0, 112(%esp)
	je        .L000006CF
.L00000690:
	movl      %edi, 72(%esp)
	movl      %ebp, %edx
	movl      96(%esp), %edi
	movl      104(%esp), %esi
	jmp       .L000006AE
.L000006A0:
	movzbl    (%ebp), %eax
	testb     %al, %al
	je        .L0000091A
.L000006AC:
	movl      %ebp, %edx
.L000006AE:
	movzbl    %al, %eax
	addl      $1, %ebp
	addl      %eax, %esi
	movl      %esi, %eax
	imull     %esi, %eax
	cmpl      %edi, %eax
	jbe       .L000006A0
.L000006BF:
	movzbl    1(%edx), %edx
	movl      72(%esp), %edi
	movl      %esi, 104(%esp)
	movb      %dl, 112(%esp)
.L000006CF:
	movl      80(%esp), %edx
	movb      $0, (%ebp)
	movl      %ecx, 68(%esp)
	movl      $0, 4(%esp)
	movl      %edx, 8(%esp)
	movl      %edi, (%esp)
	call      memset@PLT
.L000006EF:
	movl      68(%esp), %ecx
	movl      80(%esp), %edx
	movl      144(%esp), %eax
	movl      %ebp, 136(%esp)
	shrl      $1, %ecx
	addl      80(%esp), %ecx
	subl      $1, %edx
	movl      %eax, %esi
	movl      %edx, %ebp
	movl      %ecx, 72(%esp)
	movl      $3, %ecx
	.p2align 3
.L00000720:
	movl      %ecx, %eax
	xorl      %edx, %edx
	shrl      $1, %eax
	addl      72(%esp), %eax
	divl      %ecx
	movl      %ebp, %eax
	subl      %edx, %eax
	js        .L00000740
.L00000732:
	.p2align 3
.L00000738:
	movb      $1, (%edi,%eax)
	subl      %ecx, %eax
	jns       .L00000738
.L00000740:
	addl      $1, %esi
	movzbl    (%esi), %eax
	addl      %eax, %ecx
	testl     %eax, %eax
	jne       .L00000720
.L0000074C:
	movzbl    112(%esp), %ecx
	movl      %edi, %eax
	movl      136(%esp), %ebp
	movl      120(%esp), %esi
	movb      %cl, (%ebp)
	movl      132(%esp), %ecx
	movb      $0, (%ecx)
	movl      128(%esp), %ecx
	.p2align 3
.L00000778:
	cmpb      $0, (%eax)
	jne       .L000007BD
.L0000077D:
	cmpl      %ecx, %eax
	jae       .L00000828
.L00000785:
	movl      %eax, %edx
	subl      88(%esp), %edx
	movl      %edx, 72(%esp)
	addl      %edx, %edx
	cmpl      $254, %edx
	jle       .L000007B4
.L00000799:
	.p2align 4
.L000007A0:
	subl      $255, %edx
	movb      $255, (%esi)
	addl      $1, %esi
	cmpl      $254, %edx
	jg        .L000007A0
.L000007B4:
	movb      %dl, (%esi)
	addl      $1, %esi
	movl      %eax, 88(%esp)
.L000007BD:
	addl      $1, %eax
	jmp       .L00000778
.L000007C2:
	movl      PARI_SIGINT_block@GOT(%ebx), %ecx
	movl      (%ecx), %esi
	movl      $1, (%ecx)
	movl      %ecx, 116(%esp)
	movl      %eax, (%esp)
	call      malloc@PLT
.L000007DC:
	movl      116(%esp), %ecx
	testl     %esi, %esi
	movl      %esi, (%ecx)
	movl      %eax, 140(%esp)
	jne       .L000007FD
.L000007ED:
	movl      PARI_SIGINT_pending@GOT(%ebx), %eax
	movl      (%eax), %edx
	testl     %edx, %edx
	jne       .L00000EFC
.L000007FD:
	movl      140(%esp), %eax
	testl     %eax, %eax
	je        .L00000ED6
.L0000080C:
	movl      140(%esp), %esi
	movl      %esi, %eax
	addl      $2, %eax
	movl      %eax, 112(%esp)
	movl      %esi, 152(%esp)
	jmp       .L00000438
.L00000828:
	movl      92(%esp), %eax
	movl      80(%esp), %ecx
	subl      %ecx, 88(%esp)
	movl      96(%esp), %ecx
	testl     %eax, %eax
	movl      %esi, 120(%esp)
	jne       .L00000646
.L00000844:
	movl      148(%esp), %eax
	subl      88(%esp), %eax
	movl      228(%esp), %ebp
	movb      $0, (%esi)
	addl      $1, %esi
	addl      %eax, %eax
	subl      %eax, %ecx
	movl      %ecx, %eax
	movl      %ecx, 188(%esp)
	movl      232(%esp), %ecx
	subl      152(%esp), %esi
	movl      %esi, (%ebp)
	movl      %eax, (%ecx)
	movl      156(%esp), %ecx
	testl     %ecx, %ecx
	jne       .L00000CB4
.L0000088B:
	movl      140(%esp), %edx
	movl      116(%esp), %ebp
	movl      228(%esp), %ecx
	testl     %edx, %edx
	movl      (%ebp), %edi
	movl      (%ecx), %eax
	movl      $1, (%ebp)
	je        .L00000E6D
.L000008B1:
	movl      %eax, 4(%esp)
	movl      140(%esp), %eax
	movl      %eax, (%esp)
	call      realloc@PLT
.L000008C4:
	movl      %eax, %esi
.L000008C6:
	movl      116(%esp), %ecx
	testl     %edi, %edi
	movl      %edi, (%ecx)
	jne       .L000008E0
.L000008D0:
	movl      PARI_SIGINT_pending@GOT(%ebx), %eax
	movl      (%eax), %edx
	testl     %edx, %edx
	jne       .L00000A3D
.L000008E0:
	testl     %esi, %esi
	je        .L00000A55
.L000008E8:
	addl      $204, %esp
	movl      %esi, %eax
	popl      %ebx
	popl      %esi
	popl      %edi
	popl      %ebp
	ret       
.L000008F5:
	movl      %edx, %eax
	addl      %edi, %edx
	movl      %edx, 128(%esp)
	movl      %edx, 132(%esp)
	movl      %eax, %edx
	movl      %eax, 80(%esp)
	movl      $0, 92(%esp)
	jmp       .L0000066D
.L0000091A:
	movl      72(%esp), %edi
	movl      %esi, 104(%esp)
	movb      $0, 112(%esp)
	jmp       .L000006CF
.L0000092C:
	movl      PARI_SIGINT_block@GOT(%ebx), %ecx
	shrl      $1, %edi
	leal      2(%edi), %ebp
	movl      (%ecx), %edx
	movl      $1, (%ecx)
	movl      %ecx, 116(%esp)
	movl      %ebp, (%esp)
	movl      %edx, 68(%esp)
	call      malloc@PLT
.L0000094F:
	movl      68(%esp), %edx
	movl      116(%esp), %ecx
	testl     %edx, %edx
	movl      %edx, (%ecx)
	movl      %eax, %esi
	jne       .L0000096F
.L0000095F:
	movl      PARI_SIGINT_pending@GOT(%ebx), %eax
	movl      (%eax), %edx
	testl     %edx, %edx
	jne       .L00000EA5
.L0000096F:
	testl     %esi, %esi
	je        .L00000E7C
.L00000977:
	movl      %ebp, 8(%esp)
	movl      $0, 4(%esp)
	movl      %esi, (%esp)
	call      memset@PLT
.L0000098B:
	addl      %esi, %edi
	jb        .L000009AF
.L0000098F:
	movl      %esi, %ecx
	movl      %esi, %edx
	movl      $1, %eax
.L00000998:
	addl      %eax, %ecx
	addl      $1, %edx
	addl      $2, %eax
	addl      %eax, %ecx
	cmpb      $0, (%edx)
	jne       .L00000998
.L000009A7:
	cmpl      %ecx, %edi
	jae       .L00000A6E
.L000009AF:
	leal      1(%esi), %eax
	movb      $2, (%esi)
	leal      2(%esi), %edx
	movl      %eax, %ecx
	movb      $1, 1(%esi)
.L000009BE:
	addl      $1, %eax
	cmpb      $0, (%eax)
	jne       .L000009BE
.L000009C6:
	cmpl      %eax, %edi
	jb        .L000009E5
.L000009CA:
	movl      %eax, %ebp
	subl      %ecx, %ebp
	movl      %ebp, %ecx
	addl      %ecx, %ecx
	movb      %cl, (%edx)
	movl      %eax, %ecx
	addl      $1, %eax
	addl      $1, %edx
	cmpb      $0, (%eax)
	jne       .L000009BE
.L000009E1:
	cmpl      %eax, %edi
	jae       .L000009CA
.L000009E5:
	movl      228(%esp), %ebp
	subl      %esi, %ecx
	movb      $0, (%edx)
	addl      $1, %edx
	subl      %esi, %edx
	leal      1(%ecx,%ecx), %eax
	movl      232(%esp), %ecx
	movl      %edx, (%ebp)
	movl      116(%esp), %ebp
	movl      %eax, (%ecx)
	movl      (%ebp), %edi
	movl      $1, (%ebp)
	movl      %esi, (%esp)
	movl      %edx, 4(%esp)
	call      realloc@PLT
.L00000A20:
	testl     %edi, %edi
	movl      %edi, (%ebp)
	movl      %eax, %esi
	jne       .L000008E0
.L00000A2D:
	movl      PARI_SIGINT_pending@GOT(%ebx), %eax
	movl      (%eax), %edx
	testl     %edx, %edx
	je        .L000008E0
.L00000A3D:
	movl      (%eax), %edx
	movl      $0, (%eax)
	movl      %edx, (%esp)
	call      raise@PLT
.L00000A4D:
	testl     %esi, %esi
	jne       .L000008E8
.L00000A55:
	movl      $28, (%esp)
	call      pari_err@PLT
.L00000A61:
	addl      $204, %esp
	movl      %esi, %eax
	popl      %ebx
	popl      %esi
	popl      %edi
	popl      %ebp
	ret       
.L00000A6E:
	movl      %ecx, %ebp
.L00000A70:
	movb      $1, (%ebp)
	addl      %eax, %ebp
	cmpl      %ebp, %edi
	jae       .L00000A70
.L00000A7A:
	cmpl      %ecx, %edi
	jae       .L00000998
.L00000A82:
	jmp       .L000009AF
.L00000A87:
	.p2align 3
.L00000A88:
	movb      %al, 112(%esp)
	.p2align 3
	jmp       .L000006CF
.L00000A95:
	xorl      %edx, %edx
	movl      %edx, 164(%esp)
	xorl      %edx, %edx
	movl      %eax, 160(%esp)
	fildq     160(%esp)
	fstpl     96(%esp)
	fldz      
	fld       %st(0)
	fldl      96(%esp)
	fdivr     %st(1), %st
	movl      %ecx, 160(%esp)
	movl      %edx, 164(%esp)
	fld1      
	fsub      %st, %st(1)
	fxch      %st(1)
	fstpl     80(%esp)
	fildq     160(%esp)
	fdivl     96(%esp)
	fstpl     72(%esp)
	fldl      80(%esp)
	faddl     72(%esp)
	fstpl     72(%esp)
	fldl      80(%esp)
	fmull     72(%esp)
	fstpl     104(%esp)
	fldl      80(%esp)
	faddl     72(%esp)
	fxch      %st(1)
	fdivl     120(%esp)
	fldl      72(%esp)
	fsubl     80(%esp)
	fmulp     %st, %st(1)
	fsubrp    %st, %st(1)
	fmuls     .LC8@GOTOFF(%ebx)
	fld       %st(0)
	fmul      %st(1), %st
	fsubl     104(%esp)
	fucomi    %st(2), %st
	fstp      %st(2)
	jbe       .L00000B41
.L00000B29:
	fstp      %st(2)
	fxch      %st(1)
	fld       %st(2)
	fmul      %st(3), %st
	fld       %st(1)
	fadd      %st(2), %st
	fmul      %st(4), %st
	faddp     %st, %st(1)
	faddl     104(%esp)
	fxch      %st(2)
	fxch      %st(1)
.L00000B41:
	fldz      
	fld       %st(4)
	fxch      %st(1)
	fucomi    %st(3), %st
	jae       .L00000BD8
.L00000B4F:
	fstp      %st(1)
	xorl      %edx, %edx
	movl      %esi, 160(%esp)
	movl      %edx, 164(%esp)
	fildq     160(%esp)
	fdivl     96(%esp)
	fxch      %st(4)
	fucomi    %st(1), %st
	jae       .L00000DCC
.L00000B76:
	fstp      %st(1)
.L00000B78:
	fldz      
	fucomi    %st(1), %st
	fstp      %st(1)
	jb        .L00000B9E
.L00000B80:
	fld       %st(3)
	fmul      %st(4), %st
	fld       %st(2)
	fadd      %st(3), %st
	fmul      %st(5), %st
	faddp     %st, %st(1)
	faddl     104(%esp)
	fxch      %st(1)
	fucomip   %st(1), %st
	fstp      %st(0)
	jae       .L00000BE4
.L00000B98:
	fstp      %st(2)
	fxch      %st(1)
	jmp       .L00000BA4
.L00000B9E:
	fstp      %st(0)
	fstp      %st(2)
	fxch      %st(1)
.L00000BA4:
	fld       %st(1)
	fsqrt     
	fucomi    %st(0), %st
	jnp       .L00000BCE
.L00000BAC:
	fstp      %st(0)
	fxch      %st(1)
	fstpl     (%esp)
	fxch      %st(1)
	fstpl     16(%esp)
	fstpl     32(%esp)
	call      sqrt@PLT
.L00000BC2:
	fldl      32(%esp)
	fldl      16(%esp)
	fxch      %st(2)
	jmp       .L00000BD2
.L00000BCE:
	fstp      %st(2)
	fxch      %st(1)
.L00000BD2:
	fsubp     %st, %st(1)
	fxch      %st(1)
	jmp       .L00000C04
.L00000BD8:
	fstp      %st(0)
	fstp      %st(3)
	fstp      %st(0)
	fstp      %st(0)
	fxch      %st(1)
	jmp       .L00000C04
.L00000BE4:
	fstp      %st(0)
	fstp      %st(0)
	fxch      %st(1)
	jmp       .L00000C04
.L00000BEC:
	.p2align 3
.L00000BF0:
	fstp      %st(0)
	fstp      %st(0)
	fstp      %st(0)
	fstp      %st(0)
	fxch      %st(1)
	jmp       .L00000C04
.L00000BFC:
	fstp      %st(0)
	fstp      %st(0)
	fstp      %st(0)
	fxch      %st(1)
.L00000C04:
	fucomi    %st(1), %st
	jp        .L00000D4D
.L00000C0C:
	jne       .L00000D4D
.L00000C12:
	fstp      %st(1)
	fldz      
	fldl      80(%esp)
	fucomip   %st(1), %st
	fstp      %st(0)
	ja        .L00000CFA
.L00000C24:
	fadds     .LC5@GOTOFF(%ebx)
.L00000C2A:
	fnstcw    174(%esp)
	fmull     96(%esp)
	movzwl    174(%esp), %eax
	movb      $12, %ah
	movw      %ax, 172(%esp)
	fldcw     172(%esp)
	fistpq    160(%esp)
	fldcw     174(%esp)
	movl      160(%esp), %eax
	cmpl      %eax, %esi
	cmovae    %eax, %esi
	jmp       .L000005AE
.L00000C6D:
	testl     %esi, %esi
	jne       .L00000E10
.L00000C75:
	movl      DEBUGMEM@GOT(%ebx), %eax
	xorl      %edi, %edi
	movl      $0, 148(%esp)
	movl      (%eax), %eax
	testl     %eax, %eax
	je        .L000005E4
.L00000C92:
	leal      .LC7@GOTOFF(%ebx), %eax
	movl      %eax, 4(%esp)
	movl      $0, (%esp)
	call      pari_warn@PLT
.L00000CA8:
	movl      148(%esp), %edi
	jmp       .L000005E4
.L00000CB4:
	movl      116(%esp), %ebp
	movl      (%ebp), %esi
	movl      $1, (%ebp)
	movl      %edi, (%esp)
	call      free@PLT
.L00000CCA:
	testl     %esi, %esi
	movl      %esi, (%ebp)
	jne       .L0000088B
.L00000CD5:
	movl      PARI_SIGINT_pending@GOT(%ebx), %eax
	movl      (%eax), %edx
	testl     %edx, %edx
	je        .L0000088B
.L00000CE5:
	movl      (%eax), %edx
	movl      $0, (%eax)
	movl      %edx, (%esp)
	call      raise@PLT
.L00000CF5:
	jmp       .L0000088B
.L00000CFA:
	fldl      120(%esp)
	fstpl     8(%esp)
	fstl      (%esp)
	fstpl     16(%esp)
	call      pow@PLT
.L00000D0E:
	fldl      16(%esp)
	fldl      72(%esp)
	fadd      %st(1), %st
	fmull     .LC9@GOTOFF(%ebx)
	fldl      80(%esp)
	fadd      %st(2), %st
	fdivrp    %st, %st(1)
	fmulp     %st, %st(2)
	fxch      %st(1)
	jmp       .L00000D2E
.L00000D2C:
	fxch      %st(1)
.L00000D2E:
	fmull     .LC10@GOTOFF(%ebx)
	fldl      72(%esp)
	fdivl     80(%esp)
	fxch      %st(1)
	fucomip   %st(1), %st
	fstp      %st(0)
	jbe       .L00000DC1
.L00000D44:
	fstp      %st(0)
	fld1      
	jmp       .L00000C2A
.L00000D4D:
	fldl      72(%esp)
	fadd      %st(1), %st
	fldl      80(%esp)
	fadd      %st(2), %st
	fdivrp    %st, %st(1)
	fldl      120(%esp)
	fstpl     8(%esp)
	fxch      %st(2)
	fstl      (%esp)
	fstpl     48(%esp)
	fstpl     16(%esp)
	fstpl     32(%esp)
	call      pow@PLT
.L00000D79:
	fldl      48(%esp)
	fldl      72(%esp)
	fadd      %st(1), %st
	fmull     .LC9@GOTOFF(%ebx)
	fldl      80(%esp)
	fadd      %st(2), %st
	fdivrp    %st, %st(1)
	fmulp     %st, %st(2)
	fldl      .LC10@GOTOFF(%ebx)
	fmul      %st(2), %st
	fldl      32(%esp)
	fxch      %st(1)
	fucomip   %st(1), %st
	fcmovb    %st(2), %st
	fstp      %st(2)
	fldl      16(%esp)
	fcmovb    %st(1), %st
	fstp      %st(1)
	fldz      
	fldl      80(%esp)
	fucomip   %st(1), %st
	fstp      %st(0)
	ja        .L00000D2C
.L00000DBF:
	fstp      %st(1)
.L00000DC1:
	fadds     .LC5@GOTOFF(%ebx)
	jmp       .L00000C2A
.L00000DCC:
	fld       %st(5)
	fadd      %st(3), %st
	fucomip   %st(2), %st
	jae       .L00000E5C
.L00000DD8:
	fld       %st(2)
	fadd      %st(5), %st
	fxch      %st(2)
	fucomi    %st(2), %st
	fstp      %st(2)
	jae       .L00000BF0
.L00000DE8:
	fld       %st(4)
	fmul      %st(5), %st
	fld       %st(3)
	fadd      %st(4), %st
	fmul      %st(6), %st
	faddp     %st, %st(1)
	faddl     104(%esp)
	fxch      %st(2)
	fucomip   %st(2), %st
	fstp      %st(1)
	jae       .L00000BFC
.L00000E04:
	jmp       .L00000B78
.L00000E09:
	.p2align 4
.L00000E10:
	movl      116(%esp), %ecx
	movl      (%ecx), %ebp
	movl      $1, (%ecx)
	movl      %esi, (%esp)
	call      malloc@PLT
.L00000E24:
	movl      116(%esp), %ecx
	testl     %ebp, %ebp
	movl      %ebp, (%ecx)
	movl      %eax, %edi
	jne       .L00000E4C
.L00000E30:
	movl      PARI_SIGINT_pending@GOT(%ebx), %eax
	movl      (%eax), %edx
	testl     %edx, %edx
	je        .L00000E4C
.L00000E3C:
	movl      (%eax), %edx
	movl      $0, (%eax)
	movl      %edx, (%esp)
	call      raise@PLT
.L00000E4C:
	testl     %edi, %edi
	je        .L00000EBA
.L00000E50:
	movl      %edi, 148(%esp)
	jmp       .L000005E4
.L00000E5C:
	fstp      %st(0)
	fstp      %st(0)
	fstp      %st(0)
	fstp      %st(0)
	fstp      %st(0)
	fld       %st(0)
	jmp       .L00000C04
.L00000E6D:
	movl      %eax, (%esp)
	call      malloc@PLT
.L00000E75:
	movl      %eax, %esi
	jmp       .L000008C6
.L00000E7C:
	movl      $28, (%esp)
	call      pari_err@PLT
.L00000E88:
	movl      %ebp, 8(%esp)
	movl      $0, 4(%esp)
	movl      $0, (%esp)
	call      memset@PLT
.L00000EA0:
	jmp       .L0000098F
.L00000EA5:
	movl      (%eax), %edx
	movl      $0, (%eax)
	movl      %edx, (%esp)
	call      raise@PLT
.L00000EB5:
	jmp       .L0000096F
.L00000EBA:
	movl      $28, (%esp)
	call      pari_err@PLT
.L00000EC6:
	movl      $0, 148(%esp)
	jmp       .L000005E4
.L00000ED6:
	movl      $28, (%esp)
	xorl      %esi, %esi
	call      pari_err@PLT
.L00000EE4:
	movl      $0, 152(%esp)
	movl      $2, 112(%esp)
	jmp       .L00000438
.L00000EFC:
	movl      (%eax), %edx
	movl      $0, (%eax)
	movl      %edx, (%esp)
	call      raise@PLT
.L00000F0C:
	jmp       .L000007FD
.L00000F11:
	fstp      %st(0)
	fldl      72(%esp)
	fstpl     (%esp)
	call      sqrt@PLT
.L00000F1F:
	jmp       .L00000446
	.size	initprimes0, .-initprimes0
# ----------------------
.L00000F24:
	.p2align 4
# ----------------------
	.globl	maxprime
	.type	maxprime, @function
maxprime:
	call      __i686.get_pc_thunk.cx
.L00000F35:
	addl      $_GLOBAL_OFFSET_TABLE_, %ecx
	movl      _maxprime@GOTOFF(%ecx), %eax
	ret       
	.size	maxprime, .-maxprime
# ----------------------
.L00000F42:
	.p2align 4
# ----------------------
	.globl	maxprime_check
	.type	maxprime_check, @function
maxprime_check:
	pushl     %ebx
	call      __i686.get_pc_thunk.bx
.L00000F56:
	addl      $_GLOBAL_OFFSET_TABLE_, %ebx
	subl      $24, %esp
	movl      32(%esp), %eax
	cmpl      %eax, _maxprime@GOTOFF(%ebx)
	jae       .L00000F7B
.L00000F6B:
	movl      %eax, 4(%esp)
	movl      $19, (%esp)
	call      pari_err@PLT
.L00000F7B:
	addl      $24, %esp
	popl      %ebx
	ret       
	.size	maxprime_check, .-maxprime_check
# ----------------------
	.globl	init_primepointer
	.type	init_primepointer, @function
init_primepointer:
	pushl     %ebp
	movl      $2, %eax
	pushl     %edi
	pushl     %esi
	pushl     %ebx
	subl      $44, %esp
	movl      64(%esp), %ebp
	call      __i686.get_pc_thunk.bx
.L00000F95:
	addl      $_GLOBAL_OFFSET_TABLE_, %ebx
	movl      72(%esp), %edx
	movl      68(%esp), %edi
	testl     %ebp, %ebp
	cmove     %eax, %ebp
	movl      (%edx), %esi
	movl      %edx, 28(%esp)
	movl      %ebp, (%esp)
	call      maxprime_check@PLT
.L00000FB6:
	cmpl      %edi, %ebp
	movl      28(%esp), %edx
	ja        .L00000FC9
.L00000FBE:
	jmp       .L00000FDC
.L00000FC0:
	addl      $255, %edi
	addl      $1, %esi
.L00000FC9:
	movzbl    (%esi), %eax
	cmpb      $255, %al
	je        .L00000FC0
.L00000FD0:
	movzbl    %al, %eax
	addl      $1, %esi
	addl      %eax, %edi
	cmpl      %edi, %ebp
	ja        .L00000FC9
.L00000FDC:
	movl      %esi, (%edx)
	addl      $44, %esp
	movl      %edi, %eax
	popl      %ebx
	popl      %esi
	popl      %edi
	popl      %ebp
	ret       
	.size	init_primepointer, .-init_primepointer
# ----------------------
.L00000FE8:
	.p2align 4
# ----------------------
	.globl	initprimes
	.type	initprimes, @function
initprimes:
	subl      $44, %esp
	movl      $65302, %edx
	movl      48(%esp), %eax
	movl      %ebx, 36(%esp)
	call      __i686.get_pc_thunk.bx
.L00001005:
	addl      $_GLOBAL_OFFSET_TABLE_, %ebx
	movl      %esi, 40(%esp)
	cmpl      $65302, %eax
	cmovae    %eax, %edx
	cmpl      $-2049, %eax
	leal      512(%edx), %esi
	jbe       .L0000103A
.L00001024:
	leal      .LC11@GOTOFF(%ebx), %eax
	movl      %eax, 4(%esp)
	movl      $5, (%esp)
	call      pari_err@PLT
.L0000103A:
	leal      28(%esp), %eax
	movl      %eax, 8(%esp)
	leal      24(%esp), %eax
	movl      %esi, (%esp)
	movl      %eax, 4(%esp)
	call      initprimes0@PLT
.L00001052:
	movl      28(%esp), %edx
	movl      40(%esp), %esi
	movl      %edx, _maxprime@GOTOFF(%ebx)
	movl      36(%esp), %ebx
	addl      $44, %esp
	ret       
	.size	initprimes, .-initprimes
# ----------------------
.L00001068:
	.p2align 4
# ----------------------
	.globl	boundfact
	.type	boundfact, @function
boundfact:
	subl      $60, %esp
	movl      %esi, 48(%esp)
	movl      64(%esp), %esi
	movl      %ebx, 44(%esp)
	movl      %ebp, 56(%esp)
	movl      68(%esp), %ebp
	movl      %edi, 52(%esp)
	movl      (%esi), %eax
	call      __i686.get_pc_thunk.bx
.L00001092:
	addl      $_GLOBAL_OFFSET_TABLE_, %ebx
	shrl      $25, %eax
	cmpl      $1, %eax
	je        .L000010D0
.L000010A0:
	cmpl      $4, %eax
	je        .L000010E0
.L000010A5:
	movl      $18, (%esp)
	xorl      %edi, %edi
	call      pari_err@PLT
.L000010B3:
	movl      %edi, %eax
	movl      44(%esp), %ebx
	movl      48(%esp), %esi
	movl      52(%esp), %edi
	movl      56(%esp), %ebp
	addl      $60, %esp
	ret       
.L000010C9:
	.p2align 4
.L000010D0:
	movl      %ebp, 4(%esp)
	movl      %esi, (%esp)
	call      Z_factor_limit@PLT
.L000010DC:
	movl      %eax, %edi
	jmp       .L000010B3
.L000010E0:
	movl      avma@GOT(%ebx), %ecx
	movl      (%ecx), %edi
	movl      %ebp, 4(%esp)
	movl      4(%esi), %eax
	movl      %eax, (%esp)
	call      Z_factor_limit@PLT
.L000010F7:
	movl      %ebp, 4(%esp)
	movl      %eax, %edx
	movl      8(%esi), %eax
	movl      %edx, 16(%esp)
	movl      %eax, (%esp)
	call      Z_factor_limit@PLT
.L0000110C:
	movl      %eax, %esi
	movl      8(%eax), %eax
	movl      %eax, (%esp)
	call      ZC_neg@PLT
.L00001119:
	movl      %eax, 8(%esi)
	movl      16(%esp), %edx
	movl      %esi, 4(%esp)
	movl      %edx, (%esp)
	call      merge_factor_i@PLT
.L0000112C:
	movl      %eax, (%esp)
	call      copy_bin@PLT
.L00001134:
	movl      avma@GOT(%ebx), %ecx
	movl      %edi, (%ecx)
	movl      4(%eax), %ebp
	movl      %eax, %esi
	testl     %ebp, %ebp
	je        .L00001240
.L00001149:
	movl      %ebp, %edx
	subl      8(%eax), %edx
	movl      (%eax), %eax
	leal      16(%esi), %ecx
	movl      %ecx, 28(%esp)
	movl      %edi, %ecx
	sarl      $2, %edx
	sall      $2, %eax
	subl      %eax, %ecx
	movl      %ecx, 24(%esp)
	movl      bot@GOT(%ebx), %ecx
	subl      (%ecx), %edi
	shrl      $2, %edi
	cmpl      %edi, (%esi)
	ja        .L00001218
.L00001178:
	movl      24(%esp), %ecx
	movl      avma@GOT(%ebx), %edi
	movl      %ecx, (%edi)
	movl      28(%esp), %edi
	movl      %edx, 16(%esp)
	movl      %eax, 8(%esp)
	movl      %ecx, (%esp)
	movl      %edi, 4(%esp)
	call      memcpy@PLT
.L0000119C:
	movl      16(%esp), %edx
	leal      (%eax,%edx,4), %edi
	movl      12(%esi), %edx
	movl      %edi, %eax
	subl      %ebp, %eax
	andl      $-4, %eax
	testl     %edx, %edx
	movl      %eax, 4(%esp)
	movl      %edi, (%esp)
	jne       .L00001210
.L000011B8:
	call      shiftaddress@PLT
.L000011BD:
	movl      PARI_SIGINT_block@GOT(%ebx), %ebp
	movl      (%ebp), %eax
	movl      $1, (%ebp)
	movl      %esi, (%esp)
	movl      %eax, 20(%esp)
	call      free@PLT
.L000011D9:
	movl      20(%esp), %eax
	testl     %eax, %eax
	movl      %eax, (%ebp)
	jne       .L000010B3
.L000011E8:
	movl      PARI_SIGINT_pending@GOT(%ebx), %eax
	movl      (%eax), %edx
	testl     %edx, %edx
	je        .L000010B3
.L000011F8:
	movl      (%eax), %edx
	movl      $0, (%eax)
	movl      %edx, (%esp)
	call      raise@PLT
.L00001208:
	jmp       .L000010B3
.L0000120D:
	.p2align 3
.L00001210:
	call      shiftaddress_canon@PLT
.L00001215:
	jmp       .L000011BD
.L00001217:
	.p2align 3
.L00001218:
	movl      %eax, 20(%esp)
	movl      %edx, 16(%esp)
	movl      $14, (%esp)
	call      pari_err@PLT
.L0000122C:
	movl      16(%esp), %edx
	movl      20(%esp), %eax
	jmp       .L00001178
.L00001239:
	.p2align 4
.L00001240:
	movl      PARI_SIGINT_block@GOT(%ebx), %edi
	movl      (%edi), %ebp
	movl      $1, (%edi)
	movl      %eax, (%esp)
	call      free@PLT
.L00001256:
	testl     %ebp, %ebp
	movl      %ebp, (%edi)
	jne       .L00001278
.L0000125C:
	movl      PARI_SIGINT_pending@GOT(%ebx), %eax
	movl      (%eax), %edx
	testl     %edx, %edx
	je        .L00001278
.L00001268:
	movl      (%eax), %edx
	movl      $0, (%eax)
	movl      %edx, (%esp)
	call      raise@PLT
.L00001278:
	movl      gen_0@GOT(%ebx), %eax
	movl      (%eax), %edi
	jmp       .L000010B3
	.size	boundfact, .-boundfact
# ----------------------
.L00001285:
	.p2align 4
# ----------------------
	.globl	Z_smoothen
	.type	Z_smoothen, @function
Z_smoothen:
	pushl     %ebp
	pushl     %edi
	pushl     %esi
	pushl     %ebx
	subl      $44, %esp
	call      __i686.get_pc_thunk.bx
.L0000129C:
	addl      $_GLOBAL_OFFSET_TABLE_, %ebx
	movl      68(%esp), %edx
	movl      (%edx), %edx
	movl      avma@GOT(%ebx), %esi
	movl      bot@GOT(%ebx), %ebp
	andl      $16777215, %edx
	movl      %edx, 20(%esp)
	movl      20(%esp), %edi
	movl      (%esi), %edx
	sall      $2, %edi
	movl      %edx, %eax
	subl      %edi, %eax
	movl      %eax, 24(%esp)
	movl      (%ebp), %eax
	subl      %eax, %edx
	shrl      $2, %edx
	cmpl      %edx, 20(%esp)
	jbe       .L000012EC
.L000012DD:
	movl      $14, (%esp)
	call      pari_err@PLT
.L000012E9:
	movl      (%ebp), %eax
.L000012EC:
	movl      24(%esp), %edx
	movl      %edx, (%esi)
	subl      %edi, %edx
	movl      %edx, 28(%esp)
	movl      24(%esp), %edx
	subl      %eax, %edx
	movl      %edx, %eax
	shrl      $2, %eax
	cmpl      %eax, 20(%esp)
	jbe       .L00001315
.L00001309:
	movl      $14, (%esp)
	call      pari_err@PLT
.L00001315:
	movl      28(%esp), %edx
	cmpl      $1, 20(%esp)
	movl      %edx, (%esi)
	jle       .L00001402
.L00001326:
	movl      $1, %ebp
	movl      $1, %esi
	jmp       .L00001341
.L00001332:
	.p2align 3
.L00001338:
	addl      $1, %esi
	cmpl      20(%esp), %esi
	je        .L00001394
.L00001341:
	movl      68(%esp), %edx
	leal      64(%esp), %eax
	movl      (%edx,%esi,4), %edi
	movl      %eax, 8(%esp)
	movl      64(%esp), %eax
	movl      %edi, 4(%esp)
	movl      %eax, (%esp)
	call      Z_lvalrem@PLT
.L00001360:
	testl     %eax, %eax
	je        .L00001338
.L00001364:
	movl      28(%esp), %edx
	movl      %edi, (%edx,%ebp,4)
	movl      24(%esp), %edx
	movl      %eax, (%edx,%ebp,4)
	movl      64(%esp), %edx
	addl      $1, %ebp
	movl      4(%edx), %eax
	andl      $16777215, %eax
	cmpl      $3, %eax
	jne       .L00001338
.L00001386:
	cmpl      $1, 8(%edx)
	jne       .L00001338
.L0000138C:
	movl      $0, 64(%esp)
.L00001394:
	testl     $-16777216, %ebp
	jne       .L000013C8
.L0000139C:
	orl       $738197504, %ebp
.L000013A2:
	movl      28(%esp), %edx
	movl      72(%esp), %eax
	movl      %ebp, (%edx)
	movl      %edx, (%eax)
.L000013AE:
	movl      24(%esp), %edx
	movl      76(%esp), %eax
	movl      %ebp, (%edx)
	movl      %edx, (%eax)
	movl      64(%esp), %eax
	addl      $44, %esp
	popl      %ebx
	popl      %esi
	popl      %edi
	popl      %ebp
	ret       
.L000013C6:
	.p2align 3
.L000013C8:
	leal      .LC12@GOTOFF(%ebx), %esi
	orl       $738197504, %ebp
	movl      %esi, 4(%esp)
	movl      $15, (%esp)
	call      pari_err@PLT
.L000013E4:
	movl      28(%esp), %edx
	movl      72(%esp), %eax
	movl      %ebp, (%edx)
	movl      %edx, (%eax)
	movl      %esi, 4(%esp)
	movl      $15, (%esp)
	call      pari_err@PLT
.L00001400:
	jmp       .L000013AE
.L00001402:
	movl      $738197505, %ebp
	jmp       .L000013A2
	.size	Z_smoothen, .-Z_smoothen
# ----------------------
.L00001409:
	.p2align 4
# ----------------------
	.globl	factoru
	.type	factoru, @function
factoru:
	pushl     %ebp
	pushl     %edi
	pushl     %esi
	pushl     %ebx
	call      __i686.get_pc_thunk.bx
.L00001419:
	addl      $_GLOBAL_OFFSET_TABLE_, %ebx
	subl      $60, %esp
	movl      avma@GOT(%ebx), %esi
	movl      bot@GOT(%ebx), %edx
	movl      (%esi), %edi
	leal      -12(%edi), %eax
	movl      %eax, 44(%esp)
	movl      %edi, %eax
	subl      (%edx), %eax
	cmpl      $11, %eax
	ja        .L00001452
.L00001440:
	movl      $14, (%esp)
	call      pari_err@PLT
.L0000144C:
	movl      bot@GOT(%ebx), %edx
.L00001452:
	movl      44(%esp), %eax
	movl      %eax, (%esi)
	movl      $570425347, -12(%edi)
	movl      (%esi), %ebp
	movl      %ebp, %eax
	subl      (%edx), %eax
	leal      -128(%ebp), %edi
	cmpl      $127, %eax
	ja        .L00001479
.L0000146D:
	movl      $14, (%esp)
	call      pari_err@PLT
.L00001479:
	movl      80(%esp), %ecx
	movl      %edi, (%esi)
	testl     %ecx, %ecx
	jne       .L000015F0
.L00001487:
	movl      gen_0@GOT(%ebx), %eax
	movl      (%eax), %eax
.L0000148F:
	movl      %eax, (%esp)
	call      Z_factor@PLT
.L00001497:
	movl      %ebp, %ecx
	movl      4(%eax), %edx
	movl      8(%eax), %eax
	movl      (%edx), %edi
	movl      %edx, 32(%esp)
	movl      bot@GOT(%ebx), %edx
	movl      %ebp, (%esi)
	movl      %eax, 36(%esp)
	andl      $16777215, %edi
	subl      (%edx), %ebp
	leal      0(,%edi,4), %eax
	subl      %eax, %ecx
	shrl      $2, %ebp
	cmpl      %ebp, %edi
	movl      %ecx, 28(%esp)
	jbe       .L000014E5
.L000014CD:
	movl      %eax, 24(%esp)
	movl      $14, (%esp)
	call      pari_err@PLT
.L000014DD:
	movl      24(%esp), %eax
	movl      28(%esp), %ecx
.L000014E5:
	movl      44(%esp), %ebp
	movl      %edi, %edx
	orl       $738197504, %edx
	movl      %ecx, (%esi)
	movl      %edx, (%ecx)
	movl      %ecx, 4(%ebp)
	movl      (%esi), %ebp
	movl      bot@GOT(%ebx), %ecx
	subl      %eax, %ebp
	movl      (%esi), %eax
	subl      (%ecx), %eax
	shrl      $2, %eax
	cmpl      %eax, %edi
	jbe       .L00001521
.L0000150D:
	movl      %edx, 24(%esp)
	movl      $14, (%esp)
	call      pari_err@PLT
.L0000151D:
	movl      24(%esp), %edx
.L00001521:
	movl      44(%esp), %eax
	cmpl      $1, %edi
	movl      %ebp, (%esi)
	movl      %edx, (%ebp)
	movl      %ebp, 8(%eax)
	jle       .L000015DE
.L00001536:
	leal      .LC3@GOTOFF(%ebx), %edx
	movl      $1, %esi
	movl      %edx, 40(%esp)
	jmp       .L000015AD
.L00001547:
	.p2align 3
.L00001548:
	movl      40(%esp), %eax
	movl      %ecx, 24(%esp)
	movl      $15, (%esp)
	movl      %eax, 4(%esp)
	call      pari_err@PLT
.L00001560:
	movl      24(%esp), %ecx
.L00001564:
	movl      28(%esp), %edx
	movl      %ecx, (%edx,%esi,4)
	movl      36(%esp), %eax
	xorl      %edx, %edx
	movl      (%eax,%esi,4), %ecx
	movl      4(%ecx), %eax
	andl      $16777215, %eax
	cmpl      $2, %eax
	je        .L000015A2
.L00001581:
	cmpl      $3, %eax
	je        .L000015D0
.L00001586:
	movl      40(%esp), %ecx
	movl      %edx, 24(%esp)
	movl      $15, (%esp)
	movl      %ecx, 4(%esp)
	call      pari_err@PLT
.L0000159E:
	movl      24(%esp), %edx
.L000015A2:
	movl      %edx, (%ebp,%esi,4)
	addl      $1, %esi
	cmpl      %edi, %esi
	je        .L000015DE
.L000015AD:
	movl      32(%esp), %ecx
	movl      (%ecx,%esi,4), %edx
	xorl      %ecx, %ecx
	movl      4(%edx), %eax
	andl      $16777215, %eax
	cmpl      $2, %eax
	je        .L00001564
.L000015C3:
	cmpl      $3, %eax
	jne       .L00001548
.L000015C8:
	movl      8(%edx), %ecx
	jmp       .L00001564
.L000015CD:
	.p2align 3
.L000015D0:
	movl      8(%ecx), %edx
	movl      %edx, (%ebp,%esi,4)
	addl      $1, %esi
	cmpl      %edi, %esi
	jne       .L000015AD
.L000015DE:
	movl      44(%esp), %eax
	addl      $60, %esp
	popl      %ebx
	popl      %esi
	popl      %edi
	popl      %ebp
	ret       
.L000015EA:
	.p2align 3
.L000015F0:
	movl      bot@GOT(%ebx), %edx
	leal      -12(%edi), %ecx
	movl      %ecx, 32(%esp)
	movl      %ecx, %eax
	movl      %edi, %ecx
	subl      (%edx), %ecx
	cmpl      $11, %ecx
	jbe       .L00001628
.L00001608:
	movl      32(%esp), %edx
	movl      80(%esp), %ecx
	movl      %edx, (%esi)
	movl      $33554435, -12(%edi)
	movl      $1073741827, 4(%edx)
	movl      %ecx, 8(%edx)
	jmp       .L0000148F
.L00001628:
	movl      %eax, 24(%esp)
	movl      $14, (%esp)
	call      pari_err@PLT
.L00001638:
	movl      24(%esp), %eax
	jmp       .L00001608
	.size	factoru, .-factoru
# ----------------------
.L0000163E:
	.p2align 3
# ----------------------
	.globl	factoru_pow
	.type	factoru_pow, @function
factoru_pow:
	pushl     %ebp
	pushl     %edi
	pushl     %esi
	pushl     %ebx
	call      __i686.get_pc_thunk.bx
.L00001649:
	addl      $_GLOBAL_OFFSET_TABLE_, %ebx
	subl      $76, %esp
	movl      avma@GOT(%ebx), %esi
	movl      bot@GOT(%ebx), %edx
	movl      (%esi), %edi
	leal      -16(%edi), %eax
	movl      %eax, 60(%esp)
	movl      %edi, %eax
	subl      (%edx), %eax
	cmpl      $15, %eax
	ja        .L00001682
.L00001670:
	movl      $14, (%esp)
	call      pari_err@PLT
.L0000167C:
	movl      bot@GOT(%ebx), %edx
.L00001682:
	movl      60(%esp), %eax
	movl      %eax, (%esi)
	movl      $570425348, -16(%edi)
	movl      (%esi), %ebp
	movl      %ebp, %eax
	subl      (%edx), %eax
	leal      -192(%ebp), %edi
	cmpl      $191, %eax
	ja        .L000016AE
.L000016A2:
	movl      $14, (%esp)
	call      pari_err@PLT
.L000016AE:
	movl      96(%esp), %eax
	movl      %edi, (%esi)
	testl     %eax, %eax
	jne       .L00001878
.L000016BC:
	movl      gen_0@GOT(%ebx), %eax
	movl      (%eax), %eax
.L000016C4:
	movl      %eax, (%esp)
	movl      %ebp, %edi
	call      Z_factor@PLT
.L000016CE:
	movl      4(%eax), %edx
	movl      8(%eax), %eax
	movl      (%edx), %ecx
	movl      %edx, 48(%esp)
	movl      %ebp, (%esi)
	movl      %eax, 52(%esp)
	andl      $16777215, %ecx
	movl      %ecx, 36(%esp)
	movl      %ecx, %edx
	movl      bot@GOT(%ebx), %ecx
	sall      $2, %edx
	subl      %edx, %edi
	subl      (%ecx), %ebp
	shrl      $2, %ebp
	cmpl      %ebp, 36(%esp)
	jbe       .L00001716
.L00001702:
	movl      %edx, 32(%esp)
	movl      $14, (%esp)
	call      pari_err@PLT
.L00001712:
	movl      32(%esp), %edx
.L00001716:
	movl      36(%esp), %ebp
	movl      60(%esp), %eax
	movl      %edi, (%esi)
	orl       $738197504, %ebp
	movl      %ebp, (%edi)
	movl      %edi, 4(%eax)
	movl      (%esi), %eax
	movl      %eax, %ecx
	subl      %edx, %ecx
	movl      %ecx, 40(%esp)
	movl      bot@GOT(%ebx), %ecx
	subl      (%ecx), %eax
	shrl      $2, %eax
	cmpl      %eax, 36(%esp)
	jbe       .L0000175A
.L00001746:
	movl      %edx, 32(%esp)
	movl      $14, (%esp)
	call      pari_err@PLT
.L00001756:
	movl      32(%esp), %edx
.L0000175A:
	movl      40(%esp), %ecx
	movl      60(%esp), %eax
	movl      %ecx, (%esi)
	movl      %ebp, (%ecx)
	movl      %ecx, 8(%eax)
	movl      (%esi), %eax
	movl      %eax, %ecx
	subl      %edx, %ecx
	movl      bot@GOT(%ebx), %edx
	movl      %ecx, 44(%esp)
	subl      (%edx), %eax
	shrl      $2, %eax
	cmpl      %eax, 36(%esp)
	jbe       .L00001794
.L00001784:
	movl      $14, (%esp)
	call      pari_err@PLT
.L00001790:
	movl      44(%esp), %ecx
.L00001794:
	movl      60(%esp), %eax
	cmpl      $1, 36(%esp)
	movl      %ecx, (%esi)
	movl      %ebp, (%ecx)
	movl      %ecx, 12(%eax)
	jle       .L00001868
.L000017AA:
	leal      .LC3@GOTOFF(%ebx), %edx
	movl      $1, %esi
	movl      %edx, 56(%esp)
	jmp       .L00001836
.L000017BB:
	.p2align 3
.L000017C0:
	movl      56(%esp), %edx
	movl      $15, (%esp)
	movl      %edx, 4(%esp)
	call      pari_err@PLT
.L000017D4:
	movl      %ebp, (%edi,%esi,4)
	movl      52(%esp), %edx
	xorl      %ebp, %ebp
	movl      (%edx,%esi,4), %ecx
	xorl      %edx, %edx
	movl      4(%ecx), %eax
	andl      $16777215, %eax
	cmpl      $2, %eax
	je        .L00001810
.L000017EF:
	cmpl      $3, %eax
	je        .L00001860
.L000017F4:
	movl      56(%esp), %ecx
	movl      %edx, 32(%esp)
	movl      $15, (%esp)
	movl      %ecx, 4(%esp)
	call      pari_err@PLT
.L0000180C:
	movl      32(%esp), %edx
.L00001810:
	movl      40(%esp), %ecx
	movl      %edx, (%ecx,%esi,4)
	movl      %ebp, 4(%esp)
	movl      (%edi,%esi,4), %eax
	movl      %eax, (%esp)
	call      upowuu@PLT
.L00001826:
	movl      44(%esp), %edx
	movl      %eax, (%edx,%esi,4)
	addl      $1, %esi
	cmpl      36(%esp), %esi
	je        .L00001868
.L00001836:
	movl      48(%esp), %ecx
	xorl      %ebp, %ebp
	movl      (%ecx,%esi,4), %edx
	movl      4(%edx), %eax
	andl      $16777215, %eax
	cmpl      $2, %eax
	je        .L000017D4
.L0000184C:
	cmpl      $3, %eax
	jne       .L000017C0
.L00001855:
	movl      8(%edx), %ebp
	jmp       .L000017D4
.L0000185D:
	.p2align 3
.L00001860:
	movl      8(%ecx), %ebp
	movl      %ebp, %edx
	jmp       .L00001810
.L00001867:
	.p2align 3
.L00001868:
	movl      60(%esp), %eax
	addl      $76, %esp
	popl      %ebx
	popl      %esi
	popl      %edi
	popl      %ebp
	ret       
.L00001874:
	.p2align 3
.L00001878:
	movl      bot@GOT(%ebx), %edx
	leal      -12(%edi), %ecx
	movl      %ecx, 40(%esp)
	movl      %ecx, %eax
	movl      %edi, %ecx
	subl      (%edx), %ecx
	cmpl      $11, %ecx
	jbe       .L000018B0
.L00001890:
	movl      40(%esp), %edx
	movl      96(%esp), %ecx
	movl      %edx, (%esi)
	movl      $33554435, -12(%edi)
	movl      $1073741827, 4(%edx)
	movl      %ecx, 8(%edx)
	jmp       .L000016C4
.L000018B0:
	movl      %eax, 32(%esp)
	movl      $14, (%esp)
	call      pari_err@PLT
.L000018C0:
	movl      32(%esp), %eax
	jmp       .L00001890
	.size	factoru_pow, .-factoru_pow
# ----------------------
.L000018C6:
	.p2align 4
# ----------------------
	.globl	divisors
	.type	divisors, @function
divisors:
	pushl     %ebp
	pushl     %edi
	pushl     %esi
	pushl     %ebx
	call      __i686.get_pc_thunk.bx
.L000018D9:
	addl      $_GLOBAL_OFFSET_TABLE_, %ebx
	subl      $76, %esp
	movl      96(%esp), %esi
	movl      avma@GOT(%ebx), %edx
	movl      (%edx), %edx
	movl      %edx, 60(%esp)
	movl      (%esi), %edx
	movl      %edx, %eax
	shrl      $25, %eax
	cmpl      $19, %eax
	je        .L00001D8D
.L00001902:
	cmpl      $1, %eax
	je        .L00001EBC
.L0000190B:
	subl      $17, %eax
	cmpl      $2, %eax
	jbe       .L00001E16
.L00001917:
	movl      %esi, (%esp)
	call      factor@PLT
.L0000191F:
	movl      $0, 36(%esp)
	movl      4(%eax), %ebp
	movl      8(%eax), %eax
	movl      (%ebp), %edx
	movl      %eax, 32(%esp)
	andl      $16777215, %edx
	movl      %edx, 48(%esp)
.L0000193E:
	movl      avma@GOT(%ebx), %ecx
	movl      (%ecx), %eax
.L00001946:
	movl      bot@GOT(%ebx), %esi
	movl      %eax, %ecx
	movl      48(%esp), %edx
	subl      (%esi), %eax
	sall      $2, %edx
	subl      %edx, %ecx
	shrl      $2, %eax
	cmpl      %eax, 48(%esp)
	movl      %ecx, 56(%esp)
	jbe       .L00001976
.L00001966:
	movl      $14, (%esp)
	call      pari_err@PLT
.L00001972:
	movl      56(%esp), %ecx
.L00001976:
	movl      48(%esp), %eax
	movl      avma@GOT(%ebx), %edx
	orl       $738197504, %eax
	cmpl      $1, 48(%esp)
	movl      %ecx, (%edx)
	movl      %eax, (%ecx)
	jle       .L00001EED
.L00001994:
	leal      .LC14@GOTOFF(%ebx), %edx
	movl      %ecx, %edi
	movl      $1, %esi
	movl      $1, %ecx
	movl      %edx, 40(%esp)
	movl      %ebp, 44(%esp)
	jmp       .L00001A0B
.L000019B0:
	andl      $16777215, %edx
	movl      8(%ebp), %ebp
	cmpl      $3, %edx
	jg        .L00001BBA
.L000019C2:
	movl      %ebp, %edx
	shrl      $31, %edx
	testb     %dl, %dl
	jne       .L00001BBA
.L000019CF:
	movl      %ebp, %edx
	negl      %edx
	testl     %eax, %eax
	cmovle    %edx, %ebp
	testl     %ebp, %ebp
	movl      %ebp, (%edi,%esi,4)
	js        .L00001BF4
.L000019E3:
	addl      $1, %ebp
.L000019E6:
	movl      %ecx, (%esp)
	movl      %ebp, 4(%esp)
	call      muluu@PLT
.L000019F2:
	xorl      %ecx, %ecx
	movl      4(%eax), %edx
	andl      $16777215, %edx
	cmpl      $3, %edx
	je        .L00001A2C
.L00001A02:
	addl      $1, %esi
	cmpl      48(%esp), %esi
	je        .L00001A38
.L00001A0B:
	movl      32(%esp), %edx
	movl      (%edx,%esi,4), %ebp
	movl      4(%ebp), %edx
	movl      %edx, %eax
	sarl      $30, %eax
	testl     %eax, %eax
	jne       .L000019B0
.L00001A1E:
	movl      $0, (%edi,%esi,4)
	movl      $1, %ebp
	jmp       .L000019E6
.L00001A2C:
	addl      $1, %esi
	movl      8(%eax), %ecx
	cmpl      48(%esp), %esi
	jne       .L00001A0B
.L00001A38:
	testl     %ecx, %ecx
	movl      44(%esp), %ebp
	je        .L00001D6E
.L00001A44:
	leal      1(%ecx), %esi
	movl      %esi, %eax
	movl      %esi, %edx
	orl       $570425344, %eax
	andl      $-16777216, %edx
	andl      $-16777216, %ecx
	leal      0(,%esi,4), %edi
	movl      %eax, 32(%esp)
	movl      %edx, 40(%esp)
	je        .L00001A8B
.L00001A6D:
	leal      .LC15@GOTOFF(%ebx), %eax
	movl      $16777214, 8(%esp)
	movl      %eax, 4(%esp)
	movl      $5, (%esp)
	call      pari_err@PLT
.L00001A8B:
	movl      avma@GOT(%ebx), %ecx
	movl      (%ecx), %eax
	movl      bot@GOT(%ebx), %ecx
	movl      %eax, %edx
	subl      (%ecx), %eax
	subl      %edi, %edx
	movl      %edx, 52(%esp)
	shrl      $2, %eax
	cmpl      %esi, %eax
	jae       .L00001ABA
.L00001AAA:
	movl      $14, (%esp)
	call      pari_err@PLT
.L00001AB6:
	movl      52(%esp), %edx
.L00001ABA:
	movl      40(%esp), %eax
	movl      avma@GOT(%ebx), %esi
	testl     %eax, %eax
	movl      %edx, (%esi)
	je        .L00001AE4
.L00001ACA:
	leal      .LC12@GOTOFF(%ebx), %eax
	movl      %eax, 4(%esp)
	movl      $15, (%esp)
	call      pari_err@PLT
.L00001AE0:
	movl      52(%esp), %edx
.L00001AE4:
	movl      32(%esp), %esi
	movl      52(%esp), %ecx
	movl      gen_1@GOT(%ebx), %eax
	movl      %esi, (%ecx)
	addl      $4, %ecx
	movl      (%eax), %eax
	movl      %ecx, 32(%esp)
	movl      %eax, 4(%edx)
	movl      36(%esp), %eax
	testl     %eax, %eax
	jne       .L00001CA4
.L00001B0C:
	cmpl      $1, 48(%esp)
	movl      $1, %edx
	jle       .L00001C2E
.L00001B1C:
	movl      %edx, %eax
	movl      %ebp, %edx
	movl      %eax, %ebp
.L00001B22:
	movl      56(%esp), %ecx
	movl      52(%esp), %esi
	movl      (%ecx,%ebp,4), %ecx
	movl      %esi, 36(%esp)
	movl      %ecx, 40(%esp)
	movl      40(%esp), %eax
	movl      32(%esp), %ecx
	testl     %eax, %eax
	movl      %ecx, 44(%esp)
	je        .L00001C21
.L00001B49:
	movl      36(%esp), %esi
	movl      %ebp, %eax
	movl      %edx, %ebp
	movl      %eax, %edx
	.p2align 3
.L00001B58:
	movl      32(%esp), %edi
	cmpl      %edi, %esi
	jae       .L00001B9F
.L00001B60:
	movl      (%ebp,%edx,4), %eax
	addl      $4, %esi
	addl      $4, %edi
	movl      %eax, 4(%esp)
	movl      (%esi), %eax
	movl      %edx, 28(%esp)
	movl      %eax, (%esp)
	call      gmul@PLT
.L00001B7C:
	cmpl      32(%esp), %esi
	movl      %eax, (%edi)
	movl      28(%esp), %edx
	jb        .L00001B60
.L00001B88:
	movl      36(%esp), %eax
	movl      32(%esp), %esi
	notl      %eax
	addl      %esi, %eax
	shrl      $2, %eax
	leal      4(%esi,%eax,4), %esi
	movl      %esi, 32(%esp)
.L00001B9F:
	subl      $1, 40(%esp)
	je        .L00001C1B
.L00001BA6:
	movl      44(%esp), %ecx
	movl      32(%esp), %esi
	movl      %ecx, 36(%esp)
	movl      %esi, 44(%esp)
	movl      %ecx, %esi
	jmp       .L00001B58
.L00001BBA:
	leal      .LC0@GOTOFF(%ebx), %edx
	movl      %edx, 4(%esp)
	movl      %eax, 28(%esp)
	movl      %ecx, 24(%esp)
	movl      $15, (%esp)
	call      pari_err@PLT
.L00001BD8:
	movl      28(%esp), %eax
	movl      %ebp, %edx
	negl      %edx
	movl      24(%esp), %ecx
	testl     %eax, %eax
	cmovle    %edx, %ebp
	testl     %ebp, %ebp
	movl      %ebp, (%edi,%esi,4)
	jns       .L000019E3
.L00001BF4:
	movl      40(%esp), %edx
	movl      %ecx, 24(%esp)
	movl      $5, (%esp)
	movl      %edx, 4(%esp)
	call      pari_err@PLT
.L00001C0C:
	movl      (%edi,%esi,4), %ebp
	movl      24(%esp), %ecx
	addl      $1, %ebp
	jmp       .L000019E6
.L00001C1B:
	movl      %edx, %eax
	movl      %ebp, %edx
	movl      %eax, %ebp
.L00001C21:
	addl      $1, %ebp
	cmpl      48(%esp), %ebp
	jne       .L00001B22
.L00001C2E:
	movl      52(%esp), %eax
.L00001C32:
	movl      bot@GOT(%ebx), %edx
	cmpl      (%edx), %eax
	jb        .L00001C90
.L00001C3C:
	movl      top@GOT(%ebx), %edx
	cmpl      (%edx), %eax
	jae       .L00001C90
.L00001C46:
	cmpl      60(%esp), %eax
	jae       .L00001C90
.L00001C4C:
	movl      (%eax), %edx
	movl      %edx, %ecx
	shrl      $25, %ecx
	cmpl      $2, %ecx
	je        .L00001E3D
.L00001C5C:
	jg        .L00001E31
.L00001C62:
	cmpl      $1, %ecx
	je        .L00001E7A
.L00001C6B:
	andl      $16777215, %edx
	leal      (%eax,%edx,4), %edx
	movl      %edx, 4(%esp)
	movl      60(%esp), %edx
	movl      %eax, 8(%esp)
	movl      %edx, (%esp)
	call      gerepile@PLT
.L00001C88:
	addl      $76, %esp
	popl      %ebx
	popl      %esi
	popl      %edi
	popl      %ebp
	ret       
.L00001C90:
	movl      60(%esp), %esi
	movl      avma@GOT(%ebx), %ecx
	movl      %esi, (%ecx)
	addl      $76, %esp
	popl      %ebx
	popl      %esi
	popl      %edi
	popl      %ebp
	ret       
.L00001CA4:
	cmpl      $1, 48(%esp)
	jle       .L00001D5D
.L00001CAF:
	movl      $1, %edx
	movl      %edx, %eax
	movl      %ebp, %edx
	movl      %eax, %ebp
.L00001CBA:
	movl      56(%esp), %ecx
	movl      52(%esp), %esi
	movl      (%ecx,%ebp,4), %ecx
	movl      %esi, 36(%esp)
	movl      %ecx, 40(%esp)
	movl      40(%esp), %eax
	movl      32(%esp), %ecx
	testl     %eax, %eax
	movl      %ecx, 44(%esp)
	je        .L00001D50
.L00001CDD:
	movl      36(%esp), %esi
	movl      %ebp, %eax
	movl      %edx, %ebp
	movl      %eax, %edx
	.p2align 3
.L00001CE8:
	movl      32(%esp), %edi
	cmpl      %edi, %esi
	jae       .L00001D2F
.L00001CF0:
	movl      (%ebp,%edx,4), %eax
	addl      $4, %esi
	addl      $4, %edi
	movl      %eax, 4(%esp)
	movl      (%esi), %eax
	movl      %edx, 28(%esp)
	movl      %eax, (%esp)
	call      mulii@PLT
.L00001D0C:
	cmpl      32(%esp), %esi
	movl      %eax, (%edi)
	movl      28(%esp), %edx
	jb        .L00001CF0
.L00001D18:
	movl      36(%esp), %eax
	movl      32(%esp), %esi
	notl      %eax
	addl      %esi, %eax
	shrl      $2, %eax
	leal      4(%esi,%eax,4), %esi
	movl      %esi, 32(%esp)
.L00001D2F:
	subl      $1, 40(%esp)
	je        .L00001D4A
.L00001D36:
	movl      44(%esp), %ecx
	movl      32(%esp), %esi
	movl      %ecx, 36(%esp)
	movl      %esi, 44(%esp)
	movl      %ecx, %esi
	jmp       .L00001CE8
.L00001D4A:
	movl      %edx, %eax
	movl      %ebp, %edx
	movl      %eax, %ebp
.L00001D50:
	addl      $1, %ebp
	cmpl      48(%esp), %ebp
	jne       .L00001CBA
.L00001D5D:
	movl      52(%esp), %edx
	movl      %edx, (%esp)
	call      sort@PLT
.L00001D69:
	jmp       .L00001C32
.L00001D6E:
	movl      $0, 40(%esp)
	movl      $4, %edi
	movl      $1, %esi
	movl      $570425345, 32(%esp)
	jmp       .L00001A6D
.L00001D8D:
	andl      $16777215, %edx
	cmpl      $3, %edx
	jne       .L0000190B
.L00001D9C:
	movl      4(%esi), %ebp
	movl      (%ebp), %ecx
	andl      $16777215, %ecx
	cmpl      $1, %ecx
	movl      %ecx, 48(%esp)
	jle       .L00001F31
.L00001DB5:
	movl      4(%ebp), %eax
	movl      (%eax), %eax
	shrl      $25, %eax
	cmpl      $1, %eax
	je        .L00001DDA
.L00001DC2:
	jmp       .L00001F0C
.L00001DC7:
	.p2align 3
.L00001DC8:
	movl      (%ebp,%eax,4), %edx
	movl      (%edx), %edx
	shrl      $25, %edx
	cmpl      $1, %edx
	jne       .L00001F0C
.L00001DDA:
	addl      $1, %eax
	cmpl      48(%esp), %eax
	jne       .L00001DC8
.L00001DE3:
	movl      8(%esi), %esi
	movl      60(%esp), %eax
	movl      %esi, 32(%esp)
.L00001DEE:
	movl      4(%ebp), %edx
	movl      $1, 36(%esp)
	movl      4(%edx), %edx
	testl     %edx, %edx
	jns       .L00001946
.L00001E04:
	addl      $4, 32(%esp)
	addl      $4, %ebp
	subl      $1, 48(%esp)
	jmp       .L00001946
.L00001E16:
	leal      .LC13@GOTOFF(%ebx), %eax
	movl      %eax, 4(%esp)
	movl      $11, (%esp)
	call      pari_err@PLT
.L00001E2C:
	jmp       .L00001917
.L00001E31:
	subl      $21, %ecx
	cmpl      $1, %ecx
	ja        .L00001C6B
.L00001E3D:
	movl      60(%esp), %esi
	andl      $16777215, %edx
	leal      0(,%edx,4), %ecx
	subl      $1, %edx
	subl      %ecx, %esi
	cmpl      $-1, %edx
	movl      %esi, %ecx
	movl      avma@GOT(%ebx), %esi
	movl      %ecx, (%esi)
	je        .L00001E70
.L00001E62:
	movl      (%eax,%edx,4), %esi
	movl      %esi, (%ecx,%edx,4)
	subl      $1, %edx
	cmpl      $-1, %edx
	jne       .L00001E62
.L00001E70:
	addl      $76, %esp
	movl      %ecx, %eax
	popl      %ebx
	popl      %esi
	popl      %edi
	popl      %ebp
	ret       
.L00001E7A:
	movl      4(%eax), %ecx
	movl      60(%esp), %esi
	andl      $16777215, %ecx
	leal      0(,%ecx,4), %edx
	subl      %edx, %esi
	leal      -1(%ecx), %edx
	testl     %edx, %edx
	jle       .L00001EA2
.L00001E97:
	movl      (%eax,%edx,4), %edi
	movl      %edi, (%esi,%edx,4)
	subl      $1, %edx
	jne       .L00001E97
.L00001EA2:
	movl      avma@GOT(%ebx), %edx
	orl       $33554432, %ecx
	movl      %esi, %eax
	movl      %ecx, (%esi)
	movl      %esi, (%edx)
	addl      $76, %esp
	popl      %ebx
	popl      %esi
	popl      %edi
	popl      %ebp
	ret       
.L00001EBC:
	movl      %esi, (%esp)
	call      Z_factor@PLT
.L00001EC4:
	movl      4(%eax), %ebp
	movl      8(%eax), %eax
	movl      (%ebp), %esi
	movl      %eax, 32(%esp)
	andl      $16777215, %esi
	cmpl      $1, %esi
	movl      %esi, 48(%esp)
	jle       .L00001F24
.L00001EE0:
	movl      avma@GOT(%ebx), %esi
	movl      (%esi), %eax
	jmp       .L00001DEE
.L00001EED:
	movl      $0, 40(%esp)
	movl      $8, %edi
	movl      $2, %esi
	movl      $570425346, 32(%esp)
	jmp       .L00001A8B
.L00001F0C:
	movl      8(%esi), %esi
	movl      60(%esp), %eax
	movl      $0, 36(%esp)
	movl      %esi, 32(%esp)
	jmp       .L00001946
.L00001F24:
	movl      $1, 36(%esp)
	jmp       .L0000193E
.L00001F31:
	movl      8(%esi), %esi
	movl      60(%esp), %eax
	movl      $1, 36(%esp)
	movl      %esi, 32(%esp)
	jmp       .L00001946
	.size	divisors, .-divisors
# ----------------------
.L00001F49:
	.p2align 4
# ----------------------
	.globl	divisorsu
	.type	divisorsu, @function
divisorsu:
	pushl     %ebp
	pushl     %edi
	pushl     %esi
	pushl     %ebx
	call      __i686.get_pc_thunk.bx
.L00001F59:
	addl      $_GLOBAL_OFFSET_TABLE_, %ebx
	subl      $76, %esp
	movl      96(%esp), %eax
	movl      avma@GOT(%ebx), %edx
	movl      (%edx), %edx
	movl      %eax, (%esp)
	movl      %edx, 56(%esp)
	call      factoru@PLT
.L00001F7A:
	movl      4(%eax), %ebp
	movl      8(%eax), %eax
	movl      (%ebp), %ecx
	movl      %eax, 52(%esp)
	andl      $16777215, %ecx
	cmpl      $1, %ecx
	movl      %ecx, 48(%esp)
	jle       .L0000214D
.L00001F9A:
	movl      %eax, %edi
	movl      $1, %edx
	movl      $1, %eax
	movl      %ecx, %esi
.L00001FA8:
	movl      (%edi,%eax,4), %ecx
	addl      $1, %eax
	addl      $1, %ecx
	imull     %ecx, %edx
	cmpl      %esi, %eax
	jne       .L00001FA8
.L00001FB8:
	addl      $1, %edx
	movl      %edx, %edi
	movl      %edx, %esi
	orl       $738197504, %edi
	andl      $-16777216, %esi
	leal      0(,%edx,4), %eax
.L00001FD2:
	movl      avma@GOT(%ebx), %ecx
	movl      (%ecx), %ecx
	movl      %ecx, 28(%esp)
	subl      %eax, %ecx
	movl      28(%esp), %eax
	movl      %ecx, 44(%esp)
	movl      %ecx, 60(%esp)
	movl      bot@GOT(%ebx), %ecx
	subl      (%ecx), %eax
	shrl      $2, %eax
	cmpl      %edx, %eax
	jae       .L00002007
.L00001FFB:
	movl      $14, (%esp)
	call      pari_err@PLT
.L00002007:
	movl      44(%esp), %ecx
	testl     %esi, %esi
	movl      avma@GOT(%ebx), %edx
	movl      %ecx, (%edx)
	je        .L0000202D
.L00002017:
	leal      .LC12@GOTOFF(%ebx), %eax
	movl      %eax, 4(%esp)
	movl      $15, (%esp)
	call      pari_err@PLT
.L0000202D:
	movl      44(%esp), %eax
	cmpl      $1, 48(%esp)
	movl      %edi, (%eax)
	movl      $1, 4(%eax)
	jle       .L000020B8
.L00002041:
	movl      %eax, %esi
	movl      $1, %edi
	addl      $4, %esi
.L0000204B:
	movl      52(%esp), %edx
	movl      44(%esp), %ecx
	movl      %esi, 40(%esp)
	movl      (%edx,%edi,4), %edx
	movl      %ecx, 32(%esp)
	testl     %edx, %edx
	movl      %edx, 36(%esp)
	je        .L000020AF
.L00002066:
	.p2align 3
.L00002068:
	movl      32(%esp), %eax
	movl      %esi, %ecx
	cmpl      %eax, %esi
	jbe       .L0000209A
.L00002072:
	.p2align 3
.L00002078:
	addl      $4, %eax
	addl      $4, %ecx
	movl      (%eax), %edx
	imull     (%ebp,%edi,4), %edx
	cmpl      %eax, %esi
	movl      %edx, (%ecx)
	ja        .L00002078
.L0000208B:
	movl      32(%esp), %eax
	notl      %eax
	addl      %esi, %eax
	shrl      $2, %eax
	leal      4(%esi,%eax,4), %esi
.L0000209A:
	subl      $1, 36(%esp)
	je        .L000020AF
.L000020A1:
	movl      40(%esp), %eax
	movl      %esi, 40(%esp)
	movl      %eax, 32(%esp)
	jmp       .L00002068
.L000020AF:
	addl      $1, %edi
	cmpl      48(%esp), %edi
	jne       .L0000204B
.L000020B8:
	movl      44(%esp), %edx
	movl      %edx, (%esp)
	call      vecsmall_sort@PLT
.L000020C4:
	movl      bot@GOT(%ebx), %ecx
	movl      44(%esp), %eax
	cmpl      (%ecx), %eax
	jb        .L00002135
.L000020D2:
	movl      %eax, %edx
	movl      top@GOT(%ebx), %eax
	cmpl      (%eax), %edx
	jae       .L00002135
.L000020DE:
	movl      56(%esp), %ecx
	cmpl      %ecx, %edx
	jae       .L00002135
.L000020E6:
	movl      44(%esp), %edx
	movl      (%edx), %eax
	movl      %eax, %edx
	shrl      $25, %edx
	cmpl      $2, %edx
	je        .L000021C4
.L000020FA:
	jg        .L000021B8
.L00002100:
	cmpl      $1, %edx
	je        .L00002163
.L00002105:
	movl      44(%esp), %edx
	andl      $16777215, %eax
	movl      56(%esp), %ecx
	leal      (%edx,%eax,4), %eax
	movl      %edx, 8(%esp)
	movl      %eax, 4(%esp)
	movl      %ecx, (%esp)
	call      gerepile@PLT
.L00002125:
	movl      %eax, 60(%esp)
	movl      60(%esp), %eax
	addl      $76, %esp
	popl      %ebx
	popl      %esi
	popl      %edi
	popl      %ebp
	ret       
.L00002135:
	movl      56(%esp), %ecx
	movl      avma@GOT(%ebx), %edx
	movl      %ecx, (%edx)
.L00002141:
	movl      60(%esp), %eax
	addl      $76, %esp
	popl      %ebx
	popl      %esi
	popl      %edi
	popl      %ebp
	ret       
.L0000214D:
	xorl      %esi, %esi
	movl      $8, %eax
	movl      $738197506, %edi
	movl      $2, %edx
	jmp       .L00001FD2
.L00002163:
	movl      44(%esp), %ecx
	movl      4(%ecx), %edx
	movl      56(%esp), %ecx
	andl      $16777215, %edx
	leal      0(,%edx,4), %eax
	subl      %eax, %ecx
	leal      -1(%edx), %eax
	testl     %eax, %eax
	movl      %ecx, 60(%esp)
	jle       .L00002197
.L00002188:
	movl      44(%esp), %edi
.L0000218C:
	movl      (%edi,%eax,4), %esi
	movl      %esi, (%ecx,%eax,4)
	subl      $1, %eax
	jne       .L0000218C
.L00002197:
	orl       $33554432, %edx
	movl      60(%esp), %eax
	movl      %edx, (%ecx)
	movl      avma@GOT(%ebx), %edx
	movl      %ecx, (%edx)
	addl      $76, %esp
	popl      %ebx
	popl      %esi
	popl      %edi
	popl      %ebp
	ret       
.L000021B3:
	.p2align 3
.L000021B8:
	subl      $21, %edx
	cmpl      $1, %edx
	ja        .L00002105
.L000021C4:
	movl      56(%esp), %ecx
	andl      $16777215, %eax
	leal      0(,%eax,4), %edx
	subl      $1, %eax
	subl      %edx, %ecx
	cmpl      $-1, %eax
	movl      %ecx, %edx
	movl      %ecx, 60(%esp)
	movl      avma@GOT(%ebx), %ecx
	movl      %edx, (%ecx)
	je        .L00002141
.L000021F0:
	movl      44(%esp), %esi
.L000021F4:
	movl      (%esi,%eax,4), %ecx
	movl      %ecx, (%edx,%eax,4)
	subl      $1, %eax
	cmpl      $-1, %eax
	jne       .L000021F4
.L00002202:
	movl      60(%esp), %eax
	addl      $76, %esp
	popl      %ebx
	popl      %esi
	popl      %edi
	popl      %ebp
	ret       
	.size	divisorsu, .-divisorsu
# ----------------------
.L0000220E:
	.p2align 3
# ----------------------
	.globl	factor_pn_1
	.type	factor_pn_1, @function
factor_pn_1:
	pushl     %ebp
	pushl     %edi
	pushl     %esi
	pushl     %ebx
	call      __i686.get_pc_thunk.bx
.L00002219:
	addl      $_GLOBAL_OFFSET_TABLE_, %ebx
	subl      $60, %esp
	movl      avma@GOT(%ebx), %ecx
	movl      (%ecx), %ecx
	movl      %ecx, 44(%esp)
	movl      80(%esp), %ecx
	movl      4(%ecx), %eax
	movl      %ecx, 4(%esp)
	movl      $-1, (%esp)
	sarl      $30, %eax
	movl      %eax, 8(%esp)
	call      addsi_sign@PLT
.L0000224C:
	movl      %eax, (%esp)
	call      Z_factor@PLT
.L00002254:
	movl      %eax, %edi
	movl      84(%esp), %eax
	movl      %eax, (%esp)
	call      divisorsu@PLT
.L00002262:
	movl      80(%esp), %ecx
	movl      $0, 32(%esp)
	movl      %eax, %ebp
	movl      4(%ecx), %eax
	movl      %eax, %edx
	andl      $16777215, %edx
	cmpl      $3, %edx
	je        .L000024E8
.L00002284:
	movl      (%ebp), %eax
	andl      $16777215, %eax
	cmpl      $2, %eax
	jle       .L000023B0
.L00002295:
	movl      32(%esp), %ecx
	movl      $2, %esi
	andl      $3, %ecx
	movl      %ecx, 40(%esp)
	jmp       .L0000230D
.L000022A7:
	.p2align 3
.L000022A8:
	cmpl      $3, 40(%esp)
	je        .L000024A8
.L000022B3:
	cmpl      $2, 32(%esp)
	je        .L000024C1
.L000022BE:
	.p2align 3
.L000022C0:
	movl      80(%esp), %eax
	movl      %ecx, (%esp)
	movl      %eax, 4(%esp)
	call      polcyclo_eval@PLT
.L000022D0:
	movl      %eax, (%esp)
	call      Z_factor@PLT
.L000022D8:
	movl      cmp_nodata@GOT(%ebx), %ecx
	addl      $1, %esi
	movl      %edi, (%esp)
	movl      %eax, 4(%esp)
	movl      %ecx, 12(%esp)
	movl      cmpii@GOT(%ebx), %ecx
	movl      %ecx, 8(%esp)
	call      merge_factor@PLT
.L000022FB:
	movl      %eax, %edi
	movl      (%ebp), %eax
	andl      $16777215, %eax
	cmpl      %esi, %eax
	jle       .L000023B0
.L0000230D:
	movl      32(%esp), %eax
	movl      (%ebp,%esi,4), %ecx
	testl     %eax, %eax
	je        .L000022C0
.L00002319:
	movl      %ecx, %edx
	movl      %ecx, %eax
	sarl      $31, %edx
	idivl     32(%esp)
	testl     %edx, %edx
	jne       .L000022C0
.L00002328:
	cmpl      $1, 40(%esp)
	jne       .L000022A8
.L00002333:
	testb     $1, %cl
	je        .L000022B3
.L0000233C:
	movl      %ecx, 4(%esp)
	movl      80(%esp), %ecx
	movl      %ecx, (%esp)
	call      factor_Aurifeuille_prime@PLT
.L0000234C:
	movl      %eax, (%esp)
	movl      %eax, 28(%esp)
	call      Z_factor@PLT
.L00002358:
	movl      cmp_nodata@GOT(%ebx), %ecx
	movl      %edi, (%esp)
	movl      %ecx, 12(%esp)
	movl      cmpii@GOT(%ebx), %ecx
	movl      %eax, 4(%esp)
	movl      %ecx, 8(%esp)
	call      merge_factor@PLT
.L00002378:
	movl      80(%esp), %ecx
	movl      %ecx, 4(%esp)
	movl      %eax, %edi
	movl      (%ebp,%esi,4), %eax
	movl      %eax, (%esp)
	call      polcyclo_eval@PLT
.L0000238E:
	movl      28(%esp), %edx
	movl      %edx, 4(%esp)
	movl      %eax, (%esp)
	call      diviiexact@PLT
.L0000239E:
	movl      %eax, (%esp)
	call      Z_factor@PLT
.L000023A6:
	jmp       .L000022D8
.L000023AB:
	.p2align 3
.L000023B0:
	movl      %edi, (%esp)
	call      copy_bin@PLT
.L000023B8:
	movl      avma@GOT(%ebx), %ecx
	movl      %eax, %esi
	movl      44(%esp), %eax
	movl      4(%esi), %edi
	movl      %eax, (%ecx)
	testl     %edi, %edi
	je        .L00002508
.L000023D1:
	movl      bot@GOT(%ebx), %eax
	leal      16(%esi), %ecx
	movl      %edi, %ebp
	movl      (%esi), %edx
	movl      %ecx, 36(%esp)
	movl      44(%esp), %ecx
	subl      8(%esi), %ebp
	subl      (%eax), %ecx
	sall      $2, %edx
	movl      %edx, 40(%esp)
	movl      44(%esp), %edx
	sarl      $2, %ebp
	subl      40(%esp), %edx
	shrl      $2, %ecx
	cmpl      %ecx, (%esi)
	jbe       .L00002418
.L00002404:
	movl      %edx, 28(%esp)
	movl      $14, (%esp)
	call      pari_err@PLT
.L00002414:
	movl      28(%esp), %edx
.L00002418:
	movl      avma@GOT(%ebx), %ecx
	movl      40(%esp), %eax
	movl      %edx, (%ecx)
	movl      36(%esp), %ecx
	movl      %eax, 8(%esp)
	movl      %edx, (%esp)
	movl      %ecx, 4(%esp)
	call      memcpy@PLT
.L00002438:
	movl      12(%esi), %ecx
	leal      (%eax,%ebp,4), %ebp
	movl      %ebp, %eax
	subl      %edi, %eax
	andl      $-4, %eax
	testl     %ecx, %ecx
	movl      %eax, 4(%esp)
	movl      %ebp, (%esp)
	jne       .L000024D8
.L00002454:
	call      shiftaddress@PLT
.L00002459:
	movl      PARI_SIGINT_block@GOT(%ebx), %edi
	movl      (%edi), %eax
	movl      $1, (%edi)
	movl      %esi, (%esp)
	movl      %eax, 28(%esp)
	call      free@PLT
.L00002473:
	movl      28(%esp), %eax
	testl     %eax, %eax
	movl      %eax, (%edi)
	jne       .L00002499
.L0000247D:
	movl      PARI_SIGINT_pending@GOT(%ebx), %eax
	movl      (%eax), %edx
	testl     %edx, %edx
	je        .L00002499
.L00002489:
	movl      (%eax), %edx
	movl      $0, (%eax)
	movl      %edx, (%esp)
	call      raise@PLT
.L00002499:
	addl      $60, %esp
	movl      %ebp, %eax
	popl      %ebx
	popl      %esi
	popl      %edi
	popl      %ebp
	ret       
.L000024A3:
	.p2align 3
.L000024A8:
	movl      %ecx, %eax
	andl      $3, %eax
	cmpl      $2, %eax
	je        .L0000233C
.L000024B6:
	cmpl      $2, 32(%esp)
	jne       .L000022C0
.L000024C1:
	movl      %ecx, %eax
	andl      $7, %eax
	cmpl      $4, %eax
	jne       .L000022C0
.L000024CF:
	jmp       .L0000233C
.L000024D4:
	.p2align 3
.L000024D8:
	call      shiftaddress_canon@PLT
.L000024DD:
	.p2align 3
	jmp       .L00002459
.L000024E5:
	.p2align 3
.L000024E8:
	movl      8(%ecx), %ecx
	testl     %ecx, %ecx
	movl      %ecx, 32(%esp)
	js        .L00002542
.L000024F3:
	movl      %ecx, %edx
	negl      %edx
	cmpl      $1073741823, %eax
	cmovg     %ecx, %edx
	movl      %edx, 32(%esp)
	jmp       .L00002284
.L00002508:
	movl      PARI_SIGINT_block@GOT(%ebx), %edi
	movl      (%edi), %ebp
	movl      $1, (%edi)
	movl      %esi, (%esp)
	call      free@PLT
.L0000251E:
	testl     %ebp, %ebp
	movl      %ebp, (%edi)
	jne       .L00002530
.L00002524:
	movl      PARI_SIGINT_pending@GOT(%ebx), %eax
	movl      (%eax), %edx
	testl     %edx, %edx
	jne       .L0000254F
.L00002530:
	movl      gen_0@GOT(%ebx), %eax
	movl      (%eax), %ebp
	addl      $60, %esp
	popl      %ebx
	popl      %esi
	popl      %edi
	movl      %ebp, %eax
	popl      %ebp
	ret       
.L00002542:
	movl      $0, 32(%esp)
	jmp       .L00002284
.L0000254F:
	movl      (%eax), %edx
	movl      $0, (%eax)
	movl      %edx, (%esp)
	call      raise@PLT
.L0000255F:
	jmp       .L00002530
	.size	factor_pn_1, .-factor_pn_1
# ----------------------
.L00002561:
	.p2align 4
# ----------------------
	.globl	corepartial
	.type	corepartial, @function
corepartial:
	pushl     %ebp
	pushl     %edi
	pushl     %esi
	pushl     %ebx
	call      __i686.get_pc_thunk.bx
.L00002579:
	addl      $_GLOBAL_OFFSET_TABLE_, %ebx
	subl      $44, %esp
	movl      64(%esp), %esi
	movl      (%esi), %eax
	movl      avma@GOT(%ebx), %edx
	shrl      $25, %eax
	movl      (%edx), %edx
	cmpl      $1, %eax
	movl      %edx, 28(%esp)
	je        .L000025B2
.L0000259C:
	leal      .LC16@GOTOFF(%ebx), %eax
	movl      %eax, 4(%esp)
	movl      $11, (%esp)
	call      pari_err@PLT
.L000025B2:
	movl      68(%esp), %eax
	movl      %esi, (%esp)
	movl      %eax, 4(%esp)
	call      Z_factor_limit@PLT
.L000025C2:
	movl      4(%eax), %ecx
	movl      8(%eax), %edi
	movl      gen_1@GOT(%ebx), %eax
	movl      (%ecx), %ebp
	movl      %ecx, 24(%esp)
	movl      (%eax), %eax
	movl      %ebp, %edx
	andl      $16777215, %edx
	cmpl      $1, %edx
	jle       .L0000263A
.L000025E3:
	movl      $1, %esi
	jmp       .L000025FF
.L000025EA:
	.p2align 3
.L000025F0:
	movl      %ebp, %edx
	addl      $1, %esi
	andl      $16777215, %edx
	cmpl      %edx, %esi
	jge       .L0000263A
.L000025FF:
	movl      (%edi,%esi,4), %ecx
	movl      4(%ecx), %edx
	andl      $16777215, %edx
	testb     $1, -4(%ecx,%edx,4)
	je        .L000025F0
.L00002612:
	movl      24(%esp), %ecx
	movl      (%ecx,%esi,4), %edx
	addl      $1, %esi
	movl      %eax, (%esp)
	movl      %edx, 4(%esp)
	call      mulii@PLT
.L00002628:
	movl      24(%esp), %edx
	movl      (%edx), %ebp
	movl      %ebp, %edx
	andl      $16777215, %edx
	cmpl      %edx, %esi
	jl        .L000025FF
.L0000263A:
	movl      bot@GOT(%ebx), %edx
	cmpl      (%edx), %eax
	jb        .L0000264E
.L00002644:
	movl      top@GOT(%ebx), %edx
	cmpl      (%edx), %eax
	jb        .L00002668
.L0000264E:
	movl      avma@GOT(%ebx), %ecx
	movl      28(%esp), %edx
	movl      %edx, (%ecx)
	addl      $44, %esp
	popl      %ebx
	popl      %esi
	popl      %edi
	popl      %ebp
	ret       
.L00002662:
	.p2align 3
.L00002668:
	cmpl      28(%esp), %eax
	jae       .L0000264E
.L0000266E:
	movl      4(%eax), %esi
	movl      28(%esp), %edi
	andl      $16777215, %esi
	leal      0(,%esi,4), %edx
	subl      %edx, %edi
	leal      -1(%esi), %edx
	testl     %edx, %edx
	jle       .L0000269B
.L0000268B:
	.p2align 3
.L00002690:
	movl      (%eax,%edx,4), %ecx
	movl      %ecx, (%edi,%edx,4)
	subl      $1, %edx
	jne       .L00002690
.L0000269B:
	movl      avma@GOT(%ebx), %ecx
	orl       $33554432, %esi
	movl      %edi, %eax
	movl      %esi, (%edi)
	movl      %edi, (%ecx)
	addl      $44, %esp
	popl      %ebx
	popl      %esi
	popl      %edi
	popl      %ebp
	ret       
	.size	corepartial, .-corepartial
# ----------------------
.L000026B5:
	.p2align 4
# ----------------------
	.globl	core2partial
	.type	core2partial, @function
core2partial:
	pushl     %ebp
	pushl     %edi
	pushl     %esi
	pushl     %ebx
	call      __i686.get_pc_thunk.bx
.L000026C9:
	addl      $_GLOBAL_OFFSET_TABLE_, %ebx
	subl      $44, %esp
	movl      64(%esp), %esi
	movl      avma@GOT(%ebx), %eax
	movl      (%eax), %ebp
	movl      (%esi), %eax
	shrl      $25, %eax
	cmpl      $1, %eax
	je        .L000026FE
.L000026E8:
	leal      .LC17@GOTOFF(%ebx), %eax
	movl      %eax, 4(%esp)
	movl      $11, (%esp)
	call      pari_err@PLT
.L000026FE:
	movl      68(%esp), %eax
	movl      %esi, (%esp)
	movl      %eax, 4(%esp)
	call      Z_factor_limit@PLT
.L0000270E:
	call      core2fa
.L00002713:
	movl      %eax, (%esp)
	call      copy_bin@PLT
.L0000271B:
	movl      %eax, %esi
	movl      avma@GOT(%ebx), %eax
	movl      4(%esi), %edi
	movl      %ebp, (%eax)
	testl     %edi, %edi
	je        .L00002810
.L00002730:
	movl      (%esi), %ecx
	leal      16(%esi), %eax
	movl      %edi, %edx
	movl      %eax, 28(%esp)
	movl      %ebp, %eax
	subl      8(%esi), %edx
	sall      $2, %ecx
	subl      %ecx, %eax
	movl      %eax, 24(%esp)
	movl      bot@GOT(%ebx), %eax
	sarl      $2, %edx
	subl      (%eax), %ebp
	shrl      $2, %ebp
	cmpl      %ebp, (%esi)
	jbe       .L00002777
.L0000275B:
	movl      %edx, 16(%esp)
	movl      %ecx, 20(%esp)
	movl      $14, (%esp)
	call      pari_err@PLT
.L0000276F:
	movl      20(%esp), %ecx
	movl      16(%esp), %edx
.L00002777:
	movl      24(%esp), %eax
	movl      avma@GOT(%ebx), %ebp
	movl      %eax, (%ebp)
	movl      28(%esp), %ebp
	movl      %edx, 16(%esp)
	movl      %ecx, 8(%esp)
	movl      %eax, (%esp)
	movl      %ebp, 4(%esp)
	call      memcpy@PLT
.L0000279C:
	movl      16(%esp), %edx
	leal      (%eax,%edx,4), %ebp
	movl      12(%esi), %edx
	movl      %ebp, %eax
	subl      %edi, %eax
	andl      $-4, %eax
	testl     %edx, %edx
	movl      %eax, 4(%esp)
	movl      %ebp, (%esp)
	jne       .L00002808
.L000027B8:
	call      shiftaddress@PLT
.L000027BD:
	movl      PARI_SIGINT_block@GOT(%ebx), %edi
	movl      (%edi), %eax
	movl      $1, (%edi)
	movl      %esi, (%esp)
	movl      %eax, 20(%esp)
	call      free@PLT
.L000027D7:
	movl      20(%esp), %eax
	testl     %eax, %eax
	movl      %eax, (%edi)
	jne       .L000027FD
.L000027E1:
	movl      PARI_SIGINT_pending@GOT(%ebx), %eax
	movl      (%eax), %edx
	testl     %edx, %edx
	je        .L000027FD
.L000027ED:
	movl      (%eax), %edx
	movl      $0, (%eax)
	movl      %edx, (%esp)
	call      raise@PLT
.L000027FD:
	addl      $44, %esp
	movl      %ebp, %eax
	popl      %ebx
	popl      %esi
	popl      %edi
	popl      %ebp
	ret       
.L00002807:
	.p2align 3
.L00002808:
	call      shiftaddress_canon@PLT
.L0000280D:
	jmp       .L000027BD
.L0000280F:
	.p2align 3
.L00002810:
	movl      PARI_SIGINT_block@GOT(%ebx), %edi
	movl      (%edi), %ebp
	movl      $1, (%edi)
	movl      %esi, (%esp)
	call      free@PLT
.L00002826:
	testl     %ebp, %ebp
	movl      %ebp, (%edi)
	jne       .L00002838
.L0000282C:
	movl      PARI_SIGINT_pending@GOT(%ebx), %eax
	movl      (%eax), %edx
	testl     %edx, %edx
	jne       .L00002850
.L00002838:
	movl      gen_0@GOT(%ebx), %eax
	movl      (%eax), %ebp
	addl      $44, %esp
	popl      %ebx
	popl      %esi
	popl      %edi
	movl      %ebp, %eax
	popl      %ebp
	ret       
.L0000284A:
	.p2align 3
.L00002850:
	movl      (%eax), %edx
	movl      $0, (%eax)
	movl      %edx, (%esp)
	call      raise@PLT
.L00002860:
	jmp       .L00002838
	.size	core2partial, .-core2partial
# ----------------------
.L00002862:
	.p2align 4
# ----------------------
	.globl	core
	.type	core, @function
core:
	pushl     %ebp
	pushl     %edi
	pushl     %esi
	pushl     %ebx
	call      __i686.get_pc_thunk.bx
.L00002879:
	addl      $_GLOBAL_OFFSET_TABLE_, %ebx
	subl      $44, %esp
	movl      64(%esp), %esi
	movl      (%esi), %eax
	movl      avma@GOT(%ebx), %edx
	shrl      $25, %eax
	movl      (%edx), %edx
	cmpl      $1, %eax
	movl      %edx, 28(%esp)
	je        .L000028B2
.L0000289C:
	leal      .LC18@GOTOFF(%ebx), %eax
	movl      %eax, 4(%esp)
	movl      $11, (%esp)
	call      pari_err@PLT
.L000028B2:
	movl      %esi, (%esp)
	call      Z_factor@PLT
.L000028BA:
	movl      4(%eax), %ecx
	movl      8(%eax), %edi
	movl      gen_1@GOT(%ebx), %eax
	movl      (%ecx), %ebp
	movl      %ecx, 24(%esp)
	movl      (%eax), %eax
	movl      %ebp, %edx
	andl      $16777215, %edx
	cmpl      $1, %edx
	jle       .L00002932
.L000028DB:
	movl      $1, %esi
	jmp       .L000028F7
.L000028E2:
	.p2align 3
.L000028E8:
	movl      %ebp, %edx
	addl      $1, %esi
	andl      $16777215, %edx
	cmpl      %edx, %esi
	jge       .L00002932
.L000028F7:
	movl      (%edi,%esi,4), %ecx
	movl      4(%ecx), %edx
	andl      $16777215, %edx
	testb     $1, -4(%ecx,%edx,4)
	je        .L000028E8
.L0000290A:
	movl      24(%esp), %ecx
	movl      (%ecx,%esi,4), %edx
	addl      $1, %esi
	movl      %eax, (%esp)
	movl      %edx, 4(%esp)
	call      mulii@PLT
.L00002920:
	movl      24(%esp), %edx
	movl      (%edx), %ebp
	movl      %ebp, %edx
	andl      $16777215, %edx
	cmpl      %edx, %esi
	jl        .L000028F7
.L00002932:
	movl      bot@GOT(%ebx), %edx
	cmpl      (%edx), %eax
	jb        .L00002946
.L0000293C:
	movl      top@GOT(%ebx), %edx
	cmpl      (%edx), %eax
	jb        .L00002960
.L00002946:
	movl      avma@GOT(%ebx), %ecx
	movl      28(%esp), %edx
	movl      %edx, (%ecx)
	addl      $44, %esp
	popl      %ebx
	popl      %esi
	popl      %edi
	popl      %ebp
	ret       
.L0000295A:
	.p2align 3
.L00002960:
	cmpl      28(%esp), %eax
	jae       .L00002946
.L00002966:
	movl      4(%eax), %esi
	movl      28(%esp), %edi
	andl      $16777215, %esi
	leal      0(,%esi,4), %edx
	subl      %edx, %edi
	leal      -1(%esi), %edx
	testl     %edx, %edx
	jle       .L00002993
.L00002983:
	.p2align 3
.L00002988:
	movl      (%eax,%edx,4), %ecx
	movl      %ecx, (%edi,%edx,4)
	subl      $1, %edx
	jne       .L00002988
.L00002993:
	movl      avma@GOT(%ebx), %ecx
	orl       $33554432, %esi
	movl      %edi, %eax
	movl      %esi, (%edi)
	movl      %edi, (%ecx)
	addl      $44, %esp
	popl      %ebx
	popl      %esi
	popl      %edi
	popl      %ebp
	ret       
	.size	core, .-core
# ----------------------
.L000029AD:
	.p2align 3
# ----------------------
	.globl	core2
	.type	core2, @function
core2:
	subl      $60, %esp
	movl      %ebx, 44(%esp)
	call      __i686.get_pc_thunk.bx
.L000029BC:
	addl      $_GLOBAL_OFFSET_TABLE_, %ebx
	movl      %esi, 48(%esp)
	movl      64(%esp), %esi
	movl      %edi, 52(%esp)
	movl      %ebp, 56(%esp)
	movl      avma@GOT(%ebx), %eax
	movl      (%eax), %ebp
	movl      (%esi), %eax
	shrl      $25, %eax
	cmpl      $1, %eax
	je        .L000029FA
.L000029E4:
	leal      .LC18@GOTOFF(%ebx), %eax
	movl      %eax, 4(%esp)
	movl      $11, (%esp)
	call      pari_err@PLT
.L000029FA:
	movl      %esi, (%esp)
	call      Z_factor@PLT
.L00002A02:
	call      core2fa
.L00002A07:
	movl      %eax, (%esp)
	call      copy_bin@PLT
.L00002A0F:
	movl      %eax, %esi
	movl      avma@GOT(%ebx), %eax
	movl      4(%esi), %edi
	movl      %ebp, (%eax)
	testl     %edi, %edi
	je        .L00002B10
.L00002A24:
	movl      (%esi), %ecx
	leal      16(%esi), %eax
	movl      %edi, %edx
	movl      %eax, 28(%esp)
	movl      %ebp, %eax
	subl      8(%esi), %edx
	sall      $2, %ecx
	subl      %ecx, %eax
	movl      %eax, 24(%esp)
	movl      bot@GOT(%ebx), %eax
	sarl      $2, %edx
	subl      (%eax), %ebp
	shrl      $2, %ebp
	cmpl      %ebp, (%esi)
	jbe       .L00002A6B
.L00002A4F:
	movl      %edx, 16(%esp)
	movl      %ecx, 20(%esp)
	movl      $14, (%esp)
	call      pari_err@PLT
.L00002A63:
	movl      20(%esp), %ecx
	movl      16(%esp), %edx
.L00002A6B:
	movl      24(%esp), %eax
	movl      avma@GOT(%ebx), %ebp
	movl      %eax, (%ebp)
	movl      28(%esp), %ebp
	movl      %ecx, 8(%esp)
	movl      %edx, 16(%esp)
	movl      %eax, (%esp)
	movl      %ebp, 4(%esp)
	call      memcpy@PLT
.L00002A90:
	movl      16(%esp), %edx
	movl      12(%esi), %ecx
	leal      (%eax,%edx,4), %ebp
	movl      %ebp, %eax
	subl      %edi, %eax
	andl      $-4, %eax
	testl     %ecx, %ecx
	movl      %eax, 4(%esp)
	movl      %ebp, (%esp)
	jne       .L00002B08
.L00002AAC:
	call      shiftaddress@PLT
.L00002AB1:
	movl      PARI_SIGINT_block@GOT(%ebx), %edi
	movl      (%edi), %eax
	movl      $1, (%edi)
	movl      %esi, (%esp)
	movl      %eax, 20(%esp)
	call      free@PLT
.L00002ACB:
	movl      20(%esp), %eax
	testl     %eax, %eax
	movl      %eax, (%edi)
	jne       .L00002AF1
.L00002AD5:
	movl      PARI_SIGINT_pending@GOT(%ebx), %eax
	movl      (%eax), %edx
	testl     %edx, %edx
	je        .L00002AF1
.L00002AE1:
	movl      (%eax), %edx
	movl      $0, (%eax)
	movl      %edx, (%esp)
	call      raise@PLT
.L00002AF1:
	movl      %ebp, %eax
	movl      44(%esp), %ebx
	movl      48(%esp), %esi
	movl      52(%esp), %edi
	movl      56(%esp), %ebp
	addl      $60, %esp
	ret       
.L00002B07:
	.p2align 3
.L00002B08:
	call      shiftaddress_canon@PLT
.L00002B0D:
	jmp       .L00002AB1
.L00002B0F:
	.p2align 3
.L00002B10:
	movl      PARI_SIGINT_block@GOT(%ebx), %edi
	movl      (%edi), %ebp
	movl      $1, (%edi)
	movl      %esi, (%esp)
	call      free@PLT
.L00002B26:
	testl     %ebp, %ebp
	movl      %ebp, (%edi)
	jne       .L00002B38
.L00002B2C:
	movl      PARI_SIGINT_pending@GOT(%ebx), %eax
	movl      (%eax), %edx
	testl     %edx, %edx
	jne       .L00002B48
.L00002B38:
	movl      gen_0@GOT(%ebx), %eax
	movl      (%eax), %ebp
	jmp       .L00002AF1
.L00002B42:
	.p2align 3
.L00002B48:
	movl      (%eax), %edx
	movl      $0, (%eax)
	movl      %edx, (%esp)
	call      raise@PLT
.L00002B58:
	jmp       .L00002B38
	.size	core2, .-core2
# ----------------------
.L00002B5A:
	.p2align 3
# ----------------------
	.globl	core0
	.type	core0, @function
core0:
	pushl     %ebx
	subl      $24, %esp
	movl      36(%esp), %edx
	movl      32(%esp), %eax
	call      __i686.get_pc_thunk.bx
.L00002B71:
	addl      $_GLOBAL_OFFSET_TABLE_, %ebx
	testl     %edx, %edx
	movl      %eax, (%esp)
	jne       .L00002B88
.L00002B7E:
	call      core@PLT
.L00002B83:
	addl      $24, %esp
	popl      %ebx
	ret       
.L00002B88:
	call      core2@PLT
.L00002B8D:
	addl      $24, %esp
	popl      %ebx
	ret       
	.size	core0, .-core0
# ----------------------
.L00002B92:
	.p2align 4
# ----------------------
	.globl	coredisc
	.type	coredisc, @function
coredisc:
	subl      $44, %esp
	movl      %ebx, 28(%esp)
	movl      48(%esp), %eax
	call      __i686.get_pc_thunk.bx
.L00002BB0:
	addl      $_GLOBAL_OFFSET_TABLE_, %ebx
	movl      %esi, 32(%esp)
	movl      %edi, 36(%esp)
	movl      %ebp, 40(%esp)
	movl      %eax, (%esp)
	movl      avma@GOT(%ebx), %esi
	movl      (%esi), %edi
	call      core@PLT
.L00002BD2:
	movl      4(%eax), %ecx
	movl      %ecx, %edx
	sarl      $30, %edx
	testl     %edx, %edx
	je        .L00002C57
.L00002BDE:
	andl      $16777215, %ecx
	movl      -4(%eax,%ecx,4), %ecx
	andl      $3, %ecx
	testl     %edx, %edx
	js        .L00002C78
.L00002BF3:
	cmpl      $1, %ecx
	jle       .L00002C57
.L00002BF8:
	movl      $2, 4(%esp)
	movl      %eax, (%esp)
	call      shifti@PLT
.L00002C08:
	movl      bot@GOT(%ebx), %edx
	cmpl      (%edx), %eax
	jb        .L00002C70
.L00002C12:
	movl      top@GOT(%ebx), %edx
	cmpl      (%edx), %eax
	jae       .L00002C70
.L00002C1C:
	cmpl      %edi, %eax
	jae       .L00002C70
.L00002C20:
	movl      4(%eax), %ebp
	andl      $16777215, %ebp
	leal      0(,%ebp,4), %edx
	subl      %edx, %edi
	leal      -1(%ebp), %edx
	testl     %edx, %edx
	jle       .L00002C4B
.L00002C39:
	.p2align 4
.L00002C40:
	movl      (%eax,%edx,4), %ecx
	movl      %ecx, (%edi,%edx,4)
	subl      $1, %edx
	jne       .L00002C40
.L00002C4B:
	orl       $33554432, %ebp
	movl      %edi, %eax
	movl      %ebp, (%edi)
	movl      %edi, (%esi)
.L00002C57:
	movl      28(%esp), %ebx
	movl      32(%esp), %esi
	movl      36(%esp), %edi
	movl      40(%esp), %ebp
	addl      $44, %esp
	ret       
.L00002C6B:
	.p2align 3
.L00002C70:
	movl      %edi, (%esi)
	jmp       .L00002C57
.L00002C74:
	.p2align 3
.L00002C78:
	movl      $4, %edx
	subl      %ecx, %edx
	movl      %edx, %ecx
	jmp       .L00002BF3
	.size	coredisc, .-coredisc
# ----------------------
.L00002C86:
	.p2align 4
# ----------------------
	.globl	coredisc2
	.type	coredisc2, @function
coredisc2:
	subl      $76, %esp
	movl      %ebx, 60(%esp)
	movl      80(%esp), %eax
	call      __i686.get_pc_thunk.bx
.L00002CA0:
	addl      $_GLOBAL_OFFSET_TABLE_, %ebx
	movl      %esi, 64(%esp)
	movl      %edi, 68(%esp)
	movl      %ebp, 72(%esp)
	movl      avma@GOT(%ebx), %edx
	movl      (%edx), %edx
	movl      %eax, (%esp)
	movl      %edx, 44(%esp)
	call      core2@PLT
.L00002CC6:
	movl      %eax, %esi
	movl      4(%eax), %eax
	movl      8(%esi), %ecx
	movl      %ecx, 40(%esp)
	movl      4(%eax), %ecx
	movl      %ecx, %edx
	sarl      $30, %edx
	testl     %edx, %edx
	je        .L00002DC0
.L00002CE2:
	andl      $16777215, %ecx
	movl      -4(%eax,%ecx,4), %ecx
	andl      $3, %ecx
	testl     %edx, %edx
	js        .L00002E10
.L00002CF7:
	cmpl      $1, %ecx
	jle       .L00002DC0
.L00002D00:
	movl      avma@GOT(%ebx), %ebp
	movl      bot@GOT(%ebx), %ecx
	movl      (%ebp), %edx
	movl      %edx, %ebp
	subl      (%ecx), %ebp
	leal      -12(%edx), %edi
	movl      %edi, %esi
	cmpl      $11, %ebp
	jbe       .L00002DE8
.L00002D21:
	movl      avma@GOT(%ebx), %ecx
	movl      %edi, (%ecx)
	movl      $570425347, -12(%edx)
	movl      %edx, 32(%esp)
	movl      $2, 4(%esp)
	movl      %eax, (%esp)
	call      shifti@PLT
.L00002D44:
	movl      40(%esp), %ebp
	movl      %eax, 4(%edi)
	movl      $-1, 4(%esp)
	movl      %ebp, (%esp)
	call      gmul2n@PLT
.L00002D5B:
	movl      bot@GOT(%ebx), %ecx
	cmpl      (%ecx), %edi
	movl      %eax, 8(%edi)
	movl      32(%esp), %edx
	jb        .L00002DD8
.L00002D6C:
	movl      top@GOT(%ebx), %eax
	cmpl      (%eax), %edi
	jae       .L00002DD8
.L00002D76:
	cmpl      44(%esp), %edi
	jae       .L00002DD8
.L00002D7C:
	movl      -12(%edx), %eax
	movl      %eax, %ecx
	shrl      $25, %ecx
	cmpl      $2, %ecx
	je        .L00002E2C
.L00002D8D:
	jg        .L00002E20
.L00002D93:
	cmpl      $1, %ecx
	je        .L00002E70
.L00002D9C:
	movl      44(%esp), %edx
	andl      $16777215, %eax
	leal      (%edi,%eax,4), %eax
	movl      %edi, 8(%esp)
	movl      %eax, 4(%esp)
	movl      %edx, (%esp)
	call      gerepile@PLT
.L00002DB8:
	movl      %eax, %esi
	.p2align 3
.L00002DC0:
	movl      %esi, %eax
	movl      60(%esp), %ebx
	movl      64(%esp), %esi
	movl      68(%esp), %edi
	movl      72(%esp), %ebp
	addl      $76, %esp
	ret       
.L00002DD6:
	.p2align 3
.L00002DD8:
	movl      44(%esp), %edx
	movl      avma@GOT(%ebx), %ebp
	movl      %edx, (%ebp)
	jmp       .L00002DC0
.L00002DE7:
	.p2align 3
.L00002DE8:
	movl      %eax, 36(%esp)
	movl      %edx, 32(%esp)
	movl      $14, (%esp)
	call      pari_err@PLT
.L00002DFC:
	movl      32(%esp), %edx
	movl      36(%esp), %eax
	jmp       .L00002D21
.L00002E09:
	.p2align 4
.L00002E10:
	movl      $4, %edx
	subl      %ecx, %edx
	movl      %edx, %ecx
	jmp       .L00002CF7
.L00002E1E:
	.p2align 3
.L00002E20:
	subl      $21, %ecx
	cmpl      $1, %ecx
	ja        .L00002D9C
.L00002E2C:
	movl      44(%esp), %edi
	andl      $16777215, %eax
	movl      avma@GOT(%ebx), %ebp
	leal      0(,%eax,4), %ecx
	subl      $1, %eax
	subl      %ecx, %edi
	cmpl      $-1, %eax
	movl      %edi, %esi
	movl      %edi, (%ebp)
	je        .L00002DC0
.L00002E55:
	.p2align 3
.L00002E58:
	movl      -12(%edx,%eax,4), %ecx
	movl      %ecx, (%edi,%eax,4)
	subl      $1, %eax
	cmpl      $-1, %eax
	jne       .L00002E58
.L00002E67:
	jmp       .L00002DC0
.L00002E6C:
	.p2align 3
.L00002E70:
	movl      4(%edi), %ebp
	movl      44(%esp), %edi
	andl      $16777215, %ebp
	leal      0(,%ebp,4), %eax
	subl      %eax, %edi
	leal      -1(%ebp), %eax
	movl      %edi, %esi
	testl     %eax, %eax
	jle       .L00002E9C
.L00002E8F:
	.p2align 3
.L00002E90:
	movl      -12(%edx,%eax,4), %ecx
	movl      %ecx, (%edi,%eax,4)
	subl      $1, %eax
	jne       .L00002E90
.L00002E9C:
	movl      avma@GOT(%ebx), %ecx
	movl      %ebp, %eax
	orl       $33554432, %eax
	movl      %eax, (%edi)
	movl      %edi, (%ecx)
	jmp       .L00002DC0
	.size	coredisc2, .-coredisc2
# ----------------------
.L00002EB2:
	.p2align 4
# ----------------------
	.globl	coredisc0
	.type	coredisc0, @function
coredisc0:
	pushl     %ebx
	subl      $24, %esp
	movl      36(%esp), %ecx
	movl      32(%esp), %eax
	call      __i686.get_pc_thunk.bx
.L00002ED1:
	addl      $_GLOBAL_OFFSET_TABLE_, %ebx
	testl     %ecx, %ecx
	movl      %eax, (%esp)
	jne       .L00002EE8
.L00002EDE:
	call      coredisc@PLT
.L00002EE3:
	addl      $24, %esp
	popl      %ebx
	ret       
.L00002EE8:
	call      coredisc2@PLT
.L00002EED:
	addl      $24, %esp
	popl      %ebx
	ret       
	.size	coredisc0, .-coredisc0
# ----------------------
	.local	_maxprime
	.comm	_maxprime,4,4
# ----------------------
	.section       .text.__i686.get_pc_thunk.cx,"axG",@progbits,__i686.get_pc_thunk.cx,comdat
	.hidden	__i686.get_pc_thunk.cx
	.globl	__i686.get_pc_thunk.cx
	.type	__i686.get_pc_thunk.cx, @function
__i686.get_pc_thunk.cx:
	movl      (%esp), %ecx
	ret       
# ----------------------
	.section       .text.__i686.get_pc_thunk.bx,"axG",@progbits,__i686.get_pc_thunk.bx,comdat
	.hidden	__i686.get_pc_thunk.bx
	.globl	__i686.get_pc_thunk.bx
	.type	__i686.get_pc_thunk.bx, @function
__i686.get_pc_thunk.bx:
	movl      (%esp), %ebx
	ret       
# ----------------------
	.ident	"GCC: (Ubuntu/Linaro 4.6.3-1ubuntu5) 4.6.3"
	.section	.note.GNU-stack,"",@progbits
