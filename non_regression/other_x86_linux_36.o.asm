	.file	"(extract)datetimemodule.c"
	.section	.rodata.str1.1,"a",@progbits
.LC01:
	.section	.rodata.str1.4,"a",@progbits
.LC04:
	.section	.text.unlikely,"ax",@progbits
.LCOLDB1:
	.section       .text.__x86.get_pc_thunk.bx,"axG",@progbits,__x86.get_pc_thunk.bx,comdat
	.hidden	__x86.get_pc_thunk.bx
	.globl	__x86.get_pc_thunk.bx
	.type	__x86.get_pc_thunk.bx, @function
__x86.get_pc_thunk.bx:
	movl      (%esp), %ebx
	ret       
# ----------------------
	.section       .text.__x86.get_pc_thunk.cx,"axG",@progbits,__x86.get_pc_thunk.cx,comdat
	.hidden	__x86.get_pc_thunk.cx
	.globl	__x86.get_pc_thunk.cx
	.type	__x86.get_pc_thunk.cx, @function
__x86.get_pc_thunk.cx:
	movl      (%esp), %ecx
	ret       
# ----------------------
	.section       .rodata.cst4,"aM",@progbits,4
	.align 4
.LC142:
	.long	1056964608
	.long	1232348160
# ----------------------
	.section       .data.rel.ro.local,"wa",@progbits
	.local	DayNames.8801
	.type	DayNames.8801, @object
DayNames.8801:
	.long	.LC00000075.str1.1
	.long	.LC00000079.str1.1
	.long	.LC0000007D.str1.1
	.long	.LC00000081.str1.1
	.long	.LC00000085.str1.1
	.long	.LC00000089.str1.1
	.long	.LC0000008D.str1.1
	.size	DayNames.8801, 28
# ----------------------
.LD0000001C.rel.ro.local:
	.long	0
# ----------------------
	.align 8
	.local	MonthNames.8802
	.type	MonthNames.8802, @object
MonthNames.8802:
	.long	.LC00000091.str1.1
	.long	.LC00000095.str1.1
	.long	.LC00000099.str1.1
	.long	.LC0000009D.str1.1
	.long	.LC000000A1.str1.1
	.long	.LC000000A5.str1.1
	.long	.LC000000A9.str1.1
	.long	.LC000000AD.str1.1
	.long	.LC000000B1.str1.1
	.long	.LC000000B5.str1.1
	.long	.LC000000B9.str1.1
	.long	.LC000000BD.str1.1
	.size	MonthNames.8802, 48
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
.LC00000034:
	.zero	12
# ----------------------
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
	.section       .rodata.str1.1,"a",@progbits
.LC00000000.str1.1:
	.string	"iiii"
.LC00000005.str1.1:
	.string	"((iiiiiiiii))"
.LC00000013.str1.1:
	.string	"struct_time"
.LC0000001F.str1.1:
	.string	"|OOOOOOO:__new__"
.LC00000030.str1.1:
	.string	"microseconds"
.LC0000003D.str1.1:
	.string	"milliseconds"
.LC0000004A.str1.1:
	.string	"seconds"
.LC00000052.str1.1:
	.string	"minutes"
.LC0000005A.str1.1:
	.string	"hours"
.LC00000060.str1.1:
	.string	"days"
.LC00000065.str1.1:
	.string	"weeks"
.LC0000006B.str1.1:
	.string	"format"
.LC00000072.str1.1:
	.string	"tz"
.LC00000075.str1.1:
	.string	"Mon"
.LC00000079.str1.1:
	.string	"Tue"
.LC0000007D.str1.1:
	.string	"Wed"
.LC00000081.str1.1:
	.string	"Thu"
.LC00000085.str1.1:
	.string	"Fri"
.LC00000089.str1.1:
	.string	"Sat"
.LC0000008D.str1.1:
	.string	"Sun"
.LC00000091.str1.1:
	.string	"Jan"
.LC00000095.str1.1:
	.string	"Feb"
.LC00000099.str1.1:
	.string	"Mar"
.LC0000009D.str1.1:
	.string	"Apr"
.LC000000A1.str1.1:
	.string	"May"
.LC000000A5.str1.1:
	.string	"Jun"
.LC000000A9.str1.1:
	.string	"Jul"
.LC000000AD.str1.1:
	.string	"Aug"
.LC000000B1.str1.1:
	.string	"Sep"
.LC000000B5.str1.1:
	.string	"Oct"
.LC000000B9.str1.1:
	.string	"Nov"
.LC000000BD.str1.1:
	.string	"Dec"
.LC000000C1.str1.1:
	.string	"sep"
.LC000000C5.str1.1:
	.string	"timestamp"
.LC000000CF.str1.1:
	.string	"now"
.LC000000D3.str1.1:
	.string	"utcnow"
.LC000000DA.str1.1:
	.string	"utcfromtimestamp"
.LC000000EB.str1.1:
	.string	"combine"
.LC000000F3.str1.1:
	.string	"timetz"
.LC000000FA.str1.1:
	.string	"ctime"
.LC00000100.str1.1:
	.string	"Return ctime() style string."
.LC0000011D.str1.1:
	.string	"utctimetuple"
.LC0000012A.str1.1:
	.string	"Return self.tzinfo.dst(self)."
.LC00000148.str1.1:
	.string	"astimezone"
.LC00000153.str1.1:
	.string	"__reduce__"
.LC0000015E.str1.1:
	.string	"__reduce__() -> (cls, state)"
.LC0000017B.str1.1:
	.string	"year"
.LC00000180.str1.1:
	.string	"month"
.LC00000186.str1.1:
	.string	"day"
.LC0000018A.str1.1:
	.string	"hour"
.LC0000018F.str1.1:
	.string	"minute"
.LC00000196.str1.1:
	.string	"second"
.LC0000019D.str1.1:
	.string	"microsecond"
.LC000001A9.str1.1:
	.string	"-> (cls, state)"
.LC000001B9.str1.1:
	.string	"fromordinal"
.LC000001C5.str1.1:
	.string	"today"
.LC000001CB.str1.1:
	.string	"isocalendar"
.LC000001D7.str1.1:
	.string	"isoweekday"
.LC000001E2.str1.1:
	.string	"toordinal"
.LC000001EC.str1.1:
	.string	"weekday"
.LC000001F4.str1.1:
	.string	"Number of days."
.LC00000204.str1.1:
	.string	"datetime.tzinfo"
.LC00000214.str1.1:
	.string	"datetime.time"
.LC00000222.str1.1:
	.string	"datetime.timedelta"
.LC00000235.str1.1:
	.string	"datetime.datetime"
.LC00000247.str1.1:
	.string	"datetime.date"
# ----------------------
	.data
	.local	datetime_doc
	.type	datetime_doc, @object
datetime_doc:
	.string	"datetime(year, month, day[, hour[, minute[, second[, microsecond[,tzinfo]]]]])\n\nThe year, month and day arguments are required. tzinfo may be None, or an\ninstance of a tzinfo subclass. The remaining arguments may be ints or longs.\n"
	.size	datetime_doc, 232
# ----------------------
.LD000000E8:
	.zero	24
# ----------------------
	.local	time_doc
	.type	time_doc, @object
time_doc:
	.string	"time([hour[, minute[, second[, microsecond[, tzinfo]]]]]) --> a time object\n\nAll arguments are optional. tzinfo may be None, or an instance of\na tzinfo subclass. The remaining arguments may be ints or longs.\n"
	.size	time_doc, 209
# ----------------------
.LD000001D1:
	.zero	15
# ----------------------
	.local	tzinfo_doc
	.type	tzinfo_doc, @object
tzinfo_doc:
	.string	"Abstract base class for time zone info objects."
	.size	tzinfo_doc, 48
# ----------------------
.LD00000210:
	.zero	16
# ----------------------
	.local	date_doc
	.type	date_doc, @object
date_doc:
	.string	"date(year, month, day) --> date object"
	.size	date_doc, 39
# ----------------------
.LD00000247:
	.zero	25
# ----------------------
	.local	delta_doc
	.type	delta_doc, @object
delta_doc:
	.string	"Difference between two datetime values."
	.size	delta_doc, 40
# ----------------------
	.section       .data.rel,"wa",@progbits
	.local	PyDateTime_TZInfoType
	.type	PyDateTime_TZInfoType, @object
PyDateTime_TZInfoType:
	.long	1
	.long	0
	.long	0
	.long	.LC00000204.str1.1
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
	.zero	24
	.long	tzinfo_methods
	.zero	36
	.long	PyType_GenericNew
	.zero	32
	.size	PyDateTime_TZInfoType, 192
# ----------------------
	.local	PyDateTime_TimeType
	.type	PyDateTime_TimeType, @object
PyDateTime_TimeType:
	.long	1
	.long	0
	.long	0
	.long	.LC00000214.str1.1
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
	.local	PyDateTime_DeltaType
	.type	PyDateTime_DeltaType, @object
PyDateTime_DeltaType:
	.long	1
	.long	0
	.long	0
	.long	.LC00000222.str1.1
	.long	24
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	delta_repr
	.long	delta_as_number
	.zero	8
	.long	delta_hash
	.long	0
	.long	delta_str
	.long	PyObject_GenericGetAttr
	.long	0
	.long	0
	.long	1531
	.long	delta_doc
	.zero	8
	.long	delta_richcompare
	.zero	12
	.long	delta_methods
	.long	delta_members
	.zero	28
	.long	0
	.long	delta_new
	.zero	32
	.size	PyDateTime_DeltaType, 192
# ----------------------
	.local	PyDateTime_DateTimeType
	.type	PyDateTime_DateTimeType, @object
PyDateTime_DateTimeType:
	.long	1
	.long	0
	.long	0
	.long	.LC00000235.str1.1
	.long	28
	.long	0
	.long	datetime_dealloc
	.zero	16
	.long	datetime_repr
	.long	datetime_as_number
	.zero	8
	.long	datetime_hash
	.long	0
	.long	datetime_str
	.long	PyObject_GenericGetAttr
	.long	0
	.long	0
	.long	1531
	.long	datetime_doc
	.zero	8
	.long	datetime_richcompare
	.zero	12
	.long	datetime_methods
	.long	0
	.long	datetime_getset
	.long	PyDateTime_DateType
	.zero	20
	.long	datetime_alloc
	.long	datetime_new
	.zero	32
	.size	PyDateTime_DateTimeType, 192
# ----------------------
	.local	PyDateTime_DateType
	.type	PyDateTime_DateType, @object
PyDateTime_DateType:
	.long	1
	.long	0
	.long	0
	.long	.LC00000247.str1.1
	.long	20
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	date_repr
	.long	date_as_number
	.zero	8
	.long	date_hash
	.long	0
	.long	date_str
	.long	PyObject_GenericGetAttr
	.long	0
	.long	0
	.long	1531
	.long	date_doc
	.zero	8
	.long	date_richcompare
	.zero	12
	.long	date_methods
	.long	0
	.long	date_getset
	.zero	28
	.long	date_new
	.zero	32
	.size	PyDateTime_DateType, 192
# ----------------------
	.section       .rodata.str1.4,"a",@progbits
.LC00000000.str1.4:
	.string	"[tz] -> new datetime with tz's local day and time."
# ----------------------
.LC00000033.str1.4:
	.byte	0
	.align 2
.LC00000034.str1.4:
	.string	"Return a new datetime representing UTC day and time."
# ----------------------
.LC00000069.str1.4:
	.zero	3
	.align 4
.LC0000006C.str1.4:
	.string	"timestamp[, tz] -> tz's local time from POSIX timestamp."
# ----------------------
.LC000000A5.str1.4:
	.zero	3
	.align 4
.LC000000A8.str1.4:
	.string	"timestamp -> UTC datetime from a POSIX timestamp (like time.time())."
# ----------------------
.LC000000ED.str1.4:
	.zero	3
	.align 4
.LC000000F0.str1.4:
	.string	"date, time -> datetime with same date and time fields"
# ----------------------
.LC00000126.str1.4:
	.value	0
	.align 4
.LC00000128.str1.4:
	.string	"Return date object with same year, month and day."
# ----------------------
.LC0000015A.str1.4:
	.value	0
	.align 4
.LC0000015C.str1.4:
	.string	"Return time object with same time but with tzinfo=None."
.LC00000194.str1.4:
	.string	"Return time object with same time and tzinfo."
# ----------------------
.LC000001C2.str1.4:
	.value	0
	.align 4
.LC000001C4.str1.4:
	.string	"Return time tuple, compatible with time.localtime()."
# ----------------------
.LC000001F9.str1.4:
	.zero	3
	.align 4
.LC000001FC.str1.4:
	.string	"Return UTC time tuple, compatible with time.localtime()."
# ----------------------
.LC00000235.str1.4:
	.zero	3
	.align 4
.LC00000238.str1.4:
	.string	"[sep] -> string in ISO 8601 format, YYYY-MM-DDTHH:MM:SS[.mmmmmm][+HH:MM].\n\nsep is used to separate the year from the time, and defaults to 'T'."
.LC000002C8.str1.4:
	.string	"Return self.tzinfo.utcoffset(self)."
.LC000002EC.str1.4:
	.string	"Return self.tzinfo.tzname(self)."
# ----------------------
.LC0000030D.str1.4:
	.zero	3
	.align 4
.LC00000310.str1.4:
	.string	"Return datetime with new specified fields."
# ----------------------
.LC0000033B.str1.4:
	.byte	0
	.align 2
.LC0000033C.str1.4:
	.string	"tz -> convert to local time in new timezone tz\n"
.LC0000036C.str1.4:
	.string	"Return string in ISO 8601 format, HH:MM:SS[.mmmmmm][+HH:MM]."
# ----------------------
.LC000003A9.str1.4:
	.zero	3
	.align 4
.LC000003AC.str1.4:
	.string	"format -> strftime() style string."
# ----------------------
.LC000003CF.str1.4:
	.byte	0
	.align 2
.LC000003D0.str1.4:
	.string	"Return time with new specified fields."
# ----------------------
.LC000003F7.str1.4:
	.byte	0
	.align 2
.LC000003F8.str1.4:
	.string	"datetime -> string name of time zone."
# ----------------------
.LC0000041E.str1.4:
	.value	0
	.align 4
.LC00000420.str1.4:
	.string	"datetime -> minutes east of UTC (negative for west of UTC)."
.LC0000045C.str1.4:
	.string	"datetime -> DST offset in minutes east of UTC."
# ----------------------
.LC0000048B.str1.4:
	.byte	0
	.align 2
.LC0000048C.str1.4:
	.string	"datetime in UTC -> datetime in local time."
# ----------------------
.LC000004B7.str1.4:
	.byte	0
	.align 2
.LC000004B8.str1.4:
	.string	"timestamp -> local date from a POSIX timestamp (like time.time())."
# ----------------------
.LC000004FB.str1.4:
	.byte	0
	.align 2
.LC000004FC.str1.4:
	.string	"int -> date corresponding to a proleptic Gregorian ordinal."
.LC00000538.str1.4:
	.string	"Current date or datetime:  same as self.__class__.fromtimestamp(time.time())."
# ----------------------
.LC00000586.str1.4:
	.value	0
	.align 4
.LC00000588.str1.4:
	.string	"Return a 3-tuple containing ISO year, week number, and weekday."
.LC000005C8.str1.4:
	.string	"Return string in ISO 8601 format, YYYY-MM-DD."
# ----------------------
.LC000005F6.str1.4:
	.value	0
	.align 4
.LC000005F8.str1.4:
	.string	"Return the day of the week represented by the date.\nMonday == 1 ... Sunday == 7"
.LC00000648.str1.4:
	.string	"Return proleptic Gregorian ordinal.  January 1 of year 1 is day 1."
# ----------------------
.LC0000068B.str1.4:
	.byte	0
	.align 2
.LC0000068C.str1.4:
	.string	"Return the day of the week represented by the date.\nMonday == 0 ... Sunday == 6"
.LC000006DC.str1.4:
	.string	"Return date with new specified fields."
# ----------------------
.LC00000703.str1.4:
	.byte	0
	.align 2
.LC00000704.str1.4:
	.string	"Number of seconds (>= 0 and less than 1 day)."
# ----------------------
.LC00000732.str1.4:
	.value	0
	.align 4
.LC00000734.str1.4:
	.string	"Number of microseconds (>= 0 and less than 1 second)."
# ----------------------
	.section       .data.rel.local,"wa",@progbits
	.local	keywords.9143
	.type	keywords.9143, @object
keywords.9143:
	.long	.LC0000006B.str1.1
	.long	0
	.size	keywords.9143, 8
# ----------------------
	.local	keywords.9449
	.type	keywords.9449, @object
keywords.9449:
	.long	.LC00000072.str1.1
	.long	0
	.size	keywords.9449, 8
# ----------------------
	.local	keywords.9476
	.type	keywords.9476, @object
keywords.9476:
	.long	.LC226
	.long	.LC59
	.long	0
	.size	keywords.9476, 12
# ----------------------
	.local	keywords.9539
	.type	keywords.9539, @object
keywords.9539:
	.long	.LC000000C1.str1.1
	.long	0
	.size	keywords.9539, 8
# ----------------------
	.local	keywords.9597
	.type	keywords.9597, @object
keywords.9597:
	.long	.LC00000072.str1.1
	.long	0
	.size	keywords.9597, 8
# ----------------------
.LD0000002C.rel.local:
	.zero	20
# ----------------------
	.local	keywords.9013
	.type	keywords.9013, @object
keywords.9013:
	.long	.LC00000060.str1.1
	.long	.LC0000004A.str1.1
	.long	.LC00000030.str1.1
	.long	.LC0000003D.str1.1
	.long	.LC00000052.str1.1
	.long	.LC0000005A.str1.1
	.long	.LC00000065.str1.1
	.long	0
	.size	keywords.9013, 32
# ----------------------
	.local	keywords.9325
	.type	keywords.9325, @object
keywords.9325:
	.long	.LC0000006B.str1.1
	.long	0
	.size	keywords.9325, 8
# ----------------------
	.local	keywords.9463
	.type	keywords.9463, @object
keywords.9463:
	.long	.LC000000C5.str1.1
	.long	.LC00000072.str1.1
	.long	0
	.size	keywords.9463, 12
# ----------------------
.LD00000074.rel.local:
	.zero	12
# ----------------------
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
.LD000000AC.rel.local:
	.zero	20
# ----------------------
	.local	datetime_as_number
	.type	datetime_as_number, @object
datetime_as_number:
	.long	datetime_add
	.long	datetime_subtract
	.zero	144
	.size	datetime_as_number, 152
# ----------------------
.LD00000158.rel.local:
	.zero	40
# ----------------------
	.local	datetime_methods
	.type	datetime_methods, @object
datetime_methods:
	.long	.LC000000CF.str1.1
	.long	datetime_now
	.long	18
	.long	.LC00000000.str1.4
	.long	.LC000000D3.str1.1
	.long	datetime_utcnow
	.long	20
	.long	.LC00000034.str1.4
	.long	.LC60
	.long	datetime_fromtimestamp
	.long	18
	.long	.LC0000006C.str1.4
	.long	.LC000000DA.str1.1
	.long	datetime_utcfromtimestamp
	.long	17
	.long	.LC000000A8.str1.4
	.long	.LC000000EB.str1.1
	.long	datetime_combine
	.long	19
	.long	.LC000000F0.str1.4
	.long	.LC226
	.long	datetime_getdate
	.long	4
	.long	.LC00000128.str1.4
	.long	.LC59
	.long	datetime_gettime
	.long	4
	.long	.LC0000015C.str1.4
	.long	.LC000000F3.str1.1
	.long	datetime_gettimetz
	.long	4
	.long	.LC00000194.str1.4
	.long	.LC000000FA.str1.1
	.long	datetime_ctime
	.long	4
	.long	.LC00000100.str1.1
	.long	.LC104
	.long	datetime_timetuple
	.long	4
	.long	.LC000001C4.str1.4
	.long	.LC0000011D.str1.1
	.long	datetime_utctimetuple
	.long	4
	.long	.LC000001FC.str1.4
	.long	.LC28
	.long	datetime_isoformat
	.long	2
	.long	.LC00000238.str1.4
	.long	.LC42
	.long	datetime_utcoffset
	.long	4
	.long	.LC000002C8.str1.4
	.long	.LC44
	.long	datetime_tzname
	.long	4
	.long	.LC000002EC.str1.4
	.long	.LC39
	.long	datetime_dst
	.long	4
	.long	.LC0000012A.str1.1
	.long	.LC196
	.long	datetime_replace
	.long	2
	.long	.LC00000310.str1.4
	.long	.LC00000148.str1.1
	.long	datetime_astimezone
	.long	2
	.long	.LC0000033C.str1.4
	.long	.LC00000153.str1.1
	.long	datetime_reduce
	.long	4
	.long	.LC0000015E.str1.1
	.zero	16
	.size	datetime_methods, 304
# ----------------------
.LD000002B0.rel.local:
	.zero	16
# ----------------------
	.local	datetime_kws
	.type	datetime_kws, @object
datetime_kws:
	.long	.LC0000017B.str1.1
	.long	.LC00000180.str1.1
	.long	.LC00000186.str1.1
	.long	.LC0000018A.str1.1
	.long	.LC0000018F.str1.1
	.long	.LC00000196.str1.1
	.long	.LC0000019D.str1.1
	.long	.LC228
	.long	0
	.size	datetime_kws, 36
# ----------------------
.LD000002E4.rel.local:
	.zero	28
# ----------------------
	.local	datetime_getset
	.type	datetime_getset, @object
datetime_getset:
	.long	.LC0000018A.str1.1
	.long	datetime_hour
	.zero	12
	.long	.LC0000018F.str1.1
	.long	datetime_minute
	.zero	12
	.long	.LC00000196.str1.1
	.long	datetime_second
	.zero	12
	.long	.LC0000019D.str1.1
	.long	datetime_microsecond
	.zero	12
	.long	.LC228
	.long	datetime_tzinfo
	.zero	32
	.size	datetime_getset, 120
# ----------------------
.LD00000378.rel.local:
	.zero	8
# ----------------------
	.local	time_as_number
	.type	time_as_number, @object
time_as_number:
	.zero	40
	.long	time_nonzero
	.zero	108
	.size	time_as_number, 152
# ----------------------
.LD00000418.rel.local:
	.zero	40
# ----------------------
	.local	time_methods
	.type	time_methods, @object
time_methods:
	.long	.LC28
	.long	time_isoformat
	.long	2
	.long	.LC0000036C.str1.4
	.long	.LC199
	.long	time_strftime
	.long	2
	.long	.LC000003AC.str1.4
	.long	.LC42
	.long	time_utcoffset
	.long	4
	.long	.LC000002C8.str1.4
	.long	.LC44
	.long	time_tzname
	.long	4
	.long	.LC000002EC.str1.4
	.long	.LC39
	.long	time_dst
	.long	4
	.long	.LC0000012A.str1.1
	.long	.LC196
	.long	time_replace
	.long	2
	.long	.LC000003D0.str1.4
	.long	.LC00000153.str1.1
	.long	time_reduce
	.long	4
	.long	.LC0000015E.str1.1
	.zero	16
	.size	time_methods, 128
# ----------------------
	.local	time_kws
	.type	time_kws, @object
time_kws:
	.long	.LC0000018A.str1.1
	.long	.LC0000018F.str1.1
	.long	.LC00000196.str1.1
	.long	.LC0000019D.str1.1
	.long	.LC228
	.long	0
	.size	time_kws, 24
# ----------------------
.LD000004D8.rel.local:
	.zero	40
# ----------------------
	.local	time_getset
	.type	time_getset, @object
time_getset:
	.long	.LC0000018A.str1.1
	.long	time_hour
	.zero	12
	.long	.LC0000018F.str1.1
	.long	time_minute
	.zero	12
	.long	.LC00000196.str1.1
	.long	py_time_second
	.zero	12
	.long	.LC0000019D.str1.1
	.long	time_microsecond
	.zero	12
	.long	.LC228
	.long	time_tzinfo
	.zero	32
	.size	time_getset, 120
# ----------------------
.LD00000578.rel.local:
	.zero	8
# ----------------------
	.local	tzinfo_methods
	.type	tzinfo_methods, @object
tzinfo_methods:
	.long	.LC44
	.long	tzinfo_tzname
	.long	8
	.long	.LC000003F8.str1.4
	.long	.LC42
	.long	tzinfo_utcoffset
	.long	8
	.long	.LC00000420.str1.4
	.long	.LC39
	.long	tzinfo_dst
	.long	8
	.long	.LC0000045C.str1.4
	.long	.LC174
	.long	tzinfo_fromutc
	.long	8
	.long	.LC0000048C.str1.4
	.long	.LC00000153.str1.1
	.long	tzinfo_reduce
	.long	4
	.long	.LC000001A9.str1.1
	.zero	16
	.size	tzinfo_methods, 96
# ----------------------
.LD000005E0.rel.local:
	.zero	32
# ----------------------
	.local	date_as_number
	.type	date_as_number, @object
date_as_number:
	.long	date_add
	.long	date_subtract
	.zero	144
	.size	date_as_number, 152
# ----------------------
.LD00000698.rel.local:
	.zero	40
# ----------------------
	.local	date_methods
	.type	date_methods, @object
date_methods:
	.long	.LC60
	.long	date_fromtimestamp
	.long	17
	.long	.LC000004B8.str1.4
	.long	.LC000001B9.str1.1
	.long	date_fromordinal
	.long	17
	.long	.LC000004FC.str1.4
	.long	.LC000001C5.str1.1
	.long	date_today
	.long	20
	.long	.LC00000538.str1.4
	.long	.LC000000FA.str1.1
	.long	date_ctime
	.long	4
	.long	.LC00000100.str1.1
	.long	.LC199
	.long	date_strftime
	.long	2
	.long	.LC000003AC.str1.4
	.long	.LC104
	.long	date_timetuple
	.long	4
	.long	.LC000001C4.str1.4
	.long	.LC000001CB.str1.1
	.long	date_isocalendar
	.long	4
	.long	.LC00000588.str1.4
	.long	.LC28
	.long	date_isoformat
	.long	4
	.long	.LC000005C8.str1.4
	.long	.LC000001D7.str1.1
	.long	date_isoweekday
	.long	4
	.long	.LC000005F8.str1.4
	.long	.LC000001E2.str1.1
	.long	date_toordinal
	.long	4
	.long	.LC00000648.str1.4
	.long	.LC000001EC.str1.1
	.long	date_weekday
	.long	4
	.long	.LC0000068C.str1.4
	.long	.LC196
	.long	date_replace
	.long	2
	.long	.LC000006DC.str1.4
	.long	.LC00000153.str1.1
	.long	date_reduce
	.long	4
	.long	.LC0000015E.str1.1
	.zero	16
	.size	date_methods, 224
# ----------------------
	.local	date_kws
	.type	date_kws, @object
date_kws:
	.long	.LC0000017B.str1.1
	.long	.LC00000180.str1.1
	.long	.LC00000186.str1.1
	.long	0
	.size	date_kws, 16
# ----------------------
.LD000007B0.rel.local:
	.zero	16
# ----------------------
	.local	date_getset
	.type	date_getset, @object
date_getset:
	.long	.LC0000017B.str1.1
	.long	date_year
	.zero	12
	.long	.LC00000180.str1.1
	.long	date_month
	.zero	12
	.long	.LC00000186.str1.1
	.long	date_day
	.zero	32
	.size	date_getset, 80
# ----------------------
.LD00000810.rel.local:
	.zero	48
# ----------------------
	.local	delta_as_number
	.type	delta_as_number, @object
delta_as_number:
	.long	delta_add
	.long	delta_subtract
	.long	delta_multiply
	.long	delta_divide
	.zero	12
	.long	delta_negative
	.long	delta_positive
	.long	delta_abs
	.long	delta_nonzero
	.zero	92
	.long	delta_divide
	.zero	12
	.size	delta_as_number, 152
# ----------------------
.LD000008D8.rel.local:
	.zero	8
# ----------------------
	.local	delta_methods
	.type	delta_methods, @object
delta_methods:
	.long	.LC00000153.str1.1
	.long	delta_reduce
	.long	4
	.long	.LC0000015E.str1.1
	.zero	16
	.size	delta_methods, 32
# ----------------------
	.local	delta_members
	.type	delta_members, @object
delta_members:
	.long	.LC00000060.str1.1
	.long	1
	.long	12
	.long	1
	.long	.LC000001F4.str1.1
	.long	.LC0000004A.str1.1
	.long	1
	.long	16
	.long	1
	.long	.LC00000704.str1.4
	.long	.LC00000030.str1.1
	.long	1
	.long	20
	.long	1
	.long	.LC00000734.str1.4
	.zero	20
	.size	delta_members, 80
# ----------------------
	.text
	.local	datetime_ctime
	.type	datetime_ctime, @function
datetime_ctime:
	pushl     %ebp
	pushl     %edi
	movl      $-366, %ecx
	pushl     %esi
	pushl     %ebx
	call      __x86.get_pc_thunk.bx
.L0000000E:
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
	je        .L0000008E
.L0000005A:
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
.L0000008E:
	cmpl      $2, %ebp
	movl      _days_before_month@GOTOFF(%ebx,%ebp,4), %esi
	jle       .L000000BA
.L0000009A:
	testl     $3, %edi
	jne       .L000000BA
.L000000A2:
	movl      %edi, %eax
	movl      $1374389535, %edx
	mull      %edx
	movl      %edx, %eax
	shrl      $5, %eax
	imull     $100, %eax, %eax
	cmpl      %eax, %edi
	je        .L00000130
.L000000B7:
	addl      $1, %esi
.L000000BA:
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
	pushl     -4+MonthNames.8802@GOTOFF(%ebx,%ebp,4)
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
.L00000119:
	addl      $36, %esp
	pushl     %esi
	call      PyString_FromString@PLT
.L00000122:
	addl      $188, %esp
	popl      %ebx
	popl      %esi
	popl      %edi
	popl      %ebp
	ret       
.L0000012D:
	.p2align 4,,10
	.p2align 3
.L00000130:
	shrl      $7, %edx
	imull     $400, %edx, %edx
	cmpl      %edx, %edi
	jne       .L000000BA
.L00000141:
	jmp       .L000000B7
	.size	datetime_ctime, .-datetime_ctime
# ----------------------
.L00000146:
	.p2align 4
# ----------------------
	.local	time_hash
	.type	time_hash, @function
time_hash:
	pushl     %ebp
	pushl     %edi
	pushl     %esi
	pushl     %ebx
	call      __x86.get_pc_thunk.bx
.L00000159:
	addl      $_GLOBAL_OFFSET_TABLE_, %ebx
	subl      $44, %esp
	movl      64(%esp), %esi
	movl      8(%esi), %edi
	cmpl      $-1, %edi
	je        .L00000180
.L0000016E:
	addl      $44, %esp
	movl      %edi, %eax
	popl      %ebx
	popl      %esi
	popl      %edi
	popl      %ebp
	ret       
.L00000178:
	.p2align 4
.L00000180:
	movl      4(%esi), %eax
	leal      PyDateTime_DateTimeType@GOTOFF(%ebx), %edx
	cmpl      %edx, %eax
	je        .L000003B0
.L00000191:
	subl      $8, %esp
	pushl     %edx
	pushl     %eax
	call      PyType_IsSubtype@PLT
.L0000019B:
	addl      $16, %esp
	testl     %eax, %eax
	jne       .L000002C0
.L000001A6:
	movl      4(%esi), %eax
	leal      PyDateTime_TimeType@GOTOFF(%ebx), %ebp
	cmpl      %ebp, %eax
	je        .L000001C8
.L000001B3:
	subl      $8, %esp
	pushl     %ebp
	pushl     %eax
	call      PyType_IsSubtype@PLT
.L000001BD:
	addl      $16, %esp
	testl     %eax, %eax
	je        .L000003F8
.L000001C8:
	cmpb      $0, 12(%esi)
	je        .L000003F8
.L000001D2:
	movl      20(%esi), %eax
.L000001D5:
	movl      _Py_NoneStruct@GOT(%ebx), %edx
	cmpl      %edx, %eax
	je        .L00000310
.L000001E3:
	testl     %eax, %eax
	je        .L00000400
.L000001EB:
	subl      $8, %esp
	leal      36(%esp), %ecx
	pushl     %ecx
	pushl     %edx
	leal      .LC42@GOTOFF(%ebx), %edx
	call      call_utc_tzinfo_method
.L000001FF:
	addl      $16, %esp
	cmpl      $-1, %eax
	movl      %eax, %ecx
	je        .L0000040E
.L0000020D:
	testl     %eax, %eax
	je        .L00000310
.L00000215:
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
	js        .L000003E8
.L00000249:
	cmpl      $23, %edi
	jbe       .L00000330
.L00000252:
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
	leal      .LC00000000.str1.1@GOTOFF(%ebx), %eax
	pushl     24(%esp)
	pushl     %edi
	pushl     %eax
	call      Py_BuildValue@PLT
.L00000284:
	addl      $32, %esp
	movl      %eax, %ebp
.L00000289:
	testl     %ebp, %ebp
	je        .L000002AD
.L0000028D:
	subl      $12, %esp
	pushl     %ebp
	call      PyObject_Hash@PLT
.L00000296:
	movl      %eax, 8(%esi)
	movl      (%ebp), %eax
	addl      $16, %esp
	subl      $1, %eax
	testl     %eax, %eax
	movl      %eax, (%ebp)
	je        .L000003D0
.L000002AD:
	movl      8(%esi), %edi
	addl      $44, %esp
	popl      %ebx
	popl      %esi
	movl      %edi, %eax
	popl      %edi
	popl      %ebp
	ret       
.L000002BA:
	.p2align 4,,10
	.p2align 3
.L000002C0:
	cmpb      $0, 12(%esi)
	jne       .L000003C0
.L000002CA:
	movl      4(%esi), %eax
	leal      PyDateTime_TimeType@GOTOFF(%ebx), %ebp
	cmpl      %ebp, %eax
	jne       .L000001B3
.L000002DB:
	cmpl      %ebp, %eax
	je        .L00000310
.L000002DF:
	subl      $8, %esp
	pushl     %ebp
	pushl     %eax
	call      PyType_IsSubtype@PLT
.L000002E9:
	addl      $16, %esp
	testl     %eax, %eax
	jne       .L00000310
.L000002F0:
	movl      4(%esi), %eax
	leal      PyDateTime_DateType@GOTOFF(%ebx), %edx
	cmpl      %edx, %eax
	je        .L00000310
.L000002FD:
	subl      $8, %esp
	pushl     %edx
	pushl     %eax
	call      PyType_IsSubtype@PLT
.L00000307:
	addl      $16, %esp
	.p2align 4,,10
	.p2align 3
.L00000310:
	leal      13(%esi), %eax
	subl      $8, %esp
	pushl     $6
	pushl     %eax
	call      PyString_FromStringAndSize@PLT
.L0000031E:
	addl      $16, %esp
	movl      %eax, %ebp
	jmp       .L00000289
.L00000328:
	.p2align 4
.L00000330:
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
.L00000364:
	addl      $16, %esp
	testl     %eax, %eax
	movl      %eax, %ebp
	movl      8(%esp), %ecx
	je        .L000002AD
.L00000375:
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
	jmp       .L0000028D
.L000003AB:
	.p2align 4,,10
	.p2align 3
.L000003B0:
	cmpb      $0, 12(%esi)
	leal      PyDateTime_TimeType@GOTOFF(%ebx), %ebp
	je        .L000001B3
.L000003C0:
	movl      24(%esi), %eax
	jmp       .L000001D5
.L000003C8:
	.p2align 4
.L000003D0:
	subl      $12, %esp
	movl      4(%ebp), %eax
	pushl     %ebp
	call      *24(%eax)
.L000003DA:
	movl      8(%esi), %edi
	addl      $16, %esp
	jmp       .L0000016E
.L000003E5:
	.p2align 4,,10
	.p2align 3
.L000003E8:
	subl      $1, %edi
	addl      $60, 4(%esp)
	jmp       .L00000249
.L000003F5:
	.p2align 4,,10
	.p2align 3
.L000003F8:
	movl      4(%esi), %eax
	jmp       .L000002DB
.L00000400:
	movl      4(%esi), %eax
	leal      PyDateTime_TimeType@GOTOFF(%ebx), %ebp
	jmp       .L000002DB
.L0000040E:
	movl      %eax, 4(%esp)
	call      PyErr_Occurred@PLT
.L00000417:
	testl     %eax, %eax
	movl      4(%esp), %ecx
	jne       .L0000016E
.L00000423:
	jmp       .L00000215
	.size	time_hash, .-time_hash
# ----------------------
.L00000428:
	.p2align 4
# ----------------------
	.local	date_timetuple
	.type	date_timetuple, @function
date_timetuple:
	pushl     %ebp
	pushl     %edi
	pushl     %esi
	pushl     %ebx
	call      __x86.get_pc_thunk.bx
.L00000439:
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
.L00000471:
	addl      $16, %esp
	testl     %eax, %eax
	movl      %eax, %edi
	je        .L00000640
.L0000047E:
	movl      _days_before_month@GOTOFF(%ebx,%ebp,4), %ecx
	cmpl      $2, %ebp
	movl      %ecx, 12(%esp)
	jg        .L00000560
.L00000492:
	movl      16(%esp), %eax
	addl      12(%esp), %eax
	leal      -1(%esi), %ebp
	movl      $-366, %ecx
	cmpl      $-1, %ebp
	movl      %eax, 24(%esp)
	je        .L000004DF
.L000004AB:
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
.L000004DF:
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
	leal      .LC00000005.str1.1@GOTOFF(%ebx), %eax
	pushl     %ecx
	pushl     $0
	pushl     $0
	pushl     $0
	pushl     %ebp
	pushl     48(%esp)
	pushl     %esi
	pushl     %eax
	leal      .LC00000013.str1.1@GOTOFF(%ebx), %eax
	pushl     %eax
	pushl     %edi
	call      PyObject_CallMethod@PLT
.L00000532:
	movl      (%edi), %esi
	addl      $48, %esp
	leal      -1(%esi), %edx
	testl     %edx, %edx
	movl      %edx, (%edi)
	jne       .L00000555
.L00000540:
	movl      %eax, 12(%esp)
	movl      4(%edi), %edx
	subl      $12, %esp
	pushl     %edi
	call      *24(%edx)
.L0000054E:
	addl      $16, %esp
	movl      12(%esp), %eax
.L00000555:
	addl      $44, %esp
	popl      %ebx
	popl      %esi
	popl      %edi
	popl      %ebp
	ret       
.L0000055D:
	.p2align 4,,10
	.p2align 3
.L00000560:
	movl      %esi, %ebp
	movl      %ecx, %eax
	andl      $3, %ebp
	jne       .L00000589
.L00000569:
	movl      %esi, %eax
	movl      $1374389535, %edx
	mull      %edx
	movl      %edx, %eax
	shrl      $5, %eax
	imull     $100, %eax, %eax
	cmpl      %eax, %esi
	je        .L00000618
.L00000582:
	movl      12(%esp), %eax
	addl      $1, %eax
.L00000589:
	addl      16(%esp), %eax
	leal      -1(%esi), %ecx
	cmpl      $-1, %ecx
	movl      %eax, 24(%esp)
	je        .L00000630
.L0000059D:
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
.L000005D9:
	testl     %ebp, %ebp
	jne       .L000004DF
.L000005E1:
	movl      %esi, %eax
	movl      $1374389535, %edx
	mull      %edx
	movl      %edx, %eax
	shrl      $5, %eax
	imull     $100, %eax, %eax
	cmpl      %eax, %esi
	je        .L00000600
.L000005F6:
	addl      $1, 12(%esp)
	jmp       .L000004DF
.L00000600:
	shrl      $7, %edx
	imull     $400, %edx, %edx
	cmpl      %edx, %esi
	je        .L000005F6
.L0000060D:
	jmp       .L000004DF
.L00000612:
	.p2align 4,,10
	.p2align 3
.L00000618:
	shrl      $7, %edx
	movl      %ecx, %eax
	imull     $400, %edx, %edx
	cmpl      %edx, %esi
	jne       .L00000589
.L0000062B:
	jmp       .L00000582
.L00000630:
	movw      $65170, %cx
	jmp       .L000005D9
.L00000636:
	.p2align 4
.L00000640:
	xorl      %eax, %eax
	jmp       .L00000555
	.size	date_timetuple, .-date_timetuple
# ----------------------
.L00000647:
	.p2align 4
# ----------------------
	.local	date_isocalendar
	.type	date_isocalendar, @function
date_isocalendar:
	pushl     %ebp
	pushl     %edi
	pushl     %esi
	pushl     %ebx
	call      __x86.get_pc_thunk.bx
.L00000659:
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
	je        .L00000820
.L00000683:
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
	jle       .L000006EE
.L000006EB:
	addl      $7, %ebp
.L000006EE:
	movzbl    16(%edi), %eax
	movl      %eax, 8(%esp)
	movzbl    15(%edi), %eax
.L000006FA:
	cmpl      $2, %eax
	movl      _days_before_month@GOTOFF(%ebx,%eax,4), %edi
	jle       .L00000711
.L00000706:
	testb     $3, 4(%esp)
	je        .L000007F0
.L00000711:
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
	js        .L000008E0
.L00000744:
	testl     %ebp, %ebp
	js        .L00000840
.L0000074C:
	cmpl      $51, %ebp
	jle       .L00000818
.L00000755:
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
	jle       .L000007BF
.L000007BC:
	addl      $7, %esi
.L000007BF:
	cmpl      %esi, 8(%esp)
	jl        .L00000818
.L000007C5:
	addl      $1, 4(%esp)
	movl      $1, %ebp
.L000007CF:
	leal      .LC21@GOTOFF(%ebx), %eax
	addl      $1, %edi
	pushl     %edi
	pushl     %ebp
	pushl     12(%esp)
	pushl     %eax
	call      Py_BuildValue@PLT
.L000007E4:
	addl      $44, %esp
	popl      %ebx
	popl      %esi
	popl      %edi
	popl      %ebp
	ret       
.L000007EC:
	.p2align 4,,10
	.p2align 3
.L000007F0:
	movl      4(%esp), %eax
	movl      $1374389535, %edx
	mull      %edx
	movl      %edx, %eax
	shrl      $5, %eax
	imull     $100, %eax, %eax
	cmpl      %eax, 4(%esp)
	je        .L000008F0
.L0000080D:
	addl      $1, %edi
	jmp       .L00000711
.L00000815:
	.p2align 4,,10
	.p2align 3
.L00000818:
	addl      $1, %ebp
	jmp       .L000007CF
.L0000081D:
	.p2align 4,,10
	.p2align 3
.L00000820:
	movzbl    16(%edi), %eax
	movl      $-363, %ebp
	movl      $-366, %ecx
	movl      %eax, 8(%esp)
	movzbl    15(%edi), %eax
	jmp       .L000006FA
.L0000083B:
	.p2align 4,,10
	.p2align 3
.L00000840:
	movl      4(%esp), %edi
	movl      $-363, %ecx
	subl      $2, %edi
	js        .L000008AB
.L0000084E:
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
	jle       .L000008AB
.L000008A8:
	addl      $7, %ecx
.L000008AB:
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
	js        .L00000910
.L000008D4:
	addl      $1, %ebp
	movl      %esi, 4(%esp)
	jmp       .L000007CF
.L000008E0:
	subl      $1, %ebp
	addl      $7, %edi
	jmp       .L00000744
.L000008EB:
	.p2align 4,,10
	.p2align 3
.L000008F0:
	shrl      $7, %edx
	imull     $400, %edx, %edx
	cmpl      %edx, 4(%esp)
	je        .L0000080D
.L00000903:
	jmp       .L00000711
.L00000908:
	.p2align 4
.L00000910:
	addl      $7, %edi
	movl      %esi, 4(%esp)
	jmp       .L000007CF
	.size	date_isocalendar, .-date_isocalendar
# ----------------------
.L0000091C:
	.p2align 4,,10
	.p2align 3
# ----------------------
	.local	delta_add
	.type	delta_add, @function
delta_add:
	pushl     %ebp
	pushl     %edi
	pushl     %esi
	pushl     %ebx
	call      __x86.get_pc_thunk.bx
.L00000929:
	addl      $_GLOBAL_OFFSET_TABLE_, %ebx
	subl      $28, %esp
	movl      48(%esp), %eax
	leal      PyDateTime_DeltaType@GOTOFF(%ebx), %esi
	movl      52(%esp), %ebp
	movl      4(%eax), %eax
	cmpl      %esi, %eax
	je        .L00000958
.L00000947:
	subl      $8, %esp
	pushl     %esi
	pushl     %eax
	call      PyType_IsSubtype@PLT
.L00000951:
	addl      $16, %esp
	testl     %eax, %eax
	je        .L00000970
.L00000958:
	movl      4(%ebp), %eax
	cmpl      %esi, %eax
	je        .L00000988
.L0000095F:
	subl      $8, %esp
	pushl     %esi
	pushl     %eax
	call      PyType_IsSubtype@PLT
.L00000969:
	addl      $16, %esp
	testl     %eax, %eax
	jne       .L00000988
.L00000970:
	movl      _Py_NotImplementedStruct@GOT(%ebx), %edx
.L00000976:
	addl      $1, (%edx)
	movl      %edx, %eax
.L0000097B:
	addl      $28, %esp
	popl      %ebx
	popl      %esi
	popl      %edi
	popl      %ebp
	ret       
.L00000983:
	.p2align 4,,10
	.p2align 3
.L00000988:
	movl      48(%esp), %eax
	movl      12(%ebp), %ecx
	movl      16(%ebp), %edi
	movl      20(%ebp), %ebp
	addl      20(%eax), %ebp
	addl      12(%eax), %ecx
	addl      16(%eax), %edi
	cmpl      $999999, %ebp
	ja        .L00000A30
.L000009AA:
	cmpl      $86399, %edi
	jbe       .L000009D7
.L000009B2:
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
	js        .L00000A58
.L000009D5:
	addl      %edx, %ecx
.L000009D7:
	leal      999999999(%ecx), %eax
	cmpl      $1999999998, %eax
	ja        .L00000A80
.L000009E8:
	movl      %ecx, 12(%esp)
	subl      $8, %esp
	pushl     $0
	pushl     %esi
	call      *PyDateTime_DeltaType@GOTOFF+152(%ebx)
.L000009F8:
	addl      $16, %esp
	testl     %eax, %eax
	movl      12(%esp), %ecx
	je        .L0000097B
.L00000A07:
	movl      _Py_NotImplementedStruct@GOT(%ebx), %edx
	movl      $-1, 8(%eax)
	movl      %ecx, 12(%eax)
	movl      %edi, 16(%eax)
	movl      %ebp, 20(%eax)
	cmpl      %edx, %eax
	je        .L00000976
.L00000A25:
	addl      $28, %esp
	popl      %ebx
	popl      %esi
	popl      %edi
	popl      %ebp
	ret       
.L00000A2D:
	.p2align 4,,10
	.p2align 3
.L00000A30:
	movl      %ebp, %eax
	movl      $1125899907, %edx
	imull     %edx
	movl      %ebp, %eax
	sarl      $31, %eax
	sarl      $18, %edx
	subl      %eax, %edx
	imull     $1000000, %edx, %eax
	subl      %eax, %ebp
	js        .L00000A70
.L00000A4D:
	addl      %edx, %edi
	jmp       .L000009AA
.L00000A54:
	.p2align 4,,10
	.p2align 3
.L00000A58:
	subl      $1, %edx
	addl      $86400, %edi
	addl      %edx, %ecx
	jmp       .L000009D7
.L00000A68:
	.p2align 4
.L00000A70:
	subl      $1, %edx
	addl      $1000000, %ebp
	addl      %edx, %edi
	jmp       .L000009AA
.L00000A80:
	leal      .LC46@GOTOFF(%ebx), %eax
	pushl     $999999999
	pushl     %ecx
	pushl     %eax
	movl      PyExc_OverflowError@GOT(%ebx), %eax
	pushl     (%eax)
	call      PyErr_Format@PLT
.L00000A9A:
	addl      $16, %esp
	xorl      %eax, %eax
	jmp       .L0000097B
	.size	delta_add, .-delta_add
# ----------------------
.L00000AA4:
	.p2align 4
# ----------------------
	.local	datetime_timetuple
	.type	datetime_timetuple, @function
datetime_timetuple:
	pushl     %ebp
	pushl     %edi
	pushl     %esi
	pushl     %ebx
	call      __x86.get_pc_thunk.bx
.L00000AB9:
	addl      $_GLOBAL_OFFSET_TABLE_, %ebx
	subl      $76, %esp
	movl      96(%esp), %esi
	cmpb      $0, 12(%esi)
	je        .L00000B20
.L00000ACC:
	movl      24(%esi), %eax
	cmpl      _Py_NoneStruct@GOT(%ebx), %eax
	je        .L00000B20
.L00000AD7:
	subl      $8, %esp
	leal      68(%esp), %edx
	pushl     %edx
	leal      .LC39@GOTOFF(%ebx), %edx
	pushl     %esi
	call      call_utc_tzinfo_method
.L00000AEB:
	addl      $16, %esp
	cmpl      $-1, %eax
	movl      %eax, %edi
	je        .L00000D68
.L00000AF9:
	movl      60(%esp), %eax
	movl      $-1, 24(%esp)
	testl     %eax, %eax
	jne       .L00000B28
.L00000B09:
	xorl      %eax, %eax
	testl     %edi, %edi
	setne     %al
	movl      %eax, 24(%esp)
	jmp       .L00000B28
.L00000B16:
	.p2align 4
.L00000B20:
	movl      $-1, 24(%esp)
.L00000B28:
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
.L00000B72:
	addl      $16, %esp
	testl     %eax, %eax
	movl      %eax, %esi
	je        .L00000D75
.L00000B7F:
	cmpl      $2, %edi
	movl      _days_before_month@GOTOFF(%ebx,%edi,4), %ecx
	jg        .L00000C70
.L00000B8F:
	movl      16(%esp), %eax
	addl      %ecx, %eax
	movl      %eax, 44(%esp)
	movl      12(%esp), %eax
	leal      -1(%eax), %edi
	cmpl      $-1, %edi
	je        .L00000D58
.L00000BA9:
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
.L00000BE4:
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
	leal      .LC00000005.str1.1@GOTOFF(%ebx), %eax
	pushl     %ecx
	pushl     40(%esp)
	pushl     48(%esp)
	pushl     56(%esp)
	pushl     %edi
	pushl     68(%esp)
	pushl     44(%esp)
	pushl     %eax
	leal      .LC00000013.str1.1@GOTOFF(%ebx), %eax
	pushl     %eax
	pushl     %esi
	call      PyObject_CallMethod@PLT
.L00000C42:
	movl      (%esi), %ecx
	addl      $48, %esp
	leal      -1(%ecx), %edx
	testl     %edx, %edx
	movl      %edx, (%esi)
	jne       .L00000C65
.L00000C50:
	movl      %eax, 12(%esp)
	movl      4(%esi), %edx
	subl      $12, %esp
	pushl     %esi
	call      *24(%edx)
.L00000C5E:
	addl      $16, %esp
	movl      12(%esp), %eax
.L00000C65:
	addl      $76, %esp
	popl      %ebx
	popl      %esi
	popl      %edi
	popl      %ebp
	ret       
.L00000C6D:
	.p2align 4,,10
	.p2align 3
.L00000C70:
	movl      12(%esp), %ebp
	movl      %ecx, %eax
	andl      $3, %ebp
	jne       .L00000C9B
.L00000C7B:
	movl      12(%esp), %eax
	movl      $1374389535, %edx
	mull      %edx
	movl      %edx, %eax
	shrl      $5, %eax
	imull     $100, %eax, %eax
	cmpl      %eax, 12(%esp)
	je        .L00000D38
.L00000C98:
	leal      1(%ecx), %eax
.L00000C9B:
	addl      16(%esp), %eax
	movl      $-366, 20(%esp)
	movl      %eax, 44(%esp)
	movl      12(%esp), %eax
	leal      -1(%eax), %edi
	cmpl      $-1, %edi
	je        .L00000CF7
.L00000CB7:
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
.L00000CF7:
	testl     %ebp, %ebp
	jne       .L00000BE4
.L00000CFF:
	movl      12(%esp), %eax
	movl      $1374389535, %edx
	mull      %edx
	movl      %edx, %eax
	shrl      $5, %eax
	imull     $100, %eax, %eax
	cmpl      %eax, 12(%esp)
	je        .L00000D20
.L00000D18:
	addl      $1, %ecx
	jmp       .L00000BE4
.L00000D20:
	shrl      $7, %edx
	imull     $400, %edx, %edx
	cmpl      %edx, 12(%esp)
	je        .L00000D18
.L00000D2F:
	jmp       .L00000BE4
.L00000D34:
	.p2align 4,,10
	.p2align 3
.L00000D38:
	shrl      $7, %edx
	movl      %ecx, %eax
	imull     $400, %edx, %edx
	cmpl      %edx, 12(%esp)
	jne       .L00000C9B
.L00000D4D:
	jmp       .L00000C98
.L00000D52:
	.p2align 4,,10
	.p2align 3
.L00000D58:
	movl      $-366, 20(%esp)
	jmp       .L00000BE4
.L00000D65:
	.p2align 4,,10
	.p2align 3
.L00000D68:
	call      PyErr_Occurred@PLT
.L00000D6D:
	testl     %eax, %eax
	je        .L00000AF9
.L00000D75:
	xorl      %eax, %eax
	jmp       .L00000C65
	.size	datetime_timetuple, .-datetime_timetuple
# ----------------------
.L00000D7C:
	.p2align 4,,10
	.p2align 3
# ----------------------
	.local	microseconds_to_delta_ex
	.type	microseconds_to_delta_ex, @function
microseconds_to_delta_ex:
	pushl     %ebp
	pushl     %edi
	pushl     %esi
	pushl     %ebx
	call      __x86.get_pc_thunk.bx
.L00000D89:
	addl      $_GLOBAL_OFFSET_TABLE_, %ebx
	subl      $36, %esp
	movl      %edx, 16(%esp)
	pushl     us_per_second@GOTOFF(%ebx)
	pushl     %eax
	call      PyNumber_Divmod@PLT
.L00000DA2:
	addl      $16, %esp
	testl     %eax, %eax
	movl      %eax, %esi
	je        .L00000FD0
.L00000DAF:
	subl      $8, %esp
	pushl     $1
	pushl     %eax
	call      PyTuple_GetItem@PLT
.L00000DBA:
	addl      $16, %esp
	testl     %eax, %eax
	movl      %eax, %ebp
	je        .L00000F38
.L00000DC7:
	subl      $12, %esp
	pushl     %eax
	call      PyLong_AsLong@PLT
.L00000DD0:
	addl      $16, %esp
	cmpl      $-1, %eax
	movl      %eax, %edi
	je        .L00000F60
.L00000DDE:
	testl     %eax, %eax
	js        .L00000F6B
.L00000DE6:
	subl      $8, %esp
	pushl     $0
	pushl     %esi
	call      PyTuple_GetItem@PLT
.L00000DF1:
	addl      $16, %esp
	testl     %eax, %eax
	movl      %eax, %ebp
	je        .L00000F38
.L00000DFE:
	addl      $1, (%eax)
	subl      $1, (%esi)
	je        .L00000F78
.L00000E0A:
	subl      $8, %esp
	pushl     seconds_per_day@GOTOFF(%ebx)
	pushl     %ebp
	call      PyNumber_Divmod@PLT
.L00000E19:
	addl      $16, %esp
	testl     %eax, %eax
	movl      %eax, %esi
	je        .L00000FD2
.L00000E26:
	subl      $1, (%ebp)
	je        .L00000F90
.L00000E30:
	subl      $8, %esp
	pushl     $1
	pushl     %esi
	call      PyTuple_GetItem@PLT
.L00000E3B:
	addl      $16, %esp
	testl     %eax, %eax
	movl      %eax, %ebp
	je        .L00000F38
.L00000E48:
	subl      $12, %esp
	pushl     %eax
	call      PyLong_AsLong@PLT
.L00000E51:
	movl      %eax, 20(%esp)
	addl      $16, %esp
	cmpl      $-1, %eax
	je        .L00000F60
.L00000E61:
	movl      4(%esp), %eax
	testl     %eax, %eax
	js        .L00000F6B
.L00000E6D:
	subl      $8, %esp
	pushl     $0
	pushl     %esi
	call      PyTuple_GetItem@PLT
.L00000E78:
	addl      $16, %esp
	testl     %eax, %eax
	movl      %eax, %ebp
	je        .L00000F38
.L00000E85:
	addl      $1, (%eax)
	subl      $12, %esp
	pushl     %eax
	call      PyLong_AsLong@PLT
.L00000E91:
	addl      $16, %esp
	cmpl      $-1, %eax
	movl      %eax, %ecx
	je        .L00000FA8
.L00000E9F:
	leal      999999999(%eax), %eax
	cmpl      $1999999998, %eax
	ja        .L00000F18
.L00000EAC:
	movl      %ecx, 12(%esp)
	subl      $8, %esp
	pushl     $0
	movl      20(%esp), %eax
	pushl     %eax
	call      *152(%eax)
.L00000EC0:
	addl      $16, %esp
	testl     %eax, %eax
	movl      12(%esp), %ecx
	je        .L00000EDF
.L00000ECB:
	movl      4(%esp), %edx
	movl      $-1, 8(%eax)
	movl      %ecx, 12(%eax)
	movl      %edi, 20(%eax)
	movl      %edx, 16(%eax)
.L00000EDF:
	movl      (%esi), %edi
	leal      -1(%edi), %ecx
	testl     %ecx, %ecx
	movl      %ecx, (%esi)
	je        .L00000F45
.L00000EEA:
	testl     %ebp, %ebp
	je        .L00000F10
.L00000EEE:
	movl      (%ebp), %edx
	leal      -1(%edx), %ecx
	testl     %ecx, %ecx
	movl      %ecx, (%ebp)
	jne       .L00000F10
.L00000EFB:
	movl      %eax, 4(%esp)
	movl      4(%ebp), %ecx
	subl      $12, %esp
	pushl     %ebp
	call      *24(%ecx)
.L00000F09:
	addl      $16, %esp
	movl      4(%esp), %eax
.L00000F10:
	addl      $28, %esp
	popl      %ebx
	popl      %esi
	popl      %edi
	popl      %ebp
	ret       
.L00000F18:
	leal      .LC46@GOTOFF(%ebx), %eax
	pushl     $999999999
	pushl     %ecx
	pushl     %eax
	movl      PyExc_OverflowError@GOT(%ebx), %eax
	pushl     (%eax)
	call      PyErr_Format@PLT
.L00000F32:
	addl      $16, %esp
	.p2align 4,,10
	.p2align 3
.L00000F38:
	movl      (%esi), %edi
	xorl      %eax, %eax
	leal      -1(%edi), %ecx
	testl     %ecx, %ecx
	movl      %ecx, (%esi)
	jne       .L00000EEA
.L00000F45:
	movl      %eax, 4(%esp)
	movl      4(%esi), %ecx
	subl      $12, %esp
	pushl     %esi
	call      *24(%ecx)
.L00000F53:
	addl      $16, %esp
	movl      4(%esp), %eax
	jmp       .L00000EEA
.L00000F5C:
	.p2align 4,,10
	.p2align 3
.L00000F60:
	call      PyErr_Occurred@PLT
.L00000F65:
	xorl      %ebp, %ebp
	testl     %eax, %eax
	je        .L00000F38
.L00000F6B:
	xorl      %eax, %eax
	xorl      %ebp, %ebp
	jmp       .L00000EDF
.L00000F74:
	.p2align 4,,10
	.p2align 3
.L00000F78:
	subl      $12, %esp
	movl      4(%esi), %eax
	pushl     %esi
	call      *24(%eax)
.L00000F82:
	addl      $16, %esp
	jmp       .L00000E0A
.L00000F8A:
	.p2align 4,,10
	.p2align 3
.L00000F90:
	subl      $12, %esp
	movl      4(%ebp), %eax
	pushl     %ebp
	call      *24(%eax)
.L00000F9A:
	addl      $16, %esp
	jmp       .L00000E30
.L00000FA2:
	.p2align 4,,10
	.p2align 3
.L00000FA8:
	movl      %eax, 12(%esp)
	call      PyErr_Occurred@PLT
.L00000FB1:
	movl      %eax, %edx
	xorl      %eax, %eax
	movl      12(%esp), %ecx
	testl     %edx, %edx
	je        .L00000EAC
.L00000FC1:
	jmp       .L00000EDF
.L00000FC6:
	.p2align 4
.L00000FD0:
	xorl      %ebp, %ebp
.L00000FD2:
	xorl      %eax, %eax
	jmp       .L00000EEA
	.size	microseconds_to_delta_ex, .-microseconds_to_delta_ex
# ----------------------
.L00000FD9:
	.p2align 4
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
.L00000FEB:
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
	leal      .LC0000001F.str1.1@GOTOFF(%ebx), %eax
	pushl     %eax
	pushl     160(%esp)
	pushl     160(%esp)
	call      PyArg_ParseTupleAndKeywords@PLT
.L00001074:
	addl      $48, %esp
	testl     %eax, %eax
	je        .L00001398
.L0000107F:
	subl      $12, %esp
	pushl     $0
	call      PyInt_FromLong@PLT
.L00001089:
	addl      $16, %esp
	testl     %eax, %eax
	movl      %eax, %esi
	je        .L00001398
.L00001096:
	movl      52(%esp), %eax
	testl     %eax, %eax
	je        .L000013A8
.L000010A2:
	subl      $4, %esp
	leal      76(%esp), %edx
	pushl     %edx
	pushl     us_per_us@GOTOFF(%ebx)
	movl      %esi, %edx
	pushl     %eax
	leal      .LC00000030.str1.1@GOTOFF(%ebx), %eax
	call      accum
.L000010BE:
	movl      %eax, %edi
	movl      (%esi), %eax
	addl      $16, %esp
	subl      $1, %eax
	testl     %eax, %eax
	movl      %eax, (%esi)
	je        .L00001408
.L000010D2:
	testl     %edi, %edi
	je        .L00001398
.L000010DA:
	movl      56(%esp), %eax
	testl     %eax, %eax
	je        .L000013B6
.L000010E6:
	subl      $4, %esp
	leal      76(%esp), %edx
	pushl     %edx
	pushl     us_per_ms@GOTOFF(%ebx)
	movl      %edi, %edx
	pushl     %eax
	leal      .LC0000003D.str1.1@GOTOFF(%ebx), %eax
	call      accum
.L00001102:
	movl      %eax, %esi
	movl      (%edi), %eax
	addl      $16, %esp
	subl      $1, %eax
	testl     %eax, %eax
	movl      %eax, (%edi)
	je        .L00001420
.L00001116:
	testl     %esi, %esi
	je        .L00001398
.L0000111E:
	movl      48(%esp), %eax
	testl     %eax, %eax
	je        .L000013C4
.L0000112A:
	subl      $4, %esp
	leal      76(%esp), %edx
	pushl     %edx
	pushl     us_per_second@GOTOFF(%ebx)
	movl      %esi, %edx
	pushl     %eax
	leal      .LC0000004A.str1.1@GOTOFF(%ebx), %eax
	call      accum
.L00001146:
	movl      %eax, %edi
	movl      (%esi), %eax
	addl      $16, %esp
	subl      $1, %eax
	testl     %eax, %eax
	movl      %eax, (%esi)
	je        .L00001438
.L0000115A:
	testl     %edi, %edi
	je        .L00001398
.L00001162:
	movl      60(%esp), %eax
	testl     %eax, %eax
	je        .L000013D2
.L0000116E:
	subl      $4, %esp
	leal      76(%esp), %edx
	pushl     %edx
	pushl     us_per_minute@GOTOFF(%ebx)
	movl      %edi, %edx
	pushl     %eax
	leal      .LC00000052.str1.1@GOTOFF(%ebx), %eax
	call      accum
.L0000118A:
	movl      %eax, %esi
	movl      (%edi), %eax
	addl      $16, %esp
	subl      $1, %eax
	testl     %eax, %eax
	movl      %eax, (%edi)
	je        .L00001450
.L0000119E:
	testl     %esi, %esi
	je        .L00001398
.L000011A6:
	movl      64(%esp), %eax
	testl     %eax, %eax
	je        .L000013E0
.L000011B2:
	subl      $4, %esp
	leal      76(%esp), %edx
	pushl     %edx
	pushl     us_per_hour@GOTOFF(%ebx)
	movl      %esi, %edx
	pushl     %eax
	leal      .LC0000005A.str1.1@GOTOFF(%ebx), %eax
	call      accum
.L000011CE:
	movl      %eax, %edi
	movl      (%esi), %eax
	addl      $16, %esp
	subl      $1, %eax
	testl     %eax, %eax
	movl      %eax, (%esi)
	je        .L00001468
.L000011E2:
	testl     %edi, %edi
	je        .L00001398
.L000011EA:
	movl      44(%esp), %eax
	testl     %eax, %eax
	je        .L000013EE
.L000011F6:
	subl      $4, %esp
	leal      76(%esp), %edx
	pushl     %edx
	pushl     us_per_day@GOTOFF(%ebx)
	movl      %edi, %edx
	pushl     %eax
	leal      .LC00000060.str1.1@GOTOFF(%ebx), %eax
	call      accum
.L00001212:
	movl      %eax, %ebp
	movl      (%edi), %eax
	addl      $16, %esp
	subl      $1, %eax
	testl     %eax, %eax
	movl      %eax, (%edi)
	je        .L00001480
.L00001226:
	testl     %ebp, %ebp
	je        .L00001398
.L0000122E:
	movl      68(%esp), %eax
	testl     %eax, %eax
	je        .L00001378
.L0000123A:
	subl      $4, %esp
	leal      76(%esp), %edx
	pushl     %edx
	pushl     us_per_week@GOTOFF(%ebx)
	movl      %ebp, %edx
	pushl     %eax
	leal      .LC00000065.str1.1@GOTOFF(%ebx), %eax
	call      accum
.L00001256:
	movl      %eax, %esi
	movl      (%ebp), %eax
	addl      $16, %esp
	subl      $1, %eax
	testl     %eax, %eax
	movl      %eax, (%ebp)
	je        .L000014D0
.L0000126C:
	testl     %esi, %esi
	je        .L00001398
.L00001274:
	fldl      72(%esp)
	fldz      
	fxch      %st(1)
	fucom     %st(1)
	fnstsw    %ax
	fstp      %st(1)
	sahf      
	jp        .L0000128B
.L00001285:
	je        .L00001340
.L0000128B:
	fldz      
	fxch      %st(1)
	fucom     %st(1)
	fnstsw    %ax
	fstp      %st(1)
	sahf      
	jb        .L000014E8
.L0000129C:
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
.L000012CC:
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
.L000012F5:
	addl      $16, %esp
	testl     %eax, %eax
	movl      %eax, %edi
	je        .L00001380
.L00001302:
	subl      $8, %esp
	pushl     %eax
	pushl     %esi
	call      PyNumber_Add@PLT
.L0000130C:
	movl      %eax, %ebp
	movl      (%edi), %eax
	addl      $16, %esp
	leal      -1(%eax), %edx
	testl     %edx, %edx
	movl      %edx, (%edi)
	je        .L000014B8
.L00001320:
	movl      (%esi), %eax
	leal      -1(%eax), %edx
	testl     %edx, %edx
	movl      %edx, (%esi)
	je        .L000014A0
.L0000132F:
	testl     %ebp, %ebp
	je        .L00001398
.L00001333:
	movl      %ebp, %esi
	jmp       .L00001342
.L00001337:
	.p2align 4
.L00001340:
	fstp      %st(0)
.L00001342:
	movl      112(%esp), %edx
	movl      %esi, %eax
	call      microseconds_to_delta_ex
.L0000134D:
	movl      (%esi), %ecx
	leal      -1(%ecx), %edx
	testl     %edx, %edx
	movl      %edx, (%esi)
	jne       .L0000136D
.L00001358:
	movl      %eax, 12(%esp)
	movl      4(%esi), %edx
	subl      $12, %esp
	pushl     %esi
	call      *24(%edx)
.L00001366:
	addl      $16, %esp
	movl      12(%esp), %eax
.L0000136D:
	addl      $92, %esp
	popl      %ebx
	popl      %esi
	popl      %edi
	popl      %ebp
	ret       
.L00001375:
	.p2align 4,,10
	.p2align 3
.L00001378:
	movl      %ebp, %esi
	jmp       .L00001274
.L0000137F:
	.p2align 4,,10
	.p2align 3
.L00001380:
	subl      $1, (%esi)
	jne       .L00001398
.L00001385:
	subl      $12, %esp
	movl      4(%esi), %eax
	pushl     %esi
	call      *24(%eax)
.L0000138F:
	addl      $16, %esp
	.p2align 4,,10
	.p2align 3
.L00001398:
	addl      $92, %esp
	xorl      %eax, %eax
	popl      %ebx
	popl      %esi
	popl      %edi
	popl      %ebp
	ret       
.L000013A2:
	.p2align 4,,10
	.p2align 3
.L000013A8:
	movl      56(%esp), %eax
	movl      %esi, %edi
	testl     %eax, %eax
	jne       .L000010E6
.L000013B6:
	movl      48(%esp), %eax
	movl      %edi, %esi
	testl     %eax, %eax
	jne       .L0000112A
.L000013C4:
	movl      60(%esp), %eax
	movl      %esi, %edi
	testl     %eax, %eax
	jne       .L0000116E
.L000013D2:
	movl      64(%esp), %eax
	movl      %edi, %esi
	testl     %eax, %eax
	jne       .L000011B2
.L000013E0:
	movl      44(%esp), %eax
	movl      %esi, %edi
	testl     %eax, %eax
	jne       .L000011F6
.L000013EE:
	movl      68(%esp), %eax
	movl      %edi, %ebp
	testl     %eax, %eax
	jne       .L0000123A
.L000013FC:
	jmp       .L00001378
.L00001401:
	.p2align 4,,10
	.p2align 3
.L00001408:
	subl      $12, %esp
	movl      4(%esi), %eax
	pushl     %esi
	call      *24(%eax)
.L00001412:
	addl      $16, %esp
	jmp       .L000010D2
.L0000141A:
	.p2align 4,,10
	.p2align 3
.L00001420:
	subl      $12, %esp
	movl      4(%edi), %eax
	pushl     %edi
	call      *24(%eax)
.L0000142A:
	addl      $16, %esp
	jmp       .L00001116
.L00001432:
	.p2align 4,,10
	.p2align 3
.L00001438:
	subl      $12, %esp
	movl      4(%esi), %eax
	pushl     %esi
	call      *24(%eax)
.L00001442:
	addl      $16, %esp
	jmp       .L0000115A
.L0000144A:
	.p2align 4,,10
	.p2align 3
.L00001450:
	subl      $12, %esp
	movl      4(%edi), %eax
	pushl     %edi
	call      *24(%eax)
.L0000145A:
	addl      $16, %esp
	jmp       .L0000119E
.L00001462:
	.p2align 4,,10
	.p2align 3
.L00001468:
	subl      $12, %esp
	movl      4(%esi), %eax
	pushl     %esi
	call      *24(%eax)
.L00001472:
	addl      $16, %esp
	jmp       .L000011E2
.L0000147A:
	.p2align 4,,10
	.p2align 3
.L00001480:
	subl      $12, %esp
	movl      4(%edi), %eax
	pushl     %edi
	call      *24(%eax)
.L0000148A:
	addl      $16, %esp
	testl     %ebp, %ebp
	jne       .L0000122E
.L00001495:
	jmp       .L00001398
.L0000149A:
	.p2align 4,,10
	.p2align 3
.L000014A0:
	subl      $12, %esp
	movl      4(%esi), %eax
	pushl     %esi
	call      *24(%eax)
.L000014AA:
	addl      $16, %esp
	jmp       .L0000132F
.L000014B2:
	.p2align 4,,10
	.p2align 3
.L000014B8:
	subl      $12, %esp
	movl      4(%edi), %eax
	pushl     %edi
	call      *24(%eax)
.L000014C2:
	addl      $16, %esp
	jmp       .L00001320
.L000014CA:
	.p2align 4,,10
	.p2align 3
.L000014D0:
	subl      $12, %esp
	movl      4(%ebp), %eax
	pushl     %ebp
	call      *24(%eax)
.L000014DA:
	addl      $16, %esp
	jmp       .L0000126C
.L000014E2:
	.p2align 4,,10
	.p2align 3
.L000014E8:
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
	jmp       .L000012CC
	.size	delta_new, .-delta_new
# ----------------------
.L0000151D:
	.p2align 4,,10
	.p2align 3
# ----------------------
	.local	delta_divide
	.type	delta_divide, @function
delta_divide:
	pushl     %edi
	pushl     %esi
	pushl     %ebx
	call      __x86.get_pc_thunk.bx
.L00001528:
	addl      $_GLOBAL_OFFSET_TABLE_, %ebx
	subl      $16, %esp
	movl      32(%esp), %esi
	leal      PyDateTime_DeltaType@GOTOFF(%ebx), %eax
	movl      36(%esp), %edi
	movl      4(%esi), %edx
	cmpl      %eax, %edx
	je        .L0000155B
.L00001546:
	subl      $8, %esp
	pushl     %eax
	pushl     %edx
	call      PyType_IsSubtype@PLT
.L00001550:
	addl      $16, %esp
	testl     %eax, %eax
	je        .L000015F6
.L0000155B:
	movl      4(%edi), %eax
	movl      PyInt_Type@GOT(%ebx), %edx
	cmpl      %edx, %eax
	je        .L00001579
.L00001568:
	subl      $8, %esp
	pushl     %edx
	pushl     %eax
	call      PyType_IsSubtype@PLT
.L00001572:
	addl      $16, %esp
	testl     %eax, %eax
	je        .L000015D8
.L00001579:
	movl      %esi, %eax
	call      delta_to_microseconds
.L00001580:
	testl     %eax, %eax
	movl      %eax, %esi
	je        .L00001640
.L0000158A:
	subl      $8, %esp
	pushl     %edi
	pushl     %eax
	call      PyNumber_FloorDivide@PLT
.L00001594:
	movl      %eax, %edi
	movl      (%esi), %eax
	addl      $16, %esp
	subl      $1, %eax
	testl     %eax, %eax
	movl      %eax, (%esi)
	je        .L00001610
.L000015A4:
	testl     %edi, %edi
	je        .L00001640
.L000015AC:
	leal      PyDateTime_DeltaType@GOTOFF(%ebx), %edx
	movl      %edi, %eax
	call      microseconds_to_delta_ex
.L000015B9:
	movl      (%edi), %ecx
	leal      -1(%ecx), %edx
	testl     %edx, %edx
	movl      %edx, (%edi)
	je        .L00001620
.L000015C4:
	movl      _Py_NotImplementedStruct@GOT(%ebx), %edx
	cmpl      %edx, %eax
	je        .L000015FC
.L000015CE:
	addl      $16, %esp
	popl      %ebx
	popl      %esi
	popl      %edi
	ret       
.L000015D5:
	.p2align 4,,10
	.p2align 3
.L000015D8:
	movl      4(%edi), %eax
	movl      PyLong_Type@GOT(%ebx), %edx
	cmpl      %edx, %eax
	je        .L00001579
.L000015E5:
	subl      $8, %esp
	pushl     %edx
	pushl     %eax
	call      PyType_IsSubtype@PLT
.L000015EF:
	addl      $16, %esp
	testl     %eax, %eax
	jne       .L00001579
.L000015F6:
	movl      _Py_NotImplementedStruct@GOT(%ebx), %edx
.L000015FC:
	addl      $1, (%edx)
	addl      $16, %esp
	movl      %edx, %eax
	popl      %ebx
	popl      %esi
	popl      %edi
	ret       
.L00001608:
	.p2align 4
.L00001610:
	subl      $12, %esp
	movl      4(%esi), %eax
	pushl     %esi
	call      *24(%eax)
.L0000161A:
	addl      $16, %esp
	jmp       .L000015A4
.L0000161F:
	.p2align 4,,10
	.p2align 3
.L00001620:
	movl      %eax, 12(%esp)
	movl      4(%edi), %edx
	subl      $12, %esp
	pushl     %edi
	call      *24(%edx)
.L0000162E:
	addl      $16, %esp
	movl      12(%esp), %eax
	jmp       .L000015C4
.L00001637:
	.p2align 4
.L00001640:
	xorl      %eax, %eax
	jmp       .L000015CE
	.size	delta_divide, .-delta_divide
# ----------------------
	.local	module_methods
	.comm	module_methods,16,4
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
	.ident	"GCC: (Debian 4.9.2-10) 4.9.2"
	.section	.note.GNU-stack,"",@progbits
