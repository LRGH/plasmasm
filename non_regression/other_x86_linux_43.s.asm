	.file	"common_test_3.c"
	.text
	.p2align 4,,15
# ----------------------
	.globl	c1_v1
	.type	c1_v1, @function
c1_v1:
	.cfi_startproc
	rep; ret       
	.cfi_endproc
	.size	c1_v1, .-c1_v1
# ----------------------
	.symver	c1_v1,c1@@VER1
	.ident	"GCC: (Ubuntu/Linaro 4.6.3-1ubuntu5) 4.6.3"
	.section	.note.GNU-stack,"",@progbits
