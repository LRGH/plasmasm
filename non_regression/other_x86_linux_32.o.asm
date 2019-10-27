	.file	"linuxaudiodev.c"
	.data
	.local	n_audio_types
	.type	n_audio_types, @object
n_audio_types:
	.long	9
	.size	n_audio_types, 4
# ----------------------
	.section       .data.rel,"wa",@progbits
	.local	Ladtype
	.type	Ladtype, @object
Ladtype:
	.long	1
	.long	PyType_Type
	.long	0
	.long	.LC00000000.str1.4
	.long	28
	.long	0
	.long	lad_dealloc
	.long	0
	.long	lad_getattr
	.zero	156
	.size	Ladtype, 192
# ----------------------
	.section       .data.rel.local,"wa",@progbits
	.local	linuxaudiodev_methods
	.type	linuxaudiodev_methods, @object
linuxaudiodev_methods:
	.long	.LC00000000.str1.1
	.long	ladopen
	.long	1
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.size	linuxaudiodev_methods, 32
# ----------------------
	.local	lad_methods
	.type	lad_methods, @object
lad_methods:
	.long	.LC00000005.str1.1
	.long	lad_read
	.long	1
	.long	0
	.long	.LC0000000A.str1.1
	.long	lad_write
	.long	1
	.long	0
	.long	.LC00000010.str1.1
	.long	lad_setparameters
	.long	1
	.long	0
	.long	.LC0000001E.str1.1
	.long	lad_bufsize
	.long	1
	.long	0
	.long	.LC00000026.str1.1
	.long	lad_obufcount
	.long	1
	.long	0
	.long	.LC00000030.str1.1
	.long	lad_obuffree
	.long	1
	.long	0
	.long	.LC00000039.str1.1
	.long	lad_flush
	.long	1
	.long	0
	.long	.LC0000003F.str1.1
	.long	lad_close
	.long	1
	.long	0
	.long	.LC00000045.str1.1
	.long	lad_fileno
	.long	1
	.long	0
	.long	.LC0000004C.str1.1
	.long	lad_getptr
	.long	1
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.size	lad_methods, 176
# ----------------------
.LD000000D0.rel.local:
	.zero	16
# ----------------------
	.local	audio_types
	.type	audio_types, @object
audio_types:
	.long	8
	.long	1
	.long	.LC00000024.str1.4
	.long	8
	.long	2
	.long	.LC00000053.str1.1
	.long	8
	.long	8
	.long	.LC00000071.str1.1
	.long	8
	.long	64
	.long	.LC0000008D.str1.1
	.long	16
	.long	256
	.long	.LC00000044.str1.4
	.long	16
	.long	128
	.long	.LC0000006C.str1.4
	.long	16
	.long	32
	.long	.LC00000098.str1.4
	.long	16
	.long	16
	.long	.LC000000C0.str1.4
	.long	16
	.long	16
	.long	.LC000000EC.str1.4
	.size	audio_types, 108
# ----------------------
	.section       .rodata.str1.4,"aMS",@progbits,1
.LC00000000.str1.4:
	.string	"linuxaudiodev.linux_audio_device"
# ----------------------
.LC00000021.str1.4:
	.zero	3
	.align 4
.LC00000024.str1.4:
	.string	"logarithmic mu-law 8-bit audio"
# ----------------------
.LC00000043.str1.4:
	.byte	0
	.align 2
.LC00000044.str1.4:
	.string	"linear unsigned 16-bit big-endian audio"
.LC0000006C.str1.4:
	.string	"linear unsigned 16-bit little-endian audio"
# ----------------------
.LC00000097.str1.4:
	.byte	0
	.align 2
.LC00000098.str1.4:
	.string	"linear signed 16-bit big-endian audio"
# ----------------------
.LC000000BE.str1.4:
	.value	0
	.align 4
.LC000000C0.str1.4:
	.string	"linear signed 16-bit little-endian audio"
# ----------------------
.LC000000E9.str1.4:
	.zero	3
	.align 4
.LC000000EC.str1.4:
	.string	"linear signed 16-bit native-endian audio"
# ----------------------
.LC00000115.str1.4:
	.zero	3
	.align 4
.LC30:
	.string	"for %s, expected sample size %d, not %d"
.LC28:
	.string	"nchannels must be 1 or 2, not %d"
# ----------------------
.LC00000161.str1.4:
	.zero	3
	.align 4
.LC31:
	.string	"%s format not supported by device"
# ----------------------
.LC00000186.str1.4:
	.value	0
	.align 4
.LC27:
	.string	"expected sample size >= 0, not %d"
# ----------------------
	.section       .rodata.str1.1,"aMS",@progbits,1
.LC00000000.str1.1:
	.string	"open"
.LC00000005.str1.1:
	.string	"read"
.LC0000000A.str1.1:
	.string	"write"
.LC00000010.str1.1:
	.string	"setparameters"
.LC0000001E.str1.1:
	.string	"bufsize"
.LC00000026.str1.1:
	.string	"obufcount"
.LC00000030.str1.1:
	.string	"obuffree"
.LC00000039.str1.1:
	.string	"flush"
.LC0000003F.str1.1:
	.string	"close"
.LC00000045.str1.1:
	.string	"fileno"
.LC0000004C.str1.1:
	.string	"getptr"
.LC00000053.str1.1:
	.string	"logarithmic A-law 8-bit audio"
.LC00000071.str1.1:
	.string	"linear unsigned 8-bit audio"
.LC0000008D.str1.1:
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
	.text
	.local	lad_dealloc
	.type	lad_dealloc, @function
lad_dealloc:
	pushl     %ebp
	movl      %esp, %ebp
	pushl     %esi
	pushl     %ebx
	movl      8(%ebp), %esi
	movl      8(%esi), %eax
	call      .L00000010
.L00000010:
	popl      %ebx
	addl      $_GLOBAL_OFFSET_TABLE_+1, %ebx
	cmpl      $-1, %eax
	je        .L00000028
.L0000001C:
	subl      $12, %esp
	pushl     %eax
	call      close@PLT
.L00000025:
	addl      $16, %esp
.L00000028:
	subl      $12, %esp
	pushl     %esi
	call      PyObject_Free@PLT
.L00000031:
	leal      -8(%ebp), %esp
	popl      %ebx
	popl      %esi
	leave     
	ret       
	.size	lad_dealloc, .-lad_dealloc
# ----------------------
	.local	lad_read
	.type	lad_read, @function
lad_read:
	pushl     %ebp
	movl      %esp, %ebp
	pushl     %esi
	pushl     %ebx
	subl      $20, %esp
	call      .L00000045
.L00000045:
	popl      %ebx
	addl      $_GLOBAL_OFFSET_TABLE_+1, %ebx
	leal      -12(%ebp), %edx
	pushl     %edx
	leal      .LC21@GOTOFF(%ebx), %eax
	pushl     %eax
	pushl     12(%ebp)
	movl      8(%ebp), %esi
	call      PyArg_ParseTuple@PLT
.L00000062:
	addl      $16, %esp
	xorl      %edx, %edx
	testl     %eax, %eax
	je        .L000000AE
.L0000006B:
	subl      $8, %esp
	pushl     -12(%ebp)
	pushl     $0
	call      PyString_FromStringAndSize@PLT
.L00000078:
	addl      $16, %esp
	xorl      %edx, %edx
	testl     %eax, %eax
	movl      %eax, -16(%ebp)
	je        .L000000AE
.L00000084:
	pushl     %edx
	pushl     -12(%ebp)
	addl      $20, %eax
	pushl     %eax
	pushl     8(%esi)
	call      read@PLT
.L00000094:
	addl      $16, %esp
	testl     %eax, %eax
	js        .L000000B7
.L0000009B:
	subl      $8, %esp
	addl      %eax, 16(%esi)
	leal      -16(%ebp), %ecx
	pushl     %eax
	pushl     %ecx
	call      _PyString_Resize@PLT
.L000000AB:
	movl      -16(%ebp), %edx
.L000000AE:
	leal      -8(%ebp), %esp
	popl      %ebx
	movl      %edx, %eax
	popl      %esi
	leave     
	ret       
.L000000B7:
	subl      $12, %esp
	pushl     LinuxAudioError@GOTOFF(%ebx)
	call      PyErr_SetFromErrno@PLT
.L000000C5:
	movl      -16(%ebp), %esi
	movl      (%esi), %ecx
	decl      %ecx
	addl      $16, %esp
	testl     %ecx, %ecx
	movl      %ecx, (%esi)
	je        .L000000D8
.L000000D4:
	xorl      %edx, %edx
	jmp       .L000000AE
.L000000D8:
	subl      $12, %esp
	movl      -16(%ebp), %eax
	movl      4(%eax), %edx
	pushl     %eax
	call      *24(%edx)
.L000000E5:
	addl      $16, %esp
	xorl      %edx, %edx
	jmp       .L000000AE
	.size	lad_read, .-lad_read
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
	call      .L00000106
.L00000106:
	popl      %ebx
	addl      $_GLOBAL_OFFSET_TABLE_+1, %ebx
	pushl     %ecx
	leal      -160(%ebp), %edx
	pushl     %edx
	leal      .LC22@GOTOFF(%ebx), %eax
	pushl     %eax
	pushl     12(%ebp)
	call      PyArg_ParseTuple@PLT
.L00000124:
	addl      $16, %esp
	xorl      %edx, %edx
	testl     %eax, %eax
	je        .L00000222
.L00000131:
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
	jle       .L00000218
.L00000184:
	movl      %edi, -176(%ebp)
	jmp       .L000001A5
.L0000018C:
	addl      %eax, 20(%esi)
	subl      %eax, -156(%ebp)
	addl      %eax, -160(%ebp)
	movl      -156(%ebp), %eax
	testl     %eax, %eax
	jle       .L00000218
.L000001A5:
	subl      $12, %esp
	pushl     %edi
	pushl     $0
	pushl     -172(%ebp)
	pushl     $0
	movl      8(%esi), %ecx
	incl      %ecx
	pushl     %ecx
	call      select@PLT
.L000001BD:
	addl      $32, %esp
	testl     %eax, %eax
	movl      $1, -168(%ebp)
	movl      -176(%ebp), %edi
	movl      $0, -164(%ebp)
	je        .L0000022C
.L000001DE:
	pushl     %eax
	pushl     -156(%ebp)
	pushl     -160(%ebp)
	pushl     8(%esi)
	call      write@PLT
.L000001F3:
	addl      $16, %esp
	cmpl      $-1, %eax
	jne       .L0000018C
.L000001FB:
	call      __errno_location@PLT
.L00000200:
	cmpl      $11, (%eax)
	jne       .L0000022C
.L00000205:
	movl      $0, (%eax)
	movl      -156(%ebp), %eax
	testl     %eax, %eax
	jg        .L000001A5
.L00000215:
	.p2align 3
.L00000218:
	movl      _Py_NoneStruct@GOT(%ebx), %esi
	incl      (%esi)
	movl      %esi, %edx
.L00000222:
	leal      -12(%ebp), %esp
	popl      %ebx
	popl      %esi
	movl      %edx, %eax
	popl      %edi
	leave     
	ret       
.L0000022C:
	subl      $12, %esp
	pushl     LinuxAudioError@GOTOFF(%ebx)
	call      PyErr_SetFromErrno@PLT
.L0000023A:
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
.L00000246:
	.p2align 3
# ----------------------
	.local	lad_close
	.type	lad_close, @function
lad_close:
	pushl     %ebp
	movl      %esp, %ebp
	pushl     %esi
	pushl     %ebx
	call      .L00000252
.L00000252:
	popl      %ebx
	addl      $_GLOBAL_OFFSET_TABLE_+1, %ebx
	subl      $8, %esp
	leal      .LC23@GOTOFF(%ebx), %eax
	pushl     %eax
	pushl     12(%ebp)
	movl      8(%ebp), %esi
	call      PyArg_ParseTuple@PLT
.L0000026E:
	addl      $16, %esp
	xorl      %edx, %edx
	testl     %eax, %eax
	je        .L0000029B
.L00000277:
	movl      8(%esi), %eax
	testl     %eax, %eax
	js        .L00000291
.L0000027E:
	subl      $12, %esp
	pushl     %eax
	call      close@PLT
.L00000287:
	movl      $-1, 8(%esi)
	addl      $16, %esp
.L00000291:
	movl      _Py_NoneStruct@GOT(%ebx), %ecx
	incl      (%ecx)
	movl      %ecx, %edx
.L0000029B:
	leal      -8(%ebp), %esp
	popl      %ebx
	movl      %edx, %eax
	popl      %esi
	leave     
	ret       
	.size	lad_close, .-lad_close
# ----------------------
	.local	lad_fileno
	.type	lad_fileno, @function
lad_fileno:
	pushl     %ebp
	movl      %esp, %ebp
	pushl     %ebx
	call      .L000002AD
.L000002AD:
	popl      %ebx
	addl      $_GLOBAL_OFFSET_TABLE_+1, %ebx
	subl      $12, %esp
	leal      .LC24@GOTOFF(%ebx), %eax
	pushl     %eax
	pushl     12(%ebp)
	call      PyArg_ParseTuple@PLT
.L000002C6:
	addl      $16, %esp
	xorl      %edx, %edx
	testl     %eax, %eax
	je        .L000002DF
.L000002CF:
	movl      8(%ebp), %edx
	subl      $12, %esp
	pushl     8(%edx)
	call      PyInt_FromLong@PLT
.L000002DD:
	movl      %eax, %edx
.L000002DF:
	movl      %edx, %eax
	movl      -4(%ebp), %ebx
	leave     
	ret       
	.size	lad_fileno, .-lad_fileno
# ----------------------
.L000002E6:
	.p2align 3
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
	call      .L00000310
.L00000310:
	popl      %ebx
	addl      $_GLOBAL_OFFSET_TABLE_+1, %ebx
	leal      -32(%ebp), %edi
	movl      %edi, -36(%ebp)
	leal      .LC25@GOTOFF(%ebx), %eax
	pushl     %edi
	pushl     %eax
	pushl     12(%ebp)
	call      PyArg_ParseTuple@PLT
.L0000032D:
	addl      $32, %esp
	xorl      %edx, %edx
	testl     %eax, %eax
	je        .L0000041A
.L0000033A:
	movl      -32(%ebp), %eax
	testl     %eax, %eax
	js        .L0000049C
.L00000345:
	movl      -28(%ebp), %edi
	testl     %edi, %edi
	js        .L00000492
.L00000350:
	movl      -24(%ebp), %edx
	leal      -1(%edx), %ecx
	cmpl      $1, %ecx
	ja        .L0000045F
.L0000035F:
	xorl      %ecx, %ecx
	movl      n_audio_types@GOTOFF(%ebx), %edx
	cmpl      %edx, %ecx
	jge       .L00000380
.L0000036B:
	movl      -20(%ebp), %esi
	leal      audio_types@GOTOFF+4(%ebx), %eax
.L00000374:
	cmpl      (%eax), %esi
	je        .L00000380
.L00000378:
	incl      %ecx
	addl      $12, %eax
	cmpl      %edx, %ecx
	jl        .L00000374
.L00000380:
	cmpl      %edx, %ecx
	je        .L00000486
.L00000388:
	leal      (%ecx,%ecx,2), %eax
	leal      audio_types@GOTOFF(%ebx), %esi
	leal      0(,%eax,4), %edx
	movl      (%edx,%esi), %eax
	cmpl      %edi, %eax
	jne       .L00000424
.L000003A3:
	movl      -16(%ebp), %edi
	testl     %edi, %edi
	jne       .L000003BA
.L000003AA:
	movl      4(%edx,%esi), %eax
	movl      8(%ebp), %edi
	testl     %eax, 24(%edi)
	je        .L00000479
.L000003BA:
	leal      (%ecx,%ecx,2), %esi
	leal      audio_types@GOTOFF+4(%ebx,%esi,4), %edx
	pushl     %eax
	pushl     %edx
	pushl     $-1073459195
	movl      8(%ebp), %ecx
	pushl     8(%ecx)
	call      ioctl@PLT
.L000003D6:
	addl      $16, %esp
	incl      %eax
	je        .L0000044D
.L000003DC:
	pushl     %eax
	pushl     -40(%ebp)
	pushl     $-1073459194
	movl      8(%ebp), %eax
	pushl     8(%eax)
	call      ioctl@PLT
.L000003F0:
	addl      $16, %esp
	incl      %eax
	je        .L0000044D
.L000003F6:
	pushl     %eax
	pushl     -36(%ebp)
	pushl     $-1073459198
	movl      8(%ebp), %edi
	pushl     8(%edi)
	call      ioctl@PLT
.L0000040A:
	addl      $16, %esp
	incl      %eax
	je        .L0000044D
.L00000410:
	movl      _Py_NoneStruct@GOT(%ebx), %ecx
	incl      (%ecx)
	movl      %ecx, %edx
.L0000041A:
	leal      -12(%ebp), %esp
	popl      %ebx
	popl      %esi
	movl      %edx, %eax
	popl      %edi
	leave     
	ret       
.L00000424:
	subl      $12, %esp
	pushl     %edi
	pushl     %eax
	pushl     8(%edx,%esi)
	leal      .LC30@GOTOFF(%ebx), %esi
	movl      PyExc_ValueError@GOT(%ebx), %edx
	pushl     %esi
	pushl     (%edx)
	call      PyErr_Format@PLT
.L00000441:
	xorl      %edx, %edx
.L00000443:
	leal      -12(%ebp), %esp
	popl      %ebx
	popl      %esi
	movl      %edx, %eax
	popl      %edi
	leave     
	ret       
.L0000044D:
	subl      $12, %esp
	pushl     LinuxAudioError@GOTOFF(%ebx)
	call      PyErr_SetFromErrno@PLT
.L0000045B:
	xorl      %edx, %edx
	jmp       .L00000443
.L0000045F:
	pushl     %eax
	pushl     %edx
	leal      .LC28@GOTOFF(%ebx), %eax
.L00000467:
	pushl     %eax
	movl      PyExc_ValueError@GOT(%ebx), %edi
	pushl     (%edi)
	call      PyErr_Format@PLT
.L00000475:
	xorl      %edx, %edx
	jmp       .L00000443
.L00000479:
	pushl     %eax
	pushl     8(%edx,%esi)
	leal      .LC31@GOTOFF(%ebx), %eax
	jmp       .L00000467
.L00000486:
	pushl     %eax
	pushl     -20(%ebp)
	leal      .LC29@GOTOFF(%ebx), %eax
	jmp       .L00000467
.L00000492:
	pushl     %eax
	pushl     %edi
	leal      .LC27@GOTOFF(%ebx), %eax
	jmp       .L00000467
.L0000049C:
	pushl     %edx
	pushl     %eax
	leal      .LC26@GOTOFF(%ebx), %eax
	jmp       .L00000467
	.size	lad_setparameters, .-lad_setparameters
# ----------------------
.L000004A6:
	.p2align 3
# ----------------------
	.local	lad_bufsize
	.type	lad_bufsize, @function
lad_bufsize:
	pushl     %ebp
	movl      %esp, %ebp
	pushl     %edi
	pushl     %esi
	pushl     %ebx
	call      .L000004B3
.L000004B3:
	popl      %ebx
	addl      $_GLOBAL_OFFSET_TABLE_+1, %ebx
	subl      $52, %esp
	leal      .LC32@GOTOFF(%ebx), %eax
	movl      8(%ebp), %esi
	pushl     %eax
	pushl     12(%ebp)
	call      PyArg_ParseTuple@PLT
.L000004CF:
	addl      $16, %esp
	xorl      %edx, %edx
	testl     %eax, %eax
	je        .L000005B6
.L000004DC:
	leal      -48(%ebp), %ecx
	movl      %ecx, -56(%ebp)
	movl      $0, -52(%ebp)
	leal      -52(%ebp), %edx
	pushl     %eax
	pushl     %edx
	pushl     $-1073459195
	pushl     8(%esi)
	call      ioctl@PLT
.L000004FB:
	addl      $16, %esp
	testl     %eax, %eax
	leal      -44(%ebp), %edi
	js        .L000005C0
.L00000509:
	movl      -52(%ebp), %eax
	cmpl      $16, %eax
	je        .L0000055C
.L00000511:
	jg        .L00000548
.L00000513:
	cmpl      $1, %eax
	jl        .L0000052C
.L00000518:
	cmpl      $2, %eax
	jle       .L000005D4
.L00000521:
	cmpl      $8, %eax
	je        .L000005D4
.L0000052A:
	.p2align 2
.L0000052C:
	subl      $12, %esp
	pushl     LinuxAudioError@GOTOFF(%ebx)
	call      PyErr_SetFromErrno@PLT
.L0000053A:
	leal      -12(%ebp), %esp
	popl      %ebx
	popl      %esi
	xorl      %edx, %edx
	movl      %edx, %eax
	popl      %edi
	leave     
	ret       
.L00000546:
	.p2align 3
.L00000548:
	cmpl      $64, %eax
	je        .L000005D4
.L00000551:
	jg        .L000005DF
.L00000557:
	cmpl      $32, %eax
.L0000055A:
	jne       .L0000052C
.L0000055C:
	movl      -56(%ebp), %edx
	movl      $2, (%edx)
.L00000565:
	movl      $0, (%edi)
	pushl     %eax
	pushl     %edi
	pushl     $-1073459194
	pushl     8(%esi)
	call      ioctl@PLT
.L0000057A:
	addl      $16, %esp
	testl     %eax, %eax
	js        .L000005C0
.L00000581:
	pushl     %ecx
	leal      -40(%ebp), %ecx
	pushl     %ecx
	pushl     $-2146414580
	pushl     8(%esi)
	call      ioctl@PLT
.L00000593:
	addl      $16, %esp
	testl     %eax, %eax
	js        .L0000052C
.L0000059A:
	movl      -32(%ebp), %eax
	imull     -36(%ebp), %eax
	movl      -48(%ebp), %edi
	imull     -44(%ebp), %edi
	cltd      
	idivl     %edi
	subl      $12, %esp
	pushl     %eax
	call      PyInt_FromLong@PLT
.L000005B4:
	movl      %eax, %edx
.L000005B6:
	leal      -12(%ebp), %esp
	popl      %ebx
	popl      %esi
	movl      %edx, %eax
	popl      %edi
	leave     
	ret       
.L000005C0:
	call      __errno_location@PLT
.L000005C5:
	movl      (%eax), %edi
	negl      %edi
	testl     %edi, %edi
	jns       .L00000581
.L000005CD:
	jmp       .L0000052C
.L000005D2:
	.p2align 2
.L000005D4:
	movl      -56(%ebp), %eax
	movl      $1, (%eax)
	jmp       .L00000565
.L000005DF:
	cmpl      $128, %eax
	je        .L0000055C
.L000005EA:
	cmpl      $256, %eax
	jmp       .L0000055A
	.size	lad_bufsize, .-lad_bufsize
# ----------------------
	.local	lad_obufcount
	.type	lad_obufcount, @function
lad_obufcount:
	pushl     %ebp
	movl      %esp, %ebp
	pushl     %edi
	pushl     %esi
	pushl     %ebx
	call      .L000005FF
.L000005FF:
	popl      %ebx
	addl      $_GLOBAL_OFFSET_TABLE_+1, %ebx
	subl      $52, %esp
	leal      .LC33@GOTOFF(%ebx), %eax
	movl      8(%ebp), %esi
	pushl     %eax
	pushl     12(%ebp)
	call      PyArg_ParseTuple@PLT
.L0000061B:
	addl      $16, %esp
	xorl      %edx, %edx
	testl     %eax, %eax
	je        .L00000705
.L00000628:
	leal      -48(%ebp), %ecx
	movl      %ecx, -56(%ebp)
	movl      $0, -52(%ebp)
	leal      -52(%ebp), %edx
	pushl     %eax
	pushl     %edx
	pushl     $-1073459195
	pushl     8(%esi)
	call      ioctl@PLT
.L00000647:
	addl      $16, %esp
	testl     %eax, %eax
	leal      -44(%ebp), %edi
	js        .L00000710
.L00000655:
	movl      -52(%ebp), %eax
	cmpl      $16, %eax
	je        .L000006A8
.L0000065D:
	jg        .L00000694
.L0000065F:
	cmpl      $1, %eax
	jl        .L00000678
.L00000664:
	cmpl      $2, %eax
	jle       .L00000724
.L0000066D:
	cmpl      $8, %eax
	je        .L00000724
.L00000676:
	.p2align 3
.L00000678:
	subl      $12, %esp
	pushl     LinuxAudioError@GOTOFF(%ebx)
	call      PyErr_SetFromErrno@PLT
.L00000686:
	leal      -12(%ebp), %esp
	popl      %ebx
	popl      %esi
	xorl      %edx, %edx
	movl      %edx, %eax
	popl      %edi
	leave     
	ret       
.L00000692:
	.p2align 2
.L00000694:
	cmpl      $64, %eax
	je        .L00000724
.L0000069D:
	jg        .L0000072F
.L000006A3:
	cmpl      $32, %eax
.L000006A6:
	jne       .L00000678
.L000006A8:
	movl      -56(%ebp), %edx
	movl      $2, (%edx)
.L000006B1:
	movl      $0, (%edi)
	pushl     %eax
	pushl     %edi
	pushl     $-1073459194
	pushl     8(%esi)
	call      ioctl@PLT
.L000006C6:
	addl      $16, %esp
	testl     %eax, %eax
	js        .L00000710
.L000006CD:
	leal      -40(%ebp), %ecx
	pushl     %eax
	pushl     %ecx
	pushl     $-2146414580
	pushl     8(%esi)
	call      ioctl@PLT
.L000006DF:
	addl      $16, %esp
	testl     %eax, %eax
	js        .L00000678
.L000006E6:
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
.L00000703:
	movl      %eax, %edx
.L00000705:
	leal      -12(%ebp), %esp
	popl      %ebx
	popl      %esi
	movl      %edx, %eax
	popl      %edi
	leave     
	ret       
.L0000070F:
	.p2align 3
.L00000710:
	call      __errno_location@PLT
.L00000715:
	movl      (%eax), %edi
	negl      %edi
	testl     %edi, %edi
	jns       .L000006CD
.L0000071D:
	jmp       .L00000678
.L00000722:
	.p2align 2
.L00000724:
	movl      -56(%ebp), %eax
	movl      $1, (%eax)
	jmp       .L000006B1
.L0000072F:
	cmpl      $128, %eax
	je        .L000006A8
.L0000073A:
	cmpl      $256, %eax
	jmp       .L000006A6
	.size	lad_obufcount, .-lad_obufcount
# ----------------------
	.local	lad_obuffree
	.type	lad_obuffree, @function
lad_obuffree:
	pushl     %ebp
	movl      %esp, %ebp
	pushl     %edi
	pushl     %esi
	pushl     %ebx
	call      .L0000074F
.L0000074F:
	popl      %ebx
	addl      $_GLOBAL_OFFSET_TABLE_+1, %ebx
	subl      $68, %esp
	leal      .LC34@GOTOFF(%ebx), %eax
	movl      8(%ebp), %esi
	pushl     %eax
	pushl     12(%ebp)
	call      PyArg_ParseTuple@PLT
.L0000076B:
	addl      $16, %esp
	xorl      %edx, %edx
	testl     %eax, %eax
	je        .L00000852
.L00000778:
	leal      -48(%ebp), %ecx
	movl      %ecx, -56(%ebp)
	movl      $0, -52(%ebp)
	leal      -52(%ebp), %edx
	pushl     %ecx
	pushl     %edx
	pushl     $-1073459195
	pushl     8(%esi)
	call      ioctl@PLT
.L00000797:
	addl      $16, %esp
	testl     %eax, %eax
	leal      -44(%ebp), %edi
	js        .L0000085C
.L000007A5:
	movl      -52(%ebp), %eax
	cmpl      $16, %eax
	je        .L000007F8
.L000007AD:
	jg        .L000007E4
.L000007AF:
	cmpl      $1, %eax
	jl        .L000007C8
.L000007B4:
	cmpl      $2, %eax
	jle       .L00000870
.L000007BD:
	cmpl      $8, %eax
	je        .L00000870
.L000007C6:
	.p2align 3
.L000007C8:
	subl      $12, %esp
	pushl     LinuxAudioError@GOTOFF(%ebx)
	call      PyErr_SetFromErrno@PLT
.L000007D6:
	leal      -12(%ebp), %esp
	popl      %ebx
	popl      %esi
	xorl      %edx, %edx
	movl      %edx, %eax
	popl      %edi
	leave     
	ret       
.L000007E2:
	.p2align 2
.L000007E4:
	cmpl      $64, %eax
	je        .L00000870
.L000007ED:
	jg        .L0000087B
.L000007F3:
	cmpl      $32, %eax
.L000007F6:
	jne       .L000007C8
.L000007F8:
	movl      -56(%ebp), %edx
	movl      $2, (%edx)
.L00000801:
	movl      $0, (%edi)
	pushl     %edx
	pushl     %edi
	pushl     $-1073459194
	pushl     8(%esi)
	call      ioctl@PLT
.L00000816:
	addl      $16, %esp
	testl     %eax, %eax
	js        .L0000085C
.L0000081D:
	leal      -40(%ebp), %ecx
	pushl     %eax
	pushl     %ecx
	pushl     $-2146414580
	pushl     8(%esi)
	call      ioctl@PLT
.L0000082F:
	addl      $16, %esp
	testl     %eax, %eax
	js        .L000007C8
.L00000836:
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
.L00000850:
	movl      %eax, %edx
.L00000852:
	leal      -12(%ebp), %esp
	popl      %ebx
	popl      %esi
	movl      %edx, %eax
	popl      %edi
	leave     
	ret       
.L0000085C:
	call      __errno_location@PLT
.L00000861:
	movl      (%eax), %edi
	negl      %edi
	testl     %edi, %edi
	jns       .L0000081D
.L00000869:
	jmp       .L000007C8
.L0000086E:
	.p2align 3
.L00000870:
	movl      -56(%ebp), %eax
	movl      $1, (%eax)
	jmp       .L00000801
.L0000087B:
	cmpl      $128, %eax
	je        .L000007F8
.L00000886:
	cmpl      $256, %eax
	jmp       .L000007F6
	.size	lad_obuffree, .-lad_obuffree
# ----------------------
	.local	lad_flush
	.type	lad_flush, @function
lad_flush:
	pushl     %ebp
	movl      %esp, %ebp
	pushl     %ebx
	call      .L00000899
.L00000899:
	popl      %ebx
	addl      $_GLOBAL_OFFSET_TABLE_+1, %ebx
	subl      $12, %esp
	leal      .LC35@GOTOFF(%ebx), %eax
	pushl     %eax
	pushl     12(%ebp)
	call      PyArg_ParseTuple@PLT
.L000008B2:
	addl      $16, %esp
	xorl      %edx, %edx
	testl     %eax, %eax
	je        .L000008DE
.L000008BB:
	pushl     %eax
	pushl     $0
	pushl     $20481
	movl      8(%ebp), %edx
	pushl     8(%edx)
	call      ioctl@PLT
.L000008CE:
	addl      $16, %esp
	incl      %eax
	je        .L000008E5
.L000008D4:
	movl      _Py_NoneStruct@GOT(%ebx), %ecx
	incl      (%ecx)
	movl      %ecx, %edx
.L000008DE:
	movl      %edx, %eax
	movl      -4(%ebp), %ebx
	leave     
	ret       
.L000008E5:
	subl      $12, %esp
	pushl     LinuxAudioError@GOTOFF(%ebx)
	call      PyErr_SetFromErrno@PLT
.L000008F3:
	xorl      %edx, %edx
	jmp       .L000008DE
	.size	lad_flush, .-lad_flush
# ----------------------
.L000008F7:
	.p2align 3
# ----------------------
	.local	lad_getptr
	.type	lad_getptr, @function
lad_getptr:
	pushl     %ebp
	movl      %esp, %ebp
	pushl     %esi
	pushl     %ebx
	call      .L00000902
.L00000902:
	popl      %ebx
	addl      $_GLOBAL_OFFSET_TABLE_+1, %ebx
	subl      $24, %esp
	leal      .LC36@GOTOFF(%ebx), %eax
	pushl     %eax
	pushl     12(%ebp)
	movl      8(%ebp), %esi
	call      PyArg_ParseTuple@PLT
.L0000091E:
	addl      $16, %esp
	xorl      %edx, %edx
	testl     %eax, %eax
	je        .L00000960
.L00000927:
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
.L00000943:
	addl      $16, %esp
	incl      %eax
	je        .L00000969
.L00000949:
	pushl     -16(%ebp)
	pushl     -20(%ebp)
	pushl     -24(%ebp)
	leal      .LC37@GOTOFF(%ebx), %esi
	pushl     %esi
	call      Py_BuildValue@PLT
.L0000095E:
	movl      %eax, %edx
.L00000960:
	leal      -8(%ebp), %esp
	popl      %ebx
	movl      %edx, %eax
	popl      %esi
	leave     
	ret       
.L00000969:
	subl      $12, %esp
	pushl     LinuxAudioError@GOTOFF(%ebx)
	call      PyErr_SetFromErrno@PLT
.L00000977:
	xorl      %edx, %edx
	jmp       .L00000960
	.size	lad_getptr, .-lad_getptr
# ----------------------
.L0000097B:
	.p2align 2
# ----------------------
	.local	lad_getattr
	.type	lad_getattr, @function
lad_getattr:
	pushl     %ebp
	movl      %esp, %ebp
	pushl     %ebx
	subl      $8, %esp
	pushl     12(%ebp)
	call      .L0000098B
.L0000098B:
	popl      %ebx
	addl      $_GLOBAL_OFFSET_TABLE_+1, %ebx
	pushl     8(%ebp)
	leal      lad_methods@GOTOFF(%ebx), %eax
	pushl     %eax
	call      Py_FindMethod@PLT
.L000009A1:
	movl      -4(%ebp), %ebx
	leave     
	ret       
	.size	lad_getattr, .-lad_getattr
# ----------------------
.L000009A6:
	.p2align 3
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
	call      .L000009C7
.L000009C7:
	popl      %ebx
	addl      $_GLOBAL_OFFSET_TABLE_+1, %ebx
	pushl     %ecx
	leal      -20(%ebp), %edx
	pushl     %edx
	leal      .LC38@GOTOFF(%ebx), %eax
	pushl     %eax
	pushl     12(%ebp)
	call      PyArg_ParseTuple@PLT
.L000009E2:
	addl      $16, %esp
	xorl      %edx, %edx
	testl     %eax, %eax
	je        .L00000A90
.L000009EF:
	movl      -16(%ebp), %eax
	testl     %eax, %eax
	je        .L00000A9C
.L000009FA:
	cmpb      $114, (%eax)
	jne       .L00000AB2
.L00000A03:
	xorl      %edi, %edi
	cmpb      $0, 1(%eax)
	jne       .L00000AB2
.L00000A0F:
	movl      -20(%ebp), %eax
	testl     %eax, %eax
	je        .L00000AEA
.L00000A1A:
	subl      $8, %esp
	pushl     %edi
	pushl     -20(%ebp)
	call      open64@PLT
.L00000A26:
	addl      $16, %esp
	cmpl      $-1, %eax
	movl      %eax, %esi
	je        .L00000B30
.L00000A34:
	cmpl      $1, %edi
	je        .L00000B15
.L00000A3D:
	pushl     %eax
	leal      -24(%ebp), %eax
	pushl     %eax
	pushl     $-2147201013
	pushl     %esi
	call      ioctl@PLT
.L00000A4D:
	addl      $16, %esp
	incl      %eax
	je        .L00000B30
.L00000A57:
	subl      $12, %esp
	leal      Ladtype@GOTOFF(%ebx), %edx
	pushl     %edx
	call      _PyObject_New@PLT
.L00000A66:
	addl      $16, %esp
	testl     %eax, %eax
	movl      %eax, %edx
	je        .L00000B48
.L00000A73:
	movl      %esi, 8(%eax)
	movl      %edi, 12(%eax)
	movl      $0, 20(%eax)
	movl      $0, 16(%eax)
	movl      -24(%ebp), %edi
	movl      %edi, 24(%eax)
	.p2align 3
.L00000A90:
	leal      -12(%ebp), %esp
	popl      %ebx
	popl      %esi
	movl      %edx, %eax
	popl      %edi
	leave     
	ret       
.L00000A9A:
	.p2align 2
.L00000A9C:
	movl      -20(%ebp), %eax
	movl      %eax, -16(%ebp)
	movl      $0, -20(%ebp)
	cmpb      $114, (%eax)
	je        .L00000A03
.L00000AB2:
	cmpb      $119, (%eax)
	jne       .L00000AC6
.L00000AB7:
	cmpb      $0, 1(%eax)
	movl      $1, %edi
	je        .L00000A0F
.L00000AC6:
	subl      $8, %esp
	leal      .LC41@GOTOFF(%ebx), %esi
	pushl     %esi
	pushl     LinuxAudioError@GOTOFF(%ebx)
	call      PyErr_SetString@PLT
.L00000ADB:
	addl      $16, %esp
	xorl      %edx, %edx
.L00000AE0:
	leal      -12(%ebp), %esp
	popl      %ebx
	popl      %esi
	movl      %edx, %eax
	popl      %edi
	leave     
	ret       
.L00000AEA:
	subl      $12, %esp
	leal      .LC42@GOTOFF(%ebx), %edx
	pushl     %edx
	call      getenv@PLT
.L00000AF9:
	addl      $16, %esp
	testl     %eax, %eax
	movl      %eax, -20(%ebp)
	jne       .L00000A1A
.L00000B07:
	leal      .LC43@GOTOFF(%ebx), %ecx
	movl      %ecx, -20(%ebp)
	jmp       .L00000A1A
.L00000B15:
	pushl     %eax
	pushl     $0
	pushl     $20494
	pushl     %esi
	call      ioctl@PLT
.L00000B23:
	addl      $16, %esp
	incl      %eax
	jne       .L00000A3D
.L00000B2D:
	.p2align 3
.L00000B30:
	subl      $8, %esp
	pushl     -20(%ebp)
	pushl     LinuxAudioError@GOTOFF(%ebx)
	call      PyErr_SetFromErrnoWithFilename@PLT
.L00000B41:
	addl      $16, %esp
	xorl      %edx, %edx
	jmp       .L00000AE0
.L00000B48:
	subl      $12, %esp
	pushl     %esi
	call      close@PLT
.L00000B51:
	addl      $16, %esp
	xorl      %edx, %edx
	jmp       .L00000AE0
	.size	ladopen, .-ladopen
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
	call      .L00000B6C
.L00000B6C:
	popl      %ebx
	addl      $_GLOBAL_OFFSET_TABLE_+1, %ebx
	pushl     $0
	leal      linuxaudiodev_methods@GOTOFF(%ebx), %edx
	pushl     %edx
	leal      .LC44@GOTOFF(%ebx), %eax
	pushl     %eax
	call      Py_InitModule4@PLT
.L00000B88:
	addl      $32, %esp
	testl     %eax, %eax
	movl      %eax, %esi
	je        .L00000C8C
.L00000B95:
	pushl     %ecx
	pushl     $0
	pushl     $0
	leal      .LC45@GOTOFF(%ebx), %ecx
	pushl     %ecx
	call      PyErr_NewException@PLT
.L00000BA6:
	addl      $16, %esp
	testl     %eax, %eax
	movl      %eax, LinuxAudioError@GOTOFF(%ebx)
	jne       .L00000C94
.L00000BB7:
	pushl     %eax
	pushl     $1
	leal      .LC47@GOTOFF(%ebx), %edx
	pushl     %edx
	pushl     %esi
	call      PyModule_AddIntConstant@PLT
.L00000BC7:
	addl      $16, %esp
	incl      %eax
	je        .L00000C8C
.L00000BD1:
	pushl     %eax
	pushl     $2
	leal      .LC48@GOTOFF(%ebx), %ecx
	pushl     %ecx
	pushl     %esi
	call      PyModule_AddIntConstant@PLT
.L00000BE1:
	addl      $16, %esp
	incl      %eax
	je        .L00000C8C
.L00000BEB:
	pushl     %eax
	pushl     $8
	leal      .LC49@GOTOFF(%ebx), %eax
	pushl     %eax
	pushl     %esi
	call      PyModule_AddIntConstant@PLT
.L00000BFB:
	addl      $16, %esp
	incl      %eax
	je        .L00000C8C
.L00000C05:
	pushl     %eax
	pushl     $64
	leal      .LC50@GOTOFF(%ebx), %edx
	pushl     %edx
	pushl     %esi
	call      PyModule_AddIntConstant@PLT
.L00000C15:
	addl      $16, %esp
	incl      %eax
	je        .L00000C8C
.L00000C1B:
	pushl     %eax
	pushl     $256
	leal      .LC51@GOTOFF(%ebx), %ecx
	pushl     %ecx
	pushl     %esi
	call      PyModule_AddIntConstant@PLT
.L00000C2E:
	addl      $16, %esp
	incl      %eax
	je        .L00000C8C
.L00000C34:
	pushl     %eax
	pushl     $128
	leal      .LC52@GOTOFF(%ebx), %eax
	pushl     %eax
	pushl     %esi
	call      PyModule_AddIntConstant@PLT
.L00000C47:
	addl      $16, %esp
	incl      %eax
	je        .L00000C8C
.L00000C4D:
	pushl     %ecx
	pushl     $32
	leal      .LC53@GOTOFF(%ebx), %edx
	pushl     %edx
	pushl     %esi
	call      PyModule_AddIntConstant@PLT
.L00000C5D:
	addl      $16, %esp
	incl      %eax
	je        .L00000C8C
.L00000C63:
	pushl     %edx
	pushl     $16
	leal      .LC54@GOTOFF(%ebx), %ecx
	pushl     %ecx
	pushl     %esi
	call      PyModule_AddIntConstant@PLT
.L00000C73:
	addl      $16, %esp
	incl      %eax
	je        .L00000C8C
.L00000C79:
	pushl     %eax
	pushl     $16
	leal      .LC55@GOTOFF(%ebx), %eax
	pushl     %eax
	pushl     %esi
	call      PyModule_AddIntConstant@PLT
.L00000C89:
	addl      $16, %esp
.L00000C8C:
	leal      -8(%ebp), %esp
	popl      %ebx
	popl      %esi
	leave     
	ret       
.L00000C93:
	.p2align 2
.L00000C94:
	pushl     %edx
	pushl     %eax
	leal      .LC46@GOTOFF(%ebx), %eax
	pushl     %eax
	pushl     %esi
	call      PyModule_AddObject@PLT
.L00000CA3:
	addl      $16, %esp
	jmp       .L00000BB7
	.size	initlinuxaudiodev, .-initlinuxaudiodev
# ----------------------
	.local	LinuxAudioError
	.comm	LinuxAudioError,4,4
# ----------------------
	.ident	"GCC: (GNU) 3.4.6 20060404 (Red Hat 3.4.6-11)"
	.section	.note.GNU-stack,"",@progbits
