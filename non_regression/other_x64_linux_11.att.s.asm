	.file	"bufferobject.c"
	.section       .rodata.str1.8,"aMS",@progbits,1
	.align 8
.LC0:
	.string	"single-segment buffer object expected"
	.align 8
.LC3:
	.string	"<%s buffer ptr %p, size %d at %p>"
	.align 8
.LC4:
	.string	"<%s buffer for %p, size %d, offset %d at %p>"
	.align 8
.LC8:
	.string	"offset must be zero or positive"
	.align 8
.LC10:
	.string	"accessing non-existent buffer segment"
	.align 8
.LC13:
	.string	"buffer assignment index out of range"
	.align 8
.LC14:
	.string	"right operand must be a single byte"
	.align 8
.LC15:
	.string	"right operand length must match slice length"
	.align 8
.LC16:
	.string	"writable buffers are not hashable"
# ----------------------
	.text
	.p2align 4,,15
# ----------------------
	.local	buffer_repeat
	.type	buffer_repeat, @function
buffer_repeat:
	.cfi_startproc
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
	je        .L22
	movq      8(%rdi), %rax
	xorl      %esi, %esi
	movq      152(%rax), %rbp
	call      *16(%rbp)
	cmpl      $1, %eax
	jne       .L23
	movl      40(%rbx), %edx
	movq      8(%rbp), %rax
	movq      16(%rbx), %rdi
	testl     %edx, %edx
	cmovne    (%rbp), %rax
	movq      %rsp, %rdx
	xorl      %esi, %esi
	call      *%rax
	testl     %eax, %eax
	js        .L5
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
.L3:
	xorl      %ebx, %ebx
	testl     %r12d, %r12d
	cmovns    %r12d, %ebx
	xorl      %edi, %edi
	movl      %ebx, %esi
	imull     %ebp, %esi
	call      PyString_FromStringAndSize
	testq     %rax, %rax
	movq      %rax, %r13
	je        .L5
	testl     %ebx, %ebx
	leaq      36(%r13), %r12
	leal      -1(%rbx), %r14d
	je        .L8
	movslq    %ebp, %rbp
	movq      %r12, %rcx
	.p2align 4,,10
	.p2align 3
.L10:
	movq      (%rsp), %rsi
	movq      %rcx, %rdi
	movq      %rbp, %rdx
	call      memcpy
	movq      %rax, %rcx
	addq      %rbp, %rcx
	subl      $1, %ebx
	jne       .L10
	movslq    %r14d, %r14
	addq      $1, %r14
	imulq     %r14, %rbp
	addq      %rbp, %r12
.L8:
	movb      $0, (%r12)
	addq      $16, %rsp
	movq      %r13, %rax
	popq      %rbx
	popq      %rbp
	popq      %r12
	popq      %r13
	popq      %r14
	ret       
	.p2align 4,,10
	.p2align 3
.L23:
	movq      PyExc_TypeError(%rip), %rdi
	movl      $.LC0, %esi
	call      PyErr_SetString
.L5:
	addq      $16, %rsp
	xorl      %eax, %eax
	popq      %rbx
	popq      %rbp
	popq      %r12
	popq      %r13
	popq      %r14
	ret       
	.p2align 4,,10
	.p2align 3
.L22:
	movq      24(%rbx), %rax
	movl      32(%rbx), %ebp
	movq      %rax, (%rsp)
	jmp       .L3
	.cfi_endproc
	.size	buffer_repeat, .-buffer_repeat
# ----------------------
	.section       .rodata.str1.1,"aMS",@progbits,1
.LC1:
	.string	"read-only"
.LC2:
	.string	"read-write"
.LC5:
	.string	"buffer()"
.LC6:
	.string	"O|ii:buffer"
.LC7:
	.string	"buffer object expected"
.LC9:
	.string	"size must be zero or positive"
.LC11:
	.string	"buffer is read-only"
.LC12:
	.string	"buffer index out of range"
.LC17:
	.string	"buffer"
# ----------------------
	.text
	.p2align 4,,15
# ----------------------
	.local	buffer_repr
	.type	buffer_repr, @function
buffer_repr:
	.cfi_startproc
	movl      40(%rdi), %eax
	movq      16(%rdi), %rdx
	movl      $.LC1, %esi
	movl      32(%rdi), %ecx
	testl     %eax, %eax
	movl      $.LC2, %eax
	cmove     %rax, %rsi
	testq     %rdx, %rdx
	je        .L28
	movl      36(%rdi), %r8d
	movq      %rdi, %r9
	xorl      %eax, %eax
	movl      $.LC4, %edi
	jmp       PyString_FromFormat
	.p2align 4,,10
	.p2align 3
.L28:
	movq      24(%rdi), %rdx
	movq      %rdi, %r8
	xorl      %eax, %eax
	movl      $.LC3, %edi
	jmp       PyString_FromFormat
	.cfi_endproc
	.size	buffer_repr, .-buffer_repr
# ----------------------
	.p2align 4,,15
# ----------------------
	.local	buffer_dealloc
	.type	buffer_dealloc, @function
buffer_dealloc:
	.cfi_startproc
	pushq     %rbx
	movq      16(%rdi), %rax
	movq      %rdi, %rbx
	testq     %rax, %rax
	je        .L31
	movl      (%rax), %ecx
	leal      -1(%rcx), %edx
	testl     %edx, %edx
	movl      %edx, (%rax)
	jne       .L31
	movq      16(%rdi), %rdi
	movq      8(%rdi), %rax
	call      *40(%rax)
.L31:
	movq      %rbx, %rdi
	popq      %rbx
	jmp       PyObject_Free
	.cfi_endproc
	.size	buffer_dealloc, .-buffer_dealloc
# ----------------------
	.p2align 4,,15
# ----------------------
	.local	buffer_new
	.type	buffer_new, @function
buffer_new:
	.cfi_startproc
	pushq     %r12
	movl      $.LC5, %edi
	pushq     %rbp
	pushq     %rbx
	movq      %rsi, %rbx
	movq      %rdx, %rsi
	subq      $48, %rsp
	movl      $0, (%rsp)
	movl      $-1, 16(%rsp)
	call      _PyArg_NoKeywords
	testl     %eax, %eax
	je        .L65
	leaq      16(%rsp), %r8
	leaq      32(%rsp), %rdx
	xorl      %eax, %eax
	movq      %rsp, %rcx
	movl      $.LC6, %esi
	movq      %rbx, %rdi
	call      PyArg_ParseTuple
	testl     %eax, %eax
	je        .L65
	movq      32(%rsp), %rcx
	movl      16(%rsp), %r12d
	movl      (%rsp), %ebx
	movq      8(%rcx), %rdx
	movq      152(%rdx), %rax
	testq     %rax, %rax
	je        .L38
	cmpq      $0, (%rax)
	je        .L38
	cmpq      $0, 16(%rax)
	je        .L38
	testl     %ebx, %ebx
	js        .L66
	cmpq      $PyBuffer_Type, %rdx
	je        .L67
.L43:
	cmpl      $-1, %r12d
	jl        .L49
	movq      %rcx, %rbp
	.p2align 4,,10
	.p2align 3
.L48:
	movslq    PyBuffer_Type+32(%rip), %rdi
	call      PyObject_Malloc
	movl      $PyBuffer_Type, %esi
	movq      %rax, %rdi
	call      PyObject_Init
	testq     %rax, %rax
	je        .L65
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
	.p2align 4,,10
	.p2align 3
.L67:
	movq      16(%rcx), %rbp
	testq     %rbp, %rbp
	je        .L43
	movl      32(%rcx), %eax
	cmpl      $-1, %eax
	je        .L44
	xorl      %edx, %edx
	subl      %ebx, %eax
	cmovns    %eax, %edx
	cmpl      %edx, %r12d
	jg        .L45
	cmpl      $-1, %r12d
	jne       .L44
.L45:
	addl      36(%rcx), %ebx
	movl      %edx, %r12d
.L46:
	testl     %ebx, %ebx
	jns       .L48
.L66:
	movq      PyExc_ValueError(%rip), %rdi
	movl      $.LC8, %esi
	call      PyErr_SetString
	.p2align 4,,10
	.p2align 3
.L65:
	xorl      %eax, %eax
.L63:
	addq      $48, %rsp
	popq      %rbx
	popq      %rbp
	popq      %r12
	ret       
	.p2align 4,,10
	.p2align 3
.L44:
	addl      36(%rcx), %ebx
	cmpl      $-1, %r12d
	jge       .L46
.L49:
	movq      PyExc_ValueError(%rip), %rdi
	movl      $.LC9, %esi
	call      PyErr_SetString
	xorl      %eax, %eax
	jmp       .L63
	.p2align 4,,10
	.p2align 3
.L38:
	movq      PyExc_TypeError(%rip), %rdi
	movl      $.LC7, %esi
	call      PyErr_SetString
	xorl      %eax, %eax
	jmp       .L63
	.cfi_endproc
	.size	buffer_new, .-buffer_new
# ----------------------
	.p2align 4,,15
# ----------------------
	.local	buffer_length
	.type	buffer_length, @function
buffer_length:
	.cfi_startproc
	pushq     %rbp
	pushq     %rbx
	movq      %rdi, %rbx
	subq      $24, %rsp
	movq      16(%rdi), %rdi
	testq     %rdi, %rdi
	je        .L79
	movq      8(%rdi), %rax
	xorl      %esi, %esi
	movq      152(%rax), %rbp
	call      *16(%rbp)
	cmpl      $1, %eax
	jne       .L80
	movl      40(%rbx), %edx
	movq      8(%rbp), %rax
	movq      16(%rbx), %rdi
	testl     %edx, %edx
	cmovne    (%rbp), %rax
	movq      %rsp, %rdx
	xorl      %esi, %esi
	call      *%rax
	testl     %eax, %eax
	js        .L72
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
.L70:
	addq      $24, %rsp
	movl      %edx, %eax
	popq      %rbx
	popq      %rbp
	ret       
	.p2align 4,,10
	.p2align 3
.L80:
	movq      PyExc_TypeError(%rip), %rdi
	movl      $.LC0, %esi
	call      PyErr_SetString
.L72:
	addq      $24, %rsp
	movl      $-1, %eax
	popq      %rbx
	popq      %rbp
	ret       
	.p2align 4,,10
	.p2align 3
.L79:
	movl      32(%rbx), %edx
	jmp       .L70
	.cfi_endproc
	.size	buffer_length, .-buffer_length
# ----------------------
	.p2align 4,,15
# ----------------------
	.local	buffer_getsegcount
	.type	buffer_getsegcount, @function
buffer_getsegcount:
	.cfi_startproc
	pushq     %r12
	movq      %rsi, %r12
	pushq     %rbp
	pushq     %rbx
	movq      %rdi, %rbx
	subq      $16, %rsp
	movq      16(%rdi), %rdi
	testq     %rdi, %rdi
	je        .L93
	movq      8(%rdi), %rax
	xorl      %esi, %esi
	movq      152(%rax), %rbp
	call      *16(%rbp)
	cmpl      $1, %eax
	jne       .L94
	movl      40(%rbx), %edx
	movq      8(%rbp), %rax
	movq      16(%rbx), %rdi
	testl     %edx, %edx
	cmovne    (%rbp), %rax
	movq      %rsp, %rdx
	xorl      %esi, %esi
	call      *%rax
	testl     %eax, %eax
	js        .L85
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
.L83:
	testq     %r12, %r12
	movl      $1, %eax
	je        .L91
	movl      %edx, (%r12)
	movl      $1, %eax
.L91:
	addq      $16, %rsp
	popq      %rbx
	popq      %rbp
	popq      %r12
	ret       
	.p2align 4,,10
	.p2align 3
.L94:
	movq      PyExc_TypeError(%rip), %rdi
	movl      $.LC0, %esi
	call      PyErr_SetString
.L85:
	addq      $16, %rsp
	movl      $-1, %eax
	popq      %rbx
	popq      %rbp
	popq      %r12
	ret       
	.p2align 4,,10
	.p2align 3
.L93:
	movq      24(%rbx), %rax
	movl      32(%rbx), %edx
	movq      %rax, (%rsp)
	jmp       .L83
	.cfi_endproc
	.size	buffer_getsegcount, .-buffer_getsegcount
# ----------------------
	.p2align 4,,15
# ----------------------
	.local	buffer_getreadbuf
	.type	buffer_getreadbuf, @function
buffer_getreadbuf:
	.cfi_startproc
	pushq     %r12
	testl     %esi, %esi
	pushq     %rbp
	pushq     %rbx
	jne       .L107
	movq      %rdi, %rbx
	movq      16(%rdi), %rdi
	movq      %rdx, %r12
	testq     %rdi, %rdi
	je        .L108
	movq      8(%rdi), %rax
	xorl      %esi, %esi
	movq      152(%rax), %rbp
	call      *16(%rbp)
	cmpl      $1, %eax
	jne       .L109
	movl      40(%rbx), %edx
	movq      8(%rbp), %rax
	movq      16(%rbx), %rdi
	testl     %edx, %edx
	cmovne    (%rbp), %rax
	movq      %r12, %rdx
	xorl      %esi, %esi
	call      *%rax
	testl     %eax, %eax
	js        .L101
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
.L99:
	movl      %edx, %eax
.L105:
	popq      %rbx
	popq      %rbp
	popq      %r12
	ret       
	.p2align 4,,10
	.p2align 3
.L109:
	movq      PyExc_TypeError(%rip), %rdi
	movl      $.LC0, %esi
	call      PyErr_SetString
.L101:
	popq      %rbx
	popq      %rbp
	movl      $-1, %eax
	popq      %r12
	ret       
	.p2align 4,,10
	.p2align 3
.L108:
	movq      24(%rbx), %rax
	movq      %rax, (%rdx)
	movl      32(%rbx), %edx
	jmp       .L99
	.p2align 4,,10
	.p2align 3
.L107:
	movq      PyExc_SystemError(%rip), %rdi
	movl      $.LC10, %esi
	call      PyErr_SetString
	movl      $-1, %eax
	jmp       .L105
	.cfi_endproc
	.size	buffer_getreadbuf, .-buffer_getreadbuf
# ----------------------
	.p2align 4,,15
# ----------------------
	.local	buffer_getcharbuf
	.type	buffer_getcharbuf, @function
buffer_getcharbuf:
	.cfi_startproc
	pushq     %r12
	pushq     %rbp
	pushq     %rbx
	subq      $16, %rsp
	testl     %esi, %esi
	jne       .L123
	movq      %rdi, %rbx
	movq      16(%rdi), %rdi
	movq      %rdx, %r12
	testq     %rdi, %rdi
	je        .L124
	movq      8(%rdi), %rax
	xorl      %esi, %esi
	movq      152(%rax), %rbp
	call      *16(%rbp)
	cmpl      $1, %eax
	jne       .L125
	movl      40(%rbx), %edx
	movq      8(%rbp), %rax
	movq      16(%rbx), %rdi
	testl     %edx, %edx
	cmovne    (%rbp), %rax
	movq      %rsp, %rdx
	xorl      %esi, %esi
	call      *%rax
	testl     %eax, %eax
	js        .L116
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
.L114:
	movq      %rdx, (%r12)
	movl      %ecx, %eax
.L121:
	addq      $16, %rsp
	popq      %rbx
	popq      %rbp
	popq      %r12
	ret       
	.p2align 4,,10
	.p2align 3
.L125:
	movq      PyExc_TypeError(%rip), %rdi
	movl      $.LC0, %esi
	call      PyErr_SetString
.L116:
	addq      $16, %rsp
	movl      $-1, %eax
	popq      %rbx
	popq      %rbp
	popq      %r12
	ret       
	.p2align 4,,10
	.p2align 3
.L124:
	movq      24(%rbx), %rdx
	movl      32(%rbx), %ecx
	jmp       .L114
	.p2align 4,,10
	.p2align 3
.L123:
	movq      PyExc_SystemError(%rip), %rdi
	movl      $.LC10, %esi
	call      PyErr_SetString
	movl      $-1, %eax
	jmp       .L121
	.cfi_endproc
	.size	buffer_getcharbuf, .-buffer_getcharbuf
# ----------------------
	.p2align 4,,15
# ----------------------
	.local	buffer_getwritebuf
	.type	buffer_getwritebuf, @function
buffer_getwritebuf:
	.cfi_startproc
	pushq     %r12
	pushq     %rbp
	pushq     %rbx
	movl      40(%rdi), %ecx
	movq      %rdi, %rbx
	testl     %ecx, %ecx
	jne       .L140
	testl     %esi, %esi
	jne       .L141
	movq      16(%rdi), %rdi
	movq      %rdx, %rbp
	testq     %rdi, %rdi
	je        .L142
	movq      8(%rdi), %rax
	xorl      %esi, %esi
	movq      152(%rax), %r12
	call      *16(%r12)
	cmpl      $1, %eax
	jne       .L143
	movl      40(%rbx), %edx
	movq      8(%r12), %rax
	movq      16(%rbx), %rdi
	testl     %edx, %edx
	cmovne    (%r12), %rax
	movq      %rbp, %rdx
	xorl      %esi, %esi
	call      *%rax
	testl     %eax, %eax
	js        .L134
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
.L132:
	movl      %edx, %eax
.L138:
	popq      %rbx
	popq      %rbp
	popq      %r12
	ret       
	.p2align 4,,10
	.p2align 3
.L143:
	movq      PyExc_TypeError(%rip), %rdi
	movl      $.LC0, %esi
	call      PyErr_SetString
.L134:
	popq      %rbx
	popq      %rbp
	movl      $-1, %eax
	popq      %r12
	ret       
	.p2align 4,,10
	.p2align 3
.L142:
	movq      24(%rbx), %rax
	movq      %rax, (%rdx)
	movl      32(%rbx), %edx
	jmp       .L132
	.p2align 4,,10
	.p2align 3
.L140:
	movq      PyExc_TypeError(%rip), %rdi
	movl      $.LC11, %esi
	call      PyErr_SetString
	movl      $-1, %eax
	jmp       .L138
	.p2align 4,,10
	.p2align 3
.L141:
	movq      PyExc_SystemError(%rip), %rdi
	movl      $.LC10, %esi
	call      PyErr_SetString
	movl      $-1, %eax
	jmp       .L138
	.cfi_endproc
	.size	buffer_getwritebuf, .-buffer_getwritebuf
# ----------------------
	.p2align 4,,15
# ----------------------
	.local	buffer_str
	.type	buffer_str, @function
buffer_str:
	.cfi_startproc
	pushq     %rbp
	pushq     %rbx
	movq      %rdi, %rbx
	subq      $24, %rsp
	movq      16(%rdi), %rdi
	testq     %rdi, %rdi
	je        .L156
	movq      8(%rdi), %rax
	xorl      %esi, %esi
	movq      152(%rax), %rbp
	call      *16(%rbp)
	cmpl      $1, %eax
	jne       .L157
	movl      40(%rbx), %edx
	movq      8(%rbp), %rax
	movq      16(%rbx), %rdi
	testl     %edx, %edx
	cmovne    (%rbp), %rax
	movq      %rsp, %rdx
	xorl      %esi, %esi
	call      *%rax
	testl     %eax, %eax
	js        .L148
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
.L146:
	call      PyString_FromStringAndSize
	addq      $24, %rsp
	popq      %rbx
	popq      %rbp
	ret       
	.p2align 4,,10
	.p2align 3
.L157:
	movq      PyExc_TypeError(%rip), %rdi
	movl      $.LC0, %esi
	call      PyErr_SetString
.L148:
	addq      $24, %rsp
	xorl      %eax, %eax
	popq      %rbx
	popq      %rbp
	ret       
	.p2align 4,,10
	.p2align 3
.L156:
	movq      24(%rbx), %rdi
	movl      32(%rbx), %esi
	movq      %rdi, (%rsp)
	jmp       .L146
	.cfi_endproc
	.size	buffer_str, .-buffer_str
# ----------------------
	.p2align 4,,15
# ----------------------
	.local	buffer_item
	.type	buffer_item, @function
buffer_item:
	.cfi_startproc
	pushq     %r12
	pushq     %rbp
	movslq    %esi, %rbp
	pushq     %rbx
	movq      %rdi, %rbx
	subq      $16, %rsp
	movq      16(%rdi), %rdi
	testq     %rdi, %rdi
	je        .L174
	movq      8(%rdi), %rax
	xorl      %esi, %esi
	movq      152(%rax), %r12
	call      *16(%r12)
	cmpl      $1, %eax
	jne       .L175
	movl      40(%rbx), %edx
	movq      8(%r12), %rax
	movq      16(%rbx), %rdi
	testl     %edx, %edx
	cmovne    (%r12), %rax
	movq      %rsp, %rdx
	xorl      %esi, %esi
	call      *%rax
	testl     %eax, %eax
	js        .L162
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
.L160:
	testl     %ebp, %ebp
	js        .L167
	cmpl      %edx, %ebp
	jge       .L167
	leaq      (%rcx,%rbp), %rdi
	movl      $1, %esi
	call      PyString_FromStringAndSize
	addq      $16, %rsp
	popq      %rbx
	popq      %rbp
	popq      %r12
	ret       
	.p2align 4,,10
	.p2align 3
.L175:
	movq      PyExc_TypeError(%rip), %rdi
	movl      $.LC0, %esi
	call      PyErr_SetString
.L162:
	addq      $16, %rsp
	xorl      %eax, %eax
	popq      %rbx
	popq      %rbp
	popq      %r12
	ret       
	.p2align 4,,10
	.p2align 3
.L174:
	movq      24(%rbx), %rcx
	movl      32(%rbx), %edx
	movq      %rcx, (%rsp)
	jmp       .L160
	.p2align 4,,10
	.p2align 3
.L167:
	movq      PyExc_IndexError(%rip), %rdi
	movl      $.LC12, %esi
	call      PyErr_SetString
	addq      $16, %rsp
	xorl      %eax, %eax
	popq      %rbx
	popq      %rbp
	popq      %r12
	ret       
	.cfi_endproc
	.size	buffer_item, .-buffer_item
# ----------------------
	.p2align 4,,15
# ----------------------
	.local	buffer_slice
	.type	buffer_slice, @function
buffer_slice:
	.cfi_startproc
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
	je        .L188
	movq      8(%rdi), %rax
	xorl      %esi, %esi
	movq      152(%rax), %r13
	call      *16(%r13)
	cmpl      $1, %eax
	jne       .L189
	movl      40(%rbx), %edx
	movq      8(%r13), %rax
	movq      16(%rbx), %rdi
	testl     %edx, %edx
	cmovne    (%r13), %rax
	movq      %rsp, %rdx
	xorl      %esi, %esi
	call      *%rax
	testl     %eax, %eax
	js        .L180
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
.L178:
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
	addq      $24, %rsp
	popq      %rbx
	popq      %rbp
	popq      %r12
	popq      %r13
	ret       
	.p2align 4,,10
	.p2align 3
.L189:
	movq      PyExc_TypeError(%rip), %rdi
	movl      $.LC0, %esi
	call      PyErr_SetString
.L180:
	addq      $24, %rsp
	xorl      %eax, %eax
	popq      %rbx
	popq      %rbp
	popq      %r12
	popq      %r13
	ret       
	.p2align 4,,10
	.p2align 3
.L188:
	movq      24(%rbx), %rdx
	movl      32(%rbx), %ecx
	movq      %rdx, (%rsp)
	jmp       .L178
	.cfi_endproc
	.size	buffer_slice, .-buffer_slice
# ----------------------
	.p2align 4,,15
# ----------------------
	.local	buffer_compare
	.type	buffer_compare, @function
buffer_compare:
	.cfi_startproc
	pushq     %r12
	pushq     %rbp
	movq      %rsi, %rbp
	pushq     %rbx
	movq      %rdi, %rbx
	subq      $32, %rsp
	movq      16(%rdi), %rdi
	testq     %rdi, %rdi
	je        .L219
	movq      8(%rdi), %rax
	xorl      %esi, %esi
	movq      152(%rax), %r12
	call      *16(%r12)
	cmpl      $1, %eax
	jne       .L218
	movl      40(%rbx), %ecx
	movq      8(%r12), %rax
	movq      %rsp, %rdx
	movq      16(%rbx), %rdi
	testl     %ecx, %ecx
	cmovne    (%r12), %rax
	xorl      %esi, %esi
	call      *%rax
	testl     %eax, %eax
	js        .L194
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
	je        .L220
.L216:
	movq      8(%rdi), %rax
	xorl      %esi, %esi
	movq      152(%rax), %r12
	call      *16(%r12)
	cmpl      $1, %eax
	jne       .L218
	movl      40(%rbp), %edx
	movq      8(%r12), %rax
	movq      16(%rbp), %rdi
	testl     %edx, %edx
	cmovne    (%r12), %rax
	leaq      16(%rsp), %rdx
	xorl      %esi, %esi
	call      *%rax
	testl     %eax, %eax
	js        .L194
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
.L198:
	cmpl      %ebx, %ebp
	movl      %ebx, %edx
	cmovle    %ebp, %edx
	testl     %edx, %edx
	jle       .L202
	movq      (%rsp), %rdi
	movslq    %edx, %rdx
	call      memcmp
	testl     %eax, %eax
	je        .L202
	addq      $32, %rsp
	sarl      $31, %eax
	popq      %rbx
	popq      %rbp
	orl       $1, %eax
	popq      %r12
	ret       
	.p2align 4,,10
	.p2align 3
.L218:
	movq      PyExc_TypeError(%rip), %rdi
	movl      $.LC0, %esi
	call      PyErr_SetString
.L194:
	movl      $-1, %eax
.L214:
	addq      $32, %rsp
	popq      %rbx
	popq      %rbp
	popq      %r12
	ret       
	.p2align 4,,10
	.p2align 3
.L202:
	cmpl      %ebx, %ebp
	movl      $-1, %eax
	jg        .L214
	xorl      %eax, %eax
	cmpl      %ebp, %ebx
	setg      %al
	addq      $32, %rsp
	popq      %rbx
	popq      %rbp
	popq      %r12
	ret       
	.p2align 4,,10
	.p2align 3
.L219:
	movq      16(%rbp), %rdi
	movq      24(%rbx), %rax
	movl      32(%rbx), %ebx
	testq     %rdi, %rdi
	movq      %rax, (%rsp)
	jne       .L216
.L220:
	movq      24(%rbp), %rsi
	movl      32(%rbp), %ebp
	movq      %rsi, 16(%rsp)
	jmp       .L198
	.cfi_endproc
	.size	buffer_compare, .-buffer_compare
# ----------------------
	.p2align 4,,15
# ----------------------
	.local	buffer_ass_item
	.type	buffer_ass_item, @function
buffer_ass_item:
	.cfi_startproc
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
	jne       .L248
	movq      16(%rdi), %rdi
	movq      %rdx, %r12
	testq     %rdi, %rdi
	je        .L249
	movq      8(%rdi), %rax
	xorl      %esi, %esi
	movq      152(%rax), %r14
	call      *16(%r14)
	cmpl      $1, %eax
	jne       .L250
	movl      40(%rbx), %edx
	movq      8(%r14), %rax
	movq      16(%rbx), %rdi
	testl     %edx, %edx
	cmovne    (%r14), %rax
	movq      %rsp, %rdx
	xorl      %esi, %esi
	call      *%rax
	testl     %eax, %eax
	js        .L227
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
.L225:
	testl     %r13d, %r13d
	js        .L235
	cmpl      %edx, %r13d
	jge       .L235
	testq     %r12, %r12
	je        .L231
	movq      8(%r12), %rax
	movq      152(%rax), %rbx
	testq     %rbx, %rbx
	je        .L231
	cmpq      $0, (%rbx)
	je        .L231
	movq      16(%rbx), %rax
	testq     %rax, %rax
	je        .L231
	xorl      %esi, %esi
	movq      %r12, %rdi
	call      *%rax
	cmpl      $1, %eax
	jne       .L251
	xorl      %esi, %esi
	leaq      16(%rsp), %rdx
	movq      %r12, %rdi
	call      *(%rbx)
	testl     %eax, %eax
	js        .L227
	cmpl      $1, %eax
	jne       .L252
	movq      16(%rsp), %rax
	movzbl    (%rax), %edx
	movq      (%rsp), %rax
	movb      %dl, (%rax,%r13)
.L245:
	addq      $32, %rsp
	movl      %ebp, %eax
	popq      %rbx
	popq      %rbp
	popq      %r12
	popq      %r13
	popq      %r14
	ret       
	.p2align 4,,10
	.p2align 3
.L250:
	movq      PyExc_TypeError(%rip), %rdi
	movl      $.LC0, %esi
	call      PyErr_SetString
.L227:
	addq      $32, %rsp
	movl      $-1, %ebp
	popq      %rbx
	movl      %ebp, %eax
	popq      %rbp
	popq      %r12
	popq      %r13
	popq      %r14
	ret       
	.p2align 4,,10
	.p2align 3
.L249:
	movq      24(%rbx), %rax
	movl      32(%rbx), %edx
	movq      %rax, (%rsp)
	jmp       .L225
	.p2align 4,,10
	.p2align 3
.L251:
	movq      PyExc_TypeError(%rip), %rdi
	movl      $.LC0, %esi
	movl      $-1, %ebp
	call      PyErr_SetString
	jmp       .L245
	.p2align 4,,10
	.p2align 3
.L235:
	movq      PyExc_IndexError(%rip), %rdi
	movl      $.LC13, %esi
	movl      $-1, %ebp
	call      PyErr_SetString
	jmp       .L245
	.p2align 4,,10
	.p2align 3
.L248:
	movq      PyExc_TypeError(%rip), %rdi
	movl      $.LC11, %esi
	movl      $-1, %ebp
	call      PyErr_SetString
	jmp       .L245
	.p2align 4,,10
	.p2align 3
.L252:
	movq      PyExc_TypeError(%rip), %rdi
	movl      $.LC14, %esi
	movl      $-1, %ebp
	call      PyErr_SetString
	jmp       .L245
	.p2align 4,,10
	.p2align 3
.L231:
	call      PyErr_BadArgument
	movl      $-1, %ebp
	.p2align 4,,3
	jmp       .L245
	.cfi_endproc
	.size	buffer_ass_item, .-buffer_ass_item
# ----------------------
	.p2align 4,,15
# ----------------------
	.local	buffer_concat
	.type	buffer_concat, @function
buffer_concat:
	.cfi_startproc
	pushq     %r13
	pushq     %r12
	pushq     %rbp
	pushq     %rbx
	movq      %rsi, %rbx
	subq      $40, %rsp
	movq      8(%rsi), %rax
	movq      152(%rax), %rbp
	testq     %rbp, %rbp
	je        .L254
	cmpq      $0, (%rbp)
	je        .L254
	movq      16(%rbp), %rax
	testq     %rax, %rax
	je        .L254
	xorl      %esi, %esi
	movq      %rdi, %r12
	movq      %rbx, %rdi
	call      *%rax
	cmpl      $1, %eax
	jne       .L274
	movq      16(%r12), %rdi
	testq     %rdi, %rdi
	je        .L275
	movq      8(%rdi), %rax
	xorl      %esi, %esi
	movq      152(%rax), %r13
	call      *16(%r13)
	cmpl      $1, %eax
	jne       .L276
	movl      40(%r12), %edx
	movq      8(%r13), %rax
	movq      16(%r12), %rdi
	testl     %edx, %edx
	cmovne    (%r13), %rax
	movq      %rsp, %rdx
	xorl      %esi, %esi
	call      *%rax
	testl     %eax, %eax
	js        .L261
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
.L259:
	testl     %r12d, %r12d
	jne       .L277
	addl      $1, (%rbx)
	movq      %rbx, %rax
.L271:
	addq      $40, %rsp
	popq      %rbx
	popq      %rbp
	popq      %r12
	popq      %r13
	ret       
	.p2align 4,,10
	.p2align 3
.L276:
	movq      PyExc_TypeError(%rip), %rdi
	movl      $.LC0, %esi
	call      PyErr_SetString
.L261:
	addq      $40, %rsp
	xorl      %eax, %eax
	popq      %rbx
	popq      %rbp
	popq      %r12
	popq      %r13
	ret       
	.p2align 4,,10
	.p2align 3
.L277:
	xorl      %esi, %esi
	leaq      16(%rsp), %rdx
	movq      %rbx, %rdi
	call      *(%rbp)
	testl     %eax, %eax
	movl      %eax, %ebp
	js        .L261
	leal      (%rax,%r12), %r13d
	xorl      %edi, %edi
	movslq    %r12d, %r12
	movl      %r13d, %esi
	movslq    %r13d, %r13
	call      PyString_FromStringAndSize
	movq      (%rsp), %rsi
	leaq      36(%rax), %rcx
	movq      %r12, %rdx
	movq      %rax, %rbx
	movq      %rcx, %rdi
	call      memcpy
	movq      16(%rsp), %rsi
	leaq      (%rax,%r12), %rdi
	movslq    %ebp, %rdx
	call      memcpy
	movb      $0, 36(%rbx,%r13)
	addq      $40, %rsp
	movq      %rbx, %rax
	popq      %rbx
	popq      %rbp
	popq      %r12
	popq      %r13
	ret       
	.p2align 4,,10
	.p2align 3
.L274:
	movq      PyExc_TypeError(%rip), %rdi
	movl      $.LC0, %esi
	call      PyErr_SetString
	addq      $40, %rsp
	xorl      %eax, %eax
	popq      %rbx
	popq      %rbp
	popq      %r12
	popq      %r13
	ret       
	.p2align 4,,10
	.p2align 3
.L275:
	movq      24(%r12), %rax
	movl      32(%r12), %r12d
	movq      %rax, (%rsp)
	jmp       .L259
	.p2align 4,,10
	.p2align 3
.L254:
	call      PyErr_BadArgument
	xorl      %eax, %eax
	jmp       .L271
	.cfi_endproc
	.size	buffer_concat, .-buffer_concat
# ----------------------
	.p2align 4,,15
# ----------------------
	.local	buffer_ass_slice
	.type	buffer_ass_slice, @function
buffer_ass_slice:
	.cfi_startproc
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
	jne       .L310
	testq     %rcx, %rcx
	movq      %rcx, %r12
	je        .L281
	movq      8(%rcx), %rax
	movq      152(%rax), %r15
	testq     %r15, %r15
	je        .L281
	cmpq      $0, (%r15)
	je        .L281
	movq      16(%r15), %rax
	testq     %rax, %rax
	je        .L281
	movl      %esi, %r13d
	movl      %edx, %r14d
	xorl      %esi, %esi
	movq      %rcx, %rdi
	call      *%rax
	cmpl      $1, %eax
	jne       .L311
	movq      16(%rbx), %rdi
	testq     %rdi, %rdi
	je        .L312
	movq      8(%rdi), %rax
	xorl      %esi, %esi
	movq      152(%rax), %rdx
	movq      %rdx, 8(%rsp)
	call      *16(%rdx)
	cmpl      $1, %eax
	movq      8(%rsp), %rdx
	jne       .L313
	movl      40(%rbx), %ecx
	movq      8(%rdx), %rax
	movq      16(%rbx), %rdi
	testl     %ecx, %ecx
	cmovne    (%rdx), %rax
	xorl      %esi, %esi
	leaq      16(%rsp), %rdx
	call      *%rax
	testl     %eax, %eax
	js        .L287
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
.L285:
	xorl      %esi, %esi
	leaq      32(%rsp), %rdx
	movq      %r12, %rdi
	call      *(%r15)
	testl     %eax, %eax
	js        .L287
	xorl      %edi, %edi
	testl     %r13d, %r13d
	js        .L290
	cmpl      %r13d, %ebx
	movl      %r13d, %edi
	cmovle    %ebx, %edi
.L290:
	xorl      %edx, %edx
	cmpl      %r14d, %edi
	jg        .L291
	cmpl      %r14d, %ebx
	movl      %r14d, %edx
	cmovle    %ebx, %edx
	subl      %edi, %edx
.L291:
	cmpl      %edx, %eax
	jne       .L314
	testl     %eax, %eax
	je        .L301
	movslq    %edi, %rdi
	addq      16(%rsp), %rdi
	movq      32(%rsp), %rsi
	movslq    %eax, %rdx
	call      memcpy
.L301:
	addq      $56, %rsp
	movl      %ebp, %eax
	popq      %rbx
	popq      %rbp
	popq      %r12
	popq      %r13
	popq      %r14
	popq      %r15
	ret       
	.p2align 4,,10
	.p2align 3
.L313:
	movq      PyExc_TypeError(%rip), %rdi
	movl      $.LC0, %esi
	call      PyErr_SetString
.L287:
	movl      $-1, %ebp
	jmp       .L301
	.p2align 4,,10
	.p2align 3
.L312:
	movq      24(%rbx), %rax
	movl      32(%rbx), %ebx
	movq      %rax, 16(%rsp)
	jmp       .L285
	.p2align 4,,10
	.p2align 3
.L311:
	movq      PyExc_TypeError(%rip), %rdi
	movl      $.LC0, %esi
	movl      $-1, %ebp
	call      PyErr_SetString
	jmp       .L301
	.p2align 4,,10
	.p2align 3
.L314:
	movq      PyExc_TypeError(%rip), %rdi
	movl      $.LC15, %esi
	movl      $-1, %ebp
	call      PyErr_SetString
	jmp       .L301
	.p2align 4,,10
	.p2align 3
.L281:
	call      PyErr_BadArgument
	movl      $-1, %ebp
	.p2align 4,,3
	jmp       .L301
.L310:
	movq      PyExc_TypeError(%rip), %rdi
	movl      $.LC11, %esi
	movl      $-1, %ebp
	call      PyErr_SetString
	jmp       .L301
	.cfi_endproc
	.size	buffer_ass_slice, .-buffer_ass_slice
# ----------------------
	.p2align 4,,15
# ----------------------
	.local	buffer_hash
	.type	buffer_hash, @function
buffer_hash:
	.cfi_startproc
	pushq     %r12
	pushq     %rbp
	movq      %rdi, %rbp
	pushq     %rbx
	subq      $16, %rsp
	movq      48(%rdi), %rbx
	cmpq      $-1, %rbx
	je        .L333
.L331:
	addq      $16, %rsp
	movq      %rbx, %rax
	popq      %rbx
	popq      %rbp
	popq      %r12
	ret       
	.p2align 4,,10
	.p2align 3
.L333:
	movl      40(%rdi), %ecx
	testl     %ecx, %ecx
	je        .L334
	movq      16(%rdi), %rdi
	testq     %rdi, %rdi
	je        .L335
	movq      8(%rdi), %rax
	xorl      %esi, %esi
	movq      152(%rax), %r12
	call      *16(%r12)
	cmpl      $1, %eax
	jne       .L336
	movl      40(%rbp), %edx
	movq      8(%r12), %rax
	movq      16(%rbp), %rdi
	testl     %edx, %edx
	cmovne    (%r12), %rax
	movq      %rsp, %rdx
	xorl      %esi, %esi
	call      *%rax
	testl     %eax, %eax
	js        .L331
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
.L319:
	movzbl    (%rdx), %ecx
	sall      $7, %ecx
	testl     %ebx, %ebx
	movslq    %ecx, %rcx
	jle       .L326
	leal      -1(%rbx), %eax
	leaq      1(%rdx,%rax), %rax
	.p2align 4,,10
	.p2align 3
.L327:
	addq      $1, %rdx
	imulq     $1000003, %rcx, %rsi
	movzbl    -1(%rdx), %ecx
	xorq      %rsi, %rcx
	cmpq      %rax, %rdx
	jne       .L327
.L326:
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
	.p2align 4,,10
	.p2align 3
.L336:
	movq      PyExc_TypeError(%rip), %rdi
	movl      $.LC0, %esi
	call      PyErr_SetString
	addq      $16, %rsp
	movq      %rbx, %rax
	popq      %rbx
	popq      %rbp
	popq      %r12
	ret       
	.p2align 4,,10
	.p2align 3
.L335:
	movq      24(%rbp), %rdx
	movl      32(%rbp), %ebx
	movq      %rdx, (%rsp)
	jmp       .L319
.L334:
	movq      PyExc_TypeError(%rip), %rdi
	movl      $.LC16, %esi
	call      PyErr_SetString
	jmp       .L331
	.cfi_endproc
	.size	buffer_hash, .-buffer_hash
# ----------------------
	.p2align 4,,15
# ----------------------
	.globl	PyBuffer_FromObject
	.type	PyBuffer_FromObject, @function
PyBuffer_FromObject:
	.cfi_startproc
	pushq     %r12
	pushq     %rbp
	pushq     %rbx
	movq      8(%rdi), %rcx
	movq      152(%rcx), %rax
	testq     %rax, %rax
	je        .L338
	cmpq      $0, (%rax)
	je        .L338
	cmpq      $0, 16(%rax)
	je        .L338
	testl     %esi, %esi
	movl      %esi, %ebx
	js        .L362
	cmpq      $PyBuffer_Type, %rcx
	movl      %edx, %r12d
	je        .L363
.L343:
	cmpl      $-1, %r12d
	jl        .L349
	movq      %rdi, %rbp
	jmp       .L348
	.p2align 4,,10
	.p2align 3
.L363:
	movq      16(%rdi), %rbp
	testq     %rbp, %rbp
	je        .L343
	movl      32(%rdi), %eax
	cmpl      $-1, %eax
	je        .L344
	xorl      %edx, %edx
	subl      %esi, %eax
	cmovns    %eax, %edx
	cmpl      %edx, %r12d
	jg        .L345
	cmpl      $-1, %r12d
	jne       .L344
.L345:
	addl      36(%rdi), %ebx
	movl      %edx, %r12d
	jmp       .L346
	.p2align 4,,10
	.p2align 3
.L344:
	addl      36(%rdi), %ebx
	cmpl      $-1, %r12d
	jl        .L349
.L346:
	testl     %ebx, %ebx
	js        .L362
.L348:
	movslq    PyBuffer_Type+32(%rip), %rdi
	call      PyObject_Malloc
	movl      $PyBuffer_Type, %esi
	movq      %rax, %rdi
	call      PyObject_Init
	testq     %rax, %rax
	je        .L350
	addl      $1, (%rbp)
	movq      %rbp, 16(%rax)
	movq      $0, 24(%rax)
	movl      %r12d, 32(%rax)
	movl      %ebx, 36(%rax)
	movl      $1, 40(%rax)
	movq      $-1, 48(%rax)
.L360:
	popq      %rbx
	popq      %rbp
	popq      %r12
	ret       
	.p2align 4,,10
	.p2align 3
.L338:
	movq      PyExc_TypeError(%rip), %rdi
	movl      $.LC7, %esi
	call      PyErr_SetString
	xorl      %eax, %eax
	jmp       .L360
	.p2align 4,,10
	.p2align 3
.L362:
	movq      PyExc_ValueError(%rip), %rdi
	movl      $.LC8, %esi
	call      PyErr_SetString
	xorl      %eax, %eax
	jmp       .L360
.L350:
	xorl      %eax, %eax
	jmp       .L360
.L349:
	movq      PyExc_ValueError(%rip), %rdi
	movl      $.LC9, %esi
	call      PyErr_SetString
	xorl      %eax, %eax
	jmp       .L360
	.cfi_endproc
	.size	PyBuffer_FromObject, .-PyBuffer_FromObject
# ----------------------
	.p2align 4,,15
# ----------------------
	.globl	PyBuffer_FromReadWriteObject
	.type	PyBuffer_FromReadWriteObject, @function
PyBuffer_FromReadWriteObject:
	.cfi_startproc
	pushq     %r12
	pushq     %rbp
	pushq     %rbx
	movq      8(%rdi), %rcx
	movq      152(%rcx), %rax
	testq     %rax, %rax
	je        .L365
	cmpq      $0, 8(%rax)
	je        .L365
	cmpq      $0, 16(%rax)
	je        .L365
	testl     %esi, %esi
	movl      %esi, %ebx
	js        .L389
	cmpq      $PyBuffer_Type, %rcx
	movl      %edx, %r12d
	je        .L390
.L370:
	cmpl      $-1, %r12d
	jl        .L376
	movq      %rdi, %rbp
	jmp       .L375
	.p2align 4,,10
	.p2align 3
.L390:
	movq      16(%rdi), %rbp
	testq     %rbp, %rbp
	je        .L370
	movl      32(%rdi), %eax
	cmpl      $-1, %eax
	je        .L371
	xorl      %edx, %edx
	subl      %esi, %eax
	cmovns    %eax, %edx
	cmpl      %edx, %r12d
	jg        .L372
	cmpl      $-1, %r12d
	jne       .L371
.L372:
	addl      36(%rdi), %ebx
	movl      %edx, %r12d
	jmp       .L373
	.p2align 4,,10
	.p2align 3
.L371:
	addl      36(%rdi), %ebx
	cmpl      $-1, %r12d
	jl        .L376
.L373:
	testl     %ebx, %ebx
	js        .L389
.L375:
	movslq    PyBuffer_Type+32(%rip), %rdi
	call      PyObject_Malloc
	movl      $PyBuffer_Type, %esi
	movq      %rax, %rdi
	call      PyObject_Init
	testq     %rax, %rax
	je        .L377
	addl      $1, (%rbp)
	movq      %rbp, 16(%rax)
	movq      $0, 24(%rax)
	movl      %r12d, 32(%rax)
	movl      %ebx, 36(%rax)
	movl      $0, 40(%rax)
	movq      $-1, 48(%rax)
.L387:
	popq      %rbx
	popq      %rbp
	popq      %r12
	ret       
	.p2align 4,,10
	.p2align 3
.L365:
	movq      PyExc_TypeError(%rip), %rdi
	movl      $.LC7, %esi
	call      PyErr_SetString
	xorl      %eax, %eax
	jmp       .L387
	.p2align 4,,10
	.p2align 3
.L389:
	movq      PyExc_ValueError(%rip), %rdi
	movl      $.LC8, %esi
	call      PyErr_SetString
	xorl      %eax, %eax
	jmp       .L387
.L377:
	xorl      %eax, %eax
	jmp       .L387
.L376:
	movq      PyExc_ValueError(%rip), %rdi
	movl      $.LC9, %esi
	call      PyErr_SetString
	xorl      %eax, %eax
	jmp       .L387
	.cfi_endproc
	.size	PyBuffer_FromReadWriteObject, .-PyBuffer_FromReadWriteObject
# ----------------------
	.p2align 4,,15
# ----------------------
	.globl	PyBuffer_FromMemory
	.type	PyBuffer_FromMemory, @function
PyBuffer_FromMemory:
	.cfi_startproc
	pushq     %rbp
	pushq     %rbx
	movl      %esi, %ebx
	subq      $8, %rsp
	cmpl      $-1, %esi
	jl        .L396
	movq      %rdi, %rbp
	movslq    PyBuffer_Type+32(%rip), %rdi
	call      PyObject_Malloc
	movl      $PyBuffer_Type, %esi
	movq      %rax, %rdi
	call      PyObject_Init
	testq     %rax, %rax
	je        .L394
	movq      $0, 16(%rax)
	movq      %rbp, 24(%rax)
	movl      %ebx, 32(%rax)
	movl      $0, 36(%rax)
	movl      $1, 40(%rax)
	movq      $-1, 48(%rax)
.L393:
	addq      $8, %rsp
	popq      %rbx
	popq      %rbp
	ret       
	.p2align 4,,10
	.p2align 3
.L394:
	xorl      %eax, %eax
	jmp       .L393
	.p2align 4,,10
	.p2align 3
.L396:
	movq      PyExc_ValueError(%rip), %rdi
	movl      $.LC9, %esi
	call      PyErr_SetString
	xorl      %eax, %eax
	jmp       .L393
	.cfi_endproc
	.size	PyBuffer_FromMemory, .-PyBuffer_FromMemory
# ----------------------
	.p2align 4,,15
# ----------------------
	.globl	PyBuffer_FromReadWriteMemory
	.type	PyBuffer_FromReadWriteMemory, @function
PyBuffer_FromReadWriteMemory:
	.cfi_startproc
	pushq     %rbp
	pushq     %rbx
	movl      %esi, %ebx
	subq      $8, %rsp
	cmpl      $-1, %esi
	jl        .L402
	movq      %rdi, %rbp
	movslq    PyBuffer_Type+32(%rip), %rdi
	call      PyObject_Malloc
	movl      $PyBuffer_Type, %esi
	movq      %rax, %rdi
	call      PyObject_Init
	testq     %rax, %rax
	je        .L400
	movq      $0, 16(%rax)
	movq      %rbp, 24(%rax)
	movl      %ebx, 32(%rax)
	movl      $0, 36(%rax)
	movl      $0, 40(%rax)
	movq      $-1, 48(%rax)
.L399:
	addq      $8, %rsp
	popq      %rbx
	popq      %rbp
	ret       
	.p2align 4,,10
	.p2align 3
.L400:
	xorl      %eax, %eax
	jmp       .L399
	.p2align 4,,10
	.p2align 3
.L402:
	movq      PyExc_ValueError(%rip), %rdi
	movl      $.LC9, %esi
	call      PyErr_SetString
	xorl      %eax, %eax
	jmp       .L399
	.cfi_endproc
	.size	PyBuffer_FromReadWriteMemory, .-PyBuffer_FromReadWriteMemory
# ----------------------
	.p2align 4,,15
# ----------------------
	.globl	PyBuffer_New
	.type	PyBuffer_New, @function
PyBuffer_New:
	.cfi_startproc
	testl     %edi, %edi
	pushq     %rbx
	movl      %edi, %ebx
	js        .L410
	movl      $2147483647, %eax
	subl      %edi, %eax
	cmpl      $55, %eax
	jbe       .L409
	movslq    %edi, %rdi
	addq      $56, %rdi
	call      PyObject_Malloc
	testq     %rax, %rax
	je        .L409
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
	.p2align 4,,10
	.p2align 3
.L409:
	popq      %rbx
	jmp       PyErr_NoMemory
	.p2align 4,,10
	.p2align 3
.L410:
	movq      PyExc_ValueError(%rip), %rdi
	movl      $.LC9, %esi
	call      PyErr_SetString
	xorl      %eax, %eax
	popq      %rbx
	ret       
	.cfi_endproc
	.size	PyBuffer_New, .-PyBuffer_New
# ----------------------
	.data
	.align 32
	.globl	PyBuffer_Type
	.type	PyBuffer_Type, @object
PyBuffer_Type:
	.long	1
	.zero	4
	.quad	PyType_Type
	.long	0
	.zero	4
	.quad	.LC17
	.long	56
	.long	0
	.quad	buffer_dealloc
	.quad	0
	.quad	0
	.quad	0
	.quad	buffer_compare
	.quad	buffer_repr
	.quad	0
	.quad	buffer_as_sequence
	.quad	0
	.quad	buffer_hash
	.quad	0
	.quad	buffer_str
	.quad	PyObject_GenericGetAttr
	.quad	0
	.quad	buffer_as_buffer
	.quad	491
	.quad	buffer_doc
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	buffer_new
	.zero	64
	.size	PyBuffer_Type, 376
# ----------------------
	.align 32
	.local	buffer_as_buffer
	.type	buffer_as_buffer, @object
buffer_as_buffer:
	.quad	buffer_getreadbuf
	.quad	buffer_getwritebuf
	.quad	buffer_getsegcount
	.quad	buffer_getcharbuf
	.size	buffer_as_buffer, 32
# ----------------------
	.align 32
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
	.align 32
	.local	buffer_doc
	.type	buffer_doc, @object
buffer_doc:
	.ascii	"buffer(object [, offset[, size]])\n\nCre"
	.string	"ate a new buffer object which references the given object.\nThe buffer will reference a slice of the target object from the\nstart of the object (or at the specified offset). The slice will\nextend to the end of the target object (or with the specified size)."
	.size	buffer_doc, 295
# ----------------------
	.ident	"GCC: (Ubuntu 4.8.4-2ubuntu1~14.04.3) 4.8.4"
	.section	.note.GNU-stack,"",@progbits
