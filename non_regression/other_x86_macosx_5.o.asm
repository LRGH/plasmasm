	.section       __TEXT,__text,regular,pure_instructions
	.align 4, 0x90
	.globl	_exclude_add_pattern_buffer
_exclude_add_pattern_buffer:
	pushl     %ebp
	movl      %esp, %ebp
	pushl     %edi
	pushl     %esi
	subl      $16, %esp
	movl      8(%ebp), %esi
	movl      12(%ebp), %edi
	movl      $8, (%esp)
	call      _xmalloc
L0000001A:
	movl      %edi, 4(%eax)
	movl      4(%esi), %ecx
	movl      %ecx, (%eax)
	movl      %eax, 4(%esi)
	addl      $16, %esp
	popl      %esi
	popl      %edi
	popl      %ebp
	ret       
# ----------------------
	.align 4, 0x90
	.globl	_fnmatch_pattern_has_wildcards
_fnmatch_pattern_has_wildcards:
	pushl     %ebp
	movl      %esp, %ebp
	pushl     %ebx
	pushl     %edi
	pushl     %esi
	pushl     %eax
	movl      8(%ebp), %esi
	movl      12(%ebp), %eax
	movl      %eax, %ecx
	andl      $134217728, %ecx
	movl      %eax, %edx
	andl      $2, %edx
	andl      $32, %eax
	movl      %eax, -16(%ebp)
	jmp       L00000060
L00000052:
	movzbl    %al, %eax
	leal      1(%eax,%ebx), %esi
	.align 4, 0x90
L00000060:
	movl      %esi, %ebx
	leal      1(%ebx), %esi
	movsbl    (%ebx), %edi
	cmpl      $90, %edi
	jg        L00000080
L0000006D:
	cmpl      $32, %edi
	jg        L000000A0
L00000072:
	testl     %edi, %edi
	jne       L00000060
L00000076:
	jmp       L00000116
L0000007B:
	.align 4, 0x90
L00000080:
	cmpl      $122, %edi
	jg        L000000D0
L00000085:
	cmpl      $92, %edi
	jne       L00000109
L0000008A:
	testl     %ecx, %ecx
	jne       L00000060
L0000008E:
	testl     %edx, %edx
	jne       L00000102
L00000092:
	cmpb      $0, (%esi)
	setne     %al
	jmp       L00000052
L0000009A:
	.align 4, 0x90
L000000A0:
	addl      $-33, %edi
	cmpl      $31, %edi
	ja        L00000060
L000000A8:
	movl      $-2147482623, %eax
	btl       %edi, %eax
	jb        L000000EA
L000000B2:
	movl      $8576, %eax
	btl       %edi, %eax
	jb        L000000E0
L000000BC:
	movl      $1073742336, %eax
	btl       %edi, %eax
	jae       L00000060
L000000C6:
	jmp       L00000112
L000000C8:
	.align 4, 0x90
L000000D0:
	cmpl      $123, %edi
	je        L000000E0
L000000D5:
	cmpl      $125, %edi
	jne       L00000060
L000000DA:
	.align 4, 0x90
L000000E0:
	testl     %ecx, %ecx
	je        L00000060
L000000E8:
	jmp       L00000112
L000000EA:
	cmpl      $0, -16(%ebp)
	je        L00000060
L000000F4:
	movzbl    (%esi), %eax
	cmpl      $40, %eax
	jne       L00000060
L00000100:
	jmp       L00000112
L00000102:
	xorl      %eax, %eax
	jmp       L00000052
L00000109:
	cmpl      $91, %edi
	jne       L00000060
L00000112:
	movb      $1, %al
	jmp       L00000118
L00000116:
	xorl      %eax, %eax
L00000118:
	movzbl    %al, %eax
	addl      $4, %esp
	popl      %esi
	popl      %edi
	popl      %ebx
	popl      %ebp
	ret       
# ----------------------
	.align 4, 0x90
	.globl	_new_exclude
_new_exclude:
	pushl     %ebp
	movl      %esp, %ebp
	subl      $8, %esp
	movl      $8, (%esp)
	call      _xzalloc
L00000142:
	addl      $8, %esp
	popl      %ebp
	ret       
# ----------------------
	.align 4, 0x90
	.globl	_free_exclude
_free_exclude:
	pushl     %ebp
	movl      %esp, %ebp
	pushl     %ebx
	pushl     %edi
	pushl     %esi
	subl      $12, %esp
	movl      8(%ebp), %eax
	movl      %eax, -20(%ebp)
	movl      (%eax), %esi
	jmp       L00000178
L00000163:
	.align 4, 0x90
L00000170:
	movl      %ebx, (%esp)
	call      _free
L00000178:
	testl     %esi, %esi
	je        L000001EF
L0000017C:
	movl      %esi, %ebx
	movl      (%ebx), %esi
	movl      4(%ebx), %eax
	testl     %eax, %eax
	jne       L000001A0
L00000187:
	movl      12(%ebx), %eax
	movl      %eax, (%esp)
	call      _hash_free
L00000192:
	jmp       L00000170
L00000194:
	.align 4, 0x90
L000001A0:
	cmpl      $1, %eax
	jne       L00000170
L000001A5:
	movl      %esi, -16(%ebp)
	movl      20(%ebx), %eax
	testl     %eax, %eax
	je        L000001DF
L000001AF:
	xorl      %esi, %esi
	movl      $4, %edi
	.align 4, 0x90
L000001C0:
	movl      12(%ebx), %ecx
	testb     $8, -1(%ecx,%edi)
	je        L000001D7
L000001CA:
	addl      %edi, %ecx
	movl      %ecx, (%esp)
	call      _rpl_regfree
L000001D4:
	movl      20(%ebx), %eax
L000001D7:
	incl      %esi
	addl      $36, %edi
	cmpl      %eax, %esi
	jb        L000001C0
L000001DF:
	movl      12(%ebx), %eax
	movl      %eax, (%esp)
	call      _free
L000001EA:
	movl      -16(%ebp), %esi
	jmp       L00000170
L000001EF:
	movl      -20(%ebp), %eax
	movl      4(%eax), %esi
	testl     %esi, %esi
	je        L0000021B
L000001F9:
	.align 4, 0x90
L00000200:
	movl      (%esi), %edi
	movl      4(%esi), %eax
	movl      %eax, (%esp)
	call      _free
L0000020D:
	movl      %esi, (%esp)
	call      _free
L00000215:
	testl     %edi, %edi
	movl      %edi, %esi
	jne       L00000200
L0000021B:
	addl      $12, %esp
	popl      %esi
	popl      %edi
	popl      %ebx
	popl      %ebp
	jmp       _free
# ----------------------
	.align 4, 0x90
	.globl	_exclude_fnmatch
_exclude_fnmatch:
	pushl     %ebp
	movl      %esp, %ebp
	pushl     %ebx
	pushl     %edi
	pushl     %esi
	subl      $12, %esp
	call      L0000023E
L0000023E:
	popl      %eax
	movl      16(%ebp), %esi
	movl      12(%ebp), %edi
	movl      8(%ebp), %ecx
	leal      _fnmatch_no_wildcards-L0000023E(%eax), %ebx
	testl     $268435456, %esi
	cmovne    L_gnu_fnmatch$non_lazy_ptr-L0000023E(%eax), %ebx
	movl      %esi, 8(%esp)
	movl      %edi, 4(%esp)
	movl      %ecx, (%esp)
	call      *%ebx
L00000268:
	testl     %eax, %eax
	sete      %cl
	testl     $1073741824, %esi
	jne       L000002C1
L00000275:
	movl      8(%ebp), %esi
	movb      (%edi), %dl
	testl     %eax, %eax
	setne     %al
	testb     %dl, %dl
	je        L000002C1
L00000283:
	testb     %al, %al
	je        L000002C1
L00000287:
	incl      %edi
	.align 4, 0x90
L00000290:
	movzbl    %dl, %eax
	cmpl      $47, %eax
	jne       L000002B5
L00000298:
	movzbl    (%edi), %eax
	cmpl      $47, %eax
	je        L000002B5
L000002A0:
	movl      16(%ebp), %eax
	movl      %eax, 8(%esp)
	movl      %edi, 4(%esp)
	movl      %esi, (%esp)
	call      *%ebx
L000002B0:
	testl     %eax, %eax
	sete      %cl
L000002B5:
	testb     $1, %cl
	jne       L000002C1
L000002BA:
	movb      (%edi), %dl
	incl      %edi
	testb     %dl, %dl
	jne       L00000290
L000002C1:
	andb      $1, %cl
	movzbl    %cl, %eax
	addl      $12, %esp
	popl      %esi
	popl      %edi
	popl      %ebx
	popl      %ebp
	ret       
L000002CF:
	.align 4, 0x90
_fnmatch_no_wildcards:
	pushl     %ebp
	movl      %esp, %ebp
	pushl     %ebx
	pushl     %edi
	pushl     %esi
	subl      $28, %esp
	movl      16(%ebp), %ecx
	movl      %ecx, %eax
	andl      $16, %eax
	testb     $8, %cl
	jne       L000002F6
L000002E6:
	addl      $28, %esp
	testl     %eax, %eax
	je        L00000344
L000002ED:
	popl      %esi
	popl      %edi
	popl      %ebx
	popl      %ebp
	jmp       _mbscasecmp
L000002F6:
	movl      12(%ebp), %edi
	movl      8(%ebp), %ebx
	testl     %eax, %eax
	je        L0000034D
L00000300:
	movl      %edi, (%esp)
	call      _xstrdup
L00000308:
	movl      %eax, -16(%ebp)
	movl      %eax, (%esp)
	jmp       L00000317
L00000310:
	movb      $47, (%edi)
	incl      %edi
	movl      %edi, (%esp)
L00000317:
	movl      $47, 4(%esp)
	call      _strchr
L00000324:
	movl      %eax, %edi
	testl     %edi, %edi
	je        L0000037F
L0000032A:
	movb      $0, (%edi)
	movl      -16(%ebp), %eax
	movl      %eax, 4(%esp)
	movl      %ebx, (%esp)
	call      _mbscasecmp
L0000033C:
	movl      %eax, %esi
	testl     %esi, %esi
	jg        L00000310
L00000342:
	jmp       L00000390
L00000344:
	popl      %esi
	popl      %edi
	popl      %ebx
	popl      %ebp
	jmp       _strcmp
L0000034D:
	movl      %ebx, (%esp)
	call      _strlen
L00000355:
	movl      %eax, -16(%ebp)
	movl      %eax, 8(%esp)
	movl      %edi, 4(%esp)
	movl      %ebx, (%esp)
	call      _strncmp
L00000368:
	movl      %eax, %esi
	testl     %esi, %esi
	jne       L0000039B
L0000036E:
	movl      -16(%ebp), %eax
	movsbl    (%edi,%eax), %eax
	xorl      %esi, %esi
	cmpl      $47, %eax
	cmovne    %eax, %esi
	jmp       L0000039B
L0000037F:
	movl      -16(%ebp), %eax
	movl      %eax, 4(%esp)
	movl      %ebx, (%esp)
	call      _mbscasecmp
L0000038E:
	movl      %eax, %esi
L00000390:
	movl      -16(%ebp), %eax
	movl      %eax, (%esp)
	call      _free
L0000039B:
	movl      %esi, %eax
	addl      $28, %esp
	popl      %esi
	popl      %edi
	popl      %ebx
	popl      %ebp
	ret       
# ----------------------
	.align 4, 0x90
	.globl	_excluded_file_name
_excluded_file_name:
	pushl     %ebp
	movl      %esp, %ebp
	pushl     %ebx
	pushl     %edi
	pushl     %esi
	subl      $60, %esp
	call      L000003BE
L000003BE:
	popl      %edx
	movl      8(%ebp), %eax
	movl      (%eax), %eax
	xorl      %ecx, %ecx
	testl     %eax, %eax
	je        L00000621
L000003CE:
	movl      $0, -32(%ebp)
	movl      12(%ebp), %edi
	leal      1(%edi), %ecx
	movl      %ecx, -44(%ebp)
	leal      _fnmatch_no_wildcards-L000003BE(%edx), %ecx
	movl      %ecx, -40(%ebp)
	movl      %edx, -36(%ebp)
L000003EA:
	movl      %eax, %esi
	cmpl      $0, 4(%esi)
	je        L00000510
L000003F6:
	movl      20(%esi), %eax
	movl      %eax, -24(%ebp)
	testl     %eax, %eax
	je        L000005E3
L00000404:
	movl      12(%esi), %eax
	movl      %eax, -28(%ebp)
	movl      %esi, -48(%ebp)
	xorl      %esi, %esi
	.align 4, 0x90
L00000410:
	leal      (%esi,%esi,8), %eax
	movl      -28(%ebp), %ecx
	movl      (%ecx,%eax,4), %ebx
	testl     $134217728, %ebx
	leal      4(%ecx,%eax,4), %eax
	jne       L000004D0
L00000429:
	movl      %edi, %ecx
	movl      (%eax), %edx
	movl      %edx, -16(%ebp)
	testl     $268435456, %ebx
	movl      -36(%ebp), %eax
	movl      L_gnu_fnmatch$non_lazy_ptr-L000003BE(%eax), %edi
	cmove     -40(%ebp), %edi
	movl      %ebx, 8(%esp)
	movl      %ecx, 4(%esp)
	movl      %edx, (%esp)
	call      *%edi
L00000450:
	testl     %eax, %eax
	sete      %cl
	testl     $1073741824, %ebx
	jne       L000004C0
L0000045D:
	movl      %edi, -20(%ebp)
	movl      12(%ebp), %edx
	movb      (%edx), %dl
	testl     %eax, %eax
	setne     %al
	testb     %dl, %dl
	je        L000004C0
L0000046E:
	testb     %al, %al
	movl      -44(%ebp), %edi
	je        L000004C0
L00000475:
	.align 4, 0x90
L00000480:
	movzbl    %dl, %eax
	cmpl      $47, %eax
	jne       L000004A6
L00000488:
	movzbl    (%edi), %eax
	cmpl      $47, %eax
	je        L000004A6
L00000490:
	movl      %ebx, 8(%esp)
	movl      %edi, 4(%esp)
	movl      -16(%ebp), %eax
	movl      %eax, (%esp)
	call      *-20(%ebp)
L000004A1:
	testl     %eax, %eax
	sete      %cl
L000004A6:
	testb     $1, %cl
	jne       L000004C0
L000004AB:
	movb      (%edi), %dl
	incl      %edi
	testb     %dl, %dl
	jne       L00000480
L000004B2:
	.align 4, 0x90
L000004C0:
	xorl      %ebx, %ebx
	testb     $1, %cl
	movl      12(%ebp), %edi
	je        L000004FE
L000004CA:
	jmp       L000005F9
L000004CF:
	.align 4, 0x90
L000004D0:
	movl      %edi, 4(%esp)
	movl      %eax, (%esp)
	movl      $0, 16(%esp)
	movl      $0, 12(%esp)
	movl      $0, 8(%esp)
	call      _rpl_regexec
L000004F4:
	xorl      %ebx, %ebx
	testl     %eax, %eax
	je        L000005FE
L000004FE:
	incl      %esi
	cmpl      -24(%ebp), %esi
	jb        L00000410
L00000508:
	jmp       L000005E0
L0000050D:
	.align 4, 0x90
L00000510:
	movl      -32(%ebp), %ebx
	testl     %ebx, %ebx
	jne       L0000052A
L00000517:
	movl      %edi, (%esp)
	call      _strlen
L0000051F:
	incl      %eax
	movl      %eax, (%esp)
	call      _xmalloc
L00000528:
	movl      %eax, %ebx
L0000052A:
	movl      %ebx, -32(%ebp)
	movl      8(%esi), %eax
	movl      12(%esi), %ecx
	movl      %ecx, -16(%ebp)
	movl      %esi, -48(%ebp)
	movl      %eax, %ecx
	andl      $8, %ecx
	movl      %ecx, -20(%ebp)
	andl      $1073741824, %eax
	movl      %eax, -24(%ebp)
	movl      %edi, %esi
L0000054B:
	movl      %esi, 4(%esp)
	movl      %ebx, (%esp)
	call      _strcpy
L00000557:
	movl      %ebx, 4(%esp)
	movl      -16(%ebp), %eax
	movl      %eax, (%esp)
	call      _hash_lookup
L00000566:
	xorl      %ebx, %ebx
	testl     %eax, %eax
	jne       L00000603
L00000570:
	cmpl      $0, -20(%ebp)
	movl      -32(%ebp), %edi
	je        L000005B0
L00000579:
	.align 4, 0x90
L00000580:
	movl      %edi, (%esp)
	movl      $47, 4(%esp)
	call      _strrchr
L00000590:
	testl     %eax, %eax
	je        L000005B0
L00000594:
	movb      $0, (%eax)
	movl      %edi, 4(%esp)
	movl      -16(%ebp), %eax
	movl      %eax, (%esp)
	call      _hash_lookup
L000005A6:
	testl     %eax, %eax
	je        L00000580
L000005AA:
	jmp       L000005F4
L000005AC:
	.align 4, 0x90
L000005B0:
	cmpl      $0, -24(%ebp)
	movl      12(%ebp), %edi
	jne       L000005E0
L000005B9:
	movl      %esi, (%esp)
	movl      $47, 4(%esp)
	call      _strchr
L000005C9:
	leal      1(%eax), %esi
	testl     %eax, %eax
	cmove     %eax, %esi
	movl      -32(%ebp), %ebx
	jne       L0000054B
L000005DA:
	.align 4, 0x90
L000005E0:
	movl      -48(%ebp), %esi
L000005E3:
	movl      (%esi), %eax
	movl      $1, %ebx
	testl     %eax, %eax
	jne       L000003EA
L000005F2:
	jmp       L00000606
L000005F4:
	movl      -48(%ebp), %esi
	jmp       L00000606
L000005F9:
	movl      -48(%ebp), %esi
	jmp       L00000606
L000005FE:
	movl      -48(%ebp), %esi
	jmp       L00000606
L00000603:
	movl      -48(%ebp), %esi
L00000606:
	movl      -32(%ebp), %eax
	movl      %eax, (%esp)
	call      _free
L00000611:
	movl      8(%esi), %eax
	shrl      $29, %eax
	notl      %eax
	andl      $1, %eax
	cmpl      %eax, %ebx
	setne     %cl
L00000621:
	movzbl    %cl, %eax
	addl      $60, %esp
	popl      %esi
	popl      %edi
	popl      %ebx
	popl      %ebp
	ret       
# ----------------------
	.align 4, 0x90
	.globl	_add_exclude
_add_exclude:
	pushl     %ebp
	movl      %esp, %ebp
	pushl     %ebx
	pushl     %edi
	pushl     %esi
	subl      $44, %esp
	call      L0000063E
L0000063E:
	popl      %eax
	movl      %eax, -16(%ebp)
	testl     $402653184, 16(%ebp)
	je        L0000078C
L0000064F:
	movl      16(%ebp), %eax
	movl      %eax, %ecx
	movl      %ecx, %ebx
	andl      $134217728, %ebx
	andl      $2, %eax
	andl      $32, %ecx
	movl      12(%ebp), %edx
	jmp       L00000670
L00000667:
	movzbl    %dl, %edx
	leal      1(%edx,%esi), %edx
	.align 4, 0x90
L00000670:
	movl      %edx, %esi
	leal      1(%esi), %edx
	movsbl    (%esi), %edi
	cmpl      $90, %edi
	jg        L00000690
L0000067D:
	cmpl      $32, %edi
	jg        L000006B0
L00000682:
	testl     %edi, %edi
	jne       L00000670
L00000686:
	jmp       L0000078C
L0000068B:
	.align 4, 0x90
L00000690:
	cmpl      $122, %edi
	jg        L000006E0
L00000695:
	cmpl      $92, %edi
	jne       L00000717
L0000069A:
	testl     %ebx, %ebx
	jne       L00000670
L0000069E:
	testl     %eax, %eax
	jne       L00000710
L000006A2:
	cmpb      $0, (%edx)
	setne     %dl
	jmp       L00000667
L000006AA:
	.align 4, 0x90
L000006B0:
	addl      $-33, %edi
	cmpl      $31, %edi
	ja        L00000670
L000006B8:
	movl      $-2147482623, %esi
	btl       %edi, %esi
	jb        L000006FA
L000006C2:
	movl      $8576, %esi
	btl       %edi, %esi
	jb        L000006F0
L000006CC:
	movl      $1073742336, %esi
	btl       %edi, %esi
	jae       L00000670
L000006D6:
	jmp       L00000720
L000006D8:
	.align 4, 0x90
L000006E0:
	cmpl      $123, %edi
	je        L000006F0
L000006E5:
	cmpl      $125, %edi
	jne       L00000670
L000006EA:
	.align 4, 0x90
L000006F0:
	testl     %ebx, %ebx
	je        L00000670
L000006F8:
	jmp       L00000720
L000006FA:
	testl     %ecx, %ecx
	je        L00000670
L00000702:
	movzbl    (%edx), %esi
	cmpl      $40, %esi
	jne       L00000670
L0000070E:
	jmp       L00000720
L00000710:
	xorl      %edx, %edx
	jmp       L00000667
L00000717:
	cmpl      $91, %edi
	jne       L00000670
L00000720:
	movl      8(%ebp), %esi
	movl      (%esi), %edi
	testl     %edi, %edi
	je        L0000073C
L00000729:
	cmpl      $1, 4(%edi)
	jne       L0000073C
L0000072F:
	movl      8(%edi), %eax
	xorl      16(%ebp), %eax
	testl     $536870912, %eax
	je        L0000075D
L0000073C:
	movl      $24, (%esp)
	call      _xzalloc
L00000748:
	movl      %eax, %edi
	movl      $1, 4(%edi)
	movl      16(%ebp), %eax
	movl      %eax, 8(%edi)
	movl      (%esi), %eax
	movl      %eax, (%edi)
	movl      %edi, (%esi)
L0000075D:
	movl      20(%edi), %eax
	cmpl      16(%edi), %eax
	jne       L00000894
L00000769:
	movl      12(%edi), %ecx
	testl     %ecx, %ecx
	je        L00000899
L00000774:
	cmpl      $79536431, %eax
	jae       L000009E5
L0000077F:
	movl      %eax, %edx
	shrl      $1, %edx
	leal      1(%eax,%edx), %edx
	jmp       L000008A3
L0000078C:
	movl      8(%ebp), %esi
	movl      (%esi), %edi
	testl     %edi, %edi
	movl      16(%ebp), %ebx
	je        L000007AA
L00000798:
	cmpl      $0, 4(%edi)
	jne       L000007AA
L0000079E:
	movl      8(%edi), %eax
	xorl      %ebx, %eax
	testl     $1610612760, %eax
	je        L0000081E
L000007AA:
	movl      $24, (%esp)
	call      _xzalloc
L000007B6:
	movl      %eax, %edi
	movl      $0, 4(%edi)
	movl      %ebx, 8(%edi)
	movl      %ebx, %eax
	andl      $16, %eax
	shrl      $4, %eax
	movl      -16(%ebp), %eax
	leal      _string_hasher_ci-L0000063E(%eax), %edx
	leal      _string_hasher-L0000063E(%eax), %ecx
	cmovne    %edx, %ecx
	leal      _string_compare_ci-L0000063E(%eax), %edx
	movl      %edx, -20(%ebp)
	leal      _string_compare-L0000063E(%eax), %edx
	cmovne    -20(%ebp), %edx
	leal      _string_free-L0000063E(%eax), %eax
	movl      %eax, 16(%esp)
	movl      %edx, 12(%esp)
	movl      %ecx, 8(%esp)
	movl      $0, 4(%esp)
	movl      $0, (%esp)
	call      _hash_initialize
L00000815:
	movl      %eax, 12(%edi)
	movl      (%esi), %eax
	movl      %eax, (%edi)
	movl      %edi, (%esi)
L0000081E:
	movl      12(%ebp), %eax
	movl      %eax, (%esp)
	call      _xstrdup
L00000829:
	movl      %eax, %esi
	andl      $268435458, %ebx
	cmpl      $268435456, %ebx
	jne       L00000870
L00000839:
	movl      %esi, %eax
	movl      %esi, %ecx
	.align 4, 0x90
L00000840:
	movzbl    (%ecx), %edx
	cmpl      $92, %edx
	jne       L00000860
L00000848:
	cmpb      $0, 1(%ecx)
	setne     %bl
	movzbl    %bl, %edx
	movb      (%ecx,%edx), %dl
	jmp       L00000862
L00000857:
	.align 4, 0x90
L00000860:
	xorl      %ebx, %ebx
L00000862:
	movzbl    %bl, %ebx
	leal      1(%ebx,%ecx), %ecx
	movb      %dl, (%eax)
	incl      %eax
	testb     %dl, %dl
	jne       L00000840
L00000870:
	movl      12(%edi), %eax
	movl      %esi, 4(%esp)
	movl      %eax, (%esp)
	call      _hash_insert
L0000087F:
	cmpl      %esi, %eax
	je        L000009DD
L00000887:
	movl      %esi, (%esp)
	call      _free
L0000088F:
	jmp       L000009DD
L00000894:
	movl      12(%edi), %ecx
	jmp       L000008C0
L00000899:
	testl     %eax, %eax
	movl      $1, %edx
	cmovne    %eax, %edx
L000008A3:
	movl      %edx, 16(%edi)
	sall      $2, %edx
	leal      (%edx,%edx,8), %eax
	movl      %eax, 4(%esp)
	movl      %ecx, (%esp)
	call      _xrealloc
L000008B8:
	movl      %eax, %ecx
	movl      %ecx, 12(%edi)
	movl      20(%edi), %eax
L000008C0:
	leal      1(%eax), %edx
	movl      %edx, -20(%ebp)
	testl     %ebx, %ebx
	movl      %edx, 20(%edi)
	leal      (%eax,%eax,8), %ebx
	movl      16(%ebp), %eax
	movl      %eax, (%ecx,%ebx,4)
	movl      12(%ebp), %edx
	jne       L00000916
L000008D9:
	movl      %ebx, -16(%ebp)
	movl      %ecx, %ebx
	movl      %esi, %edi
	testl     $67108864, %eax
	je        L0000090A
L000008E7:
	movl      %edx, (%esp)
	call      _xstrdup
L000008EF:
	movl      %eax, %esi
	movl      $8, (%esp)
	call      _xmalloc
L000008FD:
	movl      %esi, %edx
	movl      %edx, 4(%eax)
	movl      4(%edi), %ecx
	movl      %ecx, (%eax)
	movl      %eax, 4(%edi)
L0000090A:
	movl      -16(%ebp), %eax
	movl      %edx, 4(%ebx,%eax,4)
	jmp       L000009DD
L00000916:
	movl      %eax, %esi
	shrl      $3, %esi
	andl      $2, %esi
	orl       $9, %esi
	testb     $8, %al
	jne       L00000940
L00000925:
	leal      4(%ecx,%ebx,4), %eax
	movl      %esi, 8(%esp)
	movl      %edx, 4(%esp)
	movl      %eax, (%esp)
	call      _rpl_regcomp
L00000939:
	movl      %eax, %esi
	jmp       L000009CD
L00000940:
	movl      %ebx, -16(%ebp)
	movl      %ecx, -24(%ebp)
	movl      %edx, (%esp)
	movl      %edx, %ebx
	call      _strlen
L00000950:
	movl      %ebx, %ecx
	movl      %eax, %ebx
	incl      %ebx
	.align 4, 0x90
L00000960:
	cmpl      $1, %ebx
	je        L000009D6
L00000965:
	movzbl    -2(%ecx,%ebx), %eax
	decl      %ebx
	cmpl      $47, %eax
	je        L00000960
L00000970:
	leal      7(%ebx), %eax
	movl      %eax, (%esp)
	call      _xmalloc
L0000097B:
	movl      %eax, -20(%ebp)
	movl      %ebx, 8(%esp)
	movl      12(%ebp), %ecx
	movl      %ecx, 4(%esp)
	movl      %eax, (%esp)
	call      _memcpy
L00000991:
	movl      -20(%ebp), %edx
	movb      $0, 6(%edx,%ebx)
	movw      $16169, 4(%edx,%ebx)
	movl      $707669800, (%edx,%ebx)
	movl      -24(%ebp), %eax
	movl      -16(%ebp), %ecx
	leal      4(%eax,%ecx,4), %eax
	movl      %esi, 8(%esp)
	movl      %edx, 4(%esp)
	movl      %edx, %ebx
	movl      %eax, (%esp)
	call      _rpl_regcomp
L000009C3:
	movl      %eax, %esi
	movl      %ebx, (%esp)
	call      _free
L000009CD:
	testl     %esi, %esi
	je        L000009DD
L000009D1:
	movl      20(%edi), %eax
	jmp       L000009D9
L000009D6:
	movl      -20(%ebp), %eax
L000009D9:
	decl      %eax
	movl      %eax, 20(%edi)
L000009DD:
	addl      $44, %esp
	popl      %esi
	popl      %edi
	popl      %ebx
	popl      %ebp
	ret       
L000009E5:
	call      _xalloc_die
# ----------------------
	.align 4, 0x90
	.globl	_add_exclude_fp
_add_exclude_fp:
	pushl     %ebp
	movl      %esp, %ebp
	pushl     %ebx
	pushl     %edi
	pushl     %esi
	subl      $44, %esp
	call      L000009FE
L000009FE:
	popl      %eax
	movl      %eax, -20(%ebp)
	movl      16(%ebp), %edx
	movl      $0, -16(%ebp)
	xorl      %edi, %edi
	xorl      %esi, %esi
	jmp       L00000A24
L00000A12:
	.align 4, 0x90
L00000A20:
	movb      %bl, (%esi,%edi)
	incl      %edi
L00000A24:
	movl      4(%edx), %eax
	leal      -1(%eax), %ecx
	movl      %ecx, 4(%edx)
	testl     %eax, %eax
	jle       L00000A40
L00000A31:
	movl      (%edx), %eax
	leal      1(%eax), %ecx
	movl      %ecx, (%edx)
	movzbl    (%eax), %ebx
	jmp       L00000A53
L00000A3D:
	.align 4, 0x90
L00000A40:
	movl      %edx, (%esp)
	movl      %edx, %ebx
	call      ___srget
L00000A4A:
	movl      %ebx, %edx
	movl      %eax, %ebx
	cmpl      $-1, %ebx
	je        L00000A6F
L00000A53:
	cmpl      -16(%ebp), %edi
	jne       L00000A20
L00000A58:
	leal      -16(%ebp), %eax
	movl      %eax, 4(%esp)
	movl      %esi, (%esp)
	movl      %edx, %esi
	call      _x2realloc
L00000A69:
	movl      %esi, %edx
	movl      %eax, %esi
	jmp       L00000A20
L00000A6F:
	xorl      %eax, %eax
	testb     $64, 12(%edx)
	je        L00000A7E
L00000A77:
	call      ___error
L00000A7C:
	movl      (%eax), %eax
L00000A7E:
	movl      %eax, -32(%ebp)
	leal      1(%edi), %eax
	movl      %eax, 4(%esp)
	movl      %esi, (%esp)
	call      _xrealloc
L00000A90:
	movl      %eax, %ebx
	movb      24(%ebp), %cl
	movb      %cl, (%ebx,%edi)
	testl     %edi, %edi
	je        L00000AAB
L00000A9C:
	movzbl    -1(%edi,%ebx), %eax
	movzbl    %cl, %ecx
	cmpl      %ecx, %eax
	setne     %al
	jmp       L00000AAD
L00000AAB:
	xorl      %eax, %eax
L00000AAD:
	movzbl    %al, %esi
	addl      %edi, %esi
	movl      $8, (%esp)
	call      _xmalloc
L00000ABE:
	movl      %ebx, 4(%eax)
	movl      12(%ebp), %ecx
	movl      %ecx, %edx
	movl      4(%edx), %ecx
	movl      %ecx, (%eax)
	movl      %eax, 4(%edx)
	testl     %esi, %esi
	jle       L00000BB5
L00000AD6:
	movl      %ebx, %eax
	addl      %esi, %eax
	movl      %eax, -24(%ebp)
	movl      %eax, %ecx
	movzbl    24(%ebp), %edx
	movl      %edx, -28(%ebp)
	movl      %ebx, %edi
	.align 4, 0x90
L00000AF0:
	movzbl    (%ebx), %eax
	cmpl      %edx, %eax
	jne       L00000B20
L00000AF7:
	movb      24(%ebp), %al
	testb     %al, %al
	js        L00000B26
L00000AFE:
	movl      -20(%ebp), %eax
	movl      L__DefaultRuneLocale$non_lazy_ptr-L000009FE(%eax), %eax
	movl      52(%eax,%edx,4), %eax
	movl      $16384, %ecx
	andl      %ecx, %eax
	jmp       L00000B36
L00000B14:
	.align 4, 0x90
L00000B20:
	incl      %ebx
	jmp       L00000BAD
L00000B26:
	movl      %edx, (%esp)
	movl      $16384, 4(%esp)
	call      ___maskrune
L00000B36:
	testl     %eax, %eax
	movl      %ebx, %esi
	je        L00000B86
L00000B3C:
	.align 4, 0x90
L00000B40:
	cmpl      %esi, %edi
	je        L00000BA4
L00000B44:
	movzbl    -1(%esi), %eax
	testb     %al, %al
	js        L00000B70
L00000B4C:
	movl      -20(%ebp), %ecx
	movl      L__DefaultRuneLocale$non_lazy_ptr-L000009FE(%ecx), %ecx
	movl      52(%ecx,%eax,4), %eax
	movl      $16384, %ecx
	andl      %ecx, %eax
	jmp       L00000B80
L00000B62:
	.align 4, 0x90
L00000B70:
	movl      %eax, (%esp)
	movl      $16384, 4(%esp)
	call      ___maskrune
L00000B80:
	decl      %esi
	testl     %eax, %eax
	jne       L00000B40
L00000B85:
	incl      %esi
L00000B86:
	movb      $0, (%esi)
	movl      28(%ebp), %eax
	movl      %eax, 12(%esp)
	movl      20(%ebp), %eax
	movl      %eax, 8(%esp)
	movl      %edi, 4(%esp)
	movl      12(%ebp), %eax
	movl      %eax, (%esp)
	call      *8(%ebp)
L00000BA4:
	incl      %ebx
	movl      %ebx, %edi
	movl      -24(%ebp), %ecx
	movl      -28(%ebp), %edx
L00000BAD:
	cmpl      %ecx, %ebx
	jb        L00000AF0
L00000BB5:
	call      ___error
L00000BBA:
	movl      -32(%ebp), %ecx
	movl      %ecx, (%eax)
	negl      %ecx
	sbbl      %eax, %eax
	addl      $44, %esp
	popl      %esi
	popl      %edi
	popl      %ebx
	popl      %ebp
	ret       
# ----------------------
	.align 4, 0x90
	.globl	_add_exclude_file
_add_exclude_file:
	pushl     %ebp
	movl      %esp, %ebp
	pushl     %ebx
	pushl     %edi
	pushl     %esi
	subl      $28, %esp
	call      L00000BDE
L00000BDE:
	popl      %edi
	movb      24(%ebp), %bl
	movl      20(%ebp), %edx
	movl      16(%ebp), %eax
	movl      12(%ebp), %esi
	movl      8(%ebp), %ecx
	movl      %ecx, -16(%ebp)
	movzbl    (%eax), %ecx
	cmpl      $45, %ecx
	jne       L00000BFF
L00000BF9:
	cmpb      $0, 1(%eax)
	je        L00000C61
L00000BFF:
	leal      LC00001090-L00000BDE(%edi), %ecx
	movl      %ecx, 4(%esp)
	movl      %eax, (%esp)
	call      _fopen$DARWIN_EXTSN
L00000C11:
	movl      %eax, %esi
	movl      $-1, %eax
	testl     %esi, %esi
	je        L00000C91
L00000C1C:
	leal      -16(%ebp), %eax
	movl      %eax, 20(%esp)
	movsbl    %bl, %eax
	movl      %eax, 16(%esp)
	movl      20(%ebp), %eax
	movl      %eax, 12(%esp)
	movl      %esi, 8(%esp)
	movl      12(%ebp), %eax
	movl      %eax, 4(%esp)
	leal      _call_addfn-L00000BDE(%edi), %eax
	movl      %eax, (%esp)
	call      _add_exclude_fp
L00000C4A:
	movl      %eax, %edi
	movl      %esi, (%esp)
	call      _rpl_fclose
L00000C54:
	cmpl      $1, %eax
	sbbl      %eax, %eax
	notl      %eax
	orl       %eax, %edi
	movl      %edi, %eax
	jmp       L00000C91
L00000C61:
	movl      L___stdinp$non_lazy_ptr-L00000BDE(%edi), %eax
	movl      (%eax), %eax
	leal      -16(%ebp), %ecx
	movl      %ecx, 20(%esp)
	movsbl    %bl, %ecx
	movl      %ecx, 16(%esp)
	movl      %edx, 12(%esp)
	movl      %eax, 8(%esp)
	movl      %esi, 4(%esp)
	leal      _call_addfn-L00000BDE(%edi), %eax
	movl      %eax, (%esp)
	call      _add_exclude_fp
L00000C91:
	addl      $28, %esp
	popl      %esi
	popl      %edi
	popl      %ebx
	popl      %ebp
	ret       
L00000C99:
	.align 4, 0x90
_call_addfn:
	pushl     %ebp
	movl      %esp, %ebp
	movl      20(%ebp), %eax
	movl      (%eax), %eax
	popl      %ebp
	jmp       *%eax
L00000CAB:
	.align 4, 0x90
_string_hasher_ci:
	pushl     %ebp
	movl      %esp, %ebp
	pushl     %ebx
	pushl     %edi
	pushl     %esi
	subl      $204, %esp
	call      L00000CC1
L00000CC1:
	popl      %esi
	movl      8(%ebp), %edi
	movl      L___stack_chk_guard$non_lazy_ptr-L00000CC1(%esi), %eax
	movl      %eax, -196(%ebp)
	movl      (%eax), %eax
	movl      %eax, -16(%ebp)
	movl      %edi, -56(%ebp)
	movb      $0, -192(%ebp)
	movl      $0, -184(%ebp)
	movl      $0, -188(%ebp)
	movl      $0, -176(%ebp)
	movl      $0, -180(%ebp)
	movl      $0, -168(%ebp)
	movl      $0, -172(%ebp)
	movl      $0, -160(%ebp)
	movl      $0, -164(%ebp)
	movl      $0, -152(%ebp)
	movl      $0, -156(%ebp)
	movl      $0, -144(%ebp)
	movl      $0, -148(%ebp)
	movl      $0, -136(%ebp)
	movl      $0, -140(%ebp)
	movl      $0, -128(%ebp)
	movl      $0, -132(%ebp)
	movl      $0, -120(%ebp)
	movl      $0, -124(%ebp)
	movl      $0, -112(%ebp)
	movl      $0, -116(%ebp)
	movl      $0, -104(%ebp)
	movl      $0, -108(%ebp)
	movl      $0, -96(%ebp)
	movl      $0, -100(%ebp)
	movl      $0, -88(%ebp)
	movl      $0, -92(%ebp)
	movl      $0, -80(%ebp)
	movl      $0, -84(%ebp)
	movl      $0, -72(%ebp)
	movl      $0, -76(%ebp)
	movl      $0, -64(%ebp)
	movl      $0, -68(%ebp)
	xorl      %eax, %eax
	xorl      %ebx, %ebx
	jmp       L00000E1A
L00000DF3:
	.align 4, 0x90
L00000E00:
	imull     $31, %ebx, %ecx
	addl      %eax, %ecx
	xorl      %edx, %edx
	movl      %ecx, %eax
	divl      12(%ebp)
	addl      -52(%ebp), %edi
	movl      %edi, -56(%ebp)
	movb      -192(%ebp), %al
	movl      %edx, %ebx
L00000E1A:
	movb      $0, -60(%ebp)
	testb     %al, %al
	jne       L00000E80
L00000E22:
	movzbl    (%edi), %eax
	movl      %eax, %ecx
	shrl      $3, %ecx
	andl      $28, %ecx
	movl      L_is_basic_table$non_lazy_ptr-L00000CC1(%esi), %edx
	movl      (%edx,%ecx), %ecx
	btl       %eax, %ecx
	jae       L00000E51
L00000E3B:
	movl      $1, -52(%ebp)
	movsbl    (%edi), %eax
	movl      %eax, -44(%ebp)
	movb      $1, -48(%ebp)
	jmp       L00000F3D
L00000E51:
	leal      -188(%ebp), %eax
	movl      %eax, (%esp)
	call      _mbsinit
L00000E5F:
	testl     %eax, %eax
	je        L00000FDD
L00000E67:
	movb      $1, -192(%ebp)
	movl      -56(%ebp), %edi
	.align 4, 0x90
L00000E80:
	movl      L___mb_cur_max$non_lazy_ptr-L00000CC1(%esi), %eax
	movl      (%eax), %eax
	movl      %eax, 4(%esp)
	movl      %edi, (%esp)
	call      _strnlen1
L00000E94:
	leal      -188(%ebp), %ecx
	movl      %ecx, 12(%esp)
	movl      %eax, 8(%esp)
	movl      %edi, 4(%esp)
	leal      -44(%ebp), %eax
	movl      %eax, (%esp)
	call      _mbrtowc
L00000EB1:
	movl      %eax, -52(%ebp)
	cmpl      $-2, %eax
	je        L00000EE0
L00000EB9:
	testl     %eax, %eax
	jne       L00000F00
L00000EBD:
	movl      $1, -52(%ebp)
	movl      -56(%ebp), %eax
	cmpb      $0, (%eax)
	jne       L00000F89
L00000ED0:
	cmpl      $0, -44(%ebp)
	je        L00000F20
L00000ED6:
	jmp       L00000FB3
L00000EDB:
	.align 4, 0x90
L00000EE0:
	movl      -56(%ebp), %eax
	movl      %eax, (%esp)
	call      _strlen
L00000EEB:
	movl      %eax, -52(%ebp)
	movb      $0, -48(%ebp)
	jmp       L00000F3D
L00000EF4:
	.align 4, 0x90
L00000F00:
	cmpl      $-1, %eax
	jne       L00000F20
L00000F05:
	movl      $1, -52(%ebp)
	movb      $0, -48(%ebp)
	jmp       L00000F3D
L00000F12:
	.align 4, 0x90
L00000F20:
	movb      $1, -48(%ebp)
	leal      -188(%ebp), %eax
	movl      %eax, (%esp)
	call      _mbsinit
L00000F32:
	testl     %eax, %eax
	je        L00000F3D
L00000F36:
	movb      $0, -192(%ebp)
L00000F3D:
	movb      $1, -60(%ebp)
	cmpb      $0, -48(%ebp)
	je        L00000F60
L00000F47:
	cmpl      $0, -44(%ebp)
	je        L00000F6B
L00000F4D:
	movl      -44(%ebp), %eax
	movl      %eax, (%esp)
	call      ___tolower
L00000F58:
	movl      -56(%ebp), %edi
	jmp       L00000E00
L00000F60:
	movl      -56(%ebp), %edi
	movsbl    (%edi), %eax
	jmp       L00000E00
L00000F6B:
	movl      -196(%ebp), %eax
	movl      (%eax), %eax
	cmpl      -16(%ebp), %eax
	jne       L00001007
L00000F7C:
	movl      %ebx, %eax
	addl      $204, %esp
	popl      %esi
	popl      %edi
	popl      %ebx
	popl      %ebp
	ret       
L00000F89:
	leal      LC000010CC-L00000CC1(%esi), %eax
	movl      %eax, 12(%esp)
	leal      LC000010A5-L00000CC1(%esi), %eax
	movl      %eax, 4(%esp)
	leal      LC00001092-L00000CC1(%esi), %eax
	movl      %eax, (%esp)
	movl      $178, 8(%esp)
	call      ___assert_rtn
L00000FB3:
	leal      LC000010E3-L00000CC1(%esi), %eax
	movl      %eax, 12(%esp)
	leal      LC000010A5-L00000CC1(%esi), %eax
	movl      %eax, 4(%esp)
	leal      LC00001092-L00000CC1(%esi), %eax
	movl      %eax, (%esp)
	movl      $179, 8(%esp)
	call      ___assert_rtn
L00000FDD:
	leal      LC000010B5-L00000CC1(%esi), %eax
	movl      %eax, 12(%esp)
	leal      LC000010A5-L00000CC1(%esi), %eax
	movl      %eax, 4(%esp)
	leal      LC00001092-L00000CC1(%esi), %eax
	movl      %eax, (%esp)
	movl      $150, 8(%esp)
	call      ___assert_rtn
L00001007:
	call      ___stack_chk_fail
L0000100C:
	.align 4, 0x90
_string_hasher:
	pushl     %ebp
	movl      %esp, %ebp
	popl      %ebp
	jmp       _hash_string
L00001019:
	.align 4, 0x90
_string_compare_ci:
	pushl     %ebp
	movl      %esp, %ebp
	subl      $8, %esp
	movl      8(%ebp), %eax
	movl      12(%ebp), %ecx
	movl      %ecx, 4(%esp)
	movl      %eax, (%esp)
	call      _mbscasecmp
L00001038:
	testl     %eax, %eax
	sete      %al
	movzbl    %al, %eax
	addl      $8, %esp
	popl      %ebp
	ret       
L00001045:
	.align 4, 0x90
_string_compare:
	pushl     %ebp
	movl      %esp, %ebp
	subl      $8, %esp
	movl      8(%ebp), %eax
	movl      12(%ebp), %ecx
	movl      %ecx, 4(%esp)
	movl      %eax, (%esp)
	call      _strcmp
L00001068:
	testl     %eax, %eax
	sete      %al
	movzbl    %al, %eax
	addl      $8, %esp
	popl      %ebp
	ret       
L00001075:
	.align 4, 0x90
_string_free:
	pushl     %ebp
	movl      %esp, %ebp
	popl      %ebp
	jmp       _free
# ----------------------
	.section       __TEXT,__cstring,cstring_literals
LC00001089:
	.string	"(/.*)?"
LC00001090:
	.string	"r"
LC00001092:
	.string	"mbuiter_multi_next"
LC000010A5:
	.string	"./lib/mbuiter.h"
LC000010B5:
	.string	"mbsinit (&iter->state)"
LC000010CC:
	.string	"*iter->cur.ptr == '\\0'"
LC000010E3:
	.string	"iter->cur.wc == 0"
# ----------------------
	.section       __IMPORT,__pointers,non_lazy_symbol_pointers
L__DefaultRuneLocale$non_lazy_ptr:
	.indirect_symbol __DefaultRuneLocale
	.long	0
# ----------------------
L___mb_cur_max$non_lazy_ptr:
	.indirect_symbol ___mb_cur_max
	.long	0
# ----------------------
L___stack_chk_guard$non_lazy_ptr:
	.indirect_symbol ___stack_chk_guard
	.long	0
# ----------------------
L___stdinp$non_lazy_ptr:
	.indirect_symbol ___stdinp
	.long	0
# ----------------------
L_gnu_fnmatch$non_lazy_ptr:
	.indirect_symbol _gnu_fnmatch
	.long	0
# ----------------------
L_is_basic_table$non_lazy_ptr:
	.indirect_symbol _is_basic_table
	.long	0
# ----------------------

.subsections_via_symbols
