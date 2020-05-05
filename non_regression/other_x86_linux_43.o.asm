	.file	"common_test_3.c"
	.text
	.globl	c1_v1
	.type	c1_v1, @function
c1_v1:
	rep; ret       
	.size	c1_v1, .-c1_v1
# ----------------------
	.globl	c1@@VER1
	.set	c1@@VER1,c1_v1
	.ident	"GCC: (Ubuntu/Linaro 4.6.3-1ubuntu5) 4.6.3"
	.section	.note.GNU-stack,"",@progbits
