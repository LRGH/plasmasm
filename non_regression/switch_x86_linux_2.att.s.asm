	.file	"a28.c"
	.text
	.p2align 4,,15
# ----------------------
	.globl	PyToken_OneChar
	.type	PyToken_OneChar, @function
PyToken_OneChar:
	.cfi_startproc
	movl      4(%esp), %edx
	movl      $51, %eax
	leal      -37(%edx), %ecx
	cmpl      $89, %ecx
	ja        .L2
	movsbl    CSWTCH.1-37(%edx), %eax
.L2:
	rep; ret       
	.cfi_endproc
	.size	PyToken_OneChar, .-PyToken_OneChar
# ----------------------
	.p2align 4,,15
# ----------------------
	.globl	PyToken_TwoChars
	.type	PyToken_TwoChars, @function
PyToken_TwoChars:
	.cfi_startproc
	movl      4(%esp), %eax
	movl      8(%esp), %edx
	subl      $33, %eax
	cmpl      $91, %eax
	jbe       .L45
.L33:
	movl      $51, %eax
.L6:
	rep; ret       
	.p2align 4,,7
	.p2align 3
.L45:
	jmp       *.L18(,%eax,4)
	.p2align 4,,7
	.p2align 3
.L17:
	xorl      %eax, %eax
	cmpl      $61, %edx
	setne     %al
	leal      43(,%eax,8), %eax
	ret       
	.p2align 4,,7
	.p2align 3
.L7:
	cmpl      $61, %edx
	movl      $51, %eax
	movl      $29, %edx
	cmove     %edx, %eax
	ret       
	.p2align 4,,7
	.p2align 3
.L8:
	cmpl      $61, %edx
	movl      $51, %eax
	movl      $41, %edx
	cmove     %edx, %eax
	ret       
	.p2align 4,,7
	.p2align 3
.L9:
	xorl      %eax, %eax
	cmpl      $61, %edx
	setne     %al
	leal      42(%eax,%eax,8), %eax
	ret       
	.p2align 4,,7
	.p2align 3
.L10:
	cmpl      $42, %edx
	movl      $36, %eax
	je        .L6
	cmpl      $61, %edx
	movb      $51, %al
	movl      $39, %edx
	cmove     %edx, %eax
	ret       
	.p2align 4,,7
	.p2align 3
.L11:
	cmpl      $61, %edx
	movl      $51, %eax
	movl      $37, %edx
	cmove     %edx, %eax
	ret       
	.p2align 4,,7
	.p2align 3
.L12:
	cmpl      $61, %edx
	movl      $51, %eax
	movl      $38, %edx
	cmove     %edx, %eax
	ret       
	.p2align 4,,7
	.p2align 3
.L13:
	cmpl      $47, %edx
	movl      $48, %eax
	je        .L6
	cmpl      $61, %edx
	movb      $51, %al
	movl      $40, %edx
	cmove     %edx, %eax
	ret       
	.p2align 4,,7
	.p2align 3
.L14:
	cmpl      $61, %edx
	movl      $51, %eax
	movl      $28, %edx
	cmove     %edx, %eax
	ret       
	.p2align 4,,7
	.p2align 3
.L15:
	cmpl      $61, %edx
	movl      $31, %eax
	je        .L6
	cmpl      $62, %edx
	movb      $51, %al
	movl      $35, %edx
	cmove     %edx, %eax
	ret       
	.p2align 4,,7
	.p2align 3
.L16:
	cmpl      $61, %edx
	movl      $51, %eax
	movl      $44, %edx
	cmove     %edx, %eax
	ret       
	.cfi_endproc
	.size	PyToken_TwoChars, .-PyToken_TwoChars
# ----------------------
	.section       .rodata
	.align 4
.L18:
	.long	.L7
	.long	.L33
	.long	.L33
	.long	.L33
	.long	.L8
	.long	.L9
	.long	.L33
	.long	.L33
	.long	.L33
	.long	.L10
	.long	.L11
	.long	.L33
	.long	.L12
	.long	.L33
	.long	.L13
	.long	.L33
	.long	.L33
	.long	.L33
	.long	.L33
	.long	.L33
	.long	.L33
	.long	.L33
	.long	.L33
	.long	.L33
	.long	.L33
	.long	.L33
	.long	.L33
	.long	.L33
	.long	.L14
	.long	.L15
	.long	.L33
	.long	.L33
	.long	.L33
	.long	.L33
	.long	.L33
	.long	.L33
	.long	.L33
	.long	.L33
	.long	.L33
	.long	.L33
	.long	.L33
	.long	.L33
	.long	.L33
	.long	.L33
	.long	.L33
	.long	.L33
	.long	.L33
	.long	.L33
	.long	.L33
	.long	.L33
	.long	.L33
	.long	.L33
	.long	.L33
	.long	.L33
	.long	.L33
	.long	.L33
	.long	.L33
	.long	.L33
	.long	.L33
	.long	.L33
	.long	.L33
	.long	.L16
	.long	.L33
	.long	.L33
	.long	.L33
	.long	.L33
	.long	.L33
	.long	.L33
	.long	.L33
	.long	.L33
	.long	.L33
	.long	.L33
	.long	.L33
	.long	.L33
	.long	.L33
	.long	.L33
	.long	.L33
	.long	.L33
	.long	.L33
	.long	.L33
	.long	.L33
	.long	.L33
	.long	.L33
	.long	.L33
	.long	.L33
	.long	.L33
	.long	.L33
	.long	.L33
	.long	.L33
	.long	.L33
	.long	.L33
	.long	.L17
# ----------------------
	.section       .text.startup,"ax",@progbits
	.p2align 4,,15
# ----------------------
	.globl	main
	.type	main, @function
main:
	.cfi_startproc
	pushl     %ebx
	movl      $51, %ebx
	subl      $8, %esp
	movl      16(%esp), %eax
	leal      -37(%eax), %edx
	cmpl      $89, %edx
	ja        .L47
	movsbl    CSWTCH.1-37(%eax), %ebx
.L47:
	movl      %eax, 4(%esp)
	movl      %eax, (%esp)
	call      PyToken_TwoChars
	addl      $8, %esp
	addl      %ebx, %eax
	popl      %ebx
	ret       
	.cfi_endproc
	.size	main, .-main
# ----------------------
	.section       .rodata
	.align 32
	.local	CSWTCH.1
	.type	CSWTCH.1, @object
CSWTCH.1:
	.byte	24
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	23
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	11
	.byte	51
	.byte	51
	.byte	22
	.byte	21
	.byte	51
	.byte	50
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	33
	.byte	51
	.byte	25
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	26
	.byte	51
	.byte	27
	.byte	32
	.size	CSWTCH.1, 90
# ----------------------
	.ident	"GCC: (Ubuntu/Linaro 4.6.3-1ubuntu5) 4.6.3"
	.section	.note.GNU-stack,"",@progbits
