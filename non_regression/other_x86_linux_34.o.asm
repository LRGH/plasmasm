	.file	"(extract)datetimemodule.c"
	.section       .text.__x86.get_pc_thunk.bx,"axG",@progbits,__x86.get_pc_thunk.bx,comdat
	.hidden	__x86.get_pc_thunk.bx
	.globl	__x86.get_pc_thunk.bx
	.type	__x86.get_pc_thunk.bx, @function
__x86.get_pc_thunk.bx:
	movl      (%esp), %ebx
	ret       
# ----------------------
	.text
	.local	datetime_gettime
	.type	datetime_gettime, @function
datetime_gettime:
	pushl     %ebp
	pushl     %edi
	pushl     %esi
	pushl     %ebx
	call      __x86.get_pc_thunk.bx
.L00000009:
	addl      $_GLOBAL_OFFSET_TABLE_, %ebx
	subl      $36, %esp
	movl      56(%esp), %eax
	movzbl    20(%eax), %edx
	movzbl    18(%eax), %edi
	movzbl    17(%eax), %ebp
	movl      %edx, %ecx
	movzbl    21(%eax), %edx
	sall      $16, %ecx
	sall      $8, %edx
	orl       %ecx, %edx
	movzbl    22(%eax), %ecx
	movl      %edx, %esi
	orl       %ecx, %esi
	movzbl    19(%eax), %ecx
	leal      PyDateTime_TimeType@GOTOFF(%ebx), %eax
	movb      %cl, 23(%esp)
	pushl     $0
	pushl     %eax
	call      *PyDateTime_TimeType@GOTOFF+152(%ebx)
.L0000004F:
	addl      $16, %esp
	testl     %eax, %eax
	je        .L00000088
.L00000056:
	movzbl    15(%esp), %ecx
	movl      %ebp, %edx
	movb      $0, 12(%eax)
	movb      %dl, 13(%eax)
	movl      %edi, %edx
	movl      $-1, 8(%eax)
	movb      %dl, 14(%eax)
	movl      %esi, %edx
	movb      %dl, 18(%eax)
	movb      %cl, 15(%eax)
	movl      %esi, %ecx
	shrl      $16, %ecx
	movb      %cl, 16(%eax)
	movl      %esi, %ecx
	movzbl    %ch, %ecx
	movb      %cl, 17(%eax)
.L00000088:
	addl      $28, %esp
	popl      %ebx
	popl      %esi
	popl      %edi
	popl      %ebp
	ret       
	.size	datetime_gettime, .-datetime_gettime
# ----------------------
	.section       .data.rel,"wa",@progbits
	.local	PyDateTime_TimeType
	.type	PyDateTime_TimeType, @object
PyDateTime_TimeType:
	.long	1
	.long	0
	.long	0
	.long	.LC318
	.long	24
	.long	0
	.long	time_dealloc
	.zero	16
	.long	time_repr
	.long	time_as_number
	.zero	8
	.long	time_hash
	.long	0
	.long	time_str
	.long	PyObject_GenericGetAttr
	.long	0
	.long	0
	.long	1531
	.long	time_doc
	.zero	8
	.long	time_richcompare
	.zero	12
	.long	time_methods
	.long	0
	.long	time_getset
	.zero	24
	.long	time_alloc
	.long	time_new
	.zero	32
	.size	PyDateTime_TimeType, 192
# ----------------------
	.ident	"GCC: (Debian 4.9.2-10) 4.9.2"
	.section	.note.GNU-stack,"",@progbits
