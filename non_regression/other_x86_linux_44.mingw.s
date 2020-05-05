	.file	"example.c"
.globl _dictionary
	.section .rdata,"dr"
_dictionary:
	.ascii "hello\0"
.globl _hello
	.data
_hello:
	.ascii "hello, hello!\0"
.lcomm _zfree,16
.lcomm _zalloc,16
	.section .rdata,"dr"
LC4:
	.ascii "uncompress(): %s\12\0"
LC0:
	.ascii "compress\0"
LC1:
	.ascii "%s error: %d\12\0"
LC2:
	.ascii "uncompress\0"
LC3:
	.ascii "bad uncompress\12\0"
	.text
	.p2align 4,,15
.globl _test_compress
	.def	_test_compress;	.scl	2;	.type	32;	.endef
_test_compress:
	pushl	%ebp
	movl	%esp, %ebp
	pushl	%esi
	pushl	%ebx
	subl	$16, %esp
	movl	8(%ebp), %esi
	movl	$_hello, (%esp)
	movl	16(%ebp), %ebx
	call	_strlen
	movl	%esi, (%esp)
	incl	%eax
	movl	$_hello, %edx
	movl	%eax, 12(%esp)
	leal	12(%ebp), %eax
	movl	%edx, 8(%esp)
	movl	%eax, 4(%esp)
	call	_compress
	testl	%eax, %eax
	jne	L9
	movl	$1651663207, (%ebx)
	movl	$6645601, 4(%ebx)
	movl	12(%ebp), %eax
	movl	%esi, 8(%esp)
	leal	20(%ebp), %esi
	movl	%eax, 12(%esp)
	movl	%esi, 4(%esp)
	movl	%ebx, (%esp)
	call	_uncompress
	testl	%eax, %eax
	jne	L10
	movl	%ebx, (%esp)
	movl	$_hello, %esi
	movl	%esi, 4(%esp)
	call	_strcmp
	testl	%eax, %eax
	jne	L11
	movl	%ebx, 4(%esp)
	movl	$LC4, (%esp)
	call	_printf
	addl	$16, %esp
	popl	%ebx
	popl	%esi
	popl	%ebp
	ret
L9:
	movl	%eax, 12(%esp)
	movl	$LC0, %ecx
	movl	%ecx, 8(%esp)
L7:
	movl	__imp___iob, %edx
	movl	$LC1, %ecx
	movl	%ecx, 4(%esp)
	addl	$64, %edx
	movl	%edx, (%esp)
	call	_fprintf
L6:
	movl	$1, (%esp)
	call	_exit
L10:
	movl	%eax, 12(%esp)
	movl	$LC2, %ebx
	movl	%ebx, 8(%esp)
	jmp	L7
L11:
	movl	$LC3, (%esp)
	movl	__imp___iob, %edx
	movl	$15, %ebx
	movl	%ebx, 8(%esp)
	movl	$1, %eax
	movl	%eax, 4(%esp)
	addl	$64, %edx
	movl	%edx, 12(%esp)
	call	_fwrite
	jmp	L6
	.section .rdata,"dr"
LC5:
	.ascii "wb\0"
LC7:
	.ascii "ello\0"
LC9:
	.ascii "hello\0"
LC10:
	.ascii ", %s!\0"
LC12:
	.ascii "rb\0"
LC15:
	.ascii "gzread(): %s\12\0"
	.align 4
LC16:
	.ascii "gzseek error, pos=%ld, gztell=%ld\12\0"
LC17:
	.ascii "gzgetc error\12\0"
LC21:
	.ascii "gzgets() after gzseek: %s\12\0"
LC6:
	.ascii "gzopen error\12\0"
LC8:
	.ascii "gzputs err: %s\12\0"
LC11:
	.ascii "gzprintf err: %s\12\0"
LC13:
	.ascii "gzread err: %s\12\0"
LC14:
	.ascii "bad gzread: %s\12\0"
LC20:
	.ascii "bad gzgets after gzseek\12\0"
LC19:
	.ascii "gzgets err after gzseek: %s\12\0"
LC18:
	.ascii "gzungetc error\12\0"
	.text
	.p2align 4,,15
.globl _test_gzio
	.def	_test_gzio;	.scl	2;	.type	32;	.endef
_test_gzio:
	pushl	%ebp
	movl	%esp, %ebp
	pushl	%edi
	pushl	%esi
	pushl	%ebx
	subl	$28, %esp
	movl	$LC5, %ebx
	movl	$_hello, (%esp)
	movl	12(%ebp), %edi
	call	_strlen
	movl	%ebx, 4(%esp)
	leal	1(%eax), %esi
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_gzopen
	testl	%eax, %eax
	movl	%eax, %ebx
	je	L33
	movl	%eax, (%esp)
	movl	$104, %ecx
	movl	%ecx, 4(%esp)
	call	_gzputc
	movl	%ebx, (%esp)
	movl	$LC7, %edx
	movl	%edx, 4(%esp)
	call	_gzputs
	cmpl	$4, %eax
	jne	L35
	movl	%ebx, (%esp)
	movl	$LC9, %edx
	movl	$LC10, %eax
	movl	%edx, 8(%esp)
	movl	%eax, 4(%esp)
	call	_gzprintf
	cmpl	$8, %eax
	jne	L36
	movl	%ebx, (%esp)
	movl	$1, %ecx
	movl	$1, %edx
	movl	%ecx, 8(%esp)
	movl	%edx, 4(%esp)
	call	_gzseek
	movl	%ebx, (%esp)
	call	_gzclose
	movl	8(%ebp), %ecx
	movl	$LC12, %eax
	movl	%eax, 4(%esp)
	movl	%ecx, (%esp)
	call	_gzopen
	testl	%eax, %eax
	movl	%eax, %ebx
	je	L33
	movl	$1651663207, (%edi)
	movl	$6645601, 4(%edi)
	movl	16(%ebp), %eax
	movl	%edi, 4(%esp)
	movl	%ebx, (%esp)
	movl	%eax, 8(%esp)
	call	_gzread
	cmpl	%esi, %eax
	jne	L37
	movl	%edi, (%esp)
	movl	$_hello, %ecx
	movl	%ecx, 4(%esp)
	call	_strcmp
	testl	%eax, %eax
	jne	L38
	movl	%edi, 4(%esp)
	movl	$-8, %esi
	movl	$LC15, (%esp)
	call	_printf
	movl	%esi, 4(%esp)
	movl	$1, %eax
	movl	%eax, 8(%esp)
	movl	%ebx, (%esp)
	call	_gzseek
	cmpl	$6, %eax
	movl	%eax, %esi
	jne	L21
	movl	%ebx, (%esp)
	call	_gztell
	cmpl	$6, %eax
	je	L20
L21:
	movl	%ebx, (%esp)
	movl	$LC16, %ebx
	call	_gztell
	movl	%eax, 12(%esp)
	movl	__imp___iob, %edi
	movl	%esi, 8(%esp)
	movl	%ebx, 4(%esp)
	addl	$64, %edi
	movl	%edi, (%esp)
	call	_fprintf
L30:
	movl	$1, (%esp)
	call	_exit
	.p2align 4,,7
L20:
	movl	(%ebx), %eax
	testl	%eax, %eax
	je	L23
	incl	8(%ebx)
	decl	%eax
	movl	4(%ebx), %ecx
	movl	%eax, (%ebx)
	movzbl	(%ecx), %edx
	incl	%ecx
	movl	%ecx, 4(%ebx)
	cmpl	$32, %edx
L29:
	je	L22
	movl	$LC17, (%esp)
	movl	__imp___iob, %edi
	movl	$1, %esi
	movl	%esi, 4(%esp)
	movl	$13, %eax
	movl	%eax, 8(%esp)
	addl	$64, %edi
	movl	%edi, 12(%esp)
	call	_fwrite
	jmp	L30
L23:
	movl	%ebx, (%esp)
	call	_gzgetc
	cmpl	$32, %eax
	jmp	L29
L22:
	movl	%ebx, 4(%esp)
	movl	$32, (%esp)
	call	_gzungetc
	cmpl	$32, %eax
	jne	L39
	movl	%edi, 4(%esp)
	movl	16(%ebp), %esi
	movl	%ebx, (%esp)
	movl	%esi, 8(%esp)
	call	_gzgets
	movl	%edi, (%esp)
	call	_strlen
	cmpl	$7, %eax
	jne	L40
	movl	%edi, (%esp)
	movl	$_hello+6, %edx
	movl	%edx, 4(%esp)
	call	_strcmp
	testl	%eax, %eax
	jne	L41
	movl	%edi, 4(%esp)
	movl	$LC21, (%esp)
	call	_printf
	movl	%ebx, (%esp)
	call	_gzclose
	addl	$28, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
L33:
	movl	$LC6, (%esp)
	movl	__imp___iob, %ebx
	movl	$13, %edi
	movl	%edi, 8(%esp)
	movl	$1, %esi
	movl	%esi, 4(%esp)
	addl	$64, %ebx
	movl	%ebx, 12(%esp)
	call	_fwrite
	jmp	L30
L35:
	movl	%ebx, (%esp)
	leal	-16(%ebp), %esi
	movl	%esi, 4(%esp)
	call	_gzerror
	movl	%eax, 8(%esp)
	movl	$LC8, %eax
L34:
	movl	%eax, 4(%esp)
	movl	__imp___iob, %ebx
	addl	$64, %ebx
	movl	%ebx, (%esp)
	call	_fprintf
	jmp	L30
L36:
	movl	%ebx, (%esp)
	leal	-16(%ebp), %edi
	movl	%edi, 4(%esp)
	call	_gzerror
	movl	%eax, 8(%esp)
	movl	$LC11, %eax
	jmp	L34
L37:
	movl	%ebx, (%esp)
	leal	-16(%ebp), %edx
	movl	%edx, 4(%esp)
	call	_gzerror
	movl	%eax, 8(%esp)
	movl	$LC13, %eax
	jmp	L34
L38:
	movl	%edi, 8(%esp)
	movl	$LC14, %eax
	jmp	L34
L41:
	movl	$LC20, (%esp)
	movl	__imp___iob, %ecx
	movl	$24, %ebx
	movl	%ebx, 8(%esp)
	movl	$1, %edi
	movl	%edi, 4(%esp)
	addl	$64, %ecx
	movl	%ecx, 12(%esp)
	call	_fwrite
	jmp	L30
L40:
	movl	%ebx, (%esp)
	leal	-16(%ebp), %eax
	movl	%eax, 4(%esp)
	call	_gzerror
	movl	%eax, 8(%esp)
	movl	$LC19, %eax
	jmp	L34
L39:
	movl	$LC18, (%esp)
	movl	__imp___iob, %ecx
	movl	$15, %edx
	movl	%edx, 8(%esp)
	movl	$1, %ebx
	movl	%ebx, 4(%esp)
	addl	$64, %ecx
	movl	%ecx, 12(%esp)
	call	_fwrite
	jmp	L30
	.section .rdata,"dr"
LC22:
	.ascii "1.2.8\0"
LC24:
	.ascii "deflate\0"
LC23:
	.ascii "deflateInit\0"
LC25:
	.ascii "deflateEnd\0"
	.text
	.p2align 4,,15
.globl _test_deflate
	.def	_test_deflate;	.scl	2;	.type	32;	.endef
_test_deflate:
	pushl	%ebp
	movl	%esp, %ebp
	pushl	%edi
	pushl	%esi
	pushl	%ebx
	subl	$92, %esp
	movl	12(%ebp), %edi
	movl	$_hello, (%esp)
	call	_strlen
	movl	$0, -48(%ebp)
	movl	_zfree, %ebx
	leal	1(%eax), %esi
	movl	_zalloc, %eax
	movl	$56, %ecx
	movl	$LC22, %edx
	movl	%ecx, 12(%esp)
	movl	%ebx, -52(%ebp)
	leal	-88(%ebp), %ebx
	movl	%eax, -56(%ebp)
	movl	$-1, %eax
	movl	%edx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	%ebx, (%esp)
	call	_deflateInit_
	testl	%eax, %eax
	jne	L63
	movl	$_hello, -88(%ebp)
	movl	8(%ebp), %edx
	movl	%edx, -76(%ebp)
	.p2align 4,,15
L44:
	cmpl	%esi, -80(%ebp)
	je	L55
	cmpl	%edi, -68(%ebp)
	jae	L55
	movl	$1, -72(%ebp)
	xorl	%ecx, %ecx
	movl	$1, -84(%ebp)
	movl	%ecx, 4(%esp)
	movl	%ebx, (%esp)
	call	_deflate
	testl	%eax, %eax
	je	L44
L61:
	movl	%eax, 12(%esp)
	movl	$LC24, %eax
L62:
	movl	%eax, 8(%esp)
L60:
	movl	__imp___iob, %ebx
	movl	$LC1, %eax
	movl	%eax, 4(%esp)
	addl	$64, %ebx
	movl	%ebx, (%esp)
	call	_fprintf
	movl	$1, (%esp)
	call	_exit
	.p2align 4,,7
L64:
	testl	%eax, %eax
	jne	L61
L55:
	movl	$1, -72(%ebp)
	movl	$4, %esi
	movl	%esi, 4(%esp)
	movl	%ebx, (%esp)
	call	_deflate
	cmpl	$1, %eax
	jne	L64
	movl	%ebx, (%esp)
	call	_deflateEnd
	testl	%eax, %eax
	jne	L65
	addl	$92, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
L63:
	movl	%eax, 12(%esp)
	movl	$LC23, %eax
	jmp	L62
L65:
	movl	%eax, 12(%esp)
	movl	$LC25, %edi
	movl	%edi, 8(%esp)
	jmp	L60
	.section .rdata,"dr"
LC27:
	.ascii "inflate\0"
LC30:
	.ascii "inflate(): %s\12\0"
LC26:
	.ascii "inflateInit\0"
LC28:
	.ascii "inflateEnd\0"
LC29:
	.ascii "bad inflate\12\0"
	.text
	.p2align 4,,15
.globl _test_inflate
	.def	_test_inflate;	.scl	2;	.type	32;	.endef
_test_inflate:
	pushl	%ebp
	movl	$56, %edx
	movl	%esp, %ebp
	pushl	%edi
	pushl	%esi
	pushl	%ebx
	subl	$92, %esp
	movl	16(%ebp), %esi
	movl	20(%ebp), %edi
	movl	$1651663207, (%esi)
	movl	$6645601, 4(%esi)
	movl	_zalloc, %eax
	movl	$0, -48(%ebp)
	movl	_zfree, %ebx
	movl	$0, -84(%ebp)
	movl	8(%ebp), %ecx
	movl	%eax, -56(%ebp)
	movl	$LC22, %eax
	movl	%ebx, -52(%ebp)
	leal	-88(%ebp), %ebx
	movl	%ecx, -88(%ebp)
	movl	%esi, -76(%ebp)
	movl	%edx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	%ebx, (%esp)
	call	_inflateInit_
	testl	%eax, %eax
	jne	L83
	.p2align 4,,15
L68:
	cmpl	%edi, -68(%ebp)
	jae	L69
	movl	12(%ebp), %edx
	cmpl	%edx, -80(%ebp)
	jae	L69
	movl	$1, -72(%ebp)
	xorl	%ecx, %ecx
	movl	$1, -84(%ebp)
	movl	%ecx, 4(%esp)
	movl	%ebx, (%esp)
	call	_inflate
	cmpl	$1, %eax
	je	L69
	testl	%eax, %eax
	je	L68
	movl	%eax, 12(%esp)
	movl	$LC27, %eax
L82:
	movl	%eax, 8(%esp)
	movl	__imp___iob, %esi
	movl	$LC1, %edi
	movl	%edi, 4(%esp)
	addl	$64, %esi
	movl	%esi, (%esp)
	call	_fprintf
L80:
	movl	$1, (%esp)
	call	_exit
	.p2align 4,,7
L69:
	movl	%ebx, (%esp)
	call	_inflateEnd
	testl	%eax, %eax
	jne	L84
	movl	%esi, (%esp)
	movl	$_hello, %ebx
	movl	%ebx, 4(%esp)
	call	_strcmp
	testl	%eax, %eax
	jne	L85
	movl	%esi, 4(%esp)
	movl	$LC30, (%esp)
	call	_printf
	addl	$92, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
L83:
	movl	%eax, 12(%esp)
	movl	$LC26, %eax
	jmp	L82
L84:
	movl	%eax, 12(%esp)
	movl	$LC28, %eax
	jmp	L82
L85:
	movl	$LC29, (%esp)
	movl	__imp___iob, %ecx
	movl	$12, %edx
	movl	%edx, 8(%esp)
	movl	$1, %eax
	movl	%eax, 4(%esp)
	addl	$64, %ecx
	movl	%ecx, 12(%esp)
	call	_fwrite
	jmp	L80
	.section .rdata,"dr"
LC31:
	.ascii "deflate not greedy\12\0"
	.align 4
LC32:
	.ascii "deflate should report Z_STREAM_END\12\0"
	.text
	.p2align 4,,15
.globl _test_large_deflate
	.def	_test_large_deflate;	.scl	2;	.type	32;	.endef
_test_large_deflate:
	pushl	%ebp
	movl	$56, %ecx
	movl	%esp, %ebp
	pushl	%edi
	movl	$LC22, %edx
	pushl	%esi
	pushl	%ebx
	subl	$92, %esp
	movl	_zalloc, %eax
	movl	$0, -48(%ebp)
	movl	_zfree, %esi
	movl	8(%ebp), %edi
	movl	%eax, -56(%ebp)
	movl	$1, %eax
	movl	12(%ebp), %ebx
	movl	%esi, -52(%ebp)
	leal	-88(%ebp), %esi
	movl	%ecx, 12(%esp)
	movl	%edx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	%esi, (%esp)
	call	_deflateInit_
	testl	%eax, %eax
	jne	L99
	movl	%edi, -76(%ebp)
	movl	16(%ebp), %eax
	xorl	%edx, %edx
	movl	%ebx, -72(%ebp)
	movl	20(%ebp), %ecx
	movl	%edx, 4(%esp)
	movl	%eax, -88(%ebp)
	movl	%ecx, -84(%ebp)
	movl	%esi, (%esp)
	call	_deflate
	testl	%eax, %eax
	jne	L97
	movl	-84(%ebp), %edx
	testl	%edx, %edx
	jne	L100
	movl	%esi, (%esp)
	xorl	%edx, %edx
	xorl	%eax, %eax
	movl	%edx, 8(%esp)
	shrl	%ebx
	movl	%eax, 4(%esp)
	call	_deflateParams
	movl	%edi, -88(%ebp)
	xorl	%ecx, %ecx
	movl	%ebx, -84(%ebp)
	movl	%ecx, 4(%esp)
	movl	%esi, (%esp)
	call	_deflate
	testl	%eax, %eax
	jne	L97
	movl	%esi, (%esp)
	movl	$1, %edx
	movl	$9, %eax
	movl	%edx, 8(%esp)
	xorl	%ebx, %ebx
	movl	%eax, 4(%esp)
	call	_deflateParams
	movl	%ebx, 4(%esp)
	movl	16(%ebp), %ecx
	movl	20(%ebp), %edi
	movl	%esi, (%esp)
	movl	%ecx, -88(%ebp)
	movl	%edi, -84(%ebp)
	call	_deflate
	testl	%eax, %eax
	jne	L97
	movl	%esi, (%esp)
	movl	$4, %ebx
	movl	%ebx, 4(%esp)
	call	_deflate
	decl	%eax
	jne	L101
	movl	%esi, (%esp)
	call	_deflateEnd
	testl	%eax, %eax
	jne	L102
	addl	$92, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
L97:
	movl	%eax, 12(%esp)
	movl	$LC24, %eax
L98:
	movl	%eax, 8(%esp)
L95:
	movl	__imp___iob, %edx
	movl	$LC1, %ebx
	movl	%ebx, 4(%esp)
	addl	$64, %edx
	movl	%edx, (%esp)
	call	_fprintf
L94:
	movl	$1, (%esp)
	call	_exit
L99:
	movl	%eax, 12(%esp)
	movl	$LC23, %eax
	jmp	L98
L100:
	movl	$LC31, (%esp)
	movl	__imp___iob, %esi
	movl	$19, %edi
	movl	%edi, 8(%esp)
	movl	$1, %ebx
	movl	%ebx, 4(%esp)
	addl	$64, %esi
	movl	%esi, 12(%esp)
	call	_fwrite
	jmp	L94
L101:
	movl	$LC32, (%esp)
	movl	__imp___iob, %ecx
	movl	$35, %edi
	movl	%edi, 8(%esp)
	movl	$1, %esi
	movl	%esi, 4(%esp)
	addl	$64, %ecx
	movl	%ecx, 12(%esp)
	call	_fwrite
	jmp	L94
L102:
	movl	%eax, 12(%esp)
	movl	$LC25, %eax
	movl	%eax, 8(%esp)
	jmp	L95
	.section .rdata,"dr"
LC35:
	.ascii "large_inflate(): OK\0"
LC33:
	.ascii "large inflate\0"
LC34:
	.ascii "bad large inflate: %ld\12\0"
	.text
	.p2align 4,,15
.globl _test_large_inflate
	.def	_test_large_inflate;	.scl	2;	.type	32;	.endef
_test_large_inflate:
	pushl	%ebp
	movl	%esp, %ebp
	pushl	%edi
	pushl	%esi
	pushl	%ebx
	subl	$92, %esp
	movl	16(%ebp), %esi
	movl	20(%ebp), %edi
	movl	$1651663207, (%esi)
	movl	$6645601, 4(%esi)
	movl	_zalloc, %edx
	movl	$0, -48(%ebp)
	movl	_zfree, %eax
	movl	8(%ebp), %ebx
	movl	%edx, -56(%ebp)
	movl	12(%ebp), %ecx
	movl	$56, %edx
	movl	%eax, -52(%ebp)
	movl	$LC22, %eax
	movl	%ebx, -88(%ebp)
	leal	-88(%ebp), %ebx
	movl	%ecx, -84(%ebp)
	movl	%edx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	%ebx, (%esp)
	call	_inflateInit_
	testl	%eax, %eax
	je	L112
	jmp	L117
	.p2align 4,,7
L119:
	testl	%eax, %eax
	jne	L118
L112:
	movl	%esi, -76(%ebp)
	xorl	%ecx, %ecx
	movl	%edi, -72(%ebp)
	movl	%ecx, 4(%esp)
	movl	%ebx, (%esp)
	call	_inflate
	cmpl	$1, %eax
	jne	L119
	movl	%ebx, (%esp)
	call	_inflateEnd
	testl	%eax, %eax
	jne	L120
	shrl	12(%ebp)
	movl	-68(%ebp), %edx
	movl	12(%ebp), %ecx
	leal	(%ecx,%edi,2), %esi
	cmpl	%esi, %edx
	jne	L121
	movl	$LC35, (%esp)
	call	_puts
	addl	$92, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
L118:
	movl	%eax, 12(%esp)
	movl	$LC33, %edi
	movl	%edi, 8(%esp)
L116:
	movl	__imp___iob, %ebx
	movl	$LC1, %eax
	movl	%eax, 4(%esp)
	addl	$64, %ebx
	movl	%ebx, (%esp)
	call	_fprintf
L115:
	movl	$1, (%esp)
	call	_exit
L117:
	movl	%eax, 12(%esp)
	movl	$LC26, %esi
	movl	%esi, 8(%esp)
	jmp	L116
L120:
	movl	%eax, 12(%esp)
	movl	$LC28, %edx
	movl	%edx, 8(%esp)
	jmp	L116
L121:
	movl	%edx, 8(%esp)
	movl	__imp___iob, %edi
	movl	$LC34, %ebx
	movl	%ebx, 4(%esp)
	addl	$64, %edi
	movl	%edi, (%esp)
	call	_fprintf
	jmp	L115
	.p2align 4,,15
.globl _test_flush
	.def	_test_flush;	.scl	2;	.type	32;	.endef
_test_flush:
	pushl	%ebp
	movl	%esp, %ebp
	pushl	%edi
	pushl	%esi
	pushl	%ebx
	subl	$92, %esp
	movl	8(%ebp), %esi
	movl	$_hello, (%esp)
	call	_strlen
	movl	$0, -48(%ebp)
	movl	_zfree, %ebx
	movl	%eax, %edi
	movl	_zalloc, %eax
	movl	$56, %ecx
	movl	$LC22, %edx
	movl	%ecx, 12(%esp)
	movl	%ebx, -52(%ebp)
	leal	-88(%ebp), %ebx
	movl	%eax, -56(%ebp)
	movl	$-1, %eax
	movl	%edx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	%ebx, (%esp)
	call	_deflateInit_
	testl	%eax, %eax
	jne	L131
	movl	$_hello, -88(%ebp)
	movl	12(%ebp), %eax
	movl	$3, %edx
	movl	%esi, -76(%ebp)
	movl	$3, -84(%ebp)
	movl	(%eax), %ecx
	movl	%edx, 4(%esp)
	movl	%ebx, (%esp)
	movl	%ecx, -72(%ebp)
	call	_deflate
	testl	%eax, %eax
	jne	L129
	incb	3(%esi)
	leal	-2(%edi), %edx
	movl	$4, %esi
	movl	%edx, -84(%ebp)
	movl	%esi, 4(%esp)
	movl	%ebx, (%esp)
	call	_deflate
	cmpl	$1, %eax
	je	L125
	testl	%eax, %eax
	jne	L129
L125:
	movl	%ebx, (%esp)
	call	_deflateEnd
	testl	%eax, %eax
	jne	L132
	movl	12(%ebp), %esi
	movl	-68(%ebp), %eax
	movl	%eax, (%esi)
	addl	$92, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
L129:
	movl	%eax, 12(%esp)
	movl	$LC24, %edi
	movl	%edi, 8(%esp)
L128:
	movl	__imp___iob, %ebx
	movl	$LC1, %ecx
	movl	%ecx, 4(%esp)
	addl	$64, %ebx
	movl	%ebx, (%esp)
	call	_fprintf
	movl	$1, (%esp)
	call	_exit
L131:
	movl	%eax, 12(%esp)
	movl	$LC23, %eax
	movl	%eax, 8(%esp)
	jmp	L128
L132:
	movl	%eax, 12(%esp)
	movl	$LC25, %eax
	movl	%eax, 8(%esp)
	jmp	L128
	.section .rdata,"dr"
LC38:
	.ascii "after inflateSync(): hel%s\12\0"
LC36:
	.ascii "inflateSync\0"
	.align 4
LC37:
	.ascii "inflate should report DATA_ERROR\12\0"
	.text
	.p2align 4,,15
.globl _test_sync
	.def	_test_sync;	.scl	2;	.type	32;	.endef
_test_sync:
	pushl	%ebp
	movl	$56, %edx
	movl	%esp, %ebp
	pushl	%esi
	pushl	%ebx
	subl	$80, %esp
	movl	16(%ebp), %esi
	movl	$1651663207, (%esi)
	movl	$6645601, 4(%esi)
	movl	_zalloc, %eax
	movl	$0, -32(%ebp)
	movl	_zfree, %ebx
	movl	$2, -68(%ebp)
	movl	8(%ebp), %ecx
	movl	%eax, -40(%ebp)
	movl	$LC22, %eax
	movl	%ebx, -36(%ebp)
	leal	-72(%ebp), %ebx
	movl	%ecx, -72(%ebp)
	movl	%edx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	%ebx, (%esp)
	call	_inflateInit_
	testl	%eax, %eax
	jne	L142
	movl	%esi, -60(%ebp)
	movl	20(%ebp), %eax
	xorl	%ecx, %ecx
	movl	%ecx, 4(%esp)
	movl	%ebx, (%esp)
	movl	%eax, -56(%ebp)
	call	_inflate
	movl	%ebx, (%esp)
	movl	12(%ebp), %edx
	subl	$2, %edx
	movl	%edx, -68(%ebp)
	call	_inflateSync
	testl	%eax, %eax
	jne	L143
	movl	%ebx, (%esp)
	movl	$4, %edx
	movl	%edx, 4(%esp)
	call	_inflate
	cmpl	$-3, %eax
	jne	L144
	movl	%ebx, (%esp)
	call	_inflateEnd
	testl	%eax, %eax
	jne	L145
	movl	%esi, 4(%esp)
	movl	$LC38, (%esp)
	call	_printf
	addl	$80, %esp
	popl	%ebx
	popl	%esi
	popl	%ebp
	ret
L142:
	movl	%eax, 12(%esp)
	movl	$LC26, %eax
L141:
	movl	%eax, 8(%esp)
L140:
	movl	__imp___iob, %edx
	movl	$LC1, %esi
	movl	%esi, 4(%esp)
	addl	$64, %edx
	movl	%edx, (%esp)
	call	_fprintf
L139:
	movl	$1, (%esp)
	call	_exit
L143:
	movl	%eax, 12(%esp)
	movl	$LC36, %eax
	jmp	L141
L144:
	movl	$LC37, (%esp)
	movl	__imp___iob, %ecx
	movl	$33, %ebx
	movl	%ebx, 8(%esp)
	movl	$1, %esi
	movl	%esi, 4(%esp)
	addl	$64, %ecx
	movl	%ecx, 12(%esp)
	call	_fwrite
	jmp	L139
L145:
	movl	%eax, 12(%esp)
	movl	$LC28, %eax
	movl	%eax, 8(%esp)
	jmp	L140
	.section .rdata,"dr"
LC39:
	.ascii "deflateSetDictionary\0"
	.text
	.p2align 4,,15
.globl _test_dict_deflate
	.def	_test_dict_deflate;	.scl	2;	.type	32;	.endef
_test_dict_deflate:
	pushl	%ebp
	movl	$LC22, %ecx
	movl	%esp, %ebp
	pushl	%ebx
	subl	$84, %esp
	movl	$56, %ebx
	movl	%ebx, 12(%esp)
	movl	_zalloc, %edx
	leal	-72(%ebp), %ebx
	movl	$0, -32(%ebp)
	movl	_zfree, %eax
	movl	%ecx, 8(%esp)
	movl	%edx, -40(%ebp)
	movl	$9, %edx
	movl	%eax, -36(%ebp)
	movl	%edx, 4(%esp)
	movl	%ebx, (%esp)
	call	_deflateInit_
	testl	%eax, %eax
	jne	L154
	movl	%ebx, (%esp)
	movl	$6, %eax
	movl	$_dictionary, %ecx
	movl	%eax, 8(%esp)
	movl	%ecx, 4(%esp)
	call	_deflateSetDictionary
	testl	%eax, %eax
	jne	L155
	movl	$_hello, -72(%ebp)
	movl	-24(%ebp), %edx
	movl	8(%ebp), %eax
	movl	$_hello, (%esp)
	movl	12(%ebp), %ecx
	movl	%edx, _dictId
	movl	%eax, -60(%ebp)
	movl	%ecx, -56(%ebp)
	call	_strlen
	movl	%ebx, (%esp)
	incl	%eax
	movl	$4, %edx
	movl	%eax, -68(%ebp)
	movl	%edx, 4(%esp)
	call	_deflate
	decl	%eax
	jne	L156
	movl	%ebx, (%esp)
	call	_deflateEnd
	testl	%eax, %eax
	jne	L157
	addl	$84, %esp
	popl	%ebx
	popl	%ebp
	ret
L154:
	movl	%eax, 12(%esp)
	movl	$LC23, %eax
L153:
	movl	%eax, 8(%esp)
L152:
	movl	__imp___iob, %ebx
	movl	$LC1, %ecx
	movl	%ecx, 4(%esp)
	addl	$64, %ebx
	movl	%ebx, (%esp)
	call	_fprintf
L151:
	movl	$1, (%esp)
	call	_exit
L155:
	movl	%eax, 12(%esp)
	movl	$LC39, %eax
	jmp	L153
L156:
	movl	$LC32, (%esp)
	movl	__imp___iob, %eax
	movl	$35, %ecx
	movl	%ecx, 8(%esp)
	movl	$1, %ebx
	movl	%ebx, 4(%esp)
	addl	$64, %eax
	movl	%eax, 12(%esp)
	call	_fwrite
	jmp	L151
L157:
	movl	%eax, 12(%esp)
	movl	$LC25, %edx
	movl	%edx, 8(%esp)
	jmp	L152
	.section .rdata,"dr"
LC41:
	.ascii "inflate with dict\0"
LC43:
	.ascii "inflate with dictionary: %s\12\0"
LC40:
	.ascii "unexpected dictionary\0"
LC42:
	.ascii "bad inflate with dict\12\0"
	.text
	.p2align 4,,15
.globl _test_dict_inflate
	.def	_test_dict_inflate;	.scl	2;	.type	32;	.endef
_test_dict_inflate:
	pushl	%ebp
	movl	%esp, %ebp
	pushl	%esi
	pushl	%ebx
	subl	$80, %esp
	movl	16(%ebp), %esi
	movl	$1651663207, (%esi)
	movl	$6645601, 4(%esi)
	movl	_zalloc, %edx
	movl	$0, -32(%ebp)
	movl	_zfree, %eax
	movl	8(%ebp), %ebx
	movl	%edx, -40(%ebp)
	movl	12(%ebp), %ecx
	movl	$56, %edx
	movl	%eax, -36(%ebp)
	movl	$LC22, %eax
	movl	%ebx, -72(%ebp)
	leal	-72(%ebp), %ebx
	movl	%ecx, -68(%ebp)
	movl	%edx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	%ebx, (%esp)
	call	_inflateInit_
	testl	%eax, %eax
	jne	L175
	movl	%esi, -60(%ebp)
	movl	20(%ebp), %ecx
	movl	%ecx, -56(%ebp)
	jmp	L160
	.p2align 4,,7
L163:
	testl	%eax, %eax
	jne	L176
L160:
	movl	%ebx, (%esp)
	xorl	%eax, %eax
	movl	%eax, 4(%esp)
	call	_inflate
	cmpl	$1, %eax
	je	L161
	cmpl	$2, %eax
	jne	L163
	movl	_dictId, %edx
	cmpl	%edx, -24(%ebp)
	jne	L177
	movl	%ebx, (%esp)
	movl	$6, %edx
	movl	$_dictionary, %eax
	movl	%edx, 8(%esp)
	movl	%eax, 4(%esp)
	call	_inflateSetDictionary
	testl	%eax, %eax
	je	L160
L176:
	movl	%eax, 12(%esp)
	movl	$LC41, %eax
L174:
	movl	%eax, 8(%esp)
	movl	__imp___iob, %esi
	movl	$LC1, %ebx
	movl	%ebx, 4(%esp)
	addl	$64, %esi
	movl	%esi, (%esp)
	call	_fprintf
L171:
	movl	$1, (%esp)
	call	_exit
L161:
	movl	%ebx, (%esp)
	call	_inflateEnd
	testl	%eax, %eax
	jne	L178
	movl	%esi, (%esp)
	movl	$_hello, %ecx
	movl	%ecx, 4(%esp)
	call	_strcmp
	testl	%eax, %eax
	jne	L179
	movl	%esi, 4(%esp)
	movl	$LC43, (%esp)
	call	_printf
	addl	$80, %esp
	popl	%ebx
	popl	%esi
	popl	%ebp
	ret
L177:
	movl	$LC40, (%esp)
	movl	__imp___iob, %ecx
	movl	$21, %ebx
	movl	%ebx, 8(%esp)
	movl	$1, %esi
	movl	%esi, 4(%esp)
	addl	$64, %ecx
	movl	%ecx, 12(%esp)
	call	_fwrite
	jmp	L171
L175:
	movl	%eax, 12(%esp)
	movl	$LC26, %eax
	jmp	L174
L178:
	movl	%eax, 12(%esp)
	movl	$LC28, %eax
	jmp	L174
L179:
	movl	$LC42, (%esp)
	movl	__imp___iob, %esi
	movl	$22, %edx
	movl	%edx, 8(%esp)
	movl	$1, %eax
	movl	%eax, 4(%esp)
	addl	$64, %esi
	movl	%esi, 12(%esp)
	call	_fwrite
	jmp	L171
	.def	___main;	.scl	2;	.type	32;	.endef
	.data
	.align 4
myVersion.0:
	.long	LC22
	.section .rdata,"dr"
	.align 4
LC46:
	.ascii "zlib version %s = 0x%04x, compile flags = 0x%lx\12\0"
LC48:
	.ascii "foo.gz\0"
	.align 4
LC45:
	.ascii "warning: different zlib version\12\0"
LC44:
	.ascii "incompatible zlib version\12\0"
LC47:
	.ascii "out of memory\0"
	.text
	.p2align 4,,15
.globl _main
	.def	_main;	.scl	2;	.type	32;	.endef
_main:
	pushl	%ebp
	movl	$16, %eax
	movl	%esp, %ebp
	pushl	%edi
	pushl	%esi
	subl	$32, %esp
	andl	$-16, %esp
	call	__alloca
	call	___main
	movl	$40000, -12(%ebp)
	call	_zlibVersion
	movl	myVersion.0, %ecx
	movzbl	(%ecx), %edx
	cmpb	%dl, (%eax)
	jne	L188
	call	_zlibVersion
	cld
	movl	%eax, %esi
	movl	$6, %ecx
	movl	$LC22, %edi
	repe
	cmpsb
	jne	L189
L182:
	call	_zlibCompileFlags
	movl	%eax, 12(%esp)
	movl	$4736, %ecx
	movl	$LC22, %eax
	movl	%ecx, 8(%esp)
	movl	$1, %edi
	movl	%eax, 4(%esp)
	movl	$LC46, (%esp)
	call	_printf
	movl	%edi, 4(%esp)
	movl	-12(%ebp), %esi
	movl	%esi, (%esp)
	call	_calloc
	movl	$40000, (%esp)
	movl	%eax, %esi
	movl	$1, %edx
	movl	%edx, 4(%esp)
	call	_calloc
	testl	%esi, %esi
	movl	%eax, %edi
	sete	%cl
	testl	%eax, %eax
	sete	%al
	orl	%ecx, %eax
	testb	$1, %al
	jne	L190
	movl	%edi, 8(%esp)
	movl	-12(%ebp), %eax
	movl	$40000, %ecx
	movl	%ecx, 12(%esp)
	movl	%esi, (%esp)
	movl	%eax, 4(%esp)
	call	_test_compress
	cmpl	$1, 8(%ebp)
	movl	$40000, %edx
	movl	%edi, 4(%esp)
	movl	$LC48, %eax
	movl	%edx, 8(%esp)
	jle	L186
	movl	12(%ebp), %edx
	movl	4(%edx), %eax
L186:
	movl	%eax, (%esp)
	call	_test_gzio
	movl	%esi, (%esp)
	movl	-12(%ebp), %eax
	movl	%eax, 4(%esp)
	call	_test_deflate
	movl	%edi, 8(%esp)
	movl	-12(%ebp), %ecx
	movl	$40000, %edx
	movl	%edx, 12(%esp)
	movl	%esi, (%esp)
	movl	%ecx, 4(%esp)
	call	_test_inflate
	movl	%edi, 8(%esp)
	movl	-12(%ebp), %edx
	movl	$40000, %eax
	movl	%eax, 12(%esp)
	movl	%esi, (%esp)
	movl	%edx, 4(%esp)
	call	_test_large_deflate
	movl	%edi, 8(%esp)
	movl	-12(%ebp), %eax
	movl	$40000, %ecx
	movl	%ecx, 12(%esp)
	movl	%esi, (%esp)
	movl	%eax, 4(%esp)
	call	_test_large_inflate
	movl	%esi, (%esp)
	leal	-12(%ebp), %edx
	movl	%edx, 4(%esp)
	call	_test_flush
	movl	%edi, 8(%esp)
	movl	-12(%ebp), %eax
	movl	$40000, %ecx
	movl	%ecx, 12(%esp)
	movl	%esi, (%esp)
	movl	%eax, 4(%esp)
	call	_test_sync
	movl	%esi, (%esp)
	movl	$40000, %edx
	movl	%edx, 4(%esp)
	movl	$40000, -12(%ebp)
	call	_test_dict_deflate
	movl	%edi, 8(%esp)
	movl	-12(%ebp), %eax
	movl	$40000, %ecx
	movl	%ecx, 12(%esp)
	movl	%esi, (%esp)
	movl	%eax, 4(%esp)
	call	_test_dict_inflate
	movl	%esi, (%esp)
	call	_free
	movl	%edi, (%esp)
	call	_free
	leal	-8(%ebp), %esp
	xorl	%eax, %eax
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
	.p2align 4,,7
L189:
	movl	$LC45, (%esp)
	movl	__imp___iob, %edi
	movl	$32, %edx
	movl	%edx, 8(%esp)
	movl	$1, %eax
	movl	%eax, 4(%esp)
	addl	$64, %edi
	movl	%edi, 12(%esp)
	call	_fwrite
	jmp	L182
L188:
	movl	$LC44, (%esp)
	movl	__imp___iob, %edx
	movl	$26, %edi
	movl	%edi, 8(%esp)
	movl	$1, %esi
	movl	%esi, 4(%esp)
	addl	$64, %edx
	movl	%edx, 12(%esp)
	call	_fwrite
L187:
	movl	$1, (%esp)
	call	_exit
L190:
	movl	$LC47, (%esp)
	call	_puts
	jmp	L187
	.comm	_dictId, 16	 # 4
	.def	_puts;	.scl	2;	.type	32;	.endef
	.def	_fwrite;	.scl	2;	.type	32;	.endef
	.def	_free;	.scl	2;	.type	32;	.endef
	.def	_calloc;	.scl	2;	.type	32;	.endef
	.def	_zlibCompileFlags;	.scl	2;	.type	32;	.endef
	.def	_zlibVersion;	.scl	2;	.type	32;	.endef
	.def	_inflateSetDictionary;	.scl	2;	.type	32;	.endef
	.def	_deflateSetDictionary;	.scl	2;	.type	32;	.endef
	.def	_inflateSync;	.scl	2;	.type	32;	.endef
	.def	_deflateParams;	.scl	2;	.type	32;	.endef
	.def	_inflateEnd;	.scl	2;	.type	32;	.endef
	.def	_inflate;	.scl	2;	.type	32;	.endef
	.def	_inflateInit_;	.scl	2;	.type	32;	.endef
	.def	_deflateEnd;	.scl	2;	.type	32;	.endef
	.def	_deflate;	.scl	2;	.type	32;	.endef
	.def	_deflateInit_;	.scl	2;	.type	32;	.endef
	.def	_gzgets;	.scl	2;	.type	32;	.endef
	.def	_gzungetc;	.scl	2;	.type	32;	.endef
	.def	_gzgetc;	.scl	2;	.type	32;	.endef
	.def	_gztell;	.scl	2;	.type	32;	.endef
	.def	_gzread;	.scl	2;	.type	32;	.endef
	.def	_gzclose;	.scl	2;	.type	32;	.endef
	.def	_gzseek;	.scl	2;	.type	32;	.endef
	.def	_gzprintf;	.scl	2;	.type	32;	.endef
	.def	_gzerror;	.scl	2;	.type	32;	.endef
	.def	_gzputs;	.scl	2;	.type	32;	.endef
	.def	_gzputc;	.scl	2;	.type	32;	.endef
	.def	_gzopen;	.scl	2;	.type	32;	.endef
	.def	_printf;	.scl	2;	.type	32;	.endef
	.def	_strcmp;	.scl	2;	.type	32;	.endef
	.def	_uncompress;	.scl	2;	.type	32;	.endef
	.def	_exit;	.scl	2;	.type	32;	.endef
	.def	_fprintf;	.scl	2;	.type	32;	.endef
	.def	_compress;	.scl	2;	.type	32;	.endef
	.def	_strlen;	.scl	2;	.type	32;	.endef
