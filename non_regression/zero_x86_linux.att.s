	.file	"b3.c"
	.globl	A
	.data
	.type	A, @object
	.size	A, 1
A:
	.byte	2
	.globl	B
	.bss
	.type	B, @object
	.size	B, 1
B:
	.zero	1
	.globl	C
	.data
	.align 2
	.type	C, @object
	.size	C, 2
C:
	.value	3
	.globl	D
	.bss
	.align 2
	.type	D, @object
	.size	D, 2
D:
	.zero	2
	.globl	E
	.data
	.align 4
	.type	E, @object
	.size	E, 4
E:
	.long	5
	.globl	F
	.bss
	.align 4
	.type	F, @object
	.size	F, 4
F:
	.zero	4
	.text
	.globl	main
	.type	main, @function
main:
.LFB0:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	movl	F, %eax
	movl	%eax, E
	movl	E, %eax
	movw	%ax, D
	movzwl	D, %eax
	movw	%ax, C
	movzwl	C, %eax
	movb	%al, B
	movzbl	B, %eax
	movb	%al, A
	movzbl	A, %eax
	movsbl	%al, %eax
	popl	%ebp
	.cfi_def_cfa 4, 4
	.cfi_restore 5
	ret
	.cfi_endproc
.LFE0:
	.size	main, .-main
	.ident	"GCC: (Ubuntu/Linaro 4.6.3-1ubuntu5) 4.6.3"
	.section	.note.GNU-stack,"",@progbits
