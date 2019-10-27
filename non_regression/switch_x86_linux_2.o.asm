	.file	"a28.c"
	.section       .text.startup,"ax",@progbits
	.globl	main
	.type	main, @function
main:
	pushl     %ebx
	movl      $51, %ebx
	subl      $8, %esp
	movl      16(%esp), %eax
	leal      -37(%eax), %edx
	cmpl      $89, %edx
	ja        .L0000001C.startup
.L00000015.startup:
	movsbl    CSWTCH.1-37(%eax), %ebx
.L0000001C.startup:
	movl      %eax, 4(%esp)
	movl      %eax, (%esp)
	call      PyToken_TwoChars
.L00000028.startup:
	addl      $8, %esp
	addl      %ebx, %eax
	popl      %ebx
	ret       
	.size	main, .-main
# ----------------------
	.text
	.globl	PyToken_OneChar
	.type	PyToken_OneChar, @function
PyToken_OneChar:
	movl      4(%esp), %edx
	movl      $51, %eax
	leal      -37(%edx), %ecx
	cmpl      $89, %ecx
	ja        .L00000018
.L00000011:
	movsbl    CSWTCH.1-37(%edx), %eax
.L00000018:
	rep; ret       
	.size	PyToken_OneChar, .-PyToken_OneChar
# ----------------------
.L0000001A:
	.p2align 3
# ----------------------
	.globl	PyToken_TwoChars
	.type	PyToken_TwoChars, @function
PyToken_TwoChars:
	movl      4(%esp), %eax
	movl      8(%esp), %edx
	subl      $33, %eax
	cmpl      $91, %eax
	jbe       .L00000038
.L00000030:
	movl      $51, %eax
.L00000035:
	rep; ret       
.L00000037:
	.p2align 3
.L00000038:
	jmp       *.LC00000000(,%eax,4)
.L0000003F:
	.p2align 3
.L00000040:
	xorl      %eax, %eax
	cmpl      $61, %edx
	setne     %al
	leal      43(,%eax,8), %eax
	ret       
.L00000050:
	cmpl      $61, %edx
	movl      $51, %eax
	movl      $29, %edx
	cmove     %edx, %eax
	ret       
.L00000061:
	.p2align 3
.L00000068:
	cmpl      $61, %edx
	movl      $51, %eax
	movl      $41, %edx
	cmove     %edx, %eax
	ret       
.L00000079:
	.p2align 4
.L00000080:
	xorl      %eax, %eax
	cmpl      $61, %edx
	setne     %al
	leal      42(%eax,%eax,8), %eax
	ret       
.L0000008D:
	.p2align 3
.L00000090:
	cmpl      $42, %edx
	movl      $36, %eax
	je        .L00000035
.L0000009A:
	cmpl      $61, %edx
	movb      $51, %al
	movl      $39, %edx
	cmove     %edx, %eax
	ret       
.L000000A8:
	cmpl      $61, %edx
	movl      $51, %eax
	movl      $37, %edx
	cmove     %edx, %eax
	ret       
.L000000B9:
	.p2align 4
.L000000C0:
	cmpl      $61, %edx
	movl      $51, %eax
	movl      $38, %edx
	cmove     %edx, %eax
	ret       
.L000000D1:
	.p2align 3
.L000000D8:
	cmpl      $47, %edx
	movl      $48, %eax
	je        .L00000035
.L000000E6:
	cmpl      $61, %edx
	movb      $51, %al
	movl      $40, %edx
	cmove     %edx, %eax
	ret       
.L000000F4:
	.p2align 3
.L000000F8:
	cmpl      $61, %edx
	movl      $51, %eax
	movl      $28, %edx
	cmove     %edx, %eax
	ret       
.L00000109:
	.p2align 4
.L00000110:
	cmpl      $61, %edx
	movl      $31, %eax
	je        .L00000035
.L0000011E:
	cmpl      $62, %edx
	movb      $51, %al
	movl      $35, %edx
	cmove     %edx, %eax
	ret       
.L0000012C:
	.p2align 3
.L00000130:
	cmpl      $61, %edx
	movl      $51, %eax
	movl      $44, %edx
	cmove     %edx, %eax
	ret       
	.size	PyToken_TwoChars, .-PyToken_TwoChars
# ----------------------
	.section       .rodata
	.align 32
.LC00000000:
	.long	.L00000050
	.long	.L00000030
	.long	.L00000030
	.long	.L00000030
	.long	.L00000068
	.long	.L00000080
	.long	.L00000030
	.long	.L00000030
	.long	.L00000030
	.long	.L00000090
	.long	.L000000A8
	.long	.L00000030
	.long	.L000000C0
	.long	.L00000030
	.long	.L000000D8
	.long	.L00000030
	.long	.L00000030
	.long	.L00000030
	.long	.L00000030
	.long	.L00000030
	.long	.L00000030
	.long	.L00000030
	.long	.L00000030
	.long	.L00000030
	.long	.L00000030
	.long	.L00000030
	.long	.L00000030
	.long	.L00000030
	.long	.L000000F8
	.long	.L00000110
	.long	.L00000030
	.long	.L00000030
	.long	.L00000030
	.long	.L00000030
	.long	.L00000030
	.long	.L00000030
	.long	.L00000030
	.long	.L00000030
	.long	.L00000030
	.long	.L00000030
	.long	.L00000030
	.long	.L00000030
	.long	.L00000030
	.long	.L00000030
	.long	.L00000030
	.long	.L00000030
	.long	.L00000030
	.long	.L00000030
	.long	.L00000030
	.long	.L00000030
	.long	.L00000030
	.long	.L00000030
	.long	.L00000030
	.long	.L00000030
	.long	.L00000030
	.long	.L00000030
	.long	.L00000030
	.long	.L00000030
	.long	.L00000030
	.long	.L00000030
	.long	.L00000030
	.long	.L00000130
	.long	.L00000030
	.long	.L00000030
	.long	.L00000030
	.long	.L00000030
	.long	.L00000030
	.long	.L00000030
	.long	.L00000030
	.long	.L00000030
	.long	.L00000030
	.long	.L00000030
	.long	.L00000030
	.long	.L00000030
	.long	.L00000030
	.long	.L00000030
	.long	.L00000030
	.long	.L00000030
	.long	.L00000030
	.long	.L00000030
	.long	.L00000030
	.long	.L00000030
	.long	.L00000030
	.long	.L00000030
	.long	.L00000030
	.long	.L00000030
	.long	.L00000030
	.long	.L00000030
	.long	.L00000030
	.long	.L00000030
	.long	.L00000030
	.long	.L00000040
	.zero	16
# ----------------------
	.local	CSWTCH.1
	.type	CSWTCH.1, @object
CSWTCH.1:
	.ascii	"\03033333333\02733333333333\01333\026\0253233333333333333333333333333333!3\03133333333333333333333333333\0323\033 "
	.size	CSWTCH.1, 90
# ----------------------
	.ident	"GCC: (Ubuntu/Linaro 4.6.3-1ubuntu5) 4.6.3"
	.section	.note.GNU-stack,"",@progbits
