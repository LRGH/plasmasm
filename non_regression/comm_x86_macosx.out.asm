	.section       __TEXT,__text,regular,pure_instructions
	.align 4, 0x90
	.globl	_main
_main:
	pushl     %ebp
	movl      %esp, %ebp
	pushl     %esi
	call      L00001F89
L00001F89:
	popl      %eax
	movl      $0, %ecx
	movl      119(%eax), %edx
	movl      123(%eax), %eax
	movl      (%eax), %eax
	sall      $1, %eax
	imull     $5, (%edx), %esi
	subl      %esi, %eax
	movl      %eax, (%edx)
	movl      %ecx, %eax
	popl      %esi
	popl      %ebp
	ret       
# ----------------------
	.globl	_A
.zerofill __DATA,__common,_A,4,2
# ----------------------
	.globl	_B
.zerofill __DATA,__common,_B,4,2
# ----------------------
	.section       __IMPORT,__pointers,non_lazy_symbol_pointers
LLOCAL0x2000$non_lazy_ptr:
	.indirect_symbol LOCAL0x2000
	.long	0
# ----------------------
LLOCAL0x2004$non_lazy_ptr:
	.indirect_symbol LOCAL0x2004
	.long	0
# ----------------------

.subsections_via_symbols
