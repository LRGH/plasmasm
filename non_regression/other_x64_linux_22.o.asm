	.file	"inflate.c"
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
	.align 32
.LC00000000:
	.quad	.L000013B6
	.quad	.L0000125B
	.quad	.L0000132A
	.quad	.L0000116E
	.quad	.L000018F2
	.quad	.L0000179F
	.quad	.L000018E8
	.quad	.L00001718
	.quad	.L000016A6
	.quad	.L000008A9
	.quad	.L0000092E
	.quad	.L0000096C
	.quad	.L0000081D
	.quad	.L00000AAE
	.quad	.L00000B2A
	.quad	.L00000B32
	.quad	.L000010BA
	.quad	.L0000155A
	.quad	.L00001485
	.quad	.L00000E54
	.quad	.L00000E5C
	.quad	.L00000BA8
	.quad	.L00000BCA
	.quad	.L00001395
	.quad	.L00000D29
	.quad	.L00001672
	.quad	.L00000F30
	.quad	.L0000102D
	.quad	.L0000165B
	.quad	.L0000139F
	.quad	.L000010AF
	.zero	8
# ----------------------
	.local	order.4297
	.type	order.4297, @object
order.4297:
	.ascii	"\020\000\021\000\022\000\000\000\010\000\007\000\t\000\006\000\n\000\005\000\013\000\004\000\014\000\003\000\r\000\002\000\016\000\001\000\017\000"
	.size	order.4297, 38
# ----------------------
.LC00000126:
	.zero	26
# ----------------------
	.local	distfix.4225
	.type	distfix.4225, @object
distfix.4225:
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
	.size	distfix.4225, 128
# ----------------------
	.local	lenfix.4224
	.type	lenfix.4224, @object
lenfix.4224:
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
	.size	lenfix.4224, 2048
# ----------------------
	.text
	.globl	inflateResetKeep
	.type	inflateResetKeep, @function
inflateResetKeep:
	testq     %rdi, %rdi                               ##  DEAD:rflags
	jne       .L00000010                               ##  DEAD:
.L00000005:
	movl      $-2, %eax                                ##  DEAD:rax
	ret                                                ##  DEAD:
.L0000000B:
	.p2align 3
.L00000010:
	movq      56(%rdi), %rax                           ##  DEAD:rax;rflags
	testq     %rax, %rax                               ##  DEAD:rflags
	je        .L00000005                               ##  DEAD:
.L00000019:
	movl      8(%rax), %edx                            ##  DEAD:rdx;rflags
	movq      $0, 32(%rax)                             ##  DEAD:rflags
	movq      $0, 48(%rdi)                             ##  DEAD:rflags
	movq      $0, 40(%rdi)                             ##  DEAD:rflags
	movq      $0, 16(%rdi)                             ##  DEAD:rflags
	testl     %edx, %edx                               ##  DEAD:rflags
	je        .L00000047                               ##  DEAD:
.L00000040:
	andl      $1, %edx                                 ##  DEAD:rflags
	movq      %rdx, 96(%rdi)                           ##  DEAD:
.L00000047:
	leaq      1360(%rax), %rdx                         ##  DEAD:rdx
	movl      $0, (%rax)                               ##  DEAD:
	movl      $0, 4(%rax)                              ##  DEAD:
	movl      $0, 12(%rax)                             ##  DEAD:
	movl      $32768, 20(%rax)                         ##  DEAD:
	movq      $0, 40(%rax)                             ##  DEAD:
	movq      $0, 72(%rax)                             ##  DEAD:
	movl      $0, 80(%rax)                             ##  DEAD:
	movq      %rdx, 136(%rax)                          ##  DEAD:
	movq      %rdx, 104(%rax)                          ##  DEAD:
	movq      %rdx, 96(%rax)                           ##  DEAD:
	movl      $1, 7136(%rax)                           ##  DEAD:
	movl      $-1, 7140(%rax)                          ##  DEAD:
	xorl      %eax, %eax                               ##  DEAD:rax
	ret                                                ##  DEAD:
	.size	inflateResetKeep, .-inflateResetKeep
# ----------------------
.L000000A6:
	.p2align 4
# ----------------------
	.globl	inflatePrime
	.type	inflatePrime, @function
inflatePrime:
	testq     %rdi, %rdi                               ##  DEAD:rflags
	jne       .L000000C0                               ##  DEAD:
.L000000B5:
	movl      $-2, %eax                                ##  DEAD:rax
	ret                                                ##  DEAD:
.L000000BB:
	.p2align 3
.L000000C0:
	movq      56(%rdi), %rax                           ##  DEAD:rax;rflags
	testq     %rax, %rax                               ##  DEAD:rflags
	je        .L000000B5                               ##  DEAD:
.L000000C9:
	testl     %esi, %esi                               ##  DEAD:rflags
	jns       .L000000E0                               ##  DEAD:
.L000000CD:
	movq      $0, 72(%rax)                             ##  DEAD:
	movl      $0, 80(%rax)                             ##  DEAD:
	xorl      %eax, %eax                               ##  DEAD:rax
	ret                                                ##  DEAD:
.L000000DF:
	.p2align 3
.L000000E0:
	cmpl      $16, %esi                                ##  DEAD:rflags
	jg        .L000000B5                               ##  DEAD:
.L000000E5:
	movl      80(%rax), %r8d                           ##  DEAD:r8;rcx;rflags
	leal      (%rsi,%r8), %ecx                         ##  DEAD:rcx;rflags
	cmpl      $32, %ecx                                ##  DEAD:rflags
	ja        .L000000B5                               ##  DEAD:
.L000000F2:
	movl      %esi, %ecx                               ##  DEAD:rcx;rdi;rflags
	movl      $1, %edi                                 ##  DEAD:rdi;rflags
	addl      %esi, 80(%rax)                           ##  DEAD:rflags
	salq      %cl, %rdi                                ##  DEAD:
	movl      %r8d, %ecx                               ##  DEAD:rcx;rflags
	subl      $1, %edi                                 ##  DEAD:rflags
	andl      %edx, %edi                               ##  DEAD:rflags
	sall      %cl, %edi                                ##  DEAD:
	movslq    %edi, %rdi                               ##  DEAD:rflags
	addq      %rdi, 72(%rax)                           ##  DEAD:rflags
	xorl      %eax, %eax                               ##  DEAD:rax
	ret                                                ##  DEAD:
	.size	inflatePrime, .-inflatePrime
# ----------------------
.L00000113:
	.p2align 4
# ----------------------
	.globl	inflateEnd
	.type	inflateEnd, @function
inflateEnd:
	testq     %rdi, %rdi                               ##  DEAD:rflags
	pushq     %rbx                                     ##  DEAD:
	movq      %rdi, %rbx                               ##  DEAD:rbx
	jne       .L00000130                               ##  DEAD:
.L00000129:
	movl      $-2, %eax                                ##  DEAD:rax;rbx
	popq      %rbx                                     ##  DEAD:rbx
	ret                                                ##  DEAD:
.L00000130:
	movq      56(%rdi), %rsi                           ##  DEAD:rflags;rsi
	testq     %rsi, %rsi                               ##  DEAD:rflags
	je        .L00000129                               ##  DEAD:
.L00000139:
	movq      72(%rdi), %rax                           ##  DEAD:rax;rflags
	testq     %rax, %rax                               ##  DEAD:rflags
	je        .L00000129                               ##  DEAD:
.L00000142:
	movq      64(%rsi), %rdx                           ##  DEAD:rdx;rflags
	testq     %rdx, %rdx                               ##  DEAD:rflags
	je        .L0000015C                               ##  DEAD:
.L0000014B:
	movq      %rdx, %rsi                               ##  DEAD:rsi
	movq      80(%rdi), %rdi                           ##  DEAD:
	call      *%rax                                    ##  DEAD:
.L00000154:
	movq      72(%rbx), %rax                           ##  DEAD:rax;rdi;rsi
	movq      56(%rbx), %rsi                           ##  DEAD:rdi;rsi
.L0000015C:
	movq      80(%rbx), %rdi                           ##  DEAD:rdi
	call      *%rax                                    ##  DEAD:
.L00000162:
	movq      $0, 56(%rbx)                             ##  DEAD:rax
	xorl      %eax, %eax                               ##  DEAD:rax;rbx
	popq      %rbx                                     ##  DEAD:rbx
	ret                                                ##  DEAD:
	.size	inflateEnd, .-inflateEnd
# ----------------------
.L0000016E:
	.p2align 3
# ----------------------
	.globl	inflateGetHeader
	.type	inflateGetHeader, @function
inflateGetHeader:
	testq     %rdi, %rdi                               ##  DEAD:rflags
	jne       .L00000180                               ##  DEAD:
.L00000175:
	movl      $-2, %eax                                ##  DEAD:rax
	ret                                                ##  DEAD:
.L0000017B:
	.p2align 3
.L00000180:
	movq      56(%rdi), %rax                           ##  DEAD:rax;rflags
	testq     %rax, %rax                               ##  DEAD:rflags
	je        .L00000175                               ##  DEAD:
.L00000189:
	testb     $2, 8(%rax)                              ##  DEAD:rflags
	.p2align 3
	je        .L00000175                               ##  DEAD:
.L00000192:
	movq      %rsi, 40(%rax)                           ##  DEAD:
	movl      $0, 72(%rsi)                             ##  DEAD:rax
	xorl      %eax, %eax                               ##  DEAD:rax
	ret                                                ##  DEAD:
	.size	inflateGetHeader, .-inflateGetHeader
# ----------------------
	.globl	inflateSyncPoint
	.type	inflateSyncPoint, @function
inflateSyncPoint:
	testq     %rdi, %rdi                               ##  DEAD:rflags
	jne       .L000001B0                               ##  DEAD:
.L000001A5:
	movl      $-2, %eax                                ##  DEAD:rax
.L000001AA:
	rep; ret                                           ##  DEAD:
.L000001AC:
	.p2align 3
.L000001B0:
	movq      56(%rdi), %rdx                           ##  DEAD:rdx;rflags
	testq     %rdx, %rdx                               ##  DEAD:rflags
	je        .L000001A5                               ##  DEAD:
.L000001B9:
	xorl      %eax, %eax                               ##  DEAD:rax
	cmpl      $13, (%rdx)                              ##  DEAD:rflags
	jne       .L000001AA                               ##  DEAD:
.L000001C0:
	xorl      %eax, %eax                               ##  DEAD:rax
	movl      80(%rdx), %edx                           ##  DEAD:rflags
	testl     %edx, %edx                               ##  DEAD:rflags
	sete      %al                                      ##  DEAD:
	ret                                                ##  DEAD:
	.size	inflateSyncPoint, .-inflateSyncPoint
# ----------------------
.L000001CB:
	.p2align 3
# ----------------------
	.globl	inflateUndermine
	.type	inflateUndermine, @function
inflateUndermine:
	testq     %rdi, %rdi                               ##  DEAD:rflags
	je        .L000001F0                               ##  DEAD:
.L000001D5:
	movq      56(%rdi), %rax                           ##  DEAD:rax;rflags
	testq     %rax, %rax                               ##  DEAD:rflags
	je        .L000001F0                               ##  DEAD:
.L000001DE:
	movl      $1, 7136(%rax)                           ##  DEAD:
	movl      $-3, %eax                                ##  DEAD:rax
	ret                                                ##  DEAD:
.L000001EE:
	.p2align 3
.L000001F0:
	movl      $-2, %eax                                ##  DEAD:rax
	ret                                                ##  DEAD:
	.size	inflateUndermine, .-inflateUndermine
# ----------------------
.L000001F6:
	.p2align 4
# ----------------------
	.globl	inflateMark
	.type	inflateMark, @function
inflateMark:
	testq     %rdi, %rdi                               ##  DEAD:rflags
	jne       .L00000210                               ##  DEAD:
.L00000205:
	movq      $-65536, %rax                            ##  DEAD:rax
	ret                                                ##  DEAD:
.L0000020D:
	.p2align 3
.L00000210:
	movq      56(%rdi), %rdx                           ##  DEAD:rdx;rflags
	testq     %rdx, %rdx                               ##  DEAD:rflags
	je        .L00000205                               ##  DEAD:
.L00000219:
	movl      (%rdx), %ecx                             ##  DEAD:rcx;rflags;rsi
	movl      7140(%rdx), %esi                         ##  DEAD:rflags;rsi
	cmpl      $15, %ecx                                ##  DEAD:rflags
	je        .L00000240                               ##  DEAD:
.L00000226:
	xorl      %eax, %eax                               ##  DEAD:rax
	cmpl      $24, %ecx                                ##  DEAD:rflags
	je        .L00000248                               ##  DEAD:
.L0000022D:
	movslq    %esi, %rdx                               ##  DEAD:rdx
	salq      $16, %rdx                                ##  DEAD:
	addq      %rdx, %rax                               ##  DEAD:rflags
	ret                                                ##  DEAD:
.L00000238:
	.p2align 4
.L00000240:
	movl      84(%rdx), %eax                           ##  DEAD:rax
	jmp       .L0000022D                               ##  DEAD:rdx
.L00000245:
	.p2align 3
.L00000248:
	movl      7144(%rdx), %eax                         ##  DEAD:rax;rflags
	subl      84(%rdx), %eax                           ##  DEAD:rflags
	jmp       .L0000022D                               ##  DEAD:rdx
	.size	inflateMark, .-inflateMark
# ----------------------
.L00000253:
	.p2align 4
# ----------------------
	.globl	inflateCopy
	.type	inflateCopy, @function
inflateCopy:
	movq      %rbx, -40(%rsp)                          ##  DEAD:rflags
	movq      %rbp, -32(%rsp)                          ##  DEAD:rbx;rflags
	movq      %rsi, %rbx                               ##  DEAD:rbp;rbx;rflags
	movq      %r12, -24(%rsp)                          ##  DEAD:rbp;rflags
	movq      %r13, -16(%rsp)                          ##  DEAD:rbp;rflags
	movq      %rdi, %rbp                               ##  DEAD:rbp;rflags
	movq      %r14, -8(%rsp)                           ##  DEAD:rflags
	subq      $40, %rsp                                ##  DEAD:rflags
	testq     %rsi, %rsi                               ##  DEAD:rflags
	jne       .L000002B0                               ##  DEAD:
.L00000288:
	movl      $-2, %eax                                ##  DEAD:r12;r13;r14;rax;rbp;rbx;rflags
.L0000028D:
	movq      (%rsp), %rbx                             ##  DEAD:r12;r13;r14;rbp;rbx;rflags
	movq      8(%rsp), %rbp                            ##  DEAD:r12;r13;r14;rbp;rflags
	movq      16(%rsp), %r12                           ##  DEAD:r12;r13;r14;rflags
	movq      24(%rsp), %r13                           ##  DEAD:r13;r14;rflags
	movq      32(%rsp), %r14                           ##  DEAD:r14;rflags
	addq      $40, %rsp                                ##  DEAD:rflags
	ret                                                ##  DEAD:
.L000002AA:
	.p2align 3
.L000002B0:
	testq     %rdi, %rdi                               ##  DEAD:rflags
	je        .L00000288                               ##  DEAD:
.L000002B5:
	movq      56(%rsi), %r12                           ##  DEAD:r12;rflags
	testq     %r12, %r12                               ##  DEAD:rflags
	je        .L00000288                               ##  DEAD:
.L000002BE:
	movq      64(%rsi), %rax                           ##  DEAD:rax;rflags
	testq     %rax, %rax                               ##  DEAD:rflags
	je        .L00000288                               ##  DEAD:
.L000002C7:
	cmpq      $0, 72(%rsi)                             ##  DEAD:rflags
	je        .L00000288                               ##  DEAD:
.L000002CE:
	movq      80(%rsi), %rdi                           ##  DEAD:rdi;rdx
	movl      $7152, %edx                              ##  DEAD:rdx;rsi
	movl      $1, %esi                                 ##  DEAD:rsi
	call      *%rax                                    ##  DEAD:
.L000002DE:
	movq      %rax, %r13                               ##  DEAD:r13;rflags
	movl      $-4, %eax                                ##  DEAD:rax;rflags
	testq     %r13, %r13                               ##  DEAD:rflags
	je        .L0000028D                               ##  DEAD:
.L000002EB:
	cmpq      $0, 64(%r12)                             ##  DEAD:rflags
	je        .L000003E3                               ##  DEAD:
.L000002F7:
	movl      48(%r12), %ecx                           ##  DEAD:rcx;rdi;rdx;rsi
	movl      $1, %esi                                 ##  DEAD:rdi;rdx;rsi
	movq      80(%rbx), %rdi                           ##  DEAD:rdi;rdx
	movl      $1, %edx                                 ##  DEAD:rdx
	sall      %cl, %esi                                ##  DEAD:
	call      *64(%rbx)                                ##  DEAD:
.L0000030F:
	testq     %rax, %rax                               ##  DEAD:r14;rflags
	movq      %rax, %r14                               ##  DEAD:r14
	je        .L000003CF                               ##  DEAD:
.L0000031B:
	movl      $28, %ecx                                ##  DEAD:rax;rcx;rdi;rdx;rsi
	movq      %rbp, %rdi                               ##  DEAD:rax;rdi;rdx;rsi
	movq      %rbx, %rsi                               ##  DEAD:rax;rdx;rsi
	rep movsl                                          ##  DEAD:rax;rdx
	movq      %r13, %rdi                               ##  DEAD:rax;rdi;rdx;rsi
	movq      %r12, %rsi                               ##  DEAD:rax;rdx;rsi
	leaq      1360(%r12), %rdx                         ##  DEAD:rax;rdx
	movw      $894, %cx                                ##  DEAD:rax
	rep movsq                                          ##  DEAD:rax
	movq      96(%r12), %rax                           ##  DEAD:rax;rflags
	cmpq      %rdx, %rax                               ##  DEAD:rflags
	jb        .L0000037F                               ##  DEAD:
.L00000347:
	leaq      7132(%r12), %rcx                         ##  DEAD:rcx;rflags
	cmpq      %rcx, %rax                               ##  DEAD:rflags
	ja        .L0000037F                               ##  DEAD:
.L00000354:
	subq      %rdx, %rax                               ##  DEAD:rflags
	sarq      $2, %rax                                 ##  DEAD:
	leaq      1360(%r13,%rax,4), %rax                  ##  DEAD:rflags
	movq      %rax, 96(%r13)                           ##  DEAD:rflags
	movq      104(%r12), %rax                          ##  DEAD:rax;rflags
	subq      %rdx, %rax                               ##  DEAD:rflags
	sarq      $2, %rax                                 ##  DEAD:
	leaq      1360(%r13,%rax,4), %rax                  ##  DEAD:rflags
	movq      %rax, 104(%r13)                          ##  DEAD:rflags
.L0000037F:
	movq      136(%r12), %rax                          ##  DEAD:rax;rflags
	subq      %rdx, %rax                               ##  DEAD:rflags
	sarq      $2, %rax                                 ##  DEAD:
	testq     %r14, %r14                               ##  DEAD:rflags
	leaq      1360(%r13,%rax,4), %rax                  ##  DEAD:
	movq      %rax, 136(%r13)                          ##  DEAD:
	je        .L000003C0                               ##  DEAD:
.L000003A2:
	movl      48(%r12), %edx                           ##  DEAD:rax;rcx;rdi;rdx;rsi
	movl      $1, %eax                                 ##  DEAD:rax;rcx;rdi;rsi
	movq      64(%r12), %rsi                           ##  DEAD:rcx;rdi;rsi
	movq      %r14, %rdi                               ##  DEAD:rcx;rdi
	movl      %edx, %ecx                               ##  DEAD:rcx
	sall      %cl, %eax                                ##  DEAD:rdx
	movq      %rax, %rdx                               ##  DEAD:rdx
	call      memcpy@PLT                               ##  DEAD:
.L000003C0:
	movq      %r14, 64(%r13)                           ##  DEAD:r12;rax;rbx
	movq      %r13, 56(%rbp)                           ##  DEAD:r12;r14;rax;rbx
	xorl      %eax, %eax                               ##  DEAD:r12;r13;r14;rax;rbp;rbx
	jmp       .L0000028D                               ##  DEAD:r12;r13;r14;rbp;rbx;rflags
.L000003CF:
	movq      80(%rbx), %rdi                           ##  DEAD:rdi;rsi
	movq      %r13, %rsi                               ##  DEAD:rsi
	call      *72(%rbx)                                ##  DEAD:
.L000003D9:
	movl      $-4, %eax                                ##  DEAD:r12;r13;r14;rax;rbp;rbx;rflags
	jmp       .L0000028D                               ##  DEAD:r12;r13;r14;rbp;rbx;rflags
.L000003E3:
	xorl      %r14d, %r14d                             ##  DEAD:r14;rax;rcx;rdi;rdx;rsi
	jmp       .L0000031B                               ##  DEAD:rax;rcx;rdi;rdx;rsi
	.size	inflateCopy, .-inflateCopy
# ----------------------
.L000003EB:
	.p2align 3
# ----------------------
	.local	updatewindow
	.type	updatewindow, @function
updatewindow:
	movq      %rbp, -24(%rsp)                          ##  DEAD:r8;rflags
	movq      %r12, -16(%rsp)                          ##  DEAD:r8;rbp;rflags
	movq      %rdi, %r8                                ##  DEAD:r12;r8;rbp;rflags
	movq      %rbx, -32(%rsp)                          ##  DEAD:r12;rbp;rflags
	movq      %r13, -8(%rsp)                           ##  DEAD:r12;rbp;rbx;rflags
	subq      $40, %rsp                                ##  DEAD:r12;rbp;rbx;rflags
	movq      56(%rdi), %rbx                           ##  DEAD:r12;rbp;rbx;rflags
	movq      %rsi, %r12                               ##  DEAD:r12;rbp;rdi;rflags
	movl      %edx, %ebp                               ##  DEAD:rbp;rdi;rflags
	movq      64(%rbx), %rdi                           ##  DEAD:rdi;rflags
	testq     %rdi, %rdi                               ##  DEAD:rflags
	je        .L00000538                               ##  DEAD:
.L00000421:
	movl      52(%rbx), %r13d                          ##  DEAD:r13;rflags
	testl     %r13d, %r13d                             ##  DEAD:rflags
	je        .L000004A0                               ##  DEAD:
.L0000042A:
	cmpl      %r13d, %ebp                              ##  DEAD:rflags
	jae       .L000004C8                               ##  DEAD:
.L00000433:
	movl      60(%rbx), %eax                           ##  DEAD:rax;rdx;rflags;rsi
	movl      %ebp, %esi                               ##  DEAD:rdx;rflags;rsi
	subl      %eax, %r13d                              ##  DEAD:rdx;rflags
	cmpl      %ebp, %r13d                              ##  DEAD:rdx;rflags
	cmova     %ebp, %r13d                              ##  DEAD:rdx
	addq      %rax, %rdi                               ##  DEAD:rdx;rflags
	movq      %r12, %rax                               ##  DEAD:rax;rdx;rflags
	subq      %rsi, %rax                               ##  DEAD:rdx;rflags
	movl      %r13d, %edx                              ##  DEAD:rdx;rsi
	movq      %rax, %rsi                               ##  DEAD:rsi
	call      memcpy@PLT                               ##  DEAD:
.L00000456:
	subl      %r13d, %ebp                              ##  DEAD:rflags
	jne       .L00000510                               ##  DEAD:
.L0000045F:
	movl      60(%rbx), %eax                           ##  DEAD:rax;rdx;rflags
	movl      52(%rbx), %edx                           ##  DEAD:rdx;rflags
	addl      %r13d, %eax                              ##  DEAD:rflags
	cmpl      %edx, %eax                               ##  DEAD:rflags
	movl      %eax, 60(%rbx)                           ##  DEAD:
	je        .L000004F0                               ##  DEAD:
.L00000473:
	movl      56(%rbx), %ecx                           ##  DEAD:rax;rcx
	xorl      %eax, %eax                               ##  DEAD:rax
	cmpl      %edx, %ecx                               ##  DEAD:rflags
	jae       .L00000483                               ##  DEAD:
.L0000047C:
	addl      %ecx, %r13d                              ##  DEAD:r12;rbp;rflags
	movl      %r13d, 56(%rbx)                          ##  DEAD:r12;rbp;rflags
.L00000483:
	movq      8(%rsp), %rbx                            ##  DEAD:r12;r13;rbp;rbx;rflags
	movq      16(%rsp), %rbp                           ##  DEAD:r12;r13;rbp;rflags
	movq      24(%rsp), %r12                           ##  DEAD:r12;r13;rflags
	movq      32(%rsp), %r13                           ##  DEAD:r13;rflags
	addq      $40, %rsp                                ##  DEAD:rflags
	ret                                                ##  DEAD:
.L0000049C:
	.p2align 3
.L000004A0:
	movl      48(%rbx), %ecx                           ##  DEAD:rcx;rdi
	movb      $1, %r13b                                ##  DEAD:rdi
	movl      $0, 60(%rbx)                             ##  DEAD:rdi
	movl      $0, 56(%rbx)                             ##  DEAD:rdi
	movq      64(%rbx), %rdi                           ##  DEAD:rdi
	sall      %cl, %r13d                               ##  DEAD:
	cmpl      %r13d, %ebp                              ##  DEAD:rflags
	movl      %r13d, 52(%rbx)                          ##  DEAD:
	jb        .L00000433                               ##  DEAD:
.L000004C8:
	movl      %r13d, %edx                              ##  DEAD:rdx;rflags;rsi
	movq      %r12, %rsi                               ##  DEAD:rflags;rsi
	subq      %rdx, %rsi                               ##  DEAD:rflags
	call      memcpy@PLT                               ##  DEAD:
.L000004D6:
	movl      52(%rbx), %eax                           ##  DEAD:r12;r13;rax;rbp
	movl      $0, 60(%rbx)                             ##  DEAD:r12;r13;rbp
	movl      %eax, 56(%rbx)                           ##  DEAD:r12;r13;rbp
	xorl      %eax, %eax                               ##  DEAD:r12;r13;rax;rbp;rbx
	jmp       .L00000483                               ##  DEAD:r12;r13;rbp;rbx;rflags
.L000004E7:
	.p2align 4
.L000004F0:
	movl      56(%rbx), %ecx                           ##  DEAD:rax;rcx
	xorl      %eax, %eax                               ##  DEAD:rax
	movl      $0, 60(%rbx)                             ##  DEAD:rflags
	cmpl      %edx, %ecx                               ##  DEAD:rflags
	jb        .L0000047C                               ##  DEAD:
.L00000504:
	jmp       .L00000483                               ##  DEAD:r12;r13;rbp;rbx;rflags
.L00000509:
	.p2align 4
.L00000510:
	movq      64(%rbx), %rdi                           ##  DEAD:rdi;rdx;rflags;rsi
	movl      %ebp, %edx                               ##  DEAD:rdx;rflags;rsi
	movq      %r12, %rsi                               ##  DEAD:rflags;rsi
	subq      %rdx, %rsi                               ##  DEAD:rflags
	call      memcpy@PLT                               ##  DEAD:
.L00000521:
	movl      52(%rbx), %eax                           ##  DEAD:r12;r13;rax
	movl      %ebp, 60(%rbx)                           ##  DEAD:r12;r13
	movl      %eax, 56(%rbx)                           ##  DEAD:r12;r13;rbp
	xorl      %eax, %eax                               ##  DEAD:r12;r13;rax;rbp;rbx
	jmp       .L00000483                               ##  DEAD:r12;r13;rbp;rbx;rflags
.L00000531:
	.p2align 3
.L00000538:
	movl      48(%rbx), %ecx                           ##  DEAD:rcx;rdi;rdx;rsi
	movl      $1, %esi                                 ##  DEAD:rdi;rdx;rsi
	movq      80(%r8), %rdi                            ##  DEAD:rdi;rdx
	movl      $1, %edx                                 ##  DEAD:rdx
	sall      %cl, %esi                                ##  DEAD:
	call      *64(%r8)                                 ##  DEAD:
.L0000054F:
	movq      %rax, %rdi                               ##  DEAD:rdi;rflags
	movq      %rax, 64(%rbx)                           ##  DEAD:rflags
	movl      $1, %eax                                 ##  DEAD:rax;rflags
	testq     %rdi, %rdi                               ##  DEAD:rflags
	jne       .L00000421                               ##  DEAD:
.L00000564:
	jmp       .L00000483                               ##  DEAD:r12;r13;rbp;rbx;rflags
	.size	updatewindow, .-updatewindow
# ----------------------
.L00000569:
	.p2align 4
# ----------------------
	.globl	inflateGetDictionary
	.type	inflateGetDictionary, @function
inflateGetDictionary:
	movq      %rbx, -24(%rsp)                          ##  DEAD:rflags
	movq      %rbp, -16(%rsp)                          ##  DEAD:rbx;rflags
	movq      %rdx, %rbx                               ##  DEAD:rbp;rbx;rflags
	movq      %r12, -8(%rsp)                           ##  DEAD:rbp;rflags
	subq      $24, %rsp                                ##  DEAD:rbp;rflags
	testq     %rdi, %rdi                               ##  DEAD:rbp;rflags
	movq      %rsi, %rbp                               ##  DEAD:rbp
	jne       .L000005B0                               ##  DEAD:
.L0000058E:
	movl      $-2, %eax                                ##  DEAD:r12;rax;rbp;rbx;rflags
.L00000593:
	movq      (%rsp), %rbx                             ##  DEAD:r12;rbp;rbx;rflags
	movq      8(%rsp), %rbp                            ##  DEAD:r12;rbp;rflags
	movq      16(%rsp), %r12                           ##  DEAD:r12;rflags
	addq      $24, %rsp                                ##  DEAD:rflags
	ret                                                ##  DEAD:
.L000005A6:
	.p2align 4
.L000005B0:
	movq      56(%rdi), %r12                           ##  DEAD:r12;rflags
	testq     %r12, %r12                               ##  DEAD:rflags
	je        .L0000058E                               ##  DEAD:
.L000005B9:
	testq     %rsi, %rsi                               ##  DEAD:rdx;rflags
	movl      56(%r12), %edx                           ##  DEAD:rdx
	jne       .L000005D8                               ##  DEAD:
.L000005C3:
	xorl      %eax, %eax                               ##  DEAD:rax
	testq     %rbx, %rbx                               ##  DEAD:rflags
	je        .L00000593                               ##  DEAD:
.L000005CA:
	movl      56(%r12), %eax                           ##  DEAD:rax;rbp
	movl      %eax, (%rbx)                             ##  DEAD:r12;rbp
	xorl      %eax, %eax                               ##  DEAD:r12;rax;rbp;rbx
	jmp       .L00000593                               ##  DEAD:r12;rbp;rbx;rflags
.L000005D5:
	.p2align 3
.L000005D8:
	testl     %edx, %edx                               ##  DEAD:rflags
	je        .L000005C3                               ##  DEAD:
.L000005DC:
	movl      60(%r12), %esi                           ##  DEAD:rdi;rflags;rsi
	movq      %rbp, %rdi                               ##  DEAD:rdi;rflags
	subl      %esi, %edx                               ##  DEAD:rflags
	addq      64(%r12), %rsi                           ##  DEAD:rflags
	call      memcpy@PLT                               ##  DEAD:
.L000005F0:
	movl      60(%r12), %edx                           ##  DEAD:rdi;rdx;rflags;rsi
	movl      56(%r12), %edi                           ##  DEAD:rdi;rflags;rsi
	movq      64(%r12), %rsi                           ##  DEAD:rflags;rsi
	subq      %rdx, %rdi                               ##  DEAD:rflags
	leaq      (%rbp,%rdi), %rdi                        ##  DEAD:
	call      memcpy@PLT                               ##  DEAD:
.L0000060C:
	jmp       .L000005C3                               ##  DEAD:rax
	.size	inflateGetDictionary, .-inflateGetDictionary
# ----------------------
.L0000060E:
	.p2align 3
# ----------------------
	.globl	inflateSetDictionary
	.type	inflateSetDictionary, @function
inflateSetDictionary:
	movq      %rbx, -32(%rsp)                          ##  DEAD:rflags
	movq      %rbp, -24(%rsp)                          ##  DEAD:rbx;rflags
	movq      %rdi, %rbx                               ##  DEAD:rbp;rbx;rflags
	movq      %r12, -16(%rsp)                          ##  DEAD:rbp;rflags
	movq      %r13, -8(%rsp)                           ##  DEAD:r12;rbp;rflags
	subq      $40, %rsp                                ##  DEAD:r12;rbp;rflags
	testq     %rdi, %rdi                               ##  DEAD:r12;rbp;rflags
	movq      %rsi, %r12                               ##  DEAD:r12;rbp
	movl      %edx, %ebp                               ##  DEAD:rbp
	jne       .L00000658                               ##  DEAD:
.L00000635:
	movl      $-2, %eax                                ##  DEAD:r12;r13;rax;rbp;rbx;rflags
.L0000063A:
	movq      8(%rsp), %rbx                            ##  DEAD:r12;r13;rbp;rbx;rflags
	movq      16(%rsp), %rbp                           ##  DEAD:r12;r13;rbp;rflags
	movq      24(%rsp), %r12                           ##  DEAD:r12;r13;rflags
	movq      32(%rsp), %r13                           ##  DEAD:r13;rflags
	addq      $40, %rsp                                ##  DEAD:rflags
	ret                                                ##  DEAD:
.L00000653:
	.p2align 3
.L00000658:
	movq      56(%rdi), %r13                           ##  DEAD:r13;rflags
	testq     %r13, %r13                               ##  DEAD:rflags
	je        .L00000635                               ##  DEAD:
.L00000661:
	movl      8(%r13), %ecx                            ##  DEAD:rcx;rflags
	testl     %ecx, %ecx                               ##  DEAD:rflags
	jne       .L00000690                               ##  DEAD:
.L00000669:
	cmpl      $10, (%r13)                              ##  DEAD:rflags
	je        .L00000697                               ##  DEAD:
.L00000670:
	movl      %ebp, %esi                               ##  DEAD:r8;rdi;rdx;rflags;rsi
	movl      %ebp, %edx                               ##  DEAD:r8;rdi;rdx;rflags
	movq      %rbx, %rdi                               ##  DEAD:r8;rdi;rflags
	leaq      (%r12,%rsi), %rsi                        ##  DEAD:r8;rflags
	call      updatewindow                             ##  DEAD:r8;rflags
.L00000680:
	testl     %eax, %eax                               ##  DEAD:rflags
	jne       .L000006C3                               ##  DEAD:
.L00000684:
	movl      $1, 12(%r13)                             ##  DEAD:r12;rax;rbp;rbx
	xorl      %eax, %eax                               ##  DEAD:r12;r13;rax;rbp;rbx
	jmp       .L0000063A                               ##  DEAD:r12;r13;rbp;rbx;rflags
.L00000690:
	cmpl      $10, (%r13)                              ##  DEAD:rflags
	jne       .L00000635                               ##  DEAD:
.L00000697:
	xorl      %edx, %edx                               ##  DEAD:rdi;rdx;rsi
	xorl      %esi, %esi                               ##  DEAD:rdi;rsi
	xorl      %edi, %edi                               ##  DEAD:rdi
	call      adler32@PLT                              ##  DEAD:
.L000006A2:
	movl      %ebp, %edx                               ##  DEAD:rdi;rdx;rsi
	movq      %r12, %rsi                               ##  DEAD:rdi;rsi
	movq      %rax, %rdi                               ##  DEAD:rdi
	call      adler32@PLT                              ##  DEAD:
.L000006AF:
	movq      %rax, %rdx                               ##  DEAD:rdx;rflags
	cmpq      24(%r13), %rdx                           ##  DEAD:rax;rflags
	movl      $-3, %eax                                ##  DEAD:rax
	jne       .L0000063A                               ##  DEAD:
.L000006C1:
	jmp       .L00000670                               ##  DEAD:r8;rdi;rdx;rflags;rsi
.L000006C3:
	movl      $30, (%r13)                              ##  DEAD:r12;rax;rbp;rbx;rflags
	movl      $-4, %eax                                ##  DEAD:r12;r13;rax;rbp;rbx;rflags
	jmp       .L0000063A                               ##  DEAD:r12;r13;rbp;rbx;rflags
	.size	inflateSetDictionary, .-inflateSetDictionary
# ----------------------
.L000006D5:
	.p2align 4
# ----------------------
	.globl	inflate
	.type	inflate, @function
inflate:
	movq      %rbx, -48(%rsp)                          ##  DEAD:rflags
	movq      %rbp, -40(%rsp)                          ##  DEAD:rbx;rflags
	movq      %rdi, %rbx                               ##  DEAD:rbp;rbx;rflags
	movq      %r12, -32(%rsp)                          ##  DEAD:rbp;rflags
	movq      %r13, -24(%rsp)                          ##  DEAD:rbp;rflags
	movl      %esi, %ebp                               ##  DEAD:rbp;rflags
	movq      %r14, -16(%rsp)                          ##  DEAD:rflags
	movq      %r15, -8(%rsp)                           ##  DEAD:rflags
	subq      $216, %rsp                               ##  DEAD:rflags
	testq     %rdi, %rdi                               ##  DEAD:rflags
	jne       .L00000750                               ##  DEAD:
.L0000070F:
	movl      $-2, %r14d                               ##  DEAD:r12;r13;r14;r15;rax;rbp;rbx;rflags
.L00000715:
	movl      %r14d, %eax                              ##  DEAD:r12;r13;r15;rax;rbp;rbx;rflags
	movq      168(%rsp), %rbx                          ##  DEAD:r12;r13;r14;r15;rbp;rbx;rflags
	movq      176(%rsp), %rbp                          ##  DEAD:r12;r13;r14;r15;rbp;rflags
	movq      184(%rsp), %r12                          ##  DEAD:r12;r13;r14;r15;rflags
	movq      192(%rsp), %r13                          ##  DEAD:r13;r14;r15;rflags
	movq      200(%rsp), %r14                          ##  DEAD:r14;r15;rflags
	movq      208(%rsp), %r15                          ##  DEAD:r15;rflags
	addq      $216, %rsp                               ##  DEAD:rflags
	ret                                                ##  DEAD:
.L00000750:
	movq      56(%rdi), %r12                           ##  DEAD:r12;rflags
	testq     %r12, %r12                               ##  DEAD:rflags
	je        .L0000070F                               ##  DEAD:
.L00000759:
	movq      24(%rdi), %rdx                           ##  DEAD:rdx;rflags
	testq     %rdx, %rdx                               ##  DEAD:rflags
	movq      %rdx, 48(%rsp)                           ##  DEAD:
	je        .L0000070F                               ##  DEAD:
.L00000767:
	movq      (%rdi), %rcx                             ##  DEAD:r15;rcx;rflags
	testq     %rcx, %rcx                               ##  DEAD:r15;rflags
	movq      %rcx, %r15                               ##  DEAD:r15
	je        .L00001975                               ##  DEAD:
.L00000776:
	movl      (%r12), %eax                             ##  DEAD:rax;rflags
	cmpl      $11, %eax                                ##  DEAD:rflags
	je        .L00001925                               ##  DEAD:
.L00000783:
	movl      32(%rbx), %edx                           ##  DEAD:r10;r11;r13;r14;r8;r9;rcx;rdi;rdx;rsi
	movl      8(%rbx), %ecx                            ##  DEAD:r10;r11;r13;r14;r8;r9;rcx;rdi;rsi
	leaq      784(%r12), %r9                           ##  DEAD:r10;r11;r13;r14;r8;r9;rdi;rsi
	leal      -5(%rbp), %esi                           ##  DEAD:r10;r11;r13;r14;r8;rdi;rsi
	leaq      1360(%r12), %rdi                         ##  DEAD:r10;r11;r13;r14;r8;rdi
	movq      72(%r12), %r11                           ##  DEAD:r10;r11;r13;r14;r8
	movq      %r9, 80(%rsp)                            ##  DEAD:r10;r13;r14;r8
	movl      80(%r12), %r13d                          ##  DEAD:r10;r13;r14;r8;r9
	xorl      %r14d, %r14d                             ##  DEAD:r10;r14;r8;r9
	movl      %edx, 44(%rsp)                           ##  DEAD:r10;r8;r9;rflags
	movl      %ecx, 60(%rsp)                           ##  DEAD:r10;r8;r9;rdx;rflags
	leaq      112(%r12), %rdx                          ##  DEAD:r10;r8;r9;rcx;rdx;rflags
	movl      60(%rsp), %r10d                          ##  DEAD:r10;r8;r9;rcx;rflags
	movl      44(%rsp), %r9d                           ##  DEAD:r8;r9;rcx;rflags
	leaq      136(%r12), %rcx                          ##  DEAD:r8;rcx;rflags
	movl      %esi, 92(%rsp)                           ##  DEAD:r8;rflags
	movq      %rdi, 64(%rsp)                           ##  DEAD:r8;rflags;rsi
	leaq      144(%r12), %rsi                          ##  DEAD:r8;rdi;rflags;rsi
	leaq      116(%r12), %rdi                          ##  DEAD:r8;rdi;rflags
	movl      %r14d, %r8d                              ##  DEAD:r8;rflags
	movq      %rdx, 104(%rsp)                          ##  DEAD:r14;rflags
	movq      %rbx, %r14                               ##  DEAD:r14;rflags
	movq      %rcx, 72(%rsp)                           ##  DEAD:rbx;rflags
	movl      %r10d, %ebx                              ##  DEAD:rbx;rflags
	movq      %rsi, 96(%rsp)                           ##  DEAD:r10;rflags
	movl      %ebp, %r10d                              ##  DEAD:r10;rflags
	movq      %rdi, 112(%rsp)                          ##  DEAD:rbp;rflags
	movl      %r9d, 56(%rsp)                           ##  DEAD:rbp;rflags
	movq      %r11, %rbp                               ##  DEAD:rbp;rflags
.L0000080B:
	cmpl      $30, %eax                                ##  DEAD:rflags
	ja        .L0000070F                               ##  DEAD:
.L00000814:
	movl      %eax, %eax                               ##  DEAD:
	jmp       *.LC00000000(,%rax,8)                    ##  DEAD: ##  DST:.L0000081D;.L000008A9;.L0000092E;.L0000096C;.L00000AAE;.L00000B2A;.L00000B32;.L00000BA8;.L00000BCA;.L00000D29;.L00000E54;.L00000E5C;.L00000F30;.L0000102D;.L000010AF;.L000010BA;.L0000116E;.L0000125B;.L0000132A;.L00001395;.L0000139F;.L000013B6;.L00001485;.L0000155A;.L0000165B;.L00001672;.L000016A6;.L00001718;.L0000179F;.L000018E8;.L000018F2
.L0000081D:
	movl      4(%r12), %r9d                            ##  DEAD:r9;rflags
	testl     %r9d, %r9d                               ##  DEAD:rflags
	jne       .L00002092                               ##  DEAD:
.L0000082B:
	cmpl      $2, %r13d                                ##  DEAD:rflags
	.p2align 3
	ja        .L00000852                               ##  DEAD:
.L00000832:
	testl     %ebx, %ebx                               ##  DEAD:rflags
	je        .L00000980                               ##  DEAD:
.L0000083A:
	movzbl    (%r15), %eax                             ##  DEAD:rax;rcx;rdx;rflags
	movl      %r13d, %ecx                              ##  DEAD:rcx;rdx;rflags
	subl      $1, %ebx                                 ##  DEAD:rdx;rflags
	addq      $1, %r15                                 ##  DEAD:rdx;rflags
	addl      $8, %r13d                                ##  DEAD:rdx;rflags
	salq      %cl, %rax                                ##  DEAD:rdx
	addq      %rax, %rbp                               ##  DEAD:rcx;rdx;rflags
.L00000852:
	movl      %ebp, %eax                               ##  DEAD:rax;rcx;rdx;rflags
	leal      -1(%r13), %ecx                           ##  DEAD:rcx;rdx;rflags
	andl      $1, %eax                                 ##  DEAD:rdx;rflags
	movl      %eax, 4(%r12)                            ##  DEAD:rdx
	movq      %rbp, %rax                               ##  DEAD:rax;rdx
	shrq      $1, %rax                                 ##  DEAD:rdx
	movl      %eax, %edx                               ##  DEAD:rdx;rflags
	andl      $3, %edx                                 ##  DEAD:rflags
	cmpl      $2, %edx                                 ##  DEAD:rflags
	je        .L00001E76                               ##  DEAD:
.L00000874:
	cmpl      $3, %edx                                 ##  DEAD:rflags
	je        .L00001E61                               ##  DEAD:
.L0000087D:
	cmpl      $1, %edx                                 ##  DEAD:rflags
	je        .L00001E83                               ##  DEAD:
.L00000886:
	movl      $13, (%r12)                              ##  DEAD:r13;rbp
.L0000088E:
	movq      %rax, %rbp                               ##  DEAD:r13;rbp
	leal      -2(%rcx), %r13d                          ##  DEAD:r13;rax
	shrq      $2, %rbp                                 ##  DEAD:rax
	.p2align 4
.L000008A0:
	movl      (%r12), %eax                             ##  DEAD:rax;rflags
	jmp       .L0000080B                               ##  DEAD:rflags
.L000008A9:
	cmpl      $31, %r13d                               ##  DEAD:rflags
	ja        .L000008E1                               ##  DEAD:
.L000008AF:
	testl     %ebx, %ebx                               ##  DEAD:rflags
	je        .L00000980                               ##  DEAD:
.L000008B7:
	movl      %r13d, %ecx                              ##  DEAD:rax;rcx;rflags
	jmp       .L000008C8                               ##  DEAD:rax;rflags
.L000008BC:
	.p2align 3
.L000008C0:
	testl     %ebx, %ebx                               ##  DEAD:rflags
	je        .L00001918                               ##  DEAD:
.L000008C8:
	movzbl    (%r15), %eax                             ##  DEAD:rax;rflags
	subl      $1, %ebx                                 ##  DEAD:rflags
	addq      $1, %r15                                 ##  DEAD:rflags
	salq      %cl, %rax                                ##  DEAD:
	addl      $8, %ecx                                 ##  DEAD:rflags
	addq      %rax, %rbp                               ##  DEAD:rflags
	cmpl      $31, %ecx                                ##  DEAD:rflags
	jbe       .L000008C0                               ##  DEAD:
.L000008E1:
	movq      %rbp, %rax                               ##  DEAD:r11;r13;rax;rdx
	movq      %rbp, %rdx                               ##  DEAD:r11;r13;rdx
	movl      $10, (%r12)                              ##  DEAD:r11;r13
	shrq      $8, %rax                                 ##  DEAD:r11;r13
	shrq      $24, %rdx                                ##  DEAD:r11;r13
	xorl      %r13d, %r13d                             ##  DEAD:r11;r13
	andl      $65280, %eax                             ##  DEAD:r11;rflags
	andl      $255, %edx                               ##  DEAD:r11;rflags
	leaq      (%rax,%rdx), %rdx                        ##  DEAD:r11
	movq      %rbp, %rax                               ##  DEAD:r11;rax
	salq      $24, %rbp                                ##  DEAD:r11
	andl      $65280, %eax                             ##  DEAD:r11;rflags
	andl      $-1, %ebp                                ##  DEAD:r11;rflags
	salq      $8, %rax                                 ##  DEAD:r11
	leaq      (%rdx,%rax), %rax                        ##  DEAD:r11;rflags
	addq      %rbp, %rax                               ##  DEAD:r11;rflags
	xorl      %ebp, %ebp                               ##  DEAD:r11;rbp
	movq      %rax, 24(%r12)                           ##  DEAD:r11;rflags
	movq      %rax, 96(%r14)                           ##  DEAD:r11;rflags
.L0000092E:
	movl      12(%r12), %r11d                          ##  DEAD:r11;rflags
	testl     %r11d, %r11d                             ##  DEAD:rflags
	je        .L000022E8                               ##  DEAD:
.L0000093C:
	xorl      %edx, %edx                               ##  DEAD:rdi;rdx;rsi
	xorl      %esi, %esi                               ##  DEAD:rdi;rsi
	xorl      %edi, %edi                               ##  DEAD:rdi
	movl      %r8d, 16(%rsp)                           ##  DEAD:
	movl      %r10d, 8(%rsp)                           ##  DEAD:
	call      adler32@PLT                              ##  DEAD:
.L00000951:
	movl      8(%rsp), %r10d                           ##  DEAD:r10;r8;rflags
	movl      16(%rsp), %r8d                           ##  DEAD:r8;rflags
	movq      %rax, 24(%r12)                           ##  DEAD:rflags
	movl      $11, (%r12)                              ##  DEAD:rflags
	movq      %rax, 96(%r14)                           ##  DEAD:rflags
.L0000096C:
	cmpl      $1, 92(%rsp)                             ##  DEAD:rflags
	ja        .L0000081D                               ##  DEAD:
.L00000977:
	.p2align 4
.L00000980:
	movq      %rbp, %r11                               ##  DEAD:r11;r9;rax;rflags
	movl      %r10d, %ebp                              ##  DEAD:r9;rax;rbp;rflags
	movl      %ebx, %r10d                              ##  DEAD:r10;r9;rax;rflags
	movq      %r14, %rbx                               ##  DEAD:r9;rax;rbx;rflags
	movl      %r8d, %r14d                              ##  DEAD:r14;r9;rax;rflags
.L0000098F:
	movq      48(%rsp), %r9                            ##  DEAD:r9;rax;rflags
	movl      44(%rsp), %eax                           ##  DEAD:rax;rflags
	movl      %r10d, 8(%rbx)                           ##  DEAD:rflags
	movq      %r15, (%rbx)                             ##  DEAD:rflags
	movq      %r11, 72(%r12)                           ##  DEAD:rflags
	movl      %eax, 32(%rbx)                           ##  DEAD:rflags
	movq      %r9, 24(%rbx)                            ##  DEAD:rflags
	movl      52(%r12), %r9d                           ##  DEAD:r9;rflags
	movl      %r13d, 80(%r12)                          ##  DEAD:rflags
	testl     %r9d, %r9d                               ##  DEAD:rflags
	jne       .L0000193C                               ##  DEAD:
.L000009BE:
	movl      32(%rbx), %r13d                          ##  DEAD:r13;rflags
	cmpl      56(%rsp), %r13d                          ##  DEAD:rflags
	je        .L000009FF                               ##  DEAD:
.L000009C9:
	movl      (%r12), %eax                             ##  DEAD:rax;rflags
	cmpl      $28, %eax                                ##  DEAD:rflags
	ja        .L000009FF                               ##  DEAD:
.L000009D2:
	cmpl      $4, %ebp                                 ##  DEAD:rflags
	jne       .L000009E0                               ##  DEAD:
.L000009D7:
	cmpl      $25, %eax                                ##  DEAD:rflags
	ja        .L000009FF                               ##  DEAD:
.L000009DC:
	.p2align 3
.L000009E0:
	movl      56(%rsp), %edx                           ##  DEAD:r8;rdi;rdx;rflags;rsi
	movq      24(%rbx), %rsi                           ##  DEAD:r8;rdi;rflags;rsi
	movq      %rbx, %rdi                               ##  DEAD:r8;rdi;rflags
	subl      %r13d, %edx                              ##  DEAD:r8;rflags
	call      updatewindow                             ##  DEAD:r8;rflags
.L000009F3:
	testl     %eax, %eax                               ##  DEAD:rflags
	jne       .L000010A7                               ##  DEAD:
.L000009FB:
	movl      32(%rbx), %r13d                          ##  DEAD:r13;r15;rax;rdx;rflags;rsi
.L000009FF:
	movl      60(%rsp), %r15d                          ##  DEAD:r15;rax;rdx;rflags;rsi
	movl      56(%rsp), %edx                           ##  DEAD:rax;rdx;rflags;rsi
	subl      8(%rbx), %r15d                           ##  DEAD:rax;rflags;rsi
	subl      %r13d, %edx                              ##  DEAD:rax;rflags;rsi
	movl      %edx, %esi                               ##  DEAD:r13;rax;rflags;rsi
	addq      %rsi, 40(%rbx)                           ##  DEAD:r13;rax;rflags
	movl      %edx, %r13d                              ##  DEAD:r13;rax;rflags
	movl      %r15d, %eax                              ##  DEAD:rax;rflags
	addq      %rax, 16(%rbx)                           ##  DEAD:rflags
	addq      %rsi, 32(%r12)                           ##  DEAD:rflags
	testl     %edx, %edx                               ##  DEAD:rflags
	je        .L00000A59                               ##  DEAD:
.L00000A28:
	movl      8(%r12), %r8d                            ##  DEAD:r8;rflags
	testl     %r8d, %r8d                               ##  DEAD:rflags
	je        .L00000A59                               ##  DEAD:
.L00000A32:
	movl      16(%r12), %edi                           ##  DEAD:rdi;rflags
	testl     %edi, %edi                               ##  DEAD:rflags
	je        .L0000194F                               ##  DEAD:
.L00000A3F:
	negq      %rsi                                     ##  DEAD:rdi;rflags
	addq      24(%rbx), %rsi                           ##  DEAD:rdi;rflags
	movq      24(%r12), %rdi                           ##  DEAD:rdi
	call      crc32@PLT                                ##  DEAD:
.L00000A50:
	movq      %rax, 24(%r12)                           ##  DEAD:rdx;rflags
	movq      %rax, 96(%rbx)                           ##  DEAD:rdx;rflags
.L00000A59:
	cmpl      $1, 4(%r12)                              ##  DEAD:rdx;rflags
	movl      (%r12), %edx                             ##  DEAD:rdx
	sbbl      %eax, %eax                               ##  DEAD:
	notl      %eax                                     ##  DEAD:rflags
	andl      $64, %eax                                ##  DEAD:rflags
	addl      80(%r12), %eax                           ##  DEAD:rflags
	cmpl      $11, %edx                                ##  DEAD:rflags
	je        .L00001945                               ##  DEAD:
.L00000A78:
	cmpl      $14, %edx                                ##  DEAD:rflags
	jne       .L00001965                               ##  DEAD:
.L00000A81:
	movl      $256, %edx                               ##  DEAD:rdx;rflags
.L00000A86:
	addl      %edx, %eax                               ##  DEAD:rflags
	testl     %r13d, %r13d                             ##  DEAD:rflags
	movl      %eax, 88(%rbx)                           ##  DEAD:
	jne       .L00001900                               ##  DEAD:
.L00000A94:
	testl     %r15d, %r15d                             ##  DEAD:rflags
	jne       .L00001900                               ##  DEAD:
.L00000A9D:
	testl     %r14d, %r14d                             ##  DEAD:r12;r13;r15;rax;rbp;rbx;rflags
	movl      $-5, %eax                                ##  DEAD:r12;r13;r15;rax;rbp;rbx
	cmove     %eax, %r14d                              ##  DEAD:r12;r13;r15;rbp;rbx
	jmp       .L00000715                               ##  DEAD:r12;r13;r15;rax;rbp;rbx;rflags
.L00000AAE:
	movl      %r13d, %ecx                              ##  DEAD:rcx;rflags
	andl      $-8, %r13d                               ##  DEAD:rflags
	andl      $7, %ecx                                 ##  DEAD:rflags
	shrq      %cl, %rbp                                ##  DEAD:
	cmpl      $31, %r13d                               ##  DEAD:rflags
	ja        .L00000AF4                               ##  DEAD:
.L00000AC1:
	testl     %ebx, %ebx                               ##  DEAD:rflags
	je        .L00000980                               ##  DEAD:
.L00000AC9:
	movl      %r13d, %ecx                              ##  DEAD:rax;rcx;rflags
	jmp       .L00000AD8                               ##  DEAD:rax;rflags
.L00000ACE:
	.p2align 3
.L00000AD0:
	testl     %ebx, %ebx                               ##  DEAD:rflags
	je        .L00001918                               ##  DEAD:
.L00000AD8:
	movzbl    (%r15), %eax                             ##  DEAD:rax;rflags
	subl      $1, %ebx                                 ##  DEAD:rflags
	addq      $1, %r15                                 ##  DEAD:rflags
	salq      %cl, %rax                                ##  DEAD:
	addl      $8, %ecx                                 ##  DEAD:rflags
	addq      %rax, %rbp                               ##  DEAD:rflags
	cmpl      $31, %ecx                                ##  DEAD:rflags
	jbe       .L00000AD0                               ##  DEAD:
.L00000AF1:
	movl      %ecx, %r13d                              ##  DEAD:r13;rax;rdx
.L00000AF4:
	movq      %rbp, %rax                               ##  DEAD:rax;rdx
	movzwq    %bp, %rdx                                ##  DEAD:rdx
	shrq      $16, %rax                                ##  DEAD:
	xorq      $65535, %rax                             ##  DEAD:
	cmpq      %rax, %rdx                               ##  DEAD:rflags
	jne       .L00002257                               ##  DEAD:
.L00000B0E:
	cmpl      $6, %r10d                                ##  DEAD:rflags
	movl      %edx, 84(%r12)                           ##  DEAD:
	movl      $14, (%r12)                              ##  DEAD:
	je        .L000024E5                               ##  DEAD:
.L00000B25:
	xorl      %r13d, %r13d                             ##  DEAD:r13;rax;rbp
	xorl      %ebp, %ebp                               ##  DEAD:rax;rbp
.L00000B2A:
	movl      $15, (%r12)                              ##  DEAD:rax;rflags
.L00000B32:
	movl      84(%r12), %eax                           ##  DEAD:rax;rflags
	testl     %eax, %eax                               ##  DEAD:rflags
	je        .L000022DB                               ##  DEAD:
.L00000B3F:
	cmpl      %eax, 44(%rsp)                           ##  DEAD:rcx;rflags
	movl      %ebx, %ecx                               ##  DEAD:rcx
	cmovbe    44(%rsp), %eax                           ##  DEAD:
	cmpl      %ebx, %eax                               ##  DEAD:rflags
	cmovbe    %eax, %ecx                               ##  DEAD:
	testl     %ecx, %ecx                               ##  DEAD:rflags
	je        .L00000980                               ##  DEAD:
.L00000B57:
	movq      48(%rsp), %rdi                           ##  DEAD:r9;rdi;rdx;rsi
	movl      %ecx, %r9d                               ##  DEAD:r9;rdx;rsi
	movq      %r15, %rsi                               ##  DEAD:rdx;rsi
	movq      %r9, %rdx                                ##  DEAD:rdx
	movl      %ecx, 24(%rsp)                           ##  DEAD:
	movl      %r8d, 16(%rsp)                           ##  DEAD:
	movq      %r9, 32(%rsp)                            ##  DEAD:
	movl      %r10d, 8(%rsp)                           ##  DEAD:
	call      memcpy@PLT                               ##  DEAD:
.L00000B7D:
	movl      24(%rsp), %ecx                           ##  DEAD:r10;r8;r9;rax;rcx;rflags
	movq      32(%rsp), %r9                            ##  DEAD:r10;r8;r9;rax;rflags
	subl      %ecx, 44(%rsp)                           ##  DEAD:r10;r8;rax;rflags
	addq      %r9, 48(%rsp)                            ##  DEAD:r10;r8;rax;rflags
	subl      %ecx, %ebx                               ##  DEAD:r10;r8;rax;rflags
	addq      %r9, %r15                                ##  DEAD:r10;r8;rax;rflags
	subl      %ecx, 84(%r12)                           ##  DEAD:r10;r8;rax;rflags
	movl      16(%rsp), %r8d                           ##  DEAD:r10;r8;rax;rflags
	movl      8(%rsp), %r10d                           ##  DEAD:r10;rax;rflags
	jmp       .L000008A0                               ##  DEAD:rax;rflags
.L00000BA8:
	movl      92(%r12), %edx                           ##  DEAD:rdx;rflags
.L00000BAD:
	testl     %edx, %edx                               ##  DEAD:rflags
	jne       .L00001B49                               ##  DEAD:
.L00000BB5:
	movl      84(%r12), %eax                           ##  DEAD:r11;r9;rax;rcx;rdi;rdx;rsi
.L00000BBA:
	movl      %eax, 7144(%r12)                         ##  DEAD:r11;r9;rcx;rdi;rdx;rsi
	movl      $22, (%r12)                              ##  DEAD:r11;r9;rax;rcx;rdi;rdx;rsi
.L00000BCA:
	movl      116(%r12), %ecx                          ##  DEAD:r11;r9;rax;rcx;rdi;rdx;rsi
	movl      $1, %r11d                                ##  DEAD:r11;r9;rax;rdi;rdx;rsi
	movq      104(%r12), %rdi                          ##  DEAD:r9;rax;rdi;rdx;rsi
	movl      %ebp, %eax                               ##  DEAD:r9;rax;rdx;rsi
	movl      %ebp, %edx                               ##  DEAD:r9;rdx;rsi
	sall      %cl, %r11d                               ##  DEAD:r9;rsi
	subl      $1, %r11d                                ##  DEAD:r9;rcx;rflags;rsi
	andl      %r11d, %eax                              ##  DEAD:r9;rcx;rflags;rsi
	leaq      (%rdi,%rax,4), %rax                      ##  DEAD:r9;rcx;rflags;rsi
	movzbl    1(%rax), %ecx                            ##  DEAD:r9;rcx;rflags;rsi
	movzbl    (%rax), %esi                             ##  DEAD:r9;rflags;rsi
	movzwl    2(%rax), %r9d                            ##  DEAD:r9;rflags
	movzbl    %cl, %eax                                ##  DEAD:rax;rflags
	cmpl      %eax, %r13d                              ##  DEAD:rflags
	jae       .L00000C55                               ##  DEAD:
.L00000C00:
	testl     %ebx, %ebx                               ##  DEAD:rflags
	je        .L00000980                               ##  DEAD:
.L00000C08:
	movl      %r13d, %ecx                              ##  DEAD:r9;rax;rcx;rdx;rflags;rsi
	jmp       .L00000C18                               ##  DEAD:r13;r9;rax;rdx;rflags;rsi
.L00000C0D:
	.p2align 3
.L00000C10:
	testl     %ebx, %ebx                               ##  DEAD:rflags
	je        .L00001918                               ##  DEAD:
.L00000C18:
	movzbl    (%r15), %eax                             ##  DEAD:r13;r9;rax;rdx;rflags;rsi
	subl      $1, %ebx                                 ##  DEAD:r13;r9;rdx;rflags;rsi
	addq      $1, %r15                                 ##  DEAD:r13;r9;rdx;rflags;rsi
	salq      %cl, %rax                                ##  DEAD:r13;r9;rdx;rsi
	addl      $8, %ecx                                 ##  DEAD:r13;r9;rdx;rflags;rsi
	addq      %rax, %rbp                               ##  DEAD:r13;r9;rdx;rflags;rsi
	movl      %ebp, %eax                               ##  DEAD:r13;r9;rax;rdx;rflags;rsi
	movl      %ebp, %edx                               ##  DEAD:r13;r9;rdx;rflags;rsi
	andl      %r11d, %eax                              ##  DEAD:r13;r9;rflags;rsi
	leaq      (%rdi,%rax,4), %rax                      ##  DEAD:r13;r9;rflags;rsi
	movzbl    1(%rax), %r13d                           ##  DEAD:r13;r9;rflags;rsi
	movzbl    (%rax), %esi                             ##  DEAD:r9;rflags;rsi
	movzwl    2(%rax), %r9d                            ##  DEAD:r9;rflags
	movzbl    %r13b, %eax                              ##  DEAD:rax;rflags
	cmpl      %ecx, %eax                               ##  DEAD:rflags
	ja        .L00000C10                               ##  DEAD:
.L00000C4C:
	movl      %ecx, %r11d                              ##  DEAD:r11;rflags
	movl      %r13d, %ecx                              ##  DEAD:rcx;rflags
	movl      %r11d, %r13d                             ##  DEAD:r13;rflags
.L00000C55:
	movzbl    %sil, %r11d                              ##  DEAD:r11;rflags
	movl      %eax, 132(%rsp)                          ##  DEAD:rflags
	movl      %r11d, 120(%rsp)                         ##  DEAD:rflags
	testb     $-16, 120(%rsp)                          ##  DEAD:rflags
	je        .L00001BB3                               ##  DEAD:
.L00000C70:
	movl      7140(%r12), %r11d                        ##  DEAD:r11;rdx;rflags
	movzbl    %cl, %edx                                ##  DEAD:rdx;rflags
.L00000C7B:
	movl      %edx, %ecx                               ##  DEAD:rcx;rflags
	subl      132(%rsp), %r13d                         ##  DEAD:rflags
	addl      %r11d, %edx                              ##  DEAD:rflags
	shrq      %cl, %rbp                                ##  DEAD:
	testb     $64, 120(%rsp)                           ##  DEAD:rflags
	movl      %edx, 7140(%r12)                         ##  DEAD:
	jne       .L00002207                               ##  DEAD:
.L00000C9E:
	movzwl    %r9w, %r9d                               ##  DEAD:rflags
	andl      $15, %esi                                ##  DEAD:rflags
	movl      $23, (%r12)                              ##  DEAD:rflags
	movl      %r9d, 88(%r12)                           ##  DEAD:rflags
	movl      %esi, 92(%r12)                           ##  DEAD:rflags
.L00000CB7:
	testl     %esi, %esi                               ##  DEAD:rflags
	je        .L00000D21                               ##  DEAD:
.L00000CBB:
	cmpl      %esi, %r13d                              ##  DEAD:rflags
	jae       .L00000CFB                               ##  DEAD:
.L00000CC0:
	testl     %ebx, %ebx                               ##  DEAD:rflags
	je        .L00000980                               ##  DEAD:
.L00000CC8:
	movl      %r13d, %ecx                              ##  DEAD:rax;rcx;rflags
	.p2align 3
	jmp       .L00000CE0                               ##  DEAD:rax;rflags
.L00000CD2:
	.p2align 3
.L00000CD8:
	testl     %ebx, %ebx                               ##  DEAD:rflags
	je        .L00001918                               ##  DEAD:
.L00000CE0:
	movzbl    (%r15), %eax                             ##  DEAD:rax;rflags
	subl      $1, %ebx                                 ##  DEAD:rflags
	addq      $1, %r15                                 ##  DEAD:rflags
	salq      %cl, %rax                                ##  DEAD:
	addl      $8, %ecx                                 ##  DEAD:rflags
	addq      %rax, %rbp                               ##  DEAD:rflags
	cmpl      %esi, %ecx                               ##  DEAD:rflags
	jb        .L00000CD8                               ##  DEAD:
.L00000CF8:
	movl      %ecx, %r13d                              ##  DEAD:r13;rax;rdi
.L00000CFB:
	movl      %esi, %ecx                               ##  DEAD:rax;rcx;rdi
	movl      $1, %eax                                 ##  DEAD:rax;rdi
	sall      %cl, %eax                                ##  DEAD:rdi
	movl      92(%r12), %ecx                           ##  DEAD:rcx;rdi;rflags
	addl      %ecx, 7140(%r12)                         ##  DEAD:rdi;rflags
	subl      $1, %eax                                 ##  DEAD:rdi;rflags
	andl      %ebp, %eax                               ##  DEAD:rdi;rflags
	addl      %eax, 88(%r12)                           ##  DEAD:rdi;rflags
	shrq      %cl, %rbp                                ##  DEAD:rdi
	subl      %ecx, %r13d                              ##  DEAD:rdi;rflags
.L00000D21:
	movl      $24, (%r12)                              ##  DEAD:rdi;rflags
.L00000D29:
	movl      44(%rsp), %edi                           ##  DEAD:rdi;rflags
	testl     %edi, %edi                               ##  DEAD:rflags
	je        .L00000980                               ##  DEAD:
.L00000D35:
	movl      56(%rsp), %ecx                           ##  DEAD:rax;rcx;rflags
	subl      44(%rsp), %ecx                           ##  DEAD:rax;rflags
	movl      88(%r12), %eax                           ##  DEAD:rax;rflags
	cmpl      %eax, %ecx                               ##  DEAD:rflags
	jae       .L000019C6                               ##  DEAD:
.L00000D4A:
	subl      %ecx, %eax                               ##  DEAD:rflags
	cmpl      56(%r12), %eax                           ##  DEAD:rcx;rflags
	movl      %eax, %ecx                               ##  DEAD:rcx
	jbe       .L00001AA9                               ##  DEAD:
.L00000D59:
	cmpl      $0, 7136(%r12)                           ##  DEAD:rflags
	je        .L00001AA9                               ##  DEAD:
.L00000D68:
	movq      $.LC0000013A.str1.1, 48(%r14)            ##  DEAD:rax;rflags
	movl      $29, (%r12)                              ##  DEAD:rax;rflags
	jmp       .L000008A0                               ##  DEAD:rax;rflags
.L00000D7D:
	cmpl      $29, (%r12)                              ##  DEAD:rflags
	je        .L000008A0                               ##  DEAD:
.L00000D88:
	cmpw      $0, 656(%r12)                            ##  DEAD:rflags
	je        .L00002526                               ##  DEAD:
.L00000D98:
	movq      64(%rsp), %rdi                           ##  DEAD:r8;r9;rcx;rdi;rdx;rsi
	movq      104(%rsp), %r8                           ##  DEAD:r8;r9;rcx;rdx;rsi
	movl      %r11d, %edx                              ##  DEAD:r9;rcx;rdx;rsi
	movq      80(%rsp), %r9                            ##  DEAD:r9;rcx;rsi
	movq      72(%rsp), %rcx                           ##  DEAD:rcx;rsi
	movq      96(%rsp), %rsi                           ##  DEAD:rsi
	movl      $9, 112(%r12)                            ##  DEAD:
	movq      %rdi, 136(%r12)                          ##  DEAD:
	movq      %rdi, 96(%r12)                           ##  DEAD:
	movl      $1, %edi                                 ##  DEAD:rdi
	movl      %r10d, 8(%rsp)                           ##  DEAD:
	call      inflate_table@PLT                        ##  DEAD:
.L00000DD9:
	testl     %eax, %eax                               ##  DEAD:r10;r8;rflags
	movl      %eax, %r8d                               ##  DEAD:r10;r8
	movl      8(%rsp), %r10d                           ##  DEAD:r10
	jne       .L00002511                               ##  DEAD:
.L00000DE9:
	movq      136(%r12), %rax                          ##  DEAD:r8;r9;rax;rcx;rdi;rdx;rsi
	movq      112(%rsp), %r8                           ##  DEAD:r8;r9;rcx;rdi;rdx;rsi
	movl      $2, %edi                                 ##  DEAD:r9;rcx;rdi;rdx;rsi
	movl      128(%r12), %edx                          ##  DEAD:r9;rcx;rdx;rsi
	movq      80(%rsp), %r9                            ##  DEAD:r9;rcx;rsi
	movq      72(%rsp), %rcx                           ##  DEAD:rcx;rsi
	movl      $6, 116(%r12)                            ##  DEAD:rsi
	movq      %rax, 104(%r12)                          ##  DEAD:rsi
	movl      124(%r12), %eax                          ##  DEAD:rax;rsi
	movl      %r10d, 8(%rsp)                           ##  DEAD:rsi
	leaq      144(%r12,%rax,2), %rsi                   ##  DEAD:rsi
	call      inflate_table@PLT                        ##  DEAD:
.L00000E32:
	testl     %eax, %eax                               ##  DEAD:r10;r8;rflags
	movl      %eax, %r8d                               ##  DEAD:r10;r8
	movl      8(%rsp), %r10d                           ##  DEAD:r10
	jne       .L000024FC                               ##  DEAD:
.L00000E42:
	cmpl      $6, %r10d                                ##  DEAD:rflags
	movl      $19, (%r12)                              ##  DEAD:
	je        .L00000980                               ##  DEAD:
.L00000E54:
	movl      $20, (%r12)                              ##  DEAD:rflags
.L00000E5C:
	cmpl      $5, %ebx                                 ##  DEAD:rflags
	ja        .L00002393                               ##  DEAD:
.L00000E65:
	movl      112(%r12), %ecx                          ##  DEAD:r11;r9;rax;rcx;rdi;rdx;rsi
	movl      $1, %r11d                                ##  DEAD:r11;r9;rax;rdi;rdx;rsi
	movq      96(%r12), %rdi                           ##  DEAD:r9;rax;rdi;rdx;rsi
	movl      %ebp, %eax                               ##  DEAD:r9;rax;rdx;rsi
	movl      $0, 7140(%r12)                           ##  DEAD:r9;rdx;rsi
	movl      %ebp, %edx                               ##  DEAD:r9;rdx;rsi
	sall      %cl, %r11d                               ##  DEAD:r9;rsi
	subl      $1, %r11d                                ##  DEAD:r9;rcx;rflags;rsi
	andl      %r11d, %eax                              ##  DEAD:r9;rcx;rflags;rsi
	leaq      (%rdi,%rax,4), %rax                      ##  DEAD:r9;rcx;rflags;rsi
	movzbl    1(%rax), %ecx                            ##  DEAD:r9;rcx;rflags;rsi
	movzbl    (%rax), %esi                             ##  DEAD:r9;rflags;rsi
	movzwl    2(%rax), %r9d                            ##  DEAD:r9;rflags
	movzbl    %cl, %eax                                ##  DEAD:rax;rflags
	cmpl      %eax, %r13d                              ##  DEAD:rflags
	jae       .L00000EFD                               ##  DEAD:
.L00000EA7:
	testl     %ebx, %ebx                               ##  DEAD:rflags
	je        .L00000980                               ##  DEAD:
.L00000EAF:
	movl      %r13d, %ecx                              ##  DEAD:r9;rax;rcx;rdx;rflags;rsi
	jmp       .L00000EC0                               ##  DEAD:r13;r9;rax;rdx;rflags;rsi
.L00000EB4:
	.p2align 3
.L00000EB8:
	testl     %ebx, %ebx                               ##  DEAD:rflags
	je        .L00001918                               ##  DEAD:
.L00000EC0:
	movzbl    (%r15), %eax                             ##  DEAD:r13;r9;rax;rdx;rflags;rsi
	subl      $1, %ebx                                 ##  DEAD:r13;r9;rdx;rflags;rsi
	addq      $1, %r15                                 ##  DEAD:r13;r9;rdx;rflags;rsi
	salq      %cl, %rax                                ##  DEAD:r13;r9;rdx;rsi
	addl      $8, %ecx                                 ##  DEAD:r13;r9;rdx;rflags;rsi
	addq      %rax, %rbp                               ##  DEAD:r13;r9;rdx;rflags;rsi
	movl      %ebp, %eax                               ##  DEAD:r13;r9;rax;rdx;rflags;rsi
	movl      %ebp, %edx                               ##  DEAD:r13;r9;rdx;rflags;rsi
	andl      %r11d, %eax                              ##  DEAD:r13;r9;rflags;rsi
	leaq      (%rdi,%rax,4), %rax                      ##  DEAD:r13;r9;rflags;rsi
	movzbl    1(%rax), %r13d                           ##  DEAD:r13;r9;rflags;rsi
	movzbl    (%rax), %esi                             ##  DEAD:r9;rflags;rsi
	movzwl    2(%rax), %r9d                            ##  DEAD:r9;rflags
	movzbl    %r13b, %eax                              ##  DEAD:rax;rflags
	cmpl      %ecx, %eax                               ##  DEAD:rflags
	ja        .L00000EB8                               ##  DEAD:
.L00000EF4:
	movl      %ecx, %r11d                              ##  DEAD:r11;rflags
	movl      %r13d, %ecx                              ##  DEAD:rcx;rflags
	movl      %r11d, %r13d                             ##  DEAD:r13;rflags
.L00000EFD:
	testb     %sil, %sil                               ##  DEAD:rflags
	jne       .L00001D28                               ##  DEAD:
.L00000F06:
	movzbl    %cl, %ecx                                ##  DEAD:rflags
	movzwl    %r9w, %r9d                               ##  DEAD:rflags
	subl      %eax, %r13d                              ##  DEAD:rflags
	shrq      %cl, %rbp                                ##  DEAD:rax
	movl      %ecx, 7140(%r12)                         ##  DEAD:rax;rflags
	movl      %r9d, 84(%r12)                           ##  DEAD:rax;rflags
.L00000F20:
	movl      $25, (%r12)                              ##  DEAD:rax;rflags
	jmp       .L000008A0                               ##  DEAD:rax;rflags
.L00000F2D:
	.p2align 3
.L00000F30:
	movl      8(%r12), %edx                            ##  DEAD:rdx;rflags
	testl     %edx, %edx                               ##  DEAD:rflags
	je        .L00001025                               ##  DEAD:
.L00000F3D:
	cmpl      $31, %r13d                               ##  DEAD:rflags
	ja        .L00000F76                               ##  DEAD:
.L00000F43:
	testl     %ebx, %ebx                               ##  DEAD:rflags
	je        .L00000980                               ##  DEAD:
.L00000F4B:
	movl      %r13d, %ecx                              ##  DEAD:rax;rcx;rflags
	.p2align 3
	jmp       .L00000F5A                               ##  DEAD:rax;rflags
.L00000F52:
	testl     %ebx, %ebx                               ##  DEAD:rflags
	je        .L00001918                               ##  DEAD:
.L00000F5A:
	movzbl    (%r15), %eax                             ##  DEAD:rax;rflags
	subl      $1, %ebx                                 ##  DEAD:rflags
	addq      $1, %r15                                 ##  DEAD:rflags
	salq      %cl, %rax                                ##  DEAD:
	addl      $8, %ecx                                 ##  DEAD:rflags
	addq      %rax, %rbp                               ##  DEAD:rflags
	cmpl      $31, %ecx                                ##  DEAD:rflags
	jbe       .L00000F52                               ##  DEAD:
.L00000F73:
	movl      %ecx, %r13d                              ##  DEAD:r13;rdx;rflags;rsi
.L00000F76:
	movl      56(%rsp), %edx                           ##  DEAD:rdx;rflags;rsi
	subl      44(%rsp), %edx                           ##  DEAD:rflags;rsi
	movl      %edx, %esi                               ##  DEAD:rflags;rsi
	addq      %rsi, 40(%r14)                           ##  DEAD:rflags
	addq      %rsi, 32(%r12)                           ##  DEAD:rflags
	testl     %edx, %edx                               ##  DEAD:rflags
	je        .L00000FCB                               ##  DEAD:
.L00000F8D:
	cmpl      $0, 16(%r12)                             ##  DEAD:rflags
	je        .L00002229                               ##  DEAD:
.L00000F99:
	movq      48(%rsp), %rax                           ##  DEAD:rax;rdi;rflags
	movq      24(%r12), %rdi                           ##  DEAD:rdi;rflags
	movl      %r8d, 16(%rsp)                           ##  DEAD:rflags
	movl      %r10d, 8(%rsp)                           ##  DEAD:rflags
	subq      %rsi, %rax                               ##  DEAD:rflags
	movq      %rax, %rsi                               ##  DEAD:rsi
	call      crc32@PLT                                ##  DEAD:
.L00000FB8:
	movl      16(%rsp), %r8d                           ##  DEAD:r10;r8;rflags
	movl      8(%rsp), %r10d                           ##  DEAD:r10;rflags
.L00000FC2:
	movq      %rax, 24(%r12)                           ##  DEAD:rflags
	movq      %rax, 96(%r14)                           ##  DEAD:rflags
.L00000FCB:
	cmpl      $0, 16(%r12)                             ##  DEAD:rax;rflags
	movq      %rbp, %rax                               ##  DEAD:rax
	jne       .L0000100D                               ##  DEAD:
.L00000FD6:
	movq      %rbp, %rdx                               ##  DEAD:rdx
	shrq      $8, %rax                                 ##  DEAD:
	shrq      $24, %rdx                                ##  DEAD:
	andl      $65280, %eax                             ##  DEAD:rflags
	andl      $255, %edx                               ##  DEAD:rflags
	leaq      (%rax,%rdx), %rdx                        ##  DEAD:rflags
	movq      %rbp, %rax                               ##  DEAD:rax;rflags
	andl      $65280, %eax                             ##  DEAD:rflags
	salq      $8, %rax                                 ##  DEAD:
	addq      %rax, %rdx                               ##  DEAD:rflags
	movq      %rbp, %rax                               ##  DEAD:rax
	salq      $24, %rax                                ##  DEAD:
	andl      $-1, %eax                                ##  DEAD:rflags
	leaq      (%rdx,%rax), %rax                        ##  DEAD:rflags
.L0000100D:
	cmpq      24(%r12), %rax                           ##  DEAD:rflags
	jne       .L0000232D                               ##  DEAD:
.L00001018:
	movl      44(%rsp), %edi                           ##  DEAD:r13;rax;rbp;rdi
	xorl      %r13d, %r13d                             ##  DEAD:r13;rax;rbp
	xorl      %ebp, %ebp                               ##  DEAD:rax;rbp
	movl      %edi, 56(%rsp)                           ##  DEAD:rax;rflags
.L00001025:
	movl      $27, (%r12)                              ##  DEAD:rax;rflags
.L0000102D:
	movl      8(%r12), %eax                            ##  DEAD:rax;rflags
	testl     %eax, %eax                               ##  DEAD:rflags
	je        .L00002374                               ##  DEAD:
.L0000103A:
	movl      16(%r12), %r11d                          ##  DEAD:r11;rflags
	testl     %r11d, %r11d                             ##  DEAD:rflags
	je        .L00002374                               ##  DEAD:
.L00001048:
	cmpl      $31, %r13d                               ##  DEAD:rflags
	ja        .L00001084                               ##  DEAD:
.L0000104E:
	testl     %ebx, %ebx                               ##  DEAD:rflags
	je        .L00000980                               ##  DEAD:
.L00001056:
	movl      %r13d, %ecx                              ##  DEAD:rax;rcx;rflags
	jmp       .L00001068                               ##  DEAD:rax;rflags
.L0000105B:
	.p2align 3
.L00001060:
	testl     %ebx, %ebx                               ##  DEAD:rflags
	je        .L00001918                               ##  DEAD:
.L00001068:
	movzbl    (%r15), %eax                             ##  DEAD:rax;rflags
	subl      $1, %ebx                                 ##  DEAD:rflags
	addq      $1, %r15                                 ##  DEAD:rflags
	salq      %cl, %rax                                ##  DEAD:
	addl      $8, %ecx                                 ##  DEAD:rflags
	addq      %rax, %rbp                               ##  DEAD:rflags
	cmpl      $31, %ecx                                ##  DEAD:rflags
	jbe       .L00001060                               ##  DEAD:
.L00001081:
	movl      %ecx, %r13d                              ##  DEAD:r13;rax;rflags
.L00001084:
	movl      32(%r12), %eax                           ##  DEAD:rax;rflags
	cmpq      %rbp, %rax                               ##  DEAD:rflags
	je        .L0000242F                               ##  DEAD:
.L00001092:
	movq      $.LC0000016D.str1.1, 48(%r14)            ##  DEAD:rax;rflags
	movl      $29, (%r12)                              ##  DEAD:rax;rflags
	jmp       .L000008A0                               ##  DEAD:rax;rflags
.L000010A7:
	movl      $30, (%r12)                              ##  DEAD:r13;r14;r15;rax;rbp;rbx;rflags
.L000010AF:
	movl      $-4, %r14d                               ##  DEAD:r12;r13;r14;r15;rax;rbp;rbx;rflags
	jmp       .L00000715                               ##  DEAD:r12;r13;r15;rax;rbp;rbx;rflags
.L000010BA:
	cmpl      $13, %r13d                               ##  DEAD:rflags
	ja        .L000010FC                               ##  DEAD:
.L000010C0:
	testl     %ebx, %ebx                               ##  DEAD:rflags
	je        .L00000980                               ##  DEAD:
.L000010C8:
	movl      %r13d, %ecx                              ##  DEAD:rax;rcx;rflags
	.p2align 3
	jmp       .L000010E0                               ##  DEAD:rax;rflags
.L000010D2:
	.p2align 3
.L000010D8:
	testl     %ebx, %ebx                               ##  DEAD:rflags
	je        .L00001918                               ##  DEAD:
.L000010E0:
	movzbl    (%r15), %eax                             ##  DEAD:rax;rflags
	subl      $1, %ebx                                 ##  DEAD:rflags
	addq      $1, %r15                                 ##  DEAD:rflags
	salq      %cl, %rax                                ##  DEAD:
	addl      $8, %ecx                                 ##  DEAD:rflags
	addq      %rax, %rbp                               ##  DEAD:rflags
	cmpl      $13, %ecx                                ##  DEAD:rflags
	jbe       .L000010D8                               ##  DEAD:
.L000010F9:
	movl      %ecx, %r13d                              ##  DEAD:r13;rax;rdx;rflags
.L000010FC:
	movl      %ebp, %edx                               ##  DEAD:rax;rcx;rdx;rflags
	movq      %rbp, %rax                               ##  DEAD:rax;rcx;rflags
	movq      %rbp, %rcx                               ##  DEAD:rcx;rflags
	andl      $31, %edx                                ##  DEAD:rflags
	shrq      $5, %rax                                 ##  DEAD:
	shrq      $10, %rcx                                ##  DEAD:
	addl      $257, %edx                               ##  DEAD:rflags
	andl      $31, %eax                                ##  DEAD:rflags
	andl      $15, %ecx                                ##  DEAD:rflags
	addl      $1, %eax                                 ##  DEAD:rflags
	addl      $4, %ecx                                 ##  DEAD:rflags
	shrq      $14, %rbp                                ##  DEAD:
	subl      $14, %r13d                               ##  DEAD:rflags
	cmpl      $286, %edx                               ##  DEAD:rflags
	movl      %edx, 124(%r12)                          ##  DEAD:
	movl      %eax, 128(%r12)                          ##  DEAD:
	movl      %ecx, 120(%r12)                          ##  DEAD:
	ja        .L000021F2                               ##  DEAD:
.L00001147:
	cmpl      $30, %eax                                ##  DEAD:rflags
	ja        .L000021F2                               ##  DEAD:
.L00001150:
	movl      $0, 132(%r12)                            ##  DEAD:rax;rcx
	movl      $17, (%r12)                              ##  DEAD:rax;rcx
	xorl      %eax, %eax                               ##  DEAD:rax;rcx
	movl      %r13d, %ecx                              ##  DEAD:rcx;rflags
	jmp       .L0000156C                               ##  DEAD:rflags
.L0000116E:
	cmpl      $15, %r13d                               ##  DEAD:rflags
	ja        .L000011A9                               ##  DEAD:
.L00001174:
	testl     %ebx, %ebx                               ##  DEAD:rflags
	je        .L00000980                               ##  DEAD:
.L0000117C:
	movl      %r13d, %ecx                              ##  DEAD:rax;rcx;rflags
	.p2align 3
	jmp       .L00001190                               ##  DEAD:rax;rflags
.L00001182:
	.p2align 3
.L00001188:
	testl     %ebx, %ebx                               ##  DEAD:rflags
	je        .L00001918                               ##  DEAD:
.L00001190:
	movzbl    (%r15), %eax                             ##  DEAD:rax;rflags
	subl      $1, %ebx                                 ##  DEAD:rflags
	addq      $1, %r15                                 ##  DEAD:rflags
	salq      %cl, %rax                                ##  DEAD:
	addl      $8, %ecx                                 ##  DEAD:rflags
	addq      %rax, %rbp                               ##  DEAD:rflags
	cmpl      $15, %ecx                                ##  DEAD:rflags
	jbe       .L00001188                               ##  DEAD:
.L000011A9:
	movq      40(%r12), %rax                           ##  DEAD:rax;rflags
	testq     %rax, %rax                               ##  DEAD:rflags
	je        .L000011C8                               ##  DEAD:
.L000011B3:
	movl      %ebp, %edx                               ##  DEAD:rdx;rflags
	andl      $255, %edx                               ##  DEAD:rflags
	movl      %edx, 16(%rax)                           ##  DEAD:
	movq      %rbp, %rdx                               ##  DEAD:rdx
	shrq      $8, %rdx                                 ##  DEAD:
	movl      %edx, 20(%rax)                           ##  DEAD:rflags
.L000011C8:
	movl      16(%r12), %eax                           ##  DEAD:rax;rflags
	testb     $2, %ah                                  ##  DEAD:rflags
	jne       .L00001EEA                               ##  DEAD:
.L000011D6:
	movl      $4, (%r12)                               ##  DEAD:r13;rbp
	xorl      %r13d, %r13d                             ##  DEAD:r13;rbp
	xorl      %ebp, %ebp                               ##  DEAD:rbp
.L000011E3:
	testb     $4, %ah                                  ##  DEAD:rflags
	je        .L00001B2E                               ##  DEAD:
.L000011EC:
	cmpl      $15, %r13d                               ##  DEAD:rflags
	ja        .L00001229                               ##  DEAD:
.L000011F2:
	testl     %ebx, %ebx                               ##  DEAD:rflags
	je        .L00000980                               ##  DEAD:
.L000011FA:
	movl      %r13d, %ecx                              ##  DEAD:rcx;rdx;rflags
	.p2align 3
	jmp       .L00001210                               ##  DEAD:rdx;rflags
.L00001202:
	.p2align 3
.L00001208:
	testl     %ebx, %ebx                               ##  DEAD:rflags
	je        .L00001918                               ##  DEAD:
.L00001210:
	movzbl    (%r15), %edx                             ##  DEAD:rdx;rflags
	subl      $1, %ebx                                 ##  DEAD:rflags
	addq      $1, %r15                                 ##  DEAD:rflags
	salq      %cl, %rdx                                ##  DEAD:
	addl      $8, %ecx                                 ##  DEAD:rflags
	addq      %rdx, %rbp                               ##  DEAD:rflags
	cmpl      $15, %ecx                                ##  DEAD:rflags
	jbe       .L00001208                               ##  DEAD:
.L00001229:
	movq      40(%r12), %rdx                           ##  DEAD:rdx;rflags
	movl      %ebp, 84(%r12)                           ##  DEAD:rflags
	testq     %rdx, %rdx                               ##  DEAD:rflags
	je        .L00001240                               ##  DEAD:
.L00001238:
	movl      %ebp, 32(%rdx)                           ##  DEAD:rax;rflags
	movl      16(%r12), %eax                           ##  DEAD:rax;rflags
.L00001240:
	testb     $2, %ah                                  ##  DEAD:rflags
	jne       .L0000219F                               ##  DEAD:
.L00001249:
	xorl      %r13d, %r13d                             ##  DEAD:r13;rbp
	xorl      %ebp, %ebp                               ##  DEAD:rbp
.L0000124E:
	movl      $5, (%r12)                               ##  DEAD:rflags
	jmp       .L000017A4                               ##  DEAD:rflags
.L0000125B:
	cmpl      $15, %r13d                               ##  DEAD:rflags
	ja        .L0000129C                               ##  DEAD:
.L00001261:
	testl     %ebx, %ebx                               ##  DEAD:rflags
	je        .L00000980                               ##  DEAD:
.L00001269:
	movl      %r13d, %ecx                              ##  DEAD:rax;rcx;rflags
	.p2align 3
	jmp       .L00001280                               ##  DEAD:rax;rflags
.L00001272:
	.p2align 3
.L00001278:
	testl     %ebx, %ebx                               ##  DEAD:rflags
	je        .L00001918                               ##  DEAD:
.L00001280:
	movzbl    (%r15), %eax                             ##  DEAD:rax;rflags
	subl      $1, %ebx                                 ##  DEAD:rflags
	addq      $1, %r15                                 ##  DEAD:rflags
	salq      %cl, %rax                                ##  DEAD:
	addl      $8, %ecx                                 ##  DEAD:rflags
	addq      %rax, %rbp                               ##  DEAD:rflags
	cmpl      $15, %ecx                                ##  DEAD:rflags
	jbe       .L00001278                               ##  DEAD:
.L00001299:
	movl      %ecx, %r13d                              ##  DEAD:r13;rax;rflags
.L0000129C:
	cmpb      $8, %bpl                                 ##  DEAD:rax;rflags
	movl      %ebp, %eax                               ##  DEAD:rax
	movl      %ebp, 16(%r12)                           ##  DEAD:
	jne       .L00001470                               ##  DEAD:
.L000012AD:
	testw     $-8192, %ax                              ##  DEAD:rflags
	jne       .L00002318                               ##  DEAD:
.L000012B7:
	movq      40(%r12), %rdx                           ##  DEAD:rdx;rflags
	testq     %rdx, %rdx                               ##  DEAD:rflags
	je        .L000012D2                               ##  DEAD:
.L000012C1:
	movq      %rbp, %rax                               ##  DEAD:rax
	shrq      $8, %rax                                 ##  DEAD:
	andl      $1, %eax                                 ##  DEAD:rflags
	movl      %eax, (%rdx)                             ##  DEAD:rflags
	movl      16(%r12), %eax                           ##  DEAD:rax;rflags
.L000012D2:
	testb     $2, %ah                                  ##  DEAD:rflags
	je        .L0000131B                               ##  DEAD:
.L000012D7:
	movb      %bpl, 144(%rsp)                          ##  DEAD:rdi;rdx;rsi
	shrq      $8, %rbp                                 ##  DEAD:rdi;rdx;rsi
	leaq      144(%rsp), %rsi                          ##  DEAD:rdi;rdx;rsi
	movb      %bpl, 145(%rsp)                          ##  DEAD:rdi;rdx
	movq      24(%r12), %rdi                           ##  DEAD:rdi;rdx
	movl      $2, %edx                                 ##  DEAD:rdx
	movl      %r8d, 16(%rsp)                           ##  DEAD:
	movl      %r10d, 8(%rsp)                           ##  DEAD:
	call      crc32@PLT                                ##  DEAD:
.L0000130C:
	movl      8(%rsp), %r10d                           ##  DEAD:r10;r13;r8;rbp
	movl      16(%rsp), %r8d                           ##  DEAD:r13;r8;rbp
	movq      %rax, 24(%r12)                           ##  DEAD:r13;rbp
.L0000131B:
	movl      $2, (%r12)                               ##  DEAD:r13;rbp
	xorl      %ebp, %ebp                               ##  DEAD:r13;rbp
	xorl      %r13d, %r13d                             ##  DEAD:r13
	jmp       .L00001330                               ##  DEAD:rflags
.L0000132A:
	cmpl      $31, %r13d                               ##  DEAD:rflags
	ja        .L00001369                               ##  DEAD:
.L00001330:
	testl     %ebx, %ebx                               ##  DEAD:rflags
	je        .L00000980                               ##  DEAD:
.L00001338:
	movl      %r13d, %ecx                              ##  DEAD:rax;rcx;rflags
	.p2align 3
	jmp       .L00001350                               ##  DEAD:rax;rflags
.L00001342:
	.p2align 3
.L00001348:
	testl     %ebx, %ebx                               ##  DEAD:rflags
	je        .L00001918                               ##  DEAD:
.L00001350:
	movzbl    (%r15), %eax                             ##  DEAD:rax;rflags
	subl      $1, %ebx                                 ##  DEAD:rflags
	addq      $1, %r15                                 ##  DEAD:rflags
	salq      %cl, %rax                                ##  DEAD:
	addl      $8, %ecx                                 ##  DEAD:rflags
	addq      %rax, %rbp                               ##  DEAD:rflags
	cmpl      $31, %ecx                                ##  DEAD:rflags
	jbe       .L00001348                               ##  DEAD:
.L00001369:
	movq      40(%r12), %rax                           ##  DEAD:rax;rflags
	testq     %rax, %rax                               ##  DEAD:rflags
	je        .L00001377                               ##  DEAD:
.L00001373:
	movq      %rbp, 8(%rax)                            ##  DEAD:rflags
.L00001377:
	testb     $2, 17(%r12)                             ##  DEAD:rflags
	jne       .L0000202D                               ##  DEAD:
.L00001383:
	movl      $3, (%r12)                               ##  DEAD:r13;rbp
	xorl      %ebp, %ebp                               ##  DEAD:r13;rbp
	xorl      %r13d, %r13d                             ##  DEAD:r13
	jmp       .L00001174                               ##  DEAD:rflags
.L00001395:
	movl      92(%r12), %esi                           ##  DEAD:rflags;rsi
	jmp       .L00000CB7                               ##  DEAD:rflags
.L0000139F:
	movq      %rbp, %r11                               ##  DEAD:r11;r9;rax;rflags
	movl      %r10d, %ebp                              ##  DEAD:r9;rax;rbp;rflags
	movl      %ebx, %r10d                              ##  DEAD:r10;r9;rax;rflags
	movq      %r14, %rbx                               ##  DEAD:r9;rax;rbx;rflags
	movl      $-3, %r14d                               ##  DEAD:r14;r9;rax;rflags
	jmp       .L0000098F                               ##  DEAD:r9;rax;rflags
.L000013B6:
	movl      8(%r12), %edx                            ##  DEAD:rdx;rflags
	testl     %edx, %edx                               ##  DEAD:rflags
	je        .L0000221C                               ##  DEAD:
.L000013C3:
	cmpl      $15, %r13d                               ##  DEAD:rflags
	ja        .L00001404                               ##  DEAD:
.L000013C9:
	testl     %ebx, %ebx                               ##  DEAD:rflags
	je        .L00000980                               ##  DEAD:
.L000013D1:
	movl      %r13d, %ecx                              ##  DEAD:rax;rcx;rflags
	jmp       .L000013E8                               ##  DEAD:rax;rflags
.L000013D6:
	.p2align 4
.L000013E0:
	testl     %ebx, %ebx                               ##  DEAD:rflags
	je        .L00001918                               ##  DEAD:
.L000013E8:
	movzbl    (%r15), %eax                             ##  DEAD:rax;rflags
	subl      $1, %ebx                                 ##  DEAD:rflags
	addq      $1, %r15                                 ##  DEAD:rflags
	salq      %cl, %rax                                ##  DEAD:
	addl      $8, %ecx                                 ##  DEAD:rflags
	addq      %rax, %rbp                               ##  DEAD:rflags
	cmpl      $15, %ecx                                ##  DEAD:rflags
	jbe       .L000013E0                               ##  DEAD:
.L00001401:
	movl      %ecx, %r13d                              ##  DEAD:r13;rflags
.L00001404:
	cmpq      $35615, %rbp                             ##  DEAD:rflags
	je        .L000020FE                               ##  DEAD:
.L00001411:
	movq      40(%r12), %rax                           ##  DEAD:rax;rflags
	movl      $0, 16(%r12)                             ##  DEAD:rflags
	testq     %rax, %rax                               ##  DEAD:rflags
	je        .L00001430                               ##  DEAD:
.L00001424:
	movl      $-1, 72(%rax)                            ##  DEAD:rdx;rflags
	movl      8(%r12), %edx                            ##  DEAD:rdx;rflags
.L00001430:
	andb      $1, %dl                                  ##  DEAD:rflags
	je        .L00001ED5                               ##  DEAD:
.L00001439:
	movl      %ebp, %edx                               ##  DEAD:rax;rcx;rdx;rsi
	movq      %rbp, %rax                               ##  DEAD:rax;rcx;rsi
	movl      $31, %esi                                ##  DEAD:rcx;rsi
	sall      $8, %edx                                 ##  DEAD:rcx
	shrq      $8, %rax                                 ##  DEAD:rcx
	movl      %ebp, %ecx                               ##  DEAD:rcx;rflags
	andl      $65280, %edx                             ##  DEAD:rflags
	leaq      (%rdx,%rax), %rax                        ##  DEAD:
	xorl      %edx, %edx                               ##  DEAD:rdx
	divq      %rsi                                     ##  DEAD:rflags
	testq     %rdx, %rdx                               ##  DEAD:rflags
	jne       .L00001ED5                               ##  DEAD:
.L00001464:
	andl      $15, %ecx                                ##  DEAD:rflags
	cmpl      $8, %ecx                                 ##  DEAD:rflags
	je        .L00002443                               ##  DEAD:
.L00001470:
	movq      $.LC00000017.str1.1, 48(%r14)            ##  DEAD:rax;rflags
	movl      $29, (%r12)                              ##  DEAD:rax;rflags
	jmp       .L000008A0                               ##  DEAD:rax;rflags
.L00001485:
	movl      132(%r12), %r9d                          ##  DEAD:r11;r9;rdi;rflags
.L0000148D:
	movl      124(%r12), %r11d                         ##  DEAD:r11;rdi;rflags
	movl      128(%r12), %edi                          ##  DEAD:rdi;rflags
	addl      %r11d, %edi                              ##  DEAD:rflags
	movl      %edi, 120(%rsp)                          ##  DEAD:rflags
.L000014A1:
	cmpl      %r9d, 120(%rsp)                          ##  DEAD:rflags
	jbe       .L00000D7D                               ##  DEAD:
.L000014AC:
	movl      112(%r12), %ecx                          ##  DEAD:rax;rcx;rdi;rdx;rsi
	movl      $1, %edi                                 ##  DEAD:rax;rdi;rdx;rsi
	movq      96(%r12), %rsi                           ##  DEAD:rax;rdx;rsi
	movl      %ebp, %eax                               ##  DEAD:rax;rdx
	sall      %cl, %edi                                ##  DEAD:rdx
	subl      $1, %edi                                 ##  DEAD:rcx;rdx;rflags
	andl      %edi, %eax                               ##  DEAD:rcx;rdx;rflags
	leaq      (%rsi,%rax,4), %rax                      ##  DEAD:rcx;rdx;rflags
	movzbl    1(%rax), %ecx                            ##  DEAD:rcx;rdx;rflags
	movzwl    2(%rax), %edx                            ##  DEAD:rdx;rflags
	movzbl    %cl, %eax                                ##  DEAD:rax;rflags
	cmpl      %eax, %r13d                              ##  DEAD:rflags
	jae       .L00001525                               ##  DEAD:
.L000014D8:
	testl     %ebx, %ebx                               ##  DEAD:rflags
	je        .L00000980                               ##  DEAD:
.L000014E0:
	movl      %r13d, %ecx                              ##  DEAD:rax;rcx;rdx;rflags
	jmp       .L000014F0                               ##  DEAD:r13;rax;rdx;rflags
.L000014E5:
	.p2align 3
.L000014E8:
	testl     %ebx, %ebx                               ##  DEAD:rflags
	je        .L00001918                               ##  DEAD:
.L000014F0:
	movzbl    (%r15), %eax                             ##  DEAD:r13;rax;rdx;rflags
	subl      $1, %ebx                                 ##  DEAD:r13;rdx;rflags
	addq      $1, %r15                                 ##  DEAD:r13;rdx;rflags
	salq      %cl, %rax                                ##  DEAD:r13;rdx
	addl      $8, %ecx                                 ##  DEAD:r13;rdx;rflags
	addq      %rax, %rbp                               ##  DEAD:r13;rdx;rflags
	movl      %ebp, %eax                               ##  DEAD:r13;rax;rdx;rflags
	andl      %edi, %eax                               ##  DEAD:r13;rdx;rflags
	leaq      (%rsi,%rax,4), %rax                      ##  DEAD:r13;rdx;rflags
	movzbl    1(%rax), %r13d                           ##  DEAD:r13;rdx;rflags
	movzwl    2(%rax), %edx                            ##  DEAD:rdx;rflags
	movzbl    %r13b, %eax                              ##  DEAD:rax;rflags
	cmpl      %ecx, %eax                               ##  DEAD:rflags
	ja        .L000014E8                               ##  DEAD:
.L0000151D:
	movl      %ecx, %esi                               ##  DEAD:rflags;rsi
	movl      %r13d, %ecx                              ##  DEAD:rcx;rflags
	movl      %esi, %r13d                              ##  DEAD:r13;rflags
.L00001525:
	cmpw      $15, %dx                                 ##  DEAD:rflags
	ja        .L00001DC5                               ##  DEAD:
.L0000152F:
	subl      %eax, %r13d                              ##  DEAD:rflags
	movl      %r9d, %eax                               ##  DEAD:rax;rflags
	addl      $1, %r9d                                 ##  DEAD:rflags
	shrq      %cl, %rbp                                ##  DEAD:
	movw      %dx, 144(%r12,%rax,2)                    ##  DEAD:rflags
	movl      %r9d, 132(%r12)                          ##  DEAD:rflags
.L0000154D:
	movl      132(%r12), %r9d                          ##  DEAD:r9;rflags
	jmp       .L000014A1                               ##  DEAD:rflags
.L0000155A:
	movl      132(%r12), %eax                          ##  DEAD:rax;rcx;rflags
	cmpl      120(%r12), %eax                          ##  DEAD:rcx;rflags
	movl      %r13d, %ecx                              ##  DEAD:rcx
	jae       .L000015C1                               ##  DEAD:
.L0000156C:
	cmpl      $2, %ecx                                 ##  DEAD:rflags
	ja        .L0000158D                               ##  DEAD:
.L00001571:
	testl     %ebx, %ebx                               ##  DEAD:rflags
	je        .L00001918                               ##  DEAD:
.L00001579:
	movzbl    (%r15), %edx                             ##  DEAD:rdx;rflags;rsi
	subl      $1, %ebx                                 ##  DEAD:rflags;rsi
	addq      $1, %r15                                 ##  DEAD:rflags;rsi
	salq      %cl, %rdx                                ##  DEAD:rsi
	addl      $8, %ecx                                 ##  DEAD:rflags;rsi
	addq      %rdx, %rbp                               ##  DEAD:rflags;rsi
.L0000158D:
	movl      %eax, %edx                               ##  DEAD:rdx;rflags;rsi
	movl      %ebp, %esi                               ##  DEAD:rflags;rsi
	addl      $1, %eax                                 ##  DEAD:rflags
	andl      $7, %esi                                 ##  DEAD:rflags
	movzwl    order.4297(%rdx,%rdx), %edx              ##  DEAD:
	shrq      $3, %rbp                                 ##  DEAD:
	subl      $3, %ecx                                 ##  DEAD:rflags
	cmpl      %eax, 120(%r12)                          ##  DEAD:rflags
	movl      %eax, 132(%r12)                          ##  DEAD:
	movw      %si, 144(%r12,%rdx,2)                    ##  DEAD:
	ja        .L0000156C                               ##  DEAD:
.L000015BE:
	movl      %ecx, %r13d                              ##  DEAD:r13;rflags
.L000015C1:
	cmpl      $18, %eax                                ##  DEAD:rflags
	ja        .L000015EF                               ##  DEAD:
.L000015C6:
	movl      %eax, %edx                               ##  DEAD:rdx;rflags
	addl      $1, %eax                                 ##  DEAD:rflags
	movzwl    order.4297(%rdx,%rdx), %edx              ##  DEAD:rflags
	cmpl      $19, %eax                                ##  DEAD:rflags
	movw      $0, 144(%r12,%rdx,2)                     ##  DEAD:
	jne       .L000015C6                               ##  DEAD:
.L000015E3:
	movl      $19, 132(%r12)                           ##  DEAD:r8;r9;rcx;rdi;rdx;rsi
.L000015EF:
	movq      64(%rsp), %rsi                           ##  DEAD:r8;r9;rcx;rdi;rdx;rsi
	movq      104(%rsp), %r8                           ##  DEAD:r8;r9;rcx;rdi;rdx
	xorl      %edi, %edi                               ##  DEAD:r9;rcx;rdi;rdx
	movq      80(%rsp), %r9                            ##  DEAD:r9;rcx;rdx
	movq      72(%rsp), %rcx                           ##  DEAD:rcx;rdx
	movl      $19, %edx                                ##  DEAD:rdx
	movl      $7, 112(%r12)                            ##  DEAD:
	movl      %r10d, 8(%rsp)                           ##  DEAD:
	movq      %rsi, 136(%r12)                          ##  DEAD:
	movq      %rsi, 96(%r12)                           ##  DEAD:
	movq      96(%rsp), %rsi                           ##  DEAD:rsi
	call      inflate_table@PLT                        ##  DEAD:
.L0000162F:
	testl     %eax, %eax                               ##  DEAD:r10;r8;rflags
	movl      %eax, %r8d                               ##  DEAD:r10;r8
	movl      8(%rsp), %r10d                           ##  DEAD:r10
	jne       .L0000235F                               ##  DEAD:
.L0000163F:
	movl      $0, 132(%r12)                            ##  DEAD:r11;r9;rdi
	movl      $18, (%r12)                              ##  DEAD:r11;r9;rdi
	xorl      %r9d, %r9d                               ##  DEAD:r11;r9;rdi
	jmp       .L0000148D                               ##  DEAD:r11;rdi;rflags
.L0000165B:
	movq      %rbp, %r11                               ##  DEAD:r11;r9;rax;rflags
	movl      %r10d, %ebp                              ##  DEAD:r9;rax;rbp;rflags
	movl      %ebx, %r10d                              ##  DEAD:r10;r9;rax;rflags
	movq      %r14, %rbx                               ##  DEAD:r9;rax;rbx;rflags
	movl      $1, %r14d                                ##  DEAD:r14;r9;rax;rflags
	jmp       .L0000098F                               ##  DEAD:r9;rax;rflags
.L00001672:
	movl      44(%rsp), %ecx                           ##  DEAD:rcx;rflags
	testl     %ecx, %ecx                               ##  DEAD:rflags
	je        .L00000980                               ##  DEAD:
.L0000167E:
	movq      48(%rsp), %r11                           ##  DEAD:r11;rax;rflags
	movl      84(%r12), %eax                           ##  DEAD:rax;rflags
	movb      %al, (%r11)                              ##  DEAD:rflags
	subl      $1, 44(%rsp)                             ##  DEAD:rax;rflags
	addq      $1, %r11                                 ##  DEAD:rax;rflags
	movq      %r11, 48(%rsp)                           ##  DEAD:rax;rflags
.L00001699:
	movl      $20, (%r12)                              ##  DEAD:rax;rflags
	jmp       .L000008A0                               ##  DEAD:rax;rflags
.L000016A6:
	movl      16(%r12), %eax                           ##  DEAD:rax;rflags
.L000016AB:
	testb     $2, %ah                                  ##  DEAD:rflags
	je        .L00001ADF                               ##  DEAD:
.L000016B4:
	cmpl      $15, %r13d                               ##  DEAD:rflags
	ja        .L000016F4                               ##  DEAD:
.L000016BA:
	testl     %ebx, %ebx                               ##  DEAD:rflags
	je        .L00000980                               ##  DEAD:
.L000016C2:
	movl      %r13d, %ecx                              ##  DEAD:rcx;rdx;rflags
	jmp       .L000016D8                               ##  DEAD:rdx;rflags
.L000016C7:
	.p2align 4
.L000016D0:
	testl     %ebx, %ebx                               ##  DEAD:rflags
	je        .L00001918                               ##  DEAD:
.L000016D8:
	movzbl    (%r15), %edx                             ##  DEAD:rdx;rflags
	subl      $1, %ebx                                 ##  DEAD:rflags
	addq      $1, %r15                                 ##  DEAD:rflags
	salq      %cl, %rdx                                ##  DEAD:
	addl      $8, %ecx                                 ##  DEAD:rflags
	addq      %rdx, %rbp                               ##  DEAD:rflags
	cmpl      $15, %ecx                                ##  DEAD:rflags
	jbe       .L000016D0                               ##  DEAD:
.L000016F1:
	movl      %ecx, %r13d                              ##  DEAD:r13;rdx;rflags
.L000016F4:
	movzwl    24(%r12), %edx                           ##  DEAD:rdx;rflags
	cmpq      %rbp, %rdx                               ##  DEAD:rflags
	je        .L00001ADA                               ##  DEAD:
.L00001703:
	movq      $.LC0000005F.str1.1, 48(%r14)            ##  DEAD:rax;rflags
	movl      $29, (%r12)                              ##  DEAD:rax;rflags
	jmp       .L000008A0                               ##  DEAD:rax;rflags
.L00001718:
	movl      16(%r12), %eax                           ##  DEAD:rax;rflags
.L0000171D:
	testb     $16, %ah                                 ##  DEAD:rflags
	je        .L00001990                               ##  DEAD:
.L00001726:
	testl     %ebx, %ebx                               ##  DEAD:rflags
	je        .L00000980                               ##  DEAD:
.L0000172E:
	xorl      %ecx, %ecx                               ##  DEAD:r9;rax;rcx;rdx
.L00001730:
	movl      %ecx, %eax                               ##  DEAD:r9;rax;rdx;rflags
	addl      $1, %ecx                                 ##  DEAD:r9;rdx;rflags
	movzbl    (%r15,%rax), %edx                        ##  DEAD:r9;rdx;rflags
	movq      40(%r12), %rax                           ##  DEAD:r9;rax;rflags
	testq     %rax, %rax                               ##  DEAD:r9;rflags
	movzbl    %dl, %r9d                                ##  DEAD:r9
	je        .L00001768                               ##  DEAD:
.L00001748:
	movq      56(%rax), %rdi                           ##  DEAD:rdi;rflags
	testq     %rdi, %rdi                               ##  DEAD:rflags
	je        .L00001768                               ##  DEAD:
.L00001751:
	movl      84(%r12), %esi                           ##  DEAD:rflags;rsi
	cmpl      64(%rax), %esi                           ##  DEAD:rflags
	jae       .L00001768                               ##  DEAD:
.L0000175B:
	movl      %esi, %eax                               ##  DEAD:rax;rflags
	addl      $1, %esi                                 ##  DEAD:rflags
	movb      %dl, (%rdi,%rax)                         ##  DEAD:rflags
	movl      %esi, 84(%r12)                           ##  DEAD:rflags
.L00001768:
	testl     %r9d, %r9d                               ##  DEAD:rflags
	je        .L00001771                               ##  DEAD:
.L0000176D:
	cmpl      %ebx, %ecx                               ##  DEAD:rflags
	jb        .L00001730                               ##  DEAD:
.L00001771:
	testb     $2, 17(%r12)                             ##  DEAD:rflags
	jne       .L00001CAA                               ##  DEAD:
.L0000177D:
	subl      %ecx, %ebx                               ##  DEAD:rflags
	movl      %ecx, %ecx                               ##  DEAD:rflags
	addq      %rcx, %r15                               ##  DEAD:rflags
	testl     %r9d, %r9d                               ##  DEAD:rflags
	jne       .L00000980                               ##  DEAD:
.L0000178D:
	movl      16(%r12), %eax                           ##  DEAD:rax;rflags
.L00001792:
	movl      $8, (%r12)                               ##  DEAD:rflags
	jmp       .L000016AB                               ##  DEAD:rflags
.L0000179F:
	movl      16(%r12), %eax                           ##  DEAD:rax;rflags
.L000017A4:
	testb     $4, %ah                                  ##  DEAD:rflags
	je        .L00001849                               ##  DEAD:
.L000017AD:
	movl      84(%r12), %edx                           ##  DEAD:rcx;rdx;rflags
	cmpl      %edx, %ebx                               ##  DEAD:rcx;rflags
	movl      %edx, %ecx                               ##  DEAD:rcx
	cmovbe    %ebx, %ecx                               ##  DEAD:
	testl     %ecx, %ecx                               ##  DEAD:rflags
	je        .L0000183C                               ##  DEAD:
.L000017BD:
	movq      40(%r12), %rsi                           ##  DEAD:rdi;rflags;rsi
	movl      %ecx, %edi                               ##  DEAD:rdi;rflags
	movq      %rdi, 120(%rsp)                          ##  DEAD:rflags
	testq     %rsi, %rsi                               ##  DEAD:rflags
	je        .L00001820                               ##  DEAD:
.L000017CE:
	movq      24(%rsi), %rdi                           ##  DEAD:rdi;rflags
	testq     %rdi, %rdi                               ##  DEAD:rflags
	je        .L00001820                               ##  DEAD:
.L000017D7:
	movl      32(%rsi), %eax                           ##  DEAD:r11;r9;rax;rflags
	movl      36(%rsi), %esi                           ##  DEAD:r11;r9;rflags
	movl      %ecx, 24(%rsp)                           ##  DEAD:r11;r9;rflags
	movl      %r8d, 16(%rsp)                           ##  DEAD:r11;r9;rflags
	movl      %r10d, 8(%rsp)                           ##  DEAD:r11;r9;rflags
	subl      %edx, %eax                               ##  DEAD:r11;r9;rflags
	movl      %esi, %r9d                               ##  DEAD:r11;r9;rdx;rflags
	movl      %ecx, %edx                               ##  DEAD:r11;rdx;rflags
	leal      (%rcx,%rax), %r11d                       ##  DEAD:r11;rflags
	subl      %eax, %r9d                               ##  DEAD:rflags
	movl      %eax, %eax                               ##  DEAD:rflags
	cmpl      %esi, %r11d                              ##  DEAD:rflags
	movq      %r15, %rsi                               ##  DEAD:rsi
	cmova     %r9, %rdx                                ##  DEAD:
	addq      %rax, %rdi                               ##  DEAD:rflags
	call      memcpy@PLT                               ##  DEAD:
.L0000180D:
	movl      16(%r12), %eax                           ##  DEAD:r10;r8;rax;rcx;rflags
	movl      8(%rsp), %r10d                           ##  DEAD:r10;r8;rcx;rflags
	movl      16(%rsp), %r8d                           ##  DEAD:r8;rcx;rflags
	movl      24(%rsp), %ecx                           ##  DEAD:rcx;rflags
.L00001820:
	testb     $2, %ah                                  ##  DEAD:rflags
	jne       .L0000216A                               ##  DEAD:
.L00001829:
	movl      84(%r12), %edx                           ##  DEAD:rdx;rflags
	addq      120(%rsp), %r15                          ##  DEAD:rflags
	subl      %ecx, %ebx                               ##  DEAD:rflags
	subl      %ecx, %edx                               ##  DEAD:rflags
	movl      %edx, 84(%r12)                           ##  DEAD:rflags
.L0000183C:
	testl     %edx, %edx                               ##  DEAD:rflags
	jne       .L00000980                               ##  DEAD:
.L00001844:
	movl      16(%r12), %eax                           ##  DEAD:rax;rflags
.L00001849:
	movl      $0, 84(%r12)                             ##  DEAD:rflags
	movl      $6, (%r12)                               ##  DEAD:rflags
.L0000185A:
	testb     $8, %ah                                  ##  DEAD:rflags
	je        .L000019AB                               ##  DEAD:
.L00001863:
	testl     %ebx, %ebx                               ##  DEAD:rflags
	je        .L00000980                               ##  DEAD:
.L0000186B:
	xorl      %ecx, %ecx                               ##  DEAD:r9;rax;rcx;rdx
	.p2align 3
.L00001870:
	movl      %ecx, %eax                               ##  DEAD:r9;rax;rdx;rflags
	addl      $1, %ecx                                 ##  DEAD:r9;rdx;rflags
	movzbl    (%r15,%rax), %edx                        ##  DEAD:r9;rdx;rflags
	movq      40(%r12), %rax                           ##  DEAD:r9;rax;rflags
	testq     %rax, %rax                               ##  DEAD:r9;rflags
	movzbl    %dl, %r9d                                ##  DEAD:r9
	je        .L000018A8                               ##  DEAD:
.L00001888:
	movq      40(%rax), %rdi                           ##  DEAD:rdi;rflags
	testq     %rdi, %rdi                               ##  DEAD:rflags
	je        .L000018A8                               ##  DEAD:
.L00001891:
	movl      84(%r12), %esi                           ##  DEAD:rflags;rsi
	cmpl      48(%rax), %esi                           ##  DEAD:rflags
	jae       .L000018A8                               ##  DEAD:
.L0000189B:
	movl      %esi, %eax                               ##  DEAD:rax;rflags
	addl      $1, %esi                                 ##  DEAD:rflags
	movb      %dl, (%rdi,%rax)                         ##  DEAD:rflags
	movl      %esi, 84(%r12)                           ##  DEAD:rflags
.L000018A8:
	testl     %r9d, %r9d                               ##  DEAD:rflags
	je        .L000018B1                               ##  DEAD:
.L000018AD:
	cmpl      %ebx, %ecx                               ##  DEAD:rflags
	jb        .L00001870                               ##  DEAD:
.L000018B1:
	testb     $2, 17(%r12)                             ##  DEAD:rflags
	jne       .L00001CE9                               ##  DEAD:
.L000018BD:
	subl      %ecx, %ebx                               ##  DEAD:rflags
	movl      %ecx, %ecx                               ##  DEAD:rflags
	addq      %rcx, %r15                               ##  DEAD:rflags
	testl     %r9d, %r9d                               ##  DEAD:rflags
	jne       .L00000980                               ##  DEAD:
.L000018CD:
	movl      16(%r12), %eax                           ##  DEAD:rax;rflags
.L000018D2:
	movl      $0, 84(%r12)                             ##  DEAD:rflags
	movl      $7, (%r12)                               ##  DEAD:rflags
	jmp       .L0000171D                               ##  DEAD:rflags
.L000018E8:
	movl      16(%r12), %eax                           ##  DEAD:rax;rflags
	jmp       .L0000185A                               ##  DEAD:rflags
.L000018F2:
	movl      16(%r12), %eax                           ##  DEAD:rax;rflags
	jmp       .L000011E3                               ##  DEAD:rflags
.L000018FC:
	.p2align 3
.L00001900:
	cmpl      $4, %ebp                                 ##  DEAD:rflags
	jne       .L00000715                               ##  DEAD:
.L00001909:
	.p2align 4
	jmp       .L00000A9D                               ##  DEAD:r12;r13;r15;rax;rbp;rbx;rflags
.L00001915:
	.p2align 3
.L00001918:
	movl      %ecx, %r13d                              ##  DEAD:r11;r13;r9;rax;rflags
	.p2align 3
	jmp       .L00000980                               ##  DEAD:r11;r9;rax;rflags
.L00001925:
	movl      $12, (%r12)                              ##  DEAD:r10;r11;r13;r14;r15;r8;r9;rdi;rsi
	movq      %rdx, 48(%rsp)                           ##  DEAD:r10;r11;r13;r14;r15;r8;r9;rdi;rsi
	movq      %rcx, %r15                               ##  DEAD:r10;r11;r13;r14;r15;r8;r9;rdi;rdx;rsi
	movb      $12, %al                                 ##  DEAD:r10;r11;r13;r14;r8;r9;rcx;rdi;rdx;rsi
	jmp       .L00000783                               ##  DEAD:r10;r11;r13;r14;r8;r9;rcx;rdi;rdx;rsi
.L0000193C:
	movl      32(%rbx), %r13d                          ##  DEAD:r13;r8;rdi;rdx;rflags;rsi
	jmp       .L000009E0                               ##  DEAD:r8;rdi;rdx;rflags;rsi
.L00001945:
	subl      $-128, %eax                              ##  DEAD:rdx;rflags
	xorl      %edx, %edx                               ##  DEAD:rdx
	jmp       .L00000A86                               ##  DEAD:rflags
.L0000194F:
	negq      %rsi                                     ##  DEAD:rdi;rflags
	addq      24(%rbx), %rsi                           ##  DEAD:rdi;rflags
	movq      24(%r12), %rdi                           ##  DEAD:rdi
	call      adler32@PLT                              ##  DEAD:
.L00001960:
	jmp       .L00000A50                               ##  DEAD:rdx;rflags
.L00001965:
	cmpl      $19, %edx                                ##  DEAD:rflags
	je        .L00000A81                               ##  DEAD:
.L0000196E:
	xorl      %edx, %edx                               ##  DEAD:rdx
	jmp       .L00000A86                               ##  DEAD:rflags
.L00001975:
	movl      8(%rdi), %r13d                           ##  DEAD:r13;rflags
	testl     %r13d, %r13d                             ##  DEAD:rflags
	jne       .L0000070F                               ##  DEAD:
.L00001982:
	jmp       .L00000776                               ##  DEAD:rax;rflags
.L00001987:
	.p2align 4
.L00001990:
	movq      40(%r12), %rdx                           ##  DEAD:rdx;rflags
	testq     %rdx, %rdx                               ##  DEAD:rflags
	je        .L00001792                               ##  DEAD:
.L0000199E:
	movq      $0, 56(%rdx)                             ##  DEAD:rflags
	jmp       .L00001792                               ##  DEAD:rflags
.L000019AB:
	movq      40(%r12), %rdx                           ##  DEAD:rdx;rflags
	testq     %rdx, %rdx                               ##  DEAD:rflags
	je        .L000018D2                               ##  DEAD:
.L000019B9:
	movq      $0, 40(%rdx)                             ##  DEAD:rflags
	jmp       .L000018D2                               ##  DEAD:rflags
.L000019C6:
	movq      48(%rsp), %rdi                           ##  DEAD:rdi;rdx;rflags;rsi
	movl      84(%r12), %esi                           ##  DEAD:rdx;rflags;rsi
	movl      %eax, %eax                               ##  DEAD:rdx;rflags
	subq      %rax, %rdi                               ##  DEAD:rdx;rflags
	movl      %esi, %edx                               ##  DEAD:rax;rdx;rflags
	movq      %rdi, %rax                               ##  DEAD:rax;rflags
.L000019DA:
	cmpl      44(%rsp), %esi                           ##  DEAD:rflags
	cmova     44(%rsp), %esi                           ##  DEAD:
	subl      %esi, 44(%rsp)                           ##  DEAD:rflags
	subl      %esi, %edx                               ##  DEAD:rflags
	cmpl      $15, %esi                                ##  DEAD:rflags
	movl      %edx, 84(%r12)                           ##  DEAD:
	jbe       .L00001D8D                               ##  DEAD:
.L000019F7:
	testb     $15, 48(%rsp)                            ##  DEAD:rflags
	jne       .L00001D8D                               ##  DEAD:
.L00001A02:
	leaq      16(%rax), %rdx                           ##  DEAD:rdx;rflags
	cmpq      48(%rsp), %rdx                           ##  DEAD:rflags
	jae       .L00001D7B                               ##  DEAD:
.L00001A11:
	movl      %esi, %r9d                               ##  DEAD:r9;rdi
	shrl      $4, %r9d                                 ##  DEAD:rdi
	movl      %r9d, %edi                               ##  DEAD:rdi
	sall      $4, %edi                                 ##  DEAD:
	testl     %edi, %edi                               ##  DEAD:rflags
	je        .L00002422                               ##  DEAD:
.L00001A26:
	movq      48(%rsp), %r11                           ##  DEAD:r11;rcx;rdx
	xorl      %edx, %edx                               ##  DEAD:rcx;rdx
	xorl      %ecx, %ecx                               ##  DEAD:rcx
	.p2align 3
.L00001A30:
	movdqu    (%rdx,%rax), %xmm0                       ##  DEAD:rflags
	addl      $1, %ecx                                 ##  DEAD:rflags
	movdqa    %xmm0, (%r11,%rdx)                       ##  DEAD:rflags
	addq      $16, %rdx                                ##  DEAD:rflags
	cmpl      %ecx, %r9d                               ##  DEAD:rflags
	ja        .L00001A30                               ##  DEAD:
.L00001A47:
	movq      48(%rsp), %rdx                           ##  DEAD:r9;rcx;rdx;rflags
	movl      %edi, %ecx                               ##  DEAD:r9;rcx;rflags
	movl      %esi, %r9d                               ##  DEAD:r9;rflags
	subl      %edi, %r9d                               ##  DEAD:rflags
	addq      %rcx, %rax                               ##  DEAD:rflags
	addq      %rcx, %rdx                               ##  DEAD:rflags
	cmpl      %edi, %esi                               ##  DEAD:rflags
	je        .L00001A85                               ##  DEAD:
.L00001A5E:
	leaq      1(%rax), %rcx                            ##  DEAD:rcx;rdi;rflags
	leal      -1(%r9), %edi                            ##  DEAD:rdi;rflags
	leaq      (%rcx,%rdi), %rdi                        ##  DEAD:rflags
	jmp       .L00001A74                               ##  DEAD:rflags
.L00001A6C:
	.p2align 3
.L00001A70:
	addq      $1, %rcx                                 ##  DEAD:rflags
.L00001A74:
	movzbl    (%rax), %eax                             ##  DEAD:rflags
	movb      %al, (%rdx)                              ##  DEAD:rflags
	addq      $1, %rdx                                 ##  DEAD:rax;rflags
	cmpq      %rdi, %rcx                               ##  DEAD:rax;rflags
	movq      %rcx, %rax                               ##  DEAD:rax
	jne       .L00001A70                               ##  DEAD:
.L00001A85:
	movq      48(%rsp), %r9                            ##  DEAD:r9;rflags
	subl      $1, %esi                                 ##  DEAD:rflags
	leaq      1(%r9,%rsi), %r9                         ##  DEAD:rflags
	movl      84(%r12), %esi                           ##  DEAD:rflags;rsi
	movq      %r9, 48(%rsp)                            ##  DEAD:rflags
	testl     %esi, %esi                               ##  DEAD:rflags
	jne       .L000008A0                               ##  DEAD:
.L00001AA4:
	jmp       .L00001699                               ##  DEAD:rax;rflags
.L00001AA9:
	movl      60(%r12), %eax                           ##  DEAD:rax;rflags
	cmpl      %eax, %ecx                               ##  DEAD:rflags
	jbe       .L00001DB9                               ##  DEAD:
.L00001AB6:
	subl      %eax, %ecx                               ##  DEAD:rdx;rflags;rsi
	movl      52(%r12), %eax                           ##  DEAD:rax;rdx;rflags;rsi
	subl      %ecx, %eax                               ##  DEAD:rdx;rflags;rsi
	addq      64(%r12), %rax                           ##  DEAD:rdx;rflags;rsi
.L00001AC4:
	movl      84(%r12), %esi                           ##  DEAD:rdx;rflags;rsi
	cmpl      %esi, %ecx                               ##  DEAD:rdx;rflags
	movl      %esi, %edx                               ##  DEAD:rdx
	ja        .L000019DA                               ##  DEAD:
.L00001AD3:
	movl      %ecx, %esi                               ##  DEAD:rflags;rsi
	jmp       .L000019DA                               ##  DEAD:rflags
.L00001ADA:
	xorl      %r13d, %r13d                             ##  DEAD:r13;rbp;rdx
	xorl      %ebp, %ebp                               ##  DEAD:rbp;rdx
.L00001ADF:
	movq      40(%r12), %rdx                           ##  DEAD:rdx;rflags
	testq     %rdx, %rdx                               ##  DEAD:rflags
	je        .L00001AF9                               ##  DEAD:
.L00001AE9:
	sarl      $9, %eax                                 ##  DEAD:rdi;rsi
	movl      $1, 72(%rdx)                             ##  DEAD:rdi;rflags;rsi
	andl      $1, %eax                                 ##  DEAD:rdi;rflags;rsi
	movl      %eax, 68(%rdx)                           ##  DEAD:rdi;rsi
.L00001AF9:
	xorl      %edx, %edx                               ##  DEAD:rdi;rdx;rsi
	xorl      %esi, %esi                               ##  DEAD:rdi;rsi
	xorl      %edi, %edi                               ##  DEAD:rdi
	movl      %r8d, 16(%rsp)                           ##  DEAD:
	movl      %r10d, 8(%rsp)                           ##  DEAD:
	call      crc32@PLT                                ##  DEAD:
.L00001B0E:
	movl      $11, (%r12)                              ##  DEAD:r10;r8;rflags
	movq      %rax, 24(%r12)                           ##  DEAD:r10;r8;rflags
	movl      16(%rsp), %r8d                           ##  DEAD:r10;r8;rflags
	movq      %rax, 96(%r14)                           ##  DEAD:r10;rflags
	movl      8(%rsp), %r10d                           ##  DEAD:r10;rax;rflags
	jmp       .L000008A0                               ##  DEAD:rax;rflags
.L00001B2E:
	movq      40(%r12), %rdx                           ##  DEAD:rdx;rflags
	testq     %rdx, %rdx                               ##  DEAD:rflags
	je        .L0000124E                               ##  DEAD:
.L00001B3C:
	movq      $0, 24(%rdx)                             ##  DEAD:rflags
	jmp       .L0000124E                               ##  DEAD:rflags
.L00001B49:
	cmpl      %edx, %r13d                              ##  DEAD:rflags
	jae       .L00001B83                               ##  DEAD:
.L00001B4E:
	testl     %ebx, %ebx                               ##  DEAD:rflags
	je        .L00000980                               ##  DEAD:
.L00001B56:
	movl      %r13d, %ecx                              ##  DEAD:rax;rcx;rflags
	jmp       .L00001B68                               ##  DEAD:rax;rflags
.L00001B5B:
	.p2align 3
.L00001B60:
	testl     %ebx, %ebx                               ##  DEAD:rflags
	je        .L00001918                               ##  DEAD:
.L00001B68:
	movzbl    (%r15), %eax                             ##  DEAD:rax;rflags
	subl      $1, %ebx                                 ##  DEAD:rflags
	addq      $1, %r15                                 ##  DEAD:rflags
	salq      %cl, %rax                                ##  DEAD:
	addl      $8, %ecx                                 ##  DEAD:rflags
	addq      %rax, %rbp                               ##  DEAD:rflags
	cmpl      %edx, %ecx                               ##  DEAD:rflags
	jb        .L00001B60                               ##  DEAD:
.L00001B80:
	movl      %ecx, %r13d                              ##  DEAD:r11;r13;r9;rax;rdi;rsi
.L00001B83:
	movl      %edx, %ecx                               ##  DEAD:r11;r9;rax;rcx;rdi;rsi
	movl      $1, %eax                                 ##  DEAD:r11;r9;rax;rdi;rdx;rsi
	sall      %cl, %eax                                ##  DEAD:r11;r9;rdi;rdx;rsi
	movl      92(%r12), %ecx                           ##  DEAD:r11;r9;rcx;rdi;rdx;rflags;rsi
	addl      %ecx, 7140(%r12)                         ##  DEAD:r11;r9;rdi;rdx;rflags;rsi
	subl      $1, %eax                                 ##  DEAD:r11;r9;rdi;rdx;rflags;rsi
	andl      %ebp, %eax                               ##  DEAD:r11;r9;rdi;rdx;rflags;rsi
	addl      84(%r12), %eax                           ##  DEAD:r11;r9;rdi;rdx;rflags;rsi
	shrq      %cl, %rbp                                ##  DEAD:r11;r9;rdi;rdx;rsi
	subl      %ecx, %r13d                              ##  DEAD:r11;r9;rdi;rdx;rflags;rsi
	movl      %eax, 84(%r12)                           ##  DEAD:r11;r9;rcx;rdi;rdx;rsi
	jmp       .L00000BBA                               ##  DEAD:r11;r9;rcx;rdi;rdx;rsi
.L00001BB3:
	movzbl    %cl, %r11d                               ##  DEAD:r11;rsi
	movl      120(%rsp), %ecx                          ##  DEAD:rcx;rsi
	movl      $1, %esi                                 ##  DEAD:rsi
	movzwl    %r9w, %r9d                               ##  DEAD:
	movl      %r9d, 132(%rsp)                          ##  DEAD:
	leal      (%r11,%rcx), %ecx                        ##  DEAD:
	sall      %cl, %esi                                ##  DEAD:
	movl      %esi, %ecx                               ##  DEAD:rcx;rflags
	subl      $1, %ecx                                 ##  DEAD:rflags;rsi
	movl      %ecx, 120(%rsp)                          ##  DEAD:rflags;rsi
	andl      %ecx, %edx                               ##  DEAD:rflags;rsi
	movl      %r11d, %ecx                              ##  DEAD:rcx;rsi
	shrl      %cl, %edx                                ##  DEAD:rsi
	addl      %r9d, %edx                               ##  DEAD:rcx;rflags;rsi
	leaq      (%rdi,%rdx,4), %rdx                      ##  DEAD:r9;rcx;rflags;rsi
	movzbl    (%rdx), %esi                             ##  DEAD:r9;rcx;rflags;rsi
	movzwl    2(%rdx), %r9d                            ##  DEAD:r9;rcx;rflags
	movzbl    1(%rdx), %edx                            ##  DEAD:rcx;rflags
	movb      %dl, 136(%rsp)                           ##  DEAD:rcx;rflags
	movzbl    %dl, %edx                                ##  DEAD:rcx;rflags
	leal      (%r11,%rdx), %ecx                        ##  DEAD:rcx;rflags
	cmpl      %ecx, %r13d                              ##  DEAD:rflags
	jae       .L00001C75                               ##  DEAD:
.L00001C08:
	testl     %ebx, %ebx                               ##  DEAD:rflags
	je        .L00000980                               ##  DEAD:
.L00001C10:
	movl      %eax, 140(%rsp)                          ##  DEAD:r9;rcx;rdx;rflags;rsi
	jmp       .L00001C21                               ##  DEAD:r9;rax;rcx;rdx;rflags;rsi
.L00001C19:
	testl     %ebx, %ebx                               ##  DEAD:rflags
	je        .L00000980                               ##  DEAD:
.L00001C21:
	movzbl    (%r15), %eax                             ##  DEAD:r9;rax;rcx;rdx;rflags;rsi
	movl      %r13d, %ecx                              ##  DEAD:r9;rcx;rdx;rflags;rsi
	addl      $8, %r13d                                ##  DEAD:r9;rdx;rflags;rsi
	subl      $1, %ebx                                 ##  DEAD:r9;rdx;rflags;rsi
	addq      $1, %r15                                 ##  DEAD:r9;rdx;rflags;rsi
	salq      %cl, %rax                                ##  DEAD:r9;rdx;rsi
	movl      %r11d, %ecx                              ##  DEAD:r9;rcx;rdx;rflags;rsi
	addq      %rax, %rbp                               ##  DEAD:r9;rdx;rflags;rsi
	movl      120(%rsp), %eax                          ##  DEAD:r9;rax;rdx;rflags;rsi
	andl      %ebp, %eax                               ##  DEAD:r9;rdx;rflags;rsi
	shrl      %cl, %eax                                ##  DEAD:r9;rdx;rsi
	addl      132(%rsp), %eax                          ##  DEAD:r9;rcx;rdx;rflags;rsi
	leaq      (%rdi,%rax,4), %rax                      ##  DEAD:r9;rcx;rdx;rflags;rsi
	movzbl    (%rax), %esi                             ##  DEAD:r9;rcx;rdx;rflags;rsi
	movzwl    2(%rax), %r9d                            ##  DEAD:r9;rcx;rdx;rflags
	movzbl    1(%rax), %eax                            ##  DEAD:rcx;rdx;rflags
	movzbl    %al, %edx                                ##  DEAD:rcx;rdx;rflags
	leal      (%r11,%rdx), %ecx                        ##  DEAD:rcx;rflags
	cmpl      %r13d, %ecx                              ##  DEAD:rflags
	ja        .L00001C19                               ##  DEAD:
.L00001C67:
	movb      %al, 136(%rsp)                           ##  DEAD:rcx;rdi;rflags
	movl      140(%rsp), %eax                          ##  DEAD:rax;rcx;rdi;rflags
.L00001C75:
	movl      %r11d, %ecx                              ##  DEAD:rcx;rdi;rflags
	subl      %eax, %r13d                              ##  DEAD:rdi;rflags
	addl      7140(%r12), %r11d                        ##  DEAD:rax;rdi;rflags
	movzbl    136(%rsp), %eax                          ##  DEAD:rax;rdi
	movzbl    %sil, %edi                               ##  DEAD:rdi
	shrq      %cl, %rbp                                ##  DEAD:
	movl      %edi, 120(%rsp)                          ##  DEAD:rcx;rflags
	movl      %r11d, 7140(%r12)                        ##  DEAD:rcx;rflags
	movl      %eax, 132(%rsp)                          ##  DEAD:rcx;rflags
	jmp       .L00000C7B                               ##  DEAD:rcx;rflags
.L00001CAA:
	movq      24(%r12), %rdi                           ##  DEAD:rdi;rdx;rsi
	movl      %ecx, %edx                               ##  DEAD:rdx;rsi
	movq      %r15, %rsi                               ##  DEAD:rsi
	movl      %ecx, 24(%rsp)                           ##  DEAD:
	movl      %r8d, 16(%rsp)                           ##  DEAD:
	movl      %r9d, 32(%rsp)                           ##  DEAD:
	movl      %r10d, 8(%rsp)                           ##  DEAD:
	call      crc32@PLT                                ##  DEAD:
.L00001CCC:
	movl      8(%rsp), %r10d                           ##  DEAD:r10;r8;r9;rcx;rflags
	movq      %rax, 24(%r12)                           ##  DEAD:r8;r9;rcx;rflags
	movl      32(%rsp), %r9d                           ##  DEAD:r8;r9;rcx;rflags
	movl      16(%rsp), %r8d                           ##  DEAD:r8;rcx;rflags
	movl      24(%rsp), %ecx                           ##  DEAD:rcx;rflags
	jmp       .L0000177D                               ##  DEAD:rflags
.L00001CE9:
	movq      24(%r12), %rdi                           ##  DEAD:rdi;rdx;rsi
	movl      %ecx, %edx                               ##  DEAD:rdx;rsi
	movq      %r15, %rsi                               ##  DEAD:rsi
	movl      %ecx, 24(%rsp)                           ##  DEAD:
	movl      %r8d, 16(%rsp)                           ##  DEAD:
	movl      %r9d, 32(%rsp)                           ##  DEAD:
	movl      %r10d, 8(%rsp)                           ##  DEAD:
	call      crc32@PLT                                ##  DEAD:
.L00001D0B:
	movl      8(%rsp), %r10d                           ##  DEAD:r10;r8;r9;rcx;rflags
	movq      %rax, 24(%r12)                           ##  DEAD:r8;r9;rcx;rflags
	movl      32(%rsp), %r9d                           ##  DEAD:r8;r9;rcx;rflags
	movl      16(%rsp), %r8d                           ##  DEAD:r8;rcx;rflags
	movl      24(%rsp), %ecx                           ##  DEAD:rcx;rflags
	jmp       .L000018BD                               ##  DEAD:rflags
.L00001D28:
	movzbl    %sil, %r11d                              ##  DEAD:r11;rflags
	testb     $-16, %r11b                              ##  DEAD:rflags
	je        .L00001F38                               ##  DEAD:
.L00001D36:
	movzbl    %cl, %ecx                                ##  DEAD:rdx;rflags
	movzwl    %r9w, %r9d                               ##  DEAD:rdx;rflags
	subl      %eax, %r13d                              ##  DEAD:rdx;rflags
	shrq      %cl, %rbp                                ##  DEAD:rdx
	movl      %ecx, 7140(%r12)                         ##  DEAD:rdx;rflags
	movl      %r9d, 84(%r12)                           ##  DEAD:rdx;rflags
.L00001D50:
	movzbl    %sil, %edx                               ##  DEAD:rdx;rflags
	testb     $32, %dl                                 ##  DEAD:rflags
	jne       .L000022CF                               ##  DEAD:
.L00001D5D:
	testb     $64, %dl                                 ##  DEAD:rflags
	jne       .L000024B3                               ##  DEAD:
.L00001D66:
	andl      $15, %edx                                ##  DEAD:rflags
	movl      $21, (%r12)                              ##  DEAD:rflags
	movl      %edx, 92(%r12)                           ##  DEAD:rflags
	jmp       .L00000BAD                               ##  DEAD:rflags
.L00001D7B:
	movq      48(%rsp), %rdx                           ##  DEAD:rdx;rflags
	addq      $16, %rdx                                ##  DEAD:rflags
	cmpq      %rax, %rdx                               ##  DEAD:rflags
	jb        .L00001A11                               ##  DEAD:
.L00001D8D:
	leaq      1(%rax), %rcx                            ##  DEAD:rcx;rdi;rdx;rflags
	leal      -1(%rsi), %edi                           ##  DEAD:rdi;rdx;rflags
	movq      48(%rsp), %rdx                           ##  DEAD:rdx;rflags
	leaq      (%rcx,%rdi), %rdi                        ##  DEAD:rflags
	jmp       .L00001DA3                               ##  DEAD:rflags
.L00001D9F:
	addq      $1, %rcx                                 ##  DEAD:rflags
.L00001DA3:
	movzbl    (%rax), %eax                             ##  DEAD:rflags
	movb      %al, (%rdx)                              ##  DEAD:rflags
	addq      $1, %rdx                                 ##  DEAD:rax;rflags
	cmpq      %rdi, %rcx                               ##  DEAD:rax;rflags
	movq      %rcx, %rax                               ##  DEAD:rax
	jne       .L00001D9F                               ##  DEAD:
.L00001DB4:
	jmp       .L00001A85                               ##  DEAD:r9;rflags
.L00001DB9:
	subl      %ecx, %eax                               ##  DEAD:rdx;rflags;rsi
	addq      64(%r12), %rax                           ##  DEAD:rdx;rflags;rsi
	jmp       .L00001AC4                               ##  DEAD:rdx;rflags;rsi
.L00001DC5:
	cmpw      $16, %dx                                 ##  DEAD:rflags
	je        .L0000226C                               ##  DEAD:
.L00001DCF:
	cmpw      $17, %dx                                 ##  DEAD:rflags
	je        .L000020AC                               ##  DEAD:
.L00001DD9:
	movzbl    %cl, %edi                                ##  DEAD:rdi;rflags;rsi
	leal      7(%rdi), %esi                            ##  DEAD:rflags;rsi
	cmpl      %esi, %r13d                              ##  DEAD:rflags
	jae       .L00001E14                               ##  DEAD:
.L00001DE4:
	testl     %ebx, %ebx                               ##  DEAD:rflags
	je        .L00000980                               ##  DEAD:
.L00001DEC:
	movl      %r13d, %ecx                              ##  DEAD:rcx;rdx;rflags
	jmp       .L00001DF9                               ##  DEAD:rdx;rflags
.L00001DF1:
	testl     %ebx, %ebx                               ##  DEAD:rflags
	je        .L00001918                               ##  DEAD:
.L00001DF9:
	movzbl    (%r15), %edx                             ##  DEAD:rdx;rflags
	subl      $1, %ebx                                 ##  DEAD:rflags
	addq      $1, %r15                                 ##  DEAD:rflags
	salq      %cl, %rdx                                ##  DEAD:
	addl      $8, %ecx                                 ##  DEAD:rflags
	addq      %rdx, %rbp                               ##  DEAD:rflags
	cmpl      %esi, %ecx                               ##  DEAD:rflags
	jb        .L00001DF1                               ##  DEAD:
.L00001E11:
	movl      %ecx, %r13d                              ##  DEAD:r13;rdx;rsi
.L00001E14:
	movl      %edi, %ecx                               ##  DEAD:rcx;rdx;rsi
	movl      $-7, %esi                                ##  DEAD:rdx;rsi
	shrq      %cl, %rbp                                ##  DEAD:rdx
	subl      %eax, %esi                               ##  DEAD:rcx;rdx;rflags
	xorl      %ecx, %ecx                               ##  DEAD:rax;rcx;rdx
	movl      %ebp, %edx                               ##  DEAD:rax;rdx;rflags
	addl      %esi, %r13d                              ##  DEAD:rax;rflags
	shrq      $7, %rbp                                 ##  DEAD:rax
	andl      $127, %edx                               ##  DEAD:rax;rflags
	addl      $11, %edx                                ##  DEAD:rax;rflags
.L00001E31:
	leal      (%rdx,%r9), %eax                         ##  DEAD:rax;rflags
	cmpl      %eax, 120(%rsp)                          ##  DEAD:rflags
	jb        .L0000234A                               ##  DEAD:
.L00001E3F:
	movl      %r9d, %edx                               ##  DEAD:rdx;rflags
	addl      $1, %r9d                                 ##  DEAD:rflags
	cmpl      %r9d, %eax                               ##  DEAD:rflags
	movw      %cx, 144(%r12,%rdx,2)                    ##  DEAD:
	jne       .L00001E3F                               ##  DEAD:
.L00001E54:
	movl      %eax, 132(%r12)                          ##  DEAD:r9;rflags
	jmp       .L0000154D                               ##  DEAD:r9;rflags
.L00001E61:
	movq      $.LC00000073.str1.1, 48(%r14)            ##  DEAD:r13;rbp
	movl      $29, (%r12)                              ##  DEAD:r13;rbp
	jmp       .L0000088E                               ##  DEAD:r13;rbp
.L00001E76:
	movl      $16, (%r12)                              ##  DEAD:r13;rbp
	jmp       .L0000088E                               ##  DEAD:r13;rbp
.L00001E83:
	cmpl      $6, %r10d                                ##  DEAD:rflags
	movq      $lenfix.4224, 96(%r12)                   ##  DEAD:
	movl      $9, 112(%r12)                            ##  DEAD:
	movq      $distfix.4225, 104(%r12)                 ##  DEAD:
	movl      $5, 116(%r12)                            ##  DEAD:
	movl      $19, (%r12)                              ##  DEAD:
	jne       .L0000088E                               ##  DEAD:
.L00001EB9:
	movq      %rbp, %r11                               ##  DEAD:r11;r9;rax;rflags
	subl      $3, %r13d                                ##  DEAD:r9;rax;rbp;rflags
	movl      %r10d, %ebp                              ##  DEAD:r9;rax;rbp
	shrq      $3, %r11                                 ##  DEAD:r10;r9;rax
	movl      %ebx, %r10d                              ##  DEAD:r10;r9;rax;rflags
	movq      %r14, %rbx                               ##  DEAD:r9;rax;rbx;rflags
	movl      %r8d, %r14d                              ##  DEAD:r14;r9;rax;rflags
	jmp       .L0000098F                               ##  DEAD:r9;rax;rflags
.L00001ED5:
	movq      $.LC00000000.str1.1, 48(%r14)            ##  DEAD:rax;rflags
	movl      $29, (%r12)                              ##  DEAD:rax;rflags
	jmp       .L000008A0                               ##  DEAD:rax;rflags
.L00001EEA:
	movb      %bpl, 144(%rsp)                          ##  DEAD:rdi;rdx;rsi
	shrq      $8, %rbp                                 ##  DEAD:rdi;rdx;rsi
	leaq      144(%rsp), %rsi                          ##  DEAD:rdi;rdx;rsi
	movb      %bpl, 145(%rsp)                          ##  DEAD:rdi;rdx
	movq      24(%r12), %rdi                           ##  DEAD:rdi;rdx
	movl      $2, %edx                                 ##  DEAD:rdx
	movl      %r8d, 16(%rsp)                           ##  DEAD:
	movl      %r10d, 8(%rsp)                           ##  DEAD:
	call      crc32@PLT                                ##  DEAD:
.L00001F1F:
	movl      8(%rsp), %r10d                           ##  DEAD:r10;r13;r8;rbp
	movq      %rax, 24(%r12)                           ##  DEAD:r13;r8;rbp
	movl      16(%rsp), %r8d                           ##  DEAD:r13;r8;rax;rbp
	movl      16(%r12), %eax                           ##  DEAD:r13;rax;rbp
	jmp       .L000011D6                               ##  DEAD:r13;rbp
.L00001F38:
	movzwl    %r9w, %r9d                               ##  DEAD:rsi
	movl      $1, %esi                                 ##  DEAD:rsi
	movl      %r9d, 120(%rsp)                          ##  DEAD:
	movzbl    %cl, %r9d                                ##  DEAD:r9
	leal      (%r9,%r11), %ecx                         ##  DEAD:rcx
	sall      %cl, %esi                                ##  DEAD:r11
	movl      %esi, %ecx                               ##  DEAD:r11;rcx;rflags
	subl      $1, %ecx                                 ##  DEAD:r11;rflags;rsi
	movl      %ecx, 136(%rsp)                          ##  DEAD:r11;rflags;rsi
	andl      %ecx, %edx                               ##  DEAD:r11;rflags;rsi
	movl      %r9d, %ecx                               ##  DEAD:r11;rcx;rsi
	shrl      %cl, %edx                                ##  DEAD:r11;rsi
	addl      120(%rsp), %edx                          ##  DEAD:r11;rflags;rsi
	leaq      (%rdi,%rdx,4), %rdx                      ##  DEAD:r11;rflags;rsi
	movzwl    2(%rdx), %r11d                           ##  DEAD:r11;rflags;rsi
	movzbl    (%rdx), %esi                             ##  DEAD:rflags;rsi
	movw      %r11w, 132(%rsp)                         ##  DEAD:rflags
	movzbl    1(%rdx), %edx                            ##  DEAD:r11;rflags
	movb      %dl, 140(%rsp)                           ##  DEAD:r11;rflags
	movzbl    %dl, %edx                                ##  DEAD:r11;rflags
	leal      (%r9,%rdx), %r11d                        ##  DEAD:r11;rflags
	cmpl      %r11d, %r13d                             ##  DEAD:rflags
	jae       .L00001FF1                               ##  DEAD:
.L00001F93:
	testl     %ebx, %ebx                               ##  DEAD:rflags
	je        .L00000980                               ##  DEAD:
.L00001F9B:
	movzbl    (%r15), %edx                             ##  DEAD:r11;rcx;rdx;rflags;rsi
	movl      %r13d, %ecx                              ##  DEAD:r11;rcx;rflags;rsi
	addl      $8, %r13d                                ##  DEAD:r11;rflags;rsi
	subl      $1, %ebx                                 ##  DEAD:r11;rflags;rsi
	addq      $1, %r15                                 ##  DEAD:r11;rflags;rsi
	salq      %cl, %rdx                                ##  DEAD:r11;rsi
	movl      %r9d, %ecx                               ##  DEAD:r11;rcx;rflags;rsi
	addq      %rdx, %rbp                               ##  DEAD:r11;rflags;rsi
	movl      136(%rsp), %edx                          ##  DEAD:r11;rdx;rflags;rsi
	andl      %ebp, %edx                               ##  DEAD:r11;rflags;rsi
	shrl      %cl, %edx                                ##  DEAD:r11;rsi
	addl      120(%rsp), %edx                          ##  DEAD:r11;rcx;rflags;rsi
	leaq      (%rdi,%rdx,4), %rdx                      ##  DEAD:r11;rcx;rflags;rsi
	movzwl    2(%rdx), %r11d                           ##  DEAD:r11;rcx;rflags;rsi
	movzbl    (%rdx), %esi                             ##  DEAD:rcx;rflags;rsi
	movw      %r11w, 132(%rsp)                         ##  DEAD:rcx;rflags
	movzbl    1(%rdx), %ecx                            ##  DEAD:r11;rcx;rflags
	movzbl    %cl, %edx                                ##  DEAD:r11;rdx;rflags
	leal      (%r9,%rdx), %r11d                        ##  DEAD:r11;rflags
	cmpl      %r13d, %r11d                             ##  DEAD:rflags
	ja        .L00001F93                               ##  DEAD:
.L00001FEA:
	movb      %cl, 140(%rsp)                           ##  DEAD:rflags
.L00001FF1:
	subl      %eax, %r13d                              ##  DEAD:rcx;rflags
	movzbl    140(%rsp), %eax                          ##  DEAD:rax;rcx
	movl      %r9d, %ecx                               ##  DEAD:rcx
	shrq      %cl, %rbp                                ##  DEAD:
	movl      %edx, %ecx                               ##  DEAD:rcx
	movl      %r11d, 7140(%r12)                        ##  DEAD:
	shrq      %cl, %rbp                                ##  DEAD:
	subl      %eax, %r13d                              ##  DEAD:rflags
	movzwl    132(%rsp), %eax                          ##  DEAD:rax;rflags
	testb     %sil, %sil                               ##  DEAD:rflags
	movl      %eax, 84(%r12)                           ##  DEAD:
	jne       .L00001D50                               ##  DEAD:
.L00002028:
	jmp       .L00000F20                               ##  DEAD:rax;rflags
.L0000202D:
	movq      %rbp, %rax                               ##  DEAD:rax;rdi;rdx;rsi
	movb      %bpl, 144(%rsp)                          ##  DEAD:rdi;rdx;rsi
	leaq      144(%rsp), %rsi                          ##  DEAD:rdi;rdx;rsi
	shrq      $8, %rax                                 ##  DEAD:rdi;rdx
	movl      $4, %edx                                 ##  DEAD:rdi;rdx
	movl      %r8d, 16(%rsp)                           ##  DEAD:rdi
	movb      %al, 145(%rsp)                           ##  DEAD:rdi
	movq      %rbp, %rax                               ##  DEAD:rax;rdi
	shrq      $24, %rbp                                ##  DEAD:rdi
	shrq      $16, %rax                                ##  DEAD:rdi
	movb      %bpl, 147(%rsp)                          ##  DEAD:rdi
	movl      %r10d, 8(%rsp)                           ##  DEAD:rdi
	movb      %al, 146(%rsp)                           ##  DEAD:rdi
	movq      24(%r12), %rdi                           ##  DEAD:rdi
	call      crc32@PLT                                ##  DEAD:
.L0000207E:
	movl      8(%rsp), %r10d                           ##  DEAD:r10;r13;r8;rbp
	movq      %rax, 24(%r12)                           ##  DEAD:r13;r8;rbp
	movl      16(%rsp), %r8d                           ##  DEAD:r13;r8;rbp
	jmp       .L00001383                               ##  DEAD:r13;rbp
.L00002092:
	movl      %r13d, %ecx                              ##  DEAD:rax;rcx;rflags
	movl      $26, (%r12)                              ##  DEAD:rax;rflags
	andl      $-8, %r13d                               ##  DEAD:rax;rflags
	andl      $7, %ecx                                 ##  DEAD:rax;rflags
	shrq      %cl, %rbp                                ##  DEAD:rax
	jmp       .L000008A0                               ##  DEAD:rax;rflags
.L000020AC:
	movzbl    %cl, %esi                                ##  DEAD:rdi;rflags;rsi
	leal      3(%rsi), %edi                            ##  DEAD:rdi;rflags
	cmpl      %edi, %r13d                              ##  DEAD:rflags
	jae       .L000020DC                               ##  DEAD:
.L000020B7:
	testl     %ebx, %ebx                               ##  DEAD:rflags
	je        .L00000980                               ##  DEAD:
.L000020BF:
	movzbl    (%r15), %edx                             ##  DEAD:rcx;rdx;rflags
	movl      %r13d, %ecx                              ##  DEAD:rcx;rflags
	addl      $8, %r13d                                ##  DEAD:rflags
	subl      $1, %ebx                                 ##  DEAD:rflags
	addq      $1, %r15                                 ##  DEAD:rflags
	salq      %cl, %rdx                                ##  DEAD:
	addq      %rdx, %rbp                               ##  DEAD:rflags
	cmpl      %edi, %r13d                              ##  DEAD:rflags
	jb        .L000020B7                               ##  DEAD:
.L000020DC:
	movl      %esi, %ecx                               ##  DEAD:rcx;rdx
	movl      $-3, %esi                                ##  DEAD:rdx;rsi
	shrq      %cl, %rbp                                ##  DEAD:rdx
	subl      %eax, %esi                               ##  DEAD:rcx;rdx;rflags
	xorl      %ecx, %ecx                               ##  DEAD:rax;rcx;rdx
	movl      %ebp, %edx                               ##  DEAD:rax;rdx;rflags
	addl      %esi, %r13d                              ##  DEAD:rax;rflags
	shrq      $3, %rbp                                 ##  DEAD:rax
	andl      $7, %edx                                 ##  DEAD:rax;rflags
	addl      $3, %edx                                 ##  DEAD:rax;rflags
	jmp       .L00001E31                               ##  DEAD:rax;rflags
.L000020FE:
	testb     $2, %dl                                  ##  DEAD:rflags
	je        .L00001411                               ##  DEAD:
.L00002107:
	xorl      %edx, %edx                               ##  DEAD:r13;rdi;rdx;rsi
	xorl      %esi, %esi                               ##  DEAD:r13;rdi;rsi
	xorl      %edi, %edi                               ##  DEAD:r13;rdi
	movl      %r8d, 16(%rsp)                           ##  DEAD:r13
	movl      %r10d, 8(%rsp)                           ##  DEAD:r13
	xorl      %r13d, %r13d                             ##  DEAD:r13
	call      crc32@PLT                                ##  DEAD:
.L0000211F:
	movq      %rax, 24(%r12)                           ##  DEAD:rdi;rdx;rsi
	movb      $31, 144(%rsp)                           ##  DEAD:rdi;rdx;rsi
	leaq      144(%rsp), %rsi                          ##  DEAD:rdi;rdx;rsi
	movb      $-117, 145(%rsp)                         ##  DEAD:rdi;rdx
	movq      24(%r12), %rdi                           ##  DEAD:rdi;rdx
	movl      $2, %edx                                 ##  DEAD:rdx
	xorw      %bp, %bp                                 ##  DEAD:
	call      crc32@PLT                                ##  DEAD:
.L0000214E:
	movl      $1, (%r12)                               ##  DEAD:r10;r8;rflags
	movq      %rax, 24(%r12)                           ##  DEAD:r10;r8;rflags
	movl      16(%rsp), %r8d                           ##  DEAD:r10;r8;rax;rflags
	movl      8(%rsp), %r10d                           ##  DEAD:r10;rax;rflags
	jmp       .L000008A0                               ##  DEAD:rax;rflags
.L0000216A:
	movq      24(%r12), %rdi                           ##  DEAD:rdi;rdx;rsi
	movl      %ecx, %edx                               ##  DEAD:rdx;rsi
	movq      %r15, %rsi                               ##  DEAD:rsi
	movl      %ecx, 24(%rsp)                           ##  DEAD:
	movl      %r8d, 16(%rsp)                           ##  DEAD:
	movl      %r10d, 8(%rsp)                           ##  DEAD:
	call      crc32@PLT                                ##  DEAD:
.L00002187:
	movl      8(%rsp), %r10d                           ##  DEAD:r10;r8;rcx;rdx;rflags
	movq      %rax, 24(%r12)                           ##  DEAD:r8;rcx;rdx;rflags
	movl      16(%rsp), %r8d                           ##  DEAD:r8;rcx;rdx;rflags
	movl      24(%rsp), %ecx                           ##  DEAD:rcx;rdx;rflags
	jmp       .L00001829                               ##  DEAD:rdx;rflags
.L0000219F:
	movb      %bpl, 144(%rsp)                          ##  DEAD:r13;rdi;rdx;rsi
	shrq      $8, %rbp                                 ##  DEAD:r13;rdi;rdx;rsi
	leaq      144(%rsp), %rsi                          ##  DEAD:r13;rdi;rdx;rsi
	movb      %bpl, 145(%rsp)                          ##  DEAD:r13;rdi;rdx
	movq      24(%r12), %rdi                           ##  DEAD:r13;rbp;rdi;rdx
	movl      $2, %edx                                 ##  DEAD:r13;rbp;rdx
	movl      %r8d, 16(%rsp)                           ##  DEAD:r13;rbp
	movl      %r10d, 8(%rsp)                           ##  DEAD:r13;rbp
	xorl      %r13d, %r13d                             ##  DEAD:r13;rbp
	xorl      %ebp, %ebp                               ##  DEAD:rbp
	call      crc32@PLT                                ##  DEAD:
.L000021D9:
	movl      16(%rsp), %r8d                           ##  DEAD:r10;r8;rflags
	movq      %rax, 24(%r12)                           ##  DEAD:r10;rflags
	movl      8(%rsp), %r10d                           ##  DEAD:r10;rax;rflags
	movl      16(%r12), %eax                           ##  DEAD:rax;rflags
	jmp       .L0000124E                               ##  DEAD:rflags
.L000021F2:
	movq      $.LC00000000.str1.8, 48(%r14)            ##  DEAD:rax;rflags
	movl      $29, (%r12)                              ##  DEAD:rax;rflags
	jmp       .L000008A0                               ##  DEAD:rax;rflags
.L00002207:
	movq      $.LC00000124.str1.1, 48(%r14)            ##  DEAD:rax;rflags
	movl      $29, (%r12)                              ##  DEAD:rax;rflags
	jmp       .L000008A0                               ##  DEAD:rax;rflags
.L0000221C:
	movl      $12, (%r12)                              ##  DEAD:rax;rflags
	jmp       .L000008A0                               ##  DEAD:rax;rflags
.L00002229:
	movq      48(%rsp), %rcx                           ##  DEAD:rcx;rdi;rflags
	movq      24(%r12), %rdi                           ##  DEAD:rdi;rflags
	movl      %r8d, 16(%rsp)                           ##  DEAD:rflags
	movl      %r10d, 8(%rsp)                           ##  DEAD:rflags
	subq      %rsi, %rcx                               ##  DEAD:rflags
	movq      %rcx, %rsi                               ##  DEAD:rsi
	call      adler32@PLT                              ##  DEAD:
.L00002248:
	movl      8(%rsp), %r10d                           ##  DEAD:r10;r8;rflags
	movl      16(%rsp), %r8d                           ##  DEAD:r8;rflags
	jmp       .L00000FC2                               ##  DEAD:rflags
.L00002257:
	movq      $.LC00000086.str1.1, 48(%r14)            ##  DEAD:rax;rflags
	movl      $29, (%r12)                              ##  DEAD:rax;rflags
	jmp       .L000008A0                               ##  DEAD:rax;rflags
.L0000226C:
	movzbl    %cl, %esi                                ##  DEAD:rdi;rflags;rsi
	leal      2(%rsi), %edi                            ##  DEAD:rdi;rflags
	cmpl      %edi, %r13d                              ##  DEAD:rflags
	jae       .L0000229C                               ##  DEAD:
.L00002277:
	testl     %ebx, %ebx                               ##  DEAD:rflags
	je        .L00000980                               ##  DEAD:
.L0000227F:
	movzbl    (%r15), %edx                             ##  DEAD:rcx;rdx;rflags
	movl      %r13d, %ecx                              ##  DEAD:rcx;rflags
	addl      $8, %r13d                                ##  DEAD:rflags
	subl      $1, %ebx                                 ##  DEAD:rflags
	addq      $1, %r15                                 ##  DEAD:rflags
	salq      %cl, %rdx                                ##  DEAD:
	addq      %rdx, %rbp                               ##  DEAD:rflags
	cmpl      %edi, %r13d                              ##  DEAD:rflags
	jb        .L00002277                               ##  DEAD:
.L0000229C:
	movl      %esi, %ecx                               ##  DEAD:rcx;rflags
	subl      %eax, %r13d                              ##  DEAD:rflags
	shrq      %cl, %rbp                                ##  DEAD:
	testl     %r9d, %r9d                               ##  DEAD:rflags
	je        .L0000234A                               ##  DEAD:
.L000022AD:
	movl      %ebp, %edx                               ##  DEAD:rax;rcx;rdx
	leal      -1(%r9), %eax                            ##  DEAD:rax;rcx
	shrq      $2, %rbp                                 ##  DEAD:rcx
	andl      $3, %edx                                 ##  DEAD:rcx;rflags
	subl      $2, %r13d                                ##  DEAD:rcx;rflags
	movzwl    144(%r12,%rax,2), %ecx                   ##  DEAD:rcx;rflags
	addl      $3, %edx                                 ##  DEAD:rax;rflags
	jmp       .L00001E31                               ##  DEAD:rax;rflags
.L000022CF:
	movl      $-1, 7140(%r12)                          ##  DEAD:rax;rflags
.L000022DB:
	movl      $11, (%r12)                              ##  DEAD:rax;rflags
	jmp       .L000008A0                               ##  DEAD:rax;rflags
.L000022E8:
	movq      48(%rsp), %rax                           ##  DEAD:r10;rax;rdx;rflags
	movl      44(%rsp), %edx                           ##  DEAD:r10;rdx;rflags
	movl      %ebx, %r10d                              ##  DEAD:r10;rflags
	movl      %r10d, 8(%r14)                           ##  DEAD:rbx;rflags
	movq      %r15, (%r14)                             ##  DEAD:rbx;rflags
	movq      %rbp, 72(%r12)                           ##  DEAD:r15;rbx;rflags
	movl      %edx, 32(%r14)                           ##  DEAD:r15;rbp;rbx;rflags
	movq      %rax, 24(%r14)                           ##  DEAD:r15;rbp;rbx;rflags
	movl      $2, %r14d                                ##  DEAD:r14;r15;rax;rbp;rbx;rflags
	movl      %r13d, 80(%r12)                          ##  DEAD:r15;rax;rbp;rbx;rflags
	jmp       .L00000715                               ##  DEAD:r12;r13;r15;rax;rbp;rbx;rflags
.L00002318:
	movq      $.LC00000046.str1.1, 48(%r14)            ##  DEAD:rax;rflags
	movl      $29, (%r12)                              ##  DEAD:rax;rflags
	jmp       .L000008A0                               ##  DEAD:rax;rflags
.L0000232D:
	movl      44(%rsp), %esi                           ##  DEAD:rax;rflags;rsi
	movq      $.LC00000158.str1.1, 48(%r14)            ##  DEAD:rax;rflags
	movl      $29, (%r12)                              ##  DEAD:rax;rflags
	movl      %esi, 56(%rsp)                           ##  DEAD:rax;rflags
	jmp       .L000008A0                               ##  DEAD:rax;rflags
.L0000234A:
	movq      $.LC000000BC.str1.1, 48(%r14)            ##  DEAD:rax;rflags
	movl      $29, (%r12)                              ##  DEAD:rax;rflags
	jmp       .L000008A0                               ##  DEAD:rax;rflags
.L0000235F:
	movq      $.LC000000A3.str1.1, 48(%r14)            ##  DEAD:rax;rflags
	movl      $29, (%r12)                              ##  DEAD:rax;rflags
	jmp       .L000008A0                               ##  DEAD:rax;rflags
.L00002374:
	movq      %rbp, %r11                               ##  DEAD:r11;r9;rax;rflags
	movl      %r10d, %ebp                              ##  DEAD:r9;rax;rbp;rflags
	movl      %ebx, %r10d                              ##  DEAD:r10;r9;rax;rflags
	movq      %r14, %rbx                               ##  DEAD:r9;rax;rbx;rflags
.L00002380:
	movl      $28, (%r12)                              ##  DEAD:r14;r9;rax;rflags
	movl      $1, %r14d                                ##  DEAD:r14;r9;rax;rflags
	jmp       .L0000098F                               ##  DEAD:r9;rax;rflags
.L00002393:
	cmpl      $257, 44(%rsp)                           ##  DEAD:rflags
	jbe       .L00000E65                               ##  DEAD:
.L000023A1:
	movq      48(%rsp), %r9                            ##  DEAD:r11;r9;rdi;rsi
	movl      44(%rsp), %r11d                          ##  DEAD:r11;rdi;rsi
	movq      %r14, %rdi                               ##  DEAD:rdi;rsi
	movl      56(%rsp), %esi                           ##  DEAD:rsi
	movl      %ebx, 8(%r14)                            ##  DEAD:
	movq      %r15, (%r14)                             ##  DEAD:
	movq      %rbp, 72(%r12)                           ##  DEAD:
	movl      %r11d, 32(%r14)                          ##  DEAD:
	movq      %r9, 24(%r14)                            ##  DEAD:
	movl      %r13d, 80(%r12)                          ##  DEAD:
	movl      %r8d, 16(%rsp)                           ##  DEAD:
	movl      %r10d, 8(%rsp)                           ##  DEAD:
	call      inflate_fast@PLT                         ##  DEAD:
.L000023DA:
	cmpl      $11, (%r12)                              ##  DEAD:r10;r13;r15;r8;rax;rbp;rbx;rdx;rflags
	movq      24(%r14), %rax                           ##  DEAD:r10;r13;r15;r8;rax;rbp;rbx;rdx
	movl      32(%r14), %edx                           ##  DEAD:r10;r13;r15;r8;rbp;rbx;rdx
	movq      (%r14), %r15                             ##  DEAD:r10;r13;r15;r8;rbp;rbx
	movl      8(%r14), %ebx                            ##  DEAD:r10;r13;r8;rbp;rbx
	movq      72(%r12), %rbp                           ##  DEAD:r10;r13;r8;rbp
	movq      %rax, 48(%rsp)                           ##  DEAD:r10;r13;r8
	movl      80(%r12), %r13d                          ##  DEAD:r10;r13;r8
	movl      %edx, 44(%rsp)                           ##  DEAD:r10;r8
	movl      16(%rsp), %r8d                           ##  DEAD:r10;r8
	movl      8(%rsp), %r10d                           ##  DEAD:r10
	jne       .L000008A0                               ##  DEAD:
.L00002411:
	movl      $-1, 7140(%r12)                          ##  DEAD:rax;rflags
	jmp       .L000008A0                               ##  DEAD:rax;rflags
.L00002422:
	movl      %esi, %r9d                               ##  DEAD:r9;rcx;rdi;rdx;rflags
	movq      48(%rsp), %rdx                           ##  DEAD:rcx;rdi;rdx;rflags
	jmp       .L00001A5E                               ##  DEAD:rcx;rdi;rflags
.L0000242F:
	movl      %r10d, %ebp                              ##  DEAD:r11;r13;r9;rax;rbp
	xorl      %r13d, %r13d                             ##  DEAD:r10;r11;r13;r9;rax
	movl      %ebx, %r10d                              ##  DEAD:r10;r11;r9;rax
	xorl      %r11d, %r11d                             ##  DEAD:r11;r9;rax;rbx
	movq      %r14, %rbx                               ##  DEAD:r9;rax;rbx;rflags
	jmp       .L00002380                               ##  DEAD:r14;r9;rax;rflags
.L00002443:
	shrq      $4, %rbp                                 ##  DEAD:rax;rcx
	movl      48(%r12), %eax                           ##  DEAD:rax;rcx;rflags
	movl      %ebp, %ecx                               ##  DEAD:rcx;rflags
	andl      $15, %ecx                                ##  DEAD:rflags
	addl      $8, %ecx                                 ##  DEAD:rflags
	testl     %eax, %eax                               ##  DEAD:rflags
	jne       .L000024C8                               ##  DEAD:
.L00002458:
	movl      %ecx, 48(%r12)                           ##  DEAD:r11;rdi;rdx;rsi
.L0000245D:
	movl      $1, %r11d                                ##  DEAD:r11;rdi;rdx;rsi
	xorl      %edx, %edx                               ##  DEAD:rdi;rdx;rsi
	xorl      %esi, %esi                               ##  DEAD:rdi;rsi
	sall      %cl, %r11d                               ##  DEAD:rdi
	xorl      %edi, %edi                               ##  DEAD:rdi
	andl      $512, %ebp                               ##  DEAD:rflags
	movl      %r11d, 20(%r12)                          ##  DEAD:
	movl      %r8d, 16(%rsp)                           ##  DEAD:
	movl      %r10d, 8(%rsp)                           ##  DEAD:
	call      adler32@PLT                              ##  DEAD:
.L00002486:
	cmpq      $1, %rbp                                 ##  DEAD:r10;r13;r8;rflags
	movq      %rax, 24(%r12)                           ##  DEAD:r10;r13;r8;rbp
	movq      %rax, 96(%r14)                           ##  DEAD:r10;r13;r8;rbp
	sbbl      %eax, %eax                               ##  DEAD:r10;r13;r8;rbp
	movl      16(%rsp), %r8d                           ##  DEAD:r10;r13;r8;rbp
	xorl      %r13d, %r13d                             ##  DEAD:r10;r13;rbp
	andl      $2, %eax                                 ##  DEAD:r10;rbp;rflags
	xorl      %ebp, %ebp                               ##  DEAD:r10;rbp
	movl      8(%rsp), %r10d                           ##  DEAD:r10;rflags
	addl      $9, %eax                                 ##  DEAD:rflags
	movl      %eax, (%r12)                             ##  DEAD:rflags
	jmp       .L000008A0                               ##  DEAD:rax;rflags
.L000024B3:
	movq      $.LC00000108.str1.1, 48(%r14)            ##  DEAD:rax;rflags
	movl      $29, (%r12)                              ##  DEAD:rax;rflags
	jmp       .L000008A0                               ##  DEAD:rax;rflags
.L000024C8:
	cmpl      %eax, %ecx                               ##  DEAD:rflags
	jbe       .L0000245D                               ##  DEAD:
.L000024CC:
	subl      $4, %r13d                                ##  DEAD:rax;rflags
	movq      $.LC00000032.str1.1, 48(%r14)            ##  DEAD:rax;rflags
	movl      $29, (%r12)                              ##  DEAD:rax;rflags
	jmp       .L000008A0                               ##  DEAD:rax;rflags
.L000024E5:
	movl      %r10d, %ebp                              ##  DEAD:r11;r13;r9;rax;rbp
	xorl      %r13d, %r13d                             ##  DEAD:r10;r11;r13;r9;rax
	movl      %ebx, %r10d                              ##  DEAD:r10;r11;r9;rax
	xorl      %r11d, %r11d                             ##  DEAD:r11;r9;rax;rbx
	movq      %r14, %rbx                               ##  DEAD:r9;rax;rbx;rflags
	movl      %r8d, %r14d                              ##  DEAD:r14;r9;rax;rflags
	jmp       .L0000098F                               ##  DEAD:r9;rax;rflags
.L000024FC:
	movq      $.LC000000F2.str1.1, 48(%r14)            ##  DEAD:rax;rflags
	movl      $29, (%r12)                              ##  DEAD:rax;rflags
	jmp       .L000008A0                               ##  DEAD:rax;rflags
.L00002511:
	movq      $.LC000000D6.str1.1, 48(%r14)            ##  DEAD:rax;rflags
	movl      $29, (%r12)                              ##  DEAD:rax;rflags
	jmp       .L000008A0                               ##  DEAD:rax;rflags
.L00002526:
	movq      $.LC00000028.str1.8, 48(%r14)            ##  DEAD:rax;rflags
	movl      $29, (%r12)                              ##  DEAD:rax;rflags
	jmp       .L000008A0                               ##  DEAD:rax;rflags
	.size	inflate, .-inflate
# ----------------------
.L0000253B:
	.p2align 3
# ----------------------
	.globl	inflateReset
	.type	inflateReset, @function
inflateReset:
	testq     %rdi, %rdi                               ##  DEAD:rflags
	jne       .L00002550                               ##  DEAD:
.L00002545:
	movl      $-2, %eax                                ##  DEAD:rax
	ret                                                ##  DEAD:
.L0000254B:
	.p2align 3
.L00002550:
	movq      56(%rdi), %rax                           ##  DEAD:rax;rflags
	testq     %rax, %rax                               ##  DEAD:rflags
	je        .L00002545                               ##  DEAD:
.L00002559:
	movl      8(%rax), %edx                            ##  DEAD:rdx;rflags
	movq      $0, 32(%rax)                             ##  DEAD:rflags
	movl      $0, 52(%rax)                             ##  DEAD:rflags
	movl      $0, 56(%rax)                             ##  DEAD:rflags
	movl      $0, 60(%rax)                             ##  DEAD:rflags
	movq      $0, 40(%rdi)                             ##  DEAD:rflags
	testl     %edx, %edx                               ##  DEAD:rflags
	movq      $0, 16(%rdi)                             ##  DEAD:
	movq      $0, 48(%rdi)                             ##  DEAD:
	je        .L000025A0                               ##  DEAD:
.L00002595:
	andl      $1, %edx                                 ##  DEAD:rflags
	movq      %rdx, 96(%rdi)                           ##  DEAD:
	.p2align 3
.L000025A0:
	leaq      1360(%rax), %rdx                         ##  DEAD:rdx
	movl      $0, (%rax)                               ##  DEAD:
	movl      $0, 4(%rax)                              ##  DEAD:
	movl      $0, 12(%rax)                             ##  DEAD:
	movl      $32768, 20(%rax)                         ##  DEAD:
	movq      $0, 40(%rax)                             ##  DEAD:
	movq      $0, 72(%rax)                             ##  DEAD:
	movl      $0, 80(%rax)                             ##  DEAD:
	movq      %rdx, 136(%rax)                          ##  DEAD:
	movq      %rdx, 104(%rax)                          ##  DEAD:
	movq      %rdx, 96(%rax)                           ##  DEAD:
	movl      $1, 7136(%rax)                           ##  DEAD:
	movl      $-1, 7140(%rax)                          ##  DEAD:
	xorl      %eax, %eax                               ##  DEAD:rax
	ret                                                ##  DEAD:
	.size	inflateReset, .-inflateReset
# ----------------------
.L000025FF:
	.p2align 3
# ----------------------
	.globl	inflateReset2
	.type	inflateReset2, @function
inflateReset2:
	movq      %rbx, -32(%rsp)                          ##  DEAD:rflags
	movq      %rbp, -24(%rsp)                          ##  DEAD:rbx;rflags
	movq      %rdi, %rbx                               ##  DEAD:rbp;rbx;rflags
	movq      %r12, -16(%rsp)                          ##  DEAD:rbp;rflags
	movq      %r13, -8(%rsp)                           ##  DEAD:rbp;rflags
	subq      $40, %rsp                                ##  DEAD:rbp;rflags
	testq     %rdi, %rdi                               ##  DEAD:rbp;rflags
	movl      %esi, %ebp                               ##  DEAD:rbp
	jne       .L00002640                               ##  DEAD:
.L00002622:
	movl      $-2, %eax                                ##  DEAD:r12;r13;rax;rbp;rbx;rflags
	movq      8(%rsp), %rbx                            ##  DEAD:r12;r13;rbp;rbx;rflags
	movq      16(%rsp), %rbp                           ##  DEAD:r12;r13;rbp;rflags
	movq      24(%rsp), %r12                           ##  DEAD:r12;r13;rflags
	movq      32(%rsp), %r13                           ##  DEAD:r13;rflags
	addq      $40, %rsp                                ##  DEAD:rflags
	ret                                                ##  DEAD:
.L00002640:
	movq      56(%rdi), %r12                           ##  DEAD:r12;rflags
	testq     %r12, %r12                               ##  DEAD:rflags
	je        .L00002622                               ##  DEAD:
.L00002649:
	testl     %esi, %esi                               ##  DEAD:rflags
	js        .L000026C9                               ##  DEAD:
.L0000264D:
	movl      %esi, %r13d                              ##  DEAD:r13;rax
	movl      %esi, %eax                               ##  DEAD:rax
	sarl      $4, %r13d                                ##  DEAD:
	andl      $15, %eax                                ##  DEAD:rflags
	addl      $1, %r13d                                ##  DEAD:rflags
	cmpl      $47, %esi                                ##  DEAD:rflags
	cmovle    %eax, %ebp                               ##  DEAD:
.L00002663:
	leal      -8(%rbp), %eax                           ##  DEAD:rax;rflags
	cmpl      $7, %eax                                 ##  DEAD:rflags
	ja        .L000026C0                               ##  DEAD:
.L0000266B:
	movq      64(%r12), %rsi                           ##  DEAD:rflags;rsi
	testq     %rsi, %rsi                               ##  DEAD:rflags
	je        .L0000268C                               ##  DEAD:
.L00002675:
	cmpl      48(%r12), %ebp                           ##  DEAD:rflags
	je        .L0000268C                               ##  DEAD:
.L0000267C:
	movq      80(%rbx), %rdi                           ##  DEAD:rdi
	call      *72(%rbx)                                ##  DEAD:
.L00002683:
	movq      $0, 64(%r12)                             ##  DEAD:rdi;rflags
.L0000268C:
	movl      %r13d, 8(%r12)                           ##  DEAD:rdi;rflags
	movl      %ebp, 48(%r12)                           ##  DEAD:r13;rdi;rflags
	movq      %rbx, %rdi                               ##  DEAD:r12;r13;rbp;rdi;rflags
	movq      16(%rsp), %rbp                           ##  DEAD:r12;r13;rbp;rbx;rflags
	movq      8(%rsp), %rbx                            ##  DEAD:r12;r13;rbx;rflags
	movq      24(%rsp), %r12                           ##  DEAD:r12;r13;rflags
	movq      32(%rsp), %r13                           ##  DEAD:r13;rflags
	addq      $40, %rsp                                ##  DEAD:rflags
	jmp       .LTHUNK182                               ##  DEAD:
.L000026B6:
	.p2align 4
.L000026C0:
	testl     %ebp, %ebp                               ##  DEAD:rflags
	je        .L0000266B                               ##  DEAD:
.L000026C4:
	jmp       .L00002622                               ##  DEAD:r12;r13;rax;rbp;rbx;rflags
.L000026C9:
	negl      %ebp                                     ##  DEAD:r13;rax;rflags
	xorl      %r13d, %r13d                             ##  DEAD:r13;rax
	.p2align 3
	jmp       .L00002663                               ##  DEAD:rax;rflags
	.size	inflateReset2, .-inflateReset2
# ----------------------
.L000026D2:
	.p2align 4
# ----------------------
	.globl	inflateInit2_
	.type	inflateInit2_, @function
inflateInit2_:
	movq      %rbx, -24(%rsp)                          ##  DEAD:rflags
	movq      %rbp, -16(%rsp)                          ##  DEAD:rbx;rflags
	movq      %rdi, %rbx                               ##  DEAD:rbp;rbx;rflags
	movq      %r12, -8(%rsp)                           ##  DEAD:rbp;rflags
	subq      $40, %rsp                                ##  DEAD:rbp;rflags
	testq     %rdx, %rdx                               ##  DEAD:rbp;rflags
	movl      %esi, %ebp                               ##  DEAD:rbp
	jne       .L00002720                               ##  DEAD:
.L000026FD:
	movl      $-6, %eax                                ##  DEAD:r12;rax;rbp;rbx;rflags
.L00002702:
	movq      16(%rsp), %rbx                           ##  DEAD:r12;rbp;rbx;rflags
	movq      24(%rsp), %rbp                           ##  DEAD:r12;rbp;rflags
	movq      32(%rsp), %r12                           ##  DEAD:r12;rflags
	addq      $40, %rsp                                ##  DEAD:rflags
	ret                                                ##  DEAD:
.L00002716:
	.p2align 4
.L00002720:
	cmpl      $112, %ecx                               ##  DEAD:rflags
	jne       .L000026FD                               ##  DEAD:
.L00002725:
	cmpb      $49, (%rdx)                              ##  DEAD:rflags
	jne       .L000026FD                               ##  DEAD:
.L0000272A:
	testq     %rdi, %rdi                               ##  DEAD:rax;rflags
	movl      $-2, %eax                                ##  DEAD:rax
	je        .L00002702                               ##  DEAD:
.L00002734:
	movq      64(%rdi), %rax                           ##  DEAD:rax;rflags
	movq      $0, 48(%rdi)                             ##  DEAD:rflags
	testq     %rax, %rax                               ##  DEAD:rflags
	je        .L000027A7                               ##  DEAD:
.L00002745:
	cmpq      $0, 72(%rbx)                             ##  DEAD:rflags
	je        .L000027BE                               ##  DEAD:
.L0000274C:
	movq      80(%rbx), %rdi                           ##  DEAD:rdi;rdx;rsi
	movl      $7152, %edx                              ##  DEAD:rdx;rsi
	movl      $1, %esi                                 ##  DEAD:rsi
	call      *%rax                                    ##  DEAD:
.L0000275C:
	movq      %rax, %r12                               ##  DEAD:r12;rflags
	movl      $-4, %eax                                ##  DEAD:rax;rflags
	testq     %r12, %r12                               ##  DEAD:rflags
	je        .L00002702                               ##  DEAD:
.L00002769:
	movq      %r12, 56(%rbx)                           ##  DEAD:rdi;rflags;rsi
	movq      $0, 64(%r12)                             ##  DEAD:rdi;rflags;rsi
	movl      %ebp, %esi                               ##  DEAD:rdi;rflags;rsi
	movq      %rbx, %rdi                               ##  DEAD:rdi;rflags
	call      inflateReset2@PLT                        ##  DEAD:rflags
.L00002780:
	testl     %eax, %eax                               ##  DEAD:rflags
	je        .L00002702                               ##  DEAD:
.L00002788:
	movl      %eax, 8(%rsp)                            ##  DEAD:rdi;rsi
	movq      80(%rbx), %rdi                           ##  DEAD:rdi;rsi
	movq      %r12, %rsi                               ##  DEAD:rsi
	call      *72(%rbx)                                ##  DEAD:
.L00002796:
	movq      $0, 56(%rbx)                             ##  DEAD:r12;rax;rbp;rflags
	movl      8(%rsp), %eax                            ##  DEAD:r12;rax;rbp;rbx;rflags
	jmp       .L00002702                               ##  DEAD:r12;rbp;rbx;rflags
.L000027A7:
	movq      $zcalloc, 64(%rdi)                       ##  DEAD:rax;rflags
	movq      $0, 80(%rdi)                             ##  DEAD:rax;rflags
	movl      $zcalloc, %eax                           ##  DEAD:rax;rflags
	jmp       .L00002745                               ##  DEAD:rflags
.L000027BE:
	movq      $zcfree, 72(%rbx)                        ##  DEAD:rax;rdi;rdx;rsi
	movq      64(%rbx), %rax                           ##  DEAD:rax;rdi;rdx;rsi
	jmp       .L0000274C                               ##  DEAD:rdi;rdx;rsi
	.size	inflateInit2_, .-inflateInit2_
# ----------------------
.L000027CC:
	.p2align 3
# ----------------------
	.globl	inflateInit_
	.type	inflateInit_, @function
inflateInit_:
	movq      %rbx, -16(%rsp)                          ##  DEAD:rflags
	movq      %rbp, -8(%rsp)                           ##  DEAD:rbx;rflags
	subq      $40, %rsp                                ##  DEAD:rbx;rflags
	testq     %rsi, %rsi                               ##  DEAD:rbx;rflags
	movq      %rdi, %rbx                               ##  DEAD:rbx
	jne       .L00002800                               ##  DEAD:
.L000027E6:
	movl      $-6, %eax                                ##  DEAD:rax;rbp;rbx;rflags
.L000027EB:
	movq      24(%rsp), %rbx                           ##  DEAD:rbp;rbx;rflags
	movq      32(%rsp), %rbp                           ##  DEAD:rbp;rflags
	addq      $40, %rsp                                ##  DEAD:rflags
	ret                                                ##  DEAD:
.L000027FA:
	.p2align 3
.L00002800:
	cmpl      $112, %edx                               ##  DEAD:rflags
	jne       .L000027E6                               ##  DEAD:
.L00002805:
	cmpb      $49, (%rsi)                              ##  DEAD:rflags
	jne       .L000027E6                               ##  DEAD:
.L0000280A:
	testq     %rdi, %rdi                               ##  DEAD:rax;rflags
	movl      $-2, %eax                                ##  DEAD:rax
	je        .L000027EB                               ##  DEAD:
.L00002814:
	movq      64(%rdi), %rax                           ##  DEAD:rax;rflags
	movq      $0, 48(%rdi)                             ##  DEAD:rflags
	testq     %rax, %rax                               ##  DEAD:rflags
	je        .L00002885                               ##  DEAD:
.L00002825:
	cmpq      $0, 72(%rbx)                             ##  DEAD:rflags
	je        .L0000289C                               ##  DEAD:
.L0000282C:
	movq      80(%rbx), %rdi                           ##  DEAD:rdi;rdx;rsi
	movl      $7152, %edx                              ##  DEAD:rdx;rsi
	movl      $1, %esi                                 ##  DEAD:rsi
	call      *%rax                                    ##  DEAD:
.L0000283C:
	movq      %rax, %rbp                               ##  DEAD:rbp;rflags
	movl      $-4, %eax                                ##  DEAD:rax;rflags
	testq     %rbp, %rbp                               ##  DEAD:rflags
	je        .L000027EB                               ##  DEAD:
.L00002849:
	movq      %rbp, 56(%rbx)                           ##  DEAD:rdi;rflags;rsi
	movq      $0, 64(%rbp)                             ##  DEAD:rdi;rflags;rsi
	movl      $15, %esi                                ##  DEAD:rdi;rflags;rsi
	movq      %rbx, %rdi                               ##  DEAD:rdi;rflags
	call      inflateReset2@PLT                        ##  DEAD:rflags
.L00002862:
	testl     %eax, %eax                               ##  DEAD:rflags
	je        .L000027EB                               ##  DEAD:
.L00002866:
	movl      %eax, 8(%rsp)                            ##  DEAD:rdi;rsi
	movq      80(%rbx), %rdi                           ##  DEAD:rdi;rsi
	movq      %rbp, %rsi                               ##  DEAD:rsi
	call      *72(%rbx)                                ##  DEAD:
.L00002874:
	movq      $0, 56(%rbx)                             ##  DEAD:rax;rbp;rflags
	movl      8(%rsp), %eax                            ##  DEAD:rax;rbp;rbx;rflags
	jmp       .L000027EB                               ##  DEAD:rbp;rbx;rflags
.L00002885:
	movq      $zcalloc, 64(%rdi)                       ##  DEAD:rax;rflags
	movq      $0, 80(%rdi)                             ##  DEAD:rax;rflags
	movl      $zcalloc, %eax                           ##  DEAD:rax;rflags
	jmp       .L00002825                               ##  DEAD:rflags
.L0000289C:
	movq      $zcfree, 72(%rbx)                        ##  DEAD:rax;rdi;rdx;rsi
	movq      64(%rbx), %rax                           ##  DEAD:rax;rdi;rdx;rsi
	jmp       .L0000282C                               ##  DEAD:rdi;rdx;rsi
	.size	inflateInit_, .-inflateInit_
# ----------------------
.L000028AA:
	.p2align 3
# ----------------------
	.globl	inflateSync
	.type	inflateSync, @function
inflateSync:
	movq      %rbx, -32(%rsp)                          ##  DEAD:rflags
	movq      %rbp, -24(%rsp)                          ##  DEAD:rbx;rflags
	movq      %rdi, %rbx                               ##  DEAD:rbx;rflags
	movq      %r12, -16(%rsp)                          ##  DEAD:rflags
	movq      %r13, -8(%rsp)                           ##  DEAD:rflags
	subq      $56, %rsp                                ##  DEAD:rflags
	testq     %rdi, %rdi                               ##  DEAD:rflags
	jne       .L000028F0                               ##  DEAD:
.L000028D0:
	movl      $-2, %eax                                ##  DEAD:r12;r13;rax;rbp;rbx;rflags
.L000028D5:
	movq      24(%rsp), %rbx                           ##  DEAD:r12;r13;rbp;rbx;rflags
	movq      32(%rsp), %rbp                           ##  DEAD:r12;r13;rbp;rflags
	movq      40(%rsp), %r12                           ##  DEAD:r12;r13;rflags
	movq      48(%rsp), %r13                           ##  DEAD:r13;rflags
	addq      $56, %rsp                                ##  DEAD:rflags
	ret                                                ##  DEAD:
.L000028EE:
	.p2align 3
.L000028F0:
	movq      56(%rdi), %rbp                           ##  DEAD:rbp;rflags
	testq     %rbp, %rbp                               ##  DEAD:rflags
	je        .L000028D0                               ##  DEAD:
.L000028F9:
	movl      8(%rdi), %edi                            ##  DEAD:rflags
	testl     %edi, %edi                               ##  DEAD:rflags
	jne       .L00002910                               ##  DEAD:
.L00002900:
	cmpl      $7, 80(%rbp)                             ##  DEAD:rax;rflags
	movl      $-5, %eax                                ##  DEAD:rax
	jbe       .L000028D5                               ##  DEAD:
.L0000290B:
	.p2align 3
.L00002910:
	cmpl      $31, (%rbp)                              ##  DEAD:rflags
	je        .L00002AC0                               ##  DEAD:
.L0000291A:
	movl      80(%rbp), %edx                           ##  DEAD:rax;rcx;rdx;rflags
	movq      72(%rbp), %rax                           ##  DEAD:rax;rcx;rflags
	movl      $31, (%rbp)                              ##  DEAD:rcx;rflags
	movl      %edx, %ecx                               ##  DEAD:rcx;rflags
	andl      $-8, %edx                                ##  DEAD:rflags
	andl      $7, %ecx                                 ##  DEAD:rflags
	movl      %edx, 80(%rbp)                           ##  DEAD:
	salq      %cl, %rax                                ##  DEAD:
	cmpl      $7, %edx                                 ##  DEAD:rflags
	movq      %rax, 72(%rbp)                           ##  DEAD:
	jbe       .L000029E0                               ##  DEAD:
.L00002943:
	movq      %rsp, %r8                                ##  DEAD:r8;rcx;rdi;rdx
	movq      %rsp, %rdx                               ##  DEAD:rcx;rdi;rdx
	xorl      %edi, %edi                               ##  DEAD:rcx;rdi
.L0000294B:
	movb      %al, (%rdx)                              ##  DEAD:rcx;rflags
	movl      80(%rbp), %ecx                           ##  DEAD:rax;rcx;rflags
	addl      $1, %edi                                 ##  DEAD:rax;rflags
	movq      72(%rbp), %rax                           ##  DEAD:rax;rflags
	addq      $1, %rdx                                 ##  DEAD:rflags
	subl      $8, %ecx                                 ##  DEAD:rflags
	shrq      $8, %rax                                 ##  DEAD:
	cmpl      $7, %ecx                                 ##  DEAD:rflags
	movl      %ecx, 80(%rbp)                           ##  DEAD:
	movq      %rax, 72(%rbp)                           ##  DEAD:
	ja        .L0000294B                               ##  DEAD:
.L0000296E:
	testl     %edi, %edi                               ##  DEAD:rflags
	movl      $0, 132(%rbp)                            ##  DEAD:
	je        .L000029EA                               ##  DEAD:
.L0000297C:
	xorl      %eax, %eax                               ##  DEAD:r9;rax;rcx;rdx;rsi
	xorl      %ecx, %ecx                               ##  DEAD:r9;rcx;rdx;rsi
	movl      $4, %r9d                                 ##  DEAD:r9;rdx;rflags;rsi
	jmp       .L000029A3                               ##  DEAD:rdx;rflags;rsi
.L00002988:
	.p2align 4
.L00002990:
	movl      $1, %esi                                 ##  DEAD:rax;rsi
	xorl      %eax, %eax                               ##  DEAD:rax
.L00002997:
	addl      $1, %ecx                                 ##  DEAD:rflags
	testb     %sil, %sil                               ##  DEAD:rflags
	je        .L000029F8                               ##  DEAD:
.L0000299F:
	cmpl      %ecx, %edi                               ##  DEAD:rflags
	jbe       .L000029F8                               ##  DEAD:
.L000029A3:
	movl      %ecx, %edx                               ##  DEAD:rdx;rflags;rsi
	cmpl      $2, %eax                                 ##  DEAD:rflags;rsi
	movzbl    (%r8,%rdx), %esi                         ##  DEAD:rsi
	sbbl      %edx, %edx                               ##  DEAD:
	notl      %edx                                     ##  DEAD:rflags
	cmpb      %dl, %sil                                ##  DEAD:rflags
	je        .L000029D0                               ##  DEAD:
.L000029B6:
	testb     %sil, %sil                               ##  DEAD:rflags
	jne       .L00002990                               ##  DEAD:
.L000029BB:
	movl      %r9d, %edx                               ##  DEAD:rdx;rflags
	subl      %eax, %edx                               ##  DEAD:rflags
	cmpl      $3, %edx                                 ##  DEAD:rax;rflags
	movl      %edx, %eax                               ##  DEAD:rax
	setbe     %sil                                     ##  DEAD:
	jmp       .L00002997                               ##  DEAD:rflags
.L000029CB:
	.p2align 3
.L000029D0:
	addl      $1, %eax                                 ##  DEAD:rflags
	cmpl      $3, %eax                                 ##  DEAD:rflags
	setbe     %sil                                     ##  DEAD:
	jmp       .L00002997                               ##  DEAD:rflags
.L000029DC:
	.p2align 3
.L000029E0:
	movl      $0, 132(%rbp)                            ##  DEAD:r8;rax;rdi;rsi
.L000029EA:
	movl      $1, %esi                                 ##  DEAD:r8;rax;rdi;rsi
	xorl      %eax, %eax                               ##  DEAD:r8;rax;rdi
	.p2align 3
.L000029F8:
	movl      %eax, 132(%rbp)                          ##  DEAD:r8;rdi;rflags
	movl      8(%rbx), %edi                            ##  DEAD:r8;rdi;rflags
.L00002A01:
	testl     %edi, %edi                               ##  DEAD:r8;rflags
	movq      (%rbx), %r8                              ##  DEAD:r8
	je        .L00002AD8                               ##  DEAD:
.L00002A0C:
	xorl      %edx, %edx                               ##  DEAD:r9;rdx
	testb     %sil, %sil                               ##  DEAD:r9;rflags
	movl      $4, %r9d                                 ##  DEAD:r9
	jne       .L00002A32                               ##  DEAD:
.L00002A19:
	jmp       .L00002AD8                               ##  DEAD:r12;rdx
.L00002A1E:
	.p2align 3
.L00002A20:
	movl      $1, %ecx                                 ##  DEAD:rax;rcx
	xorl      %eax, %eax                               ##  DEAD:rax
.L00002A27:
	addl      $1, %edx                                 ##  DEAD:rflags
	testb     %cl, %cl                                 ##  DEAD:rflags
	je        .L00002A70                               ##  DEAD:
.L00002A2E:
	cmpl      %edi, %edx                               ##  DEAD:rflags
	jae       .L00002A70                               ##  DEAD:
.L00002A32:
	movl      %edx, %ecx                               ##  DEAD:rcx;rflags;rsi
	cmpl      $2, %eax                                 ##  DEAD:rflags;rsi
	movzbl    (%r8,%rcx), %esi                         ##  DEAD:rsi
	sbbl      %ecx, %ecx                               ##  DEAD:
	notl      %ecx                                     ##  DEAD:rflags
	cmpb      %cl, %sil                                ##  DEAD:rflags
	je        .L00002A60                               ##  DEAD:
.L00002A45:
	testb     %sil, %sil                               ##  DEAD:rflags
	jne       .L00002A20                               ##  DEAD:
.L00002A4A:
	movl      %r9d, %ecx                               ##  DEAD:rcx;rflags
	subl      %eax, %ecx                               ##  DEAD:rflags
	cmpl      $3, %ecx                                 ##  DEAD:rax;rflags
	movl      %ecx, %eax                               ##  DEAD:rax
	setbe     %cl                                      ##  DEAD:
	jmp       .L00002A27                               ##  DEAD:rflags
.L00002A59:
	.p2align 4
.L00002A60:
	addl      $1, %eax                                 ##  DEAD:rflags
	cmpl      $3, %eax                                 ##  DEAD:rflags
	setbe     %cl                                      ##  DEAD:
	jmp       .L00002A27                               ##  DEAD:rflags
.L00002A6B:
	.p2align 3
.L00002A70:
	movl      %edx, %r12d                              ##  DEAD:r12;rflags
.L00002A73:
	movl      %eax, 132(%rbp)                          ##  DEAD:rflags
	subl      %edx, 8(%rbx)                            ##  DEAD:rax;rflags
	movl      $-3, %eax                                ##  DEAD:rax;rflags
	addq      %r12, (%rbx)                             ##  DEAD:rflags
	addq      16(%rbx), %r12                           ##  DEAD:rflags
	cmpl      $4, 132(%rbp)                            ##  DEAD:rflags
	movq      %r12, 16(%rbx)                           ##  DEAD:
	jne       .L000028D5                               ##  DEAD:
.L00002A99:
	movq      40(%rbx), %r13                           ##  DEAD:r13;rdi;rflags
	movq      %rbx, %rdi                               ##  DEAD:rdi;rflags
	call      inflateReset@PLT                         ##  DEAD:rflags
.L00002AA5:
	movq      %r12, 16(%rbx)                           ##  DEAD:rax
	movl      $11, (%rbp)                              ##  DEAD:r12;rax
	xorl      %eax, %eax                               ##  DEAD:r12;rax;rbp
	movq      %r13, 40(%rbx)                           ##  DEAD:r12;rbp;rflags
	jmp       .L000028D5                               ##  DEAD:r12;r13;rbp;rbx;rflags
.L00002ABB:
	.p2align 3
.L00002AC0:
	movl      132(%rbp), %eax                          ##  DEAD:r8;rax;rflags
	cmpl      $3, %eax                                 ##  DEAD:r8;rflags
	setbe     %sil                                     ##  DEAD:r8
	jmp       .L00002A01                               ##  DEAD:r8;rflags
.L00002AD2:
	.p2align 3
.L00002AD8:
	xorl      %r12d, %r12d                             ##  DEAD:r12;rdx
	xorl      %edx, %edx                               ##  DEAD:rdx
	jmp       .L00002A73                               ##  DEAD:rflags
	.size	inflateSync, .-inflateSync
# ----------------------
	.hidden	inflate_table
	.hidden	inflate_fast
	.hidden	zcalloc
	.hidden	zcfree
	.set	.LTHUNK182,inflateReset
	.ident	"GCC: (Ubuntu/Linaro 4.4.7-8ubuntu1) 4.4.7"
	.section	.note.GNU-stack,"",@progbits
