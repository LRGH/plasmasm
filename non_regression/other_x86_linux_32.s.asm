	.file	"linuxaudiodev.c"
	.section       .rodata.str1.1,"aMS",@progbits,1
.LC0:
	.string	"open"
.LC2:
	.string	"read"
.LC3:
	.string	"write"
.LC4:
	.string	"setparameters"
.LC5:
	.string	"bufsize"
.LC6:
	.string	"obufcount"
.LC7:
	.string	"obuffree"
.LC8:
	.string	"flush"
.LC9:
	.string	"close"
.LC10:
	.string	"fileno"
.LC11:
	.string	"getptr"
.LC13:
	.string	"logarithmic A-law 8-bit audio"
.LC14:
	.string	"linear unsigned 8-bit audio"
.LC15:
	.string	"linear signed 8-bit audio"
.LC21:
	.string	"i:read"
.LC22:
	.string	"s#:write"
.LC23:
	.string	":close"
.LC24:
	.string	":fileno"
.LC25:
	.string	"iiii|i:setparameters"
.LC29:
	.string	"unknown audio encoding: %d"
.LC26:
	.string	"expected rate >= 0, not %d"
.LC32:
	.string	":bufsize"
.LC33:
	.string	":obufcount"
.LC34:
	.string	":obuffree"
.LC35:
	.string	":flush"
.LC36:
	.string	":getptr"
.LC37:
	.string	"iii"
.LC38:
	.string	"s|s:open"
.LC41:
	.string	"mode should be 'r' or 'w'"
.LC42:
	.string	"AUDIODEV"
.LC43:
	.string	"/dev/dsp"
.LC44:
	.string	"linuxaudiodev"
.LC45:
	.string	"linuxaudiodev.error"
.LC47:
	.string	"AFMT_MU_LAW"
.LC48:
	.string	"AFMT_A_LAW"
.LC49:
	.string	"AFMT_U8"
.LC50:
	.string	"AFMT_S8"
.LC51:
	.string	"AFMT_U16_BE"
.LC52:
	.string	"AFMT_U16_LE"
.LC53:
	.string	"AFMT_S16_BE"
.LC54:
	.string	"AFMT_S16_LE"
.LC55:
	.string	"AFMT_S16_NE"
.LC46:
	.string	"error"
# ----------------------
	.section       .data.rel.local,"aw",@progbits
	.align 32
	.local	linuxaudiodev_methods
	.type	linuxaudiodev_methods, @object
linuxaudiodev_methods:
	.long	.LC0
	.long	ladopen
	.long	1
	.zero	4
	.long	0
	.long	0
	.zero	8
	.size	linuxaudiodev_methods, 32
# ----------------------
	.section       .rodata.str1.4,"aMS",@progbits,1
	.align 4
.LC1:
	.string	"linuxaudiodev.linux_audio_device"
	.align 4
.LC12:
	.string	"logarithmic mu-law 8-bit audio"
	.align 4
.LC16:
	.string	"linear unsigned 16-bit big-endian audio"
	.align 4
.LC17:
	.string	"linear unsigned 16-bit little-endian audio"
	.align 4
.LC18:
	.string	"linear signed 16-bit big-endian audio"
	.align 4
.LC19:
	.string	"linear signed 16-bit little-endian audio"
	.align 4
.LC20:
	.string	"linear signed 16-bit native-endian audio"
	.align 4
.LC30:
	.string	"for %s, expected sample size %d, not %d"
	.align 4
.LC28:
	.string	"nchannels must be 1 or 2, not %d"
	.align 4
.LC31:
	.string	"%s format not supported by device"
	.align 4
.LC27:
	.string	"expected sample size >= 0, not %d"
# ----------------------
	.section       .data.rel,"aw",@progbits
	.align 32
	.local	Ladtype
	.type	Ladtype, @object
Ladtype:
	.long	1
	.long	PyType_Type
	.long	0
	.long	.LC1
	.long	28
	.long	0
	.long	lad_dealloc
	.long	0
	.long	lad_getattr
	.long	0
	.long	0
	.long	0
	.zero	144
	.size	Ladtype, 192
# ----------------------
	.section       .data.rel.local,"aw",@progbits
	.align 32
	.local	lad_methods
	.type	lad_methods, @object
lad_methods:
	.long	.LC2
	.long	lad_read
	.long	1
	.zero	4
	.long	.LC3
	.long	lad_write
	.long	1
	.zero	4
	.long	.LC4
	.long	lad_setparameters
	.long	1
	.zero	4
	.long	.LC5
	.long	lad_bufsize
	.long	1
	.zero	4
	.long	.LC6
	.long	lad_obufcount
	.long	1
	.zero	4
	.long	.LC7
	.long	lad_obuffree
	.long	1
	.zero	4
	.long	.LC8
	.long	lad_flush
	.long	1
	.zero	4
	.long	.LC9
	.long	lad_close
	.long	1
	.zero	4
	.long	.LC10
	.long	lad_fileno
	.long	1
	.zero	4
	.long	.LC11
	.long	lad_getptr
	.long	1
	.zero	4
	.long	0
	.long	0
	.zero	8
	.size	lad_methods, 176
# ----------------------
	.align 32
	.local	audio_types
	.type	audio_types, @object
audio_types:
	.long	8
	.long	1
	.long	.LC12
	.long	8
	.long	2
	.long	.LC13
	.long	8
	.long	8
	.long	.LC14
	.long	8
	.long	64
	.long	.LC15
	.long	16
	.long	256
	.long	.LC16
	.long	16
	.long	128
	.long	.LC17
	.long	16
	.long	32
	.long	.LC18
	.long	16
	.long	16
	.long	.LC19
	.long	16
	.long	16
	.long	.LC20
	.size	audio_types, 108
# ----------------------
	.data
	.align 4
	.local	n_audio_types
	.type	n_audio_types, @object
n_audio_types:
	.long	9
	.size	n_audio_types, 4
# ----------------------
	.text
	.p2align 2,,3
# ----------------------
	.local	lad_dealloc
	.type	lad_dealloc, @function
lad_dealloc:
	pushl     %ebp
	movl      %esp, %ebp
	pushl     %esi
	pushl     %ebx
	movl      8(%ebp), %esi
	movl      8(%esi), %eax
	call      .L4
.L4:
	popl      %ebx
	addl      $_GLOBAL_OFFSET_TABLE_+[.-.L4], %ebx
	cmpl      $-1, %eax
	je        .L2
	subl      $12, %esp
	pushl     %eax
	call      close@PLT
	addl      $16, %esp
.L2:
	subl      $12, %esp
	pushl     %esi
	call      PyObject_Free@PLT
	leal      -8(%ebp), %esp
	popl      %ebx
	popl      %esi
	leave     
	ret       
	.size	lad_dealloc, .-lad_dealloc
# ----------------------
	.p2align 2,,3
# ----------------------
	.local	lad_read
	.type	lad_read, @function
lad_read:
	pushl     %ebp
	movl      %esp, %ebp
	pushl     %esi
	pushl     %ebx
	subl      $20, %esp
	call      .L13
.L13:
	popl      %ebx
	addl      $_GLOBAL_OFFSET_TABLE_+[.-.L13], %ebx
	leal      -12(%ebp), %edx
	pushl     %edx
	leal      .LC21@GOTOFF(%ebx), %eax
	pushl     %eax
	pushl     12(%ebp)
	movl      8(%ebp), %esi
	call      PyArg_ParseTuple@PLT
	addl      $16, %esp
	xorl      %edx, %edx
	testl     %eax, %eax
	je        .L5
	subl      $8, %esp
	pushl     -12(%ebp)
	pushl     $0
	call      PyString_FromStringAndSize@PLT
	addl      $16, %esp
	xorl      %edx, %edx
	testl     %eax, %eax
	movl      %eax, -16(%ebp)
	je        .L5
	pushl     %edx
	pushl     -12(%ebp)
	addl      $20, %eax
	pushl     %eax
	pushl     8(%esi)
	call      read@PLT
	addl      $16, %esp
	testl     %eax, %eax
	js        .L11
	subl      $8, %esp
	addl      %eax, 16(%esi)
	leal      -16(%ebp), %ecx
	pushl     %eax
	pushl     %ecx
	call      _PyString_Resize@PLT
	movl      -16(%ebp), %edx
.L5:
	leal      -8(%ebp), %esp
	popl      %ebx
	movl      %edx, %eax
	popl      %esi
	leave     
	ret       
.L11:
	subl      $12, %esp
	pushl     LinuxAudioError@GOTOFF(%ebx)
	call      PyErr_SetFromErrno@PLT
	movl      -16(%ebp), %esi
	movl      (%esi), %ecx
	decl      %ecx
	addl      $16, %esp
	testl     %ecx, %ecx
	movl      %ecx, (%esi)
	je        .L12
	xorl      %edx, %edx
	jmp       .L5
.L12:
	subl      $12, %esp
	movl      -16(%ebp), %eax
	movl      4(%eax), %edx
	pushl     %eax
	call      *24(%edx)
	addl      $16, %esp
	xorl      %edx, %edx
	jmp       .L5
	.size	lad_read, .-lad_read
# ----------------------
	.p2align 2,,3
# ----------------------
	.local	lad_write
	.type	lad_write, @function
lad_write:
	pushl     %ebp
	movl      %esp, %ebp
	pushl     %edi
	pushl     %esi
	pushl     %ebx
	subl      $172, %esp
	leal      -156(%ebp), %ecx
	movl      8(%ebp), %esi
	call      .L30
.L30:
	popl      %ebx
	addl      $_GLOBAL_OFFSET_TABLE_+[.-.L30], %ebx
	pushl     %ecx
	leal      -160(%ebp), %edx
	pushl     %edx
	leal      .LC22@GOTOFF(%ebx), %eax
	pushl     %eax
	pushl     12(%ebp)
	call      PyArg_ParseTuple@PLT
	addl      $16, %esp
	xorl      %edx, %edx
	testl     %eax, %eax
	je        .L14
	leal      -152(%ebp), %edx
	xorl      %eax, %eax
	movl      $32, %ecx
	movl      %edx, -172(%ebp)
	movl      %edx, %edi
	cld       
	rep stosl     
	movl      8(%esi), %edx
	movl      %edx, %edi
	shrl      $5, %edi
	andl      $31, %edx
	btsl      %edx, -152(%ebp,%edi,4)
	movl      -156(%ebp), %eax
	testl     %eax, %eax
	movl      $4, -168(%ebp)
	leal      -168(%ebp), %edi
	movl      $0, -164(%ebp)
	jle       .L27
	movl      %edi, -176(%ebp)
	jmp       .L25
	.p2align 2,,3
.L20:
	addl      %eax, 20(%esi)
	subl      %eax, -156(%ebp)
	addl      %eax, -160(%ebp)
	movl      -156(%ebp), %eax
	testl     %eax, %eax
	jle       .L27
.L25:
	subl      $12, %esp
	pushl     %edi
	pushl     $0
	pushl     -172(%ebp)
	pushl     $0
	movl      8(%esi), %ecx
	incl      %ecx
	pushl     %ecx
	call      select@PLT
	addl      $32, %esp
	testl     %eax, %eax
	movl      $1, -168(%ebp)
	movl      -176(%ebp), %edi
	movl      $0, -164(%ebp)
	je        .L19
	pushl     %eax
	pushl     -156(%ebp)
	pushl     -160(%ebp)
	pushl     8(%esi)
	call      write@PLT
	addl      $16, %esp
	cmpl      $-1, %eax
	jne       .L20
	call      __errno_location@PLT
	cmpl      $11, (%eax)
	jne       .L19
	movl      $0, (%eax)
	movl      -156(%ebp), %eax
	testl     %eax, %eax
	jg        .L25
	.p2align 2,,3
.L27:
	movl      _Py_NoneStruct@GOT(%ebx), %esi
	incl      (%esi)
	movl      %esi, %edx
.L14:
	leal      -12(%ebp), %esp
	popl      %ebx
	popl      %esi
	movl      %edx, %eax
	popl      %edi
	leave     
	ret       
.L19:
	subl      $12, %esp
	pushl     LinuxAudioError@GOTOFF(%ebx)
	call      PyErr_SetFromErrno@PLT
	leal      -12(%ebp), %esp
	popl      %ebx
	popl      %esi
	xorl      %edx, %edx
	movl      %edx, %eax
	popl      %edi
	leave     
	ret       
	.size	lad_write, .-lad_write
# ----------------------
	.p2align 2,,3
# ----------------------
	.local	lad_close
	.type	lad_close, @function
lad_close:
	pushl     %ebp
	movl      %esp, %ebp
	pushl     %esi
	pushl     %ebx
	call      .L34
.L34:
	popl      %ebx
	addl      $_GLOBAL_OFFSET_TABLE_+[.-.L34], %ebx
	subl      $8, %esp
	leal      .LC23@GOTOFF(%ebx), %eax
	pushl     %eax
	pushl     12(%ebp)
	movl      8(%ebp), %esi
	call      PyArg_ParseTuple@PLT
	addl      $16, %esp
	xorl      %edx, %edx
	testl     %eax, %eax
	je        .L31
	movl      8(%esi), %eax
	testl     %eax, %eax
	js        .L33
	subl      $12, %esp
	pushl     %eax
	call      close@PLT
	movl      $-1, 8(%esi)
	addl      $16, %esp
.L33:
	movl      _Py_NoneStruct@GOT(%ebx), %ecx
	incl      (%ecx)
	movl      %ecx, %edx
.L31:
	leal      -8(%ebp), %esp
	popl      %ebx
	movl      %edx, %eax
	popl      %esi
	leave     
	ret       
	.size	lad_close, .-lad_close
# ----------------------
	.p2align 2,,3
# ----------------------
	.local	lad_fileno
	.type	lad_fileno, @function
lad_fileno:
	pushl     %ebp
	movl      %esp, %ebp
	pushl     %ebx
	call      .L37
.L37:
	popl      %ebx
	addl      $_GLOBAL_OFFSET_TABLE_+[.-.L37], %ebx
	subl      $12, %esp
	leal      .LC24@GOTOFF(%ebx), %eax
	pushl     %eax
	pushl     12(%ebp)
	call      PyArg_ParseTuple@PLT
	addl      $16, %esp
	xorl      %edx, %edx
	testl     %eax, %eax
	je        .L35
	movl      8(%ebp), %edx
	subl      $12, %esp
	pushl     8(%edx)
	call      PyInt_FromLong@PLT
	movl      %eax, %edx
.L35:
	movl      %edx, %eax
	movl      -4(%ebp), %ebx
	leave     
	ret       
	.size	lad_fileno, .-lad_fileno
# ----------------------
	.p2align 2,,3
# ----------------------
	.local	lad_setparameters
	.type	lad_setparameters, @function
lad_setparameters:
	pushl     %ebp
	movl      %esp, %ebp
	pushl     %edi
	pushl     %esi
	pushl     %ebx
	subl      $32, %esp
	leal      -16(%ebp), %eax
	movl      $0, -16(%ebp)
	leal      -20(%ebp), %esi
	pushl     %eax
	pushl     %esi
	leal      -24(%ebp), %ecx
	movl      %ecx, -40(%ebp)
	leal      -28(%ebp), %edx
	pushl     %ecx
	pushl     %edx
	call      .L67
.L67:
	popl      %ebx
	addl      $_GLOBAL_OFFSET_TABLE_+[.-.L67], %ebx
	leal      -32(%ebp), %edi
	movl      %edi, -36(%ebp)
	leal      .LC25@GOTOFF(%ebx), %eax
	pushl     %edi
	pushl     %eax
	pushl     12(%ebp)
	call      PyArg_ParseTuple@PLT
	addl      $32, %esp
	xorl      %edx, %edx
	testl     %eax, %eax
	je        .L38
	movl      -32(%ebp), %eax
	testl     %eax, %eax
	js        .L60
	movl      -28(%ebp), %edi
	testl     %edi, %edi
	js        .L61
	movl      -24(%ebp), %edx
	leal      -1(%edx), %ecx
	cmpl      $1, %ecx
	ja        .L62
	xorl      %ecx, %ecx
	movl      n_audio_types@GOTOFF(%ebx), %edx
	cmpl      %edx, %ecx
	jge       .L44
	movl      -20(%ebp), %esi
	leal      audio_types@GOTOFF+4(%ebx), %eax
	.p2align 2,,3
.L47:
	cmpl      (%eax), %esi
	je        .L44
	incl      %ecx
	addl      $12, %eax
	cmpl      %edx, %ecx
	jl        .L47
.L44:
	cmpl      %edx, %ecx
	je        .L63
	leal      (%ecx,%ecx,2), %eax
	leal      audio_types@GOTOFF(%ebx), %esi
	leal      0(,%eax,4), %edx
	movl      (%edx,%esi), %eax
	cmpl      %edi, %eax
	jne       .L64
	movl      -16(%ebp), %edi
	testl     %edi, %edi
	jne       .L50
	movl      4(%edx,%esi), %eax
	movl      8(%ebp), %edi
	testl     %eax, 24(%edi)
	je        .L65
.L50:
	leal      (%ecx,%ecx,2), %esi
	leal      audio_types@GOTOFF+4(%ebx,%esi,4), %edx
	pushl     %eax
	pushl     %edx
	pushl     $-1073459195
	movl      8(%ebp), %ecx
	pushl     8(%ecx)
	call      ioctl@PLT
	addl      $16, %esp
	incl      %eax
	je        .L57
	pushl     %eax
	pushl     -40(%ebp)
	pushl     $-1073459194
	movl      8(%ebp), %eax
	pushl     8(%eax)
	call      ioctl@PLT
	addl      $16, %esp
	incl      %eax
	je        .L57
	pushl     %eax
	pushl     -36(%ebp)
	pushl     $-1073459198
	movl      8(%ebp), %edi
	pushl     8(%edi)
	call      ioctl@PLT
	addl      $16, %esp
	incl      %eax
	je        .L57
	movl      _Py_NoneStruct@GOT(%ebx), %ecx
	incl      (%ecx)
	movl      %ecx, %edx
.L38:
	leal      -12(%ebp), %esp
	popl      %ebx
	popl      %esi
	movl      %edx, %eax
	popl      %edi
	leave     
	ret       
.L64:
	subl      $12, %esp
	pushl     %edi
	pushl     %eax
	pushl     8(%edx,%esi)
	leal      .LC30@GOTOFF(%ebx), %esi
	movl      PyExc_ValueError@GOT(%ebx), %edx
	pushl     %esi
	pushl     (%edx)
	call      PyErr_Format@PLT
	xorl      %edx, %edx
.L66:
	leal      -12(%ebp), %esp
	popl      %ebx
	popl      %esi
	movl      %edx, %eax
	popl      %edi
	leave     
	ret       
.L57:
	subl      $12, %esp
	pushl     LinuxAudioError@GOTOFF(%ebx)
	call      PyErr_SetFromErrno@PLT
	xorl      %edx, %edx
	jmp       .L66
.L62:
	pushl     %eax
	pushl     %edx
	leal      .LC28@GOTOFF(%ebx), %eax
.L59:
	pushl     %eax
	movl      PyExc_ValueError@GOT(%ebx), %edi
	pushl     (%edi)
	call      PyErr_Format@PLT
	xorl      %edx, %edx
	jmp       .L66
.L65:
	pushl     %eax
	pushl     8(%edx,%esi)
	leal      .LC31@GOTOFF(%ebx), %eax
	jmp       .L59
.L63:
	pushl     %eax
	pushl     -20(%ebp)
	leal      .LC29@GOTOFF(%ebx), %eax
	jmp       .L59
.L61:
	pushl     %eax
	pushl     %edi
	leal      .LC27@GOTOFF(%ebx), %eax
	jmp       .L59
.L60:
	pushl     %edx
	pushl     %eax
	leal      .LC26@GOTOFF(%ebx), %eax
	jmp       .L59
	.size	lad_setparameters, .-lad_setparameters
# ----------------------
	.p2align 2,,3
# ----------------------
	.local	lad_bufsize
	.type	lad_bufsize, @function
lad_bufsize:
	pushl     %ebp
	movl      %esp, %ebp
	pushl     %edi
	pushl     %esi
	pushl     %ebx
	call      .L93
.L93:
	popl      %ebx
	addl      $_GLOBAL_OFFSET_TABLE_+[.-.L93], %ebx
	subl      $52, %esp
	leal      .LC32@GOTOFF(%ebx), %eax
	movl      8(%ebp), %esi
	pushl     %eax
	pushl     12(%ebp)
	call      PyArg_ParseTuple@PLT
	addl      $16, %esp
	xorl      %edx, %edx
	testl     %eax, %eax
	je        .L68
	leal      -48(%ebp), %ecx
	movl      %ecx, -56(%ebp)
	movl      $0, -52(%ebp)
	leal      -52(%ebp), %edx
	pushl     %eax
	pushl     %edx
	pushl     $-1073459195
	pushl     8(%esi)
	call      ioctl@PLT
	addl      $16, %esp
	testl     %eax, %eax
	leal      -44(%ebp), %edi
	js        .L91
	movl      -52(%ebp), %eax
	cmpl      $16, %eax
	je        .L81
	jg        .L85
	cmpl      $1, %eax
	jl        .L92
	cmpl      $2, %eax
	jle       .L77
	cmpl      $8, %eax
	je        .L77
	.p2align 2,,3
.L92:
	subl      $12, %esp
	pushl     LinuxAudioError@GOTOFF(%ebx)
	call      PyErr_SetFromErrno@PLT
	leal      -12(%ebp), %esp
	popl      %ebx
	popl      %esi
	xorl      %edx, %edx
	movl      %edx, %eax
	popl      %edi
	leave     
	ret       
	.p2align 2,,3
.L85:
	cmpl      $64, %eax
	je        .L77
	jg        .L86
	cmpl      $32, %eax
.L90:
	jne       .L92
	.p2align 2,,3
.L81:
	movl      -56(%ebp), %edx
	movl      $2, (%edx)
.L73:
	movl      $0, (%edi)
	pushl     %eax
	pushl     %edi
	pushl     $-1073459194
	pushl     8(%esi)
	call      ioctl@PLT
	addl      $16, %esp
	testl     %eax, %eax
	js        .L91
.L70:
	pushl     %ecx
	leal      -40(%ebp), %ecx
	pushl     %ecx
	pushl     $-2146414580
	pushl     8(%esi)
	call      ioctl@PLT
	addl      $16, %esp
	testl     %eax, %eax
	js        .L92
	movl      -32(%ebp), %eax
	imull     -36(%ebp), %eax
	movl      -48(%ebp), %edi
	imull     -44(%ebp), %edi
	cltd      
	idivl     %edi
	subl      $12, %esp
	pushl     %eax
	call      PyInt_FromLong@PLT
	movl      %eax, %edx
.L68:
	leal      -12(%ebp), %esp
	popl      %ebx
	popl      %esi
	movl      %edx, %eax
	popl      %edi
	leave     
	ret       
	.p2align 2,,3
.L91:
	call      __errno_location@PLT
	movl      (%eax), %edi
	negl      %edi
	testl     %edi, %edi
	jns       .L70
	jmp       .L92
	.p2align 2,,3
.L77:
	movl      -56(%ebp), %eax
	movl      $1, (%eax)
	jmp       .L73
.L86:
	cmpl      $128, %eax
	je        .L81
	cmpl      $256, %eax
	jmp       .L90
	.size	lad_bufsize, .-lad_bufsize
# ----------------------
	.p2align 2,,3
# ----------------------
	.local	lad_obufcount
	.type	lad_obufcount, @function
lad_obufcount:
	pushl     %ebp
	movl      %esp, %ebp
	pushl     %edi
	pushl     %esi
	pushl     %ebx
	call      .L119
.L119:
	popl      %ebx
	addl      $_GLOBAL_OFFSET_TABLE_+[.-.L119], %ebx
	subl      $52, %esp
	leal      .LC33@GOTOFF(%ebx), %eax
	movl      8(%ebp), %esi
	pushl     %eax
	pushl     12(%ebp)
	call      PyArg_ParseTuple@PLT
	addl      $16, %esp
	xorl      %edx, %edx
	testl     %eax, %eax
	je        .L94
	leal      -48(%ebp), %ecx
	movl      %ecx, -56(%ebp)
	movl      $0, -52(%ebp)
	leal      -52(%ebp), %edx
	pushl     %eax
	pushl     %edx
	pushl     $-1073459195
	pushl     8(%esi)
	call      ioctl@PLT
	addl      $16, %esp
	testl     %eax, %eax
	leal      -44(%ebp), %edi
	js        .L117
	movl      -52(%ebp), %eax
	cmpl      $16, %eax
	je        .L107
	jg        .L111
	cmpl      $1, %eax
	jl        .L118
	cmpl      $2, %eax
	jle       .L103
	cmpl      $8, %eax
	je        .L103
	.p2align 2,,3
.L118:
	subl      $12, %esp
	pushl     LinuxAudioError@GOTOFF(%ebx)
	call      PyErr_SetFromErrno@PLT
	leal      -12(%ebp), %esp
	popl      %ebx
	popl      %esi
	xorl      %edx, %edx
	movl      %edx, %eax
	popl      %edi
	leave     
	ret       
	.p2align 2,,3
.L111:
	cmpl      $64, %eax
	je        .L103
	jg        .L112
	cmpl      $32, %eax
.L116:
	jne       .L118
	.p2align 2,,3
.L107:
	movl      -56(%ebp), %edx
	movl      $2, (%edx)
.L99:
	movl      $0, (%edi)
	pushl     %eax
	pushl     %edi
	pushl     $-1073459194
	pushl     8(%esi)
	call      ioctl@PLT
	addl      $16, %esp
	testl     %eax, %eax
	js        .L117
.L96:
	leal      -40(%ebp), %ecx
	pushl     %eax
	pushl     %ecx
	pushl     $-2146414580
	pushl     8(%esi)
	call      ioctl@PLT
	addl      $16, %esp
	testl     %eax, %eax
	js        .L118
	movl      -32(%ebp), %eax
	imull     -36(%ebp), %eax
	subl      -28(%ebp), %eax
	movl      -44(%ebp), %edi
	imull     -48(%ebp), %edi
	cltd      
	idivl     %edi
	subl      $12, %esp
	pushl     %eax
	call      PyInt_FromLong@PLT
	movl      %eax, %edx
.L94:
	leal      -12(%ebp), %esp
	popl      %ebx
	popl      %esi
	movl      %edx, %eax
	popl      %edi
	leave     
	ret       
	.p2align 2,,3
.L117:
	call      __errno_location@PLT
	movl      (%eax), %edi
	negl      %edi
	testl     %edi, %edi
	jns       .L96
	jmp       .L118
	.p2align 2,,3
.L103:
	movl      -56(%ebp), %eax
	movl      $1, (%eax)
	jmp       .L99
.L112:
	cmpl      $128, %eax
	je        .L107
	cmpl      $256, %eax
	jmp       .L116
	.size	lad_obufcount, .-lad_obufcount
# ----------------------
	.p2align 2,,3
# ----------------------
	.local	lad_obuffree
	.type	lad_obuffree, @function
lad_obuffree:
	pushl     %ebp
	movl      %esp, %ebp
	pushl     %edi
	pushl     %esi
	pushl     %ebx
	call      .L145
.L145:
	popl      %ebx
	addl      $_GLOBAL_OFFSET_TABLE_+[.-.L145], %ebx
	subl      $68, %esp
	leal      .LC34@GOTOFF(%ebx), %eax
	movl      8(%ebp), %esi
	pushl     %eax
	pushl     12(%ebp)
	call      PyArg_ParseTuple@PLT
	addl      $16, %esp
	xorl      %edx, %edx
	testl     %eax, %eax
	je        .L120
	leal      -48(%ebp), %ecx
	movl      %ecx, -56(%ebp)
	movl      $0, -52(%ebp)
	leal      -52(%ebp), %edx
	pushl     %ecx
	pushl     %edx
	pushl     $-1073459195
	pushl     8(%esi)
	call      ioctl@PLT
	addl      $16, %esp
	testl     %eax, %eax
	leal      -44(%ebp), %edi
	js        .L143
	movl      -52(%ebp), %eax
	cmpl      $16, %eax
	je        .L133
	jg        .L137
	cmpl      $1, %eax
	jl        .L144
	cmpl      $2, %eax
	jle       .L129
	cmpl      $8, %eax
	je        .L129
	.p2align 2,,3
.L144:
	subl      $12, %esp
	pushl     LinuxAudioError@GOTOFF(%ebx)
	call      PyErr_SetFromErrno@PLT
	leal      -12(%ebp), %esp
	popl      %ebx
	popl      %esi
	xorl      %edx, %edx
	movl      %edx, %eax
	popl      %edi
	leave     
	ret       
	.p2align 2,,3
.L137:
	cmpl      $64, %eax
	je        .L129
	jg        .L138
	cmpl      $32, %eax
.L142:
	jne       .L144
	.p2align 2,,3
.L133:
	movl      -56(%ebp), %edx
	movl      $2, (%edx)
.L125:
	movl      $0, (%edi)
	pushl     %edx
	pushl     %edi
	pushl     $-1073459194
	pushl     8(%esi)
	call      ioctl@PLT
	addl      $16, %esp
	testl     %eax, %eax
	js        .L143
.L122:
	leal      -40(%ebp), %ecx
	pushl     %eax
	pushl     %ecx
	pushl     $-2146414580
	pushl     8(%esi)
	call      ioctl@PLT
	addl      $16, %esp
	testl     %eax, %eax
	js        .L144
	movl      -28(%ebp), %ecx
	movl      -44(%ebp), %esi
	movl      -48(%ebp), %edi
	movl      %ecx, %eax
	imull     %esi, %edi
	cltd      
	idivl     %edi
	subl      $12, %esp
	pushl     %eax
	call      PyInt_FromLong@PLT
	movl      %eax, %edx
.L120:
	leal      -12(%ebp), %esp
	popl      %ebx
	popl      %esi
	movl      %edx, %eax
	popl      %edi
	leave     
	ret       
	.p2align 2,,3
.L143:
	call      __errno_location@PLT
	movl      (%eax), %edi
	negl      %edi
	testl     %edi, %edi
	jns       .L122
	jmp       .L144
	.p2align 2,,3
.L129:
	movl      -56(%ebp), %eax
	movl      $1, (%eax)
	jmp       .L125
.L138:
	cmpl      $128, %eax
	je        .L133
	cmpl      $256, %eax
	jmp       .L142
	.size	lad_obuffree, .-lad_obuffree
# ----------------------
	.p2align 2,,3
# ----------------------
	.local	lad_flush
	.type	lad_flush, @function
lad_flush:
	pushl     %ebp
	movl      %esp, %ebp
	pushl     %ebx
	call      .L150
.L150:
	popl      %ebx
	addl      $_GLOBAL_OFFSET_TABLE_+[.-.L150], %ebx
	subl      $12, %esp
	leal      .LC35@GOTOFF(%ebx), %eax
	pushl     %eax
	pushl     12(%ebp)
	call      PyArg_ParseTuple@PLT
	addl      $16, %esp
	xorl      %edx, %edx
	testl     %eax, %eax
	je        .L146
	pushl     %eax
	pushl     $0
	pushl     $20481
	movl      8(%ebp), %edx
	pushl     8(%edx)
	call      ioctl@PLT
	addl      $16, %esp
	incl      %eax
	je        .L149
	movl      _Py_NoneStruct@GOT(%ebx), %ecx
	incl      (%ecx)
	movl      %ecx, %edx
.L146:
	movl      %edx, %eax
	movl      -4(%ebp), %ebx
	leave     
	ret       
.L149:
	subl      $12, %esp
	pushl     LinuxAudioError@GOTOFF(%ebx)
	call      PyErr_SetFromErrno@PLT
	xorl      %edx, %edx
	jmp       .L146
	.size	lad_flush, .-lad_flush
# ----------------------
	.p2align 2,,3
# ----------------------
	.local	lad_getptr
	.type	lad_getptr, @function
lad_getptr:
	pushl     %ebp
	movl      %esp, %ebp
	pushl     %esi
	pushl     %ebx
	call      .L157
.L157:
	popl      %ebx
	addl      $_GLOBAL_OFFSET_TABLE_+[.-.L157], %ebx
	subl      $24, %esp
	leal      .LC36@GOTOFF(%ebx), %eax
	pushl     %eax
	pushl     12(%ebp)
	movl      8(%ebp), %esi
	call      PyArg_ParseTuple@PLT
	addl      $16, %esp
	xorl      %edx, %edx
	testl     %eax, %eax
	je        .L151
	movl      12(%esi), %eax
	cmpl      $1, %eax
	sbbl      %edx, %edx
	leal      -24(%ebp), %ecx
	pushl     %eax
	pushl     %ecx
	subl      $2146676718, %edx
	pushl     %edx
	pushl     8(%esi)
	call      ioctl@PLT
	addl      $16, %esp
	incl      %eax
	je        .L156
	pushl     -16(%ebp)
	pushl     -20(%ebp)
	pushl     -24(%ebp)
	leal      .LC37@GOTOFF(%ebx), %esi
	pushl     %esi
	call      Py_BuildValue@PLT
	movl      %eax, %edx
.L151:
	leal      -8(%ebp), %esp
	popl      %ebx
	movl      %edx, %eax
	popl      %esi
	leave     
	ret       
.L156:
	subl      $12, %esp
	pushl     LinuxAudioError@GOTOFF(%ebx)
	call      PyErr_SetFromErrno@PLT
	xorl      %edx, %edx
	jmp       .L151
	.size	lad_getptr, .-lad_getptr
# ----------------------
	.p2align 2,,3
# ----------------------
	.local	lad_getattr
	.type	lad_getattr, @function
lad_getattr:
	pushl     %ebp
	movl      %esp, %ebp
	pushl     %ebx
	subl      $8, %esp
	pushl     12(%ebp)
	call      .L159
.L159:
	popl      %ebx
	addl      $_GLOBAL_OFFSET_TABLE_+[.-.L159], %ebx
	pushl     8(%ebp)
	leal      lad_methods@GOTOFF(%ebx), %eax
	pushl     %eax
	call      Py_FindMethod@PLT
	movl      -4(%ebp), %ebx
	leave     
	ret       
	.size	lad_getattr, .-lad_getattr
# ----------------------
	.p2align 2,,3
# ----------------------
	.local	ladopen
	.type	ladopen, @function
ladopen:
	pushl     %ebp
	movl      %esp, %ebp
	pushl     %edi
	pushl     %esi
	pushl     %ebx
	subl      $12, %esp
	leal      -16(%ebp), %ecx
	movl      $0, -20(%ebp)
	movl      $0, -16(%ebp)
	call      .L193
.L193:
	popl      %ebx
	addl      $_GLOBAL_OFFSET_TABLE_+[.-.L193], %ebx
	pushl     %ecx
	leal      -20(%ebp), %edx
	pushl     %edx
	leal      .LC38@GOTOFF(%ebx), %eax
	pushl     %eax
	pushl     12(%ebp)
	call      PyArg_ParseTuple@PLT
	addl      $16, %esp
	xorl      %edx, %edx
	testl     %eax, %eax
	je        .L162
	movl      -16(%ebp), %eax
	testl     %eax, %eax
	je        .L187
	cmpb      $114, (%eax)
	jne       .L164
.L191:
	xorl      %edi, %edi
	cmpb      $0, 1(%eax)
	jne       .L164
.L170:
	movl      -20(%ebp), %eax
	testl     %eax, %eax
	je        .L188
.L178:
	subl      $8, %esp
	pushl     %edi
	pushl     -20(%ebp)
	call      open64@PLT
	addl      $16, %esp
	cmpl      $-1, %eax
	movl      %eax, %esi
	je        .L186
	cmpl      $1, %edi
	je        .L189
.L181:
	pushl     %eax
	leal      -24(%ebp), %eax
	pushl     %eax
	pushl     $-2147201013
	pushl     %esi
	call      ioctl@PLT
	addl      $16, %esp
	incl      %eax
	je        .L186
	subl      $12, %esp
	leal      Ladtype@GOTOFF(%ebx), %edx
	pushl     %edx
	call      _PyObject_New@PLT
	addl      $16, %esp
	testl     %eax, %eax
	movl      %eax, %edx
	je        .L190
	movl      %esi, 8(%eax)
	movl      %edi, 12(%eax)
	movl      $0, 20(%eax)
	movl      $0, 16(%eax)
	movl      -24(%ebp), %edi
	movl      %edi, 24(%eax)
	.p2align 2,,3
.L162:
	leal      -12(%ebp), %esp
	popl      %ebx
	popl      %esi
	movl      %edx, %eax
	popl      %edi
	leave     
	ret       
	.p2align 2,,3
.L187:
	movl      -20(%ebp), %eax
	movl      %eax, -16(%ebp)
	movl      $0, -20(%ebp)
	cmpb      $114, (%eax)
	je        .L191
.L164:
	cmpb      $119, (%eax)
	jne       .L171
	cmpb      $0, 1(%eax)
	movl      $1, %edi
	je        .L170
.L171:
	subl      $8, %esp
	leal      .LC41@GOTOFF(%ebx), %esi
	pushl     %esi
	pushl     LinuxAudioError@GOTOFF(%ebx)
	call      PyErr_SetString@PLT
	addl      $16, %esp
	xorl      %edx, %edx
.L192:
	leal      -12(%ebp), %esp
	popl      %ebx
	popl      %esi
	movl      %edx, %eax
	popl      %edi
	leave     
	ret       
.L188:
	subl      $12, %esp
	leal      .LC42@GOTOFF(%ebx), %edx
	pushl     %edx
	call      getenv@PLT
	addl      $16, %esp
	testl     %eax, %eax
	movl      %eax, -20(%ebp)
	jne       .L178
	leal      .LC43@GOTOFF(%ebx), %ecx
	movl      %ecx, -20(%ebp)
	jmp       .L178
.L189:
	pushl     %eax
	pushl     $0
	pushl     $20494
	pushl     %esi
	call      ioctl@PLT
	addl      $16, %esp
	incl      %eax
	jne       .L181
	.p2align 2,,3
.L186:
	subl      $8, %esp
	pushl     -20(%ebp)
	pushl     LinuxAudioError@GOTOFF(%ebx)
	call      PyErr_SetFromErrnoWithFilename@PLT
	addl      $16, %esp
	xorl      %edx, %edx
	jmp       .L192
.L190:
	subl      $12, %esp
	pushl     %esi
	call      close@PLT
	addl      $16, %esp
	xorl      %edx, %edx
	jmp       .L192
	.size	ladopen, .-ladopen
# ----------------------
	.p2align 2,,3
# ----------------------
	.globl	initlinuxaudiodev
	.type	initlinuxaudiodev, @function
initlinuxaudiodev:
	pushl     %ebp
	movl      %esp, %ebp
	pushl     %esi
	pushl     %ebx
	subl      $12, %esp
	pushl     $1012
	pushl     $0
	call      .L207
.L207:
	popl      %ebx
	addl      $_GLOBAL_OFFSET_TABLE_+[.-.L207], %ebx
	pushl     $0
	leal      linuxaudiodev_methods@GOTOFF(%ebx), %edx
	pushl     %edx
	leal      .LC44@GOTOFF(%ebx), %eax
	pushl     %eax
	call      Py_InitModule4@PLT
	addl      $32, %esp
	testl     %eax, %eax
	movl      %eax, %esi
	je        .L194
	pushl     %ecx
	pushl     $0
	pushl     $0
	leal      .LC45@GOTOFF(%ebx), %ecx
	pushl     %ecx
	call      PyErr_NewException@PLT
	addl      $16, %esp
	testl     %eax, %eax
	movl      %eax, LinuxAudioError@GOTOFF(%ebx)
	jne       .L206
.L196:
	pushl     %eax
	pushl     $1
	leal      .LC47@GOTOFF(%ebx), %edx
	pushl     %edx
	pushl     %esi
	call      PyModule_AddIntConstant@PLT
	addl      $16, %esp
	incl      %eax
	je        .L194
	pushl     %eax
	pushl     $2
	leal      .LC48@GOTOFF(%ebx), %ecx
	pushl     %ecx
	pushl     %esi
	call      PyModule_AddIntConstant@PLT
	addl      $16, %esp
	incl      %eax
	je        .L194
	pushl     %eax
	pushl     $8
	leal      .LC49@GOTOFF(%ebx), %eax
	pushl     %eax
	pushl     %esi
	call      PyModule_AddIntConstant@PLT
	addl      $16, %esp
	incl      %eax
	je        .L194
	pushl     %eax
	pushl     $64
	leal      .LC50@GOTOFF(%ebx), %edx
	pushl     %edx
	pushl     %esi
	call      PyModule_AddIntConstant@PLT
	addl      $16, %esp
	incl      %eax
	je        .L194
	pushl     %eax
	pushl     $256
	leal      .LC51@GOTOFF(%ebx), %ecx
	pushl     %ecx
	pushl     %esi
	call      PyModule_AddIntConstant@PLT
	addl      $16, %esp
	incl      %eax
	je        .L194
	pushl     %eax
	pushl     $128
	leal      .LC52@GOTOFF(%ebx), %eax
	pushl     %eax
	pushl     %esi
	call      PyModule_AddIntConstant@PLT
	addl      $16, %esp
	incl      %eax
	je        .L194
	pushl     %ecx
	pushl     $32
	leal      .LC53@GOTOFF(%ebx), %edx
	pushl     %edx
	pushl     %esi
	call      PyModule_AddIntConstant@PLT
	addl      $16, %esp
	incl      %eax
	je        .L194
	pushl     %edx
	pushl     $16
	leal      .LC54@GOTOFF(%ebx), %ecx
	pushl     %ecx
	pushl     %esi
	call      PyModule_AddIntConstant@PLT
	addl      $16, %esp
	incl      %eax
	je        .L194
	pushl     %eax
	pushl     $16
	leal      .LC55@GOTOFF(%ebx), %eax
	pushl     %eax
	pushl     %esi
	call      PyModule_AddIntConstant@PLT
	addl      $16, %esp
	.p2align 2,,3
.L194:
	leal      -8(%ebp), %esp
	popl      %ebx
	popl      %esi
	leave     
	ret       
	.p2align 2,,3
.L206:
	pushl     %edx
	pushl     %eax
	leal      .LC46@GOTOFF(%ebx), %eax
	pushl     %eax
	pushl     %esi
	call      PyModule_AddObject@PLT
	addl      $16, %esp
	jmp       .L196
	.size	initlinuxaudiodev, .-initlinuxaudiodev
# ----------------------
	.local	LinuxAudioError
	.comm	LinuxAudioError,4,4
# ----------------------
	.section       .debug_frame,"",@progbits
.Lframe0:
.LSCIE0:
	.align 4
.LECIE0:
	.align 4
.LSFDE0:
.LASFDE0:
	.align 4
.LEFDE0:
	.align 4
.LSFDE2:
.LASFDE2:
	.align 4
.LEFDE2:
	.align 4
.LSFDE4:
.LASFDE4:
	.align 4
.LEFDE4:
	.align 4
.LSFDE6:
.LASFDE6:
	.align 4
.LEFDE6:
	.align 4
.LSFDE8:
.LASFDE8:
	.align 4
.LEFDE8:
	.align 4
.LSFDE10:
.LASFDE10:
	.align 4
.LEFDE10:
	.align 4
.LSFDE12:
.LASFDE12:
	.align 4
.LEFDE12:
	.align 4
.LSFDE14:
.LASFDE14:
	.align 4
.LEFDE14:
	.align 4
.LSFDE16:
.LASFDE16:
	.align 4
.LEFDE16:
	.align 4
.LSFDE18:
.LASFDE18:
	.align 4
.LEFDE18:
	.align 4
.LSFDE20:
.LASFDE20:
	.align 4
.LEFDE20:
	.align 4
.LSFDE22:
.LASFDE22:
	.align 4
.LEFDE22:
	.align 4
.LSFDE24:
.LASFDE24:
	.align 4
.LEFDE24:
	.align 4
.LSFDE26:
.LASFDE26:
	.align 4
.LEFDE26:
# ----------------------
	.ident	"GCC: (GNU) 3.4.6 20060404 (Red Hat 3.4.6-11)"
	.section	.note.GNU-stack,"",@progbits
