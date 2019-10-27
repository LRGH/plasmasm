	.file	"a28.c"
	.text
	.globl	main
	.type	main, @function
main:
	pushl     %ebx
	movl      $51, %ebx
	subl      $8, %esp
	movl      16(%esp), %eax
	leal      -37(%eax), %edx
	cmpl      $89, %edx
	ja        .L0804831C
.L08048315:
	movsbl    CSWTCH.1-37(%eax), %ebx
.L0804831C:
	movl      %eax, 4(%esp)
	movl      %eax, (%esp)
	call      PyToken_TwoChars
.L08048328:
	addl      $8, %esp
	addl      %ebx, %eax
	popl      %ebx
	ret       
	.size	main, .-main
# ----------------------
.L0804832F:
	.p2align 3
# ----------------------
	.globl	PyToken_OneChar
	.type	PyToken_OneChar, @function
PyToken_OneChar:
	movl      4(%esp), %edx
	movl      $51, %eax
	leal      -37(%edx), %ecx
	cmpl      $89, %ecx
	ja        .L08048408
.L08048401:
	movsbl    CSWTCH.1-37(%edx), %eax
.L08048408:
	rep; ret       
	.size	PyToken_OneChar, .-PyToken_OneChar
# ----------------------
.L0804840A:
	.p2align 3
# ----------------------
	.globl	PyToken_TwoChars
	.type	PyToken_TwoChars, @function
PyToken_TwoChars:
	movl      4(%esp), %eax
	movl      8(%esp), %edx
	subl      $33, %eax
	cmpl      $91, %eax
	jbe       .L08048428
.L08048420:
	movl      $51, %eax
.L08048425:
	rep; ret       
.L08048427:
	.p2align 3
.L08048428:
	jmp       *.LC08048640(,%eax,4)
.L0804842F:
	.p2align 3
.L08048430:
	xorl      %eax, %eax
	cmpl      $61, %edx
	setne     %al
	leal      43(,%eax,8), %eax
	ret       
.L08048440:
	cmpl      $61, %edx
	movl      $51, %eax
	movl      $29, %edx
	cmove     %edx, %eax
	ret       
.L08048451:
	.p2align 3
.L08048458:
	cmpl      $61, %edx
	movl      $51, %eax
	movl      $41, %edx
	cmove     %edx, %eax
	ret       
.L08048469:
	.p2align 4
.L08048470:
	xorl      %eax, %eax
	cmpl      $61, %edx
	setne     %al
	leal      42(%eax,%eax,8), %eax
	ret       
.L0804847D:
	.p2align 3
.L08048480:
	cmpl      $42, %edx
	movl      $36, %eax
	je        .L08048425
.L0804848A:
	cmpl      $61, %edx
	movb      $51, %al
	movl      $39, %edx
	cmove     %edx, %eax
	ret       
.L08048498:
	cmpl      $61, %edx
	movl      $51, %eax
	movl      $37, %edx
	cmove     %edx, %eax
	ret       
.L080484A9:
	.p2align 4
.L080484B0:
	cmpl      $61, %edx
	movl      $51, %eax
	movl      $38, %edx
	cmove     %edx, %eax
	ret       
.L080484C1:
	.p2align 3
.L080484C8:
	cmpl      $47, %edx
	movl      $48, %eax
	je        .L08048425
.L080484D6:
	cmpl      $61, %edx
	movb      $51, %al
	movl      $40, %edx
	cmove     %edx, %eax
	ret       
.L080484E4:
	.p2align 3
.L080484E8:
	cmpl      $61, %edx
	movl      $51, %eax
	movl      $28, %edx
	cmove     %edx, %eax
	ret       
.L080484F9:
	.p2align 4
.L08048500:
	cmpl      $61, %edx
	movl      $31, %eax
	je        .L08048425
.L0804850E:
	cmpl      $62, %edx
	movb      $51, %al
	movl      $35, %edx
	cmove     %edx, %eax
	ret       
.L0804851C:
	.p2align 3
.L08048520:
	cmpl      $61, %edx
	movl      $51, %eax
	movl      $44, %edx
	cmove     %edx, %eax
	ret       
	.size	PyToken_TwoChars, .-PyToken_TwoChars
# ----------------------
	.section       .rodata
.LC08048628:
	.zero	24
.LC08048640:
	.long	.L08048440
	.long	.L08048420
	.long	.L08048420
	.long	.L08048420
	.long	.L08048458
	.long	.L08048470
	.long	.L08048420
	.long	.L08048420
	.long	.L08048420
	.long	.L08048480
	.long	.L08048498
	.long	.L08048420
	.long	.L080484B0
	.long	.L08048420
	.long	.L080484C8
	.long	.L08048420
	.long	.L08048420
	.long	.L08048420
	.long	.L08048420
	.long	.L08048420
	.long	.L08048420
	.long	.L08048420
	.long	.L08048420
	.long	.L08048420
	.long	.L08048420
	.long	.L08048420
	.long	.L08048420
	.long	.L08048420
	.long	.L080484E8
	.long	.L08048500
	.long	.L08048420
	.long	.L08048420
	.long	.L08048420
	.long	.L08048420
	.long	.L08048420
	.long	.L08048420
	.long	.L08048420
	.long	.L08048420
	.long	.L08048420
	.long	.L08048420
	.long	.L08048420
	.long	.L08048420
	.long	.L08048420
	.long	.L08048420
	.long	.L08048420
	.long	.L08048420
	.long	.L08048420
	.long	.L08048420
	.long	.L08048420
	.long	.L08048420
	.long	.L08048420
	.long	.L08048420
	.long	.L08048420
	.long	.L08048420
	.long	.L08048420
	.long	.L08048420
	.long	.L08048420
	.long	.L08048420
	.long	.L08048420
	.long	.L08048420
	.long	.L08048420
	.long	.L08048520
	.long	.L08048420
	.long	.L08048420
	.long	.L08048420
	.long	.L08048420
	.long	.L08048420
	.long	.L08048420
	.long	.L08048420
	.long	.L08048420
	.long	.L08048420
	.long	.L08048420
	.long	.L08048420
	.long	.L08048420
	.long	.L08048420
	.long	.L08048420
	.long	.L08048420
	.long	.L08048420
	.long	.L08048420
	.long	.L08048420
	.long	.L08048420
	.long	.L08048420
	.long	.L08048420
	.long	.L08048420
	.long	.L08048420
	.long	.L08048420
	.long	.L08048420
	.long	.L08048420
	.long	.L08048420
	.long	.L08048420
	.long	.L08048420
	.long	.L08048430
	.long	0
	.long	0
	.long	0
	.long	0
# ----------------------
	.local	CSWTCH.1
	.type	CSWTCH.1, @object
CSWTCH.1:
	.ascii	"\03033333333\02733333333333\01333\026\0253233333333333333333333333333333!3\03133333333333333333333333333\0323\033 "
	.size	CSWTCH.1, 90
# ----------------------
	.ident	"GCC: (Ubuntu/Linaro 4.6.3-1ubuntu5) 4.6.3"
	.section	.note.GNU-stack,"",@progbits
