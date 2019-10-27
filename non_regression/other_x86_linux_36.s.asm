	.file	"(extract)datetimemodule.c"
	.section	.text.unlikely,"ax",@progbits
.LCOLDB1:
	.text
	.p2align 4,,15
# ----------------------
	.local	datetime_ctime
	.type	datetime_ctime, @function
datetime_ctime:
	pushl     %ebp
	pushl     %edi
	movl      $-366, %ecx
	pushl     %esi
	pushl     %ebx
	call      __x86.get_pc_thunk.bx
	addl      $_GLOBAL_OFFSET_TABLE_, %ebx
	subl      $172, %esp
	movl      192(%esp), %eax
	movzbl    19(%eax), %edi
	movzbl    17(%eax), %esi
	movzbl    15(%eax), %ebp
	movl      %edi, 12(%esp)
	movzbl    18(%eax), %edi
	movl      %esi, 20(%esp)
	movl      %edi, 16(%esp)
	movzbl    16(%eax), %edi
	movl      %edi, 24(%esp)
	movzbl    13(%eax), %edi
	movzbl    14(%eax), %eax
	sall      $8, %edi
	orl       %eax, %edi
	leal      -1(%edi), %esi
	cmpl      $-1, %esi
	je        .L720
	imull     $365, %esi, %ecx
	movl      %esi, %eax
	movl      $1374389535, %edx
	sarl      $2, %eax
	addl      %eax, %ecx
	movl      %esi, %eax
	sarl      $31, %esi
	imull     %edx
	movl      %ecx, 28(%esp)
	movl      %esi, %ecx
	movl      %edx, %eax
	sarl      $7, %edx
	sarl      $5, %eax
	subl      %esi, %edx
	subl      %eax, %ecx
	movl      28(%esp), %eax
	addl      %ecx, %eax
	leal      (%eax,%edx), %ecx
.L720:
	cmpl      $2, %ebp
	movl      _days_before_month@GOTOFF(%ebx,%ebp,4), %esi
	jle       .L721
	testl     $3, %edi
	jne       .L721
	movl      %edi, %eax
	movl      $1374389535, %edx
	mull      %edx
	movl      %edx, %eax
	shrl      $5, %eax
	imull     $100, %eax, %eax
	cmpl      %eax, %edi
	je        .L730
.L722:
	addl      $1, %esi
.L721:
	subl      $8, %esp
	addl      %esi, %ecx
	movl      $-1840700269, %edx
	pushl     %edi
	pushl     24(%esp)
	pushl     32(%esp)
	pushl     40(%esp)
	movl      48(%esp), %eax
	leal      6(%eax,%ecx), %ecx
	pushl     %eax
	pushl     MonthNames.8802@GOTOFF-4(%ebx,%ebp,4)
	movl      %ecx, %eax
	imull     %edx
	movl      %ecx, %eax
	sarl      $31, %eax
	addl      %ecx, %edx
	sarl      $2, %edx
	subl      %eax, %edx
	leal      0(,%edx,8), %eax
	subl      %edx, %eax
	subl      %eax, %ecx
	leal      .LC122@GOTOFF(%ebx), %eax
	pushl     DayNames.8801@GOTOFF(%ebx,%ecx,4)
	pushl     %eax
	pushl     $128
	leal      76(%esp), %esi
	pushl     %esi
	call      PyOS_snprintf@PLT
	addl      $36, %esp
	pushl     %esi
	call      PyString_FromString@PLT
	addl      $188, %esp
	popl      %ebx
	popl      %esi
	popl      %edi
	popl      %ebp
	ret       
	.p2align 4,,10
	.p2align 3
.L730:
	shrl      $7, %edx
	imull     $400, %edx, %edx
	cmpl      %edx, %edi
	jne       .L721
	jmp       .L722
	.size	datetime_ctime, .-datetime_ctime
# ----------------------
	.section       .rodata.str1.1
.LC125:
	.string	"iiii"
.LC127:
	.string	"((iiiiiiiii))"
.LC128:
	.string	"struct_time"
.LC134:
	.string	"|OOOOOOO:__new__"
.LC135:
	.string	"microseconds"
.LC136:
	.string	"milliseconds"
.LC137:
	.string	"seconds"
.LC138:
	.string	"minutes"
.LC139:
	.string	"hours"
.LC140:
	.string	"days"
.LC141:
	.string	"weeks"
.LC234:
	.string	"format"
.LC235:
	.string	"tz"
.LC236:
	.string	"Mon"
.LC237:
	.string	"Tue"
.LC238:
	.string	"Wed"
.LC239:
	.string	"Thu"
.LC240:
	.string	"Fri"
.LC241:
	.string	"Sat"
.LC242:
	.string	"Sun"
.LC243:
	.string	"Jan"
.LC244:
	.string	"Feb"
.LC245:
	.string	"Mar"
.LC246:
	.string	"Apr"
.LC247:
	.string	"May"
.LC248:
	.string	"Jun"
.LC249:
	.string	"Jul"
.LC250:
	.string	"Aug"
.LC251:
	.string	"Sep"
.LC252:
	.string	"Oct"
.LC253:
	.string	"Nov"
.LC254:
	.string	"Dec"
.LC255:
	.string	"sep"
.LC256:
	.string	"timestamp"
.LC257:
	.string	"now"
.LC259:
	.string	"utcnow"
.LC262:
	.string	"utcfromtimestamp"
.LC264:
	.string	"combine"
.LC268:
	.string	"timetz"
.LC270:
	.string	"ctime"
.LC271:
	.string	"Return ctime() style string."
.LC273:
	.string	"utctimetuple"
.LC278:
	.string	"Return self.tzinfo.dst(self)."
.LC280:
	.string	"astimezone"
.LC282:
	.string	"__reduce__"
.LC283:
	.string	"__reduce__() -> (cls, state)"
.LC284:
	.string	"year"
.LC285:
	.string	"month"
.LC286:
	.string	"day"
.LC287:
	.string	"hour"
.LC288:
	.string	"minute"
.LC289:
	.string	"second"
.LC290:
	.string	"microsecond"
.LC298:
	.string	"-> (cls, state)"
.LC300:
	.string	"fromordinal"
.LC302:
	.string	"today"
.LC304:
	.string	"isocalendar"
.LC307:
	.string	"isoweekday"
.LC309:
	.string	"toordinal"
.LC311:
	.string	"weekday"
.LC314:
	.string	"Number of days."
.LC317:
	.string	"datetime.tzinfo"
.LC318:
	.string	"datetime.time"
.LC319:
	.string	"datetime.timedelta"
.LC320:
	.string	"datetime.datetime"
.LC321:
	.string	"datetime.date"
# ----------------------
	.text
	.p2align 4,,15
# ----------------------
	.local	time_hash
	.type	time_hash, @function
time_hash:
	pushl     %ebp
	pushl     %edi
	pushl     %esi
	pushl     %ebx
	call      __x86.get_pc_thunk.bx
	addl      $_GLOBAL_OFFSET_TABLE_, %ebx
	subl      $44, %esp
	movl      64(%esp), %esi
	movl      8(%esi), %edi
	cmpl      $-1, %edi
	je        .L774
.L763:
	addl      $44, %esp
	movl      %edi, %eax
	popl      %ebx
	popl      %esi
	popl      %edi
	popl      %ebp
	ret       
	.p2align 4,,10
	.p2align 3
.L774:
	movl      4(%esi), %eax
	leal      PyDateTime_DateTimeType@GOTOFF(%ebx), %edx
	cmpl      %edx, %eax
	je        .L775
	subl      $8, %esp
	pushl     %edx
	pushl     %eax
	call      PyType_IsSubtype@PLT
	addl      $16, %esp
	testl     %eax, %eax
	jne       .L737
	movl      4(%esi), %eax
	leal      PyDateTime_TimeType@GOTOFF(%ebx), %ebp
	cmpl      %ebp, %eax
	je        .L743
.L740:
	subl      $8, %esp
	pushl     %ebp
	pushl     %eax
	call      PyType_IsSubtype@PLT
	addl      $16, %esp
	testl     %eax, %eax
	je        .L768
.L743:
	cmpb      $0, 12(%esi)
	je        .L768
	movl      20(%esi), %eax
.L739:
	movl      _Py_NoneStruct@GOT(%ebx), %edx
	cmpl      %edx, %eax
	je        .L761
	testl     %eax, %eax
	je        .L776
	subl      $8, %esp
	leal      36(%esp), %ecx
	pushl     %ecx
	pushl     %edx
	leal      .LC42@GOTOFF(%ebx), %edx
	call      call_utc_tzinfo_method
	addl      $16, %esp
	cmpl      $-1, %eax
	movl      %eax, %ecx
	je        .L777
	testl     %eax, %eax
	je        .L761
.L752:
	movzbl    13(%esi), %ebp
	movzbl    14(%esi), %edx
	imull     $60, %ebp, %ebp
	addl      %edx, %ebp
	movl      $-2004318071, %edx
	subl      %ecx, %ebp
	movl      %ebp, %eax
	imull     %edx
	movl      %ebp, %eax
	sarl      $31, %eax
	leal      (%edx,%ebp), %edi
	sarl      $5, %edi
	subl      %eax, %edi
	imull     $60, %edi, %eax
	subl      %eax, %ebp
	movl      %ebp, 4(%esp)
	js        .L778
.L754:
	cmpl      $23, %edi
	jbe       .L779
	movzbl    16(%esi), %eax
	subl      $12, %esp
	sall      $16, %eax
	movl      %eax, %edx
	movzbl    17(%esi), %eax
	sall      $8, %eax
	orl       %edx, %eax
	movzbl    18(%esi), %edx
	orl       %edx, %eax
	pushl     %eax
	movzbl    15(%esi), %eax
	pushl     %eax
	leal      .LC125@GOTOFF(%ebx), %eax
	pushl     24(%esp)
	pushl     %edi
	pushl     %eax
	call      Py_BuildValue@PLT
	addl      $32, %esp
	movl      %eax, %ebp
.L753:
	testl     %ebp, %ebp
	je        .L771
.L757:
	subl      $12, %esp
	pushl     %ebp
	call      PyObject_Hash@PLT
	movl      %eax, 8(%esi)
	movl      (%ebp), %eax
	addl      $16, %esp
	subl      $1, %eax
	testl     %eax, %eax
	movl      %eax, (%ebp)
	je        .L758
.L771:
	movl      8(%esi), %edi
	addl      $44, %esp
	popl      %ebx
	popl      %esi
	movl      %edi, %eax
	popl      %edi
	popl      %ebp
	ret       
	.p2align 4,,10
	.p2align 3
.L737:
	cmpb      $0, 12(%esi)
	jne       .L735
	movl      4(%esi), %eax
	leal      PyDateTime_TimeType@GOTOFF(%ebx), %ebp
	cmpl      %ebp, %eax
	jne       .L740
.L759:
	cmpl      %ebp, %eax
	je        .L761
	subl      $8, %esp
	pushl     %ebp
	pushl     %eax
	call      PyType_IsSubtype@PLT
	addl      $16, %esp
	testl     %eax, %eax
	jne       .L761
	movl      4(%esi), %eax
	leal      PyDateTime_DateType@GOTOFF(%ebx), %edx
	cmpl      %edx, %eax
	je        .L761
	subl      $8, %esp
	pushl     %edx
	pushl     %eax
	call      PyType_IsSubtype@PLT
	addl      $16, %esp
	.p2align 4,,10
	.p2align 3
.L761:
	leal      13(%esi), %eax
	subl      $8, %esp
	pushl     $6
	pushl     %eax
	call      PyString_FromStringAndSize@PLT
	addl      $16, %esp
	movl      %eax, %ebp
	jmp       .L753
	.p2align 4,,10
	.p2align 3
.L779:
	movzbl    16(%esi), %ecx
	movzbl    17(%esi), %eax
	subl      $8, %esp
	sall      $8, %eax
	sall      $16, %ecx
	orl       %eax, %ecx
	movzbl    18(%esi), %eax
	orl       %eax, %ecx
	movzbl    15(%esi), %eax
	movl      %ecx, 16(%esp)
	movb      %al, 23(%esp)
	leal      PyDateTime_TimeType@GOTOFF(%ebx), %eax
	pushl     $0
	pushl     %eax
	call      *PyDateTime_TimeType@GOTOFF+152(%ebx)
	addl      $16, %esp
	testl     %eax, %eax
	movl      %eax, %ebp
	movl      8(%esp), %ecx
	je        .L771
	movb      $0, 12(%eax)
	movl      $-1, 8(%eax)
	movl      %edi, %eax
	movb      %al, 13(%ebp)
	movzbl    4(%esp), %eax
	movb      %cl, 18(%ebp)
	movb      %al, 14(%ebp)
	movzbl    15(%esp), %eax
	movb      %al, 15(%ebp)
	movl      %ecx, %eax
	shrl      $16, %eax
	movb      %al, 16(%ebp)
	movzbl    %ch, %eax
	movb      %al, 17(%ebp)
	jmp       .L757
	.p2align 4,,10
	.p2align 3
.L775:
	cmpb      $0, 12(%esi)
	leal      PyDateTime_TimeType@GOTOFF(%ebx), %ebp
	je        .L740
.L735:
	movl      24(%esi), %eax
	jmp       .L739
	.p2align 4,,10
	.p2align 3
.L758:
	subl      $12, %esp
	movl      4(%ebp), %eax
	pushl     %ebp
	call      *24(%eax)
	movl      8(%esi), %edi
	addl      $16, %esp
	jmp       .L763
	.p2align 4,,10
	.p2align 3
.L778:
	subl      $1, %edi
	addl      $60, 4(%esp)
	jmp       .L754
	.p2align 4,,10
	.p2align 3
.L768:
	movl      4(%esi), %eax
	jmp       .L759
	.p2align 4,,10
	.p2align 3
.L776:
	movl      4(%esi), %eax
	leal      PyDateTime_TimeType@GOTOFF(%ebx), %ebp
	jmp       .L759
.L777:
	movl      %eax, 4(%esp)
	call      PyErr_Occurred@PLT
	testl     %eax, %eax
	movl      4(%esp), %ecx
	jne       .L763
	jmp       .L752
	.size	time_hash, .-time_hash
# ----------------------
	.p2align 4,,15
# ----------------------
	.local	date_timetuple
	.type	date_timetuple, @function
date_timetuple:
	pushl     %ebp
	pushl     %edi
	pushl     %esi
	pushl     %ebx
	call      __x86.get_pc_thunk.bx
	addl      $_GLOBAL_OFFSET_TABLE_, %ebx
	subl      $56, %esp
	movl      76(%esp), %eax
	movzbl    16(%eax), %edi
	movzbl    13(%eax), %esi
	movl      %edi, 28(%esp)
	movzbl    15(%eax), %edi
	sall      $8, %esi
	movzbl    14(%eax), %eax
	movl      %edi, 32(%esp)
	movl      %edi, %ebp
	orl       %eax, %esi
	leal      .LC59@GOTOFF(%ebx), %eax
	pushl     %eax
	call      PyImport_ImportModule@PLT
	addl      $16, %esp
	testl     %eax, %eax
	movl      %eax, %edi
	je        .L790
	movl      _days_before_month@GOTOFF(%ebx,%ebp,4), %ecx
	cmpl      $2, %ebp
	movl      %ecx, 12(%esp)
	jg        .L801
	movl      16(%esp), %eax
	addl      12(%esp), %eax
	leal      -1(%esi), %ebp
	movl      $-366, %ecx
	cmpl      $-1, %ebp
	movl      %eax, 24(%esp)
	je        .L785
	imull     $365, %ebp, %ecx
	movl      %ebp, %eax
	movl      $1374389535, %edx
	sarl      $2, %eax
	addl      %eax, %ecx
	movl      %ebp, %eax
	sarl      $31, %ebp
	imull     %edx
	movl      %ecx, 28(%esp)
	movl      %ebp, %ecx
	movl      %edx, %eax
	sarl      $7, %edx
	sarl      $5, %eax
	subl      %ebp, %edx
	subl      %eax, %ecx
	movl      28(%esp), %eax
	addl      %ecx, %eax
	leal      (%eax,%edx), %ecx
.L785:
	pushl     $-1
	pushl     28(%esp)
	movl      $-1840700269, %edx
	addl      20(%esp), %ecx
	movl      24(%esp), %ebp
	leal      6(%ebp,%ecx), %ecx
	movl      %ecx, %eax
	imull     %edx
	movl      %ecx, %eax
	sarl      $31, %eax
	addl      %ecx, %edx
	sarl      $2, %edx
	subl      %eax, %edx
	leal      0(,%edx,8), %eax
	subl      %edx, %eax
	subl      %eax, %ecx
	leal      .LC127@GOTOFF(%ebx), %eax
	pushl     %ecx
	pushl     $0
	pushl     $0
	pushl     $0
	pushl     %ebp
	pushl     48(%esp)
	pushl     %esi
	pushl     %eax
	leal      .LC128@GOTOFF(%ebx), %eax
	pushl     %eax
	pushl     %edi
	call      PyObject_CallMethod@PLT
	movl      (%edi), %esi
	addl      $48, %esp
	leal      -1(%esi), %edx
	testl     %edx, %edx
	movl      %edx, (%edi)
	jne       .L794
	movl      %eax, 12(%esp)
	movl      4(%edi), %edx
	subl      $12, %esp
	pushl     %edi
	call      *24(%edx)
	addl      $16, %esp
	movl      12(%esp), %eax
.L794:
	addl      $44, %esp
	popl      %ebx
	popl      %esi
	popl      %edi
	popl      %ebp
	ret       
	.p2align 4,,10
	.p2align 3
.L801:
	movl      %esi, %ebp
	movl      %ecx, %eax
	andl      $3, %ebp
	jne       .L783
	movl      %esi, %eax
	movl      $1374389535, %edx
	mull      %edx
	movl      %edx, %eax
	shrl      $5, %eax
	imull     $100, %eax, %eax
	cmpl      %eax, %esi
	je        .L802
.L784:
	movl      12(%esp), %eax
	addl      $1, %eax
.L783:
	addl      16(%esp), %eax
	leal      -1(%esi), %ecx
	cmpl      $-1, %ecx
	movl      %eax, 24(%esp)
	je        .L803
	imull     $365, %ecx, %ebp
	movl      %ecx, %eax
	movl      $1374389535, %edx
	sarl      $2, %eax
	addl      %eax, %ebp
	movl      %ecx, %eax
	sarl      $31, %ecx
	imull     %edx
	movl      %ebp, 28(%esp)
	movl      %ecx, %ebp
	movl      %edx, %eax
	sarl      $7, %edx
	sarl      $5, %eax
	subl      %ecx, %edx
	subl      %eax, %ebp
	movl      %ebp, %eax
	movl      28(%esp), %ebp
	addl      %eax, %ebp
	leal      (%ebp,%edx), %ecx
	movl      %esi, %ebp
	andl      $3, %ebp
.L788:
	testl     %ebp, %ebp
	jne       .L785
	movl      %esi, %eax
	movl      $1374389535, %edx
	mull      %edx
	movl      %edx, %eax
	shrl      $5, %eax
	imull     $100, %eax, %eax
	cmpl      %eax, %esi
	je        .L804
.L786:
	addl      $1, 12(%esp)
	jmp       .L785
	.p2align 4,,10
	.p2align 3
.L804:
	shrl      $7, %edx
	imull     $400, %edx, %edx
	cmpl      %edx, %esi
	je        .L786
	jmp       .L785
	.p2align 4,,10
	.p2align 3
.L802:
	shrl      $7, %edx
	movl      %ecx, %eax
	imull     $400, %edx, %edx
	cmpl      %edx, %esi
	jne       .L783
	jmp       .L784
	.p2align 4,,10
	.p2align 3
.L803:
	movw      $65170, %cx
	jmp       .L788
	.p2align 4,,10
	.p2align 3
.L790:
	xorl      %eax, %eax
	jmp       .L794
	.size	date_timetuple, .-date_timetuple
# ----------------------
	.p2align 4,,15
# ----------------------
	.local	date_isocalendar
	.type	date_isocalendar, @function
date_isocalendar:
	pushl     %ebp
	pushl     %edi
	pushl     %esi
	pushl     %ebx
	call      __x86.get_pc_thunk.bx
	addl      $_GLOBAL_OFFSET_TABLE_, %ebx
	subl      $28, %esp
	movl      48(%esp), %edi
	movzbl    13(%edi), %eax
	movzbl    14(%edi), %edx
	sall      $8, %eax
	orl       %edx, %eax
	leal      -1(%eax), %esi
	movl      %eax, 4(%esp)
	cmpl      $-1, %esi
	je        .L806
	imull     $365, %esi, %ebp
	movl      %esi, %eax
	movl      $1374389535, %edx
	sarl      $2, %eax
	addl      %eax, %ebp
	movl      %esi, %eax
	imull     %edx
	movl      %esi, %eax
	movl      %ebp, 8(%esp)
	sarl      $31, %eax
	movl      %eax, %ebp
	movl      %edx, %ecx
	sarl      $7, %edx
	sarl      $5, %ecx
	subl      %eax, %edx
	subl      %ecx, %ebp
	movl      %ebp, %ecx
	movl      8(%esp), %ebp
	addl      %ecx, %ebp
	leal      (%ebp,%edx), %ecx
	movl      $-1840700269, %edx
	leal      7(%ecx), %ebp
	movl      %ebp, %eax
	imull     %edx
	movl      %ebp, %eax
	sarl      $31, %eax
	addl      %ebp, %edx
	sarl      $2, %edx
	subl      %eax, %edx
	leal      0(,%edx,8), %eax
	subl      %edx, %eax
	movl      %ebp, %edx
	leal      1(%ecx), %ebp
	subl      %eax, %edx
	subl      %edx, %ebp
	cmpl      $3, %edx
	jle       .L807
	addl      $7, %ebp
.L807:
	movzbl    16(%edi), %eax
	movl      %eax, 8(%esp)
	movzbl    15(%edi), %eax
.L818:
	cmpl      $2, %eax
	movl      _days_before_month@GOTOFF(%ebx,%eax,4), %edi
	jle       .L808
	testb     $3, 4(%esp)
	je        .L826
.L808:
	addl      %ecx, %edi
	addl      8(%esp), %edi
	movl      $-1840700269, %edx
	movl      %edi, 8(%esp)
	subl      %ebp, %edi
	movl      %edi, %eax
	imull     %edx
	movl      %edi, %eax
	sarl      $31, %eax
	leal      (%edx,%edi), %ebp
	sarl      $2, %ebp
	subl      %eax, %ebp
	leal      0(,%ebp,8), %eax
	subl      %ebp, %eax
	subl      %eax, %edi
	js        .L827
.L810:
	testl     %ebp, %ebp
	js        .L828
	cmpl      $51, %ebp
	jle       .L825
	movl      4(%esp), %esi
	movl      $1374389535, %edx
	imull     $365, %esi, %ecx
	movl      %esi, %eax
	sarl      $2, %eax
	addl      %eax, %ecx
	movl      %esi, %eax
	sarl      $31, %esi
	imull     %edx
	movl      %ecx, 12(%esp)
	movl      %esi, %ecx
	movl      %edx, %eax
	sarl      $7, %edx
	sarl      $5, %eax
	subl      %esi, %edx
	subl      %eax, %ecx
	movl      %ecx, %eax
	movl      12(%esp), %ecx
	addl      %eax, %ecx
	leal      (%ecx,%edx), %esi
	movl      $-1840700269, %edx
	leal      7(%esi), %ecx
	addl      $1, %esi
	movl      %ecx, %eax
	imull     %edx
	movl      %ecx, %eax
	sarl      $31, %eax
	addl      %ecx, %edx
	sarl      $2, %edx
	subl      %eax, %edx
	leal      0(,%edx,8), %eax
	subl      %edx, %eax
	subl      %eax, %ecx
	subl      %ecx, %esi
	cmpl      $3, %ecx
	jle       .L816
	addl      $7, %esi
.L816:
	cmpl      %esi, 8(%esp)
	jl        .L825
	addl      $1, 4(%esp)
	movl      $1, %ebp
.L814:
	leal      .LC21@GOTOFF(%ebx), %eax
	addl      $1, %edi
	pushl     %edi
	pushl     %ebp
	pushl     12(%esp)
	pushl     %eax
	call      Py_BuildValue@PLT
	addl      $44, %esp
	popl      %ebx
	popl      %esi
	popl      %edi
	popl      %ebp
	ret       
	.p2align 4,,10
	.p2align 3
.L826:
	movl      4(%esp), %eax
	movl      $1374389535, %edx
	mull      %edx
	movl      %edx, %eax
	shrl      $5, %eax
	imull     $100, %eax, %eax
	cmpl      %eax, 4(%esp)
	je        .L829
.L809:
	addl      $1, %edi
	jmp       .L808
	.p2align 4,,10
	.p2align 3
.L825:
	addl      $1, %ebp
	jmp       .L814
	.p2align 4,,10
	.p2align 3
.L806:
	movzbl    16(%edi), %eax
	movl      $-363, %ebp
	movl      $-366, %ecx
	movl      %eax, 8(%esp)
	movzbl    15(%edi), %eax
	jmp       .L818
	.p2align 4,,10
	.p2align 3
.L828:
	movl      4(%esp), %edi
	movl      $-363, %ecx
	subl      $2, %edi
	js        .L812
	imull     $365, %edi, %ebp
	movl      %edi, %eax
	movl      $1374389535, %edx
	sarl      $2, %eax
	addl      %eax, %ebp
	movl      %edi, %eax
	sarl      $31, %edi
	imull     %edx
	movl      %edi, %ecx
	movl      %edx, %eax
	sarl      $7, %edx
	sarl      $5, %eax
	subl      %edi, %edx
	subl      %eax, %ecx
	addl      %ecx, %ebp
	leal      (%ebp,%edx), %ecx
	movl      $-1840700269, %edx
	leal      7(%ecx), %edi
	addl      $1, %ecx
	movl      %edi, %eax
	imull     %edx
	movl      %edi, %eax
	sarl      $31, %eax
	addl      %edi, %edx
	sarl      $2, %edx
	subl      %eax, %edx
	leal      0(,%edx,8), %eax
	subl      %edx, %eax
	subl      %eax, %edi
	subl      %edi, %ecx
	cmpl      $3, %edi
	jle       .L812
	addl      $7, %ecx
.L812:
	movl      8(%esp), %edi
	movl      $-1840700269, %edx
	subl      %ecx, %edi
	movl      %edi, %eax
	imull     %edx
	movl      %edi, %eax
	sarl      $31, %eax
	leal      (%edx,%edi), %ebp
	sarl      $2, %ebp
	subl      %eax, %ebp
	leal      0(,%ebp,8), %eax
	subl      %ebp, %eax
	subl      %eax, %edi
	js        .L813
	addl      $1, %ebp
	movl      %esi, 4(%esp)
	jmp       .L814
	.p2align 4,,10
	.p2align 3
.L827:
	subl      $1, %ebp
	addl      $7, %edi
	jmp       .L810
	.p2align 4,,10
	.p2align 3
.L829:
	shrl      $7, %edx
	imull     $400, %edx, %edx
	cmpl      %edx, 4(%esp)
	je        .L809
	jmp       .L808
	.p2align 4,,10
	.p2align 3
.L813:
	addl      $7, %edi
	movl      %esi, 4(%esp)
	jmp       .L814
	.size	date_isocalendar, .-date_isocalendar
# ----------------------
	.p2align 4,,15
# ----------------------
	.local	delta_add
	.type	delta_add, @function
delta_add:
	pushl     %ebp
	pushl     %edi
	pushl     %esi
	pushl     %ebx
	call      __x86.get_pc_thunk.bx
	addl      $_GLOBAL_OFFSET_TABLE_, %ebx
	subl      $28, %esp
	movl      48(%esp), %eax
	leal      PyDateTime_DeltaType@GOTOFF(%ebx), %esi
	movl      52(%esp), %ebp
	movl      4(%eax), %eax
	cmpl      %esi, %eax
	je        .L834
	subl      $8, %esp
	pushl     %esi
	pushl     %eax
	call      PyType_IsSubtype@PLT
	addl      $16, %esp
	testl     %eax, %eax
	je        .L848
.L834:
	movl      4(%ebp), %eax
	cmpl      %esi, %eax
	je        .L832
	subl      $8, %esp
	pushl     %esi
	pushl     %eax
	call      PyType_IsSubtype@PLT
	addl      $16, %esp
	testl     %eax, %eax
	jne       .L832
.L848:
	movl      _Py_NotImplementedStruct@GOT(%ebx), %edx
.L844:
	addl      $1, (%edx)
	movl      %edx, %eax
.L845:
	addl      $28, %esp
	popl      %ebx
	popl      %esi
	popl      %edi
	popl      %ebp
	ret       
	.p2align 4,,10
	.p2align 3
.L832:
	movl      48(%esp), %eax
	movl      12(%ebp), %ecx
	movl      16(%ebp), %edi
	movl      20(%ebp), %ebp
	addl      20(%eax), %ebp
	addl      12(%eax), %ecx
	addl      16(%eax), %edi
	cmpl      $999999, %ebp
	ja        .L836
.L837:
	cmpl      $86399, %edi
	jbe       .L839
	movl      %edi, %eax
	movl      $-1037155065, %edx
	imull     %edx
	movl      %edi, %eax
	sarl      $31, %eax
	addl      %edi, %edx
	sarl      $16, %edx
	subl      %eax, %edx
	imull     $86400, %edx, %eax
	subl      %eax, %edi
	js        .L850
	addl      %edx, %ecx
.L839:
	leal      999999999(%ecx), %eax
	cmpl      $1999999998, %eax
	ja        .L851
	movl      %ecx, 12(%esp)
	subl      $8, %esp
	pushl     $0
	pushl     %esi
	call      *PyDateTime_DeltaType@GOTOFF+152(%ebx)
	addl      $16, %esp
	testl     %eax, %eax
	movl      12(%esp), %ecx
	je        .L845
	movl      _Py_NotImplementedStruct@GOT(%ebx), %edx
	movl      $-1, 8(%eax)
	movl      %ecx, 12(%eax)
	movl      %edi, 16(%eax)
	movl      %ebp, 20(%eax)
	cmpl      %edx, %eax
	je        .L844
	addl      $28, %esp
	popl      %ebx
	popl      %esi
	popl      %edi
	popl      %ebp
	ret       
	.p2align 4,,10
	.p2align 3
.L836:
	movl      %ebp, %eax
	movl      $1125899907, %edx
	imull     %edx
	movl      %ebp, %eax
	sarl      $31, %eax
	sarl      $18, %edx
	subl      %eax, %edx
	imull     $1000000, %edx, %eax
	subl      %eax, %ebp
	js        .L852
	addl      %edx, %edi
	jmp       .L837
	.p2align 4,,10
	.p2align 3
.L850:
	subl      $1, %edx
	addl      $86400, %edi
	addl      %edx, %ecx
	jmp       .L839
	.p2align 4,,10
	.p2align 3
.L852:
	subl      $1, %edx
	addl      $1000000, %ebp
	addl      %edx, %edi
	jmp       .L837
.L851:
	leal      .LC46@GOTOFF(%ebx), %eax
	pushl     $999999999
	pushl     %ecx
	pushl     %eax
	movl      PyExc_OverflowError@GOT(%ebx), %eax
	pushl     (%eax)
	call      PyErr_Format@PLT
	addl      $16, %esp
	xorl      %eax, %eax
	jmp       .L845
	.size	delta_add, .-delta_add
# ----------------------
	.p2align 4,,15
# ----------------------
	.local	datetime_timetuple
	.type	datetime_timetuple, @function
datetime_timetuple:
	pushl     %ebp
	pushl     %edi
	pushl     %esi
	pushl     %ebx
	call      __x86.get_pc_thunk.bx
	addl      $_GLOBAL_OFFSET_TABLE_, %ebx
	subl      $76, %esp
	movl      96(%esp), %esi
	cmpb      $0, 12(%esi)
	je        .L866
	movl      24(%esi), %eax
	cmpl      _Py_NoneStruct@GOT(%ebx), %eax
	je        .L866
	subl      $8, %esp
	leal      68(%esp), %edx
	pushl     %edx
	leal      .LC39@GOTOFF(%ebx), %edx
	pushl     %esi
	call      call_utc_tzinfo_method
	addl      $16, %esp
	cmpl      $-1, %eax
	movl      %eax, %edi
	je        .L884
.L855:
	movl      60(%esp), %eax
	movl      $-1, 24(%esp)
	testl     %eax, %eax
	jne       .L854
	xorl      %eax, %eax
	testl     %edi, %edi
	setne     %al
	movl      %eax, 24(%esp)
	jmp       .L854
	.p2align 4,,10
	.p2align 3
.L866:
	movl      $-1, 24(%esp)
.L854:
	movzbl    19(%esi), %eax
	movzbl    14(%esi), %edx
	subl      $12, %esp
	movl      %eax, 40(%esp)
	movzbl    18(%esi), %eax
	movl      %eax, 44(%esp)
	movzbl    17(%esi), %eax
	movl      %eax, 48(%esp)
	movzbl    16(%esi), %eax
	movl      %eax, 28(%esp)
	movzbl    15(%esi), %eax
	movl      %eax, 52(%esp)
	movl      %eax, %edi
	movzbl    13(%esi), %eax
	sall      $8, %eax
	orl       %edx, %eax
	movl      %eax, 24(%esp)
	leal      .LC59@GOTOFF(%ebx), %eax
	pushl     %eax
	call      PyImport_ImportModule@PLT
	addl      $16, %esp
	testl     %eax, %eax
	movl      %eax, %esi
	je        .L868
	cmpl      $2, %edi
	movl      _days_before_month@GOTOFF(%ebx,%edi,4), %ecx
	jg        .L885
	movl      16(%esp), %eax
	addl      %ecx, %eax
	movl      %eax, 44(%esp)
	movl      12(%esp), %eax
	leal      -1(%eax), %edi
	cmpl      $-1, %edi
	je        .L886
	imull     $365, %edi, %ebp
	movl      %edi, %eax
	movl      $1374389535, %edx
	sarl      $2, %eax
	addl      %eax, %ebp
	movl      %edi, %eax
	sarl      $31, %edi
	imull     %edx
	movl      %ebp, 20(%esp)
	movl      %edi, %ebp
	movl      %edx, %eax
	sarl      $7, %edx
	sarl      $5, %eax
	subl      %edi, %edx
	subl      %eax, %ebp
	movl      %ebp, %eax
	movl      20(%esp), %ebp
	addl      %eax, %ebp
	leal      (%ebp,%edx), %eax
	movl      %eax, 20(%esp)
.L861:
	pushl     24(%esp)
	pushl     48(%esp)
	movl      $-1840700269, %edx
	addl      28(%esp), %ecx
	movl      24(%esp), %edi
	leal      6(%edi,%ecx), %ecx
	movl      %ecx, %eax
	imull     %edx
	movl      %ecx, %eax
	sarl      $31, %eax
	addl      %ecx, %edx
	sarl      $2, %edx
	subl      %eax, %edx
	leal      0(,%edx,8), %eax
	subl      %edx, %eax
	subl      %eax, %ecx
	leal      .LC127@GOTOFF(%ebx), %eax
	pushl     %ecx
	pushl     40(%esp)
	pushl     48(%esp)
	pushl     56(%esp)
	pushl     %edi
	pushl     68(%esp)
	pushl     44(%esp)
	pushl     %eax
	leal      .LC128@GOTOFF(%ebx), %eax
	pushl     %eax
	pushl     %esi
	call      PyObject_CallMethod@PLT
	movl      (%esi), %ecx
	addl      $48, %esp
	leal      -1(%ecx), %edx
	testl     %edx, %edx
	movl      %edx, (%esi)
	jne       .L878
	movl      %eax, 12(%esp)
	movl      4(%esi), %edx
	subl      $12, %esp
	pushl     %esi
	call      *24(%edx)
	addl      $16, %esp
	movl      12(%esp), %eax
.L878:
	addl      $76, %esp
	popl      %ebx
	popl      %esi
	popl      %edi
	popl      %ebp
	ret       
	.p2align 4,,10
	.p2align 3
.L885:
	movl      12(%esp), %ebp
	movl      %ecx, %eax
	andl      $3, %ebp
	jne       .L859
	movl      12(%esp), %eax
	movl      $1374389535, %edx
	mull      %edx
	movl      %edx, %eax
	shrl      $5, %eax
	imull     $100, %eax, %eax
	cmpl      %eax, 12(%esp)
	je        .L887
.L860:
	leal      1(%ecx), %eax
.L859:
	addl      16(%esp), %eax
	movl      $-366, 20(%esp)
	movl      %eax, 44(%esp)
	movl      12(%esp), %eax
	leal      -1(%eax), %edi
	cmpl      $-1, %edi
	je        .L864
	imull     $365, %edi, %ebp
	movl      %edi, %edx
	movl      %edi, %eax
	sarl      $2, %edx
	sarl      $31, %edi
	addl      %edx, %ebp
	movl      $1374389535, %edx
	imull     %edx
	movl      %edx, %eax
	movl      %edx, 20(%esp)
	movl      %edi, %edx
	sarl      $5, %eax
	subl      %eax, %edx
	addl      %edx, %ebp
	movl      20(%esp), %edx
	sarl      $7, %edx
	subl      %edi, %edx
	leal      (%ebp,%edx), %edi
	movl      12(%esp), %ebp
	movl      %edi, 20(%esp)
	andl      $3, %ebp
.L864:
	testl     %ebp, %ebp
	jne       .L861
	movl      12(%esp), %eax
	movl      $1374389535, %edx
	mull      %edx
	movl      %edx, %eax
	shrl      $5, %eax
	imull     $100, %eax, %eax
	cmpl      %eax, 12(%esp)
	je        .L888
.L862:
	addl      $1, %ecx
	jmp       .L861
	.p2align 4,,10
	.p2align 3
.L888:
	shrl      $7, %edx
	imull     $400, %edx, %edx
	cmpl      %edx, 12(%esp)
	je        .L862
	jmp       .L861
	.p2align 4,,10
	.p2align 3
.L887:
	shrl      $7, %edx
	movl      %ecx, %eax
	imull     $400, %edx, %edx
	cmpl      %edx, 12(%esp)
	jne       .L859
	jmp       .L860
	.p2align 4,,10
	.p2align 3
.L886:
	movl      $-366, 20(%esp)
	jmp       .L861
	.p2align 4,,10
	.p2align 3
.L884:
	call      PyErr_Occurred@PLT
	testl     %eax, %eax
	je        .L855
.L868:
	xorl      %eax, %eax
	jmp       .L878
	.size	datetime_timetuple, .-datetime_timetuple
# ----------------------
	.p2align 4,,15
# ----------------------
	.local	microseconds_to_delta_ex
	.type	microseconds_to_delta_ex, @function
microseconds_to_delta_ex:
	pushl     %ebp
	pushl     %edi
	pushl     %esi
	pushl     %ebx
	call      __x86.get_pc_thunk.bx
	addl      $_GLOBAL_OFFSET_TABLE_, %ebx
	subl      $36, %esp
	movl      %edx, 16(%esp)
	pushl     us_per_second@GOTOFF(%ebx)
	pushl     %eax
	call      PyNumber_Divmod@PLT
	addl      $16, %esp
	testl     %eax, %eax
	movl      %eax, %esi
	je        .L905
	subl      $8, %esp
	pushl     $1
	pushl     %eax
	call      PyTuple_GetItem@PLT
	addl      $16, %esp
	testl     %eax, %eax
	movl      %eax, %ebp
	je        .L893
	subl      $12, %esp
	pushl     %eax
	call      PyLong_AsLong@PLT
	addl      $16, %esp
	cmpl      $-1, %eax
	movl      %eax, %edi
	je        .L922
	testl     %eax, %eax
	js        .L912
	subl      $8, %esp
	pushl     $0
	pushl     %esi
	call      PyTuple_GetItem@PLT
	addl      $16, %esp
	testl     %eax, %eax
	movl      %eax, %ebp
	je        .L893
	addl      $1, (%eax)
	subl      $1, (%esi)
	je        .L923
.L894:
	subl      $8, %esp
	pushl     seconds_per_day@GOTOFF(%ebx)
	pushl     %ebp
	call      PyNumber_Divmod@PLT
	addl      $16, %esp
	testl     %eax, %eax
	movl      %eax, %esi
	je        .L890
	subl      $1, (%ebp)
	je        .L924
.L895:
	subl      $8, %esp
	pushl     $1
	pushl     %esi
	call      PyTuple_GetItem@PLT
	addl      $16, %esp
	testl     %eax, %eax
	movl      %eax, %ebp
	je        .L893
	subl      $12, %esp
	pushl     %eax
	call      PyLong_AsLong@PLT
	movl      %eax, 20(%esp)
	addl      $16, %esp
	cmpl      $-1, %eax
	je        .L922
	movl      4(%esp), %eax
	testl     %eax, %eax
	js        .L912
	subl      $8, %esp
	pushl     $0
	pushl     %esi
	call      PyTuple_GetItem@PLT
	addl      $16, %esp
	testl     %eax, %eax
	movl      %eax, %ebp
	je        .L893
	addl      $1, (%eax)
	subl      $12, %esp
	pushl     %eax
	call      PyLong_AsLong@PLT
	addl      $16, %esp
	cmpl      $-1, %eax
	movl      %eax, %ecx
	je        .L925
	leal      999999999(%eax), %eax
	cmpl      $1999999998, %eax
	ja        .L926
.L898:
	movl      %ecx, 12(%esp)
	subl      $8, %esp
	pushl     $0
	movl      20(%esp), %eax
	pushl     %eax
	call      *152(%eax)
	addl      $16, %esp
	testl     %eax, %eax
	movl      12(%esp), %ecx
	je        .L904
	movl      4(%esp), %edx
	movl      $-1, 8(%eax)
	movl      %ecx, 12(%eax)
	movl      %edi, 20(%eax)
	movl      %edx, 16(%eax)
.L904:
	movl      (%esi), %edi
	leal      -1(%edi), %ecx
	testl     %ecx, %ecx
	movl      %ecx, (%esi)
	je        .L927
.L899:
	testl     %ebp, %ebp
	je        .L916
	movl      (%ebp), %edx
	leal      -1(%edx), %ecx
	testl     %ecx, %ecx
	movl      %ecx, (%ebp)
	jne       .L916
	movl      %eax, 4(%esp)
	movl      4(%ebp), %ecx
	subl      $12, %esp
	pushl     %ebp
	call      *24(%ecx)
	addl      $16, %esp
	movl      4(%esp), %eax
.L916:
	addl      $28, %esp
	popl      %ebx
	popl      %esi
	popl      %edi
	popl      %ebp
	ret       
.L926:
	leal      .LC46@GOTOFF(%ebx), %eax
	pushl     $999999999
	pushl     %ecx
	pushl     %eax
	movl      PyExc_OverflowError@GOT(%ebx), %eax
	pushl     (%eax)
	call      PyErr_Format@PLT
	addl      $16, %esp
	.p2align 4,,10
	.p2align 3
.L893:
	movl      (%esi), %edi
	xorl      %eax, %eax
	leal      -1(%edi), %ecx
	testl     %ecx, %ecx
	movl      %ecx, (%esi)
	jne       .L899
.L927:
	movl      %eax, 4(%esp)
	movl      4(%esi), %ecx
	subl      $12, %esp
	pushl     %esi
	call      *24(%ecx)
	addl      $16, %esp
	movl      4(%esp), %eax
	jmp       .L899
	.p2align 4,,10
	.p2align 3
.L922:
	call      PyErr_Occurred@PLT
	xorl      %ebp, %ebp
	testl     %eax, %eax
	je        .L893
.L912:
	xorl      %eax, %eax
	xorl      %ebp, %ebp
	jmp       .L904
	.p2align 4,,10
	.p2align 3
.L923:
	subl      $12, %esp
	movl      4(%esi), %eax
	pushl     %esi
	call      *24(%eax)
	addl      $16, %esp
	jmp       .L894
	.p2align 4,,10
	.p2align 3
.L924:
	subl      $12, %esp
	movl      4(%ebp), %eax
	pushl     %ebp
	call      *24(%eax)
	addl      $16, %esp
	jmp       .L895
	.p2align 4,,10
	.p2align 3
.L925:
	movl      %eax, 12(%esp)
	call      PyErr_Occurred@PLT
	movl      %eax, %edx
	xorl      %eax, %eax
	movl      12(%esp), %ecx
	testl     %edx, %edx
	je        .L898
	jmp       .L904
	.p2align 4,,10
	.p2align 3
.L905:
	xorl      %ebp, %ebp
.L890:
	xorl      %eax, %eax
	jmp       .L899
	.size	microseconds_to_delta_ex, .-microseconds_to_delta_ex
# ----------------------
	.p2align 4,,15
# ----------------------
	.local	delta_new
	.type	delta_new, @function
delta_new:
	pushl     %ebp
	pushl     %edi
	fldz      
	pushl     %esi
	pushl     %ebx
	call      __x86.get_pc_thunk.bx
	addl      $_GLOBAL_OFFSET_TABLE_, %ebx
	subl      $96, %esp
	leal      72(%esp), %eax
	movl      $0, 48(%esp)
	movl      $0, 52(%esp)
	movl      $0, 56(%esp)
	movl      $0, 60(%esp)
	fstpl     76(%esp)
	movl      $0, 64(%esp)
	movl      $0, 68(%esp)
	movl      $0, 72(%esp)
	pushl     %eax
	leal      72(%esp), %eax
	pushl     %eax
	leal      72(%esp), %eax
	pushl     %eax
	leal      72(%esp), %eax
	pushl     %eax
	leal      72(%esp), %eax
	pushl     %eax
	leal      72(%esp), %eax
	pushl     %eax
	leal      72(%esp), %eax
	pushl     %eax
	leal      keywords.9013@GOTOFF(%ebx), %eax
	pushl     %eax
	leal      .LC134@GOTOFF(%ebx), %eax
	pushl     %eax
	pushl     160(%esp)
	pushl     160(%esp)
	call      PyArg_ParseTupleAndKeywords@PLT
	addl      $48, %esp
	testl     %eax, %eax
	je        .L993
	subl      $12, %esp
	pushl     $0
	call      PyInt_FromLong@PLT
	addl      $16, %esp
	testl     %eax, %eax
	movl      %eax, %esi
	je        .L993
	movl      52(%esp), %eax
	testl     %eax, %eax
	je        .L954
	subl      $4, %esp
	leal      76(%esp), %edx
	pushl     %edx
	pushl     us_per_us@GOTOFF(%ebx)
	movl      %esi, %edx
	pushl     %eax
	leal      .LC135@GOTOFF(%ebx), %eax
	call      accum
	movl      %eax, %edi
	movl      (%esi), %eax
	addl      $16, %esp
	subl      $1, %eax
	testl     %eax, %eax
	movl      %eax, (%esi)
	je        .L994
.L933:
	testl     %edi, %edi
	je        .L993
	movl      56(%esp), %eax
	testl     %eax, %eax
	je        .L955
.L1004:
	subl      $4, %esp
	leal      76(%esp), %edx
	pushl     %edx
	pushl     us_per_ms@GOTOFF(%ebx)
	movl      %edi, %edx
	pushl     %eax
	leal      .LC136@GOTOFF(%ebx), %eax
	call      accum
	movl      %eax, %esi
	movl      (%edi), %eax
	addl      $16, %esp
	subl      $1, %eax
	testl     %eax, %eax
	movl      %eax, (%edi)
	je        .L995
.L935:
	testl     %esi, %esi
	je        .L993
	movl      48(%esp), %eax
	testl     %eax, %eax
	je        .L956
.L1005:
	subl      $4, %esp
	leal      76(%esp), %edx
	pushl     %edx
	pushl     us_per_second@GOTOFF(%ebx)
	movl      %esi, %edx
	pushl     %eax
	leal      .LC137@GOTOFF(%ebx), %eax
	call      accum
	movl      %eax, %edi
	movl      (%esi), %eax
	addl      $16, %esp
	subl      $1, %eax
	testl     %eax, %eax
	movl      %eax, (%esi)
	je        .L996
.L937:
	testl     %edi, %edi
	je        .L993
	movl      60(%esp), %eax
	testl     %eax, %eax
	je        .L957
.L1006:
	subl      $4, %esp
	leal      76(%esp), %edx
	pushl     %edx
	pushl     us_per_minute@GOTOFF(%ebx)
	movl      %edi, %edx
	pushl     %eax
	leal      .LC138@GOTOFF(%ebx), %eax
	call      accum
	movl      %eax, %esi
	movl      (%edi), %eax
	addl      $16, %esp
	subl      $1, %eax
	testl     %eax, %eax
	movl      %eax, (%edi)
	je        .L997
.L939:
	testl     %esi, %esi
	je        .L993
	movl      64(%esp), %eax
	testl     %eax, %eax
	je        .L958
.L1007:
	subl      $4, %esp
	leal      76(%esp), %edx
	pushl     %edx
	pushl     us_per_hour@GOTOFF(%ebx)
	movl      %esi, %edx
	pushl     %eax
	leal      .LC139@GOTOFF(%ebx), %eax
	call      accum
	movl      %eax, %edi
	movl      (%esi), %eax
	addl      $16, %esp
	subl      $1, %eax
	testl     %eax, %eax
	movl      %eax, (%esi)
	je        .L998
.L941:
	testl     %edi, %edi
	je        .L993
	movl      44(%esp), %eax
	testl     %eax, %eax
	je        .L959
.L1008:
	subl      $4, %esp
	leal      76(%esp), %edx
	pushl     %edx
	pushl     us_per_day@GOTOFF(%ebx)
	movl      %edi, %edx
	pushl     %eax
	leal      .LC140@GOTOFF(%ebx), %eax
	call      accum
	movl      %eax, %ebp
	movl      (%edi), %eax
	addl      $16, %esp
	subl      $1, %eax
	testl     %eax, %eax
	movl      %eax, (%edi)
	je        .L999
	testl     %ebp, %ebp
	je        .L993
.L942:
	movl      68(%esp), %eax
	testl     %eax, %eax
	je        .L960
.L1009:
	subl      $4, %esp
	leal      76(%esp), %edx
	pushl     %edx
	pushl     us_per_week@GOTOFF(%ebx)
	movl      %ebp, %edx
	pushl     %eax
	leal      .LC141@GOTOFF(%ebx), %eax
	call      accum
	movl      %eax, %esi
	movl      (%ebp), %eax
	addl      $16, %esp
	subl      $1, %eax
	testl     %eax, %eax
	movl      %eax, (%ebp)
	je        .L1000
.L945:
	testl     %esi, %esi
	je        .L993
.L944:
	fldl      72(%esp)
	fldz      
	fxch      %st(1)
	fucom     %st(1)
	fnstsw    %ax
	fstp      %st(1)
	sahf      
	jp        .L961
	je        .L1010
.L961:
	fldz      
	fxch      %st(1)
	fucom     %st(1)
	fnstsw    %ax
	fstp      %st(1)
	sahf      
	jb        .L990
	fadds     .LC142@GOTOFF(%ebx)
	fnstcw    40(%esp)
	movzwl    40(%esp), %eax
	andl      $62463, %eax
	orl       $1024, %eax
	movw      %ax, 42(%esp)
	fldcw     42(%esp)
	frndint   
	fldcw     40(%esp)
	fstpl     24(%esp)
	fldl      24(%esp)
.L950:
	subl      $12, %esp
	fnstcw    34(%esp)
	movzwl    34(%esp), %eax
	movb      $12, %ah
	movw      %ax, 32(%esp)
	fldcw     32(%esp)
	fistpl    28(%esp)
	fldcw     34(%esp)
	movl      28(%esp), %edx
	pushl     %edx
	call      PyLong_FromLong@PLT
	addl      $16, %esp
	testl     %eax, %eax
	movl      %eax, %edi
	je        .L1001
	subl      $8, %esp
	pushl     %eax
	pushl     %esi
	call      PyNumber_Add@PLT
	movl      %eax, %ebp
	movl      (%edi), %eax
	addl      $16, %esp
	leal      -1(%eax), %edx
	testl     %edx, %edx
	movl      %edx, (%edi)
	je        .L1002
.L952:
	movl      (%esi), %eax
	leal      -1(%eax), %edx
	testl     %edx, %edx
	movl      %edx, (%esi)
	je        .L1003
.L953:
	testl     %ebp, %ebp
	je        .L993
	movl      %ebp, %esi
	jmp       .L946
	.p2align 4,,10
	.p2align 3
.L1010:
	fstp      %st(0)
.L946:
	movl      112(%esp), %edx
	movl      %esi, %eax
	call      microseconds_to_delta_ex
	movl      (%esi), %ecx
	leal      -1(%ecx), %edx
	testl     %edx, %edx
	movl      %edx, (%esi)
	jne       .L991
	movl      %eax, 12(%esp)
	movl      4(%esi), %edx
	subl      $12, %esp
	pushl     %esi
	call      *24(%edx)
	addl      $16, %esp
	movl      12(%esp), %eax
.L930:
.L991:
	addl      $92, %esp
	popl      %ebx
	popl      %esi
	popl      %edi
	popl      %ebp
	ret       
	.p2align 4,,10
	.p2align 3
.L960:
	movl      %ebp, %esi
	jmp       .L944
	.p2align 4,,10
	.p2align 3
.L1001:
	subl      $1, (%esi)
	jne       .L993
	subl      $12, %esp
	movl      4(%esi), %eax
	pushl     %esi
	call      *24(%eax)
	addl      $16, %esp
	.p2align 4,,10
	.p2align 3
.L993:
	addl      $92, %esp
	xorl      %eax, %eax
	popl      %ebx
	popl      %esi
	popl      %edi
	popl      %ebp
	ret       
	.p2align 4,,10
	.p2align 3
.L954:
	movl      56(%esp), %eax
	movl      %esi, %edi
	testl     %eax, %eax
	jne       .L1004
.L955:
	movl      48(%esp), %eax
	movl      %edi, %esi
	testl     %eax, %eax
	jne       .L1005
.L956:
	movl      60(%esp), %eax
	movl      %esi, %edi
	testl     %eax, %eax
	jne       .L1006
.L957:
	movl      64(%esp), %eax
	movl      %edi, %esi
	testl     %eax, %eax
	jne       .L1007
.L958:
	movl      44(%esp), %eax
	movl      %esi, %edi
	testl     %eax, %eax
	jne       .L1008
.L959:
	movl      68(%esp), %eax
	movl      %edi, %ebp
	testl     %eax, %eax
	jne       .L1009
	jmp       .L960
	.p2align 4,,10
	.p2align 3
.L994:
	subl      $12, %esp
	movl      4(%esi), %eax
	pushl     %esi
	call      *24(%eax)
	addl      $16, %esp
	jmp       .L933
	.p2align 4,,10
	.p2align 3
.L995:
	subl      $12, %esp
	movl      4(%edi), %eax
	pushl     %edi
	call      *24(%eax)
	addl      $16, %esp
	jmp       .L935
	.p2align 4,,10
	.p2align 3
.L996:
	subl      $12, %esp
	movl      4(%esi), %eax
	pushl     %esi
	call      *24(%eax)
	addl      $16, %esp
	jmp       .L937
	.p2align 4,,10
	.p2align 3
.L997:
	subl      $12, %esp
	movl      4(%edi), %eax
	pushl     %edi
	call      *24(%eax)
	addl      $16, %esp
	jmp       .L939
	.p2align 4,,10
	.p2align 3
.L998:
	subl      $12, %esp
	movl      4(%esi), %eax
	pushl     %esi
	call      *24(%eax)
	addl      $16, %esp
	jmp       .L941
	.p2align 4,,10
	.p2align 3
.L999:
	subl      $12, %esp
	movl      4(%edi), %eax
	pushl     %edi
	call      *24(%eax)
	addl      $16, %esp
	testl     %ebp, %ebp
	jne       .L942
	jmp       .L993
	.p2align 4,,10
	.p2align 3
.L1003:
	subl      $12, %esp
	movl      4(%esi), %eax
	pushl     %esi
	call      *24(%eax)
	addl      $16, %esp
	jmp       .L953
	.p2align 4,,10
	.p2align 3
.L1002:
	subl      $12, %esp
	movl      4(%edi), %eax
	pushl     %edi
	call      *24(%eax)
	addl      $16, %esp
	jmp       .L952
	.p2align 4,,10
	.p2align 3
.L1000:
	subl      $12, %esp
	movl      4(%ebp), %eax
	pushl     %ebp
	call      *24(%eax)
	addl      $16, %esp
	jmp       .L945
	.p2align 4,,10
	.p2align 3
.L990:
	fsubs     .LC142@GOTOFF(%ebx)
	fnstcw    40(%esp)
	movzwl    40(%esp), %eax
	andl      $62463, %eax
	orl       $2048, %eax
	movw      %ax, 42(%esp)
	fldcw     42(%esp)
	frndint   
	fldcw     40(%esp)
	fstpl     24(%esp)
	fldl      24(%esp)
	jmp       .L950
	.size	delta_new, .-delta_new
# ----------------------
	.p2align 4,,15
# ----------------------
	.local	delta_divide
	.type	delta_divide, @function
delta_divide:
	pushl     %edi
	pushl     %esi
	pushl     %ebx
	call      __x86.get_pc_thunk.bx
	addl      $_GLOBAL_OFFSET_TABLE_, %ebx
	subl      $16, %esp
	movl      32(%esp), %esi
	leal      PyDateTime_DeltaType@GOTOFF(%ebx), %eax
	movl      36(%esp), %edi
	movl      4(%esi), %edx
	cmpl      %eax, %edx
	je        .L1015
	subl      $8, %esp
	pushl     %eax
	pushl     %edx
	call      PyType_IsSubtype@PLT
	addl      $16, %esp
	testl     %eax, %eax
	je        .L1033
.L1015:
	movl      4(%edi), %eax
	movl      PyInt_Type@GOT(%ebx), %edx
	cmpl      %edx, %eax
	je        .L1013
	subl      $8, %esp
	pushl     %edx
	pushl     %eax
	call      PyType_IsSubtype@PLT
	addl      $16, %esp
	testl     %eax, %eax
	je        .L1034
.L1013:
	movl      %esi, %eax
	call      delta_to_microseconds
	testl     %eax, %eax
	movl      %eax, %esi
	je        .L1017
	subl      $8, %esp
	pushl     %edi
	pushl     %eax
	call      PyNumber_FloorDivide@PLT
	movl      %eax, %edi
	movl      (%esi), %eax
	addl      $16, %esp
	subl      $1, %eax
	testl     %eax, %eax
	movl      %eax, (%esi)
	je        .L1035
.L1019:
	testl     %edi, %edi
	je        .L1017
	leal      PyDateTime_DeltaType@GOTOFF(%ebx), %edx
	movl      %edi, %eax
	call      microseconds_to_delta_ex
	movl      (%edi), %ecx
	leal      -1(%ecx), %edx
	testl     %edx, %edx
	movl      %edx, (%edi)
	je        .L1036
.L1020:
	movl      _Py_NotImplementedStruct@GOT(%ebx), %edx
	cmpl      %edx, %eax
	je        .L1022
.L1025:
	addl      $16, %esp
	popl      %ebx
	popl      %esi
	popl      %edi
	ret       
	.p2align 4,,10
	.p2align 3
.L1034:
	movl      4(%edi), %eax
	movl      PyLong_Type@GOT(%ebx), %edx
	cmpl      %edx, %eax
	je        .L1013
	subl      $8, %esp
	pushl     %edx
	pushl     %eax
	call      PyType_IsSubtype@PLT
	addl      $16, %esp
	testl     %eax, %eax
	jne       .L1013
.L1033:
	movl      _Py_NotImplementedStruct@GOT(%ebx), %edx
.L1022:
	addl      $1, (%edx)
	addl      $16, %esp
	movl      %edx, %eax
	popl      %ebx
	popl      %esi
	popl      %edi
	ret       
	.p2align 4,,10
	.p2align 3
.L1035:
	subl      $12, %esp
	movl      4(%esi), %eax
	pushl     %esi
	call      *24(%eax)
	addl      $16, %esp
	jmp       .L1019
	.p2align 4,,10
	.p2align 3
.L1036:
	movl      %eax, 12(%esp)
	movl      4(%edi), %edx
	subl      $12, %esp
	pushl     %edi
	call      *24(%edx)
	addl      $16, %esp
	movl      12(%esp), %eax
	jmp       .L1020
	.p2align 4,,10
	.p2align 3
.L1017:
	xorl      %eax, %eax
	jmp       .L1025
	.size	delta_divide, .-delta_divide
# ----------------------
	.section       .data.rel.local,"aw",@progbits
	.align 4
	.local	keywords.9143
	.type	keywords.9143, @object
keywords.9143:
	.long	.LC234
	.long	0
	.size	keywords.9143, 8
# ----------------------
	.align 4
	.local	keywords.9449
	.type	keywords.9449, @object
keywords.9449:
	.long	.LC235
	.long	0
	.size	keywords.9449, 8
# ----------------------
	.align 4
	.local	keywords.9476
	.type	keywords.9476, @object
keywords.9476:
	.long	.LC226
	.long	.LC59
	.long	0
	.size	keywords.9476, 12
# ----------------------
	.section       .data.rel.ro.local,"aw",@progbits
	.align 4
	.local	DayNames.8801
	.type	DayNames.8801, @object
DayNames.8801:
	.long	.LC236
	.long	.LC237
	.long	.LC238
	.long	.LC239
	.long	.LC240
	.long	.LC241
	.long	.LC242
	.size	DayNames.8801, 28
# ----------------------
	.align 32
	.local	MonthNames.8802
	.type	MonthNames.8802, @object
MonthNames.8802:
	.long	.LC243
	.long	.LC244
	.long	.LC245
	.long	.LC246
	.long	.LC247
	.long	.LC248
	.long	.LC249
	.long	.LC250
	.long	.LC251
	.long	.LC252
	.long	.LC253
	.long	.LC254
	.size	MonthNames.8802, 48
# ----------------------
	.section       .data.rel.local,"aw",@progbits
	.align 4
	.local	keywords.9539
	.type	keywords.9539, @object
keywords.9539:
	.long	.LC255
	.long	0
	.size	keywords.9539, 8
# ----------------------
	.align 4
	.local	keywords.9597
	.type	keywords.9597, @object
keywords.9597:
	.long	.LC235
	.long	0
	.size	keywords.9597, 8
# ----------------------
	.align 32
	.local	keywords.9013
	.type	keywords.9013, @object
keywords.9013:
	.long	.LC140
	.long	.LC137
	.long	.LC135
	.long	.LC136
	.long	.LC138
	.long	.LC139
	.long	.LC141
	.long	0
	.size	keywords.9013, 32
# ----------------------
	.align 4
	.local	keywords.9325
	.type	keywords.9325, @object
keywords.9325:
	.long	.LC234
	.long	0
	.size	keywords.9325, 8
# ----------------------
	.align 4
	.local	keywords.9463
	.type	keywords.9463, @object
keywords.9463:
	.long	.LC256
	.long	.LC235
	.long	0
	.size	keywords.9463, 12
# ----------------------
	.align 32
	.local	CAPI
	.type	CAPI, @object
CAPI:
	.long	PyDateTime_DateType
	.long	PyDateTime_DateTimeType
	.long	PyDateTime_TimeType
	.long	PyDateTime_DeltaType
	.long	PyDateTime_TZInfoType
	.long	new_date_ex
	.long	new_datetime_ex
	.long	new_time_ex
	.long	new_delta_ex
	.long	datetime_fromtimestamp
	.long	date_fromtimestamp
	.size	CAPI, 44
# ----------------------
	.local	module_methods
	.comm	module_methods,16,4
# ----------------------
	.align 64
	.local	datetime_as_number
	.type	datetime_as_number, @object
datetime_as_number:
	.long	datetime_add
	.long	datetime_subtract
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.zero	108
	.size	datetime_as_number, 152
# ----------------------
	.data
	.align 64
	.local	datetime_doc
	.type	datetime_doc, @object
datetime_doc:
	.string	"datetime(year, month, day[, hour[, minute[, second[, microsecond[,tzinfo]]]]])\n\nThe year, month and day arguments are required. tzinfo may be None, or an\ninstance of a tzinfo subclass. The remaining arguments may be ints or longs.\n"
	.size	datetime_doc, 232
# ----------------------
	.section       .rodata.str1.4
	.align 4
.LC258:
	.string	"[tz] -> new datetime with tz's local day and time."
	.align 4
.LC260:
	.string	"Return a new datetime representing UTC day and time."
	.align 4
.LC261:
	.string	"timestamp[, tz] -> tz's local time from POSIX timestamp."
	.align 4
.LC263:
	.string	"timestamp -> UTC datetime from a POSIX timestamp (like time.time())."
	.align 4
.LC265:
	.string	"date, time -> datetime with same date and time fields"
	.align 4
.LC266:
	.string	"Return date object with same year, month and day."
	.align 4
.LC267:
	.string	"Return time object with same time but with tzinfo=None."
	.align 4
.LC269:
	.string	"Return time object with same time and tzinfo."
	.align 4
.LC272:
	.string	"Return time tuple, compatible with time.localtime()."
	.align 4
.LC274:
	.string	"Return UTC time tuple, compatible with time.localtime()."
	.align 4
.LC275:
	.string	"[sep] -> string in ISO 8601 format, YYYY-MM-DDTHH:MM:SS[.mmmmmm][+HH:MM].\n\nsep is used to separate the year from the time, and defaults to 'T'."
	.align 4
.LC276:
	.string	"Return self.tzinfo.utcoffset(self)."
	.align 4
.LC277:
	.string	"Return self.tzinfo.tzname(self)."
	.align 4
.LC279:
	.string	"Return datetime with new specified fields."
	.align 4
.LC281:
	.string	"tz -> convert to local time in new timezone tz\n"
	.align 4
.LC291:
	.string	"Return string in ISO 8601 format, HH:MM:SS[.mmmmmm][+HH:MM]."
	.align 4
.LC292:
	.string	"format -> strftime() style string."
	.align 4
.LC293:
	.string	"Return time with new specified fields."
	.align 4
.LC294:
	.string	"datetime -> string name of time zone."
	.align 4
.LC295:
	.string	"datetime -> minutes east of UTC (negative for west of UTC)."
	.align 4
.LC296:
	.string	"datetime -> DST offset in minutes east of UTC."
	.align 4
.LC297:
	.string	"datetime in UTC -> datetime in local time."
	.align 4
.LC299:
	.string	"timestamp -> local date from a POSIX timestamp (like time.time())."
	.align 4
.LC301:
	.string	"int -> date corresponding to a proleptic Gregorian ordinal."
	.align 4
.LC303:
	.string	"Current date or datetime:  same as self.__class__.fromtimestamp(time.time())."
	.align 4
.LC305:
	.string	"Return a 3-tuple containing ISO year, week number, and weekday."
	.align 4
.LC306:
	.string	"Return string in ISO 8601 format, YYYY-MM-DD."
	.align 4
.LC308:
	.string	"Return the day of the week represented by the date.\nMonday == 1 ... Sunday == 7"
	.align 4
.LC310:
	.string	"Return proleptic Gregorian ordinal.  January 1 of year 1 is day 1."
	.align 4
.LC312:
	.string	"Return the day of the week represented by the date.\nMonday == 0 ... Sunday == 6"
	.align 4
.LC313:
	.string	"Return date with new specified fields."
	.align 4
.LC315:
	.string	"Number of seconds (>= 0 and less than 1 day)."
	.align 4
.LC316:
	.string	"Number of microseconds (>= 0 and less than 1 second)."
# ----------------------
	.section       .data.rel.local,"aw",@progbits
	.align 64
	.local	datetime_methods
	.type	datetime_methods, @object
datetime_methods:
	.long	.LC257
	.long	datetime_now
	.long	18
	.long	.LC258
	.long	.LC259
	.long	datetime_utcnow
	.long	20
	.long	.LC260
	.long	.LC60
	.long	datetime_fromtimestamp
	.long	18
	.long	.LC261
	.long	.LC262
	.long	datetime_utcfromtimestamp
	.long	17
	.long	.LC263
	.long	.LC264
	.long	datetime_combine
	.long	19
	.long	.LC265
	.long	.LC226
	.long	datetime_getdate
	.long	4
	.long	.LC266
	.long	.LC59
	.long	datetime_gettime
	.long	4
	.long	.LC267
	.long	.LC268
	.long	datetime_gettimetz
	.long	4
	.long	.LC269
	.long	.LC270
	.long	datetime_ctime
	.long	4
	.long	.LC271
	.long	.LC104
	.long	datetime_timetuple
	.long	4
	.long	.LC272
	.long	.LC273
	.long	datetime_utctimetuple
	.long	4
	.long	.LC274
	.long	.LC28
	.long	datetime_isoformat
	.long	2
	.long	.LC275
	.long	.LC42
	.long	datetime_utcoffset
	.long	4
	.long	.LC276
	.long	.LC44
	.long	datetime_tzname
	.long	4
	.long	.LC277
	.long	.LC39
	.long	datetime_dst
	.long	4
	.long	.LC278
	.long	.LC196
	.long	datetime_replace
	.long	2
	.long	.LC279
	.long	.LC280
	.long	datetime_astimezone
	.long	2
	.long	.LC281
	.long	.LC282
	.long	datetime_reduce
	.long	4
	.long	.LC283
	.long	0
	.long	0
	.zero	8
	.size	datetime_methods, 304
# ----------------------
	.align 32
	.local	datetime_kws
	.type	datetime_kws, @object
datetime_kws:
	.long	.LC284
	.long	.LC285
	.long	.LC286
	.long	.LC287
	.long	.LC288
	.long	.LC289
	.long	.LC290
	.long	.LC228
	.long	0
	.size	datetime_kws, 36
# ----------------------
	.align 64
	.local	datetime_getset
	.type	datetime_getset, @object
datetime_getset:
	.long	.LC287
	.long	datetime_hour
	.zero	12
	.long	.LC288
	.long	datetime_minute
	.zero	12
	.long	.LC289
	.long	datetime_second
	.zero	12
	.long	.LC290
	.long	datetime_microsecond
	.zero	12
	.long	.LC228
	.long	datetime_tzinfo
	.zero	12
	.long	0
	.zero	16
	.size	datetime_getset, 120
# ----------------------
	.align 64
	.local	time_as_number
	.type	time_as_number, @object
time_as_number:
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	time_nonzero
	.zero	108
	.size	time_as_number, 152
# ----------------------
	.data
	.align 64
	.local	time_doc
	.type	time_doc, @object
time_doc:
	.string	"time([hour[, minute[, second[, microsecond[, tzinfo]]]]]) --> a time object\n\nAll arguments are optional. tzinfo may be None, or an instance of\na tzinfo subclass. The remaining arguments may be ints or longs.\n"
	.size	time_doc, 209
# ----------------------
	.section       .data.rel.local,"aw",@progbits
	.align 64
	.local	time_methods
	.type	time_methods, @object
time_methods:
	.long	.LC28
	.long	time_isoformat
	.long	2
	.long	.LC291
	.long	.LC199
	.long	time_strftime
	.long	2
	.long	.LC292
	.long	.LC42
	.long	time_utcoffset
	.long	4
	.long	.LC276
	.long	.LC44
	.long	time_tzname
	.long	4
	.long	.LC277
	.long	.LC39
	.long	time_dst
	.long	4
	.long	.LC278
	.long	.LC196
	.long	time_replace
	.long	2
	.long	.LC293
	.long	.LC282
	.long	time_reduce
	.long	4
	.long	.LC283
	.long	0
	.long	0
	.zero	8
	.size	time_methods, 128
# ----------------------
	.align 4
	.local	time_kws
	.type	time_kws, @object
time_kws:
	.long	.LC287
	.long	.LC288
	.long	.LC289
	.long	.LC290
	.long	.LC228
	.long	0
	.size	time_kws, 24
# ----------------------
	.align 64
	.local	time_getset
	.type	time_getset, @object
time_getset:
	.long	.LC287
	.long	time_hour
	.zero	12
	.long	.LC288
	.long	time_minute
	.zero	12
	.long	.LC289
	.long	py_time_second
	.zero	12
	.long	.LC290
	.long	time_microsecond
	.zero	12
	.long	.LC228
	.long	time_tzinfo
	.zero	12
	.long	0
	.zero	16
	.size	time_getset, 120
# ----------------------
	.data
	.align 32
	.local	tzinfo_doc
	.type	tzinfo_doc, @object
tzinfo_doc:
	.string	"Abstract base class for time zone info objects."
	.size	tzinfo_doc, 48
# ----------------------
	.section       .data.rel.local,"aw",@progbits
	.align 64
	.local	tzinfo_methods
	.type	tzinfo_methods, @object
tzinfo_methods:
	.long	.LC44
	.long	tzinfo_tzname
	.long	8
	.long	.LC294
	.long	.LC42
	.long	tzinfo_utcoffset
	.long	8
	.long	.LC295
	.long	.LC39
	.long	tzinfo_dst
	.long	8
	.long	.LC296
	.long	.LC174
	.long	tzinfo_fromutc
	.long	8
	.long	.LC297
	.long	.LC282
	.long	tzinfo_reduce
	.long	4
	.long	.LC298
	.long	0
	.long	0
	.zero	8
	.size	tzinfo_methods, 96
# ----------------------
	.align 64
	.local	date_as_number
	.type	date_as_number, @object
date_as_number:
	.long	date_add
	.long	date_subtract
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.zero	108
	.size	date_as_number, 152
# ----------------------
	.data
	.align 32
	.local	date_doc
	.type	date_doc, @object
date_doc:
	.string	"date(year, month, day) --> date object"
	.size	date_doc, 39
# ----------------------
	.section       .data.rel.local,"aw",@progbits
	.align 64
	.local	date_methods
	.type	date_methods, @object
date_methods:
	.long	.LC60
	.long	date_fromtimestamp
	.long	17
	.long	.LC299
	.long	.LC300
	.long	date_fromordinal
	.long	17
	.long	.LC301
	.long	.LC302
	.long	date_today
	.long	20
	.long	.LC303
	.long	.LC270
	.long	date_ctime
	.long	4
	.long	.LC271
	.long	.LC199
	.long	date_strftime
	.long	2
	.long	.LC292
	.long	.LC104
	.long	date_timetuple
	.long	4
	.long	.LC272
	.long	.LC304
	.long	date_isocalendar
	.long	4
	.long	.LC305
	.long	.LC28
	.long	date_isoformat
	.long	4
	.long	.LC306
	.long	.LC307
	.long	date_isoweekday
	.long	4
	.long	.LC308
	.long	.LC309
	.long	date_toordinal
	.long	4
	.long	.LC310
	.long	.LC311
	.long	date_weekday
	.long	4
	.long	.LC312
	.long	.LC196
	.long	date_replace
	.long	2
	.long	.LC313
	.long	.LC282
	.long	date_reduce
	.long	4
	.long	.LC283
	.long	0
	.long	0
	.zero	8
	.size	date_methods, 224
# ----------------------
	.align 4
	.local	date_kws
	.type	date_kws, @object
date_kws:
	.long	.LC284
	.long	.LC285
	.long	.LC286
	.long	0
	.size	date_kws, 16
# ----------------------
	.align 64
	.local	date_getset
	.type	date_getset, @object
date_getset:
	.long	.LC284
	.long	date_year
	.zero	12
	.long	.LC285
	.long	date_month
	.zero	12
	.long	.LC286
	.long	date_day
	.zero	12
	.long	0
	.zero	16
	.size	date_getset, 80
# ----------------------
	.align 64
	.local	delta_as_number
	.type	delta_as_number, @object
delta_as_number:
	.long	delta_add
	.long	delta_subtract
	.long	delta_multiply
	.long	delta_divide
	.long	0
	.long	0
	.long	0
	.long	delta_negative
	.long	delta_positive
	.long	delta_abs
	.long	delta_nonzero
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	delta_divide
	.long	0
	.long	0
	.long	0
	.size	delta_as_number, 152
# ----------------------
	.data
	.align 32
	.local	delta_doc
	.type	delta_doc, @object
delta_doc:
	.string	"Difference between two datetime values."
	.size	delta_doc, 40
# ----------------------
	.section       .data.rel.local,"aw",@progbits
	.align 32
	.local	delta_methods
	.type	delta_methods, @object
delta_methods:
	.long	.LC282
	.long	delta_reduce
	.long	4
	.long	.LC283
	.long	0
	.long	0
	.zero	8
	.size	delta_methods, 32
# ----------------------
	.align 64
	.local	delta_members
	.type	delta_members, @object
delta_members:
	.long	.LC140
	.long	1
	.long	12
	.long	1
	.long	.LC314
	.long	.LC137
	.long	1
	.long	16
	.long	1
	.long	.LC315
	.long	.LC135
	.long	1
	.long	20
	.long	1
	.long	.LC316
	.long	0
	.zero	16
	.size	delta_members, 80
# ----------------------
	.local	seconds_per_day
	.comm	seconds_per_day,4,4
# ----------------------
	.local	us_per_week
	.comm	us_per_week,4,4
# ----------------------
	.local	us_per_day
	.comm	us_per_day,4,4
# ----------------------
	.local	us_per_hour
	.comm	us_per_hour,4,4
# ----------------------
	.local	us_per_minute
	.comm	us_per_minute,4,4
# ----------------------
	.local	us_per_second
	.comm	us_per_second,4,4
# ----------------------
	.local	us_per_ms
	.comm	us_per_ms,4,4
# ----------------------
	.local	us_per_us
	.comm	us_per_us,4,4
# ----------------------
	.section       .rodata
	.align 32
	.local	_days_before_month
	.type	_days_before_month, @object
_days_before_month:
	.long	0
	.long	0
	.long	31
	.long	59
	.long	90
	.long	120
	.long	151
	.long	181
	.long	212
	.long	243
	.long	273
	.long	304
	.long	334
	.size	_days_before_month, 52
# ----------------------
	.align 32
	.local	_days_in_month
	.type	_days_in_month, @object
_days_in_month:
	.long	0
	.long	31
	.long	28
	.long	31
	.long	30
	.long	31
	.long	30
	.long	31
	.long	31
	.long	30
	.long	31
	.long	30
	.long	31
	.size	_days_in_month, 52
# ----------------------
	.section       .data.rel,"aw",@progbits
	.align 64
	.local	PyDateTime_TZInfoType
	.type	PyDateTime_TZInfoType, @object
PyDateTime_TZInfoType:
	.long	1
	.long	0
	.long	0
	.long	.LC317
	.long	8
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	PyObject_GenericGetAttr
	.long	0
	.long	0
	.long	1531
	.long	tzinfo_doc
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	tzinfo_methods
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	PyType_GenericNew
	.long	0
	.zero	28
	.size	PyDateTime_TZInfoType, 192
# ----------------------
	.align 64
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
	.size	PyDateTime_TimeType, 192
# ----------------------
	.align 64
	.local	PyDateTime_DeltaType
	.type	PyDateTime_DeltaType, @object
PyDateTime_DeltaType:
	.long	1
	.long	0
	.long	0
	.long	.LC319
	.long	24
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	delta_repr
	.long	delta_as_number
	.long	0
	.long	0
	.long	delta_hash
	.long	0
	.long	delta_str
	.long	PyObject_GenericGetAttr
	.long	0
	.long	0
	.long	1531
	.long	delta_doc
	.long	0
	.long	0
	.long	delta_richcompare
	.long	0
	.long	0
	.long	0
	.long	delta_methods
	.long	delta_members
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	delta_new
	.long	0
	.zero	28
	.size	PyDateTime_DeltaType, 192
# ----------------------
	.align 64
	.local	PyDateTime_DateTimeType
	.type	PyDateTime_DateTimeType, @object
PyDateTime_DateTimeType:
	.long	1
	.long	0
	.long	0
	.long	.LC320
	.long	28
	.long	0
	.long	datetime_dealloc
	.long	0
	.long	0
	.long	0
	.long	0
	.long	datetime_repr
	.long	datetime_as_number
	.long	0
	.long	0
	.long	datetime_hash
	.long	0
	.long	datetime_str
	.long	PyObject_GenericGetAttr
	.long	0
	.long	0
	.long	1531
	.long	datetime_doc
	.long	0
	.long	0
	.long	datetime_richcompare
	.long	0
	.long	0
	.long	0
	.long	datetime_methods
	.long	0
	.long	datetime_getset
	.long	PyDateTime_DateType
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	datetime_alloc
	.long	datetime_new
	.long	0
	.zero	28
	.size	PyDateTime_DateTimeType, 192
# ----------------------
	.align 64
	.local	PyDateTime_DateType
	.type	PyDateTime_DateType, @object
PyDateTime_DateType:
	.long	1
	.long	0
	.long	0
	.long	.LC321
	.long	20
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	date_repr
	.long	date_as_number
	.long	0
	.long	0
	.long	date_hash
	.long	0
	.long	date_str
	.long	PyObject_GenericGetAttr
	.long	0
	.long	0
	.long	1531
	.long	date_doc
	.long	0
	.long	0
	.long	date_richcompare
	.long	0
	.long	0
	.long	0
	.long	date_methods
	.long	0
	.long	date_getset
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	date_new
	.long	0
	.zero	28
	.size	PyDateTime_DateType, 192
# ----------------------
	.section       .rodata.cst4,"aM",@progbits,4
	.align 4
.LC142:
	.long	1056964608
	.align 4
.LC166:
	.long	1232348160
# ----------------------
	.section       .text.__x86.get_pc_thunk.cx,"axG",@progbits,__x86.get_pc_thunk.cx,comdat
	.hidden	__x86.get_pc_thunk.cx
	.globl	__x86.get_pc_thunk.cx
	.type	__x86.get_pc_thunk.cx, @function
__x86.get_pc_thunk.cx:
	movl      (%esp), %ecx
	ret       
# ----------------------
	.section       .text.__x86.get_pc_thunk.bx,"axG",@progbits,__x86.get_pc_thunk.bx,comdat
	.hidden	__x86.get_pc_thunk.bx
	.globl	__x86.get_pc_thunk.bx
	.type	__x86.get_pc_thunk.bx, @function
__x86.get_pc_thunk.bx:
	movl      (%esp), %ebx
	ret       
# ----------------------
	.ident	"GCC: (Debian 4.9.2-10) 4.9.2"
	.section	.note.GNU-stack,"",@progbits
