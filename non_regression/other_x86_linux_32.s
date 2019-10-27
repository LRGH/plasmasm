	.file	"linuxaudiodev.c"
	.section	.debug_abbrev,"",@progbits
.Ldebug_abbrev0:
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.text
.Ltext0:
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC0:
	.string	"open"
	.section	.data.rel.local,"aw",@progbits
	.align 32
	.type	linuxaudiodev_methods, @object
	.size	linuxaudiodev_methods, 32
linuxaudiodev_methods:
	.long	.LC0
	.long	ladopen
	.long	1
	.zero	4
	.long	0
	.long	0
	.zero	8
	.section	.rodata.str1.4,"aMS",@progbits,1
	.align 4
.LC1:
	.string	"linuxaudiodev.linux_audio_device"
	.section	.data.rel,"aw",@progbits
	.align 32
	.type	Ladtype, @object
	.size	Ladtype, 192
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
	.section	.rodata.str1.1
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
	.section	.data.rel.local
	.align 32
	.type	lad_methods, @object
	.size	lad_methods, 176
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
	.section	.rodata.str1.4
	.align 4
.LC12:
	.string	"logarithmic mu-law 8-bit audio"
	.section	.rodata.str1.1
.LC13:
	.string	"logarithmic A-law 8-bit audio"
.LC14:
	.string	"linear unsigned 8-bit audio"
.LC15:
	.string	"linear signed 8-bit audio"
	.section	.rodata.str1.4
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
	.section	.data.rel.local
	.align 32
	.type	audio_types, @object
	.size	audio_types, 108
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
	.data
	.align 4
	.type	n_audio_types, @object
	.size	n_audio_types, 4
n_audio_types:
	.long	9
	.text
	.p2align 2,,3
	.type	lad_dealloc, @function
lad_dealloc:
.LFB84:
	.file 1 "/home/louis/Desktop/Python-2.4.5/Modules/linuxaudiodev.c"
	.loc 1 149 0
.LVL0:
	pushl	%ebp
.LCFI0:
	movl	%esp, %ebp
.LCFI1:
	pushl	%esi
.LCFI2:
	pushl	%ebx
.LCFI3:
	movl	8(%ebp), %esi
	.loc 1 151 0
	movl	8(%esi), %eax
	.loc 1 149 0
	call	.L4
.L4:
	popl	%ebx
	addl	$_GLOBAL_OFFSET_TABLE_+[.-.L4], %ebx
	.loc 1 151 0
	cmpl	$-1, %eax
	je	.L2
.LVL1:
	.loc 1 152 0
	subl	$12, %esp
	pushl	%eax
.LCFI4:
	call	close@PLT
	addl	$16, %esp
.L2:
	.loc 1 153 0
	subl	$12, %esp
	pushl	%esi
	call	PyObject_Free@PLT
	leal	-8(%ebp), %esp
	popl	%ebx
	popl	%esi
.LVL2:
	leave
	ret
.LFE84:
	.size	lad_dealloc, .-lad_dealloc
	.section	.rodata.str1.1
.LC21:
	.string	"i:read"
	.text
	.p2align 2,,3
	.type	lad_read, @function
lad_read:
.LFB85:
	.loc 1 158 0
.LVL3:
	pushl	%ebp
.LCFI5:
	movl	%esp, %ebp
.LCFI6:
	pushl	%esi
.LCFI7:
	pushl	%ebx
.LCFI8:
	subl	$20, %esp
.LCFI9:
	call	.L13
.L13:
	popl	%ebx
	addl	$_GLOBAL_OFFSET_TABLE_+[.-.L13], %ebx
	.loc 1 163 0
	leal	-12(%ebp), %edx
	pushl	%edx
	leal	.LC21@GOTOFF(%ebx), %eax
	pushl	%eax
	pushl	12(%ebp)
	.loc 1 158 0
	movl	8(%ebp), %esi
	.loc 1 163 0
.LCFI10:
	call	PyArg_ParseTuple@PLT
	addl	$16, %esp
	.loc 1 164 0
	xorl	%edx, %edx
	.loc 1 163 0
	testl	%eax, %eax
	je	.L5
.LVL4:
	.loc 1 165 0
	subl	$8, %esp
	pushl	-12(%ebp)
.LVL5:
	pushl	$0
.LCFI11:
	call	PyString_FromStringAndSize@PLT
	.loc 1 166 0
	addl	$16, %esp
	.loc 1 167 0
	xorl	%edx, %edx
	.loc 1 166 0
	testl	%eax, %eax
	.loc 1 165 0
	movl	%eax, -16(%ebp)
	.loc 1 166 0
	je	.L5
	.loc 1 169 0
	pushl	%edx
	pushl	-12(%ebp)
	.loc 1 168 0
	addl	$20, %eax
.LVL6:
	.loc 1 169 0
	pushl	%eax
	pushl	8(%esi)
	call	read@PLT
.LVL7:
	addl	$16, %esp
	testl	%eax, %eax
.LVL8:
	js	.L11
	.loc 1 175 0
	subl	$8, %esp
	.loc 1 174 0
	addl	%eax, 16(%esi)
	.loc 1 175 0
	leal	-16(%ebp), %ecx
	pushl	%eax
	pushl	%ecx
	call	_PyString_Resize@PLT
.LVL9:
	.loc 1 176 0
	movl	-16(%ebp), %edx
.LVL10:
.LVL11:
.L5:
	.loc 1 177 0
	leal	-8(%ebp), %esp
	popl	%ebx
	movl	%edx, %eax
	popl	%esi
.LVL12:
	leave
	ret
.LVL13:
.L11:
	.loc 1 170 0
	subl	$12, %esp
	pushl	LinuxAudioError@GOTOFF(%ebx)
	call	PyErr_SetFromErrno@PLT
.LVL14:
	.loc 1 171 0
	movl	-16(%ebp), %esi
.LVL15:
	movl	(%esi), %ecx
	decl	%ecx
	addl	$16, %esp
	testl	%ecx, %ecx
	movl	%ecx, (%esi)
	je	.L12
	.loc 1 172 0
	xorl	%edx, %edx
	jmp	.L5
.L12:
	.loc 1 171 0
	subl	$12, %esp
	movl	-16(%ebp), %eax
.LVL16:
	movl	4(%eax), %edx
	pushl	%eax
	call	*24(%edx)
.LVL17:
	addl	$16, %esp
	.loc 1 172 0
	xorl	%edx, %edx
	jmp	.L5
.LFE85:
	.size	lad_read, .-lad_read
	.section	.rodata.str1.1
.LC22:
	.string	"s#:write"
	.text
	.p2align 2,,3
	.type	lad_write, @function
lad_write:
.LFB86:
	.loc 1 181 0
.LVL18:
	pushl	%ebp
.LCFI12:
	movl	%esp, %ebp
.LCFI13:
	pushl	%edi
.LCFI14:
	pushl	%esi
.LCFI15:
	pushl	%ebx
.LCFI16:
	subl	$172, %esp
.LCFI17:
	.loc 1 188 0
	leal	-156(%ebp), %ecx
	.loc 1 181 0
	movl	8(%ebp), %esi
	call	.L30
.L30:
	popl	%ebx
	addl	$_GLOBAL_OFFSET_TABLE_+[.-.L30], %ebx
	.loc 1 188 0
	pushl	%ecx
	leal	-160(%ebp), %edx
	pushl	%edx
	leal	.LC22@GOTOFF(%ebx), %eax
	pushl	%eax
	pushl	12(%ebp)
.LCFI18:
	call	PyArg_ParseTuple@PLT
	addl	$16, %esp
	.loc 1 189 0
	xorl	%edx, %edx
	.loc 1 188 0
	testl	%eax, %eax
	je	.L14
.LVL19:
.LBB2:
	.loc 1 192 0
	leal	-152(%ebp), %edx
	xorl	%eax, %eax
	movl	$32, %ecx
	movl	%edx, -172(%ebp)
	movl	%edx, %edi
.LVL20:
#APP
	cld; rep; stosl
.LVL21:
#NO_APP
.LBE2:
	.loc 1 193 0
	movl	8(%esi), %edx
	movl	%edx, %edi
.LVL22:
	shrl	$5, %edi
	andl	$31, %edx
#APP
	btsl %edx,-152(%ebp,%edi,4)
	.loc 1 216 0
#NO_APP
	movl	-156(%ebp), %eax
.LVL23:
	testl	%eax, %eax
	.loc 1 194 0
	movl	$4, -168(%ebp)
	.loc 1 195 0
	leal	-168(%ebp), %edi
	movl	$0, -164(%ebp)
	.loc 1 216 0
	jle	.L27
	movl	%edi, -176(%ebp)
	jmp	.L25
.LVL24:
	.p2align 2,,3
.L20:
	.loc 1 209 0
	addl	%eax, 20(%esi)
	.loc 1 210 0
	subl	%eax, -156(%ebp)
.LVL25:
	.loc 1 211 0
	addl	%eax, -160(%ebp)
.LVL26:
	.loc 1 216 0
	movl	-156(%ebp), %eax
.LVL27:
	testl	%eax, %eax
	jle	.L27
.LVL28:
.L25:
	.loc 1 198 0
	subl	$12, %esp
	pushl	%edi
	pushl	$0
	pushl	-172(%ebp)
	pushl	$0
	movl	8(%esi), %ecx
.LVL29:
	incl	%ecx
	pushl	%ecx
.LCFI19:
	call	select@PLT
	.loc 1 200 0
	addl	$32, %esp
	testl	%eax, %eax
.LVL30:
	.loc 1 199 0
	movl	$1, -168(%ebp)
	movl	-176(%ebp), %edi
	movl	$0, -164(%ebp)
	.loc 1 200 0
	je	.L19
.LVL31:
	.loc 1 201 0
	pushl	%eax
	pushl	-156(%ebp)
	pushl	-160(%ebp)
	pushl	8(%esi)
.LCFI20:
	call	write@PLT
	addl	$16, %esp
	cmpl	$-1, %eax
.LVL32:
	jne	.L20
	.loc 1 202 0
.LCFI21:
	call	__errno_location@PLT
.LVL33:
	cmpl	$11, (%eax)
	jne	.L19
	.loc 1 206 0
	movl	$0, (%eax)
	.loc 1 216 0
	movl	-156(%ebp), %eax
	testl	%eax, %eax
	jg	.L25
.LVL34:
	.p2align 2,,3
.L27:
	.loc 1 219 0
	movl	_Py_NoneStruct@GOT(%ebx), %esi
.LVL35:
	incl	(%esi)
	.loc 1 220 0
	movl	%esi, %edx
.LVL36:
.L14:
	.loc 1 221 0
	leal	-12(%ebp), %esp
	popl	%ebx
	popl	%esi
	movl	%edx, %eax
	popl	%edi
	leave
	ret
.LVL37:
.L19:
	.loc 1 215 0
	subl	$12, %esp
	pushl	LinuxAudioError@GOTOFF(%ebx)
.LCFI22:
	call	PyErr_SetFromErrno@PLT
.LVL38:
	.loc 1 221 0
	leal	-12(%ebp), %esp
	popl	%ebx
	popl	%esi
.LVL39:
	.loc 1 216 0
	xorl	%edx, %edx
	.loc 1 221 0
	movl	%edx, %eax
	popl	%edi
	leave
	ret
.LFE86:
	.size	lad_write, .-lad_write
	.section	.rodata.str1.1
.LC23:
	.string	":close"
	.text
	.p2align 2,,3
	.type	lad_close, @function
lad_close:
.LFB87:
	.loc 1 225 0
.LVL40:
	pushl	%ebp
.LCFI23:
	movl	%esp, %ebp
.LCFI24:
	pushl	%esi
.LCFI25:
	pushl	%ebx
.LCFI26:
	call	.L34
.L34:
	popl	%ebx
	addl	$_GLOBAL_OFFSET_TABLE_+[.-.L34], %ebx
	.loc 1 226 0
	subl	$8, %esp
	leal	.LC23@GOTOFF(%ebx), %eax
	pushl	%eax
	pushl	12(%ebp)
	.loc 1 225 0
	movl	8(%ebp), %esi
	.loc 1 226 0
.LCFI27:
	call	PyArg_ParseTuple@PLT
	addl	$16, %esp
	.loc 1 227 0
	xorl	%edx, %edx
	.loc 1 226 0
	testl	%eax, %eax
	je	.L31
.LVL41:
	.loc 1 229 0
	movl	8(%esi), %eax
	testl	%eax, %eax
	js	.L33
	.loc 1 230 0
	subl	$12, %esp
	pushl	%eax
	call	close@PLT
	.loc 1 231 0
	movl	$-1, 8(%esi)
	addl	$16, %esp
.L33:
	.loc 1 233 0
	movl	_Py_NoneStruct@GOT(%ebx), %ecx
	incl	(%ecx)
	.loc 1 234 0
	movl	%ecx, %edx
.L31:
	.loc 1 235 0
	leal	-8(%ebp), %esp
	popl	%ebx
	movl	%edx, %eax
	popl	%esi
.LVL42:
	leave
	ret
.LFE87:
	.size	lad_close, .-lad_close
	.section	.rodata.str1.1
.LC24:
	.string	":fileno"
	.text
	.p2align 2,,3
	.type	lad_fileno, @function
lad_fileno:
.LFB88:
	.loc 1 239 0
.LVL43:
	pushl	%ebp
.LCFI28:
	movl	%esp, %ebp
.LCFI29:
	pushl	%ebx
.LCFI30:
	call	.L37
.L37:
	popl	%ebx
	addl	$_GLOBAL_OFFSET_TABLE_+[.-.L37], %ebx
	subl	$12, %esp
.LCFI31:
	.loc 1 240 0
	leal	.LC24@GOTOFF(%ebx), %eax
	pushl	%eax
	pushl	12(%ebp)
.LCFI32:
	call	PyArg_ParseTuple@PLT
	addl	$16, %esp
	.loc 1 241 0
	xorl	%edx, %edx
	.loc 1 240 0
	testl	%eax, %eax
	je	.L35
.LVL44:
	.loc 1 242 0
	movl	8(%ebp), %edx
	subl	$12, %esp
	pushl	8(%edx)
.LCFI33:
	call	PyInt_FromLong@PLT
	movl	%eax, %edx
.L35:
	.loc 1 243 0
	movl	%edx, %eax
	movl	-4(%ebp), %ebx
	leave
	ret
.LFE88:
	.size	lad_fileno, .-lad_fileno
	.section	.rodata.str1.1
.LC25:
	.string	"iiii|i:setparameters"
	.section	.rodata.str1.4
	.align 4
.LC30:
	.string	"for %s, expected sample size %d, not %d"
	.align 4
.LC28:
	.string	"nchannels must be 1 or 2, not %d"
	.align 4
.LC31:
	.string	"%s format not supported by device"
	.section	.rodata.str1.1
.LC29:
	.string	"unknown audio encoding: %d"
	.section	.rodata.str1.4
	.align 4
.LC27:
	.string	"expected sample size >= 0, not %d"
	.section	.rodata.str1.1
.LC26:
	.string	"expected rate >= 0, not %d"
	.text
	.p2align 2,,3
	.type	lad_setparameters, @function
lad_setparameters:
.LFB89:
	.loc 1 247 0
.LVL45:
	pushl	%ebp
.LCFI34:
	movl	%esp, %ebp
.LCFI35:
	pushl	%edi
.LCFI36:
	pushl	%esi
.LCFI37:
	pushl	%ebx
.LCFI38:
	subl	$32, %esp
.LCFI39:
	.loc 1 250 0
	leal	-16(%ebp), %eax
	.loc 1 248 0
	movl	$0, -16(%ebp)
	.loc 1 250 0
	leal	-20(%ebp), %esi
	pushl	%eax
	pushl	%esi
	leal	-24(%ebp), %ecx
	movl	%ecx, -40(%ebp)
	leal	-28(%ebp), %edx
	pushl	%ecx
	pushl	%edx
	.loc 1 247 0
	call	.L67
.L67:
	popl	%ebx
	addl	$_GLOBAL_OFFSET_TABLE_+[.-.L67], %ebx
	.loc 1 250 0
	leal	-32(%ebp), %edi
	movl	%edi, -36(%ebp)
	leal	.LC25@GOTOFF(%ebx), %eax
	pushl	%edi
	pushl	%eax
	pushl	12(%ebp)
.LCFI40:
	call	PyArg_ParseTuple@PLT
	addl	$32, %esp
	.loc 1 252 0
	xorl	%edx, %edx
	.loc 1 250 0
	testl	%eax, %eax
	je	.L38
.LVL46:
	.loc 1 254 0
	movl	-32(%ebp), %eax
.LVL47:
	testl	%eax, %eax
	js	.L60
.LVL48:
	.loc 1 259 0
	movl	-28(%ebp), %edi
.LVL49:
	testl	%edi, %edi
	js	.L61
.LVL50:
	.loc 1 264 0
	movl	-24(%ebp), %edx
.LVL51:
	leal	-1(%edx), %ecx
	cmpl	$1, %ecx
	ja	.L62
.LVL52:
	.loc 1 270 0
	xorl	%ecx, %ecx
.LVL53:
	movl	n_audio_types@GOTOFF(%ebx), %edx
.LVL54:
	cmpl	%edx, %ecx
	jge	.L44
	movl	-20(%ebp), %esi
.LVL55:
	leal	4+audio_types@GOTOFF(%ebx), %eax
.LVL56:
.LVL57:
	.p2align 2,,3
.L47:
	.loc 1 271 0
	cmpl	(%eax), %esi
	je	.L44
	.loc 1 270 0
	incl	%ecx
	addl	$12, %eax
	cmpl	%edx, %ecx
	jl	.L47
.LVL58:
.L44:
	.loc 1 273 0
	cmpl	%edx, %ecx
	je	.L63
	.loc 1 277 0
	leal	(%ecx,%ecx,2), %eax
	leal	audio_types@GOTOFF(%ebx), %esi
.LVL59:
	leal	0(,%eax,4), %edx
	movl	(%edx,%esi), %eax
	cmpl	%edi, %eax
	jne	.L64
	.loc 1 284 0
	movl	-16(%ebp), %edi
.LVL60:
	testl	%edi, %edi
	jne	.L50
	.loc 1 285 0
	movl	4(%edx,%esi), %eax
	movl	8(%ebp), %edi
	testl	%eax, 24(%edi)
	je	.L65
.L50:
	.loc 1 292 0
	leal	(%ecx,%ecx,2), %esi
	leal	4+audio_types@GOTOFF(%ebx,%esi,4), %edx
	pushl	%eax
	pushl	%edx
	pushl	$-1073459195
	movl	8(%ebp), %ecx
.LVL61:
	pushl	8(%ecx)
.LCFI41:
	call	ioctl@PLT
	addl	$16, %esp
	incl	%eax
	je	.L57
.LVL62:
	.loc 1 297 0
	pushl	%eax
	pushl	-40(%ebp)
	pushl	$-1073459194
	movl	8(%ebp), %eax
	pushl	8(%eax)
	call	ioctl@PLT
	addl	$16, %esp
	incl	%eax
	je	.L57
	.loc 1 301 0
	pushl	%eax
	pushl	-36(%ebp)
	pushl	$-1073459198
	movl	8(%ebp), %edi
	pushl	8(%edi)
	call	ioctl@PLT
	addl	$16, %esp
	incl	%eax
	je	.L57
	.loc 1 306 0
	movl	_Py_NoneStruct@GOT(%ebx), %ecx
	incl	(%ecx)
	.loc 1 307 0
	movl	%ecx, %edx
.LVL63:
.L38:
	.loc 1 308 0
	leal	-12(%ebp), %esp
	popl	%ebx
	popl	%esi
	movl	%edx, %eax
	popl	%edi
	leave
	ret
.LVL64:
.L64:
	.loc 1 278 0
	subl	$12, %esp
	pushl	%edi
	pushl	%eax
	pushl	8(%edx,%esi)
	leal	.LC30@GOTOFF(%ebx), %esi
	movl	PyExc_ValueError@GOT(%ebx), %edx
	pushl	%esi
	pushl	(%edx)
.LCFI42:
	call	PyErr_Format@PLT
.LVL65:
	.loc 1 303 0
	xorl	%edx, %edx
.LVL66:
.L66:
	.loc 1 308 0
	leal	-12(%ebp), %esp
	popl	%ebx
	popl	%esi
	movl	%edx, %eax
	popl	%edi
	leave
	ret
.LVL67:
.L57:
	.loc 1 302 0
	subl	$12, %esp
	pushl	LinuxAudioError@GOTOFF(%ebx)
.LCFI43:
	call	PyErr_SetFromErrno@PLT
	.loc 1 303 0
	xorl	%edx, %edx
	jmp	.L66
.LVL68:
.L62:
.LVL69:
	.loc 1 265 0
	pushl	%eax
	pushl	%edx
	leal	.LC28@GOTOFF(%ebx), %eax
.LVL70:
.L59:
	.loc 1 260 0
	pushl	%eax
	movl	PyExc_ValueError@GOT(%ebx), %edi
	pushl	(%edi)
	call	PyErr_Format@PLT
.LVL71:
	.loc 1 303 0
	xorl	%edx, %edx
	jmp	.L66
.LVL72:
.L65:
	.loc 1 286 0
	pushl	%eax
	pushl	8(%edx,%esi)
	leal	.LC31@GOTOFF(%ebx), %eax
	jmp	.L59
.LVL73:
.L63:
	.loc 1 274 0
	pushl	%eax
	pushl	-20(%ebp)
	leal	.LC29@GOTOFF(%ebx), %eax
	jmp	.L59
.LVL74:
.L61:
.LVL75:
	.loc 1 260 0
	pushl	%eax
	pushl	%edi
	leal	.LC27@GOTOFF(%ebx), %eax
	jmp	.L59
.LVL76:
.L60:
	.loc 1 255 0
	pushl	%edx
	pushl	%eax
	leal	.LC26@GOTOFF(%ebx), %eax
.LVL77:
	jmp	.L59
.LFE89:
	.size	lad_setparameters, .-lad_setparameters
	.section	.rodata.str1.1
.LC32:
	.string	":bufsize"
	.text
	.p2align 2,,3
	.type	lad_bufsize, @function
lad_bufsize:
.LFB91:
	.loc 1 348 0
.LVL78:
	pushl	%ebp
.LCFI44:
	movl	%esp, %ebp
.LCFI45:
	pushl	%edi
.LCFI46:
	pushl	%esi
.LCFI47:
	pushl	%ebx
.LCFI48:
	call	.L93
.L93:
	popl	%ebx
	addl	$_GLOBAL_OFFSET_TABLE_+[.-.L93], %ebx
	subl	$52, %esp
.LCFI49:
	.loc 1 352 0
	leal	.LC32@GOTOFF(%ebx), %eax
	.loc 1 348 0
	movl	8(%ebp), %esi
	.loc 1 352 0
	pushl	%eax
	pushl	12(%ebp)
.LCFI50:
	call	PyArg_ParseTuple@PLT
	addl	$16, %esp
	xorl	%edx, %edx
	testl	%eax, %eax
	je	.L68
.LVL79:
.LBB3:
	.loc 1 312 0
	leal	-48(%ebp), %ecx
	movl	%ecx, -56(%ebp)
.LVL80:
.LBB4:
	.loc 1 315 0
	movl	$0, -52(%ebp)
	.loc 1 316 0
	leal	-52(%ebp), %edx
	pushl	%eax
	pushl	%edx
	pushl	$-1073459195
	pushl	8(%esi)
.LCFI51:
	call	ioctl@PLT
	addl	$16, %esp
	testl	%eax, %eax
.LBE4:
	.loc 1 312 0
	leal	-44(%ebp), %edi
.LVL81:
.LBB5:
	.loc 1 316 0
	js	.L91
	.loc 1 319 0
	movl	-52(%ebp), %eax
.LVL82:
	cmpl	$16, %eax
	je	.L81
.LVL83:
	jg	.L85
	cmpl	$1, %eax
	jl	.L92
	cmpl	$2, %eax
	jle	.L77
	cmpl	$8, %eax
	je	.L77
.LVL84:
	.p2align 2,,3
.L92:
.LBE5:
.LBE3:
	.loc 1 359 0
	subl	$12, %esp
	pushl	LinuxAudioError@GOTOFF(%ebx)
	call	PyErr_SetFromErrno@PLT
	.loc 1 363 0
	leal	-12(%ebp), %esp
	popl	%ebx
	popl	%esi
.LVL85:
	.loc 1 360 0
	xorl	%edx, %edx
	.loc 1 363 0
	movl	%edx, %eax
	popl	%edi
.LVL86:
	leave
	ret
.LVL87:
	.p2align 2,,3
.L85:
.LBB6:
.LBB7:
	.loc 1 319 0
	cmpl	$64, %eax
	je	.L77
	jg	.L86
	cmpl	$32, %eax
.L90:
	jne	.L92
	.p2align 2,,3
.L81:
	.loc 1 330 0
	movl	-56(%ebp), %edx
	movl	$2, (%edx)
.LVL88:
.L73:
	.loc 1 337 0
	movl	$0, (%edi)
	.loc 1 338 0
	pushl	%eax
	pushl	%edi
	pushl	$-1073459194
	pushl	8(%esi)
	call	ioctl@PLT
	addl	$16, %esp
	testl	%eax, %eax
	js	.L91
.L70:
.LBE7:
.LBE6:
	.loc 1 358 0
	pushl	%ecx
	leal	-40(%ebp), %ecx
	pushl	%ecx
	pushl	$-2146414580
	pushl	8(%esi)
	call	ioctl@PLT
	addl	$16, %esp
	testl	%eax, %eax
	js	.L92
	.loc 1 362 0
	movl	-32(%ebp), %eax
	imull	-36(%ebp), %eax
	movl	-48(%ebp), %edi
.LVL89:
	imull	-44(%ebp), %edi
.LVL90:
	cltd
	idivl	%edi
	subl	$12, %esp
	pushl	%eax
	call	PyInt_FromLong@PLT
	movl	%eax, %edx
.L68:
	.loc 1 363 0
	leal	-12(%ebp), %esp
	popl	%ebx
	popl	%esi
.LVL91:
	movl	%edx, %eax
	popl	%edi
	leave
	ret
.LVL92:
	.p2align 2,,3
.L91:
.LBB8:
.LBB9:
	.loc 1 338 0
.LCFI52:
	call	__errno_location@PLT
	movl	(%eax), %edi
.LVL93:
	negl	%edi
.LBE9:
.LBE8:
	.loc 1 312 0
	testl	%edi, %edi
	jns	.L70
	jmp	.L92
.LVL94:
	.p2align 2,,3
.L77:
.LBB10:
.LBB11:
	.loc 1 324 0
	movl	-56(%ebp), %eax
.LVL95:
	movl	$1, (%eax)
	jmp	.L73
.LVL96:
.L86:
	.loc 1 319 0
	cmpl	$128, %eax
	je	.L81
	cmpl	$256, %eax
	jmp	.L90
.LBE11:
.LBE10:
.LFE91:
	.size	lad_bufsize, .-lad_bufsize
	.section	.rodata.str1.1
.LC33:
	.string	":obufcount"
	.text
	.p2align 2,,3
	.type	lad_obufcount, @function
lad_obufcount:
.LFB92:
	.loc 1 369 0
.LVL97:
	pushl	%ebp
.LCFI53:
	movl	%esp, %ebp
.LCFI54:
	pushl	%edi
.LCFI55:
	pushl	%esi
.LCFI56:
	pushl	%ebx
.LCFI57:
	call	.L119
.L119:
	popl	%ebx
	addl	$_GLOBAL_OFFSET_TABLE_+[.-.L119], %ebx
	subl	$52, %esp
.LCFI58:
	.loc 1 373 0
	leal	.LC33@GOTOFF(%ebx), %eax
	.loc 1 369 0
	movl	8(%ebp), %esi
	.loc 1 373 0
	pushl	%eax
	pushl	12(%ebp)
.LCFI59:
	call	PyArg_ParseTuple@PLT
	addl	$16, %esp
	.loc 1 374 0
	xorl	%edx, %edx
	.loc 1 373 0
	testl	%eax, %eax
	je	.L94
.LVL98:
.LBB12:
	.loc 1 312 0
	leal	-48(%ebp), %ecx
	movl	%ecx, -56(%ebp)
.LVL99:
.LBB13:
	.loc 1 315 0
	movl	$0, -52(%ebp)
	.loc 1 316 0
	leal	-52(%ebp), %edx
	pushl	%eax
	pushl	%edx
	pushl	$-1073459195
	pushl	8(%esi)
.LCFI60:
	call	ioctl@PLT
	addl	$16, %esp
	testl	%eax, %eax
.LBE13:
	.loc 1 312 0
	leal	-44(%ebp), %edi
.LVL100:
.LBB14:
	.loc 1 316 0
	js	.L117
	.loc 1 319 0
	movl	-52(%ebp), %eax
.LVL101:
	cmpl	$16, %eax
	je	.L107
.LVL102:
	jg	.L111
	cmpl	$1, %eax
	jl	.L118
	cmpl	$2, %eax
	jle	.L103
	cmpl	$8, %eax
	je	.L103
.LVL103:
	.p2align 2,,3
.L118:
.LBE14:
.LBE12:
	.loc 1 381 0
	subl	$12, %esp
	pushl	LinuxAudioError@GOTOFF(%ebx)
	call	PyErr_SetFromErrno@PLT
	.loc 1 386 0
	leal	-12(%ebp), %esp
	popl	%ebx
	popl	%esi
.LVL104:
	.loc 1 382 0
	xorl	%edx, %edx
	.loc 1 386 0
	movl	%edx, %eax
	popl	%edi
.LVL105:
	leave
	ret
.LVL106:
	.p2align 2,,3
.L111:
.LBB15:
.LBB16:
	.loc 1 319 0
	cmpl	$64, %eax
	je	.L103
	jg	.L112
	cmpl	$32, %eax
.L116:
	jne	.L118
	.p2align 2,,3
.L107:
	.loc 1 330 0
	movl	-56(%ebp), %edx
	movl	$2, (%edx)
.LVL107:
.L99:
	.loc 1 337 0
	movl	$0, (%edi)
	.loc 1 338 0
	pushl	%eax
	pushl	%edi
	pushl	$-1073459194
	pushl	8(%esi)
	call	ioctl@PLT
	addl	$16, %esp
	testl	%eax, %eax
	js	.L117
.L96:
.LBE16:
.LBE15:
	.loc 1 380 0
	leal	-40(%ebp), %ecx
	pushl	%eax
	pushl	%ecx
	pushl	$-2146414580
	pushl	8(%esi)
	call	ioctl@PLT
	addl	$16, %esp
	testl	%eax, %eax
	js	.L118
	.loc 1 384 0
	movl	-32(%ebp), %eax
	imull	-36(%ebp), %eax
	subl	-28(%ebp), %eax
	movl	-44(%ebp), %edi
.LVL108:
	imull	-48(%ebp), %edi
.LVL109:
	cltd
	idivl	%edi
	subl	$12, %esp
	pushl	%eax
	call	PyInt_FromLong@PLT
	movl	%eax, %edx
.L94:
	.loc 1 386 0
	leal	-12(%ebp), %esp
	popl	%ebx
	popl	%esi
.LVL110:
	movl	%edx, %eax
	popl	%edi
	leave
	ret
.LVL111:
	.p2align 2,,3
.L117:
.LBB17:
.LBB18:
	.loc 1 338 0
.LCFI61:
	call	__errno_location@PLT
	movl	(%eax), %edi
.LVL112:
	negl	%edi
.LBE18:
.LBE17:
	.loc 1 312 0
	testl	%edi, %edi
	jns	.L96
	jmp	.L118
.LVL113:
	.p2align 2,,3
.L103:
.LBB19:
.LBB20:
	.loc 1 324 0
	movl	-56(%ebp), %eax
.LVL114:
	movl	$1, (%eax)
	jmp	.L99
.LVL115:
.L112:
	.loc 1 319 0
	cmpl	$128, %eax
	je	.L107
	cmpl	$256, %eax
	jmp	.L116
.LBE20:
.LBE19:
.LFE92:
	.size	lad_obufcount, .-lad_obufcount
	.section	.rodata.str1.1
.LC34:
	.string	":obuffree"
	.text
	.p2align 2,,3
	.type	lad_obuffree, @function
lad_obuffree:
.LFB93:
	.loc 1 392 0
.LVL116:
	pushl	%ebp
.LCFI62:
	movl	%esp, %ebp
.LCFI63:
	pushl	%edi
.LCFI64:
	pushl	%esi
.LCFI65:
	pushl	%ebx
.LCFI66:
	call	.L145
.L145:
	popl	%ebx
	addl	$_GLOBAL_OFFSET_TABLE_+[.-.L145], %ebx
	subl	$68, %esp
.LCFI67:
	.loc 1 396 0
	leal	.LC34@GOTOFF(%ebx), %eax
	.loc 1 392 0
	movl	8(%ebp), %esi
	.loc 1 396 0
	pushl	%eax
	pushl	12(%ebp)
.LCFI68:
	call	PyArg_ParseTuple@PLT
	addl	$16, %esp
	.loc 1 397 0
	xorl	%edx, %edx
	.loc 1 396 0
	testl	%eax, %eax
	je	.L120
.LVL117:
.LBB21:
	.loc 1 312 0
	leal	-48(%ebp), %ecx
	movl	%ecx, -56(%ebp)
.LVL118:
.LBB22:
	.loc 1 315 0
	movl	$0, -52(%ebp)
	.loc 1 316 0
	leal	-52(%ebp), %edx
	pushl	%ecx
	pushl	%edx
	pushl	$-1073459195
	pushl	8(%esi)
.LCFI69:
	call	ioctl@PLT
	addl	$16, %esp
	testl	%eax, %eax
.LBE22:
	.loc 1 312 0
	leal	-44(%ebp), %edi
.LVL119:
.LBB23:
	.loc 1 316 0
	js	.L143
	.loc 1 319 0
	movl	-52(%ebp), %eax
.LVL120:
	cmpl	$16, %eax
	je	.L133
.LVL121:
	jg	.L137
	cmpl	$1, %eax
	jl	.L144
	cmpl	$2, %eax
	jle	.L129
	cmpl	$8, %eax
	je	.L129
.LVL122:
	.p2align 2,,3
.L144:
.LBE23:
.LBE21:
	.loc 1 404 0
	subl	$12, %esp
	pushl	LinuxAudioError@GOTOFF(%ebx)
	call	PyErr_SetFromErrno@PLT
	.loc 1 408 0
	leal	-12(%ebp), %esp
	popl	%ebx
	popl	%esi
.LVL123:
	.loc 1 405 0
	xorl	%edx, %edx
	.loc 1 408 0
	movl	%edx, %eax
	popl	%edi
.LVL124:
	leave
	ret
.LVL125:
	.p2align 2,,3
.L137:
.LBB24:
.LBB25:
	.loc 1 319 0
	cmpl	$64, %eax
	je	.L129
	jg	.L138
	cmpl	$32, %eax
.L142:
	jne	.L144
	.p2align 2,,3
.L133:
	.loc 1 330 0
	movl	-56(%ebp), %edx
	movl	$2, (%edx)
.LVL126:
.L125:
	.loc 1 337 0
	movl	$0, (%edi)
	.loc 1 338 0
	pushl	%edx
	pushl	%edi
	pushl	$-1073459194
	pushl	8(%esi)
	call	ioctl@PLT
	addl	$16, %esp
	testl	%eax, %eax
	js	.L143
.L122:
.LBE25:
.LBE24:
	.loc 1 403 0
	leal	-40(%ebp), %ecx
	pushl	%eax
	pushl	%ecx
	pushl	$-2146414580
	pushl	8(%esi)
	call	ioctl@PLT
	addl	$16, %esp
	testl	%eax, %eax
	js	.L144
	.loc 1 407 0
	movl	-28(%ebp), %ecx
	movl	-44(%ebp), %esi
.LVL127:
	movl	-48(%ebp), %edi
.LVL128:
	movl	%ecx, %eax
	imull	%esi, %edi
	cltd
	idivl	%edi
	subl	$12, %esp
	pushl	%eax
	call	PyInt_FromLong@PLT
	movl	%eax, %edx
.LVL129:
.L120:
	.loc 1 408 0
	leal	-12(%ebp), %esp
	popl	%ebx
	popl	%esi
.LVL130:
	movl	%edx, %eax
	popl	%edi
	leave
	ret
.LVL131:
	.p2align 2,,3
.L143:
.LBB26:
.LBB27:
	.loc 1 338 0
.LCFI70:
	call	__errno_location@PLT
	movl	(%eax), %edi
.LVL132:
	negl	%edi
.LBE27:
.LBE26:
	.loc 1 312 0
	testl	%edi, %edi
	jns	.L122
	jmp	.L144
.LVL133:
	.p2align 2,,3
.L129:
.LBB28:
.LBB29:
	.loc 1 324 0
	movl	-56(%ebp), %eax
.LVL134:
	movl	$1, (%eax)
	jmp	.L125
.LVL135:
.L138:
	.loc 1 319 0
	cmpl	$128, %eax
	je	.L133
	cmpl	$256, %eax
	jmp	.L142
.LBE29:
.LBE28:
.LFE93:
	.size	lad_obuffree, .-lad_obuffree
	.section	.rodata.str1.1
.LC35:
	.string	":flush"
	.text
	.p2align 2,,3
	.type	lad_flush, @function
lad_flush:
.LFB94:
	.loc 1 413 0
.LVL136:
	pushl	%ebp
.LCFI71:
	movl	%esp, %ebp
.LCFI72:
	pushl	%ebx
.LCFI73:
	call	.L150
.L150:
	popl	%ebx
	addl	$_GLOBAL_OFFSET_TABLE_+[.-.L150], %ebx
	subl	$12, %esp
.LCFI74:
	.loc 1 414 0
	leal	.LC35@GOTOFF(%ebx), %eax
	pushl	%eax
	pushl	12(%ebp)
.LCFI75:
	call	PyArg_ParseTuple@PLT
	addl	$16, %esp
	xorl	%edx, %edx
	testl	%eax, %eax
	je	.L146
.LVL137:
	.loc 1 416 0
	pushl	%eax
	pushl	$0
	pushl	$20481
	movl	8(%ebp), %edx
	pushl	8(%edx)
.LCFI76:
	call	ioctl@PLT
	addl	$16, %esp
	incl	%eax
	je	.L149
.LVL138:
	.loc 1 420 0
	movl	_Py_NoneStruct@GOT(%ebx), %ecx
	incl	(%ecx)
	.loc 1 421 0
	movl	%ecx, %edx
.LVL139:
.L146:
	.loc 1 422 0
	movl	%edx, %eax
	movl	-4(%ebp), %ebx
	leave
	ret
.LVL140:
.L149:
	.loc 1 417 0
	subl	$12, %esp
	pushl	LinuxAudioError@GOTOFF(%ebx)
	call	PyErr_SetFromErrno@PLT
	.loc 1 418 0
	xorl	%edx, %edx
	jmp	.L146
.LFE94:
	.size	lad_flush, .-lad_flush
	.section	.rodata.str1.1
.LC36:
	.string	":getptr"
.LC37:
	.string	"iii"
	.text
	.p2align 2,,3
	.type	lad_getptr, @function
lad_getptr:
.LFB95:
	.loc 1 426 0
.LVL141:
	pushl	%ebp
.LCFI77:
	movl	%esp, %ebp
.LCFI78:
	pushl	%esi
.LCFI79:
	pushl	%ebx
.LCFI80:
	call	.L157
.L157:
	popl	%ebx
	addl	$_GLOBAL_OFFSET_TABLE_+[.-.L157], %ebx
	subl	$24, %esp
.LCFI81:
	.loc 1 430 0
	leal	.LC36@GOTOFF(%ebx), %eax
	pushl	%eax
	pushl	12(%ebp)
	.loc 1 426 0
	movl	8(%ebp), %esi
	.loc 1 430 0
.LCFI82:
	call	PyArg_ParseTuple@PLT
	addl	$16, %esp
	.loc 1 431 0
	xorl	%edx, %edx
	.loc 1 430 0
	testl	%eax, %eax
	je	.L151
.LVL142:
	.loc 1 433 0
	movl	12(%esi), %eax
	.loc 1 434 0
	cmpl	$1, %eax
	sbbl	%edx, %edx
.LVL143:
	.loc 1 437 0
	leal	-24(%ebp), %ecx
	pushl	%eax
	pushl	%ecx
	.loc 1 434 0
	subl	$2146676718, %edx
.LVL144:
	.loc 1 437 0
	pushl	%edx
	pushl	8(%esi)
.LCFI83:
	call	ioctl@PLT
.LVL145:
	addl	$16, %esp
	incl	%eax
	je	.L156
	.loc 1 441 0
	pushl	-16(%ebp)
	pushl	-20(%ebp)
	pushl	-24(%ebp)
	leal	.LC37@GOTOFF(%ebx), %esi
.LVL146:
	pushl	%esi
	call	Py_BuildValue@PLT
	movl	%eax, %edx
.LVL147:
.L151:
	.loc 1 442 0
	leal	-8(%ebp), %esp
	popl	%ebx
	movl	%edx, %eax
	popl	%esi
	leave
	ret
.LVL148:
.L156:
	.loc 1 438 0
	subl	$12, %esp
	pushl	LinuxAudioError@GOTOFF(%ebx)
	call	PyErr_SetFromErrno@PLT
	.loc 1 439 0
	xorl	%edx, %edx
	jmp	.L151
.LFE95:
	.size	lad_getptr, .-lad_getptr
	.p2align 2,,3
	.type	lad_getattr, @function
lad_getattr:
.LFB96:
	.loc 1 460 0
.LVL149:
	pushl	%ebp
.LCFI84:
	movl	%esp, %ebp
.LCFI85:
	pushl	%ebx
.LCFI86:
	subl	$8, %esp
.LCFI87:
	.loc 1 461 0
	pushl	12(%ebp)
	.loc 1 460 0
	call	.L159
.L159:
	popl	%ebx
	addl	$_GLOBAL_OFFSET_TABLE_+[.-.L159], %ebx
	.loc 1 461 0
	pushl	8(%ebp)
	leal	lad_methods@GOTOFF(%ebx), %eax
	pushl	%eax
.LCFI88:
	call	Py_FindMethod@PLT
	.loc 1 462 0
	movl	-4(%ebp), %ebx
	leave
	ret
.LFE96:
	.size	lad_getattr, .-lad_getattr
	.section	.rodata.str1.1
.LC38:
	.string	"s|s:open"
.LC41:
	.string	"mode should be 'r' or 'w'"
.LC42:
	.string	"AUDIODEV"
.LC43:
	.string	"/dev/dsp"
	.text
	.p2align 2,,3
	.type	ladopen, @function
ladopen:
.LFB97:
	.loc 1 481 0
.LVL150:
	pushl	%ebp
.LCFI89:
	movl	%esp, %ebp
.LCFI90:
	pushl	%edi
.LCFI91:
	pushl	%esi
.LCFI92:
	pushl	%ebx
.LCFI93:
	subl	$12, %esp
.LCFI94:
.LBB30:
.LBB31:
	.loc 1 92 0
	leal	-16(%ebp), %ecx
	.loc 1 84 0
	movl	$0, -20(%ebp)
	.loc 1 85 0
	movl	$0, -16(%ebp)
.LBE31:
.LBE30:
	.loc 1 481 0
	call	.L193
.L193:
	popl	%ebx
	addl	$_GLOBAL_OFFSET_TABLE_+[.-.L193], %ebx
.LBB32:
.LBB33:
	.loc 1 92 0
	pushl	%ecx
	leal	-20(%ebp), %edx
	pushl	%edx
	leal	.LC38@GOTOFF(%ebx), %eax
	pushl	%eax
	pushl	12(%ebp)
.LCFI95:
	call	PyArg_ParseTuple@PLT
	addl	$16, %esp
	xorl	%edx, %edx
	testl	%eax, %eax
	je	.L162
.LVL151:
	.loc 1 94 0
	movl	-16(%ebp), %eax
.LVL152:
	testl	%eax, %eax
	je	.L187
.LVL153:
.LBB34:
.LBB35:
	.loc 1 99 0
	cmpb	$114, (%eax)
	jne	.L164
.LVL154:
.L191:
.LBE35:
.LBE34:
	.loc 1 100 0
	xorl	%edi, %edi
.LVL155:
	.loc 1 99 0
	cmpb	$0, 1(%eax)
	jne	.L164
.L170:
	.loc 1 117 0
	movl	-20(%ebp), %eax
.LVL156:
	testl	%eax, %eax
	je	.L188
.L178:
	.loc 1 123 0
	subl	$8, %esp
	pushl	%edi
	pushl	-20(%ebp)
	call	open64@PLT
	addl	$16, %esp
	cmpl	$-1, %eax
.LVL157:
	movl	%eax, %esi
.LVL158:
	je	.L186
	.loc 1 127 0
	cmpl	$1, %edi
	je	.L189
.L181:
	.loc 1 131 0
	pushl	%eax
	leal	-24(%ebp), %eax
	pushl	%eax
	pushl	$-2147201013
	pushl	%esi
	call	ioctl@PLT
	addl	$16, %esp
	incl	%eax
	je	.L186
	.loc 1 136 0
	subl	$12, %esp
	leal	Ladtype@GOTOFF(%ebx), %edx
	pushl	%edx
	call	_PyObject_New@PLT
	addl	$16, %esp
	testl	%eax, %eax
.LVL159:
	movl	%eax, %edx
.LVL160:
	je	.L190
	.loc 1 140 0
	movl	%esi, 8(%eax)
	.loc 1 141 0
	movl	%edi, 12(%eax)
	.loc 1 142 0
	movl	$0, 20(%eax)
	movl	$0, 16(%eax)
	.loc 1 143 0
	movl	-24(%ebp), %edi
.LVL161:
	movl	%edi, 24(%eax)
.LVL162:
	.p2align 2,,3
.L162:
.LBE33:
.LBE32:
	.loc 1 483 0
	leal	-12(%ebp), %esp
	popl	%ebx
	popl	%esi
.LVL163:
	movl	%edx, %eax
.LVL164:
	popl	%edi
.LVL165:
	leave
	ret
.LVL166:
	.p2align 2,,3
.L187:
.LBB36:
.LBB37:
	.loc 1 95 0
	movl	-20(%ebp), %eax
.LVL167:
	movl	%eax, -16(%ebp)
.LVL168:
	.loc 1 96 0
	movl	$0, -20(%ebp)
.LVL169:
.LBB38:
.LBB39:
	.loc 1 99 0
	cmpb	$114, (%eax)
	je	.L191
.LVL170:
.L164:
.LBE39:
.LBE38:
.LBB40:
.LBB41:
	.loc 1 101 0
	cmpb	$119, (%eax)
	jne	.L171
.LBE41:
.LBE40:
	cmpb	$0, 1(%eax)
	.loc 1 102 0
	movl	$1, %edi
	.loc 1 101 0
	je	.L170
.L171:
	.loc 1 104 0
	subl	$8, %esp
	leal	.LC41@GOTOFF(%ebx), %esi
	pushl	%esi
	pushl	LinuxAudioError@GOTOFF(%ebx)
	call	PyErr_SetString@PLT
.LVL171:
	.loc 1 137 0
	addl	$16, %esp
	xorl	%edx, %edx
.LVL172:
.L192:
.LBE37:
.LBE36:
	.loc 1 483 0
	leal	-12(%ebp), %esp
	popl	%ebx
	popl	%esi
.LVL173:
	movl	%edx, %eax
	popl	%edi
.LVL174:
	leave
	ret
.LVL175:
.L188:
.LBB42:
.LBB43:
	.loc 1 118 0
	subl	$12, %esp
	leal	.LC42@GOTOFF(%ebx), %edx
	pushl	%edx
	call	getenv@PLT
	addl	$16, %esp
	.loc 1 119 0
	testl	%eax, %eax
	.loc 1 118 0
	movl	%eax, -20(%ebp)
.LVL176:
	.loc 1 119 0
	jne	.L178
	.loc 1 120 0
	leal	.LC43@GOTOFF(%ebx), %ecx
	movl	%ecx, -20(%ebp)
.LVL177:
	jmp	.L178
.LVL178:
.L189:
	.loc 1 127 0
	pushl	%eax
	pushl	$0
	pushl	$20494
	pushl	%esi
	call	ioctl@PLT
	addl	$16, %esp
	incl	%eax
	jne	.L181
	.p2align 2,,3
.L186:
	.loc 1 132 0
	subl	$8, %esp
	pushl	-20(%ebp)
	pushl	LinuxAudioError@GOTOFF(%ebx)
	call	PyErr_SetFromErrnoWithFilename@PLT
	.loc 1 137 0
	addl	$16, %esp
	xorl	%edx, %edx
	jmp	.L192
.LVL179:
.L190:
	subl	$12, %esp
	pushl	%esi
	call	close@PLT
.LVL180:
	addl	$16, %esp
	xorl	%edx, %edx
	jmp	.L192
.LBE43:
.LBE42:
.LFE97:
	.size	ladopen, .-ladopen
	.section	.rodata.str1.1
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
	.text
	.p2align 2,,3
.globl initlinuxaudiodev
	.type	initlinuxaudiodev, @function
initlinuxaudiodev:
.LFB98:
	.loc 1 492 0
	pushl	%ebp
.LCFI96:
	movl	%esp, %ebp
.LCFI97:
	pushl	%esi
.LCFI98:
	pushl	%ebx
.LCFI99:
	.loc 1 495 0
	subl	$12, %esp
	pushl	$1012
	pushl	$0
	.loc 1 492 0
	call	.L207
.L207:
	popl	%ebx
	addl	$_GLOBAL_OFFSET_TABLE_+[.-.L207], %ebx
	.loc 1 495 0
	pushl	$0
	leal	linuxaudiodev_methods@GOTOFF(%ebx), %edx
	pushl	%edx
	leal	.LC44@GOTOFF(%ebx), %eax
	pushl	%eax
.LCFI100:
	call	Py_InitModule4@PLT
	.loc 1 496 0
	addl	$32, %esp
	testl	%eax, %eax
.LVL181:
	.loc 1 495 0
	movl	%eax, %esi
.LVL182:
	.loc 1 496 0
	je	.L194
	.loc 1 499 0
	pushl	%ecx
	pushl	$0
	pushl	$0
	leal	.LC45@GOTOFF(%ebx), %ecx
	pushl	%ecx
.LCFI101:
	call	PyErr_NewException@PLT
	.loc 1 500 0
	addl	$16, %esp
	testl	%eax, %eax
	.loc 1 499 0
	movl	%eax, LinuxAudioError@GOTOFF(%ebx)
	.loc 1 500 0
	jne	.L206
.L196:
	.loc 1 503 0
	pushl	%eax
	pushl	$1
	leal	.LC47@GOTOFF(%ebx), %edx
	pushl	%edx
	pushl	%esi
	call	PyModule_AddIntConstant@PLT
	addl	$16, %esp
	incl	%eax
	je	.L194
	.loc 1 505 0
	pushl	%eax
	pushl	$2
	leal	.LC48@GOTOFF(%ebx), %ecx
	pushl	%ecx
	pushl	%esi
	call	PyModule_AddIntConstant@PLT
	addl	$16, %esp
	incl	%eax
	je	.L194
	.loc 1 507 0
	pushl	%eax
	pushl	$8
	leal	.LC49@GOTOFF(%ebx), %eax
	pushl	%eax
	pushl	%esi
	call	PyModule_AddIntConstant@PLT
	addl	$16, %esp
	incl	%eax
	je	.L194
	.loc 1 509 0
	pushl	%eax
	pushl	$64
	leal	.LC50@GOTOFF(%ebx), %edx
	pushl	%edx
	pushl	%esi
	call	PyModule_AddIntConstant@PLT
	addl	$16, %esp
	incl	%eax
	je	.L194
	.loc 1 511 0
	pushl	%eax
	pushl	$256
	leal	.LC51@GOTOFF(%ebx), %ecx
	pushl	%ecx
	pushl	%esi
	call	PyModule_AddIntConstant@PLT
	addl	$16, %esp
	incl	%eax
	je	.L194
	.loc 1 513 0
	pushl	%eax
	pushl	$128
	leal	.LC52@GOTOFF(%ebx), %eax
	pushl	%eax
	pushl	%esi
	call	PyModule_AddIntConstant@PLT
	addl	$16, %esp
	incl	%eax
	je	.L194
	.loc 1 515 0
	pushl	%ecx
	pushl	$32
	leal	.LC53@GOTOFF(%ebx), %edx
	pushl	%edx
	pushl	%esi
	call	PyModule_AddIntConstant@PLT
	addl	$16, %esp
	incl	%eax
	je	.L194
	.loc 1 517 0
	pushl	%edx
	pushl	$16
	leal	.LC54@GOTOFF(%ebx), %ecx
	pushl	%ecx
	pushl	%esi
	call	PyModule_AddIntConstant@PLT
	addl	$16, %esp
	incl	%eax
	je	.L194
	.loc 1 519 0
	pushl	%eax
	pushl	$16
	leal	.LC55@GOTOFF(%ebx), %eax
	pushl	%eax
	pushl	%esi
	call	PyModule_AddIntConstant@PLT
	addl	$16, %esp
	.p2align 2,,3
.L194:
	.loc 1 523 0
	leal	-8(%ebp), %esp
	popl	%ebx
	popl	%esi
.LVL183:
	leave
	ret
.LVL184:
	.p2align 2,,3
.L206:
	.loc 1 501 0
	pushl	%edx
	pushl	%eax
	leal	.LC46@GOTOFF(%ebx), %eax
	pushl	%eax
	pushl	%esi
	call	PyModule_AddObject@PLT
	addl	$16, %esp
	jmp	.L196
.LFE98:
	.size	initlinuxaudiodev, .-initlinuxaudiodev
	.local	LinuxAudioError
	.comm	LinuxAudioError,4,4
	.section	.debug_frame,"",@progbits
.Lframe0:
	.long	.LECIE0-.LSCIE0
.LSCIE0:
	.long	0xffffffff
	.byte	0x1
	.string	""
	.uleb128 0x1
	.sleb128 -4
	.byte	0x8
	.byte	0xc
	.uleb128 0x4
	.uleb128 0x4
	.byte	0x88
	.uleb128 0x1
	.align 4
.LECIE0:
.LSFDE0:
	.long	.LEFDE0-.LASFDE0
.LASFDE0:
	.long	.Lframe0
	.long	.LFB84
	.long	.LFE84-.LFB84
	.byte	0x4
	.long	.LCFI0-.LFB84
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI1-.LCFI0
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI3-.LCFI1
	.byte	0x83
	.uleb128 0x4
	.byte	0x86
	.uleb128 0x3
	.byte	0x4
	.long	.LCFI4-.LCFI3
	.byte	0x2e
	.uleb128 0x10
	.align 4
.LEFDE0:
.LSFDE2:
	.long	.LEFDE2-.LASFDE2
.LASFDE2:
	.long	.Lframe0
	.long	.LFB85
	.long	.LFE85-.LFB85
	.byte	0x4
	.long	.LCFI5-.LFB85
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI6-.LCFI5
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI9-.LCFI6
	.byte	0x83
	.uleb128 0x4
	.byte	0x86
	.uleb128 0x3
	.byte	0x4
	.long	.LCFI10-.LCFI9
	.byte	0x2e
	.uleb128 0xc
	.byte	0x4
	.long	.LCFI11-.LCFI10
	.byte	0x2e
	.uleb128 0x10
	.align 4
.LEFDE2:
.LSFDE4:
	.long	.LEFDE4-.LASFDE4
.LASFDE4:
	.long	.Lframe0
	.long	.LFB86
	.long	.LFE86-.LFB86
	.byte	0x4
	.long	.LCFI12-.LFB86
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI13-.LCFI12
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI17-.LCFI13
	.byte	0x83
	.uleb128 0x5
	.byte	0x86
	.uleb128 0x4
	.byte	0x87
	.uleb128 0x3
	.byte	0x4
	.long	.LCFI18-.LCFI17
	.byte	0x2e
	.uleb128 0x10
	.byte	0x4
	.long	.LCFI19-.LCFI18
	.byte	0x2e
	.uleb128 0x20
	.byte	0x4
	.long	.LCFI20-.LCFI19
	.byte	0x2e
	.uleb128 0x10
	.byte	0x4
	.long	.LCFI21-.LCFI20
	.byte	0x2e
	.uleb128 0x0
	.byte	0x4
	.long	.LCFI22-.LCFI21
	.byte	0x2e
	.uleb128 0x10
	.align 4
.LEFDE4:
.LSFDE6:
	.long	.LEFDE6-.LASFDE6
.LASFDE6:
	.long	.Lframe0
	.long	.LFB87
	.long	.LFE87-.LFB87
	.byte	0x4
	.long	.LCFI23-.LFB87
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI24-.LCFI23
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI26-.LCFI24
	.byte	0x83
	.uleb128 0x4
	.byte	0x86
	.uleb128 0x3
	.byte	0x4
	.long	.LCFI27-.LCFI26
	.byte	0x2e
	.uleb128 0x10
	.align 4
.LEFDE6:
.LSFDE8:
	.long	.LEFDE8-.LASFDE8
.LASFDE8:
	.long	.Lframe0
	.long	.LFB88
	.long	.LFE88-.LFB88
	.byte	0x4
	.long	.LCFI28-.LFB88
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI29-.LCFI28
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI30-.LCFI29
	.byte	0x83
	.uleb128 0x3
	.byte	0x4
	.long	.LCFI32-.LCFI30
	.byte	0x2e
	.uleb128 0x8
	.byte	0x4
	.long	.LCFI33-.LCFI32
	.byte	0x2e
	.uleb128 0x10
	.align 4
.LEFDE8:
.LSFDE10:
	.long	.LEFDE10-.LASFDE10
.LASFDE10:
	.long	.Lframe0
	.long	.LFB89
	.long	.LFE89-.LFB89
	.byte	0x4
	.long	.LCFI34-.LFB89
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI35-.LCFI34
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI39-.LCFI35
	.byte	0x83
	.uleb128 0x5
	.byte	0x86
	.uleb128 0x4
	.byte	0x87
	.uleb128 0x3
	.byte	0x4
	.long	.LCFI40-.LCFI39
	.byte	0x2e
	.uleb128 0x1c
	.byte	0x4
	.long	.LCFI41-.LCFI40
	.byte	0x2e
	.uleb128 0x10
	.byte	0x4
	.long	.LCFI42-.LCFI41
	.byte	0x2e
	.uleb128 0x20
	.byte	0x4
	.long	.LCFI43-.LCFI42
	.byte	0x2e
	.uleb128 0x10
	.align 4
.LEFDE10:
.LSFDE12:
	.long	.LEFDE12-.LASFDE12
.LASFDE12:
	.long	.Lframe0
	.long	.LFB91
	.long	.LFE91-.LFB91
	.byte	0x4
	.long	.LCFI44-.LFB91
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI45-.LCFI44
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI48-.LCFI45
	.byte	0x83
	.uleb128 0x5
	.byte	0x86
	.uleb128 0x4
	.byte	0x87
	.uleb128 0x3
	.byte	0x4
	.long	.LCFI50-.LCFI48
	.byte	0x2e
	.uleb128 0x8
	.byte	0x4
	.long	.LCFI51-.LCFI50
	.byte	0x2e
	.uleb128 0x10
	.byte	0x4
	.long	.LCFI52-.LCFI51
	.byte	0x2e
	.uleb128 0x0
	.align 4
.LEFDE12:
.LSFDE14:
	.long	.LEFDE14-.LASFDE14
.LASFDE14:
	.long	.Lframe0
	.long	.LFB92
	.long	.LFE92-.LFB92
	.byte	0x4
	.long	.LCFI53-.LFB92
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI54-.LCFI53
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI57-.LCFI54
	.byte	0x83
	.uleb128 0x5
	.byte	0x86
	.uleb128 0x4
	.byte	0x87
	.uleb128 0x3
	.byte	0x4
	.long	.LCFI59-.LCFI57
	.byte	0x2e
	.uleb128 0x8
	.byte	0x4
	.long	.LCFI60-.LCFI59
	.byte	0x2e
	.uleb128 0x10
	.byte	0x4
	.long	.LCFI61-.LCFI60
	.byte	0x2e
	.uleb128 0x0
	.align 4
.LEFDE14:
.LSFDE16:
	.long	.LEFDE16-.LASFDE16
.LASFDE16:
	.long	.Lframe0
	.long	.LFB93
	.long	.LFE93-.LFB93
	.byte	0x4
	.long	.LCFI62-.LFB93
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI63-.LCFI62
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI66-.LCFI63
	.byte	0x83
	.uleb128 0x5
	.byte	0x86
	.uleb128 0x4
	.byte	0x87
	.uleb128 0x3
	.byte	0x4
	.long	.LCFI68-.LCFI66
	.byte	0x2e
	.uleb128 0x8
	.byte	0x4
	.long	.LCFI69-.LCFI68
	.byte	0x2e
	.uleb128 0x10
	.byte	0x4
	.long	.LCFI70-.LCFI69
	.byte	0x2e
	.uleb128 0x0
	.align 4
.LEFDE16:
.LSFDE18:
	.long	.LEFDE18-.LASFDE18
.LASFDE18:
	.long	.Lframe0
	.long	.LFB94
	.long	.LFE94-.LFB94
	.byte	0x4
	.long	.LCFI71-.LFB94
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI72-.LCFI71
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI73-.LCFI72
	.byte	0x83
	.uleb128 0x3
	.byte	0x4
	.long	.LCFI75-.LCFI73
	.byte	0x2e
	.uleb128 0x8
	.byte	0x4
	.long	.LCFI76-.LCFI75
	.byte	0x2e
	.uleb128 0x10
	.align 4
.LEFDE18:
.LSFDE20:
	.long	.LEFDE20-.LASFDE20
.LASFDE20:
	.long	.Lframe0
	.long	.LFB95
	.long	.LFE95-.LFB95
	.byte	0x4
	.long	.LCFI77-.LFB95
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI78-.LCFI77
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI80-.LCFI78
	.byte	0x83
	.uleb128 0x4
	.byte	0x86
	.uleb128 0x3
	.byte	0x4
	.long	.LCFI82-.LCFI80
	.byte	0x2e
	.uleb128 0x8
	.byte	0x4
	.long	.LCFI83-.LCFI82
	.byte	0x2e
	.uleb128 0x10
	.align 4
.LEFDE20:
.LSFDE22:
	.long	.LEFDE22-.LASFDE22
.LASFDE22:
	.long	.Lframe0
	.long	.LFB96
	.long	.LFE96-.LFB96
	.byte	0x4
	.long	.LCFI84-.LFB96
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI85-.LCFI84
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI87-.LCFI85
	.byte	0x83
	.uleb128 0x3
	.byte	0x4
	.long	.LCFI88-.LCFI87
	.byte	0x2e
	.uleb128 0xc
	.align 4
.LEFDE22:
.LSFDE24:
	.long	.LEFDE24-.LASFDE24
.LASFDE24:
	.long	.Lframe0
	.long	.LFB97
	.long	.LFE97-.LFB97
	.byte	0x4
	.long	.LCFI89-.LFB97
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI90-.LCFI89
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI94-.LCFI90
	.byte	0x83
	.uleb128 0x5
	.byte	0x86
	.uleb128 0x4
	.byte	0x87
	.uleb128 0x3
	.byte	0x4
	.long	.LCFI95-.LCFI94
	.byte	0x2e
	.uleb128 0x10
	.align 4
.LEFDE24:
.LSFDE26:
	.long	.LEFDE26-.LASFDE26
.LASFDE26:
	.long	.Lframe0
	.long	.LFB98
	.long	.LFE98-.LFB98
	.byte	0x4
	.long	.LCFI96-.LFB98
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI97-.LCFI96
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI99-.LCFI97
	.byte	0x83
	.uleb128 0x4
	.byte	0x86
	.uleb128 0x3
	.byte	0x4
	.long	.LCFI100-.LCFI99
	.byte	0x2e
	.uleb128 0x20
	.byte	0x4
	.long	.LCFI101-.LCFI100
	.byte	0x2e
	.uleb128 0x10
	.align 4
.LEFDE26:
	.file 2 "/home/louis/Desktop/Python-2.4.5/./Include/object.h"
	.file 3 "/usr/include/stdio.h"
	.file 4 "/usr/include/libio.h"
	.file 5 "/usr/include/bits/types.h"
	.file 6 "/usr/lib/gcc/i386-redhat-linux/3.4.6/include/stddef.h"
	.file 7 "/home/louis/Desktop/Python-2.4.5/./Include/methodobject.h"
	.file 8 "/home/louis/Desktop/Python-2.4.5/./Include/structmember.h"
	.file 9 "/home/louis/Desktop/Python-2.4.5/./Include/descrobject.h"
	.file 10 "/usr/include/stdint.h"
	.file 11 "/usr/include/sys/select.h"
	.file 12 "/usr/include/bits/time.h"
	.file 13 "/usr/include/linux/soundcard.h"
	.file 14 "/home/louis/Desktop/Python-2.4.5/./Include/pyerrors.h"
	.text
.Letext0:
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.long	.LFB84-.Ltext0
	.long	.LCFI0-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI0-.Ltext0
	.long	.LCFI1-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI1-.Ltext0
	.long	.LFE84-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST1:
	.long	.LVL0-.Ltext0
	.long	.LVL1-.Ltext0
	.value	0x2
	.byte	0x91
	.sleb128 0
	.long	.LVL1-.Ltext0
	.long	.LVL2-.Ltext0
	.value	0x1
	.byte	0x56
	.long	.LVL2-.Ltext0
	.long	.LFE84-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST2:
	.long	.LFB85-.Ltext0
	.long	.LCFI5-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI5-.Ltext0
	.long	.LCFI6-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI6-.Ltext0
	.long	.LFE85-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST3:
	.long	.LVL3-.Ltext0
	.long	.LVL4-.Ltext0
	.value	0x2
	.byte	0x91
	.sleb128 0
	.long	.LVL4-.Ltext0
	.long	.LVL11-.Ltext0
	.value	0x1
	.byte	0x56
	.long	.LVL11-.Ltext0
	.long	.LVL13-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	.LVL13-.Ltext0
	.long	.LVL15-.Ltext0
	.value	0x1
	.byte	0x56
	.long	.LVL15-.Ltext0
	.long	.LFE85-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST4:
	.long	.LVL3-.Ltext0
	.long	.LVL4-.Ltext0
	.value	0x2
	.byte	0x91
	.sleb128 4
	.long	.LVL4-.Ltext0
	.long	.LFE85-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 12
	.long	0x0
	.long	0x0
.LLST5:
	.long	.LVL8-.Ltext0
	.long	.LVL9-.Ltext0
	.value	0x1
	.byte	0x50
	.long	.LVL13-.Ltext0
	.long	.LVL14-.Ltext0
	.value	0x1
	.byte	0x50
	.long	0x0
	.long	0x0
.LLST6:
	.long	.LVL6-.Ltext0
	.long	.LVL7-.Ltext0
	.value	0x1
	.byte	0x50
	.long	0x0
	.long	0x0
.LLST7:
	.long	.LVL10-.Ltext0
	.long	.LVL11-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 -16
	.long	.LVL11-.Ltext0
	.long	.LVL12-.Ltext0
	.value	0x1
	.byte	0x56
	.long	.LVL12-.Ltext0
	.long	.LVL13-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 -16
	.long	.LVL15-.Ltext0
	.long	.LVL16-.Ltext0
	.value	0x1
	.byte	0x56
	.long	.LVL16-.Ltext0
	.long	.LVL17-.Ltext0
	.value	0x1
	.byte	0x50
	.long	0x0
	.long	0x0
.LLST8:
	.long	.LFB86-.Ltext0
	.long	.LCFI12-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI12-.Ltext0
	.long	.LCFI13-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI13-.Ltext0
	.long	.LFE86-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST9:
	.long	.LVL18-.Ltext0
	.long	.LVL19-.Ltext0
	.value	0x2
	.byte	0x91
	.sleb128 0
	.long	.LVL19-.Ltext0
	.long	.LVL35-.Ltext0
	.value	0x1
	.byte	0x56
	.long	.LVL35-.Ltext0
	.long	.LVL37-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	.LVL37-.Ltext0
	.long	.LVL39-.Ltext0
	.value	0x1
	.byte	0x56
	.long	.LVL39-.Ltext0
	.long	.LFE86-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST10:
	.long	.LVL18-.Ltext0
	.long	.LVL19-.Ltext0
	.value	0x2
	.byte	0x91
	.sleb128 4
	.long	.LVL19-.Ltext0
	.long	.LFE86-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 12
	.long	0x0
	.long	0x0
.LLST11:
	.long	.LVL24-.Ltext0
	.long	.LVL27-.Ltext0
	.value	0x1
	.byte	0x50
	.long	.LVL32-.Ltext0
	.long	.LVL33-.Ltext0
	.value	0x1
	.byte	0x50
	.long	0x0
	.long	0x0
.LLST12:
	.long	.LVL30-.Ltext0
	.long	.LVL31-.Ltext0
	.value	0x1
	.byte	0x50
	.long	.LVL37-.Ltext0
	.long	.LVL38-.Ltext0
	.value	0x1
	.byte	0x50
	.long	0x0
	.long	0x0
.LLST13:
	.long	.LVL21-.Ltext0
	.long	.LVL24-.Ltext0
	.value	0x1
	.byte	0x51
	.long	.LVL28-.Ltext0
	.long	.LVL29-.Ltext0
	.value	0x1
	.byte	0x51
	.long	.LVL34-.Ltext0
	.long	.LVL37-.Ltext0
	.value	0x1
	.byte	0x51
	.long	0x0
	.long	0x0
.LLST14:
	.long	.LVL20-.Ltext0
	.long	.LVL22-.Ltext0
	.value	0x1
	.byte	0x57
	.long	0x0
	.long	0x0
.LLST15:
	.long	.LFB87-.Ltext0
	.long	.LCFI23-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI23-.Ltext0
	.long	.LCFI24-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI24-.Ltext0
	.long	.LFE87-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST16:
	.long	.LVL40-.Ltext0
	.long	.LVL41-.Ltext0
	.value	0x2
	.byte	0x91
	.sleb128 0
	.long	.LVL41-.Ltext0
	.long	.LVL42-.Ltext0
	.value	0x1
	.byte	0x56
	.long	.LVL42-.Ltext0
	.long	.LFE87-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST17:
	.long	.LVL40-.Ltext0
	.long	.LVL41-.Ltext0
	.value	0x2
	.byte	0x91
	.sleb128 4
	.long	.LVL41-.Ltext0
	.long	.LFE87-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 12
	.long	0x0
	.long	0x0
.LLST18:
	.long	.LFB88-.Ltext0
	.long	.LCFI28-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI28-.Ltext0
	.long	.LCFI29-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI29-.Ltext0
	.long	.LFE88-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST19:
	.long	.LVL43-.Ltext0
	.long	.LVL44-.Ltext0
	.value	0x2
	.byte	0x91
	.sleb128 4
	.long	.LVL44-.Ltext0
	.long	.LFE88-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 12
	.long	0x0
	.long	0x0
.LLST20:
	.long	.LFB89-.Ltext0
	.long	.LCFI34-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI34-.Ltext0
	.long	.LCFI35-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI35-.Ltext0
	.long	.LFE89-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST21:
	.long	.LVL45-.Ltext0
	.long	.LVL62-.Ltext0
	.value	0x2
	.byte	0x91
	.sleb128 0
	.long	.LVL62-.Ltext0
	.long	.LVL63-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	.LVL63-.Ltext0
	.long	.LVL67-.Ltext0
	.value	0x2
	.byte	0x91
	.sleb128 0
	.long	.LVL67-.Ltext0
	.long	.LVL68-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	.LVL68-.Ltext0
	.long	.LVL72-.Ltext0
	.value	0x2
	.byte	0x91
	.sleb128 0
	.long	.LVL72-.Ltext0
	.long	.LVL73-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	.LVL73-.Ltext0
	.long	.LFE89-.Ltext0
	.value	0x2
	.byte	0x91
	.sleb128 0
	.long	0x0
	.long	0x0
.LLST22:
	.long	.LVL45-.Ltext0
	.long	.LVL46-.Ltext0
	.value	0x2
	.byte	0x91
	.sleb128 4
	.long	.LVL46-.Ltext0
	.long	.LFE89-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 12
	.long	0x0
	.long	0x0
.LLST23:
	.long	.LVL47-.Ltext0
	.long	.LVL48-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 -32
	.long	.LVL48-.Ltext0
	.long	.LVL56-.Ltext0
	.value	0x1
	.byte	0x50
	.long	.LVL56-.Ltext0
	.long	.LVL68-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 -32
	.long	.LVL68-.Ltext0
	.long	.LVL69-.Ltext0
	.value	0x1
	.byte	0x50
	.long	.LVL69-.Ltext0
	.long	.LVL74-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 -32
	.long	.LVL74-.Ltext0
	.long	.LVL75-.Ltext0
	.value	0x1
	.byte	0x50
	.long	.LVL75-.Ltext0
	.long	.LVL76-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 -32
	.long	.LVL76-.Ltext0
	.long	.LVL77-.Ltext0
	.value	0x1
	.byte	0x50
	.long	.LVL77-.Ltext0
	.long	.LFE89-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 -32
	.long	0x0
	.long	0x0
.LLST24:
	.long	.LVL49-.Ltext0
	.long	.LVL50-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 -28
	.long	.LVL50-.Ltext0
	.long	.LVL60-.Ltext0
	.value	0x1
	.byte	0x57
	.long	.LVL60-.Ltext0
	.long	.LVL64-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 -28
	.long	.LVL64-.Ltext0
	.long	.LVL66-.Ltext0
	.value	0x1
	.byte	0x57
	.long	.LVL66-.Ltext0
	.long	.LVL68-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 -28
	.long	.LVL68-.Ltext0
	.long	.LVL70-.Ltext0
	.value	0x1
	.byte	0x57
	.long	.LVL70-.Ltext0
	.long	.LVL73-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 -28
	.long	.LVL73-.Ltext0
	.long	.LVL76-.Ltext0
	.value	0x1
	.byte	0x57
	.long	0x0
	.long	0x0
.LLST25:
	.long	.LVL51-.Ltext0
	.long	.LVL52-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 -24
	.long	.LVL52-.Ltext0
	.long	.LVL54-.Ltext0
	.value	0x1
	.byte	0x52
	.long	.LVL54-.Ltext0
	.long	.LVL68-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 -24
	.long	.LVL68-.Ltext0
	.long	.LVL70-.Ltext0
	.value	0x1
	.byte	0x52
	.long	.LVL70-.Ltext0
	.long	.LVL74-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 -24
	.long	0x0
	.long	0x0
.LLST26:
	.long	.LVL53-.Ltext0
	.long	.LVL61-.Ltext0
	.value	0x1
	.byte	0x51
	.long	.LVL64-.Ltext0
	.long	.LVL65-.Ltext0
	.value	0x1
	.byte	0x51
	.long	.LVL70-.Ltext0
	.long	.LVL71-.Ltext0
	.value	0x1
	.byte	0x51
	.long	.LVL72-.Ltext0
	.long	.LVL74-.Ltext0
	.value	0x1
	.byte	0x51
	.long	0x0
	.long	0x0
.LLST27:
	.long	.LVL55-.Ltext0
	.long	.LVL57-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 -20
	.long	.LVL57-.Ltext0
	.long	.LVL59-.Ltext0
	.value	0x1
	.byte	0x56
	.long	.LVL59-.Ltext0
	.long	.LVL68-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 -20
	.long	.LVL70-.Ltext0
	.long	.LVL73-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 -20
	.long	.LVL73-.Ltext0
	.long	.LVL74-.Ltext0
	.value	0x1
	.byte	0x56
	.long	0x0
	.long	0x0
.LLST28:
	.long	.LVL60-.Ltext0
	.long	.LVL64-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 -16
	.long	.LVL66-.Ltext0
	.long	.LVL68-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 -16
	.long	.LVL70-.Ltext0
	.long	.LVL73-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 -16
	.long	0x0
	.long	0x0
.LLST29:
	.long	.LFB91-.Ltext0
	.long	.LCFI44-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI44-.Ltext0
	.long	.LCFI45-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI45-.Ltext0
	.long	.LFE91-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST30:
	.long	.LVL78-.Ltext0
	.long	.LVL79-.Ltext0
	.value	0x2
	.byte	0x91
	.sleb128 0
	.long	.LVL79-.Ltext0
	.long	.LVL85-.Ltext0
	.value	0x1
	.byte	0x56
	.long	.LVL85-.Ltext0
	.long	.LVL87-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	.LVL87-.Ltext0
	.long	.LVL91-.Ltext0
	.value	0x1
	.byte	0x56
	.long	.LVL91-.Ltext0
	.long	.LVL92-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	.LVL92-.Ltext0
	.long	.LFE91-.Ltext0
	.value	0x1
	.byte	0x56
	.long	0x0
	.long	0x0
.LLST31:
	.long	.LVL78-.Ltext0
	.long	.LVL79-.Ltext0
	.value	0x2
	.byte	0x91
	.sleb128 4
	.long	.LVL79-.Ltext0
	.long	.LFE91-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 12
	.long	0x0
	.long	0x0
.LLST32:
	.long	.LVL90-.Ltext0
	.long	.LVL92-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 -44
	.long	0x0
	.long	0x0
.LLST33:
	.long	.LVL89-.Ltext0
	.long	.LVL92-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 -48
	.long	0x0
	.long	0x0
.LLST34:
	.long	.LVL81-.Ltext0
	.long	.LVL86-.Ltext0
	.value	0x1
	.byte	0x57
	.long	.LVL87-.Ltext0
	.long	.LVL89-.Ltext0
	.value	0x1
	.byte	0x57
	.long	.LVL92-.Ltext0
	.long	.LVL93-.Ltext0
	.value	0x1
	.byte	0x57
	.long	.LVL94-.Ltext0
	.long	.LFE91-.Ltext0
	.value	0x1
	.byte	0x57
	.long	0x0
	.long	0x0
.LLST35:
	.long	.LVL82-.Ltext0
	.long	.LVL83-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 -52
	.long	.LVL83-.Ltext0
	.long	.LVL84-.Ltext0
	.value	0x1
	.byte	0x50
	.long	.LVL84-.Ltext0
	.long	.LVL87-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 -52
	.long	.LVL87-.Ltext0
	.long	.LVL88-.Ltext0
	.value	0x1
	.byte	0x50
	.long	.LVL88-.Ltext0
	.long	.LVL94-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 -52
	.long	.LVL94-.Ltext0
	.long	.LVL95-.Ltext0
	.value	0x1
	.byte	0x50
	.long	.LVL95-.Ltext0
	.long	.LVL96-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 -52
	.long	.LVL96-.Ltext0
	.long	.LFE91-.Ltext0
	.value	0x1
	.byte	0x50
	.long	0x0
	.long	0x0
.LLST36:
	.long	.LFB92-.Ltext0
	.long	.LCFI53-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI53-.Ltext0
	.long	.LCFI54-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI54-.Ltext0
	.long	.LFE92-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST37:
	.long	.LVL97-.Ltext0
	.long	.LVL98-.Ltext0
	.value	0x2
	.byte	0x91
	.sleb128 0
	.long	.LVL98-.Ltext0
	.long	.LVL104-.Ltext0
	.value	0x1
	.byte	0x56
	.long	.LVL104-.Ltext0
	.long	.LVL106-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	.LVL106-.Ltext0
	.long	.LVL110-.Ltext0
	.value	0x1
	.byte	0x56
	.long	.LVL110-.Ltext0
	.long	.LVL111-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	.LVL111-.Ltext0
	.long	.LFE92-.Ltext0
	.value	0x1
	.byte	0x56
	.long	0x0
	.long	0x0
.LLST38:
	.long	.LVL97-.Ltext0
	.long	.LVL98-.Ltext0
	.value	0x2
	.byte	0x91
	.sleb128 4
	.long	.LVL98-.Ltext0
	.long	.LFE92-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 12
	.long	0x0
	.long	0x0
.LLST39:
	.long	.LVL108-.Ltext0
	.long	.LVL111-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 -44
	.long	0x0
	.long	0x0
.LLST40:
	.long	.LVL109-.Ltext0
	.long	.LVL111-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 -48
	.long	0x0
	.long	0x0
.LLST41:
	.long	.LVL100-.Ltext0
	.long	.LVL105-.Ltext0
	.value	0x1
	.byte	0x57
	.long	.LVL106-.Ltext0
	.long	.LVL108-.Ltext0
	.value	0x1
	.byte	0x57
	.long	.LVL111-.Ltext0
	.long	.LVL112-.Ltext0
	.value	0x1
	.byte	0x57
	.long	.LVL113-.Ltext0
	.long	.LFE92-.Ltext0
	.value	0x1
	.byte	0x57
	.long	0x0
	.long	0x0
.LLST42:
	.long	.LVL101-.Ltext0
	.long	.LVL102-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 -52
	.long	.LVL102-.Ltext0
	.long	.LVL103-.Ltext0
	.value	0x1
	.byte	0x50
	.long	.LVL103-.Ltext0
	.long	.LVL106-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 -52
	.long	.LVL106-.Ltext0
	.long	.LVL107-.Ltext0
	.value	0x1
	.byte	0x50
	.long	.LVL107-.Ltext0
	.long	.LVL113-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 -52
	.long	.LVL113-.Ltext0
	.long	.LVL114-.Ltext0
	.value	0x1
	.byte	0x50
	.long	.LVL114-.Ltext0
	.long	.LVL115-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 -52
	.long	.LVL115-.Ltext0
	.long	.LFE92-.Ltext0
	.value	0x1
	.byte	0x50
	.long	0x0
	.long	0x0
.LLST43:
	.long	.LFB93-.Ltext0
	.long	.LCFI62-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI62-.Ltext0
	.long	.LCFI63-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI63-.Ltext0
	.long	.LFE93-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST44:
	.long	.LVL116-.Ltext0
	.long	.LVL117-.Ltext0
	.value	0x2
	.byte	0x91
	.sleb128 0
	.long	.LVL117-.Ltext0
	.long	.LVL123-.Ltext0
	.value	0x1
	.byte	0x56
	.long	.LVL123-.Ltext0
	.long	.LVL125-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	.LVL125-.Ltext0
	.long	.LVL127-.Ltext0
	.value	0x1
	.byte	0x56
	.long	.LVL127-.Ltext0
	.long	.LVL131-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	.LVL131-.Ltext0
	.long	.LFE93-.Ltext0
	.value	0x1
	.byte	0x56
	.long	0x0
	.long	0x0
.LLST45:
	.long	.LVL116-.Ltext0
	.long	.LVL117-.Ltext0
	.value	0x2
	.byte	0x91
	.sleb128 4
	.long	.LVL117-.Ltext0
	.long	.LFE93-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 12
	.long	0x0
	.long	0x0
.LLST46:
	.long	.LVL127-.Ltext0
	.long	.LVL129-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 -44
	.long	.LVL129-.Ltext0
	.long	.LVL130-.Ltext0
	.value	0x1
	.byte	0x56
	.long	.LVL130-.Ltext0
	.long	.LVL131-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 -44
	.long	0x0
	.long	0x0
.LLST47:
	.long	.LVL128-.Ltext0
	.long	.LVL131-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 -48
	.long	0x0
	.long	0x0
.LLST48:
	.long	.LVL119-.Ltext0
	.long	.LVL124-.Ltext0
	.value	0x1
	.byte	0x57
	.long	.LVL125-.Ltext0
	.long	.LVL128-.Ltext0
	.value	0x1
	.byte	0x57
	.long	.LVL131-.Ltext0
	.long	.LVL132-.Ltext0
	.value	0x1
	.byte	0x57
	.long	.LVL133-.Ltext0
	.long	.LFE93-.Ltext0
	.value	0x1
	.byte	0x57
	.long	0x0
	.long	0x0
.LLST49:
	.long	.LVL120-.Ltext0
	.long	.LVL121-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 -52
	.long	.LVL121-.Ltext0
	.long	.LVL122-.Ltext0
	.value	0x1
	.byte	0x50
	.long	.LVL122-.Ltext0
	.long	.LVL125-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 -52
	.long	.LVL125-.Ltext0
	.long	.LVL126-.Ltext0
	.value	0x1
	.byte	0x50
	.long	.LVL126-.Ltext0
	.long	.LVL133-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 -52
	.long	.LVL133-.Ltext0
	.long	.LVL134-.Ltext0
	.value	0x1
	.byte	0x50
	.long	.LVL134-.Ltext0
	.long	.LVL135-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 -52
	.long	.LVL135-.Ltext0
	.long	.LFE93-.Ltext0
	.value	0x1
	.byte	0x50
	.long	0x0
	.long	0x0
.LLST50:
	.long	.LFB94-.Ltext0
	.long	.LCFI71-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI71-.Ltext0
	.long	.LCFI72-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI72-.Ltext0
	.long	.LFE94-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST51:
	.long	.LVL136-.Ltext0
	.long	.LVL138-.Ltext0
	.value	0x2
	.byte	0x91
	.sleb128 0
	.long	.LVL138-.Ltext0
	.long	.LVL139-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	.LVL139-.Ltext0
	.long	.LVL140-.Ltext0
	.value	0x2
	.byte	0x91
	.sleb128 0
	.long	.LVL140-.Ltext0
	.long	.LFE94-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST52:
	.long	.LVL136-.Ltext0
	.long	.LVL137-.Ltext0
	.value	0x2
	.byte	0x91
	.sleb128 4
	.long	.LVL137-.Ltext0
	.long	.LFE94-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 12
	.long	0x0
	.long	0x0
.LLST53:
	.long	.LFB95-.Ltext0
	.long	.LCFI77-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI77-.Ltext0
	.long	.LCFI78-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI78-.Ltext0
	.long	.LFE95-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST54:
	.long	.LVL141-.Ltext0
	.long	.LVL142-.Ltext0
	.value	0x2
	.byte	0x91
	.sleb128 0
	.long	.LVL142-.Ltext0
	.long	.LVL146-.Ltext0
	.value	0x1
	.byte	0x56
	.long	.LVL146-.Ltext0
	.long	.LVL148-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	.LVL148-.Ltext0
	.long	.LFE95-.Ltext0
	.value	0x1
	.byte	0x56
	.long	0x0
	.long	0x0
.LLST55:
	.long	.LVL141-.Ltext0
	.long	.LVL142-.Ltext0
	.value	0x2
	.byte	0x91
	.sleb128 4
	.long	.LVL142-.Ltext0
	.long	.LFE95-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 12
	.long	0x0
	.long	0x0
.LLST56:
	.long	.LVL143-.Ltext0
	.long	.LVL145-.Ltext0
	.value	0x1
	.byte	0x52
	.long	0x0
	.long	0x0
.LLST57:
	.long	.LFB96-.Ltext0
	.long	.LCFI84-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI84-.Ltext0
	.long	.LCFI85-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI85-.Ltext0
	.long	.LFE96-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST58:
	.long	.LFB97-.Ltext0
	.long	.LCFI89-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI89-.Ltext0
	.long	.LCFI90-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI90-.Ltext0
	.long	.LFE97-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST59:
	.long	.LVL150-.Ltext0
	.long	.LVL151-.Ltext0
	.value	0x2
	.byte	0x91
	.sleb128 4
	.long	.LVL151-.Ltext0
	.long	.LFE97-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 12
	.long	0x0
	.long	0x0
.LLST60:
	.long	.LVL159-.Ltext0
	.long	.LVL160-.Ltext0
	.value	0x1
	.byte	0x50
	.long	.LVL160-.Ltext0
	.long	.LVL162-.Ltext0
	.value	0x1
	.byte	0x52
	.long	.LVL162-.Ltext0
	.long	.LVL164-.Ltext0
	.value	0x1
	.byte	0x50
	.long	.LVL179-.Ltext0
	.long	.LVL180-.Ltext0
	.value	0x1
	.byte	0x52
	.long	0x0
	.long	0x0
.LLST61:
	.long	.LVL157-.Ltext0
	.long	.LVL158-.Ltext0
	.value	0x1
	.byte	0x50
	.long	.LVL158-.Ltext0
	.long	.LVL163-.Ltext0
	.value	0x1
	.byte	0x56
	.long	.LVL172-.Ltext0
	.long	.LVL173-.Ltext0
	.value	0x1
	.byte	0x56
	.long	.LVL178-.Ltext0
	.long	.LFE97-.Ltext0
	.value	0x1
	.byte	0x56
	.long	0x0
	.long	0x0
.LLST62:
	.long	.LVL161-.Ltext0
	.long	.LVL162-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 -24
	.long	.LVL162-.Ltext0
	.long	.LVL165-.Ltext0
	.value	0x1
	.byte	0x57
	.long	.LVL165-.Ltext0
	.long	.LVL166-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 -24
	.long	0x0
	.long	0x0
.LLST63:
	.long	.LVL155-.Ltext0
	.long	.LVL161-.Ltext0
	.value	0x1
	.byte	0x57
	.long	.LVL170-.Ltext0
	.long	.LVL174-.Ltext0
	.value	0x1
	.byte	0x57
	.long	.LVL175-.Ltext0
	.long	.LFE97-.Ltext0
	.value	0x1
	.byte	0x57
	.long	0x0
	.long	0x0
.LLST64:
	.long	.LVL154-.Ltext0
	.long	.LVL166-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 -20
	.long	.LVL167-.Ltext0
	.long	.LFE97-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 -20
	.long	0x0
	.long	0x0
.LLST65:
	.long	.LVL152-.Ltext0
	.long	.LVL153-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 -16
	.long	.LVL153-.Ltext0
	.long	.LVL156-.Ltext0
	.value	0x1
	.byte	0x50
	.long	.LVL156-.Ltext0
	.long	.LVL166-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 -16
	.long	.LVL166-.Ltext0
	.long	.LVL167-.Ltext0
	.value	0x1
	.byte	0x50
	.long	.LVL167-.Ltext0
	.long	.LVL170-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 -16
	.long	.LVL170-.Ltext0
	.long	.LVL171-.Ltext0
	.value	0x1
	.byte	0x50
	.long	.LVL171-.Ltext0
	.long	.LFE97-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 -16
	.long	0x0
	.long	0x0
.LLST66:
	.long	.LFB98-.Ltext0
	.long	.LCFI96-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI96-.Ltext0
	.long	.LCFI97-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI97-.Ltext0
	.long	.LFE98-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST67:
	.long	.LVL181-.Ltext0
	.long	.LVL182-.Ltext0
	.value	0x1
	.byte	0x50
	.long	.LVL182-.Ltext0
	.long	.LVL183-.Ltext0
	.value	0x1
	.byte	0x56
	.long	.LVL184-.Ltext0
	.long	.LFE98-.Ltext0
	.value	0x1
	.byte	0x56
	.long	0x0
	.long	0x0
	.section	.debug_info
	.long	0x1967
	.value	0x2
	.long	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.long	.Ldebug_line0
	.long	.Letext0
	.long	.Ltext0
	.long	.LASF286
	.byte	0x1
	.long	.LASF287
	.uleb128 0x2
	.long	.LASF8
	.byte	0x6
	.byte	0xd5
	.long	0x2c
	.uleb128 0x3
	.long	.LASF0
	.byte	0x4
	.byte	0x7
	.uleb128 0x3
	.long	.LASF1
	.byte	0x1
	.byte	0x8
	.uleb128 0x3
	.long	.LASF2
	.byte	0x2
	.byte	0x7
	.uleb128 0x3
	.long	.LASF3
	.byte	0x4
	.byte	0x7
	.uleb128 0x3
	.long	.LASF4
	.byte	0x1
	.byte	0x6
	.uleb128 0x3
	.long	.LASF5
	.byte	0x2
	.byte	0x5
	.uleb128 0x4
	.string	"int"
	.byte	0x4
	.byte	0x5
	.uleb128 0x3
	.long	.LASF6
	.byte	0x8
	.byte	0x5
	.uleb128 0x3
	.long	.LASF7
	.byte	0x8
	.byte	0x7
	.uleb128 0x2
	.long	.LASF9
	.byte	0x5
	.byte	0x3b
	.long	0x5d
	.uleb128 0x2
	.long	.LASF10
	.byte	0x5
	.byte	0x8f
	.long	0x81
	.uleb128 0x3
	.long	.LASF11
	.byte	0x4
	.byte	0x5
	.uleb128 0x2
	.long	.LASF12
	.byte	0x5
	.byte	0x90
	.long	0x6b
	.uleb128 0x3
	.long	.LASF0
	.byte	0x4
	.byte	0x7
	.uleb128 0x2
	.long	.LASF13
	.byte	0x5
	.byte	0x97
	.long	0x81
	.uleb128 0x2
	.long	.LASF14
	.byte	0x5
	.byte	0x99
	.long	0x81
	.uleb128 0x5
	.byte	0x4
	.long	0xb6
	.uleb128 0x3
	.long	.LASF15
	.byte	0x1
	.byte	0x6
	.uleb128 0x2
	.long	.LASF16
	.byte	0x3
	.byte	0x2e
	.long	0xc8
	.uleb128 0x6
	.long	0x288
	.long	.LASF47
	.byte	0x94
	.byte	0x3
	.byte	0x2e
	.uleb128 0x7
	.long	.LASF17
	.byte	0x4
	.value	0x10c
	.long	0x56
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.long	.LASF18
	.byte	0x4
	.value	0x111
	.long	0xb0
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x7
	.long	.LASF19
	.byte	0x4
	.value	0x112
	.long	0xb0
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x7
	.long	.LASF20
	.byte	0x4
	.value	0x113
	.long	0xb0
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x7
	.long	.LASF21
	.byte	0x4
	.value	0x114
	.long	0xb0
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x7
	.long	.LASF22
	.byte	0x4
	.value	0x115
	.long	0xb0
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x7
	.long	.LASF23
	.byte	0x4
	.value	0x116
	.long	0xb0
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x7
	.long	.LASF24
	.byte	0x4
	.value	0x117
	.long	0xb0
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x7
	.long	.LASF25
	.byte	0x4
	.value	0x118
	.long	0xb0
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x7
	.long	.LASF26
	.byte	0x4
	.value	0x11a
	.long	0xb0
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x7
	.long	.LASF27
	.byte	0x4
	.value	0x11b
	.long	0xb0
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x7
	.long	.LASF28
	.byte	0x4
	.value	0x11c
	.long	0xb0
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0x7
	.long	.LASF29
	.byte	0x4
	.value	0x11e
	.long	0x2fc
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x7
	.long	.LASF30
	.byte	0x4
	.value	0x120
	.long	0x302
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0x7
	.long	.LASF31
	.byte	0x4
	.value	0x122
	.long	0x56
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0x7
	.long	.LASF32
	.byte	0x4
	.value	0x126
	.long	0x56
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0x7
	.long	.LASF33
	.byte	0x4
	.value	0x128
	.long	0x76
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0x7
	.long	.LASF34
	.byte	0x4
	.value	0x12c
	.long	0x3a
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0x7
	.long	.LASF35
	.byte	0x4
	.value	0x12d
	.long	0x48
	.byte	0x2
	.byte	0x23
	.uleb128 0x46
	.uleb128 0x7
	.long	.LASF36
	.byte	0x4
	.value	0x12e
	.long	0x308
	.byte	0x2
	.byte	0x23
	.uleb128 0x47
	.uleb128 0x7
	.long	.LASF37
	.byte	0x4
	.value	0x132
	.long	0x318
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0x7
	.long	.LASF38
	.byte	0x4
	.value	0x13b
	.long	0x88
	.byte	0x2
	.byte	0x23
	.uleb128 0x4c
	.uleb128 0x7
	.long	.LASF39
	.byte	0x4
	.value	0x144
	.long	0x293
	.byte	0x2
	.byte	0x23
	.uleb128 0x54
	.uleb128 0x7
	.long	.LASF40
	.byte	0x4
	.value	0x145
	.long	0x293
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.uleb128 0x7
	.long	.LASF41
	.byte	0x4
	.value	0x146
	.long	0x293
	.byte	0x2
	.byte	0x23
	.uleb128 0x5c
	.uleb128 0x7
	.long	.LASF42
	.byte	0x4
	.value	0x147
	.long	0x293
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0x7
	.long	.LASF43
	.byte	0x4
	.value	0x148
	.long	0x21
	.byte	0x2
	.byte	0x23
	.uleb128 0x64
	.uleb128 0x7
	.long	.LASF44
	.byte	0x4
	.value	0x14a
	.long	0x56
	.byte	0x2
	.byte	0x23
	.uleb128 0x68
	.uleb128 0x7
	.long	.LASF45
	.byte	0x4
	.value	0x14c
	.long	0x31e
	.byte	0x2
	.byte	0x23
	.uleb128 0x6c
	.byte	0x0
	.uleb128 0x5
	.byte	0x4
	.long	0x28e
	.uleb128 0x8
	.long	0x33
	.uleb128 0x9
	.byte	0x4
	.uleb128 0x5
	.byte	0x4
	.long	0x29b
	.uleb128 0x8
	.long	0xb6
	.uleb128 0x5
	.byte	0x4
	.long	0x295
	.uleb128 0x5
	.byte	0x4
	.long	0x293
	.uleb128 0x5
	.byte	0x4
	.long	0x2b2
	.uleb128 0xa
	.long	0x2be
	.byte	0x1
	.uleb128 0xb
	.long	0x293
	.byte	0x0
	.uleb128 0xc
	.long	.LASF46
	.byte	0x4
	.byte	0xb0
	.uleb128 0x6
	.long	0x2fc
	.long	.LASF48
	.byte	0xc
	.byte	0x4
	.byte	0xb6
	.uleb128 0xd
	.long	.LASF49
	.byte	0x4
	.byte	0xb7
	.long	0x2fc
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xd
	.long	.LASF50
	.byte	0x4
	.byte	0xb8
	.long	0x302
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xd
	.long	.LASF51
	.byte	0x4
	.byte	0xbc
	.long	0x56
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0x0
	.uleb128 0x5
	.byte	0x4
	.long	0x2c5
	.uleb128 0x5
	.byte	0x4
	.long	0xc8
	.uleb128 0xe
	.long	0x318
	.long	0xb6
	.uleb128 0xf
	.long	0x93
	.byte	0x0
	.byte	0x0
	.uleb128 0x5
	.byte	0x4
	.long	0x2be
	.uleb128 0xe
	.long	0x32e
	.long	0xb6
	.uleb128 0xf
	.long	0x93
	.byte	0x27
	.byte	0x0
	.uleb128 0x5
	.byte	0x4
	.long	0x56
	.uleb128 0x6
	.long	0x35d
	.long	.LASF52
	.byte	0x8
	.byte	0xc
	.byte	0x46
	.uleb128 0xd
	.long	.LASF53
	.byte	0xc
	.byte	0x47
	.long	0x9a
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xd
	.long	.LASF54
	.byte	0xc
	.byte	0x48
	.long	0xa5
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0x2
	.long	.LASF55
	.byte	0xb
	.byte	0x37
	.long	0x81
	.uleb128 0x10
	.long	0x37f
	.byte	0x80
	.byte	0xb
	.byte	0x4e
	.uleb128 0xd
	.long	.LASF56
	.byte	0xb
	.byte	0x48
	.long	0x37f
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.byte	0x0
	.uleb128 0xe
	.long	0x38f
	.long	0x35d
	.uleb128 0xf
	.long	0x93
	.byte	0x1f
	.byte	0x0
	.uleb128 0x2
	.long	.LASF57
	.byte	0xb
	.byte	0x4e
	.long	0x368
	.uleb128 0x2
	.long	.LASF58
	.byte	0xa
	.byte	0x34
	.long	0x2c
	.uleb128 0x3
	.long	.LASF59
	.byte	0xc
	.byte	0x4
	.uleb128 0x3
	.long	.LASF60
	.byte	0x8
	.byte	0x4
	.uleb128 0x6
	.long	0x3dc
	.long	.LASF61
	.byte	0x8
	.byte	0x2
	.byte	0x66
	.uleb128 0xd
	.long	.LASF62
	.byte	0x2
	.byte	0x67
	.long	0x56
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xd
	.long	.LASF63
	.byte	0x2
	.byte	0x67
	.long	0x6be
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0x6
	.long	0x6be
	.long	.LASF64
	.byte	0xc0
	.byte	0x2
	.byte	0x67
	.uleb128 0xd
	.long	.LASF62
	.byte	0x2
	.byte	0xf5
	.long	0x56
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xd
	.long	.LASF63
	.byte	0x2
	.byte	0xf5
	.long	0x6be
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xd
	.long	.LASF65
	.byte	0x2
	.byte	0xf5
	.long	0x56
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xd
	.long	.LASF66
	.byte	0x2
	.byte	0xf6
	.long	0xb0
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xd
	.long	.LASF67
	.byte	0x2
	.byte	0xf7
	.long	0x56
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xd
	.long	.LASF68
	.byte	0x2
	.byte	0xf7
	.long	0x56
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xd
	.long	.LASF69
	.byte	0x2
	.byte	0xfb
	.long	0xccc
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xd
	.long	.LASF70
	.byte	0x2
	.byte	0xfc
	.long	0xce9
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0xd
	.long	.LASF71
	.byte	0x2
	.byte	0xfd
	.long	0xd1a
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xd
	.long	.LASF72
	.byte	0x2
	.byte	0xfe
	.long	0xd4b
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0xd
	.long	.LASF73
	.byte	0x2
	.byte	0xff
	.long	0xd81
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x7
	.long	.LASF74
	.byte	0x2
	.value	0x100
	.long	0xd8c
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0x7
	.long	.LASF75
	.byte	0x2
	.value	0x104
	.long	0xe6b
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x7
	.long	.LASF76
	.byte	0x2
	.value	0x105
	.long	0xe71
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0x7
	.long	.LASF77
	.byte	0x2
	.value	0x106
	.long	0xe77
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0x7
	.long	.LASF78
	.byte	0x2
	.value	0x10a
	.long	0xd97
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0x7
	.long	.LASF79
	.byte	0x2
	.value	0x10b
	.long	0x71c
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0x7
	.long	.LASF80
	.byte	0x2
	.value	0x10c
	.long	0xd8c
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0x7
	.long	.LASF81
	.byte	0x2
	.value	0x10d
	.long	0xd40
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0x7
	.long	.LASF82
	.byte	0x2
	.value	0x10e
	.long	0xd76
	.byte	0x2
	.byte	0x23
	.uleb128 0x4c
	.uleb128 0x7
	.long	.LASF83
	.byte	0x2
	.value	0x111
	.long	0xe7d
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0x7
	.long	.LASF84
	.byte	0x2
	.value	0x114
	.long	0x81
	.byte	0x2
	.byte	0x23
	.uleb128 0x54
	.uleb128 0x7
	.long	.LASF85
	.byte	0x2
	.value	0x116
	.long	0xb0
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.uleb128 0x7
	.long	.LASF86
	.byte	0x2
	.value	0x11a
	.long	0x93e
	.byte	0x2
	.byte	0x23
	.uleb128 0x5c
	.uleb128 0x7
	.long	.LASF87
	.byte	0x2
	.value	0x11d
	.long	0x747
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0x7
	.long	.LASF88
	.byte	0x2
	.value	0x121
	.long	0xdb8
	.byte	0x2
	.byte	0x23
	.uleb128 0x64
	.uleb128 0x7
	.long	.LASF89
	.byte	0x2
	.value	0x124
	.long	0x81
	.byte	0x2
	.byte	0x23
	.uleb128 0x68
	.uleb128 0x7
	.long	.LASF90
	.byte	0x2
	.value	0x128
	.long	0xde3
	.byte	0x2
	.byte	0x23
	.uleb128 0x6c
	.uleb128 0x7
	.long	.LASF91
	.byte	0x2
	.value	0x129
	.long	0xdee
	.byte	0x2
	.byte	0x23
	.uleb128 0x70
	.uleb128 0x7
	.long	.LASF92
	.byte	0x2
	.value	0x12c
	.long	0xec9
	.byte	0x2
	.byte	0x23
	.uleb128 0x74
	.uleb128 0x7
	.long	.LASF93
	.byte	0x2
	.value	0x12d
	.long	0xf23
	.byte	0x2
	.byte	0x23
	.uleb128 0x78
	.uleb128 0x7
	.long	.LASF94
	.byte	0x2
	.value	0x12e
	.long	0xf7d
	.byte	0x2
	.byte	0x23
	.uleb128 0x7c
	.uleb128 0x7
	.long	.LASF95
	.byte	0x2
	.value	0x12f
	.long	0x6be
	.byte	0x3
	.byte	0x23
	.uleb128 0x80
	.uleb128 0x7
	.long	.LASF96
	.byte	0x2
	.value	0x130
	.long	0x6f0
	.byte	0x3
	.byte	0x23
	.uleb128 0x84
	.uleb128 0x7
	.long	.LASF97
	.byte	0x2
	.value	0x131
	.long	0xdf9
	.byte	0x3
	.byte	0x23
	.uleb128 0x88
	.uleb128 0x7
	.long	.LASF98
	.byte	0x2
	.value	0x132
	.long	0xe04
	.byte	0x3
	.byte	0x23
	.uleb128 0x8c
	.uleb128 0x7
	.long	.LASF99
	.byte	0x2
	.value	0x133
	.long	0x81
	.byte	0x3
	.byte	0x23
	.uleb128 0x90
	.uleb128 0x7
	.long	.LASF100
	.byte	0x2
	.value	0x134
	.long	0xe0f
	.byte	0x3
	.byte	0x23
	.uleb128 0x94
	.uleb128 0x7
	.long	.LASF101
	.byte	0x2
	.value	0x135
	.long	0xe45
	.byte	0x3
	.byte	0x23
	.uleb128 0x98
	.uleb128 0x7
	.long	.LASF102
	.byte	0x2
	.value	0x136
	.long	0xe1a
	.byte	0x3
	.byte	0x23
	.uleb128 0x9c
	.uleb128 0x7
	.long	.LASF103
	.byte	0x2
	.value	0x137
	.long	0xcc1
	.byte	0x3
	.byte	0x23
	.uleb128 0xa0
	.uleb128 0x7
	.long	.LASF104
	.byte	0x2
	.value	0x138
	.long	0x747
	.byte	0x3
	.byte	0x23
	.uleb128 0xa4
	.uleb128 0x7
	.long	.LASF105
	.byte	0x2
	.value	0x139
	.long	0x6f0
	.byte	0x3
	.byte	0x23
	.uleb128 0xa8
	.uleb128 0x7
	.long	.LASF106
	.byte	0x2
	.value	0x13a
	.long	0x6f0
	.byte	0x3
	.byte	0x23
	.uleb128 0xac
	.uleb128 0x7
	.long	.LASF107
	.byte	0x2
	.value	0x13b
	.long	0x6f0
	.byte	0x3
	.byte	0x23
	.uleb128 0xb0
	.uleb128 0x7
	.long	.LASF108
	.byte	0x2
	.value	0x13c
	.long	0x6f0
	.byte	0x3
	.byte	0x23
	.uleb128 0xb4
	.uleb128 0x7
	.long	.LASF109
	.byte	0x2
	.value	0x13d
	.long	0x6f0
	.byte	0x3
	.byte	0x23
	.uleb128 0xb8
	.uleb128 0x7
	.long	.LASF110
	.byte	0x2
	.value	0x13e
	.long	0xccc
	.byte	0x3
	.byte	0x23
	.uleb128 0xbc
	.byte	0x0
	.uleb128 0x5
	.byte	0x4
	.long	0x3dc
	.uleb128 0x2
	.long	.LASF111
	.byte	0x2
	.byte	0x68
	.long	0x3b3
	.uleb128 0x2
	.long	.LASF112
	.byte	0x2
	.byte	0x7e
	.long	0x6da
	.uleb128 0x5
	.byte	0x4
	.long	0x6e0
	.uleb128 0x11
	.long	0x6f0
	.byte	0x1
	.long	0x6f0
	.uleb128 0xb
	.long	0x6f0
	.byte	0x0
	.uleb128 0x5
	.byte	0x4
	.long	0x6c4
	.uleb128 0x2
	.long	.LASF113
	.byte	0x2
	.byte	0x7f
	.long	0x701
	.uleb128 0x5
	.byte	0x4
	.long	0x707
	.uleb128 0x11
	.long	0x71c
	.byte	0x1
	.long	0x6f0
	.uleb128 0xb
	.long	0x6f0
	.uleb128 0xb
	.long	0x6f0
	.byte	0x0
	.uleb128 0x2
	.long	.LASF114
	.byte	0x2
	.byte	0x80
	.long	0x727
	.uleb128 0x5
	.byte	0x4
	.long	0x72d
	.uleb128 0x11
	.long	0x747
	.byte	0x1
	.long	0x6f0
	.uleb128 0xb
	.long	0x6f0
	.uleb128 0xb
	.long	0x6f0
	.uleb128 0xb
	.long	0x6f0
	.byte	0x0
	.uleb128 0x2
	.long	.LASF115
	.byte	0x2
	.byte	0x81
	.long	0x752
	.uleb128 0x5
	.byte	0x4
	.long	0x758
	.uleb128 0x11
	.long	0x768
	.byte	0x1
	.long	0x56
	.uleb128 0xb
	.long	0x6f0
	.byte	0x0
	.uleb128 0x2
	.long	.LASF116
	.byte	0x2
	.byte	0x82
	.long	0x773
	.uleb128 0x5
	.byte	0x4
	.long	0x779
	.uleb128 0x11
	.long	0x78e
	.byte	0x1
	.long	0x56
	.uleb128 0xb
	.long	0x78e
	.uleb128 0xb
	.long	0x78e
	.byte	0x0
	.uleb128 0x5
	.byte	0x4
	.long	0x6f0
	.uleb128 0x2
	.long	.LASF117
	.byte	0x2
	.byte	0x83
	.long	0x79f
	.uleb128 0x5
	.byte	0x4
	.long	0x7a5
	.uleb128 0x11
	.long	0x7ba
	.byte	0x1
	.long	0x6f0
	.uleb128 0xb
	.long	0x6f0
	.uleb128 0xb
	.long	0x56
	.byte	0x0
	.uleb128 0x2
	.long	.LASF118
	.byte	0x2
	.byte	0x84
	.long	0x7c5
	.uleb128 0x5
	.byte	0x4
	.long	0x7cb
	.uleb128 0x11
	.long	0x7e5
	.byte	0x1
	.long	0x6f0
	.uleb128 0xb
	.long	0x6f0
	.uleb128 0xb
	.long	0x56
	.uleb128 0xb
	.long	0x56
	.byte	0x0
	.uleb128 0x2
	.long	.LASF119
	.byte	0x2
	.byte	0x85
	.long	0x7f0
	.uleb128 0x5
	.byte	0x4
	.long	0x7f6
	.uleb128 0x11
	.long	0x810
	.byte	0x1
	.long	0x56
	.uleb128 0xb
	.long	0x6f0
	.uleb128 0xb
	.long	0x56
	.uleb128 0xb
	.long	0x6f0
	.byte	0x0
	.uleb128 0x2
	.long	.LASF120
	.byte	0x2
	.byte	0x86
	.long	0x81b
	.uleb128 0x5
	.byte	0x4
	.long	0x821
	.uleb128 0x11
	.long	0x840
	.byte	0x1
	.long	0x56
	.uleb128 0xb
	.long	0x6f0
	.uleb128 0xb
	.long	0x56
	.uleb128 0xb
	.long	0x56
	.uleb128 0xb
	.long	0x6f0
	.byte	0x0
	.uleb128 0x2
	.long	.LASF121
	.byte	0x2
	.byte	0x87
	.long	0x84b
	.uleb128 0x5
	.byte	0x4
	.long	0x851
	.uleb128 0x11
	.long	0x86b
	.byte	0x1
	.long	0x56
	.uleb128 0xb
	.long	0x6f0
	.uleb128 0xb
	.long	0x6f0
	.uleb128 0xb
	.long	0x6f0
	.byte	0x0
	.uleb128 0x2
	.long	.LASF122
	.byte	0x2
	.byte	0x88
	.long	0x876
	.uleb128 0x5
	.byte	0x4
	.long	0x87c
	.uleb128 0x11
	.long	0x896
	.byte	0x1
	.long	0x56
	.uleb128 0xb
	.long	0x6f0
	.uleb128 0xb
	.long	0x56
	.uleb128 0xb
	.long	0x2a6
	.byte	0x0
	.uleb128 0x2
	.long	.LASF123
	.byte	0x2
	.byte	0x89
	.long	0x876
	.uleb128 0x2
	.long	.LASF124
	.byte	0x2
	.byte	0x8a
	.long	0x8ac
	.uleb128 0x5
	.byte	0x4
	.long	0x8b2
	.uleb128 0x11
	.long	0x8c7
	.byte	0x1
	.long	0x56
	.uleb128 0xb
	.long	0x6f0
	.uleb128 0xb
	.long	0x32e
	.byte	0x0
	.uleb128 0x2
	.long	.LASF125
	.byte	0x2
	.byte	0x8b
	.long	0x8d2
	.uleb128 0x5
	.byte	0x4
	.long	0x8d8
	.uleb128 0x11
	.long	0x8f2
	.byte	0x1
	.long	0x56
	.uleb128 0xb
	.long	0x6f0
	.uleb128 0xb
	.long	0x56
	.uleb128 0xb
	.long	0x2a0
	.byte	0x0
	.uleb128 0x2
	.long	.LASF126
	.byte	0x2
	.byte	0x8c
	.long	0x8fd
	.uleb128 0x5
	.byte	0x4
	.long	0x903
	.uleb128 0x11
	.long	0x918
	.byte	0x1
	.long	0x56
	.uleb128 0xb
	.long	0x6f0
	.uleb128 0xb
	.long	0x6f0
	.byte	0x0
	.uleb128 0x2
	.long	.LASF127
	.byte	0x2
	.byte	0x8d
	.long	0x923
	.uleb128 0x5
	.byte	0x4
	.long	0x929
	.uleb128 0x11
	.long	0x93e
	.byte	0x1
	.long	0x56
	.uleb128 0xb
	.long	0x6f0
	.uleb128 0xb
	.long	0x293
	.byte	0x0
	.uleb128 0x2
	.long	.LASF128
	.byte	0x2
	.byte	0x8e
	.long	0x949
	.uleb128 0x5
	.byte	0x4
	.long	0x94f
	.uleb128 0x11
	.long	0x969
	.byte	0x1
	.long	0x56
	.uleb128 0xb
	.long	0x6f0
	.uleb128 0xb
	.long	0x918
	.uleb128 0xb
	.long	0x293
	.byte	0x0
	.uleb128 0x10
	.long	0xb8c
	.byte	0x98
	.byte	0x2
	.byte	0xc3
	.uleb128 0xd
	.long	.LASF129
	.byte	0x2
	.byte	0x99
	.long	0x6f6
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xd
	.long	.LASF130
	.byte	0x2
	.byte	0x9a
	.long	0x6f6
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xd
	.long	.LASF131
	.byte	0x2
	.byte	0x9b
	.long	0x6f6
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xd
	.long	.LASF132
	.byte	0x2
	.byte	0x9c
	.long	0x6f6
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xd
	.long	.LASF133
	.byte	0x2
	.byte	0x9d
	.long	0x6f6
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xd
	.long	.LASF134
	.byte	0x2
	.byte	0x9e
	.long	0x6f6
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xd
	.long	.LASF135
	.byte	0x2
	.byte	0x9f
	.long	0x71c
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xd
	.long	.LASF136
	.byte	0x2
	.byte	0xa0
	.long	0x6cf
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0xd
	.long	.LASF137
	.byte	0x2
	.byte	0xa1
	.long	0x6cf
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xd
	.long	.LASF138
	.byte	0x2
	.byte	0xa2
	.long	0x6cf
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0xd
	.long	.LASF139
	.byte	0x2
	.byte	0xa3
	.long	0x747
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0xd
	.long	.LASF140
	.byte	0x2
	.byte	0xa4
	.long	0x6cf
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0xd
	.long	.LASF141
	.byte	0x2
	.byte	0xa5
	.long	0x6f6
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0xd
	.long	.LASF142
	.byte	0x2
	.byte	0xa6
	.long	0x6f6
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0xd
	.long	.LASF143
	.byte	0x2
	.byte	0xa7
	.long	0x6f6
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0xd
	.long	.LASF144
	.byte	0x2
	.byte	0xa8
	.long	0x6f6
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0xd
	.long	.LASF145
	.byte	0x2
	.byte	0xa9
	.long	0x6f6
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0xd
	.long	.LASF146
	.byte	0x2
	.byte	0xaa
	.long	0x768
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0xd
	.long	.LASF147
	.byte	0x2
	.byte	0xab
	.long	0x6cf
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0xd
	.long	.LASF148
	.byte	0x2
	.byte	0xac
	.long	0x6cf
	.byte	0x2
	.byte	0x23
	.uleb128 0x4c
	.uleb128 0xd
	.long	.LASF149
	.byte	0x2
	.byte	0xad
	.long	0x6cf
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0xd
	.long	.LASF150
	.byte	0x2
	.byte	0xae
	.long	0x6cf
	.byte	0x2
	.byte	0x23
	.uleb128 0x54
	.uleb128 0xd
	.long	.LASF151
	.byte	0x2
	.byte	0xaf
	.long	0x6cf
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.uleb128 0xd
	.long	.LASF152
	.byte	0x2
	.byte	0xb1
	.long	0x6f6
	.byte	0x2
	.byte	0x23
	.uleb128 0x5c
	.uleb128 0xd
	.long	.LASF153
	.byte	0x2
	.byte	0xb2
	.long	0x6f6
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0xd
	.long	.LASF154
	.byte	0x2
	.byte	0xb3
	.long	0x6f6
	.byte	0x2
	.byte	0x23
	.uleb128 0x64
	.uleb128 0xd
	.long	.LASF155
	.byte	0x2
	.byte	0xb4
	.long	0x6f6
	.byte	0x2
	.byte	0x23
	.uleb128 0x68
	.uleb128 0xd
	.long	.LASF156
	.byte	0x2
	.byte	0xb5
	.long	0x6f6
	.byte	0x2
	.byte	0x23
	.uleb128 0x6c
	.uleb128 0xd
	.long	.LASF157
	.byte	0x2
	.byte	0xb6
	.long	0x71c
	.byte	0x2
	.byte	0x23
	.uleb128 0x70
	.uleb128 0xd
	.long	.LASF158
	.byte	0x2
	.byte	0xb7
	.long	0x6f6
	.byte	0x2
	.byte	0x23
	.uleb128 0x74
	.uleb128 0xd
	.long	.LASF159
	.byte	0x2
	.byte	0xb8
	.long	0x6f6
	.byte	0x2
	.byte	0x23
	.uleb128 0x78
	.uleb128 0xd
	.long	.LASF160
	.byte	0x2
	.byte	0xb9
	.long	0x6f6
	.byte	0x2
	.byte	0x23
	.uleb128 0x7c
	.uleb128 0xd
	.long	.LASF161
	.byte	0x2
	.byte	0xba
	.long	0x6f6
	.byte	0x3
	.byte	0x23
	.uleb128 0x80
	.uleb128 0xd
	.long	.LASF162
	.byte	0x2
	.byte	0xbb
	.long	0x6f6
	.byte	0x3
	.byte	0x23
	.uleb128 0x84
	.uleb128 0xd
	.long	.LASF163
	.byte	0x2
	.byte	0xbf
	.long	0x6f6
	.byte	0x3
	.byte	0x23
	.uleb128 0x88
	.uleb128 0xd
	.long	.LASF164
	.byte	0x2
	.byte	0xc0
	.long	0x6f6
	.byte	0x3
	.byte	0x23
	.uleb128 0x8c
	.uleb128 0xd
	.long	.LASF165
	.byte	0x2
	.byte	0xc1
	.long	0x6f6
	.byte	0x3
	.byte	0x23
	.uleb128 0x90
	.uleb128 0xd
	.long	.LASF166
	.byte	0x2
	.byte	0xc2
	.long	0x6f6
	.byte	0x3
	.byte	0x23
	.uleb128 0x94
	.byte	0x0
	.uleb128 0x2
	.long	.LASF167
	.byte	0x2
	.byte	0xc3
	.long	0x969
	.uleb128 0x10
	.long	0xc2c
	.byte	0x28
	.byte	0x2
	.byte	0xd1
	.uleb128 0xd
	.long	.LASF168
	.byte	0x2
	.byte	0xc6
	.long	0x747
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xd
	.long	.LASF169
	.byte	0x2
	.byte	0xc7
	.long	0x6f6
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xd
	.long	.LASF170
	.byte	0x2
	.byte	0xc8
	.long	0x794
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xd
	.long	.LASF171
	.byte	0x2
	.byte	0xc9
	.long	0x794
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xd
	.long	.LASF172
	.byte	0x2
	.byte	0xca
	.long	0x7ba
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xd
	.long	.LASF173
	.byte	0x2
	.byte	0xcb
	.long	0x7e5
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xd
	.long	.LASF174
	.byte	0x2
	.byte	0xcc
	.long	0x810
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xd
	.long	.LASF175
	.byte	0x2
	.byte	0xcd
	.long	0x8f2
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0xd
	.long	.LASF176
	.byte	0x2
	.byte	0xcf
	.long	0x6f6
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xd
	.long	.LASF177
	.byte	0x2
	.byte	0xd0
	.long	0x794
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.byte	0x0
	.uleb128 0x2
	.long	.LASF178
	.byte	0x2
	.byte	0xd1
	.long	0xb97
	.uleb128 0x10
	.long	0xc6a
	.byte	0xc
	.byte	0x2
	.byte	0xd7
	.uleb128 0xd
	.long	.LASF179
	.byte	0x2
	.byte	0xd4
	.long	0x747
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xd
	.long	.LASF180
	.byte	0x2
	.byte	0xd5
	.long	0x6f6
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xd
	.long	.LASF181
	.byte	0x2
	.byte	0xd6
	.long	0x840
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0x0
	.uleb128 0x2
	.long	.LASF182
	.byte	0x2
	.byte	0xd7
	.long	0xc37
	.uleb128 0x10
	.long	0xcb6
	.byte	0x10
	.byte	0x2
	.byte	0xde
	.uleb128 0xd
	.long	.LASF183
	.byte	0x2
	.byte	0xda
	.long	0x86b
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xd
	.long	.LASF184
	.byte	0x2
	.byte	0xdb
	.long	0x896
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xd
	.long	.LASF185
	.byte	0x2
	.byte	0xdc
	.long	0x8a1
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xd
	.long	.LASF186
	.byte	0x2
	.byte	0xdd
	.long	0x8c7
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0x2
	.long	.LASF187
	.byte	0x2
	.byte	0xde
	.long	0xc75
	.uleb128 0x2
	.long	.LASF188
	.byte	0x2
	.byte	0xe1
	.long	0x2ac
	.uleb128 0x2
	.long	.LASF189
	.byte	0x2
	.byte	0xe2
	.long	0xcd7
	.uleb128 0x5
	.byte	0x4
	.long	0xcdd
	.uleb128 0xa
	.long	0xce9
	.byte	0x1
	.uleb128 0xb
	.long	0x6f0
	.byte	0x0
	.uleb128 0x2
	.long	.LASF190
	.byte	0x2
	.byte	0xe3
	.long	0xcf4
	.uleb128 0x5
	.byte	0x4
	.long	0xcfa
	.uleb128 0x11
	.long	0xd14
	.byte	0x1
	.long	0x56
	.uleb128 0xb
	.long	0x6f0
	.uleb128 0xb
	.long	0xd14
	.uleb128 0xb
	.long	0x56
	.byte	0x0
	.uleb128 0x5
	.byte	0x4
	.long	0xbd
	.uleb128 0x2
	.long	.LASF191
	.byte	0x2
	.byte	0xe4
	.long	0xd25
	.uleb128 0x5
	.byte	0x4
	.long	0xd2b
	.uleb128 0x11
	.long	0xd40
	.byte	0x1
	.long	0x6f0
	.uleb128 0xb
	.long	0x6f0
	.uleb128 0xb
	.long	0xb0
	.byte	0x0
	.uleb128 0x2
	.long	.LASF192
	.byte	0x2
	.byte	0xe5
	.long	0x701
	.uleb128 0x2
	.long	.LASF193
	.byte	0x2
	.byte	0xe6
	.long	0xd56
	.uleb128 0x5
	.byte	0x4
	.long	0xd5c
	.uleb128 0x11
	.long	0xd76
	.byte	0x1
	.long	0x56
	.uleb128 0xb
	.long	0x6f0
	.uleb128 0xb
	.long	0xb0
	.uleb128 0xb
	.long	0x6f0
	.byte	0x0
	.uleb128 0x2
	.long	.LASF194
	.byte	0x2
	.byte	0xe7
	.long	0x84b
	.uleb128 0x2
	.long	.LASF195
	.byte	0x2
	.byte	0xe8
	.long	0x8fd
	.uleb128 0x2
	.long	.LASF196
	.byte	0x2
	.byte	0xe9
	.long	0x6da
	.uleb128 0x2
	.long	.LASF197
	.byte	0x2
	.byte	0xea
	.long	0xda2
	.uleb128 0x5
	.byte	0x4
	.long	0xda8
	.uleb128 0x11
	.long	0xdb8
	.byte	0x1
	.long	0x81
	.uleb128 0xb
	.long	0x6f0
	.byte	0x0
	.uleb128 0x2
	.long	.LASF198
	.byte	0x2
	.byte	0xeb
	.long	0xdc3
	.uleb128 0x5
	.byte	0x4
	.long	0xdc9
	.uleb128 0x11
	.long	0xde3
	.byte	0x1
	.long	0x6f0
	.uleb128 0xb
	.long	0x6f0
	.uleb128 0xb
	.long	0x6f0
	.uleb128 0xb
	.long	0x56
	.byte	0x0
	.uleb128 0x2
	.long	.LASF199
	.byte	0x2
	.byte	0xec
	.long	0x6da
	.uleb128 0x2
	.long	.LASF200
	.byte	0x2
	.byte	0xed
	.long	0x6da
	.uleb128 0x2
	.long	.LASF201
	.byte	0x2
	.byte	0xee
	.long	0x727
	.uleb128 0x2
	.long	.LASF202
	.byte	0x2
	.byte	0xef
	.long	0x84b
	.uleb128 0x2
	.long	.LASF203
	.byte	0x2
	.byte	0xf0
	.long	0x84b
	.uleb128 0x2
	.long	.LASF204
	.byte	0x2
	.byte	0xf1
	.long	0xe25
	.uleb128 0x5
	.byte	0x4
	.long	0xe2b
	.uleb128 0x11
	.long	0xe45
	.byte	0x1
	.long	0x6f0
	.uleb128 0xb
	.long	0x6be
	.uleb128 0xb
	.long	0x6f0
	.uleb128 0xb
	.long	0x6f0
	.byte	0x0
	.uleb128 0x2
	.long	.LASF205
	.byte	0x2
	.byte	0xf2
	.long	0xe50
	.uleb128 0x5
	.byte	0x4
	.long	0xe56
	.uleb128 0x11
	.long	0xe6b
	.byte	0x1
	.long	0x6f0
	.uleb128 0xb
	.long	0x6be
	.uleb128 0xb
	.long	0x56
	.byte	0x0
	.uleb128 0x5
	.byte	0x4
	.long	0xb8c
	.uleb128 0x5
	.byte	0x4
	.long	0xc2c
	.uleb128 0x5
	.byte	0x4
	.long	0xc6a
	.uleb128 0x5
	.byte	0x4
	.long	0xcb6
	.uleb128 0x12
	.long	0xec9
	.long	.LASF206
	.byte	0x10
	.byte	0x2
	.value	0x12c
	.uleb128 0xd
	.long	.LASF207
	.byte	0x7
	.byte	0x26
	.long	0xb0
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xd
	.long	.LASF208
	.byte	0x7
	.byte	0x27
	.long	0xf8f
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xd
	.long	.LASF209
	.byte	0x7
	.byte	0x28
	.long	0x56
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xd
	.long	.LASF210
	.byte	0x7
	.byte	0x2a
	.long	0xb0
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0x5
	.byte	0x4
	.long	0xe83
	.uleb128 0x12
	.long	0xf23
	.long	.LASF211
	.byte	0x14
	.byte	0x2
	.value	0x12d
	.uleb128 0xd
	.long	.LASF212
	.byte	0x8
	.byte	0x26
	.long	0xb0
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xd
	.long	.LASF213
	.byte	0x8
	.byte	0x27
	.long	0x56
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xd
	.long	.LASF214
	.byte	0x8
	.byte	0x28
	.long	0x56
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xd
	.long	.LASF215
	.byte	0x8
	.byte	0x29
	.long	0x56
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x13
	.string	"doc"
	.byte	0x8
	.byte	0x2a
	.long	0xb0
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.byte	0x0
	.uleb128 0x5
	.byte	0x4
	.long	0xecf
	.uleb128 0x12
	.long	0xf7d
	.long	.LASF216
	.byte	0x14
	.byte	0x2
	.value	0x12e
	.uleb128 0xd
	.long	.LASF212
	.byte	0x9
	.byte	0xc
	.long	0xb0
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x13
	.string	"get"
	.byte	0x9
	.byte	0xd
	.long	0xfa5
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x13
	.string	"set"
	.byte	0x9
	.byte	0xe
	.long	0xfcb
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x13
	.string	"doc"
	.byte	0x9
	.byte	0xf
	.long	0xb0
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xd
	.long	.LASF217
	.byte	0x9
	.byte	0x10
	.long	0x293
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.byte	0x0
	.uleb128 0x5
	.byte	0x4
	.long	0xf29
	.uleb128 0x14
	.long	.LASF218
	.byte	0x2
	.value	0x147
	.long	0x3dc
	.uleb128 0x2
	.long	.LASF219
	.byte	0x7
	.byte	0x12
	.long	0x701
	.uleb128 0x2
	.long	.LASF206
	.byte	0x7
	.byte	0x2c
	.long	0xe83
	.uleb128 0x2
	.long	.LASF220
	.byte	0x9
	.byte	0x8
	.long	0xfb0
	.uleb128 0x5
	.byte	0x4
	.long	0xfb6
	.uleb128 0x11
	.long	0xfcb
	.byte	0x1
	.long	0x6f0
	.uleb128 0xb
	.long	0x6f0
	.uleb128 0xb
	.long	0x293
	.byte	0x0
	.uleb128 0x2
	.long	.LASF221
	.byte	0x9
	.byte	0x9
	.long	0xfd6
	.uleb128 0x5
	.byte	0x4
	.long	0xfdc
	.uleb128 0x11
	.long	0xff6
	.byte	0x1
	.long	0x56
	.uleb128 0xb
	.long	0x6f0
	.uleb128 0xb
	.long	0x6f0
	.uleb128 0xb
	.long	0x293
	.byte	0x0
	.uleb128 0x12
	.long	0x1040
	.long	.LASF222
	.byte	0x10
	.byte	0xd
	.value	0x230
	.uleb128 0x7
	.long	.LASF223
	.byte	0xd
	.value	0x231
	.long	0x56
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.long	.LASF224
	.byte	0xd
	.value	0x232
	.long	0x56
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x7
	.long	.LASF225
	.byte	0xd
	.value	0x233
	.long	0x56
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x7
	.long	.LASF226
	.byte	0xd
	.value	0x235
	.long	0x56
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0x14
	.long	.LASF222
	.byte	0xd
	.value	0x237
	.long	0xff6
	.uleb128 0x12
	.long	0x1087
	.long	.LASF227
	.byte	0xc
	.byte	0xd
	.value	0x252
	.uleb128 0x7
	.long	.LASF226
	.byte	0xd
	.value	0x253
	.long	0x56
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.long	.LASF228
	.byte	0xd
	.value	0x254
	.long	0x56
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x15
	.string	"ptr"
	.byte	0xd
	.value	0x255
	.long	0x56
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0x0
	.uleb128 0x14
	.long	.LASF227
	.byte	0xd
	.value	0x256
	.long	0x104c
	.uleb128 0x10
	.long	0x10fe
	.byte	0x1c
	.byte	0x1
	.byte	0x33
	.uleb128 0xd
	.long	.LASF62
	.byte	0x1
	.byte	0x2d
	.long	0x56
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xd
	.long	.LASF63
	.byte	0x1
	.byte	0x2d
	.long	0x6be
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xd
	.long	.LASF229
	.byte	0x1
	.byte	0x2e
	.long	0x56
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xd
	.long	.LASF230
	.byte	0x1
	.byte	0x2f
	.long	0x56
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xd
	.long	.LASF231
	.byte	0x1
	.byte	0x30
	.long	0x56
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xd
	.long	.LASF232
	.byte	0x1
	.byte	0x31
	.long	0x56
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xd
	.long	.LASF233
	.byte	0x1
	.byte	0x32
	.long	0x39a
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.byte	0x0
	.uleb128 0x2
	.long	.LASF234
	.byte	0x1
	.byte	0x33
	.long	0x1093
	.uleb128 0x10
	.long	0x113c
	.byte	0xc
	.byte	0x1
	.byte	0x3d
	.uleb128 0xd
	.long	.LASF235
	.byte	0x1
	.byte	0x3a
	.long	0x56
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xd
	.long	.LASF236
	.byte	0x1
	.byte	0x3b
	.long	0x39a
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xd
	.long	.LASF237
	.byte	0x1
	.byte	0x3c
	.long	0xb0
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0x0
	.uleb128 0x16
	.long	0x1163
	.long	.LASF238
	.byte	0x1
	.byte	0x95
	.byte	0x1
	.long	.LFB84
	.long	.LFE84
	.long	.LLST0
	.uleb128 0x17
	.string	"xp"
	.byte	0x1
	.byte	0x94
	.long	0x1163
	.long	.LLST1
	.byte	0x0
	.uleb128 0x5
	.byte	0x4
	.long	0x10fe
	.uleb128 0x18
	.long	0x11dd
	.long	.LASF239
	.byte	0x1
	.byte	0x9e
	.byte	0x1
	.long	0x6f0
	.long	.LFB85
	.long	.LFE85
	.long	.LLST2
	.uleb128 0x19
	.long	.LASF240
	.byte	0x1
	.byte	0x9d
	.long	0x1163
	.long	.LLST3
	.uleb128 0x19
	.long	.LASF241
	.byte	0x1
	.byte	0x9d
	.long	0x6f0
	.long	.LLST4
	.uleb128 0x1a
	.long	.LASF242
	.byte	0x1
	.byte	0x9f
	.long	0x56
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1b
	.long	.LASF243
	.byte	0x1
	.byte	0x9f
	.long	0x56
	.long	.LLST5
	.uleb128 0x1c
	.string	"cp"
	.byte	0x1
	.byte	0xa0
	.long	0xb0
	.long	.LLST6
	.uleb128 0x1c
	.string	"rv"
	.byte	0x1
	.byte	0xa1
	.long	0x6f0
	.long	.LLST7
	.byte	0x0
	.uleb128 0x18
	.long	0x1297
	.long	.LASF244
	.byte	0x1
	.byte	0xb5
	.byte	0x1
	.long	0x6f0
	.long	.LFB86
	.long	.LFE86
	.long	.LLST8
	.uleb128 0x19
	.long	.LASF240
	.byte	0x1
	.byte	0xb4
	.long	0x1163
	.long	.LLST9
	.uleb128 0x19
	.long	.LASF241
	.byte	0x1
	.byte	0xb4
	.long	0x6f0
	.long	.LLST10
	.uleb128 0x1d
	.string	"cp"
	.byte	0x1
	.byte	0xb6
	.long	0xb0
	.byte	0x3
	.byte	0x91
	.sleb128 -168
	.uleb128 0x1c
	.string	"rv"
	.byte	0x1
	.byte	0xb7
	.long	0x56
	.long	.LLST11
	.uleb128 0x1a
	.long	.LASF242
	.byte	0x1
	.byte	0xb7
	.long	0x56
	.byte	0x3
	.byte	0x91
	.sleb128 -164
	.uleb128 0x1a
	.long	.LASF245
	.byte	0x1
	.byte	0xb8
	.long	0x38f
	.byte	0x3
	.byte	0x91
	.sleb128 -160
	.uleb128 0x1d
	.string	"tv"
	.byte	0x1
	.byte	0xb9
	.long	0x334
	.byte	0x3
	.byte	0x91
	.sleb128 -176
	.uleb128 0x1b
	.long	.LASF246
	.byte	0x1
	.byte	0xba
	.long	0x56
	.long	.LLST12
	.uleb128 0x1e
	.long	.LBB2
	.long	.LBE2
	.uleb128 0x1b
	.long	.LASF247
	.byte	0x1
	.byte	0xc0
	.long	0x56
	.long	.LLST13
	.uleb128 0x1b
	.long	.LASF248
	.byte	0x1
	.byte	0xc0
	.long	0x56
	.long	.LLST14
	.byte	0x0
	.byte	0x0
	.uleb128 0x18
	.long	0x12d2
	.long	.LASF249
	.byte	0x1
	.byte	0xe1
	.byte	0x1
	.long	0x6f0
	.long	.LFB87
	.long	.LFE87
	.long	.LLST15
	.uleb128 0x19
	.long	.LASF240
	.byte	0x1
	.byte	0xe0
	.long	0x1163
	.long	.LLST16
	.uleb128 0x19
	.long	.LASF241
	.byte	0x1
	.byte	0xe0
	.long	0x6f0
	.long	.LLST17
	.byte	0x0
	.uleb128 0x18
	.long	0x130b
	.long	.LASF250
	.byte	0x1
	.byte	0xef
	.byte	0x1
	.long	0x6f0
	.long	.LFB88
	.long	.LFE88
	.long	.LLST18
	.uleb128 0x1f
	.long	.LASF240
	.byte	0x1
	.byte	0xee
	.long	0x1163
	.byte	0x1
	.byte	0x50
	.uleb128 0x19
	.long	.LASF241
	.byte	0x1
	.byte	0xee
	.long	0x6f0
	.long	.LLST19
	.byte	0x0
	.uleb128 0x18
	.long	0x139e
	.long	.LASF251
	.byte	0x1
	.byte	0xf7
	.byte	0x1
	.long	0x6f0
	.long	.LFB89
	.long	.LFE89
	.long	.LLST20
	.uleb128 0x19
	.long	.LASF240
	.byte	0x1
	.byte	0xf6
	.long	0x1163
	.long	.LLST21
	.uleb128 0x19
	.long	.LASF241
	.byte	0x1
	.byte	0xf6
	.long	0x6f0
	.long	.LLST22
	.uleb128 0x1b
	.long	.LASF252
	.byte	0x1
	.byte	0xf8
	.long	0x56
	.long	.LLST23
	.uleb128 0x1b
	.long	.LASF253
	.byte	0x1
	.byte	0xf8
	.long	0x56
	.long	.LLST24
	.uleb128 0x1b
	.long	.LASF254
	.byte	0x1
	.byte	0xf8
	.long	0x56
	.long	.LLST25
	.uleb128 0x1c
	.string	"n"
	.byte	0x1
	.byte	0xf8
	.long	0x56
	.long	.LLST26
	.uleb128 0x1c
	.string	"fmt"
	.byte	0x1
	.byte	0xf8
	.long	0x56
	.long	.LLST27
	.uleb128 0x1b
	.long	.LASF255
	.byte	0x1
	.byte	0xf8
	.long	0x56
	.long	.LLST28
	.byte	0x0
	.uleb128 0x20
	.long	0x143c
	.long	.LASF256
	.byte	0x1
	.value	0x15c
	.byte	0x1
	.long	0x6f0
	.long	.LFB91
	.long	.LFE91
	.long	.LLST29
	.uleb128 0x21
	.long	.LASF240
	.byte	0x1
	.value	0x15b
	.long	0x1163
	.long	.LLST30
	.uleb128 0x21
	.long	.LASF241
	.byte	0x1
	.value	0x15b
	.long	0x6f0
	.long	.LLST31
	.uleb128 0x22
	.string	"ai"
	.byte	0x1
	.value	0x15d
	.long	0x1040
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x23
	.long	.LASF254
	.byte	0x1
	.value	0x15e
	.long	0x56
	.long	.LLST32
	.uleb128 0x23
	.long	.LASF253
	.byte	0x1
	.value	0x15e
	.long	0x56
	.long	.LLST33
	.uleb128 0x24
	.long	0x143c
	.long	.Ldebug_ranges0+0x0
	.byte	0x1
	.value	0x162
	.uleb128 0x25
	.long	0x144e
	.uleb128 0x26
	.long	0x145a
	.long	.LLST34
	.uleb128 0x27
	.long	0x1466
	.byte	0x2
	.byte	0x75
	.sleb128 -56
	.uleb128 0x28
	.long	.Ldebug_ranges0+0x28
	.uleb128 0x29
	.long	0x1472
	.long	.LLST35
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x2a
	.long	0x147f
	.long	.LASF257
	.byte	0x1
	.value	0x138
	.byte	0x1
	.long	0x56
	.byte	0x1
	.uleb128 0x2b
	.long	.LASF240
	.byte	0x1
	.value	0x137
	.long	0x1163
	.uleb128 0x2b
	.long	.LASF254
	.byte	0x1
	.value	0x137
	.long	0x32e
	.uleb128 0x2b
	.long	.LASF253
	.byte	0x1
	.value	0x137
	.long	0x32e
	.uleb128 0x2c
	.string	"fmt"
	.byte	0x1
	.value	0x139
	.long	0x56
	.byte	0x0
	.uleb128 0x20
	.long	0x151d
	.long	.LASF258
	.byte	0x1
	.value	0x171
	.byte	0x1
	.long	0x6f0
	.long	.LFB92
	.long	.LFE92
	.long	.LLST36
	.uleb128 0x21
	.long	.LASF240
	.byte	0x1
	.value	0x170
	.long	0x1163
	.long	.LLST37
	.uleb128 0x21
	.long	.LASF241
	.byte	0x1
	.value	0x170
	.long	0x6f0
	.long	.LLST38
	.uleb128 0x22
	.string	"ai"
	.byte	0x1
	.value	0x172
	.long	0x1040
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x23
	.long	.LASF254
	.byte	0x1
	.value	0x173
	.long	0x56
	.long	.LLST39
	.uleb128 0x23
	.long	.LASF253
	.byte	0x1
	.value	0x173
	.long	0x56
	.long	.LLST40
	.uleb128 0x24
	.long	0x143c
	.long	.Ldebug_ranges0+0x58
	.byte	0x1
	.value	0x178
	.uleb128 0x25
	.long	0x144e
	.uleb128 0x26
	.long	0x145a
	.long	.LLST41
	.uleb128 0x27
	.long	0x1466
	.byte	0x2
	.byte	0x75
	.sleb128 -56
	.uleb128 0x28
	.long	.Ldebug_ranges0+0x80
	.uleb128 0x29
	.long	0x1472
	.long	.LLST42
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x20
	.long	0x15bb
	.long	.LASF259
	.byte	0x1
	.value	0x188
	.byte	0x1
	.long	0x6f0
	.long	.LFB93
	.long	.LFE93
	.long	.LLST43
	.uleb128 0x21
	.long	.LASF240
	.byte	0x1
	.value	0x187
	.long	0x1163
	.long	.LLST44
	.uleb128 0x21
	.long	.LASF241
	.byte	0x1
	.value	0x187
	.long	0x6f0
	.long	.LLST45
	.uleb128 0x22
	.string	"ai"
	.byte	0x1
	.value	0x189
	.long	0x1040
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x23
	.long	.LASF254
	.byte	0x1
	.value	0x18a
	.long	0x56
	.long	.LLST46
	.uleb128 0x23
	.long	.LASF253
	.byte	0x1
	.value	0x18a
	.long	0x56
	.long	.LLST47
	.uleb128 0x24
	.long	0x143c
	.long	.Ldebug_ranges0+0xb0
	.byte	0x1
	.value	0x18f
	.uleb128 0x25
	.long	0x144e
	.uleb128 0x26
	.long	0x145a
	.long	.LLST48
	.uleb128 0x27
	.long	0x1466
	.byte	0x2
	.byte	0x75
	.sleb128 -56
	.uleb128 0x28
	.long	.Ldebug_ranges0+0xd8
	.uleb128 0x29
	.long	0x1472
	.long	.LLST49
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x20
	.long	0x15f9
	.long	.LASF260
	.byte	0x1
	.value	0x19d
	.byte	0x1
	.long	0x6f0
	.long	.LFB94
	.long	.LFE94
	.long	.LLST50
	.uleb128 0x21
	.long	.LASF240
	.byte	0x1
	.value	0x19c
	.long	0x1163
	.long	.LLST51
	.uleb128 0x21
	.long	.LASF241
	.byte	0x1
	.value	0x19c
	.long	0x6f0
	.long	.LLST52
	.byte	0x0
	.uleb128 0x20
	.long	0x1656
	.long	.LASF261
	.byte	0x1
	.value	0x1aa
	.byte	0x1
	.long	0x6f0
	.long	.LFB95
	.long	.LFE95
	.long	.LLST53
	.uleb128 0x21
	.long	.LASF240
	.byte	0x1
	.value	0x1a9
	.long	0x1163
	.long	.LLST54
	.uleb128 0x21
	.long	.LASF241
	.byte	0x1
	.value	0x1a9
	.long	0x6f0
	.long	.LLST55
	.uleb128 0x2d
	.long	.LASF262
	.byte	0x1
	.value	0x1ab
	.long	0x1087
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2e
	.string	"req"
	.byte	0x1
	.value	0x1ac
	.long	0x56
	.long	.LLST56
	.byte	0x0
	.uleb128 0x20
	.long	0x1691
	.long	.LASF263
	.byte	0x1
	.value	0x1cc
	.byte	0x1
	.long	0x6f0
	.long	.LFB96
	.long	.LFE96
	.long	.LLST57
	.uleb128 0x2f
	.string	"xp"
	.byte	0x1
	.value	0x1cb
	.long	0x1163
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x30
	.long	.LASF212
	.byte	0x1
	.value	0x1cb
	.long	0xb0
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.byte	0x0
	.uleb128 0x20
	.long	0x176c
	.long	.LASF264
	.byte	0x1
	.value	0x1e1
	.byte	0x1
	.long	0x6f0
	.long	.LFB97
	.long	.LFE97
	.long	.LLST58
	.uleb128 0x30
	.long	.LASF240
	.byte	0x1
	.value	0x1e0
	.long	0x6f0
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x21
	.long	.LASF241
	.byte	0x1
	.value	0x1e0
	.long	0x6f0
	.long	.LLST59
	.uleb128 0x31
	.long	0x171f
	.long	0x176c
	.long	.Ldebug_ranges0+0x108
	.byte	0x1
	.value	0x1e2
	.uleb128 0x25
	.long	0x177d
	.uleb128 0x28
	.long	.Ldebug_ranges0+0x130
	.uleb128 0x29
	.long	0x1788
	.long	.LLST60
	.uleb128 0x29
	.long	0x1792
	.long	.LLST61
	.uleb128 0x29
	.long	0x179c
	.long	.LLST62
	.uleb128 0x29
	.long	0x17a7
	.long	.LLST63
	.uleb128 0x29
	.long	0x17b2
	.long	.LLST64
	.uleb128 0x29
	.long	0x17bd
	.long	.LLST65
	.byte	0x0
	.byte	0x0
	.uleb128 0x32
	.long	0x1743
	.long	.Ldebug_ranges0+0x158
	.uleb128 0x33
	.long	0x17cd
	.uleb128 0x33
	.long	0x17d8
	.uleb128 0x28
	.long	.Ldebug_ranges0+0x170
	.uleb128 0x33
	.long	0x1800
	.uleb128 0x33
	.long	0x180b
	.byte	0x0
	.byte	0x0
	.uleb128 0x1e
	.long	.LBB40
	.long	.LBE40
	.uleb128 0x33
	.long	0x1819
	.uleb128 0x33
	.long	0x1824
	.uleb128 0x1e
	.long	.LBB41
	.long	.LBE41
	.uleb128 0x33
	.long	0x184c
	.uleb128 0x33
	.long	0x1857
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x34
	.long	0x1865
	.long	.LASF265
	.byte	0x1
	.byte	0x51
	.byte	0x1
	.long	0x1163
	.byte	0x1
	.uleb128 0x35
	.string	"arg"
	.byte	0x1
	.byte	0x50
	.long	0x6f0
	.uleb128 0x36
	.string	"xp"
	.byte	0x1
	.byte	0x52
	.long	0x1163
	.uleb128 0x36
	.string	"fd"
	.byte	0x1
	.byte	0x53
	.long	0x56
	.uleb128 0x37
	.long	.LASF266
	.byte	0x1
	.byte	0x53
	.long	0x56
	.uleb128 0x37
	.long	.LASF267
	.byte	0x1
	.byte	0x53
	.long	0x56
	.uleb128 0x37
	.long	.LASF268
	.byte	0x1
	.byte	0x54
	.long	0xb0
	.uleb128 0x37
	.long	.LASF269
	.byte	0x1
	.byte	0x55
	.long	0xb0
	.uleb128 0x38
	.long	0x1818
	.uleb128 0x37
	.long	.LASF270
	.byte	0x1
	.byte	0x63
	.long	0x21
	.uleb128 0x37
	.long	.LASF271
	.byte	0x1
	.byte	0x63
	.long	0x21
	.uleb128 0x38
	.long	0x17ff
	.uleb128 0x37
	.long	.LASF272
	.byte	0x1
	.byte	0x63
	.long	0x288
	.uleb128 0x37
	.long	.LASF273
	.byte	0x1
	.byte	0x63
	.long	0x56
	.byte	0x0
	.uleb128 0x39
	.uleb128 0x37
	.long	.LASF274
	.byte	0x1
	.byte	0x63
	.long	0x288
	.uleb128 0x37
	.long	.LASF273
	.byte	0x1
	.byte	0x63
	.long	0x56
	.byte	0x0
	.byte	0x0
	.uleb128 0x39
	.uleb128 0x37
	.long	.LASF270
	.byte	0x1
	.byte	0x65
	.long	0x21
	.uleb128 0x37
	.long	.LASF271
	.byte	0x1
	.byte	0x65
	.long	0x21
	.uleb128 0x38
	.long	0x184b
	.uleb128 0x37
	.long	.LASF272
	.byte	0x1
	.byte	0x65
	.long	0x288
	.uleb128 0x37
	.long	.LASF273
	.byte	0x1
	.byte	0x65
	.long	0x56
	.byte	0x0
	.uleb128 0x39
	.uleb128 0x37
	.long	.LASF274
	.byte	0x1
	.byte	0x65
	.long	0x288
	.uleb128 0x37
	.long	.LASF273
	.byte	0x1
	.byte	0x65
	.long	0x56
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x3a
	.long	0x188e
	.byte	0x1
	.long	.LASF288
	.byte	0x1
	.value	0x1ec
	.byte	0x1
	.long	.LFB98
	.long	.LFE98
	.long	.LLST66
	.uleb128 0x2e
	.string	"m"
	.byte	0x1
	.value	0x1ed
	.long	0x6f0
	.long	.LLST67
	.byte	0x0
	.uleb128 0x3b
	.long	.LASF275
	.byte	0x3
	.byte	0x8e
	.long	0x302
	.byte	0x1
	.byte	0x1
	.uleb128 0x3b
	.long	.LASF276
	.byte	0x3
	.byte	0x8f
	.long	0x302
	.byte	0x1
	.byte	0x1
	.uleb128 0x3c
	.long	.LASF277
	.byte	0x2
	.value	0x165
	.long	0xf83
	.byte	0x1
	.byte	0x1
	.uleb128 0x3c
	.long	.LASF278
	.byte	0x2
	.value	0x28b
	.long	0x6c4
	.byte	0x1
	.byte	0x1
	.uleb128 0x3b
	.long	.LASF279
	.byte	0xe
	.byte	0x3c
	.long	0x6f0
	.byte	0x1
	.byte	0x1
	.uleb128 0xe
	.long	0x18e1
	.long	0x1109
	.uleb128 0xf
	.long	0x93
	.byte	0x8
	.byte	0x0
	.uleb128 0x1a
	.long	.LASF280
	.byte	0x1
	.byte	0x3d
	.long	0x18d1
	.byte	0x5
	.byte	0x3
	.long	audio_types
	.uleb128 0x1a
	.long	.LASF281
	.byte	0x1
	.byte	0x49
	.long	0x56
	.byte	0x5
	.byte	0x3
	.long	n_audio_types
	.uleb128 0x2d
	.long	.LASF282
	.byte	0x1
	.value	0x1d0
	.long	0xf83
	.byte	0x5
	.byte	0x3
	.long	Ladtype
	.uleb128 0x1a
	.long	.LASF283
	.byte	0x1
	.byte	0x4d
	.long	0x6f0
	.byte	0x5
	.byte	0x3
	.long	LinuxAudioError
	.uleb128 0xe
	.long	0x1936
	.long	0xf9a
	.uleb128 0xf
	.long	0x93
	.byte	0xa
	.byte	0x0
	.uleb128 0x2d
	.long	.LASF284
	.byte	0x1
	.value	0x1bc
	.long	0x1926
	.byte	0x5
	.byte	0x3
	.long	lad_methods
	.uleb128 0xe
	.long	0x1958
	.long	0xf9a
	.uleb128 0xf
	.long	0x93
	.byte	0x1
	.byte	0x0
	.uleb128 0x2d
	.long	.LASF285
	.byte	0x1
	.value	0x1e5
	.long	0x1948
	.byte	0x5
	.byte	0x3
	.long	linuxaudiodev_methods
	.byte	0x0
	.section	.debug_abbrev
	.uleb128 0x1
	.uleb128 0x11
	.byte	0x1
	.uleb128 0x10
	.uleb128 0x6
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x25
	.uleb128 0xe
	.uleb128 0x13
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0xe
	.byte	0x0
	.byte	0x0
	.uleb128 0x2
	.uleb128 0x16
	.byte	0x0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x3
	.uleb128 0x24
	.byte	0x0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.byte	0x0
	.byte	0x0
	.uleb128 0x4
	.uleb128 0x24
	.byte	0x0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.byte	0x0
	.byte	0x0
	.uleb128 0x5
	.uleb128 0xf
	.byte	0x0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x6
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x1
	.uleb128 0x13
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.byte	0x0
	.byte	0x0
	.uleb128 0x7
	.uleb128 0xd
	.byte	0x0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0x8
	.uleb128 0x26
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x9
	.uleb128 0xf
	.byte	0x0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0x0
	.byte	0x0
	.uleb128 0xa
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x1
	.uleb128 0x13
	.uleb128 0x27
	.uleb128 0xc
	.byte	0x0
	.byte	0x0
	.uleb128 0xb
	.uleb128 0x5
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0xc
	.uleb128 0x16
	.byte	0x0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.byte	0x0
	.byte	0x0
	.uleb128 0xd
	.uleb128 0xd
	.byte	0x0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0xe
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x1
	.uleb128 0x13
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0xf
	.uleb128 0x21
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0x0
	.byte	0x0
	.uleb128 0x10
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x1
	.uleb128 0x13
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.byte	0x0
	.byte	0x0
	.uleb128 0x11
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x1
	.uleb128 0x13
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x12
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x1
	.uleb128 0x13
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.byte	0x0
	.byte	0x0
	.uleb128 0x13
	.uleb128 0xd
	.byte	0x0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0x14
	.uleb128 0x16
	.byte	0x0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x15
	.uleb128 0xd
	.byte	0x0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0x16
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x1
	.uleb128 0x13
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
	.uleb128 0x6
	.byte	0x0
	.byte	0x0
	.uleb128 0x17
	.uleb128 0x5
	.byte	0x0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0x0
	.byte	0x0
	.uleb128 0x18
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x1
	.uleb128 0x13
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
	.uleb128 0x6
	.byte	0x0
	.byte	0x0
	.uleb128 0x19
	.uleb128 0x5
	.byte	0x0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0x0
	.byte	0x0
	.uleb128 0x1a
	.uleb128 0x34
	.byte	0x0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0x1b
	.uleb128 0x34
	.byte	0x0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0x0
	.byte	0x0
	.uleb128 0x1c
	.uleb128 0x34
	.byte	0x0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0x0
	.byte	0x0
	.uleb128 0x1d
	.uleb128 0x34
	.byte	0x0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0x1e
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x0
	.byte	0x0
	.uleb128 0x1f
	.uleb128 0x5
	.byte	0x0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0x20
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x1
	.uleb128 0x13
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
	.uleb128 0x6
	.byte	0x0
	.byte	0x0
	.uleb128 0x21
	.uleb128 0x5
	.byte	0x0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0x0
	.byte	0x0
	.uleb128 0x22
	.uleb128 0x34
	.byte	0x0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0x23
	.uleb128 0x34
	.byte	0x0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0x0
	.byte	0x0
	.uleb128 0x24
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x55
	.uleb128 0x6
	.uleb128 0x58
	.uleb128 0xb
	.uleb128 0x59
	.uleb128 0x5
	.byte	0x0
	.byte	0x0
	.uleb128 0x25
	.uleb128 0x5
	.byte	0x0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x26
	.uleb128 0x5
	.byte	0x0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0x0
	.byte	0x0
	.uleb128 0x27
	.uleb128 0x5
	.byte	0x0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0x28
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x6
	.byte	0x0
	.byte	0x0
	.uleb128 0x29
	.uleb128 0x34
	.byte	0x0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0x0
	.byte	0x0
	.uleb128 0x2a
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x1
	.uleb128 0x13
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x20
	.uleb128 0xb
	.byte	0x0
	.byte	0x0
	.uleb128 0x2b
	.uleb128 0x5
	.byte	0x0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x2c
	.uleb128 0x34
	.byte	0x0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x2d
	.uleb128 0x34
	.byte	0x0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0x2e
	.uleb128 0x34
	.byte	0x0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0x0
	.byte	0x0
	.uleb128 0x2f
	.uleb128 0x5
	.byte	0x0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0x30
	.uleb128 0x5
	.byte	0x0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0x31
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x1
	.uleb128 0x13
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x55
	.uleb128 0x6
	.uleb128 0x58
	.uleb128 0xb
	.uleb128 0x59
	.uleb128 0x5
	.byte	0x0
	.byte	0x0
	.uleb128 0x32
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x1
	.uleb128 0x13
	.uleb128 0x55
	.uleb128 0x6
	.byte	0x0
	.byte	0x0
	.uleb128 0x33
	.uleb128 0x34
	.byte	0x0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x34
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x1
	.uleb128 0x13
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x20
	.uleb128 0xb
	.byte	0x0
	.byte	0x0
	.uleb128 0x35
	.uleb128 0x5
	.byte	0x0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x36
	.uleb128 0x34
	.byte	0x0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x37
	.uleb128 0x34
	.byte	0x0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x38
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x1
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x39
	.uleb128 0xb
	.byte	0x1
	.byte	0x0
	.byte	0x0
	.uleb128 0x3a
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x1
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
	.uleb128 0x6
	.byte	0x0
	.byte	0x0
	.uleb128 0x3b
	.uleb128 0x34
	.byte	0x0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3c
	.uleb128 0xc
	.byte	0x0
	.byte	0x0
	.uleb128 0x3c
	.uleb128 0x34
	.byte	0x0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3c
	.uleb128 0xc
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.section	.debug_pubnames,"",@progbits
	.long	0x24
	.value	0x2
	.long	.Ldebug_info0
	.long	0x196b
	.long	0x1865
	.string	"initlinuxaudiodev"
	.long	0x0
	.section	.debug_aranges,"",@progbits
	.long	0x1c
	.value	0x2
	.long	.Ldebug_info0
	.byte	0x4
	.byte	0x0
	.value	0x0
	.value	0x0
	.long	.Ltext0
	.long	.Letext0-.Ltext0
	.long	0x0
	.long	0x0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.long	.LBB3-.Ltext0
	.long	.LBE3-.Ltext0
	.long	.LBB10-.Ltext0
	.long	.LBE10-.Ltext0
	.long	.LBB8-.Ltext0
	.long	.LBE8-.Ltext0
	.long	.LBB6-.Ltext0
	.long	.LBE6-.Ltext0
	.long	0x0
	.long	0x0
	.long	.LBB4-.Ltext0
	.long	.LBE4-.Ltext0
	.long	.LBB11-.Ltext0
	.long	.LBE11-.Ltext0
	.long	.LBB9-.Ltext0
	.long	.LBE9-.Ltext0
	.long	.LBB7-.Ltext0
	.long	.LBE7-.Ltext0
	.long	.LBB5-.Ltext0
	.long	.LBE5-.Ltext0
	.long	0x0
	.long	0x0
	.long	.LBB12-.Ltext0
	.long	.LBE12-.Ltext0
	.long	.LBB19-.Ltext0
	.long	.LBE19-.Ltext0
	.long	.LBB17-.Ltext0
	.long	.LBE17-.Ltext0
	.long	.LBB15-.Ltext0
	.long	.LBE15-.Ltext0
	.long	0x0
	.long	0x0
	.long	.LBB13-.Ltext0
	.long	.LBE13-.Ltext0
	.long	.LBB20-.Ltext0
	.long	.LBE20-.Ltext0
	.long	.LBB18-.Ltext0
	.long	.LBE18-.Ltext0
	.long	.LBB16-.Ltext0
	.long	.LBE16-.Ltext0
	.long	.LBB14-.Ltext0
	.long	.LBE14-.Ltext0
	.long	0x0
	.long	0x0
	.long	.LBB21-.Ltext0
	.long	.LBE21-.Ltext0
	.long	.LBB28-.Ltext0
	.long	.LBE28-.Ltext0
	.long	.LBB26-.Ltext0
	.long	.LBE26-.Ltext0
	.long	.LBB24-.Ltext0
	.long	.LBE24-.Ltext0
	.long	0x0
	.long	0x0
	.long	.LBB22-.Ltext0
	.long	.LBE22-.Ltext0
	.long	.LBB29-.Ltext0
	.long	.LBE29-.Ltext0
	.long	.LBB27-.Ltext0
	.long	.LBE27-.Ltext0
	.long	.LBB25-.Ltext0
	.long	.LBE25-.Ltext0
	.long	.LBB23-.Ltext0
	.long	.LBE23-.Ltext0
	.long	0x0
	.long	0x0
	.long	.LBB30-.Ltext0
	.long	.LBE30-.Ltext0
	.long	.LBB42-.Ltext0
	.long	.LBE42-.Ltext0
	.long	.LBB36-.Ltext0
	.long	.LBE36-.Ltext0
	.long	.LBB32-.Ltext0
	.long	.LBE32-.Ltext0
	.long	0x0
	.long	0x0
	.long	.LBB31-.Ltext0
	.long	.LBE31-.Ltext0
	.long	.LBB43-.Ltext0
	.long	.LBE43-.Ltext0
	.long	.LBB37-.Ltext0
	.long	.LBE37-.Ltext0
	.long	.LBB33-.Ltext0
	.long	.LBE33-.Ltext0
	.long	0x0
	.long	0x0
	.long	.LBB34-.Ltext0
	.long	.LBE34-.Ltext0
	.long	.LBB38-.Ltext0
	.long	.LBE38-.Ltext0
	.long	0x0
	.long	0x0
	.long	.LBB35-.Ltext0
	.long	.LBE35-.Ltext0
	.long	.LBB39-.Ltext0
	.long	.LBE39-.Ltext0
	.long	0x0
	.long	0x0
	.section	.debug_str,"MS",@progbits,1
.LASF211:
	.string	"PyMemberDef"
.LASF8:
	.string	"size_t"
.LASF224:
	.string	"fragstotal"
.LASF126:
	.string	"objobjproc"
.LASF156:
	.string	"nb_inplace_remainder"
.LASF132:
	.string	"nb_divide"
.LASF265:
	.string	"newladobject"
.LASF90:
	.string	"tp_iter"
.LASF206:
	.string	"PyMethodDef"
.LASF88:
	.string	"tp_richcompare"
.LASF147:
	.string	"nb_int"
.LASF28:
	.string	"_IO_save_end"
.LASF158:
	.string	"nb_inplace_lshift"
.LASF280:
	.string	"audio_types"
.LASF257:
	.string	"_ssize"
.LASF127:
	.string	"visitproc"
.LASF74:
	.string	"tp_repr"
.LASF171:
	.string	"sq_item"
.LASF267:
	.string	"imode"
.LASF21:
	.string	"_IO_write_base"
.LASF37:
	.string	"_lock"
.LASF130:
	.string	"nb_subtract"
.LASF144:
	.string	"nb_xor"
.LASF131:
	.string	"nb_multiply"
.LASF104:
	.string	"tp_is_gc"
.LASF92:
	.string	"tp_methods"
.LASF26:
	.string	"_IO_save_base"
.LASF240:
	.string	"self"
.LASF123:
	.string	"getwritebufferproc"
.LASF34:
	.string	"_cur_column"
.LASF66:
	.string	"tp_name"
.LASF277:
	.string	"PyType_Type"
.LASF44:
	.string	"_mode"
.LASF190:
	.string	"printfunc"
.LASF61:
	.string	"_object"
.LASF220:
	.string	"getter"
.LASF106:
	.string	"tp_mro"
.LASF114:
	.string	"ternaryfunc"
.LASF181:
	.string	"mp_ass_subscript"
.LASF62:
	.string	"ob_refcnt"
.LASF11:
	.string	"long int"
.LASF154:
	.string	"nb_inplace_multiply"
.LASF155:
	.string	"nb_inplace_divide"
.LASF234:
	.string	"lad_t"
.LASF48:
	.string	"_IO_marker"
.LASF167:
	.string	"PyNumberMethods"
.LASF195:
	.string	"cmpfunc"
.LASF2:
	.string	"short unsigned int"
.LASF225:
	.string	"fragsize"
.LASF232:
	.string	"x_ocount"
.LASF118:
	.string	"intintargfunc"
.LASF162:
	.string	"nb_inplace_or"
.LASF271:
	.string	"__s2_len"
.LASF201:
	.string	"descrgetfunc"
.LASF134:
	.string	"nb_divmod"
.LASF164:
	.string	"nb_true_divide"
.LASF4:
	.string	"signed char"
.LASF269:
	.string	"mode"
.LASF47:
	.string	"_IO_FILE"
.LASF98:
	.string	"tp_descr_set"
.LASF259:
	.string	"lad_obuffree"
.LASF108:
	.string	"tp_subclasses"
.LASF187:
	.string	"PyBufferProcs"
.LASF69:
	.string	"tp_dealloc"
.LASF1:
	.string	"unsigned char"
.LASF50:
	.string	"_sbuf"
.LASF263:
	.string	"lad_getattr"
.LASF166:
	.string	"nb_inplace_true_divide"
.LASF185:
	.string	"bf_getsegcount"
.LASF12:
	.string	"__off64_t"
.LASF95:
	.string	"tp_base"
.LASF231:
	.string	"x_icount"
.LASF133:
	.string	"nb_remainder"
.LASF184:
	.string	"bf_getwritebuffer"
.LASF15:
	.string	"char"
.LASF173:
	.string	"sq_ass_item"
.LASF46:
	.string	"_IO_lock_t"
.LASF89:
	.string	"tp_weaklistoffset"
.LASF78:
	.string	"tp_hash"
.LASF52:
	.string	"timeval"
.LASF226:
	.string	"bytes"
.LASF209:
	.string	"ml_flags"
.LASF286:
	.string	"GNU C 3.4.6 20060404 (Red Hat 3.4.6-11)"
.LASF83:
	.string	"tp_as_buffer"
.LASF215:
	.string	"flags"
.LASF18:
	.string	"_IO_read_ptr"
.LASF60:
	.string	"double"
.LASF149:
	.string	"nb_float"
.LASF218:
	.string	"PyTypeObject"
.LASF51:
	.string	"_pos"
.LASF275:
	.string	"stdin"
.LASF192:
	.string	"getattrofunc"
.LASF174:
	.string	"sq_ass_slice"
.LASF270:
	.string	"__s1_len"
.LASF81:
	.string	"tp_getattro"
.LASF172:
	.string	"sq_slice"
.LASF29:
	.string	"_markers"
.LASF122:
	.string	"getreadbufferproc"
.LASF120:
	.string	"intintobjargproc"
.LASF55:
	.string	"__fd_mask"
.LASF268:
	.string	"basedev"
.LASF279:
	.string	"PyExc_ValueError"
.LASF237:
	.string	"a_name"
.LASF96:
	.string	"tp_dict"
.LASF54:
	.string	"tv_usec"
.LASF261:
	.string	"lad_getptr"
.LASF141:
	.string	"nb_lshift"
.LASF249:
	.string	"lad_close"
.LASF252:
	.string	"rate"
.LASF112:
	.string	"unaryfunc"
.LASF253:
	.string	"ssize"
.LASF204:
	.string	"newfunc"
.LASF77:
	.string	"tp_as_mapping"
.LASF72:
	.string	"tp_setattr"
.LASF152:
	.string	"nb_inplace_add"
.LASF128:
	.string	"traverseproc"
.LASF161:
	.string	"nb_inplace_xor"
.LASF217:
	.string	"closure"
.LASF80:
	.string	"tp_str"
.LASF3:
	.string	"long unsigned int"
.LASF97:
	.string	"tp_descr_get"
.LASF239:
	.string	"lad_read"
.LASF136:
	.string	"nb_negative"
.LASF32:
	.string	"_flags2"
.LASF105:
	.string	"tp_bases"
.LASF24:
	.string	"_IO_buf_base"
.LASF20:
	.string	"_IO_read_base"
.LASF169:
	.string	"sq_concat"
.LASF189:
	.string	"destructor"
.LASF45:
	.string	"_unused2"
.LASF9:
	.string	"__quad_t"
.LASF177:
	.string	"sq_inplace_repeat"
.LASF84:
	.string	"tp_flags"
.LASF33:
	.string	"_old_offset"
.LASF85:
	.string	"tp_doc"
.LASF241:
	.string	"args"
.LASF274:
	.string	"__s1"
.LASF264:
	.string	"ladopen"
.LASF6:
	.string	"long long int"
.LASF260:
	.string	"lad_flush"
.LASF247:
	.string	"__d0"
.LASF248:
	.string	"__d1"
.LASF208:
	.string	"ml_meth"
.LASF23:
	.string	"_IO_write_end"
.LASF65:
	.string	"ob_size"
.LASF111:
	.string	"PyObject"
.LASF124:
	.string	"getsegcountproc"
.LASF125:
	.string	"getcharbufferproc"
.LASF91:
	.string	"tp_iternext"
.LASF151:
	.string	"nb_hex"
.LASF227:
	.string	"count_info"
.LASF79:
	.string	"tp_call"
.LASF101:
	.string	"tp_alloc"
.LASF233:
	.string	"x_afmts"
.LASF243:
	.string	"count"
.LASF93:
	.string	"tp_members"
.LASF223:
	.string	"fragments"
.LASF219:
	.string	"PyCFunction"
.LASF258:
	.string	"lad_obufcount"
.LASF115:
	.string	"inquiry"
.LASF143:
	.string	"nb_and"
.LASF49:
	.string	"_next"
.LASF0:
	.string	"unsigned int"
.LASF229:
	.string	"x_fd"
.LASF67:
	.string	"tp_basicsize"
.LASF285:
	.string	"linuxaudiodev_methods"
.LASF39:
	.string	"__pad1"
.LASF40:
	.string	"__pad2"
.LASF42:
	.string	"__pad4"
.LASF43:
	.string	"__pad5"
.LASF202:
	.string	"descrsetfunc"
.LASF14:
	.string	"__suseconds_t"
.LASF121:
	.string	"objobjargproc"
.LASF193:
	.string	"setattrfunc"
.LASF182:
	.string	"PyMappingMethods"
.LASF17:
	.string	"_flags"
.LASF287:
	.string	"/home/louis/Desktop/Python-2.4.5/Modules/linuxaudiodev.c"
.LASF288:
	.string	"initlinuxaudiodev"
.LASF214:
	.string	"offset"
.LASF235:
	.string	"a_bps"
.LASF138:
	.string	"nb_absolute"
.LASF82:
	.string	"tp_setattro"
.LASF199:
	.string	"getiterfunc"
.LASF107:
	.string	"tp_cache"
.LASF262:
	.string	"info"
.LASF176:
	.string	"sq_inplace_concat"
.LASF213:
	.string	"type"
.LASF205:
	.string	"allocfunc"
.LASF140:
	.string	"nb_invert"
.LASF56:
	.string	"fds_bits"
.LASF109:
	.string	"tp_weaklist"
.LASF59:
	.string	"long double"
.LASF119:
	.string	"intobjargproc"
.LASF70:
	.string	"tp_print"
.LASF16:
	.string	"FILE"
.LASF238:
	.string	"lad_dealloc"
.LASF38:
	.string	"_offset"
.LASF146:
	.string	"nb_coerce"
.LASF186:
	.string	"bf_getcharbuffer"
.LASF250:
	.string	"lad_fileno"
.LASF100:
	.string	"tp_init"
.LASF163:
	.string	"nb_floor_divide"
.LASF242:
	.string	"size"
.LASF7:
	.string	"long long unsigned int"
.LASF73:
	.string	"tp_compare"
.LASF87:
	.string	"tp_clear"
.LASF203:
	.string	"initproc"
.LASF10:
	.string	"__off_t"
.LASF30:
	.string	"_chain"
.LASF244:
	.string	"lad_write"
.LASF216:
	.string	"PyGetSetDef"
.LASF180:
	.string	"mp_subscript"
.LASF142:
	.string	"nb_rshift"
.LASF64:
	.string	"_typeobject"
.LASF236:
	.string	"a_fmt"
.LASF160:
	.string	"nb_inplace_and"
.LASF188:
	.string	"freefunc"
.LASF175:
	.string	"sq_contains"
.LASF103:
	.string	"tp_free"
.LASF13:
	.string	"__time_t"
.LASF94:
	.string	"tp_getset"
.LASF137:
	.string	"nb_positive"
.LASF110:
	.string	"tp_del"
.LASF76:
	.string	"tp_as_sequence"
.LASF113:
	.string	"binaryfunc"
.LASF27:
	.string	"_IO_backup_base"
.LASF36:
	.string	"_shortbuf"
.LASF200:
	.string	"iternextfunc"
.LASF148:
	.string	"nb_long"
.LASF116:
	.string	"coercion"
.LASF117:
	.string	"intargfunc"
.LASF198:
	.string	"richcmpfunc"
.LASF197:
	.string	"hashfunc"
.LASF284:
	.string	"lad_methods"
.LASF71:
	.string	"tp_getattr"
.LASF25:
	.string	"_IO_buf_end"
.LASF212:
	.string	"name"
.LASF278:
	.string	"_Py_NoneStruct"
.LASF153:
	.string	"nb_inplace_subtract"
.LASF5:
	.string	"short int"
.LASF221:
	.string	"setter"
.LASF282:
	.string	"Ladtype"
.LASF178:
	.string	"PySequenceMethods"
.LASF68:
	.string	"tp_itemsize"
.LASF245:
	.string	"write_set_fds"
.LASF222:
	.string	"audio_buf_info"
.LASF228:
	.string	"blocks"
.LASF35:
	.string	"_vtable_offset"
.LASF159:
	.string	"nb_inplace_rshift"
.LASF75:
	.string	"tp_as_number"
.LASF165:
	.string	"nb_inplace_floor_divide"
.LASF196:
	.string	"reprfunc"
.LASF251:
	.string	"lad_setparameters"
.LASF194:
	.string	"setattrofunc"
.LASF191:
	.string	"getattrfunc"
.LASF57:
	.string	"fd_set"
.LASF145:
	.string	"nb_or"
.LASF150:
	.string	"nb_oct"
.LASF281:
	.string	"n_audio_types"
.LASF157:
	.string	"nb_inplace_power"
.LASF210:
	.string	"ml_doc"
.LASF183:
	.string	"bf_getreadbuffer"
.LASF19:
	.string	"_IO_read_end"
.LASF230:
	.string	"x_mode"
.LASF256:
	.string	"lad_bufsize"
.LASF266:
	.string	"afmts"
.LASF129:
	.string	"nb_add"
.LASF179:
	.string	"mp_length"
.LASF58:
	.string	"uint32_t"
.LASF139:
	.string	"nb_nonzero"
.LASF31:
	.string	"_fileno"
.LASF102:
	.string	"tp_new"
.LASF86:
	.string	"tp_traverse"
.LASF168:
	.string	"sq_length"
.LASF63:
	.string	"ob_type"
.LASF276:
	.string	"stdout"
.LASF170:
	.string	"sq_repeat"
.LASF22:
	.string	"_IO_write_ptr"
.LASF246:
	.string	"select_retval"
.LASF273:
	.string	"__result"
.LASF135:
	.string	"nb_power"
.LASF283:
	.string	"LinuxAudioError"
.LASF41:
	.string	"__pad3"
.LASF53:
	.string	"tv_sec"
.LASF207:
	.string	"ml_name"
.LASF254:
	.string	"nchannels"
.LASF99:
	.string	"tp_dictoffset"
.LASF272:
	.string	"__s2"
.LASF255:
	.string	"emulate"
	.section	.note.GNU-stack,"",@progbits
	.ident	"GCC: (GNU) 3.4.6 20060404 (Red Hat 3.4.6-11)"
