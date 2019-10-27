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
	.section       .rodata.str1.8,"aMS",@progbits,1
.LC00000000.str1.8:
	.string	"single-segment buffer object expected"
# ----------------------
.LC00000026.str1.8:
	.value	0
	.align 4
.LC00000028.str1.8:
	.string	"<%s buffer ptr %p, size %d at %p>"
# ----------------------
.LC0000004A.str1.8:
	.zero	6
	.align 8
.LC00000050.str1.8:
	.string	"<%s buffer for %p, size %d, offset %d at %p>"
# ----------------------
.LC0000007D.str1.8:
	.zero	3
	.align 4
.LC00000080.str1.8:
	.string	"offset must be zero or positive"
.LC000000A0.str1.8:
	.string	"accessing non-existent buffer segment"
# ----------------------
.LC000000C6.str1.8:
	.value	0
	.align 4
.LC000000C8.str1.8:
	.string	"buffer assignment index out of range"
# ----------------------
.LC000000ED.str1.8:
	.zero	3
	.align 4
.LC000000F0.str1.8:
	.string	"right operand must be a single byte"
# ----------------------
.LC00000114.str1.8:
	.long	0
	.align 8
.LC00000118.str1.8:
	.string	"right operand length must match slice length"
# ----------------------
.LC00000145.str1.8:
	.zero	3
	.align 4
.LC00000148.str1.8:
	.string	"writable buffers are not hashable"
# ----------------------
	.data
	.globl	PyBuffer_Type
	.type	PyBuffer_Type, @object
PyBuffer_Type:
	.long	1
	.long	0
	.quad	PyType_Type
	.zero	8
	.quad	.LC0000008D.str1.1
	.long	56
	.long	0
	.quad	buffer_dealloc
	.zero	24
	.quad	buffer_compare
	.quad	buffer_repr
	.zero	8
	.quad	buffer_as_sequence
	.zero	8
	.quad	buffer_hash
	.zero	8
	.quad	buffer_str
	.quad	PyObject_GenericGetAttr
	.zero	8
	.quad	buffer_as_buffer
	.long	491
	.long	0
	.quad	buffer_doc
	.zero	128
	.quad	buffer_new
	.zero	64
	.size	PyBuffer_Type, 376
# ----------------------
.LD00000178:
	.zero	8
# ----------------------
	.local	buffer_as_buffer
	.type	buffer_as_buffer, @object
buffer_as_buffer:
	.quad	buffer_getreadbuf
	.quad	buffer_getwritebuf
	.quad	buffer_getsegcount
	.quad	buffer_getcharbuf
	.size	buffer_as_buffer, 32
# ----------------------
	.local	buffer_as_sequence
	.type	buffer_as_sequence, @object
buffer_as_sequence:
	.quad	buffer_length
	.quad	buffer_concat
	.quad	buffer_repeat
	.quad	buffer_item
	.quad	buffer_slice
	.quad	buffer_ass_item
	.quad	buffer_ass_slice
	.zero	24
	.size	buffer_as_sequence, 80
# ----------------------
.LD000001F0:
	.zero	16
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
	pushq     %r14
	pushq     %r13
	pushq     %r12
	movl      %esi, %r12d
	pushq     %rbp
	pushq     %rbx
	movq      %rdi, %rbx
	subq      $16, %rsp
	movq      16(%rdi), %rdi
	testq     %rdi, %rdi
	je        .L00000110
.L0000001F:
	movq      8(%rdi), %rax
	xorl      %esi, %esi
	movq      152(%rax), %rbp
	call      *16(%rbp)
.L0000002F:
	cmpl      $1, %eax
	jne       .L000000F0
.L00000038:
	movl      40(%rbx), %edx
	movq      8(%rbp), %rax
	movq      16(%rbx), %rdi
	testl     %edx, %edx
	cmovne    (%rbp), %rax
	movq      %rsp, %rdx
	xorl      %esi, %esi
	call      *%rax
.L00000051:
	testl     %eax, %eax
	js        .L00000101
.L00000059:
	movl      36(%rbx), %edx
	movl      32(%rbx), %ebp
	movl      %eax, %esi
	cmpl      %edx, %eax
	cmovle    %eax, %edx
	movslq    %edx, %rcx
	addq      %rcx, (%rsp)
	cmpl      $-1, %ebp
	cmove     %eax, %ebp
	subl      %edx, %esi
	leal      (%rbp,%rdx), %ecx
	cmpl      %ecx, %eax
	cmovl     %esi, %ebp
.L0000007E:
	xorl      %ebx, %ebx
	testl     %r12d, %r12d
	cmovns    %r12d, %ebx
	xorl      %edi, %edi
	movl      %ebx, %esi
	imull     %ebp, %esi
	call      PyString_FromStringAndSize
.L00000093:
	testq     %rax, %rax
	movq      %rax, %r13
	je        .L00000101
.L0000009B:
	testl     %ebx, %ebx
	leaq      36(%r13), %r12
	leal      -1(%rbx), %r14d
	je        .L000000D8
.L000000A7:
	movslq    %ebp, %rbp
	movq      %r12, %rcx
	.p2align 3
.L000000B0:
	movq      (%rsp), %rsi
	movq      %rcx, %rdi
	movq      %rbp, %rdx
	call      memcpy
.L000000BF:
	movq      %rax, %rcx
	addq      %rbp, %rcx
	subl      $1, %ebx
	jne       .L000000B0
.L000000CA:
	movslq    %r14d, %r14
	addq      $1, %r14
	imulq     %r14, %rbp
	addq      %rbp, %r12
.L000000D8:
	movb      $0, (%r12)
	addq      $16, %rsp
	movq      %r13, %rax
	popq      %rbx
	popq      %rbp
	popq      %r12
	popq      %r13
	popq      %r14
	ret       
.L000000ED:
	.p2align 3
.L000000F0:
	movq      PyExc_TypeError(%rip), %rdi
	movl      $.LC00000000.str1.8, %esi
	call      PyErr_SetString
.L00000101:
	addq      $16, %rsp
	xorl      %eax, %eax
	popq      %rbx
	popq      %rbp
	popq      %r12
	popq      %r13
	popq      %r14
	ret       
.L00000110:
	movq      24(%rbx), %rax
	movl      32(%rbx), %ebp
	movq      %rax, (%rsp)
	jmp       .L0000007E
	.size	buffer_repeat, .-buffer_repeat
# ----------------------
	.local	buffer_repr
	.type	buffer_repr, @function
buffer_repr:
	movl      40(%rdi), %eax
	movq      16(%rdi), %rdx
	movl      $.LC00000000.str1.1, %esi
	movl      32(%rdi), %ecx
	testl     %eax, %eax
	movl      $.LC0000000A.str1.1, %eax
	cmove     %rax, %rsi
	testq     %rdx, %rdx
	je        .L00000158
.L0000013F:
	movl      36(%rdi), %r8d
	movq      %rdi, %r9
	xorl      %eax, %eax
	movl      $.LC00000050.str1.8, %edi
	jmp       PyString_FromFormat
.L00000152:
	.p2align 3
.L00000158:
	movq      24(%rdi), %rdx
	movq      %rdi, %r8
	xorl      %eax, %eax
	movl      $.LC00000028.str1.8, %edi
	jmp       PyString_FromFormat
	.size	buffer_repr, .-buffer_repr
# ----------------------
.L0000016B:
	.p2align 3
# ----------------------
	.local	buffer_dealloc
	.type	buffer_dealloc, @function
buffer_dealloc:
	pushq     %rbx
	movq      16(%rdi), %rax
	movq      %rdi, %rbx
	testq     %rax, %rax
	je        .L00000193
.L0000017D:
	movl      (%rax), %ecx
	leal      -1(%rcx), %edx
	testl     %edx, %edx
	movl      %edx, (%rax)
	jne       .L00000193
.L00000188:
	movq      16(%rdi), %rdi
	movq      8(%rdi), %rax
	call      *40(%rax)
.L00000193:
	movq      %rbx, %rdi
	popq      %rbx
	jmp       PyObject_Free
	.size	buffer_dealloc, .-buffer_dealloc
# ----------------------
.L0000019C:
	.p2align 3
# ----------------------
	.local	buffer_new
	.type	buffer_new, @function
buffer_new:
	pushq     %r12
	movl      $.LC00000015.str1.1, %edi
	pushq     %rbp
	pushq     %rbx
	movq      %rsi, %rbx
	movq      %rdx, %rsi
	subq      $48, %rsp
	movl      $0, (%rsp)
	movl      $-1, 16(%rsp)
	call      _PyArg_NoKeywords
.L000001C7:
	testl     %eax, %eax
	je        .L000002E0
.L000001CF:
	leaq      16(%rsp), %r8
	leaq      32(%rsp), %rdx
	xorl      %eax, %eax
	movq      %rsp, %rcx
	movl      $.LC0000001E.str1.1, %esi
	movq      %rbx, %rdi
	call      PyArg_ParseTuple
.L000001EB:
	testl     %eax, %eax
	je        .L000002E0
.L000001F3:
	movq      32(%rsp), %rcx
	movl      16(%rsp), %r12d
	movl      (%rsp), %ebx
	movq      8(%rcx), %rdx
	movq      152(%rdx), %rax
	testq     %rax, %rax
	je        .L00000310
.L00000214:
	cmpq      $0, (%rax)
	je        .L00000310
.L0000021E:
	cmpq      $0, 16(%rax)
	je        .L00000310
.L00000229:
	testl     %ebx, %ebx
	js        .L000002CD
.L00000231:
	cmpq      $PyBuffer_Type, %rdx
	je        .L000002A0
.L0000023A:
	cmpl      $-1, %r12d
	jl        .L000002F9
.L00000244:
	movq      %rcx, %rbp
	.p2align 4
.L00000250:
	movslq    PyBuffer_Type+32(%rip), %rdi
	call      PyObject_Malloc
.L0000025C:
	movl      $PyBuffer_Type, %esi
	movq      %rax, %rdi
	call      PyObject_Init
.L00000269:
	testq     %rax, %rax
	je        .L000002E0
.L0000026E:
	addl      $1, (%rbp)
	movq      %rbp, 16(%rax)
	movq      $0, 24(%rax)
	movl      %r12d, 32(%rax)
	movl      %ebx, 36(%rax)
	movl      $1, 40(%rax)
	movq      $-1, 48(%rax)
	addq      $48, %rsp
	popq      %rbx
	popq      %rbp
	popq      %r12
	ret       
.L0000029D:
	.p2align 3
.L000002A0:
	movq      16(%rcx), %rbp
	testq     %rbp, %rbp
	je        .L0000023A
.L000002A9:
	movl      32(%rcx), %eax
	cmpl      $-1, %eax
	je        .L000002F0
.L000002B1:
	xorl      %edx, %edx
	subl      %ebx, %eax
	cmovns    %eax, %edx
	cmpl      %edx, %r12d
	jg        .L000002C3
.L000002BD:
	cmpl      $-1, %r12d
	jne       .L000002F0
.L000002C3:
	addl      36(%rcx), %ebx
	movl      %edx, %r12d
.L000002C9:
	testl     %ebx, %ebx
	jns       .L00000250
.L000002CD:
	movq      PyExc_ValueError(%rip), %rdi
	movl      $.LC00000080.str1.8, %esi
	call      PyErr_SetString
.L000002DE:
	.p2align 3
.L000002E0:
	xorl      %eax, %eax
.L000002E2:
	addq      $48, %rsp
	popq      %rbx
	popq      %rbp
	popq      %r12
	ret       
.L000002EB:
	.p2align 3
.L000002F0:
	addl      36(%rcx), %ebx
	cmpl      $-1, %r12d
	jge       .L000002C9
.L000002F9:
	movq      PyExc_ValueError(%rip), %rdi
	movl      $.LC00000041.str1.1, %esi
	call      PyErr_SetString
.L0000030A:
	xorl      %eax, %eax
	jmp       .L000002E2
.L0000030E:
	.p2align 3
.L00000310:
	movq      PyExc_TypeError(%rip), %rdi
	movl      $.LC0000002A.str1.1, %esi
	call      PyErr_SetString
.L00000321:
	xorl      %eax, %eax
	jmp       .L000002E2
	.size	buffer_new, .-buffer_new
# ----------------------
.L00000325:
	.p2align 4
# ----------------------
	.local	buffer_length
	.type	buffer_length, @function
buffer_length:
	pushq     %rbp
	pushq     %rbx
	movq      %rdi, %rbx
	subq      $24, %rsp
	movq      16(%rdi), %rdi
	testq     %rdi, %rdi
	je        .L000003C0
.L00000342:
	movq      8(%rdi), %rax
	xorl      %esi, %esi
	movq      152(%rax), %rbp
	call      *16(%rbp)
.L00000352:
	cmpl      $1, %eax
	jne       .L000003A0
.L00000357:
	movl      40(%rbx), %edx
	movq      8(%rbp), %rax
	movq      16(%rbx), %rdi
	testl     %edx, %edx
	cmovne    (%rbp), %rax
	movq      %rsp, %rdx
	xorl      %esi, %esi
	call      *%rax
.L00000370:
	testl     %eax, %eax
	js        .L000003B1
.L00000374:
	movl      36(%rbx), %ecx
	movl      32(%rbx), %edx
	movl      %eax, %ebx
	cmpl      %ecx, %eax
	cmovle    %eax, %ecx
	cmpl      $-1, %edx
	cmove     %eax, %edx
	subl      %ecx, %ebx
	leal      (%rdx,%rcx), %esi
	cmpl      %esi, %eax
	cmovl     %ebx, %edx
.L00000391:
	addq      $24, %rsp
	movl      %edx, %eax
	popq      %rbx
	popq      %rbp
	ret       
.L0000039A:
	.p2align 3
.L000003A0:
	movq      PyExc_TypeError(%rip), %rdi
	movl      $.LC00000000.str1.8, %esi
	call      PyErr_SetString
.L000003B1:
	addq      $24, %rsp
	movl      $-1, %eax
	popq      %rbx
	popq      %rbp
	ret       
.L000003BD:
	.p2align 3
.L000003C0:
	movl      32(%rbx), %edx
	jmp       .L00000391
	.size	buffer_length, .-buffer_length
# ----------------------
.L000003C5:
	.p2align 4
# ----------------------
	.local	buffer_getsegcount
	.type	buffer_getsegcount, @function
buffer_getsegcount:
	pushq     %r12
	movq      %rsi, %r12
	pushq     %rbp
	pushq     %rbx
	movq      %rdi, %rbx
	subq      $16, %rsp
	movq      16(%rdi), %rdi
	testq     %rdi, %rdi
	je        .L00000480
.L000003EB:
	movq      8(%rdi), %rax
	xorl      %esi, %esi
	movq      152(%rax), %rbp
	call      *16(%rbp)
.L000003FB:
	cmpl      $1, %eax
	jne       .L00000460
.L00000400:
	movl      40(%rbx), %edx
	movq      8(%rbp), %rax
	movq      16(%rbx), %rdi
	testl     %edx, %edx
	cmovne    (%rbp), %rax
	movq      %rsp, %rdx
	xorl      %esi, %esi
	call      *%rax
.L00000419:
	testl     %eax, %eax
	js        .L00000471
.L0000041D:
	movl      36(%rbx), %ecx
	cmpl      %ecx, %eax
	cmovle    %eax, %ecx
	movslq    %ecx, %rdx
	addq      %rdx, (%rsp)
	movl      32(%rbx), %edx
	movl      %eax, %ebx
	cmpl      $-1, %edx
	cmove     %eax, %edx
	subl      %ecx, %ebx
	leal      (%rdx,%rcx), %esi
	cmpl      %esi, %eax
	cmovl     %ebx, %edx
.L00000441:
	testq     %r12, %r12
	movl      $1, %eax
	je        .L00000454
.L0000044B:
	movl      %edx, (%r12)
	movl      $1, %eax
.L00000454:
	addq      $16, %rsp
	popq      %rbx
	popq      %rbp
	popq      %r12
	ret       
.L0000045D:
	.p2align 3
.L00000460:
	movq      PyExc_TypeError(%rip), %rdi
	movl      $.LC00000000.str1.8, %esi
	call      PyErr_SetString
.L00000471:
	addq      $16, %rsp
	movl      $-1, %eax
	popq      %rbx
	popq      %rbp
	popq      %r12
	ret       
.L0000047F:
	.p2align 3
.L00000480:
	movq      24(%rbx), %rax
	movl      32(%rbx), %edx
	movq      %rax, (%rsp)
	jmp       .L00000441
	.size	buffer_getsegcount, .-buffer_getsegcount
# ----------------------
.L0000048D:
	.p2align 3
# ----------------------
	.local	buffer_getreadbuf
	.type	buffer_getreadbuf, @function
buffer_getreadbuf:
	pushq     %r12
	testl     %esi, %esi
	pushq     %rbp
	pushq     %rbx
	jne       .L00000540
.L0000049C:
	movq      %rdi, %rbx
	movq      16(%rdi), %rdi
	movq      %rdx, %r12
	testq     %rdi, %rdi
	je        .L00000530
.L000004AF:
	movq      8(%rdi), %rax
	xorl      %esi, %esi
	movq      152(%rax), %rbp
	call      *16(%rbp)
.L000004BF:
	cmpl      $1, %eax
	jne       .L00000510
.L000004C4:
	movl      40(%rbx), %edx
	movq      8(%rbp), %rax
	movq      16(%rbx), %rdi
	testl     %edx, %edx
	cmovne    (%rbp), %rax
	movq      %r12, %rdx
	xorl      %esi, %esi
	call      *%rax
.L000004DD:
	testl     %eax, %eax
	js        .L00000521
.L000004E1:
	movl      36(%rbx), %ecx
	cmpl      %ecx, %eax
	cmovle    %eax, %ecx
	movslq    %ecx, %rdx
	addq      %rdx, (%r12)
	movl      32(%rbx), %edx
	movl      %eax, %ebx
	cmpl      $-1, %edx
	cmove     %eax, %edx
	subl      %ecx, %ebx
	leal      (%rdx,%rcx), %esi
	cmpl      %esi, %eax
	cmovl     %ebx, %edx
.L00000505:
	movl      %edx, %eax
.L00000507:
	popq      %rbx
	popq      %rbp
	popq      %r12
	ret       
.L0000050C:
	.p2align 3
.L00000510:
	movq      PyExc_TypeError(%rip), %rdi
	movl      $.LC00000000.str1.8, %esi
	call      PyErr_SetString
.L00000521:
	popq      %rbx
	popq      %rbp
	movl      $-1, %eax
	popq      %r12
	ret       
.L0000052B:
	.p2align 3
.L00000530:
	movq      24(%rbx), %rax
	movq      %rax, (%rdx)
	movl      32(%rbx), %edx
	jmp       .L00000505
.L0000053C:
	.p2align 3
.L00000540:
	movq      PyExc_SystemError(%rip), %rdi
	movl      $.LC000000A0.str1.8, %esi
	call      PyErr_SetString
.L00000551:
	movl      $-1, %eax
	jmp       .L00000507
	.size	buffer_getreadbuf, .-buffer_getreadbuf
# ----------------------
.L00000558:
	.p2align 4
# ----------------------
	.local	buffer_getcharbuf
	.type	buffer_getcharbuf, @function
buffer_getcharbuf:
	pushq     %r12
	pushq     %rbp
	pushq     %rbx
	subq      $16, %rsp
	testl     %esi, %esi
	jne       .L00000620
.L00000570:
	movq      %rdi, %rbx
	movq      16(%rdi), %rdi
	movq      %rdx, %r12
	testq     %rdi, %rdi
	je        .L00000610
.L00000583:
	movq      8(%rdi), %rax
	xorl      %esi, %esi
	movq      152(%rax), %rbp
	call      *16(%rbp)
.L00000593:
	cmpl      $1, %eax
	jne       .L000005F0
.L00000598:
	movl      40(%rbx), %edx
	movq      8(%rbp), %rax
	movq      16(%rbx), %rdi
	testl     %edx, %edx
	cmovne    (%rbp), %rax
	movq      %rsp, %rdx
	xorl      %esi, %esi
	call      *%rax
.L000005B1:
	testl     %eax, %eax
	js        .L00000601
.L000005B5:
	movl      36(%rbx), %esi
	movl      32(%rbx), %ecx
	movl      %eax, %ebx
	cmpl      %esi, %eax
	cmovle    %eax, %esi
	cmpl      $-1, %ecx
	cmove     %eax, %ecx
	movslq    %esi, %rdx
	subl      %esi, %ebx
	leal      (%rcx,%rsi), %edi
	addq      (%rsp), %rdx
	cmpl      %edi, %eax
	cmovl     %ebx, %ecx
.L000005D9:
	movq      %rdx, (%r12)
	movl      %ecx, %eax
.L000005DF:
	addq      $16, %rsp
	popq      %rbx
	popq      %rbp
	popq      %r12
	ret       
.L000005E8:
	.p2align 4
.L000005F0:
	movq      PyExc_TypeError(%rip), %rdi
	movl      $.LC00000000.str1.8, %esi
	call      PyErr_SetString
.L00000601:
	addq      $16, %rsp
	movl      $-1, %eax
	popq      %rbx
	popq      %rbp
	popq      %r12
	ret       
.L0000060F:
	.p2align 3
.L00000610:
	movq      24(%rbx), %rdx
	movl      32(%rbx), %ecx
	jmp       .L000005D9
.L00000619:
	.p2align 4
.L00000620:
	movq      PyExc_SystemError(%rip), %rdi
	movl      $.LC000000A0.str1.8, %esi
	call      PyErr_SetString
.L00000631:
	movl      $-1, %eax
	jmp       .L000005DF
	.size	buffer_getcharbuf, .-buffer_getcharbuf
# ----------------------
.L00000638:
	.p2align 4
# ----------------------
	.local	buffer_getwritebuf
	.type	buffer_getwritebuf, @function
buffer_getwritebuf:
	pushq     %r12
	pushq     %rbp
	pushq     %rbx
	movl      40(%rdi), %ecx
	movq      %rdi, %rbx
	testl     %ecx, %ecx
	jne       .L00000700
.L00000652:
	testl     %esi, %esi
	jne       .L00000720
.L0000065A:
	movq      16(%rdi), %rdi
	movq      %rdx, %rbp
	testq     %rdi, %rdi
	je        .L000006F0
.L0000066A:
	movq      8(%rdi), %rax
	xorl      %esi, %esi
	movq      152(%rax), %r12
	call      *16(%r12)
.L0000067C:
	cmpl      $1, %eax
	jne       .L000006D0
.L00000681:
	movl      40(%rbx), %edx
	movq      8(%r12), %rax
	movq      16(%rbx), %rdi
	testl     %edx, %edx
	cmovne    (%r12), %rax
	movq      %rbp, %rdx
	xorl      %esi, %esi
	call      *%rax
.L0000069B:
	testl     %eax, %eax
	js        .L000006E1
.L0000069F:
	movl      36(%rbx), %ecx
	cmpl      %ecx, %eax
	cmovle    %eax, %ecx
	movslq    %ecx, %rdx
	addq      %rdx, (%rbp)
	movl      32(%rbx), %edx
	movl      %eax, %ebx
	cmpl      $-1, %edx
	cmove     %eax, %edx
	subl      %ecx, %ebx
	leal      (%rcx,%rdx), %esi
	cmpl      %esi, %eax
	cmovl     %ebx, %edx
.L000006C3:
	movl      %edx, %eax
.L000006C5:
	popq      %rbx
	popq      %rbp
	popq      %r12
	ret       
.L000006CA:
	.p2align 3
.L000006D0:
	movq      PyExc_TypeError(%rip), %rdi
	movl      $.LC00000000.str1.8, %esi
	call      PyErr_SetString
.L000006E1:
	popq      %rbx
	popq      %rbp
	movl      $-1, %eax
	popq      %r12
	ret       
.L000006EB:
	.p2align 3
.L000006F0:
	movq      24(%rbx), %rax
	movq      %rax, (%rdx)
	movl      32(%rbx), %edx
	jmp       .L000006C3
.L000006FC:
	.p2align 3
.L00000700:
	movq      PyExc_TypeError(%rip), %rdi
	movl      $.LC0000005F.str1.1, %esi
	call      PyErr_SetString
.L00000711:
	movl      $-1, %eax
	jmp       .L000006C5
.L00000718:
	.p2align 4
.L00000720:
	movq      PyExc_SystemError(%rip), %rdi
	movl      $.LC000000A0.str1.8, %esi
	call      PyErr_SetString
.L00000731:
	movl      $-1, %eax
	jmp       .L000006C5
	.size	buffer_getwritebuf, .-buffer_getwritebuf
# ----------------------
.L00000738:
	.p2align 4
# ----------------------
	.local	buffer_str
	.type	buffer_str, @function
buffer_str:
	pushq     %rbp
	pushq     %rbx
	movq      %rdi, %rbx
	subq      $24, %rsp
	movq      16(%rdi), %rdi
	testq     %rdi, %rdi
	je        .L000007E0
.L00000756:
	movq      8(%rdi), %rax
	xorl      %esi, %esi
	movq      152(%rax), %rbp
	call      *16(%rbp)
.L00000766:
	cmpl      $1, %eax
	jne       .L000007C0
.L0000076B:
	movl      40(%rbx), %edx
	movq      8(%rbp), %rax
	movq      16(%rbx), %rdi
	testl     %edx, %edx
	cmovne    (%rbp), %rax
	movq      %rsp, %rdx
	xorl      %esi, %esi
	call      *%rax
.L00000784:
	testl     %eax, %eax
	js        .L000007D1
.L00000788:
	movl      36(%rbx), %edx
	movl      32(%rbx), %esi
	movl      %eax, %ebx
	cmpl      %edx, %eax
	cmovle    %eax, %edx
	movslq    %edx, %rdi
	addq      (%rsp), %rdi
	cmpl      $-1, %esi
	cmove     %eax, %esi
	subl      %edx, %ebx
	leal      (%rsi,%rdx), %ecx
	cmpl      %ecx, %eax
	movq      %rdi, (%rsp)
	cmovl     %ebx, %esi
.L000007B0:
	call      PyString_FromStringAndSize
.L000007B5:
	addq      $24, %rsp
	popq      %rbx
	popq      %rbp
	ret       
.L000007BC:
	.p2align 3
.L000007C0:
	movq      PyExc_TypeError(%rip), %rdi
	movl      $.LC00000000.str1.8, %esi
	call      PyErr_SetString
.L000007D1:
	addq      $24, %rsp
	xorl      %eax, %eax
	popq      %rbx
	popq      %rbp
	ret       
.L000007DA:
	.p2align 3
.L000007E0:
	movq      24(%rbx), %rdi
	movl      32(%rbx), %esi
	movq      %rdi, (%rsp)
	jmp       .L000007B0
	.size	buffer_str, .-buffer_str
# ----------------------
.L000007ED:
	.p2align 3
# ----------------------
	.local	buffer_item
	.type	buffer_item, @function
buffer_item:
	pushq     %r12
	pushq     %rbp
	movslq    %esi, %rbp
	pushq     %rbx
	movq      %rdi, %rbx
	subq      $16, %rsp
	movq      16(%rdi), %rdi
	testq     %rdi, %rdi
	je        .L000008B0
.L0000080B:
	movq      8(%rdi), %rax
	xorl      %esi, %esi
	movq      152(%rax), %r12
	call      *16(%r12)
.L0000081D:
	cmpl      $1, %eax
	jne       .L00000890
.L00000822:
	movl      40(%rbx), %edx
	movq      8(%r12), %rax
	movq      16(%rbx), %rdi
	testl     %edx, %edx
	cmovne    (%r12), %rax
	movq      %rsp, %rdx
	xorl      %esi, %esi
	call      *%rax
.L0000083C:
	testl     %eax, %eax
	js        .L000008A1
.L00000840:
	movl      36(%rbx), %esi
	movl      32(%rbx), %edx
	movl      %eax, %ebx
	cmpl      %esi, %eax
	cmovle    %eax, %esi
	movslq    %esi, %rcx
	addq      (%rsp), %rcx
	cmpl      $-1, %edx
	cmove     %eax, %edx
	subl      %esi, %ebx
	leal      (%rdx,%rsi), %edi
	cmpl      %edi, %eax
	movq      %rcx, (%rsp)
	cmovl     %ebx, %edx
.L00000868:
	testl     %ebp, %ebp
	js        .L000008C0
.L0000086C:
	cmpl      %edx, %ebp
	jge       .L000008C0
.L00000870:
	leaq      (%rcx,%rbp), %rdi
	movl      $1, %esi
	call      PyString_FromStringAndSize
.L0000087E:
	addq      $16, %rsp
	popq      %rbx
	popq      %rbp
	popq      %r12
	ret       
.L00000887:
	.p2align 4
.L00000890:
	movq      PyExc_TypeError(%rip), %rdi
	movl      $.LC00000000.str1.8, %esi
	call      PyErr_SetString
.L000008A1:
	addq      $16, %rsp
	xorl      %eax, %eax
	popq      %rbx
	popq      %rbp
	popq      %r12
	ret       
.L000008AC:
	.p2align 3
.L000008B0:
	movq      24(%rbx), %rcx
	movl      32(%rbx), %edx
	movq      %rcx, (%rsp)
	jmp       .L00000868
.L000008BD:
	.p2align 3
.L000008C0:
	movq      PyExc_IndexError(%rip), %rdi
	movl      $.LC00000073.str1.1, %esi
	call      PyErr_SetString
.L000008D1:
	addq      $16, %rsp
	xorl      %eax, %eax
	popq      %rbx
	popq      %rbp
	popq      %r12
	ret       
	.size	buffer_item, .-buffer_item
# ----------------------
.L000008DC:
	.p2align 3
# ----------------------
	.local	buffer_slice
	.type	buffer_slice, @function
buffer_slice:
	pushq     %r13
	pushq     %r12
	movl      %esi, %r12d
	pushq     %rbp
	movl      %edx, %ebp
	pushq     %rbx
	movq      %rdi, %rbx
	subq      $24, %rsp
	movq      16(%rdi), %rdi
	testq     %rdi, %rdi
	je        .L000009B0
.L000008FF:
	movq      8(%rdi), %rax
	xorl      %esi, %esi
	movq      152(%rax), %r13
	call      *16(%r13)
.L00000910:
	cmpl      $1, %eax
	jne       .L00000990
.L00000915:
	movl      40(%rbx), %edx
	movq      8(%r13), %rax
	movq      16(%rbx), %rdi
	testl     %edx, %edx
	cmovne    (%r13), %rax
	movq      %rsp, %rdx
	xorl      %esi, %esi
	call      *%rax
.L0000092E:
	testl     %eax, %eax
	js        .L000009A1
.L00000932:
	movl      36(%rbx), %esi
	movl      32(%rbx), %ecx
	movl      %eax, %ebx
	cmpl      %esi, %eax
	cmovle    %eax, %esi
	movslq    %esi, %rdx
	addq      (%rsp), %rdx
	cmpl      $-1, %ecx
	cmove     %eax, %ecx
	subl      %esi, %ebx
	leal      (%rcx,%rsi), %edi
	cmpl      %edi, %eax
	movq      %rdx, (%rsp)
	cmovl     %ebx, %ecx
.L0000095A:
	xorl      %esi, %esi
	movslq    %r12d, %rax
	testl     %r12d, %r12d
	cmovs     %rsi, %rax
	testl     %ebp, %ebp
	cmovs     %esi, %ebp
	leaq      (%rdx,%rax), %rdi
	cmpl      %ebp, %ecx
	cmovg     %ebp, %ecx
	cmpl      %eax, %ecx
	cmovl     %eax, %ecx
	movl      %ecx, %esi
	subl      %eax, %esi
	call      PyString_FromStringAndSize
.L00000982:
	addq      $24, %rsp
	popq      %rbx
	popq      %rbp
	popq      %r12
	popq      %r13
	ret       
.L0000098D:
	.p2align 3
.L00000990:
	movq      PyExc_TypeError(%rip), %rdi
	movl      $.LC00000000.str1.8, %esi
	call      PyErr_SetString
.L000009A1:
	addq      $24, %rsp
	xorl      %eax, %eax
	popq      %rbx
	popq      %rbp
	popq      %r12
	popq      %r13
	ret       
.L000009AE:
	.p2align 3
.L000009B0:
	movq      24(%rbx), %rdx
	movl      32(%rbx), %ecx
	movq      %rdx, (%rsp)
	jmp       .L0000095A
	.size	buffer_slice, .-buffer_slice
# ----------------------
.L000009BD:
	.p2align 3
# ----------------------
	.local	buffer_compare
	.type	buffer_compare, @function
buffer_compare:
	pushq     %r12
	pushq     %rbp
	movq      %rsi, %rbp
	pushq     %rbx
	movq      %rdi, %rbx
	subq      $32, %rsp
	movq      16(%rdi), %rdi
	testq     %rdi, %rdi
	je        .L00000B20
.L000009DB:
	movq      8(%rdi), %rax
	xorl      %esi, %esi
	movq      152(%rax), %r12
	call      *16(%r12)
.L000009ED:
	cmpl      $1, %eax
	jne       .L00000AD8
.L000009F6:
	movl      40(%rbx), %ecx
	movq      8(%r12), %rax
	movq      %rsp, %rdx
	movq      16(%rbx), %rdi
	testl     %ecx, %ecx
	cmovne    (%r12), %rax
	xorl      %esi, %esi
	call      *%rax
.L00000A10:
	testl     %eax, %eax
	js        .L00000AE9
.L00000A18:
	movl      36(%rbx), %edx
	movl      32(%rbx), %ebx
	movl      %eax, %esi
	movq      16(%rbp), %rdi
	cmpl      %edx, %eax
	cmovle    %eax, %edx
	movslq    %edx, %rcx
	addq      %rcx, (%rsp)
	cmpl      $-1, %ebx
	cmove     %eax, %ebx
	subl      %edx, %esi
	leal      (%rbx,%rdx), %ecx
	cmpl      %ecx, %eax
	cmovl     %esi, %ebx
	testq     %rdi, %rdi
	je        .L00000B38
.L00000A49:
	movq      8(%rdi), %rax
	xorl      %esi, %esi
	movq      152(%rax), %r12
	call      *16(%r12)
.L00000A5B:
	cmpl      $1, %eax
	jne       .L00000AD8
.L00000A60:
	movl      40(%rbp), %edx
	movq      8(%r12), %rax
	movq      16(%rbp), %rdi
	testl     %edx, %edx
	cmovne    (%r12), %rax
	leaq      16(%rsp), %rdx
	xorl      %esi, %esi
	call      *%rax
.L00000A7C:
	testl     %eax, %eax
	js        .L00000AE9
.L00000A80:
	movl      36(%rbp), %edx
	movl      32(%rbp), %ebp
	movl      %eax, %edi
	cmpl      %edx, %eax
	cmovle    %eax, %edx
	movslq    %edx, %rsi
	addq      16(%rsp), %rsi
	cmpl      $-1, %ebp
	cmove     %eax, %ebp
	subl      %edx, %edi
	leal      (%rbp,%rdx), %ecx
	cmpl      %ecx, %eax
	movq      %rsi, 16(%rsp)
	cmovl     %edi, %ebp
.L00000AAB:
	cmpl      %ebx, %ebp
	movl      %ebx, %edx
	cmovle    %ebp, %edx
	testl     %edx, %edx
	jle       .L00000B00
.L00000AB6:
	movq      (%rsp), %rdi
	movslq    %edx, %rdx
	call      memcmp
.L00000AC2:
	testl     %eax, %eax
	je        .L00000B00
.L00000AC6:
	addq      $32, %rsp
	sarl      $31, %eax
	popq      %rbx
	popq      %rbp
	orl       $1, %eax
	popq      %r12
	ret       
.L00000AD5:
	.p2align 3
.L00000AD8:
	movq      PyExc_TypeError(%rip), %rdi
	movl      $.LC00000000.str1.8, %esi
	call      PyErr_SetString
.L00000AE9:
	movl      $-1, %eax
.L00000AEE:
	addq      $32, %rsp
	popq      %rbx
	popq      %rbp
	popq      %r12
	ret       
.L00000AF7:
	.p2align 4
.L00000B00:
	cmpl      %ebx, %ebp
	movl      $-1, %eax
	jg        .L00000AEE
.L00000B09:
	xorl      %eax, %eax
	cmpl      %ebp, %ebx
	setg      %al
	addq      $32, %rsp
	popq      %rbx
	popq      %rbp
	popq      %r12
	ret       
.L00000B19:
	.p2align 4
.L00000B20:
	movq      16(%rbp), %rdi
	movq      24(%rbx), %rax
	movl      32(%rbx), %ebx
	testq     %rdi, %rdi
	movq      %rax, (%rsp)
	jne       .L00000A49
.L00000B38:
	movq      24(%rbp), %rsi
	movl      32(%rbp), %ebp
	movq      %rsi, 16(%rsp)
	jmp       .L00000AAB
	.size	buffer_compare, .-buffer_compare
# ----------------------
.L00000B49:
	.p2align 4
# ----------------------
	.local	buffer_ass_item
	.type	buffer_ass_item, @function
buffer_ass_item:
	pushq     %r14
	pushq     %r13
	movslq    %esi, %r13
	pushq     %r12
	pushq     %rbp
	pushq     %rbx
	movq      %rdi, %rbx
	subq      $32, %rsp
	movl      40(%rdi), %ebp
	testl     %ebp, %ebp
	jne       .L00000CF0
.L00000B6D:
	movq      16(%rdi), %rdi
	movq      %rdx, %r12
	testq     %rdi, %rdi
	je        .L00000C98
.L00000B7D:
	movq      8(%rdi), %rax
	xorl      %esi, %esi
	movq      152(%rax), %r14
	call      *16(%r14)
.L00000B8E:
	cmpl      $1, %eax
	jne       .L00000C70
.L00000B97:
	movl      40(%rbx), %edx
	movq      8(%r14), %rax
	movq      16(%rbx), %rdi
	testl     %edx, %edx
	cmovne    (%r14), %rax
	movq      %rsp, %rdx
	xorl      %esi, %esi
	call      *%rax
.L00000BAF:
	testl     %eax, %eax
	js        .L00000C81
.L00000BB7:
	movl      36(%rbx), %ecx
	movl      %eax, %edi
	cmpl      %ecx, %eax
	cmovle    %eax, %ecx
	movslq    %ecx, %rdx
	addq      %rdx, (%rsp)
	movl      32(%rbx), %edx
	cmpl      $-1, %edx
	cmove     %eax, %edx
	subl      %ecx, %edi
	leal      (%rcx,%rdx), %esi
	cmpl      %esi, %eax
	cmovl     %edi, %edx
.L00000BDB:
	testl     %r13d, %r13d
	js        .L00000CD0
.L00000BE4:
	cmpl      %edx, %r13d
	jge       .L00000CD0
.L00000BED:
	testq     %r12, %r12
	je        .L00000D30
.L00000BF6:
	movq      8(%r12), %rax
	movq      152(%rax), %rbx
	testq     %rbx, %rbx
	je        .L00000D30
.L00000C0B:
	cmpq      $0, (%rbx)
	je        .L00000D30
.L00000C15:
	movq      16(%rbx), %rax
	testq     %rax, %rax
	je        .L00000D30
.L00000C22:
	xorl      %esi, %esi
	movq      %r12, %rdi
	call      *%rax
.L00000C29:
	cmpl      $1, %eax
	jne       .L00000CB0
.L00000C32:
	xorl      %esi, %esi
	leaq      16(%rsp), %rdx
	movq      %r12, %rdi
	call      *(%rbx)
.L00000C3E:
	testl     %eax, %eax
	js        .L00000C81
.L00000C42:
	cmpl      $1, %eax
	jne       .L00000D10
.L00000C4B:
	movq      16(%rsp), %rax
	movzbl    (%rax), %edx
	movq      (%rsp), %rax
	movb      %dl, (%rax,%r13)
.L00000C5B:
	addq      $32, %rsp
	movl      %ebp, %eax
	popq      %rbx
	popq      %rbp
	popq      %r12
	popq      %r13
	popq      %r14
	ret       
.L00000C6A:
	.p2align 3
.L00000C70:
	movq      PyExc_TypeError(%rip), %rdi
	movl      $.LC00000000.str1.8, %esi
	call      PyErr_SetString
.L00000C81:
	addq      $32, %rsp
	movl      $-1, %ebp
	popq      %rbx
	movl      %ebp, %eax
	popq      %rbp
	popq      %r12
	popq      %r13
	popq      %r14
	ret       
.L00000C95:
	.p2align 3
.L00000C98:
	movq      24(%rbx), %rax
	movl      32(%rbx), %edx
	movq      %rax, (%rsp)
	jmp       .L00000BDB
.L00000CA8:
	.p2align 4
.L00000CB0:
	movq      PyExc_TypeError(%rip), %rdi
	movl      $.LC00000000.str1.8, %esi
	movl      $-1, %ebp
	call      PyErr_SetString
.L00000CC6:
	jmp       .L00000C5B
.L00000CC8:
	.p2align 4
.L00000CD0:
	movq      PyExc_IndexError(%rip), %rdi
	movl      $.LC000000C8.str1.8, %esi
	movl      $-1, %ebp
	call      PyErr_SetString
.L00000CE6:
	jmp       .L00000C5B
.L00000CEB:
	.p2align 3
.L00000CF0:
	movq      PyExc_TypeError(%rip), %rdi
	movl      $.LC0000005F.str1.1, %esi
	movl      $-1, %ebp
	call      PyErr_SetString
.L00000D06:
	jmp       .L00000C5B
.L00000D0B:
	.p2align 3
.L00000D10:
	movq      PyExc_TypeError(%rip), %rdi
	movl      $.LC000000F0.str1.8, %esi
	movl      $-1, %ebp
	call      PyErr_SetString
.L00000D26:
	jmp       .L00000C5B
.L00000D2B:
	.p2align 3
.L00000D30:
	call      PyErr_BadArgument
.L00000D35:
	movl      $-1, %ebp
	jmp       .L00000C5B
	.size	buffer_ass_item, .-buffer_ass_item
# ----------------------
.L00000D3F:
	.p2align 3
# ----------------------
	.local	buffer_concat
	.type	buffer_concat, @function
buffer_concat:
	pushq     %r13
	pushq     %r12
	pushq     %rbp
	pushq     %rbx
	movq      %rsi, %rbx
	subq      $40, %rsp
	movq      8(%rsi), %rax
	movq      152(%rax), %rbp
	testq     %rbp, %rbp
	je        .L00000EE8
.L00000D61:
	cmpq      $0, (%rbp)
	je        .L00000EE8
.L00000D6C:
	movq      16(%rbp), %rax
	testq     %rax, %rax
	je        .L00000EE8
.L00000D79:
	xorl      %esi, %esi
	movq      %rdi, %r12
	movq      %rbx, %rdi
	call      *%rax
.L00000D83:
	cmpl      $1, %eax
	jne       .L00000EA8
.L00000D8C:
	movq      16(%r12), %rdi
	testq     %rdi, %rdi
	je        .L00000ED0
.L00000D9A:
	movq      8(%rdi), %rax
	xorl      %esi, %esi
	movq      152(%rax), %r13
	call      *16(%r13)
.L00000DAB:
	cmpl      $1, %eax
	jne       .L00000E18
.L00000DB0:
	movl      40(%r12), %edx
	movq      8(%r13), %rax
	movq      16(%r12), %rdi
	testl     %edx, %edx
	cmovne    (%r13), %rax
	movq      %rsp, %rdx
	xorl      %esi, %esi
	call      *%rax
.L00000DCC:
	testl     %eax, %eax
	js        .L00000E29
.L00000DD0:
	movl      36(%r12), %edx
	movl      32(%r12), %r12d
	movl      %eax, %esi
	cmpl      %edx, %eax
	cmovle    %eax, %edx
	movslq    %edx, %rcx
	addq      %rcx, (%rsp)
	cmpl      $-1, %r12d
	cmove     %eax, %r12d
	subl      %edx, %esi
	leal      (%r12,%rdx), %ecx
	cmpl      %ecx, %eax
	cmovl     %esi, %r12d
.L00000DFC:
	testl     %r12d, %r12d
	jne       .L00000E40
.L00000E01:
	addl      $1, (%rbx)
	movq      %rbx, %rax
.L00000E07:
	addq      $40, %rsp
	popq      %rbx
	popq      %rbp
	popq      %r12
	popq      %r13
	ret       
.L00000E12:
	.p2align 3
.L00000E18:
	movq      PyExc_TypeError(%rip), %rdi
	movl      $.LC00000000.str1.8, %esi
	call      PyErr_SetString
.L00000E29:
	addq      $40, %rsp
	xorl      %eax, %eax
	popq      %rbx
	popq      %rbp
	popq      %r12
	popq      %r13
	ret       
.L00000E36:
	.p2align 4
.L00000E40:
	xorl      %esi, %esi
	leaq      16(%rsp), %rdx
	movq      %rbx, %rdi
	call      *(%rbp)
.L00000E4D:
	testl     %eax, %eax
	movl      %eax, %ebp
	js        .L00000E29
.L00000E53:
	leal      (%rax,%r12), %r13d
	xorl      %edi, %edi
	movslq    %r12d, %r12
	movl      %r13d, %esi
	movslq    %r13d, %r13
	call      PyString_FromStringAndSize
.L00000E67:
	movq      (%rsp), %rsi
	leaq      36(%rax), %rcx
	movq      %r12, %rdx
	movq      %rax, %rbx
	movq      %rcx, %rdi
	call      memcpy
.L00000E7D:
	movq      16(%rsp), %rsi
	leaq      (%rax,%r12), %rdi
	movslq    %ebp, %rdx
	call      memcpy
.L00000E8E:
	movb      $0, 36(%rbx,%r13)
	addq      $40, %rsp
	movq      %rbx, %rax
	popq      %rbx
	popq      %rbp
	popq      %r12
	popq      %r13
	ret       
.L00000EA2:
	.p2align 3
.L00000EA8:
	movq      PyExc_TypeError(%rip), %rdi
	movl      $.LC00000000.str1.8, %esi
	call      PyErr_SetString
.L00000EB9:
	addq      $40, %rsp
	xorl      %eax, %eax
	popq      %rbx
	popq      %rbp
	popq      %r12
	popq      %r13
	ret       
.L00000EC6:
	.p2align 4
.L00000ED0:
	movq      24(%r12), %rax
	movl      32(%r12), %r12d
	movq      %rax, (%rsp)
	jmp       .L00000DFC
.L00000EE3:
	.p2align 3
.L00000EE8:
	call      PyErr_BadArgument
.L00000EED:
	xorl      %eax, %eax
	jmp       .L00000E07
	.size	buffer_concat, .-buffer_concat
# ----------------------
.L00000EF4:
	.p2align 4
# ----------------------
	.local	buffer_ass_slice
	.type	buffer_ass_slice, @function
buffer_ass_slice:
	pushq     %r15
	pushq     %r14
	pushq     %r13
	pushq     %r12
	pushq     %rbp
	pushq     %rbx
	movq      %rdi, %rbx
	subq      $56, %rsp
	movl      40(%rdi), %ebp
	testl     %ebp, %ebp
	jne       .L000010BF
.L00000F1C:
	testq     %rcx, %rcx
	movq      %rcx, %r12
	je        .L000010B0
.L00000F28:
	movq      8(%rcx), %rax
	movq      152(%rax), %r15
	testq     %r15, %r15
	je        .L000010B0
.L00000F3C:
	cmpq      $0, (%r15)
	je        .L000010B0
.L00000F46:
	movq      16(%r15), %rax
	testq     %rax, %rax
	je        .L000010B0
.L00000F53:
	movl      %esi, %r13d
	movl      %edx, %r14d
	xorl      %esi, %esi
	movq      %rcx, %rdi
	call      *%rax
.L00000F60:
	cmpl      $1, %eax
	jne       .L00001078
.L00000F69:
	movq      16(%rbx), %rdi
	testq     %rdi, %rdi
	je        .L00001060
.L00000F76:
	movq      8(%rdi), %rax
	xorl      %esi, %esi
	movq      152(%rax), %rdx
	movq      %rdx, 8(%rsp)
	call      *16(%rdx)
.L00000F8B:
	cmpl      $1, %eax
	movq      8(%rsp), %rdx
	jne       .L00001048
.L00000F99:
	movl      40(%rbx), %ecx
	movq      8(%rdx), %rax
	movq      16(%rbx), %rdi
	testl     %ecx, %ecx
	cmovne    (%rdx), %rax
	xorl      %esi, %esi
	leaq      16(%rsp), %rdx
	call      *%rax
.L00000FB3:
	testl     %eax, %eax
	js        .L00001059
.L00000FBB:
	movl      36(%rbx), %edx
	movl      32(%rbx), %ebx
	movl      %eax, %esi
	cmpl      %edx, %eax
	cmovle    %eax, %edx
	movslq    %edx, %rcx
	addq      %rcx, 16(%rsp)
	cmpl      $-1, %ebx
	cmove     %eax, %ebx
	subl      %edx, %esi
	leal      (%rbx,%rdx), %ecx
	cmpl      %ecx, %eax
	cmovl     %esi, %ebx
.L00000FE0:
	xorl      %esi, %esi
	leaq      32(%rsp), %rdx
	movq      %r12, %rdi
	call      *(%r15)
.L00000FED:
	testl     %eax, %eax
	js        .L00001059
.L00000FF1:
	xorl      %edi, %edi
	testl     %r13d, %r13d
	js        .L00001001
.L00000FF8:
	cmpl      %r13d, %ebx
	movl      %r13d, %edi
	cmovle    %ebx, %edi
.L00001001:
	xorl      %edx, %edx
	cmpl      %r14d, %edi
	jg        .L00001013
.L00001008:
	cmpl      %r14d, %ebx
	movl      %r14d, %edx
	cmovle    %ebx, %edx
	subl      %edi, %edx
.L00001013:
	cmpl      %edx, %eax
	jne       .L00001090
.L00001017:
	testl     %eax, %eax
	je        .L00001030
.L0000101B:
	movslq    %edi, %rdi
	addq      16(%rsp), %rdi
	movq      32(%rsp), %rsi
	movslq    %eax, %rdx
	call      memcpy
.L00001030:
	addq      $56, %rsp
	movl      %ebp, %eax
	popq      %rbx
	popq      %rbp
	popq      %r12
	popq      %r13
	popq      %r14
	popq      %r15
	ret       
.L00001041:
	.p2align 3
.L00001048:
	movq      PyExc_TypeError(%rip), %rdi
	movl      $.LC00000000.str1.8, %esi
	call      PyErr_SetString
.L00001059:
	movl      $-1, %ebp
	jmp       .L00001030
.L00001060:
	movq      24(%rbx), %rax
	movl      32(%rbx), %ebx
	movq      %rax, 16(%rsp)
	jmp       .L00000FE0
.L00001071:
	.p2align 3
.L00001078:
	movq      PyExc_TypeError(%rip), %rdi
	movl      $.LC00000000.str1.8, %esi
	movl      $-1, %ebp
	call      PyErr_SetString
.L0000108E:
	jmp       .L00001030
.L00001090:
	movq      PyExc_TypeError(%rip), %rdi
	movl      $.LC00000118.str1.8, %esi
	movl      $-1, %ebp
	call      PyErr_SetString
.L000010A6:
	jmp       .L00001030
.L000010A8:
	.p2align 4
.L000010B0:
	call      PyErr_BadArgument
.L000010B5:
	movl      $-1, %ebp
	jmp       .L00001030
.L000010BF:
	movq      PyExc_TypeError(%rip), %rdi
	movl      $.LC0000005F.str1.1, %esi
	movl      $-1, %ebp
	call      PyErr_SetString
.L000010D5:
	jmp       .L00001030
	.size	buffer_ass_slice, .-buffer_ass_slice
# ----------------------
.L000010DA:
	.p2align 3
# ----------------------
	.local	buffer_hash
	.type	buffer_hash, @function
buffer_hash:
	pushq     %r12
	pushq     %rbp
	movq      %rdi, %rbp
	pushq     %rbx
	subq      $16, %rsp
	movq      48(%rdi), %rbx
	cmpq      $-1, %rbx
	je        .L00001108
.L000010F5:
	addq      $16, %rsp
	movq      %rbx, %rax
	popq      %rbx
	popq      %rbp
	popq      %r12
	ret       
.L00001101:
	.p2align 3
.L00001108:
	movl      40(%rdi), %ecx
	testl     %ecx, %ecx
	je        .L00001210
.L00001113:
	movq      16(%rdi), %rdi
	testq     %rdi, %rdi
	je        .L00001200
.L00001120:
	movq      8(%rdi), %rax
	xorl      %esi, %esi
	movq      152(%rax), %r12
	call      *16(%r12)
.L00001132:
	cmpl      $1, %eax
	jne       .L000011E0
.L0000113B:
	movl      40(%rbp), %edx
	movq      8(%r12), %rax
	movq      16(%rbp), %rdi
	testl     %edx, %edx
	cmovne    (%r12), %rax
	movq      %rsp, %rdx
	xorl      %esi, %esi
	call      *%rax
.L00001155:
	testl     %eax, %eax
	js        .L000010F5
.L00001159:
	movl      36(%rbp), %ecx
	movl      32(%rbp), %ebx
	movl      %eax, %edi
	cmpl      %ecx, %eax
	cmovle    %eax, %ecx
	movslq    %ecx, %rdx
	addq      (%rsp), %rdx
	cmpl      $-1, %ebx
	cmove     %eax, %ebx
	subl      %ecx, %edi
	leal      (%rbx,%rcx), %esi
	cmpl      %esi, %eax
	movq      %rdx, (%rsp)
	cmovl     %edi, %ebx
.L00001181:
	movzbl    (%rdx), %ecx
	sall      $7, %ecx
	testl     %ebx, %ebx
	movslq    %ecx, %rcx
	jle       .L000011B7
.L0000118E:
	leal      -1(%rbx), %eax
	leaq      1(%rdx,%rax), %rax
	.p2align 4
.L000011A0:
	addq      $1, %rdx
	imulq     $1000003, %rcx, %rsi
	movzbl    -1(%rdx), %ecx
	xorq      %rsi, %rcx
	cmpq      %rax, %rdx
	jne       .L000011A0
.L000011B7:
	movslq    %ebx, %rbx
	movq      $-2, %rax
	xorq      %rcx, %rbx
	cmpq      $-1, %rbx
	cmove     %rax, %rbx
	movq      %rbx, 48(%rbp)
	addq      $16, %rsp
	movq      %rbx, %rax
	popq      %rbx
	popq      %rbp
	popq      %r12
	ret       
.L000011DC:
	.p2align 3
.L000011E0:
	movq      PyExc_TypeError(%rip), %rdi
	movl      $.LC00000000.str1.8, %esi
	call      PyErr_SetString
.L000011F1:
	addq      $16, %rsp
	movq      %rbx, %rax
	popq      %rbx
	popq      %rbp
	popq      %r12
	ret       
.L000011FD:
	.p2align 3
.L00001200:
	movq      24(%rbp), %rdx
	movl      32(%rbp), %ebx
	movq      %rdx, (%rsp)
	jmp       .L00001181
.L00001210:
	movq      PyExc_TypeError(%rip), %rdi
	movl      $.LC00000148.str1.8, %esi
	call      PyErr_SetString
.L00001221:
	jmp       .L000010F5
	.size	buffer_hash, .-buffer_hash
# ----------------------
.L00001226:
	.p2align 4
# ----------------------
	.globl	PyBuffer_FromObject
	.type	PyBuffer_FromObject, @function
PyBuffer_FromObject:
	pushq     %r12
	pushq     %rbp
	pushq     %rbx
	movq      8(%rdi), %rcx
	movq      152(%rcx), %rax
	testq     %rax, %rax
	je        .L00001318
.L00001248:
	cmpq      $0, (%rax)
	je        .L00001318
.L00001252:
	cmpq      $0, 16(%rax)
	je        .L00001318
.L0000125D:
	testl     %esi, %esi
	movl      %esi, %ebx
	js        .L00001330
.L00001267:
	cmpq      $PyBuffer_Type, %rcx
	movl      %edx, %r12d
	je        .L00001288
.L00001273:
	cmpl      $-1, %r12d
	jl        .L00001349
.L0000127D:
	movq      %rdi, %rbp
	jmp       .L000012C9
.L00001282:
	.p2align 3
.L00001288:
	movq      16(%rdi), %rbp
	testq     %rbp, %rbp
	je        .L00001273
.L00001291:
	movl      32(%rdi), %eax
	cmpl      $-1, %eax
	je        .L000012B8
.L00001299:
	xorl      %edx, %edx
	subl      %esi, %eax
	cmovns    %eax, %edx
	cmpl      %edx, %r12d
	jg        .L000012AB
.L000012A5:
	cmpl      $-1, %r12d
	jne       .L000012B8
.L000012AB:
	addl      36(%rdi), %ebx
	movl      %edx, %r12d
	jmp       .L000012C5
.L000012B3:
	.p2align 3
.L000012B8:
	addl      36(%rdi), %ebx
	cmpl      $-1, %r12d
	jl        .L00001349
.L000012C5:
	testl     %ebx, %ebx
	js        .L00001330
.L000012C9:
	movslq    PyBuffer_Type+32(%rip), %rdi
	call      PyObject_Malloc
.L000012D5:
	movl      $PyBuffer_Type, %esi
	movq      %rax, %rdi
	call      PyObject_Init
.L000012E2:
	testq     %rax, %rax
	je        .L00001345
.L000012E7:
	addl      $1, (%rbp)
	movq      %rbp, 16(%rax)
	movq      $0, 24(%rax)
	movl      %r12d, 32(%rax)
	movl      %ebx, 36(%rax)
	movl      $1, 40(%rax)
	movq      $-1, 48(%rax)
.L0000130D:
	popq      %rbx
	popq      %rbp
	popq      %r12
	ret       
.L00001312:
	.p2align 3
.L00001318:
	movq      PyExc_TypeError(%rip), %rdi
	movl      $.LC0000002A.str1.1, %esi
	call      PyErr_SetString
.L00001329:
	xorl      %eax, %eax
	jmp       .L0000130D
.L0000132D:
	.p2align 3
.L00001330:
	movq      PyExc_ValueError(%rip), %rdi
	movl      $.LC00000080.str1.8, %esi
	call      PyErr_SetString
.L00001341:
	xorl      %eax, %eax
	jmp       .L0000130D
.L00001345:
	xorl      %eax, %eax
	jmp       .L0000130D
.L00001349:
	movq      PyExc_ValueError(%rip), %rdi
	movl      $.LC00000041.str1.1, %esi
	call      PyErr_SetString
.L0000135A:
	xorl      %eax, %eax
	jmp       .L0000130D
	.size	PyBuffer_FromObject, .-PyBuffer_FromObject
# ----------------------
.L0000135E:
	.p2align 3
# ----------------------
	.globl	PyBuffer_FromReadWriteObject
	.type	PyBuffer_FromReadWriteObject, @function
PyBuffer_FromReadWriteObject:
	pushq     %r12
	pushq     %rbp
	pushq     %rbx
	movq      8(%rdi), %rcx
	movq      152(%rcx), %rax
	testq     %rax, %rax
	je        .L00001448
.L00001378:
	cmpq      $0, 8(%rax)
	je        .L00001448
.L00001383:
	cmpq      $0, 16(%rax)
	je        .L00001448
.L0000138E:
	testl     %esi, %esi
	movl      %esi, %ebx
	js        .L00001460
.L00001398:
	cmpq      $PyBuffer_Type, %rcx
	movl      %edx, %r12d
	je        .L000013B8
.L000013A4:
	cmpl      $-1, %r12d
	jl        .L00001479
.L000013AE:
	movq      %rdi, %rbp
	jmp       .L000013F9
.L000013B3:
	.p2align 3
.L000013B8:
	movq      16(%rdi), %rbp
	testq     %rbp, %rbp
	je        .L000013A4
.L000013C1:
	movl      32(%rdi), %eax
	cmpl      $-1, %eax
	je        .L000013E8
.L000013C9:
	xorl      %edx, %edx
	subl      %esi, %eax
	cmovns    %eax, %edx
	cmpl      %edx, %r12d
	jg        .L000013DB
.L000013D5:
	cmpl      $-1, %r12d
	jne       .L000013E8
.L000013DB:
	addl      36(%rdi), %ebx
	movl      %edx, %r12d
	jmp       .L000013F5
.L000013E3:
	.p2align 3
.L000013E8:
	addl      36(%rdi), %ebx
	cmpl      $-1, %r12d
	jl        .L00001479
.L000013F5:
	testl     %ebx, %ebx
	js        .L00001460
.L000013F9:
	movslq    PyBuffer_Type+32(%rip), %rdi
	call      PyObject_Malloc
.L00001405:
	movl      $PyBuffer_Type, %esi
	movq      %rax, %rdi
	call      PyObject_Init
.L00001412:
	testq     %rax, %rax
	je        .L00001475
.L00001417:
	addl      $1, (%rbp)
	movq      %rbp, 16(%rax)
	movq      $0, 24(%rax)
	movl      %r12d, 32(%rax)
	movl      %ebx, 36(%rax)
	movl      $0, 40(%rax)
	movq      $-1, 48(%rax)
.L0000143D:
	popq      %rbx
	popq      %rbp
	popq      %r12
	ret       
.L00001442:
	.p2align 3
.L00001448:
	movq      PyExc_TypeError(%rip), %rdi
	movl      $.LC0000002A.str1.1, %esi
	call      PyErr_SetString
.L00001459:
	xorl      %eax, %eax
	jmp       .L0000143D
.L0000145D:
	.p2align 3
.L00001460:
	movq      PyExc_ValueError(%rip), %rdi
	movl      $.LC00000080.str1.8, %esi
	call      PyErr_SetString
.L00001471:
	xorl      %eax, %eax
	jmp       .L0000143D
.L00001475:
	xorl      %eax, %eax
	jmp       .L0000143D
.L00001479:
	movq      PyExc_ValueError(%rip), %rdi
	movl      $.LC00000041.str1.1, %esi
	call      PyErr_SetString
.L0000148A:
	xorl      %eax, %eax
	jmp       .L0000143D
	.size	PyBuffer_FromReadWriteObject, .-PyBuffer_FromReadWriteObject
# ----------------------
.L0000148E:
	.p2align 3
# ----------------------
	.globl	PyBuffer_FromMemory
	.type	PyBuffer_FromMemory, @function
PyBuffer_FromMemory:
	pushq     %rbp
	pushq     %rbx
	movl      %esi, %ebx
	subq      $8, %rsp
	cmpl      $-1, %esi
	jl        .L000014F8
.L0000149D:
	movq      %rdi, %rbp
	movslq    PyBuffer_Type+32(%rip), %rdi
	call      PyObject_Malloc
.L000014AC:
	movl      $PyBuffer_Type, %esi
	movq      %rax, %rdi
	call      PyObject_Init
.L000014B9:
	testq     %rax, %rax
	je        .L000014F0
.L000014BE:
	movq      $0, 16(%rax)
	movq      %rbp, 24(%rax)
	movl      %ebx, 32(%rax)
	movl      $0, 36(%rax)
	movl      $1, 40(%rax)
	movq      $-1, 48(%rax)
.L000014E3:
	addq      $8, %rsp
	popq      %rbx
	popq      %rbp
	ret       
.L000014EA:
	.p2align 3
.L000014F0:
	xorl      %eax, %eax
	jmp       .L000014E3
.L000014F4:
	.p2align 3
.L000014F8:
	movq      PyExc_ValueError(%rip), %rdi
	movl      $.LC00000041.str1.1, %esi
	call      PyErr_SetString
.L00001509:
	xorl      %eax, %eax
	jmp       .L000014E3
	.size	PyBuffer_FromMemory, .-PyBuffer_FromMemory
# ----------------------
.L0000150D:
	.p2align 3
# ----------------------
	.globl	PyBuffer_FromReadWriteMemory
	.type	PyBuffer_FromReadWriteMemory, @function
PyBuffer_FromReadWriteMemory:
	pushq     %rbp
	pushq     %rbx
	movl      %esi, %ebx
	subq      $8, %rsp
	cmpl      $-1, %esi
	jl        .L00001578
.L0000151D:
	movq      %rdi, %rbp
	movslq    PyBuffer_Type+32(%rip), %rdi
	call      PyObject_Malloc
.L0000152C:
	movl      $PyBuffer_Type, %esi
	movq      %rax, %rdi
	call      PyObject_Init
.L00001539:
	testq     %rax, %rax
	je        .L00001570
.L0000153E:
	movq      $0, 16(%rax)
	movq      %rbp, 24(%rax)
	movl      %ebx, 32(%rax)
	movl      $0, 36(%rax)
	movl      $0, 40(%rax)
	movq      $-1, 48(%rax)
.L00001563:
	addq      $8, %rsp
	popq      %rbx
	popq      %rbp
	ret       
.L0000156A:
	.p2align 3
.L00001570:
	xorl      %eax, %eax
	jmp       .L00001563
.L00001574:
	.p2align 3
.L00001578:
	movq      PyExc_ValueError(%rip), %rdi
	movl      $.LC00000041.str1.1, %esi
	call      PyErr_SetString
.L00001589:
	xorl      %eax, %eax
	jmp       .L00001563
	.size	PyBuffer_FromReadWriteMemory, .-PyBuffer_FromReadWriteMemory
# ----------------------
.L0000158D:
	.p2align 3
# ----------------------
	.globl	PyBuffer_New
	.type	PyBuffer_New, @function
PyBuffer_New:
	testl     %edi, %edi
	pushq     %rbx
	movl      %edi, %ebx
	js        .L00001600
.L00001597:
	movl      $2147483647, %eax
	subl      %edi, %eax
	cmpl      $55, %eax
	jbe       .L000015F0
.L000015A3:
	movslq    %edi, %rdi
	addq      $56, %rdi
	call      PyObject_Malloc
.L000015AF:
	testq     %rax, %rax
	je        .L000015F0
.L000015B4:
	leaq      56(%rax), %rdx
	movq      $PyBuffer_Type, 8(%rax)
	movl      $1, (%rax)
	movq      $0, 16(%rax)
	movl      %ebx, 32(%rax)
	movq      %rdx, 24(%rax)
	movl      $0, 36(%rax)
	movl      $0, 40(%rax)
	movq      $-1, 48(%rax)
	popq      %rbx
	ret       
.L000015ED:
	.p2align 3
.L000015F0:
	popq      %rbx
	jmp       PyErr_NoMemory
.L000015F6:
	.p2align 4
.L00001600:
	movq      PyExc_ValueError(%rip), %rdi
	movl      $.LC00000041.str1.1, %esi
	call      PyErr_SetString
.L00001611:
	xorl      %eax, %eax
	popq      %rbx
	ret       
	.size	PyBuffer_New, .-PyBuffer_New
# ----------------------
	.ident	"GCC: (Ubuntu 4.8.4-2ubuntu1~14.04.3) 4.8.4"
	.section	.note.GNU-stack,"",@progbits
