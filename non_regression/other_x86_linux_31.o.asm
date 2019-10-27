	.file	"(extract)sblat2.f"
	.data
	.local	snames.1550
	.type	snames.1550, @object
snames.1550:
	.ascii	"SGEMV SGBMV SSYMV SSBMV SSPMV STRMV STBMV STPMV STRSV STBSV STPSV SGER  SSYR  SSPR  SSYR2 SSPR2 "
	.size	snames.1550, 96
# ----------------------
	.section       .rodata
.LC00000000:
	.long	32
.LC00000004:
	.string	"( 1X, I6, ': ', A6, '(''', A1, ''',', I3, ',', F4.1, ', X,',      I2, ', Y,', I2, ', A,', I3, ')                  .' )"
# ----------------------
.LC0000007B:
	.byte	0
	.align 2
.LC0000007C:
	.string	"( 1X, I6, ': ', A6, '(''', A1, ''',', I3, ',', F4.1, ', X,',      I2, ', Y,', I2, ', AP)                     .' )"
# ----------------------
.LC000000EE:
	.value	0
	.align 4
.LC000000F0:
	.ascii	"( ' ******* FATAL ERROR - ERROR-EXIT TAKEN ON VALID CALL *',      '******' )"
.LC0000013C:
	.string	"( ' ******* FATAL ERROR - PARAMETER NUMBER ', I2, ' WAS CH',      'ANGED INCORRECTLY *******' )"
.LC0000019C:
	.long	1
.LC000001A0:
	.long	1065353216
.LC000001A4:
	.ascii	"( ' ', A6, ' PASSED THE COMPUTATIONAL TESTS (', I6, ' CALL',      'S)' )"
.LC000001EC:
	.string	"( ' ', A6, ' COMPLETED THE COMPUTATIONAL TESTS (', I6, ' C',      'ALLS)', /' ******* BUT WITH MAXIMUM TEST RATIO', F8.2,           ' - SUSPECT *******' )"
# ----------------------
.LC00000287:
	.byte	0
	.align 2
.LC00000288:
	.string	"( '      THESE ARE THE RESULTS FOR COLUMN ', I3 )"
# ----------------------
.LC000002BA:
	.value	0
	.align 4
.LC000002BC:
	.ascii	"( ' ******* ', A6, ' FAILED ON CALL NUMBER:' )"
.LC000002EA:
	.string	"UNKNOWN"
# ----------------------
.LC000002F2:
	.value	0
	.align 4
.LC000002F4:
	.string	"( ' NUMBER OF VALUES OF ', A, ' IS LESS THAN 1 OR GREATER ',      'THAN ', I2 )"
.LC00000344:
	.long	9
.LC00000348:
	.string	"( ' VALUE OF N IS LESS THAN 0 OR GREATER THAN ', I2 )"
# ----------------------
.LC0000037E:
	.value	0
	.align 32
.LC00000380:
	.long	65
.LC00000384:
	.long	75
.LC00000388:
	.long	7
.LC0000038C:
	.ascii	"( ' VALUE OF K IS LESS THAN 0' )"
.LC000003AC:
	.string	"INCX AND INCY"
# ----------------------
.LC000003BA:
	.value	0
	.align 4
.LC000003BC:
	.ascii	"( ' ABSOLUTE VALUE OF INCX OR INCY IS 0 OR GREATER THAN ',        I2 )"
.LC00000402:
	.ascii	"ALPHA"
.LC00000407:
	.string	"BETA"
.LC0000040C:
	.string	"( ' TESTS OF THE REAL             LEVEL 2 BLAS', //' THE F',      'OLLOWING PARAMETER VALUES WILL BE USED:' )"
# ----------------------
.LC0000047A:
	.value	0
	.align 4
.LC0000047C:
	.string	"( '   FOR N              ', 9I6 )"
# ----------------------
.LC0000049E:
	.value	0
	.align 4
.LC000004A0:
	.string	"( '   FOR K              ', 7I6 )"
# ----------------------
.LC000004C2:
	.value	0
	.align 4
.LC000004C4:
	.string	"( '   FOR INCX AND INCY  ', 7I6 )"
# ----------------------
.LC000004E6:
	.value	0
	.align 4
.LC000004E8:
	.string	"( '   FOR ALPHA          ', 7F6.1 )"
.LC0000050C:
	.string	"( '   FOR BETA           ', 7F6.1 )"
.LC00000530:
	.string	"( ' ERROR-EXITS WILL NOT BE TESTED' )"
# ----------------------
.LC00000556:
	.value	0
	.align 4
.LC00000558:
	.ascii	"( ' ROUTINES PASS COMPUTATIONAL TESTS IF TEST RATIO IS LES',      'S THAN', F8.2 )"
.LC000005AA:
	.ascii	"( A6, L2 )"
.LC000005B4:
	.ascii	"( ' SUBPROGRAM NAME ', A6, ' NOT RECOGNIZED', /' ******* T',      'ESTS ABANDONED *******' )"
.LC00000610:
	.string	"( ' RELATIVE MACHINE PRECISION IS TAKEN TO BE', 1P, E9.1 )"
# ----------------------
.LC0000064B:
	.byte	0
	.align 2
.LC0000064C:
	.ascii	"( ' ERROR IN SMVCH -  IN-LINE DOT PRODUCTS ARE BEING EVALU',      'ATED WRONGLY.', /' SMVCH WAS CALLED WITH TRANS = ', A1,          ' AND RETURNED SAME = ', L1, ' AND ERR = ', F12.3, '.', /      ' THIS MAY BE DUE TO FAULTS IN THE ARITHMETIC OR THE COMPILER.'      , /' ******* TESTS ABANDONED *******' )"
.LC0000077B:
	.ascii	"( 1X, A6, ' WAS NOT TESTED' )"
.LC00000798:
	.ascii	"( /' END OF TESTS' )"
.LC000007AC:
	.string	"( /' ******* FATAL ERROR - TESTS ABANDONED *******' )"
# ----------------------
.LC000007E2:
	.value	0
	.align 4
.LC000007E4:
	.string	"( ' AMEND DATA FILE OR INCREASE ARRAY SIZES IN PROGRAM',          /' ******* TESTS ABANDONED *******' )"
.LC0000084C:
	.long	.L00003054
	.long	.L00003054
	.long	.L00003054
	.long	.L0000326C
	.long	.L0000326C
	.long	.L0000326C
	.long	.L0000326C
	.long	.L0000326C
	.long	.L0000326C
	.long	.L00002F5B
	.long	.L0000334E
	.long	.L0000334E
	.long	.L0000316C
	.long	.L0000316C
	.byte	0
# ----------------------
	.local	ich.4771
	.type	ich.4771, @object
ich.4771:
	.value	19541
	.size	ich.4771, 2
# ----------------------
	.local	ich.4286
	.type	ich.4286, @object
ich.4286:
	.value	19541
	.size	ich.4286, 2
# ----------------------
	.local	ichu.3209
	.type	ichu.3209, @object
ichu.3209:
	.value	19541
	.size	ichu.3209, 2
# ----------------------
	.local	icht.3208
	.type	icht.3208, @object
icht.3208:
	.ascii	"NTC"
	.size	icht.3208, 3
# ----------------------
	.local	ichd.3207
	.type	ichd.3207, @object
ichd.3207:
	.value	20053
	.size	ichd.3207, 2
# ----------------------
	.local	ich.2668
	.type	ich.2668, @object
ich.2668:
	.value	19541
	.size	ich.2668, 2
# ----------------------
	.local	ich.2087
	.type	ich.2087, @object
ich.2087:
	.ascii	"NTC"
	.size	ich.2087, 3
# ----------------------
.LC00000894:
	.zero	12
# ----------------------
	.local	options.0.1574
	.type	options.0.1574, @object
options.0.1574:
	.long	68
	.long	255
	.long	0
	.long	0
	.long	0
	.long	1
	.long	0
	.long	1
	.size	options.0.1574, 32
# ----------------------
	.text
	.globl	schk6_
	.type	schk6_, @function
schk6_:
	pushl     %ebp
	movl      %esp, %ebp
	pushl     %edi
	pushl     %esi
	pushl     %ebx
	subl      $3836, %esp
	movl      64(%ebp), %edx
	movl      8(%ebp), %esi
	movl      116(%ebp), %ebx
	movl      $9, -3644(%ebp)
	movl      (%edx), %eax
	xorl      %edx, %edx
	movl      %eax, %ecx
	sarl      $31, %ecx
	notl      %ecx
	andl      %eax, %ecx
	movl      %ecx, -3692(%ebp)
	notl      %ecx
	movl      %ecx, -3664(%ebp)
	movzbl    2(%esi), %ecx
	cmpb      $89, %cl
	sete      %dl
	movl      %edx, -3668(%ebp)
	xorl      %edx, %edx
	cmpb      $80, %cl
	movl      -3668(%ebp), %ecx
	sete      %dl
	movl      %edx, -3684(%ebp)
	testl     %ecx, %ecx
	jne       .L0000006A
.L00000062:
	testl     %edx, %edx
	jne       .L000009D8
.L0000006A:
	movl      40(%ebp), %ecx
	xorl      %edx, %edx
	movl      $0, -84(%ebp)
	movl      $1, -88(%ebp)
	movl      %edx, -40(%ebp)
	movl      (%ecx), %ecx
	movl      %edx, -3756(%ebp)
	flds      -3756(%ebp)
	testl     %ecx, %ecx
	movl      %ecx, -3724(%ebp)
	jle       .L000010BC
.L0000009C:
	fstp      %st(0)
	movl      -3664(%ebp), %esi
	movl      -3692(%ebp), %ecx
	movl      8(%ebp), %edx
	movl      $1, -3712(%ebp)
	leal      (%esi,%ecx,2), %ecx
	movl      %ecx, -3688(%ebp)
	movl      -3692(%ebp), %ecx
	addl      $1, %edx
	movl      %edx, -3696(%ebp)
	leal      1(%ecx,%esi), %edx
	leal      (%ebx,%edx,4), %edx
	movl      %edx, -3736(%ebp)
.L000000DC:
	movl      -3712(%ebp), %esi
	movl      44(%ebp), %ecx
	movl      -4(%ecx,%esi,4), %edx
	cmpl      %eax, %edx
	movl      %edx, -80(%ebp)
	movl      %edx, -64(%ebp)
	jge       .L000000F9
.L000000F3:
	addl      $1, %edx
	movl      %edx, -64(%ebp)
.L000000F9:
	cmpl      %eax, %edx
	jg        .L00000990
.L00000101:
	movl      -3684(%ebp), %eax
	testl     %eax, %eax
	jne       .L000009B8
.L0000010F:
	imull     -80(%ebp), %edx
	movl      %edx, -60(%ebp)
.L00000116:
	movl      $1, -3732(%ebp)
.L00000120:
	movl      -3732(%ebp), %esi
	movzbl    ich.4771-1(%esi), %eax
	cmpb      $85, %al
	movb      %al, -25(%ebp)
	sete      %al
	movzbl    %al, %eax
	movl      %eax, -3672(%ebp)
	movl      56(%ebp), %eax
	movl      (%eax), %eax
	testl     %eax, %eax
	movl      %eax, -3728(%ebp)
	jle       .L00001158
.L00000151:
	movl      $1, -3720(%ebp)
.L0000015B:
	movl      -3720(%ebp), %edx
	leal      -92(%ebp), %esi
	movl      60(%ebp), %ecx
	movl      $1056964608, -92(%ebp)
	movl      -4(%ecx,%edx,4), %eax
	leal      -96(%ebp), %ecx
	movl      %eax, %edx
	sarl      $31, %edx
	movl      %eax, -48(%ebp)
	xorl      %edx, %eax
	subl      %edx, %eax
	movl      -80(%ebp), %edx
	movl      %eax, -96(%ebp)
	imull     %eax, %edx
	movl      -80(%ebp), %eax
	subl      $1, %eax
	movl      %edx, -72(%ebp)
	leal      -100(%ebp), %edx
	movl      %eax, -100(%ebp)
	leal      -88(%ebp), %eax
	movl      %edx, 40(%esp)
	leal      -80(%ebp), %edx
	movl      $1, 60(%esp)
	movl      $1, 56(%esp)
	movl      $2, 52(%esp)
	movl      %esi, 48(%esp)
	movl      %eax, 44(%esp)
	movl      $.LC21, 36(%esp)
	movl      %ecx, 32(%esp)
	movl      88(%ebp), %esi
	movl      $.LC20, 24(%esp)
	movl      %esi, 28(%esp)
	movl      84(%ebp), %eax
	movl      %edx, 16(%esp)
	movl      $.LC20, 12(%esp)
	movl      $.LC00000000, 8(%esp)
	movl      %eax, 20(%esp)
	movl      $.LC00000000, 4(%esp)
	movl      $.LC2, (%esp)
	call      smake_
.L0000020D:
	movl      -80(%ebp), %edx
	cmpl      $1, %edx
	jle       .L0000024A
.L00000215:
	movl      84(%ebp), %ecx
	movl      %edx, %eax
	sarl      $1, %eax
	movl      -48(%ebp), %esi
	movl      $0, -4(%ecx,%eax,4)
	movl      -48(%ebp), %eax
	movl      %edx, %ecx
	shrl      $31, %ecx
	addl      %edx, %ecx
	sarl      $1, %ecx
	sarl      $31, %eax
	subl      $1, %ecx
	xorl      %eax, %esi
	subl      %eax, %esi
	imull     %esi, %ecx
	movl      88(%ebp), %esi
	movl      $0, (%esi,%ecx,4)
.L0000024A:
	movl      56(%ebp), %eax
	movl      (%eax), %eax
	testl     %eax, %eax
	movl      %eax, -3716(%ebp)
	jle       .L00000F00
.L0000025D:
	movl      $1, -3708(%ebp)
.L00000267:
	movl      -3708(%ebp), %ecx
	subl      $1, %edx
	movl      60(%ebp), %esi
	movl      $0, -92(%ebp)
	movl      -4(%esi,%ecx,4), %eax
	leal      -104(%ebp), %esi
	movl      %edx, -108(%ebp)
	leal      -88(%ebp), %edx
	movl      %eax, %ecx
	sarl      $31, %ecx
	movl      %eax, -52(%ebp)
	xorl      %ecx, %eax
	subl      %ecx, %eax
	movl      -80(%ebp), %ecx
	movl      %eax, -104(%ebp)
	imull     %eax, %ecx
	leal      -92(%ebp), %eax
	movl      %ecx, -76(%ebp)
	leal      -108(%ebp), %ecx
	movl      %ecx, 40(%esp)
	leal      -80(%ebp), %ecx
	movl      $1, 60(%esp)
	movl      $1, 56(%esp)
	movl      $2, 52(%esp)
	movl      %eax, 48(%esp)
	movl      %edx, 44(%esp)
	movl      $.LC21, 36(%esp)
	movl      %esi, 32(%esp)
	movl      100(%ebp), %eax
	movl      $.LC20, 24(%esp)
	movl      %eax, 28(%esp)
	movl      96(%ebp), %edx
	movl      %ecx, 16(%esp)
	movl      $.LC20, 12(%esp)
	movl      $.LC00000000, 8(%esp)
	movl      %edx, 20(%esp)
	movl      $.LC00000000, 4(%esp)
	movl      $.LC2, (%esp)
	call      smake_
.L00000316:
	movl      -80(%ebp), %edx
	cmpl      $1, %edx
	jle       .L00000353
.L0000031E:
	movl      96(%ebp), %esi
	movl      %edx, %eax
	movl      %edx, %ecx
	sarl      $1, %eax
	shrl      $31, %ecx
	addl      %edx, %ecx
	movl      $0, -4(%esi,%eax,4)
	movl      -52(%ebp), %eax
	sarl      $1, %ecx
	movl      -52(%ebp), %esi
	subl      $1, %ecx
	sarl      $31, %eax
	xorl      %eax, %esi
	subl      %eax, %esi
	movl      100(%ebp), %eax
	imull     %esi, %ecx
	movl      $0, (%eax,%ecx,4)
.L00000353:
	movl      48(%ebp), %ecx
	movl      (%ecx), %ecx
	testl     %ecx, %ecx
	movl      %ecx, -3700(%ebp)
	jle       .L00000C80
.L00000366:
	movl      $1, -3652(%ebp)
.L00000370:
	movl      -3652(%ebp), %esi
	movl      52(%ebp), %eax
	movl      -80(%ebp), %edi
	flds      -4(%eax,%esi,4)
	movl      $1, %esi
	testl     %edi, %edi
	fsts      -32(%ebp)
	jle       .L000003A0
.L0000038C:
	fldz      
	fucompp   
	fnstsw    %ax
	sahf      
	sete      %al
	setnp     %cl
	andl      %ecx, %eax
	movzbl    %al, %esi
	jmp       .L000003A2
.L000003A0:
	fstp      %st(0)
.L000003A2:
	subl      $1, %edx
	movl      %edx, -112(%ebp)
	leal      -88(%ebp), %ecx
	movl      %edx, -116(%ebp)
	leal      -92(%ebp), %edx
	movl      $0, -92(%ebp)
	leal      -116(%ebp), %eax
	movl      %edx, 48(%esp)
	leal      -112(%ebp), %edx
	movl      %ecx, 44(%esp)
	leal      -64(%ebp), %ecx
	movl      $1, 60(%esp)
	movl      $1, 56(%esp)
	movl      $2, 52(%esp)
	movl      %eax, 40(%esp)
	movl      %edx, 36(%esp)
	movl      %ecx, 32(%esp)
	movl      76(%ebp), %eax
	movl      %eax, 28(%esp)
	movl      64(%ebp), %edx
	leal      -80(%ebp), %eax
	movl      %edx, 24(%esp)
	movl      72(%ebp), %ecx
	movl      %eax, 16(%esp)
	movl      %eax, 12(%esp)
	movl      $.LC00000000, 8(%esp)
	movl      %ecx, 20(%esp)
	leal      -25(%ebp), %ecx
	movl      %ecx, 4(%esp)
	movl      -3696(%ebp), %eax
	movl      %eax, (%esp)
	call      smake_
.L0000042A:
	movl      -60(%ebp), %edi
	movzbl    -25(%ebp), %edx
	movl      -80(%ebp), %ecx
	addl      $1, -84(%ebp)
	testl     %edi, %edi
	movb      %dl, -3677(%ebp)
	flds      -32(%ebp)
	movl      %ecx, -3648(%ebp)
	fstps     -3676(%ebp)
	jle       .L00000478
.L00000451:
	movl      76(%ebp), %edx
	xorl      %eax, %eax
	movl      %ebx, -3656(%ebp)
	.p2align 3
.L00000460:
	movl      (%edx), %ecx
	addl      $4, %edx
	movl      80(%ebp), %ebx
	movl      %ecx, (%ebx,%eax,4)
	addl      $1, %eax
	cmpl      %edi, %eax
	jne       .L00000460
.L00000472:
	movl      -3656(%ebp), %ebx
.L00000478:
	movl      -72(%ebp), %edi
	movl      -64(%ebp), %eax
	testl     %edi, %edi
	movl      %eax, -3704(%ebp)
	jle       .L000004B0
.L00000488:
	movl      88(%ebp), %edx
	xorl      %eax, %eax
	movl      %ebx, -3656(%ebp)
	.p2align 3
.L00000498:
	movl      (%edx), %ecx
	addl      $4, %edx
	movl      92(%ebp), %ebx
	movl      %ecx, (%ebx,%eax,4)
	addl      $1, %eax
	cmpl      %edi, %eax
	jne       .L00000498
.L000004AA:
	movl      -3656(%ebp), %ebx
.L000004B0:
	movl      -76(%ebp), %edi
	movl      -48(%ebp), %eax
	movl      $1, -44(%ebp)
	testl     %edi, %edi
	movl      %eax, -3660(%ebp)
	jle       .L000004F6
.L000004C7:
	movl      100(%ebp), %edx
	xorl      %eax, %eax
	movl      %ebx, -3656(%ebp)
	.p2align 3
.L000004D8:
	movl      (%edx), %ecx
	addl      $4, %edx
	movl      104(%ebp), %ebx
	movl      %ecx, (%ebx,%eax,4)
	addl      $1, %eax
	cmpl      %edi, %eax
	jne       .L000004D8
.L000004EA:
	movl      -3656(%ebp), %ebx
	addl      $1, %eax
	movl      %eax, -44(%ebp)
.L000004F6:
	movl      -3668(%ebp), %ecx
	movl      -52(%ebp), %eax
	testl     %ecx, %ecx
	movl      %eax, -3656(%ebp)
	je        .L00000B20
.L0000050D:
	movl      28(%ebp), %edx
	movl      (%edx), %edx
	testl     %edx, %edx
	jne       .L00000D00
.L0000051A:
	leal      -32(%ebp), %edi
	leal      -48(%ebp), %ecx
	leal      -52(%ebp), %edx
.L00000523:
	movl      32(%ebp), %eax
	movl      (%eax), %eax
	testl     %eax, %eax
	jne       .L00000CA8
.L00000530:
	leal      -64(%ebp), %eax
	movl      $1, 36(%esp)
	movl      %eax, 32(%esp)
	movl      76(%ebp), %eax
	movl      %edx, 24(%esp)
	movl      %eax, 28(%esp)
	movl      100(%ebp), %edx
	leal      -80(%ebp), %eax
	movl      %ecx, 16(%esp)
	movl      %edx, 20(%esp)
	movl      88(%ebp), %ecx
	leal      -25(%ebp), %edx
	movl      %edi, 8(%esp)
	movl      %eax, 4(%esp)
	movl      %edx, (%esp)
	movl      %ecx, 12(%esp)
	call      ssyr2_
.L00000572:
	movl      infoc_+8, %eax
	testl     %eax, %eax
	je        .L00000B99
.L0000057F:
	movzbl    -3677(%ebp), %eax
	cmpb      -25(%ebp), %al
	movl      -3648(%ebp), %edx
	flds      -32(%ebp)
	sete      %al
	flds      -3676(%ebp)
	movzbl    %al, %eax
	movl      %eax, -232(%ebp)
	xorl      %eax, %eax
	cmpl      -80(%ebp), %edx
	sete      %al
	movl      %eax, -228(%ebp)
	fucompp   
	fnstsw    %ax
	sahf      
	setnp     %dl
	sete      %al
	andl      %edx, %eax
	movzbl    %al, %eax
	movl      %eax, -224(%ebp)
	leal      -72(%ebp), %eax
	movl      %eax, 8(%esp)
	movl      88(%ebp), %eax
	movl      %eax, 4(%esp)
	movl      92(%ebp), %edx
	movl      %edx, (%esp)
	call      lse_
.L000005E1:
	movl      -3660(%ebp), %ecx
	movl      %eax, -220(%ebp)
	xorl      %eax, %eax
	cmpl      -48(%ebp), %ecx
	sete      %al
	movl      %eax, -216(%ebp)
	leal      -76(%ebp), %eax
	movl      %eax, 8(%esp)
	movl      100(%ebp), %eax
	movl      %eax, 4(%esp)
	movl      104(%ebp), %edx
	movl      %edx, (%esp)
	call      lse_
.L00000614:
	movl      -3656(%ebp), %ecx
	movl      %eax, -212(%ebp)
	xorl      %eax, %eax
	cmpl      -52(%ebp), %ecx
	sete      %al
	testl     %esi, %esi
	movl      %eax, -208(%ebp)
	je        .L00000C00
.L00000636:
	leal      -60(%ebp), %eax
	movl      %eax, 8(%esp)
	movl      76(%ebp), %eax
	movl      %eax, 4(%esp)
	movl      80(%ebp), %edx
	movl      %edx, (%esp)
	call      lse_
.L0000064F:
	movl      %eax, -204(%ebp)
.L00000655:
	movl      -3684(%ebp), %edi
	testl     %edi, %edi
	jne       .L00000674
.L0000065F:
	movl      -3704(%ebp), %eax
	cmpl      -64(%ebp), %eax
	sete      %al
	movzbl    %al, %eax
	movl      %eax, -200(%ebp)
.L00000674:
	movl      -3644(%ebp), %ecx
	movl      $1, -44(%ebp)
	testl     %ecx, %ecx
	jle       .L00000754
.L00000689:
	movl      $1, %eax
	movl      $1, %ecx
	leal      -1592(%ebp), %edi
	jmp       .L000006C2
.L0000069B:
	.p2align 3
.L000006A0:
	movl      -44(%ebp), %edx
	movl      -236(%ebp,%edx,4), %edx
	testl     %edx, %edx
	je        .L000006D1
.L000006AE:
	cmpl      %eax, -3644(%ebp)
	leal      1(%eax), %edx
	movl      %edx, -44(%ebp)
	je        .L0000074C
.L000006C0:
	movl      %edx, %eax
.L000006C2:
	testl     %ecx, %ecx
	je        .L000006A0
.L000006C6:
	movl      -236(%ebp,%eax,4), %edx
	testl     %edx, %edx
	jne       .L000006AE
.L000006D1:
	movl      20(%ebp), %edx
	movl      $2208, -1580(%ebp)
	movl      $95, -1540(%ebp)
	movl      $4096, -1592(%ebp)
	movl      (%edx), %eax
	movl      $.LC4, -1584(%ebp)
	movl      $.LC0000013C, -1544(%ebp)
	movl      %eax, -1588(%ebp)
	movl      %edi, (%esp)
	call      _gfortran_st_write
.L00000716:
	leal      -44(%ebp), %ecx
	movl      %ecx, 4(%esp)
	movl      $4, 8(%esp)
	movl      %edi, (%esp)
	call      _gfortran_transfer_integer
.L0000072D:
	movl      %edi, (%esp)
	call      _gfortran_st_write_done
.L00000735:
	movl      -44(%ebp), %eax
	xorl      %ecx, %ecx
	cmpl      %eax, -3644(%ebp)
	leal      1(%eax), %edx
	movl      %edx, -44(%ebp)
	jne       .L000006C0
.L0000074C:
	testl     %ecx, %ecx
	je        .L00001217
.L00000754:
	testl     %esi, %esi
	jne       .L00000988
.L0000075C:
	movl      -48(%ebp), %esi
	testl     %esi, %esi
	jle       .L00000EB8
.L00000767:
	movl      -80(%ebp), %edx
	testl     %edx, %edx
	jle       .L0000078F
.L0000076E:
	movl      -3736(%ebp), %ecx
	xorl      %eax, %eax
	movl      84(%ebp), %edi
	.p2align 4
.L00000780:
	movl      (%edi,%eax,4), %esi
	addl      $1, %eax
	movl      %esi, (%ecx)
	addl      $4, %ecx
	cmpl      %edx, %eax
	jne       .L00000780
.L0000078F:
	movl      -52(%ebp), %ecx
	testl     %ecx, %ecx
	jle       .L00000E60
.L0000079A:
	testl     %edx, %edx
	movl      $1, -44(%ebp)
	jle       .L00000C60
.L000007A9:
	movl      -3688(%ebp), %esi
	xorl      %eax, %eax
	movl      96(%ebp), %edi
	leal      4(%ebx,%esi,4), %ecx
.L000007B8:
	movl      (%edi,%eax,4), %esi
	addl      $1, %eax
	movl      %esi, (%ecx)
	addl      $4, %ecx
	cmpl      %edx, %eax
	jne       .L000007B8
.L000007C7:
	leal      1(%edx), %eax
	movl      %eax, -44(%ebp)
.L000007CD:
	testl     %edx, %edx
	movl      $1, -56(%ebp)
	jle       .L00000961
.L000007DC:
	leal      -32(%ebp), %edi
	movl      -3664(%ebp), %ecx
	movl      $1, %eax
	addl      -3692(%ebp), %ecx
	movl      $1, %esi
	movl      %edi, -3656(%ebp)
	movl      -3692(%ebp), %edi
	movl      %edx, -3660(%ebp)
	movl      %ecx, -3648(%ebp)
	.p2align 3
.L00000810:
	addl      -3688(%ebp), %eax
	movl      (%ebx,%eax,4), %eax
	movl      %eax, -124(%ebp)
	movl      -56(%ebp), %eax
	addl      %edi, %eax
	addl      -3664(%ebp), %eax
	movl      (%ebx,%eax,4), %eax
	movl      %eax, -120(%ebp)
	movl      -3672(%ebp), %eax
	testl     %eax, %eax
	je        .L00000B08
.L0000083B:
	movl      -56(%ebp), %eax
	movl      %eax, -68(%ebp)
	movl      $1, %eax
.L00000846:
	movl      $1, 76(%esp)
	movl      $.LC0000019C, 72(%esp)
	movl      20(%ebp), %edx
	movl      %edx, 68(%esp)
	movl      36(%ebp), %ecx
	leal      -36(%ebp), %edx
	movl      %edx, 60(%esp)
	movl      %ecx, 64(%esp)
	movl      12(%ebp), %ecx
	movl      %ecx, 56(%esp)
	movl      76(%ebp), %ecx
	leal      -4(%ecx,%esi,4), %edx
	movl      %edx, 52(%esp)
	movl      112(%ebp), %edx
	movl      %edx, 48(%esp)
	movl      108(%ebp), %ecx
	movl      $.LC20, 40(%esp)
	movl      %ecx, 44(%esp)
	movl      -56(%ebp), %edx
	movl      72(%ebp), %ecx
	imull     %edi, %edx
	addl      -3664(%ebp), %edx
	movl      $.LC000001A0, 32(%esp)
	movl      $.LC20, 28(%esp)
	addl      %eax, %edx
	leal      (%ecx,%edx,4), %edx
	movl      %edx, 36(%esp)
	leal      -124(%ebp), %edx
	movl      %edx, 24(%esp)
	movl      64(%ebp), %ecx
	leal      -68(%ebp), %edx
	movl      %ecx, 20(%esp)
	addl      -3648(%ebp), %eax
	leal      (%ebx,%eax,4), %eax
	movl      %eax, 16(%esp)
	movl      -3656(%ebp), %eax
	movl      $.LC25, 8(%esp)
	movl      %edx, 4(%esp)
	movl      $.LC24, (%esp)
	movl      %eax, 12(%esp)
	call      smvch_
.L000008FB:
	movl      -3668(%ebp), %ecx
	testl     %ecx, %ecx
	je        .L00000B00
.L00000909:
	movl      -3672(%ebp), %edx
	testl     %edx, %edx
	je        .L00000C50
.L00000917:
	addl      -64(%ebp), %esi
.L0000091A:
	flds      -40(%ebp)
	flds      -36(%ebp)
	fxch      %st(1)
	fucom     %st(0)
	fnstsw    %ax
	sahf      
	jp        .L000009E8
.L0000092D:
	fxch      %st(1)
	fucom     %st(1)
	fnstsw    %ax
	sahf      
	ja        .L000009F0
.L0000093A:
	fstp      %st(0)
	movl      36(%ebp), %edx
	fstps     -40(%ebp)
	movl      (%edx), %eax
	testl     %eax, %eax
	jne       .L00000A02
.L0000094C:
	movl      -56(%ebp), %edx
	cmpl      %edx, -3660(%ebp)
	leal      1(%edx), %eax
	movl      %eax, -56(%ebp)
	jne       .L00000810
.L00000961:
	movl      -3700(%ebp), %ecx
	cmpl      %ecx, -3652(%ebp)
	je        .L00000C80
.L00000973:
	addl      $1, -3652(%ebp)
	movl      -80(%ebp), %edx
	jmp       .L00000370
.L00000982:
	.p2align 3
.L00000988:
	movl      -80(%ebp), %ecx
	testl     %ecx, %ecx
	jg        .L00000961
.L0000098F:
	.p2align 3
.L00000990:
	movl      -3724(%ebp), %edx
	cmpl      %edx, -3712(%ebp)
	je        .L000010B9
.L000009A2:
	movl      64(%ebp), %ecx
	addl      $1, -3712(%ebp)
	movl      (%ecx), %eax
	jmp       .L000000DC
.L000009B3:
	.p2align 3
.L000009B8:
	movl      -80(%ebp), %edx
	leal      1(%edx), %eax
	imull     %edx, %eax
	movl      %eax, %edx
	shrl      $31, %edx
	leal      (%edx,%eax), %eax
	sarl      $1, %eax
	movl      %eax, -60(%ebp)
	jmp       .L00000116
.L000009D3:
	.p2align 3
.L000009D8:
	movl      $8, -3644(%ebp)
	jmp       .L0000006A
.L000009E7:
	.p2align 3
.L000009E8:
	fstp      %st(0)
	jmp       .L000009F2
.L000009EC:
	.p2align 3
.L000009F0:
	fstp      %st(1)
.L000009F2:
	movl      36(%ebp), %edx
	fstps     -40(%ebp)
	movl      (%edx), %eax
	testl     %eax, %eax
	je        .L0000094C
.L00000A02:
	movl      20(%ebp), %edx
	leal      -2612(%ebp), %ebx
	movl      $2292, -2600(%ebp)
	movl      $49, -2560(%ebp)
	movl      $4096, -2612(%ebp)
	movl      (%edx), %eax
	movl      $.LC4, -2604(%ebp)
	movl      $.LC00000288, -2564(%ebp)
	movl      %eax, -2608(%ebp)
	movl      %ebx, (%esp)
	call      _gfortran_st_write
.L00000A4D:
	leal      -56(%ebp), %eax
	movl      $4, 8(%esp)
	movl      %eax, 4(%esp)
	movl      %ebx, (%esp)
	call      _gfortran_transfer_integer
.L00000A64:
	movl      %ebx, (%esp)
	call      _gfortran_st_write_done
.L00000A6C:
	movl      20(%ebp), %ecx
	leal      -2952(%ebp), %ebx
	movl      $2295, -2940(%ebp)
	movl      $46, -2900(%ebp)
	movl      $4096, -2952(%ebp)
	movl      (%ecx), %eax
	movl      $.LC4, -2944(%ebp)
	movl      $.LC000002BC, -2904(%ebp)
	movl      %eax, -2948(%ebp)
	movl      %ebx, (%esp)
	call      _gfortran_st_write
.L00000AB7:
	movl      $6, 8(%esp)
	movl      8(%ebp), %esi
	movl      %ebx, (%esp)
	movl      %esi, 4(%esp)
	call      _gfortran_transfer_character
.L00000ACE:
	movl      %ebx, (%esp)
	call      _gfortran_st_write_done
.L00000AD6:
	movl      -3668(%ebp), %edx
	testl     %edx, %edx
	jne       .L0000130A
.L00000AE4:
	movl      -3684(%ebp), %eax
	testl     %eax, %eax
	jne       .L00001225
.L00000AF2:
	addl      $3836, %esp
	popl      %ebx
	popl      %esi
	popl      %edi
	popl      %ebp
	ret       
.L00000AFD:
	.p2align 3
.L00000B00:
	addl      -68(%ebp), %esi
	jmp       .L0000091A
.L00000B08:
	movl      -80(%ebp), %edx
	movl      -56(%ebp), %eax
	addl      $1, %edx
	subl      %eax, %edx
	movl      %edx, -68(%ebp)
	jmp       .L00000846
.L00000B1B:
	.p2align 3
.L00000B20:
	movl      -3684(%ebp), %ecx
	testl     %ecx, %ecx
	je        .L00000572
.L00000B2E:
	movl      28(%ebp), %ecx
	movl      (%ecx), %edx
	testl     %edx, %edx
	jne       .L00000F78
.L00000B3B:
	leal      -32(%ebp), %edi
	leal      -48(%ebp), %ecx
	leal      -52(%ebp), %edx
.L00000B44:
	movl      32(%ebp), %eax
	movl      (%eax), %eax
	testl     %eax, %eax
	jne       .L00000F20
.L00000B51:
	movl      $1, 32(%esp)
	movl      76(%ebp), %eax
	movl      %edx, 24(%esp)
	movl      %eax, 28(%esp)
	movl      100(%ebp), %edx
	leal      -80(%ebp), %eax
	movl      %ecx, 16(%esp)
	movl      %edx, 20(%esp)
	movl      88(%ebp), %ecx
	leal      -25(%ebp), %edx
	movl      %eax, 4(%esp)
	movl      %edi, 8(%esp)
	movl      %edx, (%esp)
	movl      %ecx, 12(%esp)
	call      sspr2_
.L00000B8C:
	movl      infoc_+8, %eax
	testl     %eax, %eax
	jne       .L0000057F
.L00000B99:
	movl      20(%ebp), %ecx
	leal      -1252(%ebp), %ebx
	movl      $2178, -1240(%ebp)
	movl      $76, -1200(%ebp)
	movl      $4096, -1252(%ebp)
	movl      (%ecx), %eax
	movl      $.LC4, -1244(%ebp)
	movl      $.LC000000F0, -1204(%ebp)
	movl      %eax, -1248(%ebp)
	movl      %ebx, (%esp)
	call      _gfortran_st_write
.L00000BE4:
	movl      %ebx, (%esp)
	call      _gfortran_st_write_done
.L00000BEC:
	movl      36(%ebp), %ebx
	movl      $1, (%ebx)
	jmp       .L00000A6C
.L00000BFA:
	.p2align 3
.L00000C00:
	leal      -64(%ebp), %ecx
	movl      %ecx, 24(%esp)
	leal      -80(%ebp), %ecx
	movl      $1, 32(%esp)
	movl      $2, 28(%esp)
	movl      76(%ebp), %eax
	movl      %eax, 20(%esp)
	movl      80(%ebp), %edx
	movl      %ecx, 12(%esp)
	movl      %ecx, 8(%esp)
	movl      %edx, 16(%esp)
	leal      -25(%ebp), %edx
	movl      %edx, 4(%esp)
	movl      -3696(%ebp), %ecx
	movl      %ecx, (%esp)
	call      lseres_
.L00000C45:
	movl      %eax, -204(%ebp)
	jmp       .L00000655
.L00000C50:
	movl      -64(%ebp), %eax
	leal      1(%esi,%eax), %esi
	jmp       .L0000091A
.L00000C5C:
	.p2align 3
.L00000C60:
	movl      -3700(%ebp), %ecx
	cmpl      %ecx, -3652(%ebp)
	movl      $1, -56(%ebp)
	jne       .L00000973
.L00000C79:
	.p2align 4
.L00000C80:
	movl      -3716(%ebp), %esi
	cmpl      %esi, -3708(%ebp)
	je        .L00000F00
.L00000C92:
	addl      $1, -3708(%ebp)
	movl      -80(%ebp), %edx
	jmp       .L00000267
.L00000CA1:
	.p2align 3
.L00000CA8:
	movl      24(%ebp), %eax
	movl      $2162, -140(%ebp)
	movl      $0, -152(%ebp)
	movl      $.LC4, -144(%ebp)
	movl      (%eax), %eax
	movl      %eax, -148(%ebp)
	leal      -152(%ebp), %eax
	movl      %eax, (%esp)
	movl      %edx, -3744(%ebp)
	movl      %ecx, -3740(%ebp)
	call      _gfortran_st_rewind
.L00000CEB:
	movl      -3740(%ebp), %ecx
	movl      -3744(%ebp), %edx
	jmp       .L00000530
.L00000CFC:
	.p2align 3
.L00000D00:
	movl      24(%ebp), %ecx
	leal      -32(%ebp), %edi
	movl      $2160, -560(%ebp)
	movl      $118, -520(%ebp)
	movl      $4096, -572(%ebp)
	movl      (%ecx), %eax
	movl      $.LC4, -564(%ebp)
	movl      $.LC00000004, -524(%ebp)
	movl      %eax, -568(%ebp)
	leal      -572(%ebp), %eax
	movl      %eax, (%esp)
	call      _gfortran_st_write
.L00000D4E:
	leal      -572(%ebp), %edx
	leal      -84(%ebp), %eax
	movl      %edx, (%esp)
	movl      %eax, 4(%esp)
	movl      $4, 8(%esp)
	call      _gfortran_transfer_integer
.L00000D6B:
	leal      -572(%ebp), %eax
	movl      $6, 8(%esp)
	movl      8(%ebp), %ecx
	movl      %eax, (%esp)
	movl      %ecx, 4(%esp)
	call      _gfortran_transfer_character
.L00000D88:
	leal      -572(%ebp), %ecx
	leal      -25(%ebp), %edx
	movl      %ecx, (%esp)
	movl      %edx, 4(%esp)
	movl      $1, 8(%esp)
	call      _gfortran_transfer_character
.L00000DA5:
	leal      -572(%ebp), %edx
	leal      -80(%ebp), %eax
	movl      %edx, (%esp)
	movl      %eax, 4(%esp)
	movl      $4, 8(%esp)
	call      _gfortran_transfer_integer
.L00000DC2:
	leal      -572(%ebp), %ecx
	movl      %ecx, (%esp)
	movl      $4, 8(%esp)
	movl      %edi, 4(%esp)
	call      _gfortran_transfer_real
.L00000DDC:
	leal      -48(%ebp), %ecx
	leal      -572(%ebp), %eax
	movl      %ecx, 4(%esp)
	movl      %eax, (%esp)
	movl      $4, 8(%esp)
	movl      %ecx, -3740(%ebp)
	call      _gfortran_transfer_integer
.L00000DFF:
	leal      -52(%ebp), %edx
	leal      -572(%ebp), %eax
	movl      %edx, 4(%esp)
	movl      %eax, (%esp)
	movl      $4, 8(%esp)
	movl      %edx, -3744(%ebp)
	call      _gfortran_transfer_integer
.L00000E22:
	leal      -64(%ebp), %eax
	movl      %eax, 4(%esp)
	leal      -572(%ebp), %eax
	movl      %eax, (%esp)
	movl      $4, 8(%esp)
	call      _gfortran_transfer_integer
.L00000E3F:
	leal      -572(%ebp), %eax
	movl      %eax, (%esp)
	call      _gfortran_st_write_done
.L00000E4D:
	movl      -3740(%ebp), %ecx
	movl      -3744(%ebp), %edx
	jmp       .L00000523
.L00000E5E:
	.p2align 3
.L00000E60:
	testl     %edx, %edx
	movl      $1, -44(%ebp)
	jle       .L00000C60
.L00000E6F:
	movl      -3688(%ebp), %eax
	leal      1(%edx), %esi
	movl      %edx, %edi
	movl      %ebx, -3648(%ebp)
	leal      4(%ebx,%eax,4), %ecx
	movl      96(%ebp), %ebx
	movl      $1, %eax
	.p2align 3
.L00000E90:
	subl      %eax, %edi
	addl      $1, %eax
	movl      (%ebx,%edi,4), %edi
	movl      %edi, (%ecx)
	addl      $4, %ecx
	cmpl      %esi, %eax
	movl      %edx, %edi
	jne       .L00000E90
.L00000EA3:
	movl      -3648(%ebp), %ebx
	movl      %eax, -44(%ebp)
	jmp       .L000007CD
.L00000EB1:
	.p2align 3
.L00000EB8:
	movl      -80(%ebp), %edx
	testl     %edx, %edx
	jle       .L0000078F
.L00000EC3:
	movl      -3736(%ebp), %ecx
	leal      1(%edx), %esi
	movl      $1, %eax
	movl      84(%ebp), %edi
	movl      %ebx, -3648(%ebp)
	.p2align 3
.L00000EE0:
	movl      %edx, %ebx
	subl      %eax, %ebx
	addl      $1, %eax
	movl      (%edi,%ebx,4), %ebx
	movl      %ebx, (%ecx)
	addl      $4, %ecx
	cmpl      %esi, %eax
	jne       .L00000EE0
.L00000EF3:
	movl      -3648(%ebp), %ebx
	jmp       .L0000078F
.L00000EFE:
	.p2align 3
.L00000F00:
	movl      -3728(%ebp), %eax
	cmpl      %eax, -3720(%ebp)
	je        .L00001158
.L00000F12:
	addl      $1, -3720(%ebp)
	jmp       .L0000015B
.L00000F1E:
	.p2align 3
.L00000F20:
	movl      24(%ebp), %eax
	movl      $2170, -168(%ebp)
	movl      $0, -180(%ebp)
	movl      $.LC4, -172(%ebp)
	movl      (%eax), %eax
	movl      %eax, -176(%ebp)
	leal      -180(%ebp), %eax
	movl      %eax, (%esp)
	movl      %edx, -3744(%ebp)
	movl      %ecx, -3740(%ebp)
	call      _gfortran_st_rewind
.L00000F63:
	movl      -3740(%ebp), %ecx
	movl      -3744(%ebp), %edx
	jmp       .L00000B51
.L00000F74:
	.p2align 3
.L00000F78:
	movl      24(%ebp), %edx
	leal      -912(%ebp), %ecx
	movl      $2168, -900(%ebp)
	leal      -32(%ebp), %edi
	movl      $113, -860(%ebp)
	movl      $4096, -912(%ebp)
	movl      (%edx), %eax
	movl      $.LC4, -904(%ebp)
	movl      $.LC0000007C, -864(%ebp)
	movl      %eax, -908(%ebp)
	movl      %ecx, (%esp)
	call      _gfortran_st_write
.L00000FC6:
	leal      -84(%ebp), %eax
	movl      %eax, 4(%esp)
	leal      -912(%ebp), %eax
	movl      %eax, (%esp)
	movl      $4, 8(%esp)
	call      _gfortran_transfer_integer
.L00000FE3:
	leal      -912(%ebp), %ecx
	movl      $6, 8(%esp)
	movl      8(%ebp), %edx
	movl      %ecx, (%esp)
	movl      %edx, 4(%esp)
	call      _gfortran_transfer_character
.L00001000:
	leal      -912(%ebp), %edx
	leal      -25(%ebp), %eax
	movl      %edx, (%esp)
	movl      %eax, 4(%esp)
	movl      $1, 8(%esp)
	call      _gfortran_transfer_character
.L0000101D:
	leal      -80(%ebp), %ecx
	leal      -912(%ebp), %eax
	movl      %ecx, 4(%esp)
	movl      %eax, (%esp)
	movl      $4, 8(%esp)
	call      _gfortran_transfer_integer
.L0000103A:
	leal      -912(%ebp), %edx
	movl      %edx, (%esp)
	movl      $4, 8(%esp)
	movl      %edi, 4(%esp)
	call      _gfortran_transfer_real
.L00001054:
	leal      -48(%ebp), %ecx
	leal      -912(%ebp), %eax
	movl      %ecx, 4(%esp)
	movl      %eax, (%esp)
	movl      $4, 8(%esp)
	movl      %ecx, -3740(%ebp)
	call      _gfortran_transfer_integer
.L00001077:
	leal      -52(%ebp), %edx
	leal      -912(%ebp), %eax
	movl      %edx, 4(%esp)
	movl      %eax, (%esp)
	movl      $4, 8(%esp)
	movl      %edx, -3744(%ebp)
	call      _gfortran_transfer_integer
.L0000109A:
	leal      -912(%ebp), %eax
	movl      %eax, (%esp)
	call      _gfortran_st_write_done
.L000010A8:
	movl      -3740(%ebp), %ecx
	movl      -3744(%ebp), %edx
	jmp       .L00000B44
.L000010B9:
	flds      -40(%ebp)
.L000010BC:
	movl      16(%ebp), %eax
	flds      (%eax)
	fucompp   
	fnstsw    %ax
	sahf      
	jbe       .L00001174
.L000010CC:
	movl      20(%ebp), %edx
	leal      -1932(%ebp), %ebx
	movl      $2285, -1920(%ebp)
	movl      $72, -1880(%ebp)
	movl      $4096, -1932(%ebp)
	movl      (%edx), %eax
	movl      $.LC4, -1924(%ebp)
	movl      $.LC000001A4, -1884(%ebp)
	movl      %eax, -1928(%ebp)
	movl      %ebx, (%esp)
	call      _gfortran_st_write
.L00001117:
	movl      $6, 8(%esp)
	movl      8(%ebp), %ecx
	movl      %ebx, (%esp)
	movl      %ecx, 4(%esp)
	call      _gfortran_transfer_character
.L0000112E:
	leal      -84(%ebp), %eax
	movl      $4, 8(%esp)
.L00001139:
	movl      %eax, 4(%esp)
	movl      %ebx, (%esp)
	call      _gfortran_transfer_integer
.L00001145:
	movl      %ebx, (%esp)
	call      _gfortran_st_write_done
.L0000114D:
	addl      $3836, %esp
	popl      %ebx
	popl      %esi
	popl      %edi
	popl      %ebp
	ret       
.L00001158:
	cmpl      $2, -3732(%ebp)
	je        .L00000990
.L00001165:
	movl      $2, -3732(%ebp)
	jmp       .L00000120
.L00001174:
	movl      20(%ebp), %ebx
	movl      $2287, -2260(%ebp)
	movl      $154, -2220(%ebp)
	movl      $4096, -2272(%ebp)
	movl      (%ebx), %eax
	leal      -2272(%ebp), %ebx
	movl      $.LC4, -2264(%ebp)
	movl      $.LC000001EC, -2224(%ebp)
	movl      %eax, -2268(%ebp)
	movl      %ebx, (%esp)
	call      _gfortran_st_write
.L000011BF:
	movl      $6, 8(%esp)
	movl      8(%ebp), %esi
	movl      %ebx, (%esp)
	movl      %esi, 4(%esp)
	call      _gfortran_transfer_character
.L000011D6:
	leal      -84(%ebp), %eax
	movl      %eax, 4(%esp)
	movl      %ebx, (%esp)
	movl      $4, 8(%esp)
	call      _gfortran_transfer_integer
.L000011ED:
	leal      -40(%ebp), %eax
	movl      %eax, 4(%esp)
	movl      %ebx, (%esp)
	movl      $4, 8(%esp)
	call      _gfortran_transfer_real
.L00001204:
	movl      %ebx, (%esp)
	call      _gfortran_st_write_done
.L0000120C:
	addl      $3836, %esp
	popl      %ebx
	popl      %esi
	popl      %edi
	popl      %ebp
	ret       
.L00001217:
	movl      36(%ebp), %ebx
	movl      $1, (%ebx)
	jmp       .L00000A6C
.L00001225:
	movl      20(%ebp), %edx
	leal      -3632(%ebp), %ebx
	movl      $2300, -3620(%ebp)
	leal      -25(%ebp), %esi
	movl      $113, -3580(%ebp)
	movl      $4096, -3632(%ebp)
	movl      (%edx), %eax
	movl      $.LC4, -3624(%ebp)
	movl      $.LC0000007C, -3584(%ebp)
	movl      %eax, -3628(%ebp)
	movl      %ebx, (%esp)
	call      _gfortran_st_write
.L00001273:
	leal      -84(%ebp), %eax
	movl      %eax, 4(%esp)
	movl      $4, 8(%esp)
	movl      %ebx, (%esp)
	call      _gfortran_transfer_integer
.L0000128A:
	movl      $6, 8(%esp)
	movl      8(%ebp), %ecx
	movl      %ebx, (%esp)
	movl      %ecx, 4(%esp)
	call      _gfortran_transfer_character
.L000012A1:
	movl      $1, 8(%esp)
	movl      %esi, 4(%esp)
	movl      %ebx, (%esp)
	call      _gfortran_transfer_character
.L000012B5:
	leal      -80(%ebp), %eax
	movl      %eax, 4(%esp)
	movl      $4, 8(%esp)
	movl      %ebx, (%esp)
	call      _gfortran_transfer_integer
.L000012CC:
	leal      -32(%ebp), %eax
	movl      %eax, 4(%esp)
	movl      $4, 8(%esp)
	movl      %ebx, (%esp)
	call      _gfortran_transfer_real
.L000012E3:
	leal      -48(%ebp), %eax
	movl      %eax, 4(%esp)
	movl      $4, 8(%esp)
	movl      %ebx, (%esp)
	call      _gfortran_transfer_integer
.L000012FA:
	leal      -52(%ebp), %eax
	movl      $4, 8(%esp)
	jmp       .L00001139
.L0000130A:
	movl      20(%ebp), %edx
	leal      -3292(%ebp), %ebx
	movl      $2298, -3280(%ebp)
	movl      $118, -3240(%ebp)
	movl      $4096, -3292(%ebp)
	movl      (%edx), %eax
	movl      $.LC4, -3284(%ebp)
	movl      $.LC00000004, -3244(%ebp)
	movl      %eax, -3288(%ebp)
	movl      %ebx, (%esp)
	call      _gfortran_st_write
.L00001355:
	leal      -84(%ebp), %eax
	movl      %eax, 4(%esp)
	movl      $4, 8(%esp)
	movl      %ebx, (%esp)
	call      _gfortran_transfer_integer
.L0000136C:
	movl      %esi, 4(%esp)
	leal      -80(%ebp), %esi
	movl      $6, 8(%esp)
	movl      %ebx, (%esp)
	call      _gfortran_transfer_character
.L00001383:
	leal      -25(%ebp), %ecx
	movl      %ecx, 4(%esp)
	movl      $1, 8(%esp)
	movl      %ebx, (%esp)
	call      _gfortran_transfer_character
.L0000139A:
	movl      $4, 8(%esp)
	movl      %esi, 4(%esp)
	movl      %ebx, (%esp)
	call      _gfortran_transfer_integer
.L000013AE:
	leal      -32(%ebp), %eax
	movl      %eax, 4(%esp)
	movl      $4, 8(%esp)
	movl      %ebx, (%esp)
	call      _gfortran_transfer_real
.L000013C5:
	leal      -48(%ebp), %eax
	movl      %eax, 4(%esp)
	movl      $4, 8(%esp)
	movl      %ebx, (%esp)
	call      _gfortran_transfer_integer
.L000013DC:
	leal      -52(%ebp), %eax
	movl      %eax, 4(%esp)
	movl      $4, 8(%esp)
	movl      %ebx, (%esp)
	call      _gfortran_transfer_integer
.L000013F3:
	leal      -64(%ebp), %eax
	movl      $4, 8(%esp)
	jmp       .L00001139
	.size	schk6_, .-schk6_
# ----------------------
.L00001403:
	.p2align 4
# ----------------------
	.globl	MAIN__
	.type	MAIN__, @function
MAIN__:
	pushl     %ebp
	movl      %esp, %ebp
	pushl     %edi
	pushl     %esi
	pushl     %ebx
	subl      $71612, %esp
	leal      -2180(%ebp), %ebx
	leal      -288(%ebp), %esi
	leal      -2520(%ebp), %edi
	movl      $options.0.1574, 4(%esp)
	movl      $8, (%esp)
	call      _gfortran_set_options
.L00001442:
	movl      %ebx, (%esp)
	movl      $.LC4, -2172(%ebp)
	movl      $168, -2168(%ebp)
	movl      $128, -2180(%ebp)
	movl      $5, -2176(%ebp)
	call      _gfortran_st_read
.L00001472:
	movl      %esi, 4(%esp)
	movl      %ebx, (%esp)
	movl      $32, 8(%esp)
	call      _gfortran_transfer_character
.L00001486:
	movl      %ebx, (%esp)
	leal      -76(%ebp), %ebx
	call      _gfortran_st_read_done
.L00001491:
	movl      %edi, (%esp)
	movl      $.LC4, -2512(%ebp)
	movl      $169, -2508(%ebp)
	movl      $128, -2520(%ebp)
	movl      $5, -2516(%ebp)
	call      _gfortran_st_read
.L000014C1:
	movl      %edi, (%esp)
	movl      $4, 8(%esp)
	movl      %ebx, 4(%esp)
	call      _gfortran_transfer_integer
.L000014D5:
	movl      %edi, (%esp)
	leal      -2860(%ebp), %edi
	call      _gfortran_st_read_done
.L000014E3:
	movl      -76(%ebp), %eax
	movl      %esi, -612(%ebp)
	leal      -256(%ebp), %esi
	movl      $.LC4, -640(%ebp)
	movl      $170, -636(%ebp)
	movl      %eax, -644(%ebp)
	leal      -648(%ebp), %eax
	movl      %eax, (%esp)
	movl      $32, -616(%ebp)
	movl      $.LC000002EA, -608(%ebp)
	movl      $7, -604(%ebp)
	movl      $768, -648(%ebp)
	call      _gfortran_st_open
.L00001542:
	movl      -76(%ebp), %eax
	movl      %edi, (%esp)
	movl      $.LC4, -2852(%ebp)
	movl      $175, -2848(%ebp)
	movl      %eax, infoc_+4
	movl      $128, -2860(%ebp)
	movl      $5, -2856(%ebp)
	call      _gfortran_st_read
.L0000157A:
	movl      %edi, (%esp)
	movl      $32, 8(%esp)
	movl      %esi, 4(%esp)
	call      _gfortran_transfer_character
.L0000158E:
	movl      %edi, (%esp)
	leal      -3200(%ebp), %edi
	call      _gfortran_st_read_done
.L0000159C:
	movl      $.LC4, -3192(%ebp)
	movl      $176, -3188(%ebp)
	movl      $128, -3200(%ebp)
	movl      $5, -3196(%ebp)
	movl      %edi, (%esp)
	call      _gfortran_st_read
.L000015CC:
	leal      -80(%ebp), %eax
	movl      %eax, 4(%esp)
	movl      $4, 8(%esp)
	movl      %edi, (%esp)
	call      _gfortran_transfer_integer
.L000015E3:
	movl      %edi, (%esp)
	call      _gfortran_st_read_done
.L000015EB:
	movl      -80(%ebp), %edx
	movl      %edx, %eax
	notl      %eax
	shrl      $31, %eax
	testl     %eax, %eax
	movl      %eax, -100(%ebp)
	jne       .L00001B78
.L00001600:
	leal      -3540(%ebp), %esi
	movl      %esi, (%esp)
	movl      $.LC4, -3532(%ebp)
	movl      $182, -3528(%ebp)
	movl      $128, -3540(%ebp)
	movl      $5, -3536(%ebp)
	call      _gfortran_st_read
.L00001636:
	leal      -84(%ebp), %edx
	movl      %edx, 4(%esp)
	movl      %esi, (%esp)
	movl      $4, 8(%esp)
	call      _gfortran_transfer_logical
.L0000164D:
	movl      %esi, (%esp)
	leal      -3880(%ebp), %esi
	call      _gfortran_st_read_done
.L0000165B:
	cmpl      $1, -84(%ebp)
	movl      %esi, (%esp)
	movl      $.LC4, -3872(%ebp)
	sbbl      %eax, %eax
	notl      %eax
	andl      -100(%ebp), %eax
	movl      $185, -3868(%ebp)
	movl      $128, -3880(%ebp)
	movl      %eax, -84(%ebp)
	movl      $5, -3876(%ebp)
	call      _gfortran_st_read
.L00001699:
	leal      -92(%ebp), %eax
	movl      %eax, 4(%esp)
	movl      %esi, (%esp)
	movl      $4, 8(%esp)
	call      _gfortran_transfer_logical
.L000016B0:
	movl      %esi, (%esp)
	leal      -4220(%ebp), %esi
	call      _gfortran_st_read_done
.L000016BE:
	movl      %esi, (%esp)
	movl      $.LC4, -4212(%ebp)
	movl      $187, -4208(%ebp)
	movl      $128, -4220(%ebp)
	movl      $5, -4216(%ebp)
	call      _gfortran_st_read
.L000016EE:
	leal      -104(%ebp), %eax
	movl      %eax, 4(%esp)
	movl      %esi, (%esp)
	movl      $4, 8(%esp)
	call      _gfortran_transfer_logical
.L00001705:
	movl      %esi, (%esp)
	leal      -4560(%ebp), %esi
	call      _gfortran_st_read_done
.L00001713:
	movl      %esi, (%esp)
	movl      $.LC4, -4552(%ebp)
	movl      $189, -4548(%ebp)
	movl      $128, -4560(%ebp)
	movl      $5, -4556(%ebp)
	call      _gfortran_st_read
.L00001743:
	leal      -96(%ebp), %eax
	movl      %eax, 4(%esp)
	movl      %esi, (%esp)
	movl      $4, 8(%esp)
	call      _gfortran_transfer_real
.L0000175A:
	movl      %esi, (%esp)
	leal      -4900(%ebp), %esi
	call      _gfortran_st_read_done
.L00001768:
	movl      $.LC4, -4892(%ebp)
	movl      $194, -4888(%ebp)
	movl      $128, -4900(%ebp)
	movl      $5, -4896(%ebp)
	movl      %esi, (%esp)
	call      _gfortran_st_read
.L00001798:
	leal      -64(%ebp), %edx
	movl      %edx, 4(%esp)
	movl      $4, 8(%esp)
	movl      %esi, (%esp)
	call      _gfortran_transfer_integer
.L000017AF:
	movl      %esi, (%esp)
	call      _gfortran_st_read_done
.L000017B7:
	movl      -64(%ebp), %eax
	subl      $1, %eax
	cmpl      $8, %eax
	jbe       .L000018E8
.L000017C6:
	movl      -76(%ebp), %eax
	leal      -5240(%ebp), %ebx
	movl      $.LC4, -5232(%ebp)
	movl      $196, -5228(%ebp)
	movl      $.LC000002F4, -5192(%ebp)
	movl      %eax, -5236(%ebp)
	movl      $79, -5188(%ebp)
	movl      $4096, -5240(%ebp)
	movl      %ebx, (%esp)
	call      _gfortran_st_write
.L0000180F:
	movl      $1, 8(%esp)
	movl      $.LC24, 4(%esp)
	movl      %ebx, (%esp)
	call      _gfortran_transfer_character
.L00001827:
	movl      $4, 8(%esp)
	movl      $.LC00000344, 4(%esp)
	movl      %ebx, (%esp)
	call      _gfortran_transfer_integer
.L0000183F:
	movl      %ebx, (%esp)
	call      _gfortran_st_write_done
.L00001847:
	movl      -76(%ebp), %eax
	leal      -18160(%ebp), %ebx
	movl      $.LC4, -18152(%ebp)
	movl      $388, -18148(%ebp)
	movl      $.LC000007E4, -18112(%ebp)
	movl      $103, -18108(%ebp)
	movl      $4096, -18160(%ebp)
	movl      %eax, -18156(%ebp)
	movl      %ebx, (%esp)
	call      _gfortran_st_write
.L00001890:
	movl      %ebx, (%esp)
	call      _gfortran_st_write_done
.L00001898:
	movl      -100(%ebp), %ebx
	testl     %ebx, %ebx
	jne       .L00001BD8
.L000018A3:
	movl      -76(%ebp), %eax
	movl      $.LC4, -424(%ebp)
	movl      $393, -420(%ebp)
	movl      $0, -432(%ebp)
	movl      %eax, -428(%ebp)
	leal      -432(%ebp), %eax
	movl      %eax, (%esp)
	call      _gfortran_st_close
.L000018D8:
	movl      $-1, (%esp)
	call      _gfortran_stop_numeric
.L000018E4:
	.p2align 3
.L000018E8:
	leal      -5580(%ebp), %eax
	movl      %eax, (%esp)
	movl      $.LC4, -5572(%ebp)
	movl      $199, -5568(%ebp)
	movl      $128, -5580(%ebp)
	movl      $5, -5576(%ebp)
	call      _gfortran_st_read
.L0000191E:
	movl      -64(%ebp), %eax
	testl     %eax, %eax
	jle       .L00001962
.L00001925:
	leal      -324(%ebp), %edi
	xorl      %esi, %esi
	movl      %edi, -71472(%ebp)
	movl      %eax, %edi
	.p2align 3
.L00001938:
	movl      -71472(%ebp), %edx
	movl      $4, 8(%esp)
	leal      (%edx,%esi,4), %eax
	addl      $1, %esi
	movl      %eax, 4(%esp)
	leal      -5580(%ebp), %eax
	movl      %eax, (%esp)
	call      _gfortran_transfer_integer
.L0000195E:
	cmpl      %edi, %esi
	jne       .L00001938
.L00001962:
	leal      -5580(%ebp), %edx
	movl      %edx, (%esp)
	call      _gfortran_st_read_done
.L00001970:
	movl      -64(%ebp), %edx
	testl     %edx, %edx
	jle       .L0000199A
.L00001977:
	movl      $1, %eax
	leal      -324(%ebp), %edi
	jmp       .L0000198B
.L00001984:
	.p2align 3
.L00001988:
	addl      $1, %eax
.L0000198B:
	cmpl      $65, -4(%edi,%eax,4)
	ja        .L00001CA0
.L00001996:
	cmpl      %edx, %eax
	jne       .L00001988
.L0000199A:
	leal      -6260(%ebp), %esi
	movl      $.LC4, -6252(%ebp)
	movl      $207, -6248(%ebp)
	movl      $128, -6260(%ebp)
	movl      $5, -6256(%ebp)
	movl      %esi, (%esp)
	call      _gfortran_st_read
.L000019D0:
	leal      -72(%ebp), %eax
	movl      %eax, 4(%esp)
	movl      $4, 8(%esp)
	movl      %esi, (%esp)
	call      _gfortran_transfer_integer
.L000019E7:
	movl      %esi, (%esp)
	call      _gfortran_st_read_done
.L000019EF:
	movl      -72(%ebp), %eax
	subl      $1, %eax
	cmpl      $6, %eax
	ja        .L00001C18
.L000019FE:
	leal      -6940(%ebp), %edx
	movl      $.LC4, -6932(%ebp)
	movl      $212, -6928(%ebp)
	movl      $128, -6940(%ebp)
	movl      $5, -6936(%ebp)
	movl      %edx, (%esp)
	call      _gfortran_st_read
.L00001A34:
	movl      -72(%ebp), %eax
	testl     %eax, %eax
	jle       .L00001A7A
.L00001A3B:
	leal      -224(%ebp), %edi
	xorl      %esi, %esi
	movl      %edi, -71472(%ebp)
	movl      %eax, %edi
	.p2align 3
.L00001A50:
	movl      -71472(%ebp), %edx
	movl      $4, 8(%esp)
	leal      (%edx,%esi,4), %eax
	addl      $1, %esi
	movl      %eax, 4(%esp)
	leal      -6940(%ebp), %eax
	movl      %eax, (%esp)
	call      _gfortran_transfer_integer
.L00001A76:
	cmpl      %edi, %esi
	jne       .L00001A50
.L00001A7A:
	leal      -6940(%ebp), %edx
	movl      %edx, (%esp)
	call      _gfortran_st_read_done
.L00001A88:
	movl      -72(%ebp), %edx
	testl     %edx, %edx
	jle       .L00001AB3
.L00001A8F:
	movl      $1, %eax
	leal      -224(%ebp), %edi
	jmp       .L00001AA3
.L00001A9C:
	.p2align 3
.L00001AA0:
	addl      $1, %eax
.L00001AA3:
	movl      -4(%edi,%eax,4), %ecx
	testl     %ecx, %ecx
	js        .L00001FE0
.L00001AAF:
	cmpl      %edx, %eax
	jne       .L00001AA0
.L00001AB3:
	leal      -7620(%ebp), %esi
	movl      $.LC4, -7612(%ebp)
	movl      $220, -7608(%ebp)
	movl      $128, -7620(%ebp)
	movl      $5, -7616(%ebp)
	movl      %esi, (%esp)
	call      _gfortran_st_read
.L00001AE9:
	leal      -68(%ebp), %eax
	movl      %eax, 4(%esp)
	movl      $4, 8(%esp)
	movl      %esi, (%esp)
	call      _gfortran_transfer_integer
.L00001B00:
	movl      %esi, (%esp)
	call      _gfortran_st_read_done
.L00001B08:
	movl      -68(%ebp), %eax
	subl      $1, %eax
	cmpl      $6, %eax
	jbe       .L00001D10
.L00001B17:
	movl      -76(%ebp), %eax
	leal      -7960(%ebp), %ebx
	movl      $.LC4, -7952(%ebp)
	movl      $222, -7948(%ebp)
	movl      $.LC000002F4, -7912(%ebp)
	movl      $79, -7908(%ebp)
	movl      $4096, -7960(%ebp)
	movl      %eax, -7956(%ebp)
	movl      %ebx, (%esp)
	call      _gfortran_st_write
.L00001B60:
	movl      $13, 8(%esp)
	movl      $.LC000003AC, 4(%esp)
	jmp       .L00001C71
.L00001B75:
	.p2align 3
.L00001B78:
	leal      -800(%ebp), %eax
	movl      $.LC4, -792(%ebp)
	movl      $179, -788(%ebp)
	movl      %esi, -764(%ebp)
	movl      $32, -768(%ebp)
	movl      $.LC000002EA, -760(%ebp)
	movl      $7, -756(%ebp)
	movl      $768, -800(%ebp)
	movl      %edx, -796(%ebp)
	movl      %eax, (%esp)
	call      _gfortran_st_open
.L00001BCE:
	jmp       .L00001600
.L00001BD3:
	.p2align 3
.L00001BD8:
	movl      -80(%ebp), %eax
	movl      $.LC4, -388(%ebp)
	movl      $392, -384(%ebp)
	movl      $0, -396(%ebp)
	movl      %eax, -392(%ebp)
	leal      -396(%ebp), %eax
	movl      %eax, (%esp)
	call      _gfortran_st_close
.L00001C0D:
	jmp       .L000018A3
.L00001C12:
	.p2align 3
.L00001C18:
	movl      -76(%ebp), %eax
	leal      -6600(%ebp), %ebx
	movl      $.LC4, -6592(%ebp)
	movl      $209, -6588(%ebp)
	movl      $.LC000002F4, -6552(%ebp)
	movl      $79, -6548(%ebp)
	movl      $4096, -6600(%ebp)
	movl      %eax, -6596(%ebp)
	movl      %ebx, (%esp)
	call      _gfortran_st_write
.L00001C61:
	movl      $1, 8(%esp)
	movl      $.LC00000384, 4(%esp)
.L00001C71:
	movl      %ebx, (%esp)
	call      _gfortran_transfer_character
.L00001C79:
	movl      $4, 8(%esp)
	movl      $.LC00000388, 4(%esp)
	movl      %ebx, (%esp)
	call      _gfortran_transfer_integer
.L00001C91:
	movl      %ebx, (%esp)
	call      _gfortran_st_write_done
.L00001C99:
	jmp       .L00001847
.L00001C9E:
	.p2align 3
.L00001CA0:
	movl      -76(%ebp), %eax
	leal      -5920(%ebp), %ebx
	movl      $.LC4, -5912(%ebp)
	movl      $202, -5908(%ebp)
	movl      $.LC00000348, -5872(%ebp)
	movl      %eax, -5916(%ebp)
	movl      $53, -5868(%ebp)
	movl      $4096, -5920(%ebp)
	movl      %ebx, (%esp)
	call      _gfortran_st_write
.L00001CE9:
	movl      $4, 8(%esp)
	movl      $.LC00000380, 4(%esp)
	movl      %ebx, (%esp)
	call      _gfortran_transfer_integer
.L00001D01:
	movl      %ebx, (%esp)
	call      _gfortran_st_write_done
.L00001D09:
	jmp       .L00001847
.L00001D0E:
	.p2align 3
.L00001D10:
	leal      -8300(%ebp), %edx
	movl      $.LC4, -8292(%ebp)
	movl      $225, -8288(%ebp)
	movl      $128, -8300(%ebp)
	movl      $5, -8296(%ebp)
	movl      %edx, (%esp)
	call      _gfortran_st_read
.L00001D46:
	movl      -68(%ebp), %eax
	testl     %eax, %eax
	jle       .L00001D8A
.L00001D4D:
	leal      -196(%ebp), %edi
	xorl      %esi, %esi
	movl      %edi, -71472(%ebp)
	movl      %eax, %edi
	.p2align 3
.L00001D60:
	movl      -71472(%ebp), %edx
	movl      $4, 8(%esp)
	leal      (%edx,%esi,4), %eax
	addl      $1, %esi
	movl      %eax, 4(%esp)
	leal      -8300(%ebp), %eax
	movl      %eax, (%esp)
	call      _gfortran_transfer_integer
.L00001D86:
	cmpl      %edi, %esi
	jne       .L00001D60
.L00001D8A:
	leal      -8300(%ebp), %edx
	movl      %edx, (%esp)
	call      _gfortran_st_read_done
.L00001D98:
	movl      -68(%ebp), %esi
	testl     %esi, %esi
	jle       .L00001DD5
.L00001D9F:
	movl      $1, %edx
	leal      -196(%ebp), %edi
	jmp       .L00001DB3
.L00001DAC:
	.p2align 3
.L00001DB0:
	addl      $1, %edx
.L00001DB3:
	movl      -4(%edi,%edx,4), %eax
	testl     %eax, %eax
	je        .L00002036
.L00001DBF:
	movl      %eax, %ecx
	sarl      $31, %ecx
	xorl      %ecx, %eax
	subl      %ecx, %eax
	cmpl      $2, %eax
	jg        .L00002036
.L00001DD1:
	cmpl      %esi, %edx
	jne       .L00001DB0
.L00001DD5:
	leal      -8980(%ebp), %esi
	movl      $.LC4, -8972(%ebp)
	movl      $233, -8968(%ebp)
	movl      $128, -8980(%ebp)
	movl      $5, -8976(%ebp)
	movl      %esi, (%esp)
	call      _gfortran_st_read
.L00001E0B:
	leal      -56(%ebp), %eax
	movl      %eax, 4(%esp)
	movl      $4, 8(%esp)
	movl      %esi, (%esp)
	call      _gfortran_transfer_integer
.L00001E22:
	movl      %esi, (%esp)
	call      _gfortran_st_read_done
.L00001E2A:
	movl      -56(%ebp), %eax
	subl      $1, %eax
	cmpl      $6, %eax
	ja        .L00001F82
.L00001E39:
	leal      -9660(%ebp), %edi
	movl      $.LC4, -9652(%ebp)
	movl      $238, -9648(%ebp)
	movl      $128, -9660(%ebp)
	movl      $5, -9656(%ebp)
	movl      %edi, (%esp)
	call      _gfortran_st_read
.L00001E6F:
	movl      -56(%ebp), %edx
	testl     %edx, %edx
	movl      %edx, -71476(%ebp)
	jle       .L00001EB8
.L00001E7C:
	leal      -140(%ebp), %eax
	xorl      %esi, %esi
	movl      %eax, -71472(%ebp)
	.p2align 3
.L00001E90:
	movl      -71472(%ebp), %edx
	movl      $4, 8(%esp)
	movl      %edi, (%esp)
	leal      (%edx,%esi,4), %eax
	addl      $1, %esi
	movl      %eax, 4(%esp)
	call      _gfortran_transfer_real
.L00001EB0:
	cmpl      -71476(%ebp), %esi
	jne       .L00001E90
.L00001EB8:
	leal      -10000(%ebp), %esi
	movl      %edi, (%esp)
	call      _gfortran_st_read_done
.L00001EC6:
	movl      $.LC4, -9992(%ebp)
	movl      $240, -9988(%ebp)
	movl      $128, -10000(%ebp)
	movl      $5, -9996(%ebp)
	movl      %esi, (%esp)
	call      _gfortran_st_read
.L00001EF6:
	leal      -60(%ebp), %eax
	movl      %eax, 4(%esp)
	movl      $4, 8(%esp)
	movl      %esi, (%esp)
	call      _gfortran_transfer_integer
.L00001F0D:
	movl      %esi, (%esp)
	call      _gfortran_st_read_done
.L00001F15:
	movl      -60(%ebp), %eax
	subl      $1, %eax
	cmpl      $6, %eax
	jbe       .L000020A4
.L00001F24:
	movl      -76(%ebp), %eax
	leal      -10340(%ebp), %ebx
	movl      $.LC4, -10332(%ebp)
	movl      $242, -10328(%ebp)
	movl      $.LC000002F4, -10292(%ebp)
	movl      $79, -10288(%ebp)
	movl      $4096, -10340(%ebp)
	movl      %eax, -10336(%ebp)
	movl      %ebx, (%esp)
	call      _gfortran_st_write
.L00001F6D:
	movl      $4, 8(%esp)
	movl      $.LC00000407, 4(%esp)
	jmp       .L00001C71
.L00001F82:
	movl      -76(%ebp), %eax
	leal      -9320(%ebp), %ebx
	movl      $.LC4, -9312(%ebp)
	movl      $235, -9308(%ebp)
	movl      $.LC000002F4, -9272(%ebp)
	movl      $79, -9268(%ebp)
	movl      $4096, -9320(%ebp)
	movl      %eax, -9316(%ebp)
	movl      %ebx, (%esp)
	call      _gfortran_st_write
.L00001FCB:
	movl      $5, 8(%esp)
	movl      $.LC00000402, 4(%esp)
	jmp       .L00001C71
.L00001FE0:
	movl      -76(%ebp), %eax
	leal      -7280(%ebp), %ebx
	movl      $.LC4, -7272(%ebp)
	movl      $215, -7268(%ebp)
	movl      $.LC0000038C, -7232(%ebp)
	movl      $32, -7228(%ebp)
	movl      $4096, -7280(%ebp)
	movl      %eax, -7276(%ebp)
	movl      %ebx, (%esp)
	call      _gfortran_st_write
.L00002029:
	movl      %ebx, (%esp)
	call      _gfortran_st_write_done
.L00002031:
	jmp       .L00001847
.L00002036:
	movl      -76(%ebp), %eax
	leal      -8640(%ebp), %ebx
	movl      $.LC4, -8632(%ebp)
	movl      $228, -8628(%ebp)
	movl      $.LC000003BC, -8592(%ebp)
	movl      %eax, -8636(%ebp)
	movl      $70, -8588(%ebp)
	movl      $4096, -8640(%ebp)
	movl      %ebx, (%esp)
	call      _gfortran_st_write
.L0000207F:
	movl      $4, 8(%esp)
	movl      $.LC25, 4(%esp)
	movl      %ebx, (%esp)
	call      _gfortran_transfer_integer
.L00002097:
	movl      %ebx, (%esp)
	call      _gfortran_st_write_done
.L0000209F:
	jmp       .L00001847
.L000020A4:
	leal      -10680(%ebp), %edx
	movl      $.LC4, -10672(%ebp)
	movl      $245, -10668(%ebp)
	movl      $128, -10680(%ebp)
	movl      $5, -10676(%ebp)
	movl      %edx, (%esp)
	call      _gfortran_st_read
.L000020DA:
	movl      -60(%ebp), %eax
	testl     %eax, %eax
	jle       .L00002122
.L000020E1:
	leal      -168(%ebp), %edi
	xorl      %esi, %esi
	movl      %edi, -71472(%ebp)
	movl      %eax, %edi
	.p2align 3
.L000020F8:
	movl      -71472(%ebp), %edx
	movl      $4, 8(%esp)
	leal      (%edx,%esi,4), %eax
	addl      $1, %esi
	movl      %eax, 4(%esp)
	leal      -10680(%ebp), %eax
	movl      %eax, (%esp)
	call      _gfortran_transfer_real
.L0000211E:
	cmpl      %edi, %esi
	jne       .L000020F8
.L00002122:
	leal      -10680(%ebp), %edx
	movl      %edx, (%esp)
	leal      -11020(%ebp), %esi
	call      _gfortran_st_read_done
.L00002136:
	movl      -76(%ebp), %eax
	movl      $.LC4, -11012(%ebp)
	movl      $249, -11008(%ebp)
	movl      $.LC0000040C, -10972(%ebp)
	movl      %eax, -11016(%ebp)
	movl      $109, -10968(%ebp)
	movl      $4096, -11020(%ebp)
	movl      %esi, (%esp)
	call      _gfortran_st_write
.L00002179:
	movl      %esi, (%esp)
	call      _gfortran_st_write_done
.L00002181:
	movl      -76(%ebp), %eax
	movl      $.LC4, -11352(%ebp)
	movl      $250, -11348(%ebp)
	movl      $.LC0000047C, -11312(%ebp)
	movl      %eax, -11356(%ebp)
	leal      -11360(%ebp), %eax
	movl      %eax, (%esp)
	movl      $33, -11308(%ebp)
	movl      $4096, -11360(%ebp)
	call      _gfortran_st_write
.L000021CA:
	movl      -64(%ebp), %eax
	testl     %eax, %eax
	jle       .L00002212
.L000021D1:
	leal      -324(%ebp), %edi
	xorl      %esi, %esi
	movl      %edi, -71472(%ebp)
	movl      %eax, %edi
	.p2align 3
.L000021E8:
	movl      -71472(%ebp), %edx
	movl      $4, 8(%esp)
	leal      (%edx,%esi,4), %eax
	addl      $1, %esi
	movl      %eax, 4(%esp)
	leal      -11360(%ebp), %eax
	movl      %eax, (%esp)
	call      _gfortran_transfer_integer
.L0000220E:
	cmpl      %edi, %esi
	jne       .L000021E8
.L00002212:
	leal      -11360(%ebp), %edx
	movl      %edx, (%esp)
	call      _gfortran_st_write_done
.L00002220:
	movl      -76(%ebp), %eax
	movl      $.LC4, -11692(%ebp)
	movl      $251, -11688(%ebp)
	movl      $.LC000004A0, -11652(%ebp)
	movl      %eax, -11696(%ebp)
	leal      -11700(%ebp), %eax
	movl      %eax, (%esp)
	movl      $33, -11648(%ebp)
	movl      $4096, -11700(%ebp)
	call      _gfortran_st_write
.L00002269:
	movl      -72(%ebp), %eax
	testl     %eax, %eax
	jle       .L000022AA
.L00002270:
	leal      -224(%ebp), %edi
	xorl      %esi, %esi
	movl      %edi, -71472(%ebp)
	movl      %eax, %edi
.L00002280:
	movl      -71472(%ebp), %edx
	movl      $4, 8(%esp)
	leal      (%edx,%esi,4), %eax
	addl      $1, %esi
	movl      %eax, 4(%esp)
	leal      -11700(%ebp), %eax
	movl      %eax, (%esp)
	call      _gfortran_transfer_integer
.L000022A6:
	cmpl      %edi, %esi
	jne       .L00002280
.L000022AA:
	leal      -11700(%ebp), %edx
	movl      %edx, (%esp)
	call      _gfortran_st_write_done
.L000022B8:
	movl      -76(%ebp), %eax
	movl      $.LC4, -12032(%ebp)
	movl      $252, -12028(%ebp)
	movl      $.LC000004C4, -11992(%ebp)
	movl      %eax, -12036(%ebp)
	leal      -12040(%ebp), %eax
	movl      %eax, (%esp)
	movl      $33, -11988(%ebp)
	movl      $4096, -12040(%ebp)
	call      _gfortran_st_write
.L00002301:
	movl      -68(%ebp), %eax
	testl     %eax, %eax
	jle       .L00002342
.L00002308:
	leal      -196(%ebp), %edi
	xorl      %esi, %esi
	movl      %edi, -71472(%ebp)
	movl      %eax, %edi
.L00002318:
	movl      -71472(%ebp), %edx
	movl      $4, 8(%esp)
	leal      (%edx,%esi,4), %eax
	addl      $1, %esi
	movl      %eax, 4(%esp)
	leal      -12040(%ebp), %eax
	movl      %eax, (%esp)
	call      _gfortran_transfer_integer
.L0000233E:
	cmpl      %edi, %esi
	jne       .L00002318
.L00002342:
	leal      -12040(%ebp), %edx
	movl      %edx, (%esp)
	leal      -12380(%ebp), %edi
	call      _gfortran_st_write_done
.L00002356:
	movl      -76(%ebp), %eax
	movl      $.LC4, -12372(%ebp)
	movl      $253, -12368(%ebp)
	movl      $.LC000004E8, -12332(%ebp)
	movl      %eax, -12376(%ebp)
	movl      $35, -12328(%ebp)
	movl      $4096, -12380(%ebp)
	movl      %edi, (%esp)
	call      _gfortran_st_write
.L00002399:
	movl      -56(%ebp), %eax
	testl     %eax, %eax
	movl      %eax, -71476(%ebp)
	jle       .L000023E0
.L000023A6:
	leal      -140(%ebp), %edx
	xorl      %esi, %esi
	movl      %edx, -71472(%ebp)
	.p2align 3
.L000023B8:
	movl      -71472(%ebp), %edx
	movl      $4, 8(%esp)
	movl      %edi, (%esp)
	leal      (%edx,%esi,4), %eax
	addl      $1, %esi
	movl      %eax, 4(%esp)
	call      _gfortran_transfer_real
.L000023D8:
	cmpl      -71476(%ebp), %esi
	jne       .L000023B8
.L000023E0:
	movl      %edi, (%esp)
	call      _gfortran_st_write_done
.L000023E8:
	movl      -76(%ebp), %eax
	movl      $.LC4, -12712(%ebp)
	movl      $254, -12708(%ebp)
	movl      $.LC0000050C, -12672(%ebp)
	movl      %eax, -12716(%ebp)
	leal      -12720(%ebp), %eax
	movl      %eax, (%esp)
	movl      $35, -12668(%ebp)
	movl      $4096, -12720(%ebp)
	call      _gfortran_st_write
.L00002431:
	movl      -60(%ebp), %eax
	testl     %eax, %eax
	jle       .L00002472
.L00002438:
	leal      -168(%ebp), %edi
	xorl      %esi, %esi
	movl      %edi, -71472(%ebp)
	movl      %eax, %edi
.L00002448:
	movl      -71472(%ebp), %edx
	movl      $4, 8(%esp)
	leal      (%edx,%esi,4), %eax
	addl      $1, %esi
	movl      %eax, 4(%esp)
	leal      -12720(%ebp), %eax
	movl      %eax, (%esp)
	call      _gfortran_transfer_real
.L0000246E:
	cmpl      %edi, %esi
	jne       .L00002448
.L00002472:
	leal      -12720(%ebp), %edx
	movl      %edx, (%esp)
	call      _gfortran_st_write_done
.L00002480:
	movl      -104(%ebp), %esi
	testl     %esi, %esi
	je        .L000026E2
.L0000248B:
	movl      -76(%ebp), %eax
	leal      -13740(%ebp), %esi
	movl      %esi, (%esp)
	movl      $.LC4, -13732(%ebp)
	movl      $259, -13728(%ebp)
	movl      %eax, -13736(%ebp)
	movl      $128, -13740(%ebp)
	call      _gfortran_st_write
.L000024C0:
	movl      %esi, (%esp)
	leal      -14080(%ebp), %esi
	call      _gfortran_st_write_done
.L000024CE:
	movl      -76(%ebp), %eax
	movl      %esi, (%esp)
	movl      $.LC4, -14072(%ebp)
	movl      $260, -14068(%ebp)
	movl      %eax, -14076(%ebp)
	movl      $.LC00000558, -14032(%ebp)
	movl      $82, -14028(%ebp)
	movl      $4096, -14080(%ebp)
	call      _gfortran_st_write
.L00002511:
	leal      -96(%ebp), %eax
	movl      %eax, 4(%esp)
	movl      %esi, (%esp)
	movl      $4, 8(%esp)
	call      _gfortran_transfer_real
.L00002528:
	movl      %esi, (%esp)
	leal      -14420(%ebp), %esi
	call      _gfortran_st_write_done
.L00002536:
	movl      -76(%ebp), %eax
	movl      $.LC4, -14412(%ebp)
	movl      $261, -14408(%ebp)
	movl      $128, -14420(%ebp)
	movl      %eax, -14416(%ebp)
	movl      %esi, (%esp)
	call      _gfortran_st_write
.L00002565:
	movl      %esi, (%esp)
	call      _gfortran_st_write_done
.L0000256D:
	movl      $1, %eax
	leal      -496(%ebp), %edx
.L00002578:
	movl      $0, -4(%edx,%eax,4)
	addl      $1, %eax
	cmpl      $17, %eax
	jne       .L00002578
.L00002588:
	leal      -110(%ebp), %edi
.L0000258B:
	leal      -14760(%ebp), %edx
	movl      %edx, (%esp)
	movl      $.LC4, -14752(%ebp)
	movl      $269, -14748(%ebp)
	movl      $.LC000005AA, -14712(%ebp)
	movl      $10, -14708(%ebp)
	movl      $4104, -14760(%ebp)
	movl      $5, -14756(%ebp)
	call      _gfortran_st_read
.L000025D5:
	leal      -14760(%ebp), %eax
	movl      %eax, (%esp)
	movl      $6, 8(%esp)
	movl      %edi, 4(%esp)
	call      _gfortran_transfer_character
.L000025EF:
	leal      -48(%ebp), %edx
	leal      -14760(%ebp), %eax
	movl      %edx, 4(%esp)
	movl      %eax, (%esp)
	movl      $4, 8(%esp)
	call      _gfortran_transfer_logical
.L0000260C:
	leal      -14760(%ebp), %edx
	movl      %edx, (%esp)
	call      _gfortran_st_read_done
.L0000261A:
	movl      -14760(%ebp), %eax
	andl      $3, %eax
	cmpl      $2, %eax
	je        .L00002775
.L0000262C:
	xorl      %esi, %esi
	.p2align 3
.L00002630:
	leal      (%esi,%esi,2), %eax
	leal      snames.1550(%eax,%eax), %eax
	movl      %eax, 12(%esp)
	movl      $6, 8(%esp)
	movl      %edi, 4(%esp)
	movl      $6, (%esp)
	call      _gfortran_compare_string
.L00002656:
	testl     %eax, %eax
	je        .L000026D3
.L0000265A:
	addl      $1, %esi
	cmpl      $16, %esi
	jne       .L00002630
.L00002662:
	movl      -76(%ebp), %eax
	leal      -15100(%ebp), %ebx
	movl      $.LC4, -15092(%ebp)
	movl      $274, -15088(%ebp)
	movl      $.LC000005B4, -15052(%ebp)
	movl      %eax, -15096(%ebp)
	movl      $92, -15048(%ebp)
	movl      $4096, -15100(%ebp)
	movl      %ebx, (%esp)
	call      _gfortran_st_write
.L000026AB:
	movl      $6, 8(%esp)
	movl      %edi, 4(%esp)
	movl      %ebx, (%esp)
	call      _gfortran_transfer_character
.L000026BF:
	movl      %ebx, (%esp)
	call      _gfortran_st_write_done
.L000026C7:
	movl      $-1, (%esp)
	call      _gfortran_stop_numeric
.L000026D3:
	movl      -48(%ebp), %eax
	movl      %eax, -496(%ebp,%esi,4)
	jmp       .L0000258B
.L000026E2:
	movl      -76(%ebp), %eax
	leal      -13060(%ebp), %esi
	movl      %esi, (%esp)
	movl      $.LC4, -13052(%ebp)
	movl      $256, -13048(%ebp)
	movl      %eax, -13056(%ebp)
	movl      $128, -13060(%ebp)
	call      _gfortran_st_write
.L00002717:
	movl      %esi, (%esp)
	leal      -13400(%ebp), %esi
	call      _gfortran_st_write_done
.L00002725:
	movl      -76(%ebp), %eax
	movl      $.LC4, -13392(%ebp)
	movl      $257, -13388(%ebp)
	movl      $.LC00000530, -13352(%ebp)
	movl      $37, -13348(%ebp)
	movl      $4096, -13400(%ebp)
	movl      %eax, -13396(%ebp)
	movl      %esi, (%esp)
	call      _gfortran_st_write
.L00002768:
	movl      %esi, (%esp)
	call      _gfortran_st_write_done
.L00002770:
	jmp       .L0000248B
.L00002775:
	leal      -360(%ebp), %eax
	movl      $1, %edi
	movl      %eax, (%esp)
	leal      -15440(%ebp), %esi
	movl      $.LC4, -352(%ebp)
	movl      $280, -348(%ebp)
	movl      $0, -360(%ebp)
	movl      $5, -356(%ebp)
	call      _gfortran_st_close
.L000027B6:
	movl      -76(%ebp), %eax
	movl      $872415232, -32(%ebp)
	movl      $.LC4, -15432(%ebp)
	movl      $285, -15428(%ebp)
	movl      %eax, -15436(%ebp)
	movl      $.LC00000610, -15392(%ebp)
	movl      $58, -15388(%ebp)
	movl      $4096, -15440(%ebp)
	movl      %esi, (%esp)
	call      _gfortran_st_write
.L00002800:
	leal      -32(%ebp), %eax
	movl      %eax, 4(%esp)
	movl      $4, 8(%esp)
	movl      %esi, (%esp)
	call      _gfortran_transfer_real
.L00002817:
	movl      %esi, (%esp)
	call      _gfortran_st_write_done
.L0000281F:
	movl      $32, -52(%ebp)
	movl      $0, -71472(%ebp)
.L00002830:
	movl      -71472(%ebp), %eax
	movl      $2, %ecx
	subl      %edi, %ecx
	leal      -37660(%ebp,%eax,4), %edx
	leal      -37532(%ebp,%eax,4), %esi
	.p2align 3
.L00002850:
	movl      %ecx, %eax
	sarl      $31, %eax
	notl      %eax
	andl      %ecx, %eax
	addl      $1, %ecx
	movl      %eax, -71468(%ebp)
	fildl     -71468(%ebp)
	fstps     (%edx)
	addl      $4, %edx
	cmpl      %esi, %edx
	jne       .L00002850
.L00002871:
	movl      %edi, -71468(%ebp)
	fildl     -71468(%ebp)
	addl      $65, -71472(%ebp)
	cmpl      $32, %edi
	fstps     -1324(%ebp,%edi,4)
	movl      $0, -1584(%ebp,%edi,4)
	je        .L000028A0
.L0000289B:
	addl      $1, %edi
	jmp       .L00002830
.L000028A0:
	movl      -52(%ebp), %eax
	testl     %eax, %eax
	jle       .L00002901
.L000028A7:
	addl      $1, %eax
	movl      $1, %ecx
	movl      %eax, -71476(%ebp)
	jmp       .L000028BA
.L000028B7:
	.p2align 3
.L000028B8:
	movl      %esi, %ecx
.L000028BA:
	leal      1(%ecx), %esi
	movl      $1431655766, %eax
	movl      %esi, %edx
	imull     %ecx, %edx
	leal      -1(%ecx), %edi
	imull     %edx, %edi
	movl      %edx, -71472(%ebp)
	imull     -71472(%ebp), %ecx
	imull     %edi
	sarl      $31, %edi
	sarl      $1, %ecx
	subl      %edx, %edi
	leal      (%edi,%ecx), %ecx
	cmpl      -71476(%ebp), %esi
	movl      %ecx, -71468(%ebp)
	fildl     -71468(%ebp)
	fstps     -20248(%ebp,%esi,4)
	jne       .L000028B8
.L00002901:
	leal      -36(%ebp), %edx
	movl      %edx, 60(%esp)
	leal      -32(%ebp), %eax
	leal      -20240(%ebp), %edx
	movl      %eax, 56(%esp)
	leal      -1060(%ebp), %eax
	movl      %edx, 52(%esp)
	leal      -1580(%ebp), %edx
	movl      %eax, 48(%esp)
	leal      -1320(%ebp), %eax
	movl      %edx, 36(%esp)
	leal      -37660(%ebp), %edx
	leal      -1840(%ebp), %esi
	movl      %eax, 24(%esp)
	leal      -40(%ebp), %edi
	leal      -25(%ebp), %eax
	movl      %edx, 16(%esp)
	leal      -52(%ebp), %edx
	movl      %edx, 8(%esp)
	movl      %edx, 4(%esp)
	movl      %eax, (%esp)
	movl      %edx, -71480(%ebp)
	movb      $78, -25(%ebp)
	movl      $1, 76(%esp)
	movl      $.LC0000019C, 72(%esp)
	movl      %ebx, 68(%esp)
	movl      %edi, 64(%esp)
	movl      %esi, 44(%esp)
	movl      $.LC20, 40(%esp)
	movl      $.LC49, 32(%esp)
	movl      $.LC20, 28(%esp)
	movl      $.LC00000380, 20(%esp)
	movl      $.LC000001A0, 12(%esp)
	call      smvch_
.L000029AE:
	movl      -71480(%ebp), %edx
	leal      -20240(%ebp), %eax
	movl      %esi, 4(%esp)
	movl      %eax, (%esp)
	movl      %edx, 8(%esp)
	call      lse_
.L000029CA:
	movl      -71480(%ebp), %edx
	testl     %eax, %eax
	movl      %eax, -88(%ebp)
	je        .L000029EF
.L000029D7:
	fldz      
	flds      -36(%ebp)
	fucomp    %st(1)
	fnstsw    %ax
	sahf      
	jp        .L000029ED
.L000029E3:
	je        .L00002A91
.L000029E9:
	fstp      %st(0)
	jmp       .L000029EF
.L000029ED:
	fstp      %st(0)
.L000029EF:
	movl      -76(%ebp), %eax
	leal      -15780(%ebp), %ebx
	movl      $.LC4, -15772(%ebp)
	movl      $307, -15768(%ebp)
	movl      $.LC0000064C, -15732(%ebp)
	movl      $303, -15728(%ebp)
	movl      $4096, -15780(%ebp)
	movl      %eax, -15776(%ebp)
.L00002A30:
	movl      %ebx, (%esp)
	call      _gfortran_st_write
.L00002A38:
	leal      -25(%ebp), %edx
	movl      %edx, 4(%esp)
	movl      $1, 8(%esp)
	movl      %ebx, (%esp)
	call      _gfortran_transfer_character
.L00002A4F:
	leal      -88(%ebp), %eax
	movl      %eax, 4(%esp)
	movl      $4, 8(%esp)
	movl      %ebx, (%esp)
	call      _gfortran_transfer_logical
.L00002A66:
	leal      -36(%ebp), %eax
	movl      %eax, 4(%esp)
	movl      $4, 8(%esp)
	movl      %ebx, (%esp)
	call      _gfortran_transfer_real
.L00002A7D:
	movl      %ebx, (%esp)
	call      _gfortran_st_write_done
.L00002A85:
	movl      $-1, (%esp)
	call      _gfortran_stop_numeric
.L00002A91:
	leal      -36(%ebp), %eax
	movl      %eax, 60(%esp)
	leal      -32(%ebp), %eax
	movl      %eax, 56(%esp)
	leal      -20240(%ebp), %eax
	movl      %eax, 52(%esp)
	leal      -1060(%ebp), %eax
	movl      %eax, 48(%esp)
	leal      -1580(%ebp), %eax
	movl      %eax, 36(%esp)
	leal      -1320(%ebp), %eax
	movl      %eax, 24(%esp)
	leal      -37660(%ebp), %eax
	movl      %eax, 16(%esp)
	leal      -25(%ebp), %eax
	fstps     -71496(%ebp)
	movl      %edx, 8(%esp)
	movl      %edx, 4(%esp)
	movl      %eax, (%esp)
	movl      %edx, -71480(%ebp)
	movb      $84, -25(%ebp)
	movl      $1, 76(%esp)
	movl      $.LC0000019C, 72(%esp)
	movl      %ebx, 68(%esp)
	movl      %edi, 64(%esp)
	movl      %esi, 44(%esp)
	movl      $.LC23, 40(%esp)
	movl      $.LC49, 32(%esp)
	movl      $.LC23, 28(%esp)
	movl      $.LC00000380, 20(%esp)
	movl      $.LC000001A0, 12(%esp)
	call      smvch_
.L00002B38:
	movl      -71480(%ebp), %edx
	movl      %esi, 4(%esp)
	movl      %edx, 8(%esp)
	leal      -20240(%ebp), %edx
	movl      %edx, (%esp)
	call      lse_
.L00002B54:
	testl     %eax, %eax
	flds      -71496(%ebp)
	movl      %eax, -88(%ebp)
	je        .L00002B73
.L00002B65:
	flds      -36(%ebp)
	fucompp   
	fnstsw    %ax
	sahf      
	jp        .L00002B75
.L00002B6F:
	je        .L00002BBB
.L00002B71:
	jmp       .L00002B75
.L00002B73:
	fstp      %st(0)
.L00002B75:
	movl      -76(%ebp), %eax
	leal      -16120(%ebp), %ebx
	movl      $.LC4, -16112(%ebp)
	movl      $315, -16108(%ebp)
	movl      $.LC0000064C, -16072(%ebp)
	movl      $303, -16068(%ebp)
	movl      $4096, -16120(%ebp)
	movl      %eax, -16116(%ebp)
	jmp       .L00002A30
.L00002BBB:
	movl      $1, -44(%ebp)
	jmp       .L00002C5F
.L00002BC7:
	movl      -76(%ebp), %eax
	movl      $.LC4, -16792(%ebp)
	movl      $325, -16788(%ebp)
	movl      $.LC0000077B, -16752(%ebp)
	movl      %eax, -16796(%ebp)
	leal      -16800(%ebp), %eax
	movl      %eax, (%esp)
	movl      %eax, -71480(%ebp)
	movl      $29, -16748(%ebp)
	movl      $4096, -16800(%ebp)
	call      _gfortran_st_write
.L00002C16:
	movl      -44(%ebp), %edx
	movl      -71480(%ebp), %eax
	movl      $6, 8(%esp)
	subl      $1, %edx
	imull     $6, %edx, %edx
	movl      %eax, (%esp)
	addl      $snames.1550, %edx
	movl      %edx, 4(%esp)
	call      _gfortran_transfer_character
.L00002C3F:
	movl      -71480(%ebp), %eax
	movl      %eax, (%esp)
	call      _gfortran_st_write_done
.L00002C4D:
	movl      -44(%ebp), %eax
	leal      1(%eax), %edx
	cmpl      $16, %eax
	movl      %edx, -44(%ebp)
	je        .L00002F05
.L00002C5F:
	movl      -76(%ebp), %eax
	leal      -16460(%ebp), %edx
	movl      %edx, (%esp)
	movl      $.LC4, -16452(%ebp)
	movl      $322, -16448(%ebp)
	movl      %eax, -16456(%ebp)
	movl      $128, -16460(%ebp)
	call      _gfortran_st_write
.L00002C94:
	leal      -16460(%ebp), %eax
	movl      %eax, (%esp)
	call      _gfortran_st_write_done
.L00002CA2:
	movl      -44(%ebp), %eax
	subl      $1, %eax
	cmpl      $0, -496(%ebp,%eax,4)
	je        .L00002BC7
.L00002CB6:
	imull     $6, %eax, %eax
	movl      $6, 8(%esp)
	movl      $srnamc_, (%esp)
	addl      $snames.1550, %eax
	movl      %eax, 4(%esp)
	call      memmove
.L00002CD6:
	cmpl      $0, -104(%ebp)
	jne       .L00002E8E
.L00002CE0:
	movl      -44(%ebp), %eax
	movl      $0, infoc_
	movl      $1, infoc_+8
	movl      $0, -40(%ebp)
	leal      -3(%eax), %edx
	cmpl      $13, %edx
	jbe       .L00002E87
.L00002D0A:
	leal      -1060(%ebp), %edx
	subl      $1, %eax
	movl      %edx, 120(%esp)
	leal      -19720(%ebp), %edx
	movl      %edx, 112(%esp)
	leal      -20240(%ebp), %edx
	movl      %edx, 108(%esp)
	leal      -1580(%ebp), %edx
	movl      %edx, 104(%esp)
	leal      -18680(%ebp), %edx
	movl      %edx, 100(%esp)
	leal      -19200(%ebp), %edx
	movl      %edx, 96(%esp)
	leal      -1320(%ebp), %edx
	movl      %edx, 92(%esp)
	leal      -71460(%ebp), %edx
	movl      %edx, 88(%esp)
	leal      -54560(%ebp), %edx
	movl      %edx, 84(%esp)
	leal      -37660(%ebp), %edx
	movl      %edx, 80(%esp)
	leal      -196(%ebp), %edx
	movl      %edx, 68(%esp)
	leal      -68(%ebp), %edx
	movl      %edx, 64(%esp)
	leal      -168(%ebp), %edx
	movl      %edx, 60(%esp)
	leal      -60(%ebp), %edx
	movl      %edx, 56(%esp)
	leal      -140(%ebp), %edx
	movl      %edx, 52(%esp)
	leal      -56(%ebp), %edx
	movl      %edx, 48(%esp)
	leal      -224(%ebp), %edx
	movl      %edx, 44(%esp)
	leal      -72(%ebp), %edx
	movl      %edx, 40(%esp)
	leal      -324(%ebp), %edx
	movl      %edx, 36(%esp)
	leal      -64(%ebp), %edx
	movl      %edx, 32(%esp)
	imull     $6, %eax, %eax
	leal      -84(%ebp), %edx
	movl      %edx, 24(%esp)
	leal      -100(%ebp), %edx
	movl      %edx, 20(%esp)
	leal      -80(%ebp), %edx
	movl      %edx, 16(%esp)
	leal      -96(%ebp), %edx
	addl      $snames.1550, %eax
	movl      %edx, 8(%esp)
	leal      -32(%ebp), %edx
	movl      $6, 124(%esp)
	movl      %esi, 116(%esp)
	movl      $.LC25, 76(%esp)
	movl      $.LC00000380, 72(%esp)
	movl      %edi, 28(%esp)
	movl      %ebx, 12(%esp)
	movl      %edx, 4(%esp)
	movl      %eax, (%esp)
	call      schk1_
.L00002E1D:
	cmpl      $0, -40(%ebp)
	je        .L00002C4D
.L00002E27:
	cmpl      $0, -92(%ebp)
	je        .L00002C4D
.L00002E31:
	movl      -76(%ebp), %eax
	leal      -17820(%ebp), %ebx
	movl      $.LC4, -17812(%ebp)
	movl      $384, -17808(%ebp)
	movl      $.LC000007AC, -17772(%ebp)
	movl      $53, -17768(%ebp)
	movl      $4096, -17820(%ebp)
	movl      %eax, -17816(%ebp)
	movl      %ebx, (%esp)
	call      _gfortran_st_write
.L00002E7A:
	movl      %ebx, (%esp)
	call      _gfortran_st_write_done
.L00002E82:
	jmp       .L00001898
.L00002E87:
	jmp       *.LC0000084C(,%edx,4)
.L00002E8E:
	movl      -44(%ebp), %eax
	movl      $6, 12(%esp)
	movl      %ebx, 8(%esp)
	subl      $1, %eax
	imull     $6, %eax, %eax
	addl      $snames.1550, %eax
	movl      %eax, 4(%esp)
	leal      -44(%ebp), %eax
	movl      %eax, (%esp)
	call      schke_
.L00002EB7:
	movl      -76(%ebp), %eax
	movl      $.LC4, -17132(%ebp)
	movl      $331, -17128(%ebp)
	movl      $128, -17140(%ebp)
	movl      %eax, -17136(%ebp)
	leal      -17140(%ebp), %eax
	movl      %eax, (%esp)
	movl      %eax, -71480(%ebp)
	call      _gfortran_st_write
.L00002EF2:
	movl      -71480(%ebp), %eax
	movl      %eax, (%esp)
	call      _gfortran_st_write_done
.L00002F00:
	jmp       .L00002CE0
.L00002F05:
	movl      -76(%ebp), %eax
	leal      -17480(%ebp), %ebx
	movl      $.LC4, -17472(%ebp)
	movl      $380, -17468(%ebp)
	movl      $.LC00000798, -17432(%ebp)
	movl      $20, -17428(%ebp)
	movl      $4096, -17480(%ebp)
	movl      %eax, -17476(%ebp)
	movl      %ebx, (%esp)
	call      _gfortran_st_write
.L00002F4E:
	movl      %ebx, (%esp)
	call      _gfortran_st_write_done
.L00002F56:
	jmp       .L00001898
.L00002F5B:
	leal      -20760(%ebp), %eax
	movl      %eax, 108(%esp)
	leal      -1060(%ebp), %eax
	movl      %eax, 104(%esp)
	leal      -20240(%ebp), %eax
	movl      %eax, 92(%esp)
	leal      -18680(%ebp), %eax
	movl      %eax, 84(%esp)
	leal      -1320(%ebp), %eax
	movl      %eax, 76(%esp)
	leal      -54560(%ebp), %eax
	leal      -19720(%ebp), %edx
	movl      %eax, 68(%esp)
	leal      -196(%ebp), %eax
	movl      %edx, 96(%esp)
	leal      -1580(%ebp), %edx
	movl      %eax, 52(%esp)
	leal      -68(%ebp), %eax
	movl      %edx, 88(%esp)
	leal      -19200(%ebp), %edx
	movl      %eax, 48(%esp)
	leal      -140(%ebp), %eax
	movl      %edx, 80(%esp)
	leal      -71460(%ebp), %edx
	movl      %eax, 44(%esp)
	leal      -324(%ebp), %eax
	movl      %edx, 72(%esp)
	leal      -37660(%ebp), %edx
	movl      %eax, 36(%esp)
	leal      -64(%ebp), %eax
	movl      %edx, 64(%esp)
	leal      -56(%ebp), %edx
	movl      %eax, 32(%esp)
	leal      -100(%ebp), %eax
	movl      %edx, 40(%esp)
	leal      -84(%ebp), %edx
	movl      %eax, 20(%esp)
	leal      -80(%ebp), %eax
	movl      %edx, 24(%esp)
	leal      -96(%ebp), %edx
	movl      %eax, 16(%esp)
	leal      -32(%ebp), %eax
	movl      $6, 112(%esp)
	movl      %esi, 100(%esp)
	movl      $.LC25, 60(%esp)
	movl      $.LC00000380, 56(%esp)
	movl      %edi, 28(%esp)
	movl      %ebx, 12(%esp)
	movl      %edx, 8(%esp)
	movl      %eax, 4(%esp)
	movl      $snames.1550+66, (%esp)
	call      schk4_
.L0000304F:
	jmp       .L00002E1D
.L00003054:
	leal      -1060(%ebp), %edx
	subl      $1, %eax
	movl      %edx, 120(%esp)
	leal      -19720(%ebp), %edx
	movl      %edx, 112(%esp)
	leal      -20240(%ebp), %edx
	movl      %edx, 108(%esp)
	leal      -1580(%ebp), %edx
	movl      %edx, 104(%esp)
	leal      -18680(%ebp), %edx
	movl      %edx, 100(%esp)
	leal      -19200(%ebp), %edx
	movl      %edx, 96(%esp)
	leal      -1320(%ebp), %edx
	movl      %edx, 92(%esp)
	leal      -71460(%ebp), %edx
	movl      %edx, 88(%esp)
	leal      -54560(%ebp), %edx
	movl      %edx, 84(%esp)
	leal      -37660(%ebp), %edx
	movl      %edx, 80(%esp)
	leal      -196(%ebp), %edx
	movl      %edx, 68(%esp)
	leal      -68(%ebp), %edx
	movl      %edx, 64(%esp)
	leal      -168(%ebp), %edx
	movl      %edx, 60(%esp)
	leal      -60(%ebp), %edx
	movl      %edx, 56(%esp)
	leal      -140(%ebp), %edx
	movl      %edx, 52(%esp)
	leal      -56(%ebp), %edx
	movl      %edx, 48(%esp)
	leal      -224(%ebp), %edx
	movl      %edx, 44(%esp)
	leal      -72(%ebp), %edx
	movl      %edx, 40(%esp)
	leal      -324(%ebp), %edx
	movl      %edx, 36(%esp)
	leal      -64(%ebp), %edx
	movl      %edx, 32(%esp)
	imull     $6, %eax, %eax
	leal      -84(%ebp), %edx
	movl      %edx, 24(%esp)
	leal      -100(%ebp), %edx
	movl      %edx, 20(%esp)
	leal      -80(%ebp), %edx
	movl      %edx, 16(%esp)
	leal      -96(%ebp), %edx
	addl      $snames.1550, %eax
	movl      %edx, 8(%esp)
	leal      -32(%ebp), %edx
	movl      $6, 124(%esp)
	movl      %esi, 116(%esp)
	movl      $.LC25, 76(%esp)
	movl      $.LC00000380, 72(%esp)
	movl      %edi, 28(%esp)
	movl      %ebx, 12(%esp)
	movl      %edx, 4(%esp)
	movl      %eax, (%esp)
	call      schk2_
.L00003167:
	jmp       .L00002E1D
.L0000316C:
	leal      -20760(%ebp), %edx
	subl      $1, %eax
	movl      %edx, 108(%esp)
	leal      -1060(%ebp), %edx
	movl      %edx, 104(%esp)
	leal      -19720(%ebp), %edx
	movl      %edx, 96(%esp)
	leal      -20240(%ebp), %edx
	movl      %edx, 92(%esp)
	leal      -1580(%ebp), %edx
	movl      %edx, 88(%esp)
	leal      -18680(%ebp), %edx
	movl      %edx, 84(%esp)
	leal      -19200(%ebp), %edx
	movl      %edx, 80(%esp)
	leal      -1320(%ebp), %edx
	movl      %edx, 76(%esp)
	leal      -71460(%ebp), %edx
	movl      %edx, 72(%esp)
	leal      -54560(%ebp), %edx
	movl      %edx, 68(%esp)
	leal      -37660(%ebp), %edx
	movl      %edx, 64(%esp)
	leal      -196(%ebp), %edx
	movl      %edx, 52(%esp)
	leal      -68(%ebp), %edx
	movl      %edx, 48(%esp)
	leal      -140(%ebp), %edx
	movl      %edx, 44(%esp)
	leal      -56(%ebp), %edx
	movl      %edx, 40(%esp)
	leal      -324(%ebp), %edx
	movl      %edx, 36(%esp)
	leal      -64(%ebp), %edx
	movl      %edx, 32(%esp)
	imull     $6, %eax, %eax
	leal      -84(%ebp), %edx
	movl      %edx, 24(%esp)
	leal      -100(%ebp), %edx
	movl      %edx, 20(%esp)
	leal      -80(%ebp), %edx
	movl      %edx, 16(%esp)
	leal      -96(%ebp), %edx
	addl      $snames.1550, %eax
	movl      %edx, 8(%esp)
	leal      -32(%ebp), %edx
	movl      $6, 112(%esp)
	movl      %esi, 100(%esp)
	movl      $.LC25, 60(%esp)
	movl      $.LC00000380, 56(%esp)
	movl      %edi, 28(%esp)
	movl      %ebx, 12(%esp)
	movl      %edx, 4(%esp)
	movl      %eax, (%esp)
	call      schk6_
.L00003267:
	jmp       .L00002E1D
.L0000326C:
	leal      -20760(%ebp), %edx
	subl      $1, %eax
	movl      %edx, 96(%esp)
	leal      -1060(%ebp), %edx
	movl      %edx, 92(%esp)
	leal      -19720(%ebp), %edx
	movl      %edx, 84(%esp)
	leal      -20240(%ebp), %edx
	movl      %edx, 80(%esp)
	leal      -1580(%ebp), %edx
	movl      %edx, 76(%esp)
	leal      -71460(%ebp), %edx
	movl      %edx, 72(%esp)
	leal      -54560(%ebp), %edx
	movl      %edx, 68(%esp)
	leal      -37660(%ebp), %edx
	movl      %edx, 64(%esp)
	leal      -196(%ebp), %edx
	movl      %edx, 52(%esp)
	leal      -68(%ebp), %edx
	movl      %edx, 48(%esp)
	leal      -224(%ebp), %edx
	movl      %edx, 44(%esp)
	leal      -72(%ebp), %edx
	movl      %edx, 40(%esp)
	leal      -324(%ebp), %edx
	movl      %edx, 36(%esp)
	leal      -64(%ebp), %edx
	movl      %edx, 32(%esp)
	imull     $6, %eax, %eax
	leal      -84(%ebp), %edx
	movl      %edx, 24(%esp)
	leal      -100(%ebp), %edx
	movl      %edx, 20(%esp)
	leal      -80(%ebp), %edx
	movl      %edx, 16(%esp)
	leal      -96(%ebp), %edx
	addl      $snames.1550, %eax
	movl      %edx, 8(%esp)
	leal      -32(%ebp), %edx
	movl      $6, 100(%esp)
	movl      %esi, 88(%esp)
	movl      $.LC25, 60(%esp)
	movl      $.LC00000380, 56(%esp)
	movl      %edi, 28(%esp)
	movl      %ebx, 12(%esp)
	movl      %edx, 4(%esp)
	movl      %eax, (%esp)
	call      schk3_
.L00003349:
	jmp       .L00002E1D
.L0000334E:
	leal      -20760(%ebp), %edx
	subl      $1, %eax
	movl      %edx, 108(%esp)
	leal      -1060(%ebp), %edx
	movl      %edx, 104(%esp)
	leal      -19720(%ebp), %edx
	movl      %edx, 96(%esp)
	leal      -20240(%ebp), %edx
	movl      %edx, 92(%esp)
	leal      -1580(%ebp), %edx
	movl      %edx, 88(%esp)
	leal      -18680(%ebp), %edx
	movl      %edx, 84(%esp)
	leal      -19200(%ebp), %edx
	movl      %edx, 80(%esp)
	leal      -1320(%ebp), %edx
	movl      %edx, 76(%esp)
	leal      -71460(%ebp), %edx
	movl      %edx, 72(%esp)
	leal      -54560(%ebp), %edx
	movl      %edx, 68(%esp)
	leal      -37660(%ebp), %edx
	movl      %edx, 64(%esp)
	leal      -196(%ebp), %edx
	movl      %edx, 52(%esp)
	leal      -68(%ebp), %edx
	movl      %edx, 48(%esp)
	leal      -140(%ebp), %edx
	movl      %edx, 44(%esp)
	leal      -56(%ebp), %edx
	movl      %edx, 40(%esp)
	leal      -324(%ebp), %edx
	movl      %edx, 36(%esp)
	leal      -64(%ebp), %edx
	movl      %edx, 32(%esp)
	imull     $6, %eax, %eax
	leal      -84(%ebp), %edx
	movl      %edx, 24(%esp)
	leal      -100(%ebp), %edx
	movl      %edx, 20(%esp)
	leal      -80(%ebp), %edx
	movl      %edx, 16(%esp)
	leal      -96(%ebp), %edx
	addl      $snames.1550, %eax
	movl      %edx, 8(%esp)
	leal      -32(%ebp), %edx
	movl      $6, 112(%esp)
	movl      %esi, 100(%esp)
	movl      $.LC25, 60(%esp)
	movl      $.LC00000380, 56(%esp)
	movl      %edi, 28(%esp)
	movl      %ebx, 12(%esp)
	movl      %edx, 4(%esp)
	movl      %eax, (%esp)
	call      schk5_
.L00003449:
	jmp       .L00002E1D
	.size	MAIN__, .-MAIN__
# ----------------------
	.local	mi.6374
	.comm	mi.6374,4,4
# ----------------------
	.local	ic.6373
	.comm	ic.6373,4,4
# ----------------------
	.local	i.6372
	.comm	i.6372,4,4
# ----------------------
	.comm	infoc_,16,16
# ----------------------
	.comm	srnamc_,6,16
# ----------------------
	.ident	"GCC: (Debian 4.4.5-8) 4.4.5"
	.section	.note.GNU-stack,"",@progbits
