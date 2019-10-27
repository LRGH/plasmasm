	.file	"crc32.c"
	.text
	.globl	crc32
	.type	crc32, @function
crc32:
	pushl     %ebp
	movl      %esp, %ebp
	movl      12(%ebp), %edx
	testl     %edx, %edx
	je        .L00000010
.L0000000A:
	leave     
	jmp       .L00000014
.L0000000D:
	.p2align 3
.L00000010:
	xorl      %eax, %eax
	leave     
	ret       
	.size	crc32, .-crc32
# ----------------------
	.local	crc32_little
	.type	crc32_little, @function
crc32_little:
.L00000014:
	pushl     %ebp
	movl      %esp, %ebp
	pushl     %edi
	pushl     %esi
	movl      16(%ebp), %edi
	pushl     %ebx
	testl     %edi, %edi
	movl      8(%ebp), %ebx
	movl      12(%ebp), %edx
	notl      %ebx
	je        .L00000051
.L00000029:
	testl     $3, %edx
	je        .L00000051
.L00000031:
	movl      $crc_table, %ecx
	.p2align 3
.L00000038:
	movb      (%edx), %al
	xorl      %ebx, %eax
	movzbl    %al, %esi
	shrl      $8, %ebx
	xorl      (%ecx,%esi,4), %ebx
	incl      %edx
	decl      %edi
	je        .L00000051
.L00000049:
	testl     $3, %edx
	jne       .L00000038
.L00000051:
	cmpl      $31, %edi
	movl      %edx, %esi
	jbe       .L00000208
.L0000005C:
	xorl      (%esi), %ebx
	movzbl    %bh, %eax
	movzbl    %bl, %ecx
	movl      crc_table+2048(,%eax,4), %edx
	shrl      $16, %ebx
	xorl      crc_table+3072(,%ecx,4), %edx
	movzbl    %bl, %ecx
	xorl      crc_table+1024(,%ecx,4), %edx
	movl      %ebx, %ecx
	shrl      $8, %ecx
	movl      %edx, %ebx
	addl      $4, %esi
	xorl      crc_table(,%ecx,4), %ebx
	xorl      (%esi), %ebx
	movzbl    %bh, %eax
	movzbl    %bl, %ecx
	movl      crc_table+2048(,%eax,4), %edx
	shrl      $16, %ebx
	xorl      crc_table+3072(,%ecx,4), %edx
	movzbl    %bl, %ecx
	xorl      crc_table+1024(,%ecx,4), %edx
	movl      %ebx, %ecx
	shrl      $8, %ecx
	movl      %edx, %ebx
	addl      $4, %esi
	xorl      crc_table(,%ecx,4), %ebx
	xorl      (%esi), %ebx
	movzbl    %bh, %eax
	movzbl    %bl, %ecx
	movl      crc_table+2048(,%eax,4), %edx
	shrl      $16, %ebx
	xorl      crc_table+3072(,%ecx,4), %edx
	movzbl    %bl, %ecx
	xorl      crc_table+1024(,%ecx,4), %edx
	movl      %ebx, %ecx
	shrl      $8, %ecx
	movl      %edx, %ebx
	addl      $4, %esi
	xorl      crc_table(,%ecx,4), %ebx
	xorl      (%esi), %ebx
	movzbl    %bh, %eax
	movzbl    %bl, %ecx
	movl      crc_table+2048(,%eax,4), %edx
	shrl      $16, %ebx
	xorl      crc_table+3072(,%ecx,4), %edx
	movzbl    %bl, %ecx
	addl      $4, %esi
	xorl      crc_table+1024(,%ecx,4), %edx
	movl      %ebx, %ecx
	shrl      $8, %ecx
	movl      %edx, %ebx
	xorl      crc_table(,%ecx,4), %ebx
	xorl      (%esi), %ebx
	movzbl    %bh, %eax
	movzbl    %bl, %ecx
	movl      crc_table+2048(,%eax,4), %edx
	shrl      $16, %ebx
	xorl      crc_table+3072(,%ecx,4), %edx
	movzbl    %bl, %ecx
	xorl      crc_table+1024(,%ecx,4), %edx
	movl      %ebx, %ecx
	shrl      $8, %ecx
	movl      %edx, %ebx
	addl      $4, %esi
	xorl      crc_table(,%ecx,4), %ebx
	xorl      (%esi), %ebx
	movzbl    %bh, %eax
	movzbl    %bl, %ecx
	movl      crc_table+2048(,%eax,4), %edx
	shrl      $16, %ebx
	xorl      crc_table+3072(,%ecx,4), %edx
	movzbl    %bl, %ecx
	xorl      crc_table+1024(,%ecx,4), %edx
	movl      %ebx, %ecx
	shrl      $8, %ecx
	movl      %edx, %ebx
	addl      $4, %esi
	xorl      crc_table(,%ecx,4), %ebx
	xorl      (%esi), %ebx
	movzbl    %bh, %eax
	movzbl    %bl, %ecx
	movl      crc_table+2048(,%eax,4), %edx
	shrl      $16, %ebx
	xorl      crc_table+3072(,%ecx,4), %edx
	movzbl    %bl, %ecx
	xorl      crc_table+1024(,%ecx,4), %edx
	movl      %ebx, %ecx
	shrl      $8, %ecx
	movl      %edx, %ebx
	addl      $4, %esi
	xorl      crc_table(,%ecx,4), %ebx
	xorl      (%esi), %ebx
	movzbl    %bh, %eax
	movzbl    %bl, %ecx
	movl      crc_table+2048(,%eax,4), %edx
	addl      $4, %esi
	xorl      crc_table+3072(,%ecx,4), %edx
	shrl      $16, %ebx
	movzbl    %bl, %ecx
	xorl      crc_table+1024(,%ecx,4), %edx
	movl      %ebx, %ecx
	shrl      $8, %ecx
	movl      %edx, %ebx
	subl      $32, %edi
	xorl      crc_table(,%ecx,4), %ebx
	cmpl      $31, %edi
	ja        .L0000005C
.L00000208:
	cmpl      $3, %edi
	jbe       .L0000024C
.L0000020D:
	.p2align 3
.L00000210:
	xorl      (%esi), %ebx
	movzbl    %bh, %eax
	movzbl    %bl, %ecx
	movl      crc_table+2048(,%eax,4), %edx
	shrl      $16, %ebx
	xorl      crc_table+3072(,%ecx,4), %edx
	movzbl    %bl, %ecx
	xorl      crc_table+1024(,%ecx,4), %edx
	movl      %ebx, %ecx
	shrl      $8, %ecx
	movl      %edx, %ebx
	subl      $4, %edi
	addl      $4, %esi
	xorl      crc_table(,%ecx,4), %ebx
	cmpl      $3, %edi
	ja        .L00000210
.L0000024C:
	testl     %edi, %edi
	movl      %esi, %edx
	je        .L00000269
.L00000252:
	movl      $crc_table, %ecx
	.p2align 3
.L00000258:
	movb      (%edx), %al
	xorl      %ebx, %eax
	movzbl    %al, %esi
	shrl      $8, %ebx
	xorl      (%ecx,%esi,4), %ebx
	incl      %edx
	decl      %edi
	jne       .L00000258
.L00000269:
	notl      %ebx
	movl      %ebx, %eax
	popl      %ebx
	popl      %esi
	popl      %edi
	leave     
	ret       
	.size	crc32_little, .-crc32_little
# ----------------------
.L00000272:
	.p2align 2
# ----------------------
	.local	crc32_big
	.type	crc32_big, @function
crc32_big:
	pushl     %ebp
	movl      %esp, %ebp
	pushl     %edi
	movl      8(%ebp), %ecx
	pushl     %esi
	pushl     %ebx
	movl      %ecx, %ebx
	movl      %ecx, %edx
	shrl      $8, %ebx
	andl      $65280, %ebx
	shrl      $24, %edx
	addl      %ebx, %edx
	movl      %ecx, %ebx
	andl      $65280, %ebx
	sall      $8, %ebx
	addl      %ebx, %edx
	sall      $24, %ecx
	movl      16(%ebp), %edi
	leal      (%ecx,%edx), %ebx
	testl     %edi, %edi
	movl      12(%ebp), %esi
	notl      %ebx
	je        .L000002D8
.L000002AE:
	testl     $3, %esi
	je        .L000002D8
.L000002B6:
	movl      $crc_table+4096, %ecx
	.p2align 2
.L000002BC:
	movl      %ebx, %edx
	shrl      $24, %edx
	movzbl    (%esi), %eax
	xorl      %eax, %edx
	sall      $8, %ebx
	xorl      (%ecx,%edx,4), %ebx
	incl      %esi
	decl      %edi
	je        .L000002D8
.L000002D0:
	testl     $3, %esi
	jne       .L000002BC
.L000002D8:
	subl      $4, %esi
	cmpl      $31, %edi
	jbe       .L00000490
.L000002E4:
	addl      $4, %esi
	xorl      (%esi), %ebx
	movzbl    %bh, %eax
	movzbl    %bl, %ecx
	movl      crc_table+5120(,%eax,4), %edx
	shrl      $16, %ebx
	xorl      crc_table+4096(,%ecx,4), %edx
	movzbl    %bl, %ecx
	xorl      crc_table+6144(,%ecx,4), %edx
	movl      %ebx, %ecx
	shrl      $8, %ecx
	movl      %edx, %ebx
	xorl      crc_table+7168(,%ecx,4), %ebx
	addl      $4, %esi
	xorl      (%esi), %ebx
	movzbl    %bh, %eax
	movzbl    %bl, %ecx
	movl      crc_table+5120(,%eax,4), %edx
	shrl      $16, %ebx
	xorl      crc_table+4096(,%ecx,4), %edx
	movzbl    %bl, %ecx
	xorl      crc_table+6144(,%ecx,4), %edx
	movl      %ebx, %ecx
	shrl      $8, %ecx
	movl      %edx, %ebx
	xorl      crc_table+7168(,%ecx,4), %ebx
	addl      $4, %esi
	xorl      (%esi), %ebx
	movzbl    %bh, %eax
	movzbl    %bl, %ecx
	movl      crc_table+5120(,%eax,4), %edx
	shrl      $16, %ebx
	xorl      crc_table+4096(,%ecx,4), %edx
	movzbl    %bl, %ecx
	xorl      crc_table+6144(,%ecx,4), %edx
	movl      %ebx, %ecx
	shrl      $8, %ecx
	movl      %edx, %ebx
	xorl      crc_table+7168(,%ecx,4), %ebx
	addl      $4, %esi
	xorl      (%esi), %ebx
	movzbl    %bh, %eax
	movzbl    %bl, %ecx
	movl      crc_table+5120(,%eax,4), %edx
	shrl      $16, %ebx
	xorl      crc_table+4096(,%ecx,4), %edx
	movzbl    %bl, %ecx
	xorl      crc_table+6144(,%ecx,4), %edx
	movl      %ebx, %ecx
	shrl      $8, %ecx
	movl      %edx, %ebx
	xorl      crc_table+7168(,%ecx,4), %ebx
	addl      $4, %esi
	xorl      (%esi), %ebx
	movzbl    %bh, %eax
	movzbl    %bl, %ecx
	movl      crc_table+5120(,%eax,4), %edx
	shrl      $16, %ebx
	xorl      crc_table+4096(,%ecx,4), %edx
	movzbl    %bl, %ecx
	xorl      crc_table+6144(,%ecx,4), %edx
	movl      %ebx, %ecx
	shrl      $8, %ecx
	movl      %edx, %ebx
	xorl      crc_table+7168(,%ecx,4), %ebx
	addl      $4, %esi
	xorl      (%esi), %ebx
	movzbl    %bh, %eax
	movzbl    %bl, %ecx
	movl      crc_table+5120(,%eax,4), %edx
	shrl      $16, %ebx
	xorl      crc_table+4096(,%ecx,4), %edx
	movzbl    %bl, %ecx
	xorl      crc_table+6144(,%ecx,4), %edx
	movl      %ebx, %ecx
	shrl      $8, %ecx
	movl      %edx, %ebx
	xorl      crc_table+7168(,%ecx,4), %ebx
	addl      $4, %esi
	xorl      (%esi), %ebx
	movzbl    %bh, %eax
	movzbl    %bl, %ecx
	movl      crc_table+5120(,%eax,4), %edx
	shrl      $16, %ebx
	xorl      crc_table+4096(,%ecx,4), %edx
	movzbl    %bl, %ecx
	xorl      crc_table+6144(,%ecx,4), %edx
	movl      %ebx, %ecx
	shrl      $8, %ecx
	movl      %edx, %ebx
	xorl      crc_table+7168(,%ecx,4), %ebx
	addl      $4, %esi
	xorl      (%esi), %ebx
	movzbl    %bh, %eax
	movzbl    %bl, %ecx
	movl      crc_table+5120(,%eax,4), %edx
	xorl      crc_table+4096(,%ecx,4), %edx
	shrl      $16, %ebx
	movzbl    %bl, %ecx
	xorl      crc_table+6144(,%ecx,4), %edx
	movl      %ebx, %ecx
	shrl      $8, %ecx
	movl      %edx, %ebx
	subl      $32, %edi
	xorl      crc_table+7168(,%ecx,4), %ebx
	cmpl      $31, %edi
	ja        .L000002E4
.L00000490:
	cmpl      $3, %edi
	jbe       .L000004D4
.L00000495:
	.p2align 3
.L00000498:
	addl      $4, %esi
	xorl      (%esi), %ebx
	movzbl    %bh, %eax
	movzbl    %bl, %ecx
	movl      crc_table+5120(,%eax,4), %edx
	shrl      $16, %ebx
	xorl      crc_table+4096(,%ecx,4), %edx
	movzbl    %bl, %ecx
	xorl      crc_table+6144(,%ecx,4), %edx
	movl      %ebx, %ecx
	shrl      $8, %ecx
	movl      %edx, %ebx
	subl      $4, %edi
	xorl      crc_table+7168(,%ecx,4), %ebx
	cmpl      $3, %edi
	ja        .L00000498
.L000004D4:
	addl      $4, %esi
	testl     %edi, %edi
	je        .L000004F4
.L000004DB:
	movl      $crc_table+4096, %ecx
.L000004E0:
	movl      %ebx, %edx
	shrl      $24, %edx
	movzbl    (%esi), %eax
	xorl      %eax, %edx
	sall      $8, %ebx
	xorl      (%ecx,%edx,4), %ebx
	incl      %esi
	decl      %edi
	jne       .L000004E0
.L000004F4:
	notl      %ebx
	movl      %ebx, %edi
	movl      %ebx, %eax
	movl      %ebx, %esi
	shrl      $8, %edi
	andl      $65280, %edi
	shrl      $24, %eax
	andl      $65280, %esi
	addl      %edi, %eax
	sall      $8, %esi
	addl      %esi, %eax
	sall      $24, %ebx
	addl      %ebx, %eax
	popl      %ebx
	popl      %esi
	popl      %edi
	leave     
	ret       
	.size	crc32_big, .-crc32_big
# ----------------------
.L0000051F:
	.p2align 3
# ----------------------
	.globl	get_crc_table
	.type	get_crc_table, @function
get_crc_table:
	pushl     %ebp
	movl      %esp, %ebp
	movl      $crc_table, %eax
	leave     
	ret       
	.size	get_crc_table, .-get_crc_table
# ----------------------
.L0000052A:
	.p2align 2
# ----------------------
	.globl	crc32_combine
	.type	crc32_combine, @function
crc32_combine:
	pushl     %ebp
	movl      %esp, %ebp
	subl      $8, %esp
	movl      16(%ebp), %eax
	cltd      
	pushl     %edx
	pushl     %eax
	pushl     12(%ebp)
	pushl     8(%ebp)
	call      crc32_combine_
.L00000543:
	leave     
	ret       
	.size	crc32_combine, .-crc32_combine
# ----------------------
.L00000545:
	.p2align 3
# ----------------------
	.globl	crc32_combine64
	.type	crc32_combine64, @function
crc32_combine64:
	pushl     %ebp
	movl      %esp, %ebp
	leave     
	jmp       .L00000550
	.size	crc32_combine64, .-crc32_combine64
# ----------------------
.L0000054E:
	.p2align 3
# ----------------------
	.local	crc32_combine_
	.type	crc32_combine_, @function
crc32_combine_:
.L00000550:
	pushl     %ebp
	movl      %esp, %ebp
	pushl     %edi
	pushl     %esi
	pushl     %ebx
	subl      $284, %esp
	movl      20(%ebp), %ecx
	movl      16(%ebp), %eax
	testl     %ecx, %ecx
	movl      %eax, -288(%ebp)
	movl      %ecx, -284(%ebp)
	jle       .L000006F6
.L00000576:
	movl      $-306674912, -280(%ebp)
	movl      $1, %edx
	movl      $1, %eax
.L0000058A:
	movl      %edx, -280(%ebp,%eax,4)
	incl      %eax
	sall      $1, %edx
	cmpl      $31, %eax
	jle       .L0000058A
.L00000599:
	leal      -152(%ebp), %edi
	leal      -280(%ebp), %esi
	xorl      %ebx, %ebx
.L000005A7:
	movl      (%esi,%ebx,4), %eax
	xorl      %ecx, %ecx
	testl     %eax, %eax
	movl      %esi, %edx
	je        .L000005C4
.L000005B2:
	.p2align 2
.L000005B4:
	testl     $1, %eax
	je        .L000005BD
.L000005BB:
	xorl      (%edx), %ecx
.L000005BD:
	addl      $4, %edx
	shrl      $1, %eax
	jne       .L000005B4
.L000005C4:
	movl      %ecx, (%edi,%ebx,4)
	incl      %ebx
	cmpl      $31, %ebx
	jle       .L000005A7
.L000005CD:
	xorl      %ebx, %ebx
.L000005CF:
	movl      (%edi,%ebx,4), %eax
	xorl      %ecx, %ecx
	testl     %eax, %eax
	movl      %edi, %edx
	je        .L000005EC
.L000005DA:
	.p2align 2
.L000005DC:
	testl     $1, %eax
	je        .L000005E5
.L000005E3:
	xorl      (%edx), %ecx
.L000005E5:
	addl      $4, %edx
	shrl      $1, %eax
	jne       .L000005DC
.L000005EC:
	movl      %ecx, (%esi,%ebx,4)
	incl      %ebx
	cmpl      $31, %ebx
	jle       .L000005CF
.L000005F5:
	xorl      %ebx, %ebx
	.p2align 3
.L000005F8:
	movl      (%esi,%ebx,4), %eax
	xorl      %ecx, %ecx
	testl     %eax, %eax
	movl      %esi, %edx
	je        .L00000614
.L00000603:
	.p2align 2
.L00000604:
	testl     $1, %eax
	je        .L0000060D
.L0000060B:
	xorl      (%edx), %ecx
.L0000060D:
	addl      $4, %edx
	shrl      $1, %eax
	jne       .L00000604
.L00000614:
	movl      %ecx, (%edi,%ebx,4)
	incl      %ebx
	cmpl      $31, %ebx
	jle       .L000005F8
.L0000061D:
	movl      -288(%ebp), %edx
	andl      $1, %edx
	testl     %edx, %edx
	je        .L00000648
.L0000062A:
	movl      8(%ebp), %eax
	xorl      %ecx, %ecx
	testl     %eax, %eax
	movl      %edi, %edx
	je        .L00000645
.L00000635:
	testl     $1, %eax
	je        .L0000063E
.L0000063C:
	xorl      (%edx), %ecx
.L0000063E:
	addl      $4, %edx
	shrl      $1, %eax
	jne       .L00000635
.L00000645:
	movl      %ecx, 8(%ebp)
.L00000648:
	movl      -284(%ebp), %eax
	movl      -288(%ebp), %ebx
	shrdl     $1, %eax, %ebx
	sarl      $1, %eax
	movl      %eax, -284(%ebp)
	orl       %ebx, %eax
	movl      %ebx, -288(%ebp)
	je        .L000006E2
.L0000066A:
	xorl      %ebx, %ebx
.L0000066C:
	movl      (%edi,%ebx,4), %eax
	xorl      %ecx, %ecx
	testl     %eax, %eax
	movl      %edi, %edx
	je        .L00000688
.L00000677:
	.p2align 3
.L00000678:
	testl     $1, %eax
	je        .L00000681
.L0000067F:
	xorl      (%edx), %ecx
.L00000681:
	addl      $4, %edx
	shrl      $1, %eax
	jne       .L00000678
.L00000688:
	movl      %ecx, (%esi,%ebx,4)
	incl      %ebx
	cmpl      $31, %ebx
	jle       .L0000066C
.L00000691:
	movl      -288(%ebp), %ecx
	andl      $1, %ecx
	testl     %ecx, %ecx
	je        .L000006BC
.L0000069E:
	movl      8(%ebp), %eax
	xorl      %ecx, %ecx
	testl     %eax, %eax
	movl      %esi, %edx
	je        .L000006B9
.L000006A9:
	testl     $1, %eax
	je        .L000006B2
.L000006B0:
	xorl      (%edx), %ecx
.L000006B2:
	addl      $4, %edx
	shrl      $1, %eax
	jne       .L000006A9
.L000006B9:
	movl      %ecx, 8(%ebp)
.L000006BC:
	movl      -284(%ebp), %eax
	movl      -288(%ebp), %ebx
	shrdl     $1, %eax, %ebx
	sarl      $1, %eax
	movl      %eax, -284(%ebp)
	orl       %ebx, %eax
	movl      %ebx, -288(%ebp)
	jne       .L000005F5
.L000006E2:
	movl      12(%ebp), %esi
	xorl      %esi, 8(%ebp)
.L000006E8:
	movl      8(%ebp), %eax
	addl      $284, %esp
	popl      %ebx
	popl      %esi
	popl      %edi
	leave     
	ret       
.L000006F6:
	movl      -284(%ebp), %ecx
	testl     %ecx, %ecx
	js        .L000006E8
.L00000700:
	cmpl      $0, %eax
	ja        .L00000576
.L00000709:
	jmp       .L000006E8
	.size	crc32_combine_, .-crc32_combine_
# ----------------------
	.section       .rodata
	.align 32
	.local	crc_table
	.type	crc_table, @object
crc_table:
	.long	0
	.long	1996959894
	.long	-301047508
	.long	-1727442502
	.long	124634137
	.long	1886057615
	.long	-379345611
	.long	-1637575261
	.long	249268274
	.long	2044508324
	.long	-522852066
	.long	-1747789432
	.long	162941995
	.long	2125561021
	.long	-407360249
	.long	-1866523247
	.long	498536548
	.long	1789927666
	.long	-205950648
	.long	-2067906082
	.long	450548861
	.long	1843258603
	.long	-187386543
	.long	-2083289657
	.long	325883990
	.long	1684777152
	.long	-43845254
	.long	-1973040660
	.long	335633487
	.long	1661365465
	.long	-99664541
	.long	-1928851979
	.long	997073096
	.long	1281953886
	.long	-715111964
	.long	-1570279054
	.long	1006888145
	.long	1258607687
	.long	-770865667
	.long	-1526024853
	.long	901097722
	.long	1119000684
	.long	-608450090
	.long	-1396901568
	.long	853044451
	.long	1172266101
	.long	-589951537
	.long	-1412350631
	.long	651767980
	.long	1373503546
	.long	-925412992
	.long	-1076862698
	.long	565507253
	.long	1454621731
	.long	-809855591
	.long	-1195530993
	.long	671266974
	.long	1594198024
	.long	-972236366
	.long	-1324619484
	.long	795835527
	.long	1483230225
	.long	-1050600021
	.long	-1234817731
	.long	1994146192
	.long	31158534
	.long	-1731059524
	.long	-271249366
	.long	1907459465
	.long	112637215
	.long	-1614814043
	.long	-390540237
	.long	2013776290
	.long	251722036
	.long	-1777751922
	.long	-519137256
	.long	2137656763
	.long	141376813
	.long	-1855689577
	.long	-429695999
	.long	1802195444
	.long	476864866
	.long	-2056965928
	.long	-228458418
	.long	1812370925
	.long	453092731
	.long	-2113342271
	.long	-183516073
	.long	1706088902
	.long	314042704
	.long	-1950435094
	.long	-54949764
	.long	1658658271
	.long	366619977
	.long	-1932296973
	.long	-69972891
	.long	1303535960
	.long	984961486
	.long	-1547960204
	.long	-725929758
	.long	1256170817
	.long	1037604311
	.long	-1529756563
	.long	-740887301
	.long	1131014506
	.long	879679996
	.long	-1385723834
	.long	-631195440
	.long	1141124467
	.long	855842277
	.long	-1442165665
	.long	-586318647
	.long	1342533948
	.long	654459306
	.long	-1106571248
	.long	-921952122
	.long	1466479909
	.long	544179635
	.long	-1184443383
	.long	-832445281
	.long	1591671054
	.long	702138776
	.long	-1328506846
	.long	-942167884
	.long	1504918807
	.long	783551873
	.long	-1212326853
	.long	-1061524307
	.long	-306674912
	.long	-1698712650
	.long	62317068
	.long	1957810842
	.long	-355121351
	.long	-1647151185
	.long	81470997
	.long	1943803523
	.long	-480048366
	.long	-1805370492
	.long	225274430
	.long	2053790376
	.long	-468791541
	.long	-1828061283
	.long	167816743
	.long	2097651377
	.long	-267414716
	.long	-2029476910
	.long	503444072
	.long	1762050814
	.long	-144550051
	.long	-2140837941
	.long	426522225
	.long	1852507879
	.long	-19653770
	.long	-1982649376
	.long	282753626
	.long	1742555852
	.long	-105259153
	.long	-1900089351
	.long	397917763
	.long	1622183637
	.long	-690576408
	.long	-1580100738
	.long	953729732
	.long	1340076626
	.long	-776247311
	.long	-1497606297
	.long	1068828381
	.long	1219638859
	.long	-670225446
	.long	-1358292148
	.long	906185462
	.long	1090812512
	.long	-547295293
	.long	-1469587627
	.long	829329135
	.long	1181335161
	.long	-882789492
	.long	-1134132454
	.long	628085408
	.long	1382605366
	.long	-871598187
	.long	-1156888829
	.long	570562233
	.long	1426400815
	.long	-977650754
	.long	-1296233688
	.long	733239954
	.long	1555261956
	.long	-1026031705
	.long	-1244606671
	.long	752459403
	.long	1541320221
	.long	-1687895376
	.long	-328994266
	.long	1969922972
	.long	40735498
	.long	-1677130071
	.long	-351390145
	.long	1913087877
	.long	83908371
	.long	-1782625662
	.long	-491226604
	.long	2075208622
	.long	213261112
	.long	-1831694693
	.long	-438977011
	.long	2094854071
	.long	198958881
	.long	-2032938284
	.long	-237706686
	.long	1759359992
	.long	534414190
	.long	-2118248755
	.long	-155638181
	.long	1873836001
	.long	414664567
	.long	-2012718362
	.long	-15766928
	.long	1711684554
	.long	285281116
	.long	-1889165569
	.long	-127750551
	.long	1634467795
	.long	376229701
	.long	-1609899400
	.long	-686959890
	.long	1308918612
	.long	956543938
	.long	-1486412191
	.long	-799009033
	.long	1231636301
	.long	1047427035
	.long	-1362007478
	.long	-640263460
	.long	1088359270
	.long	936918000
	.long	-1447252397
	.long	-558129467
	.long	1202900863
	.long	817233897
	.long	-1111625188
	.long	-893730166
	.long	1404277552
	.long	615818150
	.long	-1160759803
	.long	-841546093
	.long	1423857449
	.long	601450431
	.long	-1285129682
	.long	-1000256840
	.long	1567103746
	.long	711928724
	.long	-1274298825
	.long	-1022587231
	.long	1510334235
	.long	755167117
	.long	0
	.long	421212481
	.long	842424962
	.long	724390851
	.long	1684849924
	.long	2105013317
	.long	1448781702
	.long	1329698503
	.long	-925267448
	.long	-775767223
	.long	-84940662
	.long	-470492725
	.long	-1397403892
	.long	-1246855603
	.long	-1635570290
	.long	-2020074289
	.long	1254232657
	.long	1406739216
	.long	2029285587
	.long	1643069842
	.long	783210325
	.long	934667796
	.long	479770071
	.long	92505238
	.long	-2112120743
	.long	-1694455528
	.long	-1339163941
	.long	-1456026726
	.long	-428384931
	.long	-9671652
	.long	-733921313
	.long	-849736034
	.long	-1786501982
	.long	-1935731229
	.long	-1481488864
	.long	-1096190111
	.long	-236396122
	.long	-386674457
	.long	-1008827612
	.long	-624577947
	.long	1566420650
	.long	1145479147
	.long	1869335592
	.long	1987116393
	.long	959540142
	.long	539646703
	.long	185010476
	.long	303839341
	.long	-549046541
	.long	-966981710
	.long	-311405455
	.long	-194288336
	.long	-1154812937
	.long	-1573797194
	.long	-1994616459
	.long	-1878548428
	.long	396344571
	.long	243568058
	.long	631889529
	.long	1018359608
	.long	1945336319
	.long	1793607870
	.long	1103436669
	.long	1490954812
	.long	-260485371
	.long	-379421116
	.long	-1034998393
	.long	-615244602
	.long	-1810527743
	.long	-1928414400
	.long	-1507596157
	.long	-1086793278
	.long	950060301
	.long	565965900
	.long	177645455
	.long	328046286
	.long	1556873225
	.long	1171730760
	.long	1861902987
	.long	2011255754
	.long	-1162125996
	.long	-1549767659
	.long	-2004009002
	.long	-1852436841
	.long	-556296112
	.long	-942888687
	.long	-320734510
	.long	-168113261
	.long	1919080284
	.long	1803150877
	.long	1079293406
	.long	1498383519
	.long	370020952
	.long	253043481
	.long	607678682
	.long	1025720731
	.long	1711106983
	.long	2095471334
	.long	1472923941
	.long	1322268772
	.long	26324643
	.long	411738082
	.long	866634785
	.long	717028704
	.long	-1390091857
	.long	-1270886162
	.long	-1626176723
	.long	-2046184852
	.long	-918018901
	.long	-799861270
	.long	-75610583
	.long	-496666776
	.long	792689142
	.long	908347575
	.long	487136116
	.long	68299317
	.long	1263779058
	.long	1380486579
	.long	2036719216
	.long	1618931505
	.long	-404294658
	.long	-16923969
	.long	-707751556
	.long	-859070403
	.long	-2088093958
	.long	-1701771333
	.long	-1313057672
	.long	-1465424583
	.long	998479947
	.long	580430090
	.long	162921161
	.long	279890824
	.long	1609522511
	.long	1190423566
	.long	1842954189
	.long	1958874764
	.long	-212200893
	.long	-364829950
	.long	-1049857855
	.long	-663273088
	.long	-1758013625
	.long	-1909594618
	.long	-1526680123
	.long	-1139047292
	.long	1900120602
	.long	1750776667
	.long	1131931800
	.long	1517083097
	.long	355290910
	.long	204897887
	.long	656092572
	.long	1040194781
	.long	-1181220846
	.long	-1602014893
	.long	-1951505776
	.long	-1833610287
	.long	-571161322
	.long	-990907305
	.long	-272455788
	.long	-153512235
	.long	-1375224599
	.long	-1222865496
	.long	-1674453397
	.long	-2060783830
	.long	-898926099
	.long	-747616084
	.long	-128115857
	.long	-515495378
	.long	1725839073
	.long	2143618976
	.long	1424512099
	.long	1307796770
	.long	45282277
	.long	464110244
	.long	813994343
	.long	698327078
	.long	-456806728
	.long	-35741703
	.long	-688665542
	.long	-806814341
	.long	-2136380484
	.long	-1716364547
	.long	-1298200258
	.long	-1417398145
	.long	740041904
	.long	889656817
	.long	506086962
	.long	120682355
	.long	1215357364
	.long	1366020341
	.long	2051441462
	.long	1667084919
	.long	-872753330
	.long	-756947441
	.long	-104024628
	.long	-522746739
	.long	-1349119414
	.long	-1232264437
	.long	-1650429752
	.long	-2068102775
	.long	52649286
	.long	439905287
	.long	823476164
	.long	672009861
	.long	1733269570
	.long	2119477507
	.long	1434057408
	.long	1281543041
	.long	-2126985953
	.long	-1742474146
	.long	-1290885219
	.long	-1441425700
	.long	-447479781
	.long	-61918886
	.long	-681418087
	.long	-830909480
	.long	1239502615
	.long	1358593622
	.long	2077699477
	.long	1657543892
	.long	764250643
	.long	882293586
	.long	532408465
	.long	111204816
	.long	1585378284
	.long	1197851309
	.long	1816695150
	.long	1968414767
	.long	974272232
	.long	587794345
	.long	136598634
	.long	289367339
	.long	-1767409180
	.long	-1883486043
	.long	-1533994138
	.long	-1115018713
	.long	-221528864
	.long	-338653791
	.long	-1057104286
	.long	-639176925
	.long	347922877
	.long	229101820
	.long	646611775
	.long	1066513022
	.long	1892689081
	.long	1774917112
	.long	1122387515
	.long	1543337850
	.long	-597333067
	.long	-981574924
	.long	-296548041
	.long	-146261898
	.long	-1207325007
	.long	-1592614928
	.long	-1975530445
	.long	-1826292366
	.long	0
	.long	29518391
	.long	59036782
	.long	38190681
	.long	118073564
	.long	114017003
	.long	76381362
	.long	89069189
	.long	236147128
	.long	265370511
	.long	228034006
	.long	206958561
	.long	152762724
	.long	148411219
	.long	178138378
	.long	190596925
	.long	472294256
	.long	501532999
	.long	530741022
	.long	509615401
	.long	456068012
	.long	451764635
	.long	413917122
	.long	426358261
	.long	305525448
	.long	334993663
	.long	296822438
	.long	275991697
	.long	356276756
	.long	352202787
	.long	381193850
	.long	393929805
	.long	944588512
	.long	965684439
	.long	1003065998
	.long	973863097
	.long	1061482044
	.long	1049003019
	.long	1019230802
	.long	1023561829
	.long	912136024
	.long	933002607
	.long	903529270
	.long	874031361
	.long	827834244
	.long	815125939
	.long	852716522
	.long	856752605
	.long	611050896
	.long	631869351
	.long	669987326
	.long	640506825
	.long	593644876
	.long	580921211
	.long	551983394
	.long	556069653
	.long	712553512
	.long	733666847
	.long	704405574
	.long	675154545
	.long	762387700
	.long	749958851
	.long	787859610
	.long	792175277
	.long	1889177024
	.long	1901651959
	.long	1931368878
	.long	1927033753
	.long	2006131996
	.long	1985040171
	.long	1947726194
	.long	1976933189
	.long	2122964088
	.long	2135668303
	.long	2098006038
	.long	2093965857
	.long	2038461604
	.long	2017599123
	.long	2047123658
	.long	2076625661
	.long	1824272048
	.long	1836991623
	.long	1866005214
	.long	1861914857
	.long	1807058540
	.long	1786244187
	.long	1748062722
	.long	1777547317
	.long	1655668488
	.long	1668093247
	.long	1630251878
	.long	1625932113
	.long	1705433044
	.long	1684323811
	.long	1713505210
	.long	1742760333
	.long	1222101792
	.long	1226154263
	.long	1263738702
	.long	1251046777
	.long	1339974652
	.long	1310460363
	.long	1281013650
	.long	1301863845
	.long	1187289752
	.long	1191637167
	.long	1161842422
	.long	1149379777
	.long	1103966788
	.long	1074747507
	.long	1112139306
	.long	1133218845
	.long	1425107024
	.long	1429406311
	.long	1467333694
	.long	1454888457
	.long	1408811148
	.long	1379576507
	.long	1350309090
	.long	1371438805
	.long	1524775400
	.long	1528845279
	.long	1499917702
	.long	1487177649
	.long	1575719220
	.long	1546255107
	.long	1584350554
	.long	1605185389
	.long	-516613248
	.long	-520654409
	.long	-491663378
	.long	-478960167
	.long	-432229540
	.long	-402728597
	.long	-440899790
	.long	-461763323
	.long	-282703304
	.long	-287039473
	.long	-324886954
	.long	-312413087
	.long	-399514908
	.long	-370308909
	.long	-341100918
	.long	-362193731
	.long	-49039120
	.long	-53357881
	.long	-23630690
	.long	-11204951
	.long	-98955220
	.long	-69699045
	.long	-107035582
	.long	-128143755
	.long	-218044088
	.long	-222133377
	.long	-259769050
	.long	-247048431
	.long	-200719980
	.long	-171234397
	.long	-141715974
	.long	-162529331
	.long	-646423200
	.long	-658884777
	.long	-620984050
	.long	-616635591
	.long	-562956868
	.long	-541876341
	.long	-571137582
	.long	-600355867
	.long	-680850216
	.long	-693541137
	.long	-722478922
	.long	-718425471
	.long	-798841852
	.long	-777990605
	.long	-739872662
	.long	-769385891
	.long	-983630320
	.long	-996371417
	.long	-958780802
	.long	-954711991
	.long	-1034463540
	.long	-1013629701
	.long	-1043103070
	.long	-1072568171
	.long	-884101208
	.long	-896547425
	.long	-926319674
	.long	-922021391
	.long	-867956876
	.long	-846828221
	.long	-809446630
	.long	-838682323
	.long	-1850763712
	.long	-1871840137
	.long	-1842658770
	.long	-1813436391
	.long	-1767489892
	.long	-1755032405
	.long	-1792873742
	.long	-1797226299
	.long	-1615017992
	.long	-1635865137
	.long	-1674046570
	.long	-1644529247
	.long	-1732939996
	.long	-1720253165
	.long	-1691239606
	.long	-1695297155
	.long	-1920387792
	.long	-1941217529
	.long	-1911692962
	.long	-1882223767
	.long	-1971282452
	.long	-1958545445
	.long	-1996207742
	.long	-2000280651
	.long	-2087033720
	.long	-2108158273
	.long	-2145472282
	.long	-2116232495
	.long	-2070688684
	.long	-2058246557
	.long	-2028529606
	.long	-2032831987
	.long	-1444753248
	.long	-1474250089
	.long	-1436154674
	.long	-1415287047
	.long	-1360299908
	.long	-1356262837
	.long	-1385190382
	.long	-1397897691
	.long	-1477345000
	.long	-1506546897
	.long	-1535814282
	.long	-1514717375
	.long	-1594349116
	.long	-1590017037
	.long	-1552089686
	.long	-1564567651
	.long	-1245416496
	.long	-1274668569
	.long	-1237276738
	.long	-1216164471
	.long	-1295131892
	.long	-1290817221
	.long	-1320611998
	.long	-1333041835
	.long	-1143528856
	.long	-1173010337
	.long	-1202457082
	.long	-1181639631
	.long	-1126266188
	.long	-1122180989
	.long	-1084596518
	.long	-1097321235
	.long	0
	.long	-1195612315
	.long	-1442199413
	.long	313896942
	.long	-1889364137
	.long	937357362
	.long	627793884
	.long	-1646839623
	.long	-978048785
	.long	2097696650
	.long	1874714724
	.long	-687765759
	.long	1255587768
	.long	-227878691
	.long	-522225869
	.long	1482887254
	.long	1343838111
	.long	-391827206
	.long	-99573996
	.long	1118632049
	.long	-545537848
	.long	1741137837
	.long	1970407491
	.long	-842109146
	.long	-1783791760
	.long	756094997
	.long	1067759611
	.long	-2028416866
	.long	449832999
	.long	-1569484990
	.long	-1329192788
	.long	142231497
	.long	-1607291074
	.long	412010587
	.long	171665333
	.long	-1299775280
	.long	793786473
	.long	-1746116852
	.long	-2057703198
	.long	1038456711
	.long	1703315409
	.long	-583343948
	.long	-812691622
	.long	1999841343
	.long	-354152314
	.long	1381529571
	.long	1089329165
	.long	-128860312
	.long	-265553759
	.long	1217896388
	.long	1512189994
	.long	-492939441
	.long	2135519222
	.long	-940242797
	.long	-717183107
	.long	1845280792
	.long	899665998
	.long	-1927039189
	.long	-1617553211
	.long	657096608
	.long	-1157806311
	.long	37822588
	.long	284462994
	.long	-1471616777
	.long	-1693165507
	.long	598228824
	.long	824021174
	.long	-1985873965
	.long	343330666
	.long	-1396004849
	.long	-1098971167
	.long	113467524
	.long	1587572946
	.long	-434366537
	.long	-190203815
	.long	1276501820
	.long	-775755899
	.long	1769898208
	.long	2076913422
	.long	-1015592853
	.long	-888336478
	.long	1941006535
	.long	1627703081
	.long	-642211764
	.long	1148164341
	.long	-53215344
	.long	-295284610
	.long	1457141531
	.long	247015245
	.long	-1241169880
	.long	-1531908154
	.long	470583459
	.long	-2116308966
	.long	963106687
	.long	735213713
	.long	-1821499404
	.long	992409347
	.long	-2087022490
	.long	-1859174520
	.long	697522413
	.long	-1270587308
	.long	217581361
	.long	508405983
	.long	-1494102086
	.long	-23928852
	.long	1177467017
	.long	1419450215
	.long	-332959742
	.long	1911572667
	.long	-917753890
	.long	-604405712
	.long	1665525589
	.long	1799331996
	.long	-746338311
	.long	-1053399017
	.long	2039091058
	.long	-463652917
	.long	1558270126
	.long	1314193216
	.long	-152528859
	.long	-1366587277
	.long	372764438
	.long	75645176
	.long	-1136777315
	.long	568925988
	.long	-1722451903
	.long	-1948198993
	.long	861712586
	.long	-312887749
	.long	1441124702
	.long	1196457648
	.long	-1304107
	.long	1648042348
	.long	-628668919
	.long	-936187417
	.long	1888390786
	.long	686661332
	.long	-1873675855
	.long	-2098964897
	.long	978858298
	.long	-1483798141
	.long	523464422
	.long	226935048
	.long	-1254447507
	.long	-1119821404
	.long	100435649
	.long	390670639
	.long	-1342878134
	.long	841119475
	.long	-1969352298
	.long	-1741963656
	.long	546822429
	.long	2029308235
	.long	-1068978642
	.long	-755170880
	.long	1782671013
	.long	-141140452
	.long	1328167289
	.long	1570739863
	.long	-450629134
	.long	1298864389
	.long	-170426784
	.long	-412954226
	.long	1608431339
	.long	-1039561134
	.long	2058742071
	.long	1744848601
	.long	-792976964
	.long	-1998638614
	.long	811816591
	.long	584513889
	.long	-1704288764
	.long	129869501
	.long	-1090403880
	.long	-1380684234
	.long	352848211
	.long	494030490
	.long	-1513215489
	.long	-1216641519
	.long	264757620
	.long	-1844389427
	.long	715964072
	.long	941166918
	.long	-2136639965
	.long	-658086283
	.long	1618608400
	.long	1926213374
	.long	-898381413
	.long	1470427426
	.long	-283601337
	.long	-38979159
	.long	1158766284
	.long	1984818694
	.long	-823031453
	.long	-599513459
	.long	1693991400
	.long	-114329263
	.long	1100160564
	.long	1395044826
	.long	-342174017
	.long	-1275476247
	.long	189112716
	.long	435162722
	.long	-1588827897
	.long	1016811966
	.long	-2077804837
	.long	-1768777419
	.long	774831696
	.long	643086745
	.long	-1628905732
	.long	-1940033262
	.long	887166583
	.long	-1456066866
	.long	294275499
	.long	54519365
	.long	-1149009632
	.long	-471821962
	.long	1532818963
	.long	1240029693
	.long	-246071656
	.long	1820460577
	.long	-734109372
	.long	-963916118
	.long	2117577167
	.long	-696303304
	.long	1858283101
	.long	2088143283
	.long	-993333546
	.long	1495127663
	.long	-509497078
	.long	-216785180
	.long	1269332353
	.long	332098007
	.long	-1418260814
	.long	-1178427044
	.long	25085497
	.long	-1666580864
	.long	605395429
	.long	916469259
	.long	-1910746770
	.long	-2040129881
	.long	1054503362
	.long	745528876
	.long	-1798063799
	.long	151290352
	.long	-1313282411
	.long	-1559410309
	.long	464596510
	.long	1137851976
	.long	-76654291
	.long	-371460413
	.long	1365741990
	.long	-860837601
	.long	1946996346
	.long	1723425172
	.long	-570095887
	.long	0
	.long	-1775237257
	.long	744558318
	.long	-1169094247
	.long	432303367
	.long	-1879807376
	.long	900031465
	.long	-1550490466
	.long	847829774
	.long	-1531388807
	.long	518641120
	.long	-1998990697
	.long	726447625
	.long	-1115901570
	.long	120436967
	.long	-1860321392
	.long	1678817053
	.long	-232738710
	.long	1215412723
	.long	-566116732
	.long	2111101466
	.long	-337322643
	.long	1370871028
	.long	-947530877
	.long	1452829715
	.long	-1062704284
	.long	2063164157
	.long	-322345590
	.long	1331429652
	.long	-647231901
	.long	1664946170
	.long	-183695219
	.long	-937398725
	.long	1578133836
	.long	-465477419
	.long	1920034722
	.long	-773586116
	.long	1205077067
	.long	-41611822
	.long	1807026853
	.long	-89606859
	.long	1821946434
	.long	-691422245
	.long	1090108588
	.long	-479406030
	.long	1969020741
	.long	-821176612
	.long	1497223595
	.long	-1406084826
	.long	973135441
	.long	-2142119992
	.long	375509183
	.long	-1242254303
	.long	600093526
	.long	-1718240561
	.long	262520248
	.long	-1632107992
	.long	143131999
	.long	-1294398266
	.long	619252657
	.long	-2021888209
	.long	290220120
	.long	-1424137791
	.long	1026385590
	.long	-1874731914
	.long	108124929
	.long	-1138699624
	.long	705746415
	.long	-1987726991
	.long	532002310
	.long	-1511735393
	.long	869578984
	.long	-1563883656
	.long	888733711
	.long	-1901590122
	.long	412618465
	.long	-1156748673
	.long	759000328
	.long	-1754504047
	.long	22832102
	.long	-195990677
	.long	1650551836
	.long	-667916923
	.long	1308648178
	.long	-309000596
	.long	2074411291
	.long	-1040971646
	.long	1472466933
	.long	-958812059
	.long	1357494034
	.long	-356991349
	.long	2089335292
	.long	-551690910
	.long	1227741717
	.long	-209923188
	.long	1699534075
	.long	1482797645
	.long	-833505990
	.long	1946205347
	.long	-500122668
	.long	1101389642
	.long	-678045635
	.long	1841615268
	.long	-67840301
	.long	1793681731
	.long	-52859340
	.long	1183344557
	.long	-793222950
	.long	1932330052
	.long	-451083469
	.long	1598818986
	.long	-914616867
	.long	1014039888
	.long	-1438580185
	.long	269487038
	.long	-2044719927
	.long	632645719
	.long	-1283100896
	.long	164914873
	.long	-1612422706
	.long	251256414
	.long	-1731602135
	.long	580440240
	.long	-1264003129
	.long	389919577
	.long	-2129808338
	.long	995933623
	.long	-1385383232
	.long	545503469
	.long	-1229733990
	.long	216184323
	.long	-1697468044
	.long	961009130
	.long	-1351101795
	.long	354867972
	.long	-2095653773
	.long	302736355
	.long	-2076482412
	.long	1047162125
	.long	-1470469510
	.long	198119140
	.long	-1644230253
	.long	665714698
	.long	-1315043459
	.long	1150488560
	.long	-761067385
	.long	1760690462
	.long	-20838807
	.long	1566008055
	.long	-882416256
	.long	1899392025
	.long	-419009682
	.long	1981535486
	.long	-533998711
	.long	1518000656
	.long	-867508889
	.long	1876933113
	.long	-101728626
	.long	1136572183
	.long	-712069024
	.long	-391915818
	.long	2123616673
	.long	-993863624
	.long	1391648591
	.long	-244859951
	.long	1733803174
	.long	-586762945
	.long	1261875784
	.long	-634712616
	.long	1276840623
	.long	-162921674
	.long	1618609217
	.long	-1007722273
	.long	1440704424
	.long	-275878351
	.long	2042521926
	.long	-1934401077
	.long	444819132
	.long	-1596821723
	.long	920807506
	.long	-1787360052
	.long	54987707
	.long	-1189739998
	.long	791020885
	.long	-1103381819
	.long	671858098
	.long	-1839549397
	.long	74101596
	.long	-1476405310
	.long	835702965
	.long	-1952523988
	.long	497999451
	.long	-1329437541
	.long	653419500
	.long	-1667011979
	.long	177433858
	.long	-1459222116
	.long	1060507371
	.long	-2056845454
	.long	324468741
	.long	-2109030507
	.long	343587042
	.long	-1372868229
	.long	941340172
	.long	-1685138798
	.long	230610405
	.long	-1209017220
	.long	568318731
	.long	-724380794
	.long	1122161905
	.long	-122430104
	.long	1854134815
	.long	-854147455
	.long	1529264630
	.long	-512249745
	.long	2001188632
	.long	-430307192
	.long	1885999103
	.long	-902101402
	.long	1544225041
	.long	-6396529
	.long	1773036280
	.long	-738235551
	.long	1171221526
	.long	2028079776
	.long	-288223785
	.long	1417872462
	.long	-1028455623
	.long	1629906855
	.long	-149528368
	.long	1296525641
	.long	-612929986
	.long	1248514478
	.long	-598026535
	.long	1712054080
	.long	-264513481
	.long	1403960489
	.long	-979452962
	.long	2144318023
	.long	-369117904
	.long	485670333
	.long	-1966949686
	.long	814986067
	.long	-1499220956
	.long	87478458
	.long	-1828268083
	.long	693624404
	.long	-1083713245
	.long	779773619
	.long	-1203084860
	.long	35350621
	.long	-1809092822
	.long	935201716
	.long	-1584526141
	.long	467600730
	.long	-1913716179
	.long	0
	.long	1093737241
	.long	-2107492814
	.long	-1017959125
	.long	80047204
	.long	1173649277
	.long	-2035852714
	.long	-946454193
	.long	143317448
	.long	1237041873
	.long	-1964445702
	.long	-874908445
	.long	206550444
	.long	1300147893
	.long	-1909619810
	.long	-820209529
	.long	1360183882
	.long	270784851
	.long	-747572104
	.long	-1841172639
	.long	1440198190
	.long	350663991
	.long	-675964900
	.long	-1769700603
	.long	1503140738
	.long	413728923
	.long	-604361296
	.long	-1697958231
	.long	1566406630
	.long	476867839
	.long	-549502508
	.long	-1643226419
	.long	-1574665067
	.long	-485122164
	.long	541504167
	.long	1635232190
	.long	-1495144207
	.long	-405736472
	.long	612622019
	.long	1706214874
	.long	-1431413411
	.long	-341883324
	.long	684485487
	.long	1778217078
	.long	-1368706759
	.long	-279303648
	.long	738789131
	.long	1832393746
	.long	-214546721
	.long	-1308140090
	.long	1901359341
	.long	811953140
	.long	-135058757
	.long	-1228787294
	.long	1972444297
	.long	882902928
	.long	-71524585
	.long	-1165130738
	.long	2044635429
	.long	955232828
	.long	-8785037
	.long	-1102518166
	.long	2098971969
	.long	1009442392
	.long	89094640
	.long	1149133545
	.long	-2027073598
	.long	-971221797
	.long	25826708
	.long	1086000781
	.long	-2081938522
	.long	-1025951553
	.long	231055416
	.long	1291107105
	.long	-1884842486
	.long	-828994285
	.long	151047260
	.long	1211225925
	.long	-1956447634
	.long	-900472457
	.long	1415429050
	.long	359440547
	.long	-700478072
	.long	-1760651631
	.long	1352194014
	.long	296340679
	.long	-755310100
	.long	-1815348491
	.long	1557619314
	.long	501643627
	.long	-558541760
	.long	-1618718887
	.long	1477578262
	.long	421729551
	.long	-630179804
	.long	-1690229955
	.long	-1486095003
	.long	-430250372
	.long	621398871
	.long	1681444942
	.long	-1548840703
	.long	-492860904
	.long	567060275
	.long	1627241514
	.long	-1344199507
	.long	-288342092
	.long	763564703
	.long	1823607174
	.long	-1423685431
	.long	-367701040
	.long	692485883
	.long	1752655330
	.long	-159826129
	.long	-1220008906
	.long	1947928861
	.long	891949572
	.long	-222538933
	.long	-1282586542
	.long	1893623161
	.long	837779040
	.long	-17570073
	.long	-1077740034
	.long	2089930965
	.long	1033948108
	.long	-97088893
	.long	-1157131878
	.long	2018819249
	.long	962963368
	.long	1268286267
	.long	178886690
	.long	-906316535
	.long	-1999917552
	.long	1331556191
	.long	242021446
	.long	-851453587
	.long	-1945189772
	.long	1125276403
	.long	35865066
	.long	-1049596735
	.long	-2143193128
	.long	1205286551
	.long	115748238
	.long	-977993563
	.long	-2071716932
	.long	445268337
	.long	1539005032
	.long	-1729595581
	.long	-640062374
	.long	508505365
	.long	1602106892
	.long	-1674765529
	.long	-585367490
	.long	302028985
	.long	1395753888
	.long	-1872580981
	.long	-783043182
	.long	382072029
	.long	1475669956
	.long	-1800944913
	.long	-711534090
	.long	-373553234
	.long	-1467147081
	.long	1809723804
	.long	720317061
	.long	-310809654
	.long	-1404538669
	.long	1864064504
	.long	774522593
	.long	-516497818
	.long	-1610103425
	.long	1666508884
	.long	577106765
	.long	-437014014
	.long	-1530746597
	.long	1737589808
	.long	648060713
	.long	-1196505628
	.long	-106963203
	.long	986510294
	.long	2080237775
	.long	-1133794944
	.long	-44387687
	.long	1040818098
	.long	2134410411
	.long	-1339810772
	.long	-250280139
	.long	843459102
	.long	1937191175
	.long	-1260294072
	.long	-170890415
	.long	914572922
	.long	2008178019
	.long	1322777291
	.long	266789330
	.long	-860500743
	.long	-1920673824
	.long	1242732207
	.long	186879414
	.long	-932142947
	.long	-1992180860
	.long	1180508931
	.long	124532762
	.long	-1002498767
	.long	-2062676440
	.long	1117278055
	.long	61428862
	.long	-1057326763
	.long	-2117377460
	.long	533018753
	.long	1593058200
	.long	-1649996109
	.long	-594143830
	.long	453006565
	.long	1513181180
	.long	-1721605417
	.long	-665617970
	.long	391110985
	.long	1451162192
	.long	-1792157829
	.long	-736310174
	.long	327847213
	.long	1388025396
	.long	-1847018721
	.long	-791044090
	.long	-319586722
	.long	-1379769017
	.long	1855015020
	.long	799036277
	.long	-399109574
	.long	-1459156701
	.long	1783899144
	.long	728055569
	.long	-461789290
	.long	-1521959793
	.long	1713082788
	.long	657099453
	.long	-524497934
	.long	-1584541461
	.long	1658781120
	.long	602924761
	.long	-1109279724
	.long	-53434611
	.long	1065585190
	.long	2125631807
	.long	-1188769680
	.long	-132789399
	.long	994502210
	.long	2054683995
	.long	-1251252772
	.long	-195395899
	.long	923358190
	.long	1983400183
	.long	-1313994312
	.long	-258010463
	.long	869023626
	.long	1929192595
	.long	0
	.long	929743361
	.long	1859421187
	.long	1505641986
	.long	-592967417
	.long	-339555578
	.long	-1300460284
	.long	-2062135547
	.long	-1202646258
	.long	-1891905265
	.long	-695888115
	.long	-504408820
	.long	1694046729
	.long	1402198024
	.long	170761738
	.long	1028086795
	.long	1889740316
	.long	1204413469
	.long	511156767
	.long	689791006
	.long	-1408553189
	.long	-1688081126
	.long	-1025529064
	.long	-172660455
	.long	-923650798
	.long	-6752493
	.long	-1507413743
	.long	-1857260784
	.long	341457941
	.long	590413332
	.long	2056173590
	.long	1306819095
	.long	-532263624
	.long	-684945607
	.long	-1902982853
	.long	-1174926534
	.long	1022247999
	.long	193234494
	.long	1379582012
	.long	1699742269
	.long	1477926454
	.long	1870502967
	.long	918805045
	.long	27858996
	.long	-2067835087
	.long	-1277848272
	.long	-362032334
	.long	-587132621
	.long	-1864013020
	.long	-1483757275
	.long	-30281945
	.long	-916771546
	.long	1280139811
	.long	2066194466
	.long	580511264
	.long	368256033
	.long	682915882
	.long	534690347
	.long	1180761129
	.long	1896496680
	.long	-199462611
	.long	-1015631060
	.long	-1698106066
	.long	-1381877969
	.long	-1064461712
	.long	-135833487
	.long	-1369891213
	.long	-1724654478
	.long	472224631
	.long	726618486
	.long	1928402804
	.long	1167840629
	.long	2027719038
	.long	1337346943
	.long	369626493
	.long	560123772
	.long	-1535868807
	.long	-1826733448
	.long	-895482758
	.long	-37042565
	.long	-1339114388
	.long	-2025554323
	.long	-554026897
	.long	-376374674
	.long	1820767595
	.long	1542223722
	.long	38941032
	.long	892924777
	.long	142585698
	.long	1058368867
	.long	1722493793
	.long	1371662688
	.long	-724064667
	.long	-474127260
	.long	-1174199706
	.long	-1922441113
	.long	550229832
	.long	396432713
	.long	1310675787
	.long	2037748042
	.long	-60563889
	.long	-888595378
	.long	-1833477556
	.long	-1512204211
	.long	-1734687674
	.long	-1343224249
	.long	-162643899
	.long	-1054571964
	.long	1144180033
	.long	1935150912
	.long	719735106
	.long	495749955
	.long	1349054804
	.long	1728197461
	.long	1052538199
	.long	165066582
	.long	-1933510573
	.long	-1146471854
	.long	-501973936
	.long	-713114031
	.long	-398859686
	.long	-548200357
	.long	-2031262119
	.long	-1316510632
	.long	881978205
	.long	66791772
	.long	1514499934
	.long	1831841119
	.long	-2145700383
	.long	-1217267744
	.long	-288378398
	.long	-643468317
	.long	1555250406
	.long	1809448679
	.long	845658341
	.long	84769508
	.long	944383727
	.long	253813998
	.long	1453236972
	.long	1643405549
	.long	-454938648
	.long	-746000919
	.long	-1976128533
	.long	-1118017046
	.long	-256371715
	.long	-942484996
	.long	-1637050370
	.long	-1459202561
	.long	739252986
	.long	461035771
	.long	1120182009
	.long	1974361336
	.long	1223229683
	.long	2139341554
	.long	641565936
	.long	290932465
	.long	-1807676940
	.long	-1557410827
	.long	-90862089
	.long	-838905866
	.long	1616738521
	.long	1463270104
	.long	243924186
	.long	971194075
	.long	-1124765218
	.long	-1952468001
	.long	-769526307
	.long	-448055332
	.long	-670274601
	.long	-278484522
	.long	-1227296812
	.long	-2119029291
	.long	77882064
	.long	869179601
	.long	1785784019
	.long	1561994450
	.long	285105861
	.long	664050884
	.long	2116737734
	.long	1228937415
	.long	-866756670
	.long	-79915581
	.long	-1568484415
	.long	-1779953216
	.long	-1464906293
	.long	-1614442550
	.long	-964965944
	.long	-250541111
	.long	1946633420
	.long	1131251405
	.long	450085071
	.long	767099598
	.long	1083617169
	.long	2013031824
	.long	776088466
	.long	422111635
	.long	-1673615722
	.long	-1420532585
	.long	-219536747
	.long	-981409644
	.long	-121127777
	.long	-810713442
	.long	-1777125220
	.long	-1585841507
	.long	611300760
	.long	319125401
	.long	1253781915
	.long	2110911386
	.long	808814989
	.long	123685772
	.long	1591807374
	.long	1770770319
	.long	-325222262
	.long	-604552565
	.long	-2109143927
	.long	-1255946616
	.long	-2006672765
	.long	-1089578878
	.long	-424665472
	.long	-774185855
	.long	1422693252
	.long	1671844229
	.long	974657415
	.long	225629574
	.long	-1596923223
	.long	-1749409624
	.long	-838572374
	.long	-110189397
	.long	2088299438
	.long	1259481519
	.long	313290669
	.long	633777580
	.long	411169191
	.long	803943334
	.long	1985312164
	.long	1094694821
	.long	-1003882336
	.long	-213697887
	.long	-1426228061
	.long	-1650999646
	.long	-797719371
	.long	-417790284
	.long	-1096335178
	.long	-1983020361
	.long	215731634
	.long	1001459635
	.long	1645169073
	.long	1432718256
	.long	1747113915
	.long	1598559674
	.long	116806584
	.long	832344505
	.long	-1265967428
	.long	-2082464579
	.long	-631350593
	.long	-315320130
	.long	0
	.long	1701297336
	.long	-1949824598
	.long	-290474734
	.long	1469538959
	.long	854646327
	.long	-597726427
	.long	-1187457123
	.long	-282544955
	.long	-1974531971
	.long	1692450159
	.long	25625047
	.long	-1195387318
	.long	-573019406
	.long	863494112
	.long	1443914584
	.long	-1621681840
	.long	-97475096
	.long	345968890
	.long	1912122434
	.long	-926909473
	.long	-1381513369
	.long	1124627061
	.long	644861645
	.long	1887415701
	.long	353898797
	.long	-71850945
	.long	-1630529401
	.long	669568794
	.long	1116697506
	.long	-1407138128
	.long	-918062584
	.long	1051669152
	.long	1539870232
	.long	-1251525878
	.long	-805271630
	.long	1765298223
	.long	207613079
	.long	-487564923
	.long	-2020088515
	.long	-779647387
	.long	-1260373283
	.long	1515163599
	.long	1059599223
	.long	-2045713174
	.long	-478717870
	.long	232320320
	.long	1757368824
	.long	-1577571344
	.long	-996174008
	.long	707797594
	.long	1331142370
	.long	-160478849
	.long	-1828129337
	.long	2108113109
	.long	415300717
	.long	1322295093
	.long	733422477
	.long	-988244321
	.long	-1602278873
	.long	424148410
	.long	2082488578
	.long	-1836059632
	.long	-135771992
	.long	1029182619
	.long	1480566819
	.long	-1232069327
	.long	-738745975
	.long	1791981076
	.long	262720172
	.long	-519602242
	.long	-2074033402
	.long	-764370850
	.long	-1223222042
	.long	1505274356
	.long	1021252940
	.long	-2048408879
	.long	-528449943
	.long	238013307
	.long	1799911363
	.long	-1576071733
	.long	-949440141
	.long	700908641
	.long	1285601497
	.long	-174559420
	.long	-1862282244
	.long	2119198446
	.long	456645206
	.long	1294448910
	.long	675284406
	.long	-957370204
	.long	-1551365092
	.long	447798145
	.long	2144823097
	.long	-1854352853
	.long	-199266669
	.long	66528827
	.long	1720752771
	.long	-2009124975
	.long	-312962263
	.long	1415595188
	.long	822605836
	.long	-542618338
	.long	-1160777306
	.long	-320892162
	.long	-1984418234
	.long	1729600340
	.long	40904684
	.long	-1152847759
	.long	-567325495
	.long	813758939
	.long	1441219939
	.long	-1667219605
	.long	-104365101
	.long	392705729
	.long	1913621113
	.long	-885563932
	.long	-1370431140
	.long	1090475086
	.long	630778102
	.long	1938328494
	.long	384775958
	.long	-129990140
	.long	-1658372420
	.long	606071073
	.long	1098405273
	.long	-1344806773
	.long	-894411725
	.long	1001806317
	.long	1590814037
	.long	-1333899193
	.long	-719721217
	.long	1814117218
	.long	155617242
	.long	-404147512
	.long	-2104586640
	.long	-727782104
	.long	-1309060720
	.long	1599530114
	.long	976312378
	.long	-2096525401
	.long	-428985569
	.long	146900493
	.long	1839610549
	.long	-1528741699
	.long	-1048118267
	.long	791234839
	.long	1246688687
	.long	-210361806
	.long	-1777230198
	.long	2025728920
	.long	500799264
	.long	1271526520
	.long	783173824
	.long	-1073611310
	.long	-1520025238
	.long	475961079
	.long	2033789519
	.long	-1751736483
	.long	-219077659
	.long	85551949
	.long	1618925557
	.long	-1898880281
	.long	-340337057
	.long	1385040322
	.long	938063226
	.long	-649723800
	.long	-1138639664
	.long	-365830264
	.long	-1890163920
	.long	1643763234
	.long	77490842
	.long	-1113146105
	.long	-658439745
	.long	913224877
	.long	1393100821
	.long	-1706135011
	.long	-14037339
	.long	294026167
	.long	1960953615
	.long	-841412462
	.long	-1463899094
	.long	1175525688
	.long	594978176
	.long	1969669848
	.long	268532320
	.long	-22098062
	.long	-1681296438
	.long	586261591
	.long	1201019119
	.long	-1455837699
	.long	-866250427
	.long	116280694
	.long	1669984718
	.long	-1926871844
	.long	-398329756
	.long	1366896633
	.long	874419009
	.long	-625924525
	.long	-1076454677
	.long	-372835917
	.long	-1935588085
	.long	1645146137
	.long	124341409
	.long	-1101948100
	.long	-617207932
	.long	899256982
	.long	1358835246
	.long	-1715907546
	.long	-52500322
	.long	309419404
	.long	1997988148
	.long	-835832151
	.long	-1421243887
	.long	1172717315
	.long	545358779
	.long	1989271779
	.long	334912603
	.long	-44439223
	.long	-1740745231
	.long	554074732
	.long	1147223764
	.long	-1429304378
	.long	-810993794
	.long	943816662
	.long	1562821486
	.long	-1282836868
	.long	-688993596
	.long	1876303193
	.long	179413473
	.long	-467790605
	.long	-2122733493
	.long	-680932589
	.long	-1307674709
	.long	1554105017
	.long	969309697
	.long	-2130794084
	.long	-442952412
	.long	188129334
	.long	1850809486
	.long	-1491704186
	.long	-1032725954
	.long	752774956
	.long	1236915092
	.long	-259980279
	.long	-1780041551
	.long	2068385187
	.long	506376475
	.long	1212076611
	.long	760835835
	.long	-1007232023
	.long	-1500420271
	.long	531214540
	.long	2060323956
	.long	-1805534874
	.long	-251263522
	.size	crc_table, 8192
# ----------------------
	.ident	"GCC: (GNU) 3.2.3 20030502 (Red Hat Linux 3.2.3-59)"
	.section	.note.GNU-stack,"",@progbits
