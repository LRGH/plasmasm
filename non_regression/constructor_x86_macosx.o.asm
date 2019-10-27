	.section       __TEXT,__text,regular,pure_instructions
	.align 4, 0x90
	.globl	_c1
_c1:
	pushl     %ebp
	movl      %esp, %ebp
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
	call      _c1
L00000022:
	movl      $0, %eax
	addl      $8, %esp
	popl      %ebp
	ret       
# ----------------------
	.section       __DATA,__mod_init_func,mod_init_funcs
	.align 2
.LD__mod_init_func:
	.long	_c1
# ----------------------

.subsections_via_symbols
