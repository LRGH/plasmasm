	.file	"b3.c"
	.data
	.globl	A
	.type	A, @object
A:
	.byte	2
	.size	A, 1
# ----------------------
	.bss
	.globl	B
	.type	B, @object
B:
	.zero	1
	.size	B, 1
# ----------------------
	.data
.LD00000001:
	.byte	0
# ----------------------
	.align 2
	.globl	C
	.type	C, @object
C:
	.value	3
	.size	C, 2
# ----------------------
	.bss
	.align 2
	.globl	D
	.type	D, @object
D:
	.zero	2
	.size	D, 2
# ----------------------
	.data
	.globl	E
	.type	E, @object
E:
	.long	5
	.size	E, 4
# ----------------------
	.bss
	.align 4
	.globl	F
	.type	F, @object
F:
	.zero	4
	.size	F, 4
# ----------------------
	.text
	.globl	main
	.type	main, @function
main:
	pushl     %ebp
	movl      %esp, %ebp
	movl      F, %eax
	movl      %eax, E
	movl      E, %eax
	movw      %ax, D
	movzwl    D, %eax
	movw      %ax, C
	movzwl    C, %eax
	movb      %al, B
	movzbl    B, %eax
	movb      %al, A
	movzbl    A, %eax
	movsbl    %al, %eax
	popl      %ebp
	ret       
	.size	main, .-main
# ----------------------
	.ident	"GCC: (Ubuntu/Linaro 4.6.3-1ubuntu5) 4.6.3"
	.section	.note.GNU-stack,"",@progbits
