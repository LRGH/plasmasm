	.file	"(extract)sblat2.f"
	.section	.rodata
.LC30:
	.ascii	" "
	.align 4
.LC31:
	.ascii	"( 1X, I6, ': ', A6, '(''', A1, ''',', I3, ',', F4.1, ', X,',"
	.ascii	"      I2, ', Y,', I2, ', A,', I3, ')                  .' )"
	.align 4
.LC32:
	.ascii	"( 1X, I6, ': ', A6, '(''', A1, ''',', I3, ',', F4.1, ', X,',"
	.ascii	"      I2, ', Y,', I2, ', AP)                     .' )"
	.align 4
.LC33:
	.ascii	"( ' ******* FATAL ERROR - ERROR-EXIT TAKEN ON VALID CALL *',"
	.ascii	"      '******' )"
	.align 4
.LC34:
	.ascii	"( ' ******* FATAL ERROR - PARAMETER NUMBER ', I2, ' WAS CH',"
	.ascii	"      'ANGED INCORRECTLY *******' )"
	.align 4
.LC35:
	.long	1
	.align 4
.LC36:
	.long	1065353216
	.align 4
.LC37:
	.ascii	"( ' ', A6, ' PASSED THE COMPUTATIONAL TESTS (', I6, ' CALL',"
	.ascii	"      'S)' )"
	.align 4
.LC38:
	.ascii	"( ' ', A6, ' COMPLETED THE COMPUTATIONAL TESTS (', I6, ' C',"
	.ascii	"      'ALLS)', /' ******* BUT WITH MAXIMUM TEST RATIO', F8.2"
	.ascii	",           ' - SUSPECT *******' )"
	.align 4
.LC39:
	.ascii	"( '      THESE ARE THE RESULTS FOR COLUMN ', I3 )"
	.align 4
.LC40:
	.ascii	"( ' ******* ', A6, ' FAILED ON CALL NUMBER:' )"
	.text
	.p2align 4,,15
.globl schk6_
	.type	schk6_, @function
schk6_:
	pushl	%ebp
	movl	%esp, %ebp
	pushl	%edi
	pushl	%esi
	pushl	%ebx
	subl	$3836, %esp
	movl	64(%ebp), %edx
	movl	8(%ebp), %esi
	movl	116(%ebp), %ebx
	movl	$9, -3644(%ebp)
	movl	(%edx), %eax
	xorl	%edx, %edx
	movl	%eax, %ecx
	sarl	$31, %ecx
	notl	%ecx
	andl	%eax, %ecx
	movl	%ecx, -3692(%ebp)
	notl	%ecx
	movl	%ecx, -3664(%ebp)
	movzbl	2(%esi), %ecx
	cmpb	$89, %cl
	sete	%dl
	movl	%edx, -3668(%ebp)
	xorl	%edx, %edx
	cmpb	$80, %cl
	movl	-3668(%ebp), %ecx
	sete	%dl
	movl	%edx, -3684(%ebp)
	testl	%ecx, %ecx
	jne	.L226
	testl	%edx, %edx
	jne	.L315
.L226:
	movl	40(%ebp), %ecx
	xorl	%edx, %edx
	movl	$0, -84(%ebp)
	movl	$1, -88(%ebp)
	movl	%edx, -40(%ebp)
	movl	(%ecx), %ecx
	movl	%edx, -3756(%ebp)
	flds	-3756(%ebp)
	testl	%ecx, %ecx
	movl	%ecx, -3724(%ebp)
	jle	.L228
	fstp	%st(0)
	movl	-3664(%ebp), %esi
	movl	-3692(%ebp), %ecx
	movl	8(%ebp), %edx
	movl	$1, -3712(%ebp)
	leal	(%esi,%ecx,2), %ecx
	movl	%ecx, -3688(%ebp)
	movl	-3692(%ebp), %ecx
	addl	$1, %edx
	movl	%edx, -3696(%ebp)
	leal	1(%ecx,%esi), %edx
	leal	(%ebx,%edx,4), %edx
	movl	%edx, -3736(%ebp)
.L290:
	movl	-3712(%ebp), %esi
	movl	44(%ebp), %ecx
	movl	-4(%ecx,%esi,4), %edx
	cmpl	%eax, %edx
	movl	%edx, -80(%ebp)
	movl	%edx, -64(%ebp)
	jge	.L229
	addl	$1, %edx
	movl	%edx, -64(%ebp)
.L229:
	cmpl	%eax, %edx
	jg	.L230
	movl	-3684(%ebp), %eax
	testl	%eax, %eax
	jne	.L316
	imull	-80(%ebp), %edx
	movl	%edx, -60(%ebp)
.L232:
	movl	$1, -3732(%ebp)
.L288:
	movl	-3732(%ebp), %esi
	movzbl	ich.4771-1(%esi), %eax
	cmpb	$85, %al
	movb	%al, -25(%ebp)
	sete	%al
	movzbl	%al, %eax
	movl	%eax, -3672(%ebp)
	movl	56(%ebp), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	movl	%eax, -3728(%ebp)
	jle	.L233
	movl	$1, -3720(%ebp)
.L287:
	movl	-3720(%ebp), %edx
	leal	-92(%ebp), %esi
	movl	60(%ebp), %ecx
	movl	$0x3f000000, -92(%ebp)
	movl	-4(%ecx,%edx,4), %eax
	leal	-96(%ebp), %ecx
	movl	%eax, %edx
	sarl	$31, %edx
	movl	%eax, -48(%ebp)
	xorl	%edx, %eax
	subl	%edx, %eax
	movl	-80(%ebp), %edx
	movl	%eax, -96(%ebp)
	imull	%eax, %edx
	movl	-80(%ebp), %eax
	subl	$1, %eax
	movl	%edx, -72(%ebp)
	leal	-100(%ebp), %edx
	movl	%eax, -100(%ebp)
	leal	-88(%ebp), %eax
	movl	%edx, 40(%esp)
	leal	-80(%ebp), %edx
	movl	$1, 60(%esp)
	movl	$1, 56(%esp)
	movl	$2, 52(%esp)
	movl	%esi, 48(%esp)
	movl	%eax, 44(%esp)
	movl	$.LC21, 36(%esp)
	movl	%ecx, 32(%esp)
	movl	88(%ebp), %esi
	movl	$.LC20, 24(%esp)
	movl	%esi, 28(%esp)
	movl	84(%ebp), %eax
	movl	%edx, 16(%esp)
	movl	$.LC20, 12(%esp)
	movl	$.LC30, 8(%esp)
	movl	%eax, 20(%esp)
	movl	$.LC30, 4(%esp)
	movl	$.LC2, (%esp)
	call	smake_
	movl	-80(%ebp), %edx
	cmpl	$1, %edx
	jle	.L234
	movl	84(%ebp), %ecx
	movl	%edx, %eax
	sarl	%eax
	movl	-48(%ebp), %esi
	movl	$0x00000000, -4(%ecx,%eax,4)
	movl	-48(%ebp), %eax
	movl	%edx, %ecx
	shrl	$31, %ecx
	addl	%edx, %ecx
	sarl	%ecx
	sarl	$31, %eax
	subl	$1, %ecx
	xorl	%eax, %esi
	subl	%eax, %esi
	imull	%esi, %ecx
	movl	88(%ebp), %esi
	movl	$0x00000000, (%esi,%ecx,4)
.L234:
	movl	56(%ebp), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	movl	%eax, -3716(%ebp)
	jle	.L235
	movl	$1, -3708(%ebp)
.L286:
	movl	-3708(%ebp), %ecx
	subl	$1, %edx
	movl	60(%ebp), %esi
	movl	$0x00000000, -92(%ebp)
	movl	-4(%esi,%ecx,4), %eax
	leal	-104(%ebp), %esi
	movl	%edx, -108(%ebp)
	leal	-88(%ebp), %edx
	movl	%eax, %ecx
	sarl	$31, %ecx
	movl	%eax, -52(%ebp)
	xorl	%ecx, %eax
	subl	%ecx, %eax
	movl	-80(%ebp), %ecx
	movl	%eax, -104(%ebp)
	imull	%eax, %ecx
	leal	-92(%ebp), %eax
	movl	%ecx, -76(%ebp)
	leal	-108(%ebp), %ecx
	movl	%ecx, 40(%esp)
	leal	-80(%ebp), %ecx
	movl	$1, 60(%esp)
	movl	$1, 56(%esp)
	movl	$2, 52(%esp)
	movl	%eax, 48(%esp)
	movl	%edx, 44(%esp)
	movl	$.LC21, 36(%esp)
	movl	%esi, 32(%esp)
	movl	100(%ebp), %eax
	movl	$.LC20, 24(%esp)
	movl	%eax, 28(%esp)
	movl	96(%ebp), %edx
	movl	%ecx, 16(%esp)
	movl	$.LC20, 12(%esp)
	movl	$.LC30, 8(%esp)
	movl	%edx, 20(%esp)
	movl	$.LC30, 4(%esp)
	movl	$.LC2, (%esp)
	call	smake_
	movl	-80(%ebp), %edx
	cmpl	$1, %edx
	jle	.L236
	movl	96(%ebp), %esi
	movl	%edx, %eax
	movl	%edx, %ecx
	sarl	%eax
	shrl	$31, %ecx
	addl	%edx, %ecx
	movl	$0x00000000, -4(%esi,%eax,4)
	movl	-52(%ebp), %eax
	sarl	%ecx
	movl	-52(%ebp), %esi
	subl	$1, %ecx
	sarl	$31, %eax
	xorl	%eax, %esi
	subl	%eax, %esi
	movl	100(%ebp), %eax
	imull	%esi, %ecx
	movl	$0x00000000, (%eax,%ecx,4)
.L236:
	movl	48(%ebp), %ecx
	movl	(%ecx), %ecx
	testl	%ecx, %ecx
	movl	%ecx, -3700(%ebp)
	jle	.L237
	movl	$1, -3652(%ebp)
.L285:
	movl	-3652(%ebp), %esi
	movl	52(%ebp), %eax
	movl	-80(%ebp), %edi
	flds	-4(%eax,%esi,4)
	movl	$1, %esi
	testl	%edi, %edi
	fsts	-32(%ebp)
	jle	.L327
	fldz
	fucompp
	fnstsw	%ax
	sahf
	sete	%al
	setnp	%cl
	andl	%ecx, %eax
	movzbl	%al, %esi
	jmp	.L239
	.p2align 4,,7
	.p2align 3
.L327:
	fstp	%st(0)
.L239:
	subl	$1, %edx
	movl	%edx, -112(%ebp)
	leal	-88(%ebp), %ecx
	movl	%edx, -116(%ebp)
	leal	-92(%ebp), %edx
	movl	$0x00000000, -92(%ebp)
	leal	-116(%ebp), %eax
	movl	%edx, 48(%esp)
	leal	-112(%ebp), %edx
	movl	%ecx, 44(%esp)
	leal	-64(%ebp), %ecx
	movl	$1, 60(%esp)
	movl	$1, 56(%esp)
	movl	$2, 52(%esp)
	movl	%eax, 40(%esp)
	movl	%edx, 36(%esp)
	movl	%ecx, 32(%esp)
	movl	76(%ebp), %eax
	movl	%eax, 28(%esp)
	movl	64(%ebp), %edx
	leal	-80(%ebp), %eax
	movl	%edx, 24(%esp)
	movl	72(%ebp), %ecx
	movl	%eax, 16(%esp)
	movl	%eax, 12(%esp)
	movl	$.LC30, 8(%esp)
	movl	%ecx, 20(%esp)
	leal	-25(%ebp), %ecx
	movl	%ecx, 4(%esp)
	movl	-3696(%ebp), %eax
	movl	%eax, (%esp)
	call	smake_
	movl	-60(%ebp), %edi
	movzbl	-25(%ebp), %edx
	movl	-80(%ebp), %ecx
	addl	$1, -84(%ebp)
	testl	%edi, %edi
	movb	%dl, -3677(%ebp)
	flds	-32(%ebp)
	movl	%ecx, -3648(%ebp)
	fstps	-3676(%ebp)
	jle	.L240
	movl	76(%ebp), %edx
	xorl	%eax, %eax
	movl	%ebx, -3656(%ebp)
	.p2align 4,,7
	.p2align 3
.L241:
	movl	(%edx), %ecx
	addl	$4, %edx
	movl	80(%ebp), %ebx
	movl	%ecx, (%ebx,%eax,4)
	addl	$1, %eax
	cmpl	%edi, %eax
	jne	.L241
	movl	-3656(%ebp), %ebx
.L240:
	movl	-72(%ebp), %edi
	movl	-64(%ebp), %eax
	testl	%edi, %edi
	movl	%eax, -3704(%ebp)
	jle	.L242
	movl	88(%ebp), %edx
	xorl	%eax, %eax
	movl	%ebx, -3656(%ebp)
	.p2align 4,,7
	.p2align 3
.L243:
	movl	(%edx), %ecx
	addl	$4, %edx
	movl	92(%ebp), %ebx
	movl	%ecx, (%ebx,%eax,4)
	addl	$1, %eax
	cmpl	%edi, %eax
	jne	.L243
	movl	-3656(%ebp), %ebx
.L242:
	movl	-76(%ebp), %edi
	movl	-48(%ebp), %eax
	movl	$1, -44(%ebp)
	testl	%edi, %edi
	movl	%eax, -3660(%ebp)
	jle	.L244
	movl	100(%ebp), %edx
	xorl	%eax, %eax
	movl	%ebx, -3656(%ebp)
	.p2align 4,,7
	.p2align 3
.L245:
	movl	(%edx), %ecx
	addl	$4, %edx
	movl	104(%ebp), %ebx
	movl	%ecx, (%ebx,%eax,4)
	addl	$1, %eax
	cmpl	%edi, %eax
	jne	.L245
	movl	-3656(%ebp), %ebx
	addl	$1, %eax
	movl	%eax, -44(%ebp)
.L244:
	movl	-3668(%ebp), %ecx
	movl	-52(%ebp), %eax
	testl	%ecx, %ecx
	movl	%eax, -3656(%ebp)
	je	.L246
	movl	28(%ebp), %edx
	movl	(%edx), %edx
	testl	%edx, %edx
	jne	.L306
	leal	-32(%ebp), %edi
	leal	-48(%ebp), %ecx
	leal	-52(%ebp), %edx
.L247:
	movl	32(%ebp), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L317
.L248:
	leal	-64(%ebp), %eax
	movl	$1, 36(%esp)
	movl	%eax, 32(%esp)
	movl	76(%ebp), %eax
	movl	%edx, 24(%esp)
	movl	%eax, 28(%esp)
	movl	100(%ebp), %edx
	leal	-80(%ebp), %eax
	movl	%ecx, 16(%esp)
	movl	%edx, 20(%esp)
	movl	88(%ebp), %ecx
	leal	-25(%ebp), %edx
	movl	%edi, 8(%esp)
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	movl	%ecx, 12(%esp)
	call	ssyr2_
.L249:
	movl	infoc_+8, %eax
	testl	%eax, %eax
	je	.L318
.L252:
	movzbl	-3677(%ebp), %eax
	cmpb	-25(%ebp), %al
	movl	-3648(%ebp), %edx
	flds	-32(%ebp)
	sete	%al
	flds	-3676(%ebp)
	movzbl	%al, %eax
	movl	%eax, -232(%ebp)
	xorl	%eax, %eax
	cmpl	-80(%ebp), %edx
	sete	%al
	movl	%eax, -228(%ebp)
	fucompp
	fnstsw	%ax
	sahf
	setnp	%dl
	sete	%al
	andl	%edx, %eax
	movzbl	%al, %eax
	movl	%eax, -224(%ebp)
	leal	-72(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	88(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	92(%ebp), %edx
	movl	%edx, (%esp)
	call	lse_
	movl	-3660(%ebp), %ecx
	movl	%eax, -220(%ebp)
	xorl	%eax, %eax
	cmpl	-48(%ebp), %ecx
	sete	%al
	movl	%eax, -216(%ebp)
	leal	-76(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	100(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	104(%ebp), %edx
	movl	%edx, (%esp)
	call	lse_
	movl	-3656(%ebp), %ecx
	movl	%eax, -212(%ebp)
	xorl	%eax, %eax
	cmpl	-52(%ebp), %ecx
	sete	%al
	testl	%esi, %esi
	movl	%eax, -208(%ebp)
	je	.L254
	leal	-60(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	76(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	80(%ebp), %edx
	movl	%edx, (%esp)
	call	lse_
	movl	%eax, -204(%ebp)
.L255:
	movl	-3684(%ebp), %edi
	testl	%edi, %edi
	jne	.L256
	movl	-3704(%ebp), %eax
	cmpl	-64(%ebp), %eax
	sete	%al
	movzbl	%al, %eax
	movl	%eax, -200(%ebp)
.L256:
	movl	-3644(%ebp), %ecx
	movl	$1, -44(%ebp)
	testl	%ecx, %ecx
	jle	.L257
	movl	$1, %eax
	movl	$1, %ecx
	leal	-1592(%ebp), %edi
	jmp	.L262
	.p2align 4,,7
	.p2align 3
.L319:
	movl	-44(%ebp), %edx
	movl	-236(%ebp,%edx,4), %edx
	testl	%edx, %edx
	je	.L259
.L260:
	cmpl	%eax, -3644(%ebp)
	leal	1(%eax), %edx
	movl	%edx, -44(%ebp)
	je	.L261
.L320:
	movl	%edx, %eax
.L262:
	testl	%ecx, %ecx
	je	.L319
	movl	-236(%ebp,%eax,4), %edx
	testl	%edx, %edx
	jne	.L260
.L259:
	movl	20(%ebp), %edx
	movl	$2208, -1580(%ebp)
	movl	$95, -1540(%ebp)
	movl	$4096, -1592(%ebp)
	movl	(%edx), %eax
	movl	$.LC4, -1584(%ebp)
	movl	$.LC34, -1544(%ebp)
	movl	%eax, -1588(%ebp)
	movl	%edi, (%esp)
	call	_gfortran_st_write
	leal	-44(%ebp), %ecx
	movl	%ecx, 4(%esp)
	movl	$4, 8(%esp)
	movl	%edi, (%esp)
	call	_gfortran_transfer_integer
	movl	%edi, (%esp)
	call	_gfortran_st_write_done
	movl	-44(%ebp), %eax
	xorl	%ecx, %ecx
	cmpl	%eax, -3644(%ebp)
	leal	1(%eax), %edx
	movl	%edx, -44(%ebp)
	jne	.L320
.L261:
	testl	%ecx, %ecx
	je	.L321
.L257:
	testl	%esi, %esi
	jne	.L263
	movl	-48(%ebp), %esi
	testl	%esi, %esi
	.p2align 4,,3
	jle	.L264
	movl	-80(%ebp), %edx
	testl	%edx, %edx
	jle	.L265
	movl	-3736(%ebp), %ecx
	xorl	%eax, %eax
	movl	84(%ebp), %edi
	.p2align 4,,7
	.p2align 3
.L266:
	movl	(%edi,%eax,4), %esi
	addl	$1, %eax
	movl	%esi, (%ecx)
	addl	$4, %ecx
	cmpl	%edx, %eax
	jne	.L266
.L265:
	movl	-52(%ebp), %ecx
	testl	%ecx, %ecx
	jle	.L268
	testl	%edx, %edx
	movl	$1, -44(%ebp)
	jle	.L269
	movl	-3688(%ebp), %esi
	xorl	%eax, %eax
	movl	96(%ebp), %edi
	leal	4(%ebx,%esi,4), %ecx
	.p2align 4,,7
	.p2align 3
.L271:
	movl	(%edi,%eax,4), %esi
	addl	$1, %eax
	movl	%esi, (%ecx)
	addl	$4, %ecx
	cmpl	%edx, %eax
	jne	.L271
	leal	1(%edx), %eax
	movl	%eax, -44(%ebp)
.L273:
	testl	%edx, %edx
	movl	$1, -56(%ebp)
	jle	.L274
	leal	-32(%ebp), %edi
	movl	-3664(%ebp), %ecx
	movl	$1, %eax
	addl	-3692(%ebp), %ecx
	movl	$1, %esi
	movl	%edi, -3656(%ebp)
	movl	-3692(%ebp), %edi
	movl	%edx, -3660(%ebp)
	movl	%ecx, -3648(%ebp)
	.p2align 4,,7
	.p2align 3
.L284:
	addl	-3688(%ebp), %eax
	movl	(%ebx,%eax,4), %eax
	movl	%eax, -124(%ebp)
	movl	-56(%ebp), %eax
	addl	%edi, %eax
	addl	-3664(%ebp), %eax
	movl	(%ebx,%eax,4), %eax
	movl	%eax, -120(%ebp)
	movl	-3672(%ebp), %eax
	testl	%eax, %eax
	je	.L275
	movl	-56(%ebp), %eax
	movl	%eax, -68(%ebp)
	movl	$1, %eax
.L276:
	movl	$1, 76(%esp)
	movl	$.LC35, 72(%esp)
	movl	20(%ebp), %edx
	movl	%edx, 68(%esp)
	movl	36(%ebp), %ecx
	leal	-36(%ebp), %edx
	movl	%edx, 60(%esp)
	movl	%ecx, 64(%esp)
	movl	12(%ebp), %ecx
	movl	%ecx, 56(%esp)
	movl	76(%ebp), %ecx
	leal	-4(%ecx,%esi,4), %edx
	movl	%edx, 52(%esp)
	movl	112(%ebp), %edx
	movl	%edx, 48(%esp)
	movl	108(%ebp), %ecx
	movl	$.LC20, 40(%esp)
	movl	%ecx, 44(%esp)
	movl	-56(%ebp), %edx
	movl	72(%ebp), %ecx
	imull	%edi, %edx
	addl	-3664(%ebp), %edx
	movl	$.LC36, 32(%esp)
	movl	$.LC20, 28(%esp)
	addl	%eax, %edx
	leal	(%ecx,%edx,4), %edx
	movl	%edx, 36(%esp)
	leal	-124(%ebp), %edx
	movl	%edx, 24(%esp)
	movl	64(%ebp), %ecx
	leal	-68(%ebp), %edx
	movl	%ecx, 20(%esp)
	addl	-3648(%ebp), %eax
	leal	(%ebx,%eax,4), %eax
	movl	%eax, 16(%esp)
	movl	-3656(%ebp), %eax
	movl	$.LC25, 8(%esp)
	movl	%edx, 4(%esp)
	movl	$.LC24, (%esp)
	movl	%eax, 12(%esp)
	call	smvch_
	movl	-3668(%ebp), %ecx
	testl	%ecx, %ecx
	je	.L277
	movl	-3672(%ebp), %edx
	testl	%edx, %edx
	je	.L278
	addl	-64(%ebp), %esi
.L279:
	flds	-40(%ebp)
	flds	-36(%ebp)
	fxch	%st(1)
	fucom	%st(0)
	fnstsw	%ax
	sahf
	jp	.L328
	fxch	%st(1)
	fucom	%st(1)
	fnstsw	%ax
	sahf
	ja	.L329
	fstp	%st(0)
	movl	36(%ebp), %edx
	fstps	-40(%ebp)
	movl	(%edx), %eax
	testl	%eax, %eax
	jne	.L283
.L322:
	movl	-56(%ebp), %edx
	cmpl	%edx, -3660(%ebp)
	leal	1(%edx), %eax
	movl	%eax, -56(%ebp)
	jne	.L284
.L274:
	movl	-3700(%ebp), %ecx
	cmpl	%ecx, -3652(%ebp)
	je	.L237
.L326:
	addl	$1, -3652(%ebp)
	movl	-80(%ebp), %edx
	jmp	.L285
	.p2align 4,,7
	.p2align 3
.L263:
	movl	-80(%ebp), %ecx
	testl	%ecx, %ecx
	jg	.L274
	.p2align 4,,7
	.p2align 3
.L230:
	movl	-3724(%ebp), %edx
	cmpl	%edx, -3712(%ebp)
	je	.L289
	movl	64(%ebp), %ecx
	addl	$1, -3712(%ebp)
	movl	(%ecx), %eax
	jmp	.L290
	.p2align 4,,7
	.p2align 3
.L316:
	movl	-80(%ebp), %edx
	leal	1(%edx), %eax
	imull	%edx, %eax
	movl	%eax, %edx
	shrl	$31, %edx
	leal	(%edx,%eax), %eax
	sarl	%eax
	movl	%eax, -60(%ebp)
	jmp	.L232
	.p2align 4,,7
	.p2align 3
.L315:
	movl	$8, -3644(%ebp)
	jmp	.L226
	.p2align 4,,7
	.p2align 3
.L328:
	fstp	%st(0)
	jmp	.L296
	.p2align 4,,7
	.p2align 3
.L329:
	fstp	%st(1)
.L296:
	movl	36(%ebp), %edx
	fstps	-40(%ebp)
	movl	(%edx), %eax
	testl	%eax, %eax
	je	.L322
.L283:
	movl	20(%ebp), %edx
	leal	-2612(%ebp), %ebx
	movl	$2292, -2600(%ebp)
	movl	$49, -2560(%ebp)
	movl	$4096, -2612(%ebp)
	movl	(%edx), %eax
	movl	$.LC4, -2604(%ebp)
	movl	$.LC39, -2564(%ebp)
	movl	%eax, -2608(%ebp)
	movl	%ebx, (%esp)
	call	_gfortran_st_write
	leal	-56(%ebp), %eax
	movl	$4, 8(%esp)
	movl	%eax, 4(%esp)
	movl	%ebx, (%esp)
	call	_gfortran_transfer_integer
	movl	%ebx, (%esp)
	call	_gfortran_st_write_done
.L253:
	movl	20(%ebp), %ecx
	leal	-2952(%ebp), %ebx
	movl	$2295, -2940(%ebp)
	movl	$46, -2900(%ebp)
	movl	$4096, -2952(%ebp)
	movl	(%ecx), %eax
	movl	$.LC4, -2944(%ebp)
	movl	$.LC40, -2904(%ebp)
	movl	%eax, -2948(%ebp)
	movl	%ebx, (%esp)
	call	_gfortran_st_write
	movl	$6, 8(%esp)
	movl	8(%ebp), %esi
	movl	%ebx, (%esp)
	movl	%esi, 4(%esp)
	call	_gfortran_transfer_character
	movl	%ebx, (%esp)
	call	_gfortran_st_write_done
	movl	-3668(%ebp), %edx
	testl	%edx, %edx
	jne	.L323
	movl	-3684(%ebp), %eax
	testl	%eax, %eax
	jne	.L324
	addl	$3836, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
	.p2align 4,,7
	.p2align 3
.L277:
	addl	-68(%ebp), %esi
	jmp	.L279
	.p2align 4,,7
	.p2align 3
.L275:
	movl	-80(%ebp), %edx
	movl	-56(%ebp), %eax
	addl	$1, %edx
	subl	%eax, %edx
	movl	%edx, -68(%ebp)
	jmp	.L276
	.p2align 4,,7
	.p2align 3
.L246:
	movl	-3684(%ebp), %ecx
	testl	%ecx, %ecx
	je	.L249
	movl	28(%ebp), %ecx
	movl	(%ecx), %edx
	testl	%edx, %edx
	jne	.L307
	leal	-32(%ebp), %edi
	leal	-48(%ebp), %ecx
	leal	-52(%ebp), %edx
.L250:
	movl	32(%ebp), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L325
.L251:
	movl	$1, 32(%esp)
	movl	76(%ebp), %eax
	movl	%edx, 24(%esp)
	movl	%eax, 28(%esp)
	movl	100(%ebp), %edx
	leal	-80(%ebp), %eax
	movl	%ecx, 16(%esp)
	movl	%edx, 20(%esp)
	movl	88(%ebp), %ecx
	leal	-25(%ebp), %edx
	movl	%eax, 4(%esp)
	movl	%edi, 8(%esp)
	movl	%edx, (%esp)
	movl	%ecx, 12(%esp)
	call	sspr2_
	movl	infoc_+8, %eax
	testl	%eax, %eax
	jne	.L252
.L318:
	movl	20(%ebp), %ecx
	leal	-1252(%ebp), %ebx
	movl	$2178, -1240(%ebp)
	movl	$76, -1200(%ebp)
	movl	$4096, -1252(%ebp)
	movl	(%ecx), %eax
	movl	$.LC4, -1244(%ebp)
	movl	$.LC33, -1204(%ebp)
	movl	%eax, -1248(%ebp)
	movl	%ebx, (%esp)
	call	_gfortran_st_write
	movl	%ebx, (%esp)
	call	_gfortran_st_write_done
	movl	36(%ebp), %ebx
	movl	$1, (%ebx)
	jmp	.L253
	.p2align 4,,7
	.p2align 3
.L254:
	leal	-64(%ebp), %ecx
	movl	%ecx, 24(%esp)
	leal	-80(%ebp), %ecx
	movl	$1, 32(%esp)
	movl	$2, 28(%esp)
	movl	76(%ebp), %eax
	movl	%eax, 20(%esp)
	movl	80(%ebp), %edx
	movl	%ecx, 12(%esp)
	movl	%ecx, 8(%esp)
	movl	%edx, 16(%esp)
	leal	-25(%ebp), %edx
	movl	%edx, 4(%esp)
	movl	-3696(%ebp), %ecx
	movl	%ecx, (%esp)
	call	lseres_
	movl	%eax, -204(%ebp)
	jmp	.L255
	.p2align 4,,7
	.p2align 3
.L278:
	movl	-64(%ebp), %eax
	leal	1(%esi,%eax), %esi
	jmp	.L279
	.p2align 4,,7
	.p2align 3
.L269:
	movl	-3700(%ebp), %ecx
	cmpl	%ecx, -3652(%ebp)
	movl	$1, -56(%ebp)
	jne	.L326
	.p2align 4,,7
	.p2align 3
.L237:
	movl	-3716(%ebp), %esi
	cmpl	%esi, -3708(%ebp)
	je	.L235
	addl	$1, -3708(%ebp)
	movl	-80(%ebp), %edx
	jmp	.L286
	.p2align 4,,7
	.p2align 3
.L317:
	movl	24(%ebp), %eax
	movl	$2162, -140(%ebp)
	movl	$0, -152(%ebp)
	movl	$.LC4, -144(%ebp)
	movl	(%eax), %eax
	movl	%eax, -148(%ebp)
	leal	-152(%ebp), %eax
	movl	%eax, (%esp)
	movl	%edx, -3744(%ebp)
	movl	%ecx, -3740(%ebp)
	call	_gfortran_st_rewind
	movl	-3740(%ebp), %ecx
	movl	-3744(%ebp), %edx
	jmp	.L248
	.p2align 4,,7
	.p2align 3
.L306:
	movl	24(%ebp), %ecx
	leal	-32(%ebp), %edi
	movl	$2160, -560(%ebp)
	movl	$118, -520(%ebp)
	movl	$4096, -572(%ebp)
	movl	(%ecx), %eax
	movl	$.LC4, -564(%ebp)
	movl	$.LC31, -524(%ebp)
	movl	%eax, -568(%ebp)
	leal	-572(%ebp), %eax
	movl	%eax, (%esp)
	call	_gfortran_st_write
	leal	-572(%ebp), %edx
	leal	-84(%ebp), %eax
	movl	%edx, (%esp)
	movl	%eax, 4(%esp)
	movl	$4, 8(%esp)
	call	_gfortran_transfer_integer
	leal	-572(%ebp), %eax
	movl	$6, 8(%esp)
	movl	8(%ebp), %ecx
	movl	%eax, (%esp)
	movl	%ecx, 4(%esp)
	call	_gfortran_transfer_character
	leal	-572(%ebp), %ecx
	leal	-25(%ebp), %edx
	movl	%ecx, (%esp)
	movl	%edx, 4(%esp)
	movl	$1, 8(%esp)
	call	_gfortran_transfer_character
	leal	-572(%ebp), %edx
	leal	-80(%ebp), %eax
	movl	%edx, (%esp)
	movl	%eax, 4(%esp)
	movl	$4, 8(%esp)
	call	_gfortran_transfer_integer
	leal	-572(%ebp), %ecx
	movl	%ecx, (%esp)
	movl	$4, 8(%esp)
	movl	%edi, 4(%esp)
	call	_gfortran_transfer_real
	leal	-48(%ebp), %ecx
	leal	-572(%ebp), %eax
	movl	%ecx, 4(%esp)
	movl	%eax, (%esp)
	movl	$4, 8(%esp)
	movl	%ecx, -3740(%ebp)
	call	_gfortran_transfer_integer
	leal	-52(%ebp), %edx
	leal	-572(%ebp), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	movl	$4, 8(%esp)
	movl	%edx, -3744(%ebp)
	call	_gfortran_transfer_integer
	leal	-64(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	-572(%ebp), %eax
	movl	%eax, (%esp)
	movl	$4, 8(%esp)
	call	_gfortran_transfer_integer
	leal	-572(%ebp), %eax
	movl	%eax, (%esp)
	call	_gfortran_st_write_done
	movl	-3740(%ebp), %ecx
	movl	-3744(%ebp), %edx
	jmp	.L247
	.p2align 4,,7
	.p2align 3
.L268:
	testl	%edx, %edx
	movl	$1, -44(%ebp)
	jle	.L269
	movl	-3688(%ebp), %eax
	leal	1(%edx), %esi
	movl	%edx, %edi
	movl	%ebx, -3648(%ebp)
	leal	4(%ebx,%eax,4), %ecx
	movl	96(%ebp), %ebx
	movl	$1, %eax
	.p2align 4,,7
	.p2align 3
.L272:
	subl	%eax, %edi
	addl	$1, %eax
	movl	(%ebx,%edi,4), %edi
	movl	%edi, (%ecx)
	addl	$4, %ecx
	cmpl	%esi, %eax
	movl	%edx, %edi
	jne	.L272
	movl	-3648(%ebp), %ebx
	movl	%eax, -44(%ebp)
	jmp	.L273
	.p2align 4,,7
	.p2align 3
.L264:
	movl	-80(%ebp), %edx
	testl	%edx, %edx
	jle	.L265
	movl	-3736(%ebp), %ecx
	leal	1(%edx), %esi
	movl	$1, %eax
	movl	84(%ebp), %edi
	movl	%ebx, -3648(%ebp)
	.p2align 4,,7
	.p2align 3
.L267:
	movl	%edx, %ebx
	subl	%eax, %ebx
	addl	$1, %eax
	movl	(%edi,%ebx,4), %ebx
	movl	%ebx, (%ecx)
	addl	$4, %ecx
	cmpl	%esi, %eax
	jne	.L267
	movl	-3648(%ebp), %ebx
	jmp	.L265
	.p2align 4,,7
	.p2align 3
.L235:
	movl	-3728(%ebp), %eax
	cmpl	%eax, -3720(%ebp)
	je	.L233
	addl	$1, -3720(%ebp)
	jmp	.L287
	.p2align 4,,7
	.p2align 3
.L325:
	movl	24(%ebp), %eax
	movl	$2170, -168(%ebp)
	movl	$0, -180(%ebp)
	movl	$.LC4, -172(%ebp)
	movl	(%eax), %eax
	movl	%eax, -176(%ebp)
	leal	-180(%ebp), %eax
	movl	%eax, (%esp)
	movl	%edx, -3744(%ebp)
	movl	%ecx, -3740(%ebp)
	call	_gfortran_st_rewind
	movl	-3740(%ebp), %ecx
	movl	-3744(%ebp), %edx
	jmp	.L251
	.p2align 4,,7
	.p2align 3
.L307:
	movl	24(%ebp), %edx
	leal	-912(%ebp), %ecx
	movl	$2168, -900(%ebp)
	leal	-32(%ebp), %edi
	movl	$113, -860(%ebp)
	movl	$4096, -912(%ebp)
	movl	(%edx), %eax
	movl	$.LC4, -904(%ebp)
	movl	$.LC32, -864(%ebp)
	movl	%eax, -908(%ebp)
	movl	%ecx, (%esp)
	call	_gfortran_st_write
	leal	-84(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	-912(%ebp), %eax
	movl	%eax, (%esp)
	movl	$4, 8(%esp)
	call	_gfortran_transfer_integer
	leal	-912(%ebp), %ecx
	movl	$6, 8(%esp)
	movl	8(%ebp), %edx
	movl	%ecx, (%esp)
	movl	%edx, 4(%esp)
	call	_gfortran_transfer_character
	leal	-912(%ebp), %edx
	leal	-25(%ebp), %eax
	movl	%edx, (%esp)
	movl	%eax, 4(%esp)
	movl	$1, 8(%esp)
	call	_gfortran_transfer_character
	leal	-80(%ebp), %ecx
	leal	-912(%ebp), %eax
	movl	%ecx, 4(%esp)
	movl	%eax, (%esp)
	movl	$4, 8(%esp)
	call	_gfortran_transfer_integer
	leal	-912(%ebp), %edx
	movl	%edx, (%esp)
	movl	$4, 8(%esp)
	movl	%edi, 4(%esp)
	call	_gfortran_transfer_real
	leal	-48(%ebp), %ecx
	leal	-912(%ebp), %eax
	movl	%ecx, 4(%esp)
	movl	%eax, (%esp)
	movl	$4, 8(%esp)
	movl	%ecx, -3740(%ebp)
	call	_gfortran_transfer_integer
	leal	-52(%ebp), %edx
	leal	-912(%ebp), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	movl	$4, 8(%esp)
	movl	%edx, -3744(%ebp)
	call	_gfortran_transfer_integer
	leal	-912(%ebp), %eax
	movl	%eax, (%esp)
	call	_gfortran_st_write_done
	movl	-3740(%ebp), %ecx
	movl	-3744(%ebp), %edx
	jmp	.L250
.L289:
	flds	-40(%ebp)
.L228:
	movl	16(%ebp), %eax
	flds	(%eax)
	fucompp
	fnstsw	%ax
	sahf
	jbe	.L308
	movl	20(%ebp), %edx
	leal	-1932(%ebp), %ebx
	movl	$2285, -1920(%ebp)
	movl	$72, -1880(%ebp)
	movl	$4096, -1932(%ebp)
	movl	(%edx), %eax
	movl	$.LC4, -1924(%ebp)
	movl	$.LC37, -1884(%ebp)
	movl	%eax, -1928(%ebp)
	movl	%ebx, (%esp)
	call	_gfortran_st_write
	movl	$6, 8(%esp)
	movl	8(%ebp), %ecx
	movl	%ebx, (%esp)
	movl	%ecx, 4(%esp)
	call	_gfortran_transfer_character
	leal	-84(%ebp), %eax
	movl	$4, 8(%esp)
.L314:
	movl	%eax, 4(%esp)
	movl	%ebx, (%esp)
	call	_gfortran_transfer_integer
	movl	%ebx, (%esp)
	call	_gfortran_st_write_done
	addl	$3836, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
	.p2align 4,,7
	.p2align 3
.L233:
	cmpl	$2, -3732(%ebp)
	je	.L230
	movl	$2, -3732(%ebp)
	jmp	.L288
.L308:
	movl	20(%ebp), %ebx
	movl	$2287, -2260(%ebp)
	movl	$154, -2220(%ebp)
	movl	$4096, -2272(%ebp)
	movl	(%ebx), %eax
	leal	-2272(%ebp), %ebx
	movl	$.LC4, -2264(%ebp)
	movl	$.LC38, -2224(%ebp)
	movl	%eax, -2268(%ebp)
	movl	%ebx, (%esp)
	call	_gfortran_st_write
	movl	$6, 8(%esp)
	movl	8(%ebp), %esi
	movl	%ebx, (%esp)
	movl	%esi, 4(%esp)
	call	_gfortran_transfer_character
	leal	-84(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%ebx, (%esp)
	movl	$4, 8(%esp)
	call	_gfortran_transfer_integer
	leal	-40(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%ebx, (%esp)
	movl	$4, 8(%esp)
	call	_gfortran_transfer_real
	movl	%ebx, (%esp)
	call	_gfortran_st_write_done
	addl	$3836, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.L321:
	movl	36(%ebp), %ebx
	movl	$1, (%ebx)
	jmp	.L253
.L324:
	movl	20(%ebp), %edx
	leal	-3632(%ebp), %ebx
	movl	$2300, -3620(%ebp)
	leal	-25(%ebp), %esi
	movl	$113, -3580(%ebp)
	movl	$4096, -3632(%ebp)
	movl	(%edx), %eax
	movl	$.LC4, -3624(%ebp)
	movl	$.LC32, -3584(%ebp)
	movl	%eax, -3628(%ebp)
	movl	%ebx, (%esp)
	call	_gfortran_st_write
	leal	-84(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$4, 8(%esp)
	movl	%ebx, (%esp)
	call	_gfortran_transfer_integer
	movl	$6, 8(%esp)
	movl	8(%ebp), %ecx
	movl	%ebx, (%esp)
	movl	%ecx, 4(%esp)
	call	_gfortran_transfer_character
	movl	$1, 8(%esp)
	movl	%esi, 4(%esp)
	movl	%ebx, (%esp)
	call	_gfortran_transfer_character
	leal	-80(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$4, 8(%esp)
	movl	%ebx, (%esp)
	call	_gfortran_transfer_integer
	leal	-32(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$4, 8(%esp)
	movl	%ebx, (%esp)
	call	_gfortran_transfer_real
	leal	-48(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$4, 8(%esp)
	movl	%ebx, (%esp)
	call	_gfortran_transfer_integer
	leal	-52(%ebp), %eax
	movl	$4, 8(%esp)
	jmp	.L314
.L323:
	movl	20(%ebp), %edx
	leal	-3292(%ebp), %ebx
	movl	$2298, -3280(%ebp)
	movl	$118, -3240(%ebp)
	movl	$4096, -3292(%ebp)
	movl	(%edx), %eax
	movl	$.LC4, -3284(%ebp)
	movl	$.LC31, -3244(%ebp)
	movl	%eax, -3288(%ebp)
	movl	%ebx, (%esp)
	call	_gfortran_st_write
	leal	-84(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$4, 8(%esp)
	movl	%ebx, (%esp)
	call	_gfortran_transfer_integer
	movl	%esi, 4(%esp)
	leal	-80(%ebp), %esi
	movl	$6, 8(%esp)
	movl	%ebx, (%esp)
	call	_gfortran_transfer_character
	leal	-25(%ebp), %ecx
	movl	%ecx, 4(%esp)
	movl	$1, 8(%esp)
	movl	%ebx, (%esp)
	call	_gfortran_transfer_character
	movl	$4, 8(%esp)
	movl	%esi, 4(%esp)
	movl	%ebx, (%esp)
	call	_gfortran_transfer_integer
	leal	-32(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$4, 8(%esp)
	movl	%ebx, (%esp)
	call	_gfortran_transfer_real
	leal	-48(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$4, 8(%esp)
	movl	%ebx, (%esp)
	call	_gfortran_transfer_integer
	leal	-52(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$4, 8(%esp)
	movl	%ebx, (%esp)
	call	_gfortran_transfer_integer
	leal	-64(%ebp), %eax
	movl	$4, 8(%esp)
	jmp	.L314
	.size	schk6_, .-schk6_
	.section	.rodata
.LC55:
	.ascii	"UNKNOWN"
	.align 4
.LC56:
	.ascii	"( ' NUMBER OF VALUES OF ', A, ' IS LESS THAN 1 OR GREATER ',"
	.ascii	"      'THAN ', I2 )"
	.align 4
.LC57:
	.long	9
	.align 4
.LC58:
	.ascii	"( ' VALUE OF N IS LESS THAN 0 OR GREATER THAN ', I2 )"
	.align 4
.LC59:
	.long	65
.LC60:
	.ascii	"K"
	.align 4
.LC61:
	.long	7
	.align 4
.LC62:
	.ascii	"( ' VALUE OF K IS LESS THAN 0' )"
.LC63:
	.ascii	"INCX AND INCY"
	.align 4
.LC64:
	.ascii	"( ' ABSOLUTE VALUE OF INCX OR INCY IS 0 OR GREATER THAN ',  "
	.ascii	"      I2 )"
.LC65:
	.ascii	"ALPHA"
.LC66:
	.ascii	"BETA"
	.align 4
.LC67:
	.ascii	"( ' TESTS OF THE REAL             LEVEL 2 BLAS', //' THE F',"
	.ascii	"      'OLLOWING PARAMETER VALUES WILL BE USED:' )"
	.align 4
.LC68:
	.ascii	"( '   FOR N              ', 9I6 )"
	.align 4
.LC69:
	.ascii	"( '   FOR K              ', 7I6 )"
	.align 4
.LC70:
	.ascii	"( '   FOR INCX AND INCY  ', 7I6 )"
	.align 4
.LC71:
	.ascii	"( '   FOR ALPHA          ', 7F6.1 )"
	.align 4
.LC72:
	.ascii	"( '   FOR BETA           ', 7F6.1 )"
	.align 4
.LC73:
	.ascii	"( ' ERROR-EXITS WILL NOT BE TESTED' )"
	.align 4
.LC74:
	.ascii	"( ' ROUTINES PASS COMPUTATIONAL TESTS IF TEST RATIO IS LES',"
	.ascii	"      'S THAN', F8.2 )"
.LC75:
	.ascii	"( A6, L2 )"
	.align 4
.LC76:
	.ascii	"( ' SUBPROGRAM NAME ', A6, ' NOT RECOGNIZED', /' ******* T',"
	.ascii	"      'ESTS ABANDONED *******' )"
	.align 4
.LC78:
	.ascii	"( ' RELATIVE MACHINE PRECISION IS TAKEN TO BE', 1P, E9.1 )"
	.align 4
.LC79:
	.ascii	"( ' ERROR IN SMVCH -  IN-LINE DOT PRODUCTS ARE BEING EVALU',"
	.ascii	"      'ATED WRONGLY.', /' SMVCH WAS CALLED WITH TRANS = ', A"
	.ascii	"1,          ' AND RETURNED SAME = ', L1, ' AND ERR = ', F12."
	.ascii	"3, '.', /      ' THIS MAY BE DUE TO FAULTS IN THE ARITHMETIC"
	.ascii	" OR THE COMPILER.'      , /' ******* TESTS ABANDONED *******"
	.ascii	"' )"
.LC80:
	.ascii	"( 1X, A6, ' WAS NOT TESTED' )"
.LC81:
	.ascii	"( /' END OF TESTS' )"
	.align 4
.LC82:
	.ascii	"( /' ******* FATAL ERROR - TESTS ABANDONED *******' )"
	.align 4
.LC83:
	.ascii	"( ' AMEND DATA FILE OR INCREASE ARRAY SIZES IN PROGRAM',    "
	.ascii	"      /' ******* TESTS ABANDONED *******' )"
	.text
	.p2align 4,,15
.globl MAIN__
	.type	MAIN__, @function
MAIN__:
	pushl	%ebp
	movl	%esp, %ebp
	pushl	%edi
	pushl	%esi
	pushl	%ebx
	subl	$71612, %esp
	leal	-2180(%ebp), %ebx
	leal	-288(%ebp), %esi
	leal	-2520(%ebp), %edi
	movl	$options.0.1574, 4(%esp)
	movl	$8, (%esp)
	call	_gfortran_set_options
	movl	%ebx, (%esp)
	movl	$.LC4, -2172(%ebp)
	movl	$168, -2168(%ebp)
	movl	$128, -2180(%ebp)
	movl	$5, -2176(%ebp)
	call	_gfortran_st_read
	movl	%esi, 4(%esp)
	movl	%ebx, (%esp)
	movl	$32, 8(%esp)
	call	_gfortran_transfer_character
	movl	%ebx, (%esp)
	leal	-76(%ebp), %ebx
	call	_gfortran_st_read_done
	movl	%edi, (%esp)
	movl	$.LC4, -2512(%ebp)
	movl	$169, -2508(%ebp)
	movl	$128, -2520(%ebp)
	movl	$5, -2516(%ebp)
	call	_gfortran_st_read
	movl	%edi, (%esp)
	movl	$4, 8(%esp)
	movl	%ebx, 4(%esp)
	call	_gfortran_transfer_integer
	movl	%edi, (%esp)
	leal	-2860(%ebp), %edi
	call	_gfortran_st_read_done
	movl	-76(%ebp), %eax
	movl	%esi, -612(%ebp)
	leal	-256(%ebp), %esi
	movl	$.LC4, -640(%ebp)
	movl	$170, -636(%ebp)
	movl	%eax, -644(%ebp)
	leal	-648(%ebp), %eax
	movl	%eax, (%esp)
	movl	$32, -616(%ebp)
	movl	$.LC55, -608(%ebp)
	movl	$7, -604(%ebp)
	movl	$768, -648(%ebp)
	call	_gfortran_st_open
	movl	-76(%ebp), %eax
	movl	%edi, (%esp)
	movl	$.LC4, -2852(%ebp)
	movl	$175, -2848(%ebp)
	movl	%eax, infoc_+4
	movl	$128, -2860(%ebp)
	movl	$5, -2856(%ebp)
	call	_gfortran_st_read
	movl	%edi, (%esp)
	movl	$32, 8(%esp)
	movl	%esi, 4(%esp)
	call	_gfortran_transfer_character
	movl	%edi, (%esp)
	leal	-3200(%ebp), %edi
	call	_gfortran_st_read_done
	movl	$.LC4, -3192(%ebp)
	movl	$176, -3188(%ebp)
	movl	$128, -3200(%ebp)
	movl	$5, -3196(%ebp)
	movl	%edi, (%esp)
	call	_gfortran_st_read
	leal	-80(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$4, 8(%esp)
	movl	%edi, (%esp)
	call	_gfortran_transfer_integer
	movl	%edi, (%esp)
	call	_gfortran_st_read_done
	movl	-80(%ebp), %edx
	movl	%edx, %eax
	notl	%eax
	shrl	$31, %eax
	testl	%eax, %eax
	movl	%eax, -100(%ebp)
	jne	.L937
.L843:
	leal	-3540(%ebp), %esi
	movl	%esi, (%esp)
	movl	$.LC4, -3532(%ebp)
	movl	$182, -3528(%ebp)
	movl	$128, -3540(%ebp)
	movl	$5, -3536(%ebp)
	call	_gfortran_st_read
	leal	-84(%ebp), %edx
	movl	%edx, 4(%esp)
	movl	%esi, (%esp)
	movl	$4, 8(%esp)
	call	_gfortran_transfer_logical
	movl	%esi, (%esp)
	leal	-3880(%ebp), %esi
	call	_gfortran_st_read_done
	cmpl	$1, -84(%ebp)
	movl	%esi, (%esp)
	movl	$.LC4, -3872(%ebp)
	sbbl	%eax, %eax
	notl	%eax
	andl	-100(%ebp), %eax
	movl	$185, -3868(%ebp)
	movl	$128, -3880(%ebp)
	movl	%eax, -84(%ebp)
	movl	$5, -3876(%ebp)
	call	_gfortran_st_read
	leal	-92(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%esi, (%esp)
	movl	$4, 8(%esp)
	call	_gfortran_transfer_logical
	movl	%esi, (%esp)
	leal	-4220(%ebp), %esi
	call	_gfortran_st_read_done
	movl	%esi, (%esp)
	movl	$.LC4, -4212(%ebp)
	movl	$187, -4208(%ebp)
	movl	$128, -4220(%ebp)
	movl	$5, -4216(%ebp)
	call	_gfortran_st_read
	leal	-104(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%esi, (%esp)
	movl	$4, 8(%esp)
	call	_gfortran_transfer_logical
	movl	%esi, (%esp)
	leal	-4560(%ebp), %esi
	call	_gfortran_st_read_done
	movl	%esi, (%esp)
	movl	$.LC4, -4552(%ebp)
	movl	$189, -4548(%ebp)
	movl	$128, -4560(%ebp)
	movl	$5, -4556(%ebp)
	call	_gfortran_st_read
	leal	-96(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%esi, (%esp)
	movl	$4, 8(%esp)
	call	_gfortran_transfer_real
	movl	%esi, (%esp)
	leal	-4900(%ebp), %esi
	call	_gfortran_st_read_done
	movl	$.LC4, -4892(%ebp)
	movl	$194, -4888(%ebp)
	movl	$128, -4900(%ebp)
	movl	$5, -4896(%ebp)
	movl	%esi, (%esp)
	call	_gfortran_st_read
	leal	-64(%ebp), %edx
	movl	%edx, 4(%esp)
	movl	$4, 8(%esp)
	movl	%esi, (%esp)
	call	_gfortran_transfer_integer
	movl	%esi, (%esp)
	call	_gfortran_st_read_done
	movl	-64(%ebp), %eax
	subl	$1, %eax
	cmpl	$8, %eax
	jbe	.L846
	movl	-76(%ebp), %eax
	leal	-5240(%ebp), %ebx
	movl	$.LC4, -5232(%ebp)
	movl	$196, -5228(%ebp)
	movl	$.LC56, -5192(%ebp)
	movl	%eax, -5236(%ebp)
	movl	$79, -5188(%ebp)
	movl	$4096, -5240(%ebp)
	movl	%ebx, (%esp)
	call	_gfortran_st_write
	movl	$1, 8(%esp)
	movl	$.LC24, 4(%esp)
	movl	%ebx, (%esp)
	call	_gfortran_transfer_character
	movl	$4, 8(%esp)
	movl	$.LC57, 4(%esp)
	movl	%ebx, (%esp)
	call	_gfortran_transfer_integer
	movl	%ebx, (%esp)
	call	_gfortran_st_write_done
.L847:
	movl	-76(%ebp), %eax
	leal	-18160(%ebp), %ebx
	movl	$.LC4, -18152(%ebp)
	movl	$388, -18148(%ebp)
	movl	$.LC83, -18112(%ebp)
	movl	$103, -18108(%ebp)
	movl	$4096, -18160(%ebp)
	movl	%eax, -18156(%ebp)
	movl	%ebx, (%esp)
	call	_gfortran_st_write
	movl	%ebx, (%esp)
	call	_gfortran_st_write_done
.L913:
	movl	-100(%ebp), %ebx
	testl	%ebx, %ebx
	jne	.L938
.L914:
	movl	-76(%ebp), %eax
	movl	$.LC4, -424(%ebp)
	movl	$393, -420(%ebp)
	movl	$0, -432(%ebp)
	movl	%eax, -428(%ebp)
	leal	-432(%ebp), %eax
	movl	%eax, (%esp)
	call	_gfortran_st_close
	movl	$-1, (%esp)
	call	_gfortran_stop_numeric
	.p2align 4,,7
	.p2align 3
.L846:
	leal	-5580(%ebp), %eax
	movl	%eax, (%esp)
	movl	$.LC4, -5572(%ebp)
	movl	$199, -5568(%ebp)
	movl	$128, -5580(%ebp)
	movl	$5, -5576(%ebp)
	call	_gfortran_st_read
	movl	-64(%ebp), %eax
	testl	%eax, %eax
	jle	.L848
	leal	-324(%ebp), %edi
	xorl	%esi, %esi
	movl	%edi, -71472(%ebp)
	movl	%eax, %edi
	.p2align 4,,7
	.p2align 3
.L849:
	movl	-71472(%ebp), %edx
	movl	$4, 8(%esp)
	leal	(%edx,%esi,4), %eax
	addl	$1, %esi
	movl	%eax, 4(%esp)
	leal	-5580(%ebp), %eax
	movl	%eax, (%esp)
	call	_gfortran_transfer_integer
	cmpl	%edi, %esi
	jne	.L849
.L848:
	leal	-5580(%ebp), %edx
	movl	%edx, (%esp)
	call	_gfortran_st_read_done
	movl	-64(%ebp), %edx
	testl	%edx, %edx
	jle	.L850
	movl	$1, %eax
	leal	-324(%ebp), %edi
	jmp	.L852
	.p2align 4,,7
	.p2align 3
.L940:
	addl	$1, %eax
.L852:
	cmpl	$65, -4(%edi,%eax,4)
	ja	.L939
	cmpl	%edx, %eax
	jne	.L940
.L850:
	leal	-6260(%ebp), %esi
	movl	$.LC4, -6252(%ebp)
	movl	$207, -6248(%ebp)
	movl	$128, -6260(%ebp)
	movl	$5, -6256(%ebp)
	movl	%esi, (%esp)
	call	_gfortran_st_read
	leal	-72(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$4, 8(%esp)
	movl	%esi, (%esp)
	call	_gfortran_transfer_integer
	movl	%esi, (%esp)
	call	_gfortran_st_read_done
	movl	-72(%ebp), %eax
	subl	$1, %eax
	cmpl	$6, %eax
	ja	.L941
	leal	-6940(%ebp), %edx
	movl	$.LC4, -6932(%ebp)
	movl	$212, -6928(%ebp)
	movl	$128, -6940(%ebp)
	movl	$5, -6936(%ebp)
	movl	%edx, (%esp)
	call	_gfortran_st_read
	movl	-72(%ebp), %eax
	testl	%eax, %eax
	jle	.L854
	leal	-224(%ebp), %edi
	xorl	%esi, %esi
	movl	%edi, -71472(%ebp)
	movl	%eax, %edi
	.p2align 4,,7
	.p2align 3
.L855:
	movl	-71472(%ebp), %edx
	movl	$4, 8(%esp)
	leal	(%edx,%esi,4), %eax
	addl	$1, %esi
	movl	%eax, 4(%esp)
	leal	-6940(%ebp), %eax
	movl	%eax, (%esp)
	call	_gfortran_transfer_integer
	cmpl	%edi, %esi
	jne	.L855
.L854:
	leal	-6940(%ebp), %edx
	movl	%edx, (%esp)
	call	_gfortran_st_read_done
	movl	-72(%ebp), %edx
	testl	%edx, %edx
	jle	.L856
	movl	$1, %eax
	leal	-224(%ebp), %edi
	jmp	.L858
	.p2align 4,,7
	.p2align 3
.L943:
	addl	$1, %eax
.L858:
	movl	-4(%edi,%eax,4), %ecx
	testl	%ecx, %ecx
	js	.L942
	cmpl	%edx, %eax
	jne	.L943
.L856:
	leal	-7620(%ebp), %esi
	movl	$.LC4, -7612(%ebp)
	movl	$220, -7608(%ebp)
	movl	$128, -7620(%ebp)
	movl	$5, -7616(%ebp)
	movl	%esi, (%esp)
	call	_gfortran_st_read
	leal	-68(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$4, 8(%esp)
	movl	%esi, (%esp)
	call	_gfortran_transfer_integer
	movl	%esi, (%esp)
	call	_gfortran_st_read_done
	movl	-68(%ebp), %eax
	subl	$1, %eax
	cmpl	$6, %eax
	jbe	.L859
	movl	-76(%ebp), %eax
	leal	-7960(%ebp), %ebx
	movl	$.LC4, -7952(%ebp)
	movl	$222, -7948(%ebp)
	movl	$.LC56, -7912(%ebp)
	movl	$79, -7908(%ebp)
	movl	$4096, -7960(%ebp)
	movl	%eax, -7956(%ebp)
	movl	%ebx, (%esp)
	call	_gfortran_st_write
	movl	$13, 8(%esp)
	movl	$.LC63, 4(%esp)
	jmp	.L935
	.p2align 4,,7
	.p2align 3
.L937:
	leal	-800(%ebp), %eax
	movl	$.LC4, -792(%ebp)
	movl	$179, -788(%ebp)
	movl	%esi, -764(%ebp)
	movl	$32, -768(%ebp)
	movl	$.LC55, -760(%ebp)
	movl	$7, -756(%ebp)
	movl	$768, -800(%ebp)
	movl	%edx, -796(%ebp)
	movl	%eax, (%esp)
	call	_gfortran_st_open
	jmp	.L843
	.p2align 4,,7
	.p2align 3
.L938:
	movl	-80(%ebp), %eax
	movl	$.LC4, -388(%ebp)
	movl	$392, -384(%ebp)
	movl	$0, -396(%ebp)
	movl	%eax, -392(%ebp)
	leal	-396(%ebp), %eax
	movl	%eax, (%esp)
	call	_gfortran_st_close
	jmp	.L914
	.p2align 4,,7
	.p2align 3
.L941:
	movl	-76(%ebp), %eax
	leal	-6600(%ebp), %ebx
	movl	$.LC4, -6592(%ebp)
	movl	$209, -6588(%ebp)
	movl	$.LC56, -6552(%ebp)
	movl	$79, -6548(%ebp)
	movl	$4096, -6600(%ebp)
	movl	%eax, -6596(%ebp)
	movl	%ebx, (%esp)
	call	_gfortran_st_write
	movl	$1, 8(%esp)
	movl	$.LC60, 4(%esp)
.L935:
	movl	%ebx, (%esp)
	call	_gfortran_transfer_character
	movl	$4, 8(%esp)
	movl	$.LC61, 4(%esp)
	movl	%ebx, (%esp)
	call	_gfortran_transfer_integer
	movl	%ebx, (%esp)
	call	_gfortran_st_write_done
	jmp	.L847
	.p2align 4,,7
	.p2align 3
.L939:
	movl	-76(%ebp), %eax
	leal	-5920(%ebp), %ebx
	movl	$.LC4, -5912(%ebp)
	movl	$202, -5908(%ebp)
	movl	$.LC58, -5872(%ebp)
	movl	%eax, -5916(%ebp)
	movl	$53, -5868(%ebp)
	movl	$4096, -5920(%ebp)
	movl	%ebx, (%esp)
	call	_gfortran_st_write
	movl	$4, 8(%esp)
	movl	$.LC59, 4(%esp)
	movl	%ebx, (%esp)
	call	_gfortran_transfer_integer
	movl	%ebx, (%esp)
	call	_gfortran_st_write_done
	jmp	.L847
	.p2align 4,,7
	.p2align 3
.L859:
	leal	-8300(%ebp), %edx
	movl	$.LC4, -8292(%ebp)
	movl	$225, -8288(%ebp)
	movl	$128, -8300(%ebp)
	movl	$5, -8296(%ebp)
	movl	%edx, (%esp)
	call	_gfortran_st_read
	movl	-68(%ebp), %eax
	testl	%eax, %eax
	jle	.L860
	leal	-196(%ebp), %edi
	xorl	%esi, %esi
	movl	%edi, -71472(%ebp)
	movl	%eax, %edi
	.p2align 4,,7
	.p2align 3
.L861:
	movl	-71472(%ebp), %edx
	movl	$4, 8(%esp)
	leal	(%edx,%esi,4), %eax
	addl	$1, %esi
	movl	%eax, 4(%esp)
	leal	-8300(%ebp), %eax
	movl	%eax, (%esp)
	call	_gfortran_transfer_integer
	cmpl	%edi, %esi
	jne	.L861
.L860:
	leal	-8300(%ebp), %edx
	movl	%edx, (%esp)
	call	_gfortran_st_read_done
	movl	-68(%ebp), %esi
	testl	%esi, %esi
	jle	.L862
	movl	$1, %edx
	leal	-196(%ebp), %edi
	jmp	.L865
	.p2align 4,,7
	.p2align 3
.L944:
	addl	$1, %edx
.L865:
	movl	-4(%edi,%edx,4), %eax
	testl	%eax, %eax
	je	.L863
	movl	%eax, %ecx
	sarl	$31, %ecx
	xorl	%ecx, %eax
	subl	%ecx, %eax
	cmpl	$2, %eax
	jg	.L863
	cmpl	%esi, %edx
	jne	.L944
.L862:
	leal	-8980(%ebp), %esi
	movl	$.LC4, -8972(%ebp)
	movl	$233, -8968(%ebp)
	movl	$128, -8980(%ebp)
	movl	$5, -8976(%ebp)
	movl	%esi, (%esp)
	call	_gfortran_st_read
	leal	-56(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$4, 8(%esp)
	movl	%esi, (%esp)
	call	_gfortran_transfer_integer
	movl	%esi, (%esp)
	call	_gfortran_st_read_done
	movl	-56(%ebp), %eax
	subl	$1, %eax
	cmpl	$6, %eax
	ja	.L945
	leal	-9660(%ebp), %edi
	movl	$.LC4, -9652(%ebp)
	movl	$238, -9648(%ebp)
	movl	$128, -9660(%ebp)
	movl	$5, -9656(%ebp)
	movl	%edi, (%esp)
	call	_gfortran_st_read
	movl	-56(%ebp), %edx
	testl	%edx, %edx
	movl	%edx, -71476(%ebp)
	jle	.L867
	leal	-140(%ebp), %eax
	xorl	%esi, %esi
	movl	%eax, -71472(%ebp)
	.p2align 4,,7
	.p2align 3
.L868:
	movl	-71472(%ebp), %edx
	movl	$4, 8(%esp)
	movl	%edi, (%esp)
	leal	(%edx,%esi,4), %eax
	addl	$1, %esi
	movl	%eax, 4(%esp)
	call	_gfortran_transfer_real
	cmpl	-71476(%ebp), %esi
	jne	.L868
.L867:
	leal	-10000(%ebp), %esi
	movl	%edi, (%esp)
	call	_gfortran_st_read_done
	movl	$.LC4, -9992(%ebp)
	movl	$240, -9988(%ebp)
	movl	$128, -10000(%ebp)
	movl	$5, -9996(%ebp)
	movl	%esi, (%esp)
	call	_gfortran_st_read
	leal	-60(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$4, 8(%esp)
	movl	%esi, (%esp)
	call	_gfortran_transfer_integer
	movl	%esi, (%esp)
	call	_gfortran_st_read_done
	movl	-60(%ebp), %eax
	subl	$1, %eax
	cmpl	$6, %eax
	jbe	.L869
	movl	-76(%ebp), %eax
	leal	-10340(%ebp), %ebx
	movl	$.LC4, -10332(%ebp)
	movl	$242, -10328(%ebp)
	movl	$.LC56, -10292(%ebp)
	movl	$79, -10288(%ebp)
	movl	$4096, -10340(%ebp)
	movl	%eax, -10336(%ebp)
	movl	%ebx, (%esp)
	call	_gfortran_st_write
	movl	$4, 8(%esp)
	movl	$.LC66, 4(%esp)
	jmp	.L935
.L945:
	movl	-76(%ebp), %eax
	leal	-9320(%ebp), %ebx
	movl	$.LC4, -9312(%ebp)
	movl	$235, -9308(%ebp)
	movl	$.LC56, -9272(%ebp)
	movl	$79, -9268(%ebp)
	movl	$4096, -9320(%ebp)
	movl	%eax, -9316(%ebp)
	movl	%ebx, (%esp)
	call	_gfortran_st_write
	movl	$5, 8(%esp)
	movl	$.LC65, 4(%esp)
	jmp	.L935
	.p2align 4,,7
	.p2align 3
.L942:
	movl	-76(%ebp), %eax
	leal	-7280(%ebp), %ebx
	movl	$.LC4, -7272(%ebp)
	movl	$215, -7268(%ebp)
	movl	$.LC62, -7232(%ebp)
	movl	$32, -7228(%ebp)
	movl	$4096, -7280(%ebp)
	movl	%eax, -7276(%ebp)
	movl	%ebx, (%esp)
	call	_gfortran_st_write
	movl	%ebx, (%esp)
	call	_gfortran_st_write_done
	jmp	.L847
.L863:
	movl	-76(%ebp), %eax
	leal	-8640(%ebp), %ebx
	movl	$.LC4, -8632(%ebp)
	movl	$228, -8628(%ebp)
	movl	$.LC64, -8592(%ebp)
	movl	%eax, -8636(%ebp)
	movl	$70, -8588(%ebp)
	movl	$4096, -8640(%ebp)
	movl	%ebx, (%esp)
	call	_gfortran_st_write
	movl	$4, 8(%esp)
	movl	$.LC25, 4(%esp)
	movl	%ebx, (%esp)
	call	_gfortran_transfer_integer
	movl	%ebx, (%esp)
	call	_gfortran_st_write_done
	jmp	.L847
.L869:
	leal	-10680(%ebp), %edx
	movl	$.LC4, -10672(%ebp)
	movl	$245, -10668(%ebp)
	movl	$128, -10680(%ebp)
	movl	$5, -10676(%ebp)
	movl	%edx, (%esp)
	call	_gfortran_st_read
	movl	-60(%ebp), %eax
	testl	%eax, %eax
	jle	.L870
	leal	-168(%ebp), %edi
	xorl	%esi, %esi
	movl	%edi, -71472(%ebp)
	movl	%eax, %edi
	.p2align 4,,7
	.p2align 3
.L871:
	movl	-71472(%ebp), %edx
	movl	$4, 8(%esp)
	leal	(%edx,%esi,4), %eax
	addl	$1, %esi
	movl	%eax, 4(%esp)
	leal	-10680(%ebp), %eax
	movl	%eax, (%esp)
	call	_gfortran_transfer_real
	cmpl	%edi, %esi
	jne	.L871
.L870:
	leal	-10680(%ebp), %edx
	movl	%edx, (%esp)
	leal	-11020(%ebp), %esi
	call	_gfortran_st_read_done
	movl	-76(%ebp), %eax
	movl	$.LC4, -11012(%ebp)
	movl	$249, -11008(%ebp)
	movl	$.LC67, -10972(%ebp)
	movl	%eax, -11016(%ebp)
	movl	$109, -10968(%ebp)
	movl	$4096, -11020(%ebp)
	movl	%esi, (%esp)
	call	_gfortran_st_write
	movl	%esi, (%esp)
	call	_gfortran_st_write_done
	movl	-76(%ebp), %eax
	movl	$.LC4, -11352(%ebp)
	movl	$250, -11348(%ebp)
	movl	$.LC68, -11312(%ebp)
	movl	%eax, -11356(%ebp)
	leal	-11360(%ebp), %eax
	movl	%eax, (%esp)
	movl	$33, -11308(%ebp)
	movl	$4096, -11360(%ebp)
	call	_gfortran_st_write
	movl	-64(%ebp), %eax
	testl	%eax, %eax
	jle	.L872
	leal	-324(%ebp), %edi
	xorl	%esi, %esi
	movl	%edi, -71472(%ebp)
	movl	%eax, %edi
	.p2align 4,,7
	.p2align 3
.L873:
	movl	-71472(%ebp), %edx
	movl	$4, 8(%esp)
	leal	(%edx,%esi,4), %eax
	addl	$1, %esi
	movl	%eax, 4(%esp)
	leal	-11360(%ebp), %eax
	movl	%eax, (%esp)
	call	_gfortran_transfer_integer
	cmpl	%edi, %esi
	jne	.L873
.L872:
	leal	-11360(%ebp), %edx
	movl	%edx, (%esp)
	call	_gfortran_st_write_done
	movl	-76(%ebp), %eax
	movl	$.LC4, -11692(%ebp)
	movl	$251, -11688(%ebp)
	movl	$.LC69, -11652(%ebp)
	movl	%eax, -11696(%ebp)
	leal	-11700(%ebp), %eax
	movl	%eax, (%esp)
	movl	$33, -11648(%ebp)
	movl	$4096, -11700(%ebp)
	call	_gfortran_st_write
	movl	-72(%ebp), %eax
	testl	%eax, %eax
	jle	.L874
	leal	-224(%ebp), %edi
	xorl	%esi, %esi
	movl	%edi, -71472(%ebp)
	movl	%eax, %edi
	.p2align 4,,7
	.p2align 3
.L875:
	movl	-71472(%ebp), %edx
	movl	$4, 8(%esp)
	leal	(%edx,%esi,4), %eax
	addl	$1, %esi
	movl	%eax, 4(%esp)
	leal	-11700(%ebp), %eax
	movl	%eax, (%esp)
	call	_gfortran_transfer_integer
	cmpl	%edi, %esi
	jne	.L875
.L874:
	leal	-11700(%ebp), %edx
	movl	%edx, (%esp)
	call	_gfortran_st_write_done
	movl	-76(%ebp), %eax
	movl	$.LC4, -12032(%ebp)
	movl	$252, -12028(%ebp)
	movl	$.LC70, -11992(%ebp)
	movl	%eax, -12036(%ebp)
	leal	-12040(%ebp), %eax
	movl	%eax, (%esp)
	movl	$33, -11988(%ebp)
	movl	$4096, -12040(%ebp)
	call	_gfortran_st_write
	movl	-68(%ebp), %eax
	testl	%eax, %eax
	jle	.L876
	leal	-196(%ebp), %edi
	xorl	%esi, %esi
	movl	%edi, -71472(%ebp)
	movl	%eax, %edi
	.p2align 4,,7
	.p2align 3
.L877:
	movl	-71472(%ebp), %edx
	movl	$4, 8(%esp)
	leal	(%edx,%esi,4), %eax
	addl	$1, %esi
	movl	%eax, 4(%esp)
	leal	-12040(%ebp), %eax
	movl	%eax, (%esp)
	call	_gfortran_transfer_integer
	cmpl	%edi, %esi
	jne	.L877
.L876:
	leal	-12040(%ebp), %edx
	movl	%edx, (%esp)
	leal	-12380(%ebp), %edi
	call	_gfortran_st_write_done
	movl	-76(%ebp), %eax
	movl	$.LC4, -12372(%ebp)
	movl	$253, -12368(%ebp)
	movl	$.LC71, -12332(%ebp)
	movl	%eax, -12376(%ebp)
	movl	$35, -12328(%ebp)
	movl	$4096, -12380(%ebp)
	movl	%edi, (%esp)
	call	_gfortran_st_write
	movl	-56(%ebp), %eax
	testl	%eax, %eax
	movl	%eax, -71476(%ebp)
	jle	.L878
	leal	-140(%ebp), %edx
	xorl	%esi, %esi
	movl	%edx, -71472(%ebp)
	.p2align 4,,7
	.p2align 3
.L879:
	movl	-71472(%ebp), %edx
	movl	$4, 8(%esp)
	movl	%edi, (%esp)
	leal	(%edx,%esi,4), %eax
	addl	$1, %esi
	movl	%eax, 4(%esp)
	call	_gfortran_transfer_real
	cmpl	-71476(%ebp), %esi
	jne	.L879
.L878:
	movl	%edi, (%esp)
	call	_gfortran_st_write_done
	movl	-76(%ebp), %eax
	movl	$.LC4, -12712(%ebp)
	movl	$254, -12708(%ebp)
	movl	$.LC72, -12672(%ebp)
	movl	%eax, -12716(%ebp)
	leal	-12720(%ebp), %eax
	movl	%eax, (%esp)
	movl	$35, -12668(%ebp)
	movl	$4096, -12720(%ebp)
	call	_gfortran_st_write
	movl	-60(%ebp), %eax
	testl	%eax, %eax
	jle	.L880
	leal	-168(%ebp), %edi
	xorl	%esi, %esi
	movl	%edi, -71472(%ebp)
	movl	%eax, %edi
	.p2align 4,,7
	.p2align 3
.L881:
	movl	-71472(%ebp), %edx
	movl	$4, 8(%esp)
	leal	(%edx,%esi,4), %eax
	addl	$1, %esi
	movl	%eax, 4(%esp)
	leal	-12720(%ebp), %eax
	movl	%eax, (%esp)
	call	_gfortran_transfer_real
	cmpl	%edi, %esi
	jne	.L881
.L880:
	leal	-12720(%ebp), %edx
	movl	%edx, (%esp)
	call	_gfortran_st_write_done
	movl	-104(%ebp), %esi
	testl	%esi, %esi
	je	.L946
.L882:
	movl	-76(%ebp), %eax
	leal	-13740(%ebp), %esi
	movl	%esi, (%esp)
	movl	$.LC4, -13732(%ebp)
	movl	$259, -13728(%ebp)
	movl	%eax, -13736(%ebp)
	movl	$128, -13740(%ebp)
	call	_gfortran_st_write
	movl	%esi, (%esp)
	leal	-14080(%ebp), %esi
	call	_gfortran_st_write_done
	movl	-76(%ebp), %eax
	movl	%esi, (%esp)
	movl	$.LC4, -14072(%ebp)
	movl	$260, -14068(%ebp)
	movl	%eax, -14076(%ebp)
	movl	$.LC74, -14032(%ebp)
	movl	$82, -14028(%ebp)
	movl	$4096, -14080(%ebp)
	call	_gfortran_st_write
	leal	-96(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%esi, (%esp)
	movl	$4, 8(%esp)
	call	_gfortran_transfer_real
	movl	%esi, (%esp)
	leal	-14420(%ebp), %esi
	call	_gfortran_st_write_done
	movl	-76(%ebp), %eax
	movl	$.LC4, -14412(%ebp)
	movl	$261, -14408(%ebp)
	movl	$128, -14420(%ebp)
	movl	%eax, -14416(%ebp)
	movl	%esi, (%esp)
	call	_gfortran_st_write
	movl	%esi, (%esp)
	call	_gfortran_st_write_done
	movl	$1, %eax
	leal	-496(%ebp), %edx
	.p2align 4,,7
	.p2align 3
.L883:
	movl	$0, -4(%edx,%eax,4)
	addl	$1, %eax
	cmpl	$17, %eax
	jne	.L883
	leal	-110(%ebp), %edi
.L888:
	leal	-14760(%ebp), %edx
	movl	%edx, (%esp)
	movl	$.LC4, -14752(%ebp)
	movl	$269, -14748(%ebp)
	movl	$.LC75, -14712(%ebp)
	movl	$10, -14708(%ebp)
	movl	$4104, -14760(%ebp)
	movl	$5, -14756(%ebp)
	call	_gfortran_st_read
	leal	-14760(%ebp), %eax
	movl	%eax, (%esp)
	movl	$6, 8(%esp)
	movl	%edi, 4(%esp)
	call	_gfortran_transfer_character
	leal	-48(%ebp), %edx
	leal	-14760(%ebp), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	movl	$4, 8(%esp)
	call	_gfortran_transfer_logical
	leal	-14760(%ebp), %edx
	movl	%edx, (%esp)
	call	_gfortran_st_read_done
	movl	-14760(%ebp), %eax
	andl	$3, %eax
	cmpl	$2, %eax
	je	.L885
	xorl	%esi, %esi
	.p2align 4,,7
	.p2align 3
.L887:
	leal	(%esi,%esi,2), %eax
	leal	snames.1550(%eax,%eax), %eax
	movl	%eax, 12(%esp)
	movl	$6, 8(%esp)
	movl	%edi, 4(%esp)
	movl	$6, (%esp)
	call	_gfortran_compare_string
	testl	%eax, %eax
	je	.L886
	addl	$1, %esi
	cmpl	$16, %esi
	jne	.L887
	movl	-76(%ebp), %eax
	leal	-15100(%ebp), %ebx
	movl	$.LC4, -15092(%ebp)
	movl	$274, -15088(%ebp)
	movl	$.LC76, -15052(%ebp)
	movl	%eax, -15096(%ebp)
	movl	$92, -15048(%ebp)
	movl	$4096, -15100(%ebp)
	movl	%ebx, (%esp)
	call	_gfortran_st_write
	movl	$6, 8(%esp)
	movl	%edi, 4(%esp)
	movl	%ebx, (%esp)
	call	_gfortran_transfer_character
	movl	%ebx, (%esp)
	call	_gfortran_st_write_done
	movl	$-1, (%esp)
	call	_gfortran_stop_numeric
.L886:
	movl	-48(%ebp), %eax
	movl	%eax, -496(%ebp,%esi,4)
	jmp	.L888
.L946:
	movl	-76(%ebp), %eax
	leal	-13060(%ebp), %esi
	movl	%esi, (%esp)
	movl	$.LC4, -13052(%ebp)
	movl	$256, -13048(%ebp)
	movl	%eax, -13056(%ebp)
	movl	$128, -13060(%ebp)
	call	_gfortran_st_write
	movl	%esi, (%esp)
	leal	-13400(%ebp), %esi
	call	_gfortran_st_write_done
	movl	-76(%ebp), %eax
	movl	$.LC4, -13392(%ebp)
	movl	$257, -13388(%ebp)
	movl	$.LC73, -13352(%ebp)
	movl	$37, -13348(%ebp)
	movl	$4096, -13400(%ebp)
	movl	%eax, -13396(%ebp)
	movl	%esi, (%esp)
	call	_gfortran_st_write
	movl	%esi, (%esp)
	call	_gfortran_st_write_done
	jmp	.L882
.L885:
	leal	-360(%ebp), %eax
	movl	$1, %edi
	movl	%eax, (%esp)
	leal	-15440(%ebp), %esi
	movl	$.LC4, -352(%ebp)
	movl	$280, -348(%ebp)
	movl	$0, -360(%ebp)
	movl	$5, -356(%ebp)
	call	_gfortran_st_close
	movl	-76(%ebp), %eax
	movl	$0x34000000, -32(%ebp)
	movl	$.LC4, -15432(%ebp)
	movl	$285, -15428(%ebp)
	movl	%eax, -15436(%ebp)
	movl	$.LC78, -15392(%ebp)
	movl	$58, -15388(%ebp)
	movl	$4096, -15440(%ebp)
	movl	%esi, (%esp)
	call	_gfortran_st_write
	leal	-32(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$4, 8(%esp)
	movl	%esi, (%esp)
	call	_gfortran_transfer_real
	movl	%esi, (%esp)
	call	_gfortran_st_write_done
	movl	$32, -52(%ebp)
	movl	$0, -71472(%ebp)
	.p2align 4,,7
	.p2align 3
.L891:
	movl	-71472(%ebp), %eax
	movl	$2, %ecx
	subl	%edi, %ecx
	leal	-37660(%ebp,%eax,4), %edx
	leal	-37532(%ebp,%eax,4), %esi
	.p2align 4,,7
	.p2align 3
.L889:
	movl	%ecx, %eax
	sarl	$31, %eax
	notl	%eax
	andl	%ecx, %eax
	addl	$1, %ecx
	movl	%eax, -71468(%ebp)
	fildl	-71468(%ebp)
	fstps	(%edx)
	addl	$4, %edx
	cmpl	%esi, %edx
	jne	.L889
	movl	%edi, -71468(%ebp)
	fildl	-71468(%ebp)
	addl	$65, -71472(%ebp)
	cmpl	$32, %edi
	fstps	-1324(%ebp,%edi,4)
	movl	$0x00000000, -1584(%ebp,%edi,4)
	je	.L890
	addl	$1, %edi
	jmp	.L891
.L890:
	movl	-52(%ebp), %eax
	testl	%eax, %eax
	jle	.L892
	addl	$1, %eax
	movl	$1, %ecx
	movl	%eax, -71476(%ebp)
	jmp	.L893
	.p2align 4,,7
	.p2align 3
.L947:
	movl	%esi, %ecx
.L893:
	leal	1(%ecx), %esi
	movl	$1431655766, %eax
	movl	%esi, %edx
	imull	%ecx, %edx
	leal	-1(%ecx), %edi
	imull	%edx, %edi
	movl	%edx, -71472(%ebp)
	imull	-71472(%ebp), %ecx
	imull	%edi
	sarl	$31, %edi
	sarl	%ecx
	subl	%edx, %edi
	leal	(%edi,%ecx), %ecx
	cmpl	-71476(%ebp), %esi
	movl	%ecx, -71468(%ebp)
	fildl	-71468(%ebp)
	fstps	-20248(%ebp,%esi,4)
	jne	.L947
.L892:
	leal	-36(%ebp), %edx
	movl	%edx, 60(%esp)
	leal	-32(%ebp), %eax
	leal	-20240(%ebp), %edx
	movl	%eax, 56(%esp)
	leal	-1060(%ebp), %eax
	movl	%edx, 52(%esp)
	leal	-1580(%ebp), %edx
	movl	%eax, 48(%esp)
	leal	-1320(%ebp), %eax
	movl	%edx, 36(%esp)
	leal	-37660(%ebp), %edx
	leal	-1840(%ebp), %esi
	movl	%eax, 24(%esp)
	leal	-40(%ebp), %edi
	leal	-25(%ebp), %eax
	movl	%edx, 16(%esp)
	leal	-52(%ebp), %edx
	movl	%edx, 8(%esp)
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	movl	%edx, -71480(%ebp)
	movb	$78, -25(%ebp)
	movl	$1, 76(%esp)
	movl	$.LC35, 72(%esp)
	movl	%ebx, 68(%esp)
	movl	%edi, 64(%esp)
	movl	%esi, 44(%esp)
	movl	$.LC20, 40(%esp)
	movl	$.LC49, 32(%esp)
	movl	$.LC20, 28(%esp)
	movl	$.LC59, 20(%esp)
	movl	$.LC36, 12(%esp)
	call	smvch_
	movl	-71480(%ebp), %edx
	leal	-20240(%ebp), %eax
	movl	%esi, 4(%esp)
	movl	%eax, (%esp)
	movl	%edx, 8(%esp)
	call	lse_
	movl	-71480(%ebp), %edx
	testl	%eax, %eax
	movl	%eax, -88(%ebp)
	je	.L894
	fldz
	flds	-36(%ebp)
	fucomp	%st(1)
	fnstsw	%ax
	sahf
	jp	.L952
	je	.L931
	fstp	%st(0)
	.p2align 4,,2
	jmp	.L894
.L952:
	fstp	%st(0)
.L894:
	movl	-76(%ebp), %eax
	leal	-15780(%ebp), %ebx
	movl	$.LC4, -15772(%ebp)
	movl	$307, -15768(%ebp)
	movl	$.LC79, -15732(%ebp)
	movl	$303, -15728(%ebp)
	movl	$4096, -15780(%ebp)
	movl	%eax, -15776(%ebp)
.L936:
	movl	%ebx, (%esp)
	call	_gfortran_st_write
	leal	-25(%ebp), %edx
	movl	%edx, 4(%esp)
	movl	$1, 8(%esp)
	movl	%ebx, (%esp)
	call	_gfortran_transfer_character
	leal	-88(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$4, 8(%esp)
	movl	%ebx, (%esp)
	call	_gfortran_transfer_logical
	leal	-36(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$4, 8(%esp)
	movl	%ebx, (%esp)
	call	_gfortran_transfer_real
	movl	%ebx, (%esp)
	call	_gfortran_st_write_done
	movl	$-1, (%esp)
	call	_gfortran_stop_numeric
.L931:
	leal	-36(%ebp), %eax
	movl	%eax, 60(%esp)
	leal	-32(%ebp), %eax
	movl	%eax, 56(%esp)
	leal	-20240(%ebp), %eax
	movl	%eax, 52(%esp)
	leal	-1060(%ebp), %eax
	movl	%eax, 48(%esp)
	leal	-1580(%ebp), %eax
	movl	%eax, 36(%esp)
	leal	-1320(%ebp), %eax
	movl	%eax, 24(%esp)
	leal	-37660(%ebp), %eax
	movl	%eax, 16(%esp)
	leal	-25(%ebp), %eax
	fstps	-71496(%ebp)
	movl	%edx, 8(%esp)
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	movl	%edx, -71480(%ebp)
	movb	$84, -25(%ebp)
	movl	$1, 76(%esp)
	movl	$.LC35, 72(%esp)
	movl	%ebx, 68(%esp)
	movl	%edi, 64(%esp)
	movl	%esi, 44(%esp)
	movl	$.LC23, 40(%esp)
	movl	$.LC49, 32(%esp)
	movl	$.LC23, 28(%esp)
	movl	$.LC59, 20(%esp)
	movl	$.LC36, 12(%esp)
	call	smvch_
	movl	-71480(%ebp), %edx
	movl	%esi, 4(%esp)
	movl	%edx, 8(%esp)
	leal	-20240(%ebp), %edx
	movl	%edx, (%esp)
	call	lse_
	testl	%eax, %eax
	flds	-71496(%ebp)
	movl	%eax, -88(%ebp)
	je	.L953
	flds	-36(%ebp)
	fucompp
	fnstsw	%ax
	sahf
	jp	.L897
	je	.L932
	.p2align 4,,6
	jmp	.L897
.L953:
	fstp	%st(0)
.L897:
	movl	-76(%ebp), %eax
	leal	-16120(%ebp), %ebx
	movl	$.LC4, -16112(%ebp)
	movl	$315, -16108(%ebp)
	movl	$.LC79, -16072(%ebp)
	movl	$303, -16068(%ebp)
	movl	$4096, -16120(%ebp)
	movl	%eax, -16116(%ebp)
	jmp	.L936
.L932:
	movl	$1, -44(%ebp)
	jmp	.L912
.L949:
	movl	-76(%ebp), %eax
	movl	$.LC4, -16792(%ebp)
	movl	$325, -16788(%ebp)
	movl	$.LC80, -16752(%ebp)
	movl	%eax, -16796(%ebp)
	leal	-16800(%ebp), %eax
	movl	%eax, (%esp)
	movl	%eax, -71480(%ebp)
	movl	$29, -16748(%ebp)
	movl	$4096, -16800(%ebp)
	call	_gfortran_st_write
	movl	-44(%ebp), %edx
	movl	-71480(%ebp), %eax
	movl	$6, 8(%esp)
	subl	$1, %edx
	imull	$6, %edx, %edx
	movl	%eax, (%esp)
	addl	$snames.1550, %edx
	movl	%edx, 4(%esp)
	call	_gfortran_transfer_character
	movl	-71480(%ebp), %eax
	movl	%eax, (%esp)
	call	_gfortran_st_write_done
.L901:
	movl	-44(%ebp), %eax
	leal	1(%eax), %edx
	cmpl	$16, %eax
	movl	%edx, -44(%ebp)
	je	.L948
.L912:
	movl	-76(%ebp), %eax
	leal	-16460(%ebp), %edx
	movl	%edx, (%esp)
	movl	$.LC4, -16452(%ebp)
	movl	$322, -16448(%ebp)
	movl	%eax, -16456(%ebp)
	movl	$128, -16460(%ebp)
	call	_gfortran_st_write
	leal	-16460(%ebp), %eax
	movl	%eax, (%esp)
	call	_gfortran_st_write_done
	movl	-44(%ebp), %eax
	subl	$1, %eax
	cmpl	$0, -496(%ebp,%eax,4)
	je	.L949
	imull	$6, %eax, %eax
	movl	$6, 8(%esp)
	movl	$srnamc_, (%esp)
	addl	$snames.1550, %eax
	movl	%eax, 4(%esp)
	call	memmove
	cmpl	$0, -104(%ebp)
	jne	.L950
.L902:
	movl	-44(%ebp), %eax
	movl	$0, infoc_
	movl	$1, infoc_+8
	movl	$0, -40(%ebp)
	leal	-3(%eax), %edx
	cmpl	$13, %edx
	jbe	.L951
	leal	-1060(%ebp), %edx
	subl	$1, %eax
	movl	%edx, 120(%esp)
	leal	-19720(%ebp), %edx
	movl	%edx, 112(%esp)
	leal	-20240(%ebp), %edx
	movl	%edx, 108(%esp)
	leal	-1580(%ebp), %edx
	movl	%edx, 104(%esp)
	leal	-18680(%ebp), %edx
	movl	%edx, 100(%esp)
	leal	-19200(%ebp), %edx
	movl	%edx, 96(%esp)
	leal	-1320(%ebp), %edx
	movl	%edx, 92(%esp)
	leal	-71460(%ebp), %edx
	movl	%edx, 88(%esp)
	leal	-54560(%ebp), %edx
	movl	%edx, 84(%esp)
	leal	-37660(%ebp), %edx
	movl	%edx, 80(%esp)
	leal	-196(%ebp), %edx
	movl	%edx, 68(%esp)
	leal	-68(%ebp), %edx
	movl	%edx, 64(%esp)
	leal	-168(%ebp), %edx
	movl	%edx, 60(%esp)
	leal	-60(%ebp), %edx
	movl	%edx, 56(%esp)
	leal	-140(%ebp), %edx
	movl	%edx, 52(%esp)
	leal	-56(%ebp), %edx
	movl	%edx, 48(%esp)
	leal	-224(%ebp), %edx
	movl	%edx, 44(%esp)
	leal	-72(%ebp), %edx
	movl	%edx, 40(%esp)
	leal	-324(%ebp), %edx
	movl	%edx, 36(%esp)
	leal	-64(%ebp), %edx
	movl	%edx, 32(%esp)
	imull	$6, %eax, %eax
	leal	-84(%ebp), %edx
	movl	%edx, 24(%esp)
	leal	-100(%ebp), %edx
	movl	%edx, 20(%esp)
	leal	-80(%ebp), %edx
	movl	%edx, 16(%esp)
	leal	-96(%ebp), %edx
	addl	$snames.1550, %eax
	movl	%edx, 8(%esp)
	leal	-32(%ebp), %edx
	movl	$6, 124(%esp)
	movl	%esi, 116(%esp)
	movl	$.LC25, 76(%esp)
	movl	$.LC59, 72(%esp)
	movl	%edi, 28(%esp)
	movl	%ebx, 12(%esp)
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	schk1_
.L910:
	cmpl	$0, -40(%ebp)
	je	.L901
	cmpl	$0, -92(%ebp)
	je	.L901
	movl	-76(%ebp), %eax
	leal	-17820(%ebp), %ebx
	movl	$.LC4, -17812(%ebp)
	movl	$384, -17808(%ebp)
	movl	$.LC82, -17772(%ebp)
	movl	$53, -17768(%ebp)
	movl	$4096, -17820(%ebp)
	movl	%eax, -17816(%ebp)
	movl	%ebx, (%esp)
	call	_gfortran_st_write
	movl	%ebx, (%esp)
	call	_gfortran_st_write_done
	jmp	.L913
.L951:
	.p2align 4,,6
	jmp	*.L909(,%edx,4)
	.section	.rodata
	.align 4
	.align 4
.L909:
	.long	.L904
	.long	.L904
	.long	.L904
	.long	.L905
	.long	.L905
	.long	.L905
	.long	.L905
	.long	.L905
	.long	.L905
	.long	.L906
	.long	.L907
	.long	.L907
	.long	.L908
	.long	.L908
	.text
.L950:
	movl	-44(%ebp), %eax
	movl	$6, 12(%esp)
	movl	%ebx, 8(%esp)
	subl	$1, %eax
	imull	$6, %eax, %eax
	addl	$snames.1550, %eax
	movl	%eax, 4(%esp)
	leal	-44(%ebp), %eax
	movl	%eax, (%esp)
	call	schke_
	movl	-76(%ebp), %eax
	movl	$.LC4, -17132(%ebp)
	movl	$331, -17128(%ebp)
	movl	$128, -17140(%ebp)
	movl	%eax, -17136(%ebp)
	leal	-17140(%ebp), %eax
	movl	%eax, (%esp)
	movl	%eax, -71480(%ebp)
	call	_gfortran_st_write
	movl	-71480(%ebp), %eax
	movl	%eax, (%esp)
	call	_gfortran_st_write_done
	jmp	.L902
.L948:
	movl	-76(%ebp), %eax
	leal	-17480(%ebp), %ebx
	movl	$.LC4, -17472(%ebp)
	movl	$380, -17468(%ebp)
	movl	$.LC81, -17432(%ebp)
	movl	$20, -17428(%ebp)
	movl	$4096, -17480(%ebp)
	movl	%eax, -17476(%ebp)
	movl	%ebx, (%esp)
	call	_gfortran_st_write
	movl	%ebx, (%esp)
	call	_gfortran_st_write_done
	jmp	.L913
.L906:
	leal	-20760(%ebp), %eax
	movl	%eax, 108(%esp)
	leal	-1060(%ebp), %eax
	movl	%eax, 104(%esp)
	leal	-20240(%ebp), %eax
	movl	%eax, 92(%esp)
	leal	-18680(%ebp), %eax
	movl	%eax, 84(%esp)
	leal	-1320(%ebp), %eax
	movl	%eax, 76(%esp)
	leal	-54560(%ebp), %eax
	leal	-19720(%ebp), %edx
	movl	%eax, 68(%esp)
	leal	-196(%ebp), %eax
	movl	%edx, 96(%esp)
	leal	-1580(%ebp), %edx
	movl	%eax, 52(%esp)
	leal	-68(%ebp), %eax
	movl	%edx, 88(%esp)
	leal	-19200(%ebp), %edx
	movl	%eax, 48(%esp)
	leal	-140(%ebp), %eax
	movl	%edx, 80(%esp)
	leal	-71460(%ebp), %edx
	movl	%eax, 44(%esp)
	leal	-324(%ebp), %eax
	movl	%edx, 72(%esp)
	leal	-37660(%ebp), %edx
	movl	%eax, 36(%esp)
	leal	-64(%ebp), %eax
	movl	%edx, 64(%esp)
	leal	-56(%ebp), %edx
	movl	%eax, 32(%esp)
	leal	-100(%ebp), %eax
	movl	%edx, 40(%esp)
	leal	-84(%ebp), %edx
	movl	%eax, 20(%esp)
	leal	-80(%ebp), %eax
	movl	%edx, 24(%esp)
	leal	-96(%ebp), %edx
	movl	%eax, 16(%esp)
	leal	-32(%ebp), %eax
	movl	$6, 112(%esp)
	movl	%esi, 100(%esp)
	movl	$.LC25, 60(%esp)
	movl	$.LC59, 56(%esp)
	movl	%edi, 28(%esp)
	movl	%ebx, 12(%esp)
	movl	%edx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	$snames.1550+66, (%esp)
	call	schk4_
	jmp	.L910
.L904:
	leal	-1060(%ebp), %edx
	subl	$1, %eax
	movl	%edx, 120(%esp)
	leal	-19720(%ebp), %edx
	movl	%edx, 112(%esp)
	leal	-20240(%ebp), %edx
	movl	%edx, 108(%esp)
	leal	-1580(%ebp), %edx
	movl	%edx, 104(%esp)
	leal	-18680(%ebp), %edx
	movl	%edx, 100(%esp)
	leal	-19200(%ebp), %edx
	movl	%edx, 96(%esp)
	leal	-1320(%ebp), %edx
	movl	%edx, 92(%esp)
	leal	-71460(%ebp), %edx
	movl	%edx, 88(%esp)
	leal	-54560(%ebp), %edx
	movl	%edx, 84(%esp)
	leal	-37660(%ebp), %edx
	movl	%edx, 80(%esp)
	leal	-196(%ebp), %edx
	movl	%edx, 68(%esp)
	leal	-68(%ebp), %edx
	movl	%edx, 64(%esp)
	leal	-168(%ebp), %edx
	movl	%edx, 60(%esp)
	leal	-60(%ebp), %edx
	movl	%edx, 56(%esp)
	leal	-140(%ebp), %edx
	movl	%edx, 52(%esp)
	leal	-56(%ebp), %edx
	movl	%edx, 48(%esp)
	leal	-224(%ebp), %edx
	movl	%edx, 44(%esp)
	leal	-72(%ebp), %edx
	movl	%edx, 40(%esp)
	leal	-324(%ebp), %edx
	movl	%edx, 36(%esp)
	leal	-64(%ebp), %edx
	movl	%edx, 32(%esp)
	imull	$6, %eax, %eax
	leal	-84(%ebp), %edx
	movl	%edx, 24(%esp)
	leal	-100(%ebp), %edx
	movl	%edx, 20(%esp)
	leal	-80(%ebp), %edx
	movl	%edx, 16(%esp)
	leal	-96(%ebp), %edx
	addl	$snames.1550, %eax
	movl	%edx, 8(%esp)
	leal	-32(%ebp), %edx
	movl	$6, 124(%esp)
	movl	%esi, 116(%esp)
	movl	$.LC25, 76(%esp)
	movl	$.LC59, 72(%esp)
	movl	%edi, 28(%esp)
	movl	%ebx, 12(%esp)
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	schk2_
	jmp	.L910
.L908:
	leal	-20760(%ebp), %edx
	subl	$1, %eax
	movl	%edx, 108(%esp)
	leal	-1060(%ebp), %edx
	movl	%edx, 104(%esp)
	leal	-19720(%ebp), %edx
	movl	%edx, 96(%esp)
	leal	-20240(%ebp), %edx
	movl	%edx, 92(%esp)
	leal	-1580(%ebp), %edx
	movl	%edx, 88(%esp)
	leal	-18680(%ebp), %edx
	movl	%edx, 84(%esp)
	leal	-19200(%ebp), %edx
	movl	%edx, 80(%esp)
	leal	-1320(%ebp), %edx
	movl	%edx, 76(%esp)
	leal	-71460(%ebp), %edx
	movl	%edx, 72(%esp)
	leal	-54560(%ebp), %edx
	movl	%edx, 68(%esp)
	leal	-37660(%ebp), %edx
	movl	%edx, 64(%esp)
	leal	-196(%ebp), %edx
	movl	%edx, 52(%esp)
	leal	-68(%ebp), %edx
	movl	%edx, 48(%esp)
	leal	-140(%ebp), %edx
	movl	%edx, 44(%esp)
	leal	-56(%ebp), %edx
	movl	%edx, 40(%esp)
	leal	-324(%ebp), %edx
	movl	%edx, 36(%esp)
	leal	-64(%ebp), %edx
	movl	%edx, 32(%esp)
	imull	$6, %eax, %eax
	leal	-84(%ebp), %edx
	movl	%edx, 24(%esp)
	leal	-100(%ebp), %edx
	movl	%edx, 20(%esp)
	leal	-80(%ebp), %edx
	movl	%edx, 16(%esp)
	leal	-96(%ebp), %edx
	addl	$snames.1550, %eax
	movl	%edx, 8(%esp)
	leal	-32(%ebp), %edx
	movl	$6, 112(%esp)
	movl	%esi, 100(%esp)
	movl	$.LC25, 60(%esp)
	movl	$.LC59, 56(%esp)
	movl	%edi, 28(%esp)
	movl	%ebx, 12(%esp)
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	schk6_
	jmp	.L910
.L905:
	leal	-20760(%ebp), %edx
	subl	$1, %eax
	movl	%edx, 96(%esp)
	leal	-1060(%ebp), %edx
	movl	%edx, 92(%esp)
	leal	-19720(%ebp), %edx
	movl	%edx, 84(%esp)
	leal	-20240(%ebp), %edx
	movl	%edx, 80(%esp)
	leal	-1580(%ebp), %edx
	movl	%edx, 76(%esp)
	leal	-71460(%ebp), %edx
	movl	%edx, 72(%esp)
	leal	-54560(%ebp), %edx
	movl	%edx, 68(%esp)
	leal	-37660(%ebp), %edx
	movl	%edx, 64(%esp)
	leal	-196(%ebp), %edx
	movl	%edx, 52(%esp)
	leal	-68(%ebp), %edx
	movl	%edx, 48(%esp)
	leal	-224(%ebp), %edx
	movl	%edx, 44(%esp)
	leal	-72(%ebp), %edx
	movl	%edx, 40(%esp)
	leal	-324(%ebp), %edx
	movl	%edx, 36(%esp)
	leal	-64(%ebp), %edx
	movl	%edx, 32(%esp)
	imull	$6, %eax, %eax
	leal	-84(%ebp), %edx
	movl	%edx, 24(%esp)
	leal	-100(%ebp), %edx
	movl	%edx, 20(%esp)
	leal	-80(%ebp), %edx
	movl	%edx, 16(%esp)
	leal	-96(%ebp), %edx
	addl	$snames.1550, %eax
	movl	%edx, 8(%esp)
	leal	-32(%ebp), %edx
	movl	$6, 100(%esp)
	movl	%esi, 88(%esp)
	movl	$.LC25, 60(%esp)
	movl	$.LC59, 56(%esp)
	movl	%edi, 28(%esp)
	movl	%ebx, 12(%esp)
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	schk3_
	jmp	.L910
.L907:
	leal	-20760(%ebp), %edx
	subl	$1, %eax
	movl	%edx, 108(%esp)
	leal	-1060(%ebp), %edx
	movl	%edx, 104(%esp)
	leal	-19720(%ebp), %edx
	movl	%edx, 96(%esp)
	leal	-20240(%ebp), %edx
	movl	%edx, 92(%esp)
	leal	-1580(%ebp), %edx
	movl	%edx, 88(%esp)
	leal	-18680(%ebp), %edx
	movl	%edx, 84(%esp)
	leal	-19200(%ebp), %edx
	movl	%edx, 80(%esp)
	leal	-1320(%ebp), %edx
	movl	%edx, 76(%esp)
	leal	-71460(%ebp), %edx
	movl	%edx, 72(%esp)
	leal	-54560(%ebp), %edx
	movl	%edx, 68(%esp)
	leal	-37660(%ebp), %edx
	movl	%edx, 64(%esp)
	leal	-196(%ebp), %edx
	movl	%edx, 52(%esp)
	leal	-68(%ebp), %edx
	movl	%edx, 48(%esp)
	leal	-140(%ebp), %edx
	movl	%edx, 44(%esp)
	leal	-56(%ebp), %edx
	movl	%edx, 40(%esp)
	leal	-324(%ebp), %edx
	movl	%edx, 36(%esp)
	leal	-64(%ebp), %edx
	movl	%edx, 32(%esp)
	imull	$6, %eax, %eax
	leal	-84(%ebp), %edx
	movl	%edx, 24(%esp)
	leal	-100(%ebp), %edx
	movl	%edx, 20(%esp)
	leal	-80(%ebp), %edx
	movl	%edx, 16(%esp)
	leal	-96(%ebp), %edx
	addl	$snames.1550, %eax
	movl	%edx, 8(%esp)
	leal	-32(%ebp), %edx
	movl	$6, 112(%esp)
	movl	%esi, 100(%esp)
	movl	$.LC25, 60(%esp)
	movl	$.LC59, 56(%esp)
	movl	%edi, 28(%esp)
	movl	%ebx, 12(%esp)
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	schk5_
	jmp	.L910
	.size	MAIN__, .-MAIN__
	.local	mi.6374
	.comm	mi.6374,4,4
	.local	ic.6373
	.comm	ic.6373,4,4
	.local	i.6372
	.comm	i.6372,4,4
	.section	.rodata
	.type	ich.4771, @object
	.size	ich.4771, 2
ich.4771:
	.ascii	"UL"
	.type	ich.4286, @object
	.size	ich.4286, 2
ich.4286:
	.ascii	"UL"
	.type	ichu.3209, @object
	.size	ichu.3209, 2
ichu.3209:
	.ascii	"UL"
	.type	icht.3208, @object
	.size	icht.3208, 3
icht.3208:
	.ascii	"NTC"
	.type	ichd.3207, @object
	.size	ichd.3207, 2
ichd.3207:
	.ascii	"UN"
	.type	ich.2668, @object
	.size	ich.2668, 2
ich.2668:
	.ascii	"UL"
	.type	ich.2087, @object
	.size	ich.2087, 3
ich.2087:
	.ascii	"NTC"
	.align 32
	.type	options.0.1574, @object
	.size	options.0.1574, 32
options.0.1574:
	.long	68
	.long	255
	.long	0
	.long	0
	.long	0
	.long	1
	.long	0
	.long	1
	.data
	.align 32
	.type	snames.1550, @object
	.size	snames.1550, 96
snames.1550:
	.ascii	"SGEMV "
	.ascii	"SGBMV "
	.ascii	"SSYMV "
	.ascii	"SSBMV "
	.ascii	"SSPMV "
	.ascii	"STRMV "
	.ascii	"STBMV "
	.ascii	"STPMV "
	.ascii	"STRSV "
	.ascii	"STBSV "
	.ascii	"STPSV "
	.ascii	"SGER  "
	.ascii	"SSYR  "
	.ascii	"SSPR  "
	.ascii	"SSYR2 "
	.ascii	"SSPR2 "
	.comm	infoc_,16,16
	.comm	srnamc_,6,16
	.section	.rodata.cst4,"aM",@progbits,4
	.align 4
.LC1:
	.long	1148862464
	.ident	"GCC: (Debian 4.4.5-8) 4.4.5"
	.section	.note.GNU-stack,"",@progbits
