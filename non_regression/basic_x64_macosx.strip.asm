	.section       __TEXT,__text,regular,pure_instructions
L100000F80:
	pushq     %rbp
	movq      %rsp, %rbp
	movl      $0, -4(%rbp)
	movl      $0, -8(%rbp)
	movl      -8(%rbp), %eax
	addl      $66, %eax
	movl      %eax, -8(%rbp)
	movl      -8(%rbp), %eax
	popq      %rbp
	ret       
# ----------------------

.subsections_via_symbols
