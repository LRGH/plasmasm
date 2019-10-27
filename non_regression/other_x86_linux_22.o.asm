	.file	"j2.c"
	.text
	.globl	main
	.type	main, @function
main:
	pushl     %ebp
	movl      %esp, %ebp
	subl      $16, %esp
	call      __i686.get_pc_thunk.cx
.L0000000B:
	addl      $_GLOBAL_OFFSET_TABLE_, %ecx
	leal      .LC00000000@GOTOFF(%ecx), %edx
	movl      -4(%ebp), %eax
	addl      %edx, %eax
	movzbl    (%eax), %eax
	movsbl    %al, %eax
	movl      %eax, -4(%ebp)
	jmp       .L2
.L00000027:
	movl      -4(%ebp), %eax
	subl      $58, %eax
	cmpl      $73, %eax
	ja        .L2
.L00000032:
	sall      $2, %eax
	movl      .LC00000008@GOTOFF(%eax,%ecx), %eax
	addl      %ecx, %eax
	jmp       *%eax
.L3:
	addl      $1, -4(%ebp)
.L4:
	subl      $1, -4(%ebp)
.L2:
	cmpl      $0, -4(%ebp)
	jne       .L00000027
.L0000004E:
	leave     
	ret       
	.size	main, .-main
# ----------------------
	.section       .rodata
.LC00000000:
	.string	"blah"
# ----------------------
.LC00000005:
	.zero	3
	.align 4
.LC00000008:
	.long	.L3@GOTOFF
	.long	.L4@GOTOFF
	.long	.L3@GOTOFF
	.long	.L2@GOTOFF
	.long	.L2@GOTOFF
	.long	.L2@GOTOFF
	.long	.L2@GOTOFF
	.long	.L4@GOTOFF
	.long	.L2@GOTOFF
	.long	.L2@GOTOFF
	.long	.L2@GOTOFF
	.long	.L2@GOTOFF
	.long	.L2@GOTOFF
	.long	.L2@GOTOFF
	.long	.L2@GOTOFF
	.long	.L2@GOTOFF
	.long	.L2@GOTOFF
	.long	.L2@GOTOFF
	.long	.L2@GOTOFF
	.long	.L2@GOTOFF
	.long	.L2@GOTOFF
	.long	.L2@GOTOFF
	.long	.L2@GOTOFF
	.long	.L2@GOTOFF
	.long	.L2@GOTOFF
	.long	.L2@GOTOFF
	.long	.L2@GOTOFF
	.long	.L2@GOTOFF
	.long	.L2@GOTOFF
	.long	.L2@GOTOFF
	.long	.L2@GOTOFF
	.long	.L2@GOTOFF
	.long	.L2@GOTOFF
	.long	.L2@GOTOFF
	.long	.L2@GOTOFF
	.long	.L2@GOTOFF
	.long	.L2@GOTOFF
	.long	.L2@GOTOFF
	.long	.L2@GOTOFF
	.long	.L2@GOTOFF
	.long	.L2@GOTOFF
	.long	.L2@GOTOFF
	.long	.L2@GOTOFF
	.long	.L2@GOTOFF
	.long	.L2@GOTOFF
	.long	.L2@GOTOFF
	.long	.L2@GOTOFF
	.long	.L2@GOTOFF
	.long	.L2@GOTOFF
	.long	.L2@GOTOFF
	.long	.L2@GOTOFF
	.long	.L2@GOTOFF
	.long	.L2@GOTOFF
	.long	.L2@GOTOFF
	.long	.L2@GOTOFF
	.long	.L2@GOTOFF
	.long	.L2@GOTOFF
	.long	.L2@GOTOFF
	.long	.L2@GOTOFF
	.long	.L2@GOTOFF
	.long	.L2@GOTOFF
	.long	.L2@GOTOFF
	.long	.L3@GOTOFF
	.long	.L3@GOTOFF
	.long	.L2@GOTOFF
	.long	.L2@GOTOFF
	.long	.L2@GOTOFF
	.long	.L2@GOTOFF
	.long	.L2@GOTOFF
	.long	.L2@GOTOFF
	.long	.L2@GOTOFF
	.long	.L2@GOTOFF
	.long	.L4@GOTOFF
	.long	.L4@GOTOFF
# ----------------------
	.section       .text.__i686.get_pc_thunk.cx,"axG",@progbits,__i686.get_pc_thunk.cx,comdat
	.hidden	__i686.get_pc_thunk.cx
	.globl	__i686.get_pc_thunk.cx
	.type	__i686.get_pc_thunk.cx, @function
__i686.get_pc_thunk.cx:
	movl      (%esp), %ecx
	ret       
# ----------------------
	.ident	"GCC: (Ubuntu/Linaro 4.6.3-1ubuntu5) 4.6.3"
	.section	.note.GNU-stack,"",@progbits
