	.file	"bufferobject.c"
	.section       .rodata.str1.1,"aMS",@progbits,1
.LC00000000.str1.1:
	.string	"read-only"
.LC0000000A.str1.1:
	.string	"read-write"
.LC00000015.str1.1:
	.string	"buffer()"
.LC0000001E.str1.1:
	.string	"O|ii:buffer"
.LC0000002A.str1.1:
	.string	"buffer object expected"
.LC00000041.str1.1:
	.string	"size must be zero or positive"
.LC0000005F.str1.1:
	.string	"buffer is read-only"
.LC00000073.str1.1:
	.string	"buffer index out of range"
.LC0000008D.str1.1:
	.string	"buffer"
# ----------------------
	.section       .rodata.str1.4,"aMS",@progbits,1
.LC00000000.str1.4:
	.string	"single-segment buffer object expected"
# ----------------------
.LC00000026.str1.4:
	.value	0
	.align 4
.LC00000028.str1.4:
	.string	"<%s buffer ptr %p, size %d at %p>"
# ----------------------
.LC0000004A.str1.4:
	.value	0
	.align 4
.LC0000004C.str1.4:
	.string	"<%s buffer for %p, size %d, offset %d at %p>"
# ----------------------
.LC00000079.str1.4:
	.zero	3
	.align 4
.LC0000007C.str1.4:
	.string	"offset must be zero or positive"
.LC0000009C.str1.4:
	.string	"accessing non-existent buffer segment"
# ----------------------
.LC000000C2.str1.4:
	.value	0
	.align 4
.LC000000C4.str1.4:
	.string	"buffer assignment index out of range"
# ----------------------
.LC000000E9.str1.4:
	.zero	3
	.align 4
.LC000000EC.str1.4:
	.string	"right operand must be a single byte"
.LC00000110.str1.4:
	.string	"right operand length must match slice length"
# ----------------------
.LC0000013D.str1.4:
	.zero	3
	.align 4
.LC00000140.str1.4:
	.string	"writable buffers are not hashable"
# ----------------------
	.data
	.globl	PyBuffer_Type
	.type	PyBuffer_Type, @object
PyBuffer_Type:
	.long	1
	.long	PyType_Type
	.long	0
	.long	.LC0000008D.str1.1
	.long	32
	.long	0
	.long	buffer_dealloc
	.zero	12
	.long	buffer_compare
	.long	buffer_repr
	.long	0
	.long	buffer_as_sequence
	.long	0
	.long	buffer_hash
	.long	0
	.long	buffer_str
	.long	PyObject_GenericGetAttr
	.long	0
	.long	buffer_as_buffer
	.long	491
	.long	buffer_doc
	.zero	64
	.long	buffer_new
	.zero	32
	.size	PyBuffer_Type, 192
# ----------------------
	.local	buffer_as_buffer
	.type	buffer_as_buffer, @object
buffer_as_buffer:
	.long	buffer_getreadbuf
	.long	buffer_getwritebuf
	.long	buffer_getsegcount
	.long	buffer_getcharbuf
	.size	buffer_as_buffer, 16
# ----------------------
.LD000000D0:
	.zero	16
# ----------------------
	.local	buffer_as_sequence
	.type	buffer_as_sequence, @object
buffer_as_sequence:
	.long	buffer_length
	.long	buffer_concat
	.long	buffer_repeat
	.long	buffer_item
	.long	buffer_slice
	.long	buffer_ass_item
	.long	buffer_ass_slice
	.zero	12
	.size	buffer_as_sequence, 40
# ----------------------
.LD00000108:
	.zero	24
# ----------------------
	.local	buffer_doc
	.type	buffer_doc, @object
buffer_doc:
	.string	"buffer(object [, offset[, size]])\n\nCreate a new buffer object which references the given object.\nThe buffer will reference a slice of the target object from the\nstart of the object (or at the specified offset). The slice will\nextend to the end of the target object (or with the specified size)."
	.size	buffer_doc, 295
# ----------------------
	.text
	.local	buffer_repeat
	.type	buffer_repeat, @function
buffer_repeat:
	pushl     %ebp
	pushl     %edi
	pushl     %esi
	pushl     %ebx
	subl      $60, %esp
	movl      80(%esp), %ebx
	movl      84(%esp), %edi
	movl      8(%ebx), %eax
	testl     %eax, %eax
	je        .L00000110
.L0000001A:
	movl      4(%eax), %edx
	movl      80(%edx), %esi
	movl      $0, 4(%esp)
	movl      %eax, (%esp)
	call      *8(%esi)
.L0000002E:
	cmpl      $1, %eax
	jne       .L000000F0
.L00000037:
	movl      24(%ebx), %edx
	movl      4(%esi), %eax
	testl     %edx, %edx
	leal      44(%esp), %edx
	cmovne    (%esi), %eax
	movl      %edx, 8(%esp)
	movl      $0, 4(%esp)
	movl      8(%ebx), %edx
	movl      %edx, (%esp)
	call      *%eax
.L0000005A:
	testl     %eax, %eax
	js        .L00000105
.L00000062:
	movl      20(%ebx), %edx
	movl      %eax, %ecx
	movl      16(%ebx), %ebp
	cmpl      %edx, %eax
	cmovle    %eax, %edx
	addl      %edx, 44(%esp)
	cmpl      $-1, %ebp
	cmove     %eax, %ebp
	subl      %edx, %ecx
	leal      (%ebp,%edx), %ebx
	cmpl      %ebx, %eax
	cmovl     %ecx, %ebp
.L00000084:
	xorl      %esi, %esi
	testl     %edi, %edi
	cmovns    %edi, %esi
	movl      %esi, %eax
	imull     %ebp, %eax
	movl      $0, (%esp)
	movl      %eax, 4(%esp)
	call      PyString_FromStringAndSize
.L000000A0:
	testl     %eax, %eax
	movl      %eax, 28(%esp)
	je        .L00000105
.L000000A8:
	addl      $20, %eax
	testl     %esi, %esi
	movl      %eax, 24(%esp)
	je        .L000000DE
.L000000B3:
	movl      %esi, %ebx
	movl      %eax, %edi
	.p2align 3
.L000000B8:
	movl      44(%esp), %eax
	movl      %edi, (%esp)
	addl      %ebp, %edi
	movl      %ebp, 8(%esp)
	movl      %eax, 4(%esp)
	call      memcpy
.L000000CE:
	subl      $1, %ebx
	jne       .L000000B8
.L000000D3:
	imull     %ebp, %esi
	addl      %esi, 24(%esp)
	movl      24(%esp), %eax
.L000000DE:
	movb      $0, (%eax)
	movl      28(%esp), %eax
	addl      $60, %esp
	popl      %ebx
	popl      %esi
	popl      %edi
	popl      %ebp
	ret       
.L000000ED:
	.p2align 3
.L000000F0:
	movl      PyExc_TypeError, %eax
	movl      $.LC00000000.str1.4, 4(%esp)
	movl      %eax, (%esp)
	call      PyErr_SetString
.L00000105:
	addl      $60, %esp
	xorl      %eax, %eax
	popl      %ebx
	popl      %esi
	popl      %edi
	popl      %ebp
	ret       
.L0000010F:
	.p2align 3
.L00000110:
	movl      12(%ebx), %eax
	movl      16(%ebx), %ebp
	movl      %eax, 44(%esp)
	jmp       .L00000084
	.size	buffer_repeat, .-buffer_repeat
# ----------------------
.L0000011F:
	.p2align 3
# ----------------------
	.local	buffer_repr
	.type	buffer_repr, @function
buffer_repr:
	pushl     %ebx
	movl      $.LC00000000.str1.1, %edx
	subl      $40, %esp
	movl      48(%esp), %eax
	movl      24(%eax), %ecx
	testl     %ecx, %ecx
	movl      $.LC0000000A.str1.1, %ecx
	cmove     %ecx, %edx
	movl      8(%eax), %ecx
	testl     %ecx, %ecx
	je        .L00000170
.L00000141:
	movl      %eax, 20(%esp)
	movl      20(%eax), %ebx
	movl      %ebx, 16(%esp)
	movl      16(%eax), %eax
	movl      %ecx, 8(%esp)
	movl      %edx, 4(%esp)
	movl      $.LC0000004C.str1.4, (%esp)
	movl      %eax, 12(%esp)
	call      PyString_FromFormat
.L00000167:
	addl      $40, %esp
	popl      %ebx
	ret       
.L0000016C:
	.p2align 3
.L00000170:
	movl      %eax, 16(%esp)
	movl      16(%eax), %ecx
	movl      %ecx, 12(%esp)
	movl      12(%eax), %eax
	movl      %edx, 4(%esp)
	movl      $.LC00000028.str1.4, (%esp)
	movl      %eax, 8(%esp)
	call      PyString_FromFormat
.L00000192:
	addl      $40, %esp
	popl      %ebx
	ret       
	.size	buffer_repr, .-buffer_repr
# ----------------------
.L00000197:
	.p2align 4
# ----------------------
	.local	buffer_dealloc
	.type	buffer_dealloc, @function
buffer_dealloc:
	pushl     %ebx
	subl      $24, %esp
	movl      32(%esp), %ebx
	movl      8(%ebx), %eax
	testl     %eax, %eax
	je        .L000001C6
.L000001AF:
	movl      (%eax), %ecx
	leal      -1(%ecx), %edx
	testl     %edx, %edx
	movl      %edx, (%eax)
	jne       .L000001C6
.L000001BA:
	movl      8(%ebx), %eax
	movl      4(%eax), %edx
	movl      %eax, (%esp)
	call      *24(%edx)
.L000001C6:
	movl      %ebx, 32(%esp)
	addl      $24, %esp
	popl      %ebx
	jmp       PyObject_Free
	.size	buffer_dealloc, .-buffer_dealloc
# ----------------------
.L000001D3:
	.p2align 4
# ----------------------
	.local	buffer_new
	.type	buffer_new, @function
buffer_new:
	pushl     %edi
	pushl     %esi
	pushl     %ebx
	subl      $48, %esp
	movl      72(%esp), %eax
	movl      $.LC00000015.str1.1, (%esp)
	movl      $0, 40(%esp)
	movl      $-1, 44(%esp)
	movl      %eax, 4(%esp)
	call      _PyArg_NoKeywords
.L0000020A:
	testl     %eax, %eax
	je        .L00000320
.L00000212:
	leal      44(%esp), %eax
	movl      %eax, 16(%esp)
	leal      40(%esp), %eax
	movl      %eax, 12(%esp)
	leal      36(%esp), %eax
	movl      %eax, 8(%esp)
	movl      68(%esp), %eax
	movl      $.LC0000001E.str1.1, 4(%esp)
	movl      %eax, (%esp)
	call      PyArg_ParseTuple
.L0000023E:
	testl     %eax, %eax
	je        .L00000320
.L00000246:
	movl      36(%esp), %ecx
	movl      44(%esp), %edi
	movl      40(%esp), %ebx
	movl      4(%ecx), %edx
	movl      80(%edx), %eax
	testl     %eax, %eax
	je        .L00000358
.L00000260:
	movl      (%eax), %esi
	testl     %esi, %esi
	je        .L00000358
.L0000026A:
	movl      8(%eax), %eax
	testl     %eax, %eax
	je        .L00000358
.L00000275:
	testl     %ebx, %ebx
	js        .L00000308
.L0000027D:
	cmpl      $PyBuffer_Type, %edx
	je        .L000002E0
.L00000285:
	cmpl      $-1, %edi
	jl        .L00000338
.L0000028E:
	movl      %ecx, %esi
.L00000290:
	movl      PyBuffer_Type+16, %eax
	movl      %eax, (%esp)
	call      PyObject_Malloc
.L0000029D:
	movl      $PyBuffer_Type, 4(%esp)
	movl      %eax, (%esp)
	call      PyObject_Init
.L000002AD:
	testl     %eax, %eax
	je        .L00000320
.L000002B1:
	addl      $1, (%esi)
	movl      %esi, 8(%eax)
	movl      $0, 12(%eax)
	movl      %edi, 16(%eax)
	movl      %ebx, 20(%eax)
	movl      $1, 24(%eax)
	movl      $-1, 28(%eax)
	addl      $48, %esp
	popl      %ebx
	popl      %esi
	popl      %edi
	ret       
.L000002D9:
	.p2align 4
.L000002E0:
	movl      8(%ecx), %esi
	testl     %esi, %esi
	je        .L00000285
.L000002E7:
	movl      16(%ecx), %eax
	cmpl      $-1, %eax
	je        .L00000330
.L000002EF:
	xorl      %edx, %edx
	subl      %ebx, %eax
	cmovns    %eax, %edx
	cmpl      %edx, %edi
	jg        .L000002FF
.L000002FA:
	cmpl      $-1, %edi
	jne       .L00000330
.L000002FF:
	addl      20(%ecx), %ebx
	movl      %edx, %edi
.L00000304:
	testl     %ebx, %ebx
	jns       .L00000290
.L00000308:
	movl      PyExc_ValueError, %eax
	movl      $.LC0000007C.str1.4, 4(%esp)
	movl      %eax, (%esp)
	call      PyErr_SetString
.L0000031D:
	.p2align 3
.L00000320:
	xorl      %eax, %eax
.L00000322:
	addl      $48, %esp
	popl      %ebx
	popl      %esi
	popl      %edi
	ret       
.L00000329:
	.p2align 4
.L00000330:
	addl      20(%ecx), %ebx
	cmpl      $-1, %edi
	jge       .L00000304
.L00000338:
	movl      PyExc_ValueError, %eax
	movl      $.LC00000041.str1.1, 4(%esp)
	movl      %eax, (%esp)
	call      PyErr_SetString
.L0000034D:
	xorl      %eax, %eax
	jmp       .L00000322
.L00000351:
	.p2align 3
.L00000358:
	movl      PyExc_TypeError, %eax
	movl      $.LC0000002A.str1.1, 4(%esp)
	movl      %eax, (%esp)
	call      PyErr_SetString
.L0000036D:
	xorl      %eax, %eax
	jmp       .L00000322
	.size	buffer_new, .-buffer_new
# ----------------------
.L00000371:
	.p2align 4
# ----------------------
	.local	buffer_length
	.type	buffer_length, @function
buffer_length:
	pushl     %esi
	pushl     %ebx
	subl      $36, %esp
	movl      48(%esp), %ebx
	movl      8(%ebx), %eax
	testl     %eax, %eax
	je        .L00000420
.L00000394:
	movl      4(%eax), %edx
	movl      80(%edx), %esi
	movl      $0, 4(%esp)
	movl      %eax, (%esp)
	call      *8(%esi)
.L000003A8:
	cmpl      $1, %eax
	jne       .L00000400
.L000003AD:
	movl      24(%ebx), %edx
	movl      4(%esi), %eax
	testl     %edx, %edx
	leal      28(%esp), %edx
	cmovne    (%esi), %eax
	movl      %edx, 8(%esp)
	movl      $0, 4(%esp)
	movl      8(%ebx), %edx
	movl      %edx, (%esp)
	call      *%eax
.L000003D0:
	testl     %eax, %eax
	js        .L00000415
.L000003D4:
	movl      20(%ebx), %ecx
	movl      %eax, %esi
	movl      16(%ebx), %edx
	cmpl      %ecx, %eax
	cmovle    %eax, %ecx
	cmpl      $-1, %edx
	cmove     %eax, %edx
	subl      %ecx, %esi
	leal      (%edx,%ecx), %ebx
	cmpl      %ebx, %eax
	cmovl     %esi, %edx
.L000003F1:
	addl      $36, %esp
	movl      %edx, %eax
	popl      %ebx
	popl      %esi
	ret       
.L000003F9:
	.p2align 4
.L00000400:
	movl      PyExc_TypeError, %eax
	movl      $.LC00000000.str1.4, 4(%esp)
	movl      %eax, (%esp)
	call      PyErr_SetString
.L00000415:
	addl      $36, %esp
	movl      $-1, %eax
	popl      %ebx
	popl      %esi
	ret       
.L00000420:
	movl      16(%ebx), %edx
	jmp       .L000003F1
	.size	buffer_length, .-buffer_length
# ----------------------
.L00000425:
	.p2align 4
# ----------------------
	.local	buffer_getsegcount
	.type	buffer_getsegcount, @function
buffer_getsegcount:
	pushl     %edi
	pushl     %esi
	pushl     %ebx
	subl      $32, %esp
	movl      48(%esp), %ebx
	movl      52(%esp), %esi
	movl      8(%ebx), %eax
	testl     %eax, %eax
	je        .L000004F0
.L00000449:
	movl      4(%eax), %edx
	movl      80(%edx), %edi
	movl      $0, 4(%esp)
	movl      %eax, (%esp)
	call      *8(%edi)
.L0000045D:
	cmpl      $1, %eax
	jne       .L000004C8
.L00000462:
	movl      24(%ebx), %edx
	movl      4(%edi), %eax
	testl     %edx, %edx
	leal      28(%esp), %edx
	cmovne    (%edi), %eax
	movl      %edx, 8(%esp)
	movl      $0, 4(%esp)
	movl      8(%ebx), %edx
	movl      %edx, (%esp)
	call      *%eax
.L00000485:
	testl     %eax, %eax
	js        .L000004DD
.L00000489:
	movl      20(%ebx), %ecx
	movl      %eax, %edi
	movl      16(%ebx), %edx
	cmpl      %ecx, %eax
	cmovle    %eax, %ecx
	addl      %ecx, 28(%esp)
	cmpl      $-1, %edx
	cmove     %eax, %edx
	subl      %ecx, %edi
	leal      (%edx,%ecx), %ebx
	cmpl      %ebx, %eax
	cmovl     %edi, %edx
.L000004AA:
	testl     %esi, %esi
	movl      $1, %eax
	je        .L000004BA
.L000004B3:
	movl      %edx, (%esi)
	movl      $1, %eax
.L000004BA:
	addl      $32, %esp
	popl      %ebx
	popl      %esi
	popl      %edi
	ret       
.L000004C1:
	.p2align 3
.L000004C8:
	movl      PyExc_TypeError, %eax
	movl      $.LC00000000.str1.4, 4(%esp)
	movl      %eax, (%esp)
	call      PyErr_SetString
.L000004DD:
	addl      $32, %esp
	movl      $-1, %eax
	popl      %ebx
	popl      %esi
	popl      %edi
	ret       
.L000004E9:
	.p2align 4
.L000004F0:
	movl      12(%ebx), %eax
	movl      16(%ebx), %edx
	movl      %eax, 28(%esp)
	jmp       .L000004AA
	.size	buffer_getsegcount, .-buffer_getsegcount
# ----------------------
.L000004FC:
	.p2align 3
# ----------------------
	.local	buffer_getreadbuf
	.type	buffer_getreadbuf, @function
buffer_getreadbuf:
	pushl     %edi
	pushl     %esi
	pushl     %ebx
	subl      $16, %esp
	movl      36(%esp), %ecx
	movl      32(%esp), %ebx
	movl      40(%esp), %esi
	testl     %ecx, %ecx
	jne       .L000005C8
.L0000051A:
	movl      8(%ebx), %eax
	testl     %eax, %eax
	je        .L000005B8
.L00000525:
	movl      4(%eax), %edx
	movl      80(%edx), %edi
	movl      $0, 4(%esp)
	movl      %eax, (%esp)
	call      *8(%edi)
.L00000539:
	cmpl      $1, %eax
	jne       .L00000590
.L0000053E:
	movl      24(%ebx), %edx
	movl      4(%edi), %eax
	testl     %edx, %edx
	cmovne    (%edi), %eax
	movl      %esi, 8(%esp)
	movl      $0, 4(%esp)
	movl      8(%ebx), %edx
	movl      %edx, (%esp)
	call      *%eax
.L0000055D:
	testl     %eax, %eax
	js        .L000005A5
.L00000561:
	movl      20(%ebx), %ecx
	cmpl      %ecx, %eax
	cmovle    %eax, %ecx
	addl      %ecx, (%esi)
	movl      %eax, %esi
	movl      16(%ebx), %edx
	cmpl      $-1, %edx
	cmove     %eax, %edx
	subl      %ecx, %esi
	leal      (%edx,%ecx), %ebx
	cmpl      %ebx, %eax
	cmovl     %esi, %edx
.L00000580:
	movl      %edx, %eax
.L00000582:
	addl      $16, %esp
	popl      %ebx
	popl      %esi
	popl      %edi
	ret       
.L00000589:
	.p2align 4
.L00000590:
	movl      PyExc_TypeError, %eax
	movl      $.LC00000000.str1.4, 4(%esp)
	movl      %eax, (%esp)
	call      PyErr_SetString
.L000005A5:
	addl      $16, %esp
	movl      $-1, %eax
	popl      %ebx
	popl      %esi
	popl      %edi
	ret       
.L000005B1:
	.p2align 3
.L000005B8:
	movl      12(%ebx), %eax
	movl      %eax, (%esi)
	movl      16(%ebx), %edx
	jmp       .L00000580
.L000005C2:
	.p2align 3
.L000005C8:
	movl      PyExc_SystemError, %eax
	movl      $.LC0000009C.str1.4, 4(%esp)
	movl      %eax, (%esp)
	call      PyErr_SetString
.L000005DD:
	movl      $-1, %eax
	jmp       .L00000582
	.size	buffer_getreadbuf, .-buffer_getreadbuf
# ----------------------
.L000005E4:
	.p2align 4
# ----------------------
	.local	buffer_getcharbuf
	.type	buffer_getcharbuf, @function
buffer_getcharbuf:
	pushl     %edi
	pushl     %esi
	pushl     %ebx
	subl      $32, %esp
	movl      52(%esp), %ecx
	movl      48(%esp), %ebx
	testl     %ecx, %ecx
	jne       .L000006B8
.L00000606:
	movl      8(%ebx), %eax
	testl     %eax, %eax
	je        .L000006B0
.L00000611:
	movl      4(%eax), %edx
	movl      80(%edx), %esi
	movl      $0, 4(%esp)
	movl      %eax, (%esp)
	call      *8(%esi)
.L00000625:
	cmpl      $1, %eax
	jne       .L00000688
.L0000062A:
	movl      24(%ebx), %edx
	movl      4(%esi), %eax
	testl     %edx, %edx
	leal      28(%esp), %edx
	cmovne    (%esi), %eax
	movl      %edx, 8(%esp)
	movl      $0, 4(%esp)
	movl      8(%ebx), %edx
	movl      %edx, (%esp)
	call      *%eax
.L0000064D:
	testl     %eax, %eax
	js        .L0000069D
.L00000651:
	movl      20(%ebx), %ecx
	movl      %eax, %edi
	movl      16(%ebx), %edx
	movl      28(%esp), %esi
	cmpl      %ecx, %eax
	cmovle    %eax, %ecx
	cmpl      $-1, %edx
	cmove     %eax, %edx
	subl      %ecx, %edi
	leal      (%edx,%ecx), %ebx
	addl      %ecx, %esi
	cmpl      %ebx, %eax
	cmovl     %edi, %edx
.L00000674:
	movl      56(%esp), %eax
	movl      %esi, (%eax)
	movl      %edx, %eax
.L0000067C:
	addl      $32, %esp
	popl      %ebx
	popl      %esi
	popl      %edi
	ret       
.L00000683:
	.p2align 3
.L00000688:
	movl      PyExc_TypeError, %eax
	movl      $.LC00000000.str1.4, 4(%esp)
	movl      %eax, (%esp)
	call      PyErr_SetString
.L0000069D:
	addl      $32, %esp
	movl      $-1, %eax
	popl      %ebx
	popl      %esi
	popl      %edi
	ret       
.L000006A9:
	.p2align 4
.L000006B0:
	movl      12(%ebx), %esi
	movl      16(%ebx), %edx
	jmp       .L00000674
.L000006B8:
	movl      PyExc_SystemError, %eax
	movl      $.LC0000009C.str1.4, 4(%esp)
	movl      %eax, (%esp)
	call      PyErr_SetString
.L000006CD:
	movl      $-1, %eax
	jmp       .L0000067C
	.size	buffer_getcharbuf, .-buffer_getcharbuf
# ----------------------
.L000006D4:
	.p2align 4
# ----------------------
	.local	buffer_getwritebuf
	.type	buffer_getwritebuf, @function
buffer_getwritebuf:
	pushl     %edi
	pushl     %esi
	pushl     %ebx
	subl      $16, %esp
	movl      32(%esp), %ebx
	movl      40(%esp), %esi
	movl      24(%ebx), %edi
	testl     %edi, %edi
	jne       .L000007B0
.L000006F9:
	movl      36(%esp), %ecx
	testl     %ecx, %ecx
	jne       .L000007D0
.L00000705:
	movl      8(%ebx), %eax
	testl     %eax, %eax
	je        .L000007A0
.L00000710:
	movl      4(%eax), %edx
	movl      80(%edx), %edi
	movl      $0, 4(%esp)
	movl      %eax, (%esp)
	call      *8(%edi)
.L00000724:
	cmpl      $1, %eax
	jne       .L00000778
.L00000729:
	movl      24(%ebx), %edx
	movl      4(%edi), %eax
	testl     %edx, %edx
	cmovne    (%edi), %eax
	movl      %esi, 8(%esp)
	movl      $0, 4(%esp)
	movl      8(%ebx), %edx
	movl      %edx, (%esp)
	call      *%eax
.L00000748:
	testl     %eax, %eax
	js        .L0000078D
.L0000074C:
	movl      20(%ebx), %ecx
	cmpl      %ecx, %eax
	cmovle    %eax, %ecx
	addl      %ecx, (%esi)
	movl      %eax, %esi
	movl      16(%ebx), %edx
	cmpl      $-1, %edx
	cmove     %eax, %edx
	subl      %ecx, %esi
	leal      (%ecx,%edx), %ebx
	cmpl      %ebx, %eax
	cmovl     %esi, %edx
.L0000076B:
	movl      %edx, %eax
.L0000076D:
	addl      $16, %esp
	popl      %ebx
	popl      %esi
	popl      %edi
	ret       
.L00000774:
	.p2align 3
.L00000778:
	movl      PyExc_TypeError, %eax
	movl      $.LC00000000.str1.4, 4(%esp)
	movl      %eax, (%esp)
	call      PyErr_SetString
.L0000078D:
	addl      $16, %esp
	movl      $-1, %eax
	popl      %ebx
	popl      %esi
	popl      %edi
	ret       
.L00000799:
	.p2align 4
.L000007A0:
	movl      12(%ebx), %eax
	movl      %eax, (%esi)
	movl      16(%ebx), %edx
	jmp       .L0000076B
.L000007AA:
	.p2align 3
.L000007B0:
	movl      PyExc_TypeError, %eax
	movl      $.LC0000005F.str1.1, 4(%esp)
	movl      %eax, (%esp)
	call      PyErr_SetString
.L000007C5:
	movl      $-1, %eax
	jmp       .L0000076D
.L000007CC:
	.p2align 3
.L000007D0:
	movl      PyExc_SystemError, %eax
	movl      $.LC0000009C.str1.4, 4(%esp)
	movl      %eax, (%esp)
	call      PyErr_SetString
.L000007E5:
	movl      $-1, %eax
	jmp       .L0000076D
	.size	buffer_getwritebuf, .-buffer_getwritebuf
# ----------------------
.L000007EC:
	.p2align 3
# ----------------------
	.local	buffer_str
	.type	buffer_str, @function
buffer_str:
	pushl     %edi
	pushl     %esi
	pushl     %ebx
	subl      $32, %esp
	movl      48(%esp), %ebx
	movl      8(%ebx), %eax
	testl     %eax, %eax
	je        .L000008A0
.L00000805:
	movl      4(%eax), %edx
	movl      80(%edx), %esi
	movl      $0, 4(%esp)
	movl      %eax, (%esp)
	call      *8(%esi)
.L00000819:
	cmpl      $1, %eax
	jne       .L00000880
.L0000081E:
	movl      24(%ebx), %edx
	movl      4(%esi), %eax
	testl     %edx, %edx
	leal      28(%esp), %edx
	cmovne    (%esi), %eax
	movl      %edx, 8(%esp)
	movl      $0, 4(%esp)
	movl      8(%ebx), %edx
	movl      %edx, (%esp)
	call      *%eax
.L00000841:
	testl     %eax, %eax
	js        .L00000895
.L00000845:
	movl      20(%ebx), %ecx
	movl      %eax, %edi
	movl      16(%ebx), %edx
	movl      28(%esp), %esi
	cmpl      %ecx, %eax
	cmovle    %eax, %ecx
	addl      %ecx, %esi
	cmpl      $-1, %edx
	cmove     %eax, %edx
	subl      %ecx, %edi
	leal      (%edx,%ecx), %ebx
	cmpl      %ebx, %eax
	movl      %esi, 28(%esp)
	cmovl     %edi, %edx
.L0000086C:
	movl      %esi, (%esp)
	movl      %edx, 4(%esp)
	call      PyString_FromStringAndSize
.L00000878:
	addl      $32, %esp
	popl      %ebx
	popl      %esi
	popl      %edi
	ret       
.L0000087F:
	.p2align 3
.L00000880:
	movl      PyExc_TypeError, %eax
	movl      $.LC00000000.str1.4, 4(%esp)
	movl      %eax, (%esp)
	call      PyErr_SetString
.L00000895:
	addl      $32, %esp
	xorl      %eax, %eax
	popl      %ebx
	popl      %esi
	popl      %edi
	ret       
.L0000089E:
	.p2align 3
.L000008A0:
	movl      12(%ebx), %esi
	movl      16(%ebx), %edx
	movl      %esi, 28(%esp)
	jmp       .L0000086C
	.size	buffer_str, .-buffer_str
# ----------------------
.L000008AC:
	.p2align 3
# ----------------------
	.local	buffer_item
	.type	buffer_item, @function
buffer_item:
	pushl     %ebp
	pushl     %edi
	pushl     %esi
	pushl     %ebx
	subl      $44, %esp
	movl      64(%esp), %ebx
	movl      68(%esp), %esi
	movl      8(%ebx), %eax
	testl     %eax, %eax
	je        .L00000978
.L000008CA:
	movl      4(%eax), %edx
	movl      80(%edx), %edi
	movl      $0, 4(%esp)
	movl      %eax, (%esp)
	call      *8(%edi)
.L000008DE:
	cmpl      $1, %eax
	jne       .L00000958
.L000008E3:
	movl      24(%ebx), %edx
	movl      4(%edi), %eax
	testl     %edx, %edx
	leal      28(%esp), %edx
	cmovne    (%edi), %eax
	movl      %edx, 8(%esp)
	movl      $0, 4(%esp)
	movl      8(%ebx), %edx
	movl      %edx, (%esp)
	call      *%eax
.L00000906:
	testl     %eax, %eax
	js        .L0000096D
.L0000090A:
	movl      20(%ebx), %ecx
	movl      %eax, %ebp
	movl      16(%ebx), %edx
	movl      28(%esp), %edi
	cmpl      %ecx, %eax
	cmovle    %eax, %ecx
	addl      %ecx, %edi
	cmpl      $-1, %edx
	cmove     %eax, %edx
	subl      %ecx, %ebp
	leal      (%edx,%ecx), %ebx
	cmpl      %ebx, %eax
	movl      %edi, 28(%esp)
	cmovl     %ebp, %edx
.L00000931:
	testl     %esi, %esi
	js        .L00000988
.L00000935:
	cmpl      %edx, %esi
	jge       .L00000988
.L00000939:
	addl      %edi, %esi
	movl      %esi, (%esp)
	movl      $1, 4(%esp)
	call      PyString_FromStringAndSize
.L0000094B:
	addl      $44, %esp
	popl      %ebx
	popl      %esi
	popl      %edi
	popl      %ebp
	ret       
.L00000953:
	.p2align 3
.L00000958:
	movl      PyExc_TypeError, %eax
	movl      $.LC00000000.str1.4, 4(%esp)
	movl      %eax, (%esp)
	call      PyErr_SetString
.L0000096D:
	addl      $44, %esp
	xorl      %eax, %eax
	popl      %ebx
	popl      %esi
	popl      %edi
	popl      %ebp
	ret       
.L00000977:
	.p2align 3
.L00000978:
	movl      12(%ebx), %edi
	movl      16(%ebx), %edx
	movl      %edi, 28(%esp)
	jmp       .L00000931
.L00000984:
	.p2align 3
.L00000988:
	movl      PyExc_IndexError, %eax
	movl      $.LC00000073.str1.1, 4(%esp)
	movl      %eax, (%esp)
	call      PyErr_SetString
.L0000099D:
	addl      $44, %esp
	xorl      %eax, %eax
	popl      %ebx
	popl      %esi
	popl      %edi
	popl      %ebp
	ret       
	.size	buffer_item, .-buffer_item
# ----------------------
.L000009A7:
	.p2align 4
# ----------------------
	.local	buffer_slice
	.type	buffer_slice, @function
buffer_slice:
	pushl     %ebp
	pushl     %edi
	pushl     %esi
	pushl     %ebx
	subl      $44, %esp
	movl      64(%esp), %ebx
	movl      68(%esp), %esi
	movl      72(%esp), %ebp
	movl      8(%ebx), %eax
	testl     %eax, %eax
	je        .L00000A90
.L000009CE:
	movl      4(%eax), %edx
	movl      80(%edx), %edi
	movl      $0, 4(%esp)
	movl      %eax, (%esp)
	call      *8(%edi)
.L000009E2:
	cmpl      $1, %eax
	jne       .L00000A70
.L000009EB:
	movl      24(%ebx), %edx
	movl      4(%edi), %eax
	testl     %edx, %edx
	leal      28(%esp), %edx
	cmovne    (%edi), %eax
	movl      %edx, 8(%esp)
	movl      $0, 4(%esp)
	movl      8(%ebx), %edx
	movl      %edx, (%esp)
	call      *%eax
.L00000A0E:
	testl     %eax, %eax
	js        .L00000A85
.L00000A12:
	movl      20(%ebx), %ecx
	movl      16(%ebx), %edx
	movl      28(%esp), %edi
	cmpl      %ecx, %eax
	cmovle    %eax, %ecx
	addl      %ecx, %edi
	cmpl      $-1, %edx
	cmove     %eax, %edx
	leal      (%edx,%ecx), %ebx
	movl      %ebx, 12(%esp)
	movl      %eax, %ebx
	subl      %ecx, %ebx
	cmpl      12(%esp), %eax
	movl      %edi, 28(%esp)
	cmovl     %ebx, %edx
.L00000A3F:
	xorl      %eax, %eax
	testl     %esi, %esi
	cmovs     %eax, %esi
	testl     %ebp, %ebp
	cmovs     %eax, %ebp
	cmpl      %ebp, %edx
	cmovg     %ebp, %edx
	cmpl      %esi, %edx
	cmovl     %esi, %edx
	subl      %esi, %edx
	addl      %edi, %esi
	movl      %esi, (%esp)
	movl      %edx, 4(%esp)
	call      PyString_FromStringAndSize
.L00000A65:
	addl      $44, %esp
	popl      %ebx
	popl      %esi
	popl      %edi
	popl      %ebp
	ret       
.L00000A6D:
	.p2align 3
.L00000A70:
	movl      PyExc_TypeError, %eax
	movl      $.LC00000000.str1.4, 4(%esp)
	movl      %eax, (%esp)
	call      PyErr_SetString
.L00000A85:
	addl      $44, %esp
	xorl      %eax, %eax
	popl      %ebx
	popl      %esi
	popl      %edi
	popl      %ebp
	ret       
.L00000A8F:
	.p2align 3
.L00000A90:
	movl      12(%ebx), %edi
	movl      16(%ebx), %edx
	movl      %edi, 28(%esp)
	jmp       .L00000A3F
	.size	buffer_slice, .-buffer_slice
# ----------------------
.L00000A9C:
	.p2align 3
# ----------------------
	.local	buffer_compare
	.type	buffer_compare, @function
buffer_compare:
	pushl     %ebp
	pushl     %edi
	pushl     %esi
	pushl     %ebx
	subl      $44, %esp
	movl      64(%esp), %ebx
	movl      68(%esp), %esi
	movl      8(%ebx), %eax
	testl     %eax, %eax
	je        .L00000C10
.L00000ABA:
	movl      4(%eax), %edx
	movl      80(%edx), %edi
	movl      $0, 4(%esp)
	movl      %eax, (%esp)
	call      *8(%edi)
.L00000ACE:
	cmpl      $1, %eax
	jne       .L00000BD0
.L00000AD7:
	movl      24(%ebx), %ecx
	leal      24(%esp), %edx
	movl      4(%edi), %eax
	testl     %ecx, %ecx
	cmovne    (%edi), %eax
	movl      %edx, 8(%esp)
	movl      $0, 4(%esp)
	movl      8(%ebx), %edx
	movl      %edx, (%esp)
	call      *%eax
.L00000AFA:
	testl     %eax, %eax
	js        .L00000BE5
.L00000B02:
	movl      20(%ebx), %edx
	movl      %eax, %edi
	movl      16(%ebx), %ebx
	cmpl      %edx, %eax
	cmovle    %eax, %edx
	addl      %edx, 24(%esp)
	cmpl      $-1, %ebx
	cmove     %eax, %ebx
	subl      %edx, %edi
	leal      (%ebx,%edx), %ecx
	cmpl      %ecx, %eax
	movl      8(%esi), %eax
	cmovl     %edi, %ebx
	testl     %eax, %eax
	je        .L00000C25
.L00000B2E:
	movl      4(%eax), %edx
	movl      80(%edx), %edi
	movl      $0, 4(%esp)
	movl      %eax, (%esp)
	call      *8(%edi)
.L00000B42:
	cmpl      $1, %eax
	jne       .L00000BD0
.L00000B4B:
	movl      24(%esi), %edx
	movl      4(%edi), %eax
	testl     %edx, %edx
	leal      28(%esp), %edx
	cmovne    (%edi), %eax
	movl      %edx, 8(%esp)
	movl      $0, 4(%esp)
	movl      8(%esi), %edx
	movl      %edx, (%esp)
	call      *%eax
.L00000B6E:
	testl     %eax, %eax
	js        .L00000BE5
.L00000B72:
	movl      20(%esi), %edx
	movl      %eax, %ebp
	movl      28(%esp), %ecx
	movl      16(%esi), %esi
	cmpl      %edx, %eax
	cmovle    %eax, %edx
	addl      %edx, %ecx
	cmpl      $-1, %esi
	cmove     %eax, %esi
	subl      %edx, %ebp
	leal      (%esi,%edx), %edi
	cmpl      %edi, %eax
	movl      %ecx, 28(%esp)
	cmovl     %ebp, %esi
.L00000B99:
	cmpl      %ebx, %esi
	movl      %ebx, %eax
	cmovle    %esi, %eax
	testl     %eax, %eax
	jle       .L00000BF8
.L00000BA4:
	movl      %eax, 8(%esp)
	movl      24(%esp), %eax
	movl      %ecx, 4(%esp)
	movl      %eax, (%esp)
	call      memcmp
.L00000BB8:
	testl     %eax, %eax
	je        .L00000BF8
.L00000BBC:
	addl      $44, %esp
	sarl      $31, %eax
	popl      %ebx
	orl       $1, %eax
	popl      %esi
	popl      %edi
	popl      %ebp
	ret       
.L00000BCA:
	.p2align 3
.L00000BD0:
	movl      PyExc_TypeError, %eax
	movl      $.LC00000000.str1.4, 4(%esp)
	movl      %eax, (%esp)
	call      PyErr_SetString
.L00000BE5:
	movl      $-1, %eax
.L00000BEA:
	addl      $44, %esp
	popl      %ebx
	popl      %esi
	popl      %edi
	popl      %ebp
	ret       
.L00000BF2:
	.p2align 3
.L00000BF8:
	cmpl      %ebx, %esi
	movl      $-1, %eax
	jg        .L00000BEA
.L00000C01:
	xorl      %eax, %eax
	cmpl      %esi, %ebx
	setg      %al
	addl      $44, %esp
	popl      %ebx
	popl      %esi
	popl      %edi
	popl      %ebp
	ret       
.L00000C10:
	movl      12(%ebx), %eax
	movl      16(%ebx), %ebx
	movl      %eax, 24(%esp)
	movl      8(%esi), %eax
	testl     %eax, %eax
	jne       .L00000B2E
.L00000C25:
	movl      12(%esi), %ecx
	movl      16(%esi), %esi
	movl      %ecx, 28(%esp)
	jmp       .L00000B99
	.size	buffer_compare, .-buffer_compare
# ----------------------
.L00000C34:
	.p2align 4
# ----------------------
	.local	buffer_ass_item
	.type	buffer_ass_item, @function
buffer_ass_item:
	pushl     %ebp
	pushl     %edi
	pushl     %esi
	pushl     %ebx
	subl      $44, %esp
	movl      64(%esp), %ebx
	movl      72(%esp), %edi
	movl      24(%ebx), %esi
	testl     %esi, %esi
	jne       .L00000DD8
.L00000C5A:
	movl      8(%ebx), %eax
	testl     %eax, %eax
	je        .L00000D88
.L00000C65:
	movl      4(%eax), %edx
	movl      80(%edx), %ebp
	movl      $0, 4(%esp)
	movl      %eax, (%esp)
	call      *8(%ebp)
.L00000C79:
	cmpl      $1, %eax
	jne       .L00000D60
.L00000C82:
	movl      24(%ebx), %ecx
	leal      24(%esp), %edx
	movl      4(%ebp), %eax
	testl     %ecx, %ecx
	cmovne    (%ebp), %eax
	movl      %edx, 8(%esp)
	movl      $0, 4(%esp)
	movl      8(%ebx), %edx
	movl      %edx, (%esp)
	call      *%eax
.L00000CA6:
	testl     %eax, %eax
	js        .L00000D75
.L00000CAE:
	movl      20(%ebx), %ecx
	movl      %eax, %ebp
	movl      16(%ebx), %edx
	cmpl      %ecx, %eax
	cmovle    %eax, %ecx
	addl      %ecx, 24(%esp)
	cmpl      $-1, %edx
	cmove     %eax, %edx
	subl      %ecx, %ebp
	leal      (%ecx,%edx), %ebx
	cmpl      %ebx, %eax
	cmovl     %ebp, %edx
.L00000CCF:
	movl      68(%esp), %eax
	testl     %eax, %eax
	js        .L00000DB8
.L00000CDB:
	cmpl      %edx, 68(%esp)
	jge       .L00000DB8
.L00000CE5:
	testl     %edi, %edi
	je        .L00000E18
.L00000CED:
	movl      4(%edi), %eax
	movl      80(%eax), %ebx
	testl     %ebx, %ebx
	je        .L00000E18
.L00000CFB:
	movl      (%ebx), %edx
	testl     %edx, %edx
	je        .L00000E18
.L00000D05:
	movl      8(%ebx), %eax
	testl     %eax, %eax
	je        .L00000E18
.L00000D10:
	movl      $0, 4(%esp)
	movl      %edi, (%esp)
	call      *%eax
.L00000D1D:
	cmpl      $1, %eax
	jne       .L00000D98
.L00000D22:
	leal      28(%esp), %eax
	movl      %eax, 8(%esp)
	movl      $0, 4(%esp)
	movl      %edi, (%esp)
	call      *(%ebx)
.L00000D37:
	testl     %eax, %eax
	js        .L00000D75
.L00000D3B:
	cmpl      $1, %eax
	jne       .L00000DF8
.L00000D44:
	movl      28(%esp), %eax
	movl      68(%esp), %ecx
	movzbl    (%eax), %edx
	movl      24(%esp), %eax
	movb      %dl, (%eax,%ecx)
.L00000D56:
	addl      $44, %esp
	movl      %esi, %eax
	popl      %ebx
	popl      %esi
	popl      %edi
	popl      %ebp
	ret       
.L00000D60:
	movl      PyExc_TypeError, %eax
	movl      $.LC00000000.str1.4, 4(%esp)
	movl      %eax, (%esp)
	call      PyErr_SetString
.L00000D75:
	addl      $44, %esp
	movl      $-1, %esi
	popl      %ebx
	movl      %esi, %eax
	popl      %esi
	popl      %edi
	popl      %ebp
	ret       
.L00000D84:
	.p2align 3
.L00000D88:
	movl      12(%ebx), %eax
	movl      16(%ebx), %edx
	movl      %eax, 24(%esp)
	jmp       .L00000CCF
.L00000D97:
	.p2align 3
.L00000D98:
	movl      PyExc_TypeError, %eax
	movl      $-1, %esi
	movl      $.LC00000000.str1.4, 4(%esp)
	movl      %eax, (%esp)
	call      PyErr_SetString
.L00000DB2:
	jmp       .L00000D56
.L00000DB4:
	.p2align 3
.L00000DB8:
	movl      PyExc_IndexError, %eax
	movl      $-1, %esi
	movl      $.LC000000C4.str1.4, 4(%esp)
	movl      %eax, (%esp)
	call      PyErr_SetString
.L00000DD2:
	jmp       .L00000D56
.L00000DD7:
	.p2align 3
.L00000DD8:
	movl      PyExc_TypeError, %eax
	movl      $-1, %esi
	movl      $.LC0000005F.str1.1, 4(%esp)
	movl      %eax, (%esp)
	call      PyErr_SetString
.L00000DF2:
	jmp       .L00000D56
.L00000DF7:
	.p2align 3
.L00000DF8:
	movl      PyExc_TypeError, %eax
	movl      $-1, %esi
	movl      $.LC000000EC.str1.4, 4(%esp)
	movl      %eax, (%esp)
	call      PyErr_SetString
.L00000E12:
	jmp       .L00000D56
.L00000E17:
	.p2align 3
.L00000E18:
	call      PyErr_BadArgument
.L00000E1D:
	movl      $-1, %esi
	jmp       .L00000D56
	.size	buffer_ass_item, .-buffer_ass_item
# ----------------------
.L00000E27:
	.p2align 4
# ----------------------
	.local	buffer_concat
	.type	buffer_concat, @function
buffer_concat:
	pushl     %ebp
	pushl     %edi
	pushl     %esi
	pushl     %ebx
	subl      $44, %esp
	movl      68(%esp), %ebx
	movl      64(%esp), %edi
	movl      4(%ebx), %eax
	movl      80(%eax), %esi
	testl     %esi, %esi
	je        .L00000FC0
.L00000E4D:
	movl      (%esi), %ecx
	testl     %ecx, %ecx
	je        .L00000FC0
.L00000E57:
	movl      8(%esi), %eax
	testl     %eax, %eax
	je        .L00000FC0
.L00000E62:
	movl      $0, 4(%esp)
	movl      %ebx, (%esp)
	call      *%eax
.L00000E6F:
	cmpl      $1, %eax
	jne       .L00000F90
.L00000E78:
	movl      8(%edi), %eax
	testl     %eax, %eax
	je        .L00000FB0
.L00000E83:
	movl      4(%eax), %edx
	movl      80(%edx), %ebp
	movl      $0, 4(%esp)
	movl      %eax, (%esp)
	call      *8(%ebp)
.L00000E97:
	cmpl      $1, %eax
	jne       .L00000EF8
.L00000E9C:
	movl      24(%edi), %edx
	movl      4(%ebp), %eax
	testl     %edx, %edx
	leal      24(%esp), %edx
	cmovne    (%ebp), %eax
	movl      %edx, 8(%esp)
	movl      $0, 4(%esp)
	movl      8(%edi), %edx
	movl      %edx, (%esp)
	call      *%eax
.L00000EC0:
	testl     %eax, %eax
	js        .L00000F0D
.L00000EC4:
	movl      20(%edi), %edx
	movl      %eax, %ebp
	movl      16(%edi), %edi
	cmpl      %edx, %eax
	cmovle    %eax, %edx
	addl      %edx, 24(%esp)
	cmpl      $-1, %edi
	cmove     %eax, %edi
	subl      %edx, %ebp
	leal      (%edi,%edx), %ecx
	cmpl      %ecx, %eax
	cmovl     %ebp, %edi
.L00000EE5:
	testl     %edi, %edi
	jne       .L00000F18
.L00000EE9:
	addl      $1, (%ebx)
	movl      %ebx, %eax
.L00000EEE:
	addl      $44, %esp
	popl      %ebx
	popl      %esi
	popl      %edi
	popl      %ebp
	ret       
.L00000EF6:
	.p2align 3
.L00000EF8:
	movl      PyExc_TypeError, %eax
	movl      $.LC00000000.str1.4, 4(%esp)
	movl      %eax, (%esp)
	call      PyErr_SetString
.L00000F0D:
	addl      $44, %esp
	xorl      %eax, %eax
	popl      %ebx
	popl      %esi
	popl      %edi
	popl      %ebp
	ret       
.L00000F17:
	.p2align 3
.L00000F18:
	leal      28(%esp), %eax
	movl      %eax, 8(%esp)
	movl      $0, 4(%esp)
	movl      %ebx, (%esp)
	call      *(%esi)
.L00000F2D:
	testl     %eax, %eax
	movl      %eax, %esi
	js        .L00000F0D
.L00000F33:
	leal      (%eax,%edi), %ebp
	movl      %ebp, 4(%esp)
	movl      $0, (%esp)
	call      PyString_FromStringAndSize
.L00000F46:
	movl      %edi, 8(%esp)
	leal      20(%eax), %edx
	movl      %eax, %ebx
	movl      24(%esp), %eax
	movl      %edx, (%esp)
	movl      %edx, 12(%esp)
	movl      %eax, 4(%esp)
	call      memcpy
.L00000F63:
	movl      12(%esp), %edx
	movl      28(%esp), %eax
	movl      %esi, 8(%esp)
	addl      %edx, %edi
	movl      %edi, (%esp)
	movl      %eax, 4(%esp)
	call      memcpy
.L00000F7D:
	movl      %ebx, %eax
	movb      $0, 20(%ebx,%ebp)
	addl      $44, %esp
	popl      %ebx
	popl      %esi
	popl      %edi
	popl      %ebp
	ret       
.L00000F8C:
	.p2align 3
.L00000F90:
	movl      PyExc_TypeError, %eax
	movl      $.LC00000000.str1.4, 4(%esp)
	movl      %eax, (%esp)
	call      PyErr_SetString
.L00000FA5:
	addl      $44, %esp
	xorl      %eax, %eax
	popl      %ebx
	popl      %esi
	popl      %edi
	popl      %ebp
	ret       
.L00000FAF:
	.p2align 3
.L00000FB0:
	movl      12(%edi), %eax
	movl      16(%edi), %edi
	movl      %eax, 24(%esp)
	jmp       .L00000EE5
.L00000FBF:
	.p2align 3
.L00000FC0:
	call      PyErr_BadArgument
.L00000FC5:
	xorl      %eax, %eax
	jmp       .L00000EEE
	.size	buffer_concat, .-buffer_concat
# ----------------------
.L00000FCC:
	.p2align 3
# ----------------------
	.local	buffer_ass_slice
	.type	buffer_ass_slice, @function
buffer_ass_slice:
	pushl     %ebp
	pushl     %edi
	pushl     %esi
	pushl     %ebx
	subl      $44, %esp
	movl      64(%esp), %ebx
	movl      76(%esp), %edi
	movl      24(%ebx), %esi
	testl     %esi, %esi
	jne       .L000011A8
.L00000FEA:
	testl     %edi, %edi
	je        .L00001198
.L00000FF2:
	movl      4(%edi), %eax
	movl      80(%eax), %ebp
	testl     %ebp, %ebp
	je        .L00001198
.L00001000:
	movl      (%ebp), %eax
	testl     %eax, %eax
	je        .L00001198
.L0000100B:
	movl      8(%ebp), %eax
	testl     %eax, %eax
	je        .L00001198
.L00001016:
	movl      $0, 4(%esp)
	movl      %edi, (%esp)
	call      *%eax
.L00001023:
	cmpl      $1, %eax
	jne       .L00001158
.L0000102C:
	movl      8(%ebx), %eax
	testl     %eax, %eax
	je        .L00001148
.L00001037:
	movl      4(%eax), %edx
	movl      80(%edx), %edx
	movl      $0, 4(%esp)
	movl      %eax, (%esp)
	movl      %edx, 12(%esp)
	call      *8(%edx)
.L0000104F:
	movl      12(%esp), %edx
	cmpl      $1, %eax
	jne       .L00001120
.L0000105C:
	movl      24(%ebx), %ecx
	movl      4(%edx), %eax
	testl     %ecx, %ecx
	cmovne    (%edx), %eax
	leal      24(%esp), %edx
	movl      %edx, 8(%esp)
	movl      $0, 4(%esp)
	movl      8(%ebx), %edx
	movl      %edx, (%esp)
	call      *%eax
.L0000107F:
	testl     %eax, %eax
	js        .L00001135
.L00001087:
	movl      20(%ebx), %edx
	movl      16(%ebx), %ebx
	cmpl      %edx, %eax
	cmovle    %eax, %edx
	addl      %edx, 24(%esp)
	cmpl      $-1, %ebx
	cmove     %eax, %ebx
	leal      (%ebx,%edx), %ecx
	movl      %ecx, 12(%esp)
	movl      %eax, %ecx
	subl      %edx, %ecx
	cmpl      12(%esp), %eax
	cmovl     %ecx, %ebx
.L000010AE:
	leal      28(%esp), %eax
	movl      %eax, 8(%esp)
	movl      $0, 4(%esp)
	movl      %edi, (%esp)
	call      *(%ebp)
.L000010C4:
	testl     %eax, %eax
	js        .L00001135
.L000010C8:
	movl      68(%esp), %ecx
	xorl      %edx, %edx
	testl     %ecx, %ecx
	js        .L000010DD
.L000010D2:
	cmpl      68(%esp), %ebx
	movl      %ebx, %edx
	cmovg     68(%esp), %edx
.L000010DD:
	xorl      %ecx, %ecx
	cmpl      72(%esp), %edx
	jg        .L000010F2
.L000010E5:
	cmpl      72(%esp), %ebx
	movl      %ebx, %ecx
	cmovg     72(%esp), %ecx
	subl      %edx, %ecx
.L000010F2:
	cmpl      %ecx, %eax
	jne       .L00001178
.L000010FA:
	testl     %eax, %eax
	je        .L00001116
.L000010FE:
	movl      %eax, 8(%esp)
	movl      28(%esp), %eax
	addl      24(%esp), %edx
	movl      %eax, 4(%esp)
	movl      %edx, (%esp)
	call      memcpy
.L00001116:
	addl      $44, %esp
	movl      %esi, %eax
	popl      %ebx
	popl      %esi
	popl      %edi
	popl      %ebp
	ret       
.L00001120:
	movl      PyExc_TypeError, %eax
	movl      $.LC00000000.str1.4, 4(%esp)
	movl      %eax, (%esp)
	call      PyErr_SetString
.L00001135:
	addl      $44, %esp
	movl      $-1, %esi
	popl      %ebx
	movl      %esi, %eax
	popl      %esi
	popl      %edi
	popl      %ebp
	ret       
.L00001144:
	.p2align 3
.L00001148:
	movl      12(%ebx), %eax
	movl      16(%ebx), %ebx
	movl      %eax, 24(%esp)
	jmp       .L000010AE
.L00001157:
	.p2align 3
.L00001158:
	movl      PyExc_TypeError, %eax
	movl      $-1, %esi
	movl      $.LC00000000.str1.4, 4(%esp)
	movl      %eax, (%esp)
	call      PyErr_SetString
.L00001172:
	jmp       .L00001116
.L00001174:
	.p2align 3
.L00001178:
	movl      PyExc_TypeError, %eax
	movl      $-1, %esi
	movl      $.LC00000110.str1.4, 4(%esp)
	movl      %eax, (%esp)
	call      PyErr_SetString
.L00001192:
	jmp       .L00001116
.L00001197:
	.p2align 3
.L00001198:
	call      PyErr_BadArgument
.L0000119D:
	movl      $-1, %esi
	jmp       .L00001116
.L000011A7:
	.p2align 3
.L000011A8:
	movl      PyExc_TypeError, %eax
	movl      $-1, %esi
	movl      $.LC0000005F.str1.1, 4(%esp)
	movl      %eax, (%esp)
	call      PyErr_SetString
.L000011C2:
	jmp       .L00001116
	.size	buffer_ass_slice, .-buffer_ass_slice
# ----------------------
.L000011C7:
	.p2align 4
# ----------------------
	.local	buffer_hash
	.type	buffer_hash, @function
buffer_hash:
	pushl     %ebp
	pushl     %edi
	pushl     %esi
	pushl     %ebx
	subl      $44, %esp
	movl      64(%esp), %esi
	movl      28(%esi), %ebx
	cmpl      $-1, %ebx
	je        .L000011F0
.L000011E3:
	addl      $44, %esp
	movl      %ebx, %eax
	popl      %ebx
	popl      %esi
	popl      %edi
	popl      %ebp
	ret       
.L000011ED:
	.p2align 3
.L000011F0:
	movl      24(%esi), %ecx
	testl     %ecx, %ecx
	je        .L000012DC
.L000011FB:
	movl      8(%esi), %eax
	testl     %eax, %eax
	je        .L000012D0
.L00001206:
	movl      4(%eax), %edx
	movl      80(%edx), %edi
	movl      $0, 4(%esp)
	movl      %eax, (%esp)
	call      *8(%edi)
.L0000121A:
	cmpl      $1, %eax
	jne       .L000012B0
.L00001223:
	movl      24(%esi), %edx
	movl      4(%edi), %eax
	testl     %edx, %edx
	leal      28(%esp), %edx
	cmovne    (%edi), %eax
	movl      %edx, 8(%esp)
	movl      $0, 4(%esp)
	movl      8(%esi), %edx
	movl      %edx, (%esp)
	call      *%eax
.L00001246:
	testl     %eax, %eax
	js        .L000011E3
.L0000124A:
	movl      20(%esi), %ecx
	movl      %eax, %ebp
	movl      28(%esp), %edx
	movl      16(%esi), %ebx
	cmpl      %ecx, %eax
	cmovle    %eax, %ecx
	addl      %ecx, %edx
	cmpl      $-1, %ebx
	cmove     %eax, %ebx
	subl      %ecx, %ebp
	leal      (%ebx,%ecx), %edi
	cmpl      %edi, %eax
	movl      %edx, 28(%esp)
	cmovl     %ebp, %ebx
.L00001271:
	movzbl    (%edx), %eax
	sall      $7, %eax
	testl     %ebx, %ebx
	jle       .L00001293
.L0000127B:
	leal      (%edx,%ebx), %edi
	.p2align 3
.L00001280:
	addl      $1, %edx
	imull     $1000003, %eax, %ecx
	movzbl    -1(%edx), %eax
	xorl      %ecx, %eax
	cmpl      %edi, %edx
	jne       .L00001280
.L00001293:
	xorl      %ebx, %eax
	movl      $-2, %edx
	cmpl      $-1, %eax
	cmove     %edx, %eax
	movl      %eax, 28(%esi)
	movl      %eax, %ebx
	addl      $44, %esp
	movl      %ebx, %eax
	popl      %ebx
	popl      %esi
	popl      %edi
	popl      %ebp
	ret       
.L000012AF:
	.p2align 3
.L000012B0:
	movl      PyExc_TypeError, %eax
	movl      $.LC00000000.str1.4, 4(%esp)
	movl      %eax, (%esp)
	call      PyErr_SetString
.L000012C5:
	addl      $44, %esp
	movl      %ebx, %eax
	popl      %ebx
	popl      %esi
	popl      %edi
	popl      %ebp
	ret       
.L000012CF:
	.p2align 3
.L000012D0:
	movl      12(%esi), %edx
	movl      16(%esi), %ebx
	movl      %edx, 28(%esp)
	jmp       .L00001271
.L000012DC:
	movl      PyExc_TypeError, %eax
	movl      $.LC00000140.str1.4, 4(%esp)
	movl      %eax, (%esp)
	call      PyErr_SetString
.L000012F1:
	jmp       .L000011E3
	.size	buffer_hash, .-buffer_hash
# ----------------------
.L000012F6:
	.p2align 4
# ----------------------
	.globl	PyBuffer_FromObject
	.type	PyBuffer_FromObject, @function
PyBuffer_FromObject:
	pushl     %esi
	pushl     %ebx
	subl      $20, %esp
	movl      32(%esp), %ecx
	movl      36(%esp), %ebx
	movl      4(%ecx), %edx
	movl      80(%edx), %eax
	testl     %eax, %eax
	je        .L000013E0
.L0000131B:
	movl      (%eax), %esi
	testl     %esi, %esi
	je        .L000013E0
.L00001325:
	movl      8(%eax), %eax
	testl     %eax, %eax
	je        .L000013E0
.L00001330:
	testl     %ebx, %ebx
	js        .L00001400
.L00001338:
	cmpl      $PyBuffer_Type, %edx
	je        .L00001350
.L00001340:
	cmpl      $-1, 40(%esp)
	jl        .L0000141D
.L0000134B:
	movl      %ecx, %esi
	jmp       .L00001392
.L0000134F:
	.p2align 3
.L00001350:
	movl      8(%ecx), %esi
	testl     %esi, %esi
	je        .L00001340
.L00001357:
	movl      16(%ecx), %eax
	cmpl      $-1, %eax
	je        .L00001380
.L0000135F:
	xorl      %edx, %edx
	subl      %ebx, %eax
	cmovns    %eax, %edx
	cmpl      %edx, 40(%esp)
	jg        .L00001373
.L0000136C:
	cmpl      $-1, 40(%esp)
	jne       .L00001380
.L00001373:
	addl      20(%ecx), %ebx
	movl      %edx, 40(%esp)
	jmp       .L0000138E
.L0000137C:
	.p2align 3
.L00001380:
	addl      20(%ecx), %ebx
	cmpl      $-1, 40(%esp)
	jl        .L0000141D
.L0000138E:
	testl     %ebx, %ebx
	js        .L00001400
.L00001392:
	movl      PyBuffer_Type+16, %eax
	movl      %eax, (%esp)
	call      PyObject_Malloc
.L0000139F:
	movl      $PyBuffer_Type, 4(%esp)
	movl      %eax, (%esp)
	call      PyObject_Init
.L000013AF:
	testl     %eax, %eax
	je        .L00001419
.L000013B3:
	addl      $1, (%esi)
	movl      %esi, 8(%eax)
	movl      40(%esp), %esi
	movl      $0, 12(%eax)
	movl      %ebx, 20(%eax)
	movl      $1, 24(%eax)
	movl      %esi, 16(%eax)
	movl      $-1, 28(%eax)
.L000013D8:
	addl      $20, %esp
	popl      %ebx
	popl      %esi
	ret       
.L000013DE:
	.p2align 3
.L000013E0:
	movl      PyExc_TypeError, %eax
	movl      $.LC0000002A.str1.1, 4(%esp)
	movl      %eax, (%esp)
	call      PyErr_SetString
.L000013F5:
	xorl      %eax, %eax
	jmp       .L000013D8
.L000013F9:
	.p2align 4
.L00001400:
	movl      PyExc_ValueError, %eax
	movl      $.LC0000007C.str1.4, 4(%esp)
	movl      %eax, (%esp)
	call      PyErr_SetString
.L00001415:
	xorl      %eax, %eax
	jmp       .L000013D8
.L00001419:
	xorl      %eax, %eax
	jmp       .L000013D8
.L0000141D:
	movl      PyExc_ValueError, %eax
	movl      $.LC00000041.str1.1, 4(%esp)
	movl      %eax, (%esp)
	call      PyErr_SetString
.L00001432:
	xorl      %eax, %eax
	jmp       .L000013D8
	.size	PyBuffer_FromObject, .-PyBuffer_FromObject
# ----------------------
.L00001436:
	.p2align 4
# ----------------------
	.globl	PyBuffer_FromReadWriteObject
	.type	PyBuffer_FromReadWriteObject, @function
PyBuffer_FromReadWriteObject:
	pushl     %esi
	pushl     %ebx
	subl      $20, %esp
	movl      32(%esp), %ecx
	movl      36(%esp), %ebx
	movl      4(%ecx), %edx
	movl      80(%edx), %eax
	testl     %eax, %eax
	je        .L00001520
.L0000145B:
	movl      4(%eax), %esi
	testl     %esi, %esi
	je        .L00001520
.L00001466:
	movl      8(%eax), %eax
	testl     %eax, %eax
	je        .L00001520
.L00001471:
	testl     %ebx, %ebx
	js        .L00001540
.L00001479:
	cmpl      $PyBuffer_Type, %edx
	je        .L00001490
.L00001481:
	cmpl      $-1, 40(%esp)
	jl        .L0000155D
.L0000148C:
	movl      %ecx, %esi
	jmp       .L000014D2
.L00001490:
	movl      8(%ecx), %esi
	testl     %esi, %esi
	je        .L00001481
.L00001497:
	movl      16(%ecx), %eax
	cmpl      $-1, %eax
	je        .L000014C0
.L0000149F:
	xorl      %edx, %edx
	subl      %ebx, %eax
	cmovns    %eax, %edx
	cmpl      %edx, 40(%esp)
	jg        .L000014B3
.L000014AC:
	cmpl      $-1, 40(%esp)
	jne       .L000014C0
.L000014B3:
	addl      20(%ecx), %ebx
	movl      %edx, 40(%esp)
	jmp       .L000014CE
.L000014BC:
	.p2align 3
.L000014C0:
	addl      20(%ecx), %ebx
	cmpl      $-1, 40(%esp)
	jl        .L0000155D
.L000014CE:
	testl     %ebx, %ebx
	js        .L00001540
.L000014D2:
	movl      PyBuffer_Type+16, %eax
	movl      %eax, (%esp)
	call      PyObject_Malloc
.L000014DF:
	movl      $PyBuffer_Type, 4(%esp)
	movl      %eax, (%esp)
	call      PyObject_Init
.L000014EF:
	testl     %eax, %eax
	je        .L00001559
.L000014F3:
	addl      $1, (%esi)
	movl      %esi, 8(%eax)
	movl      40(%esp), %esi
	movl      $0, 12(%eax)
	movl      %ebx, 20(%eax)
	movl      $0, 24(%eax)
	movl      %esi, 16(%eax)
	movl      $-1, 28(%eax)
.L00001518:
	addl      $20, %esp
	popl      %ebx
	popl      %esi
	ret       
.L0000151E:
	.p2align 3
.L00001520:
	movl      PyExc_TypeError, %eax
	movl      $.LC0000002A.str1.1, 4(%esp)
	movl      %eax, (%esp)
	call      PyErr_SetString
.L00001535:
	xorl      %eax, %eax
	jmp       .L00001518
.L00001539:
	.p2align 4
.L00001540:
	movl      PyExc_ValueError, %eax
	movl      $.LC0000007C.str1.4, 4(%esp)
	movl      %eax, (%esp)
	call      PyErr_SetString
.L00001555:
	xorl      %eax, %eax
	jmp       .L00001518
.L00001559:
	xorl      %eax, %eax
	jmp       .L00001518
.L0000155D:
	movl      PyExc_ValueError, %eax
	movl      $.LC00000041.str1.1, 4(%esp)
	movl      %eax, (%esp)
	call      PyErr_SetString
.L00001572:
	xorl      %eax, %eax
	jmp       .L00001518
	.size	PyBuffer_FromReadWriteObject, .-PyBuffer_FromReadWriteObject
# ----------------------
.L00001576:
	.p2align 4
# ----------------------
	.globl	PyBuffer_FromMemory
	.type	PyBuffer_FromMemory, @function
PyBuffer_FromMemory:
	pushl     %ebx
	subl      $24, %esp
	movl      36(%esp), %ebx
	cmpl      $-1, %ebx
	jl        .L000015E8
.L0000158D:
	movl      PyBuffer_Type+16, %eax
	movl      %eax, (%esp)
	call      PyObject_Malloc
.L0000159A:
	movl      $PyBuffer_Type, 4(%esp)
	movl      %eax, (%esp)
	call      PyObject_Init
.L000015AA:
	testl     %eax, %eax
	je        .L000015E0
.L000015AE:
	movl      32(%esp), %edx
	movl      $0, 8(%eax)
	movl      %ebx, 16(%eax)
	movl      $0, 20(%eax)
	movl      %edx, 12(%eax)
	movl      $1, 24(%eax)
	movl      $-1, 28(%eax)
.L000015D4:
	addl      $24, %esp
	popl      %ebx
	ret       
.L000015D9:
	.p2align 4
.L000015E0:
	xorl      %eax, %eax
	jmp       .L000015D4
.L000015E4:
	.p2align 3
.L000015E8:
	movl      PyExc_ValueError, %eax
	movl      $.LC00000041.str1.1, 4(%esp)
	movl      %eax, (%esp)
	call      PyErr_SetString
.L000015FD:
	xorl      %eax, %eax
	jmp       .L000015D4
	.size	PyBuffer_FromMemory, .-PyBuffer_FromMemory
# ----------------------
.L00001601:
	.p2align 4
# ----------------------
	.globl	PyBuffer_FromReadWriteMemory
	.type	PyBuffer_FromReadWriteMemory, @function
PyBuffer_FromReadWriteMemory:
	pushl     %ebx
	subl      $24, %esp
	movl      36(%esp), %ebx
	cmpl      $-1, %ebx
	jl        .L00001678
.L0000161D:
	movl      PyBuffer_Type+16, %eax
	movl      %eax, (%esp)
	call      PyObject_Malloc
.L0000162A:
	movl      $PyBuffer_Type, 4(%esp)
	movl      %eax, (%esp)
	call      PyObject_Init
.L0000163A:
	testl     %eax, %eax
	je        .L00001670
.L0000163E:
	movl      32(%esp), %edx
	movl      $0, 8(%eax)
	movl      %ebx, 16(%eax)
	movl      $0, 20(%eax)
	movl      %edx, 12(%eax)
	movl      $0, 24(%eax)
	movl      $-1, 28(%eax)
.L00001664:
	addl      $24, %esp
	popl      %ebx
	ret       
.L00001669:
	.p2align 4
.L00001670:
	xorl      %eax, %eax
	jmp       .L00001664
.L00001674:
	.p2align 3
.L00001678:
	movl      PyExc_ValueError, %eax
	movl      $.LC00000041.str1.1, 4(%esp)
	movl      %eax, (%esp)
	call      PyErr_SetString
.L0000168D:
	xorl      %eax, %eax
	jmp       .L00001664
	.size	PyBuffer_FromReadWriteMemory, .-PyBuffer_FromReadWriteMemory
# ----------------------
.L00001691:
	.p2align 4
# ----------------------
	.globl	PyBuffer_New
	.type	PyBuffer_New, @function
PyBuffer_New:
	pushl     %ebx
	subl      $24, %esp
	movl      32(%esp), %ebx
	testl     %ebx, %ebx
	js        .L00001710
.L000016AC:
	movl      $2147483647, %eax
	subl      %ebx, %eax
	cmpl      $31, %eax
	jbe       .L00001700
.L000016B8:
	leal      32(%ebx), %eax
	movl      %eax, (%esp)
	call      PyObject_Malloc
.L000016C3:
	testl     %eax, %eax
	je        .L00001700
.L000016C7:
	leal      32(%eax), %edx
	movl      $PyBuffer_Type, 4(%eax)
	movl      $1, (%eax)
	movl      $0, 8(%eax)
	movl      %edx, 12(%eax)
	movl      %ebx, 16(%eax)
	movl      $0, 20(%eax)
	movl      $0, 24(%eax)
	movl      $-1, 28(%eax)
.L000016F9:
	addl      $24, %esp
	popl      %ebx
	ret       
.L000016FE:
	.p2align 3
.L00001700:
	addl      $24, %esp
	popl      %ebx
	jmp       PyErr_NoMemory
.L00001709:
	.p2align 4
.L00001710:
	movl      PyExc_ValueError, %eax
	movl      $.LC00000041.str1.1, 4(%esp)
	movl      %eax, (%esp)
	call      PyErr_SetString
.L00001725:
	xorl      %eax, %eax
	jmp       .L000016F9
	.size	PyBuffer_New, .-PyBuffer_New
# ----------------------
	.ident	"GCC: (Ubuntu 4.8.4-2ubuntu1~14.04.3) 4.8.4"
	.section	.note.GNU-stack,"",@progbits
