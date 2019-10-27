	.file	"(extract)sblat2.f"
	.text
	.section	.rodata
	.align 4
.LC20:
	.long	1
	.align 4
.LC21:
	.long	0
.LC22:
	.ascii	"/"
	.align 4
.LC23:
	.long	-1
.LC24:
	.ascii	"N"
	.align 4
.LC25:
	.long	2
.LC26:
	.ascii	"U"
	.align 4
.LC27:
	.ascii	"( ' ', A6, ' PASSED THE TESTS OF ERROR-EXITS' )"
	.align 4
.LC28:
	.ascii	"( ' ******* ', A6, ' FAILED THE TESTS OF ERROR-EXITS *****',"
	.ascii	"      '**' )"
	.text
	.p2align 4,,15
.globl schke_
	.type	schke_, @function
schke_:
	pushl	%ebp
	movl	%esp, %ebp
	pushl	%edi
	pushl	%esi
	pushl	%ebx
	subl	$796, %esp
	movl	8(%ebp), %eax
	movl	12(%ebp), %ebx
	movl	16(%ebp), %esi
	movl	$1, infoc_+8
	cmpl	$16, (%eax)
	movl	$0, infoc_+12
	jbe	.L222
.L199:
	leal	-44(%ebp), %eax
	movl	%eax, 36(%esp)
	leal	-36(%ebp), %eax
	movl	%eax, 32(%esp)
	leal	-40(%ebp), %eax
	leal	-28(%ebp), %edi
	movl	%eax, 24(%esp)
	leal	-32(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	$1, infoc_
	movl	$1, 44(%esp)
	movl	$.LC20, 40(%esp)
	movl	$.LC20, 28(%esp)
	movl	$.LC20, 20(%esp)
	movl	%edi, 16(%esp)
	movl	$.LC21, 8(%esp)
	movl	$.LC21, 4(%esp)
	movl	$.LC22, (%esp)
	call	sgemv_
	movl	$6, 20(%esp)
	movl	$infoc_+8, 16(%esp)
	movl	$infoc_+12, 12(%esp)
	movl	%esi, 8(%esp)
	movl	$infoc_, 4(%esp)
	movl	%ebx, (%esp)
	call	chkxer_
	leal	-44(%ebp), %eax
	movl	%eax, 36(%esp)
	leal	-36(%ebp), %eax
	movl	%eax, 32(%esp)
	leal	-40(%ebp), %eax
	movl	%eax, 24(%esp)
	leal	-32(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	$2, infoc_
	movl	$1, 44(%esp)
	movl	$.LC20, 40(%esp)
	movl	$.LC20, 28(%esp)
	movl	$.LC20, 20(%esp)
	movl	%edi, 16(%esp)
	movl	$.LC21, 8(%esp)
	movl	$.LC23, 4(%esp)
	movl	$.LC24, (%esp)
	call	sgemv_
	movl	$6, 20(%esp)
	movl	$infoc_+8, 16(%esp)
	movl	$infoc_+12, 12(%esp)
	movl	%esi, 8(%esp)
	movl	$infoc_, 4(%esp)
	movl	%ebx, (%esp)
	call	chkxer_
	leal	-44(%ebp), %eax
	movl	%eax, 36(%esp)
	leal	-36(%ebp), %eax
	movl	%eax, 32(%esp)
	leal	-40(%ebp), %eax
	movl	%eax, 24(%esp)
	leal	-32(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	$3, infoc_
	movl	$1, 44(%esp)
	movl	$.LC20, 40(%esp)
	movl	$.LC20, 28(%esp)
	movl	$.LC20, 20(%esp)
	movl	%edi, 16(%esp)
	movl	$.LC23, 8(%esp)
	movl	$.LC21, 4(%esp)
	movl	$.LC24, (%esp)
	call	sgemv_
	movl	$6, 20(%esp)
	movl	$infoc_+8, 16(%esp)
	movl	$infoc_+12, 12(%esp)
	movl	%esi, 8(%esp)
	movl	$infoc_, 4(%esp)
	movl	%ebx, (%esp)
	call	chkxer_
	leal	-44(%ebp), %eax
	movl	%eax, 36(%esp)
	leal	-36(%ebp), %eax
	movl	%eax, 32(%esp)
	leal	-40(%ebp), %eax
	movl	%eax, 24(%esp)
	leal	-32(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	$6, infoc_
	movl	$1, 44(%esp)
	movl	$.LC20, 40(%esp)
	movl	$.LC20, 28(%esp)
	movl	$.LC20, 20(%esp)
	movl	%edi, 16(%esp)
	movl	$.LC21, 8(%esp)
	movl	$.LC25, 4(%esp)
	movl	$.LC24, (%esp)
	call	sgemv_
	movl	$6, 20(%esp)
	movl	$infoc_+8, 16(%esp)
	movl	$infoc_+12, 12(%esp)
	movl	%esi, 8(%esp)
	movl	$infoc_, 4(%esp)
	movl	%ebx, (%esp)
	call	chkxer_
	leal	-44(%ebp), %eax
	movl	%eax, 36(%esp)
	leal	-36(%ebp), %eax
	movl	%eax, 32(%esp)
	leal	-40(%ebp), %eax
	movl	%eax, 24(%esp)
	leal	-32(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	$8, infoc_
	movl	$1, 44(%esp)
	movl	$.LC20, 40(%esp)
	movl	$.LC21, 28(%esp)
	movl	$.LC20, 20(%esp)
	movl	%edi, 16(%esp)
	movl	$.LC21, 8(%esp)
	movl	$.LC21, 4(%esp)
	movl	$.LC24, (%esp)
	call	sgemv_
	movl	$6, 20(%esp)
	movl	$infoc_+8, 16(%esp)
	movl	$infoc_+12, 12(%esp)
	movl	%esi, 8(%esp)
	movl	$infoc_, 4(%esp)
	movl	%ebx, (%esp)
	call	chkxer_
	leal	-44(%ebp), %eax
	movl	%eax, 36(%esp)
	leal	-36(%ebp), %eax
	movl	%eax, 32(%esp)
	leal	-40(%ebp), %eax
	movl	%eax, 24(%esp)
	leal	-32(%ebp), %eax
	movl	$11, infoc_
	movl	$1, 44(%esp)
	movl	$.LC21, 40(%esp)
	movl	$.LC20, 28(%esp)
	movl	$.LC20, 20(%esp)
	movl	%edi, 16(%esp)
	movl	%eax, 12(%esp)
	movl	$.LC21, 8(%esp)
	movl	$.LC21, 4(%esp)
	movl	$.LC24, (%esp)
	call	sgemv_
	.p2align 4,,7
	.p2align 3
.L220:
	movl	$6, 20(%esp)
	movl	$infoc_+8, 16(%esp)
	movl	$infoc_+12, 12(%esp)
	movl	%esi, 8(%esp)
	movl	$infoc_, 4(%esp)
	movl	%ebx, (%esp)
	call	chkxer_
	movl	infoc_+8, %edi
	testl	%edi, %edi
	jne	.L223
	movl	(%esi), %eax
	leal	-724(%ebp), %esi
	movl	$.LC4, -716(%ebp)
	movl	$2640, -712(%ebp)
	movl	$.LC28, -676(%ebp)
	movl	$72, -672(%ebp)
	movl	$4096, -724(%ebp)
	movl	%eax, -720(%ebp)
.L221:
	movl	%esi, (%esp)
	call	_gfortran_st_write
	movl	%ebx, 4(%esp)
	movl	%esi, (%esp)
	movl	$6, 8(%esp)
	call	_gfortran_transfer_character
	movl	%esi, (%esp)
	call	_gfortran_st_write_done
	addl	$796, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
	.p2align 4,,7
	.p2align 3
.L222:
	movl	(%eax), %eax
	jmp	*.L215(,%eax,4)
	.section	.rodata
	.align 4
	.align 4
.L215:
	.long	.L199
	.long	.L199
	.long	.L200
	.long	.L201
	.long	.L202
	.long	.L203
	.long	.L204
	.long	.L205
	.long	.L206
	.long	.L207
	.long	.L208
	.long	.L209
	.long	.L210
	.long	.L211
	.long	.L212
	.long	.L213
	.long	.L214
	.text
	.p2align 4,,7
	.p2align 3
.L223:
	movl	(%esi), %eax
	leal	-384(%ebp), %esi
	movl	$.LC4, -376(%ebp)
	movl	$2638, -372(%ebp)
	movl	$.LC27, -336(%ebp)
	movl	$47, -332(%ebp)
	movl	$4096, -384(%ebp)
	movl	%eax, -380(%ebp)
	jmp	.L221
	.p2align 4,,7
	.p2align 3
.L213:
	leal	-28(%ebp), %eax
	movl	%eax, 28(%esp)
	leal	-44(%ebp), %eax
	leal	-32(%ebp), %edi
	movl	%eax, 20(%esp)
	leal	-40(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	$1, 36(%esp)
	movl	$.LC20, 32(%esp)
	movl	$.LC20, 24(%esp)
	movl	$.LC20, 16(%esp)
	movl	%edi, 8(%esp)
	movl	$.LC21, 4(%esp)
	movl	$.LC22, (%esp)
	movl	$1, infoc_
	call	ssyr2_
	movl	$6, 20(%esp)
	movl	$infoc_+8, 16(%esp)
	movl	$infoc_+12, 12(%esp)
	movl	%esi, 8(%esp)
	movl	$infoc_, 4(%esp)
	movl	%ebx, (%esp)
	call	chkxer_
	leal	-28(%ebp), %eax
	movl	%eax, 28(%esp)
	leal	-44(%ebp), %eax
	movl	%eax, 20(%esp)
	leal	-40(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	$1, 36(%esp)
	movl	$.LC20, 32(%esp)
	movl	$.LC20, 24(%esp)
	movl	$.LC20, 16(%esp)
	movl	%edi, 8(%esp)
	movl	$.LC23, 4(%esp)
	movl	$.LC26, (%esp)
	movl	$2, infoc_
	call	ssyr2_
	movl	$6, 20(%esp)
	movl	$infoc_+8, 16(%esp)
	movl	$infoc_+12, 12(%esp)
	movl	%esi, 8(%esp)
	movl	$infoc_, 4(%esp)
	movl	%ebx, (%esp)
	call	chkxer_
	leal	-28(%ebp), %eax
	movl	%eax, 28(%esp)
	leal	-44(%ebp), %eax
	movl	%eax, 20(%esp)
	leal	-40(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	$1, 36(%esp)
	movl	$.LC20, 32(%esp)
	movl	$.LC20, 24(%esp)
	movl	$.LC21, 16(%esp)
	movl	%edi, 8(%esp)
	movl	$.LC21, 4(%esp)
	movl	$.LC26, (%esp)
	movl	$5, infoc_
	call	ssyr2_
	movl	$6, 20(%esp)
	movl	$infoc_+8, 16(%esp)
	movl	$infoc_+12, 12(%esp)
	movl	%esi, 8(%esp)
	movl	$infoc_, 4(%esp)
	movl	%ebx, (%esp)
	call	chkxer_
	leal	-28(%ebp), %eax
	movl	%eax, 28(%esp)
	leal	-44(%ebp), %eax
	movl	%eax, 20(%esp)
	leal	-40(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	$1, 36(%esp)
	movl	$.LC20, 32(%esp)
	movl	$.LC21, 24(%esp)
	movl	$.LC20, 16(%esp)
	movl	%edi, 8(%esp)
	movl	$.LC21, 4(%esp)
	movl	$.LC26, (%esp)
	movl	$7, infoc_
	call	ssyr2_
	movl	$6, 20(%esp)
	movl	$infoc_+8, 16(%esp)
	movl	$infoc_+12, 12(%esp)
	movl	%esi, 8(%esp)
	movl	$infoc_, 4(%esp)
	movl	%ebx, (%esp)
	call	chkxer_
	leal	-28(%ebp), %eax
	movl	%eax, 28(%esp)
	leal	-44(%ebp), %eax
	movl	%eax, 20(%esp)
	leal	-40(%ebp), %eax
	movl	$1, 36(%esp)
	movl	$.LC20, 32(%esp)
	movl	$.LC20, 24(%esp)
	movl	$.LC20, 16(%esp)
	movl	%eax, 12(%esp)
	movl	%edi, 8(%esp)
	movl	$.LC25, 4(%esp)
	movl	$.LC26, (%esp)
	movl	$9, infoc_
	call	ssyr2_
	jmp	.L220
	.p2align 4,,7
	.p2align 3
.L214:
	leal	-28(%ebp), %eax
	movl	%eax, 28(%esp)
	leal	-44(%ebp), %eax
	leal	-32(%ebp), %edi
	movl	%eax, 20(%esp)
	leal	-40(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	$1, 32(%esp)
	movl	$.LC20, 24(%esp)
	movl	$.LC20, 16(%esp)
	movl	%edi, 8(%esp)
	movl	$.LC21, 4(%esp)
	movl	$.LC22, (%esp)
	movl	$1, infoc_
	call	sspr2_
	movl	$6, 20(%esp)
	movl	$infoc_+8, 16(%esp)
	movl	$infoc_+12, 12(%esp)
	movl	%esi, 8(%esp)
	movl	$infoc_, 4(%esp)
	movl	%ebx, (%esp)
	call	chkxer_
	leal	-28(%ebp), %eax
	movl	%eax, 28(%esp)
	leal	-44(%ebp), %eax
	movl	%eax, 20(%esp)
	leal	-40(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	$1, 32(%esp)
	movl	$.LC20, 24(%esp)
	movl	$.LC20, 16(%esp)
	movl	%edi, 8(%esp)
	movl	$.LC23, 4(%esp)
	movl	$.LC26, (%esp)
	movl	$2, infoc_
	call	sspr2_
	movl	$6, 20(%esp)
	movl	$infoc_+8, 16(%esp)
	movl	$infoc_+12, 12(%esp)
	movl	%esi, 8(%esp)
	movl	$infoc_, 4(%esp)
	movl	%ebx, (%esp)
	call	chkxer_
	leal	-28(%ebp), %eax
	movl	%eax, 28(%esp)
	leal	-44(%ebp), %eax
	movl	%eax, 20(%esp)
	leal	-40(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	$1, 32(%esp)
	movl	$.LC20, 24(%esp)
	movl	$.LC21, 16(%esp)
	movl	%edi, 8(%esp)
	movl	$.LC21, 4(%esp)
	movl	$.LC26, (%esp)
	movl	$5, infoc_
	call	sspr2_
	movl	$6, 20(%esp)
	movl	$infoc_+8, 16(%esp)
	movl	$infoc_+12, 12(%esp)
	movl	%esi, 8(%esp)
	movl	$infoc_, 4(%esp)
	movl	%ebx, (%esp)
	call	chkxer_
	leal	-28(%ebp), %eax
	movl	%eax, 28(%esp)
	leal	-44(%ebp), %eax
	movl	%eax, 20(%esp)
	leal	-40(%ebp), %eax
	movl	$1, 32(%esp)
	movl	$.LC21, 24(%esp)
	movl	$.LC20, 16(%esp)
	movl	%eax, 12(%esp)
	movl	%edi, 8(%esp)
	movl	$.LC21, 4(%esp)
	movl	$.LC26, (%esp)
	movl	$7, infoc_
	call	sspr2_
	jmp	.L220
	.p2align 4,,7
	.p2align 3
.L200:
	leal	-44(%ebp), %eax
	movl	%eax, 44(%esp)
	leal	-36(%ebp), %eax
	movl	%eax, 40(%esp)
	leal	-40(%ebp), %eax
	leal	-28(%ebp), %edi
	movl	%eax, 32(%esp)
	leal	-32(%ebp), %eax
	movl	%eax, 20(%esp)
	movl	$1, 52(%esp)
	movl	$.LC20, 48(%esp)
	movl	$.LC20, 36(%esp)
	movl	$.LC20, 28(%esp)
	movl	%edi, 24(%esp)
	movl	$.LC21, 16(%esp)
	movl	$.LC21, 12(%esp)
	movl	$.LC21, 8(%esp)
	movl	$.LC21, 4(%esp)
	movl	$.LC22, (%esp)
	movl	$1, infoc_
	call	sgbmv_
	movl	$6, 20(%esp)
	movl	$infoc_+8, 16(%esp)
	movl	$infoc_+12, 12(%esp)
	movl	%esi, 8(%esp)
	movl	$infoc_, 4(%esp)
	movl	%ebx, (%esp)
	call	chkxer_
	leal	-44(%ebp), %eax
	movl	%eax, 44(%esp)
	leal	-36(%ebp), %eax
	movl	%eax, 40(%esp)
	leal	-40(%ebp), %eax
	movl	%eax, 32(%esp)
	leal	-32(%ebp), %eax
	movl	%eax, 20(%esp)
	movl	$1, 52(%esp)
	movl	$.LC20, 48(%esp)
	movl	$.LC20, 36(%esp)
	movl	$.LC20, 28(%esp)
	movl	%edi, 24(%esp)
	movl	$.LC21, 16(%esp)
	movl	$.LC21, 12(%esp)
	movl	$.LC21, 8(%esp)
	movl	$.LC23, 4(%esp)
	movl	$.LC24, (%esp)
	movl	$2, infoc_
	call	sgbmv_
	movl	$6, 20(%esp)
	movl	$infoc_+8, 16(%esp)
	movl	$infoc_+12, 12(%esp)
	movl	%esi, 8(%esp)
	movl	$infoc_, 4(%esp)
	movl	%ebx, (%esp)
	call	chkxer_
	leal	-44(%ebp), %eax
	movl	%eax, 44(%esp)
	leal	-36(%ebp), %eax
	movl	%eax, 40(%esp)
	leal	-40(%ebp), %eax
	movl	%eax, 32(%esp)
	leal	-32(%ebp), %eax
	movl	%eax, 20(%esp)
	movl	$1, 52(%esp)
	movl	$.LC20, 48(%esp)
	movl	$.LC20, 36(%esp)
	movl	$.LC20, 28(%esp)
	movl	%edi, 24(%esp)
	movl	$.LC21, 16(%esp)
	movl	$.LC21, 12(%esp)
	movl	$.LC23, 8(%esp)
	movl	$.LC21, 4(%esp)
	movl	$.LC24, (%esp)
	movl	$3, infoc_
	call	sgbmv_
	movl	$6, 20(%esp)
	movl	$infoc_+8, 16(%esp)
	movl	$infoc_+12, 12(%esp)
	movl	%esi, 8(%esp)
	movl	$infoc_, 4(%esp)
	movl	%ebx, (%esp)
	call	chkxer_
	leal	-44(%ebp), %eax
	movl	%eax, 44(%esp)
	leal	-36(%ebp), %eax
	movl	%eax, 40(%esp)
	leal	-40(%ebp), %eax
	movl	%eax, 32(%esp)
	leal	-32(%ebp), %eax
	movl	%eax, 20(%esp)
	movl	$1, 52(%esp)
	movl	$.LC20, 48(%esp)
	movl	$.LC20, 36(%esp)
	movl	$.LC20, 28(%esp)
	movl	%edi, 24(%esp)
	movl	$.LC21, 16(%esp)
	movl	$.LC23, 12(%esp)
	movl	$.LC21, 8(%esp)
	movl	$.LC21, 4(%esp)
	movl	$.LC24, (%esp)
	movl	$4, infoc_
	call	sgbmv_
	movl	$6, 20(%esp)
	movl	$infoc_+8, 16(%esp)
	movl	$infoc_+12, 12(%esp)
	movl	%esi, 8(%esp)
	movl	$infoc_, 4(%esp)
	movl	%ebx, (%esp)
	call	chkxer_
	leal	-44(%ebp), %eax
	movl	%eax, 44(%esp)
	leal	-36(%ebp), %eax
	movl	%eax, 40(%esp)
	leal	-40(%ebp), %eax
	movl	%eax, 32(%esp)
	leal	-32(%ebp), %eax
	movl	%eax, 20(%esp)
	movl	$1, 52(%esp)
	movl	$.LC20, 48(%esp)
	movl	$.LC20, 36(%esp)
	movl	$.LC20, 28(%esp)
	movl	%edi, 24(%esp)
	movl	$.LC23, 16(%esp)
	movl	$.LC21, 12(%esp)
	movl	$.LC21, 8(%esp)
	movl	$.LC25, 4(%esp)
	movl	$.LC24, (%esp)
	movl	$5, infoc_
	call	sgbmv_
	movl	$6, 20(%esp)
	movl	$infoc_+8, 16(%esp)
	movl	$infoc_+12, 12(%esp)
	movl	%esi, 8(%esp)
	movl	$infoc_, 4(%esp)
	movl	%ebx, (%esp)
	call	chkxer_
	leal	-44(%ebp), %eax
	movl	%eax, 44(%esp)
	leal	-36(%ebp), %eax
	movl	%eax, 40(%esp)
	leal	-40(%ebp), %eax
	movl	%eax, 32(%esp)
	leal	-32(%ebp), %eax
	movl	%eax, 20(%esp)
	movl	$1, 52(%esp)
	movl	$.LC20, 48(%esp)
	movl	$.LC20, 36(%esp)
	movl	$.LC20, 28(%esp)
	movl	%edi, 24(%esp)
	movl	$.LC21, 16(%esp)
	movl	$.LC20, 12(%esp)
	movl	$.LC21, 8(%esp)
	movl	$.LC21, 4(%esp)
	movl	$.LC24, (%esp)
	movl	$8, infoc_
	call	sgbmv_
	movl	$6, 20(%esp)
	movl	$infoc_+8, 16(%esp)
	movl	$infoc_+12, 12(%esp)
	movl	%esi, 8(%esp)
	movl	$infoc_, 4(%esp)
	movl	%ebx, (%esp)
	call	chkxer_
	leal	-44(%ebp), %eax
	movl	%eax, 44(%esp)
	leal	-36(%ebp), %eax
	movl	%eax, 40(%esp)
	leal	-40(%ebp), %eax
	movl	%eax, 32(%esp)
	leal	-32(%ebp), %eax
	movl	%eax, 20(%esp)
	movl	$1, 52(%esp)
	movl	$.LC20, 48(%esp)
	movl	$.LC21, 36(%esp)
	movl	$.LC20, 28(%esp)
	movl	%edi, 24(%esp)
	movl	$.LC21, 16(%esp)
	movl	$.LC21, 12(%esp)
	movl	$.LC21, 8(%esp)
	movl	$.LC21, 4(%esp)
	movl	$.LC24, (%esp)
	movl	$10, infoc_
	call	sgbmv_
	movl	$6, 20(%esp)
	movl	$infoc_+8, 16(%esp)
	movl	$infoc_+12, 12(%esp)
	movl	%esi, 8(%esp)
	movl	$infoc_, 4(%esp)
	movl	%ebx, (%esp)
	call	chkxer_
	leal	-44(%ebp), %eax
	movl	%eax, 44(%esp)
	leal	-36(%ebp), %eax
	movl	%eax, 40(%esp)
	leal	-40(%ebp), %eax
	movl	%eax, 32(%esp)
	leal	-32(%ebp), %eax
	movl	$1, 52(%esp)
	movl	$.LC21, 48(%esp)
	movl	$.LC20, 36(%esp)
	movl	$.LC20, 28(%esp)
	movl	%edi, 24(%esp)
	movl	%eax, 20(%esp)
	movl	$.LC21, 16(%esp)
	movl	$.LC21, 12(%esp)
	movl	$.LC21, 8(%esp)
	movl	$.LC21, 4(%esp)
	movl	$.LC24, (%esp)
	movl	$13, infoc_
	call	sgbmv_
	jmp	.L220
	.p2align 4,,7
	.p2align 3
.L201:
	leal	-44(%ebp), %eax
	movl	%eax, 32(%esp)
	leal	-36(%ebp), %eax
	movl	%eax, 28(%esp)
	leal	-40(%ebp), %eax
	leal	-28(%ebp), %edi
	movl	%eax, 20(%esp)
	leal	-32(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	$1, 40(%esp)
	movl	$.LC20, 36(%esp)
	movl	$.LC20, 24(%esp)
	movl	$.LC20, 16(%esp)
	movl	%edi, 12(%esp)
	movl	$.LC21, 4(%esp)
	movl	$.LC22, (%esp)
	movl	$1, infoc_
	call	ssymv_
	movl	$6, 20(%esp)
	movl	$infoc_+8, 16(%esp)
	movl	$infoc_+12, 12(%esp)
	movl	%esi, 8(%esp)
	movl	$infoc_, 4(%esp)
	movl	%ebx, (%esp)
	call	chkxer_
	leal	-44(%ebp), %eax
	movl	%eax, 32(%esp)
	leal	-36(%ebp), %eax
	movl	%eax, 28(%esp)
	leal	-40(%ebp), %eax
	movl	%eax, 20(%esp)
	leal	-32(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	$1, 40(%esp)
	movl	$.LC20, 36(%esp)
	movl	$.LC20, 24(%esp)
	movl	$.LC20, 16(%esp)
	movl	%edi, 12(%esp)
	movl	$.LC23, 4(%esp)
	movl	$.LC26, (%esp)
	movl	$2, infoc_
	call	ssymv_
	movl	$6, 20(%esp)
	movl	$infoc_+8, 16(%esp)
	movl	$infoc_+12, 12(%esp)
	movl	%esi, 8(%esp)
	movl	$infoc_, 4(%esp)
	movl	%ebx, (%esp)
	call	chkxer_
	leal	-44(%ebp), %eax
	movl	%eax, 32(%esp)
	leal	-36(%ebp), %eax
	movl	%eax, 28(%esp)
	leal	-40(%ebp), %eax
	movl	%eax, 20(%esp)
	leal	-32(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	$1, 40(%esp)
	movl	$.LC20, 36(%esp)
	movl	$.LC20, 24(%esp)
	movl	$.LC20, 16(%esp)
	movl	%edi, 12(%esp)
	movl	$.LC25, 4(%esp)
	movl	$.LC26, (%esp)
	movl	$5, infoc_
	call	ssymv_
	movl	$6, 20(%esp)
	movl	$infoc_+8, 16(%esp)
	movl	$infoc_+12, 12(%esp)
	movl	%esi, 8(%esp)
	movl	$infoc_, 4(%esp)
	movl	%ebx, (%esp)
	call	chkxer_
	leal	-44(%ebp), %eax
	movl	%eax, 32(%esp)
	leal	-36(%ebp), %eax
	movl	%eax, 28(%esp)
	leal	-40(%ebp), %eax
	movl	%eax, 20(%esp)
	leal	-32(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	$1, 40(%esp)
	movl	$.LC20, 36(%esp)
	movl	$.LC21, 24(%esp)
	movl	$.LC20, 16(%esp)
	movl	%edi, 12(%esp)
	movl	$.LC21, 4(%esp)
	movl	$.LC26, (%esp)
	movl	$7, infoc_
	call	ssymv_
	movl	$6, 20(%esp)
	movl	$infoc_+8, 16(%esp)
	movl	$infoc_+12, 12(%esp)
	movl	%esi, 8(%esp)
	movl	$infoc_, 4(%esp)
	movl	%ebx, (%esp)
	call	chkxer_
	leal	-44(%ebp), %eax
	movl	%eax, 32(%esp)
	leal	-36(%ebp), %eax
	movl	%eax, 28(%esp)
	leal	-40(%ebp), %eax
	movl	%eax, 20(%esp)
	leal	-32(%ebp), %eax
	movl	$1, 40(%esp)
	movl	$.LC21, 36(%esp)
	movl	$.LC20, 24(%esp)
	movl	$.LC20, 16(%esp)
	movl	%edi, 12(%esp)
	movl	%eax, 8(%esp)
	movl	$.LC21, 4(%esp)
	movl	$.LC26, (%esp)
	movl	$10, infoc_
	call	ssymv_
	jmp	.L220
	.p2align 4,,7
	.p2align 3
.L202:
	leal	-44(%ebp), %eax
	movl	%eax, 36(%esp)
	leal	-36(%ebp), %eax
	movl	%eax, 32(%esp)
	leal	-40(%ebp), %eax
	leal	-28(%ebp), %edi
	movl	%eax, 24(%esp)
	leal	-32(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	$1, 44(%esp)
	movl	$.LC20, 40(%esp)
	movl	$.LC20, 28(%esp)
	movl	$.LC20, 20(%esp)
	movl	%edi, 16(%esp)
	movl	$.LC21, 8(%esp)
	movl	$.LC21, 4(%esp)
	movl	$.LC22, (%esp)
	movl	$1, infoc_
	call	ssbmv_
	movl	$6, 20(%esp)
	movl	$infoc_+8, 16(%esp)
	movl	$infoc_+12, 12(%esp)
	movl	%esi, 8(%esp)
	movl	$infoc_, 4(%esp)
	movl	%ebx, (%esp)
	call	chkxer_
	leal	-44(%ebp), %eax
	movl	%eax, 36(%esp)
	leal	-36(%ebp), %eax
	movl	%eax, 32(%esp)
	leal	-40(%ebp), %eax
	movl	%eax, 24(%esp)
	leal	-32(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	$1, 44(%esp)
	movl	$.LC20, 40(%esp)
	movl	$.LC20, 28(%esp)
	movl	$.LC20, 20(%esp)
	movl	%edi, 16(%esp)
	movl	$.LC21, 8(%esp)
	movl	$.LC23, 4(%esp)
	movl	$.LC26, (%esp)
	movl	$2, infoc_
	call	ssbmv_
	movl	$6, 20(%esp)
	movl	$infoc_+8, 16(%esp)
	movl	$infoc_+12, 12(%esp)
	movl	%esi, 8(%esp)
	movl	$infoc_, 4(%esp)
	movl	%ebx, (%esp)
	call	chkxer_
	leal	-44(%ebp), %eax
	movl	%eax, 36(%esp)
	leal	-36(%ebp), %eax
	movl	%eax, 32(%esp)
	leal	-40(%ebp), %eax
	movl	%eax, 24(%esp)
	leal	-32(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	$1, 44(%esp)
	movl	$.LC20, 40(%esp)
	movl	$.LC20, 28(%esp)
	movl	$.LC20, 20(%esp)
	movl	%edi, 16(%esp)
	movl	$.LC23, 8(%esp)
	movl	$.LC21, 4(%esp)
	movl	$.LC26, (%esp)
	movl	$3, infoc_
	call	ssbmv_
	movl	$6, 20(%esp)
	movl	$infoc_+8, 16(%esp)
	movl	$infoc_+12, 12(%esp)
	movl	%esi, 8(%esp)
	movl	$infoc_, 4(%esp)
	movl	%ebx, (%esp)
	call	chkxer_
	leal	-44(%ebp), %eax
	movl	%eax, 36(%esp)
	leal	-36(%ebp), %eax
	movl	%eax, 32(%esp)
	leal	-40(%ebp), %eax
	movl	%eax, 24(%esp)
	leal	-32(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	$1, 44(%esp)
	movl	$.LC20, 40(%esp)
	movl	$.LC20, 28(%esp)
	movl	$.LC20, 20(%esp)
	movl	%edi, 16(%esp)
	movl	$.LC20, 8(%esp)
	movl	$.LC21, 4(%esp)
	movl	$.LC26, (%esp)
	movl	$6, infoc_
	call	ssbmv_
	movl	$6, 20(%esp)
	movl	$infoc_+8, 16(%esp)
	movl	$infoc_+12, 12(%esp)
	movl	%esi, 8(%esp)
	movl	$infoc_, 4(%esp)
	movl	%ebx, (%esp)
	call	chkxer_
	leal	-44(%ebp), %eax
	movl	%eax, 36(%esp)
	leal	-36(%ebp), %eax
	movl	%eax, 32(%esp)
	leal	-40(%ebp), %eax
	movl	%eax, 24(%esp)
	leal	-32(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	$1, 44(%esp)
	movl	$.LC20, 40(%esp)
	movl	$.LC21, 28(%esp)
	movl	$.LC20, 20(%esp)
	movl	%edi, 16(%esp)
	movl	$.LC21, 8(%esp)
	movl	$.LC21, 4(%esp)
	movl	$.LC26, (%esp)
	movl	$8, infoc_
	call	ssbmv_
	movl	$6, 20(%esp)
	movl	$infoc_+8, 16(%esp)
	movl	$infoc_+12, 12(%esp)
	movl	%esi, 8(%esp)
	movl	$infoc_, 4(%esp)
	movl	%ebx, (%esp)
	call	chkxer_
	leal	-44(%ebp), %eax
	movl	%eax, 36(%esp)
	leal	-36(%ebp), %eax
	movl	%eax, 32(%esp)
	leal	-40(%ebp), %eax
	movl	%eax, 24(%esp)
	leal	-32(%ebp), %eax
	movl	$1, 44(%esp)
	movl	$.LC21, 40(%esp)
	movl	$.LC20, 28(%esp)
	movl	$.LC20, 20(%esp)
	movl	%edi, 16(%esp)
	movl	%eax, 12(%esp)
	movl	$.LC21, 8(%esp)
	movl	$.LC21, 4(%esp)
	movl	$.LC26, (%esp)
	movl	$11, infoc_
	call	ssbmv_
	jmp	.L220
	.p2align 4,,7
	.p2align 3
.L203:
	leal	-44(%ebp), %eax
	movl	%eax, 28(%esp)
	leal	-36(%ebp), %eax
	movl	%eax, 24(%esp)
	leal	-40(%ebp), %eax
	leal	-28(%ebp), %edi
	movl	%eax, 16(%esp)
	leal	-32(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	$1, 36(%esp)
	movl	$.LC20, 32(%esp)
	movl	$.LC20, 20(%esp)
	movl	%edi, 12(%esp)
	movl	$.LC21, 4(%esp)
	movl	$.LC22, (%esp)
	movl	$1, infoc_
	call	sspmv_
	movl	$6, 20(%esp)
	movl	$infoc_+8, 16(%esp)
	movl	$infoc_+12, 12(%esp)
	movl	%esi, 8(%esp)
	movl	$infoc_, 4(%esp)
	movl	%ebx, (%esp)
	call	chkxer_
	leal	-44(%ebp), %eax
	movl	%eax, 28(%esp)
	leal	-36(%ebp), %eax
	movl	%eax, 24(%esp)
	leal	-40(%ebp), %eax
	movl	%eax, 16(%esp)
	leal	-32(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	$1, 36(%esp)
	movl	$.LC20, 32(%esp)
	movl	$.LC20, 20(%esp)
	movl	%edi, 12(%esp)
	movl	$.LC23, 4(%esp)
	movl	$.LC26, (%esp)
	movl	$2, infoc_
	call	sspmv_
	movl	$6, 20(%esp)
	movl	$infoc_+8, 16(%esp)
	movl	$infoc_+12, 12(%esp)
	movl	%esi, 8(%esp)
	movl	$infoc_, 4(%esp)
	movl	%ebx, (%esp)
	call	chkxer_
	leal	-44(%ebp), %eax
	movl	%eax, 28(%esp)
	leal	-36(%ebp), %eax
	movl	%eax, 24(%esp)
	leal	-40(%ebp), %eax
	movl	%eax, 16(%esp)
	leal	-32(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	$1, 36(%esp)
	movl	$.LC20, 32(%esp)
	movl	$.LC21, 20(%esp)
	movl	%edi, 12(%esp)
	movl	$.LC21, 4(%esp)
	movl	$.LC26, (%esp)
	movl	$6, infoc_
	call	sspmv_
	movl	$6, 20(%esp)
	movl	$infoc_+8, 16(%esp)
	movl	$infoc_+12, 12(%esp)
	movl	%esi, 8(%esp)
	movl	$infoc_, 4(%esp)
	movl	%ebx, (%esp)
	call	chkxer_
	leal	-44(%ebp), %eax
	movl	%eax, 28(%esp)
	leal	-36(%ebp), %eax
	movl	%eax, 24(%esp)
	leal	-40(%ebp), %eax
	movl	%eax, 16(%esp)
	leal	-32(%ebp), %eax
	movl	$1, 36(%esp)
	movl	$.LC21, 32(%esp)
	movl	$.LC20, 20(%esp)
	movl	%edi, 12(%esp)
	movl	%eax, 8(%esp)
	movl	$.LC21, 4(%esp)
	movl	$.LC26, (%esp)
	movl	$9, infoc_
	call	sspmv_
	jmp	.L220
	.p2align 4,,7
	.p2align 3
.L204:
	leal	-28(%ebp), %edi
	leal	-40(%ebp), %eax
	movl	%eax, 24(%esp)
	movl	$1, 40(%esp)
	movl	$1, 36(%esp)
	movl	$1, 32(%esp)
	movl	$.LC20, 28(%esp)
	movl	$.LC20, 20(%esp)
	movl	%edi, 16(%esp)
	movl	$.LC21, 12(%esp)
	movl	$.LC24, 8(%esp)
	movl	$.LC24, 4(%esp)
	movl	$.LC22, (%esp)
	movl	$1, infoc_
	call	strmv_
	movl	$6, 20(%esp)
	movl	$infoc_+8, 16(%esp)
	movl	$infoc_+12, 12(%esp)
	movl	%esi, 8(%esp)
	movl	$infoc_, 4(%esp)
	movl	%ebx, (%esp)
	call	chkxer_
	leal	-40(%ebp), %eax
	movl	%eax, 24(%esp)
	movl	$1, 40(%esp)
	movl	$1, 36(%esp)
	movl	$1, 32(%esp)
	movl	$.LC20, 28(%esp)
	movl	$.LC20, 20(%esp)
	movl	%edi, 16(%esp)
	movl	$.LC21, 12(%esp)
	movl	$.LC24, 8(%esp)
	movl	$.LC22, 4(%esp)
	movl	$.LC26, (%esp)
	movl	$2, infoc_
	call	strmv_
	movl	$6, 20(%esp)
	movl	$infoc_+8, 16(%esp)
	movl	$infoc_+12, 12(%esp)
	movl	%esi, 8(%esp)
	movl	$infoc_, 4(%esp)
	movl	%ebx, (%esp)
	call	chkxer_
	leal	-40(%ebp), %eax
	movl	%eax, 24(%esp)
	movl	$1, 40(%esp)
	movl	$1, 36(%esp)
	movl	$1, 32(%esp)
	movl	$.LC20, 28(%esp)
	movl	$.LC20, 20(%esp)
	movl	%edi, 16(%esp)
	movl	$.LC21, 12(%esp)
	movl	$.LC22, 8(%esp)
	movl	$.LC24, 4(%esp)
	movl	$.LC26, (%esp)
	movl	$3, infoc_
	call	strmv_
	movl	$6, 20(%esp)
	movl	$infoc_+8, 16(%esp)
	movl	$infoc_+12, 12(%esp)
	movl	%esi, 8(%esp)
	movl	$infoc_, 4(%esp)
	movl	%ebx, (%esp)
	call	chkxer_
	leal	-40(%ebp), %eax
	movl	%eax, 24(%esp)
	movl	$1, 40(%esp)
	movl	$1, 36(%esp)
	movl	$1, 32(%esp)
	movl	$.LC20, 28(%esp)
	movl	$.LC20, 20(%esp)
	movl	%edi, 16(%esp)
	movl	$.LC23, 12(%esp)
	movl	$.LC24, 8(%esp)
	movl	$.LC24, 4(%esp)
	movl	$.LC26, (%esp)
	movl	$4, infoc_
	call	strmv_
	movl	$6, 20(%esp)
	movl	$infoc_+8, 16(%esp)
	movl	$infoc_+12, 12(%esp)
	movl	%esi, 8(%esp)
	movl	$infoc_, 4(%esp)
	movl	%ebx, (%esp)
	call	chkxer_
	leal	-40(%ebp), %eax
	movl	%eax, 24(%esp)
	movl	$1, 40(%esp)
	movl	$1, 36(%esp)
	movl	$1, 32(%esp)
	movl	$.LC20, 28(%esp)
	movl	$.LC20, 20(%esp)
	movl	%edi, 16(%esp)
	movl	$.LC25, 12(%esp)
	movl	$.LC24, 8(%esp)
	movl	$.LC24, 4(%esp)
	movl	$.LC26, (%esp)
	movl	$6, infoc_
	call	strmv_
	movl	$6, 20(%esp)
	movl	$infoc_+8, 16(%esp)
	movl	$infoc_+12, 12(%esp)
	movl	%esi, 8(%esp)
	movl	$infoc_, 4(%esp)
	movl	%ebx, (%esp)
	call	chkxer_
	leal	-40(%ebp), %eax
	movl	$1, 40(%esp)
	movl	$1, 36(%esp)
	movl	$1, 32(%esp)
	movl	$.LC21, 28(%esp)
	movl	%eax, 24(%esp)
	movl	$.LC20, 20(%esp)
	movl	%edi, 16(%esp)
	movl	$.LC21, 12(%esp)
	movl	$.LC24, 8(%esp)
	movl	$.LC24, 4(%esp)
	movl	$.LC26, (%esp)
	movl	$8, infoc_
	call	strmv_
	jmp	.L220
	.p2align 4,,7
	.p2align 3
.L205:
	leal	-28(%ebp), %edi
	leal	-40(%ebp), %eax
	movl	%eax, 28(%esp)
	movl	$1, 44(%esp)
	movl	$1, 40(%esp)
	movl	$1, 36(%esp)
	movl	$.LC20, 32(%esp)
	movl	$.LC20, 24(%esp)
	movl	%edi, 20(%esp)
	movl	$.LC21, 16(%esp)
	movl	$.LC21, 12(%esp)
	movl	$.LC24, 8(%esp)
	movl	$.LC24, 4(%esp)
	movl	$.LC22, (%esp)
	movl	$1, infoc_
	call	stbmv_
	movl	$6, 20(%esp)
	movl	$infoc_+8, 16(%esp)
	movl	$infoc_+12, 12(%esp)
	movl	%esi, 8(%esp)
	movl	$infoc_, 4(%esp)
	movl	%ebx, (%esp)
	call	chkxer_
	leal	-40(%ebp), %eax
	movl	%eax, 28(%esp)
	movl	$1, 44(%esp)
	movl	$1, 40(%esp)
	movl	$1, 36(%esp)
	movl	$.LC20, 32(%esp)
	movl	$.LC20, 24(%esp)
	movl	%edi, 20(%esp)
	movl	$.LC21, 16(%esp)
	movl	$.LC21, 12(%esp)
	movl	$.LC24, 8(%esp)
	movl	$.LC22, 4(%esp)
	movl	$.LC26, (%esp)
	movl	$2, infoc_
	call	stbmv_
	movl	$6, 20(%esp)
	movl	$infoc_+8, 16(%esp)
	movl	$infoc_+12, 12(%esp)
	movl	%esi, 8(%esp)
	movl	$infoc_, 4(%esp)
	movl	%ebx, (%esp)
	call	chkxer_
	leal	-40(%ebp), %eax
	movl	%eax, 28(%esp)
	movl	$1, 44(%esp)
	movl	$1, 40(%esp)
	movl	$1, 36(%esp)
	movl	$.LC20, 32(%esp)
	movl	$.LC20, 24(%esp)
	movl	%edi, 20(%esp)
	movl	$.LC21, 16(%esp)
	movl	$.LC21, 12(%esp)
	movl	$.LC22, 8(%esp)
	movl	$.LC24, 4(%esp)
	movl	$.LC26, (%esp)
	movl	$3, infoc_
	call	stbmv_
	movl	$6, 20(%esp)
	movl	$infoc_+8, 16(%esp)
	movl	$infoc_+12, 12(%esp)
	movl	%esi, 8(%esp)
	movl	$infoc_, 4(%esp)
	movl	%ebx, (%esp)
	call	chkxer_
	leal	-40(%ebp), %eax
	movl	%eax, 28(%esp)
	movl	$1, 44(%esp)
	movl	$1, 40(%esp)
	movl	$1, 36(%esp)
	movl	$.LC20, 32(%esp)
	movl	$.LC20, 24(%esp)
	movl	%edi, 20(%esp)
	movl	$.LC21, 16(%esp)
	movl	$.LC23, 12(%esp)
	movl	$.LC24, 8(%esp)
	movl	$.LC24, 4(%esp)
	movl	$.LC26, (%esp)
	movl	$4, infoc_
	call	stbmv_
	movl	$6, 20(%esp)
	movl	$infoc_+8, 16(%esp)
	movl	$infoc_+12, 12(%esp)
	movl	%esi, 8(%esp)
	movl	$infoc_, 4(%esp)
	movl	%ebx, (%esp)
	call	chkxer_
	leal	-40(%ebp), %eax
	movl	%eax, 28(%esp)
	movl	$1, 44(%esp)
	movl	$1, 40(%esp)
	movl	$1, 36(%esp)
	movl	$.LC20, 32(%esp)
	movl	$.LC20, 24(%esp)
	movl	%edi, 20(%esp)
	movl	$.LC23, 16(%esp)
	movl	$.LC21, 12(%esp)
	movl	$.LC24, 8(%esp)
	movl	$.LC24, 4(%esp)
	movl	$.LC26, (%esp)
	movl	$5, infoc_
	call	stbmv_
	movl	$6, 20(%esp)
	movl	$infoc_+8, 16(%esp)
	movl	$infoc_+12, 12(%esp)
	movl	%esi, 8(%esp)
	movl	$infoc_, 4(%esp)
	movl	%ebx, (%esp)
	call	chkxer_
	leal	-40(%ebp), %eax
	movl	%eax, 28(%esp)
	movl	$1, 44(%esp)
	movl	$1, 40(%esp)
	movl	$1, 36(%esp)
	movl	$.LC20, 32(%esp)
	movl	$.LC20, 24(%esp)
	movl	%edi, 20(%esp)
	movl	$.LC20, 16(%esp)
	movl	$.LC21, 12(%esp)
	movl	$.LC24, 8(%esp)
	movl	$.LC24, 4(%esp)
	movl	$.LC26, (%esp)
	movl	$7, infoc_
	call	stbmv_
	movl	$6, 20(%esp)
	movl	$infoc_+8, 16(%esp)
	movl	$infoc_+12, 12(%esp)
	movl	%esi, 8(%esp)
	movl	$infoc_, 4(%esp)
	movl	%ebx, (%esp)
	call	chkxer_
	leal	-40(%ebp), %eax
	movl	$1, 44(%esp)
	movl	$1, 40(%esp)
	movl	$1, 36(%esp)
	movl	$.LC21, 32(%esp)
	movl	%eax, 28(%esp)
	movl	$.LC20, 24(%esp)
	movl	%edi, 20(%esp)
	movl	$.LC21, 16(%esp)
	movl	$.LC21, 12(%esp)
	movl	$.LC24, 8(%esp)
	movl	$.LC24, 4(%esp)
	movl	$.LC26, (%esp)
	movl	$9, infoc_
	call	stbmv_
	jmp	.L220
	.p2align 4,,7
	.p2align 3
.L206:
	leal	-28(%ebp), %edi
	leal	-40(%ebp), %eax
	movl	%eax, 20(%esp)
	movl	$1, 36(%esp)
	movl	$1, 32(%esp)
	movl	$1, 28(%esp)
	movl	$.LC20, 24(%esp)
	movl	%edi, 16(%esp)
	movl	$.LC21, 12(%esp)
	movl	$.LC24, 8(%esp)
	movl	$.LC24, 4(%esp)
	movl	$.LC22, (%esp)
	movl	$1, infoc_
	call	stpmv_
	movl	$6, 20(%esp)
	movl	$infoc_+8, 16(%esp)
	movl	$infoc_+12, 12(%esp)
	movl	%esi, 8(%esp)
	movl	$infoc_, 4(%esp)
	movl	%ebx, (%esp)
	call	chkxer_
	leal	-40(%ebp), %eax
	movl	%eax, 20(%esp)
	movl	$1, 36(%esp)
	movl	$1, 32(%esp)
	movl	$1, 28(%esp)
	movl	$.LC20, 24(%esp)
	movl	%edi, 16(%esp)
	movl	$.LC21, 12(%esp)
	movl	$.LC24, 8(%esp)
	movl	$.LC22, 4(%esp)
	movl	$.LC26, (%esp)
	movl	$2, infoc_
	call	stpmv_
	movl	$6, 20(%esp)
	movl	$infoc_+8, 16(%esp)
	movl	$infoc_+12, 12(%esp)
	movl	%esi, 8(%esp)
	movl	$infoc_, 4(%esp)
	movl	%ebx, (%esp)
	call	chkxer_
	leal	-40(%ebp), %eax
	movl	%eax, 20(%esp)
	movl	$1, 36(%esp)
	movl	$1, 32(%esp)
	movl	$1, 28(%esp)
	movl	$.LC20, 24(%esp)
	movl	%edi, 16(%esp)
	movl	$.LC21, 12(%esp)
	movl	$.LC22, 8(%esp)
	movl	$.LC24, 4(%esp)
	movl	$.LC26, (%esp)
	movl	$3, infoc_
	call	stpmv_
	movl	$6, 20(%esp)
	movl	$infoc_+8, 16(%esp)
	movl	$infoc_+12, 12(%esp)
	movl	%esi, 8(%esp)
	movl	$infoc_, 4(%esp)
	movl	%ebx, (%esp)
	call	chkxer_
	leal	-40(%ebp), %eax
	movl	%eax, 20(%esp)
	movl	$1, 36(%esp)
	movl	$1, 32(%esp)
	movl	$1, 28(%esp)
	movl	$.LC20, 24(%esp)
	movl	%edi, 16(%esp)
	movl	$.LC23, 12(%esp)
	movl	$.LC24, 8(%esp)
	movl	$.LC24, 4(%esp)
	movl	$.LC26, (%esp)
	movl	$4, infoc_
	call	stpmv_
	movl	$6, 20(%esp)
	movl	$infoc_+8, 16(%esp)
	movl	$infoc_+12, 12(%esp)
	movl	%esi, 8(%esp)
	movl	$infoc_, 4(%esp)
	movl	%ebx, (%esp)
	call	chkxer_
	leal	-40(%ebp), %eax
	movl	$1, 36(%esp)
	movl	$1, 32(%esp)
	movl	$1, 28(%esp)
	movl	$.LC21, 24(%esp)
	movl	%eax, 20(%esp)
	movl	%edi, 16(%esp)
	movl	$.LC21, 12(%esp)
	movl	$.LC24, 8(%esp)
	movl	$.LC24, 4(%esp)
	movl	$.LC26, (%esp)
	movl	$7, infoc_
	call	stpmv_
	jmp	.L220
	.p2align 4,,7
	.p2align 3
.L207:
	leal	-28(%ebp), %edi
	leal	-40(%ebp), %eax
	movl	%eax, 24(%esp)
	movl	$1, 40(%esp)
	movl	$1, 36(%esp)
	movl	$1, 32(%esp)
	movl	$.LC20, 28(%esp)
	movl	$.LC20, 20(%esp)
	movl	%edi, 16(%esp)
	movl	$.LC21, 12(%esp)
	movl	$.LC24, 8(%esp)
	movl	$.LC24, 4(%esp)
	movl	$.LC22, (%esp)
	movl	$1, infoc_
	call	strsv_
	movl	$6, 20(%esp)
	movl	$infoc_+8, 16(%esp)
	movl	$infoc_+12, 12(%esp)
	movl	%esi, 8(%esp)
	movl	$infoc_, 4(%esp)
	movl	%ebx, (%esp)
	call	chkxer_
	leal	-40(%ebp), %eax
	movl	%eax, 24(%esp)
	movl	$1, 40(%esp)
	movl	$1, 36(%esp)
	movl	$1, 32(%esp)
	movl	$.LC20, 28(%esp)
	movl	$.LC20, 20(%esp)
	movl	%edi, 16(%esp)
	movl	$.LC21, 12(%esp)
	movl	$.LC24, 8(%esp)
	movl	$.LC22, 4(%esp)
	movl	$.LC26, (%esp)
	movl	$2, infoc_
	call	strsv_
	movl	$6, 20(%esp)
	movl	$infoc_+8, 16(%esp)
	movl	$infoc_+12, 12(%esp)
	movl	%esi, 8(%esp)
	movl	$infoc_, 4(%esp)
	movl	%ebx, (%esp)
	call	chkxer_
	leal	-40(%ebp), %eax
	movl	%eax, 24(%esp)
	movl	$1, 40(%esp)
	movl	$1, 36(%esp)
	movl	$1, 32(%esp)
	movl	$.LC20, 28(%esp)
	movl	$.LC20, 20(%esp)
	movl	%edi, 16(%esp)
	movl	$.LC21, 12(%esp)
	movl	$.LC22, 8(%esp)
	movl	$.LC24, 4(%esp)
	movl	$.LC26, (%esp)
	movl	$3, infoc_
	call	strsv_
	movl	$6, 20(%esp)
	movl	$infoc_+8, 16(%esp)
	movl	$infoc_+12, 12(%esp)
	movl	%esi, 8(%esp)
	movl	$infoc_, 4(%esp)
	movl	%ebx, (%esp)
	call	chkxer_
	leal	-40(%ebp), %eax
	movl	%eax, 24(%esp)
	movl	$1, 40(%esp)
	movl	$1, 36(%esp)
	movl	$1, 32(%esp)
	movl	$.LC20, 28(%esp)
	movl	$.LC20, 20(%esp)
	movl	%edi, 16(%esp)
	movl	$.LC23, 12(%esp)
	movl	$.LC24, 8(%esp)
	movl	$.LC24, 4(%esp)
	movl	$.LC26, (%esp)
	movl	$4, infoc_
	call	strsv_
	movl	$6, 20(%esp)
	movl	$infoc_+8, 16(%esp)
	movl	$infoc_+12, 12(%esp)
	movl	%esi, 8(%esp)
	movl	$infoc_, 4(%esp)
	movl	%ebx, (%esp)
	call	chkxer_
	leal	-40(%ebp), %eax
	movl	%eax, 24(%esp)
	movl	$1, 40(%esp)
	movl	$1, 36(%esp)
	movl	$1, 32(%esp)
	movl	$.LC20, 28(%esp)
	movl	$.LC20, 20(%esp)
	movl	%edi, 16(%esp)
	movl	$.LC25, 12(%esp)
	movl	$.LC24, 8(%esp)
	movl	$.LC24, 4(%esp)
	movl	$.LC26, (%esp)
	movl	$6, infoc_
	call	strsv_
	movl	$6, 20(%esp)
	movl	$infoc_+8, 16(%esp)
	movl	$infoc_+12, 12(%esp)
	movl	%esi, 8(%esp)
	movl	$infoc_, 4(%esp)
	movl	%ebx, (%esp)
	call	chkxer_
	leal	-40(%ebp), %eax
	movl	$1, 40(%esp)
	movl	$1, 36(%esp)
	movl	$1, 32(%esp)
	movl	$.LC21, 28(%esp)
	movl	%eax, 24(%esp)
	movl	$.LC20, 20(%esp)
	movl	%edi, 16(%esp)
	movl	$.LC21, 12(%esp)
	movl	$.LC24, 8(%esp)
	movl	$.LC24, 4(%esp)
	movl	$.LC26, (%esp)
	movl	$8, infoc_
	call	strsv_
	jmp	.L220
	.p2align 4,,7
	.p2align 3
.L208:
	leal	-28(%ebp), %edi
	leal	-40(%ebp), %eax
	movl	%eax, 28(%esp)
	movl	$1, 44(%esp)
	movl	$1, 40(%esp)
	movl	$1, 36(%esp)
	movl	$.LC20, 32(%esp)
	movl	$.LC20, 24(%esp)
	movl	%edi, 20(%esp)
	movl	$.LC21, 16(%esp)
	movl	$.LC21, 12(%esp)
	movl	$.LC24, 8(%esp)
	movl	$.LC24, 4(%esp)
	movl	$.LC22, (%esp)
	movl	$1, infoc_
	call	stbsv_
	movl	$6, 20(%esp)
	movl	$infoc_+8, 16(%esp)
	movl	$infoc_+12, 12(%esp)
	movl	%esi, 8(%esp)
	movl	$infoc_, 4(%esp)
	movl	%ebx, (%esp)
	call	chkxer_
	leal	-40(%ebp), %eax
	movl	%eax, 28(%esp)
	movl	$1, 44(%esp)
	movl	$1, 40(%esp)
	movl	$1, 36(%esp)
	movl	$.LC20, 32(%esp)
	movl	$.LC20, 24(%esp)
	movl	%edi, 20(%esp)
	movl	$.LC21, 16(%esp)
	movl	$.LC21, 12(%esp)
	movl	$.LC24, 8(%esp)
	movl	$.LC22, 4(%esp)
	movl	$.LC26, (%esp)
	movl	$2, infoc_
	call	stbsv_
	movl	$6, 20(%esp)
	movl	$infoc_+8, 16(%esp)
	movl	$infoc_+12, 12(%esp)
	movl	%esi, 8(%esp)
	movl	$infoc_, 4(%esp)
	movl	%ebx, (%esp)
	call	chkxer_
	leal	-40(%ebp), %eax
	movl	%eax, 28(%esp)
	movl	$1, 44(%esp)
	movl	$1, 40(%esp)
	movl	$1, 36(%esp)
	movl	$.LC20, 32(%esp)
	movl	$.LC20, 24(%esp)
	movl	%edi, 20(%esp)
	movl	$.LC21, 16(%esp)
	movl	$.LC21, 12(%esp)
	movl	$.LC22, 8(%esp)
	movl	$.LC24, 4(%esp)
	movl	$.LC26, (%esp)
	movl	$3, infoc_
	call	stbsv_
	movl	$6, 20(%esp)
	movl	$infoc_+8, 16(%esp)
	movl	$infoc_+12, 12(%esp)
	movl	%esi, 8(%esp)
	movl	$infoc_, 4(%esp)
	movl	%ebx, (%esp)
	call	chkxer_
	leal	-40(%ebp), %eax
	movl	%eax, 28(%esp)
	movl	$1, 44(%esp)
	movl	$1, 40(%esp)
	movl	$1, 36(%esp)
	movl	$.LC20, 32(%esp)
	movl	$.LC20, 24(%esp)
	movl	%edi, 20(%esp)
	movl	$.LC21, 16(%esp)
	movl	$.LC23, 12(%esp)
	movl	$.LC24, 8(%esp)
	movl	$.LC24, 4(%esp)
	movl	$.LC26, (%esp)
	movl	$4, infoc_
	call	stbsv_
	movl	$6, 20(%esp)
	movl	$infoc_+8, 16(%esp)
	movl	$infoc_+12, 12(%esp)
	movl	%esi, 8(%esp)
	movl	$infoc_, 4(%esp)
	movl	%ebx, (%esp)
	call	chkxer_
	leal	-40(%ebp), %eax
	movl	%eax, 28(%esp)
	movl	$1, 44(%esp)
	movl	$1, 40(%esp)
	movl	$1, 36(%esp)
	movl	$.LC20, 32(%esp)
	movl	$.LC20, 24(%esp)
	movl	%edi, 20(%esp)
	movl	$.LC23, 16(%esp)
	movl	$.LC21, 12(%esp)
	movl	$.LC24, 8(%esp)
	movl	$.LC24, 4(%esp)
	movl	$.LC26, (%esp)
	movl	$5, infoc_
	call	stbsv_
	movl	$6, 20(%esp)
	movl	$infoc_+8, 16(%esp)
	movl	$infoc_+12, 12(%esp)
	movl	%esi, 8(%esp)
	movl	$infoc_, 4(%esp)
	movl	%ebx, (%esp)
	call	chkxer_
	leal	-40(%ebp), %eax
	movl	%eax, 28(%esp)
	movl	$1, 44(%esp)
	movl	$1, 40(%esp)
	movl	$1, 36(%esp)
	movl	$.LC20, 32(%esp)
	movl	$.LC20, 24(%esp)
	movl	%edi, 20(%esp)
	movl	$.LC20, 16(%esp)
	movl	$.LC21, 12(%esp)
	movl	$.LC24, 8(%esp)
	movl	$.LC24, 4(%esp)
	movl	$.LC26, (%esp)
	movl	$7, infoc_
	call	stbsv_
	movl	$6, 20(%esp)
	movl	$infoc_+8, 16(%esp)
	movl	$infoc_+12, 12(%esp)
	movl	%esi, 8(%esp)
	movl	$infoc_, 4(%esp)
	movl	%ebx, (%esp)
	call	chkxer_
	leal	-40(%ebp), %eax
	movl	$1, 44(%esp)
	movl	$1, 40(%esp)
	movl	$1, 36(%esp)
	movl	$.LC21, 32(%esp)
	movl	%eax, 28(%esp)
	movl	$.LC20, 24(%esp)
	movl	%edi, 20(%esp)
	movl	$.LC21, 16(%esp)
	movl	$.LC21, 12(%esp)
	movl	$.LC24, 8(%esp)
	movl	$.LC24, 4(%esp)
	movl	$.LC26, (%esp)
	movl	$9, infoc_
	call	stbsv_
	jmp	.L220
	.p2align 4,,7
	.p2align 3
.L209:
	leal	-28(%ebp), %edi
	leal	-40(%ebp), %eax
	movl	%eax, 20(%esp)
	movl	$1, 36(%esp)
	movl	$1, 32(%esp)
	movl	$1, 28(%esp)
	movl	$.LC20, 24(%esp)
	movl	%edi, 16(%esp)
	movl	$.LC21, 12(%esp)
	movl	$.LC24, 8(%esp)
	movl	$.LC24, 4(%esp)
	movl	$.LC22, (%esp)
	movl	$1, infoc_
	call	stpsv_
	movl	$6, 20(%esp)
	movl	$infoc_+8, 16(%esp)
	movl	$infoc_+12, 12(%esp)
	movl	%esi, 8(%esp)
	movl	$infoc_, 4(%esp)
	movl	%ebx, (%esp)
	call	chkxer_
	leal	-40(%ebp), %eax
	movl	%eax, 20(%esp)
	movl	$1, 36(%esp)
	movl	$1, 32(%esp)
	movl	$1, 28(%esp)
	movl	$.LC20, 24(%esp)
	movl	%edi, 16(%esp)
	movl	$.LC21, 12(%esp)
	movl	$.LC24, 8(%esp)
	movl	$.LC22, 4(%esp)
	movl	$.LC26, (%esp)
	movl	$2, infoc_
	call	stpsv_
	movl	$6, 20(%esp)
	movl	$infoc_+8, 16(%esp)
	movl	$infoc_+12, 12(%esp)
	movl	%esi, 8(%esp)
	movl	$infoc_, 4(%esp)
	movl	%ebx, (%esp)
	call	chkxer_
	leal	-40(%ebp), %eax
	movl	%eax, 20(%esp)
	movl	$1, 36(%esp)
	movl	$1, 32(%esp)
	movl	$1, 28(%esp)
	movl	$.LC20, 24(%esp)
	movl	%edi, 16(%esp)
	movl	$.LC21, 12(%esp)
	movl	$.LC22, 8(%esp)
	movl	$.LC24, 4(%esp)
	movl	$.LC26, (%esp)
	movl	$3, infoc_
	call	stpsv_
	movl	$6, 20(%esp)
	movl	$infoc_+8, 16(%esp)
	movl	$infoc_+12, 12(%esp)
	movl	%esi, 8(%esp)
	movl	$infoc_, 4(%esp)
	movl	%ebx, (%esp)
	call	chkxer_
	leal	-40(%ebp), %eax
	movl	%eax, 20(%esp)
	movl	$1, 36(%esp)
	movl	$1, 32(%esp)
	movl	$1, 28(%esp)
	movl	$.LC20, 24(%esp)
	movl	%edi, 16(%esp)
	movl	$.LC23, 12(%esp)
	movl	$.LC24, 8(%esp)
	movl	$.LC24, 4(%esp)
	movl	$.LC26, (%esp)
	movl	$4, infoc_
	call	stpsv_
	movl	$6, 20(%esp)
	movl	$infoc_+8, 16(%esp)
	movl	$infoc_+12, 12(%esp)
	movl	%esi, 8(%esp)
	movl	$infoc_, 4(%esp)
	movl	%ebx, (%esp)
	call	chkxer_
	leal	-40(%ebp), %eax
	movl	$1, 36(%esp)
	movl	$1, 32(%esp)
	movl	$1, 28(%esp)
	movl	$.LC21, 24(%esp)
	movl	%eax, 20(%esp)
	movl	%edi, 16(%esp)
	movl	$.LC21, 12(%esp)
	movl	$.LC24, 8(%esp)
	movl	$.LC24, 4(%esp)
	movl	$.LC26, (%esp)
	movl	$7, infoc_
	call	stpsv_
	jmp	.L220
	.p2align 4,,7
	.p2align 3
.L210:
	leal	-28(%ebp), %eax
	movl	%eax, 28(%esp)
	leal	-44(%ebp), %eax
	leal	-32(%ebp), %edi
	movl	%eax, 20(%esp)
	leal	-40(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	$.LC20, 32(%esp)
	movl	$.LC20, 24(%esp)
	movl	$.LC20, 16(%esp)
	movl	%edi, 8(%esp)
	movl	$.LC21, 4(%esp)
	movl	$.LC23, (%esp)
	movl	$1, infoc_
	call	sger_
	movl	$6, 20(%esp)
	movl	$infoc_+8, 16(%esp)
	movl	$infoc_+12, 12(%esp)
	movl	%esi, 8(%esp)
	movl	$infoc_, 4(%esp)
	movl	%ebx, (%esp)
	call	chkxer_
	leal	-28(%ebp), %eax
	movl	%eax, 28(%esp)
	leal	-44(%ebp), %eax
	movl	%eax, 20(%esp)
	leal	-40(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	$.LC20, 32(%esp)
	movl	$.LC20, 24(%esp)
	movl	$.LC20, 16(%esp)
	movl	%edi, 8(%esp)
	movl	$.LC23, 4(%esp)
	movl	$.LC21, (%esp)
	movl	$2, infoc_
	call	sger_
	movl	$6, 20(%esp)
	movl	$infoc_+8, 16(%esp)
	movl	$infoc_+12, 12(%esp)
	movl	%esi, 8(%esp)
	movl	$infoc_, 4(%esp)
	movl	%ebx, (%esp)
	call	chkxer_
	leal	-28(%ebp), %eax
	movl	%eax, 28(%esp)
	leal	-44(%ebp), %eax
	movl	%eax, 20(%esp)
	leal	-40(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	$.LC20, 32(%esp)
	movl	$.LC20, 24(%esp)
	movl	$.LC21, 16(%esp)
	movl	%edi, 8(%esp)
	movl	$.LC21, 4(%esp)
	movl	$.LC21, (%esp)
	movl	$5, infoc_
	call	sger_
	movl	$6, 20(%esp)
	movl	$infoc_+8, 16(%esp)
	movl	$infoc_+12, 12(%esp)
	movl	%esi, 8(%esp)
	movl	$infoc_, 4(%esp)
	movl	%ebx, (%esp)
	call	chkxer_
	leal	-28(%ebp), %eax
	movl	%eax, 28(%esp)
	leal	-44(%ebp), %eax
	movl	%eax, 20(%esp)
	leal	-40(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	$.LC20, 32(%esp)
	movl	$.LC21, 24(%esp)
	movl	$.LC20, 16(%esp)
	movl	%edi, 8(%esp)
	movl	$.LC21, 4(%esp)
	movl	$.LC21, (%esp)
	movl	$7, infoc_
	call	sger_
	movl	$6, 20(%esp)
	movl	$infoc_+8, 16(%esp)
	movl	$infoc_+12, 12(%esp)
	movl	%esi, 8(%esp)
	movl	$infoc_, 4(%esp)
	movl	%ebx, (%esp)
	call	chkxer_
	leal	-28(%ebp), %eax
	movl	%eax, 28(%esp)
	leal	-44(%ebp), %eax
	movl	%eax, 20(%esp)
	leal	-40(%ebp), %eax
	movl	$.LC20, 32(%esp)
	movl	$.LC20, 24(%esp)
	movl	$.LC20, 16(%esp)
	movl	%eax, 12(%esp)
	movl	%edi, 8(%esp)
	movl	$.LC21, 4(%esp)
	movl	$.LC25, (%esp)
	movl	$9, infoc_
	call	sger_
	jmp	.L220
	.p2align 4,,7
	.p2align 3
.L211:
	leal	-28(%ebp), %eax
	leal	-32(%ebp), %edi
	movl	%eax, 20(%esp)
	leal	-40(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	$1, 28(%esp)
	movl	$.LC20, 24(%esp)
	movl	$.LC20, 16(%esp)
	movl	%edi, 8(%esp)
	movl	$.LC21, 4(%esp)
	movl	$.LC22, (%esp)
	movl	$1, infoc_
	call	ssyr_
	movl	$6, 20(%esp)
	movl	$infoc_+8, 16(%esp)
	movl	$infoc_+12, 12(%esp)
	movl	%esi, 8(%esp)
	movl	$infoc_, 4(%esp)
	movl	%ebx, (%esp)
	call	chkxer_
	leal	-28(%ebp), %eax
	movl	%eax, 20(%esp)
	leal	-40(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	$1, 28(%esp)
	movl	$.LC20, 24(%esp)
	movl	$.LC20, 16(%esp)
	movl	%edi, 8(%esp)
	movl	$.LC23, 4(%esp)
	movl	$.LC26, (%esp)
	movl	$2, infoc_
	call	ssyr_
	movl	$6, 20(%esp)
	movl	$infoc_+8, 16(%esp)
	movl	$infoc_+12, 12(%esp)
	movl	%esi, 8(%esp)
	movl	$infoc_, 4(%esp)
	movl	%ebx, (%esp)
	call	chkxer_
	leal	-28(%ebp), %eax
	movl	%eax, 20(%esp)
	leal	-40(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	$1, 28(%esp)
	movl	$.LC20, 24(%esp)
	movl	$.LC21, 16(%esp)
	movl	%edi, 8(%esp)
	movl	$.LC21, 4(%esp)
	movl	$.LC26, (%esp)
	movl	$5, infoc_
	call	ssyr_
	movl	$6, 20(%esp)
	movl	$infoc_+8, 16(%esp)
	movl	$infoc_+12, 12(%esp)
	movl	%esi, 8(%esp)
	movl	$infoc_, 4(%esp)
	movl	%ebx, (%esp)
	call	chkxer_
	leal	-28(%ebp), %eax
	movl	%eax, 20(%esp)
	leal	-40(%ebp), %eax
	movl	$1, 28(%esp)
	movl	$.LC20, 24(%esp)
	movl	$.LC20, 16(%esp)
	movl	%eax, 12(%esp)
	movl	%edi, 8(%esp)
	movl	$.LC25, 4(%esp)
	movl	$.LC26, (%esp)
	movl	$7, infoc_
	call	ssyr_
	jmp	.L220
	.p2align 4,,7
	.p2align 3
.L212:
	leal	-28(%ebp), %edx
	leal	-40(%ebp), %eax
	leal	-32(%ebp), %edi
	movl	%edx, 20(%esp)
	movl	%eax, 12(%esp)
	movl	%eax, -736(%ebp)
	movl	%edx, -732(%ebp)
	movl	$1, 24(%esp)
	movl	$.LC20, 16(%esp)
	movl	%edi, 8(%esp)
	movl	$.LC21, 4(%esp)
	movl	$.LC22, (%esp)
	movl	$1, infoc_
	call	sspr_
	movl	$6, 20(%esp)
	movl	$infoc_+8, 16(%esp)
	movl	$infoc_+12, 12(%esp)
	movl	%esi, 8(%esp)
	movl	$infoc_, 4(%esp)
	movl	%ebx, (%esp)
	call	chkxer_
	movl	-732(%ebp), %edx
	movl	-736(%ebp), %eax
	movl	$1, 24(%esp)
	movl	$.LC20, 16(%esp)
	movl	%edx, 20(%esp)
	movl	%eax, 12(%esp)
	movl	%edi, 8(%esp)
	movl	$.LC23, 4(%esp)
	movl	$.LC26, (%esp)
	movl	$2, infoc_
	call	sspr_
	movl	$6, 20(%esp)
	movl	$infoc_+8, 16(%esp)
	movl	$infoc_+12, 12(%esp)
	movl	%esi, 8(%esp)
	movl	$infoc_, 4(%esp)
	movl	%ebx, (%esp)
	call	chkxer_
	movl	-732(%ebp), %edx
	movl	-736(%ebp), %eax
	movl	$1, 24(%esp)
	movl	$.LC21, 16(%esp)
	movl	%edx, 20(%esp)
	movl	%eax, 12(%esp)
	movl	%edi, 8(%esp)
	movl	$.LC21, 4(%esp)
	movl	$.LC26, (%esp)
	movl	$5, infoc_
	call	sspr_
	jmp	.L220
	.size	schke_, .-schke_
	.ident	"GCC: (Debian 4.4.5-8) 4.4.5"
	.section	.note.GNU-stack,"",@progbits
