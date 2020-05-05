	.file	"example.c"
	.text
	.globl	_test_compress
	.type	_test_compress, @function
_test_compress:
	pushl     %ebp
	movl      %esp, %ebp
	pushl     %esi
	pushl     %ebx
	subl      $16, %esp
	movl      8(%ebp), %esi
	movl      $_hello, (%esp)
	movl      16(%ebp), %ebx
	call      _strlen
L0000001A:
	movl      %esi, (%esp)
	incl      %eax
	movl      $_hello, %edx
	movl      %eax, 12(%esp)
	leal      12(%ebp), %eax
	movl      %edx, 8(%esp)
	movl      %eax, 4(%esp)
	call      _compress
L00000037:
	testl     %eax, %eax
	jne       L00000092
L0000003B:
	movl      $1651663207, (%ebx)
	movl      $6645601, 4(%ebx)
	movl      12(%ebp), %eax
	movl      %esi, 8(%esp)
	leal      20(%ebp), %esi
	movl      %eax, 12(%esp)
	movl      %esi, 4(%esp)
	movl      %ebx, (%esp)
	call      _uncompress
L00000062:
	testl     %eax, %eax
	jne       L000000C5
L00000066:
	movl      %ebx, (%esp)
	movl      $_hello, %esi
	movl      %esi, 4(%esp)
	call      _strcmp
L00000077:
	testl     %eax, %eax
	jne       L000000D4
L0000007B:
	movl      %ebx, 4(%esp)
	movl      $LC00000006, (%esp)
	call      _printf
L0000008B:
	addl      $16, %esp
	popl      %ebx
	popl      %esi
	popl      %ebp
	ret       
L00000092:
	movl      %eax, 12(%esp)
	movl      $LC00000018, %ecx
	movl      %ecx, 8(%esp)
L0000009F:
	movl      __imp___iob, %edx
	movl      $LC00000021, %ecx
	movl      %ecx, 4(%esp)
	addl      $64, %edx
	movl      %edx, (%esp)
	call      _fprintf
L000000B9:
	movl      $1, (%esp)
	call      _exit
L000000C5:
	movl      %eax, 12(%esp)
	movl      $LC0000002F, %ebx
	movl      %ebx, 8(%esp)
	jmp       L0000009F
L000000D4:
	movl      $LC0000003A, (%esp)
	movl      __imp___iob, %edx
	movl      $15, %ebx
	movl      %ebx, 8(%esp)
	movl      $1, %eax
	movl      %eax, 4(%esp)
	addl      $64, %edx
	movl      %edx, 12(%esp)
	call      _fwrite
L000000FF:
	jmp       L000000B9
	.size	_test_compress, .-_test_compress
# ----------------------
	.globl	_test_gzio
	.type	_test_gzio, @function
_test_gzio:
	pushl     %ebp
	movl      %esp, %ebp
	pushl     %edi
	pushl     %esi
	pushl     %ebx
	subl      $28, %esp
	movl      $LC0000004A, %ebx
	movl      $_hello, (%esp)
	movl      12(%ebp), %edi
	call      _strlen
L0000012D:
	movl      %ebx, 4(%esp)
	leal      1(%eax), %esi
	movl      8(%ebp), %eax
	movl      %eax, (%esp)
	call      _gzopen
L0000013F:
	testl     %eax, %eax
	movl      %eax, %ebx
	je        L0000035B
L00000149:
	movl      %eax, (%esp)
	movl      $104, %ecx
	movl      %ecx, 4(%esp)
	call      _gzputc
L0000015A:
	movl      %ebx, (%esp)
	movl      $LC0000004D, %edx
	movl      %edx, 4(%esp)
	call      _gzputs
L0000016B:
	cmpl      $4, %eax
	jne       L0000038B
L00000174:
	movl      %ebx, (%esp)
	movl      $LC00000052, %edx
	movl      $LC00000058, %eax
	movl      %edx, 8(%esp)
	movl      %eax, 4(%esp)
	call      _gzprintf
L0000018E:
	cmpl      $8, %eax
	jne       L000003BD
L00000197:
	movl      %ebx, (%esp)
	movl      $1, %ecx
	movl      $1, %edx
	movl      %ecx, 8(%esp)
	movl      %edx, 4(%esp)
	call      _gzseek
L000001B1:
	movl      %ebx, (%esp)
	call      _gzclose
L000001B9:
	movl      8(%ebp), %ecx
	movl      $LC0000005E, %eax
	movl      %eax, 4(%esp)
	movl      %ecx, (%esp)
	call      _gzopen
L000001CD:
	testl     %eax, %eax
	movl      %eax, %ebx
	je        L0000035B
L000001D7:
	movl      $1651663207, (%edi)
	movl      $6645601, 4(%edi)
	movl      16(%ebp), %eax
	movl      %edi, 4(%esp)
	movl      %ebx, (%esp)
	movl      %eax, 8(%esp)
	call      _gzread
L000001F7:
	cmpl      %esi, %eax
	jne       L000003D7
L000001FF:
	movl      %edi, (%esp)
	movl      $_hello, %ecx
	movl      %ecx, 4(%esp)
	call      _strcmp
L00000210:
	testl     %eax, %eax
	jne       L000003F1
L00000218:
	movl      %edi, 4(%esp)
	movl      $-8, %esi
	movl      $LC00000061, (%esp)
	call      _printf
L0000022D:
	movl      %esi, 4(%esp)
	movl      $1, %eax
	movl      %eax, 8(%esp)
	movl      %ebx, (%esp)
	call      _gzseek
L00000242:
	cmpl      $6, %eax
	movl      %eax, %esi
	jne       L00000256
L00000249:
	movl      %ebx, (%esp)
	call      _gztell
L00000251:
	cmpl      $6, %eax
	je        L00000290
L00000256:
	movl      %ebx, (%esp)
	movl      $LC00000070, %ebx
	call      _gztell
L00000263:
	movl      %eax, 12(%esp)
	movl      __imp___iob, %edi
	movl      %esi, 8(%esp)
	movl      %ebx, 4(%esp)
	addl      $64, %edi
	movl      %edi, (%esp)
	call      _fprintf
L00000280:
	movl      $1, (%esp)
	call      _exit
L00000290:
	movl      (%ebx), %eax
	testl     %eax, %eax
	je        L000002D8
L00000296:
	incl      8(%ebx)
	decl      %eax
	movl      4(%ebx), %ecx
	movl      %eax, (%ebx)
	movzbl    (%ecx), %edx
	incl      %ecx
	movl      %ecx, 4(%ebx)
	cmpl      $32, %edx
L000002A9:
	je        L000002E5
L000002AB:
	movl      $LC00000093, (%esp)
	movl      __imp___iob, %edi
	movl      $1, %esi
	movl      %esi, 4(%esp)
	movl      $13, %eax
	movl      %eax, 8(%esp)
	addl      $64, %edi
	movl      %edi, 12(%esp)
	call      _fwrite
L000002D6:
	jmp       L00000280
L000002D8:
	movl      %ebx, (%esp)
	call      _gzgetc
L000002E0:
	cmpl      $32, %eax
	jmp       L000002A9
L000002E5:
	movl      %ebx, 4(%esp)
	movl      $32, (%esp)
	call      _gzungetc
L000002F5:
	cmpl      $32, %eax
	jne       L00000449
L000002FE:
	movl      %edi, 4(%esp)
	movl      16(%ebp), %esi
	movl      %ebx, (%esp)
	movl      %esi, 8(%esp)
	call      _gzgets
L00000311:
	movl      %edi, (%esp)
	call      _strlen
L00000319:
	cmpl      $7, %eax
	jne       L0000042C
L00000322:
	movl      %edi, (%esp)
	movl      $LD00000006, %edx
	movl      %edx, 4(%esp)
	call      _strcmp
L00000333:
	testl     %eax, %eax
	jne       L000003FC
L0000033B:
	movl      %edi, 4(%esp)
	movl      $LC000000A1, (%esp)
	call      _printf
L0000034B:
	movl      %ebx, (%esp)
	call      _gzclose
L00000353:
	addl      $28, %esp
	popl      %ebx
	popl      %esi
	popl      %edi
	popl      %ebp
	ret       
L0000035B:
	movl      $LC000000BC, (%esp)
	movl      __imp___iob, %ebx
	movl      $13, %edi
	movl      %edi, 8(%esp)
	movl      $1, %esi
	movl      %esi, 4(%esp)
	addl      $64, %ebx
	movl      %ebx, 12(%esp)
	call      _fwrite
L00000386:
	jmp       L00000280
L0000038B:
	movl      %ebx, (%esp)
	leal      -16(%ebp), %esi
	movl      %esi, 4(%esp)
	call      _gzerror
L0000039A:
	movl      %eax, 8(%esp)
	movl      $LC000000CA, %eax
L000003A3:
	movl      %eax, 4(%esp)
	movl      __imp___iob, %ebx
	addl      $64, %ebx
	movl      %ebx, (%esp)
	call      _fprintf
L000003B8:
	jmp       L00000280
L000003BD:
	movl      %ebx, (%esp)
	leal      -16(%ebp), %edi
	movl      %edi, 4(%esp)
	call      _gzerror
L000003CC:
	movl      %eax, 8(%esp)
	movl      $LC000000DA, %eax
	jmp       L000003A3
L000003D7:
	movl      %ebx, (%esp)
	leal      -16(%ebp), %edx
	movl      %edx, 4(%esp)
	call      _gzerror
L000003E6:
	movl      %eax, 8(%esp)
	movl      $LC000000EC, %eax
	jmp       L000003A3
L000003F1:
	movl      %edi, 8(%esp)
	movl      $LC000000FC, %eax
	jmp       L000003A3
L000003FC:
	movl      $LC0000010C, (%esp)
	movl      __imp___iob, %ecx
	movl      $24, %ebx
	movl      %ebx, 8(%esp)
	movl      $1, %edi
	movl      %edi, 4(%esp)
	addl      $64, %ecx
	movl      %ecx, 12(%esp)
	call      _fwrite
L00000427:
	jmp       L00000280
L0000042C:
	movl      %ebx, (%esp)
	leal      -16(%ebp), %eax
	movl      %eax, 4(%esp)
	call      _gzerror
L0000043B:
	movl      %eax, 8(%esp)
	movl      $LC00000125, %eax
	jmp       L000003A3
L00000449:
	movl      $LC00000142, (%esp)
	movl      __imp___iob, %ecx
	movl      $15, %edx
	movl      %edx, 8(%esp)
	movl      $1, %ebx
	movl      %ebx, 4(%esp)
	addl      $64, %ecx
	movl      %ecx, 12(%esp)
	call      _fwrite
L00000474:
	jmp       L00000280
	.size	_test_gzio, .-_test_gzio
# ----------------------
	.globl	_test_deflate
	.type	_test_deflate, @function
_test_deflate:
	pushl     %ebp
	movl      %esp, %ebp
	pushl     %edi
	pushl     %esi
	pushl     %ebx
	subl      $92, %esp
	movl      12(%ebp), %edi
	movl      $_hello, (%esp)
	call      _strlen
L00000498:
	movl      $0, -48(%ebp)
	movl      _zfree, %ebx
	leal      1(%eax), %esi
	movl      _zalloc, %eax
	movl      $56, %ecx
	movl      $LC00000152, %edx
	movl      %ecx, 12(%esp)
	movl      %ebx, -52(%ebp)
	leal      -88(%ebp), %ebx
	movl      %eax, -56(%ebp)
	movl      $-1, %eax
	movl      %edx, 8(%esp)
	movl      %eax, 4(%esp)
	movl      %ebx, (%esp)
	call      _deflateInit_
L000004D9:
	testl     %eax, %eax
	jne       L00000585
L000004E1:
	movl      $_hello, -88(%ebp)
	movl      8(%ebp), %edx
	movl      %edx, -76(%ebp)
	nop       
L000004F0:
	cmpl      %esi, -80(%ebp)
	je        L00000554
L000004F5:
	cmpl      %edi, -68(%ebp)
	jae       L00000554
L000004FA:
	movl      $1, -72(%ebp)
	xorl      %ecx, %ecx
	movl      $1, -84(%ebp)
	movl      %ecx, 4(%esp)
	movl      %ebx, (%esp)
	call      _deflate
L00000516:
	testl     %eax, %eax
	je        L000004F0
L0000051A:
	movl      %eax, 12(%esp)
	movl      $LC00000158, %eax
L00000523:
	movl      %eax, 8(%esp)
L00000527:
	movl      __imp___iob, %ebx
	movl      $LC00000021, %eax
	movl      %eax, 4(%esp)
	addl      $64, %ebx
	movl      %ebx, (%esp)
	call      _fprintf
L00000541:
	movl      $1, (%esp)
	call      _exit
L00000550:
	testl     %eax, %eax
	jne       L0000051A
L00000554:
	movl      $1, -72(%ebp)
	movl      $4, %esi
	movl      %esi, 4(%esp)
	movl      %ebx, (%esp)
	call      _deflate
L0000056C:
	cmpl      $1, %eax
	jne       L00000550
L00000571:
	movl      %ebx, (%esp)
	call      _deflateEnd
L00000579:
	testl     %eax, %eax
	jne       L00000590
L0000057D:
	addl      $92, %esp
	popl      %ebx
	popl      %esi
	popl      %edi
	popl      %ebp
	ret       
L00000585:
	movl      %eax, 12(%esp)
	movl      $LC00000160, %eax
	jmp       L00000523
L00000590:
	movl      %eax, 12(%esp)
	movl      $LC0000016C, %edi
	movl      %edi, 8(%esp)
	jmp       L00000527
	.size	_test_deflate, .-_test_deflate
# ----------------------
	.globl	_test_inflate
	.type	_test_inflate, @function
_test_inflate:
	pushl     %ebp
	movl      $56, %edx
	movl      %esp, %ebp
	pushl     %edi
	pushl     %esi
	pushl     %ebx
	subl      $92, %esp
	movl      16(%ebp), %esi
	movl      20(%ebp), %edi
	movl      $1651663207, (%esi)
	movl      $6645601, 4(%esi)
	movl      _zalloc, %eax
	movl      $0, -48(%ebp)
	movl      _zfree, %ebx
	movl      $0, -84(%ebp)
	movl      8(%ebp), %ecx
	movl      %eax, -56(%ebp)
	movl      $LC00000152, %eax
	movl      %ebx, -52(%ebp)
	leal      -88(%ebp), %ebx
	movl      %ecx, -88(%ebp)
	movl      %esi, -76(%ebp)
	movl      %edx, 8(%esp)
	movl      %eax, 4(%esp)
	movl      %ebx, (%esp)
	call      _inflateInit_
L00000601:
	testl     %eax, %eax
	jne       L000006AE
L00000609:
	leal      (%esi), %esi
L00000610:
	cmpl      %edi, -68(%ebp)
	jae       L00000675
L00000615:
	movl      12(%ebp), %edx
	cmpl      %edx, -80(%ebp)
	jae       L00000675
L0000061D:
	movl      $1, -72(%ebp)
	xorl      %ecx, %ecx
	movl      $1, -84(%ebp)
	movl      %ecx, 4(%esp)
	movl      %ebx, (%esp)
	call      _inflate
L00000639:
	cmpl      $1, %eax
	je        L00000675
L0000063E:
	testl     %eax, %eax
	je        L00000610
L00000642:
	movl      %eax, 12(%esp)
	movl      $LC00000177, %eax
L0000064B:
	movl      %eax, 8(%esp)
	movl      __imp___iob, %esi
	movl      $LC00000021, %edi
	movl      %edi, 4(%esp)
	addl      $64, %esi
	movl      %esi, (%esp)
	call      _fprintf
L00000669:
	movl      $1, (%esp)
	call      _exit
L00000675:
	movl      %ebx, (%esp)
	call      _inflateEnd
L0000067D:
	testl     %eax, %eax
	jne       L000006B9
L00000681:
	movl      %esi, (%esp)
	movl      $_hello, %ebx
	movl      %ebx, 4(%esp)
	call      _strcmp
L00000692:
	testl     %eax, %eax
	jne       L000006C4
L00000696:
	movl      %esi, 4(%esp)
	movl      $LC0000017F, (%esp)
	call      _printf
L000006A6:
	addl      $92, %esp
	popl      %ebx
	popl      %esi
	popl      %edi
	popl      %ebp
	ret       
L000006AE:
	movl      %eax, 12(%esp)
	movl      $LC0000018E, %eax
	jmp       L0000064B
L000006B9:
	movl      %eax, 12(%esp)
	movl      $LC0000019A, %eax
	jmp       L0000064B
L000006C4:
	movl      $LC000001A5, (%esp)
	movl      __imp___iob, %ecx
	movl      $12, %edx
	movl      %edx, 8(%esp)
	movl      $1, %eax
	movl      %eax, 4(%esp)
	addl      $64, %ecx
	movl      %ecx, 12(%esp)
	call      _fwrite
L000006EF:
	jmp       L00000669
	.size	_test_inflate, .-_test_inflate
# ----------------------
	.globl	_test_large_deflate
	.type	_test_large_deflate, @function
_test_large_deflate:
	pushl     %ebp
	movl      $56, %ecx
	movl      %esp, %ebp
	pushl     %edi
	movl      $LC00000152, %edx
	pushl     %esi
	pushl     %ebx
	subl      $92, %esp
	movl      _zalloc, %eax
	movl      $0, -48(%ebp)
	movl      _zfree, %esi
	movl      8(%ebp), %edi
	movl      %eax, -56(%ebp)
	movl      $1, %eax
	movl      12(%ebp), %ebx
	movl      %esi, -52(%ebp)
	leal      -88(%ebp), %esi
	movl      %ecx, 12(%esp)
	movl      %edx, 8(%esp)
	movl      %eax, 4(%esp)
	movl      %esi, (%esp)
	call      _deflateInit_
L0000074D:
	testl     %eax, %eax
	jne       L00000851
L00000755:
	movl      %edi, -76(%ebp)
	movl      16(%ebp), %eax
	xorl      %edx, %edx
	movl      %ebx, -72(%ebp)
	movl      20(%ebp), %ecx
	movl      %edx, 4(%esp)
	movl      %eax, -88(%ebp)
	movl      %ecx, -84(%ebp)
	movl      %esi, (%esp)
	call      _deflate
L00000775:
	testl     %eax, %eax
	jne       L0000081E
L0000077D:
	movl      -84(%ebp), %edx
	testl     %edx, %edx
	jne       L0000085C
L00000788:
	movl      %esi, (%esp)
	xorl      %edx, %edx
	xorl      %eax, %eax
	movl      %edx, 8(%esp)
	shrl      $1, %ebx
	movl      %eax, 4(%esp)
	call      _deflateParams
L0000079E:
	movl      %edi, -88(%ebp)
	xorl      %ecx, %ecx
	movl      %ebx, -84(%ebp)
	movl      %ecx, 4(%esp)
	movl      %esi, (%esp)
	call      _deflate
L000007B2:
	testl     %eax, %eax
	jne       L0000081E
L000007B6:
	movl      %esi, (%esp)
	movl      $1, %edx
	movl      $9, %eax
	movl      %edx, 8(%esp)
	xorl      %ebx, %ebx
	movl      %eax, 4(%esp)
	call      _deflateParams
L000007D2:
	movl      %ebx, 4(%esp)
	movl      16(%ebp), %ecx
	movl      20(%ebp), %edi
	movl      %esi, (%esp)
	movl      %ecx, -88(%ebp)
	movl      %edi, -84(%ebp)
	call      _deflate
L000007EA:
	testl     %eax, %eax
	jne       L0000081E
L000007EE:
	movl      %esi, (%esp)
	movl      $4, %ebx
	movl      %ebx, 4(%esp)
	call      _deflate
L000007FF:
	decl      %eax
	jne       L00000889
L00000806:
	movl      %esi, (%esp)
	call      _deflateEnd
L0000080E:
	testl     %eax, %eax
	jne       L000008B6
L00000816:
	addl      $92, %esp
	popl      %ebx
	popl      %esi
	popl      %edi
	popl      %ebp
	ret       
L0000081E:
	movl      %eax, 12(%esp)
	movl      $LC00000158, %eax
L00000827:
	movl      %eax, 8(%esp)
L0000082B:
	movl      __imp___iob, %edx
	movl      $LC00000021, %ebx
	movl      %ebx, 4(%esp)
	addl      $64, %edx
	movl      %edx, (%esp)
	call      _fprintf
L00000845:
	movl      $1, (%esp)
	call      _exit
L00000851:
	movl      %eax, 12(%esp)
	movl      $LC00000160, %eax
	jmp       L00000827
L0000085C:
	movl      $LC000001B2, (%esp)
	movl      __imp___iob, %esi
	movl      $19, %edi
	movl      %edi, 8(%esp)
	movl      $1, %ebx
	movl      %ebx, 4(%esp)
	addl      $64, %esi
	movl      %esi, 12(%esp)
	call      _fwrite
L00000887:
	jmp       L00000845
L00000889:
	movl      $LC000001C8, (%esp)
	movl      __imp___iob, %ecx
	movl      $35, %edi
	movl      %edi, 8(%esp)
	movl      $1, %esi
	movl      %esi, 4(%esp)
	addl      $64, %ecx
	movl      %ecx, 12(%esp)
	call      _fwrite
L000008B4:
	jmp       L00000845
L000008B6:
	movl      %eax, 12(%esp)
	movl      $LC0000016C, %eax
	movl      %eax, 8(%esp)
	jmp       L0000082B
	.size	_test_large_deflate, .-_test_large_deflate
# ----------------------
	.globl	_test_large_inflate
	.type	_test_large_inflate, @function
_test_large_inflate:
	pushl     %ebp
	movl      %esp, %ebp
	pushl     %edi
	pushl     %esi
	pushl     %ebx
	subl      $92, %esp
	movl      16(%ebp), %esi
	movl      20(%ebp), %edi
	movl      $1651663207, (%esi)
	movl      $6645601, 4(%esi)
	movl      _zalloc, %edx
	movl      $0, -48(%ebp)
	movl      _zfree, %eax
	movl      8(%ebp), %ebx
	movl      %edx, -56(%ebp)
	movl      12(%ebp), %ecx
	movl      $56, %edx
	movl      %eax, -52(%ebp)
	movl      $LC00000152, %eax
	movl      %ebx, -88(%ebp)
	leal      -88(%ebp), %ebx
	movl      %ecx, -84(%ebp)
	movl      %edx, 8(%esp)
	movl      %eax, 4(%esp)
	movl      %ebx, (%esp)
	call      _inflateInit_
L0000092D:
	testl     %eax, %eax
	je        L0000093A
L00000931:
	jmp       L000009B6
L00000936:
	testl     %eax, %eax
	jne       L00000983
L0000093A:
	movl      %esi, -76(%ebp)
	xorl      %ecx, %ecx
	movl      %edi, -72(%ebp)
	movl      %ecx, 4(%esp)
	movl      %ebx, (%esp)
	call      _inflate
L0000094E:
	cmpl      $1, %eax
	jne       L00000936
L00000953:
	movl      %ebx, (%esp)
	call      _inflateEnd
L0000095B:
	testl     %eax, %eax
	jne       L000009C5
L0000095F:
	shrl      $1, 12(%ebp)
	movl      -68(%ebp), %edx
	movl      12(%ebp), %ecx
	leal      (%ecx,%edi,2), %esi
	cmpl      %esi, %edx
	jne       L000009D4
L0000096F:
	movl      $LC000001EC, (%esp)
	call      _puts
L0000097B:
	addl      $92, %esp
	popl      %ebx
	popl      %esi
	popl      %edi
	popl      %ebp
	ret       
L00000983:
	movl      %eax, 12(%esp)
	movl      $LC00000200, %edi
	movl      %edi, 8(%esp)
L00000990:
	movl      __imp___iob, %ebx
	movl      $LC00000021, %eax
	movl      %eax, 4(%esp)
	addl      $64, %ebx
	movl      %ebx, (%esp)
	call      _fprintf
L000009AA:
	movl      $1, (%esp)
	call      _exit
L000009B6:
	movl      %eax, 12(%esp)
	movl      $LC0000018E, %esi
	movl      %esi, 8(%esp)
	jmp       L00000990
L000009C5:
	movl      %eax, 12(%esp)
	movl      $LC0000019A, %edx
	movl      %edx, 8(%esp)
	jmp       L00000990
L000009D4:
	movl      %edx, 8(%esp)
	movl      __imp___iob, %edi
	movl      $LC0000020E, %ebx
	movl      %ebx, 4(%esp)
	addl      $64, %edi
	movl      %edi, (%esp)
	call      _fprintf
L000009F2:
	jmp       L000009AA
	.size	_test_large_inflate, .-_test_large_inflate
# ----------------------
	.globl	_test_flush
	.type	_test_flush, @function
_test_flush:
	pushl     %ebp
	movl      %esp, %ebp
	pushl     %edi
	pushl     %esi
	pushl     %ebx
	subl      $92, %esp
	movl      8(%ebp), %esi
	movl      $_hello, (%esp)
	call      _strlen
L00000A18:
	movl      $0, -48(%ebp)
	movl      _zfree, %ebx
	movl      %eax, %edi
	movl      _zalloc, %eax
	movl      $56, %ecx
	movl      $LC00000152, %edx
	movl      %ecx, 12(%esp)
	movl      %ebx, -52(%ebp)
	leal      -88(%ebp), %ebx
	movl      %eax, -56(%ebp)
	movl      $-1, %eax
	movl      %edx, 8(%esp)
	movl      %eax, 4(%esp)
	movl      %ebx, (%esp)
	call      _deflateInit_
L00000A58:
	testl     %eax, %eax
	jne       L00000B00
L00000A60:
	movl      $_hello, -88(%ebp)
	movl      12(%ebp), %eax
	movl      $3, %edx
	movl      %esi, -76(%ebp)
	movl      $3, -84(%ebp)
	movl      (%eax), %ecx
	movl      %edx, 4(%esp)
	movl      %ebx, (%esp)
	movl      %ecx, -72(%ebp)
	call      _deflate
L00000A8A:
	testl     %eax, %eax
	jne       L00000ACD
L00000A8E:
	incb      3(%esi)
	leal      -2(%edi), %edx
	movl      $4, %esi
	movl      %edx, -84(%ebp)
	movl      %esi, 4(%esp)
	movl      %ebx, (%esp)
	call      _deflate
L00000AA8:
	cmpl      $1, %eax
	je        L00000AB1
L00000AAD:
	testl     %eax, %eax
	jne       L00000ACD
L00000AB1:
	movl      %ebx, (%esp)
	call      _deflateEnd
L00000AB9:
	testl     %eax, %eax
	jne       L00000B0F
L00000ABD:
	movl      12(%ebp), %esi
	movl      -68(%ebp), %eax
	movl      %eax, (%esi)
	addl      $92, %esp
	popl      %ebx
	popl      %esi
	popl      %edi
	popl      %ebp
	ret       
L00000ACD:
	movl      %eax, 12(%esp)
	movl      $LC00000158, %edi
	movl      %edi, 8(%esp)
L00000ADA:
	movl      __imp___iob, %ebx
	movl      $LC00000021, %ecx
	movl      %ecx, 4(%esp)
	addl      $64, %ebx
	movl      %ebx, (%esp)
	call      _fprintf
L00000AF4:
	movl      $1, (%esp)
	call      _exit
L00000B00:
	movl      %eax, 12(%esp)
	movl      $LC00000160, %eax
	movl      %eax, 8(%esp)
	jmp       L00000ADA
L00000B0F:
	movl      %eax, 12(%esp)
	movl      $LC0000016C, %eax
	movl      %eax, 8(%esp)
	jmp       L00000ADA
	.size	_test_flush, .-_test_flush
# ----------------------
	.globl	_test_sync
	.type	_test_sync, @function
_test_sync:
	pushl     %ebp
	movl      $56, %edx
	movl      %esp, %ebp
	pushl     %esi
	pushl     %ebx
	subl      $80, %esp
	movl      16(%ebp), %esi
	movl      $1651663207, (%esi)
	movl      $6645601, 4(%esi)
	movl      _zalloc, %eax
	movl      $0, -32(%ebp)
	movl      _zfree, %ebx
	movl      $2, -68(%ebp)
	movl      8(%ebp), %ecx
	movl      %eax, -40(%ebp)
	movl      $LC00000152, %eax
	movl      %ebx, -36(%ebp)
	leal      -72(%ebp), %ebx
	movl      %ecx, -72(%ebp)
	movl      %edx, 8(%esp)
	movl      %eax, 4(%esp)
	movl      %ebx, (%esp)
	call      _inflateInit_
L00000B7A:
	testl     %eax, %eax
	jne       L00000BE7
L00000B7E:
	movl      %esi, -60(%ebp)
	movl      20(%ebp), %eax
	xorl      %ecx, %ecx
	movl      %ecx, 4(%esp)
	movl      %ebx, (%esp)
	movl      %eax, -56(%ebp)
	call      _inflate
L00000B95:
	movl      %ebx, (%esp)
	movl      12(%ebp), %edx
	subl      $2, %edx
	movl      %edx, -68(%ebp)
	call      _inflateSync
L00000BA6:
	testl     %eax, %eax
	jne       L00000C1A
L00000BAA:
	movl      %ebx, (%esp)
	movl      $4, %edx
	movl      %edx, 4(%esp)
	call      _inflate
L00000BBB:
	cmpl      $-3, %eax
	jne       L00000C25
L00000BC0:
	movl      %ebx, (%esp)
	call      _inflateEnd
L00000BC8:
	testl     %eax, %eax
	jne       L00000C52
L00000BD0:
	movl      %esi, 4(%esp)
	movl      $LC00000226, (%esp)
	call      _printf
L00000BE0:
	addl      $80, %esp
	popl      %ebx
	popl      %esi
	popl      %ebp
	ret       
L00000BE7:
	movl      %eax, 12(%esp)
	movl      $LC0000018E, %eax
L00000BF0:
	movl      %eax, 8(%esp)
L00000BF4:
	movl      __imp___iob, %edx
	movl      $LC00000021, %esi
	movl      %esi, 4(%esp)
	addl      $64, %edx
	movl      %edx, (%esp)
	call      _fprintf
L00000C0E:
	movl      $1, (%esp)
	call      _exit
L00000C1A:
	movl      %eax, 12(%esp)
	movl      $LC00000242, %eax
	jmp       L00000BF0
L00000C25:
	movl      $LC00000250, (%esp)
	movl      __imp___iob, %ecx
	movl      $33, %ebx
	movl      %ebx, 8(%esp)
	movl      $1, %esi
	movl      %esi, 4(%esp)
	addl      $64, %ecx
	movl      %ecx, 12(%esp)
	call      _fwrite
L00000C50:
	jmp       L00000C0E
L00000C52:
	movl      %eax, 12(%esp)
	movl      $LC0000019A, %eax
	movl      %eax, 8(%esp)
	jmp       L00000BF4
	.size	_test_sync, .-_test_sync
# ----------------------
	.globl	_test_dict_deflate
	.type	_test_dict_deflate, @function
_test_dict_deflate:
	pushl     %ebp
	movl      $LC00000152, %ecx
	movl      %esp, %ebp
	pushl     %ebx
	subl      $84, %esp
	movl      $56, %ebx
	movl      %ebx, 12(%esp)
	movl      _zalloc, %edx
	leal      -72(%ebp), %ebx
	movl      $0, -32(%ebp)
	movl      _zfree, %eax
	movl      %ecx, 8(%esp)
	movl      %edx, -40(%ebp)
	movl      $9, %edx
	movl      %eax, -36(%ebp)
	movl      %edx, 4(%esp)
	movl      %ebx, (%esp)
	call      _deflateInit_
L00000CB5:
	testl     %eax, %eax
	jne       L00000D2D
L00000CB9:
	movl      %ebx, (%esp)
	movl      $6, %eax
	movl      $_dictionary, %ecx
	movl      %eax, 8(%esp)
	movl      %ecx, 4(%esp)
	call      _deflateSetDictionary
L00000CD3:
	testl     %eax, %eax
	jne       L00000D60
L00000CDB:
	movl      $_hello, -72(%ebp)
	movl      -24(%ebp), %edx
	movl      8(%ebp), %eax
	movl      $_hello, (%esp)
	movl      12(%ebp), %ecx
	movl      %edx, _dictId
	movl      %eax, -60(%ebp)
	movl      %ecx, -56(%ebp)
	call      _strlen
L00000D03:
	movl      %ebx, (%esp)
	incl      %eax
	movl      $4, %edx
	movl      %eax, -68(%ebp)
	movl      %edx, 4(%esp)
	call      _deflate
L00000D18:
	decl      %eax
	jne       L00000D6B
L00000D1B:
	movl      %ebx, (%esp)
	call      _deflateEnd
L00000D23:
	testl     %eax, %eax
	jne       L00000D97
L00000D27:
	addl      $84, %esp
	popl      %ebx
	popl      %ebp
	ret       
L00000D2D:
	movl      %eax, 12(%esp)
	movl      $LC00000160, %eax
L00000D36:
	movl      %eax, 8(%esp)
L00000D3A:
	movl      __imp___iob, %ebx
	movl      $LC00000021, %ecx
	movl      %ecx, 4(%esp)
	addl      $64, %ebx
	movl      %ebx, (%esp)
	call      _fprintf
L00000D54:
	movl      $1, (%esp)
	call      _exit
L00000D60:
	movl      %eax, 12(%esp)
	movl      $LC00000272, %eax
	jmp       L00000D36
L00000D6B:
	movl      $LC000001C8, (%esp)
	movl      __imp___iob, %eax
	movl      $35, %ecx
	movl      %ecx, 8(%esp)
	movl      $1, %ebx
	movl      %ebx, 4(%esp)
	addl      $64, %eax
	movl      %eax, 12(%esp)
	call      _fwrite
L00000D95:
	jmp       L00000D54
L00000D97:
	movl      %eax, 12(%esp)
	movl      $LC0000016C, %edx
	movl      %edx, 8(%esp)
	jmp       L00000D3A
	.size	_test_dict_deflate, .-_test_dict_deflate
# ----------------------
	.globl	_test_dict_inflate
	.type	_test_dict_inflate, @function
_test_dict_inflate:
	pushl     %ebp
	movl      %esp, %ebp
	pushl     %esi
	pushl     %ebx
	subl      $80, %esp
	movl      16(%ebp), %esi
	movl      $1651663207, (%esi)
	movl      $6645601, 4(%esi)
	movl      _zalloc, %edx
	movl      $0, -32(%ebp)
	movl      _zfree, %eax
	movl      8(%ebp), %ebx
	movl      %edx, -40(%ebp)
	movl      12(%ebp), %ecx
	movl      $56, %edx
	movl      %eax, -36(%ebp)
	movl      $LC00000152, %eax
	movl      %ebx, -72(%ebp)
	leal      -72(%ebp), %ebx
	movl      %ecx, -68(%ebp)
	movl      %edx, 8(%esp)
	movl      %eax, 4(%esp)
	movl      %ebx, (%esp)
	call      _inflateInit_
L00000E09:
	testl     %eax, %eax
	jne       L00000F01
L00000E11:
	movl      %esi, -60(%ebp)
	movl      20(%ebp), %ecx
	movl      %ecx, -56(%ebp)
	jmp       L00000E24
L00000E20:
	testl     %eax, %eax
	jne       L00000E69
L00000E24:
	movl      %ebx, (%esp)
	xorl      %eax, %eax
	movl      %eax, 4(%esp)
	call      _inflate
L00000E32:
	cmpl      $1, %eax
	je        L00000E9C
L00000E37:
	cmpl      $2, %eax
	jne       L00000E20
L00000E3C:
	movl      _dictId, %edx
	cmpl      %edx, -24(%ebp)
	jne       L00000ED4
L00000E4B:
	movl      %ebx, (%esp)
	movl      $6, %edx
	movl      $_dictionary, %eax
	movl      %edx, 8(%esp)
	movl      %eax, 4(%esp)
	call      _inflateSetDictionary
L00000E65:
	testl     %eax, %eax
	je        L00000E24
L00000E69:
	movl      %eax, 12(%esp)
	movl      $LC00000287, %eax
L00000E72:
	movl      %eax, 8(%esp)
	movl      __imp___iob, %esi
	movl      $LC00000021, %ebx
	movl      %ebx, 4(%esp)
	addl      $64, %esi
	movl      %esi, (%esp)
	call      _fprintf
L00000E90:
	movl      $1, (%esp)
	call      _exit
L00000E9C:
	movl      %ebx, (%esp)
	call      _inflateEnd
L00000EA4:
	testl     %eax, %eax
	jne       L00000F0F
L00000EA8:
	movl      %esi, (%esp)
	movl      $_hello, %ecx
	movl      %ecx, 4(%esp)
	call      _strcmp
L00000EB9:
	testl     %eax, %eax
	jne       L00000F1D
L00000EBD:
	movl      %esi, 4(%esp)
	movl      $LC00000299, (%esp)
	call      _printf
L00000ECD:
	addl      $80, %esp
	popl      %ebx
	popl      %esi
	popl      %ebp
	ret       
L00000ED4:
	movl      $LC000002B6, (%esp)
	movl      __imp___iob, %ecx
	movl      $21, %ebx
	movl      %ebx, 8(%esp)
	movl      $1, %esi
	movl      %esi, 4(%esp)
	addl      $64, %ecx
	movl      %ecx, 12(%esp)
	call      _fwrite
L00000EFF:
	jmp       L00000E90
L00000F01:
	movl      %eax, 12(%esp)
	movl      $LC0000018E, %eax
	jmp       L00000E72
L00000F0F:
	movl      %eax, 12(%esp)
	movl      $LC0000019A, %eax
	jmp       L00000E72
L00000F1D:
	movl      $LC000002CC, (%esp)
	movl      __imp___iob, %esi
	movl      $22, %edx
	movl      %edx, 8(%esp)
	movl      $1, %eax
	movl      %eax, 4(%esp)
	addl      $64, %esi
	movl      %esi, 12(%esp)
	call      _fwrite
L00000F48:
	jmp       L00000E90
	.size	_test_dict_inflate, .-_test_dict_inflate
# ----------------------
	.globl	_main
	.type	_main, @function
_main:
	pushl     %ebp
	movl      $16, %eax
	movl      %esp, %ebp
	pushl     %edi
	pushl     %esi
	subl      $32, %esp
	andl      $-16, %esp
	call      __alloca
L00000F65:
	call      ___main
L00000F6A:
	movl      $40000, -12(%ebp)
	call      _zlibVersion
L00000F76:
	movl      LD00000010, %ecx
	movzbl    (%ecx), %edx
	cmpb      %dl, (%eax)
	jne       L00001156
L00000F87:
	call      _zlibVersion
L00000F8C:
	cld       
	movl      %eax, %esi
	movl      $6, %ecx
	movl      $LC00000152, %edi
	repz cmpsb     
	jne       L00001126
L00000FA1:
	call      _zlibCompileFlags
L00000FA6:
	movl      %eax, 12(%esp)
	movl      $4736, %ecx
	movl      $LC00000152, %eax
	movl      %ecx, 8(%esp)
	movl      $1, %edi
	movl      %eax, 4(%esp)
	movl      $LC000002E4, (%esp)
	call      _printf
L00000FCD:
	movl      %edi, 4(%esp)
	movl      -12(%ebp), %esi
	movl      %esi, (%esp)
	call      _calloc
L00000FDC:
	movl      $40000, (%esp)
	movl      %eax, %esi
	movl      $1, %edx
	movl      %edx, 4(%esp)
	call      _calloc
L00000FF3:
	testl     %esi, %esi
	movl      %eax, %edi
	sete      %cl
	testl     %eax, %eax
	sete      %al
	orl       %ecx, %eax
	testb     $1, %al
	jne       L0000118D
L00001009:
	movl      %edi, 8(%esp)
	movl      -12(%ebp), %eax
	movl      $40000, %ecx
	movl      %ecx, 12(%esp)
	movl      %esi, (%esp)
	movl      %eax, 4(%esp)
	call      _test_compress
L00001025:
	cmpl      $1, 8(%ebp)
	movl      $40000, %edx
	movl      %edi, 4(%esp)
	movl      $LC00000315, %eax
	movl      %edx, 8(%esp)
	jle       L00001043
L0000103D:
	movl      12(%ebp), %edx
	movl      4(%edx), %eax
L00001043:
	movl      %eax, (%esp)
	call      _test_gzio
L0000104B:
	movl      %esi, (%esp)
	movl      -12(%ebp), %eax
	movl      %eax, 4(%esp)
	call      _test_deflate
L0000105A:
	movl      %edi, 8(%esp)
	movl      -12(%ebp), %ecx
	movl      $40000, %edx
	movl      %edx, 12(%esp)
	movl      %esi, (%esp)
	movl      %ecx, 4(%esp)
	call      _test_inflate
L00001076:
	movl      %edi, 8(%esp)
	movl      -12(%ebp), %edx
	movl      $40000, %eax
	movl      %eax, 12(%esp)
	movl      %esi, (%esp)
	movl      %edx, 4(%esp)
	call      _test_large_deflate
L00001092:
	movl      %edi, 8(%esp)
	movl      -12(%ebp), %eax
	movl      $40000, %ecx
	movl      %ecx, 12(%esp)
	movl      %esi, (%esp)
	movl      %eax, 4(%esp)
	call      _test_large_inflate
L000010AE:
	movl      %esi, (%esp)
	leal      -12(%ebp), %edx
	movl      %edx, 4(%esp)
	call      _test_flush
L000010BD:
	movl      %edi, 8(%esp)
	movl      -12(%ebp), %eax
	movl      $40000, %ecx
	movl      %ecx, 12(%esp)
	movl      %esi, (%esp)
	movl      %eax, 4(%esp)
	call      _test_sync
L000010D9:
	movl      %esi, (%esp)
	movl      $40000, %edx
	movl      %edx, 4(%esp)
	movl      $40000, -12(%ebp)
	call      _test_dict_deflate
L000010F1:
	movl      %edi, 8(%esp)
	movl      -12(%ebp), %eax
	movl      $40000, %ecx
	movl      %ecx, 12(%esp)
	movl      %esi, (%esp)
	movl      %eax, 4(%esp)
	call      _test_dict_inflate
L0000110D:
	movl      %esi, (%esp)
	call      _free
L00001115:
	movl      %edi, (%esp)
	call      _free
L0000111D:
	leal      -8(%ebp), %esp
	xorl      %eax, %eax
	popl      %esi
	popl      %edi
	popl      %ebp
	ret       
L00001126:
	movl      $LC0000031C, (%esp)
	movl      __imp___iob, %edi
	movl      $32, %edx
	movl      %edx, 8(%esp)
	movl      $1, %eax
	movl      %eax, 4(%esp)
	addl      $64, %edi
	movl      %edi, 12(%esp)
	call      _fwrite
L00001151:
	jmp       L00000FA1
L00001156:
	movl      $LC0000033D, (%esp)
	movl      __imp___iob, %edx
	movl      $26, %edi
	movl      %edi, 8(%esp)
	movl      $1, %esi
	movl      %esi, 4(%esp)
	addl      $64, %edx
	movl      %edx, 12(%esp)
	call      _fwrite
L00001181:
	movl      $1, (%esp)
	call      _exit
L0000118D:
	movl      $LC00000358, (%esp)
	call      _puts
L00001199:
	jmp       L00001181
	.size	_main, .-_main
# ----------------------
	.bss
_zfree:
	.zero	16
_zalloc:
	.zero	16
# ----------------------
	.section       .rdata
_dictionary:
	.string	"hello"
LC00000006:
	.string	"uncompress(): %s\n"
LC00000018:
	.string	"compress"
LC00000021:
	.string	"%s error: %d\n"
LC0000002F:
	.string	"uncompress"
LC0000003A:
	.string	"bad uncompress\n"
LC0000004A:
	.string	"wb"
LC0000004D:
	.string	"ello"
LC00000052:
	.string	"hello"
LC00000058:
	.string	", %s!"
LC0000005E:
	.string	"rb"
LC00000061:
	.string	"gzread(): %s\n"
	.align 2
LC00000070:
	.string	"gzseek error, pos=%ld, gztell=%ld\n"
LC00000093:
	.string	"gzgetc error\n"
LC000000A1:
	.string	"gzgets() after gzseek: %s\n"
LC000000BC:
	.string	"gzopen error\n"
LC000000CA:
	.string	"gzputs err: %s\n"
LC000000DA:
	.string	"gzprintf err: %s\n"
LC000000EC:
	.string	"gzread err: %s\n"
LC000000FC:
	.string	"bad gzread: %s\n"
LC0000010C:
	.string	"bad gzgets after gzseek\n"
LC00000125:
	.string	"gzgets err after gzseek: %s\n"
LC00000142:
	.string	"gzungetc error\n"
LC00000152:
	.string	"1.2.8"
LC00000158:
	.string	"deflate"
LC00000160:
	.string	"deflateInit"
LC0000016C:
	.string	"deflateEnd"
LC00000177:
	.string	"inflate"
LC0000017F:
	.string	"inflate(): %s\n"
LC0000018E:
	.string	"inflateInit"
LC0000019A:
	.string	"inflateEnd"
LC000001A5:
	.string	"bad inflate\n"
LC000001B2:
	.string	"deflate not greedy\n"
	.align 4
LC000001C8:
	.string	"deflate should report Z_STREAM_END\n"
LC000001EC:
	.string	"large_inflate(): OK"
LC00000200:
	.string	"large inflate"
LC0000020E:
	.string	"bad large inflate: %ld\n"
LC00000226:
	.string	"after inflateSync(): hel%s\n"
LC00000242:
	.string	"inflateSync"
	.align 4
LC00000250:
	.string	"inflate should report DATA_ERROR\n"
LC00000272:
	.string	"deflateSetDictionary"
LC00000287:
	.string	"inflate with dict"
LC00000299:
	.string	"inflate with dictionary: %s\n"
LC000002B6:
	.string	"unexpected dictionary"
LC000002CC:
	.string	"bad inflate with dict\n"
	.align 2
LC000002E4:
	.string	"zlib version %s = 0x%04x, compile flags = 0x%lx\n"
LC00000315:
	.string	"foo.gz"
LC0000031C:
	.string	"warning: different zlib version\n"
LC0000033D:
	.string	"incompatible zlib version\n"
LC00000358:
	.string	"out of memory"
# ----------------------
	.data
_hello:
	.ascii	"hello,"
LD00000006:
	.string	" hello!"
	.align 4
LD00000010:
	.long	LC00000152
# ----------------------
