	.file	"a30.c"
	.text
	.p2align 4,,15
# ----------------------
	.local	func1
	.type	func1, @function
func1:
	.cfi_startproc
	rep; ret       
	.cfi_endproc
	.size	func1, .-func1
# ----------------------
	.p2align 4,,15
# ----------------------
	.local	func2
	.type	func2, @function
func2:
	.cfi_startproc
	rep; ret       
	.cfi_endproc
	.size	func2, .-func2
# ----------------------
	.p2align 4,,15
# ----------------------
	.globl	toto
	.type	toto, @function
toto:
	.cfi_startproc
	subl      $8, %esp
	movl      $68, %eax
	movl      %edi, 4(%esp)
	movl      12(%esp), %edi
	movl      %esi, (%esp)
	movl      $init, %esi
	testl     $1, %edi
	jne       .L9
	testl     $2, %edi
	jne       .L10
.L5:
	movl      %eax, %ecx
	xorl      %edx, %edx
	shrl      $2, %ecx
	testb     $2, %al
	rep movsl     
	je        .L6
	movzwl    (%esi), %edx
	movw      %dx, (%edi)
	movl      $2, %edx
.L6:
	testb     $1, %al
	je        .L3
	movzbl    (%esi,%edx), %eax
	movb      %al, (%edi,%edx)
.L3:
	movl      (%esp), %esi
	movl      4(%esp), %edi
	addl      $8, %esp
	ret       
	.p2align 4,,7
	.p2align 3
.L9:
	movzbl    init, %eax
	movl      $init+1, %esi
	movb      %al, (%edi)
	addl      $1, %edi
	movl      $67, %eax
	testl     $2, %edi
	je        .L5
	.p2align 4,,7
	.p2align 3
.L10:
	movzwl    (%esi), %edx
	subl      $2, %eax
	addl      $2, %esi
	movw      %dx, (%edi)
	addl      $2, %edi
	jmp       .L5
	.cfi_endproc
	.size	toto, .-toto
# ----------------------
	.section       .text.startup,"ax",@progbits
	.p2align 4,,15
# ----------------------
	.globl	main
	.type	main, @function
main:
	.cfi_startproc
	subl      $4, %esp
	movl      12(%esp), %eax
	movl      (%eax), %eax
	movl      %eax, (%esp)
	call      toto
	addl      $4, %esp
	ret       
	.cfi_endproc
	.size	main, .-main
# ----------------------
	.comm	value,68,32
# ----------------------
	.data
	.align 32
	.local	init
	.type	init, @object
init:
	.long	1
	.long	value
	.long	func1
	.long	func2
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.size	init, 68
# ----------------------
	.ident	"GCC: (Ubuntu/Linaro 4.6.3-1ubuntu5) 4.6.3"
	.section	.note.GNU-stack,"",@progbits
