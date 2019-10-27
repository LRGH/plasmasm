	.section       __TEXT,__text,regular,pure_instructions
	.align 4, 0x90
	.globl	__Z4BLAHv
__Z4BLAHv:
	pushl     %ebp
	movl      %esp, %ebp
	call      L00000008
L00000008:
	popl      %eax
	movl      _a-L00000008(%eax), %eax
	popl      %ebp
	ret       
# ----------------------
	.align 4, 0x90
	.globl	_main
_main:
	pushl     %ebp
	movl      %esp, %ebp
	subl      $8, %esp
	movl      $0, -4(%ebp)
	call      __Z4TESTv
L00000032:
	call      __Z4BLAHv
L00000037:
	movl      %eax, (%esp)
	call      __Z4FUNCi
L0000003F:
	addl      $8, %esp
	popl      %ebp
	ret       
# ----------------------
	.section       __TEXT,__textcoal_nt,coalesced,pure_instructions
	.align 4, 0x90
	.globl	__Z4TESTv
__Z4TESTv:
	pushl     %ebp
	movl      %esp, %ebp
	call      L00000058
L00000058:
	popl      %eax
	movl      _a-L00000058(%eax), %ecx
	addl      $1, %ecx
	movl      %ecx, _a-L00000058(%eax)
	popl      %ebp
	ret       
# ----------------------
	.align 4, 0x90
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
