	.file	"(extract)datetimemodule.c"
	.file 1 "Modules/datetimemodule.c"
	.file 2 "/usr/include/bits/mathinline.h"
	.text
	.p2align 4,,15
	.type	datetime_gettime, @function
datetime_gettime:
	pushl	%ebp
	pushl	%edi
	pushl	%esi
	pushl	%ebx
	call	__x86.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	subl	$36, %esp
	movl	56(%esp), %eax
	movzbl	20(%eax), %edx
	movzbl	18(%eax), %edi
	movzbl	17(%eax), %ebp
	movl	%edx, %ecx
	movzbl	21(%eax), %edx
	sall	$16, %ecx
	sall	$8, %edx
	orl	%ecx, %edx
	movzbl	22(%eax), %ecx
	movl	%edx, %esi
	orl	%ecx, %esi
	movzbl	19(%eax), %ecx
	leal	PyDateTime_TimeType@GOTOFF(%ebx), %eax
	movb	%cl, 23(%esp)
	pushl	$0
	pushl	%eax
	call	*152+PyDateTime_TimeType@GOTOFF(%ebx)
	addl	$16, %esp
	testl	%eax, %eax
	je	.L437
	movzbl	15(%esp), %ecx
	movl	%ebp, %edx
	movb	$0, 12(%eax)
	movb	%dl, 13(%eax)
	movl	%edi, %edx
	movl	$-1, 8(%eax)
	movb	%dl, 14(%eax)
	movl	%esi, %edx
	movb	%dl, 18(%eax)
	movb	%cl, 15(%eax)
	movl	%esi, %ecx
	shrl	$16, %ecx
	movb	%cl, 16(%eax)
	movl	%esi, %ecx
	movzbl	%ch, %ecx
	movb	%cl, 17(%eax)
.L437:
	addl	$28, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
	.size	datetime_gettime, .-datetime_gettime
	.section	.data.rel
	.align 64
	.type	PyDateTime_TimeType, @object
	.size	PyDateTime_TimeType, 192
PyDateTime_TimeType:
	.long	1
	.long	0
	.long	0
	.long	.LC318
	.long	24
	.long	0
	.long	time_dealloc
	.long	0
	.long	0
	.long	0
	.long	0
	.long	time_repr
	.long	time_as_number
	.long	0
	.long	0
	.long	time_hash
	.long	0
	.long	time_str
	.long	PyObject_GenericGetAttr
	.long	0
	.long	0
	.long	1531
	.long	time_doc
	.long	0
	.long	0
	.long	time_richcompare
	.long	0
	.long	0
	.long	0
	.long	time_methods
	.long	0
	.long	time_getset
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	time_alloc
	.long	time_new
	.long	0
	.zero	28
	.section	.text.__x86.get_pc_thunk.bx,"axG",@progbits,__x86.get_pc_thunk.bx,comdat
	.globl	__x86.get_pc_thunk.bx
	.hidden	__x86.get_pc_thunk.bx
	.type	__x86.get_pc_thunk.bx, @function
__x86.get_pc_thunk.bx:
	movl	(%esp), %ebx
	ret
	.ident	"GCC: (Debian 4.9.2-10) 4.9.2"
	.section	.note.GNU-stack,"",@progbits
