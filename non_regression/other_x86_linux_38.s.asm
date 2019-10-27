	.file	"identical_label_diff.c"
	.text
	.globl	main
	.type	main, @function
main:
	subl      $main-.L0, %eax
	subl      $0, %eax
	subl      $0, %eax
.L0:
	ret       
	.size	main, .-main
# ----------------------
	.section	.note.GNU-stack,"",@progbits
