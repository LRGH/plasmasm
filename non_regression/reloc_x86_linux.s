	.file	"test_relocs.s"
	.text
	.type	func1, @function
func1:
	.cfi_startproc
	call	gz_open
	ret
	.cfi_endproc
	.size	func1, .-func1
	.type	func2, @function
func2:
	call	.L47
.L47:
	popl	%ebx
	addl	$_GLOBAL_OFFSET_TABLE_+[.-.L47], %ebx
	call	malloc@PLT
	/* R_386_GOTOFF relocations */
	leal	toto@GOTOFF(%ebx), %edx
	leal	value@GOTOFF(%ebx), %edx
	leal	func1@GOTOFF(%ebx), %edx
	leal	func2@GOTOFF(%ebx), %edx
	leal	.LC1@GOTOFF(%ebx), %edx
	leal	.LC2@GOTOFF(%ebx), %edx
	leal	.L22@GOTOFF(%ebx), %edx
	leal	.L9@GOTOFF(%ebx), %edx
	leal	lenfix.1@GOTOFF(%ebx), %edx
	leal	init@GOTOFF(%ebx), %edx
	leal	init@GOTOFF+4(%ebx), %edx
	ret
	.size	func2, .-func2
	.globl	toto
	.type	toto, @function
toto:
	subl	$8, %esp
	testl	$1, %edi
	jne	.L9
.L9:
	/* R_386_32 relocations */
	movl	$toto, %esi
	movl	$value, %esi
	movl	$func1, %esi
	movl	$func2, %esi
	movl	$.LC1, %esi
	movl	$.LC2, %esi
	movl	$.L22, %esi
	movl	$.L9, %esi
	movl	$lenfix.1, %esi
	movl	$init, %esi
	movl	$init+4, %esi
	movl	(%esp), %esi
	movl	4(%esp), %edi
	addl	$8, %esp
	ret
	.size	toto, .-toto
	.globl	main
	.type	main, @function
main:
	subl	$4, %esp
	movl	12(%esp), %eax
	/* R_386_PC32 relocations */
	call	toto
	call	value
	call	func1	/* no relocation, relative call */
	call	func2	/* no relocation, relative call */
	call	test1
	call	test0+1
	call	.L9	/* no relocation, relative call */
	call	lenfix.1
	call	init
	.section	.rodata
	.align 4
	.size	.L22,8
.L22:
	.long	.L9@GOTOFF
	.long	.L10@GOTOFF
	.text
.L10:
	addl	$4, %esp
	ret
	.size	main, .-main
	.comm	value,68,32
	.data
	.align 32
	.type	init, @object
	.size	init, 88
init:
	movl	12(%esp), %eax
	movl	12(%esp), %eax
	.long	toto
	.long	value
	.long	func1
	.long	func2
	.long	.LC1
	.long	.L22
	.long	.L9
	.long	lenfix.1
	.long	init
	.long	init+4
	.long	toto@GOTOFF
	.long	value@GOTOFF
	.long	func1@GOTOFF
	.long	func2@GOTOFF
	.long	.LC1@GOTOFF
	.long	.L22@GOTOFF
	.long	.L9@GOTOFF
	.long	lenfix.1@GOTOFF
	.long	init@GOTOFF
	.long	init@GOTOFF+4
	.section	.rodata.str1.1,"aMS",@progbits,1
	.size	.LC1,4
.LC1:
	.string	"one"
	.size	.LC2,4
.LC2:
	.string	"two"
	.section	.text.test
test0:
	ret
	.size	test0, .-test0
	.type	test1, @function
test1:
	ret
	.size	test1, .-test1
	.section	.rodata
	.type	lenfix.1,@object
	.size	lenfix.1,2
lenfix.1:
	.byte	96
	.byte	0
	.ident	"GCC: (Ubuntu/Linaro 4.6.3-1ubuntu5) 4.6.3"
	.section	.note.GNU-stack,"",@progbits
