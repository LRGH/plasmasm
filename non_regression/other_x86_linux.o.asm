	.file	"a30.c"
	.section       .text.startup,"ax",@progbits
	.globl	main
	.type	main, @function
main:
	subl      $4, %esp
	movl      12(%esp), %eax
	movl      (%eax), %eax
	movl      %eax, (%esp)
	call      toto
.L00000011.startup:
	addl      $4, %esp
	ret       
	.size	main, .-main
# ----------------------
	.data
	.local	init
	.type	init, @object
init:
	.long	1
	.long	value
	.long	func1
	.long	func2
	.zero	52
	.size	init, 68
# ----------------------
	.text
	.local	func1
	.type	func1, @function
func1:
	rep; ret       
	.size	func1, .-func1
# ----------------------
.L00000002:
	.p2align 4
# ----------------------
	.local	func2
	.type	func2, @function
func2:
	rep; ret       
	.size	func2, .-func2
# ----------------------
.L00000012:
	.p2align 4
# ----------------------
	.globl	toto
	.type	toto, @function
toto:
	subl      $8, %esp
	movl      $68, %eax
	movl      %edi, 4(%esp)
	movl      12(%esp), %edi
	movl      %esi, (%esp)
	movl      $init, %esi
	testl     $1, %edi
	jne       .L00000078
.L00000040:
	testl     $2, %edi
	jne       .L00000098
.L00000048:
	movl      %eax, %ecx
	xorl      %edx, %edx
	shrl      $2, %ecx
	testb     $2, %al
	rep movsl     
	je        .L00000060
.L00000055:
	movzwl    (%esi), %edx
	movw      %dx, (%edi)
	movl      $2, %edx
.L00000060:
	testb     $1, %al
	je        .L0000006B
.L00000064:
	movzbl    (%esi,%edx), %eax
	movb      %al, (%edi,%edx)
.L0000006B:
	movl      (%esp), %esi
	movl      4(%esp), %edi
	addl      $8, %esp
	ret       
.L00000076:
	.p2align 3
.L00000078:
	movzbl    init, %eax
	movl      $init+1, %esi
	movb      %al, (%edi)
	addl      $1, %edi
	movl      $67, %eax
	testl     $2, %edi
	je        .L00000048
.L00000096:
	.p2align 3
.L00000098:
	movzwl    (%esi), %edx
	subl      $2, %eax
	addl      $2, %esi
	movw      %dx, (%edi)
	addl      $2, %edi
	jmp       .L00000048
	.size	toto, .-toto
# ----------------------
	.comm	value,68,32
# ----------------------
	.ident	"GCC: (Ubuntu/Linaro 4.6.3-1ubuntu5) 4.6.3"
	.section	.note.GNU-stack,"",@progbits
