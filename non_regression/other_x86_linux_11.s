	.file	"gzlib.c"
	.text
	.p2align 2,,3
.globl gzopen
	.type	gzopen,@function
gzopen:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$12, %esp
	pushl	12(%ebp)
	pushl	$-1
	pushl	8(%ebp)
	call	gz_open
	leave
	ret
.Lfe1:
	.size	gzopen,.Lfe1-gzopen
	.p2align 2,,3
.globl gzopen64
	.type	gzopen64,@function
gzopen64:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$12, %esp
	pushl	12(%ebp)
	pushl	$-1
	pushl	8(%ebp)
	call	gz_open
	leave
	ret
.Lfe2:
	.size	gzopen64,.Lfe2-gzopen64
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC1:
	.string	"<fd:%d>"
	.text
	.p2align 2,,3
.globl gzdopen
	.type	gzdopen,@function
gzdopen:
	pushl	%ebp
	movl	%esp, %ebp
	pushl	%edi
	pushl	%esi
	pushl	%ebx
	subl	$12, %esp
	movl	8(%ebp), %esi
	call	.L47
.L47:
	popl	%ebx
	addl	$_GLOBAL_OFFSET_TABLE_+[.-.L47], %ebx
	cmpl	$-1, %esi
	je	.L46
	subl	$12, %esp
	pushl	$19
	call	malloc@PLT
	addl	$16, %esp
	testl	%eax, %eax
	movl	%eax, %edi
	je	.L46
	pushl	%esi
	leal	.LC1@GOTOFF(%ebx), %edx
	pushl	%edx
	pushl	$19
	pushl	%eax
	call	snprintf@PLT
	addl	$12, %esp
	pushl	12(%ebp)
	pushl	%esi
	pushl	%edi
	call	gz_open
	movl	%eax, %esi
	movl	%edi, (%esp)
	call	free@PLT
	movl	%esi, %eax
.L44:
	leal	-12(%ebp), %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	leave
	ret
	.p2align 2,,3
.L46:
	xorl	%eax, %eax
	jmp	.L44
.Lfe3:
	.size	gzdopen,.Lfe3-gzdopen
	.p2align 2,,3
.globl gzbuffer
	.type	gzbuffer,@function
gzbuffer:
	pushl	%ebp
	movl	%esp, %ebp
	movl	8(%ebp), %ecx
	testl	%ecx, %ecx
	pushl	%esi
	movl	12(%ebp), %eax
	movl	$-1, %esi
	je	.L48
	movl	16(%ecx), %edx
	cmpl	$7247, %edx
	je	.L50
	cmpl	$31153, %edx
	movl	$-1, %esi
	je	.L50
.L48:
	movl	%esi, %eax
	movl	(%esp), %esi
	leave
	ret
	.p2align 2,,3
.L50:
	movl	28(%ecx), %esi
	testl	%esi, %esi
	je	.L51
	movl	$-1, %esi
	jmp	.L48
	.p2align 2,,3
.L51:
	cmpl	$1, %eax
	ja	.L52
	movl	$2, %eax
.L52:
	movl	%eax, 32(%ecx)
	xorl	%esi, %esi
	jmp	.L48
.Lfe4:
	.size	gzbuffer,.Lfe4-gzbuffer
	.p2align 2,,3
.globl gzrewind
	.type	gzrewind,@function
gzrewind:
	pushl	%ebp
	movl	%esp, %ebp
	pushl	%esi
	movl	8(%ebp), %esi
	pushl	%ebx
	call	.L62
.L62:
	popl	%ebx
	addl	$_GLOBAL_OFFSET_TABLE_+[.-.L62], %ebx
	testl	%esi, %esi
	movl	$-1, %edx
	je	.L53
	cmpl	$7247, 16(%esi)
	je	.L60
.L56:
	movl	$-1, %edx
.L53:
	leal	-8(%ebp), %esp
	popl	%ebx
	movl	%edx, %eax
	popl	%esi
	leave
	ret
	.p2align 2,,3
.L60:
	movl	88(%esi), %eax
	testl	%eax, %eax
	je	.L55
	cmpl	$-5, %eax
	jne	.L56
.L55:
	pushl	$0
	pushl	56(%esi)
	pushl	52(%esi)
	pushl	20(%esi)
	call	lseek64@PLT
	andl	%edx, %eax
	addl	$16, %esp
	incl	%eax
	movl	$-1, %edx
	je	.L53
	cmpl	$7247, 16(%esi)
	movl	$0, (%esi)
	je	.L61
.L58:
	movl	$0, 84(%esi)
	pushl	%ecx
	pushl	$0
	pushl	$0
	pushl	%esi
	call	gz_error
	addl	$16, %esp
	movl	$0, 8(%esi)
	movl	$0, 12(%esi)
	movl	$0, 100(%esi)
	xorl	%edx, %edx
	jmp	.L53
.L61:
	movl	$0, 60(%esi)
	movl	$0, 64(%esi)
	movl	$0, 48(%esi)
	jmp	.L58
.Lfe5:
	.size	gzrewind,.Lfe5-gzrewind
	.p2align 2,,3
.globl gzseek64
	.type	gzseek64,@function
gzseek64:
	pushl	%ebp
	movl	%esp, %ebp
	pushl	%edi
	pushl	%esi
	pushl	%ebx
	subl	$44, %esp
	movl	8(%ebp), %edx
	call	.L86
.L86:
	popl	%ebx
	addl	$_GLOBAL_OFFSET_TABLE_+[.-.L86], %ebx
	testl	%edx, %edx
	movl	12(%ebp), %esi
	movl	16(%ebp), %edi
	movl	20(%ebp), %ecx
	movl	$-1, -24(%ebp)
	movl	$-1, -20(%ebp)
	je	.L63
	movl	8(%ebp), %edx
	movl	16(%edx), %eax
	cmpl	$7247, %eax
	je	.L65
	cmpl	$31153, %eax
	movl	$-1, -24(%ebp)
	movl	$-1, -20(%ebp)
	je	.L65
.L63:
	movl	-24(%ebp), %eax
	movl	-20(%ebp), %edx
	leal	-12(%ebp), %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	leave
	ret
	.p2align 2,,3
.L65:
	movl	8(%ebp), %edx
	movl	88(%edx), %eax
	testl	%eax, %eax
	je	.L66
	cmpl	$-5, %eax
	movl	$-1, -24(%ebp)
	movl	$-1, -20(%ebp)
	jne	.L63
.L66:
	cmpl	$1, %ecx
	movl	$-1, -24(%ebp)
	movl	$-1, -20(%ebp)
	ja	.L63
	testl	%ecx, %ecx
	jne	.L68
	movl	8(%ebp), %eax
	subl	8(%eax), %esi
	sbbl	12(%eax), %edi
.L69:
	movl	8(%ebp), %ecx
	movl	16(%ecx), %edx
	cmpl	$7247, %edx
	movl	$0, 84(%ecx)
	movl	%edx, -44(%ebp)
	movl	%edx, -28(%ebp)
	je	.L83
.L71:
	testl	%edi, %edi
	js	.L84
.L73:
	cmpl	$7247, -44(%ebp)
	je	.L85
.L77:
	movl	%edi, %edx
	orl	%esi, %edx
	je	.L81
	movl	8(%ebp), %eax
	movl	$1, 84(%eax)
	movl	%esi, 76(%eax)
	movl	%edi, 80(%eax)
.L81:
	movl	8(%ebp), %edx
	addl	8(%edx), %esi
	adcl	12(%edx), %edi
	movl	%esi, -24(%ebp)
	movl	%edi, -20(%ebp)
	jmp	.L63
.L85:
	xorl	%ecx, %ecx
	movl	8(%ebp), %edx
	cmpl	%edi, %ecx
	movl	(%edx), %eax
	jl	.L78
	jg	.L80
	cmpl	%esi, %eax
	jbe	.L78
.L80:
	movl	8(%ebp), %ecx
	movl	%esi, %eax
	movl	(%ecx), %edx
.L79:
	movl	8(%ebp), %ecx
	subl	%eax, %edx
	movl	%edx, (%ecx)
	addl	%eax, 4(%ecx)
	xorl	%edx, %edx
	addl	%eax, 8(%ecx)
	adcl	%edx, 12(%ecx)
	subl	%eax, %esi
	sbbl	%edx, %edi
	jmp	.L77
.L78:
	movl	8(%ebp), %ecx
	movl	(%ecx), %eax
	movl	%eax, %edx
	jmp	.L79
.L84:
	cmpl	$7247, -28(%ebp)
	movl	$-1, -24(%ebp)
	movl	$-1, -20(%ebp)
	jne	.L63
	movl	8(%ebp), %edx
	addl	8(%edx), %esi
	adcl	12(%edx), %edi
	testl	%edi, %edi
	movl	$-1, -24(%ebp)
	movl	$-1, -20(%ebp)
	js	.L63
	subl	$12, %esp
	pushl	8(%ebp)
	call	gzrewind@PLT
	addl	$16, %esp
	incl	%eax
	movl	$-1, -24(%ebp)
	movl	$-1, -20(%ebp)
	je	.L63
	movl	8(%ebp), %ecx
	movl	16(%ecx), %eax
	movl	%eax, -44(%ebp)
	jmp	.L73
	.p2align 2,,3
.L83:
	cmpl	$1, 48(%ecx)
	jne	.L71
	movl	8(%ecx), %eax
	addl	%esi, %eax
	movl	12(%ecx), %edx
	adcl	%edi, %edx
	testl	%edx, %edx
	js	.L71
	pushl	$1
	movl	(%ecx), %eax
	xorl	%edx, %edx
	movl	%eax, -40(%ebp)
	movl	%esi, %eax
	subl	-40(%ebp), %eax
	movl	%edx, -36(%ebp)
	movl	%edi, %edx
	sbbl	-36(%ebp), %edx
	pushl	%edx
	pushl	%eax
	pushl	20(%ecx)
	call	lseek64@PLT
	andl	%edx, %eax
	addl	$16, %esp
	incl	%eax
	movl	$-1, -24(%ebp)
	movl	$-1, -20(%ebp)
	je	.L63
	movl	8(%ebp), %ecx
	movl	$0, (%ecx)
	movl	$0, 60(%ecx)
	movl	$0, 64(%ecx)
	movl	$0, 84(%ecx)
	pushl	%eax
	pushl	$0
	pushl	$0
	pushl	%ecx
	call	gz_error
	movl	8(%ebp), %ecx
	movl	8(%ecx), %eax
	addl	%esi, %eax
	movl	12(%ecx), %edx
	adcl	%edi, %edx
	movl	$0, 100(%ecx)
	movl	%eax, 8(%ecx)
	movl	%edx, 12(%ecx)
	movl	%eax, -24(%ebp)
	movl	%edx, -20(%ebp)
	jmp	.L63
	.p2align 2,,3
.L68:
	movl	8(%ebp), %eax
	movl	84(%eax), %ecx
	testl	%ecx, %ecx
	je	.L69
	addl	76(%eax), %esi
	adcl	80(%eax), %edi
	jmp	.L69
.Lfe6:
	.size	gzseek64,.Lfe6-gzseek64
	.p2align 2,,3
.globl gzseek
	.type	gzseek,@function
gzseek:
	pushl	%ebp
	movl	%esp, %ebp
	pushl	%edi
	pushl	%esi
	pushl	%ebx
	subl	$12, %esp
	movl	12(%ebp), %eax
	pushl	16(%ebp)
	cltd
	pushl	%edx
	pushl	%eax
	call	.L90
.L90:
	popl	%ebx
	addl	$_GLOBAL_OFFSET_TABLE_+[.-.L90], %ebx
	pushl	8(%ebp)
	call	gzseek64@PLT
	movl	%edx, %edi
	movl	%eax, %esi
	cltd
	movl	%edi, %ecx
	xorl	%esi, %eax
	xorl	%edx, %ecx
	addl	$16, %esp
	orl	%eax, %ecx
	sete	%dl
	movzbl	%dl, %eax
	leal	-12(%ebp), %esp
	popl	%ebx
	decl	%eax
	orl	%esi, %eax
	popl	%esi
	popl	%edi
	leave
	ret
.Lfe7:
	.size	gzseek,.Lfe7-gzseek
	.p2align 2,,3
.globl gztell64
	.type	gztell64,@function
gztell64:
	pushl	%ebp
	movl	%esp, %ebp
	pushl	%esi
	movl	8(%ebp), %esi
	testl	%esi, %esi
	movl	$-1, %eax
	movl	$-1, %edx
	je	.L91
	movl	16(%esi), %ecx
	cmpl	$7247, %ecx
	je	.L93
	cmpl	$31153, %ecx
	movl	$-1, %eax
	movl	$-1, %edx
	je	.L93
.L91:
	movl	(%esp), %esi
	leave
	ret
	.p2align 2,,3
.L93:
	movl	84(%esi), %ecx
	testl	%ecx, %ecx
	movl	8(%esi), %eax
	movl	12(%esi), %edx
	je	.L91
	addl	76(%esi), %eax
	adcl	80(%esi), %edx
	jmp	.L91
.Lfe8:
	.size	gztell64,.Lfe8-gztell64
	.p2align 2,,3
.globl gztell
	.type	gztell,@function
gztell:
	pushl	%ebp
	movl	%esp, %ebp
	pushl	%edi
	pushl	%esi
	pushl	%ebx
	subl	$24, %esp
	call	.L98
.L98:
	popl	%ebx
	addl	$_GLOBAL_OFFSET_TABLE_+[.-.L98], %ebx
	pushl	8(%ebp)
	call	gztell64@PLT
	movl	%edx, %edi
	movl	%eax, %esi
	cltd
	movl	%edi, %ecx
	xorl	%esi, %eax
	xorl	%edx, %ecx
	addl	$16, %esp
	orl	%eax, %ecx
	sete	%dl
	movzbl	%dl, %eax
	leal	-12(%ebp), %esp
	popl	%ebx
	decl	%eax
	orl	%esi, %eax
	popl	%esi
	popl	%edi
	leave
	ret
.Lfe9:
	.size	gztell,.Lfe9-gztell
	.p2align 2,,3
.globl gzoffset64
	.type	gzoffset64,@function
gzoffset64:
	pushl	%ebp
	movl	%esp, %ebp
	pushl	%edi
	pushl	%esi
	pushl	%ebx
	subl	$12, %esp
	movl	8(%ebp), %eax
	call	.L105
.L105:
	popl	%ebx
	addl	$_GLOBAL_OFFSET_TABLE_+[.-.L105], %ebx
	testl	%eax, %eax
	movl	$-1, %edx
	movl	$-1, %ecx
	je	.L99
	movl	8(%ebp), %ecx
	movl	16(%ecx), %eax
	cmpl	$7247, %eax
	je	.L101
	cmpl	$31153, %eax
	movl	$-1, %edx
	movl	$-1, %ecx
	je	.L101
.L99:
	leal	-12(%ebp), %esp
	popl	%ebx
	popl	%esi
	movl	%edx, %eax
	popl	%edi
	movl	%ecx, %edx
	leave
	ret
	.p2align 2,,3
.L101:
	pushl	$1
	pushl	$0
	pushl	$0
	movl	8(%ebp), %eax
	pushl	20(%eax)
	call	lseek64@PLT
	movl	%eax, %esi
	andl	%edx, %eax
	addl	$16, %esp
	incl	%eax
	movl	%edx, %edi
	movl	$-1, %ecx
	movl	$-1, %edx
	je	.L99
	movl	8(%ebp), %eax
	cmpl	$7247, 16(%eax)
	je	.L104
.L103:
	movl	%esi, %edx
	movl	%edi, %ecx
	jmp	.L99
.L104:
	movl	100(%eax), %edx
	xorl	%ecx, %ecx
	subl	%edx, %esi
	sbbl	%ecx, %edi
	jmp	.L103
.Lfe10:
	.size	gzoffset64,.Lfe10-gzoffset64
	.p2align 2,,3
.globl gzoffset
	.type	gzoffset,@function
gzoffset:
	pushl	%ebp
	movl	%esp, %ebp
	pushl	%edi
	pushl	%esi
	pushl	%ebx
	subl	$24, %esp
	call	.L109
.L109:
	popl	%ebx
	addl	$_GLOBAL_OFFSET_TABLE_+[.-.L109], %ebx
	pushl	8(%ebp)
	call	gzoffset64@PLT
	movl	%edx, %edi
	movl	%eax, %esi
	cltd
	movl	%edi, %ecx
	xorl	%esi, %eax
	xorl	%edx, %ecx
	addl	$16, %esp
	orl	%eax, %ecx
	sete	%dl
	movzbl	%dl, %eax
	leal	-12(%ebp), %esp
	popl	%ebx
	decl	%eax
	orl	%esi, %eax
	popl	%esi
	popl	%edi
	leave
	ret
.Lfe11:
	.size	gzoffset,.Lfe11-gzoffset
	.p2align 2,,3
.globl gzeof
	.type	gzeof,@function
gzeof:
	pushl	%ebp
	movl	%esp, %ebp
	movl	8(%ebp), %ecx
	xorl	%eax, %eax
	testl	%ecx, %ecx
	je	.L110
	movl	16(%ecx), %edx
	cmpl	$7247, %edx
	je	.L112
	xorl	%eax, %eax
	cmpl	$31153, %edx
	je	.L112
.L110:
	leave
	ret
	.p2align 2,,3
.L112:
	cmpl	$7247, 16(%ecx)
	je	.L115
	xorl	%eax, %eax
	jmp	.L110
	.p2align 2,,3
.L115:
	movl	64(%ecx), %eax
	jmp	.L110
.Lfe12:
	.size	gzeof,.Lfe12-gzeof
	.section	.rodata.str1.1
.LC2:
	.string	""
.LC3:
	.string	"out of memory"
	.text
	.p2align 2,,3
.globl gzerror
	.type	gzerror,@function
gzerror:
	pushl	%ebp
	movl	%esp, %ebp
	movl	8(%ebp), %ecx
	pushl	%esi
	pushl	%ebx
	xorl	%eax, %eax
	call	.L123
.L123:
	popl	%ebx
	addl	$_GLOBAL_OFFSET_TABLE_+[.-.L123], %ebx
	testl	%ecx, %ecx
	movl	12(%ebp), %esi
	je	.L116
	movl	16(%ecx), %edx
	cmpl	$7247, %edx
	je	.L118
	xorl	%eax, %eax
	cmpl	$31153, %edx
	je	.L118
.L116:
	popl	%ebx
	popl	%esi
	leave
	ret
	.p2align 2,,3
.L118:
	testl	%esi, %esi
	je	.L119
	movl	88(%ecx), %edx
	movl	%edx, (%esi)
.L119:
	cmpl	$-4, 88(%ecx)
	je	.L120
	movl	92(%ecx), %eax
	testl	%eax, %eax
	jne	.L116
	leal	.LC2@GOTOFF(%ebx), %eax
	jmp	.L116
	.p2align 2,,3
.L120:
	leal	.LC3@GOTOFF(%ebx), %eax
	jmp	.L116
.Lfe13:
	.size	gzerror,.Lfe13-gzerror
	.p2align 2,,3
.globl gzclearerr
	.type	gzclearerr,@function
gzclearerr:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$8, %esp
	movl	8(%ebp), %edx
	testl	%edx, %edx
	je	.L124
	movl	16(%edx), %eax
	cmpl	$7247, %eax
	je	.L128
	cmpl	$31153, %eax
	je	.L127
.L124:
	leave
	ret
	.p2align 2,,3
.L127:
	pushl	%eax
	pushl	$0
	pushl	$0
	pushl	%edx
	call	gz_error
	jmp	.L124
	.p2align 2,,3
.L128:
	movl	$0, 60(%edx)
	movl	$0, 64(%edx)
	jmp	.L127
.Lfe14:
	.size	gzclearerr,.Lfe14-gzclearerr
	.section	.rodata.str1.1
.LC4:
	.string	": "
.LC5:
	.string	"%s%s%s"
	.text
	.p2align 2,,3
.globl gz_error
	.hidden	gz_error
	.type	gz_error,@function
gz_error:
	pushl	%ebp
	movl	%esp, %ebp
	pushl	%edi
	pushl	%esi
	pushl	%ebx
	subl	$12, %esp
	movl	8(%ebp), %esi
	movl	92(%esi), %eax
	call	.L138
.L138:
	popl	%ebx
	addl	$_GLOBAL_OFFSET_TABLE_+[.-.L138], %ebx
	testl	%eax, %eax
	movl	12(%ebp), %edi
	je	.L131
	cmpl	$-4, 88(%esi)
	je	.L132
	subl	$12, %esp
	pushl	%eax
	call	free@PLT
	addl	$16, %esp
.L132:
	movl	$0, 92(%esi)
.L131:
	testl	%edi, %edi
	je	.L133
	cmpl	$-5, %edi
	je	.L133
	movl	$0, (%esi)
.L133:
	movl	16(%ebp), %edx
	testl	%edx, %edx
	movl	%edi, 88(%esi)
	je	.L130
	cmpl	$-4, %edi
	je	.L130
	movl	24(%esi), %edi
	xorl	%eax, %eax
	cld
	movl	$-1, %ecx
	repnz
	scasb
	movl	%ecx, %edx
	movl	16(%ebp), %edi
	movl	$-1, %ecx
	repnz
	scasb
	notl	%ecx
	subl	$12, %esp
	subl	%edx, %ecx
	pushl	%ecx
	call	malloc@PLT
	addl	$16, %esp
	testl	%eax, %eax
	movl	%eax, %edx
	movl	%eax, 92(%esi)
	je	.L137
	subl	$8, %esp
	pushl	16(%ebp)
	leal	.LC4@GOTOFF(%ebx), %edi
	pushl	%edi
	pushl	24(%esi)
	leal	.LC5@GOTOFF(%ebx), %ecx
	pushl	%ecx
	movl	24(%esi), %edi
	cld
	xorl	%eax, %eax
	movl	$-1, %ecx
	repnz
	scasb
	movl	%ecx, %esi
	movl	16(%ebp), %edi
	movl	$-1, %ecx
	repnz
	scasb
	notl	%ecx
	subl	%esi, %ecx
	pushl	%ecx
	pushl	%edx
	call	snprintf@PLT
.L130:
	leal	-12(%ebp), %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	leave
	ret
	.p2align 2,,3
.L137:
	movl	$-4, 88(%esi)
	jmp	.L130
.Lfe15:
	.size	gz_error,.Lfe15-gz_error
	.section	.rodata.str1.1
.LC0:
	.string	"%s"
	.text
	.p2align 2,,3
	.type	gz_open,@function
gz_open:
	pushl	%ebp
	movl	%esp, %ebp
	pushl	%edi
	pushl	%esi
	pushl	%ebx
	subl	$12, %esp
	movl	8(%ebp), %edx
	call	.L271
.L271:
	popl	%ebx
	addl	$_GLOBAL_OFFSET_TABLE_+[.-.L271], %ebx
	xorl	%eax, %eax
	testl	%edx, %edx
	movl	16(%ebp), %edi
	movl	$0, -16(%ebp)
	je	.L1
	subl	$12, %esp
	pushl	$152
	call	malloc@PLT
	movl	%eax, %esi
	addl	$16, %esp
	xorl	%eax, %eax
	testl	%esi, %esi
	je	.L1
	movl	$0, 28(%esi)
	movl	$8192, 32(%esi)
	movl	$0, 92(%esi)
	movl	$0, 16(%esi)
	movl	$-1, 68(%esi)
	movl	$0, 72(%esi)
	movl	$0, 44(%esi)
	movb	(%edi), %dl
	testb	%dl, %dl
	je	.L258
	.p2align 2,,3
.L23:
	leal	-48(%edx), %ecx
	cmpb	$9, %cl
	ja	.L7
	movsbl	%dl,%ecx
	subl	$48, %ecx
	movl	%ecx, 68(%esi)
.L8:
	incl	%edi
	movb	(%edi), %cl
	testb	%cl, %cl
	movb	%cl, %dl
	jne	.L23
.L258:
	movl	16(%esi), %eax
	testl	%eax, %eax
	je	.L263
	cmpl	$7247, %eax
	je	.L264
.L25:
	xorl	%eax, %eax
	movl	8(%ebp), %edi
	cld
	movl	$-1, %ecx
	repnz
	scasb
	movl	%ecx, -20(%ebp)
	subl	$12, %esp
	notl	-20(%ebp)
	pushl	-20(%ebp)
	call	malloc@PLT
	addl	$16, %esp
	testl	%eax, %eax
	movl	%eax, 24(%esi)
	je	.L263
	pushl	8(%ebp)
	leal	.LC0@GOTOFF(%ebx), %edi
	pushl	%edi
	pushl	-20(%ebp)
	pushl	%eax
	call	snprintf@PLT
	movl	16(%esi), %edx
	addl	$16, %esp
	cmpl	$7247, %edx
	je	.L28
	xorl	%eax, %eax
	cmpl	$0, -16(%ebp)
	setne	%al
	decl	%eax
	andl	$-128, %eax
	addl	$193, %eax
	cmpl	$31153, %edx
	je	.L265
	orl	$33792, %eax
.L29:
	cmpl	$-1, 12(%ebp)
	jle	.L266
	movl	12(%ebp), %eax
.L35:
	movl	%eax, 20(%esi)
	incl	%eax
	je	.L267
	movl	16(%esi), %eax
	cmpl	$1, %eax
	je	.L268
.L37:
	cmpl	$7247, %eax
	je	.L269
.L38:
	cmpl	$7247, %eax
	movl	$0, (%esi)
	je	.L270
.L40:
	pushl	%eax
	pushl	$0
	pushl	$0
	pushl	%esi
	movl	$0, 84(%esi)
	call	gz_error
	addl	$16, %esp
	movl	$0, 8(%esi)
	movl	$0, 12(%esi)
	movl	$0, 100(%esi)
	movl	%esi, %eax
.L1:
	leal	-12(%ebp), %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	leave
	ret
.L270:
	movl	$0, 60(%esi)
	movl	$0, 64(%esi)
	movl	$0, 48(%esi)
	jmp	.L40
.L269:
	pushl	$1
	pushl	$0
	pushl	$0
	pushl	20(%esi)
	call	lseek64@PLT
	movl	%eax, 52(%esi)
	andl	%edx, %eax
	addl	$16, %esp
	incl	%eax
	movl	%edx, 56(%esi)
	jne	.L259
	movl	$0, 52(%esi)
	movl	$0, 56(%esi)
.L259:
	movl	16(%esi), %eax
	jmp	.L38
.L268:
	movl	$31153, 16(%esi)
	movl	$31153, %eax
	jmp	.L37
.L267:
	subl	$12, %esp
	pushl	24(%esi)
	call	free@PLT
	popl	%eax
	.p2align 2,,3
.L260:
	pushl	%esi
	call	free@PLT
	xorl	%eax, %eax
	jmp	.L1
.L266:
	pushl	%edx
	pushl	$438
	pushl	%eax
	pushl	8(%ebp)
	call	open@PLT
	addl	$16, %esp
	jmp	.L35
.L265:
	orl	$33280, %eax
	jmp	.L29
.L28:
	movl	$32768, %eax
	jmp	.L29
	.p2align 2,,3
.L263:
	subl	$12, %esp
	jmp	.L260
.L264:
	movl	44(%esi), %eax
	testl	%eax, %eax
	jne	.L263
	movl	$1, 44(%esi)
	jmp	.L25
	.p2align 2,,3
.L7:
	movsbl	%dl,%eax
	subl	$43, %eax
	cmpl	$77, %eax
	ja	.L8
	movl	.L22@GOTOFF(%ebx,%eax,4), %edx
	addl	%ebx, %edx
	jmp	*%edx
	.section	.rodata
	.align 4
	.align 4
.L22:
	.long	.L263@GOTOFF
	.long	.L8@GOTOFF
	.long	.L8@GOTOFF
	.long	.L8@GOTOFF
	.long	.L8@GOTOFF
	.long	.L8@GOTOFF
	.long	.L8@GOTOFF
	.long	.L8@GOTOFF
	.long	.L8@GOTOFF
	.long	.L8@GOTOFF
	.long	.L8@GOTOFF
	.long	.L8@GOTOFF
	.long	.L8@GOTOFF
	.long	.L8@GOTOFF
	.long	.L8@GOTOFF
	.long	.L8@GOTOFF
	.long	.L8@GOTOFF
	.long	.L8@GOTOFF
	.long	.L8@GOTOFF
	.long	.L8@GOTOFF
	.long	.L8@GOTOFF
	.long	.L8@GOTOFF
	.long	.L8@GOTOFF
	.long	.L8@GOTOFF
	.long	.L8@GOTOFF
	.long	.L8@GOTOFF
	.long	.L8@GOTOFF
	.long	.L19@GOTOFF
	.long	.L8@GOTOFF
	.long	.L8@GOTOFF
	.long	.L8@GOTOFF
	.long	.L8@GOTOFF
	.long	.L8@GOTOFF
	.long	.L8@GOTOFF
	.long	.L8@GOTOFF
	.long	.L8@GOTOFF
	.long	.L8@GOTOFF
	.long	.L8@GOTOFF
	.long	.L8@GOTOFF
	.long	.L18@GOTOFF
	.long	.L8@GOTOFF
	.long	.L20@GOTOFF
	.long	.L8@GOTOFF
	.long	.L8@GOTOFF
	.long	.L8@GOTOFF
	.long	.L8@GOTOFF
	.long	.L8@GOTOFF
	.long	.L8@GOTOFF
	.long	.L8@GOTOFF
	.long	.L8@GOTOFF
	.long	.L8@GOTOFF
	.long	.L8@GOTOFF
	.long	.L8@GOTOFF
	.long	.L8@GOTOFF
	.long	.L12@GOTOFF
	.long	.L8@GOTOFF
	.long	.L8@GOTOFF
	.long	.L8@GOTOFF
	.long	.L8@GOTOFF
	.long	.L16@GOTOFF
	.long	.L8@GOTOFF
	.long	.L17@GOTOFF
	.long	.L8@GOTOFF
	.long	.L8@GOTOFF
	.long	.L8@GOTOFF
	.long	.L8@GOTOFF
	.long	.L8@GOTOFF
	.long	.L8@GOTOFF
	.long	.L8@GOTOFF
	.long	.L8@GOTOFF
	.long	.L8@GOTOFF
	.long	.L10@GOTOFF
	.long	.L8@GOTOFF
	.long	.L8@GOTOFF
	.long	.L8@GOTOFF
	.long	.L8@GOTOFF
	.long	.L11@GOTOFF
	.long	.L15@GOTOFF
	.text
.L10:
	movl	$7247, 16(%esi)
	jmp	.L8
.L19:
	movl	$4, 72(%esi)
	jmp	.L8
.L18:
	movl	$3, 72(%esi)
	jmp	.L8
.L20:
	movl	$1, 44(%esi)
	jmp	.L8
.L12:
	movl	$1, 16(%esi)
	jmp	.L8
.L16:
	movl	$1, 72(%esi)
	jmp	.L8
.L17:
	movl	$2, 72(%esi)
	jmp	.L8
.L11:
	movl	$31153, 16(%esi)
	jmp	.L8
.L15:
	movl	$1, -16(%ebp)
	jmp	.L8
.Lfe16:
	.size	gz_open,.Lfe16-gz_open
	.section	.note.GNU-stack,"",@progbits
	.ident	"GCC: (GNU) 3.2.3 20030502 (Red Hat Linux 3.2.3-59)"
