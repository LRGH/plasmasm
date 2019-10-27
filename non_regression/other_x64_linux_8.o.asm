	.file	"infback.c"
	.section       .rodata.str1.8,"aMS",@progbits,1
.LC00000000.str1.8:
	.string	"too many length or distance symbols"
# ----------------------
.LC00000024.str1.8:
	.long	0
	.align 8
.LC00000028.str1.8:
	.string	"invalid code -- missing end-of-block"
# ----------------------
	.section       .rodata.str1.1,"aMS",@progbits,1
.LC00000000.str1.1:
	.string	"invalid block type"
.LC00000013.str1.1:
	.string	"invalid stored block lengths"
.LC00000030.str1.1:
	.string	"invalid code lengths set"
.LC00000049.str1.1:
	.string	"invalid bit length repeat"
.LC00000063.str1.1:
	.string	"invalid literal/lengths set"
.LC0000007F.str1.1:
	.string	"invalid distances set"
.LC00000095.str1.1:
	.string	"invalid literal/length code"
.LC000000B1.str1.1:
	.string	"invalid distance code"
.LC000000C7.str1.1:
	.string	"invalid distance too far back"
# ----------------------
	.section       .rodata
	.align 32
.LC00000000:
	.quad	.L000004A0
	.quad	.L00000390
	.quad	.L000003A0
	.quad	.L00000390
	.quad	.L00000390
	.quad	.L000002D0
	.quad	.L00000390
	.quad	.L00000390
	.quad	.L00000390
	.quad	.L00000200
	.quad	.L00000390
	.quad	.L00000390
	.quad	.L00000390
	.quad	.L00000390
	.quad	.L00000390
	.quad	.L00000390
	.quad	.L00000390
	.quad	.L000001D8
	.quad	.L000001B0
	.zero	8
# ----------------------
	.local	distfix.4054
	.type	distfix.4054, @object
distfix.4054:
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
	.size	distfix.4054, 128
# ----------------------
	.local	lenfix.4053
	.type	lenfix.4053, @object
lenfix.4053:
	.long	1888
	.long	5244928
	.long	1050624
	.long	7538708
	.long	2033426
	.long	7342080
	.long	3147776
	.long	12585216
	.long	657168
	.long	6293504
	.long	2099200
	.long	10488064
	.long	2048
	.long	8390656
	.long	4196352
	.long	14682368
	.long	395024
	.long	5769216
	.long	1574912
	.long	9439488
	.long	3868435
	.long	7866368
	.long	3672064
	.long	13633792
	.long	1115921
	.long	6817792
	.long	2623488
	.long	11536640
	.long	526336
	.long	8914944
	.long	4720640
	.long	15730944
	.long	263952
	.long	5507072
	.long	1312768
	.long	14878741
	.long	2819859
	.long	7604224
	.long	3409920
	.long	13109504
	.long	853777
	.long	6555648
	.long	2361344
	.long	11012352
	.long	264192
	.long	8652800
	.long	4458496
	.long	15206656
	.long	526096
	.long	6031360
	.long	1837056
	.long	9963776
	.long	5441300
	.long	8128512
	.long	3934208
	.long	14158080
	.long	1509138
	.long	7079936
	.long	2885632
	.long	12060928
	.long	788480
	.long	9177088
	.long	4982784
	.long	16255232
	.long	198416
	.long	5376000
	.long	1181696
	.long	10684437
	.long	2295571
	.long	7473152
	.long	3278848
	.long	12847360
	.long	722705
	.long	6424576
	.long	2230272
	.long	10750208
	.long	133120
	.long	8521728
	.long	4327424
	.long	14944512
	.long	460560
	.long	5900288
	.long	1705984
	.long	9701632
	.long	4392724
	.long	7997440
	.long	3803136
	.long	13895936
	.long	1246994
	.long	6948864
	.long	2754560
	.long	11798784
	.long	657408
	.long	9046016
	.long	4851712
	.long	15993088
	.long	329488
	.long	5638144
	.long	1443840
	.long	2112
	.long	3344147
	.long	7735296
	.long	3540992
	.long	13371648
	.long	984849
	.long	6686720
	.long	2492416
	.long	11274496
	.long	395264
	.long	8783872
	.long	4589568
	.long	15468800
	.long	591632
	.long	6162432
	.long	1968128
	.long	10225920
	.long	6489876
	.long	8259584
	.long	4065280
	.long	14420224
	.long	1771282
	.long	7211008
	.long	3016704
	.long	12323072
	.long	919552
	.long	9308160
	.long	5113856
	.long	16517376
	.long	1888
	.long	5310464
	.long	1116160
	.long	8587285
	.long	2033426
	.long	7407616
	.long	3213312
	.long	12716288
	.long	657168
	.long	6359040
	.long	2164736
	.long	10619136
	.long	67584
	.long	8456192
	.long	4261888
	.long	14813440
	.long	395024
	.long	5834752
	.long	1640448
	.long	9570560
	.long	3868435
	.long	7931904
	.long	3737600
	.long	13764864
	.long	1115921
	.long	6883328
	.long	2689024
	.long	11667712
	.long	591872
	.long	8980480
	.long	4786176
	.long	15862016
	.long	263952
	.long	5572608
	.long	1378304
	.long	16910352
	.long	2819859
	.long	7669760
	.long	3475456
	.long	13240576
	.long	853777
	.long	6621184
	.long	2426880
	.long	11143424
	.long	329728
	.long	8718336
	.long	4524032
	.long	15337728
	.long	526096
	.long	6096896
	.long	1902592
	.long	10094848
	.long	5441300
	.long	8194048
	.long	3999744
	.long	14289152
	.long	1509138
	.long	7145472
	.long	2951168
	.long	12192000
	.long	854016
	.long	9242624
	.long	5048320
	.long	16386304
	.long	198416
	.long	5441536
	.long	1247232
	.long	12781589
	.long	2295571
	.long	7538688
	.long	3344384
	.long	12978432
	.long	722705
	.long	6490112
	.long	2295808
	.long	10881280
	.long	198656
	.long	8587264
	.long	4392960
	.long	15075584
	.long	460560
	.long	5965824
	.long	1771520
	.long	9832704
	.long	4392724
	.long	8062976
	.long	3868672
	.long	14027008
	.long	1246994
	.long	7014400
	.long	2820096
	.long	11929856
	.long	722944
	.long	9111552
	.long	4917248
	.long	16124160
	.long	329488
	.long	5703680
	.long	1509376
	.long	2112
	.long	3344147
	.long	7800832
	.long	3606528
	.long	13502720
	.long	984849
	.long	6752256
	.long	2557952
	.long	11405568
	.long	460800
	.long	8849408
	.long	4655104
	.long	15599872
	.long	591632
	.long	6227968
	.long	2033664
	.long	10356992
	.long	6489876
	.long	8325120
	.long	4130816
	.long	14551296
	.long	1771282
	.long	7276544
	.long	3082240
	.long	12454144
	.long	985088
	.long	9373696
	.long	5179392
	.long	16648448
	.long	1888
	.long	5244928
	.long	1050624
	.long	7538708
	.long	2033426
	.long	7342080
	.long	3147776
	.long	12650752
	.long	657168
	.long	6293504
	.long	2099200
	.long	10553600
	.long	2048
	.long	8390656
	.long	4196352
	.long	14747904
	.long	395024
	.long	5769216
	.long	1574912
	.long	9505024
	.long	3868435
	.long	7866368
	.long	3672064
	.long	13699328
	.long	1115921
	.long	6817792
	.long	2623488
	.long	11602176
	.long	526336
	.long	8914944
	.long	4720640
	.long	15796480
	.long	263952
	.long	5507072
	.long	1312768
	.long	14878741
	.long	2819859
	.long	7604224
	.long	3409920
	.long	13175040
	.long	853777
	.long	6555648
	.long	2361344
	.long	11077888
	.long	264192
	.long	8652800
	.long	4458496
	.long	15272192
	.long	526096
	.long	6031360
	.long	1837056
	.long	10029312
	.long	5441300
	.long	8128512
	.long	3934208
	.long	14223616
	.long	1509138
	.long	7079936
	.long	2885632
	.long	12126464
	.long	788480
	.long	9177088
	.long	4982784
	.long	16320768
	.long	198416
	.long	5376000
	.long	1181696
	.long	10684437
	.long	2295571
	.long	7473152
	.long	3278848
	.long	12912896
	.long	722705
	.long	6424576
	.long	2230272
	.long	10815744
	.long	133120
	.long	8521728
	.long	4327424
	.long	15010048
	.long	460560
	.long	5900288
	.long	1705984
	.long	9767168
	.long	4392724
	.long	7997440
	.long	3803136
	.long	13961472
	.long	1246994
	.long	6948864
	.long	2754560
	.long	11864320
	.long	657408
	.long	9046016
	.long	4851712
	.long	16058624
	.long	329488
	.long	5638144
	.long	1443840
	.long	2112
	.long	3344147
	.long	7735296
	.long	3540992
	.long	13437184
	.long	984849
	.long	6686720
	.long	2492416
	.long	11340032
	.long	395264
	.long	8783872
	.long	4589568
	.long	15534336
	.long	591632
	.long	6162432
	.long	1968128
	.long	10291456
	.long	6489876
	.long	8259584
	.long	4065280
	.long	14485760
	.long	1771282
	.long	7211008
	.long	3016704
	.long	12388608
	.long	919552
	.long	9308160
	.long	5113856
	.long	16582912
	.long	1888
	.long	5310464
	.long	1116160
	.long	8587285
	.long	2033426
	.long	7407616
	.long	3213312
	.long	12781824
	.long	657168
	.long	6359040
	.long	2164736
	.long	10684672
	.long	67584
	.long	8456192
	.long	4261888
	.long	14878976
	.long	395024
	.long	5834752
	.long	1640448
	.long	9636096
	.long	3868435
	.long	7931904
	.long	3737600
	.long	13830400
	.long	1115921
	.long	6883328
	.long	2689024
	.long	11733248
	.long	591872
	.long	8980480
	.long	4786176
	.long	15927552
	.long	263952
	.long	5572608
	.long	1378304
	.long	16910352
	.long	2819859
	.long	7669760
	.long	3475456
	.long	13306112
	.long	853777
	.long	6621184
	.long	2426880
	.long	11208960
	.long	329728
	.long	8718336
	.long	4524032
	.long	15403264
	.long	526096
	.long	6096896
	.long	1902592
	.long	10160384
	.long	5441300
	.long	8194048
	.long	3999744
	.long	14354688
	.long	1509138
	.long	7145472
	.long	2951168
	.long	12257536
	.long	854016
	.long	9242624
	.long	5048320
	.long	16451840
	.long	198416
	.long	5441536
	.long	1247232
	.long	12781589
	.long	2295571
	.long	7538688
	.long	3344384
	.long	13043968
	.long	722705
	.long	6490112
	.long	2295808
	.long	10946816
	.long	198656
	.long	8587264
	.long	4392960
	.long	15141120
	.long	460560
	.long	5965824
	.long	1771520
	.long	9898240
	.long	4392724
	.long	8062976
	.long	3868672
	.long	14092544
	.long	1246994
	.long	7014400
	.long	2820096
	.long	11995392
	.long	722944
	.long	9111552
	.long	4917248
	.long	16189696
	.long	329488
	.long	5703680
	.long	1509376
	.long	2112
	.long	3344147
	.long	7800832
	.long	3606528
	.long	13568256
	.long	984849
	.long	6752256
	.long	2557952
	.long	11471104
	.long	460800
	.long	8849408
	.long	4655104
	.long	15665408
	.long	591632
	.long	6227968
	.long	2033664
	.long	10422528
	.long	6489876
	.long	8325120
	.long	4130816
	.long	14616832
	.long	1771282
	.long	7276544
	.long	3082240
	.long	12519680
	.long	985088
	.long	9373696
	.long	5179392
	.long	16713984
	.size	lenfix.4053, 2048
# ----------------------
	.local	order.4075
	.type	order.4075, @object
order.4075:
	.ascii	"\020\000\021\000\022\000\000\000\010\000\007\000\t\000\006\000\n\000\005\000\013\000\004\000\014\000\003\000\r\000\002\000\016\000\001\000\017\000"
	.size	order.4075, 38
# ----------------------
	.text
	.globl	inflateBackInit_
	.type	inflateBackInit_, @function
inflateBackInit_:
	testq     %rcx, %rcx
	movl      $-6, %eax
	je        .L000000E7
.L0000000E:
	cmpb      $49, (%rcx)
	jne       .L000000AA
.L00000017:
	cmpl      $112, %r8d
	jne       .L000000AA
.L00000021:
	pushq     %r12
	testq     %rdi, %rdi
	pushq     %rbp
	pushq     %rbx
	movq      %rdi, %rbx
	je        .L000000E0
.L00000031:
	testq     %rdx, %rdx
	movq      %rdx, %r12
	je        .L000000E0
.L0000003D:
	leal      -8(%rsi), %eax
	movl      %esi, %ebp
	cmpl      $7, %eax
	ja        .L000000E0
.L0000004B:
	movq      64(%rdi), %rax
	movq      $0, 48(%rdi)
	testq     %rax, %rax
	je        .L000000B0
.L0000005C:
	cmpq      $0, 72(%rbx)
	movq      80(%rdi), %rdi
	je        .L000000D0
.L00000067:
	movl      $7152, %edx
	movl      $1, %esi
	call      *%rax
.L00000073:
	testq     %rax, %rax
	je        .L000000E9
.L00000078:
	movl      $1, %esi
	movl      %ebp, %ecx
	movq      %rax, 56(%rbx)
	sall      %cl, %esi
	movl      $32768, 20(%rax)
	movl      %ebp, 48(%rax)
	movl      %esi, 52(%rax)
	movq      %r12, 64(%rax)
	movl      $0, 60(%rax)
	movl      $0, 56(%rax)
	xorl      %eax, %eax
.L000000A6:
	popq      %rbx
	popq      %rbp
	popq      %r12
.L000000AA:
	rep; ret       
.L000000AC:
	.p2align 3
.L000000B0:
	movq      $zcalloc, 64(%rdi)
	movq      $0, 80(%rdi)
	xorl      %edi, %edi
	cmpq      $0, 72(%rbx)
	movl      $zcalloc, %eax
	jne       .L00000067
.L000000CE:
	.p2align 3
.L000000D0:
	movq      $zcfree, 72(%rbx)
	jmp       .L00000067
.L000000DA:
	.p2align 3
.L000000E0:
	movl      $-2, %eax
	jmp       .L000000A6
.L000000E7:
	rep; ret       
.L000000E9:
	movl      $-4, %eax
	jmp       .L000000A6
	.size	inflateBackInit_, .-inflateBackInit_
# ----------------------
	.globl	inflateBack
	.type	inflateBack, @function
inflateBack:
	pushq     %r15
	movq      %rdi, %r15
	pushq     %r14
	pushq     %r13
	pushq     %r12
	pushq     %rbp
	pushq     %rbx
	subq      $136, %rsp
	testq     %rdi, %rdi
	movq      %rsi, (%rsp)
	movq      %rdx, 8(%rsp)
	movq      %rcx, 24(%rsp)
	movq      %r8, 32(%rsp)
	je        .L00000B88
.L00000120:
	movq      56(%rdi), %r14
	testq     %r14, %r14
	je        .L00000B88
.L0000012D:
	movq      (%rdi), %rax
	movq      $0, 48(%rdi)
	movl      $11, (%r14)
	movl      $0, 4(%r14)
	movl      $0, 56(%r14)
	testq     %rax, %rax
	movq      %rax, 112(%rsp)
	je        .L00000870
.L0000015D:
	movl      8(%rdi), %ebx
.L00000160:
	leaq      1360(%r14), %rsi
	movq      64(%r14), %rax
	movl      52(%r14), %r10d
	leaq      784(%r14), %rdi
	xorl      %ebp, %ebp
	xorl      %r12d, %r12d
	movq      %rsi, 48(%rsp)
	leaq      112(%r14), %rsi
	movq      %rax, 16(%rsp)
	movq      %rdi, 40(%rsp)
	movl      $11, %eax
	movq      %rsi, 56(%rsp)
	movl      %r10d, %r13d
.L0000019B:
	subl      $11, %eax
	cmpl      $18, %eax
	ja        .L00000390
.L000001A7:
	jmp       *.LC00000000(,%rax,8)
.L000001AE:
	.p2align 3
.L000001B0:
	movq      112(%rsp), %rdx
	movl      $-3, %eax
.L000001BA:
	movq      %rdx, (%r15)
	movl      %ebx, 8(%r15)
.L000001C1:
	addq      $136, %rsp
	popq      %rbx
	popq      %rbp
	popq      %r12
	popq      %r13
	popq      %r14
	popq      %r15
	ret       
.L000001D3:
	.p2align 3
.L000001D8:
	movl      52(%r14), %edx
	cmpl      %r13d, %edx
	ja        .L00000660
.L000001E5:
	movq      112(%rsp), %rdx
	movl      $1, %eax
	jmp       .L000001BA
.L000001F1:
	movl      $20, (%r14)
	.p2align 4
.L00000200:
	cmpl      $5, %ebx
	jbe       .L00000212
.L00000205:
	cmpl      $257, %r13d
	ja        .L00000880
.L00000212:
	movl      112(%r14), %r9d
	movl      $1, %eax
	movq      96(%r14), %rsi
	movl      %r12d, %edi
	movl      %r9d, %ecx
	sall      %cl, %eax
	subl      $1, %eax
	andl      %r12d, %eax
	leaq      (%rsi,%rax,4), %rdx
	movzbl    1(%rdx), %eax
	movzbl    (%rdx), %r10d
	movzwl    2(%rdx), %r8d
	movzbl    %al, %edx
	cmpl      %edx, %ebp
	jae       .L000008F1
.L00000249:
	movl      %ebx, %eax
	movl      %r13d, 64(%rsp)
	movq      (%rsp), %rbx
	movq      8(%rsp), %r13
	jmp       .L000002AE
.L0000025B:
	.p2align 3
.L00000260:
	movq      112(%rsp), %rdx
	subl      $1, %eax
	leaq      1(%rdx), %rcx
	movq      %rcx, 112(%rsp)
	movzbl    (%rdx), %edx
	movl      %ebp, %ecx
	addl      $8, %ebp
	salq      %cl, %rdx
	movl      %r9d, %ecx
	addq      %rdx, %r12
	movl      $1, %edx
	sall      %cl, %edx
	movl      %r12d, %edi
	subl      $1, %edx
	andl      %r12d, %edx
	leaq      (%rsi,%rdx,4), %rdx
	movzbl    1(%rdx), %ecx
	movzbl    (%rdx), %r10d
	movzwl    2(%rdx), %r8d
	movzbl    %cl, %edx
	cmpl      %ebp, %edx
	jbe       .L000008E8
.L000002AE:
	testl     %eax, %eax
	jne       .L00000260
.L000002B2:
	leaq      112(%rsp), %rsi
	movq      %r13, %rdi
	call      *%rbx
.L000002BC:
	testl     %eax, %eax
	je        .L000006B8
.L000002C4:
	movq      96(%r14), %rsi
	movl      112(%r14), %r9d
	jmp       .L00000260
.L000002CE:
	.p2align 3
.L000002D0:
	cmpl      $13, %ebp
	ja        .L0000032A
.L000002D5:
	testl     %ebx, %ebx
	je        .L00000720
.L000002DD:
	movq      112(%rsp), %rax
	movl      %ebp, %ecx
	subl      $1, %ebx
	leaq      1(%rax), %rdx
	movq      %rdx, 112(%rsp)
	movzbl    (%rax), %eax
	salq      %cl, %rax
	leal      8(%rbp), %ecx
	addq      %rax, %r12
	cmpl      $13, %ecx
	ja        .L00000C38
.L00000305:
	testl     %ebx, %ebx
	je        .L00000690
.L0000030D:
	movq      112(%rsp), %rax
	subl      $1, %ebx
	addl      $16, %ebp
	leaq      1(%rax), %rdx
	movq      %rdx, 112(%rsp)
	movzbl    (%rax), %eax
	salq      %cl, %rax
	addq      %rax, %r12
.L0000032A:
	movl      %r12d, %eax
	movq      %r12, %rcx
	movq      %r12, %rdx
	andl      $31, %eax
	shrq      $5, %rcx
	shrq      $10, %rdx
	addl      $257, %eax
	andl      $31, %ecx
	andl      $15, %edx
	addl      $1, %ecx
	addl      $4, %edx
	shrq      $14, %r12
	subl      $14, %ebp
	cmpl      $286, %eax
	movl      %eax, 124(%r14)
	movl      %ecx, 128(%r14)
	movl      %edx, 120(%r14)
	jbe       .L00000540
.L00000370:
	movl      $29, %eax
	movq      $.LC00000000.str1.8, 48(%r15)
	movl      $29, (%r14)
	subl      $11, %eax
	cmpl      $18, %eax
	jbe       .L000001A7
.L00000390:
	movq      112(%rsp), %rdx
	movl      $-2, %eax
	jmp       .L000001BA
.L0000039F:
	.p2align 3
.L000003A0:
	movl      %ebp, %ecx
	andl      $-8, %ebp
	andl      $7, %ecx
	shrq      %cl, %r12
	cmpl      $31, %ebp
	ja        .L00000465
.L000003B4:
	testl     %ebx, %ebx
	je        .L00000740
.L000003BC:
	movq      112(%rsp), %rax
	movl      %ebp, %ecx
	subl      $1, %ebx
	leaq      1(%rax), %rdx
	movq      %rdx, 112(%rsp)
	movzbl    (%rax), %eax
	salq      %cl, %rax
	leal      8(%rbp), %ecx
	addq      %rax, %r12
	cmpl      $31, %ecx
	ja        .L00000AB0
.L000003E4:
	testl     %ebx, %ebx
	je        .L000006F8
.L000003EC:
	movq      112(%rsp), %rax
	subl      $1, %ebx
	leaq      1(%rax), %rdx
	movq      %rdx, 112(%rsp)
	movzbl    (%rax), %eax
	salq      %cl, %rax
	leal      16(%rbp), %ecx
	addq      %rax, %r12
	cmpl      $31, %ecx
	ja        .L00000AB0
.L00000412:
	testl     %ebx, %ebx
	je        .L000006D0
.L0000041A:
	movq      112(%rsp), %rax
	subl      $1, %ebx
	leaq      1(%rax), %rdx
	movq      %rdx, 112(%rsp)
	movzbl    (%rax), %eax
	salq      %cl, %rax
	leal      24(%rbp), %ecx
	addq      %rax, %r12
	cmpl      $31, %ecx
	ja        .L00000AB0
.L00000440:
	testl     %ebx, %ebx
	je        .L00000760
.L00000448:
	movq      112(%rsp), %rax
	subl      $1, %ebx
	addl      $32, %ebp
	leaq      1(%rax), %rdx
	movq      %rdx, 112(%rsp)
	movzbl    (%rax), %eax
	salq      %cl, %rax
	addq      %rax, %r12
.L00000465:
	movq      %r12, %rax
	movzwl    %r12w, %edx
	shrq      $16, %rax
	xorq      $65535, %rax
	cmpq      %rax, %rdx
	je        .L00000790
.L0000047F:
	movq      $.LC00000013.str1.1, 48(%r15)
	movl      $29, %eax
	movl      $29, (%r14)
	jmp       .L0000019B
.L00000498:
	.p2align 4
.L000004A0:
	movl      4(%r14), %esi
	testl     %esi, %esi
	jne       .L00000520
.L000004A8:
	cmpl      $2, %ebp
	ja        .L000004D4
.L000004AD:
	testl     %ebx, %ebx
	je        .L00000A90
.L000004B5:
	movq      112(%rsp), %rax
	movl      %ebp, %ecx
	subl      $1, %ebx
	addl      $8, %ebp
	leaq      1(%rax), %rdx
	movq      %rdx, 112(%rsp)
	movzbl    (%rax), %eax
	salq      %cl, %rax
	addq      %rax, %r12
.L000004D4:
	movl      %r12d, %eax
	shrq      $1, %r12
	andl      $1, %eax
	movl      %eax, 4(%r14)
	movl      %r12d, %eax
	andl      $3, %eax
	cmpl      $2, %eax
	je        .L00000B10
.L000004F0:
	cmpl      $3, %eax
	je        .L00000A20
.L000004F9:
	cmpl      $1, %eax
	je        .L00000B21
.L00000502:
	movl      $13, (%r14)
	movl      $13, %eax
.L0000050E:
	shrq      $2, %r12
	subl      $3, %ebp
	jmp       .L0000019B
.L0000051A:
	.p2align 3
.L00000520:
	movl      %ebp, %ecx
	movl      $28, (%r14)
	andl      $-8, %ebp
	andl      $7, %ecx
	movl      $28, %eax
	shrq      %cl, %r12
	jmp       .L0000019B
.L0000053C:
	.p2align 3
.L00000540:
	cmpl      $30, %ecx
	ja        .L00000370
.L00000549:
	movl      $0, 132(%r14)
	xorl      %eax, %eax
.L00000556:
	cmpl      $2, %ebp
	ja        .L00000D5F
.L0000055F:
	testl     %ebx, %ebx
	je        .L00000A40
.L00000567:
	movq      112(%rsp), %rax
	movl      %ebp, %ecx
	subl      $1, %ebx
	addl      $8, %ebp
	leaq      1(%rax), %rdx
	movq      %rdx, 112(%rsp)
	movzbl    (%rax), %edx
	salq      %cl, %rdx
	movl      132(%r14), %ecx
	addq      %rdx, %r12
	movl      120(%r14), %edx
.L00000591:
	leal      1(%rcx), %eax
	movzwl    order.4075(%rcx,%rcx), %ecx
	movl      %r12d, %esi
	andl      $7, %esi
	shrq      $3, %r12
	subl      $3, %ebp
	cmpl      %edx, %eax
	movl      %eax, 132(%r14)
	movw      %si, 144(%r14,%rcx,2)
	jb        .L00000556
.L000005BD:
	cmpl      $18, %eax
	jbe       .L000005CA
.L000005C2:
	jmp       .L000005EC
.L000005C4:
	.p2align 3
.L000005C8:
	movl      %edx, %eax
.L000005CA:
	leal      1(%rax), %edx
	movzwl    order.4075(%rax,%rax), %eax
	xorl      %ecx, %ecx
	cmpl      $18, %edx
	movw      %cx, 144(%r14,%rax,2)
	jbe       .L000005C8
.L000005E5:
	movl      %edx, 132(%r14)
.L000005EC:
	movq      48(%rsp), %rax
	movq      40(%rsp), %r9
	leaq      144(%r14), %rsi
	movq      56(%rsp), %r8
	xorl      %edi, %edi
	movl      $7, 112(%r14)
	movl      $19, %edx
	movq      %rsi, 96(%rsp)
	movq      %rax, 136(%r14)
	movq      %rax, 96(%r14)
	leaq      136(%r14), %rax
	movq      %rax, %rcx
	movq      %rax, 80(%rsp)
	call      inflate_table
.L00000635:
	testl     %eax, %eax
	je        .L00000D66
.L0000063D:
	movq      $.LC00000030.str1.1, 48(%r15)
	movl      $29, %eax
	movl      $29, (%r14)
	jmp       .L0000019B
.L00000656:
	.p2align 4
.L00000660:
	subl      %r13d, %edx
	movq      64(%r14), %rsi
	movq      32(%rsp), %rdi
	movq      24(%rsp), %rax
	call      *%rax
.L00000673:
	testl     %eax, %eax
	movq      112(%rsp), %rdx
	je        .L00000A10
.L00000680:
	movl      $-5, %eax
	jmp       .L000001BA
.L0000068A:
	.p2align 3
.L00000690:
	movl      %ecx, 64(%rsp)
	leaq      112(%rsp), %rsi
	movq      8(%rsp), %rdi
	movq      (%rsp), %rax
	call      *%rax
.L000006A4:
	testl     %eax, %eax
	movl      %eax, %ebx
	movl      64(%rsp), %ecx
	jne       .L0000030D
.L000006B2:
	.p2align 3
.L000006B8:
	xorl      %edx, %edx
	movl      $-5, %eax
	xorl      %ebx, %ebx
	jmp       .L000001BA
.L000006C6:
	.p2align 4
.L000006D0:
	movl      %ecx, 64(%rsp)
	leaq      112(%rsp), %rsi
	movq      8(%rsp), %rdi
	movq      (%rsp), %rax
	call      *%rax
.L000006E4:
	testl     %eax, %eax
	movl      %eax, %ebx
	movl      64(%rsp), %ecx
	jne       .L0000041A
.L000006F2:
	jmp       .L000006B8
.L000006F4:
	.p2align 3
.L000006F8:
	movl      %ecx, 64(%rsp)
	leaq      112(%rsp), %rsi
	movq      8(%rsp), %rdi
	movq      (%rsp), %rax
	call      *%rax
.L0000070C:
	testl     %eax, %eax
	movl      %eax, %ebx
	movl      64(%rsp), %ecx
	jne       .L000003EC
.L0000071A:
	jmp       .L000006B8
.L0000071C:
	.p2align 3
.L00000720:
	leaq      112(%rsp), %rsi
	movq      8(%rsp), %rdi
	movq      (%rsp), %rax
	call      *%rax
.L00000730:
	testl     %eax, %eax
	movl      %eax, %ebx
	jne       .L000002DD
.L0000073A:
	jmp       .L000006B8
.L0000073F:
	.p2align 3
.L00000740:
	leaq      112(%rsp), %rsi
	movq      8(%rsp), %rdi
	movq      (%rsp), %rax
	call      *%rax
.L00000750:
	testl     %eax, %eax
	movl      %eax, %ebx
	jne       .L000003BC
.L0000075A:
	jmp       .L000006B8
.L0000075F:
	.p2align 3
.L00000760:
	movl      %ecx, 64(%rsp)
	leaq      112(%rsp), %rsi
	movq      8(%rsp), %rdi
	movq      (%rsp), %rax
	call      *%rax
.L00000774:
	testl     %eax, %eax
	movl      %eax, %ebx
	movl      64(%rsp), %ecx
	jne       .L00000448
.L00000782:
	jmp       .L000006B8
.L00000787:
	.p2align 4
.L00000790:
	movzwl    %r12w, %r12d
	testl     %r12d, %r12d
	movl      %r12d, 84(%r14)
	je        .L00000A70
.L000007A1:
	movq      %r15, 64(%rsp)
	movq      16(%rsp), %rbp
	movl      %ebx, %r15d
	movl      %r13d, %ebx
	jmp       .L00000805
.L000007B3:
	.p2align 3
.L000007B8:
	testl     %ebx, %ebx
	je        .L00000830
.L000007BC:
	cmpl      %r15d, %ebx
	movl      %r15d, %r10d
	movl      %r12d, %r13d
	cmovbe    %ebx, %r10d
	movq      112(%rsp), %rsi
	movq      %rbp, %rdi
	cmpl      %r12d, %r10d
	cmovbe    %r10d, %r13d
	movl      %r13d, %r12d
	subl      %r13d, %r15d
	subl      %r13d, %ebx
	movq      %r12, %rdx
	addq      %r12, %rbp
	call      memcpy
.L000007EC:
	addq      %r12, 112(%rsp)
	movl      84(%r14), %r12d
	subl      %r13d, %r12d
	testl     %r12d, %r12d
	movl      %r12d, 84(%r14)
	je        .L00000A60
.L00000805:
	testl     %r15d, %r15d
	jne       .L000007B8
.L0000080A:
	leaq      112(%rsp), %rsi
	movq      8(%rsp), %rdi
	movq      (%rsp), %rax
	call      *%rax
.L0000081A:
	testl     %eax, %eax
	movl      %eax, %r15d
	jne       .L000007B8
.L00000821:
	movq      64(%rsp), %r15
	jmp       .L000006B8
.L0000082B:
	.p2align 3
.L00000830:
	movl      52(%r14), %ebx
	movq      64(%r14), %rbp
	movq      32(%rsp), %rdi
	movq      24(%rsp), %rax
	movl      %ebx, 56(%r14)
	movl      %ebx, %edx
	movq      %rbp, %rsi
	call      *%rax
.L0000084D:
	testl     %eax, %eax
	je        .L000007BC
.L00000855:
	movl      %r15d, %ebx
	movq      112(%rsp), %rdx
	movq      64(%rsp), %r15
	movl      $-5, %eax
	jmp       .L000001BA
.L0000086C:
	.p2align 3
.L00000870:
	xorl      %ebx, %ebx
	jmp       .L00000160
.L00000877:
	.p2align 4
.L00000880:
	movq      16(%rsp), %rax
	movl      52(%r14), %esi
	cmpl      %esi, 56(%r14)
	movl      %r13d, 32(%r15)
	movl      %ebx, 8(%r15)
	movq      %rax, 24(%r15)
	movq      112(%rsp), %rax
	movq      %rax, (%r15)
	movq      %r12, 72(%r14)
	movl      %ebp, 80(%r14)
	jae       .L000008B4
.L000008AB:
	movl      %esi, %eax
	subl      %r13d, %eax
	movl      %eax, 56(%r14)
.L000008B4:
	movq      %r15, %rdi
	call      inflate_fast
.L000008BC:
	movq      24(%r15), %rax
	movl      32(%r15), %r13d
	movl      8(%r15), %ebx
	movq      72(%r14), %r12
	movl      80(%r14), %ebp
	movq      %rax, 16(%rsp)
	movq      (%r15), %rax
	movq      %rax, 112(%rsp)
	movl      (%r14), %eax
	jmp       .L0000019B
.L000008E5:
	.p2align 3
.L000008E8:
	movl      64(%rsp), %r13d
	movl      %eax, %ebx
	movl      %ecx, %eax
.L000008F1:
	testb     %r10b, %r10b
	je        .L000009C8
.L000008FA:
	testb     $-16, %r10b
	jne       .L00000AC0
.L00000904:
	leal      (%r10,%rdx), %ecx
	movl      $1, %r9d
	sall      %cl, %r9d
	movl      %eax, %ecx
	subl      $1, %r9d
	andl      %r9d, %edi
	shrl      %cl, %edi
	leal      (%rdi,%r8), %eax
	leaq      (%rsi,%rax,4), %rax
	movzbl    (%rax), %r10d
	movzwl    2(%rax), %edi
	movzbl    1(%rax), %eax
	leal      (%rdx,%rax), %ecx
	cmpl      %ecx, %ebp
	jae       .L00000B62
.L0000093B:
	movl      %ebx, %eax
	movl      %r13d, 72(%rsp)
	movq      %r15, 64(%rsp)
	movl      %r8d, %r13d
	movl      %r9d, %r15d
	movl      %edx, %ebx
	jmp       .L000009A2
.L00000951:
	.p2align 3
.L00000958:
	movq      112(%rsp), %rcx
	subl      $1, %eax
	leaq      1(%rcx), %rdi
	movq      %rdi, 112(%rsp)
	movzbl    (%rcx), %edi
	movl      %ebp, %ecx
	addl      $8, %ebp
	salq      %cl, %rdi
	movl      %ebx, %ecx
	addq      %rdi, %r12
	movl      %r15d, %edi
	andl      %r12d, %edi
	shrl      %cl, %edi
	leal      (%rdi,%r13), %ecx
	leaq      (%rsi,%rcx,4), %rcx
	movzbl    (%rcx), %r10d
	movzwl    2(%rcx), %edi
	movzbl    1(%rcx), %ecx
	leal      (%rcx,%rbx), %r11d
	cmpl      %ebp, %r11d
	jbe       .L00000B52
.L000009A2:
	testl     %eax, %eax
	jne       .L00000958
.L000009A6:
	leaq      112(%rsp), %rsi
	movq      8(%rsp), %rdi
	movq      (%rsp), %rax
	call      *%rax
.L000009B6:
	testl     %eax, %eax
	je        .L00000821
.L000009BE:
	movq      96(%r14), %rsi
	jmp       .L00000958
.L000009C4:
	.p2align 3
.L000009C8:
	movl      %eax, %ecx
	movzwl    %r8w, %edi
	subl      %edx, %ebp
	shrq      %cl, %r12
	movl      %edi, 84(%r14)
.L000009D7:
	testl     %r13d, %r13d
	je        .L00000B92
.L000009E0:
	movq      16(%rsp), %rax
	subl      $1, %r13d
	movb      %dil, (%rax)
	addq      $1, %rax
	movl      $20, (%r14)
	movq      %rax, 16(%rsp)
	movl      $20, %eax
	jmp       .L0000019B
.L00000A06:
	.p2align 4
.L00000A10:
	movb      $1, %al
	jmp       .L000001BA
.L00000A17:
	.p2align 4
.L00000A20:
	movq      $.LC00000000.str1.1, 48(%r15)
	movl      $29, %eax
	movl      $29, (%r14)
	jmp       .L0000050E
.L00000A39:
	.p2align 4
.L00000A40:
	leaq      112(%rsp), %rsi
	movq      8(%rsp), %rdi
	movq      (%rsp), %rax
	call      *%rax
.L00000A50:
	testl     %eax, %eax
	movl      %eax, %ebx
	jne       .L00000567
.L00000A5A:
	jmp       .L000006B8
.L00000A5F:
	.p2align 3
.L00000A60:
	movl      %ebx, %r13d
	movl      %r15d, %ebx
	movq      64(%rsp), %r15
	movq      %rbp, 16(%rsp)
.L00000A70:
	movl      $11, (%r14)
	movl      $11, %eax
	xorl      %ebp, %ebp
	xorl      %r12d, %r12d
	jmp       .L0000019B
.L00000A86:
	.p2align 4
.L00000A90:
	leaq      112(%rsp), %rsi
	movq      8(%rsp), %rdi
	movq      (%rsp), %rax
	call      *%rax
.L00000AA0:
	testl     %eax, %eax
	movl      %eax, %ebx
	jne       .L000004B5
.L00000AAA:
	jmp       .L000006B8
.L00000AAF:
	.p2align 3
.L00000AB0:
	movl      %ecx, %ebp
	jmp       .L00000465
.L00000AB7:
	.p2align 4
.L00000AC0:
	movl      %eax, %ecx
	subl      %edx, %ebp
	movl      %r8d, 84(%r14)
	shrq      %cl, %r12
.L00000ACB:
	testb     $32, %r10b
	je        .L00000AE8
.L00000AD1:
	movl      $11, (%r14)
	movl      $11, %eax
	jmp       .L0000019B
.L00000AE2:
	.p2align 3
.L00000AE8:
	testb     $64, %r10b
	je        .L00000BC6
.L00000AF2:
	movq      $.LC00000095.str1.1, 48(%r15)
	movl      $29, %eax
	movl      $29, (%r14)
	jmp       .L0000019B
.L00000B0B:
	.p2align 3
.L00000B10:
	movl      $16, (%r14)
	movl      $16, %eax
	jmp       .L0000050E
.L00000B21:
	movq      $lenfix.4053, 96(%r14)
	movl      $9, 112(%r14)
	movl      $20, %eax
	movq      $distfix.4054, 104(%r14)
	movl      $5, 116(%r14)
	movl      $20, (%r14)
	jmp       .L0000050E
.L00000B52:
	movl      72(%rsp), %r13d
	movq      64(%rsp), %r15
	movl      %ebx, %edx
	movl      %eax, %ebx
	movl      %ecx, %eax
.L00000B62:
	movl      %edx, %ecx
	subl      %edx, %ebp
	movl      %edi, 84(%r14)
	shrq      %cl, %r12
	movl      %eax, %ecx
	subl      %eax, %ebp
	shrq      %cl, %r12
	testb     %r10b, %r10b
	jne       .L00000ACB
.L00000B7D:
	jmp       .L000009D7
.L00000B82:
	.p2align 3
.L00000B88:
	movl      $-2, %eax
	jmp       .L000001C1
.L00000B92:
	movq      64(%r14), %rax
	movl      52(%r14), %r13d
	movq      32(%rsp), %rdi
	movq      %rax, 16(%rsp)
	movq      %rax, %rsi
	movl      %r13d, 56(%r14)
	movl      %r13d, %edx
	movq      24(%rsp), %rax
	call      *%rax
.L00000BB5:
	testl     %eax, %eax
	jne       .L00001457
.L00000BBD:
	movl      84(%r14), %edi
	jmp       .L000009E0
.L00000BC6:
	andl      $15, %r10d
	testl     %r10d, %r10d
	movl      %r10d, 92(%r14)
	je        .L00000C63
.L00000BD7:
	cmpl      %ebp, %r10d
	jbe       .L00000C49
.L00000BDC:
	movl      %ebx, %eax
	movl      %r13d, 64(%rsp)
	movq      (%rsp), %rbx
	movq      %r12, %r13
	movq      8(%rsp), %r12
	jmp       .L00000C1C
.L00000BF1:
	.p2align 3
.L00000BF8:
	movq      112(%rsp), %rdx
	subl      $1, %eax
	leaq      1(%rdx), %rcx
	movq      %rcx, 112(%rsp)
	movzbl    (%rdx), %edx
	movl      %ebp, %ecx
	addl      $8, %ebp
	salq      %cl, %rdx
	addq      %rdx, %r13
	cmpl      %r10d, %ebp
	jae       .L00000C3F
.L00000C1C:
	testl     %eax, %eax
	jne       .L00000BF8
.L00000C20:
	leaq      112(%rsp), %rsi
	movq      %r12, %rdi
	call      *%rbx
.L00000C2A:
	testl     %eax, %eax
	je        .L000006B8
.L00000C32:
	movl      92(%r14), %r10d
	jmp       .L00000BF8
.L00000C38:
	movl      %ecx, %ebp
	jmp       .L0000032A
.L00000C3F:
	movq      %r13, %r12
	movl      64(%rsp), %r13d
	movl      %eax, %ebx
.L00000C49:
	movl      %r10d, %ecx
	movl      $1, %eax
	subl      %r10d, %ebp
	sall      %cl, %eax
	subl      $1, %eax
	andl      %r12d, %eax
	addl      %eax, 84(%r14)
	shrq      %cl, %r12
.L00000C63:
	movl      116(%r14), %r9d
	movl      $1, %eax
	movq      104(%r14), %rsi
	movl      %r12d, %r11d
	movl      %r9d, %ecx
	sall      %cl, %eax
	subl      $1, %eax
	andl      %r12d, %eax
	leaq      (%rsi,%rax,4), %rdx
	movzbl    1(%rdx), %eax
	movzbl    (%rdx), %edi
	movzwl    2(%rdx), %r8d
	movzbl    %al, %edx
	cmpl      %edx, %ebp
	movl      %edx, %r10d
	jae       .L00000D28
.L00000C9C:
	movl      %ebx, %eax
	movl      %r13d, 64(%rsp)
	movq      (%rsp), %rbx
	movq      8(%rsp), %r13
	jmp       .L00000CFD
.L00000CAE:
	.p2align 3
.L00000CB0:
	movq      112(%rsp), %rdx
	subl      $1, %eax
	leaq      1(%rdx), %rcx
	movq      %rcx, 112(%rsp)
	movzbl    (%rdx), %edx
	movl      %ebp, %ecx
	addl      $8, %ebp
	salq      %cl, %rdx
	movl      %r9d, %ecx
	addq      %rdx, %r12
	movl      $1, %edx
	sall      %cl, %edx
	movl      %r12d, %r11d
	subl      $1, %edx
	andl      %r12d, %edx
	leaq      (%rsi,%rdx,4), %rdx
	movzbl    1(%rdx), %edi
	movzbl    (%rdx), %ecx
	movzwl    2(%rdx), %r8d
	movzbl    %dil, %edx
	cmpl      %ebp, %edx
	movl      %edx, %r10d
	jbe       .L00000D1D
.L00000CFD:
	testl     %eax, %eax
	jne       .L00000CB0
.L00000D01:
	leaq      112(%rsp), %rsi
	movq      %r13, %rdi
	call      *%rbx
.L00000D0B:
	testl     %eax, %eax
	je        .L000006B8
.L00000D13:
	movq      104(%r14), %rsi
	movl      116(%r14), %r9d
	jmp       .L00000CB0
.L00000D1D:
	movl      64(%rsp), %r13d
	movl      %eax, %ebx
	movl      %edi, %eax
	movl      %ecx, %edi
.L00000D28:
	testb     $-16, %dil
	je        .L00000F0E
.L00000D32:
	movl      %edx, %eax
.L00000D34:
	movl      %eax, %ecx
	subl      %r10d, %ebp
	shrq      %cl, %r12
	testb     $64, %dil
	je        .L00000FDB
.L00000D46:
	movq      $.LC000000B1.str1.1, 48(%r15)
	movl      $29, %eax
	movl      $29, (%r14)
	jmp       .L0000019B
.L00000D5F:
	movl      %eax, %ecx
	jmp       .L00000591
.L00000D66:
	movl      124(%r14), %edx
	movl      128(%r14), %r9d
	movl      %ebx, %eax
	movl      $0, 132(%r14)
	movl      %r13d, 92(%rsp)
	movq      %r14, %r13
	movq      (%rsp), %rbx
	movq      %r12, %r14
	movq      8(%rsp), %r12
	xorl      %ecx, %ecx
	addl      %edx, %r9d
	movl      $1, %r8d
	movq      %r15, 72(%rsp)
.L00000DA2:
	cmpl      %ecx, %r9d
	jbe       .L0000148D
.L00000DAB:
	movl      112(%r13), %edi
	movl      %r8d, %edx
	movq      96(%r13), %rsi
	movl      %edi, %ecx
	sall      %cl, %edx
	subl      $1, %edx
	andl      %r14d, %edx
	leaq      (%rsi,%rdx,4), %rdx
	movzbl    1(%rdx), %ecx
	movzwl    2(%rdx), %r9d
	movzbl    %cl, %r15d
	cmpl      %r15d, %ebp
	jb        .L00000E24
.L00000DD6:
	jmp       .L00000E51
.L00000DD8:
	.p2align 4
.L00000DE0:
	movq      112(%rsp), %rdx
	subl      $1, %eax
	leaq      1(%rdx), %rcx
	movq      %rcx, 112(%rsp)
	movzbl    (%rdx), %r9d
	movl      %ebp, %ecx
	movl      %r8d, %edx
	addl      $8, %ebp
	salq      %cl, %r9
	movl      %edi, %ecx
	sall      %cl, %edx
	addq      %r9, %r14
	subl      $1, %edx
	andl      %r14d, %edx
	leaq      (%rsi,%rdx,4), %rdx
	movzbl    1(%rdx), %r10d
	movzwl    2(%rdx), %r9d
	movzbl    %r10b, %r15d
	cmpl      %ebp, %r15d
	jbe       .L00000E4E
.L00000E24:
	testl     %eax, %eax
	jne       .L00000DE0
.L00000E28:
	movl      %r8d, 64(%rsp)
	leaq      112(%rsp), %rsi
	movq      %r12, %rdi
	call      *%rbx
.L00000E37:
	testl     %eax, %eax
	je        .L00000F04
.L00000E3F:
	movq      96(%r13), %rsi
	movl      112(%r13), %edi
	movl      64(%rsp), %r8d
	jmp       .L00000DE0
.L00000E4E:
	movl      %r10d, %ecx
.L00000E51:
	cmpw      $15, %r9w
	ja        .L00000E8B
.L00000E58:
	movl      132(%r13), %edx
	shrq      %cl, %r14
	subl      %r15d, %ebp
	leal      1(%rdx), %ecx
	movl      %ecx, 132(%r13)
	movw      %r9w, 144(%r13,%rdx,2)
	movl      124(%r13), %edx
	movl      128(%r13), %r9d
	addl      %edx, %r9d
	jmp       .L00000DA2
.L00000E8B:
	cmpw      $16, %r9w
	je        .L000013A3
.L00000E96:
	cmpw      $17, %r9w
	je        .L0000133A
.L00000EA1:
	leal      7(%r15), %r9d
	cmpl      %r9d, %ebp
	jae       .L000010B4
.L00000EAE:
	movq      %r13, 104(%rsp)
	movl      %r9d, %r13d
	jmp       .L00000EE8
.L00000EB8:
	.p2align 4
.L00000EC0:
	movq      112(%rsp), %rdx
	subl      $1, %eax
	leaq      1(%rdx), %rcx
	movq      %rcx, 112(%rsp)
	movzbl    (%rdx), %esi
	movl      %ebp, %ecx
	addl      $8, %ebp
	salq      %cl, %rsi
	addq      %rsi, %r14
	cmpl      %r13d, %ebp
	jae       .L000010AF
.L00000EE8:
	testl     %eax, %eax
	jne       .L00000EC0
.L00000EEC:
	movl      %r8d, 64(%rsp)
	leaq      112(%rsp), %rsi
	movq      %r12, %rdi
	call      *%rbx
.L00000EFB:
	testl     %eax, %eax
	movl      64(%rsp), %r8d
	jne       .L00000EC0
.L00000F04:
	movq      72(%rsp), %r15
	jmp       .L000006B8
.L00000F0E:
	leal      (%rdi,%rdx), %ecx
	movzwl    %r8w, %r9d
	movl      $1, %r8d
	sall      %cl, %r8d
	movl      %eax, %ecx
	leal      -1(%r8), %edi
	andl      %edi, %r11d
	movl      %edi, 64(%rsp)
	shrl      %cl, %r11d
	leal      (%r11,%r9), %eax
	leaq      (%rsi,%rax,4), %rax
	movzbl    1(%rax), %r10d
	movzbl    (%rax), %edi
	movzwl    2(%rax), %r8d
	leal      (%rdx,%r10), %ecx
	movl      %r10d, %eax
	cmpl      %ecx, %ebp
	jae       .L000010A3
.L00000F52:
	movl      %ebx, %eax
	movl      %r13d, 80(%rsp)
	movq      %r15, 72(%rsp)
	movl      %r9d, %r13d
	movl      64(%rsp), %r15d
	movl      %edx, %ebx
	jmp       .L00000FB9
.L00000F6A:
	.p2align 3
.L00000F70:
	movq      112(%rsp), %rdx
	subl      $1, %eax
	leaq      1(%rdx), %rcx
	movq      %rcx, 112(%rsp)
	movzbl    (%rdx), %edx
	movl      %ebp, %ecx
	addl      $8, %ebp
	salq      %cl, %rdx
	movl      %ebx, %ecx
	addq      %rdx, %r12
	movl      %r15d, %edx
	andl      %r12d, %edx
	shrl      %cl, %edx
	addl      %r13d, %edx
	leaq      (%rsi,%rdx,4), %rdx
	movzbl    1(%rdx), %r10d
	movzbl    (%rdx), %edi
	movzwl    2(%rdx), %r8d
	leal      (%r10,%rbx), %edx
	cmpl      %ebp, %edx
	jbe       .L00001092
.L00000FB9:
	testl     %eax, %eax
	jne       .L00000F70
.L00000FBD:
	leaq      112(%rsp), %rsi
	movq      8(%rsp), %rdi
	movq      (%rsp), %rax
	call      *%rax
.L00000FCD:
	testl     %eax, %eax
	je        .L00000F04
.L00000FD5:
	movq      104(%r14), %rsi
	jmp       .L00000F70
.L00000FDB:
	andl      $15, %edi
	movl      %r8d, 88(%r14)
	testl     %edi, %edi
	movl      %edi, 92(%r14)
	je        .L0000105E
.L00000FEA:
	cmpl      %edi, %ebp
	jae       .L0000103F
.L00000FEE:
	movl      %ebx, %eax
	jmp       .L0000101B
.L00000FF2:
	.p2align 3
.L00000FF8:
	movq      112(%rsp), %rdx
	subl      $1, %eax
	leaq      1(%rdx), %rcx
	movq      %rcx, 112(%rsp)
	movzbl    (%rdx), %edx
	movl      %ebp, %ecx
	addl      $8, %ebp
	salq      %cl, %rdx
	addq      %rdx, %r12
	cmpl      %edi, %ebp
	jae       .L0000103D
.L0000101B:
	testl     %eax, %eax
	jne       .L00000FF8
.L0000101F:
	leaq      112(%rsp), %rsi
	movq      8(%rsp), %rdi
	movq      (%rsp), %rax
	call      *%rax
.L0000102F:
	testl     %eax, %eax
	je        .L000006B8
.L00001037:
	movl      92(%r14), %edi
	jmp       .L00000FF8
.L0000103D:
	movl      %eax, %ebx
.L0000103F:
	movl      %edi, %ecx
	movl      $1, %r8d
	subl      %edi, %ebp
	sall      %cl, %r8d
	subl      $1, %r8d
	andl      %r12d, %r8d
	addl      88(%r14), %r8d
	shrq      %cl, %r12
	movl      %r8d, 88(%r14)
.L0000105E:
	movl      52(%r14), %ecx
	xorl      %eax, %eax
	cmpl      %ecx, 56(%r14)
	movl      %ecx, %esi
	cmovb     %r13d, %eax
	subl      %eax, %esi
	cmpl      %r8d, %esi
	jae       .L00001116
.L00001079:
	movq      $.LC000000C7.str1.1, 48(%r15)
	movl      $29, %eax
	movl      $29, (%r14)
	jmp       .L0000019B
.L00001092:
	movl      80(%rsp), %r13d
	movq      72(%rsp), %r15
	movl      %ebx, %edx
	movl      %eax, %ebx
	movl      %r10d, %eax
.L000010A3:
	movl      %edx, %ecx
	subl      %edx, %ebp
	shrq      %cl, %r12
	jmp       .L00000D34
.L000010AF:
	movq      104(%rsp), %r13
.L000010B4:
	movl      %r15d, %ecx
	movl      $-7, %edx
	movl      132(%r13), %esi
	shrq      %cl, %r14
	subl      %r15d, %edx
	xorl      %r11d, %r11d
	movl      %r14d, %ecx
	addl      %edx, %ebp
	shrq      $7, %r14
	andl      $127, %ecx
	addl      $11, %ecx
.L000010DB:
	movl      124(%r13), %edx
	movl      128(%r13), %r9d
	addl      %esi, %ecx
	addl      %edx, %r9d
	cmpl      %r9d, %ecx
	ja        .L000014C9
.L000010F4:
	.p2align 3
.L000010F8:
	movl      %esi, %edi
	addl      $1, %esi
	cmpl      %esi, %ecx
	movw      %r11w, 144(%r13,%rdi,2)
	jne       .L000010F8
.L0000110A:
	movl      %ecx, 132(%r13)
	jmp       .L00000DA2
.L00001116:
	movl      %r13d, %esi
	movl      %ebp, %r13d
	movl      %ebx, %ebp
	movq      16(%rsp), %rbx
	.p2align 3
.L00001128:
	testl     %esi, %esi
	movl      %ecx, %edx
	je        .L000012DD
.L00001132:
	movl      88(%r14), %eax
	subl      %eax, %edx
	cmpl      %edx, %esi
	jbe       .L000012CD
.L00001140:
	movl      %esi, %edi
	movl      %edx, %eax
	subl      %edx, %edi
	addq      %rbx, %rax
	movl      %edi, %edx
.L0000114B:
	movl      84(%r14), %ecx
	cmpl      %ecx, %edx
	cmova     %ecx, %edx
	subl      %edx, %ecx
	subl      %edx, %esi
	movl      %ecx, 84(%r14)
	leaq      16(%rax), %rcx
	cmpq      %rcx, %rbx
	leaq      16(%rbx), %rcx
	setae     %dil
	cmpq      %rcx, %rax
	setae     %cl
	orb       %cl, %dil
	je        .L0000130F
.L0000117A:
	cmpl      $15, %edx
	jbe       .L0000130F
.L00001183:
	movl      %edx, %edi
	xorl      %ecx, %ecx
	xorl      %r9d, %r9d
	shrl      $4, %edi
	movl      %edi, %r8d
	sall      $4, %r8d
.L00001194:
	movdqu    (%rax,%rcx), %xmm0
	addl      $1, %r9d
	movdqu    %xmm0, (%rbx,%rcx)
	addq      $16, %rcx
	cmpl      %r9d, %edi
	ja        .L00001194
.L000011AB:
	movl      %r8d, %r9d
	movl      %edx, %edi
	subl      %r8d, %edi
	addq      %r9, %rax
	cmpl      %r8d, %edx
	leaq      (%rbx,%r9), %rcx
	je        .L000012C8
.L000011C3:
	movzbl    (%rax), %r8d
	cmpl      $1, %edi
	movb      %r8b, (%rcx)
	je        .L000012C8
.L000011D3:
	movzbl    1(%rax), %r8d
	cmpl      $2, %edi
	movb      %r8b, 1(%rcx)
	je        .L000012C8
.L000011E5:
	movzbl    2(%rax), %r8d
	cmpl      $3, %edi
	movb      %r8b, 2(%rcx)
	je        .L000012C8
.L000011F7:
	movzbl    3(%rax), %r8d
	cmpl      $4, %edi
	movb      %r8b, 3(%rcx)
	je        .L000012C8
.L00001209:
	movzbl    4(%rax), %r8d
	cmpl      $5, %edi
	movb      %r8b, 4(%rcx)
	je        .L000012C8
.L0000121B:
	movzbl    5(%rax), %r8d
	cmpl      $6, %edi
	movb      %r8b, 5(%rcx)
	je        .L000012C8
.L0000122D:
	movzbl    6(%rax), %r8d
	cmpl      $7, %edi
	movb      %r8b, 6(%rcx)
	je        .L000012C8
.L0000123F:
	movzbl    7(%rax), %r8d
	cmpl      $8, %edi
	movb      %r8b, 7(%rcx)
	je        .L000012C8
.L0000124D:
	movzbl    8(%rax), %r8d
	cmpl      $9, %edi
	movb      %r8b, 8(%rcx)
	je        .L000012C8
.L0000125B:
	movzbl    9(%rax), %r8d
	cmpl      $10, %edi
	movb      %r8b, 9(%rcx)
	je        .L000012C8
.L00001269:
	movzbl    10(%rax), %r8d
	cmpl      $11, %edi
	movb      %r8b, 10(%rcx)
	je        .L000012C8
.L00001277:
	movzbl    11(%rax), %r8d
	cmpl      $12, %edi
	movb      %r8b, 11(%rcx)
	je        .L000012C8
.L00001285:
	movzbl    12(%rax), %r8d
	cmpl      $13, %edi
	movb      %r8b, 12(%rcx)
	je        .L000012C8
.L00001293:
	movzbl    13(%rax), %r8d
	cmpl      $14, %edi
	movb      %r8b, 13(%rcx)
	je        .L000012C8
.L000012A1:
	movzbl    14(%rax), %eax
	subl      $1, %edx
	movb      %al, 14(%rcx)
.L000012AB:
	movl      84(%r14), %eax
	leaq      1(%rbx,%rdx), %rbx
	testl     %eax, %eax
	je        .L00001440
.L000012BC:
	movl      52(%r14), %ecx
	jmp       .L00001128
.L000012C5:
	.p2align 3
.L000012C8:
	subl      $1, %edx
	jmp       .L000012AB
.L000012CD:
	movq      %rbx, %rdi
	movl      %esi, %edx
	subq      %rax, %rdi
	movq      %rdi, %rax
	jmp       .L0000114B
.L000012DD:
	movq      64(%r14), %rbx
	movl      %ecx, 56(%r14)
	movl      %ecx, 16(%rsp)
	movq      32(%rsp), %rdi
	movq      24(%rsp), %rax
	movq      %rbx, %rsi
	call      *%rax
.L000012F8:
	testl     %eax, %eax
	movl      16(%rsp), %ecx
	jne       .L00001455
.L00001304:
	movl      52(%r14), %edx
	movl      %ecx, %esi
	jmp       .L00001132
.L0000130F:
	subl      $1, %edx
	movl      %edx, %ecx
	leaq      1(%rax,%rcx), %r8
	movq      %rbx, %rcx
	.p2align 3
.L00001320:
	addq      $1, %rax
	movzbl    -1(%rax), %edi
	addq      $1, %rcx
	cmpq      %r8, %rax
	movb      %dil, -1(%rcx)
	jne       .L00001320
.L00001335:
	jmp       .L000012AB
.L0000133A:
	leal      3(%r15), %r9d
	cmpl      %r9d, %ebp
	jb        .L00001378
.L00001343:
	jmp       .L00001461
.L00001348:
	.p2align 4
.L00001350:
	movq      112(%rsp), %rcx
	subl      $1, %eax
	leaq      1(%rcx), %rdx
	movq      %rdx, 112(%rsp)
	movzbl    (%rcx), %esi
	movl      %ebp, %ecx
	addl      $8, %ebp
	salq      %cl, %rsi
	addq      %rsi, %r14
	cmpl      %r9d, %ebp
	jae       .L00001461
.L00001378:
	testl     %eax, %eax
	jne       .L00001350
.L0000137C:
	movl      %r9d, 104(%rsp)
	movl      %r8d, 64(%rsp)
	leaq      112(%rsp), %rsi
	movq      %r12, %rdi
	call      *%rbx
.L00001390:
	testl     %eax, %eax
	movl      64(%rsp), %r8d
	movl      104(%rsp), %r9d
	jne       .L00001350
.L0000139E:
	jmp       .L00000F04
.L000013A3:
	leal      2(%r15), %r9d
	cmpl      %r9d, %ebp
	jb        .L000013DC
.L000013AC:
	.p2align 3
	jmp       .L00001407
.L000013B2:
	.p2align 3
.L000013B8:
	movq      112(%rsp), %rcx
	subl      $1, %eax
	leaq      1(%rcx), %rdx
	movq      %rdx, 112(%rsp)
	movzbl    (%rcx), %esi
	movl      %ebp, %ecx
	addl      $8, %ebp
	salq      %cl, %rsi
	addq      %rsi, %r14
	cmpl      %r9d, %ebp
	jae       .L00001407
.L000013DC:
	testl     %eax, %eax
	jne       .L000013B8
.L000013E0:
	movl      %r9d, 104(%rsp)
	movl      %r8d, 64(%rsp)
	leaq      112(%rsp), %rsi
	movq      %r12, %rdi
	call      *%rbx
.L000013F4:
	testl     %eax, %eax
	movl      64(%rsp), %r8d
	movl      104(%rsp), %r9d
	jne       .L000013B8
.L00001402:
	jmp       .L00000F04
.L00001407:
	movl      132(%r13), %esi
	movl      %r15d, %ecx
	subl      %r15d, %ebp
	shrq      %cl, %r14
	testl     %esi, %esi
	je        .L000014C9
.L0000141F:
	movl      %r14d, %ecx
	leal      -1(%rsi), %edx
	shrq      $2, %r14
	andl      $3, %ecx
	subl      $2, %ebp
	movzwl    144(%r13,%rdx,2), %r11d
	addl      $3, %ecx
	jmp       .L000010DB
.L00001440:
	movq      %rbx, 16(%rsp)
	movl      (%r14), %eax
	movl      %ebp, %ebx
	movl      %r13d, %ebp
	movl      %esi, %r13d
	jmp       .L0000019B
.L00001455:
	movl      %ebp, %ebx
.L00001457:
	movq      112(%rsp), %rdx
	jmp       .L00000680
.L00001461:
	movl      %r15d, %ecx
	movl      $-3, %edx
	movl      132(%r13), %esi
	shrq      %cl, %r14
	subl      %r15d, %edx
	xorl      %r11d, %r11d
	movl      %r14d, %ecx
	addl      %edx, %ebp
	shrq      $3, %r14
	andl      $7, %ecx
	addl      $3, %ecx
	jmp       .L000010DB
.L0000148D:
	movq      %r14, %r12
	movq      %r13, %r14
	movl      %eax, %ebx
	cmpl      $29, (%r14)
	movl      92(%rsp), %r13d
	movq      72(%rsp), %r15
	je        .L000014EA
.L000014A5:
	cmpw      $0, 656(%r14)
	jne       .L000014F4
.L000014B0:
	movq      $.LC00000028.str1.8, 48(%r15)
	movl      $29, %eax
	movl      $29, (%r14)
	jmp       .L0000019B
.L000014C9:
	movq      72(%rsp), %r15
	movq      %r14, %r12
	movq      %r13, %r14
	movl      92(%rsp), %r13d
	movl      %eax, %ebx
	movq      $.LC00000049.str1.1, 48(%r15)
	movl      $29, (%r14)
.L000014EA:
	movl      $29, %eax
	jmp       .L0000019B
.L000014F4:
	movq      48(%rsp), %rax
	movq      40(%rsp), %r9
	movl      $1, %edi
	movq      56(%rsp), %r8
	movq      80(%rsp), %rcx
	movq      96(%rsp), %rsi
	movl      $9, 112(%r14)
	movq      %rax, 136(%r14)
	movq      %rax, 96(%r14)
	call      inflate_table
.L0000152A:
	testl     %eax, %eax
	je        .L00001547
.L0000152E:
	movq      $.LC00000063.str1.1, 48(%r15)
	movl      $29, %eax
	movl      $29, (%r14)
	jmp       .L0000019B
.L00001547:
	movq      136(%r14), %rax
	movl      128(%r14), %edx
	leaq      116(%r14), %r8
	movq      40(%rsp), %r9
	movq      80(%rsp), %rcx
	movl      $2, %edi
	movl      $6, 116(%r14)
	movq      %rax, 104(%r14)
	movl      124(%r14), %eax
	leaq      144(%r14,%rax,2), %rsi
	call      inflate_table
.L00001585:
	testl     %eax, %eax
	je        .L000001F1
.L0000158D:
	movq      $.LC0000007F.str1.1, 48(%r15)
	movl      $29, %eax
	movl      $29, (%r14)
	jmp       .L0000019B
	.size	inflateBack, .-inflateBack
# ----------------------
.L000015A6:
	.p2align 4
# ----------------------
	.globl	inflateBackEnd
	.type	inflateBackEnd, @function
inflateBackEnd:
	testq     %rdi, %rdi
	pushq     %rbx
	movq      %rdi, %rbx
	je        .L000015E0
.L000015B9:
	movq      56(%rdi), %rsi
	testq     %rsi, %rsi
	je        .L000015E0
.L000015C2:
	movq      72(%rdi), %rax
	testq     %rax, %rax
	je        .L000015E0
.L000015CB:
	movq      80(%rdi), %rdi
	call      *%rax
.L000015D1:
	movq      $0, 56(%rbx)
	xorl      %eax, %eax
	popq      %rbx
	ret       
.L000015DD:
	.p2align 3
.L000015E0:
	movl      $-2, %eax
	popq      %rbx
	ret       
	.size	inflateBackEnd, .-inflateBackEnd
# ----------------------
	.hidden	zcalloc
	.hidden	zcfree
	.hidden	inflate_table
	.hidden	inflate_fast
	.ident	"GCC: (Ubuntu 4.8.4-2ubuntu1~14.04.3) 4.8.4"
	.section	.note.GNU-stack,"",@progbits
