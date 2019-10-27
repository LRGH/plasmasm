	.file	"a30.c"
	.text
	.globl	main
	.type	main, @function
main:
	subl      $4, %esp
	movl      12(%esp), %eax
	movl      (%eax), %eax
	movl      %eax, (%esp)
	call      toto
.L08048311:
	addl      $4, %esp
	ret       
	.size	main, .-main
# ----------------------
.L08048315:
	.p2align 3
# ----------------------
	.local	func1
	.type	func1, @function
func1:
	rep; ret       
	.size	func1, .-func1
# ----------------------
.L080483D2:
	.p2align 4
# ----------------------
	.local	func2
	.type	func2, @function
func2:
	rep; ret       
	.size	func2, .-func2
# ----------------------
.L080483E2:
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
	jne       .L08048448
.L08048410:
	testl     $2, %edi
	jne       .L08048468
.L08048418:
	movl      %eax, %ecx
	xorl      %edx, %edx
	shrl      $2, %ecx
	testb     $2, %al
	rep movsl     
	je        .L08048430
.L08048425:
	movzwl    (%esi), %edx
	movw      %dx, (%edi)
	movl      $2, %edx
.L08048430:
	testb     $1, %al
	je        .L0804843B
.L08048434:
	movzbl    (%esi,%edx), %eax
	movb      %al, (%edi,%edx)
.L0804843B:
	movl      (%esp), %esi
	movl      4(%esp), %edi
	addl      $8, %esp
	ret       
.L08048446:
	.p2align 3
.L08048448:
	movzbl    init, %eax
	movl      $init+1, %esi
	movb      %al, (%edi)
	addl      $1, %edi
	movl      $67, %eax
	testl     $2, %edi
	je        .L08048418
.L08048466:
	.p2align 3
.L08048468:
	movzwl    (%esi), %edx
	subl      $2, %eax
	addl      $2, %esi
	movw      %dx, (%edi)
	addl      $2, %edi
	jmp       .L08048418
	.size	toto, .-toto
# ----------------------
	.data
.LD0804A028:
	.zero	24
# ----------------------
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
	.bss
	.align 32
	.globl	value
	.type	value, @object
value:
	.zero	68
	.size	value, 68
# ----------------------
	.ident	"GCC: (Ubuntu/Linaro 4.6.3-1ubuntu5) 4.6.3"
	.section	.note.GNU-stack,"",@progbits
