	.file	"infback.c"
	.text
	.p2align 2,,3
# ----------------------
	.globl	inflateBackInit_
	.type	inflateBackInit_, @function
inflateBackInit_:
	pushl     %ebp
	movl      %esp, %ebp
	pushl     %edi
	pushl     %esi
	pushl     %ebx
	subl      $12, %esp
	movl      20(%ebp), %eax
	call      .L10
.L10:
	popl      %ebx
	addl      $_GLOBAL_OFFSET_TABLE_+[.-.L10], %ebx
	testl     %eax, %eax
	movl      8(%ebp), %esi
	movl      16(%ebp), %edi
	je        .L3
	cmpb      $49, (%eax)
	je        .L9
.L3:
	movl      $-6, %eax
.L1:
	leal      -12(%ebp), %esp
	popl      %ebx
	popl      %esi
	popl      %edi
	leave     
	ret       
	.p2align 2,,3
.L9:
	cmpl      $56, 24(%ebp)
	jne       .L3
	testl     %esi, %esi
	je        .L5
	testl     %edi, %edi
	je        .L5
	cmpl      $7, 12(%ebp)
	jle       .L5
	cmpl      $15, 12(%ebp)
	jle       .L4
.L5:
	movl      $-2, %eax
	jmp       .L1
.L4:
	movl      32(%esi), %edx
	testl     %edx, %edx
	movl      $0, 24(%esi)
	jne       .L6
	leal      zcalloc@GOTOFF(%ebx), %ecx
	movl      %ecx, 32(%esi)
	movl      $0, 40(%esi)
	movl      %ecx, %edx
.L6:
	movl      36(%esi), %eax
	testl     %eax, %eax
	jne       .L7
	leal      zcfree@GOTOFF(%ebx), %ecx
	movl      %ecx, 36(%esi)
.L7:
	pushl     %eax
	pushl     $7116
	pushl     $1
	pushl     40(%esi)
	call      *%edx
	movl      %eax, %edx
	addl      $16, %esp
	testl     %edx, %edx
	movl      $-4, %eax
	je        .L1
	movl      12(%ebp), %ecx
	movl      %edx, 28(%esi)
	movl      %ecx, 36(%edx)
	movl      $1, %esi
	movb      12(%ebp), %cl
	sall      %cl, %esi
	movl      $32768, 20(%edx)
	movl      %esi, 40(%edx)
	movl      %edi, 52(%edx)
	movl      $0, 48(%edx)
	movl      $0, 44(%edx)
	xorl      %eax, %eax
	jmp       .L1
	.size	inflateBackInit_, .-inflateBackInit_
# ----------------------
	.section       .rodata
	.align 32
	.local	order.0
	.type	order.0, @object
order.0:
	.value	16
	.value	17
	.value	18
	.value	0
	.value	8
	.value	7
	.value	9
	.value	6
	.value	10
	.value	5
	.value	11
	.value	4
	.value	12
	.value	3
	.value	13
	.value	2
	.value	14
	.value	1
	.value	15
	.size	order.0, 38
# ----------------------
	.align 32
	.local	lenfix.1
	.type	lenfix.1, @object
lenfix.1:
	.byte	96
	.byte	7
	.value	0
	.byte	0
	.byte	8
	.value	80
	.byte	0
	.byte	8
	.value	16
	.byte	20
	.byte	8
	.value	115
	.byte	18
	.byte	7
	.value	31
	.byte	0
	.byte	8
	.value	112
	.byte	0
	.byte	8
	.value	48
	.byte	0
	.byte	9
	.value	192
	.byte	16
	.byte	7
	.value	10
	.byte	0
	.byte	8
	.value	96
	.byte	0
	.byte	8
	.value	32
	.byte	0
	.byte	9
	.value	160
	.byte	0
	.byte	8
	.value	0
	.byte	0
	.byte	8
	.value	128
	.byte	0
	.byte	8
	.value	64
	.byte	0
	.byte	9
	.value	224
	.byte	16
	.byte	7
	.value	6
	.byte	0
	.byte	8
	.value	88
	.byte	0
	.byte	8
	.value	24
	.byte	0
	.byte	9
	.value	144
	.byte	19
	.byte	7
	.value	59
	.byte	0
	.byte	8
	.value	120
	.byte	0
	.byte	8
	.value	56
	.byte	0
	.byte	9
	.value	208
	.byte	17
	.byte	7
	.value	17
	.byte	0
	.byte	8
	.value	104
	.byte	0
	.byte	8
	.value	40
	.byte	0
	.byte	9
	.value	176
	.byte	0
	.byte	8
	.value	8
	.byte	0
	.byte	8
	.value	136
	.byte	0
	.byte	8
	.value	72
	.byte	0
	.byte	9
	.value	240
	.byte	16
	.byte	7
	.value	4
	.byte	0
	.byte	8
	.value	84
	.byte	0
	.byte	8
	.value	20
	.byte	21
	.byte	8
	.value	227
	.byte	19
	.byte	7
	.value	43
	.byte	0
	.byte	8
	.value	116
	.byte	0
	.byte	8
	.value	52
	.byte	0
	.byte	9
	.value	200
	.byte	17
	.byte	7
	.value	13
	.byte	0
	.byte	8
	.value	100
	.byte	0
	.byte	8
	.value	36
	.byte	0
	.byte	9
	.value	168
	.byte	0
	.byte	8
	.value	4
	.byte	0
	.byte	8
	.value	132
	.byte	0
	.byte	8
	.value	68
	.byte	0
	.byte	9
	.value	232
	.byte	16
	.byte	7
	.value	8
	.byte	0
	.byte	8
	.value	92
	.byte	0
	.byte	8
	.value	28
	.byte	0
	.byte	9
	.value	152
	.byte	20
	.byte	7
	.value	83
	.byte	0
	.byte	8
	.value	124
	.byte	0
	.byte	8
	.value	60
	.byte	0
	.byte	9
	.value	216
	.byte	18
	.byte	7
	.value	23
	.byte	0
	.byte	8
	.value	108
	.byte	0
	.byte	8
	.value	44
	.byte	0
	.byte	9
	.value	184
	.byte	0
	.byte	8
	.value	12
	.byte	0
	.byte	8
	.value	140
	.byte	0
	.byte	8
	.value	76
	.byte	0
	.byte	9
	.value	248
	.byte	16
	.byte	7
	.value	3
	.byte	0
	.byte	8
	.value	82
	.byte	0
	.byte	8
	.value	18
	.byte	21
	.byte	8
	.value	163
	.byte	19
	.byte	7
	.value	35
	.byte	0
	.byte	8
	.value	114
	.byte	0
	.byte	8
	.value	50
	.byte	0
	.byte	9
	.value	196
	.byte	17
	.byte	7
	.value	11
	.byte	0
	.byte	8
	.value	98
	.byte	0
	.byte	8
	.value	34
	.byte	0
	.byte	9
	.value	164
	.byte	0
	.byte	8
	.value	2
	.byte	0
	.byte	8
	.value	130
	.byte	0
	.byte	8
	.value	66
	.byte	0
	.byte	9
	.value	228
	.byte	16
	.byte	7
	.value	7
	.byte	0
	.byte	8
	.value	90
	.byte	0
	.byte	8
	.value	26
	.byte	0
	.byte	9
	.value	148
	.byte	20
	.byte	7
	.value	67
	.byte	0
	.byte	8
	.value	122
	.byte	0
	.byte	8
	.value	58
	.byte	0
	.byte	9
	.value	212
	.byte	18
	.byte	7
	.value	19
	.byte	0
	.byte	8
	.value	106
	.byte	0
	.byte	8
	.value	42
	.byte	0
	.byte	9
	.value	180
	.byte	0
	.byte	8
	.value	10
	.byte	0
	.byte	8
	.value	138
	.byte	0
	.byte	8
	.value	74
	.byte	0
	.byte	9
	.value	244
	.byte	16
	.byte	7
	.value	5
	.byte	0
	.byte	8
	.value	86
	.byte	0
	.byte	8
	.value	22
	.byte	64
	.byte	8
	.value	0
	.byte	19
	.byte	7
	.value	51
	.byte	0
	.byte	8
	.value	118
	.byte	0
	.byte	8
	.value	54
	.byte	0
	.byte	9
	.value	204
	.byte	17
	.byte	7
	.value	15
	.byte	0
	.byte	8
	.value	102
	.byte	0
	.byte	8
	.value	38
	.byte	0
	.byte	9
	.value	172
	.byte	0
	.byte	8
	.value	6
	.byte	0
	.byte	8
	.value	134
	.byte	0
	.byte	8
	.value	70
	.byte	0
	.byte	9
	.value	236
	.byte	16
	.byte	7
	.value	9
	.byte	0
	.byte	8
	.value	94
	.byte	0
	.byte	8
	.value	30
	.byte	0
	.byte	9
	.value	156
	.byte	20
	.byte	7
	.value	99
	.byte	0
	.byte	8
	.value	126
	.byte	0
	.byte	8
	.value	62
	.byte	0
	.byte	9
	.value	220
	.byte	18
	.byte	7
	.value	27
	.byte	0
	.byte	8
	.value	110
	.byte	0
	.byte	8
	.value	46
	.byte	0
	.byte	9
	.value	188
	.byte	0
	.byte	8
	.value	14
	.byte	0
	.byte	8
	.value	142
	.byte	0
	.byte	8
	.value	78
	.byte	0
	.byte	9
	.value	252
	.byte	96
	.byte	7
	.value	0
	.byte	0
	.byte	8
	.value	81
	.byte	0
	.byte	8
	.value	17
	.byte	21
	.byte	8
	.value	131
	.byte	18
	.byte	7
	.value	31
	.byte	0
	.byte	8
	.value	113
	.byte	0
	.byte	8
	.value	49
	.byte	0
	.byte	9
	.value	194
	.byte	16
	.byte	7
	.value	10
	.byte	0
	.byte	8
	.value	97
	.byte	0
	.byte	8
	.value	33
	.byte	0
	.byte	9
	.value	162
	.byte	0
	.byte	8
	.value	1
	.byte	0
	.byte	8
	.value	129
	.byte	0
	.byte	8
	.value	65
	.byte	0
	.byte	9
	.value	226
	.byte	16
	.byte	7
	.value	6
	.byte	0
	.byte	8
	.value	89
	.byte	0
	.byte	8
	.value	25
	.byte	0
	.byte	9
	.value	146
	.byte	19
	.byte	7
	.value	59
	.byte	0
	.byte	8
	.value	121
	.byte	0
	.byte	8
	.value	57
	.byte	0
	.byte	9
	.value	210
	.byte	17
	.byte	7
	.value	17
	.byte	0
	.byte	8
	.value	105
	.byte	0
	.byte	8
	.value	41
	.byte	0
	.byte	9
	.value	178
	.byte	0
	.byte	8
	.value	9
	.byte	0
	.byte	8
	.value	137
	.byte	0
	.byte	8
	.value	73
	.byte	0
	.byte	9
	.value	242
	.byte	16
	.byte	7
	.value	4
	.byte	0
	.byte	8
	.value	85
	.byte	0
	.byte	8
	.value	21
	.byte	16
	.byte	8
	.value	258
	.byte	19
	.byte	7
	.value	43
	.byte	0
	.byte	8
	.value	117
	.byte	0
	.byte	8
	.value	53
	.byte	0
	.byte	9
	.value	202
	.byte	17
	.byte	7
	.value	13
	.byte	0
	.byte	8
	.value	101
	.byte	0
	.byte	8
	.value	37
	.byte	0
	.byte	9
	.value	170
	.byte	0
	.byte	8
	.value	5
	.byte	0
	.byte	8
	.value	133
	.byte	0
	.byte	8
	.value	69
	.byte	0
	.byte	9
	.value	234
	.byte	16
	.byte	7
	.value	8
	.byte	0
	.byte	8
	.value	93
	.byte	0
	.byte	8
	.value	29
	.byte	0
	.byte	9
	.value	154
	.byte	20
	.byte	7
	.value	83
	.byte	0
	.byte	8
	.value	125
	.byte	0
	.byte	8
	.value	61
	.byte	0
	.byte	9
	.value	218
	.byte	18
	.byte	7
	.value	23
	.byte	0
	.byte	8
	.value	109
	.byte	0
	.byte	8
	.value	45
	.byte	0
	.byte	9
	.value	186
	.byte	0
	.byte	8
	.value	13
	.byte	0
	.byte	8
	.value	141
	.byte	0
	.byte	8
	.value	77
	.byte	0
	.byte	9
	.value	250
	.byte	16
	.byte	7
	.value	3
	.byte	0
	.byte	8
	.value	83
	.byte	0
	.byte	8
	.value	19
	.byte	21
	.byte	8
	.value	195
	.byte	19
	.byte	7
	.value	35
	.byte	0
	.byte	8
	.value	115
	.byte	0
	.byte	8
	.value	51
	.byte	0
	.byte	9
	.value	198
	.byte	17
	.byte	7
	.value	11
	.byte	0
	.byte	8
	.value	99
	.byte	0
	.byte	8
	.value	35
	.byte	0
	.byte	9
	.value	166
	.byte	0
	.byte	8
	.value	3
	.byte	0
	.byte	8
	.value	131
	.byte	0
	.byte	8
	.value	67
	.byte	0
	.byte	9
	.value	230
	.byte	16
	.byte	7
	.value	7
	.byte	0
	.byte	8
	.value	91
	.byte	0
	.byte	8
	.value	27
	.byte	0
	.byte	9
	.value	150
	.byte	20
	.byte	7
	.value	67
	.byte	0
	.byte	8
	.value	123
	.byte	0
	.byte	8
	.value	59
	.byte	0
	.byte	9
	.value	214
	.byte	18
	.byte	7
	.value	19
	.byte	0
	.byte	8
	.value	107
	.byte	0
	.byte	8
	.value	43
	.byte	0
	.byte	9
	.value	182
	.byte	0
	.byte	8
	.value	11
	.byte	0
	.byte	8
	.value	139
	.byte	0
	.byte	8
	.value	75
	.byte	0
	.byte	9
	.value	246
	.byte	16
	.byte	7
	.value	5
	.byte	0
	.byte	8
	.value	87
	.byte	0
	.byte	8
	.value	23
	.byte	64
	.byte	8
	.value	0
	.byte	19
	.byte	7
	.value	51
	.byte	0
	.byte	8
	.value	119
	.byte	0
	.byte	8
	.value	55
	.byte	0
	.byte	9
	.value	206
	.byte	17
	.byte	7
	.value	15
	.byte	0
	.byte	8
	.value	103
	.byte	0
	.byte	8
	.value	39
	.byte	0
	.byte	9
	.value	174
	.byte	0
	.byte	8
	.value	7
	.byte	0
	.byte	8
	.value	135
	.byte	0
	.byte	8
	.value	71
	.byte	0
	.byte	9
	.value	238
	.byte	16
	.byte	7
	.value	9
	.byte	0
	.byte	8
	.value	95
	.byte	0
	.byte	8
	.value	31
	.byte	0
	.byte	9
	.value	158
	.byte	20
	.byte	7
	.value	99
	.byte	0
	.byte	8
	.value	127
	.byte	0
	.byte	8
	.value	63
	.byte	0
	.byte	9
	.value	222
	.byte	18
	.byte	7
	.value	27
	.byte	0
	.byte	8
	.value	111
	.byte	0
	.byte	8
	.value	47
	.byte	0
	.byte	9
	.value	190
	.byte	0
	.byte	8
	.value	15
	.byte	0
	.byte	8
	.value	143
	.byte	0
	.byte	8
	.value	79
	.byte	0
	.byte	9
	.value	254
	.byte	96
	.byte	7
	.value	0
	.byte	0
	.byte	8
	.value	80
	.byte	0
	.byte	8
	.value	16
	.byte	20
	.byte	8
	.value	115
	.byte	18
	.byte	7
	.value	31
	.byte	0
	.byte	8
	.value	112
	.byte	0
	.byte	8
	.value	48
	.byte	0
	.byte	9
	.value	193
	.byte	16
	.byte	7
	.value	10
	.byte	0
	.byte	8
	.value	96
	.byte	0
	.byte	8
	.value	32
	.byte	0
	.byte	9
	.value	161
	.byte	0
	.byte	8
	.value	0
	.byte	0
	.byte	8
	.value	128
	.byte	0
	.byte	8
	.value	64
	.byte	0
	.byte	9
	.value	225
	.byte	16
	.byte	7
	.value	6
	.byte	0
	.byte	8
	.value	88
	.byte	0
	.byte	8
	.value	24
	.byte	0
	.byte	9
	.value	145
	.byte	19
	.byte	7
	.value	59
	.byte	0
	.byte	8
	.value	120
	.byte	0
	.byte	8
	.value	56
	.byte	0
	.byte	9
	.value	209
	.byte	17
	.byte	7
	.value	17
	.byte	0
	.byte	8
	.value	104
	.byte	0
	.byte	8
	.value	40
	.byte	0
	.byte	9
	.value	177
	.byte	0
	.byte	8
	.value	8
	.byte	0
	.byte	8
	.value	136
	.byte	0
	.byte	8
	.value	72
	.byte	0
	.byte	9
	.value	241
	.byte	16
	.byte	7
	.value	4
	.byte	0
	.byte	8
	.value	84
	.byte	0
	.byte	8
	.value	20
	.byte	21
	.byte	8
	.value	227
	.byte	19
	.byte	7
	.value	43
	.byte	0
	.byte	8
	.value	116
	.byte	0
	.byte	8
	.value	52
	.byte	0
	.byte	9
	.value	201
	.byte	17
	.byte	7
	.value	13
	.byte	0
	.byte	8
	.value	100
	.byte	0
	.byte	8
	.value	36
	.byte	0
	.byte	9
	.value	169
	.byte	0
	.byte	8
	.value	4
	.byte	0
	.byte	8
	.value	132
	.byte	0
	.byte	8
	.value	68
	.byte	0
	.byte	9
	.value	233
	.byte	16
	.byte	7
	.value	8
	.byte	0
	.byte	8
	.value	92
	.byte	0
	.byte	8
	.value	28
	.byte	0
	.byte	9
	.value	153
	.byte	20
	.byte	7
	.value	83
	.byte	0
	.byte	8
	.value	124
	.byte	0
	.byte	8
	.value	60
	.byte	0
	.byte	9
	.value	217
	.byte	18
	.byte	7
	.value	23
	.byte	0
	.byte	8
	.value	108
	.byte	0
	.byte	8
	.value	44
	.byte	0
	.byte	9
	.value	185
	.byte	0
	.byte	8
	.value	12
	.byte	0
	.byte	8
	.value	140
	.byte	0
	.byte	8
	.value	76
	.byte	0
	.byte	9
	.value	249
	.byte	16
	.byte	7
	.value	3
	.byte	0
	.byte	8
	.value	82
	.byte	0
	.byte	8
	.value	18
	.byte	21
	.byte	8
	.value	163
	.byte	19
	.byte	7
	.value	35
	.byte	0
	.byte	8
	.value	114
	.byte	0
	.byte	8
	.value	50
	.byte	0
	.byte	9
	.value	197
	.byte	17
	.byte	7
	.value	11
	.byte	0
	.byte	8
	.value	98
	.byte	0
	.byte	8
	.value	34
	.byte	0
	.byte	9
	.value	165
	.byte	0
	.byte	8
	.value	2
	.byte	0
	.byte	8
	.value	130
	.byte	0
	.byte	8
	.value	66
	.byte	0
	.byte	9
	.value	229
	.byte	16
	.byte	7
	.value	7
	.byte	0
	.byte	8
	.value	90
	.byte	0
	.byte	8
	.value	26
	.byte	0
	.byte	9
	.value	149
	.byte	20
	.byte	7
	.value	67
	.byte	0
	.byte	8
	.value	122
	.byte	0
	.byte	8
	.value	58
	.byte	0
	.byte	9
	.value	213
	.byte	18
	.byte	7
	.value	19
	.byte	0
	.byte	8
	.value	106
	.byte	0
	.byte	8
	.value	42
	.byte	0
	.byte	9
	.value	181
	.byte	0
	.byte	8
	.value	10
	.byte	0
	.byte	8
	.value	138
	.byte	0
	.byte	8
	.value	74
	.byte	0
	.byte	9
	.value	245
	.byte	16
	.byte	7
	.value	5
	.byte	0
	.byte	8
	.value	86
	.byte	0
	.byte	8
	.value	22
	.byte	64
	.byte	8
	.value	0
	.byte	19
	.byte	7
	.value	51
	.byte	0
	.byte	8
	.value	118
	.byte	0
	.byte	8
	.value	54
	.byte	0
	.byte	9
	.value	205
	.byte	17
	.byte	7
	.value	15
	.byte	0
	.byte	8
	.value	102
	.byte	0
	.byte	8
	.value	38
	.byte	0
	.byte	9
	.value	173
	.byte	0
	.byte	8
	.value	6
	.byte	0
	.byte	8
	.value	134
	.byte	0
	.byte	8
	.value	70
	.byte	0
	.byte	9
	.value	237
	.byte	16
	.byte	7
	.value	9
	.byte	0
	.byte	8
	.value	94
	.byte	0
	.byte	8
	.value	30
	.byte	0
	.byte	9
	.value	157
	.byte	20
	.byte	7
	.value	99
	.byte	0
	.byte	8
	.value	126
	.byte	0
	.byte	8
	.value	62
	.byte	0
	.byte	9
	.value	221
	.byte	18
	.byte	7
	.value	27
	.byte	0
	.byte	8
	.value	110
	.byte	0
	.byte	8
	.value	46
	.byte	0
	.byte	9
	.value	189
	.byte	0
	.byte	8
	.value	14
	.byte	0
	.byte	8
	.value	142
	.byte	0
	.byte	8
	.value	78
	.byte	0
	.byte	9
	.value	253
	.byte	96
	.byte	7
	.value	0
	.byte	0
	.byte	8
	.value	81
	.byte	0
	.byte	8
	.value	17
	.byte	21
	.byte	8
	.value	131
	.byte	18
	.byte	7
	.value	31
	.byte	0
	.byte	8
	.value	113
	.byte	0
	.byte	8
	.value	49
	.byte	0
	.byte	9
	.value	195
	.byte	16
	.byte	7
	.value	10
	.byte	0
	.byte	8
	.value	97
	.byte	0
	.byte	8
	.value	33
	.byte	0
	.byte	9
	.value	163
	.byte	0
	.byte	8
	.value	1
	.byte	0
	.byte	8
	.value	129
	.byte	0
	.byte	8
	.value	65
	.byte	0
	.byte	9
	.value	227
	.byte	16
	.byte	7
	.value	6
	.byte	0
	.byte	8
	.value	89
	.byte	0
	.byte	8
	.value	25
	.byte	0
	.byte	9
	.value	147
	.byte	19
	.byte	7
	.value	59
	.byte	0
	.byte	8
	.value	121
	.byte	0
	.byte	8
	.value	57
	.byte	0
	.byte	9
	.value	211
	.byte	17
	.byte	7
	.value	17
	.byte	0
	.byte	8
	.value	105
	.byte	0
	.byte	8
	.value	41
	.byte	0
	.byte	9
	.value	179
	.byte	0
	.byte	8
	.value	9
	.byte	0
	.byte	8
	.value	137
	.byte	0
	.byte	8
	.value	73
	.byte	0
	.byte	9
	.value	243
	.byte	16
	.byte	7
	.value	4
	.byte	0
	.byte	8
	.value	85
	.byte	0
	.byte	8
	.value	21
	.byte	16
	.byte	8
	.value	258
	.byte	19
	.byte	7
	.value	43
	.byte	0
	.byte	8
	.value	117
	.byte	0
	.byte	8
	.value	53
	.byte	0
	.byte	9
	.value	203
	.byte	17
	.byte	7
	.value	13
	.byte	0
	.byte	8
	.value	101
	.byte	0
	.byte	8
	.value	37
	.byte	0
	.byte	9
	.value	171
	.byte	0
	.byte	8
	.value	5
	.byte	0
	.byte	8
	.value	133
	.byte	0
	.byte	8
	.value	69
	.byte	0
	.byte	9
	.value	235
	.byte	16
	.byte	7
	.value	8
	.byte	0
	.byte	8
	.value	93
	.byte	0
	.byte	8
	.value	29
	.byte	0
	.byte	9
	.value	155
	.byte	20
	.byte	7
	.value	83
	.byte	0
	.byte	8
	.value	125
	.byte	0
	.byte	8
	.value	61
	.byte	0
	.byte	9
	.value	219
	.byte	18
	.byte	7
	.value	23
	.byte	0
	.byte	8
	.value	109
	.byte	0
	.byte	8
	.value	45
	.byte	0
	.byte	9
	.value	187
	.byte	0
	.byte	8
	.value	13
	.byte	0
	.byte	8
	.value	141
	.byte	0
	.byte	8
	.value	77
	.byte	0
	.byte	9
	.value	251
	.byte	16
	.byte	7
	.value	3
	.byte	0
	.byte	8
	.value	83
	.byte	0
	.byte	8
	.value	19
	.byte	21
	.byte	8
	.value	195
	.byte	19
	.byte	7
	.value	35
	.byte	0
	.byte	8
	.value	115
	.byte	0
	.byte	8
	.value	51
	.byte	0
	.byte	9
	.value	199
	.byte	17
	.byte	7
	.value	11
	.byte	0
	.byte	8
	.value	99
	.byte	0
	.byte	8
	.value	35
	.byte	0
	.byte	9
	.value	167
	.byte	0
	.byte	8
	.value	3
	.byte	0
	.byte	8
	.value	131
	.byte	0
	.byte	8
	.value	67
	.byte	0
	.byte	9
	.value	231
	.byte	16
	.byte	7
	.value	7
	.byte	0
	.byte	8
	.value	91
	.byte	0
	.byte	8
	.value	27
	.byte	0
	.byte	9
	.value	151
	.byte	20
	.byte	7
	.value	67
	.byte	0
	.byte	8
	.value	123
	.byte	0
	.byte	8
	.value	59
	.byte	0
	.byte	9
	.value	215
	.byte	18
	.byte	7
	.value	19
	.byte	0
	.byte	8
	.value	107
	.byte	0
	.byte	8
	.value	43
	.byte	0
	.byte	9
	.value	183
	.byte	0
	.byte	8
	.value	11
	.byte	0
	.byte	8
	.value	139
	.byte	0
	.byte	8
	.value	75
	.byte	0
	.byte	9
	.value	247
	.byte	16
	.byte	7
	.value	5
	.byte	0
	.byte	8
	.value	87
	.byte	0
	.byte	8
	.value	23
	.byte	64
	.byte	8
	.value	0
	.byte	19
	.byte	7
	.value	51
	.byte	0
	.byte	8
	.value	119
	.byte	0
	.byte	8
	.value	55
	.byte	0
	.byte	9
	.value	207
	.byte	17
	.byte	7
	.value	15
	.byte	0
	.byte	8
	.value	103
	.byte	0
	.byte	8
	.value	39
	.byte	0
	.byte	9
	.value	175
	.byte	0
	.byte	8
	.value	7
	.byte	0
	.byte	8
	.value	135
	.byte	0
	.byte	8
	.value	71
	.byte	0
	.byte	9
	.value	239
	.byte	16
	.byte	7
	.value	9
	.byte	0
	.byte	8
	.value	95
	.byte	0
	.byte	8
	.value	31
	.byte	0
	.byte	9
	.value	159
	.byte	20
	.byte	7
	.value	99
	.byte	0
	.byte	8
	.value	127
	.byte	0
	.byte	8
	.value	63
	.byte	0
	.byte	9
	.value	223
	.byte	18
	.byte	7
	.value	27
	.byte	0
	.byte	8
	.value	111
	.byte	0
	.byte	8
	.value	47
	.byte	0
	.byte	9
	.value	191
	.byte	0
	.byte	8
	.value	15
	.byte	0
	.byte	8
	.value	143
	.byte	0
	.byte	8
	.value	79
	.byte	0
	.byte	9
	.value	255
	.size	lenfix.1, 2048
# ----------------------
	.align 32
	.local	distfix.2
	.type	distfix.2, @object
distfix.2:
	.byte	16
	.byte	5
	.value	1
	.byte	23
	.byte	5
	.value	257
	.byte	19
	.byte	5
	.value	17
	.byte	27
	.byte	5
	.value	4097
	.byte	17
	.byte	5
	.value	5
	.byte	25
	.byte	5
	.value	1025
	.byte	21
	.byte	5
	.value	65
	.byte	29
	.byte	5
	.value	16385
	.byte	16
	.byte	5
	.value	3
	.byte	24
	.byte	5
	.value	513
	.byte	20
	.byte	5
	.value	33
	.byte	28
	.byte	5
	.value	8193
	.byte	18
	.byte	5
	.value	9
	.byte	26
	.byte	5
	.value	2049
	.byte	22
	.byte	5
	.value	129
	.byte	64
	.byte	5
	.value	0
	.byte	16
	.byte	5
	.value	2
	.byte	23
	.byte	5
	.value	385
	.byte	19
	.byte	5
	.value	25
	.byte	27
	.byte	5
	.value	6145
	.byte	17
	.byte	5
	.value	7
	.byte	25
	.byte	5
	.value	1537
	.byte	21
	.byte	5
	.value	97
	.byte	29
	.byte	5
	.value	24577
	.byte	16
	.byte	5
	.value	4
	.byte	24
	.byte	5
	.value	769
	.byte	20
	.byte	5
	.value	49
	.byte	28
	.byte	5
	.value	12289
	.byte	18
	.byte	5
	.value	13
	.byte	26
	.byte	5
	.value	3073
	.byte	22
	.byte	5
	.value	193
	.byte	64
	.byte	5
	.value	0
	.align 4
.L258:
	.long	.L20@GOTOFF
	.long	.L257@GOTOFF
	.long	.L43@GOTOFF
	.long	.L257@GOTOFF
	.long	.L257@GOTOFF
	.long	.L68@GOTOFF
	.long	.L257@GOTOFF
	.long	.L257@GOTOFF
	.long	.L257@GOTOFF
	.long	.L164@GOTOFF
	.long	.L257@GOTOFF
	.long	.L257@GOTOFF
	.long	.L257@GOTOFF
	.long	.L257@GOTOFF
	.long	.L257@GOTOFF
	.long	.L257@GOTOFF
	.long	.L257@GOTOFF
	.long	.L253@GOTOFF
	.long	.L256@GOTOFF
	.size	distfix.2, 128
# ----------------------
	.section       .rodata.str1.1,"aMS",@progbits,1
.LC0:
	.string	"invalid block type"
.LC1:
	.string	"invalid stored block lengths"
.LC8:
	.string	"invalid literal/length code"
.LC10:
	.string	"invalid distance too far back"
.LC9:
	.string	"invalid distance code"
.LC7:
	.string	"invalid distances set"
.LC6:
	.string	"invalid literal/lengths set"
.LC4:
	.string	"invalid bit length repeat"
.LC3:
	.string	"invalid code lengths set"
# ----------------------
	.section       .rodata.str1.4,"aMS",@progbits,1
	.align 4
.LC5:
	.string	"invalid code -- missing end-of-block"
	.align 4
.LC2:
	.string	"too many length or distance symbols"
# ----------------------
	.text
	.p2align 2,,3
# ----------------------
	.globl	inflateBack
	.type	inflateBack, @function
inflateBack:
	pushl     %ebp
	movl      %esp, %ebp
	pushl     %edi
	pushl     %esi
	pushl     %ebx
	subl      $76, %esp
	movl      8(%ebp), %eax
	call      .L355
.L355:
	popl      %ebx
	addl      $_GLOBAL_OFFSET_TABLE_+[.-.L355], %ebx
	testl     %eax, %eax
	je        .L13
	movl      8(%ebp), %ecx
	movl      28(%ecx), %edx
	testl     %edx, %edx
	movl      %edx, -52(%ebp)
	jne       .L12
.L13:
	movl      $-2, %eax
.L11:
	leal      -12(%ebp), %esp
	popl      %ebx
	popl      %esi
	popl      %edi
	leave     
	ret       
	.p2align 2,,3
.L12:
	movl      8(%ebp), %edx
	movl      (%edx), %esi
	movl      -52(%ebp), %eax
	testl     %esi, %esi
	movl      $0, 24(%edx)
	movl      $11, (%eax)
	movl      $0, 4(%eax)
	movl      $0, 44(%eax)
	movl      %esi, -16(%ebp)
	movl      $0, -24(%ebp)
	je        .L15
	movl      4(%edx), %edi
	movl      %edi, -24(%ebp)
.L15:
	movl      -52(%ebp), %edi
	movl      -52(%ebp), %esi
	movl      52(%edi), %edx
	movl      40(%esi), %ecx
	movl      $0, -32(%ebp)
	movl      $0, -36(%ebp)
	movl      %edx, -20(%ebp)
	movl      %ecx, -28(%ebp)
.L317:
	movl      -52(%ebp), %esi
	movl      (%esi), %eax
.L16:
	subl      $11, %eax
	cmpl      $18, %eax
	ja        .L257
	movl      .L258@GOTOFF(%ebx,%eax,4), %ecx
	addl      %ebx, %ecx
	jmp       *%ecx
.L20:
	movl      -52(%ebp), %esi
	movl      4(%esi), %edx
	testl     %edx, %edx
	jne       .L325
	cmpl      $2, -36(%ebp)
	ja        .L260
	.p2align 2,,3
.L32:
	movl      -24(%ebp), %edi
	testl     %edi, %edi
	je        .L326
.L28:
	movl      -16(%ebp), %edi
	decl      -24(%ebp)
	movzbl    (%edi), %edx
	movb      -36(%ebp), %cl
	sall      %cl, %edx
	addl      $8, -36(%ebp)
	incl      %edi
	addl      %edx, -32(%ebp)
	cmpl      $2, -36(%ebp)
	movl      %edi, -16(%ebp)
	jbe       .L32
.L260:
	movl      -32(%ebp), %esi
	shrl      $1, -32(%ebp)
	movl      -32(%ebp), %eax
	andl      $3, %eax
	andl      $1, %esi
	movl      -52(%ebp), %ecx
	decl      -36(%ebp)
	cmpl      $1, %eax
	movl      %esi, 4(%ecx)
	je        .L36
	cmpl      $1, %eax
	jb        .L35
	cmpl      $2, %eax
	je        .L38
	cmpl      $3, %eax
	je        .L39
.L34:
	movl      -52(%ebp), %esi
	shrl      $2, -32(%ebp)
	subl      $2, -36(%ebp)
	movl      (%esi), %eax
	jmp       .L16
.L39:
	leal      .LC0@GOTOFF(%ebx), %edx
	movl      8(%ebp), %ecx
	movl      -52(%ebp), %edi
	movl      %edx, 24(%ecx)
	movl      $29, (%edi)
	jmp       .L34
.L38:
	movl      -52(%ebp), %eax
	movl      $16, (%eax)
	jmp       .L34
.L35:
	movl      -52(%ebp), %edi
	movl      $13, (%edi)
	jmp       .L34
.L36:
	movl      -52(%ebp), %ecx
	leal      lenfix.1@GOTOFF(%ebx), %esi
	leal      distfix.2@GOTOFF(%ebx), %edx
	movl      %esi, 76(%ecx)
	movl      $9, 84(%ecx)
	movl      %edx, 80(%ecx)
	movl      $5, 88(%ecx)
	movl      $20, (%ecx)
	jmp       .L34
.L326:
	subl      $8, %esp
	leal      -16(%ebp), %esi
	pushl     %esi
	pushl     16(%ebp)
	call      *12(%ebp)
	addl      $16, %esp
	testl     %eax, %eax
	movl      %eax, -24(%ebp)
	jne       .L28
.L313:
	movl      $0, -16(%ebp)
.L324:
	movl      $-5, -48(%ebp)
.L31:
	movl      8(%ebp), %edi
	movl      -24(%ebp), %eax
	movl      -16(%ebp), %esi
	movl      %eax, 4(%edi)
	movl      %esi, (%edi)
	movl      -48(%ebp), %eax
	jmp       .L11
.L325:
	movl      -36(%ebp), %ecx
	andl      $7, %ecx
	shrl      %cl, -32(%ebp)
	subl      %ecx, -36(%ebp)
	movl      $28, (%esi)
	movl      $28, %eax
	jmp       .L16
	.p2align 2,,3
.L43:
	movl      -36(%ebp), %ecx
	andl      $7, %ecx
	subl      %ecx, -36(%ebp)
	shrl      %cl, -32(%ebp)
	cmpl      $31, -36(%ebp)
	ja        .L262
	.p2align 2,,3
.L53:
	movl      -24(%ebp), %edi
	testl     %edi, %edi
	je        .L327
.L50:
	movl      -16(%ebp), %esi
	decl      -24(%ebp)
	movzbl    (%esi), %edx
	movb      -36(%ebp), %cl
	sall      %cl, %edx
	addl      $8, -36(%ebp)
	incl      %esi
	addl      %edx, -32(%ebp)
	cmpl      $31, -36(%ebp)
	movl      %esi, -16(%ebp)
	jbe       .L53
.L262:
	movl      -32(%ebp), %edi
	shrl      $16, %edi
	movzwl    -32(%ebp), %edx
	xorl      $65535, %edi
	cmpl      %edi, %edx
	leal      .LC1@GOTOFF(%ebx), %eax
	jne       .L321
	movl      -52(%ebp), %eax
	testl     %edx, %edx
	movl      %edx, 64(%eax)
	movl      $0, -32(%ebp)
	movl      $0, -36(%ebp)
	je        .L264
	.p2align 2,,3
.L67:
	movl      -24(%ebp), %ecx
	movl      -52(%ebp), %edx
	testl     %ecx, %ecx
	movl      64(%edx), %esi
	je        .L328
.L59:
	movl      -28(%ebp), %ecx
	testl     %ecx, %ecx
	je        .L329
.L62:
	cmpl      -24(%ebp), %esi
	jbe       .L65
	movl      -24(%ebp), %esi
.L65:
	cmpl      -28(%ebp), %esi
	jbe       .L66
	movl      -28(%ebp), %esi
.L66:
	pushl     %edi
	pushl     %esi
	pushl     -16(%ebp)
	pushl     -20(%ebp)
	call      memcpy@PLT
	movl      -52(%ebp), %eax
	movl      64(%eax), %edi
	subl      %esi, %edi
	subl      %esi, -24(%ebp)
	addl      %esi, -16(%ebp)
	subl      %esi, -28(%ebp)
	addl      %esi, -20(%ebp)
	addl      $16, %esp
	testl     %edi, %edi
	movl      %edi, 64(%eax)
	jne       .L67
.L264:
	movl      -52(%ebp), %esi
	movl      $11, (%esi)
.L318:
	movl      $11, %eax
	jmp       .L16
.L329:
	movl      -52(%ebp), %ecx
	movl      -52(%ebp), %eax
	movl      52(%ecx), %edi
	movl      40(%eax), %ecx
	movl      -52(%ebp), %eax
	movl      %ecx, 44(%eax)
	pushl     %eax
	pushl     %ecx
	pushl     %edi
	pushl     24(%ebp)
	movl      %edi, -20(%ebp)
	movl      %ecx, -28(%ebp)
	call      *20(%ebp)
	addl      $16, %esp
	testl     %eax, %eax
	movl      $-5, -48(%ebp)
	je        .L62
	jmp       .L31
	.p2align 2,,3
.L328:
	subl      $8, %esp
	leal      -16(%ebp), %edi
	pushl     %edi
	pushl     16(%ebp)
	call      *12(%ebp)
	addl      $16, %esp
	testl     %eax, %eax
	movl      %eax, -24(%ebp)
	jne       .L59
	jmp       .L313
.L321:
	movl      8(%ebp), %edi
	movl      -52(%ebp), %edx
	movl      %eax, 24(%edi)
	movl      $29, (%edx)
.L316:
	movl      $29, %eax
	jmp       .L16
.L327:
	subl      $8, %esp
	leal      -16(%ebp), %ecx
	pushl     %ecx
	pushl     16(%ebp)
	call      *12(%ebp)
	addl      $16, %esp
	testl     %eax, %eax
	movl      %eax, -24(%ebp)
	jne       .L50
	jmp       .L313
	.p2align 2,,3
.L68:
	cmpl      $13, -36(%ebp)
	ja        .L266
	.p2align 2,,3
.L77:
	movl      -24(%ebp), %edx
	testl     %edx, %edx
	je        .L330
.L74:
	movl      -16(%ebp), %edi
	decl      -24(%ebp)
	movzbl    (%edi), %esi
	movb      -36(%ebp), %cl
	sall      %cl, %esi
	addl      $8, -36(%ebp)
	incl      %edi
	addl      %esi, -32(%ebp)
	cmpl      $13, -36(%ebp)
	movl      %edi, -16(%ebp)
	jbe       .L77
.L266:
	movl      -32(%ebp), %edi
	shrl      $5, -32(%ebp)
	movl      -32(%ebp), %esi
	shrl      $5, -32(%ebp)
	andl      $31, %edi
	movl      -32(%ebp), %edx
	addl      $257, %edi
	andl      $31, %esi
	andl      $15, %edx
	movl      -52(%ebp), %eax
	addl      $4, %edx
	leal      1(%esi), %ecx
	shrl      $4, -32(%ebp)
	subl      $14, -36(%ebp)
	cmpl      $286, %edi
	movl      %edi, 96(%eax)
	movl      %ecx, 100(%eax)
	movl      %edx, 92(%eax)
	ja        .L82
	cmpl      $30, %ecx
	ja        .L82
	movl      -52(%ebp), %ecx
	testl     %edx, %edx
	movl      $0, 104(%ecx)
	je        .L268
.L96:
	cmpl      $2, -36(%ebp)
	ja        .L270
	.p2align 2,,3
.L94:
	movl      -24(%ebp), %edi
	testl     %edi, %edi
	je        .L331
.L91:
	movl      -16(%ebp), %esi
	decl      -24(%ebp)
	movzbl    (%esi), %edi
	movb      -36(%ebp), %cl
	sall      %cl, %edi
	addl      $8, -36(%ebp)
	incl      %esi
	addl      %edi, -32(%ebp)
	cmpl      $2, -36(%ebp)
	movl      %esi, -16(%ebp)
	jbe       .L94
.L270:
	movl      -52(%ebp), %edi
	movl      104(%edi), %esi
	movzwl    order.0@GOTOFF(%ebx,%esi,2), %eax
	movl      -32(%ebp), %ecx
	incl      %esi
	andl      $7, %ecx
	shrl      $3, -32(%ebp)
	subl      $3, -36(%ebp)
	cmpl      92(%edi), %esi
	movw      %cx, 112(%edi,%eax,2)
	movl      %esi, 104(%edi)
	jb        .L96
.L268:
	movl      -52(%ebp), %edi
	movl      104(%edi), %edx
	cmpl      $18, %edx
	ja        .L272
	.p2align 2,,3
.L100:
	leal      1(%edx), %eax
	movzwl    order.0@GOTOFF(%ebx,%edx,2), %esi
	movl      -52(%ebp), %ecx
	cmpl      $18, %eax
	movw      $0, 112(%ecx,%esi,2)
	movl      %eax, %edx
	jbe       .L100
	movl      %eax, 104(%ecx)
.L272:
	movl      -52(%ebp), %edx
	addl      $1328, %edx
	movl      -52(%ebp), %edi
	movl      %edx, 108(%edi)
	movl      %edx, 76(%edi)
	subl      $8, %esp
	movl      $7, 84(%edi)
	movl      -52(%ebp), %ecx
	addl      $752, %edi
	pushl     %edi
	addl      $84, %ecx
	movl      -52(%ebp), %eax
	pushl     %ecx
	addl      $108, %eax
	pushl     %eax
	movl      %edx, -56(%ebp)
	movl      -52(%ebp), %edx
	pushl     $19
	addl      $112, %edx
	pushl     %edx
	pushl     $0
	movl      %edi, -60(%ebp)
	movl      %ecx, -64(%ebp)
	movl      %eax, -68(%ebp)
	movl      %edx, -72(%ebp)
	call      inflate_table
	addl      $32, %esp
	testl     %eax, %eax
	movl      %eax, -48(%ebp)
	jne       .L332
	movl      -52(%ebp), %edi
	movl      100(%edi), %ecx
	addl      96(%edi), %ecx
	cmpl      %ecx, -48(%ebp)
	movl      $0, 104(%edi)
	jae       .L103
.L159:
	movl      -52(%ebp), %edx
	movl      84(%edx), %esi
	movl      -52(%ebp), %eax
	movl      %esi, -88(%ebp)
	movl      76(%eax), %edi
	.p2align 2,,3
.L105:
	movb      -88(%ebp), %cl
	movl      $1, %edx
	sall      %cl, %edx
	decl      %edx
	andl      -32(%ebp), %edx
	movl      (%edi,%edx,4), %esi
	movl      %esi, %eax
	movzbl    %ah, %ecx
	cmpl      -36(%ebp), %ecx
	jbe       .L106
	movl      -24(%ebp), %esi
	testl     %esi, %esi
	je        .L333
.L110:
	movl      -16(%ebp), %esi
	decl      -24(%ebp)
	movzbl    (%esi), %edx
	movb      -36(%ebp), %cl
	sall      %cl, %edx
	incl      %esi
	addl      %edx, -32(%ebp)
	movl      %esi, -16(%ebp)
	addl      $8, -36(%ebp)
	jmp       .L105
	.p2align 2,,3
.L333:
	subl      $8, %esp
	leal      -16(%ebp), %edi
	pushl     %edi
	pushl     16(%ebp)
	call      *12(%ebp)
	addl      $16, %esp
	testl     %eax, %eax
	movl      %eax, -24(%ebp)
	je        .L313
	movl      -52(%ebp), %edx
	movl      84(%edx), %eax
	movl      -52(%ebp), %ecx
	movl      %eax, -88(%ebp)
	movl      76(%ecx), %edi
	jmp       .L110
.L106:
	movl      %esi, %edi
	shrl      $16, %edi
	cmpw      $15, %di
	ja        .L113
	movl      -52(%ebp), %edx
	movl      104(%edx), %esi
	movzbl    %ah, %ecx
	movw      %di, 112(%edx,%esi,2)
	incl      %esi
	movl      96(%edx), %edi
	shrl      %cl, -32(%ebp)
	subl      %ecx, -36(%ebp)
	movl      %edi, -84(%ebp)
	movl      %esi, 104(%edx)
	movl      %esi, %ecx
	movl      100(%edx), %edi
.L102:
	movl      -84(%ebp), %esi
	addl      %edi, %esi
	cmpl      %esi, %ecx
	jb        .L159
.L103:
	movl      -52(%ebp), %edx
	movl      (%edx), %eax
	cmpl      $29, %eax
	je        .L16
	cmpw      $0, 624(%edx)
	je        .L334
	subl      $8, %esp
	movl      -52(%ebp), %esi
	movl      -56(%ebp), %edx
	movl      %edx, 108(%esi)
	movl      %edx, 76(%esi)
	movl      $9, 84(%esi)
	pushl     -60(%ebp)
	pushl     -64(%ebp)
	pushl     -68(%ebp)
	pushl     96(%esi)
	pushl     -72(%ebp)
	pushl     $1
	call      inflate_table
	addl      $32, %esp
	testl     %eax, %eax
	jne       .L335
	movl      -52(%ebp), %edi
	movl      108(%edi), %esi
	subl      $8, %esp
	movl      %edi, %ecx
	movl      %esi, 80(%edi)
	movl      $6, 88(%edi)
	addl      $88, %ecx
	pushl     -60(%ebp)
	pushl     %ecx
	pushl     -68(%ebp)
	pushl     100(%edi)
	movl      96(%edi), %edx
	leal      112(%edi,%edx,2), %esi
	pushl     %esi
	pushl     $2
	call      inflate_table
	addl      $32, %esp
	testl     %eax, %eax
	jne       .L336
	movl      -52(%ebp), %eax
	movl      $20, (%eax)
.L164:
	cmpl      $5, -24(%ebp)
	jbe       .L165
	cmpl      $257, -28(%ebp)
	ja        .L337
.L165:
	movl      -52(%ebp), %eax
	movl      84(%eax), %edx
	movl      -52(%ebp), %ecx
	movl      %edx, -88(%ebp)
	movl      76(%ecx), %edi
	.p2align 2,,3
.L169:
	movb      -88(%ebp), %cl
	movl      $1, %edx
	sall      %cl, %edx
	decl      %edx
	andl      -32(%ebp), %edx
	movl      (%edi,%edx,4), %esi
	movl      %esi, %eax
	movzbl    %ah, %ecx
	cmpl      -36(%ebp), %ecx
	jbe       .L170
	movl      -24(%ebp), %esi
	testl     %esi, %esi
	je        .L338
.L174:
	movl      -16(%ebp), %esi
	decl      -24(%ebp)
	movzbl    (%esi), %edx
	movb      -36(%ebp), %cl
	sall      %cl, %edx
	incl      %esi
	addl      %edx, -32(%ebp)
	movl      %esi, -16(%ebp)
	addl      $8, -36(%ebp)
	jmp       .L169
	.p2align 2,,3
.L338:
	subl      $8, %esp
	leal      -16(%ebp), %edi
	pushl     %edi
	pushl     16(%ebp)
	call      *12(%ebp)
	addl      $16, %esp
	testl     %eax, %eax
	movl      %eax, -24(%ebp)
	je        .L313
	movl      -52(%ebp), %edx
	movl      84(%edx), %eax
	movl      -52(%ebp), %ecx
	movl      %eax, -88(%ebp)
	movl      76(%ecx), %edi
	jmp       .L174
.L170:
	testb     %al, %al
	je        .L177
	testl     $240, %esi
	jne       .L177
	movl      %esi, %eax
	shrl      $16, %eax
	movl      %esi, -40(%ebp)
	movl      %eax, -76(%ebp)
	.p2align 2,,3
.L178:
	movl      -40(%ebp), %edx
	movzbl    %dh, %ecx
	movzbl    -40(%ebp), %esi
	addl      %esi, %ecx
	movl      $1, %eax
	sall      %cl, %eax
	decl      %eax
	movl      -40(%ebp), %edx
	movzbl    %dh, %ecx
	andl      -32(%ebp), %eax
	shrl      %cl, %eax
	addl      -76(%ebp), %eax
	movl      (%edi,%eax,4), %esi
	movl      %ecx, %eax
	movl      %esi, %ecx
	movzbl    %ch, %edx
	addl      %edx, %eax
	cmpl      -36(%ebp), %eax
	jbe       .L179
	movl      -24(%ebp), %ecx
	testl     %ecx, %ecx
	je        .L339
.L183:
	movl      -16(%ebp), %esi
	decl      -24(%ebp)
	movzbl    (%esi), %edx
	movb      -36(%ebp), %cl
	sall      %cl, %edx
	incl      %esi
	addl      %edx, -32(%ebp)
	movl      %esi, -16(%ebp)
	addl      $8, -36(%ebp)
	jmp       .L178
.L339:
	subl      $8, %esp
	leal      -16(%ebp), %edi
	pushl     %edi
	pushl     16(%ebp)
	call      *12(%ebp)
	addl      $16, %esp
	testl     %eax, %eax
	movl      %eax, -24(%ebp)
	je        .L313
	movl      -52(%ebp), %eax
	movl      76(%eax), %edi
	jmp       .L183
.L179:
	movl      -40(%ebp), %edx
	movzbl    %dh, %ecx
	shrl      %cl, -32(%ebp)
	subl      %ecx, -36(%ebp)
.L177:
	movl      %esi, %edx
	movzbl    %dh, %ecx
	movl      %esi, %edi
	shrl      %cl, -32(%ebp)
	subl      %ecx, -36(%ebp)
	shrl      $16, %edi
	movl      -52(%ebp), %ecx
	testb     %dl, %dl
	movl      %edi, 64(%ecx)
	je        .L340
	movl      %esi, %edx
	andl      $32, %edx
	testb     %dl, %dl
	jne       .L341
	movl      %esi, %ecx
	andl      $64, %ecx
	testb     %cl, %cl
	leal      .LC8@GOTOFF(%ebx), %eax
	jne       .L322
	movl      %esi, %eax
	andl      $15, %eax
	movl      -52(%ebp), %edi
	testl     %eax, %eax
	movl      %eax, 72(%edi)
	je        .L194
	cmpl      %eax, -36(%ebp)
	jae       .L289
.L203:
	movl      -24(%ebp), %esi
	testl     %esi, %esi
	je        .L342
.L200:
	movl      -16(%ebp), %edi
	decl      -24(%ebp)
	movzbl    (%edi), %esi
	movb      -36(%ebp), %cl
	movl      -52(%ebp), %eax
	sall      %cl, %esi
	addl      $8, -36(%ebp)
	movl      72(%eax), %ecx
	incl      %edi
	addl      %esi, -32(%ebp)
	cmpl      %ecx, -36(%ebp)
	movl      %edi, -16(%ebp)
	jb        .L203
.L282:
	movl      $1, %esi
	sall      %cl, %esi
	decl      %esi
	andl      -32(%ebp), %esi
	movl      -52(%ebp), %edi
	addl      %esi, 64(%edi)
	shrl      %cl, -32(%ebp)
	subl      %ecx, -36(%ebp)
.L194:
	movl      -52(%ebp), %edx
	movl      88(%edx), %eax
	movl      -52(%ebp), %ecx
	movl      %eax, -88(%ebp)
	movl      80(%ecx), %edi
	.p2align 2,,3
.L205:
	movb      -88(%ebp), %cl
	movl      $1, %edx
	sall      %cl, %edx
	decl      %edx
	andl      -32(%ebp), %edx
	movl      (%edi,%edx,4), %esi
	movl      %esi, %eax
	movzbl    %ah, %ecx
	cmpl      -36(%ebp), %ecx
	jbe       .L206
	movl      -24(%ebp), %esi
	testl     %esi, %esi
	je        .L343
.L210:
	movl      -16(%ebp), %esi
	decl      -24(%ebp)
	movzbl    (%esi), %edx
	movb      -36(%ebp), %cl
	sall      %cl, %edx
	incl      %esi
	addl      %edx, -32(%ebp)
	movl      %esi, -16(%ebp)
	addl      $8, -36(%ebp)
	jmp       .L205
	.p2align 2,,3
.L343:
	subl      $8, %esp
	leal      -16(%ebp), %edi
	pushl     %edi
	pushl     16(%ebp)
	call      *12(%ebp)
	addl      $16, %esp
	testl     %eax, %eax
	movl      %eax, -24(%ebp)
	je        .L313
	movl      -52(%ebp), %edx
	movl      88(%edx), %eax
	movl      -52(%ebp), %ecx
	movl      %eax, -88(%ebp)
	movl      80(%ecx), %edi
	jmp       .L210
.L206:
	testl     $240, %esi
	jne       .L213
	movl      %esi, -40(%ebp)
	shrl      $16, %esi
	movl      %esi, -80(%ebp)
	.p2align 2,,3
.L214:
	movl      -40(%ebp), %edx
	movzbl    %dh, %ecx
	movzbl    -40(%ebp), %esi
	addl      %esi, %ecx
	movl      $1, %eax
	sall      %cl, %eax
	decl      %eax
	movl      -40(%ebp), %edx
	movzbl    %dh, %ecx
	andl      -32(%ebp), %eax
	shrl      %cl, %eax
	addl      -80(%ebp), %eax
	movl      (%edi,%eax,4), %esi
	movl      %ecx, %eax
	movl      %esi, %ecx
	movzbl    %ch, %edx
	addl      %edx, %eax
	cmpl      -36(%ebp), %eax
	jbe       .L215
	movl      -24(%ebp), %ecx
	testl     %ecx, %ecx
	je        .L344
.L219:
	movl      -16(%ebp), %esi
	decl      -24(%ebp)
	movzbl    (%esi), %edx
	movb      -36(%ebp), %cl
	sall      %cl, %edx
	incl      %esi
	addl      %edx, -32(%ebp)
	movl      %esi, -16(%ebp)
	addl      $8, -36(%ebp)
	jmp       .L214
.L344:
	subl      $8, %esp
	leal      -16(%ebp), %edi
	pushl     %edi
	pushl     16(%ebp)
	call      *12(%ebp)
	addl      $16, %esp
	testl     %eax, %eax
	movl      %eax, -24(%ebp)
	je        .L313
	movl      -52(%ebp), %eax
	movl      80(%eax), %edi
	jmp       .L219
.L215:
	movl      -40(%ebp), %edx
	movzbl    %dh, %ecx
	shrl      %cl, -32(%ebp)
	subl      %ecx, -36(%ebp)
.L213:
	movl      %esi, %eax
	movzbl    %ah, %ecx
	shrl      %cl, -32(%ebp)
	subl      %ecx, -36(%ebp)
	movl      %esi, %ecx
	andl      $64, %ecx
	testb     %cl, %cl
	jne       .L345
	movl      %esi, %eax
	andl      $15, %eax
	movl      %esi, %edi
	shrl      $16, %edi
	movl      -52(%ebp), %ecx
	testl     %eax, %eax
	movl      %edi, 68(%ecx)
	movl      %eax, 72(%ecx)
	je        .L225
	cmpl      %eax, -36(%ebp)
	jae       .L292
.L234:
	movl      -24(%ebp), %eax
	testl     %eax, %eax
	je        .L346
.L231:
	movl      -16(%ebp), %edi
	decl      -24(%ebp)
	movzbl    (%edi), %esi
	movb      -36(%ebp), %cl
	movl      -52(%ebp), %edx
	sall      %cl, %esi
	addl      $8, -36(%ebp)
	movl      72(%edx), %ecx
	incl      %edi
	addl      %esi, -32(%ebp)
	cmpl      %ecx, -36(%ebp)
	movl      %edi, -16(%ebp)
	jb        .L234
.L284:
	movl      $1, %esi
	sall      %cl, %esi
	decl      %esi
	andl      -32(%ebp), %esi
	movl      -52(%ebp), %edi
	addl      %esi, 68(%edi)
	shrl      %cl, -32(%ebp)
	subl      %ecx, -36(%ebp)
.L225:
	movl      -52(%ebp), %edi
	movl      40(%edi), %edx
	cmpl      %edx, 44(%edi)
	movl      68(%edi), %ecx
	jae       .L237
	movl      %edx, %esi
	subl      -28(%ebp), %esi
	cmpl      %esi, %ecx
.L320:
	jbe       .L239
	leal      .LC10@GOTOFF(%ebx), %eax
.L322:
	movl      8(%ebp), %ecx
	movl      -52(%ebp), %edx
	movl      %eax, 24(%ecx)
	movl      $29, (%edx)
	jmp       .L316
.L239:
	movl      -28(%ebp), %edi
	testl     %edi, %edi
	je        .L347
.L242:
	movl      -52(%ebp), %esi
	movl      68(%esi), %eax
	movl      %edx, %esi
	subl      %eax, %esi
	cmpl      -28(%ebp), %esi
	jae       .L245
	movl      -28(%ebp), %edi
	movl      -20(%ebp), %edx
	subl      %esi, %edi
	addl      %esi, %edx
	movl      %edi, %esi
.L246:
	movl      -52(%ebp), %edi
	movl      64(%edi), %eax
	cmpl      %eax, %esi
	jbe       .L247
	movl      %eax, %esi
.L247:
	subl      %esi, %eax
	movl      -52(%ebp), %edi
	movl      %eax, 64(%edi)
	subl      %esi, -28(%ebp)
.L248:
	movb      (%edx), %cl
	movl      -20(%ebp), %edi
	movb      %cl, (%edi)
	incl      %edx
	incl      %edi
	decl      %esi
	movl      %edi, -20(%ebp)
	jne       .L248
	movl      -52(%ebp), %esi
	movl      64(%esi), %edx
	testl     %edx, %edx
	je        .L348
	movl      -52(%ebp), %eax
	movl      40(%eax), %edx
	jmp       .L239
.L348:
	movl      (%esi), %eax
	jmp       .L16
.L245:
	movl      -20(%ebp), %edx
	subl      %eax, %edx
	movl      -28(%ebp), %esi
	jmp       .L246
.L347:
	movl      -52(%ebp), %ecx
	movl      -52(%ebp), %edi
	movl      52(%ecx), %esi
	movl      %edx, 44(%edi)
	pushl     %ecx
	pushl     %edx
	pushl     %esi
	pushl     24(%ebp)
	movl      %esi, -20(%ebp)
	movl      %edx, -28(%ebp)
	call      *20(%ebp)
	addl      $16, %esp
	testl     %eax, %eax
	movl      $-5, -48(%ebp)
	jne       .L31
	movl      -52(%ebp), %eax
	movl      40(%eax), %edx
	jmp       .L242
	.p2align 2,,3
.L237:
	cmpl      %edx, %ecx
	jmp       .L320
.L346:
	subl      $8, %esp
	leal      -16(%ebp), %esi
	pushl     %esi
	pushl     16(%ebp)
	call      *12(%ebp)
	addl      $16, %esp
	testl     %eax, %eax
	movl      %eax, -24(%ebp)
	jne       .L231
	jmp       .L313
.L292:
	movl      -52(%ebp), %edx
	movl      72(%edx), %ecx
	jmp       .L284
.L345:
	movl      8(%ebp), %esi
	leal      .LC9@GOTOFF(%ebx), %edx
	movl      %edx, 24(%esi)
	movl      -52(%ebp), %esi
.L323:
	movl      $29, (%esi)
	jmp       .L316
	.p2align 2,,3
.L342:
	subl      $8, %esp
	leal      -16(%ebp), %edx
	pushl     %edx
	pushl     16(%ebp)
	call      *12(%ebp)
	addl      $16, %esp
	testl     %eax, %eax
	movl      %eax, -24(%ebp)
	jne       .L200
	jmp       .L313
.L289:
	movl      -52(%ebp), %edx
	movl      72(%edx), %ecx
	jmp       .L282
.L341:
	movl      -52(%ebp), %eax
	movl      $11, (%eax)
	jmp       .L318
.L340:
	movl      -28(%ebp), %eax
	testl     %eax, %eax
	je        .L349
.L189:
	movl      -52(%ebp), %edi
	movl      -20(%ebp), %edx
	movb      64(%edi), %cl
	movb      %cl, (%edx)
	incl      %edx
	movl      %edx, -20(%ebp)
	decl      -28(%ebp)
	movl      $20, (%edi)
	movl      $20, %eax
	jmp       .L16
.L349:
	movl      40(%ecx), %esi
	movl      52(%ecx), %edi
	movl      %esi, 44(%ecx)
	pushl     %edx
	pushl     %esi
	pushl     %edi
	pushl     24(%ebp)
	movl      %edi, -20(%ebp)
	movl      %esi, -28(%ebp)
	call      *20(%ebp)
	addl      $16, %esp
	testl     %eax, %eax
	je        .L189
	jmp       .L324
	.p2align 2,,3
.L337:
	movl      8(%ebp), %edi
	movl      -28(%ebp), %edx
	movl      -24(%ebp), %esi
	movl      %edx, 16(%edi)
	movl      %esi, 4(%edi)
	movl      -20(%ebp), %eax
	movl      -52(%ebp), %esi
	movl      -16(%ebp), %ecx
	movl      %eax, 12(%edi)
	movl      40(%esi), %eax
	movl      %ecx, (%edi)
	movl      -32(%ebp), %edx
	movl      -36(%ebp), %ecx
	cmpl      %eax, 44(%esi)
	movl      %edx, 56(%esi)
	movl      %ecx, 60(%esi)
	jae       .L167
	subl      -28(%ebp), %eax
	movl      %eax, 44(%esi)
.L167:
	subl      $8, %esp
	movl      -52(%ebp), %esi
	pushl     40(%esi)
	pushl     8(%ebp)
	call      inflate_fast
	movl      8(%ebp), %edi
	movl      12(%edi), %eax
	movl      8(%ebp), %edi
	movl      (%edi), %esi
	movl      8(%ebp), %edx
	movl      16(%edx), %ecx
	movl      %esi, -16(%ebp)
	movl      -52(%ebp), %edx
	movl      -52(%ebp), %esi
	movl      %eax, -20(%ebp)
	movl      %ecx, -28(%ebp)
	movl      4(%edi), %eax
	movl      56(%edx), %ecx
	movl      60(%esi), %edi
	movl      %eax, -24(%ebp)
	movl      %ecx, -32(%ebp)
	movl      %edi, -36(%ebp)
	addl      $16, %esp
	jmp       .L317
.L336:
	leal      .LC7@GOTOFF(%ebx), %eax
	jmp       .L321
.L335:
	leal      .LC6@GOTOFF(%ebx), %ecx
	movl      8(%ebp), %edi
	movl      %ecx, 24(%edi)
	jmp       .L323
.L334:
	leal      .LC5@GOTOFF(%ebx), %ecx
	movl      8(%ebp), %edi
	movl      %ecx, 24(%edi)
	movl      $29, (%edx)
	jmp       .L316
	.p2align 2,,3
.L113:
	cmpw      $16, %di
	je        .L350
	cmpw      $17, %di
	je        .L351
	movl      %esi, %eax
	movzbl    %ah, %edi
	addl      $7, %edi
	cmpl      %edi, -36(%ebp)
	jae       .L279
.L151:
	movl      -24(%ebp), %ecx
	testl     %ecx, %ecx
	je        .L352
.L148:
	movl      -16(%ebp), %edi
	decl      -24(%ebp)
	movzbl    (%edi), %edx
	movl      %esi, %eax
	incl      %edi
	movb      -36(%ebp), %cl
	movl      %edi, -16(%ebp)
	movzbl    %ah, %edi
	sall      %cl, %edx
	addl      $8, -36(%ebp)
	addl      $7, %edi
	addl      %edx, -32(%ebp)
	cmpl      %edi, -36(%ebp)
	jb        .L151
.L279:
	movl      %esi, %edx
	movzbl    %dh, %ecx
	shrl      %cl, -32(%ebp)
	subl      %ecx, -36(%ebp)
	movl      -32(%ebp), %ecx
	andl      $127, %ecx
	movl      $0, -44(%ebp)
	leal      11(%ecx), %esi
	shrl      $7, -32(%ebp)
	subl      $7, -36(%ebp)
.L319:
	movl      -52(%ebp), %eax
	movl      104(%eax), %ecx
.L129:
	movl      -52(%ebp), %eax
	movl      96(%eax), %edi
	movl      %edi, -84(%ebp)
	movl      -52(%ebp), %eax
	movl      100(%eax), %edi
	movl      -84(%ebp), %eax
	leal      (%esi,%ecx), %edx
	addl      %edi, %eax
	cmpl      %eax, %edx
	ja        .L306
	decl      %esi
	cmpl      $-1, %esi
	je        .L102
	.p2align 2,,3
.L158:
	movl      -44(%ebp), %eax
	movl      -52(%ebp), %edx
	decl      %esi
	movw      %ax, 112(%edx,%ecx,2)
	cmpl      $-1, %esi
	leal      1(%ecx), %eax
	movl      %eax, 104(%edx)
	movl      %eax, %ecx
	jne       .L158
	jmp       .L102
.L306:
	leal      .LC4@GOTOFF(%ebx), %edx
	movl      8(%ebp), %esi
	movl      -52(%ebp), %eax
	movl      %edx, 24(%esi)
	movl      $29, (%eax)
	jmp       .L103
	.p2align 2,,3
.L352:
	subl      $8, %esp
	leal      -16(%ebp), %edx
	pushl     %edx
	pushl     16(%ebp)
	call      *12(%ebp)
	addl      $16, %esp
	testl     %eax, %eax
	movl      %eax, -24(%ebp)
	jne       .L148
	jmp       .L313
.L351:
	movl      %esi, %eax
	movzbl    %ah, %ecx
	addl      $3, %ecx
	cmpl      %ecx, -36(%ebp)
	jae       .L277
.L139:
	movl      -24(%ebp), %edx
	testl     %edx, %edx
	je        .L353
.L136:
	movl      -16(%ebp), %edi
	decl      -24(%ebp)
	movzbl    (%edi), %edx
	movb      -36(%ebp), %cl
	movl      %esi, %eax
	sall      %cl, %edx
	movzbl    %ah, %ecx
	addl      $8, -36(%ebp)
	addl      $3, %ecx
	incl      %edi
	addl      %edx, -32(%ebp)
	cmpl      %ecx, -36(%ebp)
	movl      %edi, -16(%ebp)
	jb        .L139
.L277:
	movl      %esi, %edx
	movzbl    %dh, %ecx
	shrl      %cl, -32(%ebp)
	subl      %ecx, -36(%ebp)
	movl      -32(%ebp), %ecx
	andl      $7, %ecx
	movl      $0, -44(%ebp)
	leal      3(%ecx), %esi
	shrl      $3, -32(%ebp)
	subl      $3, -36(%ebp)
	jmp       .L319
.L353:
	subl      $8, %esp
	leal      -16(%ebp), %edi
	pushl     %edi
	pushl     16(%ebp)
	call      *12(%ebp)
	addl      $16, %esp
	testl     %eax, %eax
	movl      %eax, -24(%ebp)
	jne       .L136
	jmp       .L313
	.p2align 2,,3
.L350:
	movl      %esi, %eax
	movzbl    %ah, %ecx
	addl      $2, %ecx
	cmpl      %ecx, -36(%ebp)
	jae       .L275
.L125:
	movl      -24(%ebp), %edi
	testl     %edi, %edi
	je        .L354
.L122:
	movl      -16(%ebp), %edi
	decl      -24(%ebp)
	movzbl    (%edi), %edx
	movb      -36(%ebp), %cl
	movl      %esi, %eax
	sall      %cl, %edx
	movzbl    %ah, %ecx
	addl      $8, -36(%ebp)
	addl      $2, %ecx
	incl      %edi
	addl      %edx, -32(%ebp)
	cmpl      %ecx, -36(%ebp)
	movl      %edi, -16(%ebp)
	jb        .L125
.L275:
	movl      %esi, %edx
	movzbl    %dh, %ecx
	movl      -52(%ebp), %edx
	shrl      %cl, -32(%ebp)
	subl      %ecx, -36(%ebp)
	movl      104(%edx), %ecx
	testl     %ecx, %ecx
	je        .L303
	movl      -32(%ebp), %edi
	movzwl    110(%edx,%ecx,2), %eax
	andl      $3, %edi
	movl      %eax, -44(%ebp)
	leal      3(%edi), %esi
	shrl      $2, -32(%ebp)
	subl      $2, -36(%ebp)
	jmp       .L129
.L303:
	leal      .LC4@GOTOFF(%ebx), %edi
	movl      8(%ebp), %ecx
	movl      -52(%ebp), %esi
	movl      %edi, 24(%ecx)
	movl      $29, (%esi)
	jmp       .L103
	.p2align 2,,3
.L354:
	subl      $8, %esp
	leal      -16(%ebp), %edx
	pushl     %edx
	pushl     16(%ebp)
	call      *12(%ebp)
	addl      $16, %esp
	testl     %eax, %eax
	movl      %eax, -24(%ebp)
	jne       .L122
	jmp       .L313
.L332:
	leal      .LC3@GOTOFF(%ebx), %eax
	jmp       .L322
	.p2align 2,,3
.L331:
	subl      $8, %esp
	leal      -16(%ebp), %edx
	pushl     %edx
	pushl     16(%ebp)
	call      *12(%ebp)
	addl      $16, %esp
	testl     %eax, %eax
	movl      %eax, -24(%ebp)
	jne       .L91
	jmp       .L313
.L82:
	leal      .LC2@GOTOFF(%ebx), %eax
	jmp       .L322
	.p2align 2,,3
.L330:
	subl      $8, %esp
	leal      -16(%ebp), %ecx
	pushl     %ecx
	pushl     16(%ebp)
	call      *12(%ebp)
	addl      $16, %esp
	testl     %eax, %eax
	movl      %eax, -24(%ebp)
	jne       .L74
	jmp       .L313
	.p2align 2,,3
.L257:
	movl      $-2, -48(%ebp)
	jmp       .L31
.L253:
	movl      -52(%ebp), %edx
	movl      40(%edx), %eax
	cmpl      %eax, -28(%ebp)
	movl      $1, -48(%ebp)
	jae       .L31
	subl      -28(%ebp), %eax
	pushl     %esi
	pushl     %eax
	pushl     52(%edx)
	pushl     24(%ebp)
	call      *20(%ebp)
	addl      $16, %esp
	testl     %eax, %eax
	je        .L31
	jmp       .L324
.L256:
	movl      $-3, -48(%ebp)
	jmp       .L31
	.size	inflateBack, .-inflateBack
# ----------------------
	.p2align 2,,3
# ----------------------
	.globl	inflateBackEnd
	.type	inflateBackEnd, @function
inflateBackEnd:
	pushl     %ebp
	movl      %esp, %ebp
	pushl     %esi
	pushl     %ecx
	movl      8(%ebp), %esi
	testl     %esi, %esi
	je        .L358
	movl      28(%esi), %eax
	testl     %eax, %eax
	je        .L358
	movl      36(%esi), %edx
	testl     %edx, %edx
	jne       .L357
.L358:
	movl      $-2, %eax
.L356:
	movl      -4(%ebp), %esi
	leave     
	ret       
	.p2align 2,,3
.L357:
	subl      $8, %esp
	pushl     %eax
	pushl     40(%esi)
	call      *%edx
	movl      $0, 28(%esi)
	xorl      %eax, %eax
	jmp       .L356
	.size	inflateBackEnd, .-inflateBackEnd
# ----------------------
	.ident	"GCC: (GNU) 3.2.3 20030502 (Red Hat Linux 3.2.3-59)"
	.section	.note.GNU-stack,"",@progbits
