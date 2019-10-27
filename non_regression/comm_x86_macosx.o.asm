	.section       __TEXT,__text,regular,pure_instructions
	.align 4, 0x90
	.globl	_main
_main:
	pushl     %ebp
	movl      %esp, %ebp
	pushl     %esi
	call      L00000009
L00000009:
	popl      %eax
	movl      $0, %ecx
	movl      L_A$non_lazy_ptr-L00000009(%eax), %edx
	movl      L_B$non_lazy_ptr-L00000009(%eax), %eax
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
	.comm	_A,4,2
# ----------------------
	.comm	_B,4,2
# ----------------------
	.section       __IMPORT,__pointers,non_lazy_symbol_pointers
L_A$non_lazy_ptr:
	.indirect_symbol _A
	.long	0
# ----------------------
L_B$non_lazy_ptr:
	.indirect_symbol _B
	.long	0
# ----------------------

.subsections_via_symbols
