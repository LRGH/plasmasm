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
	jmp       LBB1_1
LBB1_19:
	movzbl    %al, %eax
	leal      1(%eax,%ebx), %esi
	.align 4, 0x90
LBB1_1:
	movl      %esi, %ebx
	leal      1(%ebx), %esi
	movsbl    (%ebx), %edi
	cmpl      $90, %edi
	jg        LBB1_9
	cmpl      $32, %edi
	jg        LBB1_5
	testl     %edi, %edi
	jne       LBB1_1
	jmp       LBB1_4
	.align 4, 0x90
LBB1_9:
	cmpl      $122, %edi
	jg        LBB1_12
	cmpl      $92, %edi
	jne       LBB1_11
	testl     %ecx, %ecx
	jne       LBB1_1
	testl     %edx, %edx
	jne       LBB1_17
	cmpb      $0, (%esi)
	setne     %al
	jmp       LBB1_19
	.align 4, 0x90
LBB1_5:
	addl      $-33, %edi
	cmpl      $31, %edi
	ja        LBB1_1
	movl      $-2147482623, %eax
	btl       %edi, %eax
	jb        LBB1_20
	movl      $8576, %eax
	btl       %edi, %eax
	jb        LBB1_14
	movl      $1073742336, %eax
	btl       %edi, %eax
	jae       LBB1_1
	jmp       LBB1_22
	.align 4, 0x90
LBB1_12:
	cmpl      $123, %edi
	je        LBB1_14
	cmpl      $125, %edi
	jne       LBB1_1
	.align 4, 0x90
LBB1_14:
	testl     %ecx, %ecx
	je        LBB1_1
	jmp       LBB1_22
LBB1_20:
	cmpl      $0, -16(%ebp)
	je        LBB1_1
	movzbl    (%esi), %eax
	cmpl      $40, %eax
	jne       LBB1_1
	jmp       LBB1_22
LBB1_17:
	xorl      %eax, %eax
	jmp       LBB1_19
LBB1_11:
	cmpl      $91, %edi
	jne       LBB1_1
LBB1_22:
	movb      $1, %al
	jmp       LBB1_23
LBB1_4:
	xorl      %eax, %eax
LBB1_23:
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
	jmp       LBB3_1
	.align 4, 0x90
LBB3_11:
	movl      %ebx, (%esp)
	call      _free
LBB3_1:
	testl     %esi, %esi
	je        LBB3_12
	movl      %esi, %ebx
	movl      (%ebx), %esi
	movl      4(%ebx), %eax
	testl     %eax, %eax
	jne       LBB3_3
	movl      12(%ebx), %eax
	movl      %eax, (%esp)
	call      _hash_free
	jmp       LBB3_11
	.align 4, 0x90
LBB3_3:
	cmpl      $1, %eax
	jne       LBB3_11
	movl      %esi, -16(%ebp)
	movl      20(%ebx), %eax
	testl     %eax, %eax
	je        LBB3_9
	xorl      %esi, %esi
	movl      $4, %edi
	.align 4, 0x90
LBB3_6:
	movl      12(%ebx), %ecx
	testb     $8, -1(%ecx,%edi)
	je        LBB3_8
	addl      %edi, %ecx
	movl      %ecx, (%esp)
	call      _rpl_regfree
	movl      20(%ebx), %eax
LBB3_8:
	incl      %esi
	addl      $36, %edi
	cmpl      %eax, %esi
	jb        LBB3_6
LBB3_9:
	movl      12(%ebx), %eax
	movl      %eax, (%esp)
	call      _free
	movl      -16(%ebp), %esi
	jmp       LBB3_11
LBB3_12:
	movl      -20(%ebp), %eax
	movl      4(%eax), %esi
	testl     %esi, %esi
	je        LBB3_14
	.align 4, 0x90
LBB3_13:
	movl      (%esi), %edi
	movl      4(%esi), %eax
	movl      %eax, (%esp)
	call      _free
	movl      %esi, (%esp)
	call      _free
	testl     %edi, %edi
	movl      %edi, %esi
	jne       LBB3_13
LBB3_14:
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
	call      L4$pb
L4$pb:
	popl      %eax
	movl      16(%ebp), %esi
	movl      12(%ebp), %edi
	movl      8(%ebp), %ecx
	leal      _fnmatch_no_wildcards-L4$pb(%eax), %ebx
	testl     $268435456, %esi
	cmovne    L_gnu_fnmatch$non_lazy_ptr-L4$pb(%eax), %ebx
	movl      %esi, 8(%esp)
	movl      %edi, 4(%esp)
	movl      %ecx, (%esp)
	call      *%ebx
	testl     %eax, %eax
	sete      %cl
	testl     $1073741824, %esi
	jne       LBB4_9
	movl      8(%ebp), %esi
	movb      (%edi), %dl
	testl     %eax, %eax
	setne     %al
	testb     %dl, %dl
	je        LBB4_9
	testb     %al, %al
	je        LBB4_9
	incl      %edi
	.align 4, 0x90
LBB4_4:
	movzbl    %dl, %eax
	cmpl      $47, %eax
	jne       LBB4_7
	movzbl    (%edi), %eax
	cmpl      $47, %eax
	je        LBB4_7
	movl      16(%ebp), %eax
	movl      %eax, 8(%esp)
	movl      %edi, 4(%esp)
	movl      %esi, (%esp)
	call      *%ebx
	testl     %eax, %eax
	sete      %cl
LBB4_7:
	testb     $1, %cl
	jne       LBB4_9
	movb      (%edi), %dl
	incl      %edi
	testb     %dl, %dl
	jne       LBB4_4
LBB4_9:
	andb      $1, %cl
	movzbl    %cl, %eax
	addl      $12, %esp
	popl      %esi
	popl      %edi
	popl      %ebx
	popl      %ebp
	ret       
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
	jne       LBB5_3
	addl      $28, %esp
	testl     %eax, %eax
	je        LBB5_2
	popl      %esi
	popl      %edi
	popl      %ebx
	popl      %ebp
	jmp       _mbscasecmp
LBB5_3:
	movl      12(%ebp), %edi
	movl      8(%ebp), %ebx
	testl     %eax, %eax
	je        LBB5_4
	movl      %edi, (%esp)
	call      _xstrdup
	movl      %eax, -16(%ebp)
	movl      %eax, (%esp)
	jmp       LBB5_8
	.align 4, 0x90
LBB5_12:
	movb      $47, (%edi)
	incl      %edi
	movl      %edi, (%esp)
LBB5_8:
	movl      $47, 4(%esp)
	call      _strchr
	movl      %eax, %edi
	testl     %edi, %edi
	je        LBB5_9
	movb      $0, (%edi)
	movl      -16(%ebp), %eax
	movl      %eax, 4(%esp)
	movl      %ebx, (%esp)
	call      _mbscasecmp
	movl      %eax, %esi
	testl     %esi, %esi
	jg        LBB5_12
	jmp       LBB5_10
LBB5_2:
	popl      %esi
	popl      %edi
	popl      %ebx
	popl      %ebp
	jmp       _strcmp
LBB5_4:
	movl      %ebx, (%esp)
	call      _strlen
	movl      %eax, -16(%ebp)
	movl      %eax, 8(%esp)
	movl      %edi, 4(%esp)
	movl      %ebx, (%esp)
	call      _strncmp
	movl      %eax, %esi
	testl     %esi, %esi
	jne       LBB5_6
	movl      -16(%ebp), %eax
	movsbl    (%edi,%eax), %eax
	xorl      %esi, %esi
	cmpl      $47, %eax
	cmovne    %eax, %esi
	jmp       LBB5_6
LBB5_9:
	movl      -16(%ebp), %eax
	movl      %eax, 4(%esp)
	movl      %ebx, (%esp)
	call      _mbscasecmp
	movl      %eax, %esi
LBB5_10:
	movl      -16(%ebp), %eax
	movl      %eax, (%esp)
	call      _free
LBB5_6:
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
	call      L6$pb
L6$pb:
	popl      %edx
	movl      8(%ebp), %eax
	movl      (%eax), %eax
	xorl      %ecx, %ecx
	testl     %eax, %eax
	je        LBB6_33
	movl      $0, -32(%ebp)
	movl      12(%ebp), %edi
	leal      1(%edi), %ecx
	movl      %ecx, -44(%ebp)
	leal      _fnmatch_no_wildcards-L6$pb(%edx), %ecx
	movl      %ecx, -40(%ebp)
	movl      %edx, -36(%ebp)
LBB6_2:
	movl      %eax, %esi
	cmpl      $0, 4(%esi)
	je        LBB6_3
	movl      20(%esi), %eax
	movl      %eax, -24(%ebp)
	testl     %eax, %eax
	je        LBB6_31
	movl      12(%esi), %eax
	movl      %eax, -28(%ebp)
	movl      %esi, -48(%ebp)
	xorl      %esi, %esi
	.align 4, 0x90
LBB6_16:
	leal      (%esi,%esi,8), %eax
	movl      -28(%ebp), %ecx
	movl      (%ecx,%eax,4), %ebx
	testl     $134217728, %ebx
	leal      4(%ecx,%eax,4), %eax
	jne       LBB6_17
	movl      %edi, %ecx
	movl      (%eax), %edx
	movl      %edx, -16(%ebp)
	testl     $268435456, %ebx
	movl      -36(%ebp), %eax
	movl      L_gnu_fnmatch$non_lazy_ptr-L6$pb(%eax), %edi
	cmove     -40(%ebp), %edi
	movl      %ebx, 8(%esp)
	movl      %ecx, 4(%esp)
	movl      %edx, (%esp)
	call      *%edi
	testl     %eax, %eax
	sete      %cl
	testl     $1073741824, %ebx
	jne       LBB6_27
	movl      %edi, -20(%ebp)
	movl      12(%ebp), %edx
	movb      (%edx), %dl
	testl     %eax, %eax
	setne     %al
	testb     %dl, %dl
	je        LBB6_27
	testb     %al, %al
	movl      -44(%ebp), %edi
	je        LBB6_27
	.align 4, 0x90
LBB6_22:
	movzbl    %dl, %eax
	cmpl      $47, %eax
	jne       LBB6_25
	movzbl    (%edi), %eax
	cmpl      $47, %eax
	je        LBB6_25
	movl      %ebx, 8(%esp)
	movl      %edi, 4(%esp)
	movl      -16(%ebp), %eax
	movl      %eax, (%esp)
	call      *-20(%ebp)
	testl     %eax, %eax
	sete      %cl
LBB6_25:
	testb     $1, %cl
	jne       LBB6_27
	movb      (%edi), %dl
	incl      %edi
	testb     %dl, %dl
	jne       LBB6_22
	.align 4, 0x90
LBB6_27:
	xorl      %ebx, %ebx
	testb     $1, %cl
	movl      12(%ebp), %edi
	je        LBB6_29
	jmp       LBB6_28
	.align 4, 0x90
LBB6_17:
	movl      %edi, 4(%esp)
	movl      %eax, (%esp)
	movl      $0, 16(%esp)
	movl      $0, 12(%esp)
	movl      $0, 8(%esp)
	call      _rpl_regexec
	xorl      %ebx, %ebx
	testl     %eax, %eax
	je        LBB6_18
LBB6_29:
	incl      %esi
	cmpl      -24(%ebp), %esi
	jb        LBB6_16
	jmp       LBB6_30
	.align 4, 0x90
LBB6_3:
	movl      -32(%ebp), %ebx
	testl     %ebx, %ebx
	jne       LBB6_5
	movl      %edi, (%esp)
	call      _strlen
	incl      %eax
	movl      %eax, (%esp)
	call      _xmalloc
	movl      %eax, %ebx
LBB6_5:
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
LBB6_6:
	movl      %esi, 4(%esp)
	movl      %ebx, (%esp)
	call      _strcpy
	movl      %ebx, 4(%esp)
	movl      -16(%ebp), %eax
	movl      %eax, (%esp)
	call      _hash_lookup
	xorl      %ebx, %ebx
	testl     %eax, %eax
	jne       LBB6_7
	cmpl      $0, -20(%ebp)
	movl      -32(%ebp), %edi
	je        LBB6_12
	.align 4, 0x90
LBB6_9:
	movl      %edi, (%esp)
	movl      $47, 4(%esp)
	call      _strrchr
	testl     %eax, %eax
	je        LBB6_12
	movb      $0, (%eax)
	movl      %edi, 4(%esp)
	movl      -16(%ebp), %eax
	movl      %eax, (%esp)
	call      _hash_lookup
	testl     %eax, %eax
	je        LBB6_9
	jmp       LBB6_11
	.align 4, 0x90
LBB6_12:
	cmpl      $0, -24(%ebp)
	movl      12(%ebp), %edi
	jne       LBB6_30
	movl      %esi, (%esp)
	movl      $47, 4(%esp)
	call      _strchr
	leal      1(%eax), %esi
	testl     %eax, %eax
	cmove     %eax, %esi
	movl      -32(%ebp), %ebx
	jne       LBB6_6
	.align 4, 0x90
LBB6_30:
	movl      -48(%ebp), %esi
LBB6_31:
	movl      (%esi), %eax
	movl      $1, %ebx
	testl     %eax, %eax
	jne       LBB6_2
	jmp       LBB6_32
LBB6_11:
	movl      -48(%ebp), %esi
	jmp       LBB6_32
LBB6_28:
	movl      -48(%ebp), %esi
	jmp       LBB6_32
LBB6_18:
	movl      -48(%ebp), %esi
	jmp       LBB6_32
LBB6_7:
	movl      -48(%ebp), %esi
LBB6_32:
	movl      -32(%ebp), %eax
	movl      %eax, (%esp)
	call      _free
	movl      8(%esi), %eax
	shrl      $29, %eax
	notl      %eax
	andl      $1, %eax
	cmpl      %eax, %ebx
	setne     %cl
LBB6_33:
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
	call      L7$pb
L7$pb:
	popl      %eax
	movl      %eax, -16(%ebp)
	testl     $402653184, 16(%ebp)
	je        LBB7_5
	movl      16(%ebp), %eax
	movl      %eax, %ecx
	movl      %ecx, %ebx
	andl      $134217728, %ebx
	andl      $2, %eax
	andl      $32, %ecx
	movl      12(%ebp), %edx
	jmp       LBB7_2
LBB7_27:
	movzbl    %dl, %edx
	leal      1(%edx,%esi), %edx
	.align 4, 0x90
LBB7_2:
	movl      %edx, %esi
	leal      1(%esi), %edx
	movsbl    (%esi), %edi
	cmpl      $90, %edi
	jg        LBB7_17
	cmpl      $32, %edi
	jg        LBB7_13
	testl     %edi, %edi
	jne       LBB7_2
	jmp       LBB7_5
	.align 4, 0x90
LBB7_17:
	cmpl      $122, %edi
	jg        LBB7_20
	cmpl      $92, %edi
	jne       LBB7_19
	testl     %ebx, %ebx
	jne       LBB7_2
	testl     %eax, %eax
	jne       LBB7_25
	cmpb      $0, (%edx)
	setne     %dl
	jmp       LBB7_27
	.align 4, 0x90
LBB7_13:
	addl      $-33, %edi
	cmpl      $31, %edi
	ja        LBB7_2
	movl      $-2147482623, %esi
	btl       %edi, %esi
	jb        LBB7_28
	movl      $8576, %esi
	btl       %edi, %esi
	jb        LBB7_22
	movl      $1073742336, %esi
	btl       %edi, %esi
	jae       LBB7_2
	jmp       LBB7_30
	.align 4, 0x90
LBB7_20:
	cmpl      $123, %edi
	je        LBB7_22
	cmpl      $125, %edi
	jne       LBB7_2
	.align 4, 0x90
LBB7_22:
	testl     %ebx, %ebx
	je        LBB7_2
	jmp       LBB7_30
LBB7_28:
	testl     %ecx, %ecx
	je        LBB7_2
	movzbl    (%edx), %esi
	cmpl      $40, %esi
	jne       LBB7_2
	jmp       LBB7_30
LBB7_25:
	xorl      %edx, %edx
	jmp       LBB7_27
LBB7_19:
	cmpl      $91, %edi
	jne       LBB7_2
LBB7_30:
	movl      8(%ebp), %esi
	movl      (%esi), %edi
	testl     %edi, %edi
	je        LBB7_33
	cmpl      $1, 4(%edi)
	jne       LBB7_33
	movl      8(%edi), %eax
	xorl      16(%ebp), %eax
	testl     $536870912, %eax
	je        LBB7_34
LBB7_33:
	movl      $24, (%esp)
	call      _xzalloc
	movl      %eax, %edi
	movl      $1, 4(%edi)
	movl      16(%ebp), %eax
	movl      %eax, 8(%edi)
	movl      (%esi), %eax
	movl      %eax, (%edi)
	movl      %edi, (%esi)
LBB7_34:
	movl      20(%edi), %eax
	cmpl      16(%edi), %eax
	jne       LBB7_35
	movl      12(%edi), %ecx
	testl     %ecx, %ecx
	je        LBB7_37
	cmpl      $79536431, %eax
	jae       LBB7_60
	movl      %eax, %edx
	shrl      $1, %edx
	leal      1(%eax,%edx), %edx
	jmp       LBB7_40
LBB7_5:
	movl      8(%ebp), %esi
	movl      (%esi), %edi
	testl     %edi, %edi
	movl      16(%ebp), %ebx
	je        LBB7_8
	cmpl      $0, 4(%edi)
	jne       LBB7_8
	movl      8(%edi), %eax
	xorl      %ebx, %eax
	testl     $1610612760, %eax
	je        LBB7_9
LBB7_8:
	movl      $24, (%esp)
	call      _xzalloc
	movl      %eax, %edi
	movl      $0, 4(%edi)
	movl      %ebx, 8(%edi)
	movl      %ebx, %eax
	andl      $16, %eax
	shrl      $4, %eax
	movl      -16(%ebp), %eax
	leal      _string_hasher_ci-L7$pb(%eax), %edx
	leal      _string_hasher-L7$pb(%eax), %ecx
	cmovne    %edx, %ecx
	leal      _string_compare_ci-L7$pb(%eax), %edx
	movl      %edx, -20(%ebp)
	leal      _string_compare-L7$pb(%eax), %edx
	cmovne    -20(%ebp), %edx
	leal      _string_free-L7$pb(%eax), %eax
	movl      %eax, 16(%esp)
	movl      %edx, 12(%esp)
	movl      %ecx, 8(%esp)
	movl      $0, 4(%esp)
	movl      $0, (%esp)
	call      _hash_initialize
	movl      %eax, 12(%edi)
	movl      (%esi), %eax
	movl      %eax, (%edi)
	movl      %edi, (%esi)
LBB7_9:
	movl      12(%ebp), %eax
	movl      %eax, (%esp)
	call      _xstrdup
	movl      %eax, %esi
	andl      $268435458, %ebx
	cmpl      $268435456, %ebx
	jne       LBB7_57
	movl      %esi, %eax
	movl      %esi, %ecx
	.align 4, 0x90
LBB7_11:
	movzbl    (%ecx), %edx
	cmpl      $92, %edx
	jne       LBB7_12
	cmpb      $0, 1(%ecx)
	setne     %bl
	movzbl    %bl, %edx
	movb      (%ecx,%edx), %dl
	jmp       LBB7_56
	.align 4, 0x90
LBB7_12:
	xorl      %ebx, %ebx
LBB7_56:
	movzbl    %bl, %ebx
	leal      1(%ebx,%ecx), %ecx
	movb      %dl, (%eax)
	incl      %eax
	testb     %dl, %dl
	jne       LBB7_11
LBB7_57:
	movl      12(%edi), %eax
	movl      %esi, 4(%esp)
	movl      %eax, (%esp)
	call      _hash_insert
	cmpl      %esi, %eax
	je        LBB7_59
	movl      %esi, (%esp)
	call      _free
	jmp       LBB7_59
LBB7_35:
	movl      12(%edi), %ecx
	jmp       LBB7_41
LBB7_37:
	testl     %eax, %eax
	movl      $1, %edx
	cmovne    %eax, %edx
LBB7_40:
	movl      %edx, 16(%edi)
	shll      $2, %edx
	leal      (%edx,%edx,8), %eax
	movl      %eax, 4(%esp)
	movl      %ecx, (%esp)
	call      _xrealloc
	movl      %eax, %ecx
	movl      %ecx, 12(%edi)
	movl      20(%edi), %eax
LBB7_41:
	leal      1(%eax), %edx
	movl      %edx, -20(%ebp)
	testl     %ebx, %ebx
	movl      %edx, 20(%edi)
	leal      (%eax,%eax,8), %ebx
	movl      16(%ebp), %eax
	movl      %eax, (%ecx,%ebx,4)
	movl      12(%ebp), %edx
	jne       LBB7_42
	movl      %ebx, -16(%ebp)
	movl      %ecx, %ebx
	movl      %esi, %edi
	testl     $67108864, %eax
	je        LBB7_54
	movl      %edx, (%esp)
	call      _xstrdup
	movl      %eax, %esi
	movl      $8, (%esp)
	call      _xmalloc
	movl      %esi, %edx
	movl      %edx, 4(%eax)
	movl      4(%edi), %ecx
	movl      %ecx, (%eax)
	movl      %eax, 4(%edi)
LBB7_54:
	movl      -16(%ebp), %eax
	movl      %edx, 4(%ebx,%eax,4)
	jmp       LBB7_59
LBB7_42:
	movl      %eax, %esi
	shrl      $3, %esi
	andl      $2, %esi
	orl       $9, %esi
	testb     $8, %al
	jne       LBB7_43
	leal      4(%ecx,%ebx,4), %eax
	movl      %esi, 8(%esp)
	movl      %edx, 4(%esp)
	movl      %eax, (%esp)
	call      _rpl_regcomp
	movl      %eax, %esi
	jmp       LBB7_49
LBB7_43:
	movl      %ebx, -16(%ebp)
	movl      %ecx, -24(%ebp)
	movl      %edx, (%esp)
	movl      %edx, %ebx
	call      _strlen
	movl      %ebx, %ecx
	movl      %eax, %ebx
	incl      %ebx
	.align 4, 0x90
LBB7_44:
	cmpl      $1, %ebx
	je        LBB7_45
	movzbl    -2(%ecx,%ebx), %eax
	decl      %ebx
	cmpl      $47, %eax
	je        LBB7_44
	leal      7(%ebx), %eax
	movl      %eax, (%esp)
	call      _xmalloc
	movl      %eax, -20(%ebp)
	movl      %ebx, 8(%esp)
	movl      12(%ebp), %ecx
	movl      %ecx, 4(%esp)
	movl      %eax, (%esp)
	call      _memcpy
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
	movl      %eax, %esi
	movl      %ebx, (%esp)
	call      _free
LBB7_49:
	testl     %esi, %esi
	je        LBB7_59
	movl      20(%edi), %eax
	jmp       LBB7_51
LBB7_45:
	movl      -20(%ebp), %eax
LBB7_51:
	decl      %eax
	movl      %eax, 20(%edi)
LBB7_59:
	addl      $44, %esp
	popl      %esi
	popl      %edi
	popl      %ebx
	popl      %ebp
	ret       
LBB7_60:
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
	call      L8$pb
L8$pb:
	popl      %eax
	movl      %eax, -20(%ebp)
	movl      16(%ebp), %edx
	movl      $0, -16(%ebp)
	xorl      %edi, %edi
	xorl      %esi, %esi
	jmp       LBB8_1
	.align 4, 0x90
LBB8_6:
	movb      %bl, (%esi,%edi)
	incl      %edi
LBB8_1:
	movl      4(%edx), %eax
	leal      -1(%eax), %ecx
	movl      %ecx, 4(%edx)
	testl     %eax, %eax
	jle       LBB8_3
	movl      (%edx), %eax
	leal      1(%eax), %ecx
	movl      %ecx, (%edx)
	movzbl    (%eax), %ebx
	jmp       LBB8_4
	.align 4, 0x90
LBB8_3:
	movl      %edx, (%esp)
	movl      %edx, %ebx
	call      ___srget
	movl      %ebx, %edx
	movl      %eax, %ebx
	cmpl      $-1, %ebx
	je        LBB8_7
LBB8_4:
	cmpl      -16(%ebp), %edi
	jne       LBB8_6
	leal      -16(%ebp), %eax
	movl      %eax, 4(%esp)
	movl      %esi, (%esp)
	movl      %edx, %esi
	call      _x2realloc
	movl      %esi, %edx
	movl      %eax, %esi
	jmp       LBB8_6
LBB8_7:
	xorl      %eax, %eax
	testb     $64, 12(%edx)
	je        LBB8_9
	call      ___error
	movl      (%eax), %eax
LBB8_9:
	movl      %eax, -32(%ebp)
	leal      1(%edi), %eax
	movl      %eax, 4(%esp)
	movl      %esi, (%esp)
	call      _xrealloc
	movl      %eax, %ebx
	movb      24(%ebp), %cl
	movb      %cl, (%ebx,%edi)
	testl     %edi, %edi
	je        LBB8_10
	movzbl    -1(%edi,%ebx), %eax
	movzbl    %cl, %ecx
	cmpl      %ecx, %eax
	setne     %al
	jmp       LBB8_12
LBB8_10:
	xorl      %eax, %eax
LBB8_12:
	movzbl    %al, %esi
	addl      %edi, %esi
	movl      $8, (%esp)
	call      _xmalloc
	movl      %ebx, 4(%eax)
	movl      12(%ebp), %ecx
	movl      %ecx, %edx
	movl      4(%edx), %ecx
	movl      %ecx, (%eax)
	movl      %eax, 4(%edx)
	testl     %esi, %esi
	jle       LBB8_29
	movl      %ebx, %eax
	addl      %esi, %eax
	movl      %eax, -24(%ebp)
	movl      %eax, %ecx
	movzbl    24(%ebp), %edx
	movl      %edx, -28(%ebp)
	movl      %ebx, %edi
	.align 4, 0x90
LBB8_14:
	movzbl    (%ebx), %eax
	cmpl      %edx, %eax
	jne       LBB8_15
	movb      24(%ebp), %al
	testb     %al, %al
	js        LBB8_18
	movl      -20(%ebp), %eax
	movl      L__DefaultRuneLocale$non_lazy_ptr-L8$pb(%eax), %eax
	movl      52(%eax,%edx,4), %eax
	movl      $16384, %ecx
	andl      %ecx, %eax
	jmp       LBB8_19
	.align 4, 0x90
LBB8_15:
	incl      %ebx
	jmp       LBB8_28
LBB8_18:
	movl      %edx, (%esp)
	movl      $16384, 4(%esp)
	call      ___maskrune
LBB8_19:
	testl     %eax, %eax
	movl      %ebx, %esi
	je        LBB8_26
	.align 4, 0x90
LBB8_20:
	cmpl      %esi, %edi
	je        LBB8_27
	movzbl    -1(%esi), %eax
	testb     %al, %al
	js        LBB8_23
	movl      -20(%ebp), %ecx
	movl      L__DefaultRuneLocale$non_lazy_ptr-L8$pb(%ecx), %ecx
	movl      52(%ecx,%eax,4), %eax
	movl      $16384, %ecx
	andl      %ecx, %eax
	jmp       LBB8_24
	.align 4, 0x90
LBB8_23:
	movl      %eax, (%esp)
	movl      $16384, 4(%esp)
	call      ___maskrune
LBB8_24:
	decl      %esi
	testl     %eax, %eax
	jne       LBB8_20
	incl      %esi
LBB8_26:
	movb      $0, (%esi)
	movl      28(%ebp), %eax
	movl      %eax, 12(%esp)
	movl      20(%ebp), %eax
	movl      %eax, 8(%esp)
	movl      %edi, 4(%esp)
	movl      12(%ebp), %eax
	movl      %eax, (%esp)
	call      *8(%ebp)
LBB8_27:
	incl      %ebx
	movl      %ebx, %edi
	movl      -24(%ebp), %ecx
	movl      -28(%ebp), %edx
LBB8_28:
	cmpl      %ecx, %ebx
	jb        LBB8_14
LBB8_29:
	call      ___error
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
	call      L9$pb
L9$pb:
	popl      %edi
	movb      24(%ebp), %bl
	movl      20(%ebp), %edx
	movl      16(%ebp), %eax
	movl      12(%ebp), %esi
	movl      8(%ebp), %ecx
	movl      %ecx, -16(%ebp)
	movzbl    (%eax), %ecx
	cmpl      $45, %ecx
	jne       LBB9_3
	cmpb      $0, 1(%eax)
	je        LBB9_2
LBB9_3:
	leal      L_.str1-L9$pb(%edi), %ecx
	movl      %ecx, 4(%esp)
	movl      %eax, (%esp)
	call      _fopen$DARWIN_EXTSN
	movl      %eax, %esi
	movl      $-1, %eax
	testl     %esi, %esi
	je        LBB9_5
	leal      -16(%ebp), %eax
	movl      %eax, 20(%esp)
	movsbl    %bl, %eax
	movl      %eax, 16(%esp)
	movl      20(%ebp), %eax
	movl      %eax, 12(%esp)
	movl      %esi, 8(%esp)
	movl      12(%ebp), %eax
	movl      %eax, 4(%esp)
	leal      _call_addfn-L9$pb(%edi), %eax
	movl      %eax, (%esp)
	call      _add_exclude_fp
	movl      %eax, %edi
	movl      %esi, (%esp)
	call      _rpl_fclose
	cmpl      $1, %eax
	sbbl      %eax, %eax
	notl      %eax
	orl       %eax, %edi
	movl      %edi, %eax
	jmp       LBB9_5
LBB9_2:
	movl      L___stdinp$non_lazy_ptr-L9$pb(%edi), %eax
	movl      (%eax), %eax
	leal      -16(%ebp), %ecx
	movl      %ecx, 20(%esp)
	movsbl    %bl, %ecx
	movl      %ecx, 16(%esp)
	movl      %edx, 12(%esp)
	movl      %eax, 8(%esp)
	movl      %esi, 4(%esp)
	leal      _call_addfn-L9$pb(%edi), %eax
	movl      %eax, (%esp)
	call      _add_exclude_fp
LBB9_5:
	addl      $28, %esp
	popl      %esi
	popl      %edi
	popl      %ebx
	popl      %ebp
	ret       
	.align 4, 0x90
_call_addfn:
	pushl     %ebp
	movl      %esp, %ebp
	movl      20(%ebp), %eax
	movl      (%eax), %eax
	popl      %ebp
	jmp       *%eax
	.align 4, 0x90
_string_hasher_ci:
	pushl     %ebp
	movl      %esp, %ebp
	pushl     %ebx
	pushl     %edi
	pushl     %esi
	subl      $204, %esp
	call      L11$pb
L11$pb:
	popl      %esi
	movl      8(%ebp), %edi
	movl      L___stack_chk_guard$non_lazy_ptr-L11$pb(%esi), %eax
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
	jmp       LBB11_1
	.align 4, 0x90
LBB11_19:
	imull     $31, %ebx, %ecx
	addl      %eax, %ecx
	xorl      %edx, %edx
	movl      %ecx, %eax
	divl      12(%ebp)
	addl      -52(%ebp), %edi
	movl      %edi, -56(%ebp)
	movb      -192(%ebp), %al
	movl      %edx, %ebx
LBB11_1:
	movb      $0, -60(%ebp)
	testb     %al, %al
	jne       LBB11_6
	movzbl    (%edi), %eax
	movl      %eax, %ecx
	shrl      $3, %ecx
	andl      $28, %ecx
	movl      L_is_basic_table$non_lazy_ptr-L11$pb(%esi), %edx
	movl      (%edx,%ecx), %ecx
	btl       %eax, %ecx
	jae       LBB11_4
	movl      $1, -52(%ebp)
	movsbl    (%edi), %eax
	movl      %eax, -44(%ebp)
	movb      $1, -48(%ebp)
	jmp       LBB11_15
LBB11_4:
	leal      -188(%ebp), %eax
	movl      %eax, (%esp)
	call      _mbsinit
	testl     %eax, %eax
	je        LBB11_22
	movb      $1, -192(%ebp)
	movl      -56(%ebp), %edi
	.align 4, 0x90
LBB11_6:
	movl      L___mb_cur_max$non_lazy_ptr-L11$pb(%esi), %eax
	movl      (%eax), %eax
	movl      %eax, 4(%esp)
	movl      %edi, (%esp)
	call      _strnlen1
	leal      -188(%ebp), %ecx
	movl      %ecx, 12(%esp)
	movl      %eax, 8(%esp)
	movl      %edi, 4(%esp)
	leal      -44(%ebp), %eax
	movl      %eax, (%esp)
	call      _mbrtowc
	movl      %eax, -52(%ebp)
	cmpl      $-2, %eax
	je        LBB11_10
	testl     %eax, %eax
	jne       LBB11_8
	movl      $1, -52(%ebp)
	movl      -56(%ebp), %eax
	cmpb      $0, (%eax)
	jne       LBB11_23
	cmpl      $0, -44(%ebp)
	je        LBB11_13
	jmp       LBB11_24
	.align 4, 0x90
LBB11_10:
	movl      -56(%ebp), %eax
	movl      %eax, (%esp)
	call      _strlen
	movl      %eax, -52(%ebp)
	movb      $0, -48(%ebp)
	jmp       LBB11_15
	.align 4, 0x90
LBB11_8:
	cmpl      $-1, %eax
	jne       LBB11_13
	movl      $1, -52(%ebp)
	movb      $0, -48(%ebp)
	jmp       LBB11_15
	.align 4, 0x90
LBB11_13:
	movb      $1, -48(%ebp)
	leal      -188(%ebp), %eax
	movl      %eax, (%esp)
	call      _mbsinit
	testl     %eax, %eax
	je        LBB11_15
	movb      $0, -192(%ebp)
LBB11_15:
	movb      $1, -60(%ebp)
	cmpb      $0, -48(%ebp)
	je        LBB11_18
	cmpl      $0, -44(%ebp)
	je        LBB11_20
	movl      -44(%ebp), %eax
	movl      %eax, (%esp)
	call      ___tolower
	movl      -56(%ebp), %edi
	jmp       LBB11_19
	.align 4, 0x90
LBB11_18:
	movl      -56(%ebp), %edi
	movsbl    (%edi), %eax
	jmp       LBB11_19
LBB11_20:
	movl      -196(%ebp), %eax
	movl      (%eax), %eax
	cmpl      -16(%ebp), %eax
	jne       LBB11_25
	movl      %ebx, %eax
	addl      $204, %esp
	popl      %esi
	popl      %edi
	popl      %ebx
	popl      %ebp
	ret       
LBB11_23:
	leal      L_.str4-L11$pb(%esi), %eax
	movl      %eax, 12(%esp)
	leal      L_.str2-L11$pb(%esi), %eax
	movl      %eax, 4(%esp)
	leal      L___func__.mbuiter_multi_next-L11$pb(%esi), %eax
	movl      %eax, (%esp)
	movl      $178, 8(%esp)
	call      ___assert_rtn
LBB11_24:
	leal      L_.str5-L11$pb(%esi), %eax
	movl      %eax, 12(%esp)
	leal      L_.str2-L11$pb(%esi), %eax
	movl      %eax, 4(%esp)
	leal      L___func__.mbuiter_multi_next-L11$pb(%esi), %eax
	movl      %eax, (%esp)
	movl      $179, 8(%esp)
	call      ___assert_rtn
LBB11_22:
	leal      L_.str3-L11$pb(%esi), %eax
	movl      %eax, 12(%esp)
	leal      L_.str2-L11$pb(%esi), %eax
	movl      %eax, 4(%esp)
	leal      L___func__.mbuiter_multi_next-L11$pb(%esi), %eax
	movl      %eax, (%esp)
	movl      $150, 8(%esp)
	call      ___assert_rtn
LBB11_25:
	call      ___stack_chk_fail
	.align 4, 0x90
_string_hasher:
	pushl     %ebp
	movl      %esp, %ebp
	popl      %ebp
	jmp       _hash_string
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
	testl     %eax, %eax
	sete      %al
	movzbl    %al, %eax
	addl      $8, %esp
	popl      %ebp
	ret       
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
	testl     %eax, %eax
	sete      %al
	movzbl    %al, %eax
	addl      $8, %esp
	popl      %ebp
	ret       
	.align 4, 0x90
_string_free:
	pushl     %ebp
	movl      %esp, %ebp
	popl      %ebp
	jmp       _free
# ----------------------
	.section       __TEXT,__cstring,cstring_literals
L_.str:
	.asciz	"(/.*)?"
L_.str1:
	.asciz	"r"
L___func__.mbuiter_multi_next:
	.asciz	"mbuiter_multi_next"
L_.str2:
	.asciz	"./lib/mbuiter.h"
L_.str3:
	.asciz	"mbsinit (&iter->state)"
L_.str4:
	.asciz	"*iter->cur.ptr == '\\0'"
L_.str5:
	.asciz	"iter->cur.wc == 0"
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
