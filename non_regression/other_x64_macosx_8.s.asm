	.section       __TEXT,__text,regular,pure_instructions
	.align 4, 0x90
	.globl	__Z4BLAHv
__Z4BLAHv:
	pushl     %ebp
	movl      %esp, %ebp
	call      L0$pb
L0$pb:
	popl      %eax
	movl      _a-L0$pb(%eax), %eax
	popl      %ebp
	ret       
# ----------------------
	.align 4, 0x90
	.globl	_main
_main:
	pushl     %ebp
Ltmp2:
Ltmp3:
	movl      %esp, %ebp
Ltmp4:
	subl      $8, %esp
	movl      $0, -4(%ebp)
	call      __Z4TESTv
	call      __Z4BLAHv
	movl      %eax, (%esp)
	call      __Z4FUNCi
	addl      $8, %esp
	popl      %ebp
	ret       
# ----------------------
	.section       __TEXT,__textcoal_nt,coalesced,pure_instructions
	.align 4, 0x90
	.weak_def_can_be_hidden	__Z4TESTv
	.globl	__Z4TESTv
__Z4TESTv:
	pushl     %ebp
	movl      %esp, %ebp
	call      L2$pb
L2$pb:
	popl      %eax
	movl      _a-L2$pb(%eax), %ecx
	addl      $1, %ecx
	movl      %ecx, _a-L2$pb(%eax)
	popl      %ebp
	ret       
# ----------------------
	.align 4, 0x90
	.weak_def_can_be_hidden	__Z4FUNCi
	.globl	__Z4FUNCi
__Z4FUNCi:
	pushl     %ebp
	movl      %esp, %ebp
	pushl     %eax
	movl      8(%ebp), %eax
	movl      %eax, -4(%ebp)
	movl      -4(%ebp), %eax
	movl      %eax, %ecx
	addl      $1, %ecx
	movl      %ecx, -4(%ebp)
	addl      $4, %esp
	popl      %ebp
	ret       
# ----------------------
	.globl	_a
.zerofill __DATA,__common,_a,4,2
# ----------------------

.subsections_via_symbols
