	.file	"a00.c"
	.section       .plt,"ax",@progbits
.LPLT004003E0:
	jmp       *2100274(%rip)
# ----------------------
	.text
.L00400429:
	hlt       
	.p2align 3
# ----------------------
	.globl	main
	.type	main, @function
main:
	pushq     %rbp
	movq      %rsp, %rbp
	movl      $0, -4(%rbp)
	addl      $66, -4(%rbp)
	movl      -4(%rbp), %eax
	popq      %rbp
	ret       
	.size	main, .-main
# ----------------------
BUG
	.section       .init_array,"wa",@init_array
.LD.init_array.0:
	.long	frame_dummy
	.long	0
# ----------------------
	.section       .fini_array,"wa",@fini_array
.LD.fini_array.0:
	.long	__do_global_dtors_aux
	.long	0
# ----------------------
	.local	completed.6973
	.comm	completed.6973,1,1
# ----------------------
	.ident	"GCC: (Ubuntu 4.8.4-2ubuntu1~14.04) 4.8.4"
	.section	.note.GNU-stack,"",@progbits
