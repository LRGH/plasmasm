	.file	"identical_label_diff.c"
	.text
	.globl	main
	.type	main, @function
main:
	subl $main-.L0, %eax
	subl $0, %eax
	subl $main-main, %eax
.L0:
	ret
	.size	main, .-main
