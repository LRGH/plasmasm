	.file	"inflate.c"
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC01:
	.section	.rodata.str1.4,"aMS",@progbits,1
.LC04:
	.section	.text.unlikely,"ax",@progbits
.LCOLDB1:
	.section       .rodata.str1.4,"aMS",@progbits,1
.LC00000000.str1.4:
	.string	"too many length or distance symbols"
.LC00000024.str1.4:
	.string	"invalid code -- missing end-of-block"
# ----------------------
	.section       .rodata.str1.1,"aMS",@progbits,1
.LC00000000.str1.1:
	.string	"incorrect header check"
.LC00000017.str1.1:
	.string	"unknown compression method"
.LC00000032.str1.1:
	.string	"invalid window size"
.LC00000046.str1.1:
	.string	"unknown header flags set"
.LC0000005F.str1.1:
	.string	"header crc mismatch"
.LC00000073.str1.1:
	.string	"invalid block type"
.LC00000086.str1.1:
	.string	"invalid stored block lengths"
.LC000000A3.str1.1:
	.string	"invalid code lengths set"
.LC000000BC.str1.1:
	.string	"invalid bit length repeat"
.LC000000D6.str1.1:
	.string	"invalid literal/lengths set"
.LC000000F2.str1.1:
	.string	"invalid distances set"
.LC00000108.str1.1:
	.string	"invalid literal/length code"
.LC00000124.str1.1:
	.string	"invalid distance code"
.LC0000013A.str1.1:
	.string	"invalid distance too far back"
.LC00000158.str1.1:
	.string	"incorrect data check"
.LC0000016D.str1.1:
	.string	"incorrect length check"
# ----------------------
	.section       .rodata
	.align 64
.LC00000000:
	.long	.L000012A0
	.long	.L000013A0
	.long	.L00000F68
	.long	.L000017D0
	.long	.L00000CD0
	.long	.L00000FE0
	.long	.L00001A28
	.long	.L00001140
	.long	.L00001278
	.long	.L00000740
	.long	.L0000081C
	.long	.L00000853
	.long	.L0000085E
	.long	.L00001BE8
	.long	.L000010D0
	.long	.L00001130
	.long	.L000015E8
	.long	.L000016B0
	.long	.L00001420
	.long	.L00000A18
	.long	.L00000A22
	.long	.L00000B10
	.long	.L00000B36
	.long	.L00000918
	.long	.L0000099A
	.long	.L00001880
	.long	.L000018C0
	.long	.L00001B00
	.long	.L00000DA0
	.long	.L00001288
	.long	.L00000D90
	.long	0
# ----------------------
	.local	distfix.3431
	.type	distfix.3431, @object
distfix.3431:
	.long	66832
	.long	16844055
	.long	1115411
	.long	268502299
	.long	328977
	.long	67175705
	.long	4261141
	.long	1073808669
	.long	197904
	.long	33621272
	.long	2163988
	.long	536937756
	.long	591122
	.long	134284570
	.long	8455446
	.long	1344
	.long	132368
	.long	25232663
	.long	1639699
	.long	402720027
	.long	460049
	.long	100730137
	.long	6358293
	.long	1610679581
	.long	263440
	.long	50398488
	.long	3212564
	.long	805373212
	.long	853266
	.long	201393434
	.long	12649750
	.long	1344
	.size	distfix.3431, 128
# ----------------------
	.local	lenfix.3430
	.type	lenfix.3430, @object
lenfix.3430:
	.ascii	"`\007\000\000\000\010P\000\000\010\020\000\024\010s\000\022\007\037\000\000\010p\000\000\0100\000\000\t\300\000\020\007\n\000\000\010`\000\000\010 \000\000\t\240\000\000\010\000\000\000\010\200\000\000\010@\000\000\t\340\000\020\007\006\000\000\010X\000\000\010\030\000\000\t\220\000\023\007;\000\000\010x\000\000\0108\000\000\t\320\000\021\007\021\000\000\010h\000\000\010(\000\000\t\260\000\000\010\010\000\000\010\210\000\000\010H\000\000\t\360\000\020\007\004\000\000\010T\000\000\010\024\000\025\010\343\000\023\007+\000\000\010t\000\000\0104\000\000\t\310\000\021\007\r\000\000\010d\000\000\010$\000\000\t\250\000\000\010\004\000\000\010\204\000\000\010D\000\000\t\350\000\020\007\010\000\000\010\\\000\000\010\034\000\000\t\230\000\024\007S\000\000\010|\000\000\010<\000\000\t\330\000\022\007\027\000\000\010l\000\000\010,\000\000\t\270\000\000\010\014\000\000\010\214\000\000\010L\000\000\t\370\000\020\007\003\000\000\010R\000\000\010\022\000\025\010\243\000\023\007#\000\000\010r\000\000\0102\000\000\t\304\000\021\007\013\000\000\010b\000\000\010\"\000\000\t\244\000\000\010\002\000\000\010\202\000\000\010B\000\000\t\344\000\020\007\007\000\000\010Z\000\000\010\032\000\000\t\224\000\024\007C\000\000\010z\000\000\010:\000\000\t\324\000\022\007\023\000\000\010j\000\000\010*\000\000\t\264\000\000\010\n\000\000\010\212\000\000\010J\000\000\t\364\000\020\007\005\000\000\010V\000\000\010\026\000@\010\000\000\023\0073\000\000\010v\000\000\0106\000\000\t\314\000\021\007\017\000\000\010f\000\000\010&\000\000\t\254\000\000\010\006\000\000\010\206\000\000\010F\000\000\t\354\000\020\007\t\000\000\010^\000\000\010\036\000\000\t\234\000\024\007c\000\000\010~\000\000\010>\000\000\t\334\000\022\007\033\000\000\010n\000\000\010.\000\000\t\274\000\000\010\016\000\000\010\216\000\000\010N\000\000\t\374\000`\007\000\000\000\010Q\000\000\010\021\000\025\010\203\000\022\007\037\000\000\010q\000\000\0101\000\000\t\302\000\020\007\n\000\000\010a\000\000\010!\000\000\t\242\000\000\010\001\000\000\010\201\000\000\010A\000\000\t\342\000\020\007\006\000\000\010Y\000\000\010\031\000\000\t\222\000\023\007;\000\000\010y\000\000\0109\000\000\t\322\000\021\007\021\000\000\010i\000\000\010)\000\000\t\262\000\000\010\t\000\000\010\211\000\000\010I\000\000\t\362\000\020\007\004\000\000\010U\000\000\010\025\000\020\010\002\001\023\007+\000\000\010u\000\000\0105\000\000\t\312\000\021\007\r\000\000\010e\000\000\010%\000\000\t\252\000\000\010\005\000\000\010\205\000\000\010E\000\000\t\352\000\020\007\010\000\000\010]\000\000\010\035\000\000\t\232\000\024\007S\000\000\010}\000\000\010=\000\000\t\332\000\022\007\027\000\000\010m\000\000\010-\000\000\t\272\000\000\010\r\000\000\010\215\000\000\010M\000\000\t\372\000\020\007\003\000\000\010S\000\000\010\023\000\025\010\303\000\023\007#\000\000\010s\000\000\0103\000\000\t\306\000\021\007\013\000\000\010c\000\000\010#\000\000\t\246\000\000\010\003\000\000\010\203\000\000\010C\000\000\t\346\000\020\007\007\000\000\010[\000\000\010\033\000\000\t\226\000\024\007C\000\000\010{\000\000\010;\000\000\t\326\000\022\007\023\000\000\010k\000\000\010+\000\000\t\266\000\000\010\013\000\000\010\213\000\000\010K\000\000\t\366\000\020\007\005\000\000\010W\000\000\010\027\000@\010\000\000\023\0073\000\000\010w\000\000\0107\000\000\t\316\000\021\007\017\000\000\010g\000\000\010'\000\000\t\256\000\000\010\007\000\000\010\207\000\000\010G\000\000\t\356\000\020\007\t\000\000\010_\000\000\010\037\000\000\t\236\000\024\007c\000\000\010\177\000\000\010?\000\000\t\336\000\022\007\033\000\000\010o\000\000\010/\000\000\t\276\000\000\010\017\000\000\010\217\000\000\010O\000\000\t\376\000`\007\000\000\000\010P\000\000\010\020\000\024\010s\000\022\007\037\000\000\010p\000\000\0100\000\000\t\301\000\020\007\n\000\000\010`\000\000\010 \000\000\t\241\000\000\010\000\000\000\010\200\000\000\010@\000\000\t\341\000\020\007\006\000\000\010X\000\000\010\030\000\000\t\221\000\023\007;\000\000\010x\000\000\0108\000\000\t\321\000\021\007\021\000\000\010h\000\000\010(\000\000\t\261\000\000\010\010\000\000\010\210\000\000\010H\000\000\t\361\000\020\007\004\000\000\010T\000\000\010\024\000\025\010\343\000\023\007+\000\000\010t\000\000\0104\000\000\t\311\000\021\007\r\000\000\010d\000\000\010$\000\000\t\251\000\000\010\004\000\000\010\204\000\000\010D\000\000\t\351\000\020\007\010\000\000\010\\\000\000\010\034\000\000\t\231\000\024\007S\000\000\010|\000\000\010<\000\000\t\331\000\022\007\027\000\000\010l\000\000\010,\000\000\t\271\000\000\010\014\000\000\010\214\000\000\010L\000\000\t\371\000\020\007\003\000\000\010R\000\000\010\022\000\025\010\243\000\023\007#\000\000\010r\000\000\0102\000\000\t\305\000\021\007\013\000\000\010b\000\000\010\"\000\000\t\245\000\000\010\002\000\000\010\202\000\000\010B\000\000\t\345\000\020\007\007\000\000\010Z\000\000\010\032\000\000\t\225\000\024\007C\000\000\010z\000\000\010:\000\000\t\325\000\022\007\023\000\000\010j\000\000\010*\000\000\t\265\000\000\010\n\000\000\010\212\000\000\010J\000\000\t\365\000\020\007\005\000\000\010V\000\000\010\026\000@\010\000\000\023\0073\000\000\010v\000\000\0106\000\000\t\315\000\021\007\017\000\000\010f\000\000\010&\000\000\t\255\000\000\010\006\000\000\010\206\000\000\010F\000\000\t\355\000\020\007\t\000\000\010^\000\000\010\036\000\000\t\235\000\024\007c\000\000\010~\000\000\010>\000\000\t\335\000\022\007\033\000\000\010n\000\000\010.\000\000\t\275\000\000\010\016\000\000\010\216\000\000\010N\000\000\t\375\000`\007\000\000\000\010Q\000\000\010\021\000\025\010\203\000\022\007\037\000\000\010q\000\000\0101\000\000\t\303\000\020\007\n\000\000\010a\000\000\010!\000\000\t\243\000\000\010\001\000\000\010\201\000\000\010A\000\000\t\343\000\020\007\006\000\000\010Y\000\000\010\031\000\000\t\223\000\023\007;\000\000\010y\000\000\0109\000\000\t\323\000\021\007\021\000\000\010i\000\000\010)\000\000\t\263\000\000\010\t\000\000\010\211\000\000\010I\000\000\t\363\000\020\007\004\000\000\010U\000\000\010\025\000\020\010\002\001\023\007+\000\000\010u\000\000\0105\000\000\t\313\000\021\007\r\000\000\010e\000\000\010%\000\000\t\253\000\000\010\005\000\000\010\205\000\000\010E\000\000\t\353\000\020\007\010\000\000\010]\000\000\010\035\000\000\t\233\000\024\007S\000\000\010}\000\000\010=\000\000\t\333\000\022\007\027\000\000\010m\000\000\010-\000\000\t\273\000\000\010\r\000\000\010\215\000\000\010M\000\000\t\373\000\020\007\003\000\000\010S\000\000\010\023\000\025\010\303\000\023\007#\000\000\010s\000\000\0103\000\000\t\307\000\021\007\013\000\000\010c\000\000\010#\000\000\t\247\000\000\010\003\000\000\010\203\000\000\010C\000\000\t\347\000\020\007\007\000\000\010[\000\000\010\033\000\000\t\227\000\024\007C\000\000\010{\000\000\010;\000\000\t\327\000\022\007\023\000\000\010k\000\000\010+\000\000\t\267\000\000\010\013\000\000\010\213\000\000\010K\000\000\t\367\000\020\007\005\000\000\010W\000\000\010\027\000@\010\000\000\023\0073\000\000\010w\000\000\0107\000\000\t\317\000\021\007\017\000\000\010g\000\000\010'\000\000\t\257\000\000\010\007\000\000\010\207\000\000\010G\000\000\t\357\000\020\007\t\000\000\010_\000\000\010\037\000\000\t\237\000\024\007c\000\000\010\177\000\000\010?\000\000\t\337\000\022\007\033\000\000\010o\000\000\010/\000\000\t\277\000\000\010\017\000\000\010\217\000\000\010O\000\000\t"
	.value	255
	.size	lenfix.3430, 2048
# ----------------------
	.local	order.3459
	.type	order.3459, @object
order.3459:
	.ascii	"\020\000\021\000\022\000\000\000\010\000\007\000\t\000\006\000\n\000\005\000\013\000\004\000\014\000\003\000\r\000\002\000\016\000\001\000\017\000"
	.size	order.3459, 38
# ----------------------
	.text
	.globl	inflateResetKeep
	.type	inflateResetKeep, @function
inflateResetKeep:
	movl      4(%esp), %edx
	testl     %edx, %edx
	je        .L000000A0
.L0000000C:
	movl      28(%edx), %eax
	testl     %eax, %eax
	je        .L000000A0
.L00000017:
	movl      8(%eax), %ecx
	movl      $0, 28(%eax)
	movl      $0, 20(%edx)
	movl      $0, 8(%edx)
	movl      $0, 24(%edx)
	testl     %ecx, %ecx
	je        .L00000040
.L0000003A:
	andl      $1, %ecx
	movl      %ecx, 48(%edx)
.L00000040:
	leal      1328(%eax), %edx
	movl      $0, (%eax)
	movl      $0, 4(%eax)
	movl      $0, 12(%eax)
	movl      $32768, 20(%eax)
	movl      $0, 32(%eax)
	movl      $0, 56(%eax)
	movl      $0, 60(%eax)
	movl      %edx, 108(%eax)
	movl      %edx, 80(%eax)
	movl      %edx, 76(%eax)
	movl      $1, 7104(%eax)
	movl      $-1, 7108(%eax)
	xorl      %eax, %eax
	ret       
.L00000096:
	.p2align 4
.L000000A0:
	movl      $-2, %eax
	ret       
	.size	inflateResetKeep, .-inflateResetKeep
# ----------------------
.L000000A6:
	.p2align 4
# ----------------------
	.globl	inflateReset
	.type	inflateReset, @function
inflateReset:
	movl      4(%esp), %edx
	testl     %edx, %edx
	je        .L00000160
.L000000BC:
	movl      28(%edx), %eax
	testl     %eax, %eax
	je        .L00000160
.L000000C7:
	movl      8(%eax), %ecx
	movl      $0, 40(%eax)
	movl      $0, 44(%eax)
	movl      $0, 48(%eax)
	movl      $0, 28(%eax)
	movl      $0, 20(%edx)
	testl     %ecx, %ecx
	movl      $0, 8(%edx)
	movl      $0, 24(%edx)
	je        .L00000105
.L000000FF:
	andl      $1, %ecx
	movl      %ecx, 48(%edx)
.L00000105:
	leal      1328(%eax), %edx
	movl      $0, (%eax)
	movl      $0, 4(%eax)
	movl      $0, 12(%eax)
	movl      $32768, 20(%eax)
	movl      $0, 32(%eax)
	movl      $0, 56(%eax)
	movl      $0, 60(%eax)
	movl      %edx, 108(%eax)
	movl      %edx, 80(%eax)
	movl      %edx, 76(%eax)
	movl      $1, 7104(%eax)
	movl      $-1, 7108(%eax)
	xorl      %eax, %eax
	ret       
.L0000015B:
	.p2align 4,,10
	.p2align 3
.L00000160:
	movl      $-2, %eax
	ret       
	.size	inflateReset, .-inflateReset
# ----------------------
.L00000166:
	.p2align 4
# ----------------------
	.globl	inflateReset2
	.type	inflateReset2, @function
inflateReset2:
	pushl     %ebp
	pushl     %edi
	pushl     %esi
	pushl     %ebx
	subl      $12, %esp
	movl      32(%esp), %esi
	movl      36(%esp), %ebx
	testl     %esi, %esi
	je        .L000001DC
.L00000183:
	movl      28(%esi), %edi
	testl     %edi, %edi
	je        .L000001DC
.L0000018A:
	testl     %ebx, %ebx
	js        .L000002B0
.L00000192:
	movl      %ebx, %ebp
	sarl      $4, %ebp
	addl      $1, %ebp
	cmpl      $47, %ebx
	jle       .L000002A0
.L000001A3:
	leal      -8(%ebx), %eax
	cmpl      $7, %eax
	jbe       .L000001AF
.L000001AB:
	testl     %ebx, %ebx
	jne       .L000001DC
.L000001AF:
	movl      52(%edi), %eax
	testl     %eax, %eax
	je        .L000001F0
.L000001B6:
	cmpl      36(%edi), %ebx
	je        .L000001F0
.L000001BB:
	subl      $8, %esp
	pushl     %eax
	pushl     40(%esi)
	call      *36(%esi)
.L000001C5:
	movl      28(%esi), %eax
	addl      $16, %esp
	movl      $0, 52(%edi)
	movl      %ebp, 8(%edi)
	movl      %ebx, 36(%edi)
	testl     %eax, %eax
	jne       .L000001F8
.L000001DC:
	movl      $-2, %eax
	jmp       .L00000285
.L000001E6:
	.p2align 4
.L000001F0:
	movl      %ebp, 8(%edi)
	movl      %ebx, 36(%edi)
	movl      %edi, %eax
.L000001F8:
	movl      8(%eax), %edx
	movl      $0, 40(%eax)
	movl      $0, 44(%eax)
	movl      $0, 48(%eax)
	movl      $0, 28(%eax)
	movl      $0, 20(%esi)
	testl     %edx, %edx
	movl      $0, 8(%esi)
	movl      $0, 24(%esi)
	jne       .L00000290
.L00000230:
	leal      1328(%eax), %edx
	movl      $0, (%eax)
	movl      $0, 4(%eax)
	movl      $0, 12(%eax)
	movl      $32768, 20(%eax)
	movl      $0, 32(%eax)
	movl      $0, 56(%eax)
	movl      $0, 60(%eax)
	movl      %edx, 108(%eax)
	movl      %edx, 80(%eax)
	movl      %edx, 76(%eax)
	movl      $1, 7104(%eax)
	movl      $-1, 7108(%eax)
	xorl      %eax, %eax
.L00000285:
	addl      $12, %esp
	popl      %ebx
	popl      %esi
	popl      %edi
	popl      %ebp
	ret       
.L0000028D:
	.p2align 4,,10
	.p2align 3
.L00000290:
	andl      $1, %edx
	movl      %edx, 48(%esi)
	jmp       .L00000230
.L00000298:
	.p2align 4
.L000002A0:
	andl      $15, %ebx
	jmp       .L000001A3
.L000002A8:
	.p2align 4
.L000002B0:
	negl      %ebx
	xorl      %ebp, %ebp
	jmp       .L000001A3
	.size	inflateReset2, .-inflateReset2
# ----------------------
.L000002B9:
	.p2align 4
# ----------------------
	.globl	inflateInit2_
	.type	inflateInit2_, @function
inflateInit2_:
	pushl     %esi
	pushl     %ebx
	subl      $4, %esp
	movl      24(%esp), %eax
	movl      16(%esp), %ebx
	movl      20(%esp), %esi
	testl     %eax, %eax
	je        .L00000450
.L000002D9:
	cmpb      $49, (%eax)
	jne       .L00000450
.L000002E2:
	cmpl      $56, 28(%esp)
	jne       .L00000450
.L000002ED:
	testl     %ebx, %ebx
	je        .L0000048A
.L000002F5:
	movl      32(%ebx), %eax
	movl      $0, 24(%ebx)
	testl     %eax, %eax
	je        .L00000430
.L00000307:
	movl      40(%ebx), %edx
.L0000030A:
	movl      36(%ebx), %ecx
	testl     %ecx, %ecx
	je        .L00000420
.L00000315:
	subl      $4, %esp
	pushl     $7116
	pushl     $1
	pushl     %edx
	call      *%eax
.L00000322:
	addl      $16, %esp
	testl     %eax, %eax
	je        .L00000480
.L0000032D:
	testl     %esi, %esi
	movl      %eax, 28(%ebx)
	movl      $0, 52(%eax)
	js        .L00000403
.L0000033F:
	movl      %esi, %edx
	sarl      $4, %edx
	addl      $1, %edx
	cmpl      $47, %esi
	jg        .L0000034F
.L0000034C:
	andl      $15, %esi
.L0000034F:
	leal      -8(%esi), %ecx
	cmpl      $7, %ecx
	jbe       .L0000035F
.L00000357:
	testl     %esi, %esi
	jne       .L00000460
.L0000035F:
	testl     %edx, %edx
	movl      %edx, 8(%eax)
	movl      %esi, 36(%eax)
	movl      $0, 40(%eax)
	movl      $0, 44(%eax)
	movl      $0, 48(%eax)
	movl      $0, 28(%eax)
	movl      $0, 20(%ebx)
	movl      $0, 8(%ebx)
	movl      $0, 24(%ebx)
	jne       .L000003FB
.L0000039A:
	.p2align 4,,10
	.p2align 3
.L000003A0:
	leal      1328(%eax), %edx
	movl      $0, (%eax)
	movl      $0, 4(%eax)
	movl      $0, 12(%eax)
	movl      $32768, 20(%eax)
	movl      $0, 32(%eax)
	movl      $0, 56(%eax)
	movl      $0, 60(%eax)
	movl      %edx, 108(%eax)
	movl      %edx, 80(%eax)
	movl      %edx, 76(%eax)
	movl      $1, 7104(%eax)
	movl      $-1, 7108(%eax)
	xorl      %eax, %eax
.L000003F5:
	addl      $4, %esp
	popl      %ebx
	popl      %esi
	ret       
.L000003FB:
	andl      $1, %edx
	movl      %edx, 48(%ebx)
	jmp       .L000003A0
.L00000403:
	negl      %esi
	xorl      %edx, %edx
	leal      -8(%esi), %ecx
	cmpl      $7, %ecx
	ja        .L00000357
.L00000413:
	jmp       .L0000035F
.L00000418:
	.p2align 4
.L00000420:
	movl      $zcfree, 36(%ebx)
	jmp       .L00000315
.L0000042C:
	.p2align 4,,10
	.p2align 3
.L00000430:
	movl      $zcalloc, 32(%ebx)
	movl      $0, 40(%ebx)
	xorl      %edx, %edx
	movl      $zcalloc, %eax
	jmp       .L0000030A
.L0000044A:
	.p2align 4,,10
	.p2align 3
.L00000450:
	addl      $4, %esp
	movl      $-6, %eax
	popl      %ebx
	popl      %esi
	ret       
.L0000045B:
	.p2align 4,,10
	.p2align 3
.L00000460:
	subl      $8, %esp
	pushl     %eax
	pushl     40(%ebx)
	call      *36(%ebx)
.L0000046A:
	movl      $0, 28(%ebx)
	addl      $16, %esp
	movl      $-2, %eax
	jmp       .L000003F5
.L0000047E:
	.p2align 4,,10
	.p2align 3
.L00000480:
	movl      $-4, %eax
	jmp       .L000003F5
.L0000048A:
	movl      $-2, %eax
	jmp       .L000003F5
	.size	inflateInit2_, .-inflateInit2_
# ----------------------
.L00000494:
	.p2align 4
# ----------------------
	.globl	inflateInit_
	.type	inflateInit_, @function
inflateInit_:
	pushl     %ebx
	subl      $8, %esp
	movl      20(%esp), %eax
	movl      16(%esp), %ebx
	testl     %eax, %eax
	je        .L000005F0
.L000004B4:
	cmpb      $49, (%eax)
	jne       .L000005F0
.L000004BD:
	cmpl      $56, 24(%esp)
	jne       .L000005F0
.L000004C8:
	testl     %ebx, %ebx
	je        .L00000607
.L000004D0:
	movl      32(%ebx), %eax
	movl      $0, 24(%ebx)
	testl     %eax, %eax
	je        .L000005B8
.L000004E2:
	movl      36(%ebx), %ecx
	movl      40(%ebx), %edx
	testl     %ecx, %ecx
	je        .L000005E0
.L000004F0:
	subl      $4, %esp
	pushl     $7116
	pushl     $1
	pushl     %edx
	call      *%eax
.L000004FD:
	addl      $16, %esp
	testl     %eax, %eax
	je        .L00000600
.L00000508:
	leal      1328(%eax), %edx
	movl      %eax, 28(%ebx)
	movl      $0, 52(%eax)
	movl      $1, 8(%eax)
	movl      $15, 36(%eax)
	movl      $0, 40(%eax)
	movl      $0, 44(%eax)
	movl      $0, 48(%eax)
	movl      $0, 28(%eax)
	movl      $0, 20(%ebx)
	movl      $0, 8(%ebx)
	movl      $0, 24(%ebx)
	movl      $1, 48(%ebx)
	movl      $0, (%eax)
	movl      $0, 4(%eax)
	movl      $0, 12(%eax)
	movl      $32768, 20(%eax)
	movl      $0, 32(%eax)
	movl      $0, 56(%eax)
	movl      $0, 60(%eax)
	movl      %edx, 108(%eax)
	movl      %edx, 80(%eax)
	movl      %edx, 76(%eax)
	movl      $1, 7104(%eax)
	movl      $-1, 7108(%eax)
	xorl      %eax, %eax
	.p2align 4,,10
	.p2align 3
.L000005B0:
	addl      $8, %esp
	popl      %ebx
	ret       
.L000005B5:
	.p2align 4,,10
	.p2align 3
.L000005B8:
	movl      36(%ebx), %ecx
	xorl      %edx, %edx
	movl      $zcalloc, 32(%ebx)
	movl      $0, 40(%ebx)
	movl      $zcalloc, %eax
	testl     %ecx, %ecx
	jne       .L000004F0
.L000005D8:
	.p2align 4
.L000005E0:
	movl      $zcfree, 36(%ebx)
	jmp       .L000004F0
.L000005EC:
	.p2align 4,,10
	.p2align 3
.L000005F0:
	addl      $8, %esp
	movl      $-6, %eax
	popl      %ebx
	ret       
.L000005FA:
	.p2align 4,,10
	.p2align 3
.L00000600:
	movl      $-4, %eax
	jmp       .L000005B0
.L00000607:
	movl      $-2, %eax
	jmp       .L000005B0
	.size	inflateInit_, .-inflateInit_
# ----------------------
.L0000060E:
	.p2align 4,,10
	.p2align 3
# ----------------------
	.globl	inflatePrime
	.type	inflatePrime, @function
inflatePrime:
	pushl     %esi
	pushl     %ebx
	movl      12(%esp), %eax
	movl      16(%esp), %ecx
	testl     %eax, %eax
	je        .L00000678
.L0000061E:
	movl      28(%eax), %edx
	testl     %edx, %edx
	je        .L00000678
.L00000625:
	testl     %ecx, %ecx
	js        .L00000660
.L00000629:
	cmpl      $16, %ecx
	jg        .L00000678
.L0000062E:
	movl      60(%edx), %esi
	leal      (%ecx,%esi), %ebx
	cmpl      $32, %ebx
	ja        .L00000678
.L00000639:
	movl      $1, %eax
	movl      %ebx, 60(%edx)
	sall      %cl, %eax
	movl      %esi, %ecx
	subl      $1, %eax
	andl      20(%esp), %eax
	sall      %cl, %eax
	addl      %eax, 56(%edx)
	xorl      %eax, %eax
.L00000653:
	popl      %ebx
	popl      %esi
	ret       
.L00000656:
	.p2align 4
.L00000660:
	movl      $0, 56(%edx)
	movl      $0, 60(%edx)
	xorl      %eax, %eax
	popl      %ebx
	popl      %esi
	ret       
.L00000673:
	.p2align 4,,10
	.p2align 3
.L00000678:
	movl      $-2, %eax
	jmp       .L00000653
	.size	inflatePrime, .-inflatePrime
# ----------------------
.L0000067F:
	.p2align 4,,10
	.p2align 3
# ----------------------
	.globl	inflate
	.type	inflate, @function
inflate:
	pushl     %ebp
	pushl     %edi
	pushl     %esi
	pushl     %ebx
	subl      $108, %esp
	movl      128(%esp), %eax
	testl     %eax, %eax
	je        .L00001DF0
.L00000696:
	movl      128(%esp), %eax
	movl      28(%eax), %edi
	testl     %edi, %edi
	je        .L00001DF0
.L000006A8:
	movl      12(%eax), %eax
	testl     %eax, %eax
	movl      %eax, 12(%esp)
	je        .L00001DF0
.L000006B7:
	movl      128(%esp), %eax
	movl      (%eax), %ebp
	testl     %ebp, %ebp
	je        .L00001D50
.L000006C8:
	movl      4(%eax), %eax
	movl      %eax, 24(%esp)
.L000006CF:
	movl      (%edi), %eax
	cmpl      $11, %eax
	je        .L000008E8
.L000006DA:
	movl      128(%esp), %ecx
	movl      132(%esp), %edx
	movl      %edi, 4(%esp)
	movl      $0, 28(%esp)
	movl      16(%ecx), %esi
	movl      56(%edi), %ecx
	movl      %esi, %ebx
	movl      %ecx, 8(%esp)
	leal      -5(%edx), %ecx
	movl      %ebx, 20(%esp)
	movl      24(%esp), %ebx
	leal      752(%edi), %edx
	movl      %ecx, 48(%esp)
	leal      1328(%edi), %ecx
	movl      %esi, 16(%esp)
	movl      %edx, 52(%esp)
	movl      60(%edi), %esi
	movl      %ecx, 56(%esp)
	movl      %ebx, %edi
.L0000072C:
	cmpl      $30, %eax
	ja        .L00001DF0
.L00000735:
	jmp       *.LC00000000(,%eax,4)
.L0000073C:
	.p2align 4,,10
	.p2align 3
.L00000740:
	cmpl      $31, %esi
	ja        .L000007D3
.L00000749:
	testl     %edi, %edi
	je        .L00001CD8
.L00000751:
	movzbl    (%ebp), %eax
	movl      %esi, %ecx
	leal      -1(%edi), %edx
	leal      1(%ebp), %ebx
	sall      %cl, %eax
	leal      8(%esi), %ecx
	addl      %eax, 8(%esp)
	cmpl      $31, %ecx
	ja        .L0000263B
.L0000076F:
	testl     %edx, %edx
	je        .L00002238
.L00000777:
	movzbl    1(%ebp), %eax
	leal      -2(%edi), %edx
	leal      2(%ebp), %ebx
	sall      %cl, %eax
	leal      16(%esi), %ecx
	addl      %eax, 8(%esp)
	cmpl      $31, %ecx
	ja        .L0000263B
.L00000793:
	testl     %edx, %edx
	je        .L00002238
.L0000079B:
	movzbl    2(%ebp), %eax
	addl      $24, %esi
	leal      -3(%edi), %edx
	leal      3(%ebp), %ebx
	sall      %cl, %eax
	addl      %eax, 8(%esp)
	cmpl      $31, %esi
	ja        .L0000263B
.L000007B7:
	testl     %edx, %edx
	je        .L000028BE
.L000007BF:
	movzbl    3(%ebp), %eax
	movl      %esi, %ecx
	leal      4(%ebp), %ebx
	subl      $4, %edi
	sall      %cl, %eax
	addl      %eax, 8(%esp)
.L000007D1:
	movl      %ebx, %ebp
.L000007D3:
	movl      8(%esp), %esi
	movl      128(%esp), %ebx
	movl      $0, 8(%esp)
	movl      %esi, %edx
	movl      %esi, %eax
	shrl      $24, %eax
	sall      $24, %edx
	addl      %eax, %edx
	movl      %esi, %eax
	shrl      $8, %eax
	andl      $65280, %eax
	addl      %eax, %edx
	movl      %esi, %eax
	movl      4(%esp), %esi
	andl      $65280, %eax
	sall      $8, %eax
	addl      %edx, %eax
	movl      %eax, 24(%esi)
	movl      %eax, 48(%ebx)
	movl      $10, (%esi)
	xorl      %esi, %esi
.L0000081C:
	movl      4(%esp), %eax
	movl      12(%eax), %ecx
	testl     %ecx, %ecx
	je        .L00002903
.L0000082B:
	subl      $4, %esp
	pushl     $0
	pushl     $0
	pushl     $0
	call      adler32
.L00000839:
	movl      20(%esp), %edx
	movl      144(%esp), %ebx
	addl      $16, %esp
	movl      %eax, 24(%edx)
	movl      %eax, 48(%ebx)
	movl      $11, (%edx)
.L00000853:
	cmpl      $1, 48(%esp)
	jbe       .L00001CD8
.L0000085E:
	movl      4(%esp), %eax
	movl      4(%eax), %edx
	testl     %edx, %edx
	jne       .L000008F8
.L0000086D:
	cmpl      $2, %esi
	ja        .L00002769
.L00000876:
	testl     %edi, %edi
	je        .L00001CD8
.L0000087E:
	movzbl    (%ebp), %eax
	movl      %esi, %ecx
	leal      1(%ebp), %edx
	subl      $1, %edi
	addl      $8, %esi
	sall      %cl, %eax
	addl      %eax, 8(%esp)
.L00000893:
	movl      8(%esp), %ecx
	movl      4(%esp), %ebx
	movl      %ecx, %eax
	shrl      $1, %ecx
	andl      $1, %eax
	movl      %eax, 4(%ebx)
	movl      %ecx, %eax
	andl      $3, %eax
	cmpl      $2, %eax
	je        .L0000217E
.L000008B3:
	cmpl      $3, %eax
	je        .L00002529
.L000008BC:
	cmpl      $1, %eax
	je        .L000024EB
.L000008C5:
	movl      $13, (%ebx)
	movl      $13, %eax
.L000008D0:
	shrl      $2, %ecx
	subl      $3, %esi
	movl      %edx, %ebp
	movl      %ecx, 8(%esp)
	jmp       .L0000072C
.L000008E1:
	.p2align 4,,10
	.p2align 3
.L000008E8:
	movl      $12, (%edi)
	movb      $12, %al
	jmp       .L000006DA
.L000008F5:
	.p2align 4,,10
	.p2align 3
.L000008F8:
	movl      %esi, %ecx
	movl      $26, (%eax)
	andl      $-8, %esi
	andl      $7, %ecx
	movl      $26, %eax
	shrl      %cl, 8(%esp)
	jmp       .L00000735
.L00000914:
	.p2align 4,,10
	.p2align 3
.L00000918:
	movl      4(%esp), %eax
	movl      72(%eax), %ebx
.L0000091F:
	testl     %ebx, %ebx
	je        .L00000990
.L00000923:
	cmpl      %ebx, %esi
	jae       .L00000963
.L00000927:
	testl     %edi, %edi
	je        .L00001CD8
.L0000092F:
	movl      8(%esp), %edx
	movl      %esi, %ecx
	jmp       .L00000948
.L00000937:
	.p2align 4
.L00000940:
	testl     %edi, %edi
	je        .L00001D70
.L00000948:
	addl      $1, %ebp
	movzbl    -1(%ebp), %eax
	subl      $1, %edi
	sall      %cl, %eax
	addl      $8, %ecx
	addl      %eax, %edx
	cmpl      %ebx, %ecx
	jb        .L00000940
.L0000095D:
	movl      %edx, 8(%esp)
	movl      %ecx, %esi
.L00000963:
	movl      %ebx, %ecx
	movl      $1, %eax
	movl      8(%esp), %edx
	sall      %cl, %eax
	movl      4(%esp), %ecx
	subl      %ebx, %esi
	subl      $1, %eax
	andl      %edx, %eax
	addl      %eax, 68(%ecx)
	movl      %ebx, %ecx
	shrl      %cl, %edx
	movl      4(%esp), %ecx
	movl      %edx, 8(%esp)
	addl      %ebx, 7108(%ecx)
.L00000990:
	movl      4(%esp), %eax
	movl      $24, (%eax)
.L0000099A:
	movl      16(%esp), %ebx
	testl     %ebx, %ebx
	je        .L00001CD8
.L000009A6:
	movl      20(%esp), %eax
	subl      %ebx, %eax
	movl      4(%esp), %ebx
	movl      68(%ebx), %edx
	cmpl      %edx, %eax
	jae       .L00001E68
.L000009BB:
	subl      %eax, %edx
	cmpl      44(%ebx), %edx
	movl      %edx, %ecx
	ja        .L000020D0
.L000009C8:
	movl      4(%esp), %eax
	movl      48(%eax), %eax
	cmpl      %eax, %ecx
	jbe       .L000022C0
.L000009D7:
	movl      4(%esp), %edx
	subl      %eax, %ecx
	movl      40(%edx), %eax
	subl      %ecx, %eax
	addl      52(%edx), %eax
	movl      %eax, 32(%esp)
	movl      %edx, %eax
.L000009EB:
	movl      64(%eax), %edx
	cmpl      %edx, %ecx
	jbe       .L00001E7B
.L000009F6:
	movl      %edx, %ecx
	jmp       .L00001E7B
.L000009FD:
	cmpl      $6, 132(%esp)
	movl      4(%esp), %eax
	movl      $19, (%eax)
	je        .L00001CD8
.L00000A15:
	.p2align 4,,10
	.p2align 3
.L00000A18:
	movl      4(%esp), %eax
	movl      $20, (%eax)
.L00000A22:
	cmpl      $5, %edi
	jbe       .L00000A35
.L00000A27:
	cmpl      $257, 16(%esp)
	ja        .L00001F80
.L00000A35:
	movl      4(%esp), %eax
	movl      84(%eax), %ecx
	movl      76(%eax), %ebx
	movl      $0, 7108(%eax)
	movl      $1, %eax
	sall      %cl, %eax
	movl      %ebx, 32(%esp)
	subl      $1, %eax
	movl      %eax, %edx
	movl      %eax, 40(%esp)
	movl      8(%esp), %eax
	andl      %edx, %eax
	leal      (%ebx,%eax,4), %eax
	movzbl    1(%eax), %edx
	movzbl    (%eax), %ebx
	movzwl    2(%eax), %eax
	movw      %ax, 36(%esp)
	movzbl    %dl, %eax
	cmpl      %eax, %esi
	jae       .L00000AD3
.L00000A7D:
	testl     %edi, %edi
	je        .L00001CD8
.L00000A85:
	movl      %esi, %ecx
	movl      8(%esp), %esi
	jmp       .L00000A98
.L00000A8D:
	.p2align 4,,10
	.p2align 3
.L00000A90:
	testl     %edi, %edi
	je        .L00002250
.L00000A98:
	addl      $1, %ebp
	movzbl    -1(%ebp), %eax
	movl      32(%esp), %ebx
	subl      $1, %edi
	sall      %cl, %eax
	addl      $8, %ecx
	addl      %eax, %esi
	movl      40(%esp), %eax
	andl      %esi, %eax
	leal      (%ebx,%eax,4), %eax
	movzbl    1(%eax), %edx
	movzbl    (%eax), %ebx
	movzwl    2(%eax), %eax
	movw      %ax, 36(%esp)
	movzbl    %dl, %eax
	cmpl      %ecx, %eax
	ja        .L00000A90
.L00000ACD:
	movl      %esi, 8(%esp)
	movl      %ecx, %esi
.L00000AD3:
	testb     %bl, %bl
	jne       .L000022D8
.L00000ADB:
	movl      4(%esp), %ebx
	subl      %eax, %esi
	movl      %edx, %ecx
	shrl      %cl, 8(%esp)
	movl      %eax, 7108(%ebx)
	movzwl    36(%esp), %eax
	movl      %eax, 64(%ebx)
.L00000AF5:
	movl      4(%esp), %eax
	movl      $25, (%eax)
	movl      $25, %eax
	jmp       .L00000735
.L00000B09:
	.p2align 4
.L00000B10:
	movl      4(%esp), %eax
	movl      72(%eax), %ebx
.L00000B17:
	testl     %ebx, %ebx
	jne       .L00002010
.L00000B1F:
	movl      4(%esp), %eax
	movl      4(%esp), %ebx
	movl      64(%eax), %eax
.L00000B2A:
	movl      %eax, 7112(%ebx)
	movl      $22, (%ebx)
.L00000B36:
	movl      4(%esp), %eax
	movl      88(%eax), %ecx
	movl      80(%eax), %ebx
	movl      $1, %eax
	sall      %cl, %eax
	movl      %ebx, 36(%esp)
	subl      $1, %eax
	movl      %eax, %edx
	movl      %eax, 44(%esp)
	movl      8(%esp), %eax
	andl      %edx, %eax
	leal      (%ebx,%eax,4), %eax
	movzbl    1(%eax), %edx
	movzbl    (%eax), %ebx
	movzwl    2(%eax), %eax
	movw      %ax, 32(%esp)
	movzbl    %dl, %eax
	cmpl      %eax, %esi
	movl      %eax, 40(%esp)
	jae       .L00000BD9
.L00000B78:
	testl     %edi, %edi
	je        .L00001CD8
.L00000B80:
	movl      %esi, %ecx
	movl      %edi, %esi
	movl      8(%esp), %edi
	jmp       .L00000B98
.L00000B8A:
	.p2align 4,,10
	.p2align 3
.L00000B90:
	testl     %esi, %esi
	je        .L00002220
.L00000B98:
	addl      $1, %ebp
	movzbl    -1(%ebp), %eax
	movl      36(%esp), %ebx
	subl      $1, %esi
	sall      %cl, %eax
	addl      $8, %ecx
	addl      %eax, %edi
	movl      44(%esp), %eax
	andl      %edi, %eax
	leal      (%ebx,%eax,4), %eax
	movzbl    1(%eax), %edx
	movzbl    (%eax), %ebx
	movzwl    2(%eax), %eax
	movw      %ax, 32(%esp)
	movzbl    %dl, %eax
	cmpl      %ecx, %eax
	movl      %eax, 40(%esp)
	ja        .L00000B90
.L00000BD1:
	movl      %edi, 8(%esp)
	movl      %esi, %edi
	movl      %ecx, %esi
.L00000BD9:
	testb     $240, %bl
	jne       .L00002100
.L00000BE2:
	movzwl    32(%esp), %ecx
	movl      %ecx, 40(%esp)
	leal      (%ebx,%eax), %ecx
	movl      $1, %ebx
	sall      %cl, %ebx
	movl      %edx, %ecx
	leal      -1(%ebx), %ebx
	movl      %ebx, 60(%esp)
	andl      8(%esp), %ebx
	shrl      %cl, %ebx
	movl      40(%esp), %ecx
	leal      (%ebx,%ecx), %edx
	movl      36(%esp), %ebx
	leal      (%ebx,%edx,4), %edx
	movzwl    2(%edx), %ecx
	movzbl    (%edx), %ebx
	movzbl    1(%edx), %edx
	movw      %cx, 32(%esp)
	leal      (%eax,%edx), %ecx
	movl      %edx, 44(%esp)
	cmpl      %ecx, %esi
	jae       .L00000CA6
.L00000C2D:
	testl     %edi, %edi
	je        .L00001CD8
.L00000C35:
	movl      %edi, %edx
	movl      8(%esp), %ebx
	movl      %ebp, %edi
	movl      %edx, %ebp
	jmp       .L00000C50
.L00000C41:
	.p2align 4,,10
	.p2align 3
.L00000C48:
	testl     %ebp, %ebp
	je        .L000023B1
.L00000C50:
	addl      $1, %edi
	movzbl    -1(%edi), %edx
	movl      %esi, %ecx
	addl      $8, %esi
	subl      $1, %ebp
	sall      %cl, %edx
	movl      %eax, %ecx
	addl      %edx, %ebx
	movl      60(%esp), %edx
	andl      %ebx, %edx
	shrl      %cl, %edx
	addl      40(%esp), %edx
	movl      36(%esp), %ecx
	leal      (%ecx,%edx,4), %edx
	movzbl    (%edx), %ecx
	movb      %cl, 64(%esp)
	movzwl    2(%edx), %ecx
	movzbl    1(%edx), %edx
	movw      %cx, 32(%esp)
	leal      (%edx,%eax), %ecx
	movl      %edx, 44(%esp)
	cmpl      %esi, %ecx
	ja        .L00000C48
.L00000C97:
	movl      %ebx, 8(%esp)
	movzbl    64(%esp), %ebx
	movl      %ebp, %ecx
	movl      %edi, %ebp
	movl      %ecx, %edi
.L00000CA6:
	movl      %eax, %ecx
	shrl      %cl, 8(%esp)
	movl      4(%esp), %ecx
	subl      %eax, %esi
	movl      %edx, 40(%esp)
	addl      7108(%ecx), %eax
	movl      %eax, 36(%esp)
	movl      44(%esp), %eax
	movl      36(%esp), %edx
	jmp       .L00002112
.L00000CCD:
	.p2align 4,,10
	.p2align 3
.L00000CD0:
	movl      4(%esp), %eax
	movl      16(%eax), %eax
	testb     $4, %ah
	movl      %eax, %ebx
	je        .L00001854
.L00000CE2:
	cmpl      $15, %esi
	movl      8(%esp), %ebx
	ja        .L00000D22
.L00000CEB:
	testl     %edi, %edi
	je        .L00001CD8
.L00000CF3:
	movl      8(%esp), %ebx
	movl      %esi, %ecx
	jmp       .L00000D08
.L00000CFB:
	.p2align 4,,10
	.p2align 3
.L00000D00:
	testl     %edi, %edi
	je        .L00001E00
.L00000D08:
	addl      $1, %ebp
	movzbl    -1(%ebp), %edx
	subl      $1, %edi
	sall      %cl, %edx
	addl      $8, %ecx
	addl      %edx, %ebx
	cmpl      $15, %ecx
	jbe       .L00000D00
.L00000D1E:
	movl      %ebx, 8(%esp)
.L00000D22:
	movl      4(%esp), %esi
	movl      32(%esi), %edx
	movl      %ebx, 64(%esi)
	testl     %edx, %edx
	je        .L00000D33
.L00000D30:
	movl      %ebx, 20(%edx)
.L00000D33:
	testb     $2, %ah
	jne       .L000025F3
.L00000D3C:
	movl      %eax, %ebx
	xorl      %esi, %esi
	andl      $1024, %eax
	movl      $0, 8(%esp)
	jmp       .L00001871
.L00000D52:
	.p2align 4,,10
	.p2align 3
.L00000D58:
	subl      $4, %esp
	movb      $1, %al
	pushl     $1
	movl      36(%esi), %ecx
	sall      %cl, %eax
	pushl     %eax
	movl      140(%esp), %eax
	pushl     40(%eax)
	movl      144(%esp), %eax
	call      *32(%eax)
.L00000D79:
	addl      $16, %esp
	testl     %eax, %eax
	movl      %eax, 52(%esi)
	jne       .L00000E25
.L00000D87:
	movl      $30, (%edi)
	.p2align 4,,10
	.p2align 3
.L00000D90:
	movl      $-4, %eax
	.p2align 4,,10
	.p2align 3
.L00000D98:
	addl      $108, %esp
	popl      %ebx
	popl      %esi
	popl      %edi
	popl      %ebp
	ret       
.L00000DA0:
	movl      %edi, %ebx
	movl      4(%esp), %edi
	movl      $1, 28(%esp)
	.p2align 4,,10
	.p2align 3
.L00000DB0:
	movl      128(%esp), %eax
	movl      12(%esp), %ecx
	movl      %ecx, 12(%eax)
	movl      %eax, %ecx
	movl      16(%esp), %eax
	movl      %ebx, 4(%ecx)
	movl      %ebp, (%ecx)
	movl      8(%esp), %ebx
	movl      %eax, 16(%ecx)
	movl      40(%edi), %ecx
	movl      %esi, 60(%edi)
	movl      %ebx, 56(%edi)
	testl     %ecx, %ecx
	jne       .L00000E08
.L00000DDD:
	cmpl      %eax, 20(%esp)
	je        .L00000E98
.L00000DE7:
	movl      (%edi), %eax
	cmpl      $28, %eax
	ja        .L00000E98
.L00000DF2:
	cmpl      $4, 132(%esp)
	jne       .L00000E08
.L00000DFC:
	cmpl      $25, %eax
	ja        .L00000E98
.L00000E05:
	.p2align 4,,10
	.p2align 3
.L00000E08:
	movl      128(%esp), %eax
	movl      20(%esp), %ebp
	subl      16(%esp), %ebp
	movl      28(%eax), %esi
	movl      52(%esi), %eax
	testl     %eax, %eax
	je        .L00000D58
.L00000E25:
	movl      40(%esi), %ebx
	testl     %ebx, %ebx
	jne       .L00000E44
.L00000E2C:
	movl      36(%esi), %ecx
	movb      $1, %bl
	movl      $0, 48(%esi)
	movl      $0, 44(%esi)
	sall      %cl, %ebx
	movl      %ebx, 40(%esi)
.L00000E44:
	cmpl      %ebx, %ebp
	jae       .L00001DC0
.L00000E4C:
	movl      48(%esi), %edx
	subl      %edx, %ebx
	cmpl      %ebp, %ebx
	jbe       .L00000E57
.L00000E55:
	movl      %ebp, %ebx
.L00000E57:
	addl      %edx, %eax
	movl      12(%esp), %edx
	subl      $4, %esp
	pushl     %ebx
	subl      %ebp, %edx
	pushl     %edx
	pushl     %eax
	call      memcpy
.L00000E6A:
	addl      $16, %esp
	subl      %ebx, %ebp
	jne       .L00001E28
.L00000E75:
	movl      48(%esi), %eax
	movl      40(%esi), %edx
	addl      %ebx, %eax
	cmpl      %edx, %eax
	movl      %eax, 48(%esi)
	je        .L00001E18
.L00000E88:
	movl      44(%esi), %eax
	cmpl      %eax, %edx
	jbe       .L00000E98
.L00000E8F:
	addl      %eax, %ebx
	movl      %ebx, 44(%esi)
	.p2align 4,,10
	.p2align 3
.L00000E98:
	movl      128(%esp), %eax
	movl      20(%esp), %ebx
	movl      24(%esp), %esi
	subl      16(%eax), %ebx
	subl      4(%eax), %esi
	addl      %esi, 8(%eax)
	addl      %ebx, 20(%eax)
	addl      %ebx, 28(%edi)
	testl     %ebx, %ebx
	je        .L00000EF9
.L00000EBA:
	movl      8(%edi), %edx
	testl     %edx, %edx
	je        .L00000EF9
.L00000EC1:
	movl      16(%edi), %eax
	testl     %eax, %eax
	je        .L00001D88
.L00000ECC:
	subl      $4, %esp
	pushl     %ebx
	movl      136(%esp), %eax
	movl      12(%eax), %eax
	movl      %eax, 12(%esp)
	subl      %ebx, %eax
	pushl     %eax
	pushl     24(%edi)
	call      crc32
.L00000EE9:
	addl      $16, %esp
.L00000EEC:
	movl      128(%esp), %edx
	movl      %eax, 24(%edi)
	movl      %eax, 48(%edx)
.L00000EF9:
	cmpl      $1, 4(%edi)
	movl      (%edi), %edx
	sbbl      %eax, %eax
	notl      %eax
	andl      $64, %eax
	addl      60(%edi), %eax
	cmpl      $11, %edx
	je        .L00001CE8
.L00000F12:
	cmpl      $14, %edx
	je        .L00001CC8
.L00000F1B:
	cmpl      $19, %edx
	je        .L00001CC8
.L00000F24:
	xorl      %edx, %edx
.L00000F26:
	movl      128(%esp), %edi
	addl      %edx, %eax
	orl       %esi, %ebx
	movl      %eax, 44(%edi)
	je        .L00000F48
.L00000F36:
	cmpl      $4, 132(%esp)
	movl      28(%esp), %eax
	jne       .L00000D98
.L00000F48:
	movl      28(%esp), %eax
	testl     %eax, %eax
	jne       .L00000D98
.L00000F54:
	addl      $108, %esp
	movl      $-5, %eax
	popl      %ebx
	popl      %esi
	popl      %edi
	popl      %ebp
	ret       
.L00000F61:
	.p2align 4,,10
	.p2align 3
.L00000F68:
	cmpl      $31, %esi
	ja        .L00000FA2
.L00000F6D:
	testl     %edi, %edi
	je        .L00001CD8
.L00000F75:
	movl      8(%esp), %edx
	movl      %esi, %ecx
	jmp       .L00000F88
.L00000F7D:
	.p2align 4,,10
	.p2align 3
.L00000F80:
	testl     %edi, %edi
	je        .L00001D70
.L00000F88:
	addl      $1, %ebp
	movzbl    -1(%ebp), %eax
	subl      $1, %edi
	sall      %cl, %eax
	addl      $8, %ecx
	addl      %eax, %edx
	cmpl      $31, %ecx
	jbe       .L00000F80
.L00000F9E:
	movl      %edx, 8(%esp)
.L00000FA2:
	movl      4(%esp), %eax
	movl      32(%eax), %eax
	testl     %eax, %eax
	je        .L00000FB4
.L00000FAD:
	movl      8(%esp), %esi
	movl      %esi, 4(%eax)
.L00000FB4:
	movl      4(%esp), %eax
	testb     $2, 17(%eax)
	jne       .L000025A9
.L00000FC2:
	movl      $3, (%eax)
	movl      $0, 8(%esp)
	xorl      %esi, %esi
	jmp       .L000017D5
.L00000FD7:
	.p2align 4
.L00000FE0:
	movl      4(%esp), %eax
	movl      16(%eax), %ebx
	movl      %ebx, %eax
	andl      $1024, %eax
.L00000FEE:
	testl     %eax, %eax
	je        .L00001095
.L00000FF6:
	movl      4(%esp), %eax
	movl      %edi, %ecx
	movl      64(%eax), %eax
	cmpl      %eax, %edi
	movl      %eax, 32(%esp)
	ja        .L00001F70
.L0000100B:
	testl     %ecx, %ecx
	movl      32(%esp), %edx
	je        .L00001086
.L00001013:
	movl      4(%esp), %eax
	movl      32(%eax), %edx
	testl     %edx, %edx
	je        .L00001067
.L0000101E:
	movl      16(%edx), %eax
	testl     %eax, %eax
	movl      %eax, 36(%esp)
	je        .L00001067
.L00001029:
	movl      20(%edx), %eax
	subl      32(%esp), %eax
	movl      24(%edx), %ebx
	leal      (%ecx,%eax), %edx
	movl      %edx, 32(%esp)
	cmpl      %ebx, 32(%esp)
	movl      %ecx, %edx
	jbe       .L00001046
.L00001042:
	subl      %eax, %ebx
	movl      %ebx, %edx
.L00001046:
	addl      36(%esp), %eax
	movl      %ecx, 32(%esp)
	subl      $4, %esp
	pushl     %edx
	pushl     %ebp
	pushl     %eax
	call      memcpy
.L00001059:
	movl      20(%esp), %eax
	addl      $16, %esp
	movl      32(%esp), %ecx
	movl      16(%eax), %ebx
.L00001067:
	andb      $2, %bh
	jne       .L0000255A
.L00001070:
	movl      4(%esp), %eax
	subl      %ecx, %edi
	addl      %ecx, %ebp
	movl      64(%eax), %ebx
	movl      %ebx, %edx
	movl      %ebx, 32(%esp)
	subl      %ecx, %edx
	movl      %edx, 64(%eax)
.L00001086:
	testl     %edx, %edx
	jne       .L00001CD8
.L0000108E:
	movl      4(%esp), %eax
	movl      16(%eax), %ebx
.L00001095:
	movl      4(%esp), %eax
	testb     $8, %bh
	movl      $0, 64(%eax)
	movl      $6, (%eax)
	jne       .L00001A38
.L000010AF:
	movl      4(%esp), %eax
	movl      32(%eax), %eax
	testl     %eax, %eax
	je        .L00001AC4
.L000010BE:
	movl      $0, 28(%eax)
	jmp       .L00001AC4
.L000010CA:
	.p2align 4,,10
	.p2align 3
.L000010D0:
	movl      4(%esp), %eax
	movl      64(%eax), %eax
.L000010D7:
	movl      4(%esp), %ebx
	movl      $15, (%ebx)
.L000010E1:
	testl     %eax, %eax
	je        .L00001E50
.L000010E9:
	cmpl      %eax, %edi
	movl      %edi, %ebx
	ja        .L00002088
.L000010F3:
	cmpl      16(%esp), %ebx
	ja        .L00002090
.L000010FD:
	testl     %ebx, %ebx
	je        .L00001CD8
.L00001105:
	subl      $4, %esp
	subl      %ebx, %edi
	pushl     %ebx
	pushl     %ebp
	addl      %ebx, %ebp
	pushl     24(%esp)
	call      memcpy
.L00001117:
	movl      20(%esp), %eax
	subl      %ebx, 32(%esp)
	addl      %ebx, 28(%esp)
	addl      $16, %esp
	subl      %ebx, 64(%eax)
	movl      (%eax), %eax
	jmp       .L0000072C
.L00001130:
	movl      4(%esp), %eax
	movl      64(%eax), %eax
	jmp       .L000010E1
.L00001139:
	.p2align 4
.L00001140:
	movl      4(%esp), %eax
	movl      16(%eax), %ebx
	testb     $16, %bh
	je        .L00001ADE
.L00001150:
	testl     %edi, %edi
	je        .L00001CD8
.L00001158:
	movl      %esi, 40(%esp)
	xorl      %ebx, %ebx
	movl      %ebp, 32(%esp)
	movl      %edi, 36(%esp)
	movl      4(%esp), %esi
	jmp       .L00001176
.L0000116C:
	.p2align 4,,10
	.p2align 3
.L00001170:
	cmpl      36(%esp), %ebx
	jae       .L000011A7
.L00001176:
	movl      32(%esp), %eax
	addl      $1, %ebx
	movzbl    -1(%eax,%ebx), %ebp
	movl      32(%esi), %eax
	testl     %eax, %eax
	movl      %ebp, %edx
	je        .L000011A3
.L0000118B:
	movl      36(%eax), %edi
	testl     %edi, %edi
	je        .L000011A3
.L00001192:
	movl      64(%esi), %ecx
	cmpl      40(%eax), %ecx
	jae       .L000011A3
.L0000119A:
	leal      1(%ecx), %eax
	movl      %eax, 64(%esi)
	movb      %dl, (%edi,%ecx)
.L000011A3:
	testl     %ebp, %ebp
	jne       .L00001170
.L000011A7:
	movl      4(%esp), %eax
	movl      36(%esp), %edi
	movl      40(%esp), %esi
	movl      %ebp, 36(%esp)
	movl      32(%esp), %ebp
	testb     $2, 17(%eax)
	jne       .L00002268
.L000011C5:
	subl      %ebx, %edi
	addl      %ebx, %ebp
	movl      36(%esp), %ebx
	testl     %ebx, %ebx
	jne       .L00001CD8
.L000011D5:
	movl      4(%esp), %eax
	movl      16(%eax), %ebx
.L000011DC:
	movl      4(%esp), %eax
	movl      $8, (%eax)
.L000011E6:
	testb     $2, %bh
	je        .L00001D00
.L000011EF:
	cmpl      $15, %esi
	ja        .L000026C9
.L000011F8:
	testl     %edi, %edi
	je        .L00001CD8
.L00001200:
	leal      1(%ebp), %eax
	movl      %esi, %ecx
	leal      -1(%edi), %edx
	movl      %eax, 32(%esp)
	movzbl    (%ebp), %eax
	sall      %cl, %eax
	leal      8(%esi), %ecx
	addl      %eax, 8(%esp)
	cmpl      $15, %ecx
	ja        .L000026D2
.L00001222:
	testl     %edx, %edx
	je        .L00001DAD
.L0000122A:
	leal      2(%ebp), %eax
	subl      $2, %edi
	addl      $16, %esi
	movl      %eax, 32(%esp)
	movzbl    1(%ebp), %eax
	sall      %cl, %eax
	addl      %eax, 8(%esp)
.L00001241:
	movl      4(%esp), %edx
	movzwl    24(%edx), %eax
	cmpl      8(%esp), %eax
	je        .L00001CF0
.L00001253:
	movl      128(%esp), %eax
	movl      32(%esp), %ebp
	movl      $.LC0000005F.str1.1, 24(%eax)
	movl      $29, (%edx)
	movl      $29, %eax
	jmp       .L00000735
.L00001275:
	.p2align 4,,10
	.p2align 3
.L00001278:
	movl      4(%esp), %eax
	movl      16(%eax), %ebx
	jmp       .L000011E6
.L00001284:
	.p2align 4,,10
	.p2align 3
.L00001288:
	movl      %edi, %ebx
	movl      $-3, 28(%esp)
	movl      4(%esp), %edi
	jmp       .L00000DB0
.L0000129B:
	.p2align 4,,10
	.p2align 3
.L000012A0:
	movl      4(%esp), %eax
	movl      8(%eax), %edx
	testl     %edx, %edx
	je        .L000020C0
.L000012AF:
	cmpl      $15, %esi
	ja        .L000012FF
.L000012B4:
	testl     %edi, %edi
	je        .L00001CD8
.L000012BC:
	leal      -1(%edi), %eax
	movl      %esi, %ecx
	leal      1(%ebp), %ebx
	movl      %eax, 32(%esp)
	movzbl    (%ebp), %eax
	sall      %cl, %eax
	leal      8(%esi), %ecx
	addl      %eax, 8(%esp)
	cmpl      $15, %ecx
	ja        .L00002970
.L000012DE:
	movl      32(%esp), %eax
	testl     %eax, %eax
	je        .L00002238
.L000012EA:
	movzbl    1(%ebp), %eax
	leal      2(%ebp), %ebx
	subl      $2, %edi
	addl      $16, %esi
	sall      %cl, %eax
	addl      %eax, 8(%esp)
.L000012FD:
	movl      %ebx, %ebp
.L000012FF:
	cmpl      $35615, 8(%esp)
	jne       .L00001312
.L00001309:
	testb     $2, %dl
	jne       .L0000297B
.L00001312:
	movl      4(%esp), %eax
	movl      $0, 16(%eax)
	movl      32(%eax), %eax
	testl     %eax, %eax
	je        .L0000132B
.L00001324:
	movl      $-1, 48(%eax)
.L0000132B:
	andl      $1, %edx
	je        .L000024C9
.L00001334:
	movl      8(%esp), %ecx
	movl      $138547333, %edx
	movl      %ecx, %eax
	shrl      $8, %ecx
	sall      $8, %eax
	movzwl    %ax, %eax
	addl      %eax, %ecx
	movl      %ecx, %eax
	mull      %edx
	movl      %ecx, %eax
	subl      %edx, %eax
	shrl      $1, %eax
	addl      %edx, %eax
	shrl      $4, %eax
	movl      %eax, %edx
	sall      $5, %edx
	subl      %eax, %edx
	cmpl      %edx, %ecx
	jne       .L000024C9
.L00001368:
	movl      8(%esp), %eax
	andl      $15, %eax
	cmpl      $8, %eax
	je        .L000029DF
.L00001378:
	movl      128(%esp), %eax
	movl      $.LC00000017.str1.1, 24(%eax)
	movl      4(%esp), %eax
	movl      $29, (%eax)
	movl      $29, %eax
	jmp       .L00000735
.L0000139A:
	.p2align 4,,10
	.p2align 3
.L000013A0:
	cmpl      $15, %esi
	ja        .L00002894
.L000013A9:
	testl     %edi, %edi
	je        .L00001CD8
.L000013B1:
	movzbl    (%ebp), %eax
	movl      %esi, %ecx
	leal      -1(%edi), %edx
	leal      1(%ebp), %ebx
	sall      %cl, %eax
	leal      8(%esi), %ecx
	addl      %eax, 8(%esp)
	cmpl      $15, %ecx
	ja        .L000028B5
.L000013CF:
	testl     %edx, %edx
	je        .L000022B0
.L000013D7:
	movzbl    1(%ebp), %eax
	leal      2(%ebp), %ebx
	subl      $2, %edi
	addl      $16, %esi
	sall      %cl, %eax
	addl      %eax, 8(%esp)
.L000013EA:
	movl      8(%esp), %eax
	movl      4(%esp), %edx
	cmpb      $8, %al
	movl      %eax, 16(%edx)
	je        .L0000218E
.L000013FD:
	movl      128(%esp), %eax
	movl      %ebx, %ebp
	movl      $.LC00000017.str1.1, 24(%eax)
	movl      $29, (%edx)
	movl      $29, %eax
	jmp       .L00000735
.L0000141D:
	.p2align 4,,10
	.p2align 3
.L00001420:
	movl      4(%esp), %eax
	movl      4(%esp), %ebx
	movl      104(%eax), %eax
	movl      %eax, 36(%esp)
.L0000142F:
	movl      96(%ebx), %eax
	movl      %ebp, 40(%esp)
	movl      %eax, 60(%esp)
	addl      100(%ebx), %eax
	movl      8(%esp), %ebx
	movl      %eax, 44(%esp)
	movl      %eax, %edx
.L00001447:
	cmpl      %edx, 36(%esp)
	jae       .L000028CB
.L00001451:
	movl      4(%esp), %eax
	movl      84(%eax), %ecx
	movl      76(%eax), %edx
	movl      $1, %eax
	sall      %cl, %eax
	movl      %edx, %ebp
	movl      %edx, 32(%esp)
	leal      -1(%eax), %eax
	movl      %eax, 8(%esp)
	andl      %ebx, %eax
	leal      (%ebp,%eax,4), %eax
	movzbl    1(%eax), %ecx
	movzwl    2(%eax), %edx
	movzbl    %cl, %eax
	cmpl      %eax, %esi
	jae       .L000014D4
.L00001484:
	testl     %edi, %edi
	movl      40(%esp), %ebp
	je        .L0000254B
.L00001490:
	movl      %esi, %ecx
	jmp       .L000014A0
.L00001494:
	.p2align 4,,10
	.p2align 3
.L00001498:
	testl     %edi, %edi
	je        .L00001E00
.L000014A0:
	addl      $1, %ebp
	movzbl    -1(%ebp), %eax
	movl      32(%esp), %esi
	subl      $1, %edi
	sall      %cl, %eax
	addl      $8, %ecx
	addl      %eax, %ebx
	movl      8(%esp), %eax
	andl      %ebx, %eax
	leal      (%esi,%eax,4), %edx
	movzbl    1(%edx), %esi
	movzwl    2(%edx), %edx
	cmpl      %ecx, %esi
	movl      %esi, %eax
	ja        .L00001498
.L000014CC:
	movl      %ecx, %esi
	movl      %ebp, 40(%esp)
	movl      %eax, %ecx
.L000014D4:
	cmpw      $15, %dx
	jbe       .L00002158
.L000014DE:
	cmpw      $16, %dx
	je        .L0000264B
.L000014E8:
	cmpw      $17, %dx
	je        .L000026F0
.L000014F2:
	leal      7(%eax), %edx
	cmpl      %edx, %esi
	jae       .L00001535
.L000014F9:
	testl     %edi, %edi
	movl      40(%esp), %ebp
	je        .L0000254B
.L00001505:
	movl      %esi, %ecx
	movl      %eax, %esi
	movl      %edx, %eax
	jmp       .L00001518
.L0000150D:
	.p2align 4,,10
	.p2align 3
.L00001510:
	testl     %edi, %edi
	je        .L00001E00
.L00001518:
	addl      $1, %ebp
	movzbl    -1(%ebp), %edx
	subl      $1, %edi
	sall      %cl, %edx
	addl      $8, %ecx
	addl      %edx, %ebx
	cmpl      %eax, %ecx
	jb        .L00001510
.L0000152D:
	movl      %esi, %eax
	movl      %ebp, 40(%esp)
	movl      %ecx, %esi
.L00001535:
	movl      %eax, %ecx
	subl      $7, %esi
	shrl      %cl, %ebx
	subl      %eax, %esi
	xorl      %eax, %eax
	movl      %ebx, %edx
	shrl      $7, %ebx
	andl      $127, %edx
	addl      $11, %edx
.L0000154B:
	movl      36(%esp), %ebp
	movl      %ebp, %ecx
	addl      %edx, %ecx
	cmpl      44(%esp), %ecx
	movl      %ecx, 68(%esp)
	ja        .L00002AEE
.L00001561:
	movw      %ax, 8(%esp)
	movl      4(%esp), %eax
	movl      %ebp, %ecx
	addl      $56, %ecx
	movl      %edx, 64(%esp)
	leal      (%eax,%ecx,2), %eax
	sall      $30, %eax
	shrl      $31, %eax
	cmpl      %eax, %edx
	jbe       .L00001584
.L00001580:
	movl      %eax, 64(%esp)
.L00001584:
	cmpl      $6, %edx
	ja        .L000027C9
.L0000158D:
	movzwl    8(%esp), %ebp
	movl      4(%esp), %eax
	cmpl      $2, %edx
	movw      %bp, (%eax,%ecx,2)
	movl      36(%esp), %ecx
	movw      %bp, 114(%eax,%ecx,2)
	je        .L000015CB
.L000015A8:
	cmpl      $3, %edx
	movw      %bp, 116(%eax,%ecx,2)
	je        .L000015CB
.L000015B2:
	cmpl      $4, %edx
	movw      %bp, 118(%eax,%ecx,2)
	je        .L000015CB
.L000015BC:
	cmpl      $6, %edx
	movw      %bp, 120(%eax,%ecx,2)
	jne       .L000015CB
.L000015C6:
	movw      %bp, 122(%eax,%ecx,2)
.L000015CB:
	movl      4(%esp), %edx
	movl      68(%esp), %eax
	movl      %eax, 104(%edx)
	movl      %eax, 36(%esp)
	movl      44(%esp), %edx
	jmp       .L00001447
.L000015E3:
	.p2align 4,,10
	.p2align 3
.L000015E8:
	cmpl      $13, %esi
	ja        .L0000289B
.L000015F1:
	testl     %edi, %edi
	je        .L00001CD8
.L000015F9:
	leal      1(%ebp), %eax
	movl      %esi, %ecx
	leal      -1(%edi), %edx
	movl      %eax, 32(%esp)
	movzbl    (%ebp), %eax
	sall      %cl, %eax
	leal      8(%esi), %ecx
	addl      %eax, 8(%esp)
	movl      8(%esp), %ebx
	cmpl      $13, %ecx
	ja        .L000028A8
.L0000161F:
	testl     %edx, %edx
	je        .L00001DAD
.L00001627:
	leal      2(%ebp), %eax
	subl      $2, %edi
	addl      $16, %esi
	movl      %eax, 32(%esp)
	movzbl    1(%ebp), %eax
	sall      %cl, %eax
	addl      %eax, %ebx
	movl      %ebx, 8(%esp)
	movl      %ebx, %ecx
.L00001642:
	movl      %ecx, %eax
	movl      %ecx, %ebx
	movl      4(%esp), %ebp
	shrl      $5, %eax
	movl      %ecx, %edx
	shrl      $10, %ebx
	andl      $31, %eax
	andl      $31, %edx
	andl      $15, %ebx
	addl      $1, %eax
	addl      $257, %edx
	addl      $4, %ebx
	shrl      $14, %ecx
	subl      $14, %esi
	cmpl      $30, %eax
	movl      %edx, 96(%ebp)
	movl      %eax, 100(%ebp)
	movl      %ebx, 92(%ebp)
	movl      %ecx, 8(%esp)
	ja        .L000021F3
.L00001683:
	cmpl      $286, %edx
	ja        .L000021F3
.L0000168F:
	movl      4(%esp), %eax
	movl      %esi, %ecx
	xorl      %edx, %edx
	movl      8(%esp), %esi
	movl      %ebx, 8(%esp)
	movl      $0, 104(%eax)
	movl      $17, (%eax)
	jmp       .L000016CC
.L000016AE:
	.p2align 4,,10
	.p2align 3
.L000016B0:
	movl      4(%esp), %eax
	movl      92(%eax), %ebx
	movl      104(%eax), %edx
	cmpl      %edx, %ebx
	jbe       .L00001727
.L000016BE:
	movl      %esi, %ecx
	movl      %ebp, 32(%esp)
	movl      8(%esp), %esi
	movl      %ebx, 8(%esp)
.L000016CC:
	cmpl      $2, %ecx
	ja        .L000016F5
.L000016D1:
	testl     %edi, %edi
	je        .L000026DB
.L000016D9:
	movl      32(%esp), %eax
	subl      $1, %edi
	movzbl    (%eax), %eax
	sall      %cl, %eax
	addl      $8, %ecx
	addl      %eax, %esi
	movl      32(%esp), %eax
	addl      $1, %eax
	movl      %eax, 32(%esp)
.L000016F5:
	addl      $1, %edx
	movl      %esi, %eax
	subl      $3, %ecx
	andl      $7, %eax
	movzwl    lenfix.3430+2046(%edx,%edx), %ebp
	shrl      $3, %esi
	cmpl      8(%esp), %edx
	movl      4(%esp), %ebx
	movl      %edx, 104(%ebx)
	movw      %ax, 112(%ebx,%ebp,2)
	jb        .L000016CC
.L0000171D:
	movl      32(%esp), %ebp
	movl      %esi, 8(%esp)
	movl      %ecx, %esi
.L00001727:
	cmpl      $18, %edx
	leal      order.3459(%edx,%edx), %eax
	movl      4(%esp), %ecx
	ja        .L0000175F
.L00001737:
	.p2align 4
.L00001740:
	movzwl    (%eax), %edx
	addl      $2, %eax
	xorl      %ebx, %ebx
	cmpl      $order.3459+38, %eax
	movw      %bx, 112(%ecx,%edx,2)
	jne       .L00001740
.L00001754:
	movl      4(%esp), %eax
	movl      $19, 104(%eax)
.L0000175F:
	movl      4(%esp), %eax
	movl      56(%esp), %ebx
	subl      $8, %esp
	movl      %ebx, 108(%eax)
	movl      %ebx, 76(%eax)
	movl      %eax, %ebx
	movl      $7, 84(%eax)
	addl      $84, %eax
	pushl     60(%esp)
	pushl     %eax
	movl      %ebx, %eax
	addl      $108, %eax
	pushl     %eax
	movl      %ebx, %eax
	pushl     $19
	addl      $112, %eax
	pushl     %eax
	pushl     $0
	call      inflate_table
.L00001796:
	movl      %eax, 60(%esp)
	addl      $32, %esp
	testl     %eax, %eax
	je        .L0000286D
.L000017A5:
	movl      128(%esp), %eax
	movl      $.LC000000A3.str1.1, 24(%eax)
	movl      4(%esp), %eax
	movl      $29, (%eax)
	movl      $29, %eax
	jmp       .L00000735
.L000017C7:
	.p2align 4
.L000017D0:
	cmpl      $15, %esi
	ja        .L0000180A
.L000017D5:
	testl     %edi, %edi
	je        .L00001CD8
.L000017DD:
	movl      8(%esp), %edx
	movl      %esi, %ecx
	jmp       .L000017F0
.L000017E5:
	.p2align 4,,10
	.p2align 3
.L000017E8:
	testl     %edi, %edi
	je        .L00001D70
.L000017F0:
	addl      $1, %ebp
	movzbl    -1(%ebp), %eax
	subl      $1, %edi
	sall      %cl, %eax
	addl      $8, %ecx
	addl      %eax, %edx
	cmpl      $15, %ecx
	jbe       .L000017E8
.L00001806:
	movl      %edx, 8(%esp)
.L0000180A:
	movl      4(%esp), %eax
	movl      32(%eax), %eax
	testl     %eax, %eax
	je        .L00001825
.L00001815:
	movl      8(%esp), %ebx
	movzbl    %bl, %edx
	shrl      $8, %ebx
	movl      %edx, 8(%eax)
	movl      %ebx, 12(%eax)
.L00001825:
	movl      4(%esp), %eax
	movl      16(%eax), %eax
	testb     $2, %ah
	jne       .L0000237A
.L00001835:
	movl      4(%esp), %esi
	movl      %eax, %ebx
	movl      $0, 8(%esp)
	movl      $4, (%esi)
	xorl      %esi, %esi
	testb     $4, %ah
	jne       .L00000CEB
.L00001854:
	movl      4(%esp), %edx
	movl      32(%edx), %edx
	testl     %edx, %edx
	je        .L000021EC
.L00001863:
	movl      %eax, %ebx
	movl      $0, 16(%edx)
	andl      $1024, %eax
.L00001871:
	movl      4(%esp), %edx
	movl      $5, (%edx)
	jmp       .L00000FEE
.L00001880:
	movl      16(%esp), %ebx
	testl     %ebx, %ebx
	je        .L00001CD8
.L0000188C:
	movl      4(%esp), %edx
	movl      12(%esp), %ecx
	movl      64(%edx), %eax
	movb      %al, (%ecx)
	movl      %ebx, %eax
	movl      $20, (%edx)
	subl      $1, %eax
	movl      %eax, 16(%esp)
	leal      1(%ecx), %eax
	movl      %eax, 12(%esp)
	movl      $20, %eax
	jmp       .L00000735
.L000018B9:
	.p2align 4
.L000018C0:
	movl      4(%esp), %eax
	movl      8(%eax), %eax
	testl     %eax, %eax
	je        .L000020B0
.L000018CF:
	cmpl      $31, %esi
	ja        .L00002969
.L000018D8:
	testl     %edi, %edi
	je        .L00001CD8
.L000018E0:
	movzbl    (%ebp), %eax
	movl      %esi, %ecx
	leal      -1(%edi), %edx
	leal      1(%ebp), %ebx
	sall      %cl, %eax
	leal      8(%esi), %ecx
	addl      %eax, 8(%esp)
	cmpl      $31, %ecx
	ja        .L00002864
.L000018FE:
	testl     %edx, %edx
	je        .L00002238
.L00001906:
	movzbl    1(%ebp), %eax
	leal      -2(%edi), %edx
	leal      2(%ebp), %ebx
	sall      %cl, %eax
	leal      16(%esi), %ecx
	addl      %eax, 8(%esp)
	cmpl      $31, %ecx
	ja        .L00002864
.L00001922:
	testl     %edx, %edx
	je        .L00002238
.L0000192A:
	movzbl    2(%ebp), %eax
	leal      -3(%edi), %edx
	leal      3(%ebp), %ebx
	sall      %cl, %eax
	leal      24(%esi), %ecx
	addl      %eax, 8(%esp)
	cmpl      $31, %ecx
	ja        .L00002864
.L00001946:
	testl     %edx, %edx
	je        .L00002238
.L0000194E:
	movzbl    3(%ebp), %eax
	leal      4(%ebp), %ebx
	subl      $4, %edi
	addl      $32, %esi
	sall      %cl, %eax
	addl      %eax, 8(%esp)
.L00001961:
	movl      128(%esp), %edx
	movl      20(%esp), %eax
	subl      16(%esp), %eax
	addl      %eax, 20(%edx)
	movl      4(%esp), %edx
	addl      %eax, 28(%edx)
	testl     %eax, %eax
	je        .L000019B8
.L0000197E:
	movl      16(%edx), %edx
	testl     %edx, %edx
	je        .L00002845
.L00001989:
	subl      $4, %esp
	pushl     %eax
	movl      20(%esp), %edx
	subl      %eax, %edx
	pushl     %edx
	movl      16(%esp), %eax
	pushl     24(%eax)
	call      crc32
.L000019A0:
	addl      $16, %esp
.L000019A3:
	movl      4(%esp), %edx
	movl      %eax, 24(%edx)
	movl      128(%esp), %edx
	movl      %eax, 48(%edx)
	movl      4(%esp), %edx
.L000019B8:
	movl      16(%edx), %ebp
	movl      8(%esp), %eax
	testl     %ebp, %ebp
	jne       .L000019ED
.L000019C3:
	movl      %eax, %edx
	movl      %eax, %ebp
	shrl      $24, %eax
	sall      $24, %edx
	leal      (%edx,%eax), %ecx
	movl      %ebp, %eax
	shrl      $8, %eax
	andl      $65280, %eax
	leal      (%ecx,%eax), %edx
	movl      %ebp, %eax
	andl      $65280, %eax
	sall      $8, %eax
	addl      %edx, %eax
	movl      4(%esp), %edx
.L000019ED:
	cmpl      24(%edx), %eax
	je        .L00002099
.L000019F6:
	movl      128(%esp), %eax
	movl      %ebx, %ebp
	movl      $.LC00000158.str1.1, 24(%eax)
	movl      4(%esp), %eax
	movl      $29, (%eax)
	movl      16(%esp), %eax
	movl      %eax, 20(%esp)
	movl      $29, %eax
	jmp       .L00000735
.L00001A22:
	.p2align 4,,10
	.p2align 3
.L00001A28:
	movl      4(%esp), %eax
	movl      16(%eax), %ebx
	testb     $8, %bh
	je        .L000010AF
.L00001A38:
	testl     %edi, %edi
	je        .L00001CD8
.L00001A40:
	movl      %esi, 40(%esp)
	xorl      %ebx, %ebx
	movl      %ebp, 32(%esp)
	movl      %edi, 36(%esp)
	movl      4(%esp), %esi
	jmp       .L00001A5E
.L00001A54:
	.p2align 4,,10
	.p2align 3
.L00001A58:
	cmpl      36(%esp), %ebx
	jae       .L00001A8F
.L00001A5E:
	movl      32(%esp), %eax
	addl      $1, %ebx
	movzbl    -1(%eax,%ebx), %ebp
	movl      32(%esi), %eax
	testl     %eax, %eax
	movl      %ebp, %edx
	je        .L00001A8B
.L00001A73:
	movl      28(%eax), %edi
	testl     %edi, %edi
	je        .L00001A8B
.L00001A7A:
	movl      64(%esi), %ecx
	cmpl      32(%eax), %ecx
	jae       .L00001A8B
.L00001A82:
	leal      1(%ecx), %eax
	movl      %eax, 64(%esi)
	movb      %dl, (%edi,%ecx)
.L00001A8B:
	testl     %ebp, %ebp
	jne       .L00001A58
.L00001A8F:
	movl      4(%esp), %eax
	movl      36(%esp), %edi
	movl      40(%esp), %esi
	movl      %ebp, 36(%esp)
	movl      32(%esp), %ebp
	testb     $2, 17(%eax)
	jne       .L00002290
.L00001AAD:
	movl      36(%esp), %eax
	subl      %ebx, %edi
	addl      %ebx, %ebp
	testl     %eax, %eax
	jne       .L00001CD8
.L00001ABD:
	movl      4(%esp), %eax
	movl      16(%eax), %ebx
.L00001AC4:
	movl      4(%esp), %eax
	testb     $16, %bh
	movl      $0, 64(%eax)
	movl      $7, (%eax)
	jne       .L00001150
.L00001ADE:
	movl      4(%esp), %eax
	movl      32(%eax), %eax
	testl     %eax, %eax
	je        .L000011DC
.L00001AED:
	movl      $0, 36(%eax)
	jmp       .L000011DC
.L00001AF9:
	.p2align 4
.L00001B00:
	movl      4(%esp), %eax
	movl      8(%eax), %eax
.L00001B07:
	testl     %eax, %eax
	je        .L000027B0
.L00001B0F:
	movl      4(%esp), %eax
	movl      16(%eax), %ebx
	testl     %ebx, %ebx
	je        .L000027B0
.L00001B1E:
	cmpl      $31, %esi
	ja        .L00001BB2
.L00001B27:
	testl     %edi, %edi
	je        .L00001CD8
.L00001B2F:
	movzbl    (%ebp), %eax
	movl      %esi, %ecx
	leal      -1(%edi), %edx
	leal      1(%ebp), %ebx
	sall      %cl, %eax
	leal      8(%esi), %ecx
	addl      %eax, 8(%esp)
	cmpl      $31, %ecx
	ja        .L000024C0
.L00001B4D:
	testl     %edx, %edx
	je        .L00002238
.L00001B55:
	movzbl    1(%ebp), %eax
	leal      -2(%edi), %edx
	leal      2(%ebp), %ebx
	sall      %cl, %eax
	leal      16(%esi), %ecx
	addl      %eax, 8(%esp)
	cmpl      $31, %ecx
	ja        .L000024C0
.L00001B71:
	testl     %edx, %edx
	je        .L00002238
.L00001B79:
	movzbl    2(%ebp), %eax
	leal      -3(%edi), %edx
	leal      3(%ebp), %ebx
	sall      %cl, %eax
	leal      24(%esi), %ecx
	addl      %eax, 8(%esp)
	cmpl      $31, %ecx
	ja        .L000024C0
.L00001B95:
	testl     %edx, %edx
	je        .L00002238
.L00001B9D:
	movzbl    3(%ebp), %eax
	leal      4(%ebp), %ebx
	subl      $4, %edi
	addl      $32, %esi
	sall      %cl, %eax
	addl      %eax, 8(%esp)
.L00001BB0:
	movl      %ebx, %ebp
.L00001BB2:
	movl      4(%esp), %eax
	movl      8(%esp), %ebx
	cmpl      %ebx, 28(%eax)
	je        .L000029CA
.L00001BC3:
	movl      128(%esp), %ebx
	movl      $.LC0000016D.str1.1, 24(%ebx)
	movl      $29, (%eax)
	movl      $29, %eax
	jmp       .L00000735
.L00001BE1:
	.p2align 4,,10
	.p2align 3
.L00001BE8:
	movl      %esi, %ecx
	andl      $-8, %esi
	andl      $7, %ecx
	shrl      %cl, 8(%esp)
	cmpl      $31, %esi
	ja        .L0000288D
.L00001BFD:
	testl     %edi, %edi
	je        .L00001CD8
.L00001C05:
	movzbl    (%ebp), %eax
	movl      %esi, %ecx
	leal      -1(%edi), %edx
	leal      1(%ebp), %ebx
	sall      %cl, %eax
	leal      8(%esi), %ecx
	addl      %eax, 8(%esp)
	cmpl      $31, %ecx
	ja        .L00002642
.L00001C23:
	testl     %edx, %edx
	je        .L00002238
.L00001C2B:
	movzbl    1(%ebp), %eax
	leal      -2(%edi), %edx
	leal      2(%ebp), %ebx
	sall      %cl, %eax
	leal      16(%esi), %ecx
	addl      %eax, 8(%esp)
	cmpl      $31, %ecx
	ja        .L00002642
.L00001C47:
	testl     %edx, %edx
	je        .L00002238
.L00001C4F:
	movzbl    2(%ebp), %eax
	leal      -3(%edi), %edx
	leal      3(%ebp), %ebx
	sall      %cl, %eax
	leal      24(%esi), %ecx
	addl      %eax, 8(%esp)
	cmpl      $31, %ecx
	ja        .L00002642
.L00001C6B:
	testl     %edx, %edx
	je        .L00002238
.L00001C73:
	movzbl    3(%ebp), %eax
	leal      4(%ebp), %ebx
	subl      $4, %edi
	addl      $32, %esi
	sall      %cl, %eax
	addl      %eax, 8(%esp)
.L00001C86:
	movl      8(%esp), %edx
	movzwl    %dx, %eax
	shrl      $16, %edx
	xorl      $65535, %edx
	cmpl      %edx, %eax
	je        .L000021C0
.L00001C9E:
	movl      128(%esp), %eax
	movl      %ebx, %ebp
	movl      $.LC00000086.str1.1, 24(%eax)
	movl      4(%esp), %eax
	movl      $29, (%eax)
	movl      $29, %eax
	jmp       .L00000735
.L00001CC2:
	.p2align 4,,10
	.p2align 3
.L00001CC8:
	movl      $256, %edx
	jmp       .L00000F26
.L00001CD2:
	.p2align 4,,10
	.p2align 3
.L00001CD8:
	movl      %edi, %ebx
	movl      4(%esp), %edi
	jmp       .L00000DB0
.L00001CE3:
	.p2align 4,,10
	.p2align 3
.L00001CE8:
	subl      $-128, %eax
	jmp       .L00000F24
.L00001CF0:
	movl      32(%esp), %ebp
	xorl      %esi, %esi
	movl      $0, 8(%esp)
	.p2align 4,,10
	.p2align 3
.L00001D00:
	movl      4(%esp), %eax
	movl      32(%eax), %eax
	testl     %eax, %eax
	je        .L00001D1D
.L00001D0B:
	movl      %ebx, %edx
	movl      $1, 48(%eax)
	sarl      $9, %edx
	andl      $1, %edx
	movl      %edx, 44(%eax)
.L00001D1D:
	subl      $4, %esp
	pushl     $0
	pushl     $0
	pushl     $0
	call      crc32
.L00001D2B:
	movl      20(%esp), %ebx
	movl      144(%esp), %edx
	addl      $16, %esp
	movl      %eax, 24(%ebx)
	movl      %eax, 48(%edx)
	movl      $11, %eax
	movl      $11, (%ebx)
	jmp       .L00000735
.L00001D4F:
	.p2align 4,,10
	.p2align 3
.L00001D50:
	movl      4(%eax), %eax
	testl     %eax, %eax
	jne       .L00001DF0
.L00001D5B:
	movl      $0, 24(%esp)
	jmp       .L000006CF
.L00001D68:
	.p2align 4
.L00001D70:
	movl      %edi, %ebx
	movl      %edx, 8(%esp)
	movl      %ecx, %esi
	movl      4(%esp), %edi
	jmp       .L00000DB0
.L00001D81:
	.p2align 4,,10
	.p2align 3
.L00001D88:
	subl      $4, %esp
	pushl     %ebx
	movl      136(%esp), %eax
	movl      12(%eax), %eax
	movl      %eax, 12(%esp)
	subl      %ebx, %eax
	pushl     %eax
	pushl     24(%edi)
	call      adler32
.L00001DA5:
	addl      $16, %esp
	jmp       .L00000EEC
.L00001DAD:
	movl      4(%esp), %edi
	movl      %ecx, %esi
	movl      32(%esp), %ebp
	xorl      %ebx, %ebx
	jmp       .L00000DB0
.L00001DBE:
	.p2align 4,,10
	.p2align 3
.L00001DC0:
	movl      12(%esp), %edx
	subl      $4, %esp
	pushl     %ebx
	subl      %ebx, %edx
	pushl     %edx
	pushl     %eax
	call      memcpy
.L00001DD1:
	movl      40(%esi), %eax
	movl      $0, 48(%esi)
	addl      $16, %esp
	movl      %eax, 44(%esi)
	jmp       .L00000E98
.L00001DE6:
	.p2align 4
.L00001DF0:
	movl      $-2, %eax
	jmp       .L00000D98
.L00001DFA:
	.p2align 4,,10
	.p2align 3
.L00001E00:
	movl      %ebx, 8(%esp)
	movl      %ecx, %esi
	movl      %edi, %ebx
	movl      4(%esp), %edi
	jmp       .L00000DB0
.L00001E11:
	.p2align 4,,10
	.p2align 3
.L00001E18:
	movl      $0, 48(%esi)
	jmp       .L00000E88
.L00001E24:
	.p2align 4,,10
	.p2align 3
.L00001E28:
	movl      12(%esp), %eax
	subl      $4, %esp
	pushl     %ebp
	subl      %ebp, %eax
	pushl     %eax
	pushl     52(%esi)
	call      memcpy
.L00001E3B:
	movl      40(%esi), %eax
	movl      %ebp, 48(%esi)
	addl      $16, %esp
	movl      %eax, 44(%esi)
	jmp       .L00000E98
.L00001E4C:
	.p2align 4,,10
	.p2align 3
.L00001E50:
	movl      4(%esp), %eax
	movl      $11, (%eax)
	movl      $11, %eax
	jmp       .L00000735
.L00001E64:
	.p2align 4,,10
	.p2align 3
.L00001E68:
	movl      12(%esp), %eax
	subl      %edx, %eax
	movl      %eax, 32(%esp)
	movl      4(%esp), %eax
	movl      64(%eax), %ecx
	movl      %ecx, %edx
.L00001E7B:
	cmpl      16(%esp), %ecx
	movl      %ecx, %ebx
	jbe       .L00001E87
.L00001E83:
	movl      16(%esp), %ebx
.L00001E87:
	movl      4(%esp), %ecx
	movl      32(%esp), %eax
	subl      %ebx, %edx
	subl      %ebx, 16(%esp)
	movl      %edx, 64(%ecx)
	leal      4(%eax), %edx
	movl      12(%esp), %eax
	cmpl      %edx, %eax
	movl      %eax, %edx
	setae     %cl
	addl      $4, %edx
	cmpl      %edx, 32(%esp)
	setae     %dl
	orl       %ecx, %edx
	cmpl      $9, %ebx
	seta      %cl
	testb     %cl, %dl
	je        .L00002348
.L00001EC0:
	movl      %eax, %edx
	movl      32(%esp), %eax
	orl       %eax, %edx
	andl      $3, %edx
	jne       .L00002348
.L00001ED1:
	leal      -4(%ebx), %ecx
	movl      %ebx, 36(%esp)
	movl      12(%esp), %ebx
	movl      %esi, 32(%esp)
	shrl      $2, %ecx
	addl      $1, %ecx
	leal      0(,%ecx,4), %edx
	movl      %edx, 40(%esp)
	xorl      %edx, %edx
.L00001EF3:
	movl      (%eax,%edx,4), %esi
	movl      %esi, (%ebx,%edx,4)
	addl      $1, %edx
	cmpl      %ecx, %edx
	jb        .L00001EF3
.L00001F00:
	movl      36(%esp), %ebx
	movl      40(%esp), %ecx
	movl      32(%esp), %esi
	movl      %eax, 32(%esp)
	movl      12(%esp), %edx
	movl      %ebx, %eax
	subl      %ecx, %eax
	movl      %eax, 36(%esp)
	movl      32(%esp), %eax
	addl      %ecx, %edx
	addl      %ecx, %eax
	cmpl      %ebx, %ecx
	je        .L00001F49
.L00001F28:
	movzbl    (%eax), %ecx
	cmpl      $1, 36(%esp)
	movb      %cl, (%edx)
	je        .L00001F49
.L00001F34:
	movzbl    1(%eax), %ecx
	cmpl      $2, 36(%esp)
	movb      %cl, 1(%edx)
	je        .L00001F49
.L00001F42:
	movzbl    2(%eax), %eax
	movb      %al, 2(%edx)
.L00001F49:
	movl      4(%esp), %eax
	addl      %ebx, 12(%esp)
	movl      64(%eax), %ecx
	testl     %ecx, %ecx
	je        .L00001F60
.L00001F58:
	movl      (%eax), %eax
	jmp       .L0000072C
.L00001F5F:
	.p2align 4,,10
	.p2align 3
.L00001F60:
	movl      $20, (%eax)
	movl      $20, %eax
	jmp       .L00000735
.L00001F70:
	movl      %eax, %ecx
	jmp       .L0000100B
.L00001F77:
	.p2align 4
.L00001F80:
	movl      128(%esp), %eax
	movl      12(%esp), %ebx
	subl      $8, %esp
	movl      %ebx, 12(%eax)
	movl      24(%esp), %ebx
	movl      %edi, 4(%eax)
	movl      16(%esp), %edi
	movl      %ebp, (%eax)
	movl      %ebx, 16(%eax)
	movl      12(%esp), %ebx
	movl      %edi, 56(%ebx)
	movl      %esi, 60(%ebx)
	pushl     28(%esp)
	pushl     140(%esp)
	call      inflate_fast
.L00001FBB:
	movl      144(%esp), %eax
	movl      56(%ebx), %esi
	movl      12(%eax), %eax
	movl      %esi, 24(%esp)
	movl      60(%ebx), %esi
	movl      %eax, 28(%esp)
	movl      144(%esp), %eax
	movl      16(%eax), %eax
	movl      %eax, 32(%esp)
	movl      144(%esp), %eax
	addl      $16, %esp
	movl      (%eax), %ebp
	movl      4(%eax), %edi
	movl      (%ebx), %eax
	cmpl      $11, %eax
	jne       .L0000072C
.L00001FFB:
	movl      4(%esp), %ebx
	movl      $-1, 7108(%ebx)
	jmp       .L00000735
.L0000200E:
	.p2align 4,,10
	.p2align 3
.L00002010:
	cmpl      %ebx, %esi
	jae       .L0000204B
.L00002014:
	testl     %edi, %edi
	je        .L00001CD8
.L0000201C:
	movl      8(%esp), %edx
	movl      %esi, %ecx
	jmp       .L00002030
.L00002024:
	.p2align 4,,10
	.p2align 3
.L00002028:
	testl     %edi, %edi
	je        .L00001D70
.L00002030:
	addl      $1, %ebp
	movzbl    -1(%ebp), %eax
	subl      $1, %edi
	sall      %cl, %eax
	addl      $8, %ecx
	addl      %eax, %edx
	cmpl      %ebx, %ecx
	jb        .L00002028
.L00002045:
	movl      %edx, 8(%esp)
	movl      %ecx, %esi
.L0000204B:
	movl      %ebx, %ecx
	movl      $1, %eax
	movl      8(%esp), %edx
	sall      %cl, %eax
	movl      4(%esp), %ecx
	subl      %ebx, %esi
	subl      $1, %eax
	andl      %edx, %eax
	addl      64(%ecx), %eax
	movl      %eax, 64(%ecx)
	movl      %ebx, %ecx
	shrl      %cl, %edx
	movl      4(%esp), %ecx
	movl      %edx, 8(%esp)
	addl      %ebx, 7108(%ecx)
	movl      %ecx, %ebx
	jmp       .L00000B2A
.L00002082:
	.p2align 4,,10
	.p2align 3
.L00002088:
	movl      %eax, %ebx
	jmp       .L000010F3
.L0000208F:
	.p2align 4,,10
	.p2align 3
.L00002090:
	movl      16(%esp), %ebx
	jmp       .L000010FD
.L00002099:
	movl      16(%esp), %esi
	movl      8(%edx), %eax
	movl      %ebx, %ebp
	movl      $0, 8(%esp)
	movl      %esi, 20(%esp)
	xorl      %esi, %esi
.L000020B0:
	movl      4(%esp), %ebx
	movl      $27, (%ebx)
	jmp       .L00001B07
.L000020BF:
	.p2align 4,,10
	.p2align 3
.L000020C0:
	movl      $12, (%eax)
	movl      $12, %eax
	jmp       .L00000735
.L000020D0:
	movl      7104(%ebx), %eax
	testl     %eax, %eax
	je        .L000009C8
.L000020DE:
	movl      128(%esp), %eax
	movl      $.LC0000013A.str1.1, 24(%eax)
	movl      $29, (%ebx)
	movl      $29, %eax
	jmp       .L00000735
.L000020FC:
	.p2align 4,,10
	.p2align 3
.L00002100:
	movl      4(%esp), %edx
	movl      %eax, 44(%esp)
	movl      7108(%edx), %edx
	movl      %edx, 36(%esp)
.L00002112:
	addl      %eax, %edx
	movl      %eax, %ecx
	movl      4(%esp), %eax
	shrl      %cl, 8(%esp)
	subl      40(%esp), %esi
	testb     $64, %bl
	movl      %edx, 7108(%eax)
	je        .L00002328
.L00002131:
	movl      128(%esp), %eax
	movl      $.LC00000124.str1.1, 24(%eax)
	movl      4(%esp), %eax
	movl      $29, (%eax)
	movl      $29, %eax
	jmp       .L00000735
.L00002153:
	.p2align 4,,10
	.p2align 3
.L00002158:
	shrl      %cl, %ebx
	movl      36(%esp), %ecx
	movl      4(%esp), %ebp
	subl      %eax, %esi
	movl      %ecx, %eax
	addl      $1, %eax
	movl      %eax, 104(%ebp)
	movl      %eax, 36(%esp)
	movw      %dx, 112(%ebp,%ecx,2)
	movl      44(%esp), %edx
	jmp       .L00001447
.L0000217E:
	movl      $16, (%ebx)
	movl      $16, %eax
	jmp       .L000008D0
.L0000218E:
	testl     $57344, 8(%esp)
	je        .L00002770
.L0000219C:
	movl      128(%esp), %eax
	movl      %ebx, %ebp
	movl      $.LC00000046.str1.1, 24(%eax)
	movl      4(%esp), %eax
	movl      $29, (%eax)
	movl      $29, %eax
	jmp       .L00000735
.L000021C0:
	cmpl      $6, 132(%esp)
	movl      4(%esp), %esi
	movl      %ebx, %ebp
	movl      %eax, 64(%esi)
	movl      $14, (%esi)
	je        .L00002B18
.L000021DD:
	xorl      %esi, %esi
	movl      $0, 8(%esp)
	jmp       .L000010D7
.L000021EC:
	xorl      %eax, %eax
	jmp       .L00001871
.L000021F3:
	movl      128(%esp), %eax
	movl      32(%esp), %ebp
	movl      $.LC00000000.str1.4, 24(%eax)
	movl      4(%esp), %eax
	movl      $29, (%eax)
	movl      $29, %eax
	jmp       .L00000735
.L00002219:
	.p2align 4
.L00002220:
	movl      %esi, %ebx
	movl      %edi, 8(%esp)
	movl      %ecx, %esi
	movl      4(%esp), %edi
	jmp       .L00000DB0
.L00002231:
	.p2align 4,,10
	.p2align 3
.L00002238:
	movl      %ebx, %ebp
	movl      4(%esp), %edi
	movl      %ecx, %esi
	xorl      %ebx, %ebx
	jmp       .L00000DB0
.L00002247:
	.p2align 4
.L00002250:
	movl      %edi, %ebx
	movl      %esi, 8(%esp)
	movl      4(%esp), %edi
	movl      %ecx, %esi
	jmp       .L00000DB0
.L00002261:
	.p2align 4,,10
	.p2align 3
.L00002268:
	subl      $4, %esp
	pushl     %ebx
	pushl     %ebp
	movl      16(%esp), %eax
	pushl     24(%eax)
	call      crc32
.L00002279:
	movl      20(%esp), %edx
	addl      $16, %esp
	movl      %eax, 24(%edx)
	jmp       .L000011C5
.L00002288:
	.p2align 4
.L00002290:
	subl      $4, %esp
	pushl     %ebx
	pushl     %ebp
	movl      16(%esp), %eax
	pushl     24(%eax)
	call      crc32
.L000022A1:
	movl      20(%esp), %edx
	addl      $16, %esp
	movl      %eax, 24(%edx)
	jmp       .L00001AAD
.L000022B0:
	movl      %ebx, %ebp
	movl      4(%esp), %edi
	movl      %ecx, %esi
	xorl      %ebx, %ebx
	jmp       .L00000DB0
.L000022BF:
	.p2align 4,,10
	.p2align 3
.L000022C0:
	movl      4(%esp), %ebx
	subl      %ecx, %eax
	addl      52(%ebx), %eax
	movl      %eax, 32(%esp)
	movl      %ebx, %eax
	jmp       .L000009EB
.L000022D4:
	.p2align 4,,10
	.p2align 3
.L000022D8:
	testb     $240, %bl
	je        .L000023C2
.L000022E1:
	movl      %edx, %ecx
	movl      4(%esp), %edx
	subl      %eax, %esi
	shrl      %cl, 8(%esp)
	movl      %eax, 7108(%edx)
	movzwl    36(%esp), %eax
	movl      %eax, 64(%edx)
.L000022FB:
	testb     $32, %bl
	je        .L0000257E
.L00002304:
	movl      4(%esp), %eax
	movl      $-1, 7108(%eax)
	movl      $11, (%eax)
	movl      $11, %eax
	jmp       .L00000735
.L00002322:
	.p2align 4,,10
	.p2align 3
.L00002328:
	movl      %eax, %edx
	movzwl    32(%esp), %eax
	andl      $15, %ebx
	movl      %ebx, 72(%edx)
	movl      $23, (%edx)
	movl      %eax, 68(%edx)
	jmp       .L0000091F
.L00002343:
	.p2align 4,,10
	.p2align 3
.L00002348:
	movl      32(%esp), %eax
	movl      12(%esp), %edx
	movl      %ebx, 32(%esp)
	leal      (%eax,%ebx), %ecx
	.p2align 4
.L00002360:
	addl      $1, %eax
	movzbl    -1(%eax), %ebx
	addl      $1, %edx
	cmpl      %ecx, %eax
	movb      %bl, -1(%edx)
	jne       .L00002360
.L00002371:
	movl      32(%esp), %ebx
	jmp       .L00001F49
.L0000237A:
	movl      8(%esp), %esi
	subl      $4, %esp
	movl      %esi, %eax
	movb      %al, 96(%esp)
	movl      %esi, %eax
	shrl      $8, %eax
	movb      %al, 97(%esp)
	pushl     $2
	leal      100(%esp), %eax
	pushl     %eax
	movl      16(%esp), %esi
	pushl     24(%esi)
	call      crc32
.L000023A3:
	addl      $16, %esp
	movl      %eax, 24(%esi)
	movl      16(%esi), %eax
	jmp       .L00001835
.L000023B1:
	movl      %ebx, 8(%esp)
	movl      %ebp, %ebx
	movl      %edi, %ebp
	movl      4(%esp), %edi
	jmp       .L00000DB0
.L000023C2:
	movzwl    36(%esp), %ecx
	movl      %ecx, 36(%esp)
	leal      (%ebx,%eax), %ecx
	movl      $1, %ebx
	sall      %cl, %ebx
	movl      %edx, %ecx
	leal      -1(%ebx), %ebx
	movl      %ebx, 44(%esp)
	andl      8(%esp), %ebx
	shrl      %cl, %ebx
	movl      36(%esp), %ecx
	leal      (%ebx,%ecx), %edx
	movl      32(%esp), %ebx
	leal      (%ebx,%edx,4), %edx
	movzwl    2(%edx), %ecx
	movzbl    (%edx), %ebx
	movzbl    1(%edx), %edx
	movw      %cx, 40(%esp)
	leal      (%eax,%edx), %ecx
	movl      %edx, 60(%esp)
	cmpl      %ecx, %esi
	movl      %ecx, 64(%esp)
	jae       .L0000247C
.L00002411:
	testl     %edi, %edi
	je        .L00001CD8
.L00002419:
	movl      8(%esp), %ebx
	jmp       .L00002428
.L0000241F:
	.p2align 4,,10
	.p2align 3
.L00002420:
	testl     %edi, %edi
	je        .L0000254B
.L00002428:
	addl      $1, %ebp
	movzbl    -1(%ebp), %edx
	movl      %esi, %ecx
	addl      $8, %esi
	subl      $1, %edi
	sall      %cl, %edx
	movl      %eax, %ecx
	addl      %edx, %ebx
	movl      44(%esp), %edx
	andl      %ebx, %edx
	shrl      %cl, %edx
	addl      36(%esp), %edx
	movl      32(%esp), %ecx
	leal      (%ecx,%edx,4), %edx
	movzbl    (%edx), %ecx
	movb      %cl, 60(%esp)
	movzwl    2(%edx), %ecx
	movzbl    1(%edx), %edx
	movw      %cx, 40(%esp)
	leal      (%edx,%eax), %ecx
	cmpl      %esi, %ecx
	ja        .L00002420
.L0000246B:
	movl      %ebx, 8(%esp)
	movl      %ecx, 64(%esp)
	movzbl    60(%esp), %ebx
	movl      %edx, 60(%esp)
.L0000247C:
	subl      %eax, %esi
	movl      %eax, %ecx
	movl      8(%esp), %edx
	movl      %esi, %eax
	movl      60(%esp), %esi
	shrl      %cl, %edx
	subl      %esi, %eax
	movl      %esi, %ecx
	shrl      %cl, %edx
	movl      %eax, %esi
	movzwl    40(%esp), %eax
	movl      %edx, 8(%esp)
	movl      64(%esp), %ecx
	testb     %bl, %bl
	movl      4(%esp), %edx
	movl      %ecx, 7108(%edx)
	movl      %eax, 64(%edx)
	jne       .L000022FB
.L000024B6:
	jmp       .L00000AF5
.L000024BB:
	.p2align 4,,10
	.p2align 3
.L000024C0:
	movl      %ecx, %esi
	movl      %edx, %edi
	jmp       .L00001BB0
.L000024C9:
	movl      128(%esp), %eax
	movl      $.LC00000000.str1.1, 24(%eax)
	movl      4(%esp), %eax
	movl      $29, (%eax)
	movl      $29, %eax
	jmp       .L00000735
.L000024EB:
	cmpl      $6, 132(%esp)
	movl      4(%esp), %eax
	movl      $lenfix.3430, 76(%eax)
	movl      $9, 84(%eax)
	movl      $distfix.3431, 80(%eax)
	movl      $5, 88(%eax)
	movl      $19, (%eax)
	je        .L00002B2D
.L0000251F:
	movl      $19, %eax
	jmp       .L000008D0
.L00002529:
	movl      128(%esp), %eax
	movl      $.LC00000073.str1.1, 24(%eax)
	movl      4(%esp), %eax
	movl      $29, (%eax)
	movl      $29, %eax
	jmp       .L000008D0
.L0000254B:
	movl      %ebx, 8(%esp)
	movl      %edi, %ebx
	movl      4(%esp), %edi
	jmp       .L00000DB0
.L0000255A:
	subl      $4, %esp
	pushl     %ecx
	movl      %ecx, 40(%esp)
	pushl     %ebp
	movl      16(%esp), %ebx
	pushl     24(%ebx)
	call      crc32
.L0000256F:
	addl      $16, %esp
	movl      %eax, 24(%ebx)
	movl      32(%esp), %ecx
	jmp       .L00001070
.L0000257E:
	testb     $64, %bl
	je        .L00002754
.L00002587:
	movl      128(%esp), %eax
	movl      $.LC00000108.str1.1, 24(%eax)
	movl      4(%esp), %eax
	movl      $29, (%eax)
	movl      $29, %eax
	jmp       .L00000735
.L000025A9:
	movl      8(%esp), %esi
	subl      $4, %esp
	movl      %esi, %eax
	movb      %al, 96(%esp)
	movl      %esi, %eax
	shrl      $8, %eax
	movb      %al, 97(%esp)
	movl      %esi, %eax
	shrl      $16, %eax
	movb      %al, 98(%esp)
	movl      %esi, %eax
	shrl      $24, %eax
	movb      %al, 99(%esp)
	pushl     $4
	leal      100(%esp), %eax
	pushl     %eax
	movl      16(%esp), %esi
	pushl     24(%esi)
	call      crc32
.L000025E4:
	addl      $16, %esp
	movl      %eax, 24(%esi)
	movl      4(%esp), %eax
	jmp       .L00000FC2
.L000025F3:
	movl      8(%esp), %esi
	subl      $4, %esp
	movl      %esi, %eax
	movb      %al, 96(%esp)
	movl      %esi, %eax
	shrl      $8, %eax
	movb      %al, 97(%esp)
	pushl     $2
	leal      100(%esp), %eax
	pushl     %eax
	movl      16(%esp), %esi
	pushl     24(%esi)
	call      crc32
.L0000261C:
	movl      16(%esi), %ebx
	movl      %eax, 24(%esi)
	addl      $16, %esp
	xorl      %esi, %esi
	movl      $0, 8(%esp)
	movl      %ebx, %eax
	andl      $1024, %eax
	jmp       .L00001871
.L0000263B:
	movl      %edx, %edi
	jmp       .L000007D1
.L00002642:
	movl      %ecx, %esi
	movl      %edx, %edi
	jmp       .L00001C86
.L0000264B:
	leal      2(%eax), %edx
	cmpl      %edx, %esi
	jae       .L00002695
.L00002652:
	testl     %edi, %edi
	movl      40(%esp), %ebp
	je        .L0000254B
.L0000265E:
	movl      %esi, %ecx
	movl      %eax, %esi
	movl      %edx, %eax
	jmp       .L00002678
.L00002666:
	.p2align 4
.L00002670:
	testl     %edi, %edi
	je        .L00001E00
.L00002678:
	addl      $1, %ebp
	movzbl    -1(%ebp), %edx
	subl      $1, %edi
	sall      %cl, %edx
	addl      $8, %ecx
	addl      %edx, %ebx
	cmpl      %eax, %ecx
	jb        .L00002670
.L0000268D:
	movl      %esi, %eax
	movl      %ebp, 40(%esp)
	movl      %ecx, %esi
.L00002695:
	movl      %eax, %ecx
	subl      %eax, %esi
	movl      36(%esp), %eax
	shrl      %cl, %ebx
	testl     %eax, %eax
	je        .L00002AEE
.L000026A7:
	movl      36(%esp), %eax
	movl      4(%esp), %edx
	subl      $2, %esi
	addl      $55, %eax
	movzwl    (%edx,%eax,2), %eax
	movl      %ebx, %edx
	shrl      $2, %ebx
	andl      $3, %edx
	addl      $3, %edx
	jmp       .L0000154B
.L000026C9:
	movl      %ebp, 32(%esp)
	jmp       .L00001241
.L000026D2:
	movl      %ecx, %esi
	movl      %edx, %edi
	jmp       .L00001241
.L000026DB:
	movl      %edi, %ebx
	movl      %esi, 8(%esp)
	movl      32(%esp), %ebp
	movl      %ecx, %esi
	movl      4(%esp), %edi
	jmp       .L00000DB0
.L000026F0:
	leal      3(%eax), %edx
	cmpl      %edx, %esi
	jae       .L00002735
.L000026F7:
	testl     %edi, %edi
	movl      40(%esp), %ebp
	je        .L0000254B
.L00002703:
	movl      %esi, %ecx
	movl      %eax, %esi
	movl      %edx, %eax
	jmp       .L00002718
.L0000270B:
	.p2align 4,,10
	.p2align 3
.L00002710:
	testl     %edi, %edi
	je        .L00001E00
.L00002718:
	addl      $1, %ebp
	movzbl    -1(%ebp), %edx
	subl      $1, %edi
	sall      %cl, %edx
	addl      $8, %ecx
	addl      %edx, %ebx
	cmpl      %eax, %ecx
	jb        .L00002710
.L0000272D:
	movl      %esi, %eax
	movl      %ebp, 40(%esp)
	movl      %ecx, %esi
.L00002735:
	movl      %eax, %ecx
	shrl      %cl, %ebx
	movl      $-3, %ecx
	movl      %ebx, %edx
	subl      %eax, %ecx
	shrl      $3, %ebx
	andl      $7, %edx
	addl      %ecx, %esi
	xorl      %eax, %eax
	addl      $3, %edx
	jmp       .L0000154B
.L00002754:
	movl      4(%esp), %eax
	andl      $15, %ebx
	movl      %ebx, 72(%eax)
	movl      $21, (%eax)
	jmp       .L00000B17
.L00002769:
	movl      %ebp, %edx
	jmp       .L00000893
.L00002770:
	movl      4(%esp), %eax
	movl      32(%eax), %eax
	testl     %eax, %eax
	je        .L00002787
.L0000277B:
	movl      8(%esp), %edx
	shrl      $8, %edx
	andl      $1, %edx
	movl      %edx, (%eax)
.L00002787:
	testl     $512, 8(%esp)
	jne       .L00002935
.L00002795:
	movl      4(%esp), %eax
	movl      %ebx, %ebp
	movl      $0, 8(%esp)
	xorl      %esi, %esi
	movl      $2, (%eax)
	jmp       .L00000F6D
.L000027B0:
	movl      %edi, %ebx
	movl      4(%esp), %edi
.L000027B6:
	movl      $28, (%edi)
	movl      $1, 28(%esp)
	jmp       .L00000DB0
.L000027C9:
	movl      64(%esp), %ebp
	testl     %ebp, %ebp
	jne       .L00002BA3
.L000027D5:
	movl      %edx, %eax
	movl      %edx, 76(%esp)
	subl      $2, %eax
	shrl      $1, %eax
	addl      $1, %eax
	movl      %eax, 32(%esp)
	addl      %eax, %eax
	movl      %eax, 72(%esp)
.L000027ED:
	movzwl    8(%esp), %edx
	movl      40(%esp), %ebp
	movl      %edx, %eax
	sall      $16, %eax
	orl       %eax, %edx
	movl      64(%esp), %eax
	addl      %ecx, %eax
	movl      4(%esp), %ecx
	leal      (%ecx,%eax,2), %ecx
	xorl      %eax, %eax
.L0000280C:
	movl      %edx, (%ecx,%eax,4)
	addl      $1, %eax
	cmpl      32(%esp), %eax
	jb        .L0000280C
.L00002818:
	movl      72(%esp), %edx
	addl      %edx, 36(%esp)
	cmpl      76(%esp), %edx
	movl      %ebp, 40(%esp)
	je        .L000015CB
.L0000282E:
	movzwl    8(%esp), %ecx
	movl      4(%esp), %eax
	movl      36(%esp), %edx
	movw      %cx, 112(%eax,%edx,2)
	jmp       .L000015CB
.L00002845:
	subl      $4, %esp
	pushl     %eax
	movl      20(%esp), %edx
	subl      %eax, %edx
	pushl     %edx
	movl      16(%esp), %eax
	pushl     24(%eax)
	call      adler32
.L0000285C:
	addl      $16, %esp
	jmp       .L000019A3
.L00002864:
	movl      %ecx, %esi
	movl      %edx, %edi
	jmp       .L00001961
.L0000286D:
	movl      4(%esp), %eax
	movl      $0, 36(%esp)
	movl      $0, 104(%eax)
	movl      $18, (%eax)
	movl      %eax, %ebx
	jmp       .L0000142F
.L0000288D:
	movl      %ebp, %ebx
	jmp       .L00001C86
.L00002894:
	movl      %ebp, %ebx
	jmp       .L000013EA
.L0000289B:
	movl      %ebp, 32(%esp)
	movl      8(%esp), %ecx
	jmp       .L00001642
.L000028A8:
	movl      %ecx, %esi
	movl      %edx, %edi
	movl      8(%esp), %ecx
	jmp       .L00001642
.L000028B5:
	movl      %ecx, %esi
	movl      %edx, %edi
	jmp       .L000013EA
.L000028BE:
	movl      %ebx, %ebp
	movl      4(%esp), %edi
	xorl      %ebx, %ebx
	jmp       .L00000DB0
.L000028CB:
	movl      4(%esp), %eax
	movl      40(%esp), %ebp
	movl      %ebx, 8(%esp)
	cmpw      $0, 624(%eax)
	jne       .L00002A56
.L000028E5:
	movl      128(%esp), %ebx
	movl      $.LC00000024.str1.4, 24(%ebx)
	movl      $29, (%eax)
	movl      $29, %eax
	jmp       .L00000735
.L00002903:
	movl      %edi, %ebx
	movl      12(%esp), %edx
	movl      %eax, %edi
	movl      128(%esp), %eax
	movl      %edx, 12(%eax)
	movl      16(%esp), %edx
	movl      %ebp, (%eax)
	movl      %ebx, 4(%eax)
	movl      %edx, 16(%eax)
	movl      8(%esp), %eax
	movl      %esi, 60(%edi)
	movl      %eax, 56(%edi)
	movl      $2, %eax
	jmp       .L00000D98
.L00002935:
	movl      8(%esp), %esi
	subl      $4, %esp
	movl      %esi, %eax
	movb      %al, 96(%esp)
	movl      %esi, %eax
	shrl      $8, %eax
	movb      %al, 97(%esp)
	pushl     $2
	leal      100(%esp), %eax
	pushl     %eax
	movl      16(%esp), %esi
	pushl     24(%esi)
	call      crc32
.L0000295E:
	addl      $16, %esp
	movl      %eax, 24(%esi)
	jmp       .L00002795
.L00002969:
	movl      %ebp, %ebx
	jmp       .L00001961
.L00002970:
	movl      %ecx, %esi
	movl      32(%esp), %edi
	jmp       .L000012FD
.L0000297B:
	subl      $4, %esp
	pushl     $0
	pushl     $0
	pushl     $0
	call      crc32
.L00002989:
	movl      20(%esp), %esi
	movb      $31, 108(%esp)
	movb      $139, 109(%esp)
	addl      $12, %esp
	movl      %eax, 24(%esi)
	pushl     $2
	leal      100(%esp), %edx
	pushl     %edx
	pushl     %eax
	call      crc32
.L000029AA:
	addl      $16, %esp
	movl      %eax, 24(%esi)
	movl      $1, (%esi)
	movl      $1, %eax
	xorl      %esi, %esi
	movl      $0, 8(%esp)
	jmp       .L00000735
.L000029CA:
	movl      %edi, %ebx
	xorl      %esi, %esi
	movl      4(%esp), %edi
	movl      $0, 8(%esp)
	jmp       .L000027B6
.L000029DF:
	shrl      $4, 8(%esp)
	movl      8(%esp), %eax
	andl      $15, %eax
	movl      %eax, %ecx
	movl      4(%esp), %eax
	addl      $8, %ecx
	movl      36(%eax), %eax
	testl     %eax, %eax
	jne       .L00002AC1
.L000029FF:
	movl      4(%esp), %eax
	movl      %ecx, 36(%eax)
.L00002A06:
	movl      4(%esp), %esi
	movl      $1, %eax
	sall      %cl, %eax
	movl      %eax, 20(%esi)
	pushl     %eax
	pushl     $0
	pushl     $0
	pushl     $0
	call      adler32
.L00002A20:
	movl      24(%esp), %ecx
	movl      144(%esp), %ebx
	addl      $16, %esp
	movl      %eax, 24(%esi)
	andl      $512, %ecx
	movl      %eax, 48(%ebx)
	movl      $0, 8(%esp)
	cmpl      $1, %ecx
	sbbl      %eax, %eax
	andl      $2, %eax
	addl      $9, %eax
	movl      %eax, (%esi)
	xorl      %esi, %esi
	jmp       .L0000072C
.L00002A56:
	movl      4(%esp), %edx
	movl      56(%esp), %ebx
	movl      %ebx, 108(%edx)
	movl      %ebx, 76(%edx)
	movl      %edx, %eax
	leal      108(%edx), %ebx
	addl      $84, %eax
	movl      $9, 84(%edx)
	pushl     %ecx
	pushl     %ecx
	pushl     60(%esp)
	pushl     %eax
	movl      %edx, %eax
	pushl     %ebx
	pushl     80(%esp)
	addl      $112, %eax
	movl      %edx, 28(%esp)
	pushl     %eax
	pushl     $1
	call      inflate_table
.L00002A90:
	movl      %eax, 60(%esp)
	addl      $32, %esp
	testl     %eax, %eax
	je        .L00002B40
.L00002A9F:
	movl      4(%esp), %eax
	movl      128(%esp), %ebx
	movl      $.LC000000D6.str1.1, 24(%ebx)
	movl      $29, (%eax)
	movl      $29, %eax
	jmp       .L00000735
.L00002AC1:
	cmpl      %eax, %ecx
	jbe       .L00002A06
.L00002AC9:
	movl      128(%esp), %eax
	subl      $4, %esi
	movl      $.LC00000032.str1.1, 24(%eax)
	movl      4(%esp), %eax
	movl      $29, (%eax)
	movl      $29, %eax
	jmp       .L00000735
.L00002AEE:
	movl      128(%esp), %eax
	movl      40(%esp), %ebp
	movl      %ebx, 8(%esp)
	movl      $.LC000000BC.str1.1, 24(%eax)
	movl      4(%esp), %eax
	movl      $29, (%eax)
	movl      $29, %eax
	jmp       .L00000735
.L00002B18:
	movl      %edi, %ebx
	xorl      %esi, %esi
	movl      4(%esp), %edi
	movl      $0, 8(%esp)
	jmp       .L00000DB0
.L00002B2D:
	movl      %edi, %ebx
	shrl      $3, 8(%esp)
	movl      %eax, %edi
	subl      $3, %esi
	movl      %edx, %ebp
	jmp       .L00000DB0
.L00002B40:
	movl      4(%esp), %edx
	movl      108(%edx), %eax
	movl      $6, 88(%edx)
	movl      %eax, 80(%edx)
	movl      %edx, %eax
	pushl     %ecx
	addl      $88, %eax
	pushl     %ecx
	pushl     60(%esp)
	pushl     %eax
	pushl     %ebx
	pushl     100(%edx)
	movl      96(%edx), %eax
	leal      112(%eax,%eax), %eax
	addl      %edx, %eax
	pushl     %eax
	pushl     $2
	call      inflate_table
.L00002B72:
	movl      %eax, 60(%esp)
	addl      $32, %esp
	testl     %eax, %eax
	je        .L000009FD
.L00002B81:
	movl      128(%esp), %eax
	movl      $.LC000000F2.str1.1, 24(%eax)
	movl      4(%esp), %eax
	movl      $29, (%eax)
	movl      $29, %eax
	jmp       .L00000735
.L00002BA3:
	movzwl    8(%esp), %ebp
	movl      4(%esp), %eax
	movl      $1, 64(%esp)
	movw      %bp, (%eax,%ecx,2)
	movl      36(%esp), %eax
	addl      $1, %eax
	movl      %eax, 36(%esp)
	leal      -1(%edx), %eax
	movl      %eax, %ebp
	movl      %eax, 76(%esp)
	leal      -3(%edx), %eax
	shrl      $1, %eax
	addl      $1, %eax
	movl      %eax, 32(%esp)
	addl      %eax, %eax
	movl      %eax, 72(%esp)
	movl      %ebp, %eax
	subl      $1, %eax
	je        .L0000282E
.L00002BE9:
	jmp       .L000027ED
	.size	inflate, .-inflate
# ----------------------
.L00002BEE:
	.p2align 4,,10
	.p2align 3
# ----------------------
	.globl	inflateEnd
	.type	inflateEnd, @function
inflateEnd:
	pushl     %ebx
	subl      $8, %esp
	movl      16(%esp), %ebx
	testl     %ebx, %ebx
	je        .L00002C40
.L00002BFC:
	movl      28(%ebx), %eax
	testl     %eax, %eax
	je        .L00002C40
.L00002C03:
	movl      36(%ebx), %edx
	testl     %edx, %edx
	je        .L00002C40
.L00002C0A:
	movl      52(%eax), %ecx
	testl     %ecx, %ecx
	je        .L00002C23
.L00002C11:
	subl      $8, %esp
	pushl     %ecx
	pushl     40(%ebx)
	call      *%edx
.L00002C1A:
	movl      36(%ebx), %edx
	movl      28(%ebx), %eax
	addl      $16, %esp
.L00002C23:
	subl      $8, %esp
	pushl     %eax
	pushl     40(%ebx)
	call      *%edx
.L00002C2C:
	movl      $0, 28(%ebx)
	addl      $16, %esp
	xorl      %eax, %eax
.L00002C38:
	addl      $8, %esp
	popl      %ebx
	ret       
.L00002C3D:
	.p2align 4,,10
	.p2align 3
.L00002C40:
	movl      $-2, %eax
	jmp       .L00002C38
	.size	inflateEnd, .-inflateEnd
# ----------------------
.L00002C47:
	.p2align 4
# ----------------------
	.globl	inflateGetDictionary
	.type	inflateGetDictionary, @function
inflateGetDictionary:
	pushl     %edi
	pushl     %esi
	pushl     %ebx
	movl      16(%esp), %eax
	movl      20(%esp), %esi
	movl      24(%esp), %edi
	testl     %eax, %eax
	je        .L00002CB8
.L00002C63:
	movl      28(%eax), %ebx
	testl     %ebx, %ebx
	je        .L00002CB8
.L00002C6A:
	testl     %esi, %esi
	movl      44(%ebx), %eax
	je        .L00002CA0
.L00002C71:
	testl     %eax, %eax
	je        .L00002CA0
.L00002C75:
	movl      48(%ebx), %edx
	subl      $4, %esp
	subl      %edx, %eax
	addl      52(%ebx), %edx
	pushl     %eax
	pushl     %edx
	pushl     %esi
	call      memcpy
.L00002C88:
	movl      48(%ebx), %eax
	addl      $12, %esp
	subl      %eax, %esi
	addl      44(%ebx), %esi
	pushl     %eax
	pushl     52(%ebx)
	pushl     %esi
	call      memcpy
.L00002C9D:
	addl      $16, %esp
.L00002CA0:
	testl     %edi, %edi
	je        .L00002CB0
.L00002CA4:
	movl      44(%ebx), %eax
	movl      %eax, (%edi)
	xorl      %eax, %eax
.L00002CAB:
	popl      %ebx
	popl      %esi
	popl      %edi
	ret       
.L00002CAF:
	.p2align 4,,10
	.p2align 3
.L00002CB0:
	xorl      %eax, %eax
	jmp       .L00002CAB
.L00002CB4:
	.p2align 4,,10
	.p2align 3
.L00002CB8:
	movl      $-2, %eax
	jmp       .L00002CAB
	.size	inflateGetDictionary, .-inflateGetDictionary
# ----------------------
.L00002CBF:
	.p2align 4,,10
	.p2align 3
# ----------------------
	.globl	inflateSetDictionary
	.type	inflateSetDictionary, @function
inflateSetDictionary:
	pushl     %ebp
	pushl     %edi
	pushl     %esi
	pushl     %ebx
	subl      $28, %esp
	movl      48(%esp), %ebx
	movl      56(%esp), %edi
	testl     %ebx, %ebx
	je        .L00002E30
.L00002CD7:
	movl      28(%ebx), %ebp
	testl     %ebp, %ebp
	je        .L00002E30
.L00002CE2:
	movl      8(%ebp), %eax
	testl     %eax, %eax
	jne       .L00002D90
.L00002CED:
	cmpl      $10, (%ebp)
	je        .L00002D9A
.L00002CF7:
	movl      %ebp, %esi
.L00002CF9:
	movl      52(%esp), %eax
	addl      %edi, %eax
	movl      %eax, 12(%esp)
	movl      52(%esi), %eax
	testl     %eax, %eax
	je        .L00002E40
.L00002D0E:
	movl      40(%esi), %ebx
	testl     %ebx, %ebx
	jne       .L00002D2D
.L00002D15:
	movl      36(%esi), %ecx
	movb      $1, %bl
	movl      $0, 48(%esi)
	movl      $0, 44(%esi)
	sall      %cl, %ebx
	movl      %ebx, 40(%esi)
.L00002D2D:
	cmpl      %ebx, %edi
	jae       .L00002DD0
.L00002D35:
	movl      48(%esi), %ecx
	subl      %ecx, %ebx
	cmpl      %edi, %ebx
	jbe       .L00002D40
.L00002D3E:
	movl      %edi, %ebx
.L00002D40:
	addl      %ecx, %eax
	movl      12(%esp), %ecx
	subl      $4, %esp
	pushl     %ebx
	subl      %edi, %ecx
	pushl     %ecx
	pushl     %eax
	call      memcpy
.L00002D53:
	addl      $16, %esp
	subl      %ebx, %edi
	jne       .L00002E08
.L00002D5E:
	movl      48(%esi), %eax
	movl      40(%esi), %ecx
	addl      %ebx, %eax
	cmpl      %ecx, %eax
	movl      %eax, 48(%esi)
	je        .L00002DF8
.L00002D71:
	movl      44(%esi), %eax
	cmpl      %eax, %ecx
	jbe       .L00002D7D
.L00002D78:
	addl      %eax, %ebx
	movl      %ebx, 44(%esi)
.L00002D7D:
	movl      $1, 12(%ebp)
	xorl      %eax, %eax
.L00002D86:
	addl      $28, %esp
	popl      %ebx
	popl      %esi
	popl      %edi
	popl      %ebp
	ret       
.L00002D8E:
	.p2align 4,,10
	.p2align 3
.L00002D90:
	cmpl      $10, (%ebp)
	jne       .L00002E30
.L00002D9A:
	subl      $4, %esp
	pushl     $0
	pushl     $0
	pushl     $0
	call      adler32
.L00002DA8:
	addl      $12, %esp
	pushl     %edi
	pushl     60(%esp)
	pushl     %eax
	call      adler32
.L00002DB6:
	addl      $16, %esp
	cmpl      %eax, 24(%ebp)
	jne       .L00002E78
.L00002DC2:
	movl      28(%ebx), %esi
	jmp       .L00002CF9
.L00002DCA:
	.p2align 4,,10
	.p2align 3
.L00002DD0:
	movl      12(%esp), %edx
	subl      $4, %esp
	pushl     %ebx
	subl      %ebx, %edx
	pushl     %edx
	pushl     %eax
	call      memcpy
.L00002DE1:
	movl      40(%esi), %eax
	movl      $0, 48(%esi)
	addl      $16, %esp
	movl      %eax, 44(%esi)
	jmp       .L00002D7D
.L00002DF3:
	.p2align 4,,10
	.p2align 3
.L00002DF8:
	movl      $0, 48(%esi)
	jmp       .L00002D71
.L00002E04:
	.p2align 4,,10
	.p2align 3
.L00002E08:
	movl      12(%esp), %eax
	subl      $4, %esp
	pushl     %edi
	subl      %edi, %eax
	pushl     %eax
	pushl     52(%esi)
	call      memcpy
.L00002E1B:
	movl      40(%esi), %eax
	movl      %edi, 48(%esi)
	addl      $16, %esp
	movl      %eax, 44(%esi)
	jmp       .L00002D7D
.L00002E2C:
	.p2align 4,,10
	.p2align 3
.L00002E30:
	movl      $-2, %eax
	jmp       .L00002D86
.L00002E3A:
	.p2align 4,,10
	.p2align 3
.L00002E40:
	subl      $4, %esp
	movb      $1, %al
	pushl     $1
	movl      36(%esi), %ecx
	sall      %cl, %eax
	pushl     %eax
	pushl     40(%ebx)
	call      *32(%ebx)
.L00002E53:
	addl      $16, %esp
	testl     %eax, %eax
	movl      %eax, 52(%esi)
	jne       .L00002D0E
.L00002E61:
	movl      $30, (%ebp)
	movl      $-4, %eax
	jmp       .L00002D86
.L00002E72:
	.p2align 4,,10
	.p2align 3
.L00002E78:
	movl      $-3, %eax
	jmp       .L00002D86
	.size	inflateSetDictionary, .-inflateSetDictionary
# ----------------------
.L00002E82:
	.p2align 4
# ----------------------
	.globl	inflateGetHeader
	.type	inflateGetHeader, @function
inflateGetHeader:
	movl      4(%esp), %eax
	movl      8(%esp), %edx
	testl     %eax, %eax
	je        .L00002EC0
.L00002E9C:
	movl      28(%eax), %eax
	testl     %eax, %eax
	je        .L00002EC0
.L00002EA3:
	testb     $2, 8(%eax)
	je        .L00002EC0
.L00002EA9:
	movl      %edx, 32(%eax)
	movl      $0, 48(%edx)
	xorl      %eax, %eax
	ret       
.L00002EB6:
	.p2align 4
.L00002EC0:
	movl      $-2, %eax
	ret       
	.size	inflateGetHeader, .-inflateGetHeader
# ----------------------
.L00002EC6:
	.p2align 4
# ----------------------
	.globl	inflateSync
	.type	inflateSync, @function
inflateSync:
	pushl     %ebp
	pushl     %edi
	pushl     %esi
	pushl     %ebx
	subl      $24, %esp
	movl      44(%esp), %ebp
	testl     %ebp, %ebp
	je        .L0000316C
.L00002EE3:
	movl      28(%ebp), %ebx
	testl     %ebx, %ebx
	je        .L0000316C
.L00002EEE:
	movl      4(%ebp), %eax
	testl     %eax, %eax
	movl      %eax, %edi
	je        .L00003110
.L00002EFB:
	cmpl      $31, (%ebx)
	je        .L00003138
.L00002F04:
	movl      60(%ebx), %eax
	movl      56(%ebx), %edx
	movl      $31, (%ebx)
	movl      %eax, %ecx
	andl      $-8, %eax
	andl      $7, %ecx
	movl      %eax, 60(%ebx)
	sall      %cl, %edx
	cmpl      $7, %eax
	movl      %edx, 56(%ebx)
	jbe       .L00003160
.L00002F29:
	leal      -8(%eax), %edi
	movl      %edx, %ecx
	movb      %dl, 20(%esp)
	shrl      $8, %ecx
	cmpl      $7, %edi
	jbe       .L00002F62
.L00002F3A:
	leal      -16(%eax), %esi
	movb      %cl, 21(%esp)
	movl      %edx, %ecx
	shrl      $16, %ecx
	cmpl      $7, %esi
	jbe       .L00002F62
.L00002F4B:
	subl      $24, %eax
	shrl      $24, %edx
	movb      %cl, 22(%esp)
	cmpl      $7, %eax
	movl      %edx, %ecx
	jbe       .L00002F62
.L00002F5C:
	movb      %dl, 23(%esp)
	xorl      %ecx, %ecx
.L00002F62:
	shrl      $3, %edi
	movl      %ecx, 56(%ebx)
	movl      $0, 60(%ebx)
	addl      $1, %edi
	xorl      %eax, %eax
	xorl      %edx, %edx
	movl      %ebx, %esi
	jmp       .L00002F9A
.L00002F7A:
	.p2align 4,,10
	.p2align 3
.L00002F80:
	movl      $4, %ebx
	subl      %eax, %ebx
	cmpl      $3, %ebx
	movl      %ebx, %eax
	setbe     %cl
.L00002F8F:
	addl      $1, %edx
	testb     %cl, %cl
	je        .L00002FC0
.L00002F96:
	cmpl      %edi, %edx
	jae       .L00002FC0
.L00002F9A:
	movzbl    20(%esp,%edx), %ebx
	cmpl      $2, %eax
	sbbl      %ecx, %ecx
	notl      %ecx
	cmpb      %cl, %bl
	je        .L000030F0
.L00002FAE:
	testb     %bl, %bl
	je        .L00002F80
.L00002FB2:
	movl      $1, %ecx
	xorl      %eax, %eax
	addl      $1, %edx
	testb     %cl, %cl
	jne       .L00002F96
.L00002FC0:
	movl      %esi, %ebx
.L00002FC2:
	movl      %eax, 104(%ebx)
	movl      4(%ebp), %esi
	movl      %esi, %edi
.L00002FCA:
	testl     %edi, %edi
	movl      (%ebp), %esi
	setne     %dl
	andb      %cl, %dl
	movb      %dl, 3(%esp)
	movl      $0, %edx
	je        .L00003034
.L00002FDF:
	movl      %ebx, 4(%esp)
	jmp       .L00003002
.L00002FE5:
	.p2align 4,,10
	.p2align 3
.L00002FE8:
	movl      $4, %ebx
	subl      %eax, %ebx
	cmpl      $3, %ebx
	movl      %ebx, %eax
	setbe     %cl
.L00002FF7:
	addl      $1, %edx
	testb     %cl, %cl
	je        .L00003030
.L00002FFE:
	cmpl      %edx, %edi
	jbe       .L00003030
.L00003002:
	movzbl    (%esi,%edx), %ebx
	cmpl      $2, %eax
	sbbl      %ecx, %ecx
	notl      %ecx
	cmpb      %cl, %bl
	je        .L00003100
.L00003015:
	testb     %bl, %bl
	je        .L00002FE8
.L00003019:
	movzbl    3(%esp), %ecx
	xorl      %eax, %eax
	addl      $1, %edx
	testb     %cl, %cl
	jne       .L00002FFE
.L00003027:
	.p2align 4
.L00003030:
	movl      4(%esp), %ebx
.L00003034:
	movl      %eax, 104(%ebx)
	addl      %edx, %esi
	subl      %edx, 4(%ebp)
	addl      8(%ebp), %edx
	cmpl      $4, %eax
	movl      %esi, (%ebp)
	movl      %edx, 8(%ebp)
	jne       .L00003150
.L0000304E:
	movl      8(%ebx), %eax
	movl      20(%ebp), %ecx
	movl      $0, 40(%ebx)
	movl      $0, 44(%ebx)
	movl      $0, 48(%ebx)
	movl      $0, 28(%ebx)
	testl     %eax, %eax
	movl      $0, 20(%ebp)
	movl      $0, 8(%ebp)
	movl      $0, 24(%ebp)
	jne       .L00003128
.L0000308D:
	leal      1328(%ebx), %eax
	movl      $0, 4(%ebx)
	movl      $0, 12(%ebx)
	movl      $32768, 20(%ebx)
	movl      $0, 32(%ebx)
	movl      %eax, 108(%ebx)
	movl      %eax, 80(%ebx)
	movl      %eax, 76(%ebx)
	movl      $0, 56(%ebx)
	xorl      %eax, %eax
	movl      $0, 60(%ebx)
	movl      $1, 7104(%ebx)
	movl      $-1, 7108(%ebx)
	movl      %edx, 8(%ebp)
	movl      %ecx, 20(%ebp)
	movl      $11, (%ebx)
.L000030E8:
	addl      $24, %esp
	popl      %ebx
	popl      %esi
	popl      %edi
	popl      %ebp
	ret       
.L000030F0:
	addl      $1, %eax
	cmpl      $3, %eax
	setbe     %cl
	jmp       .L00002F8F
.L000030FE:
	.p2align 4,,10
	.p2align 3
.L00003100:
	addl      $1, %eax
	cmpl      $3, %eax
	setbe     %cl
	jmp       .L00002FF7
.L0000310E:
	.p2align 4,,10
	.p2align 3
.L00003110:
	cmpl      $7, 60(%ebx)
	ja        .L00002EFB
.L0000311A:
	movl      $-5, %eax
	jmp       .L000030E8
.L00003121:
	.p2align 4,,10
	.p2align 3
.L00003128:
	andl      $1, %eax
	movl      %eax, 48(%ebp)
	jmp       .L0000308D
.L00003133:
	.p2align 4,,10
	.p2align 3
.L00003138:
	movl      104(%ebx), %eax
	cmpl      $3, %eax
	setbe     %cl
	jmp       .L00002FCA
.L00003146:
	.p2align 4
.L00003150:
	addl      $24, %esp
	movl      $-3, %eax
	popl      %ebx
	popl      %esi
	popl      %edi
	popl      %ebp
	ret       
.L0000315D:
	.p2align 4,,10
	.p2align 3
.L00003160:
	movl      $1, %ecx
	xorl      %eax, %eax
	jmp       .L00002FC2
.L0000316C:
	movl      $-2, %eax
	jmp       .L000030E8
	.size	inflateSync, .-inflateSync
# ----------------------
.L00003176:
	.p2align 4
# ----------------------
	.globl	inflateSyncPoint
	.type	inflateSyncPoint, @function
inflateSyncPoint:
	movl      4(%esp), %eax
	testl     %eax, %eax
	je        .L000031B0
.L00003188:
	movl      28(%eax), %edx
	testl     %edx, %edx
	je        .L000031B0
.L0000318F:
	xorl      %eax, %eax
	cmpl      $13, (%edx)
	je        .L000031A0
.L00003196:
	rep; ret       
.L00003198:
	.p2align 4
.L000031A0:
	movl      60(%edx), %edx
	xorl      %eax, %eax
	testl     %edx, %edx
	sete      %al
	ret       
.L000031AB:
	.p2align 4,,10
	.p2align 3
.L000031B0:
	movl      $-2, %eax
	ret       
	.size	inflateSyncPoint, .-inflateSyncPoint
# ----------------------
.L000031B6:
	.p2align 4
# ----------------------
	.globl	inflateCopy
	.type	inflateCopy, @function
inflateCopy:
	pushl     %ebp
	pushl     %edi
	pushl     %esi
	pushl     %ebx
	subl      $28, %esp
	movl      48(%esp), %ebx
	movl      52(%esp), %esi
	testl     %ebx, %ebx
	je        .L00003370
.L000031D7:
	testl     %esi, %esi
	je        .L00003370
.L000031DF:
	movl      28(%esi), %ebp
	testl     %ebp, %ebp
	je        .L00003370
.L000031EA:
	movl      32(%esi), %eax
	testl     %eax, %eax
	je        .L00003370
.L000031F5:
	movl      36(%esi), %edx
	testl     %edx, %edx
	je        .L00003370
.L00003200:
	subl      $4, %esp
	pushl     $7116
	pushl     $1
	pushl     40(%esi)
	call      *%eax
.L0000320F:
	addl      $16, %esp
	testl     %eax, %eax
	movl      %eax, %edx
	je        .L00003377
.L0000321C:
	movl      52(%ebp), %eax
	testl     %eax, %eax
	je        .L00003360
.L00003227:
	movl      %edx, 12(%esp)
	subl      $4, %esp
	movl      $1, %eax
	pushl     $1
	movl      36(%ebp), %ecx
	sall      %cl, %eax
	pushl     %eax
	pushl     40(%esi)
	call      *32(%esi)
.L00003241:
	movl      %eax, 24(%esp)
	addl      $16, %esp
	testl     %eax, %eax
	movl      12(%esp), %edx
	je        .L0000337E
.L00003254:
	movl      (%esi), %eax
	leal      4(%edx), %edi
	movl      %edx, %ecx
	andl      $-4, %edi
	movl      %eax, (%ebx)
	movl      4(%esi), %eax
	subl      %edi, %ecx
	movl      %eax, 4(%ebx)
	movl      8(%esi), %eax
	movl      %eax, 8(%ebx)
	movl      12(%esi), %eax
	movl      %eax, 12(%ebx)
	movl      16(%esi), %eax
	movl      %eax, 16(%ebx)
	movl      20(%esi), %eax
	movl      %eax, 20(%ebx)
	movl      24(%esi), %eax
	movl      %eax, 24(%ebx)
	movl      28(%esi), %eax
	movl      %eax, 28(%ebx)
	movl      32(%esi), %eax
	movl      %eax, 32(%ebx)
	movl      36(%esi), %eax
	movl      %eax, 36(%ebx)
	movl      40(%esi), %eax
	movl      %eax, 40(%ebx)
	movl      44(%esi), %eax
	movl      %eax, 44(%ebx)
	movl      48(%esi), %eax
	movl      %eax, 48(%ebx)
	movl      52(%esi), %eax
	movl      %ebp, %esi
	subl      %ecx, %esi
	addl      $7116, %ecx
	shrl      $2, %ecx
	movl      %eax, 52(%ebx)
	movl      (%ebp), %eax
	movl      %eax, (%edx)
	movl      7112(%ebp), %eax
	movl      %eax, 7112(%edx)
	rep movsl     
	movl      76(%ebp), %eax
	leal      1328(%ebp), %ecx
	cmpl      %ecx, %eax
	jae       .L00003330
.L000032DD:
	movl      108(%ebp), %eax
	movl      8(%esp), %edi
	subl      %ecx, %eax
	andl      $-4, %eax
	testl     %edi, %edi
	leal      1328(%eax,%edx), %eax
	movl      %eax, 108(%edx)
	je        .L00003319
.L000032F7:
	movl      36(%ebp), %ecx
	movl      $1, %eax
	movl      %edx, 12(%esp)
	subl      $4, %esp
	sall      %cl, %eax
	pushl     %eax
	pushl     52(%ebp)
	pushl     %edi
	call      memcpy
.L00003312:
	addl      $16, %esp
	movl      12(%esp), %edx
.L00003319:
	movl      8(%esp), %eax
	movl      %eax, 52(%edx)
	movl      %edx, 28(%ebx)
	xorl      %eax, %eax
.L00003325:
	addl      $28, %esp
	popl      %ebx
	popl      %esi
	popl      %edi
	popl      %ebp
	ret       
.L0000332D:
	.p2align 4,,10
	.p2align 3
.L00003330:
	leal      7100(%ebp), %esi
	cmpl      %esi, %eax
	ja        .L000032DD
.L0000333A:
	subl      %ecx, %eax
	andl      $-4, %eax
	leal      1328(%eax,%edx), %eax
	movl      %eax, 76(%edx)
	movl      80(%ebp), %eax
	subl      %ecx, %eax
	andl      $-4, %eax
	leal      1328(%eax,%edx), %eax
	movl      %eax, 80(%edx)
	jmp       .L000032DD
.L00003360:
	movl      $0, 8(%esp)
	jmp       .L00003254
.L0000336D:
	.p2align 4,,10
	.p2align 3
.L00003370:
	movl      $-2, %eax
	jmp       .L00003325
.L00003377:
	movl      $-4, %eax
	jmp       .L00003325
.L0000337E:
	subl      $8, %esp
	pushl     %edx
	pushl     40(%esi)
	call      *36(%esi)
.L00003388:
	addl      $16, %esp
	movl      $-4, %eax
	jmp       .L00003325
	.size	inflateCopy, .-inflateCopy
# ----------------------
.L00003392:
	.p2align 4
# ----------------------
	.globl	inflateUndermine
	.type	inflateUndermine, @function
inflateUndermine:
	movl      4(%esp), %eax
	testl     %eax, %eax
	je        .L000033C0
.L000033A8:
	movl      28(%eax), %eax
	testl     %eax, %eax
	je        .L000033C0
.L000033AF:
	movl      $1, 7104(%eax)
	movl      $-3, %eax
	ret       
.L000033BF:
	.p2align 4,,10
	.p2align 3
.L000033C0:
	movl      $-2, %eax
	ret       
	.size	inflateUndermine, .-inflateUndermine
# ----------------------
.L000033C6:
	.p2align 4
# ----------------------
	.globl	inflateMark
	.type	inflateMark, @function
inflateMark:
	pushl     %ebx
	movl      8(%esp), %eax
	testl     %eax, %eax
	je        .L00003420
.L000033D9:
	movl      28(%eax), %ecx
	testl     %ecx, %ecx
	je        .L00003420
.L000033E0:
	movl      7108(%ecx), %edx
	movl      (%ecx), %ebx
	sall      $16, %edx
	cmpl      $15, %ebx
	je        .L00003400
.L000033F0:
	xorl      %eax, %eax
	cmpl      $24, %ebx
	je        .L00003410
.L000033F7:
	addl      %edx, %eax
.L000033F9:
	popl      %ebx
	ret       
.L000033FB:
	.p2align 4,,10
	.p2align 3
.L00003400:
	movl      64(%ecx), %eax
	addl      %edx, %eax
	jmp       .L000033F9
.L00003407:
	.p2align 4
.L00003410:
	movl      7112(%ecx), %eax
	subl      64(%ecx), %eax
	addl      %edx, %eax
	jmp       .L000033F9
.L0000341D:
	.p2align 4,,10
	.p2align 3
.L00003420:
	movl      $-65536, %eax
	popl      %ebx
	ret       
	.size	inflateMark, .-inflateMark
# ----------------------
	.hidden	zcfree
	.hidden	zcalloc
	.hidden	inflate_table
	.hidden	inflate_fast
	.ident	"GCC: (Debian 4.9.2-10) 4.9.2"
	.section	.note.GNU-stack,"",@progbits
