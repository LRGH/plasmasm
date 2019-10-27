	.file	"a28.c"
	.text
	.globl	PyToken_OneChar
	.type	PyToken_OneChar, @function
PyToken_OneChar:
	pushq     %rbp
	movq      %rsp, %rbp
	movl      %edi, -4(%rbp)
	movl      -4(%rbp), %eax
	subl      $37, %eax
	cmpl      $89, %eax
	ja        .L0040056F
.L004004FF:
	movl      %eax, %eax
	leaq      0(,%rax,4), %rdx
	leaq      .LC00400774(%rip), %rax
	movl      (%rdx,%rax), %eax
	movslq    %eax, %rdx
	leaq      .LC00400774(%rip), %rax
	addq      %rdx, %rax
	jmp       *%rax
.L00400522:
	movl      $11, %eax
	jmp       .L00400574
.L00400529:
	movl      $21, %eax
	jmp       .L00400574
.L00400530:
	movl      $22, %eax
	jmp       .L00400574
.L00400537:
	movl      $23, %eax
	jmp       .L00400574
.L0040053E:
	movl      $24, %eax
	jmp       .L00400574
.L00400545:
	movl      $25, %eax
	jmp       .L00400574
.L0040054C:
	movl      $26, %eax
	jmp       .L00400574
.L00400553:
	movl      $27, %eax
	jmp       .L00400574
.L0040055A:
	movl      $33, %eax
	jmp       .L00400574
.L00400561:
	movl      $32, %eax
	jmp       .L00400574
.L00400568:
	movl      $50, %eax
	jmp       .L00400574
.L0040056F:
	movl      $51, %eax
.L00400574:
	popq      %rbp
	ret       
	.size	PyToken_OneChar, .-PyToken_OneChar
# ----------------------
	.globl	PyToken_TwoChars
	.type	PyToken_TwoChars, @function
PyToken_TwoChars:
	pushq     %rbp
	movq      %rsp, %rbp
	movl      %edi, -4(%rbp)
	movl      %esi, -8(%rbp)
	movl      -4(%rbp), %eax
	subl      $33, %eax
	cmpl      $91, %eax
	ja        .L004006B2
.L0040058F:
	movl      %eax, %eax
	leaq      0(,%rax,4), %rdx
	leaq      .LC004008DC(%rip), %rax
	movl      (%rdx,%rax), %eax
	movslq    %eax, %rdx
	leaq      .LC004008DC(%rip), %rax
	addq      %rdx, %rax
	jmp       *%rax
.L004005B2:
	movl      -8(%rbp), %eax
	cmpl      $61, %eax
	je        .L004005BF
.L004005BA:
	jmp       .L004006B2
.L004005BF:
	movl      $28, %eax
	jmp       .L004006B7
.L004005C9:
	movl      -8(%rbp), %eax
	cmpl      $61, %eax
	je        .L004005D6
.L004005D1:
	jmp       .L004006B2
.L004005D6:
	movl      $29, %eax
	jmp       .L004006B7
.L004005E0:
	movl      -8(%rbp), %eax
	cmpl      $61, %eax
	je        .L004005F2
.L004005E8:
	cmpl      $62, %eax
	je        .L004005FC
.L004005ED:
	jmp       .L004006B2
.L004005F2:
	movl      $31, %eax
	jmp       .L004006B7
.L004005FC:
	movl      $35, %eax
	jmp       .L004006B7
.L00400606:
	movl      -8(%rbp), %eax
	cmpl      $61, %eax
	je        .L00400613
.L0040060E:
	jmp       .L004006B2
.L00400613:
	movl      $37, %eax
	jmp       .L004006B7
.L0040061D:
	movl      -8(%rbp), %eax
	cmpl      $61, %eax
	je        .L0040062A
.L00400625:
	jmp       .L004006B2
.L0040062A:
	movl      $38, %eax
	jmp       .L004006B7
.L00400634:
	movl      -8(%rbp), %eax
	cmpl      $42, %eax
	je        .L00400643
.L0040063C:
	cmpl      $61, %eax
	je        .L0040064A
.L00400641:
	jmp       .L004006B2
.L00400643:
	movl      $36, %eax
	jmp       .L004006B7
.L0040064A:
	movl      $39, %eax
	jmp       .L004006B7
.L00400651:
	movl      -8(%rbp), %eax
	cmpl      $47, %eax
	je        .L00400660
.L00400659:
	cmpl      $61, %eax
	je        .L00400667
.L0040065E:
	jmp       .L004006B2
.L00400660:
	movl      $48, %eax
	jmp       .L004006B7
.L00400667:
	movl      $40, %eax
	jmp       .L004006B7
.L0040066E:
	movl      -8(%rbp), %eax
	cmpl      $61, %eax
	je        .L00400678
.L00400676:
	jmp       .L004006B2
.L00400678:
	movl      $43, %eax
	jmp       .L004006B7
.L0040067F:
	movl      -8(%rbp), %eax
	cmpl      $61, %eax
	je        .L00400689
.L00400687:
	jmp       .L004006B2
.L00400689:
	movl      $41, %eax
	jmp       .L004006B7
.L00400690:
	movl      -8(%rbp), %eax
	cmpl      $61, %eax
	je        .L0040069A
.L00400698:
	jmp       .L004006B2
.L0040069A:
	movl      $42, %eax
	jmp       .L004006B7
.L004006A1:
	movl      -8(%rbp), %eax
	cmpl      $61, %eax
	je        .L004006AB
.L004006A9:
	jmp       .L004006B2
.L004006AB:
	movl      $44, %eax
	jmp       .L004006B7
.L004006B2:
	movl      $51, %eax
.L004006B7:
	popq      %rbp
	ret       
	.size	PyToken_TwoChars, .-PyToken_TwoChars
# ----------------------
	.globl	main
	.type	main, @function
main:
	pushq     %rbp
	movq      %rsp, %rbp
	pushq     %rbx
	subq      $24, %rsp
	movl      %edi, -20(%rbp)
	movq      %rsi, -32(%rbp)
	movl      -20(%rbp), %eax
	movl      %eax, %edi
	call      PyToken_OneChar
.L004006D3:
	movl      %eax, %ebx
	movl      -20(%rbp), %edx
	movl      -20(%rbp), %eax
	movl      %edx, %esi
	movl      %eax, %edi
	call      PyToken_TwoChars
.L004006E4:
	addl      %ebx, %eax
	addq      $24, %rsp
	popq      %rbx
	popq      %rbp
	ret       
	.size	main, .-main
# ----------------------
	.section       .rodata
.LC00400774:
	.long	.L0040053E-.LC00400774
	.long	.L0040056F-.LC00400774
	.long	.L0040056F-.LC00400774
	.long	.L0040056F-.LC00400774
	.long	.L0040056F-.LC00400774
	.long	.L0040056F-.LC00400774
	.long	.L0040056F-.LC00400774
	.long	.L0040056F-.LC00400774
	.long	.L0040056F-.LC00400774
	.long	.L00400537-.LC00400774
	.long	.L0040056F-.LC00400774
	.long	.L0040056F-.LC00400774
	.long	.L0040056F-.LC00400774
	.long	.L0040056F-.LC00400774
	.long	.L0040056F-.LC00400774
	.long	.L0040056F-.LC00400774
	.long	.L0040056F-.LC00400774
	.long	.L0040056F-.LC00400774
	.long	.L0040056F-.LC00400774
	.long	.L0040056F-.LC00400774
	.long	.L0040056F-.LC00400774
	.long	.L00400522-.LC00400774
	.long	.L0040056F-.LC00400774
	.long	.L0040056F-.LC00400774
	.long	.L00400530-.LC00400774
	.long	.L00400529-.LC00400774
	.long	.L0040056F-.LC00400774
	.long	.L00400568-.LC00400774
	.long	.L0040056F-.LC00400774
	.long	.L0040056F-.LC00400774
	.long	.L0040056F-.LC00400774
	.long	.L0040056F-.LC00400774
	.long	.L0040056F-.LC00400774
	.long	.L0040056F-.LC00400774
	.long	.L0040056F-.LC00400774
	.long	.L0040056F-.LC00400774
	.long	.L0040056F-.LC00400774
	.long	.L0040056F-.LC00400774
	.long	.L0040056F-.LC00400774
	.long	.L0040056F-.LC00400774
	.long	.L0040056F-.LC00400774
	.long	.L0040056F-.LC00400774
	.long	.L0040056F-.LC00400774
	.long	.L0040056F-.LC00400774
	.long	.L0040056F-.LC00400774
	.long	.L0040056F-.LC00400774
	.long	.L0040056F-.LC00400774
	.long	.L0040056F-.LC00400774
	.long	.L0040056F-.LC00400774
	.long	.L0040056F-.LC00400774
	.long	.L0040056F-.LC00400774
	.long	.L0040056F-.LC00400774
	.long	.L0040056F-.LC00400774
	.long	.L0040056F-.LC00400774
	.long	.L0040056F-.LC00400774
	.long	.L0040056F-.LC00400774
	.long	.L0040056F-.LC00400774
	.long	.L0040055A-.LC00400774
	.long	.L0040056F-.LC00400774
	.long	.L00400545-.LC00400774
	.long	.L0040056F-.LC00400774
	.long	.L0040056F-.LC00400774
	.long	.L0040056F-.LC00400774
	.long	.L0040056F-.LC00400774
	.long	.L0040056F-.LC00400774
	.long	.L0040056F-.LC00400774
	.long	.L0040056F-.LC00400774
	.long	.L0040056F-.LC00400774
	.long	.L0040056F-.LC00400774
	.long	.L0040056F-.LC00400774
	.long	.L0040056F-.LC00400774
	.long	.L0040056F-.LC00400774
	.long	.L0040056F-.LC00400774
	.long	.L0040056F-.LC00400774
	.long	.L0040056F-.LC00400774
	.long	.L0040056F-.LC00400774
	.long	.L0040056F-.LC00400774
	.long	.L0040056F-.LC00400774
	.long	.L0040056F-.LC00400774
	.long	.L0040056F-.LC00400774
	.long	.L0040056F-.LC00400774
	.long	.L0040056F-.LC00400774
	.long	.L0040056F-.LC00400774
	.long	.L0040056F-.LC00400774
	.long	.L0040056F-.LC00400774
	.long	.L0040056F-.LC00400774
	.long	.L0040054C-.LC00400774
	.long	.L0040056F-.LC00400774
	.long	.L00400553-.LC00400774
	.long	.L00400561-.LC00400774
# ----------------------
.LC004008DC:
	.long	.L004005C9-.LC004008DC
	.long	.L004006B2-.LC004008DC
	.long	.L004006B2-.LC004008DC
	.long	.L004006B2-.LC004008DC
	.long	.L0040067F-.LC004008DC
	.long	.L00400690-.LC004008DC
	.long	.L004006B2-.LC004008DC
	.long	.L004006B2-.LC004008DC
	.long	.L004006B2-.LC004008DC
	.long	.L00400634-.LC004008DC
	.long	.L00400606-.LC004008DC
	.long	.L004006B2-.LC004008DC
	.long	.L0040061D-.LC004008DC
	.long	.L004006B2-.LC004008DC
	.long	.L00400651-.LC004008DC
	.long	.L004006B2-.LC004008DC
	.long	.L004006B2-.LC004008DC
	.long	.L004006B2-.LC004008DC
	.long	.L004006B2-.LC004008DC
	.long	.L004006B2-.LC004008DC
	.long	.L004006B2-.LC004008DC
	.long	.L004006B2-.LC004008DC
	.long	.L004006B2-.LC004008DC
	.long	.L004006B2-.LC004008DC
	.long	.L004006B2-.LC004008DC
	.long	.L004006B2-.LC004008DC
	.long	.L004006B2-.LC004008DC
	.long	.L004006B2-.LC004008DC
	.long	.L004005B2-.LC004008DC
	.long	.L004005E0-.LC004008DC
	.long	.L004006B2-.LC004008DC
	.long	.L004006B2-.LC004008DC
	.long	.L004006B2-.LC004008DC
	.long	.L004006B2-.LC004008DC
	.long	.L004006B2-.LC004008DC
	.long	.L004006B2-.LC004008DC
	.long	.L004006B2-.LC004008DC
	.long	.L004006B2-.LC004008DC
	.long	.L004006B2-.LC004008DC
	.long	.L004006B2-.LC004008DC
	.long	.L004006B2-.LC004008DC
	.long	.L004006B2-.LC004008DC
	.long	.L004006B2-.LC004008DC
	.long	.L004006B2-.LC004008DC
	.long	.L004006B2-.LC004008DC
	.long	.L004006B2-.LC004008DC
	.long	.L004006B2-.LC004008DC
	.long	.L004006B2-.LC004008DC
	.long	.L004006B2-.LC004008DC
	.long	.L004006B2-.LC004008DC
	.long	.L004006B2-.LC004008DC
	.long	.L004006B2-.LC004008DC
	.long	.L004006B2-.LC004008DC
	.long	.L004006B2-.LC004008DC
	.long	.L004006B2-.LC004008DC
	.long	.L004006B2-.LC004008DC
	.long	.L004006B2-.LC004008DC
	.long	.L004006B2-.LC004008DC
	.long	.L004006B2-.LC004008DC
	.long	.L004006B2-.LC004008DC
	.long	.L004006B2-.LC004008DC
	.long	.L004006A1-.LC004008DC
	.long	.L004006B2-.LC004008DC
	.long	.L004006B2-.LC004008DC
	.long	.L004006B2-.LC004008DC
	.long	.L004006B2-.LC004008DC
	.long	.L004006B2-.LC004008DC
	.long	.L004006B2-.LC004008DC
	.long	.L004006B2-.LC004008DC
	.long	.L004006B2-.LC004008DC
	.long	.L004006B2-.LC004008DC
	.long	.L004006B2-.LC004008DC
	.long	.L004006B2-.LC004008DC
	.long	.L004006B2-.LC004008DC
	.long	.L004006B2-.LC004008DC
	.long	.L004006B2-.LC004008DC
	.long	.L004006B2-.LC004008DC
	.long	.L004006B2-.LC004008DC
	.long	.L004006B2-.LC004008DC
	.long	.L004006B2-.LC004008DC
	.long	.L004006B2-.LC004008DC
	.long	.L004006B2-.LC004008DC
	.long	.L004006B2-.LC004008DC
	.long	.L004006B2-.LC004008DC
	.long	.L004006B2-.LC004008DC
	.long	.L004006B2-.LC004008DC
	.long	.L004006B2-.LC004008DC
	.long	.L004006B2-.LC004008DC
	.long	.L004006B2-.LC004008DC
	.long	.L004006B2-.LC004008DC
	.long	.L004006B2-.LC004008DC
	.long	.L0040066E-.LC004008DC
# ----------------------
	.ident	"GCC: (Ubuntu 4.8.4-2ubuntu1~14.04) 4.8.4"
	.section	.note.GNU-stack,"",@progbits
