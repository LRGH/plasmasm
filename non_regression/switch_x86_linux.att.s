	.file	"a28.c"
	.text
	.globl	PyToken_OneChar
	.type	PyToken_OneChar, @function
PyToken_OneChar:
.LFB0:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	movl	8(%ebp), %eax
	subl	$37, %eax
	cmpl	$89, %eax
	ja	.L2
	movl	.L14(,%eax,4), %eax
	jmp	*%eax
	.section	.rodata
	.align 4
	.align 4
.L14:
	.long	.L3
	.long	.L2
	.long	.L2
	.long	.L2
	.long	.L2
	.long	.L2
	.long	.L2
	.long	.L2
	.long	.L2
	.long	.L4
	.long	.L2
	.long	.L2
	.long	.L2
	.long	.L2
	.long	.L2
	.long	.L2
	.long	.L2
	.long	.L2
	.long	.L2
	.long	.L2
	.long	.L2
	.long	.L5
	.long	.L2
	.long	.L2
	.long	.L6
	.long	.L7
	.long	.L2
	.long	.L8
	.long	.L2
	.long	.L2
	.long	.L2
	.long	.L2
	.long	.L2
	.long	.L2
	.long	.L2
	.long	.L2
	.long	.L2
	.long	.L2
	.long	.L2
	.long	.L2
	.long	.L2
	.long	.L2
	.long	.L2
	.long	.L2
	.long	.L2
	.long	.L2
	.long	.L2
	.long	.L2
	.long	.L2
	.long	.L2
	.long	.L2
	.long	.L2
	.long	.L2
	.long	.L2
	.long	.L2
	.long	.L2
	.long	.L2
	.long	.L9
	.long	.L2
	.long	.L10
	.long	.L2
	.long	.L2
	.long	.L2
	.long	.L2
	.long	.L2
	.long	.L2
	.long	.L2
	.long	.L2
	.long	.L2
	.long	.L2
	.long	.L2
	.long	.L2
	.long	.L2
	.long	.L2
	.long	.L2
	.long	.L2
	.long	.L2
	.long	.L2
	.long	.L2
	.long	.L2
	.long	.L2
	.long	.L2
	.long	.L2
	.long	.L2
	.long	.L2
	.long	.L2
	.long	.L11
	.long	.L2
	.long	.L12
	.long	.L13
	.text
.L5:
	movl	$11, %eax
	jmp	.L15
.L7:
	movl	$21, %eax
	jmp	.L15
.L6:
	movl	$22, %eax
	jmp	.L15
.L4:
	movl	$23, %eax
	jmp	.L15
.L3:
	movl	$24, %eax
	jmp	.L15
.L10:
	movl	$25, %eax
	jmp	.L15
.L11:
	movl	$26, %eax
	jmp	.L15
.L12:
	movl	$27, %eax
	jmp	.L15
.L9:
	movl	$33, %eax
	jmp	.L15
.L13:
	movl	$32, %eax
	jmp	.L15
.L8:
	movl	$50, %eax
	jmp	.L15
.L2:
	movl	$51, %eax
.L15:
	popl	%ebp
	.cfi_def_cfa 4, 4
	.cfi_restore 5
	ret
	.cfi_endproc
.LFE0:
	.size	PyToken_OneChar, .-PyToken_OneChar
	.globl	PyToken_TwoChars
	.type	PyToken_TwoChars, @function
PyToken_TwoChars:
.LFB1:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	movl	8(%ebp), %eax
	subl	$33, %eax
	cmpl	$91, %eax
	ja	.L17
	movl	.L29(,%eax,4), %eax
	jmp	*%eax
	.section	.rodata
	.align 4
	.align 4
.L29:
	.long	.L18
	.long	.L17
	.long	.L17
	.long	.L17
	.long	.L19
	.long	.L20
	.long	.L17
	.long	.L17
	.long	.L17
	.long	.L21
	.long	.L22
	.long	.L17
	.long	.L23
	.long	.L17
	.long	.L24
	.long	.L17
	.long	.L17
	.long	.L17
	.long	.L17
	.long	.L17
	.long	.L17
	.long	.L17
	.long	.L17
	.long	.L17
	.long	.L17
	.long	.L17
	.long	.L17
	.long	.L17
	.long	.L25
	.long	.L26
	.long	.L17
	.long	.L17
	.long	.L17
	.long	.L17
	.long	.L17
	.long	.L17
	.long	.L17
	.long	.L17
	.long	.L17
	.long	.L17
	.long	.L17
	.long	.L17
	.long	.L17
	.long	.L17
	.long	.L17
	.long	.L17
	.long	.L17
	.long	.L17
	.long	.L17
	.long	.L17
	.long	.L17
	.long	.L17
	.long	.L17
	.long	.L17
	.long	.L17
	.long	.L17
	.long	.L17
	.long	.L17
	.long	.L17
	.long	.L17
	.long	.L17
	.long	.L27
	.long	.L17
	.long	.L17
	.long	.L17
	.long	.L17
	.long	.L17
	.long	.L17
	.long	.L17
	.long	.L17
	.long	.L17
	.long	.L17
	.long	.L17
	.long	.L17
	.long	.L17
	.long	.L17
	.long	.L17
	.long	.L17
	.long	.L17
	.long	.L17
	.long	.L17
	.long	.L17
	.long	.L17
	.long	.L17
	.long	.L17
	.long	.L17
	.long	.L17
	.long	.L17
	.long	.L17
	.long	.L17
	.long	.L17
	.long	.L28
	.text
.L25:
	movl	12(%ebp), %eax
	cmpl	$61, %eax
	jne	.L56
.L31:
	movl	$28, %eax
	jmp	.L32
.L56:
	jmp	.L17
.L18:
	movl	12(%ebp), %eax
	cmpl	$61, %eax
	jne	.L57
.L34:
	movl	$29, %eax
	jmp	.L32
.L57:
	jmp	.L17
.L26:
	movl	12(%ebp), %eax
	cmpl	$61, %eax
	je	.L36
	cmpl	$62, %eax
	je	.L37
	jmp	.L58
.L36:
	movl	$31, %eax
	jmp	.L32
.L37:
	movl	$35, %eax
	jmp	.L32
.L58:
	jmp	.L17
.L22:
	movl	12(%ebp), %eax
	cmpl	$61, %eax
	jne	.L59
.L39:
	movl	$37, %eax
	jmp	.L32
.L59:
	jmp	.L17
.L23:
	movl	12(%ebp), %eax
	cmpl	$61, %eax
	jne	.L60
.L41:
	movl	$38, %eax
	jmp	.L32
.L60:
	jmp	.L17
.L21:
	movl	12(%ebp), %eax
	cmpl	$42, %eax
	je	.L43
	cmpl	$61, %eax
	je	.L44
	jmp	.L61
.L43:
	movl	$36, %eax
	jmp	.L32
.L44:
	movl	$39, %eax
	jmp	.L32
.L61:
	jmp	.L17
.L24:
	movl	12(%ebp), %eax
	cmpl	$47, %eax
	je	.L46
	cmpl	$61, %eax
	je	.L47
	jmp	.L62
.L46:
	movl	$48, %eax
	jmp	.L32
.L47:
	movl	$40, %eax
	jmp	.L32
.L62:
	jmp	.L17
.L28:
	movl	12(%ebp), %eax
	cmpl	$61, %eax
	jne	.L63
.L49:
	movl	$43, %eax
	jmp	.L32
.L63:
	jmp	.L17
.L19:
	movl	12(%ebp), %eax
	cmpl	$61, %eax
	jne	.L64
.L51:
	movl	$41, %eax
	jmp	.L32
.L64:
	jmp	.L17
.L20:
	movl	12(%ebp), %eax
	cmpl	$61, %eax
	jne	.L65
.L53:
	movl	$42, %eax
	jmp	.L32
.L65:
	jmp	.L17
.L27:
	movl	12(%ebp), %eax
	cmpl	$61, %eax
	jne	.L66
.L55:
	movl	$44, %eax
	jmp	.L32
.L66:
	nop
.L17:
	movl	$51, %eax
.L32:
	popl	%ebp
	.cfi_def_cfa 4, 4
	.cfi_restore 5
	ret
	.cfi_endproc
.LFE1:
	.size	PyToken_TwoChars, .-PyToken_TwoChars
	.globl	main
	.type	main, @function
main:
.LFB2:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%ebx
	subl	$8, %esp
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	.cfi_offset 3, -12
	call	PyToken_OneChar
	movl	%eax, %ebx
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	PyToken_TwoChars
	addl	%ebx, %eax
	addl	$8, %esp
	popl	%ebx
	.cfi_restore 3
	popl	%ebp
	.cfi_def_cfa 4, 4
	.cfi_restore 5
	ret
	.cfi_endproc
.LFE2:
	.size	main, .-main
	.ident	"GCC: (Ubuntu/Linaro 4.6.3-1ubuntu5) 4.6.3"
	.section	.note.GNU-stack,"",@progbits
