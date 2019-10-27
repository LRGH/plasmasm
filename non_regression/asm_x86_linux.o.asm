	.file	"asm.c"
	.text
	.globl	main
	.type	main, @function
main:
	leave     
	fdivp     %st, %st(2)
	fdivp     %st, %st(2)
	fdiv      %st, %st(2)
	fdiv      %st(2), %st
	fdiv      %st(0), %st
	fdivrp    %st, %st(2)
	fdivrp    %st, %st(2)
	fdivr     %st, %st(2)
	fdivr     %st(2), %st
	fdivr     %st(0), %st
	fdivs     -8(%eax)
	fdivl     -8(%eax)
	fdivrs    -8(%eax)
	fdivrl    -8(%eax)
	pslldq    $4, %xmm3
	ret       
	.size	main, .-main
# ----------------------
	.ident	"GCC: (Ubuntu/Linaro 4.6.3-1ubuntu5) 4.6.3"
	.section	.note.GNU-stack,"",@progbits
