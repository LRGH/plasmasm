	.text
	.local	_ZN7acommon8StackPtrI13CheckerStringE5resetEPS1_.part.68
	.type	_ZN7acommon8StackPtrI13CheckerStringE5resetEPS1_.part.68, @function
_ZN7acommon8StackPtrI13CheckerStringE5resetEPS1_.part.68:
	subl      $12, %esp
	pushl     $_ZZN7acommon8StackPtrI13CheckerStringE5resetEPS1_E19__PRETTY_FUNCTION__
	pushl     $47
	pushl     $.LC08063CD3
	pushl     $.LC08063CEA
	call      __assert_fail
	.size	_ZN7acommon8StackPtrI13CheckerStringE5resetEPS1_.part.68, .-_ZN7acommon8StackPtrI13CheckerStringE5resetEPS1_.part.68
# ----------------------
.L0804CCC9:
	.p2align 1
# ----------------------
	.local	_ZN7acommon8StackPtrINS_6VectorI6ChoiceEEE5resetEPS3_.part.69
	.type	_ZN7acommon8StackPtrINS_6VectorI6ChoiceEEE5resetEPS3_.part.69, @function
_ZN7acommon8StackPtrINS_6VectorI6ChoiceEEE5resetEPS3_.part.69:
	subl      $12, %esp
	pushl     $_ZZN7acommon8StackPtrINS_6VectorI6ChoiceEEE5resetEPS3_E19__PRETTY_FUNCTION__
	pushl     $47
	pushl     $.LC08063CD3
	pushl     $.LC08063CEA
	call      __assert_fail
	.size	_ZN7acommon8StackPtrINS_6VectorI6ChoiceEEE5resetEPS3_.part.69, .-_ZN7acommon8StackPtrINS_6VectorI6ChoiceEEE5resetEPS3_.part.69
# ----------------------
.L0804CCE3:
	.p2align 4
# ----------------------
	.globl	main
	.type	main, @function
main:
	leal      4(%esp), %ecx
	andl      $-16, %esp
	pushl     -4(%ecx)
	pushl     %ebp
	movl      %esp, %ebp
	pushl     %edi
	pushl     %esi
	pushl     %ebx
	pushl     %ecx
	subl      $200, %esp
	movl      (%ecx), %eax
	movl      %eax, -192(%ebp)
	movl      4(%ecx), %eax
	movl      %eax, -196(%ebp)
	call      _ZN7acommon10new_configEv
.L0804CD1D:
	movl      options, %edx
	testl     %edx, %edx
	jne       .L0804DA83
.L0804CD2B:
	subl      $8, %esp
	movl      %eax, options
	pushl     $.LC08063D11
	pushl     $6
	call      setlocale
.L0804CD3F:
	call      aspell_gettext_init
.L0804CD44:
	leal      -40(%ebp), %eax
	addl      $12, %esp
	pushl     $0
	pushl     options
	pushl     %eax
	call      _ZN7acommon6Config19set_committed_stateEb
.L0804CD58:
	leal      -40(%ebp), %eax
	pushl     %eax
	call      _ZN7acommon12PosibErrBase7destroyEv
.L0804CD61:
	addl      $16, %esp
	cmpl      $1, -192(%ebp)
	je        .L0804D978
.L0804CD71:
	movl      $.LC08063D11, -120(%ebp)
	movb      $0, -116(%ebp)
	movl      $0, -112(%ebp)
	movb      $0, -108(%ebp)
	movl      $_ZTVN7acommon6StringE+8, -104(%ebp)
	movl      $0, -100(%ebp)
	movl      $0, -96(%ebp)
	movl      $0, -92(%ebp)
	movl      $1, -176(%ebp)
	.p2align 4,,10
	.p2align 3
.L0804CDB0:
	movl      -176(%ebp), %eax
	sall      $2, %eax
	movl      %eax, %edi
	movl      %eax, -200(%ebp)
	movl      -196(%ebp), %eax
	addl      %edi, %eax
	movl      (%eax), %edi
	movl      %eax, -204(%ebp)
	cmpb      $45, (%edi)
	jne       .L0804D0C0
.L0804CDDA:
	movzbl    1(%edi), %eax
	movl      $_ZL10mode_abrvs, %edx
	cmpb      $45, %al
	je        .L0804D298
.L0804CDEB:
	.p2align 4,,10
	.p2align 3
.L0804CDF0:
	cmpb      (%edx), %al
	je        .L0804D270
.L0804CDF8:
	addl      $12, %edx
	cmpl      $.LC080652B0, %edx
	jne       .L0804CDF0
.L0804CE03:
	movl      possible_options_end, %ebx
	movl      $_ZL16possible_options, %edx
	cmpl      $_ZL16possible_options, %ebx
	je        .L0804CE2C
.L0804CE16:
	cmpb      $100, %al
	jne       .L0804CE25
.L0804CE1A:
	jmp       .L0804CE34
.L0804CE1C:
	.p2align 4,,10
	.p2align 3
.L0804CE20:
	cmpb      4(%edx), %al
	je        .L0804CE2C
.L0804CE25:
	addl      $16, %edx
	cmpl      %ebx, %edx
	jne       .L0804CE20
.L0804CE2C:
	cmpb      $118, %al
	je        .L0804D704
.L0804CE34:
	leal      2(%edi), %esi
.L0804CE37:
	cmpb      $0, (%esi)
	setne     %al
.L0804CE3D:
	cmpl      %ebx, %edx
	je        .L0804D34B
.L0804CE45:
	movl      8(%edx), %ebx
	testl     %ebx, %ebx
	jne       .L0804D160
.L0804CE50:
	cmpb      $0, (%esi)
	jne       .L0804D86F
.L0804CE59:
	addl      $1, -176(%ebp)
.L0804CE60:
	cmpb      $0, 12(%edx)
	jne       .L0804D17E
.L0804CE6A:
	movl      (%edx), %eax
	cmpb      $0, (%eax)
	jne       .L0804D45E
.L0804CE75:
	movl      -192(%ebp), %ebx
	cmpl      %ebx, -176(%ebp)
	jne       .L0804CDB0
.L0804CE87:
	leal      -40(%ebp), %eax
	pushl     %ebx
	pushl     $0
	pushl     options
	pushl     %eax
	call      _ZN7acommon6Config16read_in_settingsEPKS0_
.L0804CE99:
	leal      -40(%ebp), %eax
	pushl     %eax
	call      _ZN7acommon12PosibErrBase7destroyEv
.L0804CEA2:
	movl      $14, (%esp)
	call      nl_langinfo
.L0804CEAE:
	popl      %esi
	movl      %eax, %ebx
	movl      %eax, -40(%ebp)
	leal      -40(%ebp), %eax
	popl      %edi
	pushl     %eax
	pushl     options
	movl      $-1, -36(%ebp)
	call      _ZN7acommon14ascii_encodingERKNS_6ConfigERKNS_10ParmStringE
.L0804CECB:
	addl      $16, %esp
	cmpb      $1, %al
	movl      $0, -132(%ebp)
	sbbl      %eax, %eax
	movl      $0, -128(%ebp)
	movl      $0, -124(%ebp)
	andl      %eax, %ebx
	leal      -132(%ebp), %eax
	pushl     %ebx
	pushl     %eax
	leal      -40(%ebp), %eax
	pushl     options
	pushl     %eax
	call      _ZN7acommon6Config10commit_allEPNS_6VectorIiEEPKc
.L0804CF03:
	movl      -40(%ebp), %eax
	addl      $12, %esp
	testl     %eax, %eax
	movl      %eax, -56(%ebp)
	je        .L0804CF14
.L0804CF10:
	addl      $1, 8(%eax)
.L0804CF14:
	leal      -40(%ebp), %eax
	subl      $12, %esp
	pushl     %eax
	call      _ZN7acommon12PosibErrBase7destroyEv
.L0804CF20:
	movl      -56(%ebp), %eax
	addl      $16, %esp
	testl     %eax, %eax
	jne       .L0804DA99
.L0804CF2E:
	leal      -56(%ebp), %eax
	subl      $12, %esp
	pushl     %eax
	call      _ZN7acommon12PosibErrBase7destroyEv
.L0804CF3A:
	movl      -128(%ebp), %eax
	subl      -132(%ebp), %eax
	addl      $16, %esp
	sarl      $2, %eax
	movl      %eax, %edi
	subl      $1, %edi
	js        .L0804CF8F
.L0804CF50:
	leal      -4(,%eax,4), %ebx
	leal      -172(%ebp), %esi
	.p2align 4,,10
	.p2align 3
.L0804CF60:
	movl      -132(%ebp), %eax
	subl      $4, %esp
	subl      $1, %edi
	movl      (%eax,%ebx), %eax
	subl      $4, %ebx
	sall      $4, %eax
	addl      args, %eax
	pushl     %eax
	pushl     $args
	pushl     %esi
	call      _ZNSt6vectorIN7acommon6StringESaIS1_EE8_M_eraseEN9__gnu_cxx17__normal_iteratorIPS1_S3_EE
.L0804CF87:
	addl      $12, %esp
	cmpl      $-1, %edi
	jne       .L0804CF60
.L0804CF8F:
	movl      args, %eax
	cmpl      args+4, %eax
	je        .L0804D848
.L0804CFA0:
	movl      4(%eax), %edx
	pushl     %ecx
	leal      -88(%ebp), %ebx
	movl      8(%eax), %eax
	leal      -172(%ebp), %esi
	movl      $_ZTVN7acommon6StringE+8, -88(%ebp)
	subl      %edx, %eax
	pushl     %eax
	pushl     %edx
	pushl     %ebx
	call      _ZN7acommon6String11assign_onlyEPKcj
.L0804CFC1:
	addl      $12, %esp
	pushl     args
	pushl     $args
	pushl     %esi
	call      _ZNSt6vectorIN7acommon6StringESaIS1_EE8_M_eraseEN9__gnu_cxx17__normal_iteratorIPS1_S3_EE
.L0804CFD5:
	pushl     %ebx
	call      _ZNK7acommon6String5c_strEv
.L0804CFDB:
	call      _ZL11find_optionPKc
.L0804CFE0:
	addl      $16, %esp
	cmpb      $0, 12(%eax)
	movl      %eax, %edi
	je        .L0804D8E6
.L0804CFEF:
	movl      8(%eax), %edx
	cmpl      $1, %edx
	je        .L0804D923
.L0804CFFB:
	movl      args+4, %eax
	subl      args, %eax
	sarl      $4, %eax
	cmpl      %eax, %edx
	jg        .L0804D7C3
.L0804D011:
	pushl     %eax
	pushl     %eax
	pushl     $.LC08064084
	pushl     %ebx
	call      _ZN7acommoneqERKNS_6StringEPKc
.L0804D01E:
	addl      $16, %esp
	testb     %al, %al
	je        .L0804D98C
.L0804D029:
	subl      $12, %esp
	pushl     $0
	call      _Z10print_helpb
.L0804D033:
	addl      $16, %esp
.L0804D036:
	cmpl      $4, action
	je        .L0804D0B7
.L0804D03F:
	movl      args, %eax
	cmpl      args+4, %eax
	je        .L0804DA46
.L0804D050:
	movl      4(%eax), %edx
	pushl     %ecx
	leal      -72(%ebp), %edi
	movl      8(%eax), %eax
	movl      $_ZTVN7acommon6StringE+8, -72(%ebp)
	subl      %edx, %eax
	pushl     %eax
	pushl     %edx
	pushl     %edi
	call      _ZN7acommon6String11assign_onlyEPKcj
.L0804D06B:
	addl      $12, %esp
	pushl     args
	pushl     $args
	pushl     %esi
	call      _ZNSt6vectorIN7acommon6StringESaIS1_EE8_M_eraseEN9__gnu_cxx17__normal_iteratorIPS1_S3_EE
.L0804D07F:
	subl      $12, %esp
	pushl     $.LC08064097
	pushl     %edi
	call      _ZN7acommoneqERKNS_6StringEPKc
.L0804D08D:
	addl      $32, %esp
	testb     %al, %al
	je        .L0804D9C9
.L0804D098:
	call      _Z6configv
.L0804D09D:
	movl      -68(%ebp), %eax
	movl      $_ZTVN7acommon6StringE+8, -72(%ebp)
	testl     %eax, %eax
	je        .L0804D0B7
.L0804D0AB:
	subl      $12, %esp
	pushl     %eax
	call      free
.L0804D0B4:
	addl      $16, %esp
.L0804D0B7:
	xorl      %edx, %edx
	jmp       .L0804D7F7
.L0804D0BE:
	.p2align 4,,10
	.p2align 3
.L0804D0C0:
	movl      $_ZTVN7acommon6StringE+8, -40(%ebp)
	cmpb      $0, (%edi)
	jne       .L0804D5B0
.L0804D0D0:
	movl      $0, -36(%ebp)
	movl      $0, -32(%ebp)
	movl      $0, -28(%ebp)
.L0804D0E5:
	movl      args+4, %ebx
	cmpl      args+8, %ebx
	je        .L0804D444
.L0804D0F7:
	testl     %ebx, %ebx
	je        .L0804D128
.L0804D0FB:
	movl      $_ZTVN7acommon6StringE+8, (%ebx)
	movl      -36(%ebp), %edi
	movl      -32(%ebp), %esi
	subl      %edi, %esi
	je        .L0804D113
.L0804D10B:
	testl     %edi, %edi
	jne       .L0804D5E9
.L0804D113:
	movl      $0, 4(%ebx)
	movl      $0, 8(%ebx)
	movl      $0, 12(%ebx)
.L0804D128:
	addl      $16, %ebx
	movl      %ebx, args+4
.L0804D131:
	movl      -36(%ebp), %eax
	movl      $_ZTVN7acommon6StringE+8, -40(%ebp)
	testl     %eax, %eax
	je        .L0804D14B
.L0804D13F:
	subl      $12, %esp
	pushl     %eax
	call      free
.L0804D148:
	addl      $16, %esp
.L0804D14B:
	addl      $1, -176(%ebp)
	jmp       .L0804CE75
.L0804D157:
	.p2align 4
.L0804D160:
	testb     %al, %al
	je        .L0804D408
.L0804D168:
	addl      $1, -176(%ebp)
	cmpb      $0, 12(%edx)
	movl      $1, %ebx
	je        .L0804CE6A
.L0804D17E:
	movl      (%edx), %ebx
	movl      $_ZTVN7acommon6StringE+8, -40(%ebp)
	testl     %ebx, %ebx
	je        .L0804D194
.L0804D18B:
	cmpb      $0, (%ebx)
	jne       .L0804D666
.L0804D194:
	movl      $0, -36(%ebp)
	movl      $0, -32(%ebp)
	movl      $0, -28(%ebp)
.L0804D1A9:
	movl      args+4, %ebx
	cmpl      args+8, %ebx
	je        .L0804D640
.L0804D1BB:
	testl     %ebx, %ebx
	je        .L0804D1EC
.L0804D1BF:
	movl      $_ZTVN7acommon6StringE+8, (%ebx)
	movl      -36(%ebp), %edi
	movl      -32(%ebp), %ecx
	subl      %edi, %ecx
	je        .L0804D1D7
.L0804D1CF:
	testl     %edi, %edi
	jne       .L0804D6B8
.L0804D1D7:
	movl      $0, 4(%ebx)
	movl      $0, 8(%ebx)
	movl      $0, 12(%ebx)
.L0804D1EC:
	addl      $16, %ebx
	movl      %ebx, args+4
.L0804D1F5:
	movl      -36(%ebp), %eax
	movl      $_ZTVN7acommon6StringE+8, -40(%ebp)
	testl     %eax, %eax
	je        .L0804D21B
.L0804D203:
	subl      $12, %esp
	movl      %edx, -180(%ebp)
	pushl     %eax
	call      free
.L0804D212:
	movl      -180(%ebp), %edx
	addl      $16, %esp
.L0804D21B:
	cmpl      $1, 8(%edx)
	jne       .L0804CE75
.L0804D225:
	pushl     %eax
	pushl     %eax
	leal      -40(%ebp), %eax
	pushl     %esi
	movl      $_ZTVN7acommon6StringE+8, -40(%ebp)
	pushl     %eax
	call      _ZN7acommon6String11assign_onlyEPKc
.L0804D238:
	popl      %eax
	leal      -40(%ebp), %eax
	popl      %edx
	pushl     %eax
	pushl     $args
	call      _ZNSt6vectorIN7acommon6StringESaIS1_EE9push_backERKS1_
.L0804D248:
	movl      -36(%ebp), %eax
	addl      $16, %esp
	movl      $_ZTVN7acommon6StringE+8, -40(%ebp)
	testl     %eax, %eax
	je        .L0804CE75
.L0804D25D:
	subl      $12, %esp
	pushl     %eax
	call      free
.L0804D266:
	addl      $16, %esp
	jmp       .L0804CE75
.L0804D26E:
	.p2align 4,,10
	.p2align 3
.L0804D270:
	movl      4(%edx), %esi
	movl      $.LC08063E60, -120(%ebp)
	leal      -120(%ebp), %edx
	movl      $1, -112(%ebp)
	movl      possible_options_end, %ebx
	addl      $5, %esi
	jmp       .L0804CE37
.L0804D292:
	.p2align 4,,10
	.p2align 3
.L0804D298:
	movzbl    2(%edi), %eax
	leal      2(%edi), %ebx
	movl      %ebx, %esi
	testb     %al, %al
	movb      %al, -185(%ebp)
	jne       .L0804D2BA
.L0804D2AB:
	jmp       .L0804D2BE
.L0804D2AD:
	.p2align 4,,10
	.p2align 3
.L0804D2B0:
	addl      $1, %esi
	movzbl    (%esi), %eax
	testb     %al, %al
	je        .L0804D2BE
.L0804D2BA:
	cmpb      $61, %al
	jne       .L0804D2B0
.L0804D2BE:
	movl      possible_options_end, %eax
	movl      $_ZL16possible_options, %ecx
	cmpl      %ecx, %eax
	movl      %eax, -184(%ebp)
	je        .L0804D3C5
.L0804D2D6:
	.p2align 4
.L0804D2E0:
	cmpl      %ebx, %esi
	movl      (%ecx), %edx
	je        .L0804D31B
.L0804D2E6:
	movzbl    -185(%ebp), %eax
	cmpb      %al, (%edx)
	jne       .L0804D3B6
.L0804D2F5:
	movl      %ebx, %eax
	movl      %ecx, -180(%ebp)
	jmp       .L0804D30B
.L0804D2FF:
	.p2align 4,,10
	.p2align 3
.L0804D300:
	movzbl    (%edx), %ecx
	cmpb      %cl, (%eax)
	jne       .L0804D3B0
.L0804D30B:
	addl      $1, %eax
	addl      $1, %edx
	cmpl      %eax, %esi
	jne       .L0804D300
.L0804D315:
	movl      -180(%ebp), %ecx
.L0804D31B:
	cmpb      $0, (%edx)
	jne       .L0804D3B6
.L0804D324:
	cmpl      -184(%ebp), %ecx
	movl      %ecx, %edx
	je        .L0804D3C5
.L0804D332:
	cmpb      $61, (%esi)
	je        .L0804D62D
.L0804D33B:
	movl      -184(%ebp), %ebx
	xorl      %eax, %eax
	cmpl      %ebx, %edx
	jne       .L0804CE45
.L0804D34B:
	movl      -204(%ebp), %eax
	orl       $-1, %edi
	movl      (%eax), %esi
	pushl     %ecx
	pushl     %ecx
	pushl     $.LC08064043
.L0804D35D:
	pushl     $.LC08063D1D
	orl       $-1, %ebx
	call      dgettext
.L0804D36A:
	pushl     %edi
	pushl     %esi
	pushl     %ebx
	pushl     %eax
	call      _Z11print_errorN7acommon10ParmStringES0_
.L0804D373:
	addl      $32, %esp
.L0804D376:
	movl      $1, %edx
.L0804D37B:
	movl      -100(%ebp), %eax
	movl      $_ZTVN7acommon6StringE+8, -104(%ebp)
	testl     %eax, %eax
	je        .L0804D3A1
.L0804D389:
	subl      $12, %esp
	movl      %edx, -176(%ebp)
	pushl     %eax
	call      free
.L0804D398:
	movl      -176(%ebp), %edx
	addl      $16, %esp
.L0804D3A1:
	leal      -16(%ebp), %esp
	movl      %edx, %eax
	popl      %ecx
	popl      %ebx
	popl      %esi
	popl      %edi
	popl      %ebp
	leal      -4(%ecx), %esp
	ret       
.L0804D3AF:
	.p2align 4,,10
	.p2align 3
.L0804D3B0:
	movl      -180(%ebp), %ecx
.L0804D3B6:
	addl      $16, %ecx
	cmpl      -184(%ebp), %ecx
	jne       .L0804D2E0
.L0804D3C5:
	pushl     %eax
	movl      %esi, %eax
	subl      %edi, %eax
	subl      $2, %eax
	pushl     %eax
	leal      -104(%ebp), %eax
	pushl     %ebx
	pushl     %eax
	call      _ZN7acommon6String6assignEPKcj
.L0804D3D8:
	leal      -104(%ebp), %eax
	movl      %eax, (%esp)
	call      _ZNK7acommon6String5c_strEv
.L0804D3E3:
	movl      %eax, -120(%ebp)
	movl      possible_options_end, %eax
	addl      $16, %esp
	movl      $-1, -112(%ebp)
	leal      -120(%ebp), %edx
	movl      %eax, -184(%ebp)
	jmp       .L0804D332
.L0804D403:
	.p2align 4,,10
	.p2align 3
.L0804D408:
	movl      -176(%ebp), %eax
	addl      $1, %eax
	cmpl      -192(%ebp), %eax
	je        .L0804D617
.L0804D41D:
	movl      -196(%ebp), %edi
	movl      -200(%ebp), %ecx
	movl      4(%edi,%ecx), %ecx
	cmpb      $45, (%ecx)
	je        .L0804D617
.L0804D436:
	addl      $2, -176(%ebp)
	movl      %ecx, %esi
	jmp       .L0804CE60
.L0804D444:
	leal      -40(%ebp), %eax
	subl      $4, %esp
	pushl     %eax
	pushl     %ebx
	pushl     $args
	call      _ZNSt6vectorIN7acommon6StringESaIS1_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS1_S3_EERKS1_
.L0804D456:
	addl      $16, %esp
	jmp       .L0804D131
.L0804D45E:
	subl      $12, %esp
	movl      %edx, -180(%ebp)
	pushl     $64
	call      _Znwj
.L0804D46E:
	movl      -180(%ebp), %edx
	movl      %eax, %edi
	movl      $_ZTVN7acommon6StringE+8, 4(%eax)
	movl      $0, 8(%eax)
	movl      $0, 12(%eax)
	addl      $16, %esp
	movl      $0, 16(%eax)
	movl      $_ZTVN7acommon6StringE+8, 20(%eax)
	movl      (%edx), %edx
	movl      $0, 24(%eax)
	movl      $0, 28(%eax)
	movl      $0, 32(%eax)
	movl      $_ZTVN7acommon6StringE+8, 36(%eax)
	movl      $0, 40(%eax)
	movl      $0, 44(%eax)
	movl      $0, 48(%eax)
	testl     %edx, %edx
	movl      $0, 52(%eax)
	movl      $0, 56(%eax)
	movb      $0, 60(%eax)
	movl      $-1, %eax
	movw      %ax, 62(%edi)
	je        .L0804D537
.L0804D4EE:
	subl      $12, %esp
	movl      %edx, -180(%ebp)
	pushl     %edx
	call      strlen
.L0804D4FD:
	addl      $16, %esp
	testl     %eax, %eax
	movl      %eax, %ecx
	je        .L0804D537
.L0804D506:
	movl      $0, %eax
	movl      -180(%ebp), %edx
	jns       .L0804D794
.L0804D517:
	subl      $4, %esp
	movl      %ecx, -180(%ebp)
	pushl     %ecx
	pushl     %edx
	pushl     %eax
	call      memmove
.L0804D528:
	movl      -180(%ebp), %ecx
	addl      8(%edi), %ecx
	addl      $16, %esp
	movl      %ecx, 12(%edi)
.L0804D537:
	testl     %esi, %esi
	je        .L0804D580
.L0804D53B:
	subl      $12, %esp
	pushl     %esi
	call      strlen
.L0804D544:
	movl      %eax, %ecx
	movl      24(%edi), %eax
	addl      $16, %esp
	testl     %ecx, %ecx
	movl      %eax, 28(%edi)
	je        .L0804D580
.L0804D553:
	movl      32(%edi), %edx
	subl      %eax, %edx
	cmpl      %edx, %ecx
	jge       .L0804D771
.L0804D560:
	subl      $4, %esp
	movl      %ecx, -180(%ebp)
	pushl     %ecx
	pushl     %esi
	pushl     %eax
	call      memmove
.L0804D571:
	movl      -180(%ebp), %ecx
	addl      24(%edi), %ecx
	addl      $16, %esp
	movl      %ecx, 28(%edi)
.L0804D580:
	cmpl      $-1, %ebx
	movb      $1, 60(%edi)
	je        .L0804D716
.L0804D58D:
	leal      -40(%ebp), %eax
	pushl     $0
	pushl     %edi
	pushl     options
	pushl     %eax
	call      _ZN7acommon6Config3setEPNS0_5EntryEb
.L0804D59F:
	leal      -40(%ebp), %eax
	pushl     %eax
	call      _ZN7acommon12PosibErrBase7destroyEv
.L0804D5A8:
	addl      $16, %esp
	jmp       .L0804CE75
.L0804D5B0:
	subl      $12, %esp
	pushl     %edi
	call      strlen
.L0804D5B9:
	movl      %eax, %ebx
	leal      1(%eax), %eax
	movl      %eax, (%esp)
	call      malloc
.L0804D5C6:
	addl      $12, %esp
	movl      %eax, %esi
	movl      %eax, -36(%ebp)
	pushl     %ebx
	pushl     %edi
	addl      %esi, %ebx
	pushl     %eax
	call      memcpy
.L0804D5D8:
	movl      %ebx, -32(%ebp)
	addl      $1, %ebx
	addl      $16, %esp
	movl      %ebx, -28(%ebp)
	jmp       .L0804D0E5
.L0804D5E9:
	leal      1(%esi), %eax
	subl      $12, %esp
	pushl     %eax
	call      malloc
.L0804D5F5:
	addl      $12, %esp
	movl      %eax, 4(%ebx)
	pushl     %esi
	pushl     %edi
	pushl     %eax
	call      memcpy
.L0804D603:
	addl      4(%ebx), %esi
	addl      $16, %esp
	movl      %esi, 8(%ebx)
	addl      $1, %esi
	movl      %esi, 12(%ebx)
	jmp       .L0804D128
.L0804D617:
	cmpl      $-1, %ebx
	jne       .L0804D9B2
.L0804D620:
	movl      %eax, -176(%ebp)
	xorl      %ebx, %ebx
	jmp       .L0804CE60
.L0804D62D:
	addl      $1, %esi
	movl      -184(%ebp), %ebx
	movl      $1, %eax
	jmp       .L0804CE3D
.L0804D640:
	leal      -40(%ebp), %eax
	subl      $4, %esp
	movl      %edx, -180(%ebp)
	pushl     %eax
	pushl     %ebx
	pushl     $args
	call      _ZNSt6vectorIN7acommon6StringESaIS1_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS1_S3_EERKS1_
.L0804D658:
	addl      $16, %esp
	movl      -180(%ebp), %edx
	jmp       .L0804D1F5
.L0804D666:
	movl      %edx, -184(%ebp)
	xorl      %eax, %eax
	movl      %ebx, %edi
	orl       $-1, %ecx
	subl      $12, %esp
	repnz scasb     
	movl      %ecx, %eax
	notl      %eax
	pushl     %eax
	leal      -1(%eax), %edi
	call      malloc
.L0804D685:
	addl      $12, %esp
	movl      %eax, -36(%ebp)
	movl      %eax, -180(%ebp)
	pushl     %edi
	pushl     %ebx
	pushl     %eax
	call      memcpy
.L0804D699:
	movl      -180(%ebp), %ecx
	addl      $16, %esp
	movl      -184(%ebp), %edx
	addl      %ecx, %edi
	movl      %edi, -32(%ebp)
	addl      $1, %edi
	movl      %edi, -28(%ebp)
	jmp       .L0804D1A9
.L0804D6B8:
	leal      1(%ecx), %eax
	subl      $12, %esp
	movl      %edx, -184(%ebp)
	movl      %ecx, -180(%ebp)
	pushl     %eax
	call      malloc
.L0804D6D0:
	movl      -180(%ebp), %ecx
	addl      $12, %esp
	movl      %eax, 4(%ebx)
	pushl     %ecx
	pushl     %edi
	pushl     %eax
	call      memcpy
.L0804D6E4:
	movl      -180(%ebp), %ecx
	addl      4(%ebx), %ecx
	addl      $16, %esp
	movl      -184(%ebp), %edx
	movl      %ecx, 8(%ebx)
	addl      $1, %ecx
	movl      %ecx, 12(%ebx)
	jmp       .L0804D1EC
.L0804D704:
	cmpb      $118, 2(%edi)
	leal      3(%edi), %esi
	jne       .L0804CE34
.L0804D711:
	jmp       .L0804CE37
.L0804D716:
	movl      args+4, %eax
	subl      args, %eax
	sarl      $4, %eax
	movw      %ax, 62(%edi)
	pushl     %eax
	pushl     %eax
	leal      -40(%ebp), %eax
	pushl     %esi
	movl      $_ZTVN7acommon6StringE+8, -40(%ebp)
	pushl     %eax
	call      _ZN7acommon6String11assign_onlyEPKc
.L0804D73B:
	popl      %eax
	leal      -40(%ebp), %eax
	popl      %edx
	pushl     %eax
	pushl     $args
	call      _ZNSt6vectorIN7acommon6StringESaIS1_EE9push_backERKS1_
.L0804D74B:
	movl      -36(%ebp), %eax
	addl      $16, %esp
	movl      $_ZTVN7acommon6StringE+8, -40(%ebp)
	testl     %eax, %eax
	je        .L0804D58D
.L0804D760:
	subl      $12, %esp
	pushl     %eax
	call      free
.L0804D769:
	addl      $16, %esp
	jmp       .L0804D58D
.L0804D771:
	pushl     %eax
	pushl     %eax
	leal      20(%edi), %eax
	pushl     %ecx
	movl      %ecx, -180(%ebp)
	pushl     %eax
	call      _ZN7acommon6String9reserve_iEj
.L0804D783:
	movl      24(%edi), %eax
	addl      $16, %esp
	movl      -180(%ebp), %ecx
	jmp       .L0804D560
.L0804D794:
	pushl     %eax
	pushl     %eax
	leal      4(%edi), %eax
	pushl     %ecx
	movl      %edx, -184(%ebp)
	pushl     %eax
	movl      %ecx, -180(%ebp)
	call      _ZN7acommon6String9reserve_iEj
.L0804D7AC:
	movl      8(%edi), %eax
	addl      $16, %esp
	movl      -184(%ebp), %edx
	movl      -180(%ebp), %ecx
	jmp       .L0804D517
.L0804D7C3:
	subl      $12, %esp
	pushl     %ebx
	call      _ZNK7acommon6String5c_strEv
.L0804D7CC:
	popl      %edx
	popl      %ecx
	movl      8(%edi), %ebx
	pushl     $.LC080647A8
	movl      %eax, %esi
	pushl     $.LC08063D1D
	call      dgettext
.L0804D7E2:
	pushl     %esi
	pushl     %ebx
	pushl     %eax
	pushl     $_ZN7acommon4CERRE+8
	call      _ZN7acommon7OStream6printfEPKcz
.L0804D7EF:
	addl      $32, %esp
	movl      $1, %edx
.L0804D7F7:
	movl      -84(%ebp), %eax
	movl      $_ZTVN7acommon6StringE+8, -88(%ebp)
	testl     %eax, %eax
	je        .L0804D81D
.L0804D805:
	subl      $12, %esp
	movl      %edx, -176(%ebp)
	pushl     %eax
	call      free
.L0804D814:
	movl      -176(%ebp), %edx
	addl      $16, %esp
.L0804D81D:
	movl      -132(%ebp), %eax
	testl     %eax, %eax
	je        .L0804D37B
.L0804D82B:
	subl      $12, %esp
	movl      %edx, -176(%ebp)
	pushl     %eax
	call      _ZdlPv
.L0804D83A:
	addl      $16, %esp
	movl      -176(%ebp), %edx
	jmp       .L0804D37B
.L0804D848:
	pushl     %ebx
	pushl     %ebx
	orl       $-1, %ebx
	pushl     $.LC08064056
	pushl     $.LC08063D1D
	call      dgettext
.L0804D85C:
	popl      %esi
	popl      %edi
	pushl     %ebx
	pushl     %eax
	call      _Z11print_errorN7acommon10ParmStringE
.L0804D865:
	addl      $16, %esp
	movl      $1, %edx
	jmp       .L0804D81D
.L0804D86F:
	movl      -204(%ebp), %eax
	movl      $_ZTVN7acommon6StringE+8, -40(%ebp)
	movl      (%eax), %edx
	movl      %esi, %eax
	pushl     %ebx
	orl       $-1, %ebx
	subl      %edx, %eax
	pushl     %eax
	leal      -40(%ebp), %eax
	pushl     %edx
	pushl     %eax
	call      _ZN7acommon6String11assign_onlyEPKcj
.L0804D891:
	leal      -40(%ebp), %eax
	movl      %eax, (%esp)
	call      _ZNK7acommon6String5c_strEv
.L0804D89C:
	movl      %eax, %esi
	movl      -32(%ebp), %eax
	subl      -36(%ebp), %eax
	movl      %eax, %edi
	popl      %eax
	popl      %edx
	pushl     $.LC08064760
	pushl     $.LC08063D1D
	call      dgettext
.L0804D8B7:
	pushl     %edi
	pushl     %esi
	pushl     %ebx
	pushl     %eax
	call      _Z11print_errorN7acommon10ParmStringES0_
.L0804D8C0:
	movl      -36(%ebp), %eax
	addl      $32, %esp
	movl      $_ZTVN7acommon6StringE+8, -40(%ebp)
	testl     %eax, %eax
	je        .L0804D376
.L0804D8D5:
	subl      $12, %esp
	pushl     %eax
	call      free
.L0804D8DE:
	addl      $16, %esp
	jmp       .L0804D376
.L0804D8E6:
	subl      $12, %esp
	pushl     %ebx
	call      _ZNK7acommon6String5c_strEv
.L0804D8EF:
	movl      %eax, %esi
	movl      -80(%ebp), %eax
	subl      -84(%ebp), %eax
	popl      %ebx
	orl       $-1, %ebx
	movl      %eax, %edi
	popl      %eax
	pushl     $.LC08064071
	pushl     $.LC08063D1D
	call      dgettext
.L0804D90D:
	pushl     %edi
	pushl     %esi
	pushl     %ebx
	pushl     %eax
	call      _Z11print_errorN7acommon10ParmStringES0_
.L0804D916:
	addl      $32, %esp
	movl      $1, %edx
	jmp       .L0804D7F7
.L0804D923:
	movl      args+4, %eax
	cmpl      %eax, args
	jne       .L0804CFFB
.L0804D934:
	subl      $12, %esp
	movl      %edx, -176(%ebp)
	pushl     %ebx
	orl       $-1, %ebx
	call      _ZNK7acommon6String5c_strEv
.L0804D946:
	movl      %eax, %esi
	movl      -80(%ebp), %eax
	subl      -84(%ebp), %eax
	movl      %eax, %edi
	popl      %eax
	popl      %edx
	pushl     $.LC08064780
	pushl     $.LC08063D1D
	call      dgettext
.L0804D961:
	pushl     %edi
	pushl     %esi
	pushl     %ebx
	pushl     %eax
	call      _Z11print_errorN7acommon10ParmStringES0_
.L0804D96A:
	addl      $32, %esp
	movl      -176(%ebp), %edx
	jmp       .L0804D7F7
.L0804D978:
	subl      $12, %esp
	pushl     $0
	call      _Z10print_helpb
.L0804D982:
	addl      $16, %esp
	xorl      %edx, %edx
	jmp       .L0804D3A1
.L0804D98C:
	pushl     %eax
	pushl     %eax
	pushl     $.LC0806408A
	pushl     %ebx
	call      _ZN7acommoneqERKNS_6StringEPKc
.L0804D999:
	addl      $16, %esp
	testb     %al, %al
	je        .L0804D9E7
.L0804D9A0:
	subl      $12, %esp
	pushl     $1
	call      _Z10print_helpb
.L0804D9AA:
	addl      $16, %esp
	jmp       .L0804D036
.L0804D9B2:
	movl      -204(%ebp), %eax
	orl       $-1, %edi
	movl      (%eax), %esi
	pushl     %ecx
	pushl     %ecx
	pushl     $.LC08064780
	jmp       .L0804D35D
.L0804D9C9:
	pushl     %eax
	pushl     %eax
	pushl     $.LC0806409E
	pushl     %edi
	call      _ZN7acommoneqERKNS_6StringEPKc
.L0804D9D6:
	addl      $16, %esp
	testb     %al, %al
	je        .L0804DA28
.L0804D9DD:
	call      _Z5dictsv
.L0804D9E2:
	jmp       .L0804D09D
.L0804D9E7:
	pushl     %eax
	pushl     %eax
	pushl     $.LC0806408F
	pushl     %ebx
	call      _ZN7acommoneqERKNS_6StringEPKc
.L0804D9F4:
	addl      $16, %esp
	testb     %al, %al
	je        .L0804DAE2
.L0804D9FF:
	pushl     %eax
	pushl     %eax
	leal      -40(%ebp), %eax
	movl      $.LC08064248, -40(%ebp)
	movl      $-1, -36(%ebp)
	pushl     %eax
	movl      _ZN7acommon4COUTE+8, %eax
	pushl     $_ZN7acommon4COUTE+8
	call      *4(%eax)
.L0804DA20:
	addl      $16, %esp
	jmp       .L0804D036
.L0804DA28:
	pushl     %eax
	pushl     %eax
	pushl     $.LC080640EA
	pushl     %edi
	call      _ZN7acommoneqERKNS_6StringEPKc
.L0804DA35:
	addl      $16, %esp
	testb     %al, %al
	je        .L0804DAB9
.L0804DA3C:
	call      _Z7filtersv
.L0804DA41:
	jmp       .L0804D09D
.L0804DA46:
	subl      $12, %esp
	pushl     %ebx
	call      _ZNK7acommon6String5c_strEv
.L0804DA4F:
	movl      %eax, %esi
	movl      -80(%ebp), %eax
	subl      -84(%ebp), %eax
	popl      %ebx
	orl       $-1, %ebx
	movl      %eax, %edi
	popl      %eax
	pushl     $.LC08064071
	pushl     $.LC08063D1D
	call      dgettext
.L0804DA6D:
	pushl     %edi
	pushl     %esi
	pushl     %ebx
	pushl     %eax
	call      _Z11print_errorN7acommon10ParmStringES0_
.L0804DA76:
	addl      $32, %esp
.L0804DA79:
	movl      $1, %edx
	jmp       .L0804D7F7
.L0804DA83:
	pushl     $_ZZN7acommon8StackPtrINS_6ConfigEE5resetEPS1_E19__PRETTY_FUNCTION__
	pushl     $47
	pushl     $.LC08063CD3
	pushl     $.LC08063CEA
	call      __assert_fail
.L0804DA99:
	movl      (%eax), %ecx
	movb      $1, 4(%eax)
	orl       $-1, %edx
	movl      (%ecx), %eax
	pushl     %ecx
	pushl     %ecx
	pushl     %edx
	pushl     %eax
	call      _Z11print_errorN7acommon10ParmStringE
.L0804DAAD:
	movl      $1, (%esp)
	call      exit
.L0804DAB9:
	pushl     %eax
	pushl     %eax
	pushl     $.LC080640F2
	pushl     %edi
	call      _ZN7acommoneqERKNS_6StringEPKc
.L0804DAC6:
	addl      $16, %esp
	testb     %al, %al
	je        .L0804DB00
.L0804DACD:
	subl      $12, %esp
	pushl     $_ZN7acommon22available_filter_modesEPNS_6ConfigE
	call      _Z14list_availablePFN7acommon8PosibErrIPNS_21StringPairEnumerationEEEPNS_6ConfigEE
.L0804DADA:
	addl      $16, %esp
	jmp       .L0804D09D
.L0804DAE2:
	pushl     %eax
	pushl     %eax
	pushl     $.LC08064097
	pushl     %ebx
	call      _ZN7acommoneqERKNS_6StringEPKc
.L0804DAEF:
	addl      $16, %esp
	testb     %al, %al
	je        .L0804DB1E
.L0804DAF6:
	call      _Z6configv
.L0804DAFB:
	jmp       .L0804D036
.L0804DB00:
	pushl     %eax
	pushl     %eax
	pushl     $.LC08063DD9
	pushl     %edi
	call      _ZN7acommoneqERKNS_6StringEPKc
.L0804DB0D:
	addl      $16, %esp
	testb     %al, %al
	je        .L0804DB3C
.L0804DB14:
	call      _Z6masterv
.L0804DB19:
	jmp       .L0804D09D
.L0804DB1E:
	pushl     %eax
	pushl     %eax
	pushl     $.LC0806409E
	pushl     %ebx
	call      _ZN7acommoneqERKNS_6StringEPKc
.L0804DB2B:
	addl      $16, %esp
	testb     %al, %al
	je        .L0804DB5A
.L0804DB32:
	call      _Z5dictsv
.L0804DB37:
	jmp       .L0804D036
.L0804DB3C:
	pushl     %eax
	pushl     %eax
	pushl     $.LC08063DEC
	pushl     %edi
	call      _ZN7acommoneqERKNS_6StringEPKc
.L0804DB49:
	addl      $16, %esp
	testb     %al, %al
	je        .L0804DB78
.L0804DB50:
	call      _Z8personalv
.L0804DB55:
	jmp       .L0804D09D
.L0804DB5A:
	pushl     %edi
	pushl     %edi
	pushl     $.LC080640A4
	pushl     %ebx
	call      _ZN7acommoneqERKNS_6StringEPKc
.L0804DB67:
	addl      $16, %esp
	testb     %al, %al
	je        .L0804DB96
.L0804DB6E:
	call      _Z5checkv
.L0804DB73:
	jmp       .L0804D036
.L0804DB78:
	pushl     %eax
	pushl     %eax
	pushl     $.LC08063E13
	pushl     %edi
	call      _ZN7acommoneqERKNS_6StringEPKc
.L0804DB85:
	addl      $16, %esp
	testb     %al, %al
	je        .L0804DBB4
.L0804DB8C:
	call      _Z4replv
.L0804DB91:
	jmp       .L0804D09D
.L0804DB96:
	pushl     %ecx
	pushl     %ecx
	pushl     $.LC080640AA
	pushl     %ebx
	call      _ZN7acommoneqERKNS_6StringEPKc
.L0804DBA3:
	addl      $16, %esp
	testb     %al, %al
	je        .L0804DBD2
.L0804DBAA:
	call      _Z4pipev
.L0804DBAF:
	jmp       .L0804D036
.L0804DBB4:
	pushl     %esi
	pushl     %esi
	pushl     $.LC0806410A
	pushl     %edi
	call      _ZN7acommoneqERKNS_6StringEPKc
.L0804DBC1:
	addl      $16, %esp
	testb     %al, %al
	je        .L0804DBF4
.L0804DBC8:
	call      _Z10dump_affixv
.L0804DBCD:
	jmp       .L0804D09D
.L0804DBD2:
	pushl     %edx
	pushl     %edx
	pushl     $.LC080640DF
	pushl     %ebx
	call      _ZN7acommoneqERKNS_6StringEPKc
.L0804DBDF:
	addl      $16, %esp
	testb     %al, %al
	je        .L0804DD16
.L0804DBEA:
	call      _Z4listv
.L0804DBEF:
	jmp       .L0804D036
.L0804DBF4:
	subl      $12, %esp
	pushl     %edi
	call      _ZNK7acommon6String5c_strEv
.L0804DBFD:
	movl      %eax, -140(%ebp)
	movl      -64(%ebp), %eax
	subl      -68(%ebp), %eax
	movl      %ebx, (%esp)
	movl      $.LC08065685, -156(%ebp)
	movl      $-1, -152(%ebp)
	movl      %eax, -136(%ebp)
	call      _ZNK7acommon6String5c_strEv
.L0804DC2B:
	movl      %eax, -164(%ebp)
	movl      -80(%ebp), %eax
	addl      $12, %esp
	subl      -84(%ebp), %eax
	movl      %eax, -160(%ebp)
	leal      -156(%ebp), %eax
	pushl     %eax
	leal      -164(%ebp), %eax
	pushl     %eax
	leal      -56(%ebp), %eax
	pushl     %eax
	call      _ZN7acommonplERKNS_10ParmStringES2_
.L0804DC57:
	leal      -56(%ebp), %eax
	pushl     %eax
	call      _ZNK7acommon6String5c_strEv
.L0804DC60:
	movl      %eax, -148(%ebp)
	movl      -48(%ebp), %eax
	addl      $12, %esp
	subl      -52(%ebp), %eax
	movl      %eax, -144(%ebp)
	leal      -140(%ebp), %eax
	pushl     %eax
	leal      -148(%ebp), %eax
	pushl     %eax
	leal      -40(%ebp), %eax
	pushl     %eax
	call      _ZN7acommonplERKNS_10ParmStringES2_
.L0804DC8C:
	leal      -40(%ebp), %eax
	pushl     %eax
	call      _ZNK7acommon6String5c_strEv
.L0804DC95:
	movl      %eax, %esi
	movl      -32(%ebp), %eax
	subl      -36(%ebp), %eax
	popl      %ecx
	popl      %ebx
	pushl     $.LC08064071
	pushl     $.LC08063D1D
	orl       $-1, %ebx
	movl      %eax, %edi
	call      dgettext
.L0804DCB3:
	pushl     %edi
	pushl     %esi
	pushl     %ebx
	pushl     %eax
	call      _Z11print_errorN7acommon10ParmStringES0_
.L0804DCBC:
	movl      -36(%ebp), %eax
	addl      $32, %esp
	movl      $_ZTVN7acommon6StringE+8, -40(%ebp)
	testl     %eax, %eax
	je        .L0804DCD9
.L0804DCCD:
	subl      $12, %esp
	pushl     %eax
	call      free
.L0804DCD6:
	addl      $16, %esp
.L0804DCD9:
	movl      -52(%ebp), %eax
	movl      $_ZTVN7acommon6StringE+8, -56(%ebp)
	testl     %eax, %eax
	je        .L0804DCF3
.L0804DCE7:
	subl      $12, %esp
	pushl     %eax
	call      free
.L0804DCF0:
	addl      $16, %esp
.L0804DCF3:
	movl      -68(%ebp), %eax
	movl      $_ZTVN7acommon6StringE+8, -72(%ebp)
	testl     %eax, %eax
	je        .L0804DA79
.L0804DD05:
	subl      $12, %esp
	pushl     %eax
	call      free
.L0804DD0E:
	addl      $16, %esp
	jmp       .L0804DA79
.L0804DD16:
	pushl     %eax
	pushl     %eax
	pushl     $.LC080640AF
	pushl     %ebx
	call      _ZN7acommoneqERKNS_6StringEPKc
.L0804DD23:
	addl      $16, %esp
	testb     %al, %al
	je        .L0804DD34
.L0804DD2A:
	call      _Z5convtv
.L0804DD2F:
	jmp       .L0804D036
.L0804DD34:
	pushl     %eax
	pushl     %eax
	pushl     $.LC080640B4
	pushl     %ebx
	call      _ZN7acommoneqERKNS_6StringEPKc
.L0804DD41:
	addl      $16, %esp
	testb     %al, %al
	je        .L0804DD52
.L0804DD48:
	call      _Z6normlzv
.L0804DD4D:
	jmp       .L0804D036
.L0804DD52:
	pushl     %eax
	pushl     %eax
	pushl     $.LC08063EF3
	pushl     %ebx
	call      _ZN7acommoneqERKNS_6StringEPKc
.L0804DD5F:
	addl      $16, %esp
	testb     %al, %al
	jne       .L0804DD84
.L0804DD66:
	pushl     %eax
	pushl     %eax
	pushl     $.LC080640B9
	pushl     %ebx
	call      _ZN7acommoneqERKNS_6StringEPKc
.L0804DD73:
	addl      $16, %esp
	testb     %al, %al
	je        .L0804DD89
.L0804DD7A:
	call      _Z10soundslikev
.L0804DD7F:
	jmp       .L0804D036
.L0804DD84:
	call      _Z6filterv
.L0804DD89:
	pushl     %eax
	pushl     %eax
	pushl     $.LC080640C4
	pushl     %ebx
	call      _ZN7acommoneqERKNS_6StringEPKc
.L0804DD96:
	addl      $16, %esp
	testb     %al, %al
	je        .L0804DDA7
.L0804DD9D:
	call      _Z5munchv
.L0804DDA2:
	jmp       .L0804D036
.L0804DDA7:
	pushl     %eax
	pushl     %eax
	pushl     $.LC080640CA
	pushl     %ebx
	call      _ZN7acommoneqERKNS_6StringEPKc
.L0804DDB4:
	addl      $16, %esp
	testb     %al, %al
	je        .L0804DDC5
.L0804DDBB:
	call      _Z6expandv
.L0804DDC0:
	jmp       .L0804D036
.L0804DDC5:
	pushl     %edi
	pushl     %edi
	pushl     $.LC080640D1
	pushl     %ebx
	call      _ZN7acommoneqERKNS_6StringEPKc
.L0804DDD2:
	addl      $16, %esp
	testb     %al, %al
	je        .L0804DDE3
.L0804DDD9:
	call      _Z7combinev
.L0804DDDE:
	jmp       .L0804D036
.L0804DDE3:
	pushl     %ecx
	pushl     %ecx
	pushl     $.LC080640D9
	pushl     %ebx
	call      _ZN7acommoneqERKNS_6StringEPKc
.L0804DDF0:
	addl      $16, %esp
	testb     %al, %al
	je        .L0804DE01
.L0804DDF7:
	call      _Z10munch_listv
.L0804DDFC:
	jmp       .L0804D036
.L0804DE01:
	pushl     %edx
	pushl     %edx
	pushl     $.LC080640E4
	pushl     %ebx
	call      _ZN7acommoneqERKNS_6StringEPKc
.L0804DE0E:
	addl      $16, %esp
	testb     %al, %al
	je        .L0804DE1F
.L0804DE15:
	call      _Z5cleanv
.L0804DE1A:
	jmp       .L0804D036
.L0804DE1F:
	pushl     %eax
	pushl     %eax
	pushl     $.LC080640EA
	pushl     %ebx
	call      _ZN7acommoneqERKNS_6StringEPKc
.L0804DE2C:
	addl      $16, %esp
	testb     %al, %al
	je        .L0804DE3D
.L0804DE33:
	call      _Z7filtersv
.L0804DE38:
	jmp       .L0804D036
.L0804DE3D:
	pushl     %eax
	pushl     %eax
	pushl     $.LC080640F2
	pushl     %ebx
	call      _ZN7acommoneqERKNS_6StringEPKc
.L0804DE4A:
	addl      $16, %esp
	testb     %al, %al
	je        .L0804DE66
.L0804DE51:
	subl      $12, %esp
	pushl     $_ZN7acommon22available_filter_modesEPNS_6ConfigE
	call      _Z14list_availablePFN7acommon8PosibErrIPNS_21StringPairEnumerationEEEPNS_6ConfigEE
.L0804DE5E:
	addl      $16, %esp
	jmp       .L0804D036
.L0804DE66:
	pushl     %eax
	pushl     %eax
	pushl     $.LC080640F8
	pushl     %ebx
	call      _ZN7acommoneqERKNS_6StringEPKc
.L0804DE73:
	addl      $16, %esp
	testb     %al, %al
	je        .L0804DE89
.L0804DE7A:
	movl      $2, action
	jmp       .L0804D03F
.L0804DE89:
	pushl     %eax
	pushl     %eax
	pushl     $.LC080640FD
	pushl     %ebx
	call      _ZN7acommoneqERKNS_6StringEPKc
.L0804DE96:
	addl      $16, %esp
	testb     %al, %al
	je        .L0804DEAC
.L0804DE9D:
	movl      $0, action
	jmp       .L0804D03F
.L0804DEAC:
	pushl     %eax
	pushl     %eax
	pushl     $.LC08064104
	pushl     %ebx
	call      _ZN7acommoneqERKNS_6StringEPKc
.L0804DEB9:
	addl      $16, %esp
	testb     %al, %al
	je        .L0804DECF
.L0804DEC0:
	movl      $1, action
	jmp       .L0804D03F
.L0804DECF:
	call      abort
	.size	main, .-main
# ----------------------
.L0804DED4:
	.p2align 4
# ----------------------
	.local	_GLOBAL__sub_I__Z11print_errorN7acommon10ParmStringE
	.type	_GLOBAL__sub_I__Z11print_errorN7acommon10ParmStringE, @function
_GLOBAL__sub_I__Z11print_errorN7acommon10ParmStringE:
	subl      $16, %esp
	movl      aerror_other, %eax
	movl      %eax, _ZN7acommonL11other_errorE....0x806ea88
	movl      aerror_operation_not_supported, %eax
	movl      %eax, _ZN7acommonL29operation_not_supported_errorE....0x806ea84
	movl      aerror_cant_copy, %eax
	movl      %eax, _ZN7acommonL9cant_copyE....0x806ea80
	movl      aerror_unimplemented_method, %eax
	movl      %eax, _ZN7acommonL20unimplemented_methodE....0x806ea7c
	movl      aerror_file, %eax
	movl      %eax, _ZN7acommonL10file_errorE....0x806ea78
	movl      aerror_cant_open_file, %eax
	movl      %eax, _ZN7acommonL20cant_open_file_errorE....0x806ea74
	movl      aerror_cant_read_file, %eax
	movl      %eax, _ZN7acommonL14cant_read_fileE....0x806ea70
	movl      aerror_cant_write_file, %eax
	movl      %eax, _ZN7acommonL15cant_write_fileE....0x806ea6c
	movl      aerror_invalid_name, %eax
	movl      %eax, _ZN7acommonL12invalid_nameE....0x806ea68
	movl      aerror_bad_file_format, %eax
	movl      %eax, _ZN7acommonL15bad_file_formatE....0x806ea64
	movl      aerror_dir, %eax
	movl      %eax, _ZN7acommonL9dir_errorE....0x806ea60
	movl      aerror_cant_read_dir, %eax
	movl      %eax, _ZN7acommonL13cant_read_dirE....0x806ea5c
	movl      aerror_config, %eax
	movl      %eax, _ZN7acommonL12config_errorE....0x806ea58
	movl      aerror_unknown_key, %eax
	movl      %eax, _ZN7acommonL11unknown_keyE....0x806ea54
	movl      aerror_cant_change_value, %eax
	movl      %eax, _ZN7acommonL17cant_change_valueE....0x806ea50
	movl      aerror_bad_key, %eax
	movl      %eax, _ZN7acommonL7bad_keyE....0x806ea4c
	movl      aerror_bad_value, %eax
	movl      %eax, _ZN7acommonL9bad_valueE....0x806ea48
	movl      aerror_duplicate, %eax
	movl      %eax, _ZN7acommonL9duplicateE....0x806ea44
	movl      aerror_key_not_string, %eax
	movl      %eax, _ZN7acommonL14key_not_stringE....0x806ea40
	movl      aerror_key_not_int, %eax
	movl      %eax, _ZN7acommonL11key_not_intE....0x806ea3c
	movl      aerror_key_not_bool, %eax
	movl      %eax, _ZN7acommonL12key_not_boolE....0x806ea38
	movl      aerror_key_not_list, %eax
	movl      %eax, _ZN7acommonL12key_not_listE....0x806ea34
	movl      aerror_no_value_reset, %eax
	movl      %eax, _ZN7acommonL14no_value_resetE....0x806ea30
	movl      aerror_no_value_enable, %eax
	movl      %eax, _ZN7acommonL15no_value_enableE....0x806ea2c
	movl      aerror_no_value_disable, %eax
	movl      %eax, _ZN7acommonL16no_value_disableE....0x806ea28
	movl      aerror_no_value_clear, %eax
	movl      %eax, _ZN7acommonL14no_value_clearE....0x806ea24
	movl      aerror_language_related, %eax
	movl      %eax, _ZN7acommonL22language_related_errorE....0x806ea20
	movl      aerror_unknown_language, %eax
	movl      %eax, _ZN7acommonL16unknown_languageE....0x806ea1c
	movl      aerror_unknown_soundslike, %eax
	movl      %eax, _ZN7acommonL18unknown_soundslikeE....0x806ea18
	movl      aerror_language_not_supported, %eax
	movl      %eax, _ZN7acommonL22language_not_supportedE....0x806ea14
	movl      aerror_no_wordlist_for_lang, %eax
	movl      %eax, _ZN7acommonL20no_wordlist_for_langE....0x806ea10
	movl      aerror_mismatched_language, %eax
	movl      %eax, _ZN7acommonL19mismatched_languageE....0x806ea0c
	movl      aerror_affix, %eax
	movl      %eax, _ZN7acommonL11affix_errorE....0x806ea08
	movl      aerror_corrupt_affix, %eax
	movl      %eax, _ZN7acommonL13corrupt_affixE....0x806ea04
	movl      aerror_invalid_cond, %eax
	movl      %eax, _ZN7acommonL12invalid_condE....0x806ea00
	movl      aerror_invalid_cond_strip, %eax
	movl      %eax, _ZN7acommonL18invalid_cond_stripE....0x806e9fc
	movl      aerror_incorrect_encoding, %eax
	movl      %eax, _ZN7acommonL18incorrect_encodingE....0x806e9f8
	movl      aerror_encoding, %eax
	movl      %eax, _ZN7acommonL14encoding_errorE....0x806e9f4
	movl      aerror_unknown_encoding, %eax
	movl      %eax, _ZN7acommonL16unknown_encodingE....0x806e9f0
	movl      aerror_encoding_not_supported, %eax
	movl      %eax, _ZN7acommonL22encoding_not_supportedE....0x806e9ec
	movl      aerror_conversion_not_supported, %eax
	movl      %eax, _ZN7acommonL24conversion_not_supportedE....0x806e9e8
	movl      aerror_pipe, %eax
	movl      %eax, _ZN7acommonL10pipe_errorE....0x806e9e4
	movl      aerror_cant_create_pipe, %eax
	movl      %eax, _ZN7acommonL16cant_create_pipeE....0x806e9e0
	movl      aerror_process_died, %eax
	movl      %eax, _ZN7acommonL12process_diedE....0x806e9dc
	movl      aerror_bad_input, %eax
	movl      %eax, _ZN7acommonL15bad_input_errorE....0x806e9d8
	movl      aerror_invalid_string, %eax
	movl      %eax, _ZN7acommonL14invalid_stringE....0x806e9d4
	movl      aerror_invalid_word, %eax
	movl      %eax, _ZN7acommonL12invalid_wordE....0x806e9d0
	movl      aerror_invalid_affix, %eax
	movl      %eax, _ZN7acommonL13invalid_affixE....0x806e9cc
	movl      aerror_inapplicable_affix, %eax
	movl      %eax, _ZN7acommonL18inapplicable_affixE....0x806e9c8
	movl      aerror_unknown_unichar, %eax
	movl      %eax, _ZN7acommonL15unknown_unicharE....0x806e9c4
	movl      aerror_word_list_flags, %eax
	movl      %eax, _ZN7acommonL21word_list_flags_errorE....0x806e9c0
	movl      aerror_invalid_flag, %eax
	movl      %eax, _ZN7acommonL12invalid_flagE....0x806e9bc
	movl      aerror_conflicting_flags, %eax
	movl      %eax, _ZN7acommonL17conflicting_flagsE....0x806e9b8
	movl      aerror_version_control, %eax
	movl      %eax, _ZN7acommonL21version_control_errorE....0x806e9b4
	movl      aerror_bad_version_string, %eax
	movl      %eax, _ZN7acommonL18bad_version_stringE....0x806e9b0
	movl      aerror_filter, %eax
	movl      %eax, _ZN7acommonL12filter_errorE....0x806e9ac
	movl      aerror_cant_dlopen_file, %eax
	movl      %eax, _ZN7acommonL16cant_dlopen_fileE....0x806e9a8
	movl      aerror_empty_filter, %eax
	movl      %eax, _ZN7acommonL12empty_filterE....0x806e9a4
	movl      aerror_no_such_filter, %eax
	movl      %eax, _ZN7acommonL14no_such_filterE....0x806e9a0
	movl      aerror_confusing_version, %eax
	movl      %eax, _ZN7acommonL17confusing_versionE....0x806e99c
	movl      aerror_bad_version, %eax
	movl      %eax, _ZN7acommonL11bad_versionE....0x806e998
	movl      aerror_identical_option, %eax
	movl      %eax, _ZN7acommonL16identical_optionE....0x806e994
	movl      aerror_options_only, %eax
	movl      %eax, _ZN7acommonL12options_onlyE....0x806e990
	movl      aerror_invalid_option_modifier, %eax
	movl      %eax, _ZN7acommonL23invalid_option_modifierE....0x806e98c
	movl      aerror_cant_describe_filter, %eax
	movl      %eax, _ZN7acommonL20cant_describe_filterE....0x806e988
	movl      aerror_filter_mode_file, %eax
	movl      %eax, _ZN7acommonL22filter_mode_file_errorE....0x806e984
	movl      aerror_mode_option_name, %eax
	movl      %eax, _ZN7acommonL16mode_option_nameE....0x806e980
	movl      aerror_no_filter_to_option, %eax
	movl      %eax, _ZN7acommonL19no_filter_to_optionE....0x806e97c
	movl      aerror_bad_mode_key, %eax
	movl      %eax, _ZN7acommonL12bad_mode_keyE....0x806e978
	movl      aerror_expect_mode_key, %eax
	movl      %eax, _ZN7acommonL15expect_mode_keyE....0x806e974
	movl      aerror_mode_version_requirement, %eax
	movl      %eax, _ZN7acommonL24mode_version_requirementE....0x806e970
	movl      aerror_confusing_mode_version, %eax
	movl      %eax, _ZN7acommonL22confusing_mode_versionE....0x806e96c
	movl      aerror_bad_mode_version, %eax
	movl      %eax, _ZN7acommonL16bad_mode_versionE....0x806e968
	movl      aerror_missing_magic_expression, %eax
	movl      %eax, _ZN7acommonL24missing_magic_expressionE....0x806e964
	movl      aerror_empty_file_ext, %eax
	movl      %eax, _ZN7acommonL14empty_file_extE....0x806e960
	movl      aerror_filter_mode_expand, %eax
	movl      %eax, _ZN7acommonL24filter_mode_expand_errorE....0x806e95c
	movl      aerror_unknown_mode, %eax
	movl      %eax, _ZN7acommonL12unknown_modeE....0x806e958
	movl      aerror_mode_extend_expand, %eax
	movl      %eax, _ZN7acommonL18mode_extend_expandE....0x806e954
	movl      aerror_filter_mode_magic, %eax
	movl      %eax, _ZN7acommonL23filter_mode_magic_errorE....0x806e950
	movl      aerror_file_magic_pos, %eax
	movl      %eax, _ZN7acommonL14file_magic_posE....0x806e94c
	movl      aerror_file_magic_range, %eax
	movl      %eax, _ZN7acommonL16file_magic_rangeE....0x806e948
	movl      aerror_missing_magic, %eax
	movl      %eax, _ZN7acommonL13missing_magicE....0x806e944
	movl      aerror_bad_magic, %eax
	movl      %eax, _ZN7acommonL9bad_magicE....0x806e940
	movl      aerror_expression, %eax
	movl      %eax, _ZN7acommonL16expression_errorE....0x806e93c
	movl      aerror_invalid_expression, %eax
	pushl     $__dso_handle
	pushl     $_ZN7acommonL6no_errE....0x806e934
	pushl     $_ZN7acommon8PosibErrIvED1Ev
	movl      $0, _ZN7acommonL6no_errE....0x806e934
	movl      %eax, _ZN7acommonL18invalid_expressionE....0x806e938
	call      __cxa_atexit
.L0804E253:
	addl      $12, %esp
	movl      $0, args
	movl      $0, args+4
	pushl     $__dso_handle
	pushl     $args
	pushl     $_ZN7acommon6VectorINS_6StringEED1Ev
	movl      $0, args+8
	call      __cxa_atexit
.L0804E288:
	addl      $12, %esp
	movl      $0, options
	pushl     $__dso_handle
	pushl     $options
	pushl     $_ZN7acommon8StackPtrINS_6ConfigEED1Ev
	call      __cxa_atexit
.L0804E2A9:
	addl      $12, %esp
	movl      $0, dconv
	movl      $0, dconv+4
	pushl     $__dso_handle
	pushl     $dconv
	pushl     $_ZN7acommon4ConvD1Ev
	movl      $0, dconv+8
	movl      $0, dconv+12
	movl      $_ZTVN7acommon6StringE+8, dconv+16
	movl      $0, dconv+20
	movl      $0, dconv+24
	movl      $0, dconv+28
	movl      $0, dconv+32
	call      __cxa_atexit
.L0804E31A:
	addl      $12, %esp
	movl      $0, uiconv
	movl      $0, uiconv+4
	pushl     $__dso_handle
	pushl     $uiconv
	pushl     $_ZN7acommon4ConvD1Ev
	movl      $0, uiconv+8
	movl      $0, uiconv+12
	movl      $_ZTVN7acommon6StringE+8, uiconv+16
	movl      $0, uiconv+20
	movl      $0, uiconv+24
	movl      $0, uiconv+28
	movl      $0, uiconv+32
	call      __cxa_atexit
.L0804E38B:
	movl      $.LC080647E4, _ZL9help_text
	movl      $.LC08064110, _ZL9help_text+8
	movl      $.LC08064808, _ZL9help_text+12
	movl      $.LC0806483C, _ZL9help_text+16
	movl      $.LC08064870, _ZL9help_text+20
	movl      $.LC08064894, _ZL9help_text+24
	movl      $.LC080648C8, _ZL9help_text+32
	movl      $.LC08064908, _ZL9help_text+36
	movl      $.LC08064944, _ZL9help_text+84
	movl      $.LC08064968, _ZL9help_text+88
	movl      $.LC080649A4, _ZL9help_text+112
	addl      $28, %esp
	ret       
	.size	_GLOBAL__sub_I__Z11print_errorN7acommon10ParmStringE, .-_GLOBAL__sub_I__Z11print_errorN7acommon10ParmStringE
# ----------------------
.L0804E3FD:
	.p2align 4,,10
	.p2align 3
# ----------------------
	.local	_GLOBAL__sub_I_state
	.type	_GLOBAL__sub_I_state, @function
_GLOBAL__sub_I_state:
	subl      $16, %esp
	movl      aerror_other, %eax
	movl      %eax, _ZN7acommonL11other_errorE....0x806ecb0
	movl      aerror_operation_not_supported, %eax
	movl      %eax, _ZN7acommonL29operation_not_supported_errorE....0x806ecac
	movl      aerror_cant_copy, %eax
	movl      %eax, _ZN7acommonL9cant_copyE....0x806eca8
	movl      aerror_unimplemented_method, %eax
	movl      %eax, _ZN7acommonL20unimplemented_methodE....0x806eca4
	movl      aerror_file, %eax
	movl      %eax, _ZN7acommonL10file_errorE....0x806eca0
	movl      aerror_cant_open_file, %eax
	movl      %eax, _ZN7acommonL20cant_open_file_errorE....0x806ec9c
	movl      aerror_cant_read_file, %eax
	movl      %eax, _ZN7acommonL14cant_read_fileE....0x806ec98
	movl      aerror_cant_write_file, %eax
	movl      %eax, _ZN7acommonL15cant_write_fileE....0x806ec94
	movl      aerror_invalid_name, %eax
	movl      %eax, _ZN7acommonL12invalid_nameE....0x806ec90
	movl      aerror_bad_file_format, %eax
	movl      %eax, _ZN7acommonL15bad_file_formatE....0x806ec8c
	movl      aerror_dir, %eax
	movl      %eax, _ZN7acommonL9dir_errorE....0x806ec88
	movl      aerror_cant_read_dir, %eax
	movl      %eax, _ZN7acommonL13cant_read_dirE....0x806ec84
	movl      aerror_config, %eax
	movl      %eax, _ZN7acommonL12config_errorE....0x806ec80
	movl      aerror_unknown_key, %eax
	movl      %eax, _ZN7acommonL11unknown_keyE....0x806ec7c
	movl      aerror_cant_change_value, %eax
	movl      %eax, _ZN7acommonL17cant_change_valueE....0x806ec78
	movl      aerror_bad_key, %eax
	movl      %eax, _ZN7acommonL7bad_keyE....0x806ec74
	movl      aerror_bad_value, %eax
	movl      %eax, _ZN7acommonL9bad_valueE....0x806ec70
	movl      aerror_duplicate, %eax
	movl      %eax, _ZN7acommonL9duplicateE....0x806ec6c
	movl      aerror_key_not_string, %eax
	movl      %eax, _ZN7acommonL14key_not_stringE....0x806ec68
	movl      aerror_key_not_int, %eax
	movl      %eax, _ZN7acommonL11key_not_intE....0x806ec64
	movl      aerror_key_not_bool, %eax
	movl      %eax, _ZN7acommonL12key_not_boolE....0x806ec60
	movl      aerror_key_not_list, %eax
	movl      %eax, _ZN7acommonL12key_not_listE....0x806ec5c
	movl      aerror_no_value_reset, %eax
	movl      %eax, _ZN7acommonL14no_value_resetE....0x806ec58
	movl      aerror_no_value_enable, %eax
	movl      %eax, _ZN7acommonL15no_value_enableE....0x806ec54
	movl      aerror_no_value_disable, %eax
	movl      %eax, _ZN7acommonL16no_value_disableE....0x806ec50
	movl      aerror_no_value_clear, %eax
	movl      %eax, _ZN7acommonL14no_value_clearE....0x806ec4c
	movl      aerror_language_related, %eax
	movl      %eax, _ZN7acommonL22language_related_errorE....0x806ec48
	movl      aerror_unknown_language, %eax
	movl      %eax, _ZN7acommonL16unknown_languageE....0x806ec44
	movl      aerror_unknown_soundslike, %eax
	movl      %eax, _ZN7acommonL18unknown_soundslikeE....0x806ec40
	movl      aerror_language_not_supported, %eax
	movl      %eax, _ZN7acommonL22language_not_supportedE....0x806ec3c
	movl      aerror_no_wordlist_for_lang, %eax
	movl      %eax, _ZN7acommonL20no_wordlist_for_langE....0x806ec38
	movl      aerror_mismatched_language, %eax
	movl      %eax, _ZN7acommonL19mismatched_languageE....0x806ec34
	movl      aerror_affix, %eax
	movl      %eax, _ZN7acommonL11affix_errorE....0x806ec30
	movl      aerror_corrupt_affix, %eax
	movl      %eax, _ZN7acommonL13corrupt_affixE....0x806ec2c
	movl      aerror_invalid_cond, %eax
	movl      %eax, _ZN7acommonL12invalid_condE....0x806ec28
	movl      aerror_invalid_cond_strip, %eax
	movl      %eax, _ZN7acommonL18invalid_cond_stripE....0x806ec24
	movl      aerror_incorrect_encoding, %eax
	movl      %eax, _ZN7acommonL18incorrect_encodingE....0x806ec20
	movl      aerror_encoding, %eax
	movl      %eax, _ZN7acommonL14encoding_errorE....0x806ec1c
	movl      aerror_unknown_encoding, %eax
	movl      %eax, _ZN7acommonL16unknown_encodingE....0x806ec18
	movl      aerror_encoding_not_supported, %eax
	movl      %eax, _ZN7acommonL22encoding_not_supportedE....0x806ec14
	movl      aerror_conversion_not_supported, %eax
	movl      %eax, _ZN7acommonL24conversion_not_supportedE....0x806ec10
	movl      aerror_pipe, %eax
	movl      %eax, _ZN7acommonL10pipe_errorE....0x806ec0c
	movl      aerror_cant_create_pipe, %eax
	movl      %eax, _ZN7acommonL16cant_create_pipeE....0x806ec08
	movl      aerror_process_died, %eax
	movl      %eax, _ZN7acommonL12process_diedE....0x806ec04
	movl      aerror_bad_input, %eax
	movl      %eax, _ZN7acommonL15bad_input_errorE....0x806ec00
	movl      aerror_invalid_string, %eax
	movl      %eax, _ZN7acommonL14invalid_stringE....0x806ebfc
	movl      aerror_invalid_word, %eax
	movl      %eax, _ZN7acommonL12invalid_wordE....0x806ebf8
	movl      aerror_invalid_affix, %eax
	movl      %eax, _ZN7acommonL13invalid_affixE....0x806ebf4
	movl      aerror_inapplicable_affix, %eax
	movl      %eax, _ZN7acommonL18inapplicable_affixE....0x806ebf0
	movl      aerror_unknown_unichar, %eax
	movl      %eax, _ZN7acommonL15unknown_unicharE....0x806ebec
	movl      aerror_word_list_flags, %eax
	movl      %eax, _ZN7acommonL21word_list_flags_errorE....0x806ebe8
	movl      aerror_invalid_flag, %eax
	movl      %eax, _ZN7acommonL12invalid_flagE....0x806ebe4
	movl      aerror_conflicting_flags, %eax
	movl      %eax, _ZN7acommonL17conflicting_flagsE....0x806ebe0
	movl      aerror_version_control, %eax
	movl      %eax, _ZN7acommonL21version_control_errorE....0x806ebdc
	movl      aerror_bad_version_string, %eax
	movl      %eax, _ZN7acommonL18bad_version_stringE....0x806ebd8
	movl      aerror_filter, %eax
	movl      %eax, _ZN7acommonL12filter_errorE....0x806ebd4
	movl      aerror_cant_dlopen_file, %eax
	movl      %eax, _ZN7acommonL16cant_dlopen_fileE....0x806ebd0
	movl      aerror_empty_filter, %eax
	movl      %eax, _ZN7acommonL12empty_filterE....0x806ebcc
	movl      aerror_no_such_filter, %eax
	movl      %eax, _ZN7acommonL14no_such_filterE....0x806ebc8
	movl      aerror_confusing_version, %eax
	movl      %eax, _ZN7acommonL17confusing_versionE....0x806ebc4
	movl      aerror_bad_version, %eax
	movl      %eax, _ZN7acommonL11bad_versionE....0x806ebc0
	movl      aerror_identical_option, %eax
	movl      %eax, _ZN7acommonL16identical_optionE....0x806ebbc
	movl      aerror_options_only, %eax
	movl      %eax, _ZN7acommonL12options_onlyE....0x806ebb8
	movl      aerror_invalid_option_modifier, %eax
	movl      %eax, _ZN7acommonL23invalid_option_modifierE....0x806ebb4
	movl      aerror_cant_describe_filter, %eax
	movl      %eax, _ZN7acommonL20cant_describe_filterE....0x806ebb0
	movl      aerror_filter_mode_file, %eax
	movl      %eax, _ZN7acommonL22filter_mode_file_errorE....0x806ebac
	movl      aerror_mode_option_name, %eax
	movl      %eax, _ZN7acommonL16mode_option_nameE....0x806eba8
	movl      aerror_no_filter_to_option, %eax
	movl      %eax, _ZN7acommonL19no_filter_to_optionE....0x806eba4
	movl      aerror_bad_mode_key, %eax
	movl      %eax, _ZN7acommonL12bad_mode_keyE....0x806eba0
	movl      aerror_expect_mode_key, %eax
	movl      %eax, _ZN7acommonL15expect_mode_keyE....0x806eb9c
	movl      aerror_mode_version_requirement, %eax
	movl      %eax, _ZN7acommonL24mode_version_requirementE....0x806eb98
	movl      aerror_confusing_mode_version, %eax
	movl      %eax, _ZN7acommonL22confusing_mode_versionE....0x806eb94
	movl      aerror_bad_mode_version, %eax
	movl      %eax, _ZN7acommonL16bad_mode_versionE....0x806eb90
	movl      aerror_missing_magic_expression, %eax
	movl      %eax, _ZN7acommonL24missing_magic_expressionE....0x806eb8c
	movl      aerror_empty_file_ext, %eax
	movl      %eax, _ZN7acommonL14empty_file_extE....0x806eb88
	movl      aerror_filter_mode_expand, %eax
	movl      %eax, _ZN7acommonL24filter_mode_expand_errorE....0x806eb84
	movl      aerror_unknown_mode, %eax
	movl      %eax, _ZN7acommonL12unknown_modeE....0x806eb80
	movl      aerror_mode_extend_expand, %eax
	movl      %eax, _ZN7acommonL18mode_extend_expandE....0x806eb7c
	movl      aerror_filter_mode_magic, %eax
	movl      %eax, _ZN7acommonL23filter_mode_magic_errorE....0x806eb78
	movl      aerror_file_magic_pos, %eax
	movl      %eax, _ZN7acommonL14file_magic_posE....0x806eb74
	movl      aerror_file_magic_range, %eax
	movl      %eax, _ZN7acommonL16file_magic_rangeE....0x806eb70
	movl      aerror_missing_magic, %eax
	movl      %eax, _ZN7acommonL13missing_magicE....0x806eb6c
	movl      aerror_bad_magic, %eax
	movl      %eax, _ZN7acommonL9bad_magicE....0x806eb68
	movl      aerror_expression, %eax
	movl      %eax, _ZN7acommonL16expression_errorE....0x806eb64
	movl      aerror_invalid_expression, %eax
	pushl     $__dso_handle
	pushl     $_ZN7acommonL6no_errE....0x806eb5c
	pushl     $_ZN7acommon8PosibErrIvED1Ev
	movl      $0, _ZN7acommonL6no_errE....0x806eb5c
	movl      %eax, _ZN7acommonL18invalid_expressionE....0x806eb60
	call      __cxa_atexit
.L0804E773:
	addl      $12, %esp
	movl      $0, state
	pushl     $__dso_handle
	pushl     $state
	pushl     $_ZN7acommon8StackPtrI13CheckerStringED1Ev
	call      __cxa_atexit
.L0804E794:
	addl      $12, %esp
	movl      $0, word_choices
	pushl     $__dso_handle
	pushl     $word_choices
	pushl     $_ZN7acommon8StackPtrINS_6VectorI6ChoiceEEED1Ev
	call      __cxa_atexit
.L0804E7B5:
	addl      $12, %esp
	movl      $0, menu_choices
	pushl     $__dso_handle
	pushl     $menu_choices
	pushl     $_ZN7acommon8StackPtrINS_6VectorI6ChoiceEEED1Ev
	call      __cxa_atexit
.L0804E7D6:
	addl      $12, %esp
	movl      $0, null_conv
	movl      $0, null_conv+4
	pushl     $__dso_handle
	pushl     $null_conv
	pushl     $_ZN7acommon4ConvD1Ev
	movl      $0, null_conv+8
	movl      $0, null_conv+12
	movl      $_ZTVN7acommon6StringE+8, null_conv+16
	movl      $0, null_conv+20
	movl      $0, null_conv+24
	movl      $0, null_conv+28
	movl      $0, null_conv+32
	call      __cxa_atexit
.L0804E847:
	addl      $28, %esp
	ret       
	.size	_GLOBAL__sub_I_state, .-_GLOBAL__sub_I_state
# ----------------------
.L0804E84B:
	.p2align 4,,10
	.p2align 3
# ----------------------
	.local	_GLOBAL__sub_I__ZN13CheckerStringC2EP13AspellSpellerP8_IO_FILES3_i
	.type	_GLOBAL__sub_I__ZN13CheckerStringC2EP13AspellSpellerP8_IO_FILES3_i, @function
_GLOBAL__sub_I__ZN13CheckerStringC2EP13AspellSpellerP8_IO_FILES3_i:
	subl      $16, %esp
	movl      aerror_other, %eax
	movl      %eax, _ZN7acommonL11other_errorE....0x806ee08
	movl      aerror_operation_not_supported, %eax
	movl      %eax, _ZN7acommonL29operation_not_supported_errorE....0x806ee04
	movl      aerror_cant_copy, %eax
	movl      %eax, _ZN7acommonL9cant_copyE....0x806ee00
	movl      aerror_unimplemented_method, %eax
	movl      %eax, _ZN7acommonL20unimplemented_methodE....0x806edfc
	movl      aerror_file, %eax
	movl      %eax, _ZN7acommonL10file_errorE....0x806edf8
	movl      aerror_cant_open_file, %eax
	movl      %eax, _ZN7acommonL20cant_open_file_errorE....0x806edf4
	movl      aerror_cant_read_file, %eax
	movl      %eax, _ZN7acommonL14cant_read_fileE....0x806edf0
	movl      aerror_cant_write_file, %eax
	movl      %eax, _ZN7acommonL15cant_write_fileE....0x806edec
	movl      aerror_invalid_name, %eax
	movl      %eax, _ZN7acommonL12invalid_nameE....0x806ede8
	movl      aerror_bad_file_format, %eax
	movl      %eax, _ZN7acommonL15bad_file_formatE....0x806ede4
	movl      aerror_dir, %eax
	movl      %eax, _ZN7acommonL9dir_errorE....0x806ede0
	movl      aerror_cant_read_dir, %eax
	movl      %eax, _ZN7acommonL13cant_read_dirE....0x806eddc
	movl      aerror_config, %eax
	movl      %eax, _ZN7acommonL12config_errorE....0x806edd8
	movl      aerror_unknown_key, %eax
	movl      %eax, _ZN7acommonL11unknown_keyE....0x806edd4
	movl      aerror_cant_change_value, %eax
	movl      %eax, _ZN7acommonL17cant_change_valueE....0x806edd0
	movl      aerror_bad_key, %eax
	movl      %eax, _ZN7acommonL7bad_keyE....0x806edcc
	movl      aerror_bad_value, %eax
	movl      %eax, _ZN7acommonL9bad_valueE....0x806edc8
	movl      aerror_duplicate, %eax
	movl      %eax, _ZN7acommonL9duplicateE....0x806edc4
	movl      aerror_key_not_string, %eax
	movl      %eax, _ZN7acommonL14key_not_stringE....0x806edc0
	movl      aerror_key_not_int, %eax
	movl      %eax, _ZN7acommonL11key_not_intE....0x806edbc
	movl      aerror_key_not_bool, %eax
	movl      %eax, _ZN7acommonL12key_not_boolE....0x806edb8
	movl      aerror_key_not_list, %eax
	movl      %eax, _ZN7acommonL12key_not_listE....0x806edb4
	movl      aerror_no_value_reset, %eax
	movl      %eax, _ZN7acommonL14no_value_resetE....0x806edb0
	movl      aerror_no_value_enable, %eax
	movl      %eax, _ZN7acommonL15no_value_enableE....0x806edac
	movl      aerror_no_value_disable, %eax
	movl      %eax, _ZN7acommonL16no_value_disableE....0x806eda8
	movl      aerror_no_value_clear, %eax
	movl      %eax, _ZN7acommonL14no_value_clearE....0x806eda4
	movl      aerror_language_related, %eax
	movl      %eax, _ZN7acommonL22language_related_errorE....0x806eda0
	movl      aerror_unknown_language, %eax
	movl      %eax, _ZN7acommonL16unknown_languageE....0x806ed9c
	movl      aerror_unknown_soundslike, %eax
	movl      %eax, _ZN7acommonL18unknown_soundslikeE....0x806ed98
	movl      aerror_language_not_supported, %eax
	movl      %eax, _ZN7acommonL22language_not_supportedE....0x806ed94
	movl      aerror_no_wordlist_for_lang, %eax
	movl      %eax, _ZN7acommonL20no_wordlist_for_langE....0x806ed90
	movl      aerror_mismatched_language, %eax
	movl      %eax, _ZN7acommonL19mismatched_languageE....0x806ed8c
	movl      aerror_affix, %eax
	movl      %eax, _ZN7acommonL11affix_errorE....0x806ed88
	movl      aerror_corrupt_affix, %eax
	movl      %eax, _ZN7acommonL13corrupt_affixE....0x806ed84
	movl      aerror_invalid_cond, %eax
	movl      %eax, _ZN7acommonL12invalid_condE....0x806ed80
	movl      aerror_invalid_cond_strip, %eax
	movl      %eax, _ZN7acommonL18invalid_cond_stripE....0x806ed7c
	movl      aerror_incorrect_encoding, %eax
	movl      %eax, _ZN7acommonL18incorrect_encodingE....0x806ed78
	movl      aerror_encoding, %eax
	movl      %eax, _ZN7acommonL14encoding_errorE....0x806ed74
	movl      aerror_unknown_encoding, %eax
	movl      %eax, _ZN7acommonL16unknown_encodingE....0x806ed70
	movl      aerror_encoding_not_supported, %eax
	movl      %eax, _ZN7acommonL22encoding_not_supportedE....0x806ed6c
	movl      aerror_conversion_not_supported, %eax
	movl      %eax, _ZN7acommonL24conversion_not_supportedE....0x806ed68
	movl      aerror_pipe, %eax
	movl      %eax, _ZN7acommonL10pipe_errorE....0x806ed64
	movl      aerror_cant_create_pipe, %eax
	movl      %eax, _ZN7acommonL16cant_create_pipeE....0x806ed60
	movl      aerror_process_died, %eax
	movl      %eax, _ZN7acommonL12process_diedE....0x806ed5c
	movl      aerror_bad_input, %eax
	movl      %eax, _ZN7acommonL15bad_input_errorE....0x806ed58
	movl      aerror_invalid_string, %eax
	movl      %eax, _ZN7acommonL14invalid_stringE....0x806ed54
	movl      aerror_invalid_word, %eax
	movl      %eax, _ZN7acommonL12invalid_wordE....0x806ed50
	movl      aerror_invalid_affix, %eax
	movl      %eax, _ZN7acommonL13invalid_affixE....0x806ed4c
	movl      aerror_inapplicable_affix, %eax
	movl      %eax, _ZN7acommonL18inapplicable_affixE....0x806ed48
	movl      aerror_unknown_unichar, %eax
	movl      %eax, _ZN7acommonL15unknown_unicharE....0x806ed44
	movl      aerror_word_list_flags, %eax
	movl      %eax, _ZN7acommonL21word_list_flags_errorE....0x806ed40
	movl      aerror_invalid_flag, %eax
	movl      %eax, _ZN7acommonL12invalid_flagE....0x806ed3c
	movl      aerror_conflicting_flags, %eax
	movl      %eax, _ZN7acommonL17conflicting_flagsE....0x806ed38
	movl      aerror_version_control, %eax
	movl      %eax, _ZN7acommonL21version_control_errorE....0x806ed34
	movl      aerror_bad_version_string, %eax
	movl      %eax, _ZN7acommonL18bad_version_stringE....0x806ed30
	movl      aerror_filter, %eax
	movl      %eax, _ZN7acommonL12filter_errorE....0x806ed2c
	movl      aerror_cant_dlopen_file, %eax
	movl      %eax, _ZN7acommonL16cant_dlopen_fileE....0x806ed28
	movl      aerror_empty_filter, %eax
	movl      %eax, _ZN7acommonL12empty_filterE....0x806ed24
	movl      aerror_no_such_filter, %eax
	movl      %eax, _ZN7acommonL14no_such_filterE....0x806ed20
	movl      aerror_confusing_version, %eax
	movl      %eax, _ZN7acommonL17confusing_versionE....0x806ed1c
	movl      aerror_bad_version, %eax
	movl      %eax, _ZN7acommonL11bad_versionE....0x806ed18
	movl      aerror_identical_option, %eax
	movl      %eax, _ZN7acommonL16identical_optionE....0x806ed14
	movl      aerror_options_only, %eax
	movl      %eax, _ZN7acommonL12options_onlyE....0x806ed10
	movl      aerror_invalid_option_modifier, %eax
	movl      %eax, _ZN7acommonL23invalid_option_modifierE....0x806ed0c
	movl      aerror_cant_describe_filter, %eax
	movl      %eax, _ZN7acommonL20cant_describe_filterE....0x806ed08
	movl      aerror_filter_mode_file, %eax
	movl      %eax, _ZN7acommonL22filter_mode_file_errorE....0x806ed04
	movl      aerror_mode_option_name, %eax
	movl      %eax, _ZN7acommonL16mode_option_nameE....0x806ed00
	movl      aerror_no_filter_to_option, %eax
	movl      %eax, _ZN7acommonL19no_filter_to_optionE....0x806ecfc
	movl      aerror_bad_mode_key, %eax
	movl      %eax, _ZN7acommonL12bad_mode_keyE....0x806ecf8
	movl      aerror_expect_mode_key, %eax
	movl      %eax, _ZN7acommonL15expect_mode_keyE....0x806ecf4
	movl      aerror_mode_version_requirement, %eax
	movl      %eax, _ZN7acommonL24mode_version_requirementE....0x806ecf0
	movl      aerror_confusing_mode_version, %eax
	movl      %eax, _ZN7acommonL22confusing_mode_versionE....0x806ecec
	movl      aerror_bad_mode_version, %eax
	movl      %eax, _ZN7acommonL16bad_mode_versionE....0x806ece8
	movl      aerror_missing_magic_expression, %eax
	movl      %eax, _ZN7acommonL24missing_magic_expressionE....0x806ece4
	movl      aerror_empty_file_ext, %eax
	movl      %eax, _ZN7acommonL14empty_file_extE....0x806ece0
	movl      aerror_filter_mode_expand, %eax
	movl      %eax, _ZN7acommonL24filter_mode_expand_errorE....0x806ecdc
	movl      aerror_unknown_mode, %eax
	movl      %eax, _ZN7acommonL12unknown_modeE....0x806ecd8
	movl      aerror_mode_extend_expand, %eax
	movl      %eax, _ZN7acommonL18mode_extend_expandE....0x806ecd4
	movl      aerror_filter_mode_magic, %eax
	movl      %eax, _ZN7acommonL23filter_mode_magic_errorE....0x806ecd0
	movl      aerror_file_magic_pos, %eax
	movl      %eax, _ZN7acommonL14file_magic_posE....0x806eccc
	movl      aerror_file_magic_range, %eax
	movl      %eax, _ZN7acommonL16file_magic_rangeE....0x806ecc8
	movl      aerror_missing_magic, %eax
	movl      %eax, _ZN7acommonL13missing_magicE....0x806ecc4
	movl      aerror_bad_magic, %eax
	movl      %eax, _ZN7acommonL9bad_magicE....0x806ecc0
	movl      aerror_expression, %eax
	movl      %eax, _ZN7acommonL16expression_errorE....0x806ecbc
	movl      aerror_invalid_expression, %eax
	pushl     $__dso_handle
	pushl     $_ZN7acommonL6no_errE....0x806ecb4
	pushl     $_ZN7acommon8PosibErrIvED1Ev
	movl      $0, _ZN7acommonL6no_errE....0x806ecb4
	movl      %eax, _ZN7acommonL18invalid_expressionE....0x806ecb8
	call      __cxa_atexit
.L0804EBC3:
	addl      $28, %esp
	ret       
	.size	_GLOBAL__sub_I__ZN13CheckerStringC2EP13AspellSpellerP8_IO_FILES3_i, .-_GLOBAL__sub_I__ZN13CheckerStringC2EP13AspellSpellerP8_IO_FILES3_i
# ----------------------
	.local	_ZL8find_setP9CML_Entry
	.type	_ZL8find_setP9CML_Entry, @function
_ZL8find_setP9CML_Entry:
	movl      %eax, %edx
	movl      8(%eax), %eax
	testl     %eax, %eax
	je        .L0804ECE0
.L0804ECC9:
	pushl     %ebx
	movl      %edx, %ebx
	subl      $8, %esp
	call      _ZL8find_setP9CML_Entry
.L0804ECD4:
	movl      %eax, 8(%ebx)
	addl      $8, %esp
	popl      %ebx
	ret       
.L0804ECDC:
	.p2align 4,,10
	.p2align 3
.L0804ECE0:
	movl      %edx, %eax
	ret       
	.size	_ZL8find_setP9CML_Entry, .-_ZL8find_setP9CML_Entry
# ----------------------
.L0804ECE3:
	.p2align 4
# ----------------------
	.local	_ZL6subsetRKSt6vectorIbSaIbEES3_
	.type	_ZL6subsetRKSt6vectorIbSaIbEES3_, @function
_ZL6subsetRKSt6vectorIbSaIbEES3_:
	pushl     %ebp
	pushl     %edi
	pushl     %esi
	pushl     %ebx
	subl      $12, %esp
	movl      (%eax), %esi
	movl      12(%eax), %ecx
	subl      4(%eax), %ecx
	movl      8(%eax), %eax
	movl      (%edx), %edi
	subl      %esi, %eax
	leal      (%ecx,%eax,8), %ebx
	movl      12(%edx), %eax
	subl      4(%edx), %eax
	movl      8(%edx), %edx
	subl      %edi, %edx
	leal      (%eax,%edx,8), %eax
	cmpl      %eax, %ebx
	jne       .L0804ED65
.L0804ED1B:
	xorl      %ecx, %ecx
	testl     %ebx, %ebx
	movl      $1, %edx
	jne       .L0804ED37
.L0804ED26:
	jmp       .L0804ED58
.L0804ED28:
	.p2align 4
.L0804ED30:
	addl      $1, %ecx
	cmpl      %ebx, %ecx
	je        .L0804ED58
.L0804ED37:
	movl      %ecx, %eax
	movl      %edx, %ebp
	shrl      $5, %eax
	sall      %cl, %ebp
	testl     %ebp, (%esi,%eax,4)
	je        .L0804ED30
.L0804ED45:
	testl     %ebp, (%edi,%eax,4)
	jne       .L0804ED30
.L0804ED4A:
	addl      $12, %esp
	xorl      %eax, %eax
	popl      %ebx
	popl      %esi
	popl      %edi
	popl      %ebp
	ret       
.L0804ED54:
	.p2align 4,,10
	.p2align 3
.L0804ED58:
	addl      $12, %esp
	movl      $1, %eax
	popl      %ebx
	popl      %esi
	popl      %edi
	popl      %ebp
	ret       
.L0804ED65:
	pushl     $_ZZL6subsetRKSt6vectorIbSaIbEES3_E19__PRETTY_FUNCTION__
	pushl     $2212
	pushl     $.LC08063C88
	pushl     $.LC080641C4
	call      __assert_fail
	.size	_ZL6subsetRKSt6vectorIbSaIbEES3_, .-_ZL6subsetRKSt6vectorIbSaIbEES3_
# ----------------------
.L0804ED7E:
	.p2align 4,,10
	.p2align 3
# ----------------------
	.local	_ZL11find_optionPKc
	.type	_ZL11find_optionPKc, @function
_ZL11find_optionPKc:
	pushl     %edi
	pushl     %esi
	movl      %eax, %edi
	movl      possible_options_end, %esi
	pushl     %ebx
	movl      $_ZL16possible_options, %ebx
	cmpl      %ebx, %esi
	jne       .L0804EDA7
.L0804ED94:
	jmp       .L0804EDBB
.L0804ED96:
	.p2align 4
.L0804EDA0:
	addl      $16, %ebx
	cmpl      %esi, %ebx
	je        .L0804EDBB
.L0804EDA7:
	subl      $8, %esp
	pushl     (%ebx)
	pushl     %edi
	call      strcmp
.L0804EDB2:
	addl      $16, %esp
	testl     %eax, %eax
	jne       .L0804EDA0
.L0804EDB9:
	movl      %ebx, %esi
.L0804EDBB:
	movl      %esi, %eax
	popl      %ebx
	popl      %esi
	popl      %edi
	ret       
	.size	_ZL11find_optionPKc, .-_ZL11find_optionPKc
# ----------------------
.L0804EDC1:
	.p2align 4
# ----------------------
	.local	_ZL11line_bufferv
	.type	_ZL11line_bufferv, @function
_ZL11line_bufferv:
	subl      $12, %esp
	pushl     $0
	pushl     $1
	pushl     $0
	pushl     stdin
	call      setvbuf
.L0804EDE4:
	addl      $16, %esp
	testl     %eax, %eax
	jne       .L0804EE07
.L0804EDEB:
	pushl     $0
	pushl     $1
	pushl     $0
	pushl     stdout
	call      setvbuf
.L0804EDFC:
	addl      $16, %esp
	testl     %eax, %eax
	jne       .L0804EE20
.L0804EE03:
	addl      $12, %esp
	ret       
.L0804EE07:
	pushl     $_ZZL11line_buffervE19__PRETTY_FUNCTION__
	pushl     $245
	pushl     $.LC08063C88
	pushl     $.LC08063C98
	call      __assert_fail
.L0804EE20:
	pushl     $_ZZL11line_buffervE19__PRETTY_FUNCTION__
	pushl     $246
	pushl     $.LC08063C88
	pushl     $.LC08063CB5
	call      __assert_fail
	.size	_ZL11line_bufferv, .-_ZL11line_bufferv
# ----------------------
.L0804EE39:
	.p2align 4
# ----------------------
	.local	_ZN7acommon9HashTableI9SML_ParmsE6find_iERKPKcRb.isra.73
	.type	_ZN7acommon9HashTableI9SML_ParmsE6find_iERKPKcRb.isra.73, @function
_ZN7acommon9HashTableI9SML_ParmsE6find_iERKPKcRb.isra.73:
	pushl     %ebp
	pushl     %edi
	movl      %edx, %ebp
	pushl     %esi
	pushl     %ebx
	subl      $28, %esp
	movl      48(%esp), %esi
	movl      %eax, 12(%esp)
	movsbl    (%esi), %edx
	testb     %dl, %dl
	je        .L0804EEC3
.L0804EE58:
	leal      1(%esi), %eax
	xorl      %ebx, %ebx
	.p2align 4,,10
	.p2align 3
.L0804EE60:
	leal      (%ebx,%ebx,4), %ebx
	addl      $1, %eax
	addl      %edx, %ebx
	movsbl    -1(%eax), %edx
	testb     %dl, %dl
	jne       .L0804EE60
.L0804EE70:
	movl      %ebx, %eax
	xorl      %edx, %edx
	divl      (%ecx)
	movl      (%ebp), %eax
	leal      (%eax,%edx,4), %ebp
	movl      52(%esp), %eax
	movl      (%ebp), %edi
	movl      %ebp, %ebx
	movb      $0, (%eax)
	testl     %edi, %edi
	jne       .L0804EE98
.L0804EE8C:
	jmp       .L0804EEB2
.L0804EE8E:
	.p2align 4,,10
	.p2align 3
.L0804EE90:
	movl      %edi, %ebx
	movl      (%edi), %edi
	testl     %edi, %edi
	je        .L0804EEB2
.L0804EE98:
	subl      $8, %esp
	pushl     %esi
	pushl     4(%edi)
	call      strcmp
.L0804EEA4:
	addl      $16, %esp
	testl     %eax, %eax
	jne       .L0804EE90
.L0804EEAB:
	movl      52(%esp), %eax
	movb      $1, (%eax)
.L0804EEB2:
	movl      12(%esp), %eax
	movl      %ebp, (%eax)
	movl      %ebx, 4(%eax)
	addl      $28, %esp
	popl      %ebx
	popl      %esi
	popl      %edi
	popl      %ebp
	ret       
.L0804EEC3:
	xorl      %ebx, %ebx
	jmp       .L0804EE70
	.size	_ZN7acommon9HashTableI9SML_ParmsE6find_iERKPKcRb.isra.73, .-_ZN7acommon9HashTableI9SML_ParmsE6find_iERKPKcRb.isra.73
# ----------------------
.L0804EEC7:
	.p2align 4
# ----------------------
	.local	_ZN7acommon9HashTableI9CML_ParmsE6find_iERKPKcRb.isra.80
	.type	_ZN7acommon9HashTableI9CML_ParmsE6find_iERKPKcRb.isra.80, @function
_ZN7acommon9HashTableI9CML_ParmsE6find_iERKPKcRb.isra.80:
	pushl     %ebp
	pushl     %edi
	movl      %edx, %ebp
	pushl     %esi
	pushl     %ebx
	subl      $28, %esp
	movl      48(%esp), %esi
	movl      %eax, 12(%esp)
	movsbl    (%esi), %edx
	testb     %dl, %dl
	je        .L0804EF53
.L0804EEE8:
	leal      1(%esi), %eax
	xorl      %ebx, %ebx
	.p2align 4,,10
	.p2align 3
.L0804EEF0:
	leal      (%ebx,%ebx,4), %ebx
	addl      $1, %eax
	addl      %edx, %ebx
	movsbl    -1(%eax), %edx
	testb     %dl, %dl
	jne       .L0804EEF0
.L0804EF00:
	movl      %ebx, %eax
	xorl      %edx, %edx
	divl      (%ecx)
	movl      (%ebp), %eax
	leal      (%eax,%edx,4), %ebp
	movl      52(%esp), %eax
	movl      (%ebp), %edi
	movl      %ebp, %ebx
	movb      $0, (%eax)
	testl     %edi, %edi
	jne       .L0804EF28
.L0804EF1C:
	jmp       .L0804EF42
.L0804EF1E:
	.p2align 4,,10
	.p2align 3
.L0804EF20:
	movl      %edi, %ebx
	movl      (%edi), %edi
	testl     %edi, %edi
	je        .L0804EF42
.L0804EF28:
	subl      $8, %esp
	pushl     %esi
	pushl     4(%edi)
	call      strcmp
.L0804EF34:
	addl      $16, %esp
	testl     %eax, %eax
	jne       .L0804EF20
.L0804EF3B:
	movl      52(%esp), %eax
	movb      $1, (%eax)
.L0804EF42:
	movl      12(%esp), %eax
	movl      %ebp, (%eax)
	movl      %ebx, 4(%eax)
	addl      $28, %esp
	popl      %ebx
	popl      %esi
	popl      %edi
	popl      %ebp
	ret       
.L0804EF53:
	xorl      %ebx, %ebx
	jmp       .L0804EF00
	.size	_ZN7acommon9HashTableI9CML_ParmsE6find_iERKPKcRb.isra.80, .-_ZN7acommon9HashTableI9CML_ParmsE6find_iERKPKcRb.isra.80
# ----------------------
.L0804EF57:
	.p2align 4
# ----------------------
	.local	_ZN7acommon9HashTableINS_9StringMap5ParmsEE6find_iERKPKcRb.isra.89
	.type	_ZN7acommon9HashTableINS_9StringMap5ParmsEE6find_iERKPKcRb.isra.89, @function
_ZN7acommon9HashTableINS_9StringMap5ParmsEE6find_iERKPKcRb.isra.89:
	pushl     %ebp
	pushl     %edi
	movl      %edx, %ebp
	pushl     %esi
	pushl     %ebx
	subl      $28, %esp
	movl      48(%esp), %esi
	movl      %eax, 12(%esp)
	movsbl    (%esi), %edx
	testb     %dl, %dl
	je        .L0804EFE3
.L0804EF78:
	leal      1(%esi), %eax
	xorl      %ebx, %ebx
	.p2align 4,,10
	.p2align 3
.L0804EF80:
	leal      (%ebx,%ebx,4), %ebx
	addl      $1, %eax
	addl      %edx, %ebx
	movsbl    -1(%eax), %edx
	testb     %dl, %dl
	jne       .L0804EF80
.L0804EF90:
	movl      %ebx, %eax
	xorl      %edx, %edx
	divl      (%ecx)
	movl      (%ebp), %eax
	leal      (%eax,%edx,4), %ebp
	movl      52(%esp), %eax
	movl      (%ebp), %edi
	movl      %ebp, %ebx
	movb      $0, (%eax)
	testl     %edi, %edi
	jne       .L0804EFB8
.L0804EFAC:
	jmp       .L0804EFD2
.L0804EFAE:
	.p2align 4,,10
	.p2align 3
.L0804EFB0:
	movl      %edi, %ebx
	movl      (%edi), %edi
	testl     %edi, %edi
	je        .L0804EFD2
.L0804EFB8:
	subl      $8, %esp
	pushl     %esi
	pushl     4(%edi)
	call      strcmp
.L0804EFC4:
	addl      $16, %esp
	testl     %eax, %eax
	jne       .L0804EFB0
.L0804EFCB:
	movl      52(%esp), %eax
	movb      $1, (%eax)
.L0804EFD2:
	movl      12(%esp), %eax
	movl      %ebp, (%eax)
	movl      %ebx, 4(%eax)
	addl      $28, %esp
	popl      %ebx
	popl      %esi
	popl      %edi
	popl      %ebp
	ret       
.L0804EFE3:
	xorl      %ebx, %ebx
	jmp       .L0804EF90
	.size	_ZN7acommon9HashTableINS_9StringMap5ParmsEE6find_iERKPKcRb.isra.89, .-_ZN7acommon9HashTableINS_9StringMap5ParmsEE6find_iERKPKcRb.isra.89
# ----------------------
.L0804EFE7:
	.p2align 4
# ----------------------
	.local	_ZN7acommon11HT_IteratorI9CML_EntryE3incEv.part.104
	.type	_ZN7acommon11HT_IteratorI9CML_EntryE3incEv.part.104, @function
_ZN7acommon11HT_IteratorI9CML_EntryE3incEv.part.104:
	movl      (%eax), %edx
	leal      4(%edx), %ecx
	movl      %ecx, (%eax)
	cmpl      $0, 4(%edx)
	jne       .L0804F00D
.L0804EFFD:
	addl      $8, %edx
.L0804F000:
	movl      %edx, (%eax)
	movl      %edx, %ecx
	addl      $4, %edx
	cmpl      $0, -4(%edx)
	je        .L0804F000
.L0804F00D:
	movl      %ecx, 4(%eax)
	ret       
	.size	_ZN7acommon11HT_IteratorI9CML_EntryE3incEv.part.104, .-_ZN7acommon11HT_IteratorI9CML_EntryE3incEv.part.104
# ----------------------
.L0804F011:
	.p2align 4
# ----------------------
	.local	_ZNSt6vectorIbSaIbEE15_M_copy_alignedESt19_Bit_const_iteratorS2_St13_Bit_iterator.isra.204
	.type	_ZNSt6vectorIbSaIbEE15_M_copy_alignedESt19_Bit_const_iteratorS2_St13_Bit_iterator.isra.204, @function
_ZNSt6vectorIbSaIbEE15_M_copy_alignedESt19_Bit_const_iteratorS2_St13_Bit_iterator.isra.204:
	pushl     %ebp
	pushl     %edi
	pushl     %esi
	pushl     %ebx
	subl      $28, %esp
	movl      %eax, 12(%esp)
	movl      48(%esp), %eax
	movl      52(%esp), %ebx
	movl      56(%esp), %edi
	movl      %eax, %esi
	movl      %eax, 4(%esp)
	subl      %edx, %esi
	movl      %esi, %eax
	sarl      $2, %eax
	testl     %eax, %eax
	je        .L0804F056
.L0804F048:
	subl      $4, %esp
	pushl     %esi
	pushl     %edx
	pushl     %edi
	call      memmove
.L0804F053:
	addl      $16, %esp
.L0804F056:
	addl      %esi, %edi
	xorl      %eax, %eax
	testl     %ebx, %ebx
	jle       .L0804F0D0
.L0804F05E:
	xorl      %edx, %edx
	movl      $1, %ebp
	movl      %ebx, 8(%esp)
	jmp       .L0804F08F
.L0804F06B:
	.p2align 4,,10
	.p2align 3
.L0804F070:
	notl      %esi
	andl      %esi, (%edi)
	cmpl      $31, %edx
	leal      1(%edx), %ecx
	je        .L0804F0AF
.L0804F07C:
	cmpl      $31, %eax
	movl      %ecx, %edx
	leal      1(%eax), %ecx
	je        .L0804F0C0
.L0804F086:
	subl      $1, 8(%esp)
	movl      %ecx, %eax
	je        .L0804F0D0
.L0804F08F:
	movl      %eax, %ecx
	movl      %ebp, %esi
	movl      %ebp, %ebx
	sall      %cl, %esi
	movl      %edx, %ecx
	sall      %cl, %ebx
	movl      %ebx, %ecx
	movl      4(%esp), %ebx
	testl     %ecx, (%ebx)
	je        .L0804F070
.L0804F0A5:
	orl       %esi, (%edi)
	cmpl      $31, %edx
	leal      1(%edx), %ecx
	jne       .L0804F07C
.L0804F0AF:
	addl      $4, 4(%esp)
	xorb      %dl, %dl
	cmpl      $31, %eax
	leal      1(%eax), %ecx
	jne       .L0804F086
.L0804F0BE:
	.p2align 4,,10
	.p2align 3
.L0804F0C0:
	addl      $4, %edi
	xorb      %al, %al
	subl      $1, 8(%esp)
	jne       .L0804F08F
.L0804F0CC:
	.p2align 4,,10
	.p2align 3
.L0804F0D0:
	movl      12(%esp), %edx
	movl      %eax, 4(%edx)
	movl      %edi, (%edx)
	addl      $28, %esp
	popl      %ebx
	movl      %edx, %eax
	popl      %esi
	popl      %edi
	popl      %ebp
	ret       
	.size	_ZNSt6vectorIbSaIbEE15_M_copy_alignedESt19_Bit_const_iteratorS2_St13_Bit_iterator.isra.204, .-_ZNSt6vectorIbSaIbEE15_M_copy_alignedESt19_Bit_const_iteratorS2_St13_Bit_iterator.isra.204
# ----------------------
.L0804F0E3:
	.p2align 4
# ----------------------
	.local	_ZL5mergeRSt6vectorIbSaIbEERKS1_
	.type	_ZL5mergeRSt6vectorIbSaIbEERKS1_, @function
_ZL5mergeRSt6vectorIbSaIbEERKS1_:
	pushl     %ebp
	pushl     %edi
	pushl     %esi
	pushl     %ebx
	subl      $28, %esp
	movl      (%eax), %edi
	movl      12(%eax), %ecx
	subl      4(%eax), %ecx
	movl      8(%eax), %eax
	movl      (%edx), %esi
	movl      %edi, 12(%esp)
	subl      %edi, %eax
	leal      (%ecx,%eax,8), %ebx
	movl      12(%edx), %eax
	subl      4(%edx), %eax
	movl      8(%edx), %edx
	subl      %esi, %edx
	leal      (%eax,%edx,8), %eax
	cmpl      %eax, %ebx
	jne       .L0804F162
.L0804F11F:
	xorl      %ecx, %ecx
	testl     %ebx, %ebx
	movl      $1, %edi
	jne       .L0804F137
.L0804F12A:
	jmp       .L0804F15A
.L0804F12C:
	.p2align 4,,10
	.p2align 3
.L0804F130:
	addl      $1, %ecx
	cmpl      %ebx, %ecx
	je        .L0804F15A
.L0804F137:
	movl      %ecx, %eax
	movl      %edi, %ebp
	shrl      $5, %eax
	sall      %cl, %ebp
	testl     %ebp, (%esi,%eax,4)
	leal      0(,%eax,4), %edx
	je        .L0804F130
.L0804F14C:
	movl      12(%esp), %eax
	addl      $1, %ecx
	orl       %ebp, (%eax,%edx)
	cmpl      %ebx, %ecx
	jne       .L0804F137
.L0804F15A:
	addl      $28, %esp
	popl      %ebx
	popl      %esi
	popl      %edi
	popl      %ebp
	ret       
.L0804F162:
	pushl     $_ZZL5mergeRSt6vectorIbSaIbEERKS1_E19__PRETTY_FUNCTION__
	pushl     $2222
	pushl     $.LC08063C88
	pushl     $.LC08063CF1
	call      __assert_fail
	.size	_ZL5mergeRSt6vectorIbSaIbEERKS1_, .-_ZL5mergeRSt6vectorIbSaIbEERKS1_
# ----------------------
.L0804F17B:
	.p2align 4,,10
	.p2align 3
# ----------------------
	.local	_ZL11combine_affRN7acommon6StringEPKc
	.type	_ZL11combine_affRN7acommon6StringEPKc, @function
_ZL11combine_affRN7acommon6StringEPKc:
	pushl     %ebp
	pushl     %edi
	pushl     %esi
	pushl     %ebx
	movl      %edx, %esi
	movl      %eax, %ebx
	subl      $12, %esp
	movsbl    (%edx), %ecx
	testb     %cl, %cl
	jne       .L0804F1BA
.L0804F192:
	jmp       .L0804F1D0
.L0804F194:
	.p2align 4,,10
	.p2align 3
.L0804F198:
	movb      $0, (%edx)
	movl      4(%ebx), %eax
.L0804F19E:
	subl      $4, %esp
	pushl     %edi
	pushl     %ecx
	pushl     %eax
	call      memchr
.L0804F1A9:
	addl      $16, %esp
	testl     %eax, %eax
	je        .L0804F1E0
.L0804F1B0:
	addl      $1, %esi
	movsbl    (%esi), %ecx
	testb     %cl, %cl
	je        .L0804F1D0
.L0804F1BA:
	movl      8(%ebx), %edx
	movl      4(%ebx), %eax
	movl      %edx, %edi
	subl      %eax, %edi
	testl     %eax, %eax
	jne       .L0804F198
.L0804F1C8:
	movl      $.LC08063D11, %eax
	jmp       .L0804F19E
.L0804F1CF:
	.p2align 4,,10
	.p2align 3
.L0804F1D0:
	addl      $12, %esp
	popl      %ebx
	popl      %esi
	popl      %edi
	popl      %ebp
	ret       
.L0804F1D8:
	.p2align 4
.L0804F1E0:
	movl      8(%ebx), %eax
	movl      4(%ebx), %ecx
	movl      12(%ebx), %ebp
	movzbl    (%esi), %edi
	movl      %eax, %edx
	subl      %ecx, %edx
	subl      %ecx, %ebp
	addl      $1, %edx
	cmpl      %ebp, %edx
	jge       .L0804F208
.L0804F1F9:
	movl      %edi, %edx
	movb      %dl, (%eax)
	addl      $1, 8(%ebx)
	jmp       .L0804F1B0
.L0804F203:
	.p2align 4,,10
	.p2align 3
.L0804F208:
	subl      $8, %esp
	pushl     %edx
	pushl     %ebx
	call      _ZN7acommon6String9reserve_iEj
.L0804F212:
	movl      8(%ebx), %eax
	movl      %edi, %edx
	addl      $16, %esp
	movb      %dl, (%eax)
	addl      $1, 8(%ebx)
	jmp       .L0804F1B0
	.size	_ZL11combine_affRN7acommon6StringEPKc, .-_ZL11combine_affRN7acommon6StringEPKc
# ----------------------
.L0804F222:
	.p2align 4
# ----------------------
	.local	_ZL7combineRK10PreSufListRS_i
	.type	_ZL7combineRK10PreSufListRS_i, @function
_ZL7combineRK10PreSufListRS_i:
	pushl     %ebp
	pushl     %edi
	pushl     %esi
	pushl     %ebx
	subl      $60, %esp
	movl      (%eax), %ebx
	testl     %ebx, %ebx
	je        .L0804F4FA
.L0804F241:
	movl      %ecx, 24(%esp)
	movl      %edx, 44(%esp)
	movl      %eax, 40(%esp)
	movl      %ebx, 32(%esp)
	.p2align 4,,10
	.p2align 3
.L0804F258:
	movl      32(%esp), %eax
	movl      24(%esp), %esi
	addl      $16, %eax
	testl     %esi, %esi
	movl      %eax, 28(%esp)
	jne       .L0804F273
.L0804F26B:
	movl      32(%esp), %eax
	movl      %eax, 28(%esp)
.L0804F273:
	movl      32(%esp), %eax
	cmpl      %ebx, %eax
	je        .L0804F2F0
.L0804F27B:
	movl      28(%esp), %ecx
	movl      24(%esp), %ebp
	movl      8(%ecx), %edx
	movl      4(%ecx), %esi
	movl      %edx, %edi
	movl      %esi, 8(%esp)
	subl      %esi, %edi
	movl      %eax, %esi
	jmp       .L0804F29F
.L0804F295:
	.p2align 4,,10
	.p2align 3
.L0804F298:
	movl      32(%ebx), %ebx
	cmpl      %esi, %ebx
	je        .L0804F2F0
.L0804F29F:
	testl     %ebp, %ebp
	leal      16(%ebx), %edx
	jne       .L0804F2A8
.L0804F2A6:
	movl      %ebx, %edx
.L0804F2A8:
	movl      4(%edx), %eax
	movl      8(%edx), %edx
	movl      %edx, %ecx
	subl      %eax, %ecx
	cmpl      %edi, %ecx
	jne       .L0804F298
.L0804F2B6:
	cmpl      %eax, %edx
	je        .L0804F2D0
.L0804F2BA:
	subl      $4, %esp
	pushl     %edi
	pushl     16(%esp)
	pushl     %eax
	call      memcmp
.L0804F2C8:
	addl      $16, %esp
	testl     %eax, %eax
	jne       .L0804F298
.L0804F2CF:
	.p2align 4,,10
	.p2align 3
.L0804F2D0:
	movl      32(%esp), %eax
	movl      32(%eax), %eax
	testl     %eax, %eax
	movl      %eax, 32(%esp)
	je        .L0804F4FA
.L0804F2E3:
	movl      40(%esp), %eax
	movl      (%eax), %ebx
	jmp       .L0804F258
.L0804F2EE:
	.p2align 4,,10
	.p2align 3
.L0804F2F0:
	subl      $12, %esp
	pushl     $36
	call      _Znwj
.L0804F2FA:
	movl      %eax, 52(%esp)
	movl      $0, 4(%eax)
	movl      %eax, %edi
	movl      $0, 8(%eax)
	movl      $_ZTVN7acommon6StringE+8, (%eax)
	movl      $0, 12(%eax)
	movl      $_ZTVN7acommon6StringE+8, 16(%eax)
	movl      $0, 20(%eax)
	movl      $0, 24(%eax)
	movl      $0, 28(%eax)
	movl      $0, 32(%eax)
	movl      48(%esp), %eax
	movl      4(%eax), %esi
	movl      8(%eax), %eax
	movl      %eax, 24(%esp)
	addl      $16, %esp
	movl      8(%esp), %ebx
	xorl      %eax, %eax
	subl      %esi, %ebx
	je        .L0804F37A
.L0804F359:
	jns       .L0804F51B
.L0804F35F:
	subl      $4, %esp
	pushl     %ebx
	pushl     %esi
	pushl     %eax
	call      memmove
.L0804F36A:
	movl      52(%esp), %eax
	addl      $16, %esp
	addl      4(%eax), %ebx
	movl      %ebx, 8(%eax)
	movl      20(%eax), %eax
.L0804F37A:
	movl      32(%esp), %ecx
	movl      36(%esp), %edx
	movl      20(%ecx), %esi
	movl      24(%ecx), %ebx
	leal      16(%edx), %ebp
	movl      %eax, 24(%edx)
	subl      %esi, %ebx
	je        .L0804F3BB
.L0804F392:
	movl      28(%edx), %edx
	movl      %edx, 8(%esp)
	subl      %eax, %edx
	cmpl      %edx, %ebx
	jge       .L0804F502
.L0804F3A3:
	subl      $4, %esp
	pushl     %ebx
	pushl     %esi
	pushl     %eax
	call      memmove
.L0804F3AE:
	movl      52(%esp), %eax
	addl      $16, %esp
	addl      20(%eax), %ebx
	movl      %ebx, 24(%eax)
.L0804F3BB:
	movl      24(%esp), %ecx
	testl     %ecx, %ecx
	jne       .L0804F3C5
.L0804F3C3:
	movl      %ebp, %edi
.L0804F3C5:
	movl      32(%esp), %eax
	movl      32(%eax), %eax
	testl     %eax, %eax
	movl      %eax, 20(%esp)
	jne       .L0804F3F3
.L0804F3D4:
	jmp       .L0804F4D8
.L0804F3D9:
	.p2align 4
.L0804F3E0:
	movl      20(%esp), %eax
	movl      32(%eax), %eax
	testl     %eax, %eax
	movl      %eax, 20(%esp)
	je        .L0804F4D8
.L0804F3F3:
	movl      20(%esp), %eax
	movl      24(%esp), %edx
	addl      $16, %eax
	testl     %edx, %edx
	jne       .L0804F406
.L0804F402:
	movl      20(%esp), %eax
.L0804F406:
	movl      4(%eax), %edx
	movl      8(%eax), %ecx
	movl      28(%esp), %eax
	movl      %ecx, %esi
	movl      4(%eax), %ebx
	movl      8(%eax), %eax
	subl      %edx, %esi
	movl      %eax, 8(%esp)
	subl      %ebx, %eax
	cmpl      %eax, %esi
	jne       .L0804F3E0
.L0804F424:
	cmpl      %edx, %ecx
	je        .L0804F43A
.L0804F428:
	subl      $4, %esp
	pushl     %esi
	pushl     %ebx
	pushl     %edx
	call      memcmp
.L0804F433:
	addl      $16, %esp
	testl     %eax, %eax
	jne       .L0804F3E0
.L0804F43A:
	movl      20(%esp), %eax
	addl      $16, %eax
	movl      %eax, 8(%esp)
	movl      24(%esp), %eax
	testl     %eax, %eax
	je        .L0804F455
.L0804F44D:
	movl      20(%esp), %eax
	movl      %eax, 8(%esp)
.L0804F455:
	movl      8(%esp), %eax
	movl      4(%eax), %ebp
	cmpl      8(%eax), %ebp
	jne       .L0804F480
.L0804F461:
	jmp       .L0804F3E0
.L0804F466:
	.p2align 4
.L0804F470:
	movl      8(%esp), %eax
	addl      $1, %ebp
	cmpl      %ebp, 8(%eax)
	je        .L0804F3E0
.L0804F480:
	movl      8(%edi), %eax
	movl      4(%edi), %ebx
	subl      $4, %esp
	movl      %eax, 16(%esp)
	movl      %eax, %esi
	movsbl    (%ebp), %eax
	subl      %ebx, %esi
	movb      %al, 23(%esp)
	pushl     %esi
	pushl     %eax
	pushl     %ebx
	call      memchr
.L0804F4A1:
	addl      $16, %esp
	testl     %eax, %eax
	jne       .L0804F470
.L0804F4A8:
	movl      12(%edi), %eax
	addl      $1, %esi
	subl      %ebx, %eax
	movl      12(%esp), %ebx
	cmpl      %eax, %esi
	jl        .L0804F4C8
.L0804F4B8:
	subl      $8, %esp
	pushl     %esi
	pushl     %edi
	call      _ZN7acommon6String9reserve_iEj
.L0804F4C2:
	movl      8(%edi), %ebx
	addl      $16, %esp
.L0804F4C8:
	movzbl    19(%esp), %eax
	movb      %al, (%ebx)
	addl      $1, 8(%edi)
	jmp       .L0804F470
.L0804F4D5:
	.p2align 4,,10
	.p2align 3
.L0804F4D8:
	movl      44(%esp), %edx
	movl      36(%esp), %ecx
	movl      (%edx), %eax
	movl      %eax, 32(%ecx)
	movl      32(%esp), %eax
	movl      %ecx, (%edx)
	movl      32(%eax), %eax
	testl     %eax, %eax
	movl      %eax, 32(%esp)
	jne       .L0804F2E3
.L0804F4FA:
	addl      $60, %esp
	popl      %ebx
	popl      %esi
	popl      %edi
	popl      %ebp
	ret       
.L0804F502:
	subl      $8, %esp
	pushl     %ebx
	pushl     %ebp
	call      _ZN7acommon6String9reserve_iEj
.L0804F50C:
	movl      52(%esp), %eax
	addl      $16, %esp
	movl      20(%eax), %eax
	jmp       .L0804F3A3
.L0804F51B:
	subl      $8, %esp
	pushl     %ebx
	movl      48(%esp), %ebp
	pushl     %ebp
	call      _ZN7acommon6String9reserve_iEj
.L0804F529:
	movl      4(%ebp), %eax
	addl      $16, %esp
	jmp       .L0804F35F
	.size	_ZL7combineRK10PreSufListRS_i, .-_ZL7combineRK10PreSufListRS_i
# ----------------------
.L0804F534:
	.p2align 4
# ----------------------
	.globl	_Z10status_funPvN7acommon5TokenEi
	.type	_Z10status_funPvN7acommon5TokenEi, @function
_Z10status_funPvN7acommon5TokenEi:
	pushl     %ebp
	pushl     %edi
	pushl     %esi
	pushl     %ebx
	subl      $28, %esp
	movl      60(%esp), %edi
	movl      48(%esp), %ebx
	testl     %edi, %edi
	je        .L0804F5C0
.L0804F553:
	cmpb      $0, 40(%ebx)
	je        .L0804F5C0
.L0804F559:
	movl      (%ebx), %eax
	movl      (%eax), %edx
	movl      24(%edx), %edx
	cmpl      $_ZN8aspeller11SpellerImpl10check_infoEv, %edx
	jne       .L0804F628
.L0804F56C:
	movl      164(%eax), %esi
	testl     %esi, %esi
	je        .L0804F650
.L0804F57A:
	addl      $160, %eax
.L0804F57F:
	cmpw      $0, 34(%eax)
	jne       .L0804F640
.L0804F58A:
	movl      28(%eax), %ecx
	testl     %ecx, %ecx
	jne       .L0804F5D0
.L0804F591:
	movl      $.LC08063D0F, 8(%esp)
.L0804F599:
	movl      $-1, 12(%esp)
	subl      $8, %esp
	leal      16(%esp), %eax
	pushl     %eax
	movl      _ZN7acommon4COUTE+8, %eax
	pushl     $_ZN7acommon4COUTE+8
	call      *4(%eax)
.L0804F5B6:
	addl      $16, %esp
	.p2align 4
.L0804F5C0:
	addl      $28, %esp
	popl      %ebx
	popl      %esi
	popl      %edi
	popl      %ebp
	ret       
.L0804F5C8:
	.p2align 4
.L0804F5D0:
	movl      4(%ebx), %esi
	movl      4(%eax), %edx
	testl     %esi, %esi
	movl      %edx, %eax
	je        .L0804F60D
.L0804F5DC:
	movl      24(%ebx), %eax
	leal      20(%ebx), %edi
	movl      %eax, 28(%ebx)
	movl      28(%esi), %eax
	testl     %eax, %eax
	je        .L0804F65B
.L0804F5EC:
	movl      (%eax), %ecx
	pushl     %edi
	pushl     $-1
	pushl     %edx
	pushl     %eax
	call      *4(%ecx)
.L0804F5F6:
	addl      $16, %esp
.L0804F5F9:
	movl      24(%ebx), %edx
	testl     %edx, %edx
	je        .L0804F689
.L0804F604:
	movl      28(%ebx), %eax
	movb      $0, (%eax)
	movl      24(%ebx), %eax
.L0804F60D:
	subl      $4, %esp
	pushl     %eax
	pushl     $.LC08063D09
	pushl     $_ZN7acommon4COUTE+8
	call      _ZN7acommon7OStream6printfEPKcz
.L0804F620:
	addl      $16, %esp
	jmp       .L0804F5C0
.L0804F625:
	.p2align 4,,10
	.p2align 3
.L0804F628:
	subl      $12, %esp
	pushl     %eax
	call      *%edx
.L0804F62E:
	addl      $16, %esp
	jmp       .L0804F57F
.L0804F636:
	.p2align 4
.L0804F640:
	movl      $.LC08063D06, 8(%esp)
	jmp       .L0804F599
.L0804F64D:
	.p2align 4,,10
	.p2align 3
.L0804F650:
	movl      452(%eax), %eax
	jmp       .L0804F57F
.L0804F65B:
	movl      8(%ebx), %eax
	leal      8(%ebx), %ebp
	movl      %eax, 12(%ebx)
	movl      8(%esi), %eax
	movl      (%eax), %ecx
	pushl     %ebp
	pushl     $-1
	pushl     %edx
	pushl     %eax
	call      *12(%ecx)
.L0804F671:
	movl      20(%esi), %eax
	movl      (%eax), %edx
	pushl     %edi
	pushl     12(%ebx)
	pushl     8(%ebx)
	pushl     %eax
	call      *12(%edx)
.L0804F681:
	addl      $32, %esp
	jmp       .L0804F5F9
.L0804F689:
	subl      $8, %esp
	pushl     $0
	pushl     %edi
	call      _ZN7acommon6String9reserve_iEj
.L0804F694:
	movl      24(%ebx), %eax
	addl      $16, %esp
	testl     %eax, %eax
	jne       .L0804F604
.L0804F6A2:
	subl      $8, %esp
	pushl     $0
	pushl     %edi
	call      _ZN7acommon6String9reserve_iEj
.L0804F6AD:
	addl      $16, %esp
	jmp       .L0804F604
	.size	_Z10status_funPvN7acommon5TokenEi, .-_Z10status_funPvN7acommon5TokenEi
# ----------------------
.L0804F6B5:
	.p2align 4
# ----------------------
	.local	_ZL13print_wordaffRKN7acommon6StringES2_RNS_4ConvE
	.type	_ZL13print_wordaffRKN7acommon6StringES2_RNS_4ConvE, @function
_ZL13print_wordaffRKN7acommon6StringES2_RNS_4ConvE:
	pushl     %ebp
	pushl     %edi
	pushl     %esi
	pushl     %ebx
	subl      $44, %esp
	movl      4(%eax), %edi
	movl      8(%eax), %ebp
	cmpl      %ebp, %edi
	je        .L0804F7AD
.L0804F6D5:
	testl     %edi, %edi
	je        .L0804F840
.L0804F6DD:
	movb      $0, (%ebp)
	movl      4(%eax), %eax
.L0804F6E4:
	movl      (%ecx), %edi
	movl      %ecx, %ebx
	movl      %edx, %esi
	testl     %edi, %edi
	je        .L0804F723
.L0804F6EE:
	movl      20(%ecx), %edx
	leal      16(%ecx), %ebp
	movl      %edx, 24(%ecx)
	movl      28(%edi), %edx
	testl     %edx, %edx
	je        .L0804F7B8
.L0804F702:
	movl      (%edx), %ecx
	pushl     %ebp
	pushl     $-1
	pushl     %eax
	pushl     %edx
	call      *4(%ecx)
.L0804F70C:
	addl      $16, %esp
.L0804F70F:
	movl      20(%ebx), %edi
	testl     %edi, %edi
	je        .L0804F860
.L0804F71A:
	movl      24(%ebx), %eax
	movb      $0, (%eax)
	movl      20(%ebx), %eax
.L0804F723:
	movl      %eax, 24(%esp)
	movl      $-1, 28(%esp)
	subl      $8, %esp
	leal      32(%esp), %eax
	pushl     %eax
	pushl     $_ZN7acommon4COUTE
	call      _ZN7acommon7FStreamlsERKNS_10ParmStringE
.L0804F741:
	movl      4(%esi), %eax
	movl      8(%esi), %edx
	addl      $16, %esp
	cmpl      %edx, %eax
	je        .L0804F820
.L0804F752:
	testl     %eax, %eax
	je        .L0804F850
.L0804F75A:
	movb      $0, (%edx)
	movl      4(%esi), %eax
.L0804F760:
	movl      (%ebx), %esi
	testl     %esi, %esi
	je        .L0804F797
.L0804F766:
	movl      20(%ebx), %edx
	leal      16(%ebx), %edi
	movl      %edx, 24(%ebx)
	movl      28(%esi), %edx
	testl     %edx, %edx
	je        .L0804F7F0
.L0804F776:
	movl      (%edx), %ecx
	pushl     %edi
	pushl     $-1
	pushl     %eax
	pushl     %edx
	call      *4(%ecx)
.L0804F780:
	addl      $16, %esp
.L0804F783:
	movl      20(%ebx), %edx
	testl     %edx, %edx
	je        .L0804F890
.L0804F78E:
	movl      24(%ebx), %eax
	movb      $0, (%eax)
	movl      20(%ebx), %eax
.L0804F797:
	subl      $4, %esp
	pushl     %eax
	pushl     $.LC08063DD4
	pushl     $_ZN7acommon4COUTE+8
	call      _ZN7acommon7OStream6printfEPKcz
.L0804F7AA:
	addl      $16, %esp
.L0804F7AD:
	addl      $44, %esp
	popl      %ebx
	popl      %esi
	popl      %edi
	popl      %ebp
	ret       
.L0804F7B5:
	.p2align 4,,10
	.p2align 3
.L0804F7B8:
	movl      4(%ecx), %edx
	movl      %edx, 8(%ecx)
	movl      8(%edi), %edx
	movl      (%edx), %ecx
	movl      %ecx, 12(%esp)
	leal      4(%ebx), %ecx
	pushl     %ecx
	pushl     $-1
	pushl     %eax
	pushl     %edx
	movl      28(%esp), %eax
	call      *12(%eax)
.L0804F7D6:
	movl      20(%edi), %eax
	movl      (%eax), %edx
	pushl     %ebp
	pushl     8(%ebx)
	pushl     4(%ebx)
	pushl     %eax
	call      *12(%edx)
.L0804F7E6:
	addl      $32, %esp
	jmp       .L0804F70F
.L0804F7EE:
	.p2align 4,,10
	.p2align 3
.L0804F7F0:
	movl      4(%ebx), %edx
	leal      4(%ebx), %ebp
	movl      %edx, 8(%ebx)
	movl      8(%esi), %edx
	movl      (%edx), %ecx
	pushl     %ebp
	pushl     $-1
	pushl     %eax
	pushl     %edx
	call      *12(%ecx)
.L0804F806:
	movl      20(%esi), %eax
	movl      (%eax), %edx
	pushl     %edi
	pushl     8(%ebx)
	pushl     4(%ebx)
	pushl     %eax
	call      *12(%edx)
.L0804F816:
	addl      $32, %esp
	jmp       .L0804F783
.L0804F81E:
	.p2align 4,,10
	.p2align 3
.L0804F820:
	subl      $8, %esp
	pushl     _ZN7acommon4COUTE+12
	pushl     $10
	call      _IO_putc
.L0804F830:
	addl      $16, %esp
	jmp       .L0804F7AD
.L0804F838:
	.p2align 4
.L0804F840:
	movl      $.LC08063D11, %eax
	jmp       .L0804F6E4
.L0804F84A:
	.p2align 4,,10
	.p2align 3
.L0804F850:
	movl      $.LC08063D11, %eax
	jmp       .L0804F760
.L0804F85A:
	.p2align 4,,10
	.p2align 3
.L0804F860:
	subl      $8, %esp
	pushl     $0
	pushl     %ebp
	call      _ZN7acommon6String9reserve_iEj
.L0804F86B:
	movl      20(%ebx), %ecx
	addl      $16, %esp
	testl     %ecx, %ecx
	jne       .L0804F71A
.L0804F879:
	subl      $8, %esp
	pushl     $0
	pushl     %ebp
	call      _ZN7acommon6String9reserve_iEj
.L0804F884:
	addl      $16, %esp
	jmp       .L0804F71A
.L0804F88C:
	.p2align 4,,10
	.p2align 3
.L0804F890:
	subl      $8, %esp
	pushl     $0
	pushl     %edi
	call      _ZN7acommon6String9reserve_iEj
.L0804F89B:
	movl      20(%ebx), %eax
	addl      $16, %esp
	testl     %eax, %eax
	jne       .L0804F78E
.L0804F8A9:
	subl      $8, %esp
	pushl     $0
	pushl     %edi
	call      _ZN7acommon6String9reserve_iEj
.L0804F8B4:
	addl      $16, %esp
	jmp       .L0804F78E
	.size	_ZL13print_wordaffRKN7acommon6StringES2_RNS_4ConvE, .-_ZL13print_wordaffRKN7acommon6StringES2_RNS_4ConvE
# ----------------------
.L0804F8BC:
	.p2align 4,,10
	.p2align 3
# ----------------------
	.globl	_Z11print_errorN7acommon10ParmStringE
	.type	_Z11print_errorN7acommon10ParmStringE, @function
_Z11print_errorN7acommon10ParmStringE:
	pushl     %ebx
	subl      $16, %esp
	movl      24(%esp), %ebx
	pushl     $.LC08063D12
	pushl     $.LC08063D1D
	call      dgettext
.L0804F8D7:
	addl      $12, %esp
	pushl     %ebx
	pushl     %eax
	pushl     $_ZN7acommon4CERRE+8
	call      _ZN7acommon7OStream6printfEPKcz
.L0804F8E6:
	addl      $24, %esp
	popl      %ebx
	ret       
	.size	_Z11print_errorN7acommon10ParmStringE, .-_Z11print_errorN7acommon10ParmStringE
# ----------------------
.L0804F8EB:
	.p2align 4,,10
	.p2align 3
# ----------------------
	.local	_ZL10setup_convPN7acommon6ConfigEPKN8aspeller8LanguageE
	.type	_ZL10setup_convPN7acommon6ConfigEPKN8aspeller8LanguageE, @function
_ZL10setup_convPN7acommon6ConfigEPKN8aspeller8LanguageE:
	pushl     %ebp
	pushl     %edi
	pushl     %esi
	pushl     %ebx
	movl      %edx, %ebx
	subl      $76, %esp
	movl      %eax, 12(%esp)
	movl      $.LC08063D24, 36(%esp)
	leal      44(%esp), %ebp
	movl      $-1, 40(%esp)
	subl      $4, %esp
	leal      40(%esp), %edi
	pushl     %edi
	pushl     %eax
	pushl     %ebp
	call      _ZNK7acommon6Config8retrieveERKNS_10ParmStringE
.L0804F920:
	addl      $12, %esp
	movl      52(%esp), %edi
	testl     %edi, %edi
	je        .L0804FAA0
.L0804F92F:
	movl      56(%esp), %eax
	movl      $5, %ecx
	movl      $.LC08063D2D, %edi
	movb      $0, (%eax)
	movl      52(%esp), %eax
	movl      %eax, %esi
	repz cmpsb     
	movl      $_ZTVN7acommon6StringE+8, 48(%esp)
	seta      %dl
	setb      %cl
	subl      $12, %esp
	pushl     %eax
	subl      %ecx, %edx
	movsbl    %dl, %esi
	call      free
.L0804F964:
	addl      $16, %esp
.L0804F967:
	movl      44(%esp), %edx
	testl     %edx, %edx
	je        .L0804F98B
.L0804F96F:
	subl      $1, 8(%edx)
	jne       .L0804F98B
.L0804F975:
	cmpb      $0, 4(%edx)
	je        .L0804FA78
.L0804F97F:
	subl      $12, %esp
	pushl     %ebp
	call      _ZN7acommon12PosibErrBase3delEv
.L0804F988:
	addl      $16, %esp
.L0804F98B:
	testl     %esi, %esi
	je        .L0804FA68
.L0804F993:
	movl      72(%ebx), %esi
	testl     %esi, %esi
	je        .L0804FAB0
.L0804F99E:
	movl      76(%ebx), %eax
	movb      $0, (%eax)
	movl      72(%ebx), %eax
.L0804F9A7:
	movl      $.LC08063D24, 36(%esp)
	movl      $-1, 40(%esp)
	subl      $4, %esp
	movl      %eax, %esi
	leal      40(%esp), %eax
	xorl      %ebx, %ebx
	movl      $-1, %edi
	pushl     %eax
	pushl     20(%esp)
	pushl     %ebp
	call      _ZNK7acommon6Config8retrieveERKNS_10ParmStringE
.L0804F9D2:
	addl      $12, %esp
	movl      52(%esp), %eax
	movl      $.LC08063D11, %ecx
	testl     %eax, %eax
	je        .L0804F9EF
.L0804F9E2:
	movl      56(%esp), %eax
	movb      $0, (%eax)
	movl      52(%esp), %ecx
	movl      %ecx, %ebx
.L0804F9EF:
	movl      %ecx, %eax
	movl      56(%esp), %ecx
	subl      %ebx, %ecx
	movl      %ecx, %edx
	leal      28(%esp), %ecx
	pushl     $1
	pushl     $1
	pushl     %edi
	pushl     %esi
	pushl     %edx
	pushl     %eax
	pushl     36(%esp)
	pushl     %ecx
	call      _ZN7acommon20internal_new_convertERKNS_6ConfigENS_10ParmStringES3_bNS_9NormalizeE
.L0804FA0F:
	movl      80(%esp), %eax
	movl      $_ZTVN7acommon6StringE+8, 76(%esp)
	addl      $28, %esp
	testl     %eax, %eax
	je        .L0804FA2E
.L0804FA22:
	subl      $12, %esp
	pushl     %eax
	call      free
.L0804FA2B:
	addl      $16, %esp
.L0804FA2E:
	movl      44(%esp), %edx
	testl     %edx, %edx
	je        .L0804FA4E
.L0804FA36:
	subl      $1, 8(%edx)
	jne       .L0804FA4E
.L0804FA3C:
	cmpb      $0, 4(%edx)
	je        .L0804FA90
.L0804FA42:
	subl      $12, %esp
	pushl     %ebp
	call      _ZN7acommon12PosibErrBase3delEv
.L0804FA4B:
	addl      $16, %esp
.L0804FA4E:
	movl      28(%esp), %eax
	testl     %eax, %eax
	jne       .L0804FABA
.L0804FA56:
	movl      32(%esp), %eax
	addl      $76, %esp
	popl      %ebx
	popl      %esi
	popl      %edi
	popl      %ebp
	ret       
.L0804FA62:
	.p2align 4,,10
	.p2align 3
.L0804FA68:
	addl      $76, %esp
	xorl      %eax, %eax
	popl      %ebx
	popl      %esi
	popl      %edi
	popl      %ebp
	ret       
.L0804FA72:
	.p2align 4,,10
	.p2align 3
.L0804FA78:
	subl      $12, %esp
	pushl     %ebp
	call      _ZNK7acommon12PosibErrBase10handle_errEv
.L0804FA81:
	addl      $16, %esp
	jmp       .L0804F97F
.L0804FA89:
	.p2align 4
.L0804FA90:
	subl      $12, %esp
	pushl     %ebp
	call      _ZNK7acommon12PosibErrBase10handle_errEv
.L0804FA99:
	addl      $16, %esp
	jmp       .L0804FA42
.L0804FA9E:
	.p2align 4,,10
	.p2align 3
.L0804FAA0:
	movl      $-1, %esi
	jmp       .L0804F967
.L0804FAAA:
	.p2align 4,,10
	.p2align 3
.L0804FAB0:
	movl      $.LC08063D11, %eax
	jmp       .L0804F9A7
.L0804FABA:
	movl      (%eax), %ecx
	movb      $1, 4(%eax)
	orl       $-1, %edx
	movl      (%ecx), %eax
	pushl     %ecx
	pushl     %ecx
	pushl     %edx
	pushl     %eax
	call      _Z11print_errorN7acommon10ParmStringE
.L0804FACE:
	movl      $1, (%esp)
	call      exit
	.size	_ZL10setup_convPN7acommon6ConfigEPKN8aspeller8LanguageE, .-_ZL10setup_convPN7acommon6ConfigEPKN8aspeller8LanguageE
# ----------------------
.L0804FADA:
	.p2align 4,,10
	.p2align 3
# ----------------------
	.local	_ZL10setup_convPKN8aspeller8LanguageEPN7acommon6ConfigE
	.type	_ZL10setup_convPKN8aspeller8LanguageEPN7acommon6ConfigE, @function
_ZL10setup_convPKN8aspeller8LanguageEPN7acommon6ConfigE:
	pushl     %ebp
	pushl     %edi
	movl      %eax, %ebp
	pushl     %esi
	pushl     %ebx
	subl      $76, %esp
	movl      %edx, 12(%esp)
	movl      $.LC08063D24, 36(%esp)
	leal      44(%esp), %ebx
	movl      $-1, 40(%esp)
	subl      $4, %esp
	leal      40(%esp), %eax
	pushl     %eax
	pushl     %edx
	pushl     %ebx
	call      _ZNK7acommon6Config8retrieveERKNS_10ParmStringE
.L0804FB10:
	addl      $12, %esp
	movl      52(%esp), %edi
	testl     %edi, %edi
	je        .L0804FC90
.L0804FB1F:
	movl      56(%esp), %eax
	movl      $5, %ecx
	movl      $.LC08063D2D, %edi
	movb      $0, (%eax)
	movl      52(%esp), %eax
	movl      %eax, %esi
	repz cmpsb     
	movl      $_ZTVN7acommon6StringE+8, 48(%esp)
	seta      %dl
	setb      %cl
	subl      $12, %esp
	pushl     %eax
	subl      %ecx, %edx
	movsbl    %dl, %esi
	call      free
.L0804FB54:
	addl      $16, %esp
.L0804FB57:
	movl      44(%esp), %edx
	testl     %edx, %edx
	je        .L0804FB7B
.L0804FB5F:
	subl      $1, 8(%edx)
	jne       .L0804FB7B
.L0804FB65:
	cmpb      $0, 4(%edx)
	je        .L0804FC60
.L0804FB6F:
	subl      $12, %esp
	pushl     %ebx
	call      _ZN7acommon12PosibErrBase3delEv
.L0804FB78:
	addl      $16, %esp
.L0804FB7B:
	testl     %esi, %esi
	je        .L0804FC50
.L0804FB83:
	movl      $.LC08063D24, 36(%esp)
	movl      $-1, 40(%esp)
	subl      $4, %esp
	leal      40(%esp), %eax
	pushl     %eax
	pushl     20(%esp)
	pushl     %ebx
	call      _ZNK7acommon6Config8retrieveERKNS_10ParmStringE
.L0804FBA5:
	addl      $12, %esp
	movl      52(%esp), %esi
	testl     %esi, %esi
	je        .L0804FCB0
.L0804FBB4:
	movl      56(%esp), %eax
	movb      $0, (%eax)
	movl      52(%esp), %ecx
	movl      %ecx, %esi
.L0804FBC1:
	movl      %ecx, %eax
	movl      56(%esp), %edi
	movl      72(%ebp), %ecx
	subl      %esi, %edi
	testl     %ecx, %ecx
	movl      %edi, %edx
	je        .L0804FCA0
.L0804FBD6:
	movl      76(%ebp), %ecx
	movb      $0, (%ecx)
	movl      72(%ebp), %ecx
.L0804FBDF:
	movl      %ecx, %esi
	leal      28(%esp), %ecx
	movl      $-1, %edi
	pushl     $2
	pushl     $1
	pushl     %edx
	pushl     %eax
	pushl     %edi
	pushl     %esi
	pushl     36(%esp)
	pushl     %ecx
	call      _ZN7acommon20internal_new_convertERKNS_6ConfigENS_10ParmStringES3_bNS_9NormalizeE
.L0804FBFC:
	movl      80(%esp), %eax
	movl      $_ZTVN7acommon6StringE+8, 76(%esp)
	addl      $28, %esp
	testl     %eax, %eax
	je        .L0804FC1B
.L0804FC0F:
	subl      $12, %esp
	pushl     %eax
	call      free
.L0804FC18:
	addl      $16, %esp
.L0804FC1B:
	movl      44(%esp), %edx
	testl     %edx, %edx
	je        .L0804FC3B
.L0804FC23:
	subl      $1, 8(%edx)
	jne       .L0804FC3B
.L0804FC29:
	cmpb      $0, 4(%edx)
	je        .L0804FC78
.L0804FC2F:
	subl      $12, %esp
	pushl     %ebx
	call      _ZN7acommon12PosibErrBase3delEv
.L0804FC38:
	addl      $16, %esp
.L0804FC3B:
	movl      28(%esp), %eax
	testl     %eax, %eax
	jne       .L0804FCBC
.L0804FC43:
	movl      32(%esp), %eax
	addl      $76, %esp
	popl      %ebx
	popl      %esi
	popl      %edi
	popl      %ebp
	ret       
.L0804FC4F:
	.p2align 4,,10
	.p2align 3
.L0804FC50:
	addl      $76, %esp
	xorl      %eax, %eax
	popl      %ebx
	popl      %esi
	popl      %edi
	popl      %ebp
	ret       
.L0804FC5A:
	.p2align 4,,10
	.p2align 3
.L0804FC60:
	subl      $12, %esp
	pushl     %ebx
	call      _ZNK7acommon12PosibErrBase10handle_errEv
.L0804FC69:
	addl      $16, %esp
	jmp       .L0804FB6F
.L0804FC71:
	.p2align 4,,10
	.p2align 3
.L0804FC78:
	subl      $12, %esp
	pushl     %ebx
	call      _ZNK7acommon12PosibErrBase10handle_errEv
.L0804FC81:
	addl      $16, %esp
	jmp       .L0804FC2F
.L0804FC86:
	.p2align 4
.L0804FC90:
	movl      $-1, %esi
	jmp       .L0804FB57
.L0804FC9A:
	.p2align 4,,10
	.p2align 3
.L0804FCA0:
	movl      $.LC08063D11, %ecx
	jmp       .L0804FBDF
.L0804FCAA:
	.p2align 4,,10
	.p2align 3
.L0804FCB0:
	xorl      %esi, %esi
	movl      $.LC08063D11, %ecx
	jmp       .L0804FBC1
.L0804FCBC:
	movl      (%eax), %ecx
	movb      $1, 4(%eax)
	orl       $-1, %edx
	movl      (%ecx), %eax
	pushl     %ebx
	pushl     %ebx
	pushl     %edx
	pushl     %eax
	call      _Z11print_errorN7acommon10ParmStringE
.L0804FCD0:
	movl      $1, (%esp)
	call      exit
	.size	_ZL10setup_convPKN8aspeller8LanguageEPN7acommon6ConfigE, .-_ZL10setup_convPKN8aspeller8LanguageEPN7acommon6ConfigE
# ----------------------
.L0804FCDC:
	.p2align 4,,10
	.p2align 3
# ----------------------
	.globl	_Z11print_errorN7acommon10ParmStringES0_
	.type	_Z11print_errorN7acommon10ParmStringES0_, @function
_Z11print_errorN7acommon10ParmStringES0_:
	pushl     %esi
	pushl     %ebx
	subl      $28, %esp
	movl      40(%esp), %ebx
	movl      48(%esp), %esi
	pushl     $.LC08063D32
	pushl     $.LC08063D1D
	call      dgettext
.L0804FCFC:
	movl      $-1, 28(%esp)
	movl      %eax, 24(%esp)
	popl      %eax
	popl      %edx
	leal      16(%esp), %eax
	pushl     %eax
	movl      _ZN7acommon4CERRE+8, %eax
	pushl     $_ZN7acommon4CERRE+8
	call      *4(%eax)
.L0804FD1C:
	addl      $12, %esp
	pushl     %esi
	pushl     %ebx
	pushl     $_ZN7acommon4CERRE+8
	call      _ZN7acommon7OStream6printfEPKcz
.L0804FD2B:
	popl      %ecx
	popl      %ebx
	movl      _ZN7acommon4CERRE+8, %eax
	pushl     $10
	pushl     $_ZN7acommon4CERRE+8
	call      *(%eax)
.L0804FD3B:
	addl      $36, %esp
	popl      %ebx
	popl      %esi
	ret       
	.size	_Z11print_errorN7acommon10ParmStringES0_, .-_Z11print_errorN7acommon10ParmStringES0_
# ----------------------
.L0804FD41:
	.p2align 4
# ----------------------
	.globl	_Z11find_optionc
	.type	_Z11find_optionc, @function
_Z11find_optionc:
	movl      possible_options_end, %eax
	movl      4(%esp), %edx
	cmpl      $_ZL16possible_options, %eax
	movl      %edx, %ecx
	je        .L0804FD7C
.L0804FD62:
	cmpb      $100, %dl
	je        .L0804FD83
.L0804FD67:
	movl      $_ZL16possible_options, %edx
	jmp       .L0804FD75
.L0804FD6E:
	.p2align 4,,10
	.p2align 3
.L0804FD70:
	cmpb      %cl, 4(%edx)
	je        .L0804FD80
.L0804FD75:
	addl      $16, %edx
	cmpl      %eax, %edx
	jne       .L0804FD70
.L0804FD7C:
	rep; ret       
.L0804FD7E:
	.p2align 4,,10
	.p2align 3
.L0804FD80:
	movl      %edx, %eax
	ret       
.L0804FD83:
	movl      $_ZL16possible_options, %eax
	ret       
	.size	_Z11find_optionc, .-_Z11find_optionc
# ----------------------
.L0804FD89:
	.p2align 4
# ----------------------
	.globl	_Z18setup_display_convv
	.type	_Z18setup_display_convv, @function
_Z18setup_display_convv:
	pushl     %ebp
	pushl     %edi
	pushl     %esi
	pushl     %ebx
	subl      $76, %esp
	movl      $.LC08063D24, 36(%esp)
	movl      $-1, 40(%esp)
	leal      44(%esp), %ebx
	subl      $4, %esp
	leal      40(%esp), %eax
	pushl     %eax
	pushl     options
	pushl     %ebx
	call      _ZNK7acommon6Config8retrieveERKNS_10ParmStringE
.L0804FDBF:
	movl      56(%esp), %eax
	addl      $12, %esp
	testl     %eax, %eax
	je        .L0804FDDC
.L0804FDCA:
	cmpb      $0, 4(%eax)
	jne       .L0804FDDC
.L0804FDD0:
	subl      $12, %esp
	pushl     %ebx
	call      _ZNK7acommon12PosibErrBase10handle_errEv
.L0804FDD9:
	addl      $16, %esp
.L0804FDDC:
	movl      52(%esp), %esi
	movl      56(%esp), %edi
	testl     %esi, %esi
	setne     %al
	subl      %esi, %edi
	je        .L0804FDF5
.L0804FDED:
	testb     %al, %al
	jne       .L080501A8
.L0804FDF5:
	xorl      %ebp, %ebp
	testb     %al, %al
	movl      $0, 12(%esp)
	movl      $_ZTVN7acommon6StringE+8, 48(%esp)
	je        .L0804FE17
.L0804FE0B:
	subl      $12, %esp
	pushl     %esi
	call      free
.L0804FE14:
	addl      $16, %esp
.L0804FE17:
	subl      $12, %esp
	pushl     %ebx
	call      _ZN7acommon12PosibErrBase7destroyEv
.L0804FE20:
	movl      $_ZTVN7acommon6StringE+8, 60(%esp)
	movl      $0, 64(%esp)
	movl      $0, 68(%esp)
	movl      $0, 72(%esp)
	popl      %ecx
	popl      %esi
	pushl     $0
	pushl     $.LC08063D1D
	call      bind_textdomain_codeset
.L0804FE4E:
	movl      $-1, 56(%esp)
	movl      %eax, 52(%esp)
	movl      %eax, %esi
	popl      %edi
	popl      %eax
	leal      44(%esp), %eax
	pushl     %eax
	pushl     options
	call      _ZN7acommon14ascii_encodingERKNS_6ConfigERKNS_10ParmStringE
.L0804FE6E:
	addl      $16, %esp
	testb     %al, %al
	je        .L0804FF30
.L0804FE79:
	subl      $12, %esp
	pushl     $14
	call      nl_langinfo
.L0804FE83:
	movl      $-1, 56(%esp)
	movl      %eax, 52(%esp)
	movl      %eax, %edi
	popl      %eax
	popl      %edx
	leal      44(%esp), %eax
	pushl     %eax
	pushl     options
	call      _ZN7acommon14ascii_encodingERKNS_6ConfigERKNS_10ParmStringE
.L0804FEA3:
	addl      $16, %esp
	testb     %al, %al
	jne       .L08050170
.L0804FEAE:
	testl     %edi, %edi
	je        .L08050170
.L0804FEB6:
	subl      $12, %esp
	pushl     %edi
	call      strlen
.L0804FEBF:
	addl      $16, %esp
	movl      %eax, %esi
	movl      48(%esp), %eax
	testl     %esi, %esi
	movl      %eax, 52(%esp)
	je        .L08050198
.L0804FED4:
	movl      56(%esp), %edx
	subl      %eax, %edx
	cmpl      %edx, %esi
	jge       .L08050210
.L0804FEE2:
	subl      $4, %esp
	pushl     %esi
	pushl     %edi
	pushl     %eax
	call      memmove
.L0804FEED:
	movl      64(%esp), %edx
	leal      (%edx,%esi), %eax
	movl      28(%esp), %esi
	movl      %eax, 68(%esp)
	addl      $16, %esp
	subl      %ebp, %esi
	testl     %edx, %edx
	jne       .L0804FFC0
.L0804FF09:
	.p2align 4
.L0804FF10:
	testl     %ebp, %ebp
	movl      $.LC08063D11, 36(%esp)
	movl      %eax, 40(%esp)
	jne       .L0804FFDD
.L0804FF24:
	movl      $.LC08063D11, %eax
	jmp       .L0804FFE6
.L0804FF2E:
	.p2align 4,,10
	.p2align 3
.L0804FF30:
	subl      $12, %esp
	pushl     $14
	call      nl_langinfo
.L0804FF3A:
	movl      $-1, 56(%esp)
	movl      %eax, 52(%esp)
	movl      %eax, %edi
	popl      %eax
	popl      %edx
	leal      44(%esp), %eax
	pushl     %eax
	pushl     options
	call      _ZN7acommon14ascii_encodingERKNS_6ConfigERKNS_10ParmStringE
.L0804FF5A:
	addl      $16, %esp
	testb     %al, %al
	je        .L08050120
.L0804FF65:
	testl     %esi, %esi
	je        .L08050170
.L0804FF6D:
	subl      $12, %esp
	pushl     %esi
	call      strlen
.L0804FF76:
	addl      $16, %esp
	movl      %eax, %edi
	movl      48(%esp), %eax
	testl     %edi, %edi
	movl      %eax, 52(%esp)
	je        .L08050198
.L0804FF8B:
	movl      56(%esp), %edx
	subl      %eax, %edx
	cmpl      %edx, %edi
	jge       .L080501F0
.L0804FF99:
	subl      $4, %esp
	pushl     %edi
	pushl     %esi
	pushl     %eax
	call      memmove
.L0804FFA4:
	movl      64(%esp), %edx
	movl      28(%esp), %esi
	leal      (%edx,%edi), %eax
	subl      %ebp, %esi
	movl      %eax, 68(%esp)
	addl      $16, %esp
.L0804FFB8:
	testl     %edx, %edx
	je        .L0804FF10
.L0804FFC0:
	movb      $0, (%eax)
	movl      48(%esp), %eax
	movl      52(%esp), %ecx
	movl      %eax, 36(%esp)
	subl      %eax, %ecx
	testl     %ebp, %ebp
	movl      %ecx, 40(%esp)
	je        .L0804FF24
.L0804FFDD:
	movl      12(%esp), %eax
	movb      $0, (%eax)
	movl      %ebp, %eax
.L0804FFE6:
	movl      %eax, 28(%esp)
	movl      %esi, 32(%esp)
	leal      24(%esp), %ebx
	subl      $8, %esp
	pushl     $0
	leal      48(%esp), %eax
	pushl     %eax
	leal      44(%esp), %eax
	pushl     %eax
	pushl     options
	pushl     $dconv
	pushl     %ebx
	call      _ZN7acommon4Conv5setupERKNS_6ConfigERKNS_10ParmStringES6_NS_9NormalizeE
.L08050012:
	movl      52(%esp), %eax
	movl      %eax, 48(%esp)
	addl      $28, %esp
	testl     %eax, %eax
	je        .L08050025
.L08050021:
	addl      $1, 8(%eax)
.L08050025:
	subl      $12, %esp
	pushl     %ebx
	call      _ZN7acommon12PosibErrBase7destroyEv
.L0805002E:
	movl      36(%esp), %eax
	addl      $16, %esp
	testl     %eax, %eax
	jne       .L08050226
.L0805003D:
	subl      $12, %esp
	leal      32(%esp), %edi
	pushl     %edi
	call      _ZN7acommon12PosibErrBase7destroyEv
.L0805004A:
	addl      $16, %esp
	testl     %ebp, %ebp
	je        .L080501E0
.L08050055:
	movl      12(%esp), %eax
	movb      $0, (%eax)
	movl      %ebp, %eax
.L0805005E:
	movl      48(%esp), %ecx
	xorl      %edx, %edx
	movl      %eax, 36(%esp)
	movl      %esi, 40(%esp)
	movl      $.LC08063D11, %eax
	testl     %ecx, %ecx
	je        .L08050082
.L08050075:
	movl      52(%esp), %eax
	movb      $0, (%eax)
	movl      48(%esp), %eax
	movl      %eax, %edx
.L08050082:
	movl      %eax, 28(%esp)
	movl      52(%esp), %eax
	subl      $8, %esp
	subl      %edx, %eax
	movl      %eax, 40(%esp)
	pushl     $0
	leal      48(%esp), %eax
	pushl     %eax
	leal      44(%esp), %eax
	pushl     %eax
	pushl     options
	pushl     $uiconv
	pushl     %ebx
	call      _ZN7acommon4Conv5setupERKNS_6ConfigERKNS_10ParmStringES6_NS_9NormalizeE
.L080500B0:
	movl      52(%esp), %eax
	movl      %eax, 48(%esp)
	addl      $28, %esp
	testl     %eax, %eax
	je        .L080500C3
.L080500BF:
	addl      $1, 8(%eax)
.L080500C3:
	subl      $12, %esp
	pushl     %ebx
	call      _ZN7acommon12PosibErrBase7destroyEv
.L080500CC:
	movl      36(%esp), %eax
	addl      $16, %esp
	testl     %eax, %eax
	jne       .L08050226
.L080500DB:
	subl      $12, %esp
	pushl     %edi
	call      _ZN7acommon12PosibErrBase7destroyEv
.L080500E4:
	movl      64(%esp), %eax
	movl      $_ZTVN7acommon6StringE+8, 60(%esp)
	addl      $16, %esp
	testl     %eax, %eax
	je        .L08050103
.L080500F7:
	subl      $12, %esp
	pushl     %eax
	call      free
.L08050100:
	addl      $16, %esp
.L08050103:
	testl     %ebp, %ebp
	je        .L08050113
.L08050107:
	subl      $12, %esp
	pushl     %ebp
	call      free
.L08050110:
	addl      $16, %esp
.L08050113:
	addl      $76, %esp
	popl      %ebx
	popl      %esi
	popl      %edi
	popl      %ebp
	ret       
.L0805011B:
	.p2align 4,,10
	.p2align 3
.L08050120:
	testl     %esi, %esi
	setne     %al
	testl     %edi, %edi
	je        .L08050246
.L0805012D:
	testb     %al, %al
	je        .L0804FEAE
.L08050135:
	subl      $8, %esp
	pushl     %edi
	pushl     %esi
	call      strcmp
.L0805013F:
	addl      $16, %esp
	testl     %eax, %eax
	je        .L0804FF6D
.L0805014A:
	pushl     stderr
	pushl     $55
	pushl     $1
	pushl     $.LC080641E4
	call      fwrite
.L0805015E:
	movl      $-1, (%esp)
	call      exit
.L0805016A:
	.p2align 4,,10
	.p2align 3
.L08050170:
	movl      12(%esp), %esi
	subl      $4, %esp
	subl      %ebp, %esi
	pushl     %esi
	pushl     %ebp
	pushl     %ebx
	call      _ZN7acommon6String6assignEPKcj
.L08050181:
	movl      64(%esp), %edx
	movl      68(%esp), %eax
	addl      $16, %esp
	jmp       .L0804FFB8
.L08050191:
	.p2align 4,,10
	.p2align 3
.L08050198:
	movl      12(%esp), %esi
	movl      %eax, %edx
	subl      %ebp, %esi
	jmp       .L0804FFB8
.L080501A5:
	.p2align 4,,10
	.p2align 3
.L080501A8:
	leal      1(%edi), %eax
	subl      $12, %esp
	pushl     %eax
	call      malloc
.L080501B4:
	addl      $12, %esp
	movl      %eax, %ebp
	pushl     %edi
	pushl     %esi
	pushl     %eax
	call      memcpy
.L080501C1:
	leal      (%ebp,%edi), %eax
	movl      $_ZTVN7acommon6StringE+8, 64(%esp)
	movl      %eax, 28(%esp)
	addl      $16, %esp
	jmp       .L0804FE0B
.L080501D9:
	.p2align 4
.L080501E0:
	movl      $.LC08063D11, %eax
	jmp       .L0805005E
.L080501EA:
	.p2align 4,,10
	.p2align 3
.L080501F0:
	subl      $8, %esp
	pushl     %edi
	pushl     %ebx
	call      _ZN7acommon6String9reserve_iEj
.L080501FA:
	movl      64(%esp), %eax
	addl      $16, %esp
	jmp       .L0804FF99
.L08050206:
	.p2align 4
.L08050210:
	subl      $8, %esp
	pushl     %esi
	pushl     %ebx
	call      _ZN7acommon6String9reserve_iEj
.L0805021A:
	movl      64(%esp), %eax
	addl      $16, %esp
	jmp       .L0804FEE2
.L08050226:
	movl      (%eax), %ecx
	movb      $1, 4(%eax)
	orl       $-1, %edx
	movl      (%ecx), %eax
	pushl     %ebx
	pushl     %ebx
	pushl     %edx
	pushl     %eax
	call      _Z11print_errorN7acommon10ParmStringE
.L0805023A:
	movl      $1, (%esp)
	call      exit
.L08050246:
	testb     %al, %al
	je        .L0804FEAE
.L0805024E:
	jmp       .L0804FF6D
	.size	_Z18setup_display_convv, .-_Z18setup_display_convv
# ----------------------
.L08050253:
	.p2align 4
# ----------------------
	.globl	_Z6configv
	.type	_Z6configv, @function
_Z6configv:
	pushl     %ebp
	pushl     %edi
	pushl     %esi
	pushl     %ebx
	subl      $60, %esp
	movl      args, %edx
	movl      args+4, %eax
	subl      %edx, %eax
	sarl      $4, %eax
	testl     %eax, %eax
	je        .L080503E0
.L0805027F:
	movl      $0, 16(%esp)
	movl      4(%edx), %esi
	xorl      %ecx, %ecx
	movl      $_ZTVN7acommon6StringE+8, 12(%esp)
	movl      $0, 20(%esp)
	movl      $.LC08063D11, %eax
	movl      $0, 24(%esp)
	testl     %esi, %esi
	je        .L080502B8
.L080502AD:
	movl      8(%edx), %eax
	movb      $0, (%eax)
	movl      4(%edx), %eax
	movl      %eax, %ecx
.L080502B8:
	movl      %eax, 4(%esp)
	movl      8(%edx), %eax
	leal      28(%esp), %edi
	subl      $4, %esp
	subl      %ecx, %eax
	movl      %eax, 12(%esp)
	leal      8(%esp), %ebp
	pushl     %ebp
	pushl     options
	pushl     %edi
	call      _ZNK7acommon6Config12retrieve_anyERKNS_10ParmStringE
.L080502DD:
	movl      40(%esp), %eax
	addl      $12, %esp
	testl     %eax, %eax
	jne       .L08050454
.L080502EC:
	movl      36(%esp), %esi
	movl      40(%esp), %ebx
	movl      16(%esp), %eax
	subl      %esi, %ebx
	movl      %esi, %edx
	movl      %eax, 20(%esp)
	je        .L0805032A
.L08050302:
	movl      24(%esp), %edx
	subl      %eax, %edx
	cmpl      %edx, %ebx
	jge       .L08050410
.L08050310:
	subl      $4, %esp
	pushl     %ebx
	pushl     %esi
	pushl     %eax
	call      memmove
.L0805031B:
	addl      32(%esp), %ebx
	movl      52(%esp), %edx
	movl      %ebx, 36(%esp)
	addl      $16, %esp
.L0805032A:
	testl     %edx, %edx
	movl      $_ZTVN7acommon6StringE+8, 32(%esp)
	je        .L08050342
.L08050336:
	subl      $12, %esp
	pushl     %edx
	call      free
.L0805033F:
	addl      $16, %esp
.L08050342:
	movl      28(%esp), %edx
	testl     %edx, %edx
	je        .L08050366
.L0805034A:
	subl      $1, 8(%edx)
	jne       .L08050366
.L08050350:
	cmpb      $0, 4(%edx)
	je        .L08050430
.L0805035A:
	subl      $12, %esp
	pushl     %edi
	call      _ZN7acommon12PosibErrBase3delEv
.L08050363:
	addl      $16, %esp
.L08050366:
	movl      16(%esp), %eax
	movl      $.LC08063D10, 28(%esp)
	movl      $-1, 32(%esp)
	testl     %eax, %eax
	je        .L08050448
.L08050382:
	movl      20(%esp), %eax
	movb      $0, (%eax)
	movl      16(%esp), %eax
	movl      %eax, %edx
.L0805038F:
	movl      %eax, 4(%esp)
	movl      20(%esp), %eax
	subl      $8, %esp
	subl      %edx, %eax
	movl      %eax, 16(%esp)
	pushl     %ebp
	pushl     $_ZN7acommon4COUTE
	call      _ZN7acommon7FStreamlsERKNS_10ParmStringE
.L080503AB:
	popl      %edx
	popl      %ecx
	pushl     %edi
	pushl     %eax
	call      _ZN7acommon7FStreamlsERKNS_10ParmStringE
.L080503B4:
	movl      32(%esp), %eax
	movl      $_ZTVN7acommon6StringE+8, 28(%esp)
	addl      $16, %esp
	testl     %eax, %eax
	je        .L080503D3
.L080503C7:
	subl      $12, %esp
	pushl     %eax
	call      free
.L080503D0:
	addl      $16, %esp
.L080503D3:
	addl      $60, %esp
	popl      %ebx
	popl      %esi
	popl      %edi
	popl      %ebp
	ret       
.L080503DB:
	.p2align 4,,10
	.p2align 3
.L080503E0:
	subl      $12, %esp
	pushl     options
	call      _ZN7acommon16load_all_filtersEPNS_6ConfigE
.L080503EE:
	addl      $12, %esp
	pushl     $0
	pushl     $_ZN7acommon4COUTE+8
	pushl     options
	call      _ZN7acommon6Config15write_to_streamERNS_7OStreamEb
.L08050403:
	addl      $16, %esp
	addl      $60, %esp
	popl      %ebx
	popl      %esi
	popl      %edi
	popl      %ebp
	ret       
.L0805040E:
	.p2align 4,,10
	.p2align 3
.L08050410:
	subl      $8, %esp
	pushl     %ebx
	leal      24(%esp), %eax
	pushl     %eax
	call      _ZN7acommon6String9reserve_iEj
.L0805041E:
	movl      32(%esp), %eax
	addl      $16, %esp
	jmp       .L08050310
.L0805042A:
	.p2align 4,,10
	.p2align 3
.L08050430:
	subl      $12, %esp
	pushl     %edi
	call      _ZNK7acommon12PosibErrBase10handle_errEv
.L08050439:
	addl      $16, %esp
	jmp       .L0805035A
.L08050441:
	.p2align 4,,10
	.p2align 3
.L08050448:
	xorl      %edx, %edx
	movl      $.LC08063D11, %eax
	jmp       .L0805038F
.L08050454:
	movl      (%eax), %ecx
	movb      $1, 4(%eax)
	orl       $-1, %edx
	movl      (%ecx), %eax
	pushl     %ebx
	pushl     %ebx
	pushl     %edx
	pushl     %eax
	call      _Z11print_errorN7acommon10ParmStringE
.L08050468:
	movl      $1, (%esp)
	call      exit
	.size	_Z6configv, .-_Z6configv
# ----------------------
.L08050474:
	.p2align 4
# ----------------------
	.globl	_Z5dictsv
	.type	_Z5dictsv, @function
_Z5dictsv:
	pushl     %ebx
	subl      $20, %esp
	pushl     options
	call      _ZN7acommon18get_dict_info_listEPNS_6ConfigE
.L0805048F:
	movl      %eax, (%esp)
	call      _ZNK7acommon12DictInfoList8elementsEv
.L08050497:
	addl      $16, %esp
	movl      %eax, %ebx
	jmp       .L080504AD
.L0805049E:
	.p2align 4,,10
	.p2align 3
.L080504A0:
	subl      $12, %esp
	pushl     (%eax)
	call      puts
.L080504AA:
	addl      $16, %esp
.L080504AD:
	subl      $12, %esp
	pushl     %ebx
	call      _ZN7acommon19DictInfoEnumeration4nextEv
.L080504B6:
	addl      $16, %esp
	testl     %eax, %eax
	jne       .L080504A0
.L080504BD:
	testl     %ebx, %ebx
	je        .L080504D9
.L080504C1:
	movl      (%ebx), %eax
	movl      4(%eax), %eax
	cmpl      $_ZN7acommon19DictInfoEnumerationD0Ev, %eax
	jne       .L080504E0
.L080504CD:
	subl      $12, %esp
	pushl     %ebx
	call      _ZdlPv
.L080504D6:
	addl      $16, %esp
.L080504D9:
	addl      $8, %esp
	popl      %ebx
	ret       
.L080504DE:
	.p2align 4,,10
	.p2align 3
.L080504E0:
	subl      $12, %esp
	pushl     %ebx
	call      *%eax
.L080504E6:
	addl      $16, %esp
	addl      $8, %esp
	popl      %ebx
	ret       
	.size	_Z5dictsv, .-_Z5dictsv
# ----------------------
.L080504EE:
	.p2align 4,,10
	.p2align 3
# ----------------------
	.globl	_Z14list_availablePFN7acommon8PosibErrIPNS_21StringPairEnumerationEEEPNS_6ConfigEE
	.type	_Z14list_availablePFN7acommon8PosibErrIPNS_21StringPairEnumerationEEEPNS_6ConfigEE, @function
_Z14list_availablePFN7acommon8PosibErrIPNS_21StringPairEnumerationEEEPNS_6ConfigEE:
	pushl     %edi
	pushl     %esi
	pushl     %ebx
	subl      $32, %esp
	leal      24(%esp), %esi
	subl      $8, %esp
	pushl     options
	pushl     %esi
	call      *64(%esp)
.L08050508:
	movl      36(%esp), %eax
	addl      $12, %esp
	testl     %eax, %eax
	jne       .L08050590
.L08050513:
	movl      28(%esp), %ebx
	subl      $12, %esp
	pushl     %esi
	call      _ZN7acommon12PosibErrBase7destroyEv
.L08050520:
	addl      $16, %esp
	leal      8(%esp), %esi
	jmp       .L08050542
.L08050529:
	.p2align 4
.L08050530:
	subl      $4, %esp
	pushl     %eax
	pushl     %edi
	pushl     $.LC08063E85
	call      printf
.L0805053F:
	addl      $16, %esp
.L08050542:
	subl      $12, %esp
	movl      (%ebx), %eax
	pushl     %ebx
	call      *(%eax)
.L0805054A:
	addl      $16, %esp
	testb     %al, %al
	jne       .L08050580
.L08050551:
	movl      (%ebx), %eax
	subl      $8, %esp
	pushl     %ebx
	pushl     %esi
	call      *4(%eax)
.L0805055B:
	movl      20(%esp), %edi
	addl      $12, %esp
	movl      12(%esp), %eax
	cmpb      $0, (%eax)
	je        .L08050530
.L0805056B:
	subl      $8, %esp
	pushl     %eax
	pushl     $.LC08063D1D
	call      dgettext
.L08050579:
	addl      $16, %esp
	jmp       .L08050530
.L0805057E:
	.p2align 4,,10
	.p2align 3
.L08050580:
	subl      $12, %esp
	movl      (%ebx), %eax
	pushl     %ebx
	call      *20(%eax)
.L08050589:
	addl      $48, %esp
	popl      %ebx
	popl      %esi
	popl      %edi
	ret       
.L08050590:
	movl      (%eax), %ecx
	movb      $1, 4(%eax)
	subl      $8, %esp
	movl      $-1, %edx
	movl      (%ecx), %eax
	pushl     %edx
	pushl     %eax
	call      _Z11print_errorN7acommon10ParmStringE
.L080505A7:
	movl      $1, (%esp)
	call      exit
	.size	_Z14list_availablePFN7acommon8PosibErrIPNS_21StringPairEnumerationEEEPNS_6ConfigEE, .-_Z14list_availablePFN7acommon8PosibErrIPNS_21StringPairEnumerationEEEPNS_6ConfigEE
# ----------------------
.L080505B3:
	.p2align 4
# ----------------------
	.globl	_Z7filtersv
	.type	_Z7filtersv, @function
_Z7filtersv:
	subl      $24, %esp
	pushl     options
	call      _ZN7acommon16load_all_filtersEPNS_6ConfigE
.L080505CE:
	movl      $_ZN7acommon17available_filtersEPNS_6ConfigE, (%esp)
	call      _Z14list_availablePFN7acommon8PosibErrIPNS_21StringPairEnumerationEEEPNS_6ConfigEE
.L080505DA:
	addl      $28, %esp
	ret       
	.size	_Z7filtersv, .-_Z7filtersv
# ----------------------
.L080505DE:
	.p2align 4,,10
	.p2align 3
# ----------------------
	.globl	_Z5modesv
	.type	_Z5modesv, @function
_Z5modesv:
	subl      $24, %esp
	pushl     $_ZN7acommon22available_filter_modesEPNS_6ConfigE
	call      _Z14list_availablePFN7acommon8PosibErrIPNS_21StringPairEnumerationEEEPNS_6ConfigEE
.L080505ED:
	addl      $28, %esp
	ret       
	.size	_Z5modesv, .-_Z5modesv
# ----------------------
.L080505F1:
	.p2align 4
# ----------------------
	.globl	_Z11trim_wspacePc
	.type	_Z11trim_wspacePc, @function
_Z11trim_wspacePc:
	pushl     %ebx
	subl      $20, %esp
	movl      28(%esp), %ebx
	pushl     %ebx
	call      strlen
.L0805060E:
	leal      -1(%eax), %edx
	addl      $16, %esp
	.p2align 4,,10
	.p2align 3
.L08050618:
	movzbl    (%ebx), %eax
	cmpb      $32, %al
	je        .L08050650
.L0805061F:
	subl      $9, %eax
	cmpb      $4, %al
	jbe       .L08050650
.L08050626:
	testl     %edx, %edx
	movl      %edx, %ecx
	jle       .L0805063D
.L0805062C:
	movzbl    (%ebx,%edx), %eax
	movl      %edx, %ecx
	cmpb      $32, %al
	je        .L08050660
.L08050636:
	subl      $9, %eax
	cmpb      $4, %al
	jbe       .L08050660
.L0805063D:
	movb      $0, 1(%ebx,%ecx)
	addl      $8, %esp
	movl      %ebx, %eax
	popl      %ebx
	ret       
.L08050649:
	.p2align 4
.L08050650:
	addl      $1, %ebx
	subl      $1, %edx
	jmp       .L08050618
.L08050658:
	.p2align 4
.L08050660:
	subl      $1, %edx
	jne       .L0805062C
.L08050665:
	xorl      %ecx, %ecx
	movl      %ebx, %eax
	movb      $0, 1(%ebx,%ecx)
	addl      $8, %esp
	popl      %ebx
	ret       
	.size	_Z11trim_wspacePc, .-_Z11trim_wspacePc
# ----------------------
.L08050673:
	.p2align 4
# ----------------------
	.globl	_Z13get_word_pairPcRS_S0_
	.type	_Z13get_word_pairPcRS_S0_, @function
_Z13get_word_pairPcRS_S0_:
	pushl     %esi
	pushl     %ebx
	subl      $12, %esp
	movl      24(%esp), %esi
	movl      32(%esp), %ebx
	pushl     $44
	pushl     %esi
	call      strchr
.L08050695:
	addl      $16, %esp
	testl     %eax, %eax
	movl      %eax, (%ebx)
	je        .L080506D0
.L0805069E:
	movb      $0, (%eax)
	addl      $1, (%ebx)
	subl      $12, %esp
	pushl     %esi
	call      _Z11trim_wspacePc
.L080506AD:
	movl      36(%esp), %edx
	movl      %eax, (%edx)
	popl      %eax
	pushl     (%ebx)
	call      _Z11trim_wspacePc
.L080506BB:
	addl      $16, %esp
	movl      %eax, (%ebx)
	movl      $1, %eax
	addl      $4, %esp
	popl      %ebx
	popl      %esi
	ret       
.L080506CB:
	.p2align 4,,10
	.p2align 3
.L080506D0:
	subl      $8, %esp
	movl      $-1, %ebx
	pushl     $.LC08063D3A
	pushl     $.LC08063D1D
	call      dgettext
.L080506E7:
	popl      %edx
	popl      %esi
	pushl     %ebx
	pushl     %eax
	call      _Z11print_errorN7acommon10ParmStringE
.L080506F0:
	addl      $16, %esp
	xorl      %eax, %eax
	addl      $4, %esp
	popl      %ebx
	popl      %esi
	ret       
	.size	_Z13get_word_pairPcRS_S0_, .-_Z13get_word_pairPcRS_S0_
# ----------------------
.L080506FB:
	.p2align 4,,10
	.p2align 3
# ----------------------
	.globl	_Z14print_elementsPK14AspellWordList
	.type	_Z14print_elementsPK14AspellWordList, @function
_Z14print_elementsPK14AspellWordList:
	pushl     %ebp
	pushl     %edi
	pushl     %esi
	pushl     %ebx
	subl      $56, %esp
	pushl     76(%esp)
	call      aspell_word_list_elements
.L08050710:
	movl      $_ZTVN7acommon6StringE+8, 32(%esp)
	movl      $0, 36(%esp)
	movl      %eax, %esi
	movl      $0, 40(%esp)
	movl      $0, 44(%esp)
	addl      $16, %esp
	leal      16(%esp), %edi
	movl      $0, 12(%esp)
	.p2align 4,,10
	.p2align 3
.L08050748:
	subl      $12, %esp
	pushl     %esi
	call      aspell_string_enumeration_next
.L08050751:
	addl      $16, %esp
	testl     %eax, %eax
	movl      %eax, %ebp
	je        .L0805088E
.L0805075E:
	movl      24(%esp), %edx
	addl      $1, 12(%esp)
	testl     %edx, %edx
	je        .L08050917
.L0805076F:
	movzbl    (%ebp), %eax
	testb     %al, %al
	je        .L080507B7
.L08050777:
	movl      28(%esp), %ecx
	subl      $1, %ecx
	cmpl      %ecx, %edx
	jne       .L0805079F
.L08050782:
	jmp       .L08050850
.L08050787:
	.p2align 4
.L08050790:
	movl      28(%esp), %ebx
	leal      -1(%ebx), %ecx
	cmpl      %ecx, %edx
	je        .L08050850
.L0805079F:
	movb      %al, (%edx)
	movl      24(%esp), %eax
	addl      $1, %ebp
	leal      1(%eax), %edx
	movl      %edx, 24(%esp)
	movzbl    (%ebp), %eax
	testb     %al, %al
	jne       .L08050790
.L080507B7:
	movl      28(%esp), %eax
	subl      $1, %eax
	cmpl      %eax, %edx
	je        .L08050850
.L080507C6:
	testl     %edx, %edx
	je        .L08050900
.L080507CE:
	movl      $.LC08063D48, %ecx
	movl      $44, %ebx
	jmp       .L080507EB
.L080507DA:
	.p2align 4,,10
	.p2align 3
.L080507E0:
	movl      28(%esp), %eax
	subl      $1, %eax
	cmpl      %eax, %edx
	je        .L08050828
.L080507EB:
	addl      $1, %ecx
	movb      %bl, (%edx)
	movl      24(%esp), %eax
	movzbl    (%ecx), %ebx
	leal      1(%eax), %edx
	testb     %bl, %bl
	movl      %edx, 24(%esp)
	jne       .L080507E0
.L08050802:
	movl      28(%esp), %eax
	movl      %ecx, %ebp
	subl      $1, %eax
	cmpl      %eax, %edx
	jne       .L08050748
.L08050813:
	subl      $12, %esp
	pushl     %ecx
	call      strlen
.L0805081C:
	addl      $16, %esp
	jmp       .L08050836
.L08050821:
	.p2align 4,,10
	.p2align 3
.L08050828:
	subl      $12, %esp
	movl      %ecx, %ebp
	pushl     %ecx
	call      strlen
.L08050833:
	addl      $16, %esp
.L08050836:
	subl      $4, %esp
	pushl     %eax
	pushl     %ebp
	pushl     %edi
	call      _ZN7acommon6String6appendEPKvj
.L08050841:
	addl      $16, %esp
	jmp       .L08050748
.L08050849:
	.p2align 4
.L08050850:
	subl      $12, %esp
	pushl     %ebp
	call      strlen
.L08050859:
	addl      $12, %esp
	pushl     %eax
	pushl     %ebp
	pushl     %edi
	call      _ZN7acommon6String6appendEPKvj
.L08050864:
	movl      40(%esp), %edx
	addl      $16, %esp
	testl     %edx, %edx
	je        .L08050900
.L08050873:
	movl      28(%esp), %eax
	subl      $1, %eax
	cmpl      %eax, %edx
	jne       .L080507CE
.L08050882:
	movl      $2, %eax
	movl      $.LC08063D48, %ebp
	jmp       .L08050836
.L0805088E:
	movl      20(%esp), %edx
	movl      24(%esp), %eax
	subl      %edx, %eax
	leal      -2(%eax), %esi
	movl      28(%esp), %eax
	subl      %edx, %eax
	cmpl      %eax, %esi
	jl        .L080508B6
.L080508A5:
	subl      $8, %esp
	pushl     %esi
	pushl     %edi
	call      _ZN7acommon6String9reserve_iEj
.L080508AF:
	movl      36(%esp), %edx
	addl      $16, %esp
.L080508B6:
	addl      %edx, %esi
	subl      $12, %esp
	movl      %esi, 36(%esp)
	pushl     %edi
	call      _ZNK7acommon6String5c_strEv
.L080508C5:
	pushl     %eax
	pushl     32(%esp)
	pushl     $.LC08063F3B
	pushl     $_ZN7acommon4COUTE+8
	call      _ZN7acommon7OStream6printfEPKcz
.L080508D9:
	movl      52(%esp), %eax
	movl      $_ZTVN7acommon6StringE+8, 48(%esp)
	addl      $32, %esp
	testl     %eax, %eax
	je        .L080508F8
.L080508EC:
	subl      $12, %esp
	pushl     %eax
	call      free
.L080508F5:
	addl      $16, %esp
.L080508F8:
	addl      $44, %esp
	popl      %ebx
	popl      %esi
	popl      %edi
	popl      %ebp
	ret       
.L08050900:
	subl      $8, %esp
	pushl     $0
	pushl     %edi
	call      _ZN7acommon6String9reserve_iEj
.L0805090B:
	movl      40(%esp), %edx
	addl      $16, %esp
	jmp       .L08050873
.L08050917:
	subl      $8, %esp
	pushl     $0
	pushl     %edi
	call      _ZN7acommon6String9reserve_iEj
.L08050922:
	movl      40(%esp), %edx
	addl      $16, %esp
	jmp       .L0805076F
	.size	_Z14print_elementsPK14AspellWordList, .-_Z14print_elementsPK14AspellWordList
# ----------------------
.L0805092E:
	.p2align 4,,10
	.p2align 3
# ----------------------
	.globl	_Z11new_checkerP13AspellSpellerR12StatusFunInf
	.type	_Z11new_checkerP13AspellSpellerR12StatusFunInf, @function
_Z11new_checkerP13AspellSpellerR12StatusFunInf:
	pushl     %ebx
	subl      $24, %esp
	leal      8(%esp), %ebx
	subl      $8, %esp
	pushl     40(%esp)
	pushl     %ebx
	call      _ZN7acommon20new_document_checkerEPNS_7SpellerE
.L08050945:
	movl      20(%esp), %eax
	movl      %eax, 12(%esp)
	addl      $12, %esp
	testl     %eax, %eax
	je        .L080509B0
.L08050954:
	movl      8(%eax), %edx
	movl      12(%esp), %ecx
	testl     %edx, %edx
	movl      %ecx, 4(%esp)
	jne       .L080509B6
.L08050963:
	cmpb      $0, 4(%eax)
	je        .L080509A0
.L08050969:
	subl      $12, %esp
	pushl     %ebx
	call      _ZN7acommon12PosibErrBase3delEv
.L08050972:
	movl      16(%esp), %eax
	addl      $16, %esp
	testl     %eax, %eax
	jne       .L080509B6
.L0805097D:
	movl      4(%esp), %ebx
.L08050981:
	subl      $4, %esp
	pushl     40(%esp)
	pushl     $_Z10status_funPvN7acommon5TokenEi
	pushl     %ebx
	call      _ZN7acommon15DocumentChecker14set_status_funEPFvPvNS_5TokenEiES1_
.L08050993:
	addl      $40, %esp
	movl      %ebx, %eax
	popl      %ebx
	ret       
.L0805099A:
	.p2align 4,,10
	.p2align 3
.L080509A0:
	subl      $12, %esp
	pushl     %ebx
	call      _ZNK7acommon12PosibErrBase10handle_errEv
.L080509A9:
	addl      $16, %esp
	jmp       .L08050969
.L080509AE:
	.p2align 4,,10
	.p2align 3
.L080509B0:
	movl      12(%esp), %ebx
	jmp       .L08050981
.L080509B6:
	movl      (%eax), %ecx
	movb      $1, 4(%eax)
	orl       $-1, %edx
	movl      (%ecx), %eax
	pushl     %ecx
	pushl     %ecx
	pushl     %edx
	pushl     %eax
	call      _Z11print_errorN7acommon10ParmStringE
.L080509CA:
	movl      $1, (%esp)
	call      exit
	.size	_Z11new_checkerP13AspellSpellerR12StatusFunInf, .-_Z11new_checkerP13AspellSpellerR12StatusFunInf
# ----------------------
.L080509D6:
	.p2align 4
# ----------------------
	.globl	_ZN7Mapping9to_aspellEv
	.type	_ZN7Mapping9to_aspellEv, @function
_ZN7Mapping9to_aspellEv:
	pushl     %edi
	movl      8(%esp), %edx
	xorl      %eax, %eax
	leal      4(%edx), %edi
	movl      %edx, %ecx
	movl      $0, (%edx)
	movl      $0, 1032(%edx)
	andl      $-4, %edi
	subl      %edi, %ecx
	addl      $1036, %ecx
	shrl      $2, %ecx
	rep stosl     
	movb      $105, 1(%edx)
	movl      $1, 432(%edx)
	movl      $1, 140(%edx)
	movl      $1, 52(%edx)
	movb      $73, 2(%edx)
	movl      $2, 304(%edx)
	movb      $114, 3(%edx)
	movl      $3, 468(%edx)
	movb      $82, 4(%edx)
	movl      $4, 340(%edx)
	movb      $97, 5(%edx)
	movl      $5, 272(%edx)
	movl      $5, 400(%edx)
	movb      $108, 6(%edx)
	movl      $6, 316(%edx)
	movl      $6, 444(%edx)
	movb      $98, 8(%edx)
	movl      $8, 404(%edx)
	movl      $8, 276(%edx)
	movl      $8, 24(%edx)
	movb      $120, 7(%edx)
	movl      $7, 492(%edx)
	movl      $7, 364(%edx)
	popl      %edi
	ret       
	.size	_ZN7Mapping9to_aspellEv, .-_ZN7Mapping9to_aspellEv
# ----------------------
.L08050ABE:
	.p2align 4,,10
	.p2align 3
# ----------------------
	.globl	_ZN7Mapping9to_ispellEv
	.type	_ZN7Mapping9to_ispellEv, @function
_ZN7Mapping9to_ispellEv:
	pushl     %edi
	movl      8(%esp), %edx
	xorl      %eax, %eax
	leal      4(%edx), %edi
	movl      %edx, %ecx
	movl      $0, (%edx)
	movl      $0, 1032(%edx)
	andl      $-4, %edi
	subl      %edi, %ecx
	addl      $1036, %ecx
	shrl      $2, %ecx
	rep stosl     
	movb      $32, 1(%edx)
	movl      $1, 140(%edx)
	movl      $1, 52(%edx)
	movb      $65, 2(%edx)
	movl      $2, 272(%edx)
	movl      $2, 400(%edx)
	movb      $82, 3(%edx)
	movl      $4, 340(%edx)
	movl      $3, 468(%edx)
	movb      $69, 4(%edx)
	movl      $4, 288(%edx)
	movl      $3, 416(%edx)
	movb      $73, 5(%edx)
	movl      $5, 304(%edx)
	movl      $5, 432(%edx)
	movb      $85, 6(%edx)
	movl      $6, 352(%edx)
	movl      $6, 480(%edx)
	movb      $81, 8(%edx)
	movl      $8, 336(%edx)
	movl      $8, 464(%edx)
	movl      $8, 24(%edx)
	movb      $88, 7(%edx)
	movl      $7, 364(%edx)
	movl      $7, 492(%edx)
	popl      %edi
	ret       
	.size	_ZN7Mapping9to_ispellEv, .-_ZN7Mapping9to_ispellEv
# ----------------------
.L08050BB2:
	.p2align 4
# ----------------------
	.globl	_Z4listv
	.type	_Z4listv, @function
_Z4listv:
	pushl     %ebp
	pushl     %edi
	pushl     %esi
	pushl     %ebx
	subl      $72, %esp
	pushl     options
	call      new_aspell_speller
.L08050BD2:
	movl      %eax, (%esp)
	movl      %eax, %ebx
	call      aspell_error
.L08050BDC:
	addl      $16, %esp
	testl     %eax, %eax
	jne       .L08050DE5
.L08050BE7:
	subl      $12, %esp
	pushl     %ebx
	call      to_aspell_speller
.L08050BF0:
	movl      %eax, %esi
	movl      $72, (%esp)
	movl      %eax, 28(%esp)
	call      _Znwj
.L08050C02:
	movl      $64, (%esp)
	pushl     $0
	movl      %eax, %ebx
	pushl     stdin
	pushl     %esi
	pushl     %eax
	call      _ZN13CheckerStringC1EP13AspellSpellerP8_IO_FILES3_i
.L08050C1A:
	movl      state, %ebp
	addl      $32, %esp
	testl     %ebp, %ebp
	jne       .L08050E13
.L08050C2B:
	movl      %ebx, state
	movl      $_ZTVN7acommon6StringE+8, 32(%esp)
	movl      %ebx, %eax
	movl      $0, 36(%esp)
	movl      $0, 40(%esp)
	leal      24(%esp), %esi
	movl      $0, 44(%esp)
	jmp       .L08050CD5
.L08050C59:
	.p2align 4
.L08050C60:
	subl      $4, %esp
	pushl     %ebx
	pushl     %edi
	pushl     %ebp
	call      memcpy
.L08050C6B:
	addl      56(%esp), %ebx
	movl      %ebx, 56(%esp)
	addl      $16, %esp
	movl      36(%esp), %edi
	testl     %edi, %edi
	je        .L08050DB0
.L08050C82:
	movb      $0, (%ebx)
	movl      36(%esp), %eax
	testl     %eax, %eax
	je        .L08050D40
.L08050C91:
	movl      40(%esp), %eax
	movb      $0, (%eax)
	movl      36(%esp), %eax
	movl      %eax, %edx
.L08050C9E:
	movl      %eax, 24(%esp)
	movl      40(%esp), %eax
	subl      $8, %esp
	subl      %edx, %eax
	movl      %eax, 36(%esp)
	movl      _ZN7acommon4COUTE+8, %eax
	pushl     %esi
	pushl     $_ZN7acommon4COUTE+8
	call      *4(%eax)
.L08050CBD:
	movl      _ZN7acommon4COUTE+8, %eax
	popl      %edx
	popl      %ecx
	pushl     $10
	pushl     $_ZN7acommon4COUTE+8
	call      *(%eax)
.L08050CCD:
	movl      state, %eax
	addl      $16, %esp
.L08050CD5:
	subl      $12, %esp
	pushl     %eax
	call      _ZN13CheckerString16next_misspellingEv
.L08050CDE:
	addl      $16, %esp
	testb     %al, %al
	je        .L08050D50
.L08050CE5:
	movl      state, %eax
	movl      36(%esp), %ebp
	movl      20(%eax), %ebx
	movl      16(%eax), %edi
	movl      44(%esp), %eax
	movl      %ebp, 40(%esp)
	subl      %ebp, %eax
	cmpl      %eax, %ebx
	jl        .L08050C60
.L08050D06:
	subl      $8, %esp
	pushl     %ebx
	leal      44(%esp), %eax
	pushl     %eax
	call      _ZN7acommon6String9reserve_iEj
.L08050D14:
	movl      52(%esp), %ebp
	addl      $16, %esp
	movl      40(%esp), %eax
	subl      %ebp, %eax
	je        .L08050C60
.L08050D27:
	subl      $4, %esp
	pushl     %eax
	leal      (%ebp,%ebx), %eax
	pushl     %ebp
	pushl     %eax
	call      memmove
.L08050D36:
	addl      $16, %esp
	jmp       .L08050C60
.L08050D3E:
	.p2align 4,,10
	.p2align 3
.L08050D40:
	xorl      %edx, %edx
	movl      $.LC08063D11, %eax
	jmp       .L08050C9E
.L08050D4C:
	.p2align 4,,10
	.p2align 3
.L08050D50:
	movl      state, %ebx
	testl     %ebx, %ebx
	je        .L08050D6E
.L08050D5A:
	subl      $12, %esp
	pushl     %ebx
	call      _ZN13CheckerStringD1Ev
.L08050D63:
	movl      %ebx, (%esp)
	call      _ZdlPv
.L08050D6B:
	addl      $16, %esp
.L08050D6E:
	subl      $12, %esp
	movl      $0, state
	pushl     24(%esp)
	call      delete_aspell_speller
.L08050D84:
	movl      52(%esp), %eax
	movl      $_ZTVN7acommon6StringE+8, 48(%esp)
	addl      $16, %esp
	testl     %eax, %eax
	je        .L08050DA3
.L08050D97:
	subl      $12, %esp
	pushl     %eax
	call      free
.L08050DA0:
	addl      $16, %esp
.L08050DA3:
	addl      $60, %esp
	popl      %ebx
	popl      %esi
	popl      %edi
	popl      %ebp
	ret       
.L08050DAB:
	.p2align 4,,10
	.p2align 3
.L08050DB0:
	subl      $8, %esp
	pushl     $0
	leal      44(%esp), %eax
	pushl     %eax
	call      _ZN7acommon6String9reserve_iEj
.L08050DBF:
	addl      $16, %esp
	movl      36(%esp), %ebx
	testl     %ebx, %ebx
	jne       .L08050E0A
.L08050DCA:
	subl      $8, %esp
	pushl     $0
	leal      44(%esp), %eax
	pushl     %eax
	call      _ZN7acommon6String9reserve_iEj
.L08050DD9:
	movl      56(%esp), %ebx
	addl      $16, %esp
	jmp       .L08050C82
.L08050DE5:
	subl      $12, %esp
	pushl     %ebx
	movl      $-1, %ebx
	call      aspell_error_message
.L08050DF3:
	movl      %eax, %ecx
	popl      %eax
	popl      %edx
	pushl     %ebx
	pushl     %ecx
	call      _Z11print_errorN7acommon10ParmStringE
.L08050DFE:
	movl      $1, (%esp)
	call      exit
.L08050E0A:
	movl      40(%esp), %ebx
	jmp       .L08050C82
.L08050E13:
	call      _ZN7acommon8StackPtrI13CheckerStringE5resetEPS1_.part.68
	.size	_Z4listv, .-_Z4listv
# ----------------------
.L08050E18:
	.p2align 4
# ----------------------
	.globl	_Z5convtv
	.type	_Z5convtv, @function
_Z5convtv:
	pushl     %ebp
	pushl     %edi
	movl      $.LC08063D4B, %ebp
	pushl     %esi
	pushl     %ebx
	subl      $152, %esp
	movl      args, %ebx
	movl      $0, 104(%esp)
	movl      $0, 108(%esp)
	movl      $0, 112(%esp)
	movl      $0, 116(%esp)
	movl      $_ZTVN7acommon6StringE+8, 120(%esp)
	movl      $0, 124(%esp)
	movl      $0, 128(%esp)
	movl      $0, 132(%esp)
	movl      $0, 136(%esp)
	movl      $_ZTVN7acommon6StringE+8, 56(%esp)
	movl      $0, 60(%esp)
	movl      $0, 64(%esp)
	movl      $0, 68(%esp)
	movl      $_ZTVN7acommon6StringE+8, 72(%esp)
	movl      $0, 76(%esp)
	movl      $0, 80(%esp)
	movl      $0, 84(%esp)
	pushl     %ebx
	call      _ZNK7acommon6String5c_strEv
.L08050ECC:
	movl      %eax, 92(%esp)
	movl      8(%ebx), %eax
	subl      4(%ebx), %eax
	movl      %eax, 96(%esp)
	popl      %eax
	popl      %edx
	leal      52(%esp), %eax
	pushl     %eax
	leal      88(%esp), %ebx
	pushl     %ebx
	call      _ZN7acommon16fix_encoding_strERKNS_10ParmStringERNS_6StringE
.L08050EEB:
	movl      args, %edi
	movl      %eax, %esi
	leal      16(%edi), %eax
	movl      %eax, (%esp)
	call      _ZNK7acommon6String5c_strEv
.L08050EFE:
	movl      %eax, 92(%esp)
	movl      24(%edi), %eax
	subl      20(%edi), %eax
	movl      %eax, 96(%esp)
	popl      %ecx
	popl      %edi
	movl      %ebp, %edi
	leal      68(%esp), %eax
	pushl     %eax
	pushl     %ebx
	call      _ZN7acommon16fix_encoding_strERKNS_10ParmStringERNS_6StringE
.L08050F1B:
	movl      $6, %ecx
	movl      %eax, %edx
	repz cmpsb     
	movl      %ebp, %edi
	seta      %cl
	movl      %ecx, %esi
	setb      %cl
	addl      $16, %esp
	movl      %esi, %eax
	movl      %edx, %esi
	cmpb      %cl, %al
	movl      $6, %ecx
	je        .L08051210
.L08050F42:
	repz cmpsb     
	seta      %al
	setb      %dl
	subl      %edx, %eax
	movsbl    %al, %eax
	cmpl      $1, %eax
	sbbl      %edi, %edi
	andl      $2, %edi
.L08050F57:
	movl      args, %edx
	movl      args+4, %eax
	subl      %edx, %eax
	cmpl      $47, %eax
	jbe       .L08051340
.L08050F6D:
	movl      36(%edx), %eax
	cmpl      40(%edx), %eax
	je        .L08050F96
.L08050F75:
	.p2align 4,,10
	.p2align 3
.L08050F78:
	movsbl    (%eax), %edx
	leal      -65(%edx), %ecx
	cmpl      $25, %ecx
	ja        .L08050F86
.L08050F83:
	addl      $32, %edx
.L08050F86:
	movb      %dl, (%eax)
	movl      args, %edx
	addl      $1, %eax
	cmpl      %eax, 40(%edx)
	jne       .L08050F78
.L08050F96:
	leal      32(%esp), %ebp
	movl      $.LC08063D51, 76(%esp)
	movl      $-1, 80(%esp)
	movl      $.LC08063D56, 36(%esp)
	movl      $-1, 40(%esp)
	pushl     %ebx
	leal      40(%esp), %esi
	pushl     %esi
	pushl     options
	pushl     %ebp
	call      _ZN7acommon6Config7replaceERKNS_10ParmStringES3_
.L08050FCC:
	pushl     %ebp
	call      _ZN7acommon12PosibErrBase7destroyEv
.L08050FD2:
	popl      %ecx
	popl      %eax
	movl      args, %eax
	pushl     $.LC08063D2D
	addl      $32, %eax
	pushl     %eax
	call      _ZN7acommoneqERKNS_6StringEPKc
.L08050FE7:
	addl      $16, %esp
	testb     %al, %al
	je        .L08051220
.L08050FF2:
	movl      $.LC08063D60, 76(%esp)
	movl      $-1, 80(%esp)
	movl      $.LC08063D56, 36(%esp)
.L0805100A:
	movl      $-1, 40(%esp)
	pushl     %ebx
	pushl     %esi
	pushl     options
	pushl     %ebp
	call      _ZN7acommon6Config7replaceERKNS_10ParmStringES3_
.L08051020:
	pushl     %ebp
	call      _ZN7acommon12PosibErrBase7destroyEv
.L08051026:
	movl      args, %edx
	addl      $16, %esp
.L0805102F:
	leal      16(%edx), %eax
	subl      $12, %esp
	movl      %edx, 24(%esp)
	pushl     %eax
	call      _ZNK7acommon6String5c_strEv
.L0805103F:
	movl      28(%esp), %edx
	movl      %eax, 92(%esp)
	movl      24(%edx), %eax
	subl      20(%edx), %eax
	movl      args, %edx
	movl      %eax, 96(%esp)
	movl      %edx, (%esp)
	movl      %edx, 28(%esp)
	call      _ZNK7acommon6String5c_strEv
.L08051063:
	movl      28(%esp), %edx
	movl      %eax, 52(%esp)
	movl      8(%edx), %eax
	subl      4(%edx), %eax
	movl      %eax, 56(%esp)
	popl      %eax
	popl      %edx
	pushl     %edi
	pushl     %ebx
	pushl     %esi
	pushl     options
	leal      116(%esp), %eax
	pushl     %eax
	pushl     %ebp
	call      _ZN7acommon4Conv5setupERKNS_6ConfigERKNS_10ParmStringES6_NS_9NormalizeE
.L0805108B:
	movl      60(%esp), %eax
	movl      %eax, 56(%esp)
	addl      $28, %esp
	testl     %eax, %eax
	je        .L0805109E
.L0805109A:
	addl      $1, 8(%eax)
.L0805109E:
	subl      $12, %esp
	pushl     %ebp
	call      _ZN7acommon12PosibErrBase7destroyEv
.L080510A7:
	movl      44(%esp), %eax
	addl      $16, %esp
	testl     %eax, %eax
	jne       .L080513E5
.L080510B6:
	subl      $12, %esp
	leal      40(%esp), %eax
	pushl     %eax
	call      _ZN7acommon12PosibErrBase7destroyEv
.L080510C3:
	movl      $_ZTVN7acommon6StringE+8, 92(%esp)
	movl      $0, 96(%esp)
	xorl      %eax, %eax
	movl      $0, 104(%esp)
	addl      $16, %esp
	leal      108(%esp), %edi
	jmp       .L08051148
.L080510E6:
	.p2align 4
.L080510F0:
	movl      (%edx), %ecx
	pushl     %edi
	pushl     $-1
	pushl     %eax
	pushl     %edx
	call      *4(%ecx)
.L080510FA:
	addl      $16, %esp
	movl      112(%esp), %ebp
	testl     %ebp, %ebp
	je        .L080511E3
.L08051109:
	movl      116(%esp), %eax
	movb      $0, (%eax)
	movl      112(%esp), %eax
.L08051114:
	movl      %eax, 36(%esp)
	movl      _ZN7acommon4COUTE+8, %eax
	subl      $8, %esp
	movl      $-1, 48(%esp)
	pushl     %esi
	pushl     $_ZN7acommon4COUTE+8
	call      *4(%eax)
.L08051131:
	popl      %eax
	popl      %edx
	movl      _ZN7acommon4COUTE+8, %eax
	pushl     $10
	pushl     $_ZN7acommon4COUTE+8
	call      *(%eax)
.L08051141:
	addl      $16, %esp
	movl      80(%esp), %eax
.L08051148:
	movl      %eax, 84(%esp)
	movsbl    _ZN7acommon3CINE+4, %eax
	subl      $4, %esp
	pushl     %eax
	movl      _ZN7acommon3CINE, %eax
	pushl     %ebx
	pushl     $_ZN7acommon3CINE
	call      *(%eax)
.L08051164:
	addl      $16, %esp
	testb     %al, %al
	je        .L08051290
.L0805116F:
	movl      80(%esp), %eax
	testl     %eax, %eax
	je        .L08051280
.L0805117B:
	movl      84(%esp), %eax
	movb      $0, (%eax)
	movl      80(%esp), %eax
.L08051186:
	movl      92(%esp), %ebp
	testl     %ebp, %ebp
	je        .L08051114
.L0805118E:
	movl      112(%esp), %edx
	movl      %edx, 116(%esp)
	movl      28(%ebp), %edx
	testl     %edx, %edx
	jne       .L080510F0
.L080511A1:
	movl      96(%esp), %edx
	movl      %edx, 100(%esp)
	movl      8(%ebp), %edx
	movl      (%edx), %ecx
	movl      %ecx, 12(%esp)
	leal      96(%esp), %ecx
	pushl     %ecx
	pushl     $-1
	pushl     %eax
	pushl     %edx
	movl      28(%esp), %eax
	call      *12(%eax)
.L080511C2:
	movl      20(%ebp), %eax
	movl      (%eax), %edx
	pushl     %edi
	pushl     120(%esp)
	pushl     120(%esp)
	pushl     %eax
	call      *12(%edx)
.L080511D4:
	addl      $32, %esp
	movl      112(%esp), %ebp
	testl     %ebp, %ebp
	jne       .L08051109
.L080511E3:
	subl      $8, %esp
	pushl     $0
	pushl     %edi
	call      _ZN7acommon6String9reserve_iEj
.L080511EE:
	addl      $16, %esp
	movl      112(%esp), %ecx
	testl     %ecx, %ecx
	jne       .L08051109
.L080511FD:
	subl      $8, %esp
	pushl     $0
	pushl     %edi
	call      _ZN7acommon6String9reserve_iEj
.L08051208:
	addl      $16, %esp
	jmp       .L08051109
.L08051210:
	repz cmpsb     
	setne     %al
	movzbl    %al, %eax
	movl      %eax, %edi
	jmp       .L08050F57
.L0805121F:
	.p2align 4,,10
	.p2align 3
.L08051220:
	movl      args, %eax
	subl      $8, %esp
	pushl     $.LC08063D66
	addl      $32, %eax
	pushl     %eax
	call      _ZN7acommoneqERKNS_6StringEPKc
.L08051236:
	addl      $16, %esp
	testb     %al, %al
	jne       .L08051350
.L08051241:
	movl      args, %eax
	subl      $8, %esp
	pushl     $.LC08063D74
	addl      $32, %eax
	pushl     %eax
	call      _ZN7acommoneqERKNS_6StringEPKc
.L08051257:
	addl      $16, %esp
	testb     %al, %al
	je        .L0805135D
.L08051262:
	movl      $.LC08063D51, 76(%esp)
.L0805126A:
	movl      $-1, 80(%esp)
	movl      $.LC08063D6F, 36(%esp)
	jmp       .L0805100A
.L0805127F:
	.p2align 4,,10
	.p2align 3
.L08051280:
	movl      $.LC08063D11, %eax
	jmp       .L08051186
.L0805128A:
	.p2align 4,,10
	.p2align 3
.L08051290:
	movl      80(%esp), %eax
	movl      $_ZTVN7acommon6StringE+8, 76(%esp)
	testl     %eax, %eax
	je        .L080512AC
.L080512A0:
	subl      $12, %esp
	pushl     %eax
	call      free
.L080512A9:
	addl      $16, %esp
.L080512AC:
	movl      64(%esp), %eax
	movl      $_ZTVN7acommon6StringE+8, 60(%esp)
	testl     %eax, %eax
	je        .L080512C8
.L080512BC:
	subl      $12, %esp
	pushl     %eax
	call      free
.L080512C5:
	addl      $16, %esp
.L080512C8:
	movl      48(%esp), %eax
	movl      $_ZTVN7acommon6StringE+8, 44(%esp)
	testl     %eax, %eax
	je        .L080512E4
.L080512D8:
	subl      $12, %esp
	pushl     %eax
	call      free
.L080512E1:
	addl      $16, %esp
.L080512E4:
	movl      124(%esp), %ebx
	testl     %ebx, %ebx
	je        .L08051300
.L080512EC:
	subl      $12, %esp
	pushl     %ebx
	call      _ZN7acommon7ConvertD1Ev
.L080512F5:
	movl      %ebx, (%esp)
	call      _ZdlPv
.L080512FD:
	addl      $16, %esp
.L08051300:
	movl      112(%esp), %eax
	movl      $_ZTVN7acommon6StringE+8, 108(%esp)
	testl     %eax, %eax
	je        .L0805131C
.L08051310:
	subl      $12, %esp
	pushl     %eax
	call      free
.L08051319:
	addl      $16, %esp
.L0805131C:
	movl      96(%esp), %eax
	testl     %eax, %eax
	je        .L08051330
.L08051324:
	subl      $12, %esp
	pushl     %eax
	call      _ZdlPv
.L0805132D:
	addl      $16, %esp
.L08051330:
	addl      $140, %esp
	popl      %ebx
	popl      %esi
	popl      %edi
	popl      %ebp
	ret       
.L0805133B:
	.p2align 4,,10
	.p2align 3
.L08051340:
	leal      32(%esp), %ebp
	leal      36(%esp), %esi
	jmp       .L0805102F
.L0805134D:
	.p2align 4,,10
	.p2align 3
.L08051350:
	movl      $.LC08063D60, 76(%esp)
	jmp       .L0805126A
.L0805135D:
	movl      args, %edx
	subl      $12, %esp
	leal      32(%edx), %eax
	movl      %edx, 24(%esp)
	pushl     %eax
	call      _ZNK7acommon6String5c_strEv
.L08051373:
	movl      28(%esp), %edx
	movl      %eax, 92(%esp)
	movl      40(%edx), %eax
	subl      36(%edx), %eax
	movl      $.LC08063D7B, 52(%esp)
	movl      $-1, 56(%esp)
	movl      %eax, 96(%esp)
	pushl     %ebx
	pushl     %esi
	pushl     options
	pushl     %ebp
	call      _ZN7acommon6Config7replaceERKNS_10ParmStringES3_
.L080513A3:
	movl      60(%esp), %eax
	movl      %eax, 56(%esp)
	addl      $28, %esp
	testl     %eax, %eax
	je        .L080513B6
.L080513B2:
	addl      $1, 8(%eax)
.L080513B6:
	subl      $12, %esp
	pushl     %ebp
	call      _ZN7acommon12PosibErrBase7destroyEv
.L080513BF:
	movl      44(%esp), %eax
	addl      $16, %esp
	testl     %eax, %eax
	jne       .L080513E5
.L080513CA:
	subl      $12, %esp
	leal      40(%esp), %eax
	pushl     %eax
	call      _ZN7acommon12PosibErrBase7destroyEv
.L080513D7:
	movl      args, %edx
	addl      $16, %esp
	jmp       .L0805102F
.L080513E5:
	movl      (%eax), %ecx
	movb      $1, 4(%eax)
	subl      $8, %esp
	movl      $-1, %edx
	movl      (%ecx), %eax
	pushl     %edx
	pushl     %eax
	call      _Z11print_errorN7acommon10ParmStringE
.L080513FC:
	movl      $1, (%esp)
	call      exit
	.size	_Z5convtv, .-_Z5convtv
# ----------------------
.L08051408:
	.p2align 4
# ----------------------
	.globl	_Z6normlzv
	.type	_Z6normlzv, @function
_Z6normlzv:
	pushl     %ebp
	pushl     %edi
	pushl     %esi
	pushl     %ebx
	subl      $140, %esp
	leal      92(%esp), %eax
	leal      40(%esp), %ebp
	movl      $.LC08063D51, 92(%esp)
	movl      $-1, 96(%esp)
	movl      $.LC08063D56, 56(%esp)
	movl      $-1, 60(%esp)
	pushl     %eax
	leal      60(%esp), %eax
	pushl     %eax
	pushl     options
	pushl     %ebp
	call      _ZN7acommon6Config7replaceERKNS_10ParmStringES3_
.L08051454:
	pushl     %ebp
	call      _ZN7acommon12PosibErrBase7destroyEv
.L0805145A:
	movl      args, %eax
	movl      args+4, %edx
	addl      $16, %esp
	movl      $.LC08063D4B, 12(%esp)
	movl      $.LC08063D4B, 8(%esp)
	subl      %eax, %edx
	cmpl      $47, %edx
	ja        .L08051920
.L08051483:
	subl      $12, %esp
	pushl     %eax
	call      _ZNK7acommon6String5c_strEv
.L0805148C:
	movl      %eax, 16(%esp)
	addl      $16, %esp
.L08051493:
	movl      args, %ebx
	movl      args+4, %eax
	subl      %ebx, %eax
	sarl      $4, %eax
	cmpl      $2, %eax
	je        .L08051990
.L080514AC:
	cmpl      $4, %eax
	movl      $2, 4(%esp)
	leal      32(%esp), %esi
	je        .L08051AD0
.L080514C1:
	movl      (%esp), %eax
	movl      $0, 56(%esp)
	leal      28(%esp), %ebx
	movl      $0, 60(%esp)
	movl      $0, 64(%esp)
	subl      $8, %esp
	movl      $0, 76(%esp)
	movl      $_ZTVN7acommon6StringE+8, 80(%esp)
	movl      %eax, 48(%esp)
	movl      16(%esp), %eax
	movl      $0, 84(%esp)
	movl      $0, 88(%esp)
	movl      $0, 92(%esp)
	movl      $0, 96(%esp)
	movl      $0, 100(%esp)
	movl      $0, 104(%esp)
	movl      $0, 108(%esp)
	movl      $0, 112(%esp)
	movl      $_ZTVN7acommon6StringE+8, 116(%esp)
	movl      $0, 120(%esp)
	movl      $0, 124(%esp)
	movl      $0, 128(%esp)
	movl      $0, 132(%esp)
	movl      $-1, 52(%esp)
	movl      %eax, 40(%esp)
	movl      $-1, 44(%esp)
	pushl     $1
	pushl     %ebp
	pushl     %esi
	pushl     options
	leal      80(%esp), %eax
	pushl     %eax
	pushl     %ebx
	call      _ZN7acommon4Conv5setupERKNS_6ConfigERKNS_10ParmStringES6_NS_9NormalizeE
.L08051592:
	movl      56(%esp), %eax
	movl      %eax, 52(%esp)
	addl      $28, %esp
	testl     %eax, %eax
	je        .L080515A5
.L080515A1:
	addl      $1, 8(%eax)
.L080515A5:
	subl      $12, %esp
	pushl     %ebx
	call      _ZN7acommon12PosibErrBase7destroyEv
.L080515AE:
	movl      40(%esp), %eax
	addl      $16, %esp
	testl     %eax, %eax
	jne       .L08051AFE
.L080515BD:
	subl      $12, %esp
	leal      36(%esp), %edi
	pushl     %edi
	call      _ZN7acommon12PosibErrBase7destroyEv
.L080515CA:
	movl      28(%esp), %eax
	movl      $-1, 60(%esp)
	movl      $-1, 52(%esp)
	movl      %eax, 56(%esp)
	movl      16(%esp), %eax
	movl      %eax, 48(%esp)
	popl      %eax
	popl      %edx
	pushl     12(%esp)
	pushl     %ebp
	pushl     %esi
	pushl     options
	leal      116(%esp), %eax
	pushl     %eax
	pushl     %ebx
	call      _ZN7acommon4Conv5setupERKNS_6ConfigERKNS_10ParmStringES6_NS_9NormalizeE
.L08051603:
	movl      56(%esp), %eax
	movl      %eax, 52(%esp)
	addl      $28, %esp
	testl     %eax, %eax
	je        .L08051616
.L08051612:
	addl      $1, 8(%eax)
.L08051616:
	subl      $12, %esp
	pushl     %ebx
	call      _ZN7acommon12PosibErrBase7destroyEv
.L0805161F:
	movl      40(%esp), %eax
	addl      $16, %esp
	testl     %eax, %eax
	jne       .L08051AFE
.L0805162E:
	subl      $12, %esp
	pushl     %edi
	call      _ZN7acommon12PosibErrBase7destroyEv
.L08051637:
	movl      $_ZTVN7acommon6StringE+8, 56(%esp)
	movl      $0, 60(%esp)
	xorl      %eax, %eax
	movl      $0, 68(%esp)
	addl      $16, %esp
	leal      72(%esp), %edi
	jmp       .L080516FB
.L0805165D:
	.p2align 4,,10
	.p2align 3
.L08051660:
	movl      (%edx), %ecx
	pushl     %edi
	pushl     $-1
	pushl     %eax
	pushl     %edx
	call      *4(%ecx)
.L0805166A:
	addl      $16, %esp
	movl      76(%esp), %eax
	testl     %eax, %eax
	je        .L08051799
.L08051679:
	movl      80(%esp), %eax
	movb      $0, (%eax)
	movl      76(%esp), %eax
.L08051684:
	movl      92(%esp), %ebx
	testl     %ebx, %ebx
	je        .L080516C7
.L0805168C:
	movl      112(%esp), %edx
	movl      %edx, 116(%esp)
	movl      28(%ebx), %edx
	testl     %edx, %edx
	je        .L080517D0
.L0805169F:
	leal      108(%esp), %ebx
	movl      (%edx), %ecx
	pushl     %ebx
	pushl     $-1
	pushl     %eax
	pushl     %edx
	call      *4(%ecx)
.L080516AD:
	addl      $16, %esp
	movl      112(%esp), %eax
	testl     %eax, %eax
	je        .L08051815
.L080516BC:
	movl      116(%esp), %eax
	movb      $0, (%eax)
	movl      112(%esp), %eax
.L080516C7:
	movl      %eax, 32(%esp)
	movl      _ZN7acommon4COUTE+8, %eax
	subl      $8, %esp
	movl      $-1, 44(%esp)
	pushl     %esi
	pushl     $_ZN7acommon4COUTE+8
	call      *4(%eax)
.L080516E4:
	popl      %eax
	popl      %edx
	movl      _ZN7acommon4COUTE+8, %eax
	pushl     $10
	pushl     $_ZN7acommon4COUTE+8
	call      *(%eax)
.L080516F4:
	addl      $16, %esp
	movl      44(%esp), %eax
.L080516FB:
	movl      %eax, 48(%esp)
	movsbl    _ZN7acommon3CINE+4, %eax
	subl      $4, %esp
	pushl     %eax
	movl      _ZN7acommon3CINE, %eax
	pushl     %ebp
	pushl     $_ZN7acommon3CINE
	call      *(%eax)
.L08051717:
	addl      $16, %esp
	testb     %al, %al
	je        .L08051858
.L08051722:
	movl      44(%esp), %eax
	testl     %eax, %eax
	je        .L08051848
.L0805172E:
	movl      48(%esp), %eax
	movb      $0, (%eax)
	movl      44(%esp), %eax
.L08051739:
	movl      56(%esp), %ebx
	testl     %ebx, %ebx
	je        .L08051684
.L08051745:
	movl      76(%esp), %edx
	movl      %edx, 80(%esp)
	movl      28(%ebx), %edx
	testl     %edx, %edx
	jne       .L08051660
.L08051758:
	movl      60(%esp), %edx
	movl      %edx, 64(%esp)
	movl      8(%ebx), %edx
	movl      (%edx), %ecx
	movl      %ecx, (%esp)
	leal      60(%esp), %ecx
	pushl     %ecx
	pushl     $-1
	pushl     %eax
	pushl     %edx
	movl      16(%esp), %eax
	call      *12(%eax)
.L08051778:
	movl      20(%ebx), %eax
	movl      (%eax), %edx
	pushl     %edi
	pushl     84(%esp)
	pushl     84(%esp)
	pushl     %eax
	call      *12(%edx)
.L0805178A:
	addl      $32, %esp
	movl      76(%esp), %eax
	testl     %eax, %eax
	jne       .L08051679
.L08051799:
	subl      $8, %esp
	pushl     $0
	pushl     %edi
	call      _ZN7acommon6String9reserve_iEj
.L080517A4:
	addl      $16, %esp
	movl      76(%esp), %eax
	testl     %eax, %eax
	jne       .L08051679
.L080517B3:
	subl      $8, %esp
	pushl     $0
	pushl     %edi
	call      _ZN7acommon6String9reserve_iEj
.L080517BE:
	addl      $16, %esp
	jmp       .L08051679
.L080517C6:
	.p2align 4
.L080517D0:
	movl      96(%esp), %edx
	movl      %edx, 100(%esp)
	movl      8(%ebx), %edx
	movl      (%edx), %ecx
	movl      %ecx, (%esp)
	leal      96(%esp), %ecx
	pushl     %ecx
	pushl     $-1
	pushl     %eax
	pushl     %edx
	movl      16(%esp), %eax
	call      *12(%eax)
.L080517F0:
	movl      20(%ebx), %eax
	leal      124(%esp), %ebx
	movl      (%eax), %edx
	pushl     %ebx
	pushl     120(%esp)
	pushl     120(%esp)
	pushl     %eax
	call      *12(%edx)
.L08051806:
	addl      $32, %esp
	movl      112(%esp), %eax
	testl     %eax, %eax
	jne       .L080516BC
.L08051815:
	subl      $8, %esp
	pushl     $0
	pushl     %ebx
	call      _ZN7acommon6String9reserve_iEj
.L08051820:
	addl      $16, %esp
	movl      112(%esp), %ecx
	testl     %ecx, %ecx
	jne       .L080516BC
.L0805182F:
	subl      $8, %esp
	pushl     $0
	pushl     %ebx
	call      _ZN7acommon6String9reserve_iEj
.L0805183A:
	addl      $16, %esp
	jmp       .L080516BC
.L08051842:
	.p2align 4,,10
	.p2align 3
.L08051848:
	movl      $.LC08063D11, %eax
	jmp       .L08051739
.L08051852:
	.p2align 4,,10
	.p2align 3
.L08051858:
	movl      44(%esp), %eax
	movl      $_ZTVN7acommon6StringE+8, 40(%esp)
	testl     %eax, %eax
	je        .L08051874
.L08051868:
	subl      $12, %esp
	pushl     %eax
	call      free
.L08051871:
	addl      $16, %esp
.L08051874:
	movl      124(%esp), %ebx
	testl     %ebx, %ebx
	je        .L08051890
.L0805187C:
	subl      $12, %esp
	pushl     %ebx
	call      _ZN7acommon7ConvertD1Ev
.L08051885:
	movl      %ebx, (%esp)
	call      _ZdlPv
.L0805188D:
	addl      $16, %esp
.L08051890:
	movl      112(%esp), %eax
	movl      $_ZTVN7acommon6StringE+8, 108(%esp)
	testl     %eax, %eax
	je        .L080518AC
.L080518A0:
	subl      $12, %esp
	pushl     %eax
	call      free
.L080518A9:
	addl      $16, %esp
.L080518AC:
	movl      96(%esp), %eax
	testl     %eax, %eax
	je        .L080518C0
.L080518B4:
	subl      $12, %esp
	pushl     %eax
	call      _ZdlPv
.L080518BD:
	addl      $16, %esp
.L080518C0:
	movl      88(%esp), %ebx
	testl     %ebx, %ebx
	je        .L080518DC
.L080518C8:
	subl      $12, %esp
	pushl     %ebx
	call      _ZN7acommon7ConvertD1Ev
.L080518D1:
	movl      %ebx, (%esp)
	call      _ZdlPv
.L080518D9:
	addl      $16, %esp
.L080518DC:
	movl      76(%esp), %eax
	movl      $_ZTVN7acommon6StringE+8, 72(%esp)
	testl     %eax, %eax
	je        .L080518F8
.L080518EC:
	subl      $12, %esp
	pushl     %eax
	call      free
.L080518F5:
	addl      $16, %esp
.L080518F8:
	movl      60(%esp), %eax
	testl     %eax, %eax
	je        .L0805190C
.L08051900:
	subl      $12, %esp
	pushl     %eax
	call      _ZdlPv
.L08051909:
	addl      $16, %esp
.L0805190C:
	addl      $140, %esp
	popl      %ebx
	popl      %esi
	popl      %edi
	popl      %ebp
	ret       
.L08051917:
	.p2align 4
.L08051920:
	subl      $12, %esp
	pushl     %eax
	call      _ZNK7acommon6String5c_strEv
.L08051929:
	movl      args+4, %edx
	movl      %eax, 24(%esp)
	addl      $16, %esp
	movl      args, %eax
	subl      %eax, %edx
	cmpl      $47, %edx
	jbe       .L08051483
.L08051946:
	subl      $12, %esp
	addl      $32, %eax
	pushl     %eax
	call      _ZNK7acommon6String5c_strEv
.L08051952:
	movl      args+4, %edx
	movl      %eax, 28(%esp)
	addl      $16, %esp
	movl      args, %eax
	subl      %eax, %edx
	cmpl      $47, %edx
	jbe       .L08051483
.L0805196F:
	subl      $12, %esp
	addl      $16, %eax
	pushl     %eax
	call      _ZNK7acommon6String5c_strEv
.L0805197B:
	movl      %eax, 16(%esp)
	addl      $16, %esp
	jmp       .L08051493
.L08051987:
	.p2align 4
.L08051990:
	addl      $16, %ebx
.L08051993:
	testl     %ebx, %ebx
	je        .L08051AED
.L0805199B:
	movl      4(%ebx), %eax
	cmpl      8(%ebx), %eax
	je        .L080519C3
.L080519A3:
	.p2align 4,,10
	.p2align 3
.L080519A8:
	movsbl    (%eax), %edx
	leal      -65(%edx), %ecx
	cmpl      $25, %ecx
	ja        .L080519B6
.L080519B3:
	addl      $32, %edx
.L080519B6:
	movb      %dl, (%eax)
	addl      $1, %eax
	cmpl      %eax, 8(%ebx)
	jne       .L080519A8
.L080519C0:
	movl      4(%ebx), %eax
.L080519C3:
	testl     %eax, %eax
	je        .L08051A30
.L080519C7:
	movl      8(%ebx), %eax
	movl      $.LC08063D66, %edi
	movl      $9, %ecx
	movb      $0, (%eax)
	movl      4(%ebx), %esi
	repz cmpsb     
	jne       .L08051A30
.L080519DE:
	movl      $.LC08063D60, 92(%esp)
.L080519E6:
	leal      92(%esp), %eax
	movl      $-1, 96(%esp)
	movl      $.LC08063D6F, 56(%esp)
	movl      $-1, 60(%esp)
	pushl     %eax
	leal      60(%esp), %eax
	pushl     %eax
	pushl     options
	pushl     %ebp
	call      _ZN7acommon6Config7replaceERKNS_10ParmStringES3_
.L08051A14:
	pushl     %ebp
	call      _ZN7acommon12PosibErrBase7destroyEv
.L08051A1A:
	addl      $16, %esp
	movl      $0, 4(%esp)
	leal      32(%esp), %esi
	jmp       .L080514C1
.L08051A2E:
	.p2align 4,,10
	.p2align 3
.L08051A30:
	subl      $8, %esp
	pushl     $.LC08063D74
	pushl     %ebx
	call      _ZN7acommoneqERKNS_6StringEPKc
.L08051A3E:
	addl      $16, %esp
	testb     %al, %al
	jne       .L08051AE0
.L08051A49:
	subl      $12, %esp
	pushl     %ebx
	call      _ZNK7acommon6String5c_strEv
.L08051A52:
	movl      %eax, 108(%esp)
	movl      8(%ebx), %eax
	subl      4(%ebx), %eax
	movl      $.LC08063D7B, 72(%esp)
	movl      $-1, 76(%esp)
	movl      %eax, 112(%esp)
	leal      108(%esp), %eax
	pushl     %eax
	leal      76(%esp), %eax
	pushl     %eax
	pushl     options
	pushl     %ebp
	call      _ZN7acommon6Config7replaceERKNS_10ParmStringES3_
.L08051A86:
	movl      68(%esp), %eax
	movl      %eax, 60(%esp)
	addl      $28, %esp
	testl     %eax, %eax
	je        .L08051A99
.L08051A95:
	addl      $1, 8(%eax)
.L08051A99:
	subl      $12, %esp
	pushl     %ebp
	call      _ZN7acommon12PosibErrBase7destroyEv
.L08051AA2:
	movl      48(%esp), %eax
	addl      $16, %esp
	testl     %eax, %eax
	jne       .L08051AFE
.L08051AAD:
	subl      $12, %esp
	leal      44(%esp), %esi
	pushl     %esi
	call      _ZN7acommon12PosibErrBase7destroyEv
.L08051ABA:
	addl      $16, %esp
	movl      $2, 4(%esp)
	jmp       .L080514C1
.L08051ACA:
	.p2align 4,,10
	.p2align 3
.L08051AD0:
	addl      $48, %ebx
	jmp       .L08051993
.L08051AD8:
	.p2align 4
.L08051AE0:
	movl      $.LC08063D51, 92(%esp)
	jmp       .L080519E6
.L08051AED:
	movl      $2, 4(%esp)
	leal      32(%esp), %esi
	jmp       .L080514C1
.L08051AFE:
	movl      (%eax), %ecx
	movb      $1, 4(%eax)
	subl      $8, %esp
	movl      $-1, %edx
	movl      (%ecx), %eax
	pushl     %edx
	pushl     %eax
	call      _Z11print_errorN7acommon10ParmStringE
.L08051B15:
	movl      $1, (%esp)
	call      exit
	.size	_Z6normlzv, .-_Z6normlzv
# ----------------------
.L08051B21:
	.p2align 4
# ----------------------
	.globl	_Z6filterv
	.type	_Z6filterv, @function
_Z6filterv:
	subl      $36, %esp
	pushl     $.LC0806421C
	pushl     $.LC08063D1D
	call      dgettext
.L08051B42:
	movl      $-1, 28(%esp)
	movl      %eax, 24(%esp)
	popl      %eax
	popl      %edx
	leal      16(%esp), %eax
	pushl     %eax
	pushl     $_ZN7acommon4CERRE
	call      _ZN7acommon7FStreamlsERKNS_10ParmStringE
.L08051B5F:
	movl      $3, (%esp)
	call      exit
	.size	_Z6filterv, .-_Z6filterv
# ----------------------
.L08051B6B:
	.p2align 4,,10
	.p2align 3
# ----------------------
	.globl	_Z9print_verv
	.type	_Z9print_verv, @function
_Z9print_verv:
	subl      $36, %esp
	leal      16(%esp), %eax
	movl      $.LC08064248, 16(%esp)
	movl      $-1, 20(%esp)
	pushl     %eax
	movl      _ZN7acommon4COUTE+8, %eax
	pushl     $_ZN7acommon4COUTE+8
	call      *4(%eax)
.L08051B95:
	addl      $44, %esp
	ret       
	.size	_Z9print_verv, .-_Z9print_verv
# ----------------------
.L08051B99:
	.p2align 4
# ----------------------
	.globl	_Z5cleanv
	.type	_Z5cleanv, @function
_Z5cleanv:
	pushl     %ebp
	pushl     %edi
	pushl     %esi
	pushl     %ebx
	subl      $412, %esp
	movl      args, %edx
	movl      args+4, %eax
	movb      $0, 16(%esp)
	subl      %edx, %eax
	sarl      $4, %eax
	testl     %eax, %eax
	jne       .L080526C0
.L08051BC7:
	movl      options, %esi
	subl      $12, %esp
	pushl     %esi
	call      _ZN8aspeller13find_languageERN7acommon6ConfigE
.L08051BD6:
	movl      $0, 240(%esp)
	movl      $-1, 244(%esp)
	addl      $12, %esp
	leal      228(%esp), %edi
	pushl     %edi
	pushl     %esi
	leal      56(%esp), %eax
	pushl     %eax
	call      _ZN8aspeller12new_languageERKN7acommon6ConfigERKNS0_10ParmStringE
.L08051C02:
	movl      56(%esp), %eax
	addl      $12, %esp
	testl     %eax, %eax
	jne       .L080526DA
.L08051C11:
	movl      48(%esp), %eax
	movl      $0, 172(%esp)
	movl      $0, 176(%esp)
	movl      $2, 180(%esp)
	movl      $_ZTVN7acommon6StringE+8, 184(%esp)
	movl      $0, 188(%esp)
	movl      %eax, 12(%esp)
	movl      $0, 192(%esp)
	movl      $0, 196(%esp)
	movl      $0, 200(%esp)
	movl      $_ZTV18IstreamEnumeration+8, 168(%esp)
	movl      $_ZN7acommon3CINE, 204(%esp)
	movl      $_ZTVN7acommon6StringE+8, 208(%esp)
	movl      $0, 212(%esp)
	movl      $0, 216(%esp)
	movl      $0, 220(%esp)
	pushl     $_ZN7acommon4CERRE+8
	pushl     %eax
	leal      176(%esp), %eax
	pushl     %eax
	pushl     %edi
	leal      148(%esp), %ebp
	leal      92(%esp), %ebx
	call      _ZN8aspeller16WordListIteratorC1EPN7acommon17StringEnumerationEPKNS_8LanguageEPNS1_7OStreamE
.L08051CD2:
	movl      $.LC08063D51, 148(%esp)
	movl      $-1, 152(%esp)
	movl      $.LC08063D85, 112(%esp)
	movl      $-1, 116(%esp)
	pushl     %ebp
	leal      116(%esp), %eax
	pushl     %eax
	pushl     %esi
	pushl     %ebx
	call      _ZN7acommon6Config7replaceERKNS_10ParmStringES3_
.L08051D05:
	pushl     %ebx
	call      _ZN7acommon12PosibErrBase7destroyEv
.L08051D0B:
	movl      $.LC08063D51, 164(%esp)
	movl      $-1, 168(%esp)
	movl      $.LC08063D94, 128(%esp)
	movl      $-1, 132(%esp)
	addl      $32, %esp
	pushl     %ebp
	leal      100(%esp), %eax
	pushl     %eax
	pushl     %esi
	pushl     %ebx
	call      _ZN7acommon6Config7replaceERKNS_10ParmStringES3_
.L08051D47:
	pushl     %ebx
	call      _ZN7acommon12PosibErrBase7destroyEv
.L08051D4D:
	addl      $16, %esp
	cmpb      $0, 16(%esp)
	je        .L08052678
.L08051D5B:
	movl      $.LC08063D51, 132(%esp)
	movl      $-1, 136(%esp)
	movl      $.LC08063DB1, 96(%esp)
	movl      $-1, 100(%esp)
	pushl     %ebp
	leal      100(%esp), %eax
	pushl     %eax
	pushl     %esi
	pushl     %ebx
	call      _ZN7acommon6Config7replaceERKNS_10ParmStringES3_
.L08051D8E:
	pushl     %ebx
	call      _ZN7acommon12PosibErrBase7destroyEv
.L08051D94:
	movl      $.LC08063D51, 148(%esp)
	movl      $-1, 152(%esp)
	movl      $.LC08063DBF, 112(%esp)
	movl      $-1, 116(%esp)
	pushl     %ebp
	leal      116(%esp), %eax
	pushl     %eax
	pushl     %esi
	pushl     %ebx
	call      _ZN7acommon6Config7replaceERKNS_10ParmStringES3_
.L08051DC7:
	pushl     %ebx
	call      _ZN7acommon12PosibErrBase7destroyEv
.L08051DCD:
	addl      $28, %esp
	pushl     %esi
	pushl     %edi
	pushl     %ebp
	call      _ZN8aspeller16WordListIterator4initERN7acommon6ConfigE
.L08051DD8:
	pushl     %ebp
	call      _ZN7acommon12PosibErrBase7destroyEv
.L08051DDE:
	movl      $0, 112(%esp)
	movl      $0, 116(%esp)
	movl      $0, 120(%esp)
	movl      $0, 124(%esp)
	movl      $_ZTVN7acommon6StringE+8, 128(%esp)
	movl      $0, 132(%esp)
	movl      $0, 136(%esp)
	movl      $0, 140(%esp)
	movl      $0, 144(%esp)
	movl      $0, 148(%esp)
	movl      $0, 152(%esp)
	movl      $0, 156(%esp)
	movl      $0, 160(%esp)
	movl      $_ZTVN7acommon6StringE+8, 164(%esp)
	movl      $0, 168(%esp)
	movl      $0, 172(%esp)
	movl      $0, 176(%esp)
	movl      $0, 180(%esp)
	movl      $.LC08063D24, 92(%esp)
	movl      $-1, 96(%esp)
	popl      %eax
	popl      %edx
	pushl     %ebx
	pushl     %esi
	call      _ZNK7acommon6Config4haveERKNS_10ParmStringE
.L08051EB1:
	addl      $16, %esp
	testb     %al, %al
	je        .L08052588
.L08051EBC:
	movl      $.LC08063D24, 52(%esp)
	movl      $-1, 56(%esp)
	subl      $4, %esp
	leal      56(%esp), %eax
	pushl     %eax
	pushl     %esi
	pushl     %ebx
	call      _ZNK7acommon6Config8retrieveERKNS_10ParmStringE
.L08051EDB:
	leal      92(%esp), %eax
	pushl     %eax
	call      _ZNK7acommon6String5c_strEv
.L08051EE5:
	movl      %eax, 84(%esp)
	movl      104(%esp), %eax
	subl      100(%esp), %eax
	movl      %eax, 88(%esp)
	movl      28(%esp), %eax
	addl      $68, %eax
	movl      %eax, 40(%esp)
	movl      %eax, (%esp)
	call      _ZNK7acommon6String5c_strEv
.L08051F08:
	movl      $-1, 80(%esp)
	movl      %eax, 76(%esp)
	popl      %ecx
	popl      %eax
	pushl     $2
	leal      80(%esp), %eax
	movl      %eax, 32(%esp)
	pushl     %eax
	leal      76(%esp), %eax
	movl      %eax, 32(%esp)
	pushl     %eax
	pushl     %esi
	leal      120(%esp), %eax
	pushl     %eax
	leal      68(%esp), %eax
	pushl     %eax
	call      _ZN7acommon4Conv5setupERKNS_6ConfigERKNS_10ParmStringES6_NS_9NormalizeE
.L08051F3A:
	movl      68(%esp), %eax
	movl      %eax, 64(%esp)
	addl      $28, %esp
	testl     %eax, %eax
	je        .L08051F4D
.L08051F49:
	addl      $1, 8(%eax)
.L08051F4D:
	subl      $12, %esp
	leal      52(%esp), %eax
	pushl     %eax
	call      _ZN7acommon12PosibErrBase7destroyEv
.L08051F5A:
	movl      %ebx, (%esp)
	call      _ZN7acommon8PosibErrINS_6StringEED1Ev
.L08051F62:
	movl      52(%esp), %eax
	addl      $16, %esp
	testl     %eax, %eax
	jne       .L080526DA
.L08051F71:
	subl      $12, %esp
	leal      48(%esp), %eax
	pushl     %eax
	call      _ZN7acommon12PosibErrBase7destroyEv
.L08051F7E:
	movl      $.LC08063D24, 68(%esp)
	movl      $-1, 72(%esp)
	addl      $12, %esp
	leal      56(%esp), %eax
	pushl     %eax
	pushl     %esi
	pushl     %ebx
	call      _ZNK7acommon6Config8retrieveERKNS_10ParmStringE
.L08051F9D:
	leal      92(%esp), %eax
	pushl     %eax
	call      _ZNK7acommon6String5c_strEv
.L08051FA7:
	movl      %eax, 84(%esp)
	movl      104(%esp), %eax
	subl      100(%esp), %eax
	movl      %eax, 88(%esp)
	popl      %ecx
	pushl     36(%esp)
	call      _ZNK7acommon6String5c_strEv
.L08051FC1:
	movl      $-1, 80(%esp)
	movl      %eax, 76(%esp)
	popl      %eax
	popl      %edx
	pushl     $2
	pushl     32(%esp)
	pushl     32(%esp)
	pushl     %esi
	pushl     %ebp
	leal      68(%esp), %eax
	pushl     %eax
	call      _ZN7acommon4Conv5setupERKNS_6ConfigERKNS_10ParmStringES6_NS_9NormalizeE
.L08051FE5:
	leal      68(%esp), %eax
	pushl     %eax
	call      _ZN7acommon12PosibErrBase7destroyEv
.L08051FEF:
	addl      $20, %esp
	pushl     %ebx
	call      _ZN7acommon8PosibErrINS_6StringEED1Ev
.L08051FF8:
	addl      $16, %esp
	.p2align 4,,10
	.p2align 3
.L08052000:
	subl      $8, %esp
	pushl     %edi
	pushl     %ebx
	call      _ZN8aspeller16WordListIterator3advEv
.L0805200A:
	movl      88(%esp), %eax
	addl      $12, %esp
	movzbl    80(%esp), %esi
	testl     %eax, %eax
	je        .L08052047
.L0805201A:
	cmpb      $0, 4(%eax)
	je        .L080521A0
.L08052024:
	movl      8(%eax), %ecx
	leal      -1(%ecx), %edx
	testl     %edx, %edx
	movl      %edx, 8(%eax)
	jne       .L08052047
.L08052031:
	cmpb      $0, 4(%eax)
	je        .L080521C8
.L0805203B:
	subl      $12, %esp
	pushl     %ebx
	call      _ZN7acommon12PosibErrBase3delEv
.L08052044:
	addl      $16, %esp
.L08052047:
	movl      %esi, %eax
	testb     %al, %al
	je        .L080521E0
.L08052051:
	movl      288(%esp), %esi
	cmpb      $0, (%esi)
	je        .L08052120
.L08052061:
	movl      132(%esp), %ebp
	testl     %ebp, %ebp
	je        .L080520B9
.L0805206C:
	movl      152(%esp), %eax
	movl      %eax, 156(%esp)
	movl      28(%ebp), %eax
	testl     %eax, %eax
	je        .L08052500
.L08052085:
	leal      148(%esp), %ebp
	movl      (%eax), %edx
	pushl     %ebp
	pushl     $-1
	pushl     %esi
	pushl     %eax
	call      *4(%edx)
.L08052096:
	addl      $16, %esp
	movl      152(%esp), %eax
	testl     %eax, %eax
	je        .L08052553
.L080520A8:
	movl      156(%esp), %eax
	movb      $0, (%eax)
	movl      152(%esp), %esi
.L080520B9:
	movl      96(%esp), %ebp
	movl      280(%esp), %eax
	testl     %ebp, %ebp
	je        .L08052103
.L080520C8:
	movl      116(%esp), %edx
	movl      %edx, 120(%esp)
	movl      28(%ebp), %edx
	testl     %edx, %edx
	je        .L08052480
.L080520DB:
	leal      112(%esp), %ebp
	movl      (%edx), %ecx
	pushl     %ebp
	pushl     $-1
	pushl     %eax
	pushl     %edx
	call      *4(%ecx)
.L080520E9:
	addl      $16, %esp
	movl      116(%esp), %eax
	testl     %eax, %eax
	je        .L080524C9
.L080520F8:
	movl      120(%esp), %eax
	movb      $0, (%eax)
	movl      116(%esp), %eax
.L08052103:
	pushl     %esi
	pushl     %eax
	pushl     $.LC08063DD2
	pushl     $_ZN7acommon4COUTE+8
	call      _ZN7acommon7OStream6printfEPKcz
.L08052114:
	addl      $16, %esp
	jmp       .L08052000
.L0805211C:
	.p2align 4,,10
	.p2align 3
.L08052120:
	movl      96(%esp), %esi
	movl      280(%esp), %eax
	testl     %esi, %esi
	je        .L0805216A
.L0805212F:
	movl      116(%esp), %edx
	movl      %edx, 120(%esp)
	movl      28(%esi), %edx
	testl     %edx, %edx
	je        .L08052400
.L08052142:
	leal      112(%esp), %esi
	movl      (%edx), %ecx
	pushl     %esi
	pushl     $-1
	pushl     %eax
	pushl     %edx
	call      *4(%ecx)
.L08052150:
	addl      $16, %esp
	movl      116(%esp), %esi
	testl     %esi, %esi
	je        .L08052441
.L0805215F:
	movl      120(%esp), %eax
	movb      $0, (%eax)
	movl      116(%esp), %eax
.L0805216A:
	movl      %eax, 76(%esp)
	movl      _ZN7acommon4COUTE+8, %eax
	subl      $8, %esp
	movl      $-1, 88(%esp)
	pushl     %ebx
	pushl     $_ZN7acommon4COUTE+8
	call      *4(%eax)
.L08052187:
	popl      %eax
	popl      %edx
	movl      _ZN7acommon4COUTE+8, %eax
	pushl     $10
	pushl     $_ZN7acommon4COUTE+8
	call      *(%eax)
.L08052197:
	addl      $16, %esp
	jmp       .L08052000
.L0805219F:
	.p2align 4,,10
	.p2align 3
.L080521A0:
	subl      $12, %esp
	pushl     %ebx
	call      _ZNK7acommon12PosibErrBase10handle_errEv
.L080521A9:
	movl      92(%esp), %eax
	movzbl    96(%esp), %esi
	addl      $16, %esp
	testl     %eax, %eax
	jne       .L08052024
.L080521BD:
	jmp       .L08052047
.L080521C2:
	.p2align 4,,10
	.p2align 3
.L080521C8:
	subl      $12, %esp
	pushl     %ebx
	call      _ZNK7acommon12PosibErrBase10handle_errEv
.L080521D1:
	addl      $16, %esp
	jmp       .L0805203B
.L080521D9:
	.p2align 4
.L080521E0:
	movl      164(%esp), %ebx
	testl     %ebx, %ebx
	je        .L080521FF
.L080521EB:
	subl      $12, %esp
	pushl     %ebx
	call      _ZN7acommon7ConvertD1Ev
.L080521F4:
	movl      %ebx, (%esp)
	call      _ZdlPv
.L080521FC:
	addl      $16, %esp
.L080521FF:
	movl      152(%esp), %eax
	movl      $_ZTVN7acommon6StringE+8, 148(%esp)
	testl     %eax, %eax
	je        .L08052221
.L08052215:
	subl      $12, %esp
	pushl     %eax
	call      free
.L0805221E:
	addl      $16, %esp
.L08052221:
	movl      136(%esp), %eax
	testl     %eax, %eax
	je        .L08052238
.L0805222C:
	subl      $12, %esp
	pushl     %eax
	call      _ZdlPv
.L08052235:
	addl      $16, %esp
.L08052238:
	movl      128(%esp), %ebx
	testl     %ebx, %ebx
	je        .L08052257
.L08052243:
	subl      $12, %esp
	pushl     %ebx
	call      _ZN7acommon7ConvertD1Ev
.L0805224C:
	movl      %ebx, (%esp)
	call      _ZdlPv
.L08052254:
	addl      $16, %esp
.L08052257:
	movl      116(%esp), %eax
	movl      $_ZTVN7acommon6StringE+8, 112(%esp)
	testl     %eax, %eax
	je        .L08052273
.L08052267:
	subl      $12, %esp
	pushl     %eax
	call      free
.L08052270:
	addl      $16, %esp
.L08052273:
	movl      100(%esp), %eax
	testl     %eax, %eax
	je        .L08052287
.L0805227B:
	subl      $12, %esp
	pushl     %eax
	call      _ZdlPv
.L08052284:
	addl      $16, %esp
.L08052287:
	movl      388(%esp), %eax
	movl      $_ZTVN7acommon6StringE+8, 384(%esp)
	testl     %eax, %eax
	je        .L080522A9
.L0805229D:
	subl      $12, %esp
	pushl     %eax
	call      free
.L080522A6:
	addl      $16, %esp
.L080522A9:
	movl      372(%esp), %eax
	testl     %eax, %eax
	je        .L080522C0
.L080522B4:
	subl      $12, %esp
	pushl     %eax
	call      _ZdlPv
.L080522BD:
	addl      $16, %esp
.L080522C0:
	movl      356(%esp), %eax
	movl      $_ZTVN7acommon6StringE+8, 352(%esp)
	testl     %eax, %eax
	je        .L080522E2
.L080522D6:
	subl      $12, %esp
	pushl     %eax
	call      free
.L080522DF:
	addl      $16, %esp
.L080522E2:
	movl      340(%esp), %eax
	testl     %eax, %eax
	je        .L080522F9
.L080522ED:
	subl      $12, %esp
	pushl     %eax
	call      _ZdlPv
.L080522F6:
	addl      $16, %esp
.L080522F9:
	movl      300(%esp), %eax
	movl      $_ZTVN7acommon6StringE+8, 296(%esp)
	testl     %eax, %eax
	je        .L0805231B
.L0805230F:
	subl      $12, %esp
	pushl     %eax
	call      free
.L08052318:
	addl      $16, %esp
.L0805231B:
	movl      272(%esp), %ebx
	testl     %ebx, %ebx
	je        .L0805233A
.L08052326:
	subl      $12, %esp
	pushl     %ebx
	call      _ZN7acommon7ConvertD1Ev
.L0805232F:
	movl      %ebx, (%esp)
	call      _ZdlPv
.L08052337:
	addl      $16, %esp
.L0805233A:
	movl      260(%esp), %eax
	movl      $_ZTVN7acommon6StringE+8, 256(%esp)
	testl     %eax, %eax
	je        .L0805235C
.L08052350:
	subl      $12, %esp
	pushl     %eax
	call      free
.L08052359:
	addl      $16, %esp
.L0805235C:
	movl      244(%esp), %eax
	testl     %eax, %eax
	je        .L08052373
.L08052367:
	subl      $12, %esp
	pushl     %eax
	call      _ZdlPv
.L08052370:
	addl      $16, %esp
.L08052373:
	movl      212(%esp), %eax
	movl      $_ZTV18IstreamEnumeration+8, 168(%esp)
	movl      $_ZTVN7acommon6StringE+8, 208(%esp)
	testl     %eax, %eax
	je        .L080523A0
.L08052394:
	subl      $12, %esp
	pushl     %eax
	call      free
.L0805239D:
	addl      $16, %esp
.L080523A0:
	movl      188(%esp), %eax
	movl      $_ZTVN7acommon17StringEnumerationE+8, 168(%esp)
	movl      $_ZTVN7acommon6StringE+8, 184(%esp)
	testl     %eax, %eax
	je        .L080523CD
.L080523C1:
	subl      $12, %esp
	pushl     %eax
	call      free
.L080523CA:
	addl      $16, %esp
.L080523CD:
	subl      $12, %esp
	leal      56(%esp), %eax
	pushl     %eax
	call      _ZN7acommon12PosibErrBase7destroyEv
.L080523DA:
	addl      $16, %esp
	movl      12(%esp), %eax
	testl     %eax, %eax
	je        .L080523F4
.L080523E5:
	subl      $8, %esp
	pushl     %eax
	pushl     16(%eax)
	call      _ZN7acommon18release_cache_dataEPNS_15GlobalCacheBaseEPKNS_9CacheableE
.L080523F1:
	addl      $16, %esp
.L080523F4:
	addl      $412, %esp
	popl      %ebx
	popl      %esi
	popl      %edi
	popl      %ebp
	ret       
.L080523FF:
	.p2align 4,,10
	.p2align 3
.L08052400:
	movl      100(%esp), %edx
	leal      100(%esp), %ebp
	movl      %edx, 104(%esp)
	movl      8(%esi), %edx
	movl      (%edx), %ecx
	pushl     %ebp
	pushl     $-1
	pushl     %eax
	pushl     %edx
	call      *12(%ecx)
.L08052419:
	movl      20(%esi), %eax
	leal      128(%esp), %ecx
	movl      (%eax), %edx
	pushl     %ecx
	pushl     124(%esp)
	pushl     124(%esp)
	pushl     %eax
	call      *12(%edx)
.L08052432:
	addl      $32, %esp
	movl      116(%esp), %esi
	testl     %esi, %esi
	jne       .L0805215F
.L08052441:
	subl      $8, %esp
	pushl     $0
	leal      124(%esp), %eax
	pushl     %eax
	call      _ZN7acommon6String9reserve_iEj
.L08052450:
	addl      $16, %esp
	movl      116(%esp), %ecx
	testl     %ecx, %ecx
	jne       .L0805215F
.L0805245F:
	subl      $8, %esp
	pushl     $0
	leal      124(%esp), %eax
	pushl     %eax
	call      _ZN7acommon6String9reserve_iEj
.L0805246E:
	addl      $16, %esp
	jmp       .L0805215F
.L08052476:
	.p2align 4
.L08052480:
	movl      100(%esp), %edx
	movl      %edx, 104(%esp)
	movl      8(%ebp), %edx
	movl      (%edx), %ecx
	movl      %ecx, 16(%esp)
	leal      100(%esp), %ecx
	pushl     %ecx
	pushl     $-1
	pushl     %eax
	pushl     %edx
	movl      32(%esp), %eax
	call      *12(%eax)
.L080524A1:
	movl      20(%ebp), %eax
	leal      128(%esp), %ecx
	movl      (%eax), %edx
	pushl     %ecx
	pushl     124(%esp)
	pushl     124(%esp)
	pushl     %eax
	call      *12(%edx)
.L080524BA:
	addl      $32, %esp
	movl      116(%esp), %eax
	testl     %eax, %eax
	jne       .L080520F8
.L080524C9:
	subl      $8, %esp
	pushl     $0
	leal      124(%esp), %eax
	pushl     %eax
	call      _ZN7acommon6String9reserve_iEj
.L080524D8:
	addl      $16, %esp
	movl      116(%esp), %ebp
	testl     %ebp, %ebp
	jne       .L080520F8
.L080524E7:
	subl      $8, %esp
	pushl     $0
	leal      124(%esp), %eax
	pushl     %eax
	call      _ZN7acommon6String9reserve_iEj
.L080524F6:
	addl      $16, %esp
	jmp       .L080520F8
.L080524FE:
	.p2align 4,,10
	.p2align 3
.L08052500:
	movl      136(%esp), %eax
	leal      136(%esp), %ecx
	movl      %eax, 140(%esp)
	movl      8(%ebp), %eax
	movl      (%eax), %edx
	pushl     %ecx
	pushl     $-1
	pushl     %esi
	pushl     %eax
	call      *12(%edx)
.L08052522:
	movl      20(%ebp), %eax
	leal      164(%esp), %ebp
	movl      (%eax), %edx
	pushl     %ebp
	pushl     160(%esp)
	pushl     160(%esp)
	pushl     %eax
	call      *12(%edx)
.L08052541:
	addl      $32, %esp
	movl      152(%esp), %eax
	testl     %eax, %eax
	jne       .L080520A8
.L08052553:
	subl      $8, %esp
	pushl     $0
	pushl     %ebp
	call      _ZN7acommon6String9reserve_iEj
.L0805255E:
	addl      $16, %esp
	movl      152(%esp), %eax
	testl     %eax, %eax
	jne       .L080520A8
.L08052570:
	subl      $8, %esp
	pushl     $0
	pushl     %ebp
	call      _ZN7acommon6String9reserve_iEj
.L0805257B:
	addl      $16, %esp
	jmp       .L080520A8
.L08052583:
	.p2align 4,,10
	.p2align 3
.L08052588:
	movl      12(%esp), %eax
	subl      $12, %esp
	addl      $84, %eax
	movl      %eax, 40(%esp)
	pushl     %eax
	call      _ZNK7acommon6String5c_strEv
.L0805259C:
	movl      %eax, 92(%esp)
	movl      28(%esp), %eax
	movl      $-1, 96(%esp)
	addl      $68, %eax
	movl      %eax, 40(%esp)
	movl      %eax, (%esp)
	call      _ZNK7acommon6String5c_strEv
.L080525BB:
	movl      %eax, 84(%esp)
	leal      76(%esp), %eax
	movl      $-1, 88(%esp)
	movl      %eax, 32(%esp)
	popl      %ecx
	popl      %edx
	pushl     $2
	pushl     %ebx
	leal      84(%esp), %ecx
	movl      %ecx, 36(%esp)
	pushl     %ecx
	pushl     %esi
	leal      120(%esp), %ecx
	pushl     %ecx
	pushl     %eax
	call      _ZN7acommon4Conv5setupERKNS_6ConfigERKNS_10ParmStringES6_NS_9NormalizeE
.L080525E9:
	movl      88(%esp), %eax
	movl      %eax, 80(%esp)
	addl      $28, %esp
	testl     %eax, %eax
	je        .L080525FC
.L080525F8:
	addl      $1, 8(%eax)
.L080525FC:
	subl      $12, %esp
	pushl     28(%esp)
	call      _ZN7acommon12PosibErrBase7destroyEv
.L08052608:
	movl      68(%esp), %eax
	addl      $16, %esp
	testl     %eax, %eax
	jne       .L080526DA
.L08052617:
	subl      $12, %esp
	leal      64(%esp), %eax
	pushl     %eax
	call      _ZN7acommon12PosibErrBase7destroyEv
.L08052624:
	popl      %eax
	pushl     40(%esp)
	call      _ZNK7acommon6String5c_strEv
.L0805262E:
	movl      $-1, 96(%esp)
	movl      %eax, 92(%esp)
	popl      %eax
	pushl     36(%esp)
	call      _ZNK7acommon6String5c_strEv
.L08052644:
	movl      $-1, 88(%esp)
	movl      %eax, 84(%esp)
	popl      %eax
	popl      %edx
	pushl     $2
	pushl     %ebx
	pushl     36(%esp)
	pushl     %esi
	pushl     %ebp
	movl      44(%esp), %esi
	pushl     %esi
	call      _ZN7acommon4Conv5setupERKNS_6ConfigERKNS_10ParmStringES6_NS_9NormalizeE
.L08052665:
	pushl     %esi
	call      _ZN7acommon12PosibErrBase7destroyEv
.L0805266B:
	addl      $32, %esp
	jmp       .L08052000
.L08052673:
	.p2align 4,,10
	.p2align 3
.L08052678:
	movl      $.LC08063D51, 132(%esp)
	movl      $-1, 136(%esp)
	movl      $.LC08063DA5, 96(%esp)
	movl      $-1, 100(%esp)
	pushl     %ebp
	leal      100(%esp), %eax
	pushl     %eax
	pushl     %esi
	pushl     %ebx
	call      _ZN7acommon6Config7replaceERKNS_10ParmStringES3_
.L080526AB:
	pushl     %ebx
	call      _ZN7acommon12PosibErrBase7destroyEv
.L080526B1:
	addl      $16, %esp
	jmp       .L08051D5B
.L080526B9:
	.p2align 4
.L080526C0:
	subl      $8, %esp
	pushl     $.LC08063D74
	pushl     %edx
	call      _ZN7acommoneqERKNS_6StringEPKc
.L080526CE:
	movb      %al, 32(%esp)
	addl      $16, %esp
	jmp       .L08051BC7
.L080526DA:
	movl      (%eax), %ecx
	movb      $1, 4(%eax)
	subl      $8, %esp
	movl      $-1, %edx
	movl      (%ecx), %eax
	pushl     %edx
	pushl     %eax
	call      _Z11print_errorN7acommon10ParmStringE
.L080526F1:
	movl      $1, (%esp)
	call      exit
	.size	_Z5cleanv, .-_Z5cleanv
# ----------------------
.L080526FD:
	.p2align 4,,10
	.p2align 3
# ----------------------
	.globl	_Z4dumpPN8aspeller10DictionaryEPN7acommon7ConvertE
	.type	_Z4dumpPN8aspeller10DictionaryEPN7acommon7ConvertE, @function
_Z4dumpPN8aspeller10DictionaryEPN7acommon7ConvertE:
	pushl     %edi
	pushl     %esi
	pushl     %ebx
	movl      16(%esp), %edi
	movl      20(%esp), %esi
	movl      40(%edi), %eax
	cmpl      $1, %eax
	je        .L08052768
.L08052713:
	cmpl      $3, %eax
	jne       .L08052760
.L08052718:
	subl      $12, %esp
	movl      (%edi), %eax
	pushl     %edi
	call      *96(%eax)
.L08052721:
	addl      $16, %esp
	movl      %eax, %ebx
	jmp       .L0805273D
.L08052728:
	.p2align 4
.L08052730:
	subl      $8, %esp
	pushl     %esi
	pushl     %eax
	call      _Z4dumpPN8aspeller10DictionaryEPN7acommon7ConvertE
.L0805273A:
	addl      $16, %esp
.L0805273D:
	subl      $12, %esp
	movl      (%ebx), %eax
	pushl     %ebx
	call      *8(%eax)
.L08052746:
	addl      $16, %esp
	testl     %eax, %eax
	jne       .L08052730
.L0805274D:
	movl      (%ebx), %eax
	movl      %ebx, 16(%esp)
	popl      %ebx
	popl      %esi
	popl      %edi
	movl      20(%eax), %eax
	jmp       *%eax
.L0805275B:
	.p2align 4,,10
	.p2align 3
.L08052760:
	call      abort
.L08052765:
	.p2align 4,,10
	.p2align 3
.L08052768:
	subl      $12, %esp
	movl      (%edi), %eax
	pushl     %edi
	call      *40(%eax)
.L08052771:
	addl      $16, %esp
	movl      %eax, %ebx
	jmp       .L080527A1
.L08052778:
	.p2align 4
.L08052780:
	pushl     %esi
	pushl     28(%edi)
	pushl     $_ZN7acommon4COUTE+8
	pushl     %eax
	call      _ZNK8aspeller9WordEntry5writeERN7acommon7OStreamERKNS_8LanguageEPNS1_7ConvertE
.L0805278F:
	popl      %eax
	popl      %edx
	pushl     _ZN7acommon4COUTE+12
	pushl     $10
	call      _IO_putc
.L0805279E:
	addl      $16, %esp
.L080527A1:
	subl      $12, %esp
	movl      (%ebx), %eax
	pushl     %ebx
	call      *8(%eax)
.L080527AA:
	addl      $16, %esp
	testl     %eax, %eax
	jne       .L08052780
.L080527B1:
	movl      (%ebx), %eax
	movl      %ebx, 16(%esp)
	popl      %ebx
	popl      %esi
	popl      %edi
	movl      20(%eax), %eax
	jmp       *%eax
	.size	_Z4dumpPN8aspeller10DictionaryEPN7acommon7ConvertE, .-_Z4dumpPN8aspeller10DictionaryEPN7acommon7ConvertE
# ----------------------
.L080527BF:
	.p2align 4,,10
	.p2align 3
# ----------------------
	.globl	_Z6masterv
	.type	_Z6masterv, @function
_Z6masterv:
	pushl     %ebp
	pushl     %edi
	pushl     %esi
	pushl     %ebx
	subl      $60, %esp
	movl      args, %edx
	movl      args+4, %eax
	subl      %edx, %eax
	sarl      $4, %eax
	testl     %eax, %eax
	jne       .L08052810
.L080527DB:
	movl      action, %eax
	movl      options, %ebx
	testl     %eax, %eax
	je        .L08052876
.L080527EE:
	cmpl      $1, %eax
	je        .L08052A2A
.L080527F7:
	cmpl      $2, %eax
	je        .L08052940
.L08052800:
	addl      $60, %esp
	popl      %ebx
	popl      %esi
	popl      %edi
	popl      %ebp
	ret       
.L08052808:
	.p2align 4
.L08052810:
	movl      4(%edx), %ebp
	testl     %ebp, %ebp
	je        .L08052A20
.L0805281B:
	movl      8(%edx), %eax
	movb      $0, (%eax)
	movl      4(%edx), %eax
.L08052824:
	movl      %eax, 28(%esp)
	leal      28(%esp), %eax
	leal      12(%esp), %ebx
	movl      $-1, 32(%esp)
	movl      $.LC08063DD9, 20(%esp)
	movl      $-1, 24(%esp)
	pushl     %eax
	leal      24(%esp), %eax
	pushl     %eax
	pushl     options
	pushl     %ebx
	call      _ZN7acommon6Config7replaceERKNS_10ParmStringES3_
.L0805285A:
	pushl     %ebx
	call      _ZN7acommon12PosibErrBase7destroyEv
.L08052860:
	movl      action, %eax
	addl      $16, %esp
	movl      options, %ebx
	testl     %eax, %eax
	jne       .L080527EE
.L08052876:
	subl      $12, %esp
	pushl     %ebx
	leal      44(%esp), %ebp
	call      _ZN8aspeller13find_languageERN7acommon6ConfigE
.L08052883:
	movl      $56, (%esp)
	call      _Znwj
.L0805288F:
	addl      $12, %esp
	movl      $0, 4(%eax)
	movl      $0, 8(%eax)
	movl      $2, 12(%eax)
	movl      $_ZTVN7acommon6StringE+8, 16(%eax)
	movl      $0, 20(%eax)
	movl      $0, 24(%eax)
	movl      $0, 28(%eax)
	movl      $0, 32(%eax)
	movl      $_ZTV18IstreamEnumeration+8, (%eax)
	movl      $_ZN7acommon3CINE, 36(%eax)
	movl      $_ZTVN7acommon6StringE+8, 40(%eax)
	movl      $0, 44(%eax)
	movl      $0, 48(%eax)
	movl      $0, 52(%eax)
	pushl     %ebx
	pushl     %eax
	pushl     %ebp
	call      _ZN8aspeller28create_default_readonly_dictEPN7acommon17StringEnumerationERNS0_6ConfigE
.L080528FB:
	movl      40(%esp), %eax
	movl      %eax, 32(%esp)
	addl      $12, %esp
	testl     %eax, %eax
	je        .L0805290E
.L0805290A:
	addl      $1, 8(%eax)
.L0805290E:
	subl      $12, %esp
	pushl     %ebp
	call      _ZN7acommon12PosibErrBase7destroyEv
.L08052917:
	movl      36(%esp), %eax
	addl      $16, %esp
	testl     %eax, %eax
	jne       .L08052A53
.L08052926:
	subl      $12, %esp
	leal      32(%esp), %eax
	pushl     %eax
	call      _ZN7acommon12PosibErrBase7destroyEv
.L08052933:
	addl      $16, %esp
	addl      $60, %esp
	popl      %ebx
	popl      %esi
	popl      %edi
	popl      %ebp
	ret       
.L0805293E:
	.p2align 4,,10
	.p2align 3
.L08052940:
	movl      $.LC08063DE0, 20(%esp)
	movl      $-1, 24(%esp)
	leal      28(%esp), %ebp
	subl      $4, %esp
	leal      24(%esp), %eax
	pushl     %eax
	pushl     %ebx
	pushl     %ebp
	call      _ZNK7acommon6Config8retrieveERKNS_10ParmStringE
.L08052963:
	leal      44(%esp), %eax
	pushl     %eax
	call      _ZNK7acommon6String5c_strEv
.L0805296D:
	movl      %eax, %esi
	movl      56(%esp), %eax
	subl      52(%esp), %eax
	movl      $255, (%esp)
	pushl     $-1
	pushl     $0
	pushl     $0
	pushl     $0
	pushl     %ebx
	pushl     %eax
	pushl     %esi
	leal      56(%esp), %eax
	pushl     %eax
	call      _ZN8aspeller12add_data_setEN7acommon10ParmStringERNS0_6ConfigEPNS_8DictListEPNS_11SpellerImplES1_j
.L08052993:
	movl      80(%esp), %eax
	movl      $_ZTVN7acommon6StringE+8, 76(%esp)
	addl      $44, %esp
	testl     %eax, %eax
	je        .L080529B2
.L080529A6:
	subl      $12, %esp
	pushl     %eax
	call      free
.L080529AF:
	addl      $16, %esp
.L080529B2:
	subl      $12, %esp
	pushl     %ebp
	call      _ZN7acommon12PosibErrBase7destroyEv
.L080529BB:
	movl      28(%esp), %eax
	addl      $16, %esp
	testl     %eax, %eax
	jne       .L08052A53
.L080529CA:
	movl      16(%esp), %esi
	subl      $12, %esp
	leal      24(%esp), %eax
	pushl     %eax
	call      _ZN7acommon12PosibErrBase7destroyEv
.L080529DB:
	movl      28(%esi), %eax
	movl      %ebx, %edx
	call      _ZL10setup_convPKN8aspeller8LanguageEPN7acommon6ConfigE
.L080529E5:
	movl      %eax, %ebx
	popl      %eax
	popl      %edx
	pushl     %ebx
	pushl     %esi
	call      _Z4dumpPN8aspeller10DictionaryEPN7acommon7ConvertE
.L080529F0:
	addl      $16, %esp
	testl     %ebx, %ebx
	je        .L08052800
.L080529FB:
	subl      $12, %esp
	pushl     %ebx
	call      _ZN7acommon7ConvertD1Ev
.L08052A04:
	movl      %ebx, (%esp)
	call      _ZdlPv
.L08052A0C:
	addl      $16, %esp
	addl      $60, %esp
	popl      %ebx
	popl      %esi
	popl      %edi
	popl      %ebp
	ret       
.L08052A17:
	.p2align 4
.L08052A20:
	movl      $.LC08063D11, %eax
	jmp       .L08052824
.L08052A2A:
	pushl     %ebx
	pushl     %ebx
	orl       $-1, %ebx
	pushl     $.LC08064290
	pushl     $.LC08063D1D
	call      dgettext
.L08052A3E:
	popl      %esi
	popl      %edi
	pushl     %ebx
	pushl     %eax
	call      _Z11print_errorN7acommon10ParmStringE
.L08052A47:
	movl      $1, (%esp)
	call      exit
.L08052A53:
	movl      (%eax), %ecx
	movb      $1, 4(%eax)
	orl       $-1, %edx
	movl      (%ecx), %eax
	pushl     %ecx
	pushl     %ecx
	pushl     %edx
	pushl     %eax
	call      _Z11print_errorN7acommon10ParmStringE
.L08052A67:
	movl      $1, (%esp)
	call      exit
	.size	_Z6masterv, .-_Z6masterv
# ----------------------
.L08052A73:
	.p2align 4
# ----------------------
	.globl	_Z8personalv
	.type	_Z8personalv, @function
_Z8personalv:
	pushl     %ebp
	pushl     %edi
	pushl     %esi
	pushl     %ebx
	subl      $76, %esp
	movl      args, %ebx
	movl      args+4, %eax
	subl      %ebx, %eax
	sarl      $4, %eax
	testl     %eax, %eax
	jne       .L08052C10
.L08052A9F:
	leal      36(%esp), %eax
	leal      32(%esp), %esi
	leal      44(%esp), %edi
	movl      %eax, 8(%esp)
.L08052AAF:
	movl      $.LC08063DF5, 44(%esp)
	movl      $-1, 48(%esp)
	movl      $.LC08063DFE, 36(%esp)
	movl      $-1, 40(%esp)
	pushl     %edi
	pushl     12(%esp)
	pushl     options
	pushl     %esi
	call      _ZN7acommon6Config7replaceERKNS_10ParmStringES3_
.L08052AE0:
	pushl     %esi
	call      _ZN7acommon12PosibErrBase7destroyEv
.L08052AE6:
	addl      $16, %esp
	cmpl      $1, action
	jbe       .L08052C91
.L08052AF6:
	movl      options, %ebp
	call      _ZN8aspeller25new_default_writable_dictEv
.L08052B01:
	movl      %eax, %ebx
	movl      (%eax), %eax
	subl      $4, %esp
	movl      12(%eax), %eax
	movl      $.LC08063E05, 40(%esp)
	movl      $-1, 44(%esp)
	movl      %eax, 16(%esp)
	pushl     12(%esp)
	pushl     %ebp
	pushl     %edi
	call      _ZNK7acommon6Config8retrieveERKNS_10ParmStringE
.L08052B2A:
	leal      60(%esp), %eax
	pushl     %eax
	call      _ZNK7acommon6String5c_strEv
.L08052B34:
	movl      %eax, %edx
	movl      72(%esp), %eax
	subl      68(%esp), %eax
	addl      $12, %esp
	pushl     $0
	pushl     $0
	pushl     %ebp
	pushl     %eax
	pushl     %edx
	pushl     %ebx
	pushl     %esi
	call      *44(%esp)
.L08052B4E:
	pushl     %esi
	call      _ZN7acommon12PosibErrBase7destroyEv
.L08052B54:
	movl      84(%esp), %eax
	movl      $_ZTVN7acommon6StringE+8, 80(%esp)
	addl      $32, %esp
	testl     %eax, %eax
	je        .L08052B73
.L08052B67:
	subl      $12, %esp
	pushl     %eax
	call      free
.L08052B70:
	addl      $16, %esp
.L08052B73:
	subl      $12, %esp
	pushl     %edi
	call      _ZN7acommon12PosibErrBase7destroyEv
.L08052B7C:
	movl      (%ebx), %eax
	movl      %ebx, (%esp)
	call      *40(%eax)
.L08052B84:
	movl      %eax, %esi
	movl      28(%ebx), %eax
	movl      %ebp, %edx
	call      _ZL10setup_convPKN8aspeller8LanguageEPN7acommon6ConfigE
.L08052B90:
	addl      $16, %esp
	movl      %eax, %edi
	jmp       .L08052BC2
.L08052B97:
	.p2align 4
.L08052BA0:
	pushl     %edi
	pushl     28(%ebx)
	pushl     $_ZN7acommon4COUTE+8
	pushl     %eax
	call      _ZNK8aspeller9WordEntry5writeERN7acommon7OStreamERKNS_8LanguageEPNS1_7ConvertE
.L08052BAF:
	popl      %eax
	popl      %edx
	movl      _ZN7acommon4COUTE+8, %eax
	pushl     $10
	pushl     $_ZN7acommon4COUTE+8
	call      *(%eax)
.L08052BBF:
	addl      $16, %esp
.L08052BC2:
	subl      $12, %esp
	movl      (%esi), %eax
	pushl     %esi
	call      *8(%eax)
.L08052BCB:
	addl      $16, %esp
	testl     %eax, %eax
	jne       .L08052BA0
.L08052BD2:
	subl      $12, %esp
	movl      (%ebx), %eax
	pushl     %ebx
	call      *4(%eax)
.L08052BDB:
	addl      $16, %esp
	testl     %edi, %edi
	je        .L08052BF6
.L08052BE2:
	subl      $12, %esp
	pushl     %edi
	call      _ZN7acommon7ConvertD1Ev
.L08052BEB:
	movl      %edi, (%esp)
	call      _ZdlPv
.L08052BF3:
	addl      $16, %esp
.L08052BF6:
	subl      $12, %esp
	movl      (%esi), %eax
	pushl     %esi
	call      *20(%eax)
.L08052BFF:
	addl      $16, %esp
	addl      $76, %esp
	popl      %ebx
	popl      %esi
	popl      %edi
	popl      %ebp
	ret       
.L08052C0A:
	.p2align 4,,10
	.p2align 3
.L08052C10:
	subl      $12, %esp
	pushl     %ebx
	call      _ZNK7acommon6String5c_strEv
.L08052C19:
	movl      %eax, 60(%esp)
	movl      8(%ebx), %eax
	leal      60(%esp), %edi
	subl      4(%ebx), %eax
	leal      48(%esp), %esi
	movl      $.LC08063DEC, 52(%esp)
	movl      $-1, 56(%esp)
	movl      %eax, 64(%esp)
	pushl     %edi
	leal      56(%esp), %eax
	movl      %eax, 28(%esp)
	pushl     %eax
	pushl     options
	pushl     %esi
	call      _ZN7acommon6Config7replaceERKNS_10ParmStringES3_
.L08052C55:
	movl      60(%esp), %eax
	movl      %eax, 56(%esp)
	addl      $28, %esp
	testl     %eax, %eax
	je        .L08052C68
.L08052C64:
	addl      $1, 8(%eax)
.L08052C68:
	subl      $12, %esp
	pushl     %esi
	call      _ZN7acommon12PosibErrBase7destroyEv
.L08052C71:
	movl      44(%esp), %eax
	addl      $16, %esp
	testl     %eax, %eax
	jne       .L08052CC8
.L08052C7C:
	subl      $12, %esp
	leal      40(%esp), %eax
	pushl     %eax
	call      _ZN7acommon12PosibErrBase7destroyEv
.L08052C89:
	addl      $16, %esp
	jmp       .L08052AAF
.L08052C91:
	subl      $8, %esp
	pushl     $.LC080642BC
	pushl     $.LC08063D1D
	call      dgettext
.L08052CA3:
	movl      $-1, 64(%esp)
	movl      %eax, 60(%esp)
	popl      %ecx
	popl      %ebx
	pushl     %edi
	pushl     $_ZN7acommon4CERRE
	call      _ZN7acommon7FStreamlsERKNS_10ParmStringE
.L08052CBC:
	movl      $3, (%esp)
	call      exit
.L08052CC8:
	movl      (%eax), %ecx
	movb      $1, 4(%eax)
	subl      $8, %esp
	movl      $-1, %edx
	movl      (%ecx), %eax
	pushl     %edx
	pushl     %eax
	call      _Z11print_errorN7acommon10ParmStringE
.L08052CDF:
	movl      $1, (%esp)
	call      exit
	.size	_Z8personalv, .-_Z8personalv
# ----------------------
.L08052CEB:
	.p2align 4,,10
	.p2align 3
# ----------------------
	.globl	_Z4replv
	.type	_Z4replv, @function
_Z4replv:
	pushl     %ebp
	pushl     %edi
	pushl     %esi
	pushl     %ebx
	subl      $140, %esp
	movl      args, %edx
	movl      args+4, %eax
	subl      %edx, %eax
	sarl      $4, %eax
	testl     %eax, %eax
	jne       .L08052D30
.L08052D0E:
	movl      action, %eax
	cmpl      $1, %eax
	jbe       .L080530FA
.L08052D1C:
	cmpl      $2, %eax
	je        .L08052D7A
.L08052D21:
	addl      $140, %esp
	popl      %ebx
	popl      %esi
	popl      %edi
	popl      %ebp
	ret       
.L08052D2C:
	.p2align 4,,10
	.p2align 3
.L08052D30:
	subl      $12, %esp
	pushl     %edx
	call      _ZNK7acommon6String5c_strEv
.L08052D39:
	movl      %eax, 100(%esp)
	leal      100(%esp), %eax
	leal      56(%esp), %ebx
	movl      $-1, 104(%esp)
	movl      $.LC08063E13, 64(%esp)
	movl      $-1, 68(%esp)
	pushl     %eax
	leal      68(%esp), %eax
	pushl     %eax
	pushl     options
	pushl     %ebx
	call      _ZN7acommon6Config7replaceERKNS_10ParmStringES3_
.L08052D6F:
	pushl     %ebx
	call      _ZN7acommon12PosibErrBase7destroyEv
.L08052D75:
	addl      $32, %esp
	jmp       .L08052D0E
.L08052D7A:
	call      _ZN8aspeller28new_default_replacement_dictEv
.L08052D7F:
	movl      %eax, 8(%esp)
	movl      (%eax), %eax
	subl      $4, %esp
	movl      options, %ebp
	movl      12(%eax), %ebx
	movl      $.LC08063E18, 52(%esp)
	movl      $-1, 56(%esp)
	leal      52(%esp), %edi
	pushl     %edi
	pushl     %ebp
	leal      96(%esp), %edi
	pushl     %edi
	call      _ZNK7acommon6Config8retrieveERKNS_10ParmStringE
.L08052DB1:
	leal      100(%esp), %eax
	pushl     %eax
	call      _ZNK7acommon6String5c_strEv
.L08052DBB:
	movl      %eax, %esi
	movl      112(%esp), %eax
	movl      %eax, %edx
	subl      108(%esp), %edx
	addl      $12, %esp
	pushl     $0
	pushl     $0
	pushl     %ebp
	pushl     %edx
	pushl     %esi
	movl      32(%esp), %esi
	pushl     %esi
	leal      68(%esp), %eax
	pushl     %eax
	call      *%ebx
.L08052DDD:
	leal      68(%esp), %eax
	pushl     %eax
	call      _ZN7acommon12PosibErrBase7destroyEv
.L08052DE7:
	addl      $20, %esp
	leal      96(%esp), %eax
	pushl     %eax
	call      _ZN7acommon8PosibErrINS_6StringEED1Ev
.L08052DF4:
	movl      (%esi), %eax
	leal      100(%esp), %edi
	movl      %esi, (%esp)
	call      *40(%eax)
.L08052E00:
	movl      $11, %ecx
	movl      %eax, 28(%esp)
	xorl      %eax, %eax
	rep stosl     
	movl      options, %edx
	movl      28(%esi), %eax
	call      _ZL10setup_convPKN8aspeller8LanguageEPN7acommon6ConfigE
.L08052E1B:
	movl      $0, 68(%esp)
	movl      %eax, 64(%esp)
	movl      $0, 72(%esp)
	movl      $0, 76(%esp)
	movl      $_ZTVN7acommon6StringE+8, 80(%esp)
	movl      $0, 84(%esp)
	movl      $0, 88(%esp)
	movl      $0, 92(%esp)
	movl      %eax, 96(%esp)
	addl      $16, %esp
	.p2align 4,,10
	.p2align 3
.L08052E60:
	subl      $12, %esp
	movl      24(%esp), %edi
	movl      (%edi), %eax
	pushl     %edi
	call      *8(%eax)
.L08052E6D:
	addl      $16, %esp
	testl     %eax, %eax
	movl      %eax, %esi
	je        .L080530BD
.L08052E7A:
	subl      $4, %esp
	movl      12(%esp), %edi
	leal      88(%esp), %ebx
	movl      (%edi), %eax
	pushl     %ebx
	pushl     %esi
	pushl     %edi
	call      *80(%eax)
.L08052E8D:
	addl      $16, %esp
	leal      32(%esp), %edi
	leal      64(%esp), %ebx
	jmp       .L08052F8D
.L08052E9D:
	.p2align 4,,10
	.p2align 3
.L08052EA0:
	movl      68(%esp), %eax
	movl      %eax, 72(%esp)
	movl      28(%ebp), %eax
	testl     %eax, %eax
	je        .L08052FD0
.L08052EB3:
	movl      (%eax), %ecx
	pushl     %ebx
	pushl     $-1
	pushl     %edx
	pushl     %eax
	call      *4(%ecx)
.L08052EBD:
	addl      $16, %esp
	movl      68(%esp), %eax
	testl     %eax, %eax
	je        .L08053012
.L08052ECC:
	movl      72(%esp), %eax
	movb      $0, (%eax)
	movl      48(%esp), %ebp
	movl      68(%esp), %edx
	movl      $-1, 36(%esp)
	movl      $.LC08064001, 24(%esp)
	movl      $-1, 28(%esp)
	testl     %ebp, %ebp
	movl      (%esi), %eax
	movl      %edx, 32(%esp)
	je        .L08052F30
.L08052EFD:
	movl      %edx, 72(%esp)
	movl      28(%ebp), %edx
	testl     %edx, %edx
	je        .L08053040
.L08052F0C:
	movl      (%edx), %ecx
	pushl     %ebx
	pushl     $-1
	pushl     %eax
	pushl     %edx
	call      *4(%ecx)
.L08052F16:
	addl      $16, %esp
	movl      68(%esp), %ebp
	testl     %ebp, %ebp
	je        .L08053082
.L08052F25:
	movl      72(%esp), %eax
	movb      $0, (%eax)
	movl      68(%esp), %eax
.L08052F30:
	movl      %eax, 16(%esp)
	movl      $-1, 20(%esp)
	subl      $8, %esp
	leal      24(%esp), %eax
	pushl     %eax
	pushl     $_ZN7acommon4COUTE
	call      _ZN7acommon7FStreamlsERKNS_10ParmStringE
.L08052F4E:
	popl      %ecx
	popl      %ebp
	leal      32(%esp), %ecx
	pushl     %ecx
	pushl     %eax
	call      _ZN7acommon7FStreamlsERKNS_10ParmStringE
.L08052F5B:
	popl      %edx
	popl      %ecx
	pushl     %edi
	pushl     %eax
	call      _ZN7acommon7FStreamlsERKNS_10ParmStringE
.L08052F64:
	popl      %ebp
	popl      %edx
	leal      48(%esp), %ecx
	pushl     %ecx
	pushl     %eax
	call      _ZN7acommon7FStreamlsERKNS_10ParmStringE
.L08052F71:
	movl      112(%esp), %eax
	addl      $16, %esp
	testl     %eax, %eax
	je        .L080530B0
.L08052F80:
	subl      $12, %esp
	leal      96(%esp), %ecx
	pushl     %ecx
	call      *%eax
.L08052F8A:
	addl      $16, %esp
.L08052F8D:
	movl      48(%esp), %ebp
	movl      $.LC08063D10, 40(%esp)
	movl      $-1, 44(%esp)
	movl      84(%esp), %edx
	testl     %ebp, %ebp
	jne       .L08052EA0
.L08052FAD:
	movl      %edx, 32(%esp)
	movl      $-1, 36(%esp)
	movl      $.LC08064001, 24(%esp)
	movl      $-1, 28(%esp)
	movl      (%esi), %eax
	jmp       .L08052F30
.L08052FD0:
	movl      52(%esp), %eax
	movl      %eax, 56(%esp)
	movl      8(%ebp), %eax
	movl      (%eax), %ecx
	movl      %ecx, 4(%esp)
	leal      52(%esp), %ecx
	pushl     %ecx
	pushl     $-1
	pushl     %edx
	pushl     %eax
	movl      20(%esp), %eax
	call      *12(%eax)
.L08052FF1:
	movl      20(%ebp), %eax
	movl      (%eax), %edx
	pushl     %ebx
	pushl     76(%esp)
	pushl     76(%esp)
	pushl     %eax
	call      *12(%edx)
.L08053003:
	addl      $32, %esp
	movl      68(%esp), %eax
	testl     %eax, %eax
	jne       .L08052ECC
.L08053012:
	subl      $8, %esp
	pushl     $0
	pushl     %ebx
	call      _ZN7acommon6String9reserve_iEj
.L0805301D:
	addl      $16, %esp
	movl      68(%esp), %eax
	testl     %eax, %eax
	jne       .L08052ECC
.L0805302C:
	subl      $8, %esp
	pushl     $0
	pushl     %ebx
	call      _ZN7acommon6String9reserve_iEj
.L08053037:
	addl      $16, %esp
	jmp       .L08052ECC
.L0805303F:
	.p2align 4,,10
	.p2align 3
.L08053040:
	movl      52(%esp), %edx
	movl      %edx, 56(%esp)
	movl      8(%ebp), %edx
	movl      (%edx), %ecx
	movl      %ecx, 4(%esp)
	leal      52(%esp), %ecx
	pushl     %ecx
	pushl     $-1
	pushl     %eax
	pushl     %edx
	movl      20(%esp), %eax
	call      *12(%eax)
.L08053061:
	movl      20(%ebp), %eax
	movl      (%eax), %edx
	pushl     %ebx
	pushl     76(%esp)
	pushl     76(%esp)
	pushl     %eax
	call      *12(%edx)
.L08053073:
	addl      $32, %esp
	movl      68(%esp), %ebp
	testl     %ebp, %ebp
	jne       .L08052F25
.L08053082:
	subl      $8, %esp
	pushl     $0
	pushl     %ebx
	call      _ZN7acommon6String9reserve_iEj
.L0805308D:
	addl      $16, %esp
	movl      68(%esp), %ecx
	testl     %ecx, %ecx
	jne       .L08052F25
.L0805309C:
	subl      $8, %esp
	pushl     $0
	pushl     %ebx
	call      _ZN7acommon6String9reserve_iEj
.L080530A7:
	addl      $16, %esp
	jmp       .L08052F25
.L080530AF:
	.p2align 4,,10
	.p2align 3
.L080530B0:
	movl      $0, 84(%esp)
	jmp       .L08052E60
.L080530BD:
	subl      $12, %esp
	movl      20(%esp), %esi
	movl      (%esi), %eax
	pushl     %esi
	call      *4(%eax)
.L080530CA:
	popl      %eax
	leal      92(%esp), %eax
	pushl     %eax
	call      _ZN7acommon7ConvObjD1Ev
.L080530D5:
	popl      %edx
	leal      60(%esp), %eax
	pushl     %eax
	call      _ZN7acommon5ConvPD1Ev
.L080530E0:
	movl      28(%esp), %esi
	movl      (%esi), %eax
	movl      %esi, (%esp)
	call      *20(%eax)
.L080530EC:
	addl      $16, %esp
	addl      $140, %esp
	popl      %ebx
	popl      %esi
	popl      %edi
	popl      %ebp
	ret       
.L080530FA:
	subl      $8, %esp
	pushl     $.LC080642F8
	pushl     $.LC08063D1D
	call      dgettext
.L0805310C:
	movl      $-1, 104(%esp)
	movl      %eax, 100(%esp)
	popl      %eax
	popl      %edx
	leal      92(%esp), %eax
	pushl     %eax
	pushl     $_ZN7acommon4CERRE
	call      _ZN7acommon7FStreamlsERKNS_10ParmStringE
.L08053129:
	movl      $3, (%esp)
	call      exit
	.size	_Z4replv, .-_Z4replv
# ----------------------
.L08053135:
	.p2align 4
# ----------------------
	.globl	_Z10soundslikev
	.type	_Z10soundslikev, @function
_Z10soundslikev:
	pushl     %ebp
	pushl     %edi
	pushl     %esi
	pushl     %ebx
	subl      $152, %esp
	pushl     options
	call      _ZN8aspeller13find_languageERN7acommon6ConfigE
.L08053155:
	movl      $0, 108(%esp)
	movl      $-1, 112(%esp)
	addl      $12, %esp
	leal      96(%esp), %eax
	pushl     %eax
	pushl     options
	leal      28(%esp), %eax
	pushl     %eax
	call      _ZN8aspeller12new_languageERKN7acommon6ConfigERKNS0_10ParmStringE
.L0805317D:
	movl      28(%esp), %eax
	addl      $12, %esp
	testl     %eax, %eax
	jne       .L08053636
.L0805318C:
	movl      20(%esp), %ebp
	movl      options, %eax
	movl      %ebp, %edx
	call      _ZL10setup_convPN7acommon6ConfigEPKN8aspeller8LanguageE
.L0805319C:
	movl      options, %edx
	movl      %eax, 56(%esp)
	movl      %eax, 88(%esp)
	movl      %ebp, %eax
	movl      $0, 60(%esp)
	movl      $0, 64(%esp)
	movl      $0, 68(%esp)
	movl      $_ZTVN7acommon6StringE+8, 72(%esp)
	movl      $0, 76(%esp)
	movl      $0, 80(%esp)
	movl      $0, 84(%esp)
	call      _ZL10setup_convPKN8aspeller8LanguageEPN7acommon6ConfigE
.L080531E9:
	movl      $0, 96(%esp)
	movl      %eax, 92(%esp)
	movl      $0, 100(%esp)
	movl      $0, 104(%esp)
	movl      $_ZTVN7acommon6StringE+8, 108(%esp)
	movl      $0, 112(%esp)
	movl      $0, 116(%esp)
	movl      $0, 120(%esp)
	movl      %eax, 124(%esp)
	movl      $_ZTVN7acommon6StringE+8, 24(%esp)
	movl      $0, 28(%esp)
	movl      $0, 32(%esp)
	movl      $0, 36(%esp)
	movl      $_ZTVN7acommon6StringE+8, 40(%esp)
	movl      $0, 44(%esp)
	movl      $0, 48(%esp)
	movl      $0, 52(%esp)
	call      _ZL11line_bufferv
.L0805326E:
	jmp       .L0805332A
.L08053273:
	.p2align 4,,10
	.p2align 3
.L08053278:
	pushl     %eax
	pushl     %esi
	pushl     %edi
	pushl     %edx
	call      *%ecx
.L0805327E:
	movl      60(%esp), %edx
	subl      %edx, %eax
	movl      %eax, %ebx
	movl      68(%esp), %eax
	addl      $16, %esp
	subl      %edx, %eax
	cmpl      %eax, %ebx
	jl        .L080532A8
.L08053293:
	subl      $8, %esp
	pushl     %ebx
	leal      52(%esp), %eax
	pushl     %eax
	call      _ZN7acommon6String9reserve_iEj
.L080532A1:
	movl      60(%esp), %edx
	addl      $16, %esp
.L080532A8:
	addl      %edx, %ebx
	testl     %edx, %edx
	movl      $.LC08063D11, %eax
	movl      %ebx, 48(%esp)
	je        .L080532BE
.L080532B7:
	movb      $0, (%ebx)
	movl      44(%esp), %eax
.L080532BE:
	movl      92(%esp), %ebx
	testl     %ebx, %ebx
	je        .L08053301
.L080532C6:
	movl      112(%esp), %edx
	movl      %edx, 116(%esp)
	movl      28(%ebx), %edx
	testl     %edx, %edx
	je        .L08053430
.L080532D9:
	leal      108(%esp), %ebx
	movl      (%edx), %ecx
	pushl     %ebx
	pushl     $-1
	pushl     %eax
	pushl     %edx
	call      *4(%ecx)
.L080532E7:
	addl      $16, %esp
	movl      112(%esp), %esi
	testl     %esi, %esi
	je        .L0805346E
.L080532F6:
	movl      116(%esp), %eax
	movb      $0, (%eax)
	movl      112(%esp), %eax
.L08053301:
	movl      28(%esp), %edx
	testl     %edx, %edx
	je        .L08053528
.L0805330D:
	movl      32(%esp), %edx
	movb      $0, (%edx)
	movl      28(%esp), %edx
.L08053318:
	subl      $4, %esp
	pushl     %eax
	pushl     %edx
	pushl     $.LC08063E22
	call      printf
.L08053327:
	addl      $16, %esp
.L0805332A:
	movl      28(%esp), %eax
	subl      $4, %esp
	movl      %eax, 36(%esp)
	movsbl    _ZN7acommon3CINE+4, %eax
	pushl     %eax
	leal      32(%esp), %eax
	pushl     %eax
	movl      _ZN7acommon3CINE, %eax
	pushl     $_ZN7acommon3CINE
	call      *(%eax)
.L0805334E:
	addl      $16, %esp
	testb     %al, %al
	je        .L08053538
.L08053359:
	movl      28(%esp), %eax
	testl     %eax, %eax
	je        .L08053518
.L08053365:
	movl      32(%esp), %eax
	movb      $0, (%eax)
	movl      28(%esp), %esi
.L08053370:
	movl      56(%esp), %ebx
	testl     %ebx, %ebx
	je        .L080533B3
.L08053378:
	movl      76(%esp), %eax
	movl      %eax, 80(%esp)
	movl      28(%ebx), %eax
	testl     %eax, %eax
	je        .L080534A0
.L0805338B:
	leal      72(%esp), %edi
	movl      (%eax), %edx
	pushl     %edi
	pushl     $-1
	pushl     %esi
	pushl     %eax
	call      *4(%edx)
.L08053399:
	addl      $16, %esp
	movl      76(%esp), %eax
	testl     %eax, %eax
	je        .L080534DE
.L080533A8:
	movl      80(%esp), %eax
	movb      $0, (%eax)
	movl      76(%esp), %esi
.L080533B3:
	subl      $12, %esp
	pushl     %esi
	call      strlen
.L080533BC:
	addl      $16, %esp
	movl      44(%esp), %edi
	movl      52(%esp), %edx
	movl      %eax, %ebx
	subl      %edi, %edx
	cmpl      %edx, %ebx
	jl        .L080533EC
.L080533CF:
	movl      %eax, 8(%esp)
	subl      $8, %esp
	pushl     %ebx
	leal      52(%esp), %edx
	pushl     %edx
	call      _ZN7acommon6String9reserve_iEj
.L080533E1:
	movl      60(%esp), %edi
	addl      $16, %esp
	movl      8(%esp), %eax
.L080533EC:
	leal      (%edi,%ebx), %edx
	cmpl      $-1, %ebx
	movl      %edx, 48(%esp)
	movl      6040(%ebp), %edx
	movl      (%edx), %ecx
	movl      4(%ecx), %ecx
	jne       .L08053278
.L08053407:
	movl      %ecx, 12(%esp)
	movl      %edx, 8(%esp)
	subl      $12, %esp
	pushl     %esi
	call      strlen
.L08053418:
	addl      $16, %esp
	movl      12(%esp), %ecx
	movl      8(%esp), %edx
	jmp       .L08053278
.L08053428:
	.p2align 4
.L08053430:
	movl      96(%esp), %edx
	leal      96(%esp), %esi
	movl      %edx, 100(%esp)
	movl      8(%ebx), %edx
	movl      (%edx), %ecx
	pushl     %esi
	pushl     $-1
	pushl     %eax
	pushl     %edx
	call      *12(%ecx)
.L08053449:
	movl      20(%ebx), %eax
	leal      124(%esp), %ebx
	movl      (%eax), %edx
	pushl     %ebx
	pushl     120(%esp)
	pushl     120(%esp)
	pushl     %eax
	call      *12(%edx)
.L0805345F:
	addl      $32, %esp
	movl      112(%esp), %esi
	testl     %esi, %esi
	jne       .L080532F6
.L0805346E:
	subl      $8, %esp
	pushl     $0
	pushl     %ebx
	call      _ZN7acommon6String9reserve_iEj
.L08053479:
	addl      $16, %esp
	movl      112(%esp), %ecx
	testl     %ecx, %ecx
	jne       .L080532F6
.L08053488:
	subl      $8, %esp
	pushl     $0
	pushl     %ebx
	call      _ZN7acommon6String9reserve_iEj
.L08053493:
	addl      $16, %esp
	jmp       .L080532F6
.L0805349B:
	.p2align 4,,10
	.p2align 3
.L080534A0:
	movl      60(%esp), %eax
	leal      60(%esp), %edi
	movl      %eax, 64(%esp)
	movl      8(%ebx), %eax
	movl      (%eax), %edx
	pushl     %edi
	pushl     $-1
	pushl     %esi
	pushl     %eax
	call      *12(%edx)
.L080534B9:
	movl      20(%ebx), %eax
	leal      88(%esp), %esi
	movl      (%eax), %edx
	pushl     %esi
	pushl     84(%esp)
	pushl     84(%esp)
	pushl     %eax
	call      *12(%edx)
.L080534CF:
	addl      $32, %esp
	movl      76(%esp), %eax
	testl     %eax, %eax
	jne       .L080533A8
.L080534DE:
	subl      $8, %esp
	pushl     $0
	leal      84(%esp), %eax
	pushl     %eax
	call      _ZN7acommon6String9reserve_iEj
.L080534ED:
	addl      $16, %esp
	movl      76(%esp), %edi
	testl     %edi, %edi
	jne       .L080533A8
.L080534FC:
	subl      $8, %esp
	pushl     $0
	leal      84(%esp), %eax
	pushl     %eax
	call      _ZN7acommon6String9reserve_iEj
.L0805350B:
	addl      $16, %esp
	jmp       .L080533A8
.L08053513:
	.p2align 4,,10
	.p2align 3
.L08053518:
	movl      $.LC08063D11, %esi
	jmp       .L08053370
.L08053522:
	.p2align 4,,10
	.p2align 3
.L08053528:
	movl      $.LC08063D11, %edx
	jmp       .L08053318
.L08053532:
	.p2align 4,,10
	.p2align 3
.L08053538:
	movl      44(%esp), %eax
	movl      $_ZTVN7acommon6StringE+8, 40(%esp)
	testl     %eax, %eax
	je        .L08053554
.L08053548:
	subl      $12, %esp
	pushl     %eax
	call      free
.L08053551:
	addl      $16, %esp
.L08053554:
	movl      28(%esp), %eax
	movl      $_ZTVN7acommon6StringE+8, 24(%esp)
	testl     %eax, %eax
	je        .L08053570
.L08053564:
	subl      $12, %esp
	pushl     %eax
	call      free
.L0805356D:
	addl      $16, %esp
.L08053570:
	movl      124(%esp), %ebx
	testl     %ebx, %ebx
	je        .L0805358C
.L08053578:
	subl      $12, %esp
	pushl     %ebx
	call      _ZN7acommon7ConvertD1Ev
.L08053581:
	movl      %ebx, (%esp)
	call      _ZdlPv
.L08053589:
	addl      $16, %esp
.L0805358C:
	movl      112(%esp), %eax
	movl      $_ZTVN7acommon6StringE+8, 108(%esp)
	testl     %eax, %eax
	je        .L080535A8
.L0805359C:
	subl      $12, %esp
	pushl     %eax
	call      free
.L080535A5:
	addl      $16, %esp
.L080535A8:
	movl      96(%esp), %eax
	testl     %eax, %eax
	je        .L080535BC
.L080535B0:
	subl      $12, %esp
	pushl     %eax
	call      _ZdlPv
.L080535B9:
	addl      $16, %esp
.L080535BC:
	movl      88(%esp), %ebx
	testl     %ebx, %ebx
	je        .L080535D8
.L080535C4:
	subl      $12, %esp
	pushl     %ebx
	call      _ZN7acommon7ConvertD1Ev
.L080535CD:
	movl      %ebx, (%esp)
	call      _ZdlPv
.L080535D5:
	addl      $16, %esp
.L080535D8:
	movl      76(%esp), %eax
	movl      $_ZTVN7acommon6StringE+8, 72(%esp)
	testl     %eax, %eax
	je        .L080535F4
.L080535E8:
	subl      $12, %esp
	pushl     %eax
	call      free
.L080535F1:
	addl      $16, %esp
.L080535F4:
	movl      60(%esp), %eax
	testl     %eax, %eax
	je        .L08053608
.L080535FC:
	subl      $12, %esp
	pushl     %eax
	call      _ZdlPv
.L08053605:
	addl      $16, %esp
.L08053608:
	subl      $12, %esp
	leal      28(%esp), %eax
	pushl     %eax
	call      _ZN7acommon12PosibErrBase7destroyEv
.L08053615:
	addl      $16, %esp
	testl     %ebp, %ebp
	je        .L0805362B
.L0805361C:
	subl      $8, %esp
	pushl     %ebp
	pushl     16(%ebp)
	call      _ZN7acommon18release_cache_dataEPNS_15GlobalCacheBaseEPKNS_9CacheableE
.L08053628:
	addl      $16, %esp
.L0805362B:
	addl      $140, %esp
	popl      %ebx
	popl      %esi
	popl      %edi
	popl      %ebp
	ret       
.L08053636:
	movl      (%eax), %ecx
	movb      $1, 4(%eax)
	subl      $8, %esp
	movl      $-1, %edx
	movl      (%ecx), %eax
	pushl     %edx
	pushl     %eax
	call      _Z11print_errorN7acommon10ParmStringE
.L0805364D:
	movl      $1, (%esp)
	call      exit
	.size	_Z10soundslikev, .-_Z10soundslikev
# ----------------------
.L08053659:
	.p2align 4
# ----------------------
	.globl	_Z5munchv
	.type	_Z5munchv, @function
_Z5munchv:
	pushl     %ebp
	pushl     %edi
	pushl     %esi
	pushl     %ebx
	subl      $184, %esp
	pushl     options
	call      _ZN8aspeller13find_languageERN7acommon6ConfigE
.L08053675:
	movl      $0, 136(%esp)
	movl      $-1, 140(%esp)
	addl      $12, %esp
	leal      124(%esp), %eax
	pushl     %eax
	pushl     options
	leal      28(%esp), %eax
	pushl     %eax
	call      _ZN8aspeller12new_languageERKN7acommon6ConfigERKNS0_10ParmStringE
.L080536A3:
	movl      28(%esp), %eax
	addl      $12, %esp
	testl     %eax, %eax
	jne       .L08053C7C
.L080536B2:
	movl      20(%esp), %eax
	movl      %eax, 12(%esp)
	movl      %eax, %edi
	movl      %eax, %edx
	movl      options, %eax
	call      _ZL10setup_convPN7acommon6ConfigEPKN8aspeller8LanguageE
.L080536C8:
	movl      options, %edx
	movl      %eax, 48(%esp)
	movl      %eax, 80(%esp)
	movl      %edi, %eax
	movl      $0, 52(%esp)
	movl      $0, 56(%esp)
	movl      $0, 60(%esp)
	movl      $_ZTVN7acommon6StringE+8, 64(%esp)
	movl      $0, 68(%esp)
	movl      $0, 72(%esp)
	movl      $0, 76(%esp)
	call      _ZL10setup_convPKN8aspeller8LanguageEPN7acommon6ConfigE
.L08053715:
	movl      $0, 88(%esp)
	movl      %eax, 84(%esp)
	subl      $4, %esp
	movl      $0, 96(%esp)
	movl      $0, 100(%esp)
	movl      $_ZTVN7acommon6StringE+8, 104(%esp)
	movl      $0, 108(%esp)
	movl      $0, 112(%esp)
	movl      $0, 116(%esp)
	movl      %eax, 120(%esp)
	movl      $_ZTVN7acommon6StringE+8, 36(%esp)
	movl      $0, 40(%esp)
	movl      $0, 44(%esp)
	movl      $0, 48(%esp)
	movl      $0, 124(%esp)
	movl      $0, 128(%esp)
	pushl     $4
	pushl     $1024
	leal      140(%esp), %eax
	pushl     %eax
	call      _ZN7acommon8ObjStackC1Ejj
.L0805379F:
	call      _ZL11line_bufferv
.L080537A4:
	addl      $16, %esp
	leal      24(%esp), %edi
	.p2align 4,,10
	.p2align 3
.L080537B0:
	movl      36(%esp), %eax
	subl      $4, %esp
	movl      %eax, 44(%esp)
	movsbl    _ZN7acommon3CINE+4, %eax
	pushl     %eax
	leal      40(%esp), %eax
	pushl     %eax
	movl      _ZN7acommon3CINE, %eax
	pushl     $_ZN7acommon3CINE
	call      *(%eax)
.L080537D4:
	addl      $16, %esp
	testb     %al, %al
	je        .L08053BEB
.L080537DF:
	subl      $12, %esp
	leal      44(%esp), %eax
	pushl     %eax
	call      _ZNK7acommon6String5c_strEv
.L080537EC:
	movl      %eax, 40(%esp)
	movl      56(%esp), %eax
	subl      52(%esp), %eax
	movl      %eax, 44(%esp)
	popl      %ecx
	popl      %ebx
	pushl     %edi
	leal      60(%esp), %eax
	pushl     %eax
	call      _ZN7acommon5ConvPclERKNS_10ParmStringE
.L08053809:
	movl      %eax, 16(%esp)
	movl      28(%esp), %eax
	movl      $-1, 20(%esp)
	addl      $16, %esp
	movl      6044(%eax), %eax
	testl     %eax, %eax
	je        .L08053844
.L08053826:
	subl      $12, %esp
	pushl     $1
	leal      136(%esp), %ecx
	pushl     %ecx
	pushl     24(%esp)
	pushl     24(%esp)
	pushl     %eax
	call      _ZNK8aspeller8AffixMgr5munchEN7acommon10ParmStringEPNS_9GuessInfoEb
.L08053841:
	addl      $32, %esp
.L08053844:
	subl      $12, %esp
	leal      44(%esp), %eax
	pushl     %eax
	call      _ZNK7acommon6String5c_strEv
.L08053851:
	movl      %eax, 40(%esp)
	movl      56(%esp), %eax
	subl      52(%esp), %eax
	movl      %eax, 44(%esp)
	popl      %eax
	popl      %edx
	pushl     %edi
	pushl     $_ZN7acommon4COUTE
	call      _ZN7acommon7FStreamlsERKNS_10ParmStringE
.L0805386E:
	movl      140(%esp), %ebx
	addl      $16, %esp
	leal      100(%esp), %ebp
	testl     %ebx, %ebx
	jne       .L08053922
.L08053884:
	jmp       .L080539AD
.L08053889:
	.p2align 4
.L08053890:
	movl      104(%esp), %eax
	movl      %eax, 108(%esp)
	movl      28(%esi), %eax
	movl      4(%ebx), %edx
	testl     %eax, %eax
	je        .L08053A40
.L080538A6:
	movl      (%eax), %ecx
	pushl     %ebp
	pushl     $-1
	pushl     %edx
	pushl     %eax
	call      *4(%ecx)
.L080538B0:
	addl      $16, %esp
	movl      104(%esp), %eax
	testl     %eax, %eax
	je        .L08053A82
.L080538BF:
	movl      108(%esp), %eax
	movb      $0, (%eax)
	movl      104(%esp), %eax
.L080538CA:
	movl      %eax, 24(%esp)
	movl      $-1, 28(%esp)
	subl      $8, %esp
	pushl     _ZN7acommon4COUTE+12
	pushl     $32
	call      _IO_putc
.L080538E6:
	popl      %ecx
	popl      %esi
	pushl     %edi
	pushl     $_ZN7acommon4COUTE
	call      _ZN7acommon7FStreamlsERKNS_10ParmStringE
.L080538F3:
	popl      %edx
	popl      %ecx
	pushl     12(%eax)
	pushl     $47
	call      _IO_putc
.L080538FF:
	movzwl    28(%ebx), %eax
	addl      $16, %esp
	testw     %ax, %ax
	jne       .L080539C8
.L0805390F:
	movzwl    30(%ebx), %eax
	testw     %ax, %ax
	jne       .L08053938
.L08053918:
	movl      (%ebx), %ebx
	testl     %ebx, %ebx
	je        .L080539AD
.L08053922:
	movl      84(%esp), %esi
	testl     %esi, %esi
	jne       .L08053890
.L0805392E:
	movl      4(%ebx), %eax
	jmp       .L080538CA
.L08053933:
	.p2align 4,,10
	.p2align 3
.L08053938:
	movl      84(%esp), %esi
	movl      104(%esp), %edx
	testl     %esi, %esi
	movl      %edx, 108(%esp)
	je        .L08053AB0
.L0805394C:
	xorl      %edx, %edx
	movw      %dx, 24(%esp)
	movb      %al, 24(%esp)
	movl      28(%esi), %eax
	testl     %eax, %eax
	je        .L08053B80
.L08053962:
	movl      (%eax), %edx
	pushl     %ebp
	pushl     $1
	pushl     %edi
	pushl     %eax
	call      *4(%edx)
.L0805396C:
	addl      $16, %esp
.L0805396F:
	movl      104(%esp), %eax
	testl     %eax, %eax
	je        .L08053AE8
.L0805397B:
	movl      108(%esp), %eax
	subl      $8, %esp
	movb      $0, (%eax)
	movl      112(%esp), %eax
	movl      $-1, 36(%esp)
	movl      %eax, 32(%esp)
	pushl     %edi
	pushl     $_ZN7acommon4COUTE
	call      _ZN7acommon7FStreamlsERKNS_10ParmStringE
.L080539A0:
	movl      (%ebx), %ebx
	addl      $16, %esp
	testl     %ebx, %ebx
	jne       .L08053922
.L080539AD:
	subl      $8, %esp
	pushl     _ZN7acommon4COUTE+12
	pushl     $10
	call      _IO_putc
.L080539BD:
	addl      $16, %esp
	jmp       .L080537B0
.L080539C5:
	.p2align 4,,10
	.p2align 3
.L080539C8:
	movl      84(%esp), %esi
	movl      104(%esp), %edx
	testl     %esi, %esi
	movl      %edx, 108(%esp)
	je        .L08053B18
.L080539DC:
	xorl      %edx, %edx
	movw      %dx, 24(%esp)
	movb      %al, 24(%esp)
	movl      28(%esi), %eax
	testl     %eax, %eax
	je        .L08053BB8
.L080539F2:
	movl      (%eax), %edx
	pushl     %ebp
	pushl     $1
	pushl     %edi
	pushl     %eax
	call      *4(%edx)
.L080539FC:
	addl      $16, %esp
.L080539FF:
	movl      104(%esp), %esi
	testl     %esi, %esi
	je        .L08053B50
.L08053A0B:
	movl      108(%esp), %eax
	subl      $8, %esp
	movb      $0, (%eax)
	movl      112(%esp), %eax
	movl      $-1, 36(%esp)
	movl      %eax, 32(%esp)
	pushl     %edi
	pushl     $_ZN7acommon4COUTE
	call      _ZN7acommon7FStreamlsERKNS_10ParmStringE
.L08053A30:
	addl      $16, %esp
	jmp       .L0805390F
.L08053A38:
	.p2align 4
.L08053A40:
	movl      88(%esp), %eax
	movl      %eax, 92(%esp)
	movl      8(%esi), %eax
	movl      (%eax), %ecx
	movl      %ecx, 8(%esp)
	leal      88(%esp), %ecx
	pushl     %ecx
	pushl     $-1
	pushl     %edx
	pushl     %eax
	movl      24(%esp), %eax
	call      *12(%eax)
.L08053A61:
	movl      20(%esi), %eax
	movl      (%eax), %edx
	pushl     %ebp
	pushl     112(%esp)
	pushl     112(%esp)
	pushl     %eax
	call      *12(%edx)
.L08053A73:
	addl      $32, %esp
	movl      104(%esp), %eax
	testl     %eax, %eax
	jne       .L080538BF
.L08053A82:
	subl      $8, %esp
	pushl     $0
	pushl     %ebp
	call      _ZN7acommon6String9reserve_iEj
.L08053A8D:
	addl      $16, %esp
	movl      104(%esp), %esi
	testl     %esi, %esi
	jne       .L080538BF
.L08053A9C:
	subl      $8, %esp
	pushl     $0
	pushl     %ebp
	call      _ZN7acommon6String9reserve_iEj
.L08053AA7:
	addl      $16, %esp
	jmp       .L080538BF
.L08053AAF:
	.p2align 4,,10
	.p2align 3
.L08053AB0:
	movl      112(%esp), %ecx
	subl      %edx, %ecx
	cmpl      $1, %ecx
	jg        .L08053AD5
.L08053ABB:
	movl      %eax, 8(%esp)
	subl      $8, %esp
	pushl     $1
	pushl     %ebp
	call      _ZN7acommon6String9reserve_iEj
.L08053ACA:
	movl      124(%esp), %edx
	addl      $16, %esp
	movl      8(%esp), %eax
.L08053AD5:
	movb      %al, (%edx)
	movl      104(%esp), %eax
	addl      $1, 108(%esp)
	testl     %eax, %eax
	jne       .L0805397B
.L08053AE8:
	subl      $8, %esp
	pushl     $0
	pushl     %ebp
	call      _ZN7acommon6String9reserve_iEj
.L08053AF3:
	addl      $16, %esp
	movl      104(%esp), %esi
	testl     %esi, %esi
	jne       .L0805397B
.L08053B02:
	subl      $8, %esp
	pushl     $0
	pushl     %ebp
	call      _ZN7acommon6String9reserve_iEj
.L08053B0D:
	addl      $16, %esp
	jmp       .L0805397B
.L08053B15:
	.p2align 4,,10
	.p2align 3
.L08053B18:
	movl      112(%esp), %ecx
	subl      %edx, %ecx
	cmpl      $1, %ecx
	jg        .L08053B3D
.L08053B23:
	movl      %eax, 8(%esp)
	subl      $8, %esp
	pushl     $1
	pushl     %ebp
	call      _ZN7acommon6String9reserve_iEj
.L08053B32:
	movl      124(%esp), %edx
	addl      $16, %esp
	movl      8(%esp), %eax
.L08053B3D:
	movb      %al, (%edx)
	movl      104(%esp), %esi
	addl      $1, 108(%esp)
	testl     %esi, %esi
	jne       .L08053A0B
.L08053B50:
	subl      $8, %esp
	pushl     $0
	pushl     %ebp
	call      _ZN7acommon6String9reserve_iEj
.L08053B5B:
	addl      $16, %esp
	movl      104(%esp), %ecx
	testl     %ecx, %ecx
	jne       .L08053A0B
.L08053B6A:
	subl      $8, %esp
	pushl     $0
	pushl     %ebp
	call      _ZN7acommon6String9reserve_iEj
.L08053B75:
	addl      $16, %esp
	jmp       .L08053A0B
.L08053B7D:
	.p2align 4,,10
	.p2align 3
.L08053B80:
	movl      88(%esp), %eax
	leal      88(%esp), %ecx
	movl      %eax, 92(%esp)
	movl      8(%esi), %eax
	movl      (%eax), %edx
	pushl     %ecx
	pushl     $1
	pushl     %edi
	pushl     %eax
	call      *12(%edx)
.L08053B99:
	movl      20(%esi), %eax
	movl      (%eax), %edx
	pushl     %ebp
	pushl     112(%esp)
	pushl     112(%esp)
	pushl     %eax
	call      *12(%edx)
.L08053BAB:
	addl      $32, %esp
	jmp       .L0805396F
.L08053BB3:
	.p2align 4,,10
	.p2align 3
.L08053BB8:
	movl      88(%esp), %eax
	leal      88(%esp), %ecx
	movl      %eax, 92(%esp)
	movl      8(%esi), %eax
	movl      (%eax), %edx
	pushl     %ecx
	pushl     $1
	pushl     %edi
	pushl     %eax
	call      *12(%edx)
.L08053BD1:
	movl      20(%esi), %eax
	movl      (%eax), %edx
	pushl     %ebp
	pushl     112(%esp)
	pushl     112(%esp)
	pushl     %eax
	call      *12(%edx)
.L08053BE3:
	addl      $32, %esp
	jmp       .L080539FF
.L08053BEB:
	subl      $12, %esp
	leal      140(%esp), %eax
	pushl     %eax
	call      _ZN7acommon8ObjStackD1Ev
.L08053BFB:
	movl      52(%esp), %eax
	movl      $_ZTVN7acommon6StringE+8, 48(%esp)
	addl      $16, %esp
	testl     %eax, %eax
	je        .L08053C1A
.L08053C0E:
	subl      $12, %esp
	pushl     %eax
	call      free
.L08053C17:
	addl      $16, %esp
.L08053C1A:
	subl      $12, %esp
	leal      128(%esp), %eax
	leal      96(%esp), %ebx
	pushl     %eax
	call      _ZN7acommon7ConvObjD1Ev
.L08053C2E:
	movl      %ebx, (%esp)
	call      _ZN7acommon5ConvPD1Ev
.L08053C36:
	popl      %eax
	leal      92(%esp), %eax
	pushl     %eax
	call      _ZN7acommon7ConvObjD1Ev
.L08053C41:
	popl      %edx
	leal      60(%esp), %eax
	pushl     %eax
	call      _ZN7acommon5ConvPD1Ev
.L08053C4C:
	popl      %ecx
	leal      28(%esp), %eax
	pushl     %eax
	call      _ZN7acommon12PosibErrBase7destroyEv
.L08053C57:
	addl      $16, %esp
	movl      12(%esp), %eax
	testl     %eax, %eax
	je        .L08053C71
.L08053C62:
	subl      $8, %esp
	pushl     %eax
	pushl     16(%eax)
	call      _ZN7acommon18release_cache_dataEPNS_15GlobalCacheBaseEPKNS_9CacheableE
.L08053C6E:
	addl      $16, %esp
.L08053C71:
	addl      $172, %esp
	popl      %ebx
	popl      %esi
	popl      %edi
	popl      %ebp
	ret       
.L08053C7C:
	movl      (%eax), %ecx
	movb      $1, 4(%eax)
	subl      $8, %esp
	movl      $-1, %edx
	movl      (%ecx), %eax
	pushl     %edx
	pushl     %eax
	call      _Z11print_errorN7acommon10ParmStringE
.L08053C93:
	movl      $1, (%esp)
	call      exit
	.size	_Z5munchv, .-_Z5munchv
# ----------------------
.L08053C9F:
	.p2align 4,,10
	.p2align 3
# ----------------------
	.globl	_Z6expandv
	.type	_Z6expandv, @function
_Z6expandv:
	pushl     %ebp
	pushl     %edi
	pushl     %esi
	pushl     %ebx
	subl      $204, %esp
	movl      args, %edx
	movl      args+4, %eax
	movl      $1, 4(%esp)
	movl      $2147483647, (%esp)
	subl      %edx, %eax
	sarl      $4, %eax
	testl     %eax, %eax
	jne       .L0805461D
.L08053CD1:
	subl      $12, %esp
	pushl     options
	call      _ZN8aspeller13find_languageERN7acommon6ConfigE
.L08053CDF:
	movl      $0, 172(%esp)
	movl      $-1, 176(%esp)
	addl      $12, %esp
	leal      160(%esp), %eax
	pushl     %eax
	pushl     options
	leal      44(%esp), %eax
	pushl     %eax
	call      _ZN8aspeller12new_languageERKN7acommon6ConfigERKNS0_10ParmStringE
.L08053D10:
	movl      44(%esp), %eax
	addl      $12, %esp
	testl     %eax, %eax
	jne       .L0805467C
.L08053D1F:
	movl      36(%esp), %eax
	movl      %eax, 16(%esp)
	movl      %eax, %edx
	movl      %eax, %edi
	movl      options, %eax
	call      _ZL10setup_convPN7acommon6ConfigEPKN8aspeller8LanguageE
.L08053D35:
	movl      options, %edx
	movl      %eax, 120(%esp)
	movl      %eax, 152(%esp)
	movl      %edi, %eax
	movl      $0, 124(%esp)
	movl      $0, 128(%esp)
	movl      $0, 132(%esp)
	movl      $_ZTVN7acommon6StringE+8, 136(%esp)
	movl      $0, 140(%esp)
	movl      $0, 144(%esp)
	movl      $0, 148(%esp)
	call      _ZL10setup_convPKN8aspeller8LanguageEPN7acommon6ConfigE
.L08053D97:
	movl      $0, 160(%esp)
	movl      %eax, 156(%esp)
	subl      $4, %esp
	movl      $0, 168(%esp)
	movl      $0, 172(%esp)
	movl      $_ZTVN7acommon6StringE+8, 176(%esp)
	movl      $0, 180(%esp)
	movl      $0, 184(%esp)
	movl      $0, 188(%esp)
	movl      %eax, 192(%esp)
	movl      $_ZTVN7acommon6StringE+8, 60(%esp)
	movl      $0, 64(%esp)
	movl      $0, 68(%esp)
	movl      $0, 72(%esp)
	movl      $_ZTVN7acommon6StringE+8, 76(%esp)
	movl      $0, 80(%esp)
	movl      $0, 84(%esp)
	movl      $0, 88(%esp)
	pushl     $4
	pushl     $1024
	leal      100(%esp), %eax
	pushl     %eax
	call      _ZN7acommon8ObjStackC1Ejj
.L08053E46:
	call      _ZL11line_bufferv
.L08053E4B:
	addl      $16, %esp
	.p2align 4,,10
	.p2align 3
.L08053E50:
	movl      60(%esp), %eax
	subl      $4, %esp
	movl      %eax, 68(%esp)
	movsbl    _ZN7acommon3CINE+4, %eax
	pushl     %eax
	leal      64(%esp), %eax
	pushl     %eax
	movl      _ZN7acommon3CINE, %eax
	pushl     $_ZN7acommon3CINE
	call      *(%eax)
.L08053E74:
	addl      $16, %esp
	testb     %al, %al
	je        .L080544E8
.L08053E7F:
	movl      60(%esp), %esi
	movl      64(%esp), %ebx
	movl      76(%esp), %edx
	subl      %esi, %ebx
	movl      %edx, 80(%esp)
	movl      %edx, %eax
	je        .L08053EBC
.L08053E95:
	movl      84(%esp), %eax
	subl      %edx, %eax
	cmpl      %eax, %ebx
	jge       .L08054418
.L08053EA3:
	subl      $4, %esp
	pushl     %ebx
	pushl     %esi
	pushl     %edx
	call      memmove
.L08053EAE:
	movl      92(%esp), %eax
	leal      (%eax,%ebx), %edx
	movl      %edx, 96(%esp)
	addl      $16, %esp
.L08053EBC:
	testl     %eax, %eax
	je        .L080545E8
.L08053EC4:
	movl      80(%esp), %eax
	movb      $0, (%eax)
	movl      120(%esp), %edi
	movl      76(%esp), %esi
	testl     %edi, %edi
	je        .L08053F23
.L08053ED7:
	movl      140(%esp), %eax
	movl      %eax, 144(%esp)
	movl      28(%edi), %eax
	testl     %eax, %eax
	je        .L08054438
.L08053EF0:
	leal      136(%esp), %edi
	movl      (%eax), %edx
	pushl     %edi
	pushl     %ebx
	pushl     %esi
	pushl     %eax
	call      *4(%edx)
.L08053F00:
	addl      $16, %esp
	movl      140(%esp), %eax
	testl     %eax, %eax
	je        .L08054484
.L08053F12:
	movl      144(%esp), %eax
	movb      $0, (%eax)
	movl      140(%esp), %esi
.L08053F23:
	subl      $8, %esp
	pushl     $47
	pushl     %esi
	call      strchr
.L08053F2E:
	addl      $16, %esp
	testl     %eax, %eax
	je        .L080544B8
.L08053F39:
	leal      1(%eax), %ebx
	movb      $0, (%eax)
.L08053F3F:
	subl      $12, %esp
	leal      100(%esp), %eax
	pushl     %eax
	call      _ZN7acommon8ObjStack5resetEv
.L08053F4C:
	movl      32(%esp), %eax
	movl      %ebx, 64(%esp)
	movl      %esi, 56(%esp)
	movl      $-1, 68(%esp)
	movl      $-1, 60(%esp)
	addl      $16, %esp
	movl      6044(%eax), %eax
	testl     %eax, %eax
	je        .L080543F0
.L08053F79:
	subl      $4, %esp
	pushl     4(%esp)
	leal      96(%esp), %ecx
	pushl     %ecx
	pushl     64(%esp)
	pushl     64(%esp)
	pushl     64(%esp)
	pushl     64(%esp)
	pushl     %eax
	call      _ZNK8aspeller8AffixMgr6expandEN7acommon10ParmStringES2_RNS1_8ObjStackEi
.L08053F9B:
	addl      $32, %esp
	movl      %eax, %ebx
.L08053FA0:
	cmpl      $2, 4(%esp)
	jle       .L08054170
.L08053FAB:
	cmpl      $3, 4(%esp)
	je        .L080544D0
.L08053FB6:
	testl     %ebx, %ebx
	je        .L08054675
.L08053FBE:
	fldz      
	movl      %ebx, %eax
	.p2align 4,,10
	.p2align 3
.L08053FC8:
	movl      4(%eax), %edi
	xorl      %ebp, %ebp
	movl      12(%eax), %eax
	movl      %ebp, 12(%esp)
	movl      %edi, 8(%esp)
	testl     %eax, %eax
	fildq     8(%esp)
	faddp     %st, %st(1)
	jne       .L08053FC8
.L08053FE2:
	movl      4(%ebx), %eax
	xorl      %edx, %edx
	movl      %edx, 12(%esp)
	movl      %eax, 8(%esp)
	fildq     8(%esp)
	fdivrp    %st, %st(1)
	fstpl     8(%esp)
.L08053FF9:
	leal      48(%esp), %esi
	leal      40(%esp), %edi
	jmp       .L0805402D
.L08054003:
	.p2align 4,,10
	.p2align 3
.L08054008:
	pushl     12(%esp)
	pushl     12(%esp)
	pushl     $.LC08063F53
	pushl     $_ZN7acommon4COUTE+8
	call      _ZN7acommon7OStream6printfEPKcz
.L0805401F:
	addl      $16, %esp
.L08054022:
	movl      12(%ebx), %ebx
	testl     %ebx, %ebx
	je        .L08053E50
.L0805402D:
	movl      156(%esp), %ebp
	movl      (%ebx), %eax
	testl     %ebp, %ebp
	je        .L08054087
.L0805403A:
	movl      176(%esp), %edx
	movl      %edx, 180(%esp)
	movl      28(%ebp), %edx
	testl     %edx, %edx
	je        .L08054340
.L08054053:
	leal      172(%esp), %ebp
	movl      (%edx), %ecx
	pushl     %ebp
	pushl     $-1
	pushl     %eax
	pushl     %edx
	call      *4(%ecx)
.L08054064:
	addl      $16, %esp
	movl      176(%esp), %ebp
	testl     %ebp, %ebp
	je        .L0805439B
.L08054076:
	movl      180(%esp), %eax
	movb      $0, (%eax)
	movl      176(%esp), %eax
.L08054087:
	movl      %eax, 48(%esp)
	movl      60(%esp), %eax
	movl      $-1, 52(%esp)
	testl     %eax, %eax
	je        .L080543E0
.L0805409F:
	movl      64(%esp), %eax
	movb      $0, (%eax)
	movl      60(%esp), %eax
	movl      %eax, %edx
.L080540AC:
	movl      %eax, 40(%esp)
	movl      64(%esp), %eax
	subl      $8, %esp
	subl      %edx, %eax
	movl      %eax, 52(%esp)
	pushl     %edi
	pushl     $_ZN7acommon4COUTE
	call      _ZN7acommon7FStreamlsERKNS_10ParmStringE
.L080540C8:
	popl      %ecx
	movl      %eax, %ebp
	popl      %eax
	pushl     12(%ebp)
	pushl     $32
	call      _IO_putc
.L080540D6:
	popl      %eax
	popl      %edx
	pushl     %esi
	pushl     %ebp
	call      _ZN7acommon7FStreamlsERKNS_10ParmStringE
.L080540DF:
	addl      $16, %esp
	cmpl      $2147483647, (%esp)
	je        .L080540F3
.L080540EB:
	movl      8(%ebx), %eax
	cmpb      $0, (%eax)
	jne       .L08054120
.L080540F3:
	cmpl      $3, 4(%esp)
	jne       .L08054008
.L080540FE:
	subl      $8, %esp
	pushl     _ZN7acommon4COUTE+12
	pushl     $10
	call      _IO_putc
.L0805410E:
	addl      $16, %esp
	jmp       .L08054022
.L08054116:
	.p2align 4
.L08054120:
	movl      %eax, 40(%esp)
	movl      $-1, 44(%esp)
	subl      $8, %esp
	pushl     %edi
	leal      168(%esp), %eax
	pushl     %eax
	call      _ZN7acommon5ConvPclERKNS_10ParmStringE
.L0805413D:
	movl      $-1, 68(%esp)
	movl      %eax, 64(%esp)
	popl      %ebp
	popl      %eax
	pushl     _ZN7acommon4COUTE+12
	pushl     $47
	call      _IO_putc
.L08054158:
	popl      %eax
	popl      %edx
	pushl     %esi
	pushl     $_ZN7acommon4COUTE
	call      _ZN7acommon7FStreamlsERKNS_10ParmStringE
.L08054165:
	addl      $16, %esp
	jmp       .L080540F3
.L0805416A:
	.p2align 4,,10
	.p2align 3
.L08054170:
	je        .L080545A0
.L08054176:
	testl     %ebx, %ebx
	je        .L08054240
.L0805417E:
	movl      156(%esp), %ebp
	leal      48(%esp), %esi
	leal      172(%esp), %edi
	movl      (%ebx), %eax
	testl     %ebp, %ebp
	je        .L080541DC
.L08054196:
	movl      176(%esp), %edx
	movl      %edx, 180(%esp)
	movl      28(%ebp), %edx
	testl     %edx, %edx
	je        .L080542B8
.L080541AF:
	movl      (%edx), %ecx
	pushl     %edi
	pushl     $-1
	pushl     %eax
	pushl     %edx
	call      *4(%ecx)
.L080541B9:
	addl      $16, %esp
	movl      176(%esp), %eax
	testl     %eax, %eax
	je        .L0805430C
.L080541CB:
	movl      180(%esp), %eax
	movb      $0, (%eax)
	movl      176(%esp), %eax
.L080541DC:
	movl      %eax, 48(%esp)
	movl      $-1, 52(%esp)
	subl      $8, %esp
	pushl     %esi
	pushl     $_ZN7acommon4COUTE
	call      _ZN7acommon7FStreamlsERKNS_10ParmStringE
.L080541F6:
	addl      $16, %esp
	cmpl      $2147483647, (%esp)
	je        .L0805420A
.L08054202:
	movl      8(%ebx), %eax
	cmpb      $0, (%eax)
	jne       .L08054260
.L0805420A:
	movl      12(%ebx), %ebx
	testl     %ebx, %ebx
	je        .L08054240
.L08054211:
	subl      $8, %esp
	pushl     _ZN7acommon4COUTE+12
	pushl     $32
	call      _IO_putc
.L08054221:
	addl      $16, %esp
	movl      156(%esp), %ebp
	movl      (%ebx), %eax
	testl     %ebp, %ebp
	jne       .L08054196
.L08054235:
	jmp       .L080541DC
.L08054237:
	.p2align 4
.L08054240:
	subl      $8, %esp
	pushl     _ZN7acommon4COUTE+12
	pushl     $10
	call      _IO_putc
.L08054250:
	addl      $16, %esp
	jmp       .L08053E50
.L08054258:
	.p2align 4
.L08054260:
	movl      %eax, 40(%esp)
	movl      $-1, 44(%esp)
	subl      $8, %esp
	leal      48(%esp), %eax
	pushl     %eax
	leal      168(%esp), %eax
	pushl     %eax
	call      _ZN7acommon5ConvPclERKNS_10ParmStringE
.L08054281:
	movl      $-1, 68(%esp)
	movl      %eax, 64(%esp)
	popl      %eax
	popl      %edx
	pushl     _ZN7acommon4COUTE+12
	pushl     $47
	call      _IO_putc
.L0805429C:
	popl      %ecx
	popl      %ebp
	pushl     %esi
	pushl     $_ZN7acommon4COUTE
	call      _ZN7acommon7FStreamlsERKNS_10ParmStringE
.L080542A9:
	addl      $16, %esp
	jmp       .L0805420A
.L080542B1:
	.p2align 4,,10
	.p2align 3
.L080542B8:
	movl      160(%esp), %edx
	movl      %edx, 164(%esp)
	movl      8(%ebp), %edx
	movl      (%edx), %ecx
	movl      %ecx, 8(%esp)
	leal      160(%esp), %ecx
	pushl     %ecx
	pushl     $-1
	pushl     %eax
	pushl     %edx
	movl      24(%esp), %eax
	call      *12(%eax)
.L080542E2:
	movl      20(%ebp), %eax
	movl      (%eax), %edx
	pushl     %edi
	pushl     184(%esp)
	pushl     184(%esp)
	pushl     %eax
	call      *12(%edx)
.L080542FA:
	addl      $32, %esp
	movl      176(%esp), %eax
	testl     %eax, %eax
	jne       .L080541CB
.L0805430C:
	subl      $8, %esp
	pushl     $0
	pushl     %edi
	call      _ZN7acommon6String9reserve_iEj
.L08054317:
	addl      $16, %esp
	movl      176(%esp), %eax
	testl     %eax, %eax
	jne       .L080541CB
.L08054329:
	subl      $8, %esp
	pushl     $0
	pushl     %edi
	call      _ZN7acommon6String9reserve_iEj
.L08054334:
	addl      $16, %esp
	jmp       .L080541CB
.L0805433C:
	.p2align 4,,10
	.p2align 3
.L08054340:
	movl      160(%esp), %edx
	movl      %edx, 164(%esp)
	movl      8(%ebp), %edx
	movl      (%edx), %ecx
	movl      %ecx, 20(%esp)
	leal      160(%esp), %ecx
	pushl     %ecx
	pushl     $-1
	pushl     %eax
	pushl     %edx
	movl      36(%esp), %eax
	call      *12(%eax)
.L0805436A:
	movl      20(%ebp), %eax
	leal      188(%esp), %ecx
	movl      (%eax), %edx
	pushl     %ecx
	pushl     184(%esp)
	pushl     184(%esp)
	pushl     %eax
	call      *12(%edx)
.L08054389:
	addl      $32, %esp
	movl      176(%esp), %ebp
	testl     %ebp, %ebp
	jne       .L08054076
.L0805439B:
	subl      $8, %esp
	pushl     $0
	leal      184(%esp), %eax
	pushl     %eax
	call      _ZN7acommon6String9reserve_iEj
.L080543AD:
	addl      $16, %esp
	movl      176(%esp), %ecx
	testl     %ecx, %ecx
	jne       .L08054076
.L080543BF:
	subl      $8, %esp
	pushl     $0
	leal      184(%esp), %eax
	pushl     %eax
	call      _ZN7acommon6String9reserve_iEj
.L080543D1:
	addl      $16, %esp
	jmp       .L08054076
.L080543D9:
	.p2align 4
.L080543E0:
	xorl      %edx, %edx
	movl      $.LC08063D11, %eax
	jmp       .L080540AC
.L080543EC:
	.p2align 4,,10
	.p2align 3
.L080543F0:
	leal      88(%esp), %eax
	pushl     %eax
	leal      52(%esp), %esi
	pushl     %esi
	leal      48(%esp), %edi
	pushl     %edi
	pushl     28(%esp)
	call      _ZNK8aspeller8Language11fake_expandERKN7acommon10ParmStringES4_RNS1_8ObjStackE
.L08054408:
	addl      $16, %esp
	movl      %eax, %ebx
	jmp       .L08053FA0
.L08054412:
	.p2align 4,,10
	.p2align 3
.L08054418:
	subl      $8, %esp
	pushl     %ebx
	leal      84(%esp), %eax
	pushl     %eax
	call      _ZN7acommon6String9reserve_iEj
.L08054426:
	movl      92(%esp), %edx
	addl      $16, %esp
	jmp       .L08053EA3
.L08054432:
	.p2align 4,,10
	.p2align 3
.L08054438:
	movl      124(%esp), %eax
	leal      124(%esp), %ecx
	movl      %eax, 128(%esp)
	movl      8(%edi), %eax
	movl      (%eax), %edx
	pushl     %ecx
	pushl     %ebx
	pushl     %esi
	pushl     %eax
	call      *12(%edx)
.L08054453:
	movl      20(%edi), %eax
	leal      152(%esp), %edi
	movl      (%eax), %edx
	pushl     %edi
	pushl     148(%esp)
	pushl     148(%esp)
	pushl     %eax
	call      *12(%edx)
.L08054472:
	addl      $32, %esp
	movl      140(%esp), %eax
	testl     %eax, %eax
	jne       .L08053F12
.L08054484:
	subl      $8, %esp
	pushl     $0
	pushl     %edi
	call      _ZN7acommon6String9reserve_iEj
.L0805448F:
	addl      $16, %esp
	movl      140(%esp), %ebp
	testl     %ebp, %ebp
	jne       .L08053F12
.L080544A1:
	subl      $8, %esp
	pushl     $0
	pushl     %edi
	call      _ZN7acommon6String9reserve_iEj
.L080544AC:
	addl      $16, %esp
	jmp       .L08053F12
.L080544B4:
	.p2align 4,,10
	.p2align 3
.L080544B8:
	subl      $12, %esp
	pushl     %esi
	call      strlen
.L080544C1:
	addl      $16, %esp
	leal      (%esi,%eax), %ebx
	jmp       .L08053F3F
.L080544CC:
	.p2align 4,,10
	.p2align 3
.L080544D0:
	fldz      
	testl     %ebx, %ebx
	fstpl     8(%esp)
	jne       .L08053FF9
.L080544DE:
	jmp       .L08053E50
.L080544E3:
	.p2align 4,,10
	.p2align 3
.L080544E8:
	subl      $12, %esp
	leal      100(%esp), %eax
	pushl     %eax
	call      _ZN7acommon8ObjStackD1Ev
.L080544F5:
	movl      92(%esp), %eax
	movl      $_ZTVN7acommon6StringE+8, 88(%esp)
	addl      $16, %esp
	testl     %eax, %eax
	je        .L08054514
.L08054508:
	subl      $12, %esp
	pushl     %eax
	call      free
.L08054511:
	addl      $16, %esp
.L08054514:
	movl      60(%esp), %eax
	movl      $_ZTVN7acommon6StringE+8, 56(%esp)
	testl     %eax, %eax
	je        .L08054530
.L08054524:
	subl      $12, %esp
	pushl     %eax
	call      free
.L0805452D:
	addl      $16, %esp
.L08054530:
	subl      $12, %esp
	leal      200(%esp), %eax
	pushl     %eax
	call      _ZN7acommon7ConvObjD1Ev
.L08054540:
	popl      %edx
	leal      168(%esp), %eax
	pushl     %eax
	call      _ZN7acommon5ConvPD1Ev
.L0805454E:
	popl      %ecx
	leal      164(%esp), %eax
	leal      132(%esp), %ebx
	pushl     %eax
	call      _ZN7acommon7ConvObjD1Ev
.L08054563:
	movl      %ebx, (%esp)
	call      _ZN7acommon5ConvPD1Ev
.L0805456B:
	popl      %ebx
	leal      44(%esp), %eax
	pushl     %eax
	call      _ZN7acommon12PosibErrBase7destroyEv
.L08054576:
	addl      $16, %esp
	movl      16(%esp), %eax
	testl     %eax, %eax
	je        .L08054590
.L08054581:
	subl      $8, %esp
	pushl     %eax
	pushl     16(%eax)
	call      _ZN7acommon18release_cache_dataEPNS_15GlobalCacheBaseEPKNS_9CacheableE
.L0805458D:
	addl      $16, %esp
.L08054590:
	addl      $204, %esp
	popl      %ebx
	popl      %esi
	popl      %edi
	popl      %ebp
	ret       
.L0805459B:
	.p2align 4,,10
	.p2align 3
.L080545A0:
	subl      $12, %esp
	leal      68(%esp), %eax
	pushl     %eax
	call      _ZNK7acommon6String5c_strEv
.L080545AD:
	movl      %eax, 64(%esp)
	movl      80(%esp), %eax
	subl      76(%esp), %eax
	movl      %eax, 68(%esp)
	popl      %eax
	popl      %edx
	leal      56(%esp), %esi
	pushl     %esi
	pushl     $_ZN7acommon4COUTE
	call      _ZN7acommon7FStreamlsERKNS_10ParmStringE
.L080545CE:
	popl      %ecx
	popl      %esi
	pushl     12(%eax)
	pushl     $32
	call      _IO_putc
.L080545DA:
	addl      $16, %esp
	jmp       .L08054176
.L080545E2:
	.p2align 4,,10
	.p2align 3
.L080545E8:
	subl      $8, %esp
	pushl     $0
	leal      84(%esp), %eax
	pushl     %eax
	call      _ZN7acommon6String9reserve_iEj
.L080545F7:
	addl      $16, %esp
	movl      76(%esp), %eax
	testl     %eax, %eax
	jne       .L08053EC4
.L08054606:
	subl      $8, %esp
	pushl     $0
	leal      84(%esp), %eax
	pushl     %eax
	call      _ZN7acommon6String9reserve_iEj
.L08054615:
	addl      $16, %esp
	jmp       .L08053EC4
.L0805461D:
	subl      $12, %esp
	pushl     %edx
	call      _ZNK7acommon6String5c_strEv
.L08054626:
	addl      $12, %esp
	pushl     $10
	pushl     $0
	pushl     %eax
	call      strtol
.L08054633:
	movl      args+4, %edx
	movl      %eax, 20(%esp)
	addl      $16, %esp
	movl      args, %eax
	subl      %eax, %edx
	cmpl      $31, %edx
	jbe       .L08053CD1
.L08054650:
	subl      $12, %esp
	addl      $16, %eax
	pushl     %eax
	call      _ZNK7acommon6String5c_strEv
.L0805465C:
	addl      $12, %esp
	pushl     $10
	pushl     $0
	pushl     %eax
	call      strtol
.L08054669:
	movl      %eax, 16(%esp)
	addl      $16, %esp
	jmp       .L08053CD1
.L08054675:
	fldz      
	jmp       .L08053FE2
.L0805467C:
	movl      (%eax), %ecx
	movb      $1, 4(%eax)
	subl      $8, %esp
	movl      $-1, %edx
	movl      (%ecx), %eax
	pushl     %edx
	pushl     %eax
	call      _Z11print_errorN7acommon10ParmStringE
.L08054693:
	movl      $1, (%esp)
	call      exit
	.size	_Z6expandv, .-_Z6expandv
# ----------------------
.L0805469F:
	.p2align 4,,10
	.p2align 3
# ----------------------
	.globl	_Z7combinev
	.type	_Z7combinev, @function
_Z7combinev:
	pushl     %ebp
	pushl     %edi
	pushl     %esi
	pushl     %ebx
	subl      $184, %esp
	pushl     options
	call      _ZN8aspeller13find_languageERN7acommon6ConfigE
.L080546B5:
	movl      $0, 140(%esp)
	movl      $-1, 144(%esp)
	addl      $12, %esp
	leal      128(%esp), %eax
	pushl     %eax
	pushl     options
	leal      28(%esp), %eax
	pushl     %eax
	call      _ZN8aspeller12new_languageERKN7acommon6ConfigERKNS0_10ParmStringE
.L080546E6:
	movl      28(%esp), %eax
	addl      $12, %esp
	testl     %eax, %eax
	jne       .L08054E45
.L080546F5:
	movl      20(%esp), %ebp
	movl      options, %eax
	movl      %ebp, %edx
	call      _ZL10setup_convPN7acommon6ConfigEPKN8aspeller8LanguageE
.L08054705:
	movl      options, %edx
	movl      %eax, 88(%esp)
	movl      %eax, 120(%esp)
	movl      %ebp, %eax
	movl      $0, 92(%esp)
	movl      $0, 96(%esp)
	movl      $0, 100(%esp)
	movl      $_ZTVN7acommon6StringE+8, 104(%esp)
	movl      $0, 108(%esp)
	movl      $0, 112(%esp)
	movl      $0, 116(%esp)
	call      _ZL10setup_convPKN8aspeller8LanguageEPN7acommon6ConfigE
.L08054752:
	movl      $0, 128(%esp)
	movl      %eax, 124(%esp)
	movl      $0, 132(%esp)
	movl      $0, 136(%esp)
	movl      $_ZTVN7acommon6StringE+8, 140(%esp)
	movl      $0, 144(%esp)
	movl      $0, 148(%esp)
	movl      $0, 152(%esp)
	movl      %eax, 156(%esp)
	movl      $_ZTVN7acommon6StringE+8, 24(%esp)
	movl      $0, 28(%esp)
	movl      $0, 32(%esp)
	movl      $0, 36(%esp)
	movl      $_ZTVN7acommon6StringE+8, 40(%esp)
	movl      $0, 44(%esp)
	movl      $0, 48(%esp)
	movl      $0, 52(%esp)
	movl      $_ZTVN7acommon6StringE+8, 56(%esp)
	movl      $0, 60(%esp)
	movl      $0, 64(%esp)
	movl      $0, 68(%esp)
	call      _ZL11line_bufferv
.L0805480F:
	.p2align 4,,10
	.p2align 3
.L08054810:
	movl      28(%esp), %eax
	subl      $4, %esp
	movl      %eax, 36(%esp)
	movsbl    _ZN7acommon3CINE+4, %eax
	pushl     %eax
	leal      32(%esp), %eax
	pushl     %eax
	movl      _ZN7acommon3CINE, %eax
	pushl     $_ZN7acommon3CINE
	call      *(%eax)
.L08054834:
	addl      $16, %esp
	testb     %al, %al
	je        .L08054CD0
.L0805483F:
	movl      28(%esp), %edi
	testl     %edi, %edi
	je        .L08054C88
.L0805484B:
	movl      32(%esp), %eax
	movb      $0, (%eax)
	movl      88(%esp), %esi
	movl      28(%esp), %edi
	testl     %esi, %esi
	movl      %edi, %ebx
	je        .L0805489F
.L08054860:
	movl      108(%esp), %eax
	movl      %eax, 112(%esp)
	movl      28(%esi), %eax
	testl     %eax, %eax
	je        .L08054C10
.L08054873:
	leal      104(%esp), %ecx
	movl      (%eax), %edx
	pushl     %ecx
	pushl     $-1
	pushl     %edi
	pushl     %eax
	call      *4(%edx)
.L08054881:
	addl      $16, %esp
	movl      108(%esp), %esi
	testl     %esi, %esi
	je        .L08054C4E
.L08054890:
	movl      112(%esp), %eax
	movb      $0, (%eax)
	movl      28(%esp), %ebx
	movl      108(%esp), %edi
.L0805489F:
	testl     %edi, %edi
	je        .L08054B90
.L080548A7:
	subl      $12, %esp
	pushl     %edi
	call      strlen
.L080548B0:
	addl      $16, %esp
	testl     %eax, %eax
	movl      %eax, %esi
	movl      %ebx, 32(%esp)
	je        .L08054B30
.L080548C1:
	movl      36(%esp), %eax
	subl      %ebx, %eax
	cmpl      %eax, %esi
	jge       .L08054BD8
.L080548CF:
	subl      $4, %esp
	pushl     %esi
	pushl     %edi
	pushl     %ebx
	call      memmove
.L080548DA:
	movl      44(%esp), %ebx
	leal      (%ebx,%esi), %eax
	addl      $1, %esi
	movl      %eax, 48(%esp)
	addl      $16, %esp
.L080548EB:
	testl     %ebx, %ebx
	movl      $_ZTVN7acommon6StringE+8, 72(%esp)
	movl      $0, 76(%esp)
	movl      $0, 80(%esp)
	movl      $0, 84(%esp)
	je        .L08054E00
.L08054913:
	movb      $0, (%eax)
	movl      76(%esp), %edx
	movl      80(%esp), %ebx
	movl      84(%esp), %ecx
	movl      28(%esp), %edi
	movl      %ebx, %eax
	subl      %edx, %ecx
	subl      %edx, %eax
	movl      %ecx, %edx
.L0805492E:
	addl      %esi, %eax
	cmpl      %edx, %eax
	jge       .L08054B10
.L08054938:
	testl     %esi, %esi
	je        .L0805494E
.L0805493C:
	subl      $4, %esp
	pushl     %esi
	pushl     %edi
	pushl     %ebx
	call      memcpy
.L08054947:
	movl      96(%esp), %ebx
	addl      $16, %esp
.L0805494E:
	addl      %esi, %ebx
	subl      $8, %esp
	movl      %ebx, 88(%esp)
	movl      84(%esp), %ebx
	pushl     $47
	pushl     %ebx
	call      strchr
.L08054963:
	addl      $16, %esp
	testl     %eax, %eax
	je        .L08054BA0
.L0805496E:
	leal      1(%eax), %edi
	movb      $0, (%eax)
	movl      44(%esp), %eax
	testl     %eax, %eax
	je        .L08054BC0
.L08054980:
	movl      48(%esp), %eax
	movb      $0, (%eax)
	movl      44(%esp), %esi
	movl      %esi, 4(%esp)
.L0805498F:
	movl      48(%esp), %eax
	movl      %eax, %edx
	subl      4(%esp), %edx
	movl      %eax, 12(%esp)
	cmpl      $-1, %edx
	je        .L08054BF8
.L080549A6:
	movl      %edx, 8(%esp)
	subl      $12, %esp
	pushl     %ebx
	call      strlen
.L080549B3:
	addl      $16, %esp
	movl      8(%esp), %edx
	cmpl      %eax, %edx
	je        .L08054A80
.L080549C2:
	leal      124(%esp), %ecx
	leal      56(%esp), %edx
	leal      40(%esp), %eax
	call      _ZL13print_wordaffRKN7acommon6StringES2_RNS_4ConvE
.L080549D3:
	subl      $12, %esp
	pushl     %ebx
	call      strlen
.L080549DC:
	addl      $16, %esp
	movl      %eax, %esi
	movl      44(%esp), %eax
	testl     %esi, %esi
	movl      %eax, 48(%esp)
	je        .L08054A11
.L080549ED:
	movl      52(%esp), %edx
	subl      %eax, %edx
	cmpl      %edx, %esi
	jge       .L08054DC0
.L080549FB:
	subl      $4, %esp
	pushl     %esi
	pushl     %ebx
	pushl     %eax
	call      memmove
.L08054A06:
	addl      60(%esp), %esi
	movl      %esi, 64(%esp)
	addl      $16, %esp
.L08054A11:
	testl     %edi, %edi
	je        .L08054A53
.L08054A15:
	subl      $12, %esp
	pushl     %edi
	call      strlen
.L08054A1E:
	addl      $16, %esp
	movl      %eax, %ebx
	movl      60(%esp), %eax
	testl     %ebx, %ebx
	movl      %eax, 64(%esp)
	je        .L08054A53
.L08054A2F:
	movl      68(%esp), %edx
	subl      %eax, %edx
	cmpl      %edx, %ebx
	jge       .L08054DE0
.L08054A3D:
	subl      $4, %esp
	pushl     %ebx
	pushl     %edi
	pushl     %eax
	call      memmove
.L08054A48:
	addl      76(%esp), %ebx
	movl      %ebx, 80(%esp)
	addl      $16, %esp
.L08054A53:
	movl      76(%esp), %eax
	movl      $_ZTVN7acommon6StringE+8, 72(%esp)
	testl     %eax, %eax
	je        .L08054810
.L08054A67:
	subl      $12, %esp
	pushl     %eax
	call      free
.L08054A70:
	addl      $16, %esp
	jmp       .L08054810
.L08054A78:
	.p2align 4
.L08054A80:
	movzbl    (%ebx), %eax
	movzbl    (%esi), %ecx
	movzbl    2160(%ebp,%eax), %eax
	cmpb      %al, 2160(%ebp,%ecx)
	jne       .L080549C2
.L08054A9B:
	cmpl      $-1, %edx
	je        .L08054E32
.L08054AA4:
	leal      1(%ebx), %eax
	subl      $4, %esp
	subl      $1, %edx
	addl      $1, %esi
	pushl     %edx
	pushl     %eax
	pushl     %esi
	call      memcmp
.L08054AB8:
	addl      $16, %esp
	testl     %eax, %eax
	jne       .L080549C2
.L08054AC3:
	movl      4(%esp), %ecx
	testl     %ecx, %ecx
	je        .L08054E0E
.L08054ACF:
	movl      12(%esp), %eax
	movb      $0, (%eax)
	movl      44(%esp), %edx
	jmp       .L08054AEF
.L08054ADC:
	.p2align 4,,10
	.p2align 3
.L08054AE0:
	movzbl    %al, %ecx
	addl      $1, %edx
	cmpb      2160(%ebp,%ecx), %al
	jne       .L08054B40
.L08054AEF:
	movzbl    (%edx), %eax
	testb     %al, %al
	jne       .L08054AE0
.L08054AF6:
	leal      56(%esp), %eax
	movl      %edi, %edx
	call      _ZL11combine_affRN7acommon6StringEPKc
.L08054B01:
	jmp       .L08054A53
.L08054B06:
	.p2align 4
.L08054B10:
	subl      $8, %esp
	pushl     %eax
	leal      84(%esp), %eax
	pushl     %eax
	call      _ZN7acommon6String9reserve_iEj
.L08054B1E:
	movl      96(%esp), %ebx
	addl      $16, %esp
	jmp       .L08054938
.L08054B2A:
	.p2align 4,,10
	.p2align 3
.L08054B30:
	movl      %ebx, %eax
	movl      $1, %esi
	jmp       .L080548EB
.L08054B3C:
	.p2align 4,,10
	.p2align 3
.L08054B40:
	subl      $12, %esp
	pushl     %ebx
	call      strlen
.L08054B49:
	addl      $16, %esp
	movl      %eax, %esi
	movl      44(%esp), %eax
	testl     %esi, %esi
	movl      %eax, 48(%esp)
	je        .L08054AF6
.L08054B5A:
	movl      52(%esp), %edx
	subl      %eax, %edx
	cmpl      %edx, %esi
	jge       .L08054E18
.L08054B68:
	subl      $4, %esp
	pushl     %esi
	pushl     %ebx
	pushl     %eax
	call      memmove
.L08054B73:
	addl      60(%esp), %esi
	movl      %edi, %edx
	movl      %esi, 64(%esp)
	addl      $16, %esp
	leal      56(%esp), %eax
	call      _ZL11combine_affRN7acommon6StringEPKc
.L08054B89:
	jmp       .L08054A53
.L08054B8E:
	.p2align 4,,10
	.p2align 3
.L08054B90:
	movl      32(%esp), %eax
	movl      %eax, %esi
	subl      %ebx, %esi
	addl      $1, %esi
	jmp       .L080548EB
.L08054BA0:
	subl      $12, %esp
	pushl     %ebx
	call      strlen
.L08054BA9:
	addl      $16, %esp
	leal      (%ebx,%eax), %edi
	movl      44(%esp), %eax
	testl     %eax, %eax
	jne       .L08054980
.L08054BBB:
	.p2align 4,,10
	.p2align 3
.L08054BC0:
	movl      $0, 4(%esp)
	movl      $.LC08063D11, %esi
	jmp       .L0805498F
.L08054BD2:
	.p2align 4,,10
	.p2align 3
.L08054BD8:
	subl      $8, %esp
	pushl     %esi
	leal      36(%esp), %eax
	pushl     %eax
	call      _ZN7acommon6String9reserve_iEj
.L08054BE6:
	movl      44(%esp), %ebx
	addl      $16, %esp
	jmp       .L080548CF
.L08054BF2:
	.p2align 4,,10
	.p2align 3
.L08054BF8:
	subl      $12, %esp
	pushl     %esi
	call      strlen
.L08054C01:
	addl      $16, %esp
	movl      %eax, %edx
	jmp       .L080549A6
.L08054C0B:
	.p2align 4,,10
	.p2align 3
.L08054C10:
	movl      92(%esp), %eax
	leal      92(%esp), %ecx
	movl      %eax, 96(%esp)
	movl      8(%esi), %eax
	movl      (%eax), %edx
	pushl     %ecx
	pushl     $-1
	pushl     %edi
	pushl     %eax
	call      *12(%edx)
.L08054C29:
	movl      20(%esi), %eax
	leal      120(%esp), %edi
	movl      (%eax), %edx
	pushl     %edi
	pushl     116(%esp)
	pushl     116(%esp)
	pushl     %eax
	call      *12(%edx)
.L08054C3F:
	addl      $32, %esp
	movl      108(%esp), %esi
	testl     %esi, %esi
	jne       .L08054890
.L08054C4E:
	subl      $8, %esp
	pushl     $0
	leal      116(%esp), %eax
	pushl     %eax
	call      _ZN7acommon6String9reserve_iEj
.L08054C5D:
	addl      $16, %esp
	movl      108(%esp), %ebx
	testl     %ebx, %ebx
	jne       .L08054890
.L08054C6C:
	subl      $8, %esp
	pushl     $0
	leal      116(%esp), %eax
	pushl     %eax
	call      _ZN7acommon6String9reserve_iEj
.L08054C7B:
	addl      $16, %esp
	jmp       .L08054890
.L08054C83:
	.p2align 4,,10
	.p2align 3
.L08054C88:
	movl      88(%esp), %esi
	movl      $.LC08063D11, %edi
	testl     %esi, %esi
	jne       .L08054860
.L08054C99:
	movl      $0, 32(%esp)
	movl      $_ZTVN7acommon6StringE+8, 72(%esp)
	movw      $1, %si
	movl      $0, 76(%esp)
	movl      $0, 80(%esp)
	xorl      %edx, %edx
	movl      $0, 84(%esp)
	xorl      %eax, %eax
	xorl      %ebx, %ebx
	jmp       .L0805492E
.L08054CD0:
	leal      40(%esp), %eax
	leal      124(%esp), %ecx
	leal      56(%esp), %edx
	call      _ZL13print_wordaffRKN7acommon6StringES2_RNS_4ConvE
.L08054CE1:
	movl      60(%esp), %eax
	movl      $_ZTVN7acommon6StringE+8, 56(%esp)
	testl     %eax, %eax
	je        .L08054CFD
.L08054CF1:
	subl      $12, %esp
	pushl     %eax
	call      free
.L08054CFA:
	addl      $16, %esp
.L08054CFD:
	movl      44(%esp), %eax
	movl      $_ZTVN7acommon6StringE+8, 40(%esp)
	testl     %eax, %eax
	je        .L08054D19
.L08054D0D:
	subl      $12, %esp
	pushl     %eax
	call      free
.L08054D16:
	addl      $16, %esp
.L08054D19:
	movl      28(%esp), %eax
	movl      $_ZTVN7acommon6StringE+8, 24(%esp)
	testl     %eax, %eax
	je        .L08054D35
.L08054D29:
	subl      $12, %esp
	pushl     %eax
	call      free
.L08054D32:
	addl      $16, %esp
.L08054D35:
	movl      156(%esp), %ebx
	testl     %ebx, %ebx
	je        .L08054D54
.L08054D40:
	subl      $12, %esp
	pushl     %ebx
	call      _ZN7acommon7ConvertD1Ev
.L08054D49:
	movl      %ebx, (%esp)
	call      _ZdlPv
.L08054D51:
	addl      $16, %esp
.L08054D54:
	subl      $12, %esp
	leal      136(%esp), %eax
	pushl     %eax
	call      _ZN7acommon5ConvPD1Ev
.L08054D64:
	movl      136(%esp), %ebx
	addl      $16, %esp
	testl     %ebx, %ebx
	je        .L08054D86
.L08054D72:
	subl      $12, %esp
	pushl     %ebx
	call      _ZN7acommon7ConvertD1Ev
.L08054D7B:
	movl      %ebx, (%esp)
	call      _ZdlPv
.L08054D83:
	addl      $16, %esp
.L08054D86:
	subl      $12, %esp
	leal      100(%esp), %eax
	pushl     %eax
	call      _ZN7acommon5ConvPD1Ev
.L08054D93:
	popl      %edx
	leal      28(%esp), %eax
	pushl     %eax
	call      _ZN7acommon12PosibErrBase7destroyEv
.L08054D9E:
	addl      $16, %esp
	testl     %ebp, %ebp
	je        .L08054DB4
.L08054DA5:
	subl      $8, %esp
	pushl     %ebp
	pushl     16(%ebp)
	call      _ZN7acommon18release_cache_dataEPNS_15GlobalCacheBaseEPKNS_9CacheableE
.L08054DB1:
	addl      $16, %esp
.L08054DB4:
	addl      $172, %esp
	popl      %ebx
	popl      %esi
	popl      %edi
	popl      %ebp
	ret       
.L08054DBF:
	.p2align 4,,10
	.p2align 3
.L08054DC0:
	subl      $8, %esp
	pushl     %esi
	leal      52(%esp), %eax
	pushl     %eax
	call      _ZN7acommon6String9reserve_iEj
.L08054DCE:
	movl      60(%esp), %eax
	addl      $16, %esp
	jmp       .L080549FB
.L08054DDA:
	.p2align 4,,10
	.p2align 3
.L08054DE0:
	subl      $8, %esp
	pushl     %ebx
	leal      68(%esp), %eax
	pushl     %eax
	call      _ZN7acommon6String9reserve_iEj
.L08054DEE:
	movl      76(%esp), %eax
	addl      $16, %esp
	jmp       .L08054A3D
.L08054DFA:
	.p2align 4,,10
	.p2align 3
.L08054E00:
	xorl      %edx, %edx
	xorl      %eax, %eax
	movl      $.LC08063D11, %edi
	jmp       .L0805492E
.L08054E0E:
	movl      $.LC08063D11, %edx
	jmp       .L08054AEF
.L08054E18:
	subl      $8, %esp
	pushl     %esi
	leal      52(%esp), %eax
	pushl     %eax
	call      _ZN7acommon6String9reserve_iEj
.L08054E26:
	movl      60(%esp), %eax
	addl      $16, %esp
	jmp       .L08054B68
.L08054E32:
	subl      $12, %esp
	pushl     %esi
	call      strlen
.L08054E3B:
	addl      $16, %esp
	movl      %eax, %edx
	jmp       .L08054AA4
.L08054E45:
	movl      (%eax), %ecx
	movb      $1, 4(%eax)
	subl      $8, %esp
	movl      $-1, %edx
	movl      (%ecx), %eax
	pushl     %edx
	pushl     %eax
	call      _Z11print_errorN7acommon10ParmStringE
.L08054E5C:
	movl      $1, (%esp)
	call      exit
	.size	_Z7combinev, .-_Z7combinev
# ----------------------
.L08054E68:
	.p2align 4
# ----------------------
	.globl	_Z10dump_affixv
	.type	_Z10dump_affixv, @function
_Z10dump_affixv:
	pushl     %edi
	pushl     %esi
	pushl     %ebx
	subl      $48, %esp
	movb      $10, 32(%esp)
	movl      $_ZTVN7acommon7FStreamE+8, 28(%esp)
	leal      12(%esp), %ebx
	movl      $_ZTVN7acommon7FStreamE+48, 36(%esp)
	movl      $0, 40(%esp)
	subl      $4, %esp
	movb      $1, 48(%esp)
	leal      32(%esp), %esi
	pushl     %esi
	pushl     options
	pushl     %ebx
	call      _ZN8aspeller15open_affix_fileERKN7acommon6ConfigERNS0_7FStreamE
.L08054EB0:
	movl      24(%esp), %eax
	movl      %eax, 16(%esp)
	addl      $12, %esp
	testl     %eax, %eax
	je        .L08054EC3
.L08054EBF:
	addl      $1, 8(%eax)
.L08054EC3:
	subl      $12, %esp
	pushl     %ebx
	call      _ZN7acommon12PosibErrBase7destroyEv
.L08054ECC:
	movl      20(%esp), %eax
	addl      $16, %esp
	testl     %eax, %eax
	jne       .L08054FBF
.L08054EDB:
	subl      $12, %esp
	leal      16(%esp), %edi
	pushl     %edi
	call      _ZN7acommon12PosibErrBase7destroyEv
.L08054EE8:
	movl      $_ZTVN7acommon6StringE+8, 28(%esp)
	movl      $0, 32(%esp)
	xorl      %eax, %eax
	movl      $0, 40(%esp)
	addl      $16, %esp
	jmp       .L08054F4C
.L08054F07:
	.p2align 4
.L08054F10:
	movl      20(%esp), %eax
	movb      $0, (%eax)
	movl      16(%esp), %eax
	movl      %eax, %edx
.L08054F1D:
	movl      %eax, 4(%esp)
	movl      20(%esp), %eax
	subl      $8, %esp
	subl      %edx, %eax
	movl      %eax, 16(%esp)
	pushl     %edi
	pushl     $_ZN7acommon4COUTE
	call      _ZN7acommon7FStreamlsERKNS_10ParmStringE
.L08054F39:
	popl      %edx
	popl      %ecx
	pushl     12(%eax)
	pushl     $10
	call      _IO_putc
.L08054F45:
	addl      $16, %esp
	movl      16(%esp), %eax
.L08054F4C:
	movl      %eax, 20(%esp)
	subl      $4, %esp
	movsbl    36(%esp), %eax
	pushl     %eax
	pushl     %ebx
	pushl     %esi
	call      _ZN7acommon7FStream11append_lineERNS_6StringEc
.L08054F60:
	addl      $16, %esp
	testb     %al, %al
	je        .L08054F80
.L08054F67:
	movl      16(%esp), %eax
	testl     %eax, %eax
	jne       .L08054F10
.L08054F6F:
	xorl      %edx, %edx
	movl      $.LC08063D11, %eax
	jmp       .L08054F1D
.L08054F78:
	.p2align 4
.L08054F80:
	movl      16(%esp), %eax
	movl      $_ZTVN7acommon6StringE+8, 12(%esp)
	testl     %eax, %eax
	je        .L08054F9C
.L08054F90:
	subl      $12, %esp
	pushl     %eax
	call      free
.L08054F99:
	addl      $16, %esp
.L08054F9C:
	movl      $_ZTVN7acommon7FStreamE+8, 28(%esp)
	movl      $_ZTVN7acommon7FStreamE+48, 36(%esp)
	subl      $12, %esp
	pushl     %esi
	call      _ZN7acommon7FStream5closeEv
.L08054FB5:
	addl      $16, %esp
	addl      $48, %esp
	popl      %ebx
	popl      %esi
	popl      %edi
	ret       
.L08054FBF:
	movl      (%eax), %ecx
	movb      $1, 4(%eax)
	subl      $8, %esp
	movl      $-1, %edx
	movl      (%ecx), %eax
	pushl     %edx
	pushl     %eax
	call      _Z11print_errorN7acommon10ParmStringE
.L08054FD6:
	movl      $1, (%esp)
	call      exit
	.size	_Z10dump_affixv, .-_Z10dump_affixv
# ----------------------
.L08054FE2:
	.p2align 4
# ----------------------
	.globl	_Z15print_help_lineccPKcN7acommon11KeyInfoTypeES0_b
	.type	_Z15print_help_lineccPKcN7acommon11KeyInfoTypeES0_b, @function
_Z15print_help_lineccPKcN7acommon11KeyInfoTypeES0_b:
	pushl     %ebp
	pushl     %edi
	pushl     %esi
	pushl     %ebx
	subl      $44, %esp
	movl      68(%esp), %eax
	movl      64(%esp), %ebp
	leal      16(%esp), %esi
	movl      72(%esp), %edi
	movl      76(%esp), %ebx
	movl      $_ZTVN7acommon6StringE+8, 16(%esp)
	movl      $0, 20(%esp)
	movl      %eax, 12(%esp)
	movl      84(%esp), %eax
	movl      $0, 24(%esp)
	movl      $0, 28(%esp)
	movl      %eax, 8(%esp)
	movl      %ebp, %eax
	testb     %al, %al
	jne       .L08055230
.L08055041:
	subl      $8, %esp
	pushl     $0
	pushl     %esi
	call      _ZN7acommon6String9reserve_iEj
.L0805504C:
	movl      40(%esp), %eax
	addl      $16, %esp
	.p2align 4,,10
	.p2align 3
.L08055058:
	movl      28(%esp), %ecx
	movl      $.LC08063E29, %ebp
	leal      -1(%ecx), %edx
	movl      $45, %ecx
	cmpl      %edx, %eax
	jne       .L08055087
.L0805506D:
	jmp       .L0805532B
.L08055072:
	.p2align 4,,10
	.p2align 3
.L08055078:
	movl      28(%esp), %edx
	subl      $1, %edx
	cmpl      %edx, %eax
	je        .L080551D0
.L08055087:
	addl      $1, %ebp
	movb      %cl, (%eax)
	movl      24(%esp), %eax
	movzbl    (%ebp), %ecx
	addl      $1, %eax
	movl      %eax, 24(%esp)
	testb     %cl, %cl
	jne       .L08055078
.L0805509F:
	movl      28(%esp), %ecx
	leal      -1(%ecx), %edx
	cmpl      %edx, %eax
	je        .L080551D0
.L080550AE:
	cmpl      $2, %ebx
	sete      %al
	cmpb      8(%esp), %al
	ja        .L08055200
.L080550BE:
	cmpl      $3, %ebx
	je        .L0805521A
.L080550C7:
	movl      24(%esp), %eax
	testl     %eax, %eax
	je        .L08055314
.L080550D3:
	movzbl    (%edi), %ecx
	testb     %cl, %cl
	jne       .L080550F7
.L080550DA:
	jmp       .L08055150
.L080550DC:
	.p2align 4,,10
	.p2align 3
.L080550E0:
	movb      %cl, (%eax)
	movl      24(%esp), %eax
	addl      $1, %edi
	addl      $1, %eax
	movl      %eax, 24(%esp)
	movzbl    (%edi), %ecx
	testb     %cl, %cl
	je        .L08055150
.L080550F7:
	movl      28(%esp), %edx
	subl      $1, %edx
	cmpl      %edx, %eax
	jne       .L080550E0
.L08055102:
	subl      $12, %esp
	pushl     %edi
	call      strlen
.L0805510B:
	addl      $12, %esp
	pushl     %eax
	pushl     %edi
	pushl     %esi
	call      _ZN7acommon6String6appendEPKvj
.L08055116:
	addl      $16, %esp
	cmpl      $3, %ebx
	jne       .L08055160
.L0805511E:
	.p2align 4,,10
	.p2align 3
.L08055120:
	subl      $8, %esp
	pushl     $.LC08063E3D
	pushl     %esi
	call      _ZN7acommon6String6appendEPKc
.L0805512E:
	addl      $16, %esp
	cmpl      $1, %ebx
	jne       .L08055169
.L08055136:
	subl      $8, %esp
	pushl     $.LC08063E44
	pushl     %esi
	call      _ZN7acommon6String6appendEPKc
.L08055144:
	addl      $16, %esp
	jmp       .L08055169
.L08055149:
	.p2align 4
.L08055150:
	movl      28(%esp), %ecx
	leal      -1(%ecx), %edx
	cmpl      %edx, %eax
	je        .L08055102
.L0805515B:
	cmpl      $3, %ebx
	je        .L08055120
.L08055160:
	testl     %ebx, %ebx
	je        .L08055120
.L08055164:
	cmpl      $1, %ebx
	je        .L08055136
.L08055169:
	subl      $8, %esp
	pushl     88(%esp)
	pushl     $.LC08063D1D
	call      dgettext
.L0805517A:
	addl      $16, %esp
	movl      20(%esp), %edx
	testl     %edx, %edx
	je        .L080552DB
.L08055189:
	movl      24(%esp), %edx
	movb      $0, (%edx)
	movl      20(%esp), %edx
.L08055194:
	subl      $4, %esp
	pushl     %eax
	pushl     %edx
	pushl     $.LC08063E4B
	call      printf
.L080551A3:
	movl      36(%esp), %eax
	movl      $_ZTVN7acommon6StringE+8, 32(%esp)
	addl      $16, %esp
	testl     %eax, %eax
	je        .L080551C2
.L080551B6:
	subl      $12, %esp
	pushl     %eax
	call      free
.L080551BF:
	addl      $16, %esp
.L080551C2:
	addl      $44, %esp
	popl      %ebx
	popl      %esi
	popl      %edi
	popl      %ebp
	ret       
.L080551CA:
	.p2align 4,,10
	.p2align 3
.L080551D0:
	subl      $12, %esp
	pushl     %ebp
	call      strlen
.L080551D9:
	addl      $16, %esp
.L080551DC:
	subl      $4, %esp
	pushl     %eax
	pushl     %ebp
	pushl     %esi
	call      _ZN7acommon6String6appendEPKvj
.L080551E7:
	addl      $16, %esp
	cmpl      $2, %ebx
	sete      %al
	cmpb      8(%esp), %al
	jbe       .L080550BE
.L080551FA:
	.p2align 4,,10
	.p2align 3
.L08055200:
	subl      $8, %esp
	pushl     $.LC08063E2C
	pushl     %esi
	call      _ZN7acommon6String6appendEPKc
.L0805520E:
	addl      $16, %esp
	cmpl      $3, %ebx
	jne       .L080550C7
.L0805521A:
	subl      $8, %esp
	pushl     $.LC08063E34
	pushl     %esi
	call      _ZN7acommon6String6appendEPKc
.L08055228:
	addl      $16, %esp
	jmp       .L080550C7
.L08055230:
	subl      $8, %esp
	pushl     $1
	pushl     %esi
	call      _ZN7acommon6String9reserve_iEj
.L0805523B:
	movl      40(%esp), %eax
	movb      $45, (%eax)
	movl      40(%esp), %eax
	leal      1(%eax), %ecx
	movl      %ecx, %eax
	subl      36(%esp), %eax
	movl      %ecx, 40(%esp)
	leal      1(%eax), %edx
	movl      44(%esp), %eax
	subl      36(%esp), %eax
	addl      $16, %esp
	cmpl      %eax, %edx
	jge       .L080552C8
.L08055265:
	movl      %ebp, %eax
	movb      %al, (%ecx)
	movl      24(%esp), %eax
	addl      $1, %eax
	cmpb      $0, 12(%esp)
	movl      %eax, 24(%esp)
	jne       .L080552E5
.L0805527B:
	movl      20(%esp), %ecx
	movl      28(%esp), %ebp
	movl      %eax, %edx
	subl      %ecx, %edx
	subl      %ecx, %ebp
	addl      $1, %edx
	cmpl      %ebp, %edx
	jge       .L080552B0
.L08055290:
	movb      $44, (%eax)
	movl      24(%esp), %eax
	addl      $1, %eax
	testl     %eax, %eax
	movl      %eax, 24(%esp)
	jne       .L08055058
.L080552A6:
	jmp       .L08055041
.L080552AB:
	.p2align 4,,10
	.p2align 3
.L080552B0:
	subl      $8, %esp
	pushl     %edx
	pushl     %esi
	call      _ZN7acommon6String9reserve_iEj
.L080552BA:
	movl      40(%esp), %eax
	addl      $16, %esp
	jmp       .L08055290
.L080552C3:
	.p2align 4,,10
	.p2align 3
.L080552C8:
	subl      $8, %esp
	pushl     %edx
	pushl     %esi
	call      _ZN7acommon6String9reserve_iEj
.L080552D2:
	movl      40(%esp), %ecx
	addl      $16, %esp
	jmp       .L08055265
.L080552DB:
	movl      $.LC08063D11, %edx
	jmp       .L08055194
.L080552E5:
	subl      $8, %esp
	pushl     $124
	pushl     %esi
	call      _ZN7acommon6String6appendEc
.L080552F0:
	popl      %ecx
	popl      %ebp
	pushl     $45
	pushl     %esi
	call      _ZN7acommon6String6appendEc
.L080552FA:
	popl      %eax
	popl      %edx
	movsbl    20(%esp), %edx
	pushl     %edx
	pushl     %esi
	call      _ZN7acommon6String6appendEc
.L08055308:
	movl      40(%esp), %eax
	addl      $16, %esp
	jmp       .L0805527B
.L08055314:
	subl      $8, %esp
	pushl     $0
	pushl     %esi
	call      _ZN7acommon6String9reserve_iEj
.L0805531F:
	movl      40(%esp), %eax
	addl      $16, %esp
	jmp       .L080550D3
.L0805532B:
	movl      $2, %eax
	jmp       .L080551DC
	.size	_Z15print_help_lineccPKcN7acommon11KeyInfoTypeES0_b, .-_Z15print_help_lineccPKcN7acommon11KeyInfoTypeES0_b
# ----------------------
.L08055335:
	.p2align 4
# ----------------------
	.globl	_Z10print_helpb
	.type	_Z10print_helpb, @function
_Z10print_helpb:
	pushl     %ebp
	pushl     %edi
	pushl     %esi
	pushl     %ebx
	xorl      %ebx, %ebx
	subl      $88, %esp
	movl      108(%esp), %eax
	movl      %eax, 36(%esp)
	movb      %al, 24(%esp)
	movl      %eax, %esi
	pushl     options
	call      _ZN7acommon16load_all_filtersEPNS_6ConfigE
.L08055362:
	movl      %esi, %eax
	addl      $16, %esp
	testb     %al, %al
	je        .L08055384
.L0805536B:
	jmp       .L0805556D
.L08055370:
	subl      $12, %esp
	addl      $1, %ebx
	pushl     %eax
	call      puts
.L0805537C:
	addl      $16, %esp
	cmpl      $11, %ebx
	je        .L080553A8
.L08055384:
	movl      _ZL10usage_text(,%ebx,4), %eax
	cmpb      $0, (%eax)
	je        .L08055370
.L08055390:
	subl      $8, %esp
	pushl     %eax
	pushl     $.LC08063D1D
	call      dgettext
.L0805539E:
	addl      $16, %esp
	jmp       .L08055370
.L080553A3:
	.p2align 4,,10
	.p2align 3
.L080553A8:
	subl      $4, %esp
	pushl     $0
	pushl     $1
	pushl     options
	call      _ZNK7acommon6Config17possible_elementsEbb
.L080553BA:
	movl      %eax, 48(%esp)
	movl      %eax, %ebp
	addl      $16, %esp
	.p2align 4,,10
	.p2align 3
.L080553C8:
	subl      $12, %esp
	movl      (%ebp), %eax
	pushl     %ebp
	call      *12(%eax)
.L080553D2:
	addl      $16, %esp
	testl     %eax, %eax
	movl      %eax, %esi
	je        .L080554F8
.L080553DF:
	movl      12(%esi), %ebx
	testl     %ebx, %ebx
	je        .L080553C8
.L080553E6:
	movl      16(%esi), %eax
	testb     $4, %al
	jne       .L080553C8
.L080553ED:
	cmpb      $0, 12(%esp)
	jne       .L08055450
.L080553F4:
	testb     $16, %al
	je        .L080553C8
.L080553F8:
	movl      (%esi), %eax
	movl      $.LC08063E7D, %edi
	movl      %eax, 16(%esp)
	call      _ZL11find_optionPKc
.L08055408:
	movl      %eax, %edx
	movl      4(%esi), %eax
	movl      $5, %ecx
	movl      16(%edx), %esi
	movl      %eax, 20(%esp)
	repz cmpsb     
	seta      %cl
	movl      %ecx, %esi
	setb      %cl
	movl      %esi, %eax
	cmpb      %cl, %al
	je        .L08055520
.L0805542D:
	subl      $8, %esp
	pushl     $0
	pushl     %ebx
	pushl     36(%esp)
	pushl     36(%esp)
	pushl     $0
	movsbl    4(%edx), %eax
	pushl     %eax
	call      _Z15print_help_lineccPKcN7acommon11KeyInfoTypeES0_b
.L08055447:
	addl      $32, %esp
	jmp       .L080553C8
.L0805544F:
	.p2align 4,,10
	.p2align 3
.L08055450:
	movl      (%esi), %eax
	movl      $.LC08063E7D, %edi
	movl      %eax, 16(%esp)
	call      _ZL11find_optionPKc
.L08055460:
	movl      %eax, %edx
	movl      4(%esi), %eax
	movl      $5, %ecx
	movl      16(%edx), %esi
	movl      %eax, 20(%esp)
	repz cmpsb     
	seta      %cl
	movl      %ecx, %esi
	setb      %cl
	movl      %esi, %eax
	cmpb      %cl, %al
	je        .L08055548
.L08055485:
	subl      $8, %esp
	pushl     $0
	pushl     %ebx
	pushl     36(%esp)
	pushl     36(%esp)
	pushl     $0
	movsbl    4(%edx), %eax
	pushl     %eax
	call      _Z15print_help_lineccPKcN7acommon11KeyInfoTypeES0_b
.L0805549F:
	addl      $32, %esp
	.p2align 4,,10
	.p2align 3
.L080554A8:
	movl      16(%esp), %esi
	movl      $.LC08063E60, %edi
	movl      $5, %ecx
	repz cmpsb     
	jne       .L080553C8
.L080554BE:
	movl      $_ZL10mode_abrvs, %ebx
	.p2align 4,,10
	.p2align 3
.L080554C8:
	subl      $8, %esp
	addl      $12, %ebx
	pushl     $1
	pushl     -4(%ebx)
	pushl     $2
	pushl     -8(%ebx)
	pushl     $0
	movsbl    -12(%ebx), %eax
	pushl     %eax
	call      _Z15print_help_lineccPKcN7acommon11KeyInfoTypeES0_b
.L080554E4:
	addl      $32, %esp
	cmpl      $.LC080652B0, %ebx
	jne       .L080554C8
.L080554EF:
	jmp       .L080553C8
.L080554F4:
	.p2align 4,,10
	.p2align 3
.L080554F8:
	cmpb      $0, 24(%esp)
	jne       .L080555CF
.L08055503:
	subl      $12, %esp
	movl      44(%esp), %edx
	movl      (%edx), %eax
	pushl     %edx
	call      *32(%eax)
.L08055510:
	addl      $16, %esp
	addl      $76, %esp
	popl      %ebx
	popl      %esi
	popl      %edi
	popl      %ebp
	ret       
.L0805551B:
	.p2align 4,,10
	.p2align 3
.L08055520:
	subl      $8, %esp
	pushl     $0
	pushl     %ebx
	pushl     36(%esp)
	pushl     36(%esp)
	movsbl    20(%edx), %eax
	pushl     %eax
	movsbl    4(%edx), %eax
	pushl     %eax
	call      _Z15print_help_lineccPKcN7acommon11KeyInfoTypeES0_b
.L0805553D:
	addl      $32, %esp
	jmp       .L080553C8
.L08055545:
	.p2align 4,,10
	.p2align 3
.L08055548:
	subl      $8, %esp
	pushl     $0
	pushl     %ebx
	pushl     36(%esp)
	pushl     36(%esp)
	movsbl    20(%edx), %eax
	pushl     %eax
	movsbl    4(%edx), %eax
	pushl     %eax
	call      _Z15print_help_lineccPKcN7acommon11KeyInfoTypeES0_b
.L08055565:
	addl      $32, %esp
	jmp       .L080554A8
.L0805556D:
	subl      $8, %esp
	pushl     $.LC08064330
	pushl     $.LC08063D1D
	call      dgettext
.L0805557F:
	popl      %esi
	popl      %edi
	pushl     $.LC08063E57
	pushl     %eax
	call      printf
.L0805558C:
	addl      $16, %esp
	jmp       .L080555B0
.L08055591:
	.p2align 4,,10
	.p2align 3
.L08055598:
	subl      $12, %esp
	addl      $1, %ebx
	pushl     %eax
	call      puts
.L080555A4:
	addl      $16, %esp
	cmpl      $30, %ebx
	je        .L080553A8
.L080555B0:
	movl      _ZL9help_text(,%ebx,4), %eax
	cmpb      $0, (%eax)
	je        .L08055598
.L080555BC:
	subl      $8, %esp
	pushl     %eax
	pushl     $.LC08063D1D
	call      dgettext
.L080555CA:
	addl      $16, %esp
	jmp       .L08055598
.L080555CF:
	subl      $8, %esp
	pushl     stdout
	pushl     $10
	call      _IO_putc
.L080555DF:
	popl      %edi
	popl      %ebp
	pushl     stdout
	pushl     $10
	call      _IO_putc
.L080555EE:
	popl      %eax
	popl      %edx
	pushl     $.LC08064368
	pushl     $.LC08063D1D
	call      dgettext
.L080555FF:
	movl      %eax, (%esp)
	call      puts
.L08055607:
	popl      %ecx
	pushl     options
	call      _ZN7acommon18get_dict_info_listEPNS_6ConfigE
.L08055613:
	movl      %eax, (%esp)
	call      _ZNK7acommon12DictInfoList8elementsEv
.L0805561B:
	movl      %eax, 52(%esp)
	movl      %eax, %ebx
	addl      $16, %esp
	jmp       .L08055642
.L08055626:
	.p2align 4
.L08055630:
	subl      $8, %esp
	pushl     (%eax)
	pushl     $.LC08063E65
	call      printf
.L0805563F:
	addl      $16, %esp
.L08055642:
	subl      $12, %esp
	pushl     %ebx
	call      _ZN7acommon19DictInfoEnumeration4nextEv
.L0805564B:
	addl      $16, %esp
	testl     %eax, %eax
	jne       .L08055630
.L08055652:
	subl      $8, %esp
	pushl     stdout
	pushl     $10
	call      _IO_putc
.L08055662:
	popl      %ebp
	popl      %eax
	pushl     stdout
	pushl     $10
	call      _IO_putc
.L08055671:
	popl      %eax
	popl      %edx
	pushl     $.LC0806442C
	pushl     $.LC08063D1D
	movl      stdout, %ebx
	call      dgettext
.L08055688:
	popl      %ecx
	popl      %esi
	pushl     %ebx
	pushl     %eax
	call      fputs
.L08055691:
	movl      options, %eax
	movl      104(%eax), %edx
	movl      %edx, 40(%esp)
	addl      $16, %esp
	cmpl      108(%eax), %edx
	je        .L08055847
.L080556A9:
	.p2align 4
.L080556B0:
	movl      24(%esp), %eax
	movl      8(%eax), %ebx
	cmpb      $0, (%ebx)
	jne       .L08055910
.L080556C0:
	movl      24(%esp), %edi
	subl      $8, %esp
	movl      (%edi), %esi
	pushl     $.LC08063E6B
	pushl     $.LC08063D1D
	call      dgettext
.L080556D8:
	addl      $12, %esp
	pushl     %ebx
	pushl     %esi
	pushl     %eax
	call      printf
.L080556E3:
	addl      $16, %esp
	movl      12(%edi), %ebx
	cmpl      %ebx, 16(%edi)
	movl      $.LC08063E7D, 28(%esp)
	jne       .L0805578B
.L080556FA:
	jmp       .L08055830
.L080556FF:
	.p2align 4,,10
	.p2align 3
.L08055700:
	subl      $1, 8(%eax)
	jne       .L08055720
.L08055706:
	cmpb      $0, 4(%eax)
	je        .L08055808
.L08055710:
	subl      $12, %esp
	leal      68(%esp), %eax
	pushl     %eax
	call      _ZN7acommon12PosibErrBase3delEv
.L0805571D:
	addl      $16, %esp
.L08055720:
	cmpl      %edi, %ebx
	je        .L08055820
.L08055728:
	movl      16(%ebp), %esi
	movl      28(%esp), %edi
	movl      $5, %ecx
	movl      12(%ebx), %eax
	repz cmpsb     
	movl      %eax, 16(%esp)
	movl      4(%ebx), %eax
	seta      %cl
	movl      %ecx, %edi
	setb      %cl
	movl      %ecx, %esi
	movl      %eax, 20(%esp)
	movl      %edi, %eax
	movl      %esi, %edx
	xorl      %ecx, %ecx
	cmpb      %dl, %al
	jne       .L0805575C
.L08055758:
	movsbl    20(%ebp), %ecx
.L0805575C:
	subl      $8, %esp
	addl      $24, %ebx
	pushl     $0
	pushl     28(%esp)
	pushl     36(%esp)
	pushl     32(%esp)
	pushl     %ecx
	movsbl    4(%ebp), %eax
	pushl     %eax
	call      _Z15print_help_lineccPKcN7acommon11KeyInfoTypeES0_b
.L0805577B:
	addl      $32, %esp
	movl      24(%esp), %eax
	cmpl      %ebx, 16(%eax)
	je        .L08055830
.L0805578B:
	movl      (%ebx), %eax
	movl      %eax, %edi
	movl      %eax, 12(%esp)
	leal      2(%edi), %esi
	call      _ZL11find_optionPKc
.L0805579B:
	movl      %esi, 48(%esp)
	movl      $-1, 52(%esp)
	subl      $4, %esp
	movl      %eax, %ebp
	leal      52(%esp), %eax
	pushl     %eax
	pushl     options
	leal      68(%esp), %eax
	pushl     %eax
	call      _ZNK7acommon6Config7keyinfoERKNS_10ParmStringE
.L080557C1:
	movl      68(%esp), %eax
	addl      $12, %esp
	movl      60(%esp), %edi
	testl     %eax, %eax
	je        .L08055720
.L080557D4:
	cmpb      $0, 4(%eax)
	jne       .L08055700
.L080557DE:
	subl      $12, %esp
	leal      68(%esp), %eax
	pushl     %eax
	call      _ZNK7acommon12PosibErrBase10handle_errEv
.L080557EB:
	movl      72(%esp), %eax
	movl      76(%esp), %edi
	addl      $16, %esp
	testl     %eax, %eax
	jne       .L08055700
.L080557FE:
	jmp       .L08055720
.L08055803:
	.p2align 4,,10
	.p2align 3
.L08055808:
	subl      $12, %esp
	leal      68(%esp), %eax
	pushl     %eax
	call      _ZNK7acommon12PosibErrBase10handle_errEv
.L08055815:
	addl      $16, %esp
	jmp       .L08055710
.L0805581D:
	.p2align 4,,10
	.p2align 3
.L08055820:
	movl      %esi, 12(%esp)
	jmp       .L08055728
.L08055829:
	.p2align 4
.L08055830:
	movl      options, %eax
	addl      $20, 24(%esp)
	movl      24(%esp), %edx
	cmpl      108(%eax), %edx
	jne       .L080556B0
.L08055847:
	subl      $8, %esp
	pushl     stdout
	pushl     $10
	call      _IO_putc
.L08055857:
	popl      %eax
	popl      %edx
	pushl     stdout
	pushl     $10
	call      _IO_putc
.L08055866:
	popl      %ecx
	popl      %ebx
	pushl     $.LC08064498
	pushl     $.LC08063D1D
	call      dgettext
.L08055877:
	movl      %eax, (%esp)
	call      puts
.L0805587F:
	popl      %esi
	popl      %edi
	pushl     options
	leal      68(%esp), %eax
	pushl     %eax
	call      _ZN7acommon22available_filter_modesEPNS_6ConfigE
.L08055891:
	movl      68(%esp), %eax
	addl      $12, %esp
	testl     %eax, %eax
	jne       .L0805596E
.L080558A0:
	movl      60(%esp), %ebx
	subl      $12, %esp
	leal      68(%esp), %eax
	pushl     %eax
	call      _ZN7acommon12PosibErrBase7destroyEv
.L080558B1:
	addl      $16, %esp
	leal      40(%esp), %esi
	jmp       .L080558D2
.L080558BA:
	.p2align 4,,10
	.p2align 3
.L080558C0:
	subl      $4, %esp
	pushl     %eax
	pushl     %edi
	pushl     $.LC08063E83
	call      printf
.L080558CF:
	addl      $16, %esp
.L080558D2:
	subl      $12, %esp
	movl      (%ebx), %eax
	pushl     %ebx
	call      *(%eax)
.L080558DA:
	addl      $16, %esp
	testb     %al, %al
	jne       .L08055928
.L080558E1:
	movl      (%ebx), %eax
	subl      $8, %esp
	pushl     %ebx
	pushl     %esi
	call      *4(%eax)
.L080558EB:
	movl      52(%esp), %edi
	addl      $12, %esp
	movl      44(%esp), %eax
	cmpb      $0, (%eax)
	je        .L080558C0
.L080558FB:
	subl      $8, %esp
	pushl     %eax
	pushl     $.LC08063D1D
	call      dgettext
.L08055909:
	addl      $16, %esp
	jmp       .L080558C0
.L0805590E:
	.p2align 4,,10
	.p2align 3
.L08055910:
	subl      $8, %esp
	pushl     %ebx
	pushl     $.LC08063D1D
	call      dgettext
.L0805591E:
	addl      $16, %esp
	movl      %eax, %ebx
	jmp       .L080556C0
.L08055928:
	subl      $12, %esp
	movl      (%ebx), %eax
	pushl     %ebx
	call      *20(%eax)
.L08055931:
	addl      $16, %esp
	movl      36(%esp), %edx
	testl     %edx, %edx
	je        .L08055503
.L08055940:
	movl      (%edx), %eax
	movl      4(%eax), %eax
	cmpl      $_ZN7acommon19DictInfoEnumerationD0Ev, %eax
	jne       .L0805595D
.L0805594C:
	subl      $12, %esp
	pushl     %edx
	call      _ZdlPv
.L08055955:
	addl      $16, %esp
	jmp       .L08055503
.L0805595D:
	subl      $12, %esp
	pushl     48(%esp)
	call      *%eax
.L08055966:
	addl      $16, %esp
	jmp       .L08055503
.L0805596E:
	movl      (%eax), %ecx
	movb      $1, 4(%eax)
	subl      $8, %esp
	movl      $-1, %edx
	movl      (%ecx), %eax
	pushl     %edx
	pushl     %eax
	call      _Z11print_errorN7acommon10ParmStringE
.L08055985:
	movl      $1, (%esp)
	call      exit
	.size	_Z10print_helpb, .-_Z10print_helpb
# ----------------------
.L08055991:
	.p2align 4
# ----------------------
	.globl	_Z17munch_list_simplev
	.type	_Z17munch_list_simplev, @function
_Z17munch_list_simplev:
	pushl     %ebp
	pushl     %edi
	pushl     %esi
	pushl     %ebx
	subl      $376, %esp
	pushl     options
	call      _ZN8aspeller13find_languageERN7acommon6ConfigE
.L080559B5:
	movl      $0, 328(%esp)
	movl      $-1, 332(%esp)
	addl      $12, %esp
	leal      316(%esp), %eax
	pushl     %eax
	pushl     options
	leal      80(%esp), %eax
	pushl     %eax
	call      _ZN8aspeller12new_languageERKN7acommon6ConfigERKNS0_10ParmStringE
.L080559E6:
	movl      80(%esp), %eax
	addl      $12, %esp
	testl     %eax, %eax
	jne       .L0805688C
.L080559F5:
	movl      72(%esp), %eax
	movl      %eax, 12(%esp)
	movl      %eax, %edi
	movl      %eax, %edx
	movl      options, %eax
	call      _ZL10setup_convPN7acommon6ConfigEPKN8aspeller8LanguageE
.L08055A0B:
	movl      options, %edx
	movl      %eax, 240(%esp)
	movl      %eax, 272(%esp)
	movl      %edi, %eax
	movl      $0, 244(%esp)
	movl      $0, 248(%esp)
	movl      $0, 252(%esp)
	movl      $_ZTVN7acommon6StringE+8, 256(%esp)
	movl      $0, 260(%esp)
	movl      $0, 264(%esp)
	movl      $0, 268(%esp)
	call      _ZL10setup_convPKN8aspeller8LanguageEPN7acommon6ConfigE
.L08055A73:
	movl      $0, 280(%esp)
	movl      %eax, 276(%esp)
	subl      $4, %esp
	movl      %eax, 312(%esp)
	movl      $0, 288(%esp)
	movl      $0, 292(%esp)
	movl      $_ZTVN7acommon6StringE+8, 296(%esp)
	movl      $0, 300(%esp)
	movl      $0, 304(%esp)
	movl      $0, 308(%esp)
	movl      $_ZTVN7acommon6StringE+8, 100(%esp)
	movl      $0, 104(%esp)
	movl      $0, 108(%esp)
	movl      $0, 112(%esp)
	movl      $_ZTVN7acommon6StringE+8, 116(%esp)
	movl      $0, 120(%esp)
	movl      $0, 124(%esp)
	movl      $0, 128(%esp)
	pushl     $4
	pushl     $1024
	leal      156(%esp), %edi
	pushl     %edi
	call      _ZN7acommon8ObjStackC1Ejj
.L08055B28:
	movl      $0, 328(%esp)
	movl      $0, 332(%esp)
	addl      $12, %esp
	pushl     $4
	pushl     $1024
	leal      332(%esp), %eax
	pushl     %eax
	call      _ZN7acommon8ObjStackC1Ejj
.L08055B55:
	movl      $0, 212(%esp)
	movl      $0, 216(%esp)
	movl      $0, 192(%esp)
	popl      %eax
	popl      %edx
	pushl     $0
	leal      188(%esp), %eax
	pushl     %eax
	call      _ZN7acommon9HashTableI9SML_ParmsE12create_tableEj
.L08055B87:
	popl      %ecx
	popl      %ebx
	pushl     $53
	leal      208(%esp), %eax
	pushl     %eax
	call      _ZN7acommon10BlockSListI13SML_WordEntryE9add_blockEj
.L08055B98:
	addl      $12, %esp
	pushl     $4
	pushl     $1024
	leal      220(%esp), %eax
	pushl     %eax
	call      _ZN7acommon8ObjStackC1Ejj
.L08055BAF:
	addl      $16, %esp
.L08055BB2:
	movl      100(%esp), %eax
	subl      $4, %esp
	movl      %eax, 108(%esp)
	movsbl    _ZN7acommon3CINE+4, %eax
	pushl     %eax
	leal      104(%esp), %eax
	pushl     %eax
	movl      _ZN7acommon3CINE, %eax
	pushl     $_ZN7acommon3CINE
	call      *(%eax)
.L08055BD6:
	addl      $16, %esp
	testb     %al, %al
	je        .L08055E8B
.L08055BE1:
	movl      100(%esp), %edx
	subl      $4, %esp
	movl      108(%esp), %eax
	subl      %edx, %eax
	pushl     %eax
	pushl     %edx
	leal      124(%esp), %eax
	pushl     %eax
	call      _ZN7acommon6String6assignEPKcj
.L08055BFA:
	movl      132(%esp), %eax
	movl      136(%esp), %esi
	addl      $16, %esp
	subl      %eax, %esi
	testl     %eax, %eax
	je        .L08056845
.L08055C15:
	movl      120(%esp), %eax
	movb      $0, (%eax)
	movl      240(%esp), %ebp
	movl      116(%esp), %ebx
	testl     %ebp, %ebp
	je        .L08055C77
.L08055C2B:
	movl      260(%esp), %eax
	movl      %eax, 264(%esp)
	movl      28(%ebp), %eax
	testl     %eax, %eax
	je        .L08055E09
.L08055C44:
	leal      256(%esp), %ebp
	movl      (%eax), %edx
	pushl     %ebp
	pushl     %esi
	pushl     %ebx
	pushl     %eax
	call      *4(%edx)
.L08055C54:
	addl      $16, %esp
	movl      260(%esp), %eax
	testl     %eax, %eax
	je        .L08055E5B
.L08055C66:
	movl      264(%esp), %eax
	movb      $0, (%eax)
	movl      260(%esp), %ebx
.L08055C77:
	subl      $8, %esp
	pushl     $47
	pushl     %ebx
	call      strchr
.L08055C82:
	addl      $16, %esp
	testl     %eax, %eax
	je        .L08055DF5
.L08055C8D:
	leal      1(%eax), %esi
	movb      $0, (%eax)
.L08055C93:
	subl      $12, %esp
	pushl     %edi
	call      _ZN7acommon8ObjStack5resetEv
.L08055C9C:
	movl      28(%esp), %eax
	movl      %esi, 144(%esp)
	movl      %ebx, 100(%esp)
	movl      $-1, 148(%esp)
	movl      $-1, 104(%esp)
	addl      $16, %esp
	movl      6044(%eax), %eax
	testl     %eax, %eax
	je        .L08055DD4
.L08055CCF:
	subl      $4, %esp
	pushl     $2147483647
	pushl     %edi
	pushl     144(%esp)
	pushl     144(%esp)
	pushl     108(%esp)
	pushl     108(%esp)
	pushl     %eax
	call      _ZNK8aspeller8AffixMgr6expandEN7acommon10ParmStringES2_RNS1_8ObjStackEi
.L08055CF4:
	addl      $32, %esp
	movl      %eax, %ebx
.L08055CF9:
	leal      84(%esp), %eax
	testl     %ebx, %ebx
	leal      128(%esp), %esi
	movl      %eax, 16(%esp)
	jne       .L08055DA7
.L08055D10:
	jmp       .L08055BB2
.L08055D15:
	.p2align 4,,10
	.p2align 3
.L08055D18:
	movl      228(%esp), %eax
	movl      %ebp, %ecx
	negl      %ecx
	addl      %ecx, %eax
	cmpl      232(%esp), %eax
	movl      %eax, 228(%esp)
	jae       .L08055D68
.L08055D35:
	movl      %ecx, 24(%esp)
	movl      %edx, 20(%esp)
	subl      $12, %esp
	leal      220(%esp), %eax
	pushl     %eax
	call      _ZN7acommon8ObjStack9new_chunkEv
.L08055D4D:
	movl      244(%esp), %eax
	movl      40(%esp), %ecx
	addl      %ecx, %eax
	movl      %eax, 244(%esp)
	addl      $16, %esp
	movl      20(%esp), %edx
.L08055D68:
	subl      $4, %esp
	pushl     %ebp
	pushl     %edx
	pushl     %eax
	call      memcpy
.L08055D73:
	movl      $0, 104(%esp)
	movl      %eax, 100(%esp)
	movb      $0, 108(%esp)
	addl      $12, %esp
	pushl     20(%esp)
	leal      184(%esp), %eax
	pushl     %eax
	pushl     %esi
	call      _ZN7acommon9HashTableI9SML_ParmsE6insertERK13SML_WordEntry
.L08055D99:
	movl      12(%ebx), %ebx
	addl      $12, %esp
	testl     %ebx, %ebx
	je        .L08055BB2
.L08055DA7:
	movl      4(%ebx), %eax
	movl      (%ebx), %edx
	cmpl      $-1, %eax
	leal      1(%eax), %ebp
	jne       .L08055D18
.L08055DB8:
	subl      $12, %esp
	pushl     %edx
	movl      %edx, 36(%esp)
	call      strlen
.L08055DC5:
	addl      $16, %esp
	leal      1(%eax), %ebp
	movl      20(%esp), %edx
	jmp       .L08055D18
.L08055DD4:
	pushl     %edi
	leal      132(%esp), %esi
	pushl     %esi
	leal      92(%esp), %eax
	pushl     %eax
	pushl     24(%esp)
	call      _ZNK8aspeller8Language11fake_expandERKN7acommon10ParmStringES4_RNS1_8ObjStackE
.L08055DEB:
	addl      $16, %esp
	movl      %eax, %ebx
	jmp       .L08055CF9
.L08055DF5:
	subl      $12, %esp
	pushl     %ebx
	call      strlen
.L08055DFE:
	addl      $16, %esp
	leal      (%ebx,%eax), %esi
	jmp       .L08055C93
.L08055E09:
	movl      244(%esp), %eax
	leal      244(%esp), %ecx
	movl      %eax, 248(%esp)
	movl      8(%ebp), %eax
	movl      (%eax), %edx
	pushl     %ecx
	pushl     %esi
	pushl     %ebx
	pushl     %eax
	call      *12(%edx)
.L08055E2A:
	movl      20(%ebp), %eax
	leal      272(%esp), %ebp
	movl      (%eax), %edx
	pushl     %ebp
	pushl     268(%esp)
	pushl     268(%esp)
	pushl     %eax
	call      *12(%edx)
.L08055E49:
	addl      $32, %esp
	movl      260(%esp), %eax
	testl     %eax, %eax
	jne       .L08055C66
.L08055E5B:
	subl      $8, %esp
	pushl     $0
	pushl     %ebp
	call      _ZN7acommon6String9reserve_iEj
.L08055E66:
	addl      $16, %esp
	movl      260(%esp), %eax
	testl     %eax, %eax
	jne       .L08055C66
.L08055E78:
	subl      $8, %esp
	pushl     $0
	pushl     %ebp
	call      _ZN7acommon6String9reserve_iEj
.L08055E83:
	addl      $16, %esp
	jmp       .L08055C66
.L08055E8B:
	movl      180(%esp), %eax
	movl      (%eax), %esi
	testl     %esi, %esi
	jne       .L08056883
.L08055E9C:
	addl      $4, %eax
.L08055E9F:
	movl      %eax, %edx
	addl      $4, %eax
	movl      -4(%eax), %ebx
	testl     %ebx, %ebx
	je        .L08055E9F
.L08055EAB:
	movl      %edx, 48(%esp)
.L08055EAF:
	movl      184(%esp), %eax
	leal      84(%esp), %ebp
	movl      $_ZTVN7acommon6StringE+8, 128(%esp)
	movl      $0, 132(%esp)
	movl      $0, 136(%esp)
	movl      $0, 140(%esp)
	movl      %eax, 40(%esp)
.L08055EEA:
	movl      48(%esp), %eax
	movl      %eax, 28(%esp)
	.p2align 4,,10
	.p2align 3
.L08055EF8:
	movl      28(%esp), %esi
	cmpl      %esi, 40(%esp)
	je        .L08056467
.L08055F06:
	movl      28(%esp), %eax
	movl      $-1, 36(%esp)
	movl      (%eax), %eax
	movl      4(%eax), %eax
	movl      %eax, 32(%esp)
	movl      12(%esp), %eax
	movl      6044(%eax), %eax
	testl     %eax, %eax
	je        .L08055F47
.L08055F29:
	subl      $12, %esp
	pushl     $1
	leal      328(%esp), %esi
	pushl     %esi
	pushl     56(%esp)
	pushl     56(%esp)
	pushl     %eax
	call      _ZNK8aspeller8AffixMgr5munchEN7acommon10ParmStringEPNS_9GuessInfoEb
.L08055F44:
	addl      $32, %esp
.L08055F47:
	movl      316(%esp), %esi
	testl     %esi, %esi
	je        .L080562AC
.L08055F56:
	movl      $2147483647, 16(%esp)
	movl      $0, 24(%esp)
	jmp       .L08055F7A
.L08055F68:
	.p2align 4
.L08055F70:
	movl      (%esi), %esi
	testl     %esi, %esi
	je        .L08056127
.L08055F7A:
	subl      $8, %esp
	pushl     %ebp
	pushl     4(%esi)
	leal      72(%esp), %eax
	leal      204(%esp), %ecx
	leal      196(%esp), %edx
	call      _ZN7acommon9HashTableI9SML_ParmsE6find_iERKPKcRb.isra.73
.L08055F98:
	movl      76(%esp), %eax
	addl      $16, %esp
	cmpb      $0, 84(%esp)
	je        .L08055F70
.L08055FA6:
	cmpl      %eax, 184(%esp)
	je        .L08055F70
.L08055FAF:
	movl      (%eax), %eax
	movl      8(%eax), %edx
	testl     %edx, %edx
	je        .L08056180
.L08055FBC:
	subl      $12, %esp
	pushl     %edx
	movl      %edx, 36(%esp)
	call      strlen
.L08055FC9:
	addl      $16, %esp
	movl      %eax, %ebx
	movl      132(%esp), %eax
	testl     %ebx, %ebx
	movl      %eax, 136(%esp)
	je        .L08056011
.L08055FE0:
	movl      140(%esp), %ecx
	movl      20(%esp), %edx
	subl      %eax, %ecx
	cmpl      %ecx, %ebx
	jge       .L08056272
.L08055FF5:
	subl      $4, %esp
	pushl     %ebx
	pushl     %edx
	pushl     %eax
	call      memmove
.L08056000:
	addl      148(%esp), %ebx
	movl      %ebx, 152(%esp)
	addl      $16, %esp
.L08056011:
	movzwl    28(%esi), %ebx
	testw     %bx, %bx
	jne       .L0805619B
.L0805601E:
	movzwl    30(%esi), %ebx
	testw     %bx, %bx
	jne       .L080561F6
.L0805602B:
	subl      $12, %esp
	pushl     %edi
	call      _ZN7acommon8ObjStack5resetEv
.L08056034:
	addl      $16, %esp
	movl      132(%esp), %eax
	testl     %eax, %eax
	je        .L08056266
.L08056046:
	movl      136(%esp), %eax
	movb      $0, (%eax)
	movl      132(%esp), %eax
	movl      %eax, %edx
.L08056059:
	movl      %eax, 84(%esp)
	movl      136(%esp), %eax
	subl      %edx, %eax
	leal      4(%esi), %edx
	movl      %eax, 88(%esp)
	movl      12(%esp), %eax
	movl      6044(%eax), %eax
	testl     %eax, %eax
	je        .L08056250
.L0805607F:
	subl      $4, %esp
	pushl     $2147483647
	pushl     %edi
	pushl     100(%esp)
	pushl     100(%esp)
	pushl     8(%esi)
	pushl     4(%esi)
	pushl     %eax
	call      _ZNK8aspeller8AffixMgr6expandEN7acommon10ParmStringES2_RNS1_8ObjStackEi
.L0805609C:
	addl      $32, %esp
	movl      %eax, %ebx
	jmp       .L080560D6
.L080560A3:
	.p2align 4,,10
	.p2align 3
.L080560A8:
	subl      $8, %esp
	pushl     %ebp
	pushl     (%ebx)
	leal      204(%esp), %ecx
	leal      196(%esp), %edx
	leal      72(%esp), %eax
	call      _ZN7acommon9HashTableI9SML_ParmsE6find_iERKPKcRb.isra.73
.L080560C5:
	addl      $16, %esp
	cmpb      $0, 84(%esp)
	je        .L08055F70
.L080560D3:
	movl      12(%ebx), %ebx
.L080560D6:
	testl     %ebx, %ebx
	jne       .L080560A8
.L080560DA:
	movl      8(%esi), %eax
	cmpl      $-1, %eax
	je        .L08056296
.L080560E6:
	cmpl      16(%esp), %eax
	jae       .L08055F70
.L080560F0:
	movl      8(%esi), %eax
	movl      %esi, 24(%esp)
	cmpl      $-1, %eax
	movl      %eax, 16(%esp)
	jne       .L08055F70
.L08056104:
	subl      $12, %esp
	pushl     4(%esi)
	call      strlen
.L0805610F:
	addl      $16, %esp
	movl      %eax, 8(%esi)
	movl      %esi, 24(%esp)
	movl      (%esi), %esi
	movl      %eax, 16(%esp)
	testl     %esi, %esi
	jne       .L08055F7A
.L08056127:
	movl      24(%esp), %eax
	testl     %eax, %eax
	je        .L080562AC
.L08056133:
	subl      $8, %esp
	pushl     %ebp
	pushl     4(%eax)
	leal      204(%esp), %ecx
	leal      196(%esp), %edx
	leal      72(%esp), %eax
	call      _ZN7acommon9HashTableI9SML_ParmsE6find_iERKPKcRb.isra.73
.L08056151:
	movl      76(%esp), %esi
	addl      $16, %esp
	cmpb      $0, 84(%esp)
	jne       .L080562F0
.L08056163:
	pushl     $_ZZ17munch_list_simplevE19__PRETTY_FUNCTION__
	pushl     $1998
	pushl     $.LC08063C88
	pushl     $.LC08063EB6
	call      __assert_fail
.L0805617C:
	.p2align 4,,10
	.p2align 3
.L08056180:
	movzwl    28(%esi), %ebx
	movl      132(%esp), %eax
	movl      %eax, 136(%esp)
	testw     %bx, %bx
	je        .L0805601E
.L0805619B:
	movl      132(%esp), %ecx
	movl      136(%esp), %edx
	movl      140(%esp), %eax
	subl      %ecx, %edx
	subl      %ecx, %eax
	addl      $1, %edx
	movl      %eax, %ecx
	movl      136(%esp), %eax
	cmpl      %ecx, %edx
	jl        .L080561DF
.L080561C4:
	subl      $8, %esp
	pushl     %edx
	leal      140(%esp), %eax
	pushl     %eax
	call      _ZN7acommon6String9reserve_iEj
.L080561D5:
	movl      152(%esp), %eax
	addl      $16, %esp
.L080561DF:
	movb      %bl, (%eax)
	movzwl    30(%esi), %ebx
	addl      $1, 136(%esp)
	testw     %bx, %bx
	je        .L0805602B
.L080561F6:
	movl      132(%esp), %ecx
	movl      136(%esp), %edx
	movl      140(%esp), %eax
	subl      %ecx, %edx
	subl      %ecx, %eax
	addl      $1, %edx
	movl      %eax, %ecx
	movl      136(%esp), %eax
	cmpl      %ecx, %edx
	jl        .L0805623A
.L0805621F:
	subl      $8, %esp
	pushl     %edx
	leal      140(%esp), %eax
	pushl     %eax
	call      _ZN7acommon6String9reserve_iEj
.L08056230:
	movl      152(%esp), %eax
	addl      $16, %esp
.L0805623A:
	movb      %bl, (%eax)
	addl      $1, 136(%esp)
	jmp       .L0805602B
.L08056249:
	.p2align 4
.L08056250:
	pushl     %edi
	pushl     %ebp
	pushl     %edx
	pushl     24(%esp)
	call      _ZNK8aspeller8Language11fake_expandERKN7acommon10ParmStringES4_RNS1_8ObjStackE
.L0805625C:
	addl      $16, %esp
	movl      %eax, %ebx
	jmp       .L080560D6
.L08056266:
	xorl      %edx, %edx
	movl      $.LC08063D11, %eax
	jmp       .L08056059
.L08056272:
	subl      $8, %esp
	pushl     %ebx
	leal      140(%esp), %eax
	pushl     %eax
	call      _ZN7acommon6String9reserve_iEj
.L08056283:
	movl      148(%esp), %eax
	addl      $16, %esp
	movl      20(%esp), %edx
	jmp       .L08055FF5
.L08056296:
	subl      $12, %esp
	pushl     4(%esi)
	call      strlen
.L080562A1:
	addl      $16, %esp
	movl      %eax, 8(%esi)
	jmp       .L080560E6
.L080562AC:
	movl      28(%esp), %eax
	movl      (%eax), %eax
	movb      $1, 12(%eax)
.L080562B6:
	movl      (%eax), %ecx
	movl      %eax, 28(%esp)
	testl     %ecx, %ecx
	jne       .L08055EF8
.L080562C4:
	movl      48(%esp), %esi
	movl      4(%esi), %edx
	movl      %esi, %eax
	addl      $4, %eax
	testl     %edx, %edx
	jne       .L0805687A
.L080562D8:
	addl      $4, %eax
.L080562DB:
	movl      %eax, %edx
	addl      $4, %eax
	movl      -4(%eax), %esi
	testl     %esi, %esi
	je        .L080562DB
.L080562E7:
	movl      %edx, 48(%esp)
	jmp       .L08055EEA
.L080562F0:
	cmpl      %esi, 184(%esp)
	je        .L08056163
.L080562FD:
	movl      24(%esp), %eax
	movzwl    28(%eax), %eax
	testw     %ax, %ax
	movw      %ax, 16(%esp)
	jne       .L0805632A
.L0805630F:
	movl      24(%esp), %eax
	movzwl    30(%eax), %ebx
	testw     %bx, %bx
	jne       .L08056391
.L0805631C:
	movl      (%esi), %ebx
.L0805631E:
	movl      28(%esp), %eax
	movb      $1, 12(%ebx)
	movl      (%eax), %eax
	jmp       .L080562B6
.L0805632A:
	movl      (%esi), %eax
	movzbl    16(%esp), %ecx
	movl      %eax, 44(%esp)
	movl      %eax, %ebx
	movl      8(%eax), %eax
	testl     %eax, %eax
	movl      %eax, 20(%esp)
	je        .L08056820
.L08056346:
	movzbl    (%eax), %edx
	testb     %dl, %dl
	movb      %dl, 52(%esp)
	jne       .L0805636E
.L08056351:
	jmp       .L08056820
.L08056356:
	.p2align 4
.L08056360:
	addl      $1, %eax
	movzbl    (%eax), %edx
	testb     %dl, %dl
	je        .L08056421
.L0805636E:
	cmpb      %dl, %cl
	jne       .L08056360
.L08056372:
	movl      24(%esp), %eax
	movzwl    30(%eax), %eax
	testw     %ax, %ax
	je        .L0805631E
.L0805637F:
	movl      %eax, %ebx
	cmpb      52(%esp), %bl
	movl      20(%esp), %eax
	jne       .L080563CC
.L0805638B:
	movl      44(%esp), %ebx
	jmp       .L0805631E
.L08056391:
	movl      (%esi), %eax
	movl      %eax, 44(%esp)
	movl      8(%eax), %eax
	testl     %eax, %eax
	movl      %eax, 20(%esp)
	je        .L08056831
.L080563A6:
	movzbl    (%eax), %eax
	testb     %al, %al
	movb      %al, 52(%esp)
	je        .L08056831
.L080563B5:
	cmpb      52(%esp), %bl
	movl      20(%esp), %eax
	jne       .L080563CC
.L080563BF:
	jmp       .L0805638B
.L080563C1:
	.p2align 4,,10
	.p2align 3
.L080563C8:
	cmpb      %dl, %bl
	je        .L0805638B
.L080563CC:
	addl      $1, %eax
	movzbl    (%eax), %edx
	testb     %dl, %dl
	jne       .L080563C8
.L080563D6:
	subl      20(%esp), %eax
	leal      2(%eax), %edx
	movl      %eax, %ecx
	leal      1(%eax), %eax
	movl      %eax, 16(%esp)
.L080563E6:
	movl      %ecx, 24(%esp)
	subl      $8, %esp
	pushl     %edx
	pushl     32(%esp)
	call      realloc
.L080563F7:
	movl      60(%esp), %ecx
	movl      %eax, 8(%ecx)
	movl      (%esi), %eax
	movl      40(%esp), %ecx
	movl      8(%eax), %eax
	movb      %bl, (%eax,%ecx)
	movl      (%esi), %eax
	movl      32(%esp), %ecx
	addl      $16, %esp
	movl      8(%eax), %eax
	movb      $0, (%eax,%ecx)
	movl      (%esi), %ebx
	jmp       .L0805631E
.L08056421:
	subl      20(%esp), %eax
	leal      2(%eax), %edx
	leal      1(%eax), %ecx
	movl      %eax, %ebx
.L0805642D:
	movl      %ecx, 52(%esp)
	subl      $8, %esp
	pushl     %edx
	pushl     32(%esp)
	call      realloc
.L0805643E:
	movl      60(%esp), %ecx
	movl      %eax, 8(%ecx)
	movl      (%esi), %eax
	movzbl    32(%esp), %ecx
	movl      8(%eax), %eax
	movb      %cl, (%eax,%ebx)
	movl      (%esi), %eax
	movl      68(%esp), %ecx
	addl      $16, %esp
	movl      8(%eax), %eax
	movb      $0, (%eax,%ecx)
	jmp       .L0805630F
.L08056467:
	movl      180(%esp), %ebp
	movl      (%ebp), %ebx
	testl     %ebx, %ebx
	jne       .L08056484
.L08056475:
	leal      4(%ebp), %eax
.L08056478:
	movl      %eax, %ebp
	addl      $4, %eax
	movl      -4(%eax), %ecx
	testl     %ecx, %ecx
	je        .L08056478
.L08056484:
	movl      %ebp, %ebx
	movl      %ebp, 20(%esp)
	movl      40(%esp), %ebp
	jmp       .L0805649C
.L08056490:
	movl      (%eax), %esi
	movl      %eax, %ebx
	testl     %esi, %esi
	je        .L080565A6
.L0805649C:
	cmpl      %ebx, %ebp
	je        .L080565CE
.L080564A4:
	movl      (%ebx), %eax
	cmpb      $0, 12(%eax)
	je        .L08056490
.L080564AC:
	movl      4(%eax), %eax
	subl      $8, %esp
	movl      $-1, 88(%esp)
	movl      %eax, 84(%esp)
	leal      84(%esp), %eax
	pushl     %eax
	leal      288(%esp), %eax
	pushl     %eax
	call      _ZN7acommon5ConvPclERKNS_10ParmStringE
.L080564D0:
	movl      $-1, 104(%esp)
	movl      %eax, 100(%esp)
	popl      %eax
	popl      %edx
	leal      92(%esp), %eax
	pushl     %eax
	pushl     $_ZN7acommon4COUTE
	call      _ZN7acommon7FStreamlsERKNS_10ParmStringE
.L080564ED:
	movl      (%ebx), %eax
	addl      $16, %esp
	movl      8(%eax), %eax
	testl     %eax, %eax
	je        .L08056585
.L080564FD:
	movl      276(%esp), %esi
	testl     %esi, %esi
	je        .L08056555
.L08056508:
	movl      296(%esp), %edx
	movl      %edx, 300(%esp)
	movl      28(%esi), %edx
	testl     %edx, %edx
	je        .L08056795
.L08056521:
	leal      292(%esp), %esi
	movl      (%edx), %ecx
	pushl     %esi
	pushl     $-1
	pushl     %eax
	pushl     %edx
	call      *4(%ecx)
.L08056532:
	addl      $16, %esp
	movl      296(%esp), %eax
	testl     %eax, %eax
	je        .L080567F0
.L08056544:
	movl      300(%esp), %eax
	movb      $0, (%eax)
	movl      296(%esp), %eax
.L08056555:
	movl      %eax, 84(%esp)
	movl      $-1, 88(%esp)
	subl      $8, %esp
	pushl     _ZN7acommon4COUTE+12
	pushl     $47
	call      _IO_putc
.L08056571:
	popl      %eax
	popl      %edx
	leal      92(%esp), %eax
	pushl     %eax
	pushl     $_ZN7acommon4COUTE
	call      _ZN7acommon7FStreamlsERKNS_10ParmStringE
.L08056582:
	addl      $16, %esp
.L08056585:
	subl      $8, %esp
	pushl     _ZN7acommon4COUTE+12
	pushl     $10
	call      _IO_putc
.L08056595:
	movl      (%ebx), %eax
	addl      $16, %esp
	movl      (%eax), %esi
	movl      %eax, %ebx
	testl     %esi, %esi
	jne       .L0805649C
.L080565A6:
	movl      20(%esp), %ebp
	movl      4(%ebp), %ebx
	leal      4(%ebp), %eax
	testl     %ebx, %ebx
	jne       .L080568AF
.L080565B8:
	leal      8(%ebp), %eax
.L080565BB:
	movl      %eax, %edx
	addl      $4, %eax
	movl      -4(%eax), %ecx
	testl     %ecx, %ecx
	je        .L080565BB
.L080565C7:
	movl      %edx, %ebp
	jmp       .L08056484
.L080565CE:
	movl      180(%esp), %esi
	movl      (%esi), %ebp
	testl     %ebp, %ebp
	jne       .L080565EA
.L080565DB:
	leal      4(%esi), %eax
.L080565DE:
	movl      %eax, %esi
	addl      $4, %eax
	movl      -4(%eax), %ebx
	testl     %ebx, %ebx
	je        .L080565DE
.L080565EA:
	movl      40(%esp), %ebp
.L080565EE:
	movl      %esi, %ebx
	jmp       .L0805661C
.L080565F2:
	movl      (%ebx), %eax
	movl      8(%eax), %edx
	testl     %edx, %edx
	je        .L08056609
.L080565FB:
	subl      $12, %esp
	pushl     %edx
	call      free
.L08056604:
	movl      (%ebx), %eax
	addl      $16, %esp
.L08056609:
	movl      $0, 8(%eax)
	movl      (%ebx), %ebx
	movl      (%ebx), %ecx
	testl     %ecx, %ecx
	je        .L08056777
.L0805661C:
	cmpl      %ebx, %ebp
	jne       .L080565F2
.L08056620:
	movl      132(%esp), %eax
	movl      $_ZTVN7acommon6StringE+8, 128(%esp)
	testl     %eax, %eax
	je        .L08056642
.L08056636:
	subl      $12, %esp
	pushl     %eax
	call      free
.L0805663F:
	addl      $16, %esp
.L08056642:
	subl      $12, %esp
	leal      220(%esp), %eax
	pushl     %eax
	call      _ZN7acommon8ObjStackD1Ev
.L08056652:
	movl      196(%esp), %ebx
	movl      200(%esp), %ecx
	addl      $16, %esp
	cmpl      %ebx, %ecx
	je        .L0805667D
.L08056667:
	movl      %ebx, %edx
.L08056669:
	movl      (%edx), %eax
	testl     %eax, %eax
	je        .L08056676
.L0805666F:
	.p2align 4,,10
	.p2align 3
.L08056670:
	movl      (%eax), %eax
	testl     %eax, %eax
	jne       .L08056670
.L08056676:
	addl      $4, %edx
	cmpl      %edx, %ecx
	jne       .L08056669
.L0805667D:
	subl      $12, %esp
	pushl     %ebx
	call      free
.L08056686:
	movl      212(%esp), %eax
	movl      $0, 192(%esp)
	addl      $16, %esp
	testl     %eax, %eax
	je        .L080566B3
.L0805669F:
	movl      (%eax), %ebx
	subl      $12, %esp
	pushl     %eax
	call      free
.L080566AA:
	addl      $16, %esp
	testl     %ebx, %ebx
	movl      %ebx, %eax
	jne       .L0805669F
.L080566B3:
	subl      $12, %esp
	leal      332(%esp), %eax
	pushl     %eax
	call      _ZN7acommon8ObjStackD1Ev
.L080566C3:
	movl      %edi, (%esp)
	call      _ZN7acommon8ObjStackD1Ev
.L080566CB:
	movl      132(%esp), %eax
	movl      $_ZTVN7acommon6StringE+8, 128(%esp)
	addl      $16, %esp
	testl     %eax, %eax
	je        .L080566F0
.L080566E4:
	subl      $12, %esp
	pushl     %eax
	call      free
.L080566ED:
	addl      $16, %esp
.L080566F0:
	movl      100(%esp), %eax
	movl      $_ZTVN7acommon6StringE+8, 96(%esp)
	testl     %eax, %eax
	je        .L0805670C
.L08056700:
	subl      $12, %esp
	pushl     %eax
	call      free
.L08056709:
	addl      $16, %esp
.L0805670C:
	subl      $12, %esp
	leal      320(%esp), %eax
	pushl     %eax
	call      _ZN7acommon7ConvObjD1Ev
.L0805671C:
	popl      %edx
	leal      288(%esp), %eax
	pushl     %eax
	call      _ZN7acommon5ConvPD1Ev
.L0805672A:
	popl      %ecx
	leal      284(%esp), %eax
	leal      252(%esp), %ebx
	pushl     %eax
	call      _ZN7acommon7ConvObjD1Ev
.L0805673F:
	movl      %ebx, (%esp)
	call      _ZN7acommon5ConvPD1Ev
.L08056747:
	popl      %ebx
	leal      80(%esp), %eax
	pushl     %eax
	call      _ZN7acommon12PosibErrBase7destroyEv
.L08056752:
	addl      $16, %esp
	movl      12(%esp), %eax
	testl     %eax, %eax
	je        .L0805676C
.L0805675D:
	subl      $8, %esp
	pushl     %eax
	pushl     16(%eax)
	call      _ZN7acommon18release_cache_dataEPNS_15GlobalCacheBaseEPKNS_9CacheableE
.L08056769:
	addl      $16, %esp
.L0805676C:
	addl      $364, %esp
	popl      %ebx
	popl      %esi
	popl      %edi
	popl      %ebp
	ret       
.L08056777:
	movl      4(%esi), %edx
	leal      4(%esi), %eax
	movl      %eax, %esi
	testl     %edx, %edx
	jne       .L080565EE
.L08056787:
	addl      $4, %esi
	movl      (%esi), %eax
	testl     %eax, %eax
	je        .L08056787
.L08056790:
	jmp       .L080565EE
.L08056795:
	movl      280(%esp), %edx
	movl      %edx, 284(%esp)
	movl      8(%esi), %edx
	movl      (%edx), %ecx
	movl      %ecx, 16(%esp)
	leal      280(%esp), %ecx
	pushl     %ecx
	pushl     $-1
	pushl     %eax
	pushl     %edx
	movl      32(%esp), %eax
	call      *12(%eax)
.L080567BF:
	movl      20(%esi), %eax
	leal      308(%esp), %esi
	movl      (%eax), %edx
	pushl     %esi
	pushl     304(%esp)
	pushl     304(%esp)
	pushl     %eax
	call      *12(%edx)
.L080567DE:
	addl      $32, %esp
	movl      296(%esp), %eax
	testl     %eax, %eax
	jne       .L08056544
.L080567F0:
	subl      $8, %esp
	pushl     $0
	pushl     %esi
	call      _ZN7acommon6String9reserve_iEj
.L080567FB:
	addl      $16, %esp
	movl      296(%esp), %ecx
	testl     %ecx, %ecx
	jne       .L08056544
.L0805680D:
	subl      $8, %esp
	pushl     $0
	pushl     %esi
	call      _ZN7acommon6String9reserve_iEj
.L08056818:
	addl      $16, %esp
	jmp       .L08056544
.L08056820:
	movl      $1, %ecx
	xorl      %ebx, %ebx
	movl      $2, %edx
	jmp       .L0805642D
.L08056831:
	movl      $1, 16(%esp)
	xorl      %ecx, %ecx
	movl      $2, %edx
	jmp       .L080563E6
.L08056845:
	subl      $8, %esp
	pushl     $0
	leal      124(%esp), %eax
	pushl     %eax
	call      _ZN7acommon6String9reserve_iEj
.L08056854:
	addl      $16, %esp
	movl      116(%esp), %eax
	testl     %eax, %eax
	jne       .L08055C15
.L08056863:
	subl      $8, %esp
	pushl     $0
	leal      124(%esp), %eax
	pushl     %eax
	call      _ZN7acommon6String9reserve_iEj
.L08056872:
	addl      $16, %esp
	jmp       .L08055C15
.L0805687A:
	movl      %eax, 48(%esp)
	jmp       .L08055EEA
.L08056883:
	movl      %eax, 48(%esp)
	jmp       .L08055EAF
.L0805688C:
	movl      (%eax), %ecx
	movb      $1, 4(%eax)
	subl      $8, %esp
	movl      $-1, %edx
	movl      (%ecx), %eax
	pushl     %edx
	pushl     %eax
	call      _Z11print_errorN7acommon10ParmStringE
.L080568A3:
	movl      $1, (%esp)
	call      exit
.L080568AF:
	movl      %eax, %ebp
	jmp       .L08056484
	.size	_Z17munch_list_simplev, .-_Z17munch_list_simplev
# ----------------------
.L080568B6:
	.p2align 4
# ----------------------
	.globl	_Z4pipev
	.type	_Z4pipev, @function
_Z4pipev:
	pushl     %ebp
	pushl     %edi
	pushl     %esi
	pushl     %ebx
	subl      $348, %esp
	call      _ZL11line_bufferv
.L080568CF:
	movl      $.LC08063EE6, 256(%esp)
	movl      $-1, 260(%esp)
	subl      $4, %esp
	leal      260(%esp), %eax
	pushl     %eax
	pushl     options
	leal      304(%esp), %eax
	pushl     %eax
	call      _ZNK7acommon6Config13retrieve_boolERKNS_10ParmStringE
.L08056903:
	leal      304(%esp), %eax
	pushl     %eax
	call      _ZNK7acommon12PosibErrBase16posib_handle_errEv
.L08056910:
	movzbl    312(%esp), %eax
	movb      %al, 69(%esp)
	popl      %eax
	leal      304(%esp), %eax
	pushl     %eax
	call      _ZN7acommon12PosibErrBase7destroyEv
.L0805692A:
	movl      $.LC08063EEB, 272(%esp)
	movl      $-1, 276(%esp)
	addl      $12, %esp
	leal      260(%esp), %eax
	pushl     %eax
	pushl     options
	leal      304(%esp), %eax
	pushl     %eax
	call      _ZNK7acommon6Config13retrieve_boolERKNS_10ParmStringE
.L0805695E:
	leal      304(%esp), %eax
	pushl     %eax
	call      _ZNK7acommon12PosibErrBase16posib_handle_errEv
.L0805696B:
	movzbl    312(%esp), %eax
	movb      %al, 70(%esp)
	popl      %eax
	leal      304(%esp), %eax
	pushl     %eax
	call      _ZN7acommon12PosibErrBase7destroyEv
.L08056985:
	movl      $.LC080641BD, 272(%esp)
	movl      $-1, 276(%esp)
	addl      $12, %esp
	leal      260(%esp), %eax
	pushl     %eax
	pushl     options
	leal      304(%esp), %eax
	pushl     %eax
	call      _ZNK7acommon6Config13retrieve_boolERKNS_10ParmStringE
.L080569B9:
	leal      304(%esp), %eax
	pushl     %eax
	call      _ZNK7acommon12PosibErrBase16posib_handle_errEv
.L080569C6:
	movzbl    312(%esp), %eax
	movb      %al, 71(%esp)
	popl      %eax
	leal      304(%esp), %eax
	pushl     %eax
	call      _ZN7acommon12PosibErrBase7destroyEv
.L080569E0:
	movl      $.LC08063E60, 272(%esp)
	movl      $-1, 276(%esp)
	popl      %eax
	popl      %edx
	leal      264(%esp), %eax
	pushl     %eax
	pushl     options
	call      _ZNK7acommon6Config4haveERKNS_10ParmStringE
.L08056A0B:
	addl      $16, %esp
	testb     %al, %al
	je        .L08058056
.L08056A16:
	call      clock
.L08056A1B:
	subl      $12, %esp
	pushl     options
	movl      %eax, %esi
	call      new_aspell_speller
.L08056A2B:
	movl      %eax, (%esp)
	movl      %eax, %ebx
	call      aspell_error
.L08056A35:
	addl      $16, %esp
	testl     %eax, %eax
	jne       .L080581E8
.L08056A40:
	subl      $12, %esp
	pushl     %ebx
	call      to_aspell_speller
.L08056A49:
	movl      64(%eax), %ebx
	movl      72(%eax), %edx
	movl      %eax, 28(%esp)
	movl      %ebx, %edi
	movl      %ebx, 48(%esp)
	movl      %eax, %ebx
	movl      %edi, %eax
	call      _ZL10setup_convPN7acommon6ConfigEPKN8aspeller8LanguageE
.L08056A62:
	movl      $0, 240(%esp)
	movl      %eax, 236(%esp)
	movl      %edi, %edx
	movl      $0, 244(%esp)
	movl      $0, 248(%esp)
	movl      $_ZTVN7acommon6StringE+8, 252(%esp)
	movl      $0, 256(%esp)
	movl      $0, 260(%esp)
	movl      $0, 264(%esp)
	movl      %eax, 268(%esp)
	movl      72(%ebx), %eax
	call      _ZL10setup_convPKN8aspeller8LanguageEPN7acommon6ConfigE
.L08056AC7:
	movl      $0, 276(%esp)
	movl      %eax, 272(%esp)
	movl      %eax, 304(%esp)
	movl      $0, 280(%esp)
	movl      $0, 284(%esp)
	movl      $_ZTVN7acommon6StringE+8, 288(%esp)
	movl      $0, 292(%esp)
	movl      $0, 296(%esp)
	movl      $0, 300(%esp)
	movl      $0, 140(%esp)
	movl      $.LC08063EFA, 216(%esp)
	movl      $-1, 220(%esp)
	addl      $12, %esp
	leal      204(%esp), %eax
	pushl     %eax
	pushl     %edi
	leal      304(%esp), %eax
	pushl     %eax
	call      _ZNK7acommon6Config13retrieve_boolERKNS_10ParmStringE
.L08056B5C:
	leal      304(%esp), %eax
	pushl     %eax
	call      _ZNK7acommon12PosibErrBase16posib_handle_errEv
.L08056B69:
	movzbl    312(%esp), %ebx
	popl      %edi
	leal      304(%esp), %eax
	pushl     %eax
	call      _ZN7acommon12PosibErrBase7destroyEv
.L08056B7F:
	addl      $16, %esp
	testb     %bl, %bl
	je        .L08058150
.L08056B8A:
	cmpb      $0, 53(%esp)
	jne       .L08057FCD
.L08056B95:
	movl      12(%esp), %esi
	movl      32(%esp), %edx
	movl      72(%esi), %eax
	call      _ZL10setup_convPKN8aspeller8LanguageEPN7acommon6ConfigE
.L08056BA5:
	movl      $0, 300(%esp)
	movl      %eax, 296(%esp)
	subl      $8, %esp
	movl      %eax, 336(%esp)
	movl      $0, 312(%esp)
	movl      %esi, %eax
	movl      $0, 316(%esp)
	movl      $_ZTVN7acommon6StringE+8, 320(%esp)
	movl      $0, 324(%esp)
	movl      $0, 328(%esp)
	movl      $0, 332(%esp)
	movl      %esi, 300(%esp)
	movb      $1, 340(%esp)
	leal      300(%esp), %esi
	pushl     %esi
	pushl     %eax
	call      _Z11new_checkerP13AspellSpellerR12StatusFunInf
.L08056C22:
	movl      $_ZTVN7acommon6StringE+8, 168(%esp)
	movl      %eax, 44(%esp)
	movl      $0, 172(%esp)
	movl      $0, 176(%esp)
	movl      $0, 180(%esp)
	movl      $0, 152(%esp)
	movl      $.LC08064248, 216(%esp)
	movl      $-1, 220(%esp)
	popl      %ebp
	popl      %eax
	leal      208(%esp), %eax
	pushl     %eax
	movl      _ZN7acommon4COUTE+8, %eax
	pushl     $_ZN7acommon4COUTE+8
	call      *4(%eax)
.L08056C8A:
	movl      172(%esp), %eax
	movl      %eax, 36(%esp)
	addl      $16, %esp
.L08056C98:
	movl      20(%esp), %eax
	subl      $12, %esp
	movl      %eax, 172(%esp)
	pushl     stdout
	call      fflush
.L08056CB1:
	addl      $16, %esp
	jmp       .L08056D14
.L08056CB9:
	.p2align 4
.L08056CC0:
	cmpl      $10, %eax
	je        .L08056D2A
.L08056CC5:
	movl      160(%esp), %edx
	movl      156(%esp), %ebx
	movl      164(%esp), %esi
	movl      %edx, %ecx
	subl      %ebx, %ecx
	subl      %ebx, %esi
	addl      $1, %ecx
	cmpl      %esi, %ecx
	jl        .L08056D0A
.L08056CE7:
	movl      %eax, 16(%esp)
	subl      $8, %esp
	pushl     %ecx
	leal      164(%esp), %eax
	pushl     %eax
	call      _ZN7acommon6String9reserve_iEj
.L08056CFC:
	movl      176(%esp), %edx
	addl      $16, %esp
	movl      16(%esp), %eax
.L08056D0A:
	movb      %al, (%edx)
	addl      $1, 160(%esp)
.L08056D14:
	subl      $12, %esp
	pushl     stdin
	call      _IO_getc
.L08056D22:
	addl      $16, %esp
	cmpl      $-1, %eax
	jne       .L08056CC0
.L08056D2A:
	movl      %eax, 48(%esp)
	subl      $8, %esp
	pushl     $10
	leal      164(%esp), %eax
	pushl     %eax
	call      _ZN7acommon6String6appendEc
.L08056D40:
	popl      %esi
	popl      %edi
	pushl     $0
	leal      164(%esp), %eax
	pushl     %eax
	call      _ZN7acommon6String6appendEc
.L08056D51:
	movl      172(%esp), %eax
	movl      %eax, 36(%esp)
	movzbl    (%eax), %eax
	addl      $16, %esp
	movb      %al, 16(%esp)
	subl      $10, %eax
	cmpb      $116, %al
	ja        .L08057895
.L08056D71:
	movzbl    %al, %eax
	jmp       *.LC08064D40(,%eax,4)
.L08056D7B:
	cmpb      $99, %al
	jne       .L08056E61
.L08056D83:
	movl      20(%esp), %eax
	movzbl    3(%eax), %eax
	cmpb      $114, %al
	je        .L08058473
.L08056D93:
	cmpb      $115, %al
	jne       .L08056E61
.L08056D9B:
	subl      $4, %esp
	leal      136(%esp), %eax
	pushl     %eax
	leal      136(%esp), %eax
	pushl     %eax
	movl      32(%esp), %eax
	addl      $4, %eax
	pushl     %eax
	call      _Z13get_word_pairPcRS_S0_
.L08056DBB:
	addl      $16, %esp
	testb     %al, %al
	jne       .L08058395
.L08056DC6:
	movl      128(%esp), %eax
	movl      $.LC08063EEB, %edi
	movl      $8, %ecx
	movl      %eax, %esi
	repz cmpsb     
	je        .L08058345
.L08056DE1:
	movl      $.LC08063EE6, %edi
	movl      $5, %ecx
	movl      %eax, %esi
	repz cmpsb     
	je        .L080582F5
.L08056DF5:
	movl      $.LC080641BD, %edi
	movl      $6, %ecx
	movl      %eax, %esi
	repz cmpsb     
	jne       .L08056E61
.L08056E05:
	movl      $.LC080641BD, 184(%esp)
	movl      $-1, 188(%esp)
	subl      $4, %esp
	leal      188(%esp), %ebx
	pushl     %ebx
	pushl     40(%esp)
	leal      212(%esp), %eax
	pushl     %eax
	call      _ZNK7acommon6Config13retrieve_boolERKNS_10ParmStringE
.L08056E37:
	leal      212(%esp), %eax
	pushl     %eax
	call      _ZNK7acommon12PosibErrBase16posib_handle_errEv
.L08056E44:
	movzbl    220(%esp), %eax
	movb      %al, 71(%esp)
.L08056E50:
	popl      %esi
	leal      212(%esp), %eax
	pushl     %eax
	call      _ZN7acommon12PosibErrBase7destroyEv
.L08056E5E:
	addl      $16, %esp
.L08056E61:
	cmpl      $-1, 48(%esp)
	je        .L08057474
.L08056E6C:
	movl      156(%esp), %eax
	movl      %eax, 20(%esp)
	jmp       .L08056C98
.L08056E7C:
	movl      $1, 36(%esp)
.L08056E84:
	movl      20(%esp), %eax
	addl      36(%esp), %eax
	subl      $12, %esp
	movl      %eax, 56(%esp)
	pushl     %eax
	movl      %eax, %esi
	call      strlen
.L08056E9B:
	addl      $12, %esp
	pushl     %eax
	pushl     %esi
	pushl     40(%esp)
	call      _ZN7acommon15DocumentChecker7processEPKci
.L08056EA9:
	addl      $16, %esp
	.p2align 4,,10
	.p2align 3
.L08056EB0:
	subl      $8, %esp
	pushl     36(%esp)
	leal      116(%esp), %eax
	pushl     %eax
	call      _ZN7acommon15DocumentChecker16next_misspellingEv
.L08056EC1:
	movl      116(%esp), %eax
	movl      %eax, 36(%esp)
	movl      %eax, %esi
	movl      120(%esp), %eax
	addl      $12, %esp
	testl     %eax, %eax
	je        .L08057DEF
.L08056EDA:
	movl      44(%esp), %edx
	addl      %esi, %edx
	movl      %edx, 128(%esp)
	movb      $0, (%edx,%eax)
	movl      220(%esp), %ebx
	movl      128(%esp), %esi
	testl     %ebx, %ebx
	je        .L08056F4A
.L08056EFD:
	movl      240(%esp), %eax
	movl      %eax, 244(%esp)
	movl      28(%ebx), %eax
	testl     %eax, %eax
	je        .L08057D5E
.L08056F16:
	leal      236(%esp), %ebx
	movl      (%eax), %edx
	pushl     %ebx
	pushl     $-1
	pushl     %esi
	pushl     %eax
	call      *4(%edx)
.L08056F27:
	addl      $16, %esp
	movl      240(%esp), %eax
	testl     %eax, %eax
	je        .L08057DB1
.L08056F39:
	movl      244(%esp), %eax
	movb      $0, (%eax)
	movl      240(%esp), %esi
.L08056F4A:
	movl      12(%esp), %ebx
	movl      $_ZTVN7acommon6StringE+8, 168(%esp)
	movl      $0, 172(%esp)
	movl      $0, 176(%esp)
	movl      $0, 180(%esp)
	movl      $_ZTVN7acommon6StringE+8, 184(%esp)
	movl      $0, 188(%esp)
	movl      $0, 192(%esp)
	movl      $0, 196(%esp)
	movl      (%ebx), %eax
	movl      24(%eax), %eax
	cmpl      $_ZN8aspeller11SpellerImpl10check_infoEv, %eax
	jne       .L08057D07
.L08056FB6:
	movl      164(%ebx), %edi
	movl      %ebx, %eax
	testl     %edi, %edi
	je        .L08057D52
.L08056FC6:
	movl      %esi, 200(%esp)
	movl      $-1, 204(%esp)
	subl      $8, %esp
	leal      208(%esp), %esi
	leal      160(%ebx), %ebx
	pushl     %esi
	pushl     72(%eax)
	call      _ZNK8aspeller8Language12case_patternERKN7acommon10ParmStringE
.L08056FF1:
	movl      %eax, 32(%esp)
	addl      $16, %esp
	.p2align 4
.L08057000:
	movl      188(%esp), %eax
	movl      %eax, 192(%esp)
	movl      16(%ebx), %edi
	testl     %edi, %edi
	je        .L0805701E
.L08057015:
	cmpb      $0, (%edi)
	jne       .L08057918
.L0805701E:
	testl     %eax, %eax
	movl      4(%ebx), %edi
	je        .L080579A4
.L08057029:
	movzbl    (%edi), %ecx
	testb     %cl, %cl
	je        .L08057077
.L08057030:
	movl      196(%esp), %esi
	leal      -1(%esi), %edx
	cmpl      %edx, %eax
	jne       .L0805705A
.L0805703E:
	jmp       .L08057AB0
.L08057043:
	.p2align 4,,10
	.p2align 3
.L08057048:
	movl      196(%esp), %edx
	subl      $1, %edx
	cmpl      %edx, %eax
	je        .L08057AB0
.L0805705A:
	movb      %cl, (%eax)
	movl      192(%esp), %eax
	addl      $1, %edi
	addl      $1, %eax
	movl      %eax, 192(%esp)
	movzbl    (%edi), %ecx
	testb     %cl, %cl
	jne       .L08057048
.L08057077:
	movl      196(%esp), %esi
	leal      -1(%esi), %edx
	cmpl      %edx, %eax
	je        .L08057AB0
.L08057089:
	movswl    12(%ebx), %edi
	testw     %di, %di
	jle       .L0805711D
.L08057096:
	movl      192(%esp), %eax
	movl      188(%esp), %ecx
	movl      196(%esp), %esi
	movl      4(%ebx), %ebp
	movl      %eax, %edx
	subl      %ecx, %edx
	subl      %ecx, %esi
	addl      $1, %edx
	cmpl      %esi, %edx
	jl        .L080570D6
.L080570BB:
	subl      $8, %esp
	pushl     %edx
	leal      196(%esp), %eax
	pushl     %eax
	call      _ZN7acommon6String9reserve_iEj
.L080570CC:
	movl      208(%esp), %eax
	addl      $16, %esp
.L080570D6:
	movb      $45, (%eax)
	movl      192(%esp), %eax
	movl      188(%esp), %ecx
	movl      196(%esp), %esi
	addl      $1, %eax
	movl      %eax, %edx
	subl      %ecx, %esi
	movl      %eax, 192(%esp)
	subl      %ecx, %edx
	addl      %edi, %edx
	cmpl      %esi, %edx
	jge       .L08057A90
.L08057108:
	subl      $4, %esp
	pushl     %edi
	pushl     %ebp
	pushl     %eax
	call      memcpy
.L08057113:
	addl      %edi, 208(%esp)
	addl      $16, %esp
.L0805711D:
	movswl    20(%ebx), %edi
	testw     %di, %di
	jle       .L080571C1
.L0805712A:
	movl      8(%ebx), %eax
	movl      4(%ebx), %ebp
	cmpl      $-1, %eax
	je        .L08057AD3
.L08057139:
	subl      %edi, %eax
	movl      188(%esp), %ecx
	movl      196(%esp), %esi
	addl      %eax, %ebp
	movl      192(%esp), %eax
	subl      %ecx, %esi
	movl      %eax, %edx
	subl      %ecx, %edx
	addl      $1, %edx
	cmpl      %esi, %edx
	jl        .L0805717A
.L0805715F:
	subl      $8, %esp
	pushl     %edx
	leal      196(%esp), %eax
	pushl     %eax
	call      _ZN7acommon6String9reserve_iEj
.L08057170:
	movl      208(%esp), %eax
	addl      $16, %esp
.L0805717A:
	movb      $45, (%eax)
	movl      192(%esp), %eax
	movl      188(%esp), %ecx
	movl      196(%esp), %esi
	addl      $1, %eax
	movl      %eax, %edx
	subl      %ecx, %esi
	movl      %eax, 192(%esp)
	subl      %ecx, %edx
	addl      %edi, %edx
	cmpl      %esi, %edx
	jge       .L08057A68
.L080571AC:
	subl      $4, %esp
	pushl     %edi
	pushl     %ebp
	pushl     %eax
	call      memcpy
.L080571B7:
	addl      %edi, 208(%esp)
	addl      $16, %esp
.L080571C1:
	movl      24(%ebx), %edi
	testl     %edi, %edi
	je        .L080571D1
.L080571C8:
	cmpb      $0, (%edi)
	jne       .L080579C8
.L080571D1:
	movl      188(%esp), %eax
	pushl     %eax
	pushl     %eax
	pushl     24(%esp)
	movl      24(%esp), %eax
	pushl     72(%eax)
	call      _ZNK8aspeller8Language8fix_caseENS_11CasePatternEPcPKc
.L080571EA:
	addl      $16, %esp
	movl      188(%esp), %edx
	movl      $.LC08063D11, %eax
	testl     %edx, %edx
	je        .L0805720E
.L080571FD:
	movl      192(%esp), %eax
	movb      $0, (%eax)
	movl      188(%esp), %eax
.L0805720E:
	movl      %eax, 200(%esp)
	movl      $-1, 204(%esp)
	subl      $8, %esp
	leal      208(%esp), %eax
	pushl     %eax
	leal      268(%esp), %eax
	pushl     %eax
	call      _ZN7acommon5ConvPclERKNS_10ParmStringE
.L08057238:
	movl      192(%esp), %edx
	addl      $16, %esp
	movl      %eax, %edi
	testl     %edx, %edx
	je        .L08057B27
.L0805724C:
	movl      180(%esp), %eax
	movl      $.LC08063D48, %ebp
	leal      -1(%eax), %ecx
	movl      $44, %eax
	cmpl      %ecx, %edx
	jne       .L08057282
.L08057264:
	jmp       .L08057B48
.L08057269:
	.p2align 4
.L08057270:
	movl      180(%esp), %ecx
	subl      $1, %ecx
	cmpl      %ecx, %edx
	je        .L080578C0
.L08057282:
	movb      %al, (%edx)
	movl      176(%esp), %eax
	addl      $1, %ebp
	leal      1(%eax), %edx
	movzbl    (%ebp), %eax
	movl      %edx, 176(%esp)
	testb     %al, %al
	jne       .L08057270
.L080572A0:
	movl      180(%esp), %eax
	subl      $1, %eax
	cmpl      %eax, %edx
	je        .L080578C0
.L080572B2:
	testl     %edx, %edx
	je        .L080578F0
.L080572BA:
	movzbl    (%edi), %ecx
	testb     %cl, %cl
	jne       .L080572F1
.L080572C1:
	jmp       .L080578A8
.L080572C6:
	.p2align 4
.L080572D0:
	movb      %cl, (%edx)
	movl      176(%esp), %eax
	addl      $1, %edi
	leal      1(%eax), %edx
	movl      %edx, 176(%esp)
	movzbl    (%edi), %ecx
	testb     %cl, %cl
	je        .L080578A8
.L080572F1:
	movl      180(%esp), %eax
	subl      $1, %eax
	cmpl      %eax, %edx
	jne       .L080572D0
.L080572FF:
	subl      $12, %esp
	pushl     %edi
	call      strlen
.L08057308:
	addl      $12, %esp
	pushl     %eax
	pushl     %edi
	leal      180(%esp), %eax
	pushl     %eax
	call      _ZN7acommon6String6appendEPKvj
.L0805731A:
	addl      $16, %esp
	.p2align 4,,10
	.p2align 3
.L08057320:
	movl      (%ebx), %ebx
	testl     %ebx, %ebx
	jne       .L08057000
.L0805732A:
	call      clock
.L0805732F:
	cmpb      $0, 54(%esp)
	movl      %eax, 16(%esp)
	jne       .L08057B52
.L0805733E:
	call      clock
.L08057343:
	subl      $4, %esp
	movl      %eax, 44(%esp)
	movl      28(%esp), %eax
	addl      40(%esp), %eax
	movl      24(%esp), %esi
	addl      %esi, %eax
	pushl     %eax
	pushl     %esi
	leal      136(%esp), %eax
	pushl     %eax
	call      _ZN7acommon5MBLenclEPKcS2_
.L08057367:
	addl      $16, %esp
	movl      %eax, %ebx
.L0805736C:
	movl      176(%esp), %eax
	cmpl      %eax, 172(%esp)
	je        .L08057E08
.L08057380:
	subl      $12, %esp
	leal      180(%esp), %eax
	pushl     %eax
	call      _ZNK7acommon6String5c_strEv
.L08057390:
	addl      $2, %eax
	movl      %eax, (%esp)
	pushl     %ebx
	pushl     148(%esp)
	pushl     $.LC08063F34
	pushl     $_ZN7acommon4COUTE+8
	call      _ZN7acommon7OStream6printfEPKcz
.L080573AD:
	addl      $32, %esp
.L080573B0:
	cmpb      $0, 53(%esp)
	jne       .L08057CC6
.L080573BB:
	movl      188(%esp), %eax
	movl      $_ZTVN7acommon6StringE+8, 184(%esp)
	testl     %eax, %eax
	je        .L080573DD
.L080573D1:
	subl      $12, %esp
	pushl     %eax
	call      free
.L080573DA:
	addl      $16, %esp
.L080573DD:
	movl      172(%esp), %eax
	movl      $_ZTVN7acommon6StringE+8, 168(%esp)
	testl     %eax, %eax
	je        .L08056EB0
.L080573F7:
	subl      $12, %esp
	pushl     %eax
	call      free
.L08057400:
	addl      $16, %esp
	jmp       .L08056EB0
.L08057408:
	subl      $12, %esp
	movl      32(%esp), %eax
	addl      $1, %eax
	pushl     %eax
	call      _Z11trim_wspacePc
.L08057418:
	movl      %eax, 144(%esp)
	addl      $12, %esp
	pushl     $-1
	pushl     %eax
	movl      24(%esp), %esi
	pushl     %esi
	call      aspell_speller_add_to_personal
.L0805742F:
	movl      %esi, (%esp)
	call      aspell_speller_error
.L08057437:
	addl      $16, %esp
	testl     %eax, %eax
	je        .L08056E61
.L08057442:
	subl      $12, %esp
	pushl     %esi
	call      aspell_speller_error_message
.L0805744B:
	movl      $-1, 116(%esp)
	movl      %eax, 112(%esp)
	popl      %ecx
	popl      %ebx
	pushl     108(%esp)
	pushl     108(%esp)
	call      _Z11print_errorN7acommon10ParmStringE
.L08057466:
	addl      $16, %esp
	cmpl      $-1, 48(%esp)
	jne       .L08056E6C
.L08057474:
	subl      $12, %esp
	pushl     24(%esp)
	call      delete_aspell_speller
.L08057480:
	popl      %ebp
	leal      148(%esp), %eax
	pushl     %eax
	call      _ZN7acommon12PosibErrBase7destroyEv
.L0805748E:
	movl      172(%esp), %eax
	movl      $_ZTVN7acommon6StringE+8, 168(%esp)
	addl      $16, %esp
	testl     %eax, %eax
	je        .L080574B3
.L080574A7:
	subl      $12, %esp
	pushl     %eax
	call      free
.L080574B0:
	addl      $16, %esp
.L080574B3:
	movl      28(%esp), %esi
	testl     %esi, %esi
	je        .L080574C7
.L080574BB:
	subl      $12, %esp
	movl      (%esi), %eax
	pushl     %esi
	call      *4(%eax)
.L080574C4:
	addl      $16, %esp
.L080574C7:
	subl      $12, %esp
	leal      340(%esp), %eax
	pushl     %eax
	call      _ZN7acommon7ConvObjD1Ev
.L080574D7:
	popl      %ecx
	leal      308(%esp), %eax
	pushl     %eax
	call      _ZN7acommon5ConvPD1Ev
.L080574E5:
	popl      %ebx
	leal      300(%esp), %eax
	pushl     %eax
	call      _ZN7acommon7ConvObjD1Ev
.L080574F3:
	popl      %esi
	leal      268(%esp), %eax
	pushl     %eax
	call      _ZN7acommon5ConvPD1Ev
.L08057501:
	popl      %edi
	leal      264(%esp), %eax
	leal      232(%esp), %ebx
	pushl     %eax
	call      _ZN7acommon7ConvObjD1Ev
.L08057516:
	movl      %ebx, (%esp)
	call      _ZN7acommon5ConvPD1Ev
.L0805751E:
	addl      $16, %esp
	addl      $348, %esp
	popl      %ebx
	popl      %esi
	popl      %edi
	popl      %ebp
	ret       
.L0805752C:
	subl      $12, %esp
	movl      32(%esp), %eax
	addl      $1, %eax
	pushl     %eax
	call      _Z11trim_wspacePc
.L0805753C:
	movl      %eax, 144(%esp)
	popl      %ebp
	popl      %edx
	movl      20(%esp), %esi
	movl      (%esi), %edx
	pushl     %eax
	pushl     %esi
	call      *8(%edx)
.L08057550:
	addl      $12, %esp
	pushl     $-1
	pushl     %eax
	pushl     %esi
	call      aspell_speller_add_to_personal
.L0805755C:
	movl      %esi, (%esp)
	call      aspell_speller_error
.L08057564:
	addl      $16, %esp
	testl     %eax, %eax
	je        .L08056E61
.L0805756F:
	subl      $12, %esp
	pushl     %esi
	call      aspell_speller_error_message
.L08057578:
	movl      $-1, 108(%esp)
	movl      %eax, 104(%esp)
	popl      %esi
	popl      %edi
	pushl     100(%esp)
	pushl     100(%esp)
	call      _Z11print_errorN7acommon10ParmStringE
.L08057593:
	addl      $16, %esp
	jmp       .L08056E61
.L0805759B:
	movb      $1, 332(%esp)
	jmp       .L08056E61
.L080575A8:
	movl      20(%esp), %eax
	movl      $1, 36(%esp)
	cmpb      $36, 1(%eax)
	jne       .L08056E84
.L080575BE:
	movzbl    2(%eax), %eax
	cmpb      $108, %al
	je        .L08058241
.L080575CA:
	jle       .L08056D7B
.L080575D0:
	cmpb      $112, %al
	je        .L0805820D
.L080575D8:
	cmpb      $114, %al
	jne       .L08056E61
.L080575E0:
	movl      20(%esp), %eax
	cmpb      $97, 3(%eax)
	jne       .L08056E61
.L080575EE:
	subl      $4, %esp
	leal      136(%esp), %eax
	pushl     %eax
	leal      136(%esp), %eax
	pushl     %eax
	movl      32(%esp), %eax
	addl      $4, %eax
	pushl     %eax
	call      _Z13get_word_pairPcRS_S0_
.L0805760E:
	addl      $16, %esp
	testb     %al, %al
	je        .L08056E61
.L08057619:
	subl      $12, %esp
	pushl     $-1
	pushl     148(%esp)
	pushl     $-1
	pushl     152(%esp)
	pushl     40(%esp)
	call      aspell_speller_store_replacement
.L08057637:
	addl      $32, %esp
	jmp       .L08056E61
.L0805763F:
	.p2align 4,,10
	.p2align 3
.L08057640:
	subl      $12, %esp
	movl      24(%esp), %esi
	pushl     %esi
	call      aspell_speller_save_all_word_lists
.L0805764D:
	movl      %esi, (%esp)
	call      aspell_speller_error
.L08057655:
	addl      $16, %esp
	testl     %eax, %eax
	je        .L08056E61
.L08057660:
	subl      $12, %esp
	pushl     %esi
	call      aspell_speller_error_message
.L08057669:
	movl      $-1, 92(%esp)
	movl      %eax, 88(%esp)
	popl      %eax
	popl      %edx
	pushl     84(%esp)
	pushl     84(%esp)
	call      _Z11print_errorN7acommon10ParmStringE
.L08057684:
	addl      $16, %esp
	jmp       .L08056E61
.L0805768C:
	movb      $0, 332(%esp)
	jmp       .L08056E61
.L08057699:
	cmpl      $-1, 48(%esp)
	jne       .L08056C98
.L080576A4:
	jmp       .L08057474
.L080576A9:
	movl      $.LC08063EF3, 200(%esp)
	movl      $-1, 204(%esp)
	leal      184(%esp), %ebx
	subl      $4, %esp
	leal      204(%esp), %eax
	pushl     %eax
	pushl     40(%esp)
	pushl     %ebx
	call      _ZN7acommon6Config6removeERKNS_10ParmStringE
.L080576DB:
	pushl     %ebx
	call      _ZN7acommon12PosibErrBase7destroyEv
.L080576E1:
	popl      %ebp
	popl      %eax
.L080576E3:
	pushl     20(%esp)
	leal      212(%esp), %eax
	pushl     %eax
	call      _ZN7acommon14reload_filtersEPNS_7SpellerE
.L080576F4:
	leal      212(%esp), %eax
	pushl     %eax
	call      _ZN7acommon12PosibErrBase7destroyEv
.L08057701:
	addl      $16, %esp
	movl      28(%esp), %esi
	testl     %esi, %esi
	je        .L08057718
.L0805770C:
	subl      $12, %esp
	movl      (%esi), %eax
	pushl     %esi
	call      *4(%eax)
.L08057715:
	addl      $16, %esp
.L08057718:
	subl      $8, %esp
	leal      300(%esp), %eax
	pushl     %eax
	pushl     24(%esp)
	call      _Z11new_checkerP13AspellSpellerR12StatusFunInf
.L0805772C:
	movl      %eax, 44(%esp)
	addl      $16, %esp
	jmp       .L08056E61
.L08057738:
	subl      $12, %esp
	movl      32(%esp), %eax
	addl      $1, %eax
	pushl     %eax
	call      _Z11trim_wspacePc
.L08057748:
	movl      %eax, 144(%esp)
	movl      %eax, 216(%esp)
	leal      216(%esp), %eax
	movl      $-1, 220(%esp)
	movl      $.LC08063E60, 200(%esp)
	leal      184(%esp), %esi
	movl      $-1, 204(%esp)
	pushl     %eax
	leal      204(%esp), %ebx
	pushl     %ebx
	pushl     56(%esp)
	pushl     %esi
	call      _ZN7acommon6Config7replaceERKNS_10ParmStringES3_
.L08057798:
	leal      164(%esp), %eax
	pushl     %eax
	call      _ZN7acommon12PosibErrBase7destroyEv
.L080577A5:
	movl      200(%esp), %eax
	movl      %eax, 168(%esp)
	addl      $32, %esp
	testl     %eax, %eax
	je        .L080577BE
.L080577BA:
	addl      $1, 8(%eax)
.L080577BE:
	subl      $12, %esp
	pushl     %esi
	call      _ZN7acommon12PosibErrBase7destroyEv
.L080577C7:
	movl      152(%esp), %eax
	addl      $16, %esp
	testl     %eax, %eax
	je        .L08057827
.L080577D5:
	movb      $1, 4(%eax)
	movl      (%eax), %eax
	testl     %eax, %eax
	je        .L08057827
.L080577DF:
	leal      200(%esp), %eax
	movl      $.LC08064162, 200(%esp)
	movl      $-1, 204(%esp)
	movl      $.LC08063E60, 184(%esp)
	movl      $-1, 188(%esp)
	pushl     %eax
	pushl     %ebx
	pushl     40(%esp)
	pushl     %esi
	call      _ZN7acommon6Config7replaceERKNS_10ParmStringES3_
.L0805781E:
	pushl     %esi
	call      _ZN7acommon12PosibErrBase7destroyEv
.L08057824:
	addl      $16, %esp
.L08057827:
	subl      $8, %esp
	jmp       .L080576E3
.L0805782F:
	subl      $12, %esp
	movl      32(%esp), %eax
	addl      $1, %eax
	pushl     %eax
	call      _Z11trim_wspacePc
.L0805783F:
	movl      %eax, 144(%esp)
	addl      $12, %esp
	pushl     $-1
	pushl     %eax
	movl      24(%esp), %esi
	pushl     %esi
	call      aspell_speller_add_to_session
.L08057856:
	movl      %esi, (%esp)
	call      aspell_speller_error
.L0805785E:
	addl      $16, %esp
	testl     %eax, %eax
	je        .L08056E61
.L08057869:
	subl      $12, %esp
	pushl     %esi
	call      aspell_speller_error_message
.L08057872:
	movl      $-1, 100(%esp)
	movl      %eax, 96(%esp)
	popl      %ecx
	popl      %ebx
	pushl     92(%esp)
	pushl     92(%esp)
	call      _Z11print_errorN7acommon10ParmStringE
.L0805788D:
	addl      $16, %esp
	jmp       .L08056E61
.L08057895:
	movl      $0, 36(%esp)
	jmp       .L08056E84
.L080578A2:
	.p2align 4,,10
	.p2align 3
.L080578A8:
	movl      180(%esp), %eax
	subl      $1, %eax
	cmpl      %eax, %edx
	jne       .L08057320
.L080578BA:
	jmp       .L080572FF
.L080578BF:
	.p2align 4,,10
	.p2align 3
.L080578C0:
	subl      $12, %esp
	pushl     %ebp
	call      strlen
.L080578C9:
	addl      $16, %esp
.L080578CC:
	subl      $4, %esp
	pushl     %eax
	pushl     %ebp
	leal      180(%esp), %eax
	pushl     %eax
	call      _ZN7acommon6String6appendEPKvj
.L080578DE:
	movl      192(%esp), %edx
	addl      $16, %esp
	testl     %edx, %edx
	jne       .L080572BA
.L080578F0:
	subl      $8, %esp
	pushl     $0
	leal      180(%esp), %eax
	pushl     %eax
	call      _ZN7acommon6String9reserve_iEj
.L08057902:
	movl      192(%esp), %edx
	addl      $16, %esp
	jmp       .L080572BA
.L08057911:
	.p2align 4,,10
	.p2align 3
.L08057918:
	movswl    14(%ebx), %ebp
	movl      196(%esp), %edx
	subl      %eax, %edx
	cmpl      %edx, %ebp
	jge       .L08057B07
.L0805792D:
	testl     %ebp, %ebp
	je        .L08057946
.L08057931:
	subl      $4, %esp
	pushl     %ebp
	pushl     %edi
	pushl     %eax
	call      memcpy
.L0805793C:
	movl      208(%esp), %eax
	addl      $16, %esp
.L08057946:
	movl      188(%esp), %ecx
	addl      %ebp, %eax
	movl      196(%esp), %esi
	movl      %eax, %edx
	movl      %eax, 192(%esp)
	subl      %ecx, %edx
	subl      %ecx, %esi
	addl      $1, %edx
	cmpl      %esi, %edx
	jl        .L08057985
.L0805796A:
	subl      $8, %esp
	pushl     %edx
	leal      196(%esp), %eax
	pushl     %eax
	call      _ZN7acommon6String9reserve_iEj
.L0805797B:
	movl      208(%esp), %eax
	addl      $16, %esp
.L08057985:
	movb      $43, (%eax)
	movl      192(%esp), %eax
	addl      $1, %eax
	testl     %eax, %eax
	movl      %eax, 192(%esp)
	movl      4(%ebx), %edi
	jne       .L08057029
.L080579A4:
	subl      $8, %esp
	pushl     $0
	leal      196(%esp), %eax
	pushl     %eax
	call      _ZN7acommon6String9reserve_iEj
.L080579B6:
	movl      208(%esp), %eax
	addl      $16, %esp
	jmp       .L08057029
.L080579C5:
	.p2align 4,,10
	.p2align 3
.L080579C8:
	movl      192(%esp), %eax
	movl      188(%esp), %ecx
	movl      196(%esp), %esi
	movswl    22(%ebx), %ebp
	movl      %eax, %edx
	subl      %ecx, %edx
	subl      %ecx, %esi
	addl      $1, %edx
	cmpl      %esi, %edx
	jl        .L08057A09
.L080579EE:
	subl      $8, %esp
	pushl     %edx
	leal      196(%esp), %eax
	pushl     %eax
	call      _ZN7acommon6String9reserve_iEj
.L080579FF:
	movl      208(%esp), %eax
	addl      $16, %esp
.L08057A09:
	movb      $43, (%eax)
	movl      192(%esp), %eax
	movl      188(%esp), %ecx
	movl      196(%esp), %esi
	addl      $1, %eax
	movl      %eax, %edx
	subl      %ecx, %esi
	movl      %eax, 192(%esp)
	subl      %ecx, %edx
	addl      %ebp, %edx
	cmpl      %esi, %edx
	jge       .L08057AE7
.L08057A3B:
	testl     %ebp, %ebp
	je        .L08057A54
.L08057A3F:
	subl      $4, %esp
	pushl     %ebp
	pushl     %edi
	pushl     %eax
	call      memcpy
.L08057A4A:
	movl      208(%esp), %eax
	addl      $16, %esp
.L08057A54:
	addl      %ebp, %eax
	movl      %eax, 192(%esp)
	jmp       .L080571D1
.L08057A62:
	.p2align 4,,10
	.p2align 3
.L08057A68:
	subl      $8, %esp
	pushl     %edx
	leal      196(%esp), %eax
	pushl     %eax
	call      _ZN7acommon6String9reserve_iEj
.L08057A79:
	movl      208(%esp), %eax
	addl      $16, %esp
	jmp       .L080571AC
.L08057A88:
	.p2align 4
.L08057A90:
	subl      $8, %esp
	pushl     %edx
	leal      196(%esp), %eax
	pushl     %eax
	call      _ZN7acommon6String9reserve_iEj
.L08057AA1:
	movl      208(%esp), %eax
	addl      $16, %esp
	jmp       .L08057108
.L08057AB0:
	subl      $12, %esp
	pushl     %edi
	call      strlen
.L08057AB9:
	addl      $12, %esp
	pushl     %eax
	pushl     %edi
	leal      196(%esp), %eax
	pushl     %eax
	call      _ZN7acommon6String6appendEPKvj
.L08057ACB:
	addl      $16, %esp
	jmp       .L08057089
.L08057AD3:
	subl      $12, %esp
	pushl     %ebp
	call      strlen
.L08057ADC:
	addl      $16, %esp
	movl      %eax, 8(%ebx)
	jmp       .L08057139
.L08057AE7:
	subl      $8, %esp
	pushl     %edx
	leal      196(%esp), %eax
	pushl     %eax
	call      _ZN7acommon6String9reserve_iEj
.L08057AF8:
	movl      208(%esp), %eax
	addl      $16, %esp
	jmp       .L08057A3B
.L08057B07:
	subl      $8, %esp
	pushl     %ebp
	leal      196(%esp), %eax
	pushl     %eax
	call      _ZN7acommon6String9reserve_iEj
.L08057B18:
	movl      208(%esp), %eax
	addl      $16, %esp
	jmp       .L0805792D
.L08057B27:
	subl      $8, %esp
	pushl     $0
	leal      180(%esp), %eax
	pushl     %eax
	call      _ZN7acommon6String9reserve_iEj
.L08057B39:
	movl      192(%esp), %edx
	addl      $16, %esp
	jmp       .L0805724C
.L08057B48:
	movl      $2, %eax
	jmp       .L080578CC
.L08057B52:
	subl      $4, %esp
	pushl     $-1
	pushl     136(%esp)
	pushl     24(%esp)
	call      aspell_speller_suggest
.L08057B67:
	movl      %eax, %esi
	call      clock
.L08057B6E:
	movl      %eax, 56(%esp)
	addl      $12, %esp
	movl      28(%esp), %eax
	addl      40(%esp), %eax
	movl      24(%esp), %ebx
	addl      %ebx, %eax
	pushl     %eax
	pushl     %ebx
	leal      136(%esp), %eax
	pushl     %eax
	call      _ZN7acommon5MBLenclEPKcS2_
.L08057B92:
	addl      $16, %esp
	testl     %esi, %esi
	movl      %eax, %ebx
	je        .L0805736C
.L08057B9F:
	subl      $12, %esp
	pushl     %esi
	call      aspell_word_list_empty
.L08057BA8:
	addl      $16, %esp
	testl     %eax, %eax
	jne       .L0805736C
.L08057BB3:
	subl      $12, %esp
	pushl     %esi
	call      aspell_word_list_size
.L08057BBC:
	movl      %ebx, (%esp)
	pushl     %eax
	pushl     148(%esp)
	pushl     $.LC08063F58
	pushl     $_ZN7acommon4COUTE+8
	call      _ZN7acommon7OStream6printfEPKcz
.L08057BD6:
	addl      $20, %esp
	pushl     %esi
	call      aspell_word_list_elements
.L08057BDF:
	movl      $.LC08063F64, 156(%esp)
	movl      $-1, 160(%esp)
	addl      $12, %esp
	leal      144(%esp), %edi
	movl      %eax, %ebx
	pushl     %edi
	pushl     options
	leal      212(%esp), %eax
	pushl     %eax
	call      _ZNK7acommon6Config13retrieve_boolERKNS_10ParmStringE
.L08057C15:
	leal      212(%esp), %eax
	pushl     %eax
	call      _ZNK7acommon12PosibErrBase16posib_handle_errEv
.L08057C22:
	movzbl    220(%esp), %eax
	movb      %al, 40(%esp)
	popl      %eax
	leal      212(%esp), %eax
	pushl     %eax
	call      _ZN7acommon12PosibErrBase7destroyEv
.L08057C3C:
	addl      $16, %esp
	movzbl    24(%esp), %eax
	testb     %al, %al
	je        .L08057C7E
.L08057C48:
	jmp       .L08057E72
.L08057C4D:
	.p2align 4,,10
	.p2align 3
.L08057C50:
	subl      $12, %esp
	pushl     %ebx
	call      aspell_string_enumeration_at_end
.L08057C59:
	addl      $16, %esp
	testl     %eax, %eax
	movl      $.LC08063D11, %edx
	jne       .L08057C6A
.L08057C65:
	movl      $.LC08063EE4, %edx
.L08057C6A:
	pushl     %edx
	pushl     %esi
	pushl     $.LC08063F25
	pushl     $_ZN7acommon4COUTE+8
	call      _ZN7acommon7OStream6printfEPKcz
.L08057C7B:
	addl      $16, %esp
.L08057C7E:
	subl      $12, %esp
	pushl     %ebx
	call      aspell_string_enumeration_next
.L08057C87:
	addl      $16, %esp
	testl     %eax, %eax
	movl      %eax, %esi
	jne       .L08057C50
.L08057C90:
	subl      $12, %esp
	pushl     %ebx
	call      delete_aspell_string_enumeration
.L08057C99:
	addl      $16, %esp
	cmpb      $0, 55(%esp)
	jne       .L08057E27
.L08057CA7:
	subl      $8, %esp
	movl      _ZN7acommon4COUTE+8, %eax
	pushl     $10
	pushl     $_ZN7acommon4COUTE+8
	call      *(%eax)
.L08057CB8:
	addl      $16, %esp
	cmpb      $0, 53(%esp)
	je        .L080573BB
.L08057CC6:
	subl      $8, %esp
	pushl     $.LC08063F43
	pushl     $.LC08063D1D
	call      dgettext
.L08057CD8:
	movl      56(%esp), %ebp
	subl      32(%esp), %ebp
	subl      $8, %esp
	movl      %ebp, 40(%esp)
	fildl     40(%esp)
	fdivs     .LC08065680
	fstpl     (%esp)
	pushl     %eax
	pushl     $_ZN7acommon4COUTE+8
	call      _ZN7acommon7OStream6printfEPKcz
.L08057CFF:
	addl      $32, %esp
	jmp       .L080573BB
.L08057D07:
	subl      $12, %esp
	pushl     24(%esp)
	call      *%eax
.L08057D10:
	addl      $16, %esp
	movl      %eax, %ebx
.L08057D15:
	movl      %esi, 200(%esp)
	movl      $-1, 204(%esp)
	subl      $8, %esp
	leal      208(%esp), %eax
	pushl     %eax
	movl      24(%esp), %eax
	pushl     72(%eax)
	call      _ZNK8aspeller8Language12case_patternERKN7acommon10ParmStringE
.L08057D3E:
	movl      %eax, 32(%esp)
	addl      $16, %esp
	testl     %ebx, %ebx
	jne       .L08057000
.L08057D4D:
	jmp       .L0805732A
.L08057D52:
	movl      12(%esp), %eax
	movl      452(%eax), %ebx
	jmp       .L08057D15
.L08057D5E:
	movl      224(%esp), %eax
	leal      224(%esp), %edi
	movl      %eax, 228(%esp)
	movl      8(%ebx), %eax
	movl      (%eax), %edx
	pushl     %edi
	pushl     $-1
	pushl     %esi
	pushl     %eax
	call      *12(%edx)
.L08057D80:
	movl      20(%ebx), %eax
	leal      252(%esp), %esi
	movl      (%eax), %edx
	pushl     %esi
	pushl     248(%esp)
	pushl     248(%esp)
	pushl     %eax
	call      *12(%edx)
.L08057D9F:
	addl      $32, %esp
	movl      240(%esp), %eax
	testl     %eax, %eax
	jne       .L08056F39
.L08057DB1:
	subl      $8, %esp
	pushl     $0
	leal      248(%esp), %eax
	pushl     %eax
	call      _ZN7acommon6String9reserve_iEj
.L08057DC3:
	addl      $16, %esp
	movl      240(%esp), %ebp
	testl     %ebp, %ebp
	jne       .L08056F39
.L08057DD5:
	subl      $8, %esp
	pushl     $0
	leal      248(%esp), %eax
	pushl     %eax
	call      _ZN7acommon6String9reserve_iEj
.L08057DE7:
	addl      $16, %esp
	jmp       .L08056F39
.L08057DEF:
	subl      $8, %esp
	movl      _ZN7acommon4COUTE+8, %eax
	pushl     $10
	pushl     $_ZN7acommon4COUTE+8
	call      *(%eax)
.L08057E00:
	addl      $16, %esp
	jmp       .L08056E61
.L08057E08:
	pushl     %ebx
	pushl     132(%esp)
	pushl     $.LC08063F2B
	pushl     $_ZN7acommon4COUTE+8
	call      _ZN7acommon7OStream6printfEPKcz
.L08057E1F:
	addl      $16, %esp
	jmp       .L080573B0
.L08057E27:
	subl      $12, %esp
	leal      180(%esp), %eax
	pushl     %eax
	call      _ZNK7acommon6String5c_strEv
.L08057E37:
	movl      %eax, 216(%esp)
	movl      192(%esp), %eax
	subl      188(%esp), %eax
	movl      %eax, 220(%esp)
	popl      %eax
	popl      %edx
	leal      208(%esp), %eax
	pushl     %eax
	movl      _ZN7acommon4COUTE+8, %eax
	pushl     $_ZN7acommon4COUTE+8
	call      *4(%eax)
.L08057E6A:
	addl      $16, %esp
	jmp       .L08057CA7
.L08057E72:
	movl      $0, 140(%esp)
	movl      $0, 144(%esp)
	subl      $12, %esp
	movl      $0, 160(%esp)
	pushl     %esi
	call      aspell_word_list_size
.L08057E9C:
	popl      %ecx
	popl      %esi
	pushl     %eax
	pushl     %edi
	call      _ZNSt6vectorIN7acommon6StringESaIS1_EE7reserveEj
.L08057EA5:
	addl      $16, %esp
.L08057EA8:
	subl      $12, %esp
	pushl     %ebx
	call      aspell_string_enumeration_next
.L08057EB1:
	addl      $16, %esp
	testl     %eax, %eax
	movl      %eax, %esi
	je        .L08057F6F
.L08057EBE:
	movl      $_ZTVN7acommon6StringE+8, 200(%esp)
	cmpb      $0, (%esi)
	jne       .L08057F27
.L08057ECE:
	movl      $0, 204(%esp)
	movl      $0, 208(%esp)
	movl      $0, 212(%esp)
.L08057EEF:
	subl      $8, %esp
	leal      208(%esp), %eax
	pushl     %eax
	pushl     %edi
	call      _ZNSt6vectorIN7acommon6StringESaIS1_EE9push_backERKS1_
.L08057F00:
	movl      220(%esp), %eax
	movl      $_ZTVN7acommon6StringE+8, 216(%esp)
	addl      $16, %esp
	testl     %eax, %eax
	je        .L08057EA8
.L08057F19:
	subl      $12, %esp
	pushl     %eax
	call      free
.L08057F22:
	addl      $16, %esp
	jmp       .L08057EA8
.L08057F27:
	subl      $12, %esp
	pushl     %esi
	call      strlen
.L08057F30:
	movl      %eax, %ebp
	leal      1(%eax), %eax
	movl      %eax, (%esp)
	call      malloc
.L08057F3D:
	movl      %eax, 220(%esp)
	addl      $12, %esp
	pushl     %ebp
	pushl     %esi
	pushl     %eax
	movl      %eax, 40(%esp)
	call      memcpy
.L08057F53:
	movl      40(%esp), %edx
	addl      %edx, %ebp
	movl      %ebp, 224(%esp)
	addl      $1, %ebp
	movl      %ebp, 228(%esp)
	addl      $16, %esp
	jmp       .L08057EEF
.L08057F6F:
	movl      144(%esp), %eax
	leal      -16(%eax), %esi
	jmp       .L08057F8F
.L08057F7B:
	subl      $8, %esp
	movl      _ZN7acommon4COUTE+8, %eax
	pushl     $44
	pushl     $_ZN7acommon4COUTE+8
	call      *(%eax)
.L08057F8C:
	addl      $16, %esp
.L08057F8F:
	subl      $12, %esp
	movl      %esi, %ebp
	pushl     %esi
	subl      $16, %esi
	call      _ZNK7acommon6String5c_strEv
.L08057F9D:
	addl      $12, %esp
	pushl     %eax
	pushl     $.LC08063FB4
	pushl     $_ZN7acommon4COUTE+8
	call      _ZN7acommon7OStream6printfEPKcz
.L08057FB0:
	addl      $16, %esp
	cmpl      140(%esp), %ebp
	jne       .L08057F7B
.L08057FBC:
	subl      $12, %esp
	pushl     %edi
	call      _ZNSt6vectorIN7acommon6StringESaIS1_EED1Ev
.L08057FC5:
	addl      $16, %esp
	jmp       .L08057C90
.L08057FCD:
	movl      $.LC08063D10, 292(%esp)
	movl      $-1, 296(%esp)
	call      clock
.L08057FE8:
	subl      $8, %esp
	movl      %eax, %ebx
	pushl     $.LC08063F07
	pushl     $.LC08063D1D
	subl      %esi, %ebx
	call      dgettext
.L08057FFE:
	movl      $-1, 220(%esp)
	movl      %eax, 216(%esp)
	popl      %eax
	popl      %edx
	leal      208(%esp), %eax
	pushl     %eax
	pushl     $_ZN7acommon4COUTE
	call      _ZN7acommon7FStreamlsERKNS_10ParmStringE
.L08058024:
	movl      %ebx, 32(%esp)
	movl      %eax, (%esp)
	fildl     32(%esp)
	fdivs     .LC08065680
	fstpl     4(%esp)
	call      _ZN7acommon7FStreamlsEd
.L0805803E:
	popl      %ecx
	popl      %ebx
	leal      300(%esp), %esi
	pushl     %esi
	pushl     %eax
	call      _ZN7acommon7FStreamlsERKNS_10ParmStringE
.L0805804E:
	addl      $16, %esp
	jmp       .L08056B95
.L08058056:
	movl      $.LC08063EF3, 292(%esp)
	movl      $-1, 296(%esp)
	subl      $8, %esp
	leal      300(%esp), %eax
	pushl     %eax
	pushl     options
	call      _ZNK7acommon6Config4haveERKNS_10ParmStringE
.L08058082:
	addl      $16, %esp
	testb     %al, %al
	jne       .L08056A16
.L0805808D:
	leal      292(%esp), %eax
	movl      $.LC0806417B, 292(%esp)
	movl      $-1, 296(%esp)
	movl      $.LC08063E60, 256(%esp)
	movl      $-1, 260(%esp)
	leal      220(%esp), %ebx
	pushl     %eax
	leal      260(%esp), %eax
	pushl     %eax
	pushl     options
	pushl     %ebx
	call      _ZN7acommon6Config7replaceERKNS_10ParmStringES3_
.L080580DC:
	movl      232(%esp), %eax
	movl      %eax, 212(%esp)
	addl      $12, %esp
	testl     %eax, %eax
	je        .L080580F5
.L080580F1:
	addl      $1, 8(%eax)
.L080580F5:
	subl      $12, %esp
	pushl     %ebx
	call      _ZN7acommon12PosibErrBase7destroyEv
.L080580FE:
	movl      216(%esp), %eax
	addl      $16, %esp
	testl     %eax, %eax
	je        .L08058138
.L0805810C:
	movb      $1, 4(%eax)
	movl      (%eax), %eax
	subl      $8, %esp
	movl      (%eax), %ebx
	pushl     $.LC080645D0
	pushl     $.LC08063D1D
	call      dgettext
.L08058126:
	addl      $12, %esp
	pushl     %ebx
	pushl     %eax
	pushl     $_ZN7acommon4CERRE+8
	call      _ZN7acommon7OStream6printfEPKcz
.L08058135:
	addl      $16, %esp
.L08058138:
	subl      $12, %esp
	leal      212(%esp), %eax
	pushl     %eax
	call      _ZN7acommon12PosibErrBase7destroyEv
.L08058148:
	addl      $16, %esp
	jmp       .L08056A16
.L08058150:
	movl      $.LC08063D24, 184(%esp)
	movl      $-1, 188(%esp)
	subl      $4, %esp
	leal      188(%esp), %eax
	pushl     %eax
	movl      40(%esp), %edi
	pushl     %edi
	leal      304(%esp), %eax
	pushl     %eax
	call      _ZNK7acommon6Config8retrieveERKNS_10ParmStringE
.L08058183:
	leal      308(%esp), %eax
	pushl     %eax
	call      _ZNK7acommon6String5c_strEv
.L08058190:
	movl      %eax, 216(%esp)
	movl      320(%esp), %eax
	leal      184(%esp), %ebx
	subl      316(%esp), %eax
	movl      %eax, 220(%esp)
	leal      216(%esp), %eax
	pushl     %eax
	pushl     %edi
	leal      148(%esp), %eax
	pushl     %eax
	pushl     %ebx
	call      _ZN7acommon5MBLen5setupERKNS_6ConfigERKNS_10ParmStringE
.L080581CA:
	pushl     %ebx
	call      _ZN7acommon12PosibErrBase7destroyEv
.L080581D0:
	addl      $20, %esp
	leal      304(%esp), %eax
	pushl     %eax
	call      _ZN7acommon8PosibErrINS_6StringEED1Ev
.L080581E0:
	addl      $16, %esp
	jmp       .L08056B8A
.L080581E8:
	subl      $12, %esp
	pushl     %ebx
	movl      $-1, %ebx
	call      aspell_error_message
.L080581F6:
	popl      %ebp
	movl      %eax, %ecx
	popl      %eax
	pushl     %ebx
	pushl     %ecx
	call      _Z11print_errorN7acommon10ParmStringE
.L08058201:
	movl      $1, (%esp)
	call      exit
.L0805820D:
	movl      20(%esp), %eax
	movzbl    3(%eax), %eax
	cmpb      $112, %al
	je        .L080582D9
.L0805821D:
	cmpb      $115, %al
	jne       .L08056E61
.L08058225:
	subl      $12, %esp
	pushl     24(%esp)
	call      aspell_speller_session_word_list
.L08058231:
	movl      %eax, (%esp)
	call      _Z14print_elementsPK14AspellWordList
.L08058239:
	addl      $16, %esp
	jmp       .L08056E61
.L08058241:
	movl      $.LC08063F20, 168(%esp)
	movl      $-1, 172(%esp)
	subl      $4, %esp
	leal      172(%esp), %eax
	pushl     %eax
	pushl     40(%esp)
	leal      212(%esp), %eax
	pushl     %eax
	call      _ZNK7acommon6Config8retrieveERKNS_10ParmStringE
.L08058273:
	leal      216(%esp), %eax
	pushl     %eax
	call      _ZNK7acommon6String5c_strEv
.L08058280:
	movl      %eax, 200(%esp)
	movl      228(%esp), %eax
	subl      224(%esp), %eax
	movl      %eax, 204(%esp)
	popl      %eax
	popl      %edx
	movl      _ZN7acommon4COUTE+8, %eax
	leal      192(%esp), %ebx
	pushl     %ebx
	pushl     $_ZN7acommon4COUTE+8
	call      *4(%eax)
.L080582B3:
	movl      _ZN7acommon4COUTE+8, %eax
	popl      %ecx
	popl      %ebx
	pushl     $10
	pushl     $_ZN7acommon4COUTE+8
	call      *(%eax)
.L080582C3:
	popl      %esi
	leal      212(%esp), %eax
	pushl     %eax
	call      _ZN7acommon8PosibErrINS_6StringEED1Ev
.L080582D1:
	addl      $16, %esp
	jmp       .L08056E61
.L080582D9:
	subl      $12, %esp
	pushl     24(%esp)
	call      aspell_speller_personal_word_list
.L080582E5:
	movl      %eax, (%esp)
	call      _Z14print_elementsPK14AspellWordList
.L080582ED:
	addl      $16, %esp
	jmp       .L08056E61
.L080582F5:
	movl      $.LC08063EE6, 184(%esp)
	movl      $-1, 188(%esp)
	subl      $4, %esp
	leal      188(%esp), %ebx
	pushl     %ebx
	pushl     40(%esp)
	leal      212(%esp), %eax
	pushl     %eax
	call      _ZNK7acommon6Config13retrieve_boolERKNS_10ParmStringE
.L08058327:
	leal      212(%esp), %eax
	pushl     %eax
	call      _ZNK7acommon12PosibErrBase16posib_handle_errEv
.L08058334:
	movzbl    220(%esp), %eax
	movb      %al, 69(%esp)
	jmp       .L08056E50
.L08058345:
	movl      $.LC08063EEB, 184(%esp)
	movl      $-1, 188(%esp)
	subl      $4, %esp
	leal      188(%esp), %ebx
	pushl     %ebx
	pushl     40(%esp)
	leal      212(%esp), %eax
	pushl     %eax
	call      _ZNK7acommon6Config13retrieve_boolERKNS_10ParmStringE
.L08058377:
	leal      212(%esp), %eax
	pushl     %eax
	call      _ZNK7acommon12PosibErrBase16posib_handle_errEv
.L08058384:
	movzbl    220(%esp), %eax
	movb      %al, 70(%esp)
	jmp       .L08056E50
.L08058395:
	movl      132(%esp), %eax
	movl      $-1, 204(%esp)
	leal      168(%esp), %esi
	movl      $-1, 188(%esp)
	movl      %eax, 200(%esp)
	movl      128(%esp), %eax
	movl      %eax, 184(%esp)
	leal      200(%esp), %eax
	pushl     %eax
	leal      188(%esp), %ebx
	pushl     %ebx
	pushl     40(%esp)
	pushl     %esi
	call      _ZN7acommon6Config7replaceERKNS_10ParmStringES3_
.L080583E8:
	leal      148(%esp), %eax
	pushl     %eax
	call      _ZN7acommon12PosibErrBase7destroyEv
.L080583F5:
	movl      184(%esp), %eax
	movl      %eax, 152(%esp)
	addl      $16, %esp
	testl     %eax, %eax
	je        .L080585C4
.L0805840E:
	movl      8(%eax), %edx
	movl      %eax, 140(%esp)
	addl      $2, %edx
	movl      %edx, 8(%eax)
.L0805841E:
	subl      $12, %esp
	pushl     %esi
	call      _ZN7acommon12PosibErrBase7destroyEv
.L08058427:
	movl      156(%esp), %eax
	addl      $16, %esp
	testl     %eax, %eax
	je        .L080585AC
.L08058439:
	movb      $1, 4(%eax)
	movl      (%eax), %eax
	subl      $8, %esp
	movl      $-1, 76(%esp)
	movl      (%eax), %eax
	movl      %eax, 72(%esp)
	pushl     76(%esp)
	pushl     76(%esp)
	call      _Z11print_errorN7acommon10ParmStringE
.L0805845D:
	popl      %edi
	leal      152(%esp), %eax
	pushl     %eax
	call      _ZN7acommon12PosibErrBase7destroyEv
.L0805846B:
	addl      $16, %esp
	jmp       .L08056DC6
.L08058473:
	subl      $12, %esp
	movl      32(%esp), %eax
	addl      $4, %eax
	pushl     %eax
	call      _Z11trim_wspacePc
.L08058483:
	movl      $_ZTVN7acommon6StringE+8, 200(%esp)
	movl      %eax, 144(%esp)
	movl      %eax, 184(%esp)
	movl      $0, 204(%esp)
	movl      $0, 208(%esp)
	movl      $0, 212(%esp)
	movl      $-1, 188(%esp)
	addl      $12, %esp
	leal      172(%esp), %eax
	pushl     %eax
	pushl     40(%esp)
	leal      212(%esp), %eax
	pushl     %eax
	call      _ZNK7acommon6Config8retrieveERKNS_10ParmStringE
.L080584E4:
	movl      212(%esp), %eax
	addl      $12, %esp
	testl     %eax, %eax
	je        .L080585D4
.L080584F6:
	movb      $1, 4(%eax)
	movl      (%eax), %eax
	subl      $8, %esp
	movl      $-1, 68(%esp)
	movl      (%eax), %eax
	movl      %eax, 64(%esp)
	pushl     68(%esp)
	pushl     68(%esp)
	call      _Z11print_errorN7acommon10ParmStringE
.L0805851A:
	popl      %ebx
	leal      212(%esp), %eax
	pushl     %eax
	call      _ZN7acommon8PosibErrINS_6StringEED1Ev
.L08058528:
	addl      $16, %esp
	leal      184(%esp), %ebx
.L08058532:
	subl      $12, %esp
	pushl     %ebx
	call      _ZNK7acommon6String5c_strEv
.L0805853B:
	movl      %eax, 216(%esp)
	movl      208(%esp), %eax
	subl      204(%esp), %eax
	movl      %eax, 220(%esp)
	popl      %edi
	popl      %ebp
	leal      208(%esp), %eax
	pushl     %eax
	movl      _ZN7acommon4COUTE+8, %eax
	pushl     $_ZN7acommon4COUTE+8
	call      *4(%eax)
.L0805856E:
	popl      %eax
	movl      _ZN7acommon4COUTE+8, %eax
	popl      %edx
	pushl     $10
	pushl     $_ZN7acommon4COUTE+8
	call      *(%eax)
.L0805857E:
	movl      204(%esp), %eax
	movl      $_ZTVN7acommon6StringE+8, 200(%esp)
	addl      $16, %esp
	testl     %eax, %eax
	je        .L08056E61
.L0805859B:
	subl      $12, %esp
	pushl     %eax
	call      free
.L080585A4:
	addl      $16, %esp
	jmp       .L08056E61
.L080585AC:
	subl      $12, %esp
	leal      152(%esp), %eax
	pushl     %eax
	call      _ZN7acommon12PosibErrBase7destroyEv
.L080585BC:
	addl      $16, %esp
	jmp       .L08056DC6
.L080585C4:
	movl      $0, 140(%esp)
	jmp       .L0805841E
.L080585D4:
	movl      208(%esp), %edx
	subl      $4, %esp
	movl      216(%esp), %eax
	subl      %edx, %eax
	pushl     %eax
	pushl     %edx
	leal      196(%esp), %ebx
	pushl     %ebx
	call      _ZN7acommon6String6assignEPKcj
.L080585F6:
	popl      %ecx
	leal      212(%esp), %eax
	pushl     %eax
	call      _ZN7acommon8PosibErrINS_6StringEED1Ev
.L08058604:
	addl      $16, %esp
	jmp       .L08058532
	.size	_Z4pipev, .-_Z4pipev
# ----------------------
.L0805860C:
	.p2align 4,,10
	.p2align 3
# ----------------------
	.globl	_Z5checkv
	.type	_Z5checkv, @function
_Z5checkv:
	pushl     %ebp
	pushl     %edi
	pushl     %esi
	pushl     %ebx
	subl      $1324, %esp
	movl      args, %edx
	movl      args+4, %eax
	movl      $_ZTVN7acommon6StringE+8, 108(%esp)
	movl      $0, 112(%esp)
	movl      $0, 116(%esp)
	movl      $0, 120(%esp)
	subl      %edx, %eax
	movl      $_ZTVN7acommon6StringE+8, 124(%esp)
	movl      $0, 128(%esp)
	sarl      $4, %eax
	movl      $0, 132(%esp)
	movl      $0, 136(%esp)
	testl     %eax, %eax
	je        .L0805998B
.L0805867B:
	cmpl      $1, %eax
	ja        .L0805995D
.L08058684:
	movl      4(%edx), %ecx
	movl      8(%edx), %eax
	subl      $4, %esp
	subl      %ecx, %eax
	pushl     %eax
	pushl     %ecx
	leal      120(%esp), %eax
	pushl     %eax
	call      _ZN7acommon6String6assignEPKcj
.L0805869B:
	movl      128(%esp), %edx
	addl      $12, %esp
	movl      120(%esp), %eax
	subl      %edx, %eax
	pushl     %eax
	pushl     %edx
	leal      136(%esp), %eax
	pushl     %eax
	call      _ZN7acommon6String6assignEPKcj
.L080586BA:
	popl      %ecx
	popl      %ebx
	pushl     $.LC08063F8A
	leal      136(%esp), %eax
	pushl     %eax
	call      _ZN7acommon6String6appendEPKc
.L080586CE:
	popl      %esi
	leal      120(%esp), %eax
	pushl     %eax
	call      _ZNK7acommon6String5c_strEv
.L080586D9:
	popl      %edi
	popl      %ebp
	pushl     $.LC080641B6
	pushl     %eax
	call      fopen
.L080586E6:
	addl      $16, %esp
	testl     %eax, %eax
	movl      %eax, %esi
	je        .L08059995
.L080586F3:
	movl      $.LC08063E60, 276(%esp)
	movl      $-1, 280(%esp)
	subl      $8, %esp
	leal      284(%esp), %ebx
	pushl     %ebx
	pushl     options
	call      _ZNK7acommon6Config4haveERKNS_10ParmStringE
.L0805871F:
	addl      $16, %esp
	testb     %al, %al
	je        .L08059310
.L0805872A:
	leal      188(%esp), %eax
	movl      %eax, 24(%esp)
.L08058735:
	movl      $.LC08063F8F, 188(%esp)
	movl      $-1, 192(%esp)
	subl      $4, %esp
	pushl     28(%esp)
	pushl     options
	pushl     %ebx
	call      _ZNK7acommon6Config8retrieveERKNS_10ParmStringE
.L0805875E:
	movl      288(%esp), %eax
	addl      $12, %esp
	testl     %eax, %eax
	je        .L0805877E
.L0805876C:
	cmpb      $0, 4(%eax)
	jne       .L0805877E
.L08058772:
	subl      $12, %esp
	pushl     %ebx
	call      _ZNK7acommon12PosibErrBase10handle_errEv
.L0805877B:
	addl      $16, %esp
.L0805877E:
	movl      284(%esp), %edx
	movl      $_ZTVN7acommon6StringE+8, 140(%esp)
	subl      $4, %esp
	movl      292(%esp), %eax
	subl      %edx, %eax
	pushl     %eax
	pushl     %edx
	leal      152(%esp), %edi
	pushl     %edi
	call      _ZN7acommon6String11assign_onlyEPKcj
.L080587AB:
	movl      %ebx, (%esp)
	call      _ZN7acommon8PosibErrINS_6StringEED1Ev
.L080587B3:
	popl      %ebp
	popl      %eax
	pushl     $.LC08063D1D
	pushl     %edi
	call      _ZN7acommoneqERKNS_6StringEPKc
.L080587C0:
	addl      $16, %esp
	testb     %al, %al
	je        .L08059398
.L080587CB:
	subl      $12, %esp
	pushl     %ebx
	call      _ZN7Mapping9to_aspellEv
.L080587D4:
	addl      $16, %esp
.L080587D7:
	subl      $12, %esp
	pushl     options
	call      new_aspell_speller
.L080587E5:
	movl      %eax, (%esp)
	movl      %eax, %ebx
	call      aspell_error
.L080587EF:
	addl      $16, %esp
	testl     %eax, %eax
	jne       .L08059938
.L080587FA:
	subl      $12, %esp
	pushl     %esi
	call      fileno
.L08058803:
	addl      $12, %esp
	pushl     28(%esp)
	pushl     %eax
	pushl     $3
	call      __fxstat
.L08058812:
	movl      220(%esp), %edi
	popl      %eax
	leal      136(%esp), %eax
	pushl     %eax
	call      _ZNK7acommon6String5c_strEv
.L08058827:
	addl      $12, %esp
	pushl     %edi
	pushl     $577
	pushl     %eax
	call      open
.L08058836:
	addl      $16, %esp
	testl     %eax, %eax
	js        .L080598F0
.L08058841:
	subl      $8, %esp
	pushl     $.LC08063F8D
	pushl     %eax
	call      fdopen
.L0805884F:
	addl      $16, %esp
	testl     %eax, %eax
	movl      %eax, %edi
	je        .L080598F0
.L0805885C:
	call      _Z18setup_display_convv
.L08058861:
	subl      $12, %esp
	pushl     %ebx
	call      to_aspell_speller
.L0805886A:
	movl      %eax, %ebp
	movl      $72, (%esp)
	movl      %eax, 52(%esp)
	call      _Znwj
.L0805887C:
	movl      $64, (%esp)
	pushl     %edi
	movl      %eax, %ebx
	pushl     %esi
	pushl     %ebp
	pushl     %eax
	call      _ZN13CheckerStringC1EP13AspellSpellerP8_IO_FILES3_i
.L0805888E:
	movl      state, %esi
	addl      $32, %esp
	testl     %esi, %esi
	jne       .L080598E2
.L0805889F:
	subl      $12, %esp
	movl      %ebx, state
	pushl     $12
	call      _Znwj
.L080588AF:
	movl      word_choices, %ecx
	addl      $16, %esp
	movl      $0, (%eax)
	movl      $0, 4(%eax)
	movl      $0, 8(%eax)
	testl     %ecx, %ecx
	jne       .L0805986B
.L080588D4:
	subl      $12, %esp
	movl      %eax, word_choices
	pushl     $12
	call      _Znwj
.L080588E3:
	movl      menu_choices, %edx
	addl      $16, %esp
	movl      $0, (%eax)
	movl      $0, 4(%eax)
	movl      $0, 8(%eax)
	testl     %edx, %edx
	jne       .L0805986B
.L08058908:
	subl      $8, %esp
	movl      %eax, menu_choices
	pushl     $.LC08063FB8
	pushl     $.LC08063D1D
	call      dgettext
.L0805891F:
	movzbl    293(%esp), %edx
	movl      %eax, 208(%esp)
	movb      %dl, 204(%esp)
	popl      %eax
	popl      %edx
	movl      32(%esp), %edi
	pushl     %edi
	pushl     menu_choices
	call      _ZNSt6vectorI6ChoiceSaIS0_EE9push_backERKS0_
.L08058947:
	popl      %ecx
	popl      %ebx
	pushl     $.LC08063FBF
	pushl     $.LC08063D1D
	call      dgettext
.L08058958:
	movzbl    294(%esp), %edx
	movl      %eax, 208(%esp)
	movb      %dl, 204(%esp)
	popl      %esi
	popl      %ebp
	pushl     %edi
	pushl     menu_choices
	call      _ZNSt6vectorI6ChoiceSaIS0_EE9push_backERKS0_
.L0805897C:
	popl      %eax
	popl      %edx
	pushl     $.LC08063FCA
	pushl     $.LC08063D1D
	call      dgettext
.L0805898D:
	movzbl    295(%esp), %edx
	movl      %eax, 208(%esp)
	movb      %dl, 204(%esp)
	popl      %ecx
	popl      %ebx
	pushl     %edi
	pushl     menu_choices
	call      _ZNSt6vectorI6ChoiceSaIS0_EE9push_backERKS0_
.L080589B1:
	popl      %esi
	popl      %ebp
	pushl     $.LC08063FD2
	pushl     $.LC08063D1D
	call      dgettext
.L080589C2:
	movzbl    296(%esp), %edx
	movl      %eax, 208(%esp)
	movb      %dl, 204(%esp)
	popl      %eax
	popl      %edx
	pushl     %edi
	pushl     menu_choices
	call      _ZNSt6vectorI6ChoiceSaIS0_EE9push_backERKS0_
.L080589E6:
	popl      %ecx
	popl      %ebx
	pushl     $.LC08063FDE
	pushl     $.LC08063D1D
	call      dgettext
.L080589F7:
	movzbl    297(%esp), %edx
	movl      %eax, 208(%esp)
	movb      %dl, 204(%esp)
	popl      %esi
	popl      %ebp
	pushl     %edi
	pushl     menu_choices
	call      _ZNSt6vectorI6ChoiceSaIS0_EE9push_backERKS0_
.L08058A1B:
	popl      %eax
	popl      %edx
	pushl     $.LC08063FE2
	pushl     $.LC08063D1D
	call      dgettext
.L08058A2C:
	movzbl    298(%esp), %edx
	movl      %eax, 208(%esp)
	movb      %dl, 204(%esp)
	popl      %ecx
	popl      %ebx
	pushl     %edi
	pushl     menu_choices
	call      _ZNSt6vectorI6ChoiceSaIS0_EE9push_backERKS0_
.L08058A50:
	popl      %esi
	popl      %ebp
	pushl     $.LC08063FEC
	pushl     $.LC08063D1D
	call      dgettext
.L08058A61:
	movzbl    300(%esp), %edx
	movl      %eax, 208(%esp)
	movb      %dl, 204(%esp)
	popl      %eax
	popl      %edx
	pushl     %edi
	pushl     menu_choices
	call      _ZNSt6vectorI6ChoiceSaIS0_EE9push_backERKS0_
.L08058A85:
	popl      %ecx
	popl      %ebx
	pushl     $.LC08063FF2
	pushl     $.LC08063D1D
	call      dgettext
.L08058A96:
	movzbl    299(%esp), %edx
	movl      %eax, 208(%esp)
	movb      %dl, 204(%esp)
	popl      %esi
	popl      %ebp
	pushl     %edi
	pushl     menu_choices
	call      _ZNSt6vectorI6ChoiceSaIS0_EE9push_backERKS0_
.L08058ABA:
	movl      $_ZTVN7acommon6StringE+8, 172(%esp)
	movl      $0, 176(%esp)
	movl      $0, 180(%esp)
	movl      $0, 184(%esp)
	movl      $_ZTVN7acommon6StringE+8, 188(%esp)
	movl      $0, 192(%esp)
	movl      $0, 196(%esp)
	movl      $0, 200(%esp)
	movl      $0, 112(%esp)
	movl      $0, 116(%esp)
	movl      $0, 120(%esp)
	call      _ZN7acommon14new_string_mapEv
.L08058B2F:
	movl      %eax, 36(%esp)
	call      _Z11begin_checkv
.L08058B38:
	addl      $16, %esp
	movb      $0, 47(%esp)
	jmp       .L08058B8B
.L08058B45:
	.p2align 4,,10
	.p2align 3
.L08058B48:
	movl      20(%esp), %eax
	movl      12(%eax), %eax
	movl      %eax, %edx
	movl      (%eax), %eax
	cmpl      (%edx), %eax
	je        .L08058C50
.L08058B5B:
	movl      8(%eax), %eax
	testl     %eax, %eax
	je        .L08058C50
.L08058B66:
	movl      %eax, 8(%esp)
	movl      $-1, 12(%esp)
	subl      $4, %esp
	pushl     16(%esp)
	pushl     16(%esp)
	pushl     state
	call      _ZN13CheckerString7replaceEN7acommon10ParmStringE
.L08058B88:
	addl      $16, %esp
.L08058B8B:
	subl      $12, %esp
	pushl     state
	call      _ZN13CheckerString16next_misspellingEv
.L08058B99:
	addl      $16, %esp
	testb     %al, %al
	je        .L08059090
.L08058BA4:
	movl      state, %eax
	movl      160(%esp), %esi
	movl      20(%eax), %ebx
	movl      16(%eax), %edi
	movl      168(%esp), %eax
	movl      %esi, 164(%esp)
	subl      %esi, %eax
	cmpl      %eax, %ebx
	jge       .L08058E60
.L08058BCE:
	subl      $4, %esp
	pushl     %ebx
	pushl     %edi
	pushl     %esi
	call      memcpy
.L08058BD9:
	addl      180(%esp), %ebx
	movl      %ebx, 180(%esp)
	addl      $16, %esp
	movl      160(%esp), %ebp
	testl     %ebp, %ebp
	je        .L080592A0
.L08058BF9:
	movb      $0, (%ebx)
	movl      160(%esp), %eax
	subl      $8, %esp
	movl      %eax, 40(%esp)
	movl      28(%esp), %edx
	pushl     32(%esp)
	pushl     %eax
	leal      16(%edx), %ecx
	leal      88(%esp), %eax
	addl      $8, %edx
	call      _ZN7acommon9HashTableINS_9StringMap5ParmsEE6find_iERKPKcRb.isra.89
.L08058C22:
	movl      92(%esp), %eax
	addl      $16, %esp
	cmpb      $0, 188(%esp)
	je        .L08058B48
.L08058C37:
	movl      20(%esp), %edi
	movl      (%eax), %eax
	movl      12(%edi), %edx
	cmpl      (%edx), %eax
	jne       .L08058B5B
.L08058C48:
	.p2align 4
.L08058C50:
	call      _Z23display_misspelled_wordv
.L08058C55:
	subl      $4, %esp
	pushl     $-1
	pushl     40(%esp)
	pushl     48(%esp)
	call      aspell_speller_suggest
.L08058C67:
	movl      %eax, (%esp)
	call      aspell_word_list_elements
.L08058C6F:
	movl      116(%esp), %esi
	movl      112(%esp), %edi
	movl      %eax, %ebx
	addl      $16, %esp
	movl      %esi, %eax
	subl      %edi, %eax
	sarl      $4, %eax
	testl     %eax, %eax
	je        .L08058EA8
.L08058C8B:
	cmpl      %esi, %edi
	je        .L08058EA0
.L08058C93:
	movl      %edi, %ebp
	jmp       .L08058CC1
.L08058C97:
	.p2align 4
.L08058CA0:
	movl      4(%ebp), %eax
	movl      $_ZTVN7acommon6StringE+8, (%ebp)
	testl     %eax, %eax
	je        .L08058CBA
.L08058CAE:
	subl      $12, %esp
	pushl     %eax
	call      free
.L08058CB7:
	addl      $16, %esp
.L08058CBA:
	addl      $16, %ebp
	cmpl      %ebp, %esi
	je        .L08058CDE
.L08058CC1:
	movl      (%ebp), %eax
	movl      20(%eax), %eax
	cmpl      $_ZN7acommon6StringD1Ev, %eax
	je        .L08058CA0
.L08058CCE:
	subl      $12, %esp
	pushl     %ebp
	addl      $16, %ebp
	call      *%eax
.L08058CD7:
	addl      $16, %esp
	cmpl      %ebp, %esi
	jne       .L08058CC1
.L08058CDE:
	movl      %edi, %eax
	subl      96(%esp), %eax
	movl      %edi, 100(%esp)
	sarl      $4, %eax
	cmpl      $10, %eax
	jne       .L08058EA8
.L08058CF4:
	.p2align 4,,10
	.p2align 3
.L08058CF8:
	subl      $12, %esp
	pushl     %ebx
	call      delete_aspell_string_enumeration
.L08058D01:
	movl      112(%esp), %eax
	movl      116(%esp), %ebx
	addl      $16, %esp
	subl      %eax, %ebx
	sarl      $4, %ebx
	movl      %ebx, %edx
	shrl      $1, %edx
	testb     $1, %bl
	je        .L08059240
.L08058D1E:
	movl      word_choices, %esi
	addl      $1, %edx
	movl      (%esi), %edi
	movl      4(%esi), %ecx
	subl      %edi, %ecx
	sarl      $3, %ecx
	testl     %ecx, %ecx
	je        .L08058D40
.L08058D35:
	movl      %edi, 4(%esi)
.L08058D38:
	testl     %edx, %edx
	je        .L08059032
.L08058D40:
	movl      %edx, %ebp
	xorl      %esi, %esi
	movl      %edx, %edi
	movl      %edx, 28(%esp)
	sall      $4, %ebp
	movl      %eax, %ecx
	movl      %esi, 16(%esp)
	movl      %ebx, %edx
	jmp       .L08058E3A
.L08058D5A:
	.p2align 4,,10
	.p2align 3
.L08058D60:
	movl      8(%ecx), %eax
	movb      $0, (%eax)
	movl      4(%ecx), %ecx
.L08058D69:
	movzbl    16(%esp), %eax
	movl      %ecx, 192(%esp)
	movl      word_choices, %ecx
	addl      $49, %eax
	movb      %al, 188(%esp)
	movl      4(%ecx), %eax
	cmpl      8(%ecx), %eax
	je        .L08059260
.L08058D91:
	testl     %eax, %eax
	je        .L08058DAB
.L08058D95:
	movl      188(%esp), %ebx
	movl      192(%esp), %esi
	movl      %ebx, (%eax)
	movl      %esi, 4(%eax)
	movl      4(%ecx), %eax
.L08058DAB:
	addl      $8, %eax
	movl      %eax, 4(%ecx)
.L08058DB1:
	cmpl      %edx, %edi
	je        .L08058E1B
.L08058DB5:
	movl      96(%esp), %eax
	addl      %ebp, %eax
	movl      4(%eax), %ebx
	testl     %ebx, %ebx
	je        .L08059020
.L08058DC6:
	movl      8(%eax), %ecx
	movb      $0, (%ecx)
	movl      4(%eax), %ecx
.L08058DCF:
	cmpl      $9, %edi
	je        .L08059855
.L08058DD8:
	leal      49(%edi), %eax
.L08058DDB:
	movl      %ecx, 192(%esp)
	movl      word_choices, %ecx
	movb      %al, 188(%esp)
	movl      4(%ecx), %eax
	cmpl      8(%ecx), %eax
	je        .L08059280
.L08058DFB:
	testl     %eax, %eax
	je        .L08058E15
.L08058DFF:
	movl      188(%esp), %ebx
	movl      192(%esp), %esi
	movl      %ebx, (%eax)
	movl      %esi, 4(%eax)
	movl      4(%ecx), %eax
.L08058E15:
	addl      $8, %eax
	movl      %eax, 4(%ecx)
.L08058E1B:
	addl      $1, 16(%esp)
	movl      28(%esp), %esi
	addl      $1, %edi
	movl      16(%esp), %eax
	addl      $16, %ebp
	cmpl      %esi, %eax
	je        .L08059030
.L08058E36:
	movl      96(%esp), %ecx
.L08058E3A:
	movl      16(%esp), %eax
	sall      $4, %eax
	addl      %eax, %ecx
	movl      4(%ecx), %esi
	testl     %esi, %esi
	jne       .L08058D60
.L08058E4E:
	movl      $.LC08063D11, %ecx
	jmp       .L08058D69
.L08058E58:
	.p2align 4
.L08058E60:
	subl      $8, %esp
	pushl     %ebx
	leal      168(%esp), %eax
	pushl     %eax
	call      _ZN7acommon6String9reserve_iEj
.L08058E71:
	movl      176(%esp), %esi
	addl      $16, %esp
	movl      164(%esp), %eax
	subl      %esi, %eax
	je        .L08058BCE
.L08058E8A:
	subl      $4, %esp
	pushl     %eax
	leal      (%esi,%ebx), %eax
	pushl     %esi
	pushl     %eax
	call      memmove
.L08058E98:
	addl      $16, %esp
	jmp       .L08058BCE
.L08058EA0:
	movl      %edi, 100(%esp)
	.p2align 4,,10
	.p2align 3
.L08058EA8:
	subl      $12, %esp
	pushl     %ebx
	call      aspell_string_enumeration_next
.L08058EB1:
	addl      $16, %esp
	testl     %eax, %eax
	movl      %eax, %esi
	je        .L08058CF8
.L08058EBE:
	movl      $_ZTVN7acommon6StringE+8, 188(%esp)
	cmpb      $0, (%eax)
	jne       .L08058FA0
.L08058ED2:
	movl      $0, 192(%esp)
	movl      $0, 196(%esp)
	movl      $0, 200(%esp)
.L08058EF3:
	movl      100(%esp), %esi
	cmpl      104(%esp), %esi
	je        .L08058F80
.L08058F01:
	testl     %esi, %esi
	je        .L08058F3A
.L08058F05:
	movl      $_ZTVN7acommon6StringE+8, (%esi)
	movl      192(%esp), %ebp
	movl      196(%esp), %edi
	subl      %ebp, %edi
	je        .L08058F25
.L08058F1D:
	testl     %ebp, %ebp
	jne       .L08058FE8
.L08058F25:
	movl      $0, 4(%esi)
	movl      $0, 8(%esi)
	movl      $0, 12(%esi)
.L08058F3A:
	addl      $16, %esi
	movl      %esi, 100(%esp)
.L08058F41:
	movl      192(%esp), %eax
	movl      $_ZTVN7acommon6StringE+8, 188(%esp)
	testl     %eax, %eax
	je        .L08058F63
.L08058F57:
	subl      $12, %esp
	pushl     %eax
	call      free
.L08058F60:
	addl      $16, %esp
.L08058F63:
	movl      100(%esp), %eax
	subl      96(%esp), %eax
	sarl      $4, %eax
	cmpl      $10, %eax
	jne       .L08058EA8
.L08058F77:
	jmp       .L08058CF8
.L08058F7C:
	.p2align 4,,10
	.p2align 3
.L08058F80:
	subl      $4, %esp
	pushl     28(%esp)
	pushl     %esi
	leal      108(%esp), %eax
	pushl     %eax
	call      _ZNSt6vectorIN7acommon6StringESaIS1_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS1_S3_EERKS1_
.L08058F92:
	addl      $16, %esp
	jmp       .L08058F41
.L08058F97:
	.p2align 4
.L08058FA0:
	subl      $12, %esp
	pushl     %esi
	call      strlen
.L08058FA9:
	movl      %eax, %edi
	leal      1(%eax), %eax
	movl      %eax, (%esp)
	call      malloc
.L08058FB6:
	movl      %eax, 208(%esp)
	addl      $12, %esp
	movl      %eax, %ebp
	pushl     %edi
	pushl     %esi
	addl      %ebp, %edi
	pushl     %eax
	call      memcpy
.L08058FCC:
	movl      %edi, 212(%esp)
	addl      $1, %edi
	movl      %edi, 216(%esp)
	addl      $16, %esp
	jmp       .L08058EF3
.L08058FE5:
	.p2align 4,,10
	.p2align 3
.L08058FE8:
	leal      1(%edi), %eax
	subl      $12, %esp
	pushl     %eax
	call      malloc
.L08058FF4:
	addl      $12, %esp
	movl      %eax, 4(%esi)
	pushl     %edi
	pushl     %ebp
	pushl     %eax
	call      memcpy
.L08059002:
	addl      4(%esi), %edi
	addl      $16, %esp
	movl      %edi, 8(%esi)
	addl      $1, %edi
	movl      %edi, 12(%esi)
	jmp       .L08058F3A
.L08059016:
	.p2align 4
.L08059020:
	movl      $.LC08063D11, %ecx
	jmp       .L08058DCF
.L0805902A:
	.p2align 4,,10
	.p2align 3
.L08059030:
	movl      %edx, %ebx
.L08059032:
	movsbl    %bl, %edi
	leal      84(%esp), %esi
	addl      $48, %edi
	call      _Z12display_menuv
.L08059041:
	subl      $12, %esp
	pushl     $.LC08063FF7
	call      _Z6promptPKc
.L0805904E:
	addl      $16, %esp
.L08059051:
	subl      $12, %esp
	pushl     %esi
	call      _Z10get_choiceRi
.L0805905A:
	movl      100(%esp), %eax
	addl      $16, %esp
	cmpl      $48, %eax
	je        .L080592E8
.L0805906A:
	movzbl    %al, %edx
	cmpl      $8, 288(%esp,%edx,4)
	ja        .L080596E0
.L0805907B:
	movl      288(%esp,%edx,4), %edx
	jmp       *.LC08064F14(,%edx,4)
.L08059089:
	.p2align 4
.L08059090:
	subl      $12, %esp
	pushl     48(%esp)
	call      aspell_speller_save_all_word_lists
.L0805909C:
	movl      state, %ebx
	addl      $16, %esp
	testl     %ebx, %ebx
	je        .L080590BD
.L080590A9:
	subl      $12, %esp
	pushl     %ebx
	call      _ZN13CheckerStringD1Ev
.L080590B2:
	movl      %ebx, (%esp)
	call      _ZdlPv
.L080590BA:
	addl      $16, %esp
.L080590BD:
	subl      $12, %esp
	movl      $0, state
	pushl     48(%esp)
	call      delete_aspell_speller
.L080590D3:
	addl      $16, %esp
	cmpb      $0, 47(%esp)
	jne       .L080593C8
.L080590E1:
	subl      $12, %esp
	leal      136(%esp), %eax
	pushl     %eax
	call      _ZNK7acommon6String5c_strEv
.L080590F1:
	movl      %eax, %ecx
	movl      148(%esp), %eax
	subl      144(%esp), %eax
	popl      %edx
	popl      %esi
	pushl     %eax
	pushl     %ecx
	call      _ZN7acommon11remove_fileENS_10ParmStringE
.L0805910A:
	addl      $16, %esp
.L0805910D:
	movl      20(%esp), %eax
	testl     %eax, %eax
	je        .L0805917B
.L08059115:
	movl      20(%esp), %edi
	movl      (%edi), %eax
	movl      8(%eax), %eax
	cmpl      $_ZN7acommon9StringMapD0Ev, %eax
	jne       .L080597B3
.L08059129:
	movl      %edi, %eax
	subl      $12, %esp
	movl      $_ZTVN7acommon9StringMapE+8, (%edi)
	addl      $36, %eax
	pushl     %eax
	call      _ZN7acommon8ObjStackD1Ev
.L0805913D:
	movl      %edi, %eax
	addl      $4, %eax
	movl      %eax, (%esp)
	call      _ZN7acommon9HashTableINS_9StringMap5ParmsEE3delEv
.L0805914A:
	movl      24(%edi), %eax
	addl      $16, %esp
	testl     %eax, %eax
	je        .L0805916C
.L08059154:
	.p2align 4,,10
	.p2align 3
.L08059158:
	movl      (%eax), %ebx
	subl      $12, %esp
	pushl     %eax
	call      free
.L08059163:
	addl      $16, %esp
	testl     %ebx, %ebx
	movl      %ebx, %eax
	jne       .L08059158
.L0805916C:
	subl      $12, %esp
	pushl     32(%esp)
	call      _ZdlPv
.L08059178:
	addl      $16, %esp
.L0805917B:
	subl      $12, %esp
	leal      108(%esp), %eax
	pushl     %eax
	call      _ZNSt6vectorIN7acommon6StringESaIS1_EED1Ev
.L08059188:
	movl      192(%esp), %eax
	movl      $_ZTVN7acommon6StringE+8, 188(%esp)
	addl      $16, %esp
	testl     %eax, %eax
	je        .L080591AD
.L080591A1:
	subl      $12, %esp
	pushl     %eax
	call      free
.L080591AA:
	addl      $16, %esp
.L080591AD:
	movl      160(%esp), %eax
	movl      $_ZTVN7acommon6StringE+8, 156(%esp)
	testl     %eax, %eax
	je        .L080591CF
.L080591C3:
	subl      $12, %esp
	pushl     %eax
	call      free
.L080591CC:
	addl      $16, %esp
.L080591CF:
	movl      144(%esp), %eax
	movl      $_ZTVN7acommon6StringE+8, 140(%esp)
	testl     %eax, %eax
	je        .L080591F1
.L080591E5:
	subl      $12, %esp
	pushl     %eax
	call      free
.L080591EE:
	addl      $16, %esp
.L080591F1:
	movl      128(%esp), %eax
	movl      $_ZTVN7acommon6StringE+8, 124(%esp)
	testl     %eax, %eax
	je        .L08059210
.L08059204:
	subl      $12, %esp
	pushl     %eax
	call      free
.L0805920D:
	addl      $16, %esp
.L08059210:
	movl      112(%esp), %eax
	movl      $_ZTVN7acommon6StringE+8, 108(%esp)
	testl     %eax, %eax
	je        .L0805922C
.L08059220:
	subl      $12, %esp
	pushl     %eax
	call      free
.L08059229:
	addl      $16, %esp
.L0805922C:
	addl      $1324, %esp
	popl      %ebx
	popl      %esi
	popl      %edi
	popl      %ebp
	ret       
.L08059237:
	.p2align 4
.L08059240:
	movl      word_choices, %esi
	movl      (%esi), %edi
	movl      4(%esi), %ecx
	subl      %edi, %ecx
	sarl      $3, %ecx
	testl     %ecx, %ecx
	jne       .L08058D35
.L08059258:
	jmp       .L08058D38
.L0805925D:
	.p2align 4,,10
	.p2align 3
.L08059260:
	movl      %edx, 40(%esp)
	subl      $4, %esp
	pushl     28(%esp)
	pushl     %eax
	pushl     %ecx
	call      _ZNSt6vectorI6ChoiceSaIS0_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS0_S2_EERKS0_
.L08059272:
	addl      $16, %esp
	movl      40(%esp), %edx
	jmp       .L08058DB1
.L0805927E:
	.p2align 4,,10
	.p2align 3
.L08059280:
	movl      %edx, 40(%esp)
	subl      $4, %esp
	pushl     28(%esp)
	pushl     %eax
	pushl     %ecx
	call      _ZNSt6vectorI6ChoiceSaIS0_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS0_S2_EERKS0_
.L08059292:
	addl      $16, %esp
	movl      40(%esp), %edx
	jmp       .L08058E1B
.L0805929E:
	.p2align 4,,10
	.p2align 3
.L080592A0:
	subl      $8, %esp
	pushl     $0
	leal      168(%esp), %eax
	pushl     %eax
	call      _ZN7acommon6String9reserve_iEj
.L080592B2:
	addl      $16, %esp
	movl      160(%esp), %edi
	testl     %edi, %edi
	jne       .L0805985F
.L080592C4:
	subl      $8, %esp
	pushl     $0
	leal      168(%esp), %eax
	pushl     %eax
	call      _ZN7acommon6String9reserve_iEj
.L080592D6:
	movl      180(%esp), %ebx
	addl      $16, %esp
	jmp       .L08058BF9
.L080592E5:
	.p2align 4,,10
	.p2align 3
.L080592E8:
	cmpl      $8, 520(%esp)
	movl      $58, 84(%esp)
	ja        .L0805970F
.L080592FE:
	movl      520(%esp), %eax
	jmp       *.LC08064F38(,%eax,4)
.L0805930C:
	.p2align 4,,10
	.p2align 3
.L08059310:
	subl      $12, %esp
	leal      120(%esp), %eax
	pushl     %eax
	call      _ZNK7acommon6String5c_strEv
.L0805931D:
	movl      %eax, %edx
	movl      132(%esp), %eax
	subl      128(%esp), %eax
	movl      $0, (%esp)
	pushl     %eax
	pushl     %edx
	pushl     options
	pushl     %ebx
	call      _ZN7acommon23set_mode_from_extensionEPNS_6ConfigENS_10ParmStringEP8_IO_FILE
.L08059342:
	movl      304(%esp), %eax
	movl      %eax, 216(%esp)
	addl      $28, %esp
	testl     %eax, %eax
	je        .L0805935B
.L08059357:
	addl      $1, 8(%eax)
.L0805935B:
	subl      $12, %esp
	pushl     %ebx
	call      _ZN7acommon12PosibErrBase7destroyEv
.L08059364:
	movl      204(%esp), %eax
	addl      $16, %esp
	testl     %eax, %eax
	jne       .L080599E7
.L08059376:
	subl      $12, %esp
	leal      200(%esp), %eax
	movl      %eax, 36(%esp)
	pushl     %eax
	call      _ZN7acommon12PosibErrBase7destroyEv
.L0805938A:
	addl      $16, %esp
	jmp       .L08058735
.L08059392:
	.p2align 4,,10
	.p2align 3
.L08059398:
	subl      $8, %esp
	pushl     $.LC08063F9A
	pushl     %edi
	call      _ZN7acommoneqERKNS_6StringEPKc
.L080593A6:
	addl      $16, %esp
	testb     %al, %al
	je        .L080599C0
.L080593B1:
	subl      $12, %esp
	pushl     %ebx
	call      _ZN7Mapping9to_ispellEv
.L080593BA:
	addl      $16, %esp
	jmp       .L080587D7
.L080593C2:
	.p2align 4,,10
	.p2align 3
.L080593C8:
	movl      $.LC0806419F, 88(%esp)
	movl      $-1, 92(%esp)
	subl      $4, %esp
	leal      92(%esp), %eax
	pushl     %eax
	pushl     options
	movl      36(%esp), %edi
	pushl     %edi
	call      _ZNK7acommon6Config13retrieve_boolERKNS_10ParmStringE
.L080593F0:
	pushl     %edi
	call      _ZNK7acommon12PosibErrBase16posib_handle_errEv
.L080593F6:
	movzbl    208(%esp), %ebx
	movl      %edi, (%esp)
	call      _ZN7acommon12PosibErrBase7destroyEv
.L08059406:
	addl      $16, %esp
	testb     %bl, %bl
	jne       .L08059716
.L08059411:
	subl      $12, %esp
	leal      120(%esp), %eax
	pushl     %eax
	call      _ZNK7acommon6String5c_strEv
.L0805941E:
	movl      %eax, %esi
	movl      132(%esp), %eax
	subl      128(%esp), %eax
	popl      %ebp
	movl      %eax, %edi
	leal      136(%esp), %eax
	pushl     %eax
	call      _ZNK7acommon6String5c_strEv
.L0805943E:
	movl      %eax, %ecx
	movl      148(%esp), %eax
	subl      144(%esp), %eax
	pushl     %edi
	pushl     %esi
	pushl     %eax
	pushl     %ecx
	call      _ZN7acommon11rename_fileENS_10ParmStringES0_
.L08059457:
	addl      $32, %esp
	jmp       .L0805910D
.L0805945F:
	.p2align 4,,10
	.p2align 3
.L08059460:
	subl      $8, %esp
	pushl     $.LC0806468C
	pushl     $.LC08063D1D
	call      dgettext
.L08059472:
	movl      %eax, (%esp)
	call      _Z6promptPKc
.L0805947A:
	movl      %esi, (%esp)
	call      _Z10get_choiceRi
.L08059482:
	popl      %ebp
	popl      %eax
	pushl     $.LC08063FFA
	pushl     $.LC08063D1D
	call      dgettext
.L08059493:
	popl      %edx
	popl      %ecx
	pushl     92(%esp)
	pushl     %eax
	call      strchr
.L0805949F:
	addl      $16, %esp
	testl     %eax, %eax
	je        .L08059041
.L080594AA:
	movl      state, %ebx
	testl     %ebx, %ebx
	je        .L080594C8
.L080594B4:
	subl      $12, %esp
	pushl     %ebx
	call      _ZN13CheckerStringD1Ev
.L080594BD:
	movl      %ebx, (%esp)
	call      _ZdlPv
.L080594C5:
	addl      $16, %esp
.L080594C8:
	subl      $12, %esp
	movl      $0, state
	pushl     48(%esp)
	call      delete_aspell_speller
.L080594DE:
	popl      %ebx
	leal      136(%esp), %eax
	pushl     %eax
	call      _ZNK7acommon6String5c_strEv
.L080594EC:
	movl      %eax, %ecx
	movl      148(%esp), %eax
	subl      144(%esp), %eax
	popl      %esi
	popl      %edi
	pushl     %eax
	pushl     %ecx
	call      _ZN7acommon11remove_fileENS_10ParmStringE
.L08059505:
	addl      $16, %esp
	jmp       .L08059115
.L0805950D:
	.p2align 4,,10
	.p2align 3
.L08059510:
	movl      36(%esp), %edx
	movl      20(%edx), %eax
	movl      48(%edx), %ebx
	leal      16(%edx), %esi
	movl      %eax, 24(%edx)
	movl      56(%ebx), %eax
	cmpl      %eax, 60(%ebx)
	je        .L080597C4
.L0805952C:
	pushl     %esi
	pushl     $-1
	pushl     40(%esp)
	pushl     %ebx
	call      _ZN7acommon7Convert15generic_convertEPKciRNS_6StringE
.L08059539:
	addl      $16, %esp
.L0805953C:
	movl      36(%esp), %edi
	subl      $12, %esp
	movl      (%edi), %eax
	movl      8(%eax), %ebx
	pushl     %esi
	xorl      %esi, %esi
	call      _ZN7acommon6String4mstrEv
.L08059550:
	popl      %edx
	popl      %ecx
	pushl     %eax
	pushl     %edi
	call      *%ebx
.L08059556:
	movl      (%edi), %edx
	movl      %eax, 64(%esp)
	movl      28(%edx), %ebx
	movl      %eax, (%esp)
	call      strlen
.L08059567:
	addl      $16, %esp
	movl      %eax, 52(%esp)
	pushl     52(%esp)
	pushl     52(%esp)
	pushl     %edi
	movl      36(%esp), %edi
	pushl     %edi
	call      *%ebx
.L0805957E:
	addl      $12, %esp
	movl      188(%esp), %ebx
	testl     %ebx, %ebx
	je        .L0805959A
.L0805958C:
	subl      $12, %esp
	pushl     %edi
	call      _ZN7acommon12PosibErrBase7releaseEv
.L08059595:
	addl      $16, %esp
	movl      %eax, %esi
.L0805959A:
	movl      36(%esp), %eax
	movl      4(%eax), %ebx
	testl     %ebx, %ebx
	je        .L080595B9
.L080595A5:
	subl      $12, %esp
	pushl     %ebx
	call      _ZN7acommon5ErrorD1Ev
.L080595AE:
	movl      %ebx, (%esp)
	call      _ZdlPv
.L080595B6:
	addl      $16, %esp
.L080595B9:
	movl      36(%esp), %eax
	subl      $12, %esp
	movl      %esi, 4(%eax)
	pushl     36(%esp)
	call      _ZN7acommon12PosibErrBase7destroyEv
.L080595CC:
	addl      $16, %esp
	jmp       .L08058B8B
.L080595D4:
	.p2align 4,,10
	.p2align 3
.L080595D8:
	subl      $4, %esp
	pushl     $-1
	pushl     40(%esp)
	pushl     48(%esp)
	call      aspell_speller_add_to_personal
.L080595EA:
	addl      $16, %esp
	jmp       .L08058B8B
.L080595F2:
	.p2align 4,,10
	.p2align 3
.L080595F8:
	subl      $8, %esp
	pushl     $.LC08063FFD
	pushl     $.LC08063D1D
	call      dgettext
.L0805960A:
	movl      %eax, (%esp)
	call      _Z6promptPKc
.L08059612:
	popl      %ebp
	leal      184(%esp), %ebp
	pushl     %ebp
	call      _Z8get_lineRN7acommon6StringE
.L08059620:
	movl      192(%esp), %eax
	addl      $16, %esp
	cmpl      %eax, 180(%esp)
	je        .L08059041
.L08059637:
	movsbl    (%eax), %eax
	cmpb      $48, %al
	jle       .L08059668
.L0805963E:
	movsbl    %bl, %edx
	addl      $48, %edx
	cmpl      %eax, %edx
	jl        .L08059668
.L08059648:
	subl      $49, %eax
	subl      $4, %esp
	sall      $4, %eax
	addl      100(%esp), %eax
	movl      4(%eax), %edx
	movl      8(%eax), %eax
	subl      %edx, %eax
	pushl     %eax
	pushl     %edx
	pushl     %ebp
	call      _ZN7acommon6String6assignEPKcj
.L08059665:
	addl      $16, %esp
.L08059668:
	subl      $12, %esp
	pushl     %ebp
	call      _ZNK7acommon6String5c_strEv
.L08059671:
	movl      %eax, 80(%esp)
	movl      196(%esp), %eax
	subl      192(%esp), %eax
	movl      %eax, 84(%esp)
	addl      $12, %esp
	pushl     72(%esp)
	pushl     72(%esp)
	pushl     state
	call      _ZN13CheckerString7replaceEN7acommon10ParmStringE
.L0805969D:
	movzbl    100(%esp), %eax
	addl      $16, %esp
	cmpl      $4, 288(%esp,%eax,4)
	je        .L08059870
.L080596B3:
	movb      $1, 47(%esp)
	jmp       .L08058B8B
.L080596BD:
	.p2align 4,,10
	.p2align 3
.L080596C0:
	subl      $4, %esp
	pushl     $-1
	pushl     40(%esp)
	pushl     48(%esp)
	call      aspell_speller_add_to_session
.L080596D2:
	addl      $16, %esp
	jmp       .L08058B8B
.L080596DA:
	.p2align 4,,10
	.p2align 3
.L080596E0:
	cmpl      $48, %eax
	jle       .L080596ED
.L080596E5:
	cmpl      %eax, %edi
	jge       .L08059811
.L080596ED:
	subl      $8, %esp
	pushl     $.LC080646B4
	pushl     $.LC08063D1D
	call      dgettext
.L080596FF:
	movl      %eax, (%esp)
	call      _Z5errorPKc
.L08059707:
	addl      $16, %esp
	jmp       .L08059051
.L0805970F:
	movl      $58, %eax
	jmp       .L080596E5
.L08059716:
	movl      112(%esp), %edx
	movl      $_ZTVN7acommon6StringE+8, 188(%esp)
	subl      $4, %esp
	movl      120(%esp), %eax
	subl      %edx, %eax
	pushl     %eax
	pushl     %edx
	movl      36(%esp), %edi
	pushl     %edi
	call      _ZN7acommon6String11assign_onlyEPKcj
.L0805973A:
	popl      %eax
	popl      %edx
	pushl     $.LC08064004
	pushl     %edi
	call      _ZN7acommon6String6appendEPKc
.L08059747:
	movl      %edi, (%esp)
	call      _ZNK7acommon6String5c_strEv
.L0805974F:
	movl      %eax, %esi
	movl      212(%esp), %eax
	subl      208(%esp), %eax
	popl      %ecx
	movl      %eax, %edi
	leal      120(%esp), %eax
	pushl     %eax
	call      _ZNK7acommon6String5c_strEv
.L0805976C:
	movl      %eax, %ecx
	movl      132(%esp), %eax
	subl      128(%esp), %eax
	pushl     %edi
	pushl     %esi
	pushl     %eax
	pushl     %ecx
	call      _ZN7acommon11rename_fileENS_10ParmStringES0_
.L08059785:
	movl      224(%esp), %eax
	movl      $_ZTVN7acommon6StringE+8, 220(%esp)
	addl      $32, %esp
	testl     %eax, %eax
	je        .L08059411
.L080597A2:
	subl      $12, %esp
	pushl     %eax
	call      free
.L080597AB:
	addl      $16, %esp
	jmp       .L08059411
.L080597B3:
	subl      $12, %esp
	pushl     32(%esp)
	call      *%eax
.L080597BC:
	addl      $16, %esp
	jmp       .L0805917B
.L080597C4:
	movl      28(%ebx), %eax
	testl     %eax, %eax
	je        .L080597E0
.L080597CB:
	movl      (%eax), %edx
	pushl     %esi
	pushl     $-1
	pushl     40(%esp)
	pushl     %eax
	call      *4(%edx)
.L080597D8:
	addl      $16, %esp
	jmp       .L0805953C
.L080597E0:
	movl      32(%ebx), %eax
	leal      32(%ebx), %ecx
	movl      %eax, 36(%ebx)
	movl      8(%ebx), %eax
	movl      (%eax), %edx
	pushl     %ecx
	pushl     $-1
	pushl     40(%esp)
	pushl     %eax
	call      *12(%edx)
.L080597F9:
	movl      20(%ebx), %eax
	movl      (%eax), %edx
	pushl     %esi
	pushl     36(%ebx)
	pushl     32(%ebx)
	pushl     %eax
	call      *12(%edx)
.L08059809:
	addl      $32, %esp
	jmp       .L0805953C
.L08059811:
	leal      -49(%eax), %ebx
	subl      $12, %esp
	sall      $4, %ebx
	addl      108(%esp), %ebx
	pushl     %ebx
	call      _ZNK7acommon6String5c_strEv
.L08059824:
	movl      %eax, 72(%esp)
	movl      8(%ebx), %eax
	subl      4(%ebx), %eax
	movl      %eax, 76(%esp)
	addl      $12, %esp
	pushl     64(%esp)
	pushl     64(%esp)
	pushl     state
	call      _ZN13CheckerString7replaceEN7acommon10ParmStringE
.L08059848:
	addl      $16, %esp
	movb      $1, 47(%esp)
	jmp       .L08058B8B
.L08059855:
	movl      $48, %eax
	jmp       .L08058DDB
.L0805985F:
	movl      164(%esp), %ebx
	jmp       .L08058BF9
.L0805986B:
	call      _ZN7acommon8StackPtrINS_6VectorI6ChoiceEEE5resetEPS3_.part.69
.L08059870:
	subl      $12, %esp
	pushl     %ebp
	call      _ZNK7acommon6String5c_strEv
.L08059879:
	popl      %edx
	popl      %ecx
	pushl     %eax
	pushl     44(%esp)
	call      strcmp
.L08059885:
	addl      $16, %esp
	testl     %eax, %eax
	je        .L080596B3
.L08059890:
	subl      $12, %esp
	pushl     %ebp
	call      _ZNK7acommon6String5c_strEv
.L08059899:
	movl      %eax, 204(%esp)
	movl      196(%esp), %eax
	subl      192(%esp), %eax
	movl      $-1, 108(%esp)
	movl      %eax, 208(%esp)
	movl      48(%esp), %eax
	movl      %eax, 104(%esp)
	addl      $12, %esp
	pushl     28(%esp)
	leal      96(%esp), %eax
	pushl     %eax
	pushl     32(%esp)
	call      _ZN7acommon9StringMap7replaceERKNS_10ParmStringES3_
.L080598DA:
	addl      $16, %esp
	jmp       .L080596B3
.L080598E2:
	call      _ZN7acommon8StackPtrI13CheckerStringE5resetEPS1_.part.68
.L080598E7:
	.p2align 4
.L080598F0:
	subl      $12, %esp
	leal      120(%esp), %eax
	pushl     %eax
	call      _ZNK7acommon6String5c_strEv
.L080598FD:
	movl      %eax, %esi
	movl      132(%esp), %eax
	subl      128(%esp), %eax
	popl      %ebp
	movl      %eax, %edi
	popl      %eax
	pushl     $.LC08064650
.L08059916:
	pushl     $.LC08063D1D
	movl      $-1, %ebx
	call      dgettext
.L08059925:
	pushl     %edi
	pushl     %esi
	pushl     %ebx
	pushl     %eax
	call      _Z11print_errorN7acommon10ParmStringES0_
.L0805992E:
	addl      $20, %esp
	pushl     $-1
	call      exit
.L08059938:
	subl      $12, %esp
	pushl     %ebx
	movl      $-1, %ebx
	call      aspell_error_message
.L08059946:
	movl      %eax, %ecx
	popl      %eax
	popl      %edx
	pushl     %ebx
	pushl     %ecx
	call      _Z11print_errorN7acommon10ParmStringE
.L08059951:
	movl      $1, (%esp)
	call      exit
.L0805995D:
	subl      $8, %esp
	pushl     $.LC080645FC
.L08059965:
	pushl     $.LC08063D1D
	movl      $-1, %ebx
	call      dgettext
.L08059974:
	movl      %eax, %ecx
	popl      %eax
	popl      %edx
	pushl     %ebx
	pushl     %ecx
	call      _Z11print_errorN7acommon10ParmStringE
.L0805997F:
	movl      $-1, (%esp)
	call      exit
.L0805998B:
	subl      $8, %esp
	pushl     $.LC08063F6C
	jmp       .L08059965
.L08059995:
	subl      $12, %esp
	leal      120(%esp), %eax
	pushl     %eax
	call      _ZNK7acommon6String5c_strEv
.L080599A2:
	movl      %eax, %esi
	movl      132(%esp), %eax
	subl      128(%esp), %eax
	movl      %eax, %edi
	popl      %eax
	popl      %edx
	pushl     $.LC08064624
	jmp       .L08059916
.L080599C0:
	subl      $12, %esp
	pushl     %edi
	call      _ZNK7acommon6String5c_strEv
.L080599C9:
	movl      %eax, %esi
	movl      164(%esp), %eax
	subl      160(%esp), %eax
	popl      %ecx
	popl      %ebx
	pushl     $.LC08063FA1
	movl      %eax, %edi
	jmp       .L08059916
.L080599E7:
	movl      (%eax), %ecx
	movb      $1, 4(%eax)
	subl      $8, %esp
	movl      $-1, %edx
	movl      (%ecx), %eax
	pushl     %edx
	pushl     %eax
	call      _Z11print_errorN7acommon10ParmStringE
.L080599FE:
	movl      $1, (%esp)
	call      exit
	.size	_Z5checkv, .-_Z5checkv
# ----------------------
.L08059A0A:
	.p2align 4,,10
	.p2align 3
# ----------------------
	.globl	_Z19munch_list_completebb
	.type	_Z19munch_list_completebb, @function
_Z19munch_list_completebb:
	pushl     %ebp
	pushl     %edi
	pushl     %esi
	pushl     %ebx
	subl      $632, %esp
	movzbl    652(%esp), %eax
	movb      %al, 90(%esp)
	movzbl    656(%esp), %eax
	movb      %al, 91(%esp)
	pushl     options
	call      _ZN8aspeller13find_languageERN7acommon6ConfigE
.L08059A3D:
	movl      $0, 576(%esp)
	movl      $-1, 580(%esp)
	addl      $12, %esp
	leal      564(%esp), %ebp
	pushl     %ebp
	pushl     options
	leal      116(%esp), %eax
	pushl     %eax
	call      _ZN8aspeller12new_languageERKN7acommon6ConfigERKNS0_10ParmStringE
.L08059A6E:
	movl      116(%esp), %eax
	addl      $12, %esp
	testl     %eax, %eax
	jne       .L0805B554
.L08059A7D:
	movl      108(%esp), %eax
	movl      %eax, 28(%esp)
	movl      %eax, %edx
	movl      %eax, %esi
	movl      options, %eax
	call      _ZL10setup_convPN7acommon6ConfigEPKN8aspeller8LanguageE
.L08059A93:
	movl      options, %edx
	movl      %eax, 448(%esp)
	movl      %eax, 480(%esp)
	movl      %esi, %eax
	movl      $0, 452(%esp)
	movl      $0, 456(%esp)
	movl      $0, 460(%esp)
	movl      $_ZTVN7acommon6StringE+8, 464(%esp)
	movl      $0, 468(%esp)
	movl      $0, 472(%esp)
	movl      $0, 476(%esp)
	call      _ZL10setup_convPKN8aspeller8LanguageEPN7acommon6ConfigE
.L08059AFB:
	movl      $0, 488(%esp)
	movl      %eax, 484(%esp)
	subl      $4, %esp
	movl      $0, 496(%esp)
	movl      $0, 500(%esp)
	movl      $_ZTVN7acommon6StringE+8, 504(%esp)
	movl      $0, 508(%esp)
	movl      $0, 512(%esp)
	movl      $0, 516(%esp)
	movl      %eax, 520(%esp)
	movl      $_ZTVN7acommon6StringE+8, 200(%esp)
	movl      $0, 204(%esp)
	movl      $0, 208(%esp)
	movl      $0, 212(%esp)
	movl      $_ZTVN7acommon6StringE+8, 216(%esp)
	movl      $0, 220(%esp)
	movl      $0, 224(%esp)
	movl      $0, 228(%esp)
	pushl     $4
	pushl     $1024
	leal      364(%esp), %eax
	pushl     %eax
	call      _ZN7acommon8ObjStackC1Ejj
.L08059BC5:
	movl      $0, 536(%esp)
	movl      $0, 540(%esp)
	addl      $12, %esp
	pushl     $4
	pushl     $1024
	leal      540(%esp), %eax
	pushl     %eax
	call      _ZN7acommon8ObjStackC1Ejj
.L08059BF2:
	movl      $0, 420(%esp)
	movl      $0, 424(%esp)
	movl      $0, 400(%esp)
	popl      %eax
	popl      %edx
	pushl     $0
	leal      396(%esp), %eax
	pushl     %eax
	call      _ZN7acommon9HashTableI9CML_ParmsE12create_tableEj
.L08059C24:
	popl      %ecx
	popl      %ebx
	pushl     $53
	leal      416(%esp), %eax
	pushl     %eax
	call      _ZN7acommon10BlockSListI9CML_EntryE9add_blockEj
.L08059C35:
	addl      $12, %esp
	pushl     $4
	pushl     $1024
	leal      428(%esp), %eax
	pushl     %eax
	call      _ZN7acommon8ObjStackC1Ejj
.L08059C4C:
	addl      $16, %esp
.L08059C4F:
	movl      200(%esp), %eax
	subl      $4, %esp
	movl      %eax, 208(%esp)
	movsbl    _ZN7acommon3CINE+4, %eax
	pushl     %eax
	leal      204(%esp), %eax
	pushl     %eax
	movl      _ZN7acommon3CINE, %eax
	pushl     $_ZN7acommon3CINE
	call      *(%eax)
.L08059C7C:
	addl      $16, %esp
	testb     %al, %al
	je        .L08059F5B
.L08059C87:
	movl      200(%esp), %edx
	subl      $4, %esp
	movl      208(%esp), %eax
	subl      %edx, %eax
	pushl     %eax
	pushl     %edx
	leal      224(%esp), %eax
	pushl     %eax
	call      _ZN7acommon6String6assignEPKcj
.L08059CA9:
	movl      236(%esp), %esi
	subl      232(%esp), %esi
	popl      %eax
	leal      224(%esp), %eax
	pushl     %eax
	call      _ZN7acommon6String4mstrEv
.L08059CC5:
	movl      464(%esp), %edi
	addl      $16, %esp
	movl      %eax, %ebx
	testl     %edi, %edi
	je        .L08059D21
.L08059CD5:
	movl      468(%esp), %eax
	movl      %eax, 472(%esp)
	movl      28(%edi), %eax
	testl     %eax, %eax
	je        .L08059EC5
.L08059CEE:
	leal      464(%esp), %edi
	movl      (%eax), %edx
	pushl     %edi
	pushl     %esi
	pushl     %ebx
	pushl     %eax
	call      *4(%edx)
.L08059CFE:
	addl      $16, %esp
	movl      468(%esp), %eax
	testl     %eax, %eax
	je        .L08059F17
.L08059D10:
	movl      472(%esp), %eax
	movb      $0, (%eax)
	movl      468(%esp), %ebx
.L08059D21:
	subl      $8, %esp
	pushl     $47
	pushl     %ebx
	call      strchr
.L08059D2C:
	addl      $16, %esp
	testl     %eax, %eax
	je        .L08059F47
.L08059D37:
	leal      1(%eax), %esi
	movb      $0, (%eax)
.L08059D3D:
	subl      $12, %esp
	leal      364(%esp), %eax
	pushl     %eax
	call      _ZN7acommon8ObjStack5resetEv
.L08059D4D:
	leal      368(%esp), %eax
	movl      %esi, 576(%esp)
	movl      %ebx, 348(%esp)
	movl      $-1, 580(%esp)
	movl      $-1, 352(%esp)
	movl      $2147483647, (%esp)
	pushl     %eax
	pushl     %ebp
	leal      356(%esp), %eax
	movl      %eax, 44(%esp)
	pushl     %eax
	pushl     56(%esp)
	call      _ZNK8aspeller8Language6expandERKN7acommon10ParmStringES4_RNS1_8ObjStackEi
.L08059D96:
	addl      $32, %esp
	movl      %eax, %ebx
	leal      396(%esp), %eax
	testl     %ebx, %ebx
	leal      88(%esp), %esi
	leal      388(%esp), %edi
	movl      %eax, 12(%esp)
	jne       .L08059DCB
.L08059DB5:
	jmp       .L08059C4F
.L08059DBA:
	.p2align 4,,10
	.p2align 3
.L08059DC0:
	movl      12(%ebx), %ebx
	testl     %ebx, %ebx
	je        .L08059C4F
.L08059DCB:
	subl      $8, %esp
	movl      %edi, %edx
	movl      %esi, %eax
	pushl     %ebp
	pushl     (%ebx)
	movl      28(%esp), %ecx
	call      _ZN7acommon9HashTableI9CML_ParmsE6find_iERKPKcRb.isra.80
.L08059DDE:
	addl      $16, %esp
	cmpb      $0, 560(%esp)
	jne       .L08059DC0
.L08059DEB:
	movl      4(%ebx), %eax
	movl      (%ebx), %ecx
	cmpl      $-1, %eax
	movl      %ecx, 16(%esp)
	leal      1(%eax), %edx
	je        .L08059EAE
.L08059E00:
	movl      436(%esp), %eax
	movl      %edx, %ecx
	negl      %ecx
	addl      %ecx, %eax
	cmpl      440(%esp), %eax
	movl      %eax, 436(%esp)
	jae       .L08059E50
.L08059E1D:
	movl      %ecx, 32(%esp)
	movl      %edx, 24(%esp)
	subl      $12, %esp
	leal      428(%esp), %eax
	pushl     %eax
	call      _ZN7acommon8ObjStack9new_chunkEv
.L08059E35:
	movl      452(%esp), %eax
	movl      48(%esp), %ecx
	addl      %ecx, %eax
	movl      %eax, 452(%esp)
	addl      $16, %esp
	movl      24(%esp), %edx
.L08059E50:
	subl      $4, %esp
	pushl     %edx
	pushl     24(%esp)
	pushl     %eax
	call      memcpy
.L08059E5E:
	movl      $0, 580(%esp)
	movl      %eax, 576(%esp)
	movl      $0, 584(%esp)
	movl      $0, 588(%esp)
	movl      $0, 592(%esp)
	addl      $12, %esp
	pushl     %ebp
	leal      392(%esp), %eax
	pushl     %eax
	pushl     32(%esp)
	call      _ZN7acommon9HashTableI9CML_ParmsE6insertERK9CML_Entry
.L08059EA6:
	addl      $12, %esp
	jmp       .L08059DC0
.L08059EAE:
	subl      $12, %esp
	pushl     28(%esp)
	call      strlen
.L08059EBA:
	addl      $16, %esp
	leal      1(%eax), %edx
	jmp       .L08059E00
.L08059EC5:
	movl      452(%esp), %eax
	leal      452(%esp), %ecx
	movl      %eax, 456(%esp)
	movl      8(%edi), %eax
	movl      (%eax), %edx
	pushl     %ecx
	pushl     %esi
	pushl     %ebx
	pushl     %eax
	call      *12(%edx)
.L08059EE6:
	movl      20(%edi), %eax
	leal      480(%esp), %edi
	movl      (%eax), %edx
	pushl     %edi
	pushl     476(%esp)
	pushl     476(%esp)
	pushl     %eax
	call      *12(%edx)
.L08059F05:
	addl      $32, %esp
	movl      468(%esp), %eax
	testl     %eax, %eax
	jne       .L08059D10
.L08059F17:
	subl      $8, %esp
	pushl     $0
	pushl     %edi
	call      _ZN7acommon6String9reserve_iEj
.L08059F22:
	addl      $16, %esp
	movl      468(%esp), %eax
	testl     %eax, %eax
	jne       .L08059D10
.L08059F34:
	subl      $8, %esp
	pushl     $0
	pushl     %edi
	call      _ZN7acommon6String9reserve_iEj
.L08059F3F:
	addl      $16, %esp
	jmp       .L08059D10
.L08059F47:
	subl      $12, %esp
	pushl     %ebx
	call      strlen
.L08059F50:
	addl      $16, %esp
	leal      (%ebx,%eax), %esi
	jmp       .L08059D3D
.L08059F5B:
	movl      388(%esp), %eax
	movl      %eax, 112(%esp)
	movl      (%eax), %esi
	testl     %esi, %esi
	jne       .L08059F7F
.L08059F6C:
	leal      4(%eax), %edx
.L08059F6F:
	movl      %edx, %eax
	movl      %edx, 112(%esp)
	addl      $4, %edx
	movl      -4(%edx), %ebx
	testl     %ebx, %ebx
	je        .L08059F6F
.L08059F7F:
	movl      392(%esp), %edi
	movl      %eax, 116(%esp)
	movl      %edi, 72(%esp)
.L08059F8E:
	cmpl      %eax, 72(%esp)
	je        .L0805A39E
.L08059F98:
	movl      (%eax), %eax
	movl      $-1, 52(%esp)
	movl      4(%eax), %eax
	movl      %eax, 48(%esp)
	movl      28(%esp), %eax
	movl      6044(%eax), %eax
	testl     %eax, %eax
	je        .L08059FD5
.L08059FB7:
	subl      $12, %esp
	pushl     $0
	leal      536(%esp), %edi
	pushl     %edi
	pushl     72(%esp)
	pushl     72(%esp)
	pushl     %eax
	call      _ZNK8aspeller8AffixMgr5munchEN7acommon10ParmStringEPNS_9GuessInfoEb
.L08059FD2:
	addl      $32, %esp
.L08059FD5:
	movl      524(%esp), %eax
	leal      396(%esp), %edi
	leal      388(%esp), %esi
	movl      %edi, 16(%esp)
	testl     %eax, %eax
	movl      %eax, 24(%esp)
	je        .L0805A373
.L08059FFA:
	movl      %esi, 20(%esp)
	jmp       .L0805A012
.L0805A000:
	movl      24(%esp), %eax
	movl      (%eax), %eax
	testl     %eax, %eax
	movl      %eax, 24(%esp)
	je        .L0805A373
.L0805A012:
	subl      $8, %esp
	pushl     %ebp
	movl      36(%esp), %eax
	pushl     4(%eax)
	movl      32(%esp), %ecx
	movl      36(%esp), %edx
	leal      104(%esp), %eax
	call      _ZN7acommon9HashTableI9CML_ParmsE6find_iERKPKcRb.isra.80
.L0805A02E:
	movl      108(%esp), %eax
	movl      %eax, 28(%esp)
	addl      $16, %esp
	cmpb      $0, 560(%esp)
	je        .L0805A000
.L0805A043:
	movl      12(%esp), %eax
	cmpl      %eax, 392(%esp)
	je        .L0805A000
.L0805A050:
	movl      24(%esp), %eax
	movzwl    28(%eax), %eax
	testw     %ax, %ax
	je        .L0805A318
.L0805A061:
	movl      24(%esp), %esi
	cmpw      $0, 30(%esi)
	jne       .L0805C625
.L0805A070:
	movb      %al, 332(%esp)
.L0805A077:
	movb      $0, 333(%esp)
	subl      $12, %esp
	leal      364(%esp), %eax
	pushl     %eax
	call      _ZN7acommon8ObjStack5resetEv
.L0805A08F:
	leal      348(%esp), %eax
	movl      40(%esp), %esi
	movl      $-1, 580(%esp)
	movl      %eax, 576(%esp)
	movl      44(%esp), %eax
	addl      $16, %esp
	leal      4(%esi), %edx
	movl      6044(%eax), %eax
	testl     %eax, %eax
	je        .L0805A330
.L0805A0C4:
	subl      $4, %esp
	pushl     $2147483647
	leal      360(%esp), %edi
	pushl     %edi
	pushl     576(%esp)
	pushl     576(%esp)
	pushl     8(%esi)
	pushl     4(%esi)
	pushl     %eax
	call      _ZNK8aspeller8AffixMgr6expandEN7acommon10ParmStringES2_RNS1_8ObjStackEi
.L0805A0EE:
	addl      $32, %esp
	movl      %eax, %ebx
.L0805A0F3:
	testl     %ebx, %ebx
	movl      %ebx, %esi
	je        .L0805A137
.L0805A0F9:
	movl      %ebx, 32(%esp)
	movl      16(%esp), %edi
	movl      20(%esp), %ebx
	.p2align 4,,10
	.p2align 3
.L0805A108:
	subl      $8, %esp
	movl      %edi, %ecx
	movl      %ebx, %edx
	pushl     %ebp
	pushl     (%esi)
	leal      104(%esp), %eax
	call      _ZN7acommon9HashTableI9CML_ParmsE6find_iERKPKcRb.isra.80
.L0805A11B:
	addl      $16, %esp
	cmpb      $0, 560(%esp)
	je        .L0805A000
.L0805A12C:
	movl      12(%esi), %esi
	testl     %esi, %esi
	jne       .L0805A108
.L0805A133:
	movl      32(%esp), %ebx
.L0805A137:
	movl      24(%esp), %eax
	cmpw      $0, 28(%eax)
	movzbl    332(%esp), %eax
	movb      %al, 32(%esp)
	movl      12(%esp), %eax
	setne     36(%esp)
	movl      (%eax), %edi
	movl      8(%edi), %esi
	testl     %esi, %esi
	je        .L0805A65E
.L0805A162:
	movzbl    (%esi), %edx
	testb     %dl, %dl
	je        .L0805A690
.L0805A16D:
	movzbl    32(%esp), %ecx
	cmpb      %dl, %cl
	je        .L0805A260
.L0805A17A:
	movl      %edi, 40(%esp)
	movl      %esi, %eax
	movl      %edx, %edi
	movl      %ecx, %edx
	jmp       .L0805A198
.L0805A186:
	.p2align 4
.L0805A190:
	cmpb      %cl, %dl
	je        .L0805A350
.L0805A198:
	addl      $1, %eax
	movzbl    (%eax), %ecx
	testb     %cl, %cl
	jne       .L0805A190
.L0805A1A2:
	subl      %esi, %eax
	movl      %edi, %edx
	subl      $12, %esp
	addl      $2, %eax
	movb      %dl, 56(%esp)
	movl      %eax, 52(%esp)
	pushl     %eax
	call      malloc
.L0805A1BA:
	addl      $16, %esp
	movzbl    44(%esp), %edx
	movl      %eax, %edi
	cmpb      $47, %dl
	je        .L0805A2FA
.L0805A1CD:
	movl      %edi, %eax
	.p2align 4,,10
	.p2align 3
.L0805A1D0:
	addl      $1, %eax
	addl      $1, %esi
	movb      %dl, -1(%eax)
	movzbl    (%esi), %edx
	cmpb      $47, %dl
	jne       .L0805A1D0
.L0805A1E1:
	cmpb      $0, 36(%esp)
	je        .L0805A359
.L0805A1EC:
	movzbl    32(%esp), %ecx
	leal      2(%eax), %edx
	movb      $47, 1(%eax)
	movb      %cl, (%eax)
.L0805A1FA:
	movzbl    1(%esi), %ecx
	leal      1(%esi), %eax
	testb     %cl, %cl
	je        .L0805A218
.L0805A205:
	.p2align 4,,10
	.p2align 3
.L0805A208:
	addl      $1, %edx
	addl      $1, %eax
	movb      %cl, -1(%edx)
	movzbl    (%eax), %ecx
	testb     %cl, %cl
	jne       .L0805A208
.L0805A218:
	cmpb      $0, 36(%esp)
	jne       .L0805A22A
.L0805A21F:
	movzbl    32(%esp), %eax
	addl      $1, %edx
	movb      %al, -1(%edx)
.L0805A22A:
	movb      $0, (%edx)
	addl      $1, %edx
	subl      %edi, %edx
	cmpl      %edx, 40(%esp)
	jne       .L0805A6DD
.L0805A23C:
	movl      12(%esp), %esi
	movl      (%esi), %eax
	movl      8(%eax), %edx
	testl     %edx, %edx
	je        .L0805A257
.L0805A249:
	subl      $12, %esp
	pushl     %edx
	call      free
.L0805A252:
	movl      (%esi), %eax
	addl      $16, %esp
.L0805A257:
	movl      %edi, 8(%eax)
	movl      12(%esp), %eax
	movl      (%eax), %edi
.L0805A260:
	movl      12(%edi), %eax
	leal      4(%edi), %esi
	testl     %eax, %eax
	je        .L0805A286
.L0805A26A:
	call      _ZL8find_setP9CML_Entry
.L0805A26F:
	movl      %eax, %esi
	movl      %eax, 12(%edi)
	jmp       .L0805A286
.L0805A276:
	.p2align 4
.L0805A280:
	movl      %esi, 8(%eax)
.L0805A283:
	movl      12(%ebx), %ebx
.L0805A286:
	testl     %ebx, %ebx
	je        .L0805A000
.L0805A28E:
	subl      $8, %esp
	pushl     %ebp
	pushl     (%ebx)
	movl      32(%esp), %ecx
	movl      36(%esp), %edx
	leal      104(%esp), %eax
	call      _ZN7acommon9HashTableI9CML_ParmsE6find_iERKPKcRb.isra.80
.L0805A2A5:
	movl      108(%esp), %eax
	addl      $16, %esp
	movl      392(%esp), %edx
	cmpb      $0, 560(%esp)
	jne       .L0805A2C6
.L0805A2BD:
	movl      392(%esp), %eax
	movl      %eax, %edx
.L0805A2C6:
	cmpl      %edx, 12(%esp)
	je        .L0805A713
.L0805A2D0:
	movl      (%eax), %edi
	movl      12(%edi), %eax
	testl     %eax, %eax
	je        .L0805A310
.L0805A2D9:
	call      _ZL8find_setP9CML_Entry
.L0805A2DE:
	movl      %eax, 12(%edi)
.L0805A2E1:
	cmpl      %eax, %esi
	je        .L0805A283
.L0805A2E5:
	movl      16(%esi), %edx
	cmpl      16(%eax), %edx
	jg        .L0805A280
.L0805A2ED:
	movl      %eax, 8(%esi)
	jne       .L0805A283
.L0805A2F2:
	addl      $1, %edx
	movl      %edx, 16(%eax)
	jmp       .L0805A283
.L0805A2FA:
	cmpb      $0, 36(%esp)
	jne       .L0805A700
.L0805A305:
	leal      1(%edi), %edx
	movb      $47, (%edi)
	jmp       .L0805A35F
.L0805A30D:
	.p2align 4,,10
	.p2align 3
.L0805A310:
	leal      4(%edi), %eax
	jmp       .L0805A2E1
.L0805A315:
	.p2align 4,,10
	.p2align 3
.L0805A318:
	movl      24(%esp), %eax
	movzwl    30(%eax), %eax
	testw     %ax, %ax
	je        .L0805A077
.L0805A329:
	jmp       .L0805A070
.L0805A32E:
	.p2align 4,,10
	.p2align 3
.L0805A330:
	leal      352(%esp), %eax
	pushl     %eax
	pushl     %ebp
	pushl     %edx
	pushl     40(%esp)
	call      _ZNK8aspeller8Language11fake_expandERKN7acommon10ParmStringES4_RNS1_8ObjStackE
.L0805A343:
	addl      $16, %esp
	movl      %eax, %ebx
	jmp       .L0805A0F3
.L0805A34D:
	.p2align 4,,10
	.p2align 3
.L0805A350:
	movl      40(%esp), %edi
	jmp       .L0805A260
.L0805A359:
	leal      1(%eax), %edx
	movb      $47, (%eax)
.L0805A35F:
	movzbl    1(%esi), %ecx
	leal      1(%esi), %eax
	testb     %cl, %cl
	jne       .L0805A208
.L0805A36E:
	jmp       .L0805A21F
.L0805A373:
	movl      116(%esp), %eax
	movl      (%eax), %eax
	movl      %eax, 116(%esp)
	movl      (%eax), %ecx
	testl     %ecx, %ecx
	jne       .L08059F8E
.L0805A387:
	leal      112(%esp), %eax
	call      _ZN7acommon11HT_IteratorI9CML_EntryE3incEv.part.104
.L0805A390:
	movl      116(%esp), %eax
	cmpl      %eax, 72(%esp)
	jne       .L08059F98
.L0805A39E:
	movl      388(%esp), %eax
	movl      (%eax), %edx
	testl     %edx, %edx
	jne       .L0805A3BA
.L0805A3AB:
	leal      4(%eax), %edx
.L0805A3AE:
	movl      %edx, %eax
	addl      $4, %edx
	movl      -4(%edx), %edi
	testl     %edi, %edi
	je        .L0805A3AE
.L0805A3BA:
	movl      %eax, 112(%esp)
	movl      %eax, 116(%esp)
	movl      $_ZTVN7acommon6StringE+8, 228(%esp)
	movl      $0, 232(%esp)
	movl      $0, 236(%esp)
	movl      $0, 240(%esp)
	movl      $_ZTVN7acommon6StringE+8, 244(%esp)
	movl      $0, 248(%esp)
	movl      $0, 252(%esp)
	movl      $0, 256(%esp)
	movl      $0, 20(%esp)
.L0805A422:
	cmpl      %eax, 72(%esp)
	je        .L0805AB3E
.L0805A42C:
	movl      232(%esp), %edx
	movl      %edx, 236(%esp)
	movl      248(%esp), %edx
	movl      %edx, 252(%esp)
	movl      (%eax), %eax
	movl      8(%eax), %esi
	testl     %esi, %esi
	je        .L0805AB19
.L0805A455:
	movsbl    (%esi), %eax
	cmpb      $47, %al
	je        .L0805A47F
.L0805A45C:
	leal      228(%esp), %ebx
	.p2align 4,,10
	.p2align 3
.L0805A468:
	subl      $8, %esp
	addl      $1, %esi
	pushl     %eax
	pushl     %ebx
	call      _ZN7acommon6String6appendEc
.L0805A475:
	movsbl    (%esi), %eax
	addl      $16, %esp
	cmpb      $47, %al
	jne       .L0805A468
.L0805A47F:
	movsbl    1(%esi), %eax
	leal      1(%esi), %ebx
	testb     %al, %al
	je        .L0805A4AE
.L0805A48A:
	.p2align 4,,10
	.p2align 3
.L0805A490:
	subl      $8, %esp
	addl      $1, %ebx
	pushl     %eax
	leal      256(%esp), %eax
	pushl     %eax
	call      _ZN7acommon6String6appendEc
.L0805A4A4:
	movsbl    (%ebx), %eax
	addl      $16, %esp
	testb     %al, %al
	jne       .L0805A490
.L0805A4AE:
	movl      232(%esp), %eax
	cmpl      236(%esp), %eax
	movl      %eax, 16(%esp)
	je        .L0805B270
.L0805A4C6:
	movl      248(%esp), %edx
	movl      252(%esp), %eax
	cmpl      %eax, %edx
	je        .L0805B22A
.L0805A4DC:
	movl      $0, 260(%esp)
	movl      $0, 276(%esp)
	movl      $0, 292(%esp)
	movl      %edx, 12(%esp)
.L0805A501:
	cmpl      %eax, 12(%esp)
	je        .L0805A631
.L0805A50B:
	.p2align 4,,10
	.p2align 3
.L0805A510:
	movl      16(%esp), %eax
	xorl      %ecx, %ecx
	movb      $0, 314(%esp)
	movw      %cx, 312(%esp)
	subl      $12, %esp
	movzbl    (%eax), %eax
	movb      %al, 324(%esp)
	movl      24(%esp), %eax
	movzbl    (%eax), %eax
	movb      %al, 325(%esp)
	leal      364(%esp), %eax
	pushl     %eax
	call      _ZN7acommon8ObjStack5resetEv
.L0805A54E:
	leal      328(%esp), %eax
	movl      $-1, 580(%esp)
	movl      %eax, 576(%esp)
	movl      132(%esp), %eax
	movl      (%eax), %eax
	movl      4(%eax), %eax
	movl      $-1, 352(%esp)
	movl      %eax, 348(%esp)
	movl      44(%esp), %eax
	addl      $16, %esp
	movl      6044(%eax), %eax
	testl     %eax, %eax
	je        .L0805A7F0
.L0805A59A:
	subl      $4, %esp
	pushl     $2147483647
	leal      360(%esp), %esi
	pushl     %esi
	pushl     576(%esp)
	pushl     576(%esp)
	pushl     356(%esp)
	pushl     356(%esp)
	pushl     %eax
	call      _ZNK8aspeller8AffixMgr6expandEN7acommon10ParmStringES2_RNS1_8ObjStackEi
.L0805A5CC:
	addl      $32, %esp
	movl      %eax, %ebx
.L0805A5D1:
	testl     %ebx, %ebx
	leal      396(%esp), %edi
	leal      388(%esp), %esi
	jne       .L0805A5FB
.L0805A5E3:
	jmp       .L0805A730
.L0805A5E8:
	.p2align 4
.L0805A5F0:
	movl      12(%ebx), %ebx
	testl     %ebx, %ebx
	je        .L0805A730
.L0805A5FB:
	subl      $8, %esp
	movl      %edi, %ecx
	movl      %esi, %edx
	pushl     %ebp
	pushl     (%ebx)
	leal      104(%esp), %eax
	call      _ZN7acommon9HashTableI9CML_ParmsE6find_iERKPKcRb.isra.80
.L0805A60E:
	addl      $16, %esp
	cmpb      $0, 560(%esp)
	jne       .L0805A5F0
.L0805A61B:
	addl      $1, 12(%esp)
	movl      12(%esp), %eax
	cmpl      %eax, 252(%esp)
	jne       .L0805A510
.L0805A631:
	addl      $1, 16(%esp)
	movl      16(%esp), %eax
	cmpl      %eax, 236(%esp)
	je        .L0805A814
.L0805A647:
	movl      248(%esp), %esi
	movl      252(%esp), %eax
	movl      %esi, 12(%esp)
	jmp       .L0805A501
.L0805A65E:
	subl      $12, %esp
	pushl     $3
	call      malloc
.L0805A668:
	addl      $16, %esp
	movl      %eax, %edi
	cmpb      $0, 36(%esp)
	jne       .L0805A6B5
.L0805A674:
	leal      1(%eax), %edx
	movb      $47, (%eax)
	movl      $3, 40(%esp)
	jmp       .L0805A21F
.L0805A687:
	.p2align 4
.L0805A690:
	movb      %dl, 44(%esp)
	subl      $12, %esp
	pushl     $2
	call      malloc
.L0805A69E:
	addl      $16, %esp
	movl      %eax, %edi
	movl      $2, 40(%esp)
	movzbl    44(%esp), %edx
	jmp       .L0805A1CD
.L0805A6B5:
	movzbl    32(%esp), %eax
	leal      2(%edi), %edx
	movb      $47, 1(%edi)
	movl      $3, 40(%esp)
	movb      %al, (%edi)
	movb      $0, (%edx)
	addl      $1, %edx
	subl      %edi, %edx
	cmpl      %edx, 40(%esp)
	je        .L0805A23C
.L0805A6DD:
	pushl     $_ZZL9add_affixN7acommon11HT_IteratorI9CML_EntryEEcbE19__PRETTY_FUNCTION__
	pushl     $2084
	pushl     $.LC08063C88
	pushl     $.LC08064009
	call      __assert_fail
.L0805A6F6:
	.p2align 4
.L0805A700:
	movzbl    32(%esp), %eax
	leal      2(%edi), %edx
	movb      $47, 1(%edi)
	movb      %al, (%edi)
	jmp       .L0805A1FA
.L0805A713:
	pushl     $_ZZ19munch_list_completebbE19__PRETTY_FUNCTION__
	pushl     $2351
	pushl     $.LC08063C88
	pushl     $.LC08063EB6
	call      __assert_fail
.L0805A72C:
	.p2align 4,,10
	.p2align 3
.L0805A730:
	subl      $12, %esp
	pushl     $36
	call      _Znwj
.L0805A73A:
	movl      %eax, %ebx
	movl      $_ZTVN7acommon6StringE+8, (%eax)
	movl      $0, 4(%eax)
	movl      $0, 8(%eax)
	movl      $0, 12(%eax)
	movl      $_ZTVN7acommon6StringE+8, 16(%eax)
	movl      $0, 20(%eax)
	movl      $0, 24(%eax)
	movl      $0, 28(%eax)
	movl      $0, 32(%eax)
	movl      32(%esp), %eax
	movzbl    (%eax), %esi
	popl      %eax
	popl      %edx
	pushl     $1
	pushl     %ebx
	call      _ZN7acommon6String9reserve_iEj
.L0805A78B:
	movl      8(%ebx), %eax
	movl      %esi, %ecx
	movb      %cl, (%eax)
	movl      28(%esp), %eax
	addl      $16, %esp
	addl      $1, 8(%ebx)
	movl      20(%ebx), %ecx
	movl      28(%ebx), %edi
	movzbl    (%eax), %esi
	movl      24(%ebx), %eax
	subl      %ecx, %edi
	movl      %eax, %edx
	subl      %ecx, %edx
	addl      $1, %edx
	cmpl      %edi, %edx
	jl        .L0805A7C9
.L0805A7B6:
	leal      16(%ebx), %eax
	subl      $8, %esp
	pushl     %edx
	pushl     %eax
	call      _ZN7acommon6String9reserve_iEj
.L0805A7C3:
	movl      24(%ebx), %eax
	addl      $16, %esp
.L0805A7C9:
	movl      %esi, %ecx
	movb      %cl, (%eax)
	addl      $1, 24(%ebx)
	movl      260(%esp), %eax
	movl      %eax, 32(%ebx)
	movl      %ebx, 260(%esp)
	jmp       .L0805A61B
.L0805A7E7:
	.p2align 4
.L0805A7F0:
	leal      352(%esp), %eax
	pushl     %eax
	pushl     %ebp
	leal      340(%esp), %eax
	pushl     %eax
	pushl     40(%esp)
	call      _ZNK8aspeller8Language11fake_expandERKN7acommon10ParmStringES4_RNS1_8ObjStackE
.L0805A80A:
	addl      $16, %esp
	movl      %eax, %ebx
	jmp       .L0805A5D1
.L0805A814:
	leal      276(%esp), %eax
	xorl      %ecx, %ecx
	movl      %eax, 32(%esp)
	movl      %eax, %esi
	leal      260(%esp), %eax
	movl      %esi, %edx
	movl      %eax, 24(%esp)
	movl      %eax, %edi
	call      _ZL7combineRK10PreSufListRS_i
.L0805A837:
	leal      292(%esp), %edx
	movl      $1, %ecx
	movl      %esi, %eax
	call      _ZL7combineRK10PreSufListRS_i
.L0805A84A:
	subl      $12, %esp
	pushl     %esi
	call      _ZN10PreSufList5clearEv
.L0805A853:
	movl      $1, %ecx
	movl      %esi, %edx
	movl      %edi, %eax
	call      _ZL7combineRK10PreSufListRS_i
.L0805A861:
	leal      308(%esp), %edx
	xorl      %ecx, %ecx
	movl      %esi, %eax
	call      _ZL7combineRK10PreSufListRS_i
.L0805A871:
	movl      %esi, (%esp)
	call      _ZN10PreSufList5clearEv
.L0805A879:
	movl      %edi, (%esp)
	call      _ZN10PreSufList5clearEv
.L0805A881:
	movl      $36, (%esp)
	call      _Znwj
.L0805A88D:
	movl      $_ZTVN7acommon6StringE+8, (%eax)
	movl      $0, 4(%eax)
	movl      %eax, %ebx
	movl      248(%esp), %edx
	addl      $12, %esp
	movl      $0, 8(%eax)
	movl      $0, 12(%eax)
	movl      $_ZTVN7acommon6StringE+8, 16(%eax)
	movl      $0, 20(%eax)
	movl      $0, 24(%eax)
	movl      $0, 28(%eax)
	movl      $0, 32(%eax)
	movl      240(%esp), %eax
	subl      %edx, %eax
	pushl     %eax
	pushl     %edx
	pushl     %ebx
	call      _ZN7acommon6String6assignEPKcj
.L0805A8E8:
	movl      308(%esp), %eax
	movl      %eax, 32(%ebx)
	movl      %ebx, 308(%esp)
	movl      $36, (%esp)
	call      _Znwj
.L0805A905:
	movl      $_ZTVN7acommon6StringE+8, (%eax)
	movl      $0, 4(%eax)
	movl      %eax, %ebx
	movl      264(%esp), %edx
	addl      $12, %esp
	movl      $0, 8(%eax)
	movl      $0, 12(%eax)
	movl      $_ZTVN7acommon6StringE+8, 16(%eax)
	movl      $0, 20(%eax)
	movl      $0, 24(%eax)
	movl      $0, 28(%eax)
	movl      $0, 32(%eax)
	movl      256(%esp), %eax
	subl      %edx, %eax
	pushl     %eax
	leal      16(%ebx), %eax
	pushl     %edx
	pushl     %eax
	call      _ZN7acommon6String6assignEPKcj
.L0805A963:
	movl      308(%esp), %eax
	xorl      %ecx, %ecx
	movl      %esi, %edx
	movl      %eax, 32(%ebx)
	leal      308(%esp), %eax
	movl      %ebx, 308(%esp)
	call      _ZL7combineRK10PreSufListRS_i
.L0805A984:
	movl      $1, %ecx
	movl      %edi, %edx
	movl      %esi, %eax
	call      _ZL7combineRK10PreSufListRS_i
.L0805A992:
	addl      $16, %esp
	cmpb      $0, 78(%esp)
	je        .L0805B087
.L0805A9A0:
	movl      260(%esp), %ebx
	testl     %ebx, %ebx
	je        .L0805C60C
.L0805A9AF:
	movl      116(%esp), %eax
	movl      4(%ebx), %edx
	subl      $4, %esp
	movl      (%eax), %ecx
	movl      8(%ebx), %eax
	subl      %edx, %eax
	pushl     %eax
	pushl     %edx
	pushl     8(%ecx)
	call      memcpy
.L0805A9CA:
	leal      16(%ebx), %eax
	movl      24(%ebx), %esi
	subl      20(%ebx), %esi
	movl      %eax, (%esp)
	call      _ZNK7acommon6String5c_strEv
.L0805A9DB:
	movl      %eax, %ecx
	movl      132(%esp), %eax
	addl      $1, %esi
	addl      $12, %esp
	movl      (%eax), %edx
	movl      8(%ebx), %eax
	subl      4(%ebx), %eax
	addl      8(%edx), %eax
	pushl     %esi
	pushl     %ecx
	pushl     %eax
	call      memcpy
.L0805A9FD:
	movl      132(%esp), %eax
	movl      32(%ebx), %esi
	addl      $16, %esp
	movl      (%eax), %ebx
	movl      12(%ebx), %eax
	testl     %eax, %eax
	je        .L0805B21E
.L0805AA17:
	call      _ZL8find_setP9CML_Entry
.L0805AA1C:
	movl      %eax, 16(%esp)
	movl      %eax, 12(%ebx)
.L0805AA23:
	testl     %esi, %esi
	je        .L0805AAE9
.L0805AA2B:
	movl      20(%esp), %edi
	movl      %edi, %ecx
.L0805AA31:
	movl      %ecx, 12(%esp)
	subl      $12, %esp
	pushl     $20
	call      _Znwj
.L0805AA3F:
	movl      $0, (%eax)
	movl      $0, 4(%eax)
	movl      %eax, %ebx
	movl      $0, 8(%eax)
	movl      $0, 12(%eax)
	movl      $0, 16(%eax)
	movl      132(%esp), %eax
	movl      (%eax), %eax
	movl      4(%eax), %eax
	movl      %eax, (%ebx)
	movl      8(%esi), %edx
	movl      24(%esi), %eax
	subl      4(%esi), %edx
	subl      20(%esi), %eax
	leal      1(%edx,%eax), %eax
	movl      %eax, (%esp)
	call      malloc
.L0805AA89:
	movl      %eax, 4(%ebx)
	movl      4(%esi), %edi
	addl      $12, %esp
	movl      8(%esi), %edx
	subl      %edi, %edx
	pushl     %edx
	pushl     %edi
	pushl     %eax
	call      memcpy
.L0805AA9F:
	leal      16(%esi), %eax
	movl      24(%esi), %edi
	subl      20(%esi), %edi
	movl      %eax, (%esp)
	call      _ZNK7acommon6String5c_strEv
.L0805AAB0:
	movl      8(%esi), %edx
	subl      4(%esi), %edx
	addl      $12, %esp
	addl      4(%ebx), %edx
	addl      $1, %edi
	pushl     %edi
	pushl     %eax
	pushl     %edx
	call      memcpy
.L0805AAC7:
	movl      32(%esi), %esi
	movl      28(%esp), %ecx
	movl      32(%esp), %eax
	addl      $16, %esp
	testl     %esi, %esi
	movl      %ecx, 12(%ebx)
	movl      %ebx, %ecx
	movl      %eax, 8(%ebx)
	jne       .L0805AA31
.L0805AAE5:
	movl      %ebx, 20(%esp)
.L0805AAE9:
	subl      $12, %esp
	leal      304(%esp), %eax
	pushl     %eax
	call      _ZN10PreSufList5clearEv
.L0805AAF9:
	popl      %esi
	pushl     44(%esp)
	call      _ZN10PreSufList5clearEv
.L0805AB03:
	popl      %edi
	pushl     36(%esp)
	call      _ZN10PreSufList5clearEv
.L0805AB0D:
	movl      132(%esp), %eax
	addl      $16, %esp
	movl      (%eax), %eax
.L0805AB19:
	movl      %eax, 116(%esp)
	movl      (%eax), %ebx
	testl     %ebx, %ebx
	jne       .L0805A422
.L0805AB27:
	leal      112(%esp), %eax
	call      _ZN7acommon11HT_IteratorI9CML_EntryE3incEv.part.104
.L0805AB30:
	movl      116(%esp), %eax
	cmpl      %eax, 72(%esp)
	jne       .L0805A42C
.L0805AB3E:
	movl      20(%esp), %ecx
	movl      20(%esp), %ebx
	testl     %ecx, %ecx
	je        .L0805AB75
.L0805AB4A:
	subl      $4, %esp
	movl      12(%ebx), %esi
	movl      $0, 12(%ebx)
	pushl     %ebx
	leal      392(%esp), %eax
	pushl     %eax
	pushl     %ebp
	call      _ZN7acommon9HashTableI9CML_ParmsE6insertERK9CML_Entry
.L0805AB66:
	pushl     %ebx
	movl      %esi, %ebx
	call      _ZdlPv
.L0805AB6E:
	addl      $16, %esp
	testl     %esi, %esi
	jne       .L0805AB4A
.L0805AB75:
	movl      388(%esp), %ebx
	movl      (%ebx), %edx
	leal      4(%ebx), %eax
	testl     %edx, %edx
	jne       .L0805AB91
.L0805AB85:
	movl      %eax, %ebx
	addl      $4, %eax
	movl      -4(%eax), %edi
	testl     %edi, %edi
	je        .L0805AB85
.L0805AB91:
	movl      %ebx, 112(%esp)
	movl      %ebx, 116(%esp)
	jmp       .L0805ABE3
.L0805AB9B:
	.p2align 4,,10
	.p2align 3
.L0805ABA0:
	movl      (%ebx), %ebx
	movl      12(%ebx), %eax
	movl      $-1, 20(%ebx)
	testl     %eax, %eax
	je        .L0805ABD5
.L0805ABB0:
	call      _ZL8find_setP9CML_Entry
.L0805ABB5:
	movl      116(%esp), %edx
	movl      %eax, 12(%ebx)
	movl      (%edx), %ebx
	leal      4(%ebx), %ecx
	cmpl      %ecx, %eax
	je        .L0805ABD5
.L0805ABC5:
	movl      12(%eax), %ecx
	movl      %ecx, 16(%ebx)
	movl      (%edx), %edi
	leal      4(%edi), %ecx
	movl      %ecx, 12(%eax)
	movl      (%edx), %ebx
.L0805ABD5:
	movl      %ebx, 116(%esp)
	movl      (%ebx), %esi
	testl     %esi, %esi
	je        .L0805B27D
.L0805ABE3:
	cmpl      %ebx, 72(%esp)
	jne       .L0805ABA0
.L0805ABE9:
	movl      388(%esp), %eax
	movl      (%eax), %ebx
	testl     %ebx, %ebx
	jne       .L0805AC05
.L0805ABF6:
	leal      4(%eax), %edx
.L0805ABF9:
	movl      %edx, %eax
	addl      $4, %edx
	movl      -4(%edx), %ecx
	testl     %ecx, %ecx
	je        .L0805ABF9
.L0805AC05:
	movl      %eax, 112(%esp)
	movl      %eax, 116(%esp)
	jmp       .L0805AC1F
.L0805AC0F:
	movl      (%eax), %eax
	movl      %eax, 116(%esp)
	movl      (%eax), %edx
	testl     %edx, %edx
	je        .L0805C1D3
.L0805AC1F:
	cmpl      %eax, 72(%esp)
	je        .L0805C1EA
.L0805AC29:
	movl      (%eax), %edx
	movl      12(%edx), %edx
	testl     %edx, %edx
	jne       .L0805AC0F
.L0805AC32:
	movl      $0, 136(%esp)
	movl      $0, 140(%esp)
	movl      $0, 144(%esp)
	movl      $0, 148(%esp)
	movl      $0, 152(%esp)
	movl      $0, 156(%esp)
	movl      $0, 160(%esp)
	movl      $0, 164(%esp)
	movl      $0, 168(%esp)
	movl      $0, 292(%esp)
	movl      $0, 300(%esp)
	movl      $0, 308(%esp)
	movl      $0, 172(%esp)
	movl      $0, 176(%esp)
	movl      $0, 180(%esp)
	movl      $0, 184(%esp)
	movl      $0, 188(%esp)
	movl      $0, 192(%esp)
	movl      (%eax), %eax
	movl      $0, 296(%esp)
	movl      $0, 304(%esp)
	addl      $4, %eax
	je        .L0805C605
.L0805AD19:
	leal      88(%esp), %edi
	leal      388(%esp), %esi
	movl      %edi, 20(%esp)
	leal      396(%esp), %edi
	movl      %esi, 12(%esp)
	movl      %edi, 16(%esp)
	movl      %eax, %edi
	jmp       .L0805AFE8
.L0805AD3E:
	movl      392(%esp), %eax
	movl      %eax, 332(%esp)
	movl      %eax, 336(%esp)
	movl      (%eax), %edx
	movl      20(%edx), %eax
	cmpl      $-1, %eax
	je        .L0805B03B
.L0805AD61:
	movl      %eax, 16(%edi)
.L0805AD64:
	movl      4(%edi), %edx
	testl     %edx, %edx
	je        .L0805AFDD
.L0805AD6F:
	movl      152(%esp), %ebx
	cmpl      156(%esp), %ebx
	movl      $0, 568(%esp)
	movl      $0, 576(%esp)
	movl      $0, 584(%esp)
	movl      $0, 588(%esp)
	movl      $0, 596(%esp)
	movl      $0, 604(%esp)
	movl      (%edi), %ecx
	movl      $0, 572(%esp)
	movl      $0, 580(%esp)
	movl      $0, 592(%esp)
	movl      $0, 600(%esp)
	movl      %edx, 564(%esp)
	movl      %ecx, 560(%esp)
	je        .L0805C5E4
.L0805AE01:
	xorl      %eax, %eax
	testl     %ebx, %ebx
	je        .L0805AFAC
.L0805AE0B:
	movl      %ecx, (%ebx)
	movl      %edx, 4(%ebx)
	subl      $12, %esp
	movl      $0, 8(%ebx)
	movl      $0, 12(%ebx)
	movl      $0, 16(%ebx)
	movl      $0, 20(%ebx)
	movl      $0, 24(%ebx)
	movl      592(%esp), %eax
	movl      588(%esp), %edx
	subl      584(%esp), %eax
	subl      580(%esp), %edx
	leal      (%eax,%edx,8), %esi
	leal      31(%esi), %edx
	shrl      $5, %edx
	sall      $2, %edx
	pushl     %edx
	movl      %edx, 40(%esp)
	call      _Znwj
.L0805AE68:
	movl      40(%esp), %edx
	movl      %esi, %ecx
	addl      $16, %esp
	sarl      $31, %ecx
	movl      %eax, 8(%ebx)
	movl      $0, 12(%ebx)
	shrl      $27, %ecx
	addl      %eax, %edx
	movl      %edx, 24(%ebx)
	leal      (%ecx,%esi), %edx
	movl      %edx, %esi
	andl      $31, %edx
	sarl      $5, %esi
	subl      %ecx, %edx
	leal      (%eax,%esi,4), %esi
	jns       .L0805AE9E
.L0805AE98:
	addl      $32, %edx
	subl      $4, %esi
.L0805AE9E:
	movl      %esi, 16(%ebx)
	movl      %edx, 20(%ebx)
	subl      $4, %esp
	movl      580(%esp), %esi
	movl      %esi, 68(%esp)
	movl      584(%esp), %esi
	movl      %esi, 72(%esp)
	pushl     %eax
	pushl     76(%esp)
	pushl     76(%esp)
	movl      584(%esp), %edx
	leal      96(%esp), %eax
	call      _ZNSt6vectorIbSaIbEE15_M_copy_alignedESt19_Bit_const_iteratorS2_St13_Bit_iterator.isra.204
.L0805AED6:
	movl      $0, 28(%ebx)
	movl      $0, 32(%ebx)
	movl      $0, 36(%ebx)
	movl      $0, 40(%ebx)
	movl      $0, 44(%ebx)
	movl      616(%esp), %eax
	movl      612(%esp), %edx
	subl      608(%esp), %eax
	subl      604(%esp), %edx
	leal      (%eax,%edx,8), %esi
	leal      31(%esi), %edx
	shrl      $5, %edx
	sall      $2, %edx
	movl      %edx, (%esp)
	movl      %edx, 40(%esp)
	call      _Znwj
.L0805AF2D:
	movl      40(%esp), %edx
	movl      %esi, %ecx
	addl      $16, %esp
	sarl      $31, %ecx
	movl      %eax, 28(%ebx)
	movl      $0, 32(%ebx)
	shrl      $27, %ecx
	addl      %eax, %edx
	movl      %edx, 44(%ebx)
	leal      (%ecx,%esi), %edx
	movl      %edx, %esi
	andl      $31, %edx
	sarl      $5, %esi
	subl      %ecx, %edx
	leal      (%eax,%esi,4), %esi
	jns       .L0805AF63
.L0805AF5D:
	addl      $32, %edx
	subl      $4, %esi
.L0805AF63:
	movl      %esi, 36(%ebx)
	movl      %edx, 40(%ebx)
	subl      $4, %esp
	movl      600(%esp), %esi
	movl      %esi, 60(%esp)
	movl      604(%esp), %esi
	movl      %esi, 64(%esp)
	pushl     %eax
	pushl     68(%esp)
	pushl     68(%esp)
	movl      604(%esp), %edx
	leal      96(%esp), %eax
	call      _ZNSt6vectorIbSaIbEE15_M_copy_alignedESt19_Bit_const_iteratorS2_St13_Bit_iterator.isra.204
.L0805AF9B:
	movl      168(%esp), %ebx
	movl      604(%esp), %eax
	addl      $16, %esp
.L0805AFAC:
	addl      $48, %ebx
	movl      %ebx, 152(%esp)
.L0805AFB6:
	testl     %eax, %eax
	je        .L0805AFC6
.L0805AFBA:
	subl      $12, %esp
	pushl     %eax
	call      _ZdlPv
.L0805AFC3:
	addl      $16, %esp
.L0805AFC6:
	movl      568(%esp), %eax
	testl     %eax, %eax
	je        .L0805AFDD
.L0805AFD1:
	subl      $12, %esp
	pushl     %eax
	call      _ZdlPv
.L0805AFDA:
	addl      $16, %esp
.L0805AFDD:
	movl      12(%edi), %edi
	testl     %edi, %edi
	je        .L0805B28F
.L0805AFE8:
	subl      $8, %esp
	pushl     %ebp
	pushl     (%edi)
	movl      28(%esp), %edx
	movl      36(%esp), %eax
	movl      32(%esp), %ecx
	call      _ZN7acommon9HashTableI9CML_ParmsE6find_iERKPKcRb.isra.80
.L0805AFFF:
	movl      104(%esp), %eax
	movl      108(%esp), %edx
	addl      $16, %esp
	cmpb      $0, 560(%esp)
	je        .L0805AD3E
.L0805B018:
	movl      %eax, 332(%esp)
	movl      %edx, 336(%esp)
	movl      336(%esp), %eax
	movl      (%eax), %edx
	movl      20(%edx), %eax
	cmpl      $-1, %eax
	jne       .L0805AD61
.L0805B03B:
	movl      140(%esp), %ecx
	movl      %ecx, %eax
	subl      136(%esp), %eax
	sarl      $3, %eax
	cmpl      144(%esp), %ecx
	movl      %eax, 20(%edx)
	movl      %eax, 16(%edi)
	je        .L0805BB5E
.L0805B061:
	testl     %ecx, %ecx
	je        .L0805B078
.L0805B065:
	movl      332(%esp), %eax
	movl      336(%esp), %edx
	movl      %eax, (%ecx)
	movl      %edx, 4(%ecx)
.L0805B078:
	addl      $8, %ecx
	movl      %ecx, 140(%esp)
	jmp       .L0805AD64
.L0805B087:
	movl      260(%esp), %ebx
	movl      $_ZTVN7acommon6StringE+8, 560(%esp)
	movl      $0, 564(%esp)
	movl      $0, 568(%esp)
	movl      $0, 572(%esp)
	testl     %ebx, %ebx
	je        .L0805B217
.L0805B0C2:
	leal      332(%esp), %eax
	xorl      %esi, %esi
	xorl      %edi, %edi
	movl      %eax, 12(%esp)
.L0805B0D1:
	movl      4(%ebx), %ecx
	movl      8(%ebx), %eax
	subl      $4, %esp
	subl      %ecx, %eax
	pushl     %eax
	pushl     %ecx
	pushl     %ebp
	call      _ZN7acommon6String6assignEPKcj
.L0805B0E4:
	movl      20(%ebx), %ecx
	movl      24(%ebx), %eax
	addl      $12, %esp
	subl      %ecx, %eax
	pushl     %eax
	pushl     %ecx
	pushl     %ebp
	call      _ZN7acommon6String6appendEPKvj
.L0805B0F7:
	popl      %eax
	leal      364(%esp), %eax
	pushl     %eax
	call      _ZN7acommon8ObjStack5resetEv
.L0805B105:
	movl      %ebp, (%esp)
	call      _ZNK7acommon6String5c_strEv
.L0805B10D:
	movl      %eax, 348(%esp)
	movl      584(%esp), %eax
	subl      580(%esp), %eax
	movl      %eax, 352(%esp)
	movl      132(%esp), %eax
	movl      (%eax), %eax
	movl      4(%eax), %eax
	movl      $-1, 332(%esp)
	movl      $2147483647, (%esp)
	movl      %eax, 328(%esp)
	leal      368(%esp), %eax
	pushl     %eax
	pushl     32(%esp)
	leal      336(%esp), %eax
	pushl     %eax
	pushl     56(%esp)
	call      _ZNK8aspeller8Language6expandERKN7acommon10ParmStringES4_RNS1_8ObjStackEi
.L0805B16B:
	addl      $32, %esp
	testl     %eax, %eax
	je        .L0805B192
.L0805B176:
	xorl      %ecx, %ecx
	.p2align 4
.L0805B180:
	movl      12(%eax), %eax
	addl      $1, %ecx
	testl     %eax, %eax
	jne       .L0805B180
.L0805B18A:
	cmpl      %edi, %ecx
	jle       .L0805B192
.L0805B18E:
	movl      %ebx, %esi
	movl      %ecx, %edi
.L0805B192:
	movl      32(%ebx), %ebx
	testl     %ebx, %ebx
	jne       .L0805B0D1
.L0805B19D:
	movl      116(%esp), %eax
	movl      4(%esi), %edx
	subl      $4, %esp
	movl      (%eax), %ecx
	movl      8(%esi), %eax
	subl      %edx, %eax
	pushl     %eax
	pushl     %edx
	pushl     8(%ecx)
	call      memcpy
.L0805B1B8:
	leal      16(%esi), %eax
	movl      24(%esi), %ebx
	subl      20(%esi), %ebx
	movl      %eax, (%esp)
	call      _ZNK7acommon6String5c_strEv
.L0805B1C9:
	movl      132(%esp), %edx
	movl      8(%esi), %ecx
	addl      $12, %esp
	subl      4(%esi), %ecx
	addl      $1, %ebx
	movl      (%edx), %edx
	addl      8(%edx), %ecx
	pushl     %ebx
	pushl     %eax
	pushl     %ecx
	call      memcpy
.L0805B1E9:
	movl      580(%esp), %eax
	movl      $_ZTVN7acommon6StringE+8, 576(%esp)
	addl      $16, %esp
	testl     %eax, %eax
	je        .L0805AAE9
.L0805B206:
	subl      $12, %esp
	pushl     %eax
	call      free
.L0805B20F:
	addl      $16, %esp
	jmp       .L0805AAE9
.L0805B217:
	movl      4, %eax
	ud2       
.L0805B21E:
	leal      4(%ebx), %eax
	movl      %eax, 16(%esp)
	jmp       .L0805AA23
.L0805B22A:
	subl      $12, %esp
	leal      240(%esp), %ebx
	pushl     %ebx
.L0805B235:
	call      _ZNK7acommon6String5c_strEv
.L0805B23A:
	popl      %ebx
	popl      %esi
	pushl     %eax
	movl      128(%esp), %eax
	movl      (%eax), %eax
	pushl     8(%eax)
	call      strcpy
.L0805B24E:
	movl      132(%esp), %eax
	addl      $16, %esp
	movl      (%eax), %eax
	movl      %eax, 116(%esp)
	movl      (%eax), %ebx
	testl     %ebx, %ebx
	jne       .L0805A422
.L0805B268:
	jmp       .L0805AB27
.L0805B26D:
	.p2align 4,,10
	.p2align 3
.L0805B270:
	subl      $12, %esp
	leal      256(%esp), %eax
	pushl     %eax
	jmp       .L0805B235
.L0805B27D:
	leal      112(%esp), %eax
	call      _ZN7acommon11HT_IteratorI9CML_EntryE3incEv.part.104
.L0805B286:
	movl      116(%esp), %ebx
	jmp       .L0805ABE3
.L0805B28F:
	movl      140(%esp), %eax
	subl      136(%esp), %eax
	sarl      $3, %eax
.L0805B2A0:
	subl      $4, %esp
	pushl     $0
	pushl     %eax
	leal      304(%esp), %eax
	pushl     %eax
	call      _ZNSt6vectorIbSaIbEE6resizeEjb
.L0805B2B3:
	movl      164(%esp), %esi
	addl      $16, %esp
	cmpl      152(%esp), %esi
	je        .L0805B430
.L0805B2CA:
	leal      8(%esi), %eax
	subl      $4, %esp
	movl      %eax, 20(%esp)
	movl      %eax, %edi
	pushl     $0
	movl      148(%esp), %eax
	subl      144(%esp), %eax
	sarl      $3, %eax
	pushl     %eax
	pushl     %edi
	call      _ZNSt6vectorIbSaIbEE6resizeEjb
.L0805B2F0:
	popl      %eax
	leal      364(%esp), %eax
	pushl     %eax
	call      _ZN7acommon8ObjStack5resetEv
.L0805B2FE:
	movl      4(%esi), %eax
	movl      $-1, 580(%esp)
	movl      %eax, 576(%esp)
	movl      (%esi), %eax
	movl      $-1, 352(%esp)
	movl      $2147483647, (%esp)
	movl      %eax, 348(%esp)
	leal      368(%esp), %eax
	pushl     %eax
	pushl     %ebp
	leal      356(%esp), %eax
	pushl     %eax
	pushl     56(%esp)
	call      _ZNK8aspeller8Language6expandERKN7acommon10ParmStringES4_RNS1_8ObjStackEi
.L0805B348:
	addl      $32, %esp
	testl     %eax, %eax
	movl      %eax, %ebx
	leal      388(%esp), %edi
	je        .L0805B3DB
.L0805B35C:
	.p2align 4,,10
	.p2align 3
.L0805B360:
	subl      $8, %esp
	movl      %edi, %edx
	pushl     %ebp
	pushl     (%ebx)
	leal      412(%esp), %ecx
	leal      104(%esp), %eax
	call      _ZN7acommon9HashTableI9CML_ParmsE6find_iERKPKcRb.isra.80
.L0805B378:
	movl      108(%esp), %edx
	addl      $16, %esp
	movl      392(%esp), %eax
	cmpb      $0, 560(%esp)
	je        .L0805B392
.L0805B390:
	movl      %edx, %eax
.L0805B392:
	movl      (%eax), %eax
	movl      20(%eax), %ecx
	testl     %ecx, %ecx
	js        .L0805B577
.L0805B39F:
	movl      140(%esp), %eax
	subl      136(%esp), %eax
	sarl      $3, %eax
	cmpl      %eax, %ecx
	jge       .L0805B577
.L0805B3B8:
	movl      8(%esi), %eax
	movl      %ecx, %edx
	movl      12(%ebx), %ebx
	shrl      $5, %edx
	movl      %eax, 12(%esp)
	movl      $1, %eax
	sall      %cl, %eax
	movl      %eax, %ecx
	movl      12(%esp), %eax
	orl       %ecx, (%eax,%edx,4)
	testl     %ebx, %ebx
	jne       .L0805B360
.L0805B3DB:
	leal      28(%esi), %eax
	subl      $8, %esp
	pushl     24(%esp)
	pushl     %eax
	call      _ZNSt6vectorIbSaIbEEaSERKS1_
.L0805B3EB:
	movl      192(%esp), %eax
	movl      %esi, 576(%esp)
	addl      $16, %esp
	cmpl      180(%esp), %eax
	je        .L0805B53A
.L0805B409:
	testl     %eax, %eax
	je        .L0805B416
.L0805B40D:
	movl      %esi, (%eax)
	movl      176(%esp), %eax
.L0805B416:
	addl      $4, %eax
	movl      %eax, 176(%esp)
.L0805B420:
	addl      $48, %esi
	cmpl      %esi, 152(%esp)
	jne       .L0805B2CA
.L0805B430:
	movl      172(%esp), %eax
	movl      %eax, 20(%esp)
	movl      176(%esp), %eax
	movl      %eax, 32(%esp)
.L0805B446:
	movl      32(%esp), %edi
	movl      20(%esp), %esi
	subl      $4, %esp
	movl      %edi, %eax
	subl      %esi, %eax
	sarl      $2, %eax
	movl      %eax, 40(%esp)
	pushl     $0
	pushl     %edi
	pushl     %esi
	call      _ZSt6__sortIN9__gnu_cxx17__normal_iteratorIPP9ExpansionSt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterI9WorkingLtEEEvT_SD_T0_
.L0805B465:
	movl      192(%esp), %eax
	movl      188(%esp), %edi
	movl      %eax, 28(%esp)
	subl      %edi, %eax
	addl      $16, %esp
	sarl      $2, %eax
	testl     %eax, %eax
	je        .L0805B5A0
.L0805B487:
	movl      $1, 32(%esp)
.L0805B48F:
	movl      32(%esp), %eax
	addl      $1073741823, %eax
	leal      0(,%eax,4), %esi
	movl      (%edi,%eax,4), %eax
	movl      %esi, 24(%esp)
	testl     %eax, %eax
	movl      12(%esp), %eax
	je        .L0805B590
.L0805B4B2:
	movl      32(%esp), %ebx
	subl      %edi, %eax
	sarl      $2, %eax
	cmpl      %ebx, %eax
	je        .L0805B5A0
.L0805B4C3:
	movl      24(%esp), %eax
	leal      4(%eax), %esi
	.p2align 4,,10
	.p2align 3
.L0805B4D0:
	leal      (%edi,%esi), %ecx
	movl      (%ecx), %eax
	movl      %ecx, 16(%esp)
	testl     %eax, %eax
	je        .L0805B513
.L0805B4DD:
	movl      24(%esp), %ecx
	addl      $8, %eax
	movl      (%edi,%ecx), %ecx
	leal      8(%ecx), %edx
	movl      %ecx, 20(%esp)
	call      _ZL6subsetRKSt6vectorIbSaIbEES3_
.L0805B4F3:
	testb     %al, %al
	movl      16(%esp), %ecx
	je        .L0805B513
.L0805B4FB:
	movl      $0, (%ecx)
	movl      176(%esp), %eax
	movl      172(%esp), %edi
	movl      %eax, 12(%esp)
.L0805B513:
	movl      12(%esp), %eax
	addl      $1, %ebx
	addl      $4, %esi
	subl      %edi, %eax
	sarl      $2, %eax
	cmpl      %eax, %ebx
	jne       .L0805B4D0
.L0805B526:
	movl      32(%esp), %esi
	cmpl      %eax, %esi
	leal      1(%esi), %edx
	je        .L0805B5A0
.L0805B531:
	movl      %edx, 32(%esp)
	jmp       .L0805B48F
.L0805B53A:
	subl      $4, %esp
	pushl     %ebp
	pushl     %eax
	leal      184(%esp), %eax
	pushl     %eax
	call      _ZNSt6vectorIP9ExpansionSaIS1_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS1_S3_EERKS1_
.L0805B54C:
	addl      $16, %esp
	jmp       .L0805B420
.L0805B554:
	movl      (%eax), %ecx
	movb      $1, 4(%eax)
	subl      $8, %esp
	movl      $-1, %edx
	movl      (%ecx), %eax
	pushl     %edx
	pushl     %eax
	call      _Z11print_errorN7acommon10ParmStringE
.L0805B56B:
	movl      $1, (%esp)
	call      exit
.L0805B577:
	pushl     $_ZZ19munch_list_completebbE19__PRETTY_FUNCTION__
	pushl     $2561
	pushl     $.LC08063C88
	pushl     $.LC080646F8
	call      __assert_fail
.L0805B590:
	movl      32(%esp), %esi
	subl      %edi, %eax
	sarl      $2, %eax
	cmpl      %eax, %esi
	leal      1(%esi), %edx
	jne       .L0805B531
.L0805B5A0:
	movl      184(%esp), %eax
	movl      $0, 20(%esp)
	movl      12(%esp), %ebx
	movl      %eax, 24(%esp)
	movl      %eax, 188(%esp)
	movl      140(%esp), %eax
	movl      %eax, 32(%esp)
	subl      136(%esp), %eax
	sarl      $3, %eax
	testl     %eax, %eax
	je        .L0805B771
.L0805B5DB:
	subl      %edi, %ebx
	sarl      $2, %ebx
	testl     %ebx, %ebx
	je        .L0805B6AD
.L0805B5E8:
	movl      20(%esp), %ecx
	movl      $1, %eax
	movl      %ecx, %esi
	sall      %cl, %eax
	movl      $-1, %ecx
	shrl      $5, %esi
	movl      %eax, 16(%esp)
	movl      %ecx, 12(%esp)
	sall      $2, %esi
	xorl      %eax, %eax
	jmp       .L0805B61F
.L0805B60C:
	.p2align 4,,10
	.p2align 3
.L0805B610:
	movl      $-2, 12(%esp)
.L0805B618:
	addl      $1, %eax
	cmpl      %ebx, %eax
	je        .L0805B644
.L0805B61F:
	movl      (%edi,%eax,4), %edx
	testl     %edx, %edx
	je        .L0805B618
.L0805B626:
	movl      8(%edx), %edx
	movl      16(%esp), %ecx
	testl     %ecx, (%edx,%esi)
	je        .L0805B618
.L0805B632:
	cmpl      $-1, 12(%esp)
	jne       .L0805B610
.L0805B639:
	movl      %eax, 12(%esp)
	addl      $1, %eax
	cmpl      %ebx, %eax
	jne       .L0805B61F
.L0805B644:
	movl      12(%esp), %ecx
	movl      24(%esp), %esi
	testl     %ecx, %ecx
	movl      %esi, %eax
	js        .L0805B67A
.L0805B652:
	cmpl      %esi, 192(%esp)
	movl      %ecx, 560(%esp)
	je        .L0805B91B
.L0805B666:
	testl     %esi, %esi
	je        .L0805B66C
.L0805B66A:
	movl      %ecx, (%esi)
.L0805B66C:
	movl      24(%esp), %eax
	addl      $4, %eax
	movl      %eax, 188(%esp)
.L0805B67A:
	movl      32(%esp), %edx
	subl      136(%esp), %edx
	addl      $1, 20(%esp)
	movl      20(%esp), %esi
	sarl      $3, %edx
	cmpl      %edx, %esi
	je        .L0805B6B3
.L0805B695:
	movl      176(%esp), %ebx
	movl      %eax, 24(%esp)
	subl      %edi, %ebx
	sarl      $2, %ebx
	testl     %ebx, %ebx
	jne       .L0805B5E8
.L0805B6AD:
	movl      24(%esp), %eax
	jmp       .L0805B67A
.L0805B6B3:
	movl      184(%esp), %edx
	xorl      %esi, %esi
	subl      %edx, %eax
	sarl      $2, %eax
	testl     %eax, %eax
	je        .L0805B766
.L0805B6C9:
	movl      %edi, 12(%esp)
.L0805B6CD:
	movl      (%edx,%esi,4), %edi
	movl      12(%esp), %eax
	leal      0(,%edi,4), %ebx
	leal      (%eax,%ebx), %ecx
	movl      (%ecx), %eax
	testl     %eax, %eax
	je        .L0805B74B
.L0805B6E4:
	movl      164(%esp), %edx
	cmpl      168(%esp), %edx
	je        .L0805B8FA
.L0805B6F8:
	testl     %edx, %edx
	je        .L0805B8F3
.L0805B700:
	movl      %eax, (%edx)
	addl      172(%esp), %ebx
	movl      164(%esp), %edx
.L0805B710:
	addl      $4, %edx
	movl      %edx, 164(%esp)
.L0805B71A:
	movl      (%ebx), %edx
	leal      292(%esp), %eax
	addl      $8, %edx
	call      _ZL5mergeRSt6vectorIbSaIbEERKS1_
.L0805B72B:
	movl      172(%esp), %eax
	movl      $0, (%eax,%edi,4)
	movl      172(%esp), %eax
	movl      184(%esp), %edx
	movl      %eax, 12(%esp)
.L0805B74B:
	movl      188(%esp), %eax
	addl      $1, %esi
	subl      %edx, %eax
	sarl      $2, %eax
	cmpl      %eax, %esi
	jne       .L0805B6CD
.L0805B762:
	movl      12(%esp), %edi
.L0805B766:
	movl      176(%esp), %eax
	movl      %eax, 12(%esp)
.L0805B771:
	movl      12(%esp), %eax
	subl      %edi, %eax
	sarl      $2, %eax
	testl     %eax, %eax
	je        .L0805B94E
.L0805B782:
	xorl      %ebx, %ebx
.L0805B784:
	leal      (%edi,%ebx,4), %esi
	movl      (%esi), %eax
	testl     %eax, %eax
	je        .L0805B7B8
.L0805B78D:
	leal      292(%esp), %edx
	addl      $8, %eax
	call      _ZL6subsetRKSt6vectorIbSaIbEES3_
.L0805B79C:
	testb     %al, %al
	je        .L0805B7B8
.L0805B7A0:
	movl      $0, (%esi)
	movl      176(%esp), %eax
	movl      172(%esp), %edi
	movl      %eax, 12(%esp)
.L0805B7B8:
	movl      12(%esp), %eax
	addl      $1, %ebx
	subl      %edi, %eax
	sarl      $2, %eax
	cmpl      %eax, %ebx
	jne       .L0805B784
.L0805B7C8:
	testl     %ebx, %ebx
	je        .L0805B94E
.L0805B7D0:
	movl      12(%esp), %ebx
	xorl      %eax, %eax
	xorl      %ecx, %ecx
.L0805B7D8:
	movl      (%edi,%eax,4), %edx
	testl     %edx, %edx
	je        .L0805B7F3
.L0805B7DF:
	movl      %edx, (%edi,%ecx,4)
	movl      172(%esp), %edi
	addl      $1, %ecx
	movl      176(%esp), %ebx
.L0805B7F3:
	movl      %ebx, %edx
	addl      $1, %eax
	subl      %edi, %edx
	sarl      $2, %edx
	cmpl      %edx, %eax
	jne       .L0805B7D8
.L0805B801:
	cmpl      %eax, %ecx
	movl      %ebx, 12(%esp)
	movl      $0, 100(%esp)
	ja        .L0805B963
.L0805B815:
	jae       .L0805B956
.L0805B81B:
	leal      (%edi,%ecx,4), %eax
	movl      %eax, 176(%esp)
	movl      %eax, 32(%esp)
.L0805B829:
	movl      32(%esp), %eax
	movl      %edi, 20(%esp)
	subl      %edi, %eax
	sarl      $2, %eax
	testl     %eax, %eax
	movl      %eax, 24(%esp)
	je        .L0805B848
.L0805B83E:
	cmpl      %eax, 36(%esp)
	je        .L0805B996
.L0805B848:
	movl      24(%esp), %edi
	testl     %edi, %edi
	je        .L0805BA33
.L0805B854:
	movl      292(%esp), %esi
	movl      304(%esp), %eax
	movl      300(%esp), %edx
	subl      296(%esp), %eax
	movl      $0, 12(%esp)
	subl      %esi, %edx
	leal      (%eax,%edx,8), %ebx
.L0805B87D:
	movl      12(%esp), %edi
	movl      20(%esp), %eax
	movl      (%eax,%edi,4), %eax
	movl      8(%eax), %edi
	movl      20(%eax), %edx
	subl      12(%eax), %edx
	movl      16(%eax), %eax
	movl      %edi, 16(%esp)
	subl      %edi, %eax
	leal      (%edx,%eax,8), %eax
	cmpl      %ebx, %eax
	jne       .L0805BB45
.L0805B8A5:
	xorl      %ecx, %ecx
	testl     %ebx, %ebx
	jne       .L0805B8B7
.L0805B8AB:
	jmp       .L0805B8DF
.L0805B8AD:
	.p2align 4,,10
	.p2align 3
.L0805B8B0:
	addl      $1, %ecx
	cmpl      %ebx, %ecx
	je        .L0805B8DF
.L0805B8B7:
	movl      %ecx, %eax
	movl      $1, %edi
	shrl      $5, %eax
	sall      %cl, %edi
	testl     %edi, (%esi,%eax,4)
	leal      0(,%eax,4), %edx
	je        .L0805B8B0
.L0805B8CF:
	movl      16(%esp), %eax
	addl      $1, %ecx
	notl      %edi
	andl      %edi, (%eax,%edx)
	cmpl      %ebx, %ecx
	jne       .L0805B8B7
.L0805B8DF:
	addl      $1, 12(%esp)
	movl      12(%esp), %eax
	cmpl      24(%esp), %eax
	jne       .L0805B87D
.L0805B8EE:
	jmp       .L0805B446
.L0805B8F3:
	movl      %ecx, %ebx
	jmp       .L0805B710
.L0805B8FA:
	subl      $4, %esp
	pushl     %ecx
	pushl     %edx
	leal      172(%esp), %eax
	pushl     %eax
	call      _ZNSt6vectorIP9ExpansionSaIS1_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS1_S3_EERKS1_
.L0805B90C:
	addl      188(%esp), %ebx
	addl      $16, %esp
	jmp       .L0805B71A
.L0805B91B:
	subl      $4, %esp
	pushl     %ebp
	pushl     %esi
	leal      196(%esp), %eax
	pushl     %eax
	call      _ZNSt6vectorIjSaIjEE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPjS1_EERKj
.L0805B92D:
	movl      204(%esp), %eax
	movl      188(%esp), %edi
	addl      $16, %esp
	movl      140(%esp), %esi
	movl      %esi, 32(%esp)
	jmp       .L0805B67A
.L0805B94E:
	movl      $0, 100(%esp)
.L0805B956:
	movl      12(%esp), %eax
	movl      %eax, 32(%esp)
	jmp       .L0805B829
.L0805B963:
	leal      100(%esp), %edx
	subl      %eax, %ecx
	pushl     %edx
	pushl     %ecx
	pushl     20(%esp)
	leal      184(%esp), %eax
	pushl     %eax
	call      _ZNSt6vectorIP9ExpansionSaIS1_EE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPS1_S3_EEjRKS1_
.L0805B97C:
	movl      192(%esp), %eax
	movl      %eax, 48(%esp)
	addl      $16, %esp
	movl      172(%esp), %edi
	jmp       .L0805B829
.L0805B996:
	movl      164(%esp), %eax
	cmpl      168(%esp), %eax
	je        .L0805C5C3
.L0805B9AA:
	testl     %eax, %eax
	je        .L0805C5BC
.L0805B9B2:
	movl      (%edi), %edx
	movl      %edx, (%eax)
	movl      164(%esp), %eax
	movl      172(%esp), %edx
.L0805B9C4:
	addl      $4, %eax
	movl      %eax, 164(%esp)
.L0805B9CE:
	movl      (%edx), %edx
	leal      292(%esp), %eax
	addl      $8, %edx
	call      _ZL5mergeRSt6vectorIbSaIbEERKS1_
.L0805B9DF:
	movl      172(%esp), %ebx
	movl      176(%esp), %edx
	leal      4(%ebx), %esi
	cmpl      %edx, %esi
	je        .L0805C5B1
.L0805B9F8:
	movl      %edx, %eax
	movl      %ebx, 20(%esp)
	subl      %esi, %eax
	movl      %eax, %edx
	sarl      $2, %edx
	testl     %edx, %edx
	jne       .L0805C58A
.L0805BA0D:
	addl      %ebx, %eax
	movl      %eax, %edx
	subl      20(%esp), %edx
	movl      %eax, 176(%esp)
	movl      %eax, 32(%esp)
	sarl      $2, %edx
	movl      %edx, 24(%esp)
	movl      24(%esp), %edi
	testl     %edi, %edi
	jne       .L0805B854
.L0805BA33:
	cmpb      $0, 79(%esp)
	jne       .L0805BB80
.L0805BA3E:
	movl      160(%esp), %edx
	movl      164(%esp), %eax
	xorl      %ebx, %ebx
	leal      484(%esp), %esi
	subl      %edx, %eax
	sarl      $2, %eax
	testl     %eax, %eax
	jne       .L0805BA99
.L0805BA5E:
	jmp       .L0805C00E
.L0805BA63:
	.p2align 4,,10
	.p2align 3
.L0805BA68:
	subl      $8, %esp
	pushl     _ZN7acommon4COUTE+12
	addl      $1, %ebx
	pushl     $10
	call      _IO_putc
.L0805BA7B:
	movl      176(%esp), %edx
	movl      180(%esp), %eax
	addl      $16, %esp
	subl      %edx, %eax
	sarl      $2, %eax
	cmpl      %eax, %ebx
	je        .L0805C00E
.L0805BA99:
	movl      (%edx,%ebx,4), %eax
	subl      $8, %esp
	movl      (%eax), %eax
	movl      $-1, 344(%esp)
	movl      %eax, 340(%esp)
	leal      340(%esp), %eax
	pushl     %eax
	pushl     %esi
	call      _ZN7acommon5ConvPclERKNS_10ParmStringE
.L0805BAC1:
	movl      $-1, 580(%esp)
	movl      %eax, 576(%esp)
	popl      %ecx
	popl      %edi
	pushl     %ebp
	pushl     $_ZN7acommon4COUTE
	call      _ZN7acommon7FStreamlsERKNS_10ParmStringE
.L0805BAE0:
	movl      176(%esp), %eax
	addl      $16, %esp
	movl      (%eax,%ebx,4), %eax
	movl      4(%eax), %eax
	cmpb      $0, (%eax)
	je        .L0805BA68
.L0805BAF9:
	subl      $8, %esp
	pushl     _ZN7acommon4COUTE+12
	pushl     $47
	call      _IO_putc
.L0805BB09:
	popl      %edi
	popl      %eax
	movl      168(%esp), %eax
	movl      (%eax,%ebx,4), %eax
	pushl     4(%eax)
	pushl     %esi
	call      _ZN7acommon5ConvPclEPc
.L0805BB1E:
	movl      $-1, 580(%esp)
	movl      %eax, 576(%esp)
	popl      %eax
	popl      %edx
	pushl     %ebp
	pushl     $_ZN7acommon4COUTE
	call      _ZN7acommon7FStreamlsERKNS_10ParmStringE
.L0805BB3D:
	addl      $16, %esp
	jmp       .L0805BA68
.L0805BB45:
	pushl     $_ZZL5purgeRSt6vectorIbSaIbEERKS1_E19__PRETTY_FUNCTION__
	pushl     $2231
	pushl     $.LC08063C88
	pushl     $.LC08063CF1
	call      __assert_fail
.L0805BB5E:
	subl      $4, %esp
	leal      336(%esp), %eax
	pushl     %eax
	pushl     %ecx
	leal      148(%esp), %eax
	pushl     %eax
	call      _ZNSt6vectorIN7acommon11HT_IteratorI9CML_EntryEESaIS3_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS3_S5_EERKS3_
.L0805BB77:
	addl      $16, %esp
	jmp       .L0805AD64
.L0805BB7F:
	.p2align 4,,10
	.p2align 3
.L0805BB80:
	movl      164(%esp), %edx
	movl      160(%esp), %eax
	movl      %edx, %ecx
	subl      %eax, %ecx
	sarl      $2, %ecx
	testl     %ecx, %ecx
	je        .L0805BBCD
.L0805BB99:
	xorl      %ebx, %ebx
.L0805BB9B:
	movl      (%eax,%ebx,4), %eax
	subl      $8, %esp
	addl      $1, %ebx
	leal      28(%eax), %edx
	addl      $8, %eax
	pushl     %edx
	pushl     %eax
	call      _ZNSt6vectorIbSaIbEEaSERKS1_
.L0805BBB1:
	movl      180(%esp), %edx
	movl      176(%esp), %eax
	addl      $16, %esp
	movl      %edx, %ecx
	subl      %eax, %ecx
	sarl      $2, %ecx
	cmpl      %ecx, %ebx
	jne       .L0805BB9B
.L0805BBCD:
	subl      $4, %esp
	pushl     $0
	pushl     %edx
	pushl     %eax
	call      _ZSt6__sortIN9__gnu_cxx17__normal_iteratorIPP9ExpansionSt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterI9WorkingLtEEEvT_SD_T0_
.L0805BBD9:
	movb      $0, 348(%esp)
	pushl     %ebp
	leal      352(%esp), %eax
	pushl     %eax
	movl      164(%esp), %eax
	subl      160(%esp), %eax
	sarl      $3, %eax
	pushl     %eax
	leal      340(%esp), %eax
	pushl     %eax
	call      _ZNSt6vectorIbSaIbEEC1EjRKbRKS0_
.L0805BC09:
	movb      $0, 308(%esp)
	addl      $32, %esp
	pushl     %ebp
	leal      280(%esp), %eax
	movl      %eax, 52(%esp)
	movl      %eax, %esi
	pushl     %eax
	movl      148(%esp), %eax
	subl      144(%esp), %eax
	sarl      $3, %eax
	pushl     %eax
	leal      344(%esp), %eax
	pushl     %eax
	call      _ZNSt6vectorIbSaIbEEC1EjRKbRKS0_
.L0805BC42:
	movb      $0, 276(%esp)
	pushl     %esi
	leal      280(%esp), %eax
	movl      %eax, 56(%esp)
	pushl     %eax
	movl      164(%esp), %eax
	subl      160(%esp), %eax
	sarl      $3, %eax
	pushl     %eax
	pushl     %ebp
	call      _ZNSt6vectorIbSaIbEEC1EjRKbRKS0_
.L0805BC6F:
	movl      196(%esp), %eax
	subl      192(%esp), %eax
	movl      $_ZTVN7acommon6StringE+8, 292(%esp)
	movl      $0, 296(%esp)
	movl      $0, 300(%esp)
	movl      $0, 304(%esp)
	addl      $32, %esp
	sarl      $2, %eax
	testl     %eax, %eax
	je        .L0805C531
.L0805BCB7:
	movl      $0, 44(%esp)
.L0805BCBF:
	subl      $8, %esp
	leal      320(%esp), %eax
	pushl     %eax
	leal      344(%esp), %eax
	pushl     %eax
	call      _ZNSt6vectorIbSaIbEEaSERKS1_
.L0805BCD7:
	movl      60(%esp), %edi
	movl      %edi, %eax
	sall      $2, %eax
	movl      %eax, 56(%esp)
	movl      176(%esp), %eax
	movl      (%eax,%edi,4), %edx
	leal      328(%esp), %eax
	addl      $8, %edx
	call      _ZL5mergeRSt6vectorIbSaIbEERKS1_
.L0805BCFD:
	movl      176(%esp), %eax
	movl      (%eax,%edi,4), %eax
	movl      4(%eax), %eax
	movl      $_ZTVN7acommon6StringE+8, 292(%esp)
	popl      %ebx
	popl      %esi
	pushl     %eax
	pushl     60(%esp)
	call      _ZN7acommon6String11assign_onlyEPKc
.L0805BD21:
	addl      $16, %esp
.L0805BD24:
	movl      $0, 24(%esp)
	.p2align 4,,10
	.p2align 3
.L0805BD30:
	movl      284(%esp), %edx
	movl      280(%esp), %edi
	movl      %edx, %eax
	subl      %edi, %eax
	cmpl      %eax, 24(%esp)
	je        .L0805C45F
.L0805BD4C:
	movl      24(%esp), %ecx
	movl      264(%esp), %edx
	testl     %ecx, %ecx
	movl      %edx, 268(%esp)
	je        .L0805C3F0
.L0805BD66:
	movl      272(%esp), %eax
	subl      %edx, %eax
	cmpl      %eax, 24(%esp)
	jge       .L0805C440
.L0805BD79:
	subl      $4, %esp
	movl      28(%esp), %esi
	pushl     %esi
	pushl     %edi
	pushl     %edx
	call      memmove
.L0805BD88:
	movl      280(%esp), %edx
	movl      296(%esp), %edi
	movl      300(%esp), %eax
	leal      (%edx,%esi), %ecx
	subl      %edi, %eax
	movl      %ecx, 284(%esp)
	addl      $16, %esp
.L0805BDAC:
	movl      24(%esp), %ebx
	addl      $1, 24(%esp)
	notl      %ebx
	addl      %eax, %ebx
	movl      272(%esp), %eax
	addl      %ebx, %esi
	subl      %edx, %eax
	cmpl      %eax, %esi
	jge       .L0805C3F9
.L0805BDCC:
	testl     %ebx, %ebx
	je        .L0805BDE9
.L0805BDD0:
	addl      24(%esp), %edi
	subl      $4, %esp
	pushl     %ebx
	pushl     %edi
	pushl     %ecx
	call      memcpy
.L0805BDDF:
	movl      284(%esp), %ecx
	addl      $16, %esp
.L0805BDE9:
	addl      %ebx, %ecx
	subl      $8, %esp
	movl      %ecx, 276(%esp)
	leal      340(%esp), %eax
	pushl     %eax
	pushl     %ebp
	call      _ZNSt6vectorIbSaIbEEaSERKS1_
.L0805BE03:
	popl      %eax
	leal      364(%esp), %eax
	pushl     %eax
	call      _ZN7acommon8ObjStack5resetEv
.L0805BE11:
	popl      %eax
	pushl     48(%esp)
	call      _ZNK7acommon6String5c_strEv
.L0805BE1B:
	movl      %eax, 144(%esp)
	movl      284(%esp), %eax
	subl      280(%esp), %eax
	movl      56(%esp), %esi
	movl      %eax, 148(%esp)
	movl      176(%esp), %eax
	movl      (%eax,%esi), %eax
	movl      (%eax), %eax
	movl      $-1, 140(%esp)
	movl      %eax, 136(%esp)
	movl      44(%esp), %eax
	addl      $16, %esp
	movl      6044(%eax), %eax
	testl     %eax, %eax
	je        .L0805C415
.L0805BE6E:
	subl      $4, %esp
	pushl     $2147483647
	leal      360(%esp), %esi
	pushl     %esi
	pushl     144(%esp)
	pushl     144(%esp)
	pushl     144(%esp)
	pushl     144(%esp)
	pushl     %eax
	call      _ZNK8aspeller8AffixMgr6expandEN7acommon10ParmStringES2_RNS1_8ObjStackEi
.L0805BEA0:
	addl      $32, %esp
	movl      %eax, %ebx
.L0805BEA5:
	testl     %ebx, %ebx
	movl      560(%esp), %eax
	je        .L0805BF2F
.L0805BEB0:
	leal      88(%esp), %eax
	leal      388(%esp), %edi
	movl      $1, %esi
	movl      %eax, 16(%esp)
	leal      396(%esp), %eax
	movl      %edi, 20(%esp)
	movl      %eax, 12(%esp)
	.p2align 4,,10
	.p2align 3
.L0805BED8:
	subl      $8, %esp
	leal      136(%esp), %eax
	pushl     %eax
	pushl     (%ebx)
	movl      36(%esp), %edx
	movl      28(%esp), %ecx
	movl      32(%esp), %eax
	call      _ZN7acommon9HashTableI9CML_ParmsE6find_iERKPKcRb.isra.80
.L0805BEF6:
	movl      108(%esp), %edx
	addl      $16, %esp
	movl      392(%esp), %eax
	cmpb      $0, 128(%esp)
	je        .L0805BF10
.L0805BF0E:
	movl      %edx, %eax
.L0805BF10:
	movl      (%eax), %eax
	movl      12(%ebx), %ebx
	movl      %esi, %edi
	movl      20(%eax), %ecx
	movl      560(%esp), %eax
	movl      %ecx, %edx
	sall      %cl, %edi
	shrl      $5, %edx
	orl       %edi, (%eax,%edx,4)
	testl     %ebx, %ebx
	jne       .L0805BED8
.L0805BF2F:
	movl      572(%esp), %esi
	movl      568(%esp), %edi
	movl      564(%esp), %edx
	movl      316(%esp), %ebx
	movl      %edi, 16(%esp)
	movl      %esi, %ecx
	movl      %esi, 32(%esp)
	movl      16(%esp), %esi
	subl      %edx, %ecx
	movl      312(%esp), %edi
	subl      %eax, %esi
	leal      (%ecx,%esi,8), %esi
	movl      324(%esp), %ecx
	movl      %esi, 12(%esp)
	movl      320(%esp), %esi
	subl      %ebx, %ecx
	subl      %edi, %esi
	leal      (%ecx,%esi,8), %ecx
	cmpl      %ecx, 12(%esp)
	jne       .L0805BD30
.L0805BF8A:
	movl      $1, %esi
	movl      %edi, 20(%esp)
	jmp       .L0805BFDC
.L0805BF95:
	.p2align 4,,10
	.p2align 3
.L0805BF98:
	movl      %edx, %ecx
	movl      %esi, %edi
	sall      %cl, %edi
	testl     %edi, (%eax)
	movl      %ebx, %ecx
	movl      %esi, %edi
	setne     12(%esp)
	sall      %cl, %edi
	movl      %edi, %ecx
	movl      20(%esp), %edi
	testl     %ecx, (%edi)
	setne     %cl
	cmpb      %cl, 12(%esp)
	jne       .L0805BD30
.L0805BFC0:
	cmpl      $31, %edx
	leal      1(%edx), %ecx
	je        .L0805C3D0
.L0805BFCC:
	cmpl      $31, %ebx
	movl      %ecx, %edx
	leal      1(%ebx), %ecx
	je        .L0805C3E1
.L0805BFDA:
	movl      %ecx, %ebx
.L0805BFDC:
	cmpl      %eax, 16(%esp)
	jne       .L0805BF98
.L0805BFE2:
	cmpl      %edx, 32(%esp)
	jne       .L0805BF98
.L0805BFE8:
	movl      264(%esp), %edx
	subl      $4, %esp
	movl      272(%esp), %eax
	subl      %edx, %eax
	pushl     %eax
	pushl     %edx
	pushl     60(%esp)
	call      _ZN7acommon6String6assignEPKcj
.L0805C006:
	addl      $16, %esp
	jmp       .L0805BD24
.L0805C00E:
	movl      304(%esp), %edx
	movl      300(%esp), %edi
	movl      292(%esp), %eax
	movl      %edx, %ecx
	subl      296(%esp), %ecx
	movl      %edi, %ebx
	subl      %eax, %ebx
	leal      (%ecx,%ebx,8), %ecx
	xorl      %ebx, %ebx
	testl     %ecx, %ecx
	jne       .L0805C0A8
.L0805C039:
	jmp       .L0805C0F6
.L0805C03E:
	.p2align 4,,10
	.p2align 3
.L0805C040:
	movl      4(%eax), %eax
	subl      $8, %esp
	movl      $-1, 572(%esp)
	movl      %eax, 568(%esp)
	pushl     %ebp
	leal      496(%esp), %eax
	pushl     %eax
	call      _ZN7acommon5ConvPclERKNS_10ParmStringE
.L0805C066:
	addl      $12, %esp
	pushl     %eax
	pushl     $.LC08063E25
	pushl     $_ZN7acommon4COUTE+8
	call      _ZN7acommon7OStream6printfEPKcz
.L0805C079:
	addl      $16, %esp
	movl      292(%esp), %eax
	movl      304(%esp), %edx
	movl      300(%esp), %edi
.L0805C091:
	movl      %edx, %ecx
	subl      296(%esp), %ecx
	movl      %edi, %esi
	subl      %eax, %esi
	addl      $1, %ebx
	leal      (%ecx,%esi,8), %ecx
	cmpl      %ecx, %ebx
	je        .L0805C0F6
.L0805C0A8:
	movl      %ebx, %esi
	movl      %ebx, %ecx
	shrl      $5, %esi
	movl      %esi, 12(%esp)
	movl      $1, %esi
	sall      %cl, %esi
	movl      %esi, %ecx
	movl      12(%esp), %esi
	testl     %ecx, (%eax,%esi,4)
	jne       .L0805C091
.L0805C0C5:
	movl      136(%esp), %eax
	movl      4(%eax,%ebx,8), %eax
	movl      (%eax), %eax
	movl      8(%eax), %ecx
	testl     %ecx, %ecx
	je        .L0805C040
.L0805C0DD:
	pushl     $_ZZ19munch_list_completebbE19__PRETTY_FUNCTION__
	pushl     $2725
	pushl     $.LC08063C88
	pushl     $.LC08064019
	call      __assert_fail
.L0805C0F6:
	movl      184(%esp), %eax
	testl     %eax, %eax
	je        .L0805C10D
.L0805C101:
	subl      $12, %esp
	pushl     %eax
	call      _ZdlPv
.L0805C10A:
	addl      $16, %esp
.L0805C10D:
	movl      172(%esp), %eax
	testl     %eax, %eax
	je        .L0805C124
.L0805C118:
	subl      $12, %esp
	pushl     %eax
	call      _ZdlPv
.L0805C121:
	addl      $16, %esp
.L0805C124:
	movl      292(%esp), %eax
	testl     %eax, %eax
	je        .L0805C13B
.L0805C12F:
	subl      $12, %esp
	pushl     %eax
	call      _ZdlPv
.L0805C138:
	addl      $16, %esp
.L0805C13B:
	movl      160(%esp), %eax
	testl     %eax, %eax
	je        .L0805C152
.L0805C146:
	subl      $12, %esp
	pushl     %eax
	call      _ZdlPv
.L0805C14F:
	addl      $16, %esp
.L0805C152:
	movl      152(%esp), %esi
	movl      148(%esp), %ebx
	cmpl      %ebx, %esi
	je        .L0805C198
.L0805C164:
	movl      28(%ebx), %eax
	testl     %eax, %eax
	je        .L0805C177
.L0805C16B:
	subl      $12, %esp
	pushl     %eax
	call      _ZdlPv
.L0805C174:
	addl      $16, %esp
.L0805C177:
	movl      8(%ebx), %eax
	testl     %eax, %eax
	je        .L0805C18A
.L0805C17E:
	subl      $12, %esp
	pushl     %eax
	call      _ZdlPv
.L0805C187:
	addl      $16, %esp
.L0805C18A:
	addl      $48, %ebx
	cmpl      %ebx, %esi
	jne       .L0805C164
.L0805C191:
	movl      148(%esp), %esi
.L0805C198:
	testl     %esi, %esi
	je        .L0805C1A8
.L0805C19C:
	subl      $12, %esp
	pushl     %esi
	call      _ZdlPv
.L0805C1A5:
	addl      $16, %esp
.L0805C1A8:
	movl      136(%esp), %eax
	testl     %eax, %eax
	je        .L0805C1BF
.L0805C1B3:
	subl      $12, %esp
	pushl     %eax
	call      _ZdlPv
.L0805C1BC:
	addl      $16, %esp
.L0805C1BF:
	movl      116(%esp), %eax
	movl      (%eax), %eax
	movl      %eax, 116(%esp)
	movl      (%eax), %edx
	testl     %edx, %edx
	jne       .L0805AC1F
.L0805C1D3:
	leal      112(%esp), %eax
	call      _ZN7acommon11HT_IteratorI9CML_EntryE3incEv.part.104
.L0805C1DC:
	movl      116(%esp), %eax
	cmpl      %eax, 72(%esp)
	jne       .L0805AC29
.L0805C1EA:
	movl      388(%esp), %eax
	movl      (%eax), %edi
	testl     %edi, %edi
	jne       .L0805C206
.L0805C1F7:
	leal      4(%eax), %edx
.L0805C1FA:
	movl      %edx, %eax
	addl      $4, %edx
	movl      -4(%edx), %esi
	testl     %esi, %esi
	je        .L0805C1FA
.L0805C206:
	movl      %eax, 112(%esp)
	movl      %eax, 116(%esp)
	jmp       .L0805C245
.L0805C210:
	movl      (%eax), %edx
	movl      8(%edx), %ecx
	testl     %ecx, %ecx
	je        .L0805C22E
.L0805C219:
	subl      $12, %esp
	pushl     %ecx
	call      free
.L0805C222:
	movl      132(%esp), %eax
	addl      $16, %esp
	movl      (%eax), %edx
.L0805C22E:
	movl      $0, 8(%edx)
	movl      (%eax), %eax
	movl      %eax, 116(%esp)
	movl      (%eax), %ebx
	testl     %ebx, %ebx
	je        .L0805C63E
.L0805C245:
	cmpl      %eax, 72(%esp)
	jne       .L0805C210
.L0805C24B:
	movl      248(%esp), %eax
	movl      $_ZTVN7acommon6StringE+8, 244(%esp)
	testl     %eax, %eax
	je        .L0805C26D
.L0805C261:
	subl      $12, %esp
	pushl     %eax
	call      free
.L0805C26A:
	addl      $16, %esp
.L0805C26D:
	movl      232(%esp), %eax
	movl      $_ZTVN7acommon6StringE+8, 228(%esp)
	testl     %eax, %eax
	je        .L0805C28F
.L0805C283:
	subl      $12, %esp
	pushl     %eax
	call      free
.L0805C28C:
	addl      $16, %esp
.L0805C28F:
	subl      $12, %esp
	leal      428(%esp), %eax
	pushl     %eax
	call      _ZN7acommon8ObjStackD1Ev
.L0805C29F:
	movl      404(%esp), %ecx
	movl      408(%esp), %ebx
	addl      $16, %esp
	cmpl      %ebx, %ecx
	je        .L0805C2C9
.L0805C2B4:
	movl      %ecx, %eax
.L0805C2B6:
	movl      (%eax), %edx
	testl     %edx, %edx
	je        .L0805C2C2
.L0805C2BC:
	movl      (%edx), %edx
	testl     %edx, %edx
	jne       .L0805C2BC
.L0805C2C2:
	addl      $4, %eax
	cmpl      %ebx, %eax
	jne       .L0805C2B6
.L0805C2C9:
	subl      $12, %esp
	pushl     %ecx
	call      free
.L0805C2D2:
	movl      420(%esp), %eax
	movl      $0, 400(%esp)
	addl      $16, %esp
	testl     %eax, %eax
	je        .L0805C2FF
.L0805C2EB:
	movl      (%eax), %ebx
	subl      $12, %esp
	pushl     %eax
	call      free
.L0805C2F6:
	addl      $16, %esp
	testl     %ebx, %ebx
	movl      %ebx, %eax
	jne       .L0805C2EB
.L0805C2FF:
	subl      $12, %esp
	leal      540(%esp), %eax
	pushl     %eax
	call      _ZN7acommon8ObjStackD1Ev
.L0805C30F:
	popl      %ecx
	leal      364(%esp), %eax
	pushl     %eax
	call      _ZN7acommon8ObjStackD1Ev
.L0805C31D:
	movl      232(%esp), %eax
	movl      $_ZTVN7acommon6StringE+8, 228(%esp)
	addl      $16, %esp
	testl     %eax, %eax
	je        .L0805C342
.L0805C336:
	subl      $12, %esp
	pushl     %eax
	call      free
.L0805C33F:
	addl      $16, %esp
.L0805C342:
	movl      200(%esp), %eax
	movl      $_ZTVN7acommon6StringE+8, 196(%esp)
	testl     %eax, %eax
	je        .L0805C364
.L0805C358:
	subl      $12, %esp
	pushl     %eax
	call      free
.L0805C361:
	addl      $16, %esp
.L0805C364:
	subl      $12, %esp
	leal      528(%esp), %eax
	leal      496(%esp), %ebx
	pushl     %eax
	call      _ZN7acommon7ConvObjD1Ev
.L0805C37B:
	movl      %ebx, (%esp)
	call      _ZN7acommon5ConvPD1Ev
.L0805C383:
	popl      %eax
	leal      492(%esp), %eax
	leal      460(%esp), %ebx
	pushl     %eax
	call      _ZN7acommon7ConvObjD1Ev
.L0805C398:
	movl      %ebx, (%esp)
	call      _ZN7acommon5ConvPD1Ev
.L0805C3A0:
	popl      %edx
	leal      116(%esp), %eax
	pushl     %eax
	call      _ZN7acommon12PosibErrBase7destroyEv
.L0805C3AB:
	addl      $16, %esp
	movl      28(%esp), %eax
	testl     %eax, %eax
	je        .L0805C3C5
.L0805C3B6:
	subl      $8, %esp
	pushl     %eax
	pushl     16(%eax)
	call      _ZN7acommon18release_cache_dataEPNS_15GlobalCacheBaseEPKNS_9CacheableE
.L0805C3C2:
	addl      $16, %esp
.L0805C3C5:
	addl      $620, %esp
	popl      %ebx
	popl      %esi
	popl      %edi
	popl      %ebp
	ret       
.L0805C3D0:
	addl      $4, %eax
	xorb      %dl, %dl
	cmpl      $31, %ebx
	leal      1(%ebx), %ecx
	jne       .L0805BFDA
.L0805C3E1:
	addl      $4, 20(%esp)
	xorb      %bl, %bl
	jmp       .L0805BFDC
.L0805C3ED:
	.p2align 4,,10
	.p2align 3
.L0805C3F0:
	movl      %edx, %ecx
	xorl      %esi, %esi
	jmp       .L0805BDAC
.L0805C3F9:
	subl      $8, %esp
	pushl     %esi
	pushl     48(%esp)
	call      _ZN7acommon6String9reserve_iEj
.L0805C406:
	movl      284(%esp), %ecx
	addl      $16, %esp
	jmp       .L0805BDCC
.L0805C415:
	leal      352(%esp), %eax
	pushl     %eax
	leal      132(%esp), %eax
	pushl     %eax
	leal      128(%esp), %eax
	pushl     %eax
	pushl     40(%esp)
	call      _ZNK8aspeller8Language11fake_expandERKN7acommon10ParmStringES4_RNS1_8ObjStackE
.L0805C436:
	addl      $16, %esp
	movl      %eax, %ebx
	jmp       .L0805BEA5
.L0805C440:
	subl      $8, %esp
	pushl     32(%esp)
	pushl     48(%esp)
	call      _ZN7acommon6String9reserve_iEj
.L0805C450:
	movl      280(%esp), %edx
	addl      $16, %esp
	jmp       .L0805BD79
.L0805C45F:
	movl      160(%esp), %eax
	movl      40(%esp), %esi
	testl     %edi, %edi
	movl      (%eax,%esi), %eax
	movl      4(%eax), %eax
	je        .L0805C580
.L0805C478:
	movb      $0, (%edx)
	movl      280(%esp), %edx
	movl      %edx, %edi
.L0805C484:
	subl      $8, %esp
	pushl     %eax
	pushl     %edx
	call      strcmp
.L0805C48E:
	addl      $16, %esp
	testl     %eax, %eax
	je        .L0805C4D2
.L0805C495:
	movl      284(%esp), %ebx
	subl      $12, %esp
	pushl     60(%esp)
	subl      %edi, %ebx
	call      _ZNK7acommon6String5c_strEv
.L0805C4AA:
	movl      176(%esp), %edx
	movl      56(%esp), %edi
	addl      $1, %ebx
	addl      $12, %esp
	movl      (%edx,%edi), %edx
	pushl     %ebx
	pushl     %eax
	pushl     4(%edx)
	call      memcpy
.L0805C4C8:
	movl      296(%esp), %edi
	addl      $16, %esp
.L0805C4D2:
	testl     %edi, %edi
	movl      $_ZTVN7acommon6StringE+8, 276(%esp)
	je        .L0805C4ED
.L0805C4E1:
	subl      $12, %esp
	pushl     %edi
	call      free
.L0805C4EA:
	addl      $16, %esp
.L0805C4ED:
	movl      164(%esp), %eax
	subl      160(%esp), %eax
	addl      $1, 44(%esp)
	movl      44(%esp), %esi
	sarl      $2, %eax
	cmpl      %eax, %esi
	jne       .L0805BCBF
.L0805C50F:
	movl      264(%esp), %eax
	movl      $_ZTVN7acommon6StringE+8, 260(%esp)
	testl     %eax, %eax
	je        .L0805C531
.L0805C525:
	subl      $12, %esp
	pushl     %eax
	call      free
.L0805C52E:
	addl      $16, %esp
.L0805C531:
	movl      560(%esp), %eax
	testl     %eax, %eax
	je        .L0805C548
.L0805C53C:
	subl      $12, %esp
	pushl     %eax
	call      _ZdlPv
.L0805C545:
	addl      $16, %esp
.L0805C548:
	movl      332(%esp), %eax
	testl     %eax, %eax
	je        .L0805C55F
.L0805C553:
	subl      $12, %esp
	pushl     %eax
	call      _ZdlPv
.L0805C55C:
	addl      $16, %esp
.L0805C55F:
	movl      312(%esp), %eax
	testl     %eax, %eax
	je        .L0805BA3E
.L0805C56E:
	subl      $12, %esp
	pushl     %eax
	call      _ZdlPv
.L0805C577:
	addl      $16, %esp
	jmp       .L0805BA3E
.L0805C57F:
	.p2align 4,,10
	.p2align 3
.L0805C580:
	movl      $.LC08063D11, %edx
	jmp       .L0805C484
.L0805C58A:
	subl      $4, %esp
	pushl     %eax
	pushl     %esi
	pushl     %ebx
	call      memmove
.L0805C595:
	movl      192(%esp), %eax
	movl      188(%esp), %edi
	subl      %esi, %eax
	movl      %edi, 36(%esp)
	addl      $16, %esp
	jmp       .L0805BA0D
.L0805C5B1:
	movl      %ebx, 20(%esp)
	xorl      %eax, %eax
	jmp       .L0805BA0D
.L0805C5BC:
	movl      %edi, %edx
	jmp       .L0805B9C4
.L0805C5C3:
	subl      $4, %esp
	pushl     %edi
	pushl     %eax
	leal      172(%esp), %eax
	pushl     %eax
	call      _ZNSt6vectorIP9ExpansionSaIS1_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS1_S3_EERKS1_
.L0805C5D5:
	movl      188(%esp), %edx
	addl      $16, %esp
	jmp       .L0805B9CE
.L0805C5E4:
	subl      $4, %esp
	pushl     %ebp
	pushl     %ebx
	leal      160(%esp), %eax
	pushl     %eax
	call      _ZNSt6vectorI9ExpansionSaIS0_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS0_S2_EERKS0_
.L0805C5F6:
	movl      604(%esp), %eax
	addl      $16, %esp
	jmp       .L0805AFB6
.L0805C605:
	xorl      %eax, %eax
	jmp       .L0805B2A0
.L0805C60C:
	pushl     $_ZZ19munch_list_completebbE19__PRETTY_FUNCTION__
	pushl     $2449
	pushl     $.LC08063C88
	pushl     $.LC08064016
	call      __assert_fail
.L0805C625:
	pushl     $_ZZ19munch_list_completebbE19__PRETTY_FUNCTION__
	pushl     $2335
	pushl     $.LC08063C88
	pushl     $.LC080646D8
	call      __assert_fail
.L0805C63E:
	leal      112(%esp), %eax
	call      _ZN7acommon11HT_IteratorI9CML_EntryE3incEv.part.104
.L0805C647:
	movl      116(%esp), %eax
	jmp       .L0805C245
	.size	_Z19munch_list_completebb, .-_Z19munch_list_completebb
# ----------------------
	.globl	_Z10munch_listv
	.type	_Z10munch_listv, @function
_Z10munch_listv:
	pushl     %ebp
	pushl     %edi
	pushl     %esi
	pushl     %ebx
	subl      $28, %esp
	movl      args, %ecx
	movl      args+4, %eax
	subl      %ecx, %eax
	sarl      $4, %eax
	testl     %eax, %eax
	je        .L0805C7A0
.L0805C66F:
	xorl      %eax, %eax
	movb      $1, 15(%esp)
	movb      $0, 8(%esp)
	xorl      %ebp, %ebp
	jmp       .L0805C6A1
.L0805C67F:
	.p2align 4,,10
	.p2align 3
.L0805C680:
	movl      $1, %ebp
.L0805C685:
	movl      args, %ecx
	movl      args+4, %edx
	addl      $1, %eax
	subl      %ecx, %edx
	sarl      $4, %edx
	cmpl      %edx, %eax
	jae       .L0805C738
.L0805C6A1:
	movl      %eax, %edx
	sall      $4, %edx
	leal      (%ecx,%edx), %esi
	movl      4(%esi), %ebx
	testl     %ebx, %ebx
	je        .L0805C6CD
.L0805C6B0:
	movl      8(%esi), %ecx
	movl      $.LC0806402A, %edi
	movb      $0, (%ecx)
	movl      4(%esi), %esi
	movl      $7, %ecx
	repz cmpsb     
	je        .L0805C680
.L0805C6C7:
	movl      args, %ecx
.L0805C6CD:
	addl      %edx, %ecx
	movl      4(%ecx), %edi
	testl     %edi, %edi
	je        .L0805C7B0
.L0805C6DA:
	movl      8(%ecx), %esi
	movl      $.LC08064031, %edi
	movb      $0, (%esi)
	movl      4(%ecx), %esi
	movl      $7, %ecx
	repz cmpsb     
	jne       .L0805C700
.L0805C6F1:
	movb      $0, 8(%esp)
	jmp       .L0805C685
.L0805C6F8:
	.p2align 4
.L0805C700:
	movl      args, %ecx
	addl      %edx, %ecx
	movl      4(%ecx), %esi
	testl     %esi, %esi
	je        .L0805C7B0
.L0805C713:
	movl      8(%ecx), %esi
	movl      $.LC08064038, %edi
	movb      $0, (%esi)
	movl      4(%ecx), %esi
	movl      $6, %ecx
	repz cmpsb     
	jne       .L0805C770
.L0805C72A:
	movb      $1, 8(%esp)
	jmp       .L0805C685
.L0805C734:
	.p2align 4,,10
	.p2align 3
.L0805C738:
	movl      %ebp, %eax
	testb     %al, %al
	jne       .L0805C760
.L0805C73E:
	movzbl    15(%esp), %edx
	movzbl    8(%esp), %eax
.L0805C748:
	subl      $8, %esp
	pushl     %edx
	pushl     %eax
	call      _Z19munch_list_completebb
.L0805C752:
	addl      $44, %esp
	popl      %ebx
	popl      %esi
	popl      %edi
	popl      %ebp
	ret       
.L0805C75A:
	.p2align 4,,10
	.p2align 3
.L0805C760:
	addl      $28, %esp
	popl      %ebx
	popl      %esi
	popl      %edi
	popl      %ebp
	jmp       _Z17munch_list_simplev
.L0805C76C:
	.p2align 4,,10
	.p2align 3
.L0805C770:
	movl      args, %ecx
	addl      %edx, %ecx
	movl      4(%ecx), %ebx
	testl     %ebx, %ebx
	je        .L0805C7B0
.L0805C77F:
	movl      8(%ecx), %esi
	movl      $.LC0806403E, %edi
	movb      $0, (%esi)
	movl      4(%ecx), %esi
	movl      $5, %ecx
	repz cmpsb     
	jne       .L0805C7A7
.L0805C796:
	movb      $0, 15(%esp)
	jmp       .L0805C685
.L0805C7A0:
	movl      $1, %edx
	jmp       .L0805C748
.L0805C7A7:
	movl      args, %ecx
	addl      %edx, %ecx
	.p2align 4,,10
	.p2align 3
.L0805C7B0:
	subl      $12, %esp
	movl      $-1, %ebx
	pushl     %ecx
	movl      %ecx, 24(%esp)
	call      _ZNK7acommon6String5c_strEv
.L0805C7C2:
	movl      24(%esp), %ecx
	movl      %eax, %esi
	movl      8(%ecx), %eax
	subl      4(%ecx), %eax
	movl      %eax, %edi
	popl      %eax
	popl      %edx
	pushl     $.LC08064728
	pushl     $.LC08063D1D
	call      dgettext
.L0805C7E1:
	pushl     %edi
	pushl     %esi
	pushl     %ebx
	pushl     %eax
	call      _Z11print_errorN7acommon10ParmStringES0_
.L0805C7EA:
	addl      $20, %esp
	pushl     $1
	call      exit
	.size	_Z10munch_listv, .-_Z10munch_listv
# ----------------------
.L0805C7F4:
	.p2align 4
# ----------------------
	.weak	_ZN7acommon7OStream6printlERKNS_10ParmStringE
	.type	_ZN7acommon7OStream6printlERKNS_10ParmStringE, @function
_ZN7acommon7OStream6printlERKNS_10ParmStringE:
	pushl     %ebx
	subl      $16, %esp
	movl      24(%esp), %ebx
	movl      (%ebx), %eax
	pushl     28(%esp)
	pushl     %ebx
	call      *4(%eax)
.L0805C812:
	movl      (%ebx), %eax
	movl      %ebx, 32(%esp)
	movl      $10, 36(%esp)
	movl      (%eax), %eax
	addl      $24, %esp
	popl      %ebx
	jmp       *%eax
	.size	_ZN7acommon7OStream6printlERKNS_10ParmStringE, .-_ZN7acommon7OStream6printlERKNS_10ParmStringE
# ----------------------
.L0805C828:
	.p2align 4
# ----------------------
	.weak	_ZN7acommon19DictInfoEnumerationD2Ev
	.type	_ZN7acommon19DictInfoEnumerationD2Ev, @function
_ZN7acommon19DictInfoEnumerationD2Ev:
	rep; ret       
	.size	_ZN7acommon19DictInfoEnumerationD2Ev, .-_ZN7acommon19DictInfoEnumerationD2Ev
# ----------------------
.L0805C832:
	.p2align 4
# ----------------------
	.weak	_ZN8aspeller11SpellerImpl10check_infoEv
	.type	_ZN8aspeller11SpellerImpl10check_infoEv, @function
_ZN8aspeller11SpellerImpl10check_infoEv:
	movl      4(%esp), %eax
	movl      164(%eax), %edx
	testl     %edx, %edx
	je        .L0805C858
.L0805C84E:
	addl      $160, %eax
	ret       
.L0805C854:
	.p2align 4,,10
	.p2align 3
.L0805C858:
	movl      452(%eax), %eax
	ret       
	.size	_ZN8aspeller11SpellerImpl10check_infoEv, .-_ZN8aspeller11SpellerImpl10check_infoEv
# ----------------------
.L0805C85F:
	.p2align 4,,10
	.p2align 3
# ----------------------
	.weak	_ZN7acommon8StackPtrINS_6ConfigEED1Ev
	.type	_ZN7acommon8StackPtrINS_6ConfigEED1Ev, @function
_ZN7acommon8StackPtrINS_6ConfigEED1Ev:
	movl      4(%esp), %eax
	movl      (%eax), %eax
	testl     %eax, %eax
	je        .L0805C878
.L0805C86A:
	movl      (%eax), %edx
	movl      %eax, 4(%esp)
	movl      4(%edx), %eax
	jmp       *%eax
.L0805C875:
	.p2align 4,,10
	.p2align 3
.L0805C878:
	rep; ret       
	.size	_ZN7acommon8StackPtrINS_6ConfigEED1Ev, .-_ZN7acommon8StackPtrINS_6ConfigEED1Ev
# ----------------------
.L0805C87A:
	.p2align 4,,10
	.p2align 3
# ----------------------
	.weak	_ZN7acommon19DictInfoEnumerationD0Ev
	.type	_ZN7acommon19DictInfoEnumerationD0Ev, @function
_ZN7acommon19DictInfoEnumerationD0Ev:
	jmp       _ZdlPv
	.size	_ZN7acommon19DictInfoEnumerationD0Ev, .-_ZN7acommon19DictInfoEnumerationD0Ev
# ----------------------
.L0805C885:
	.p2align 4
# ----------------------
	.weak	_ZN7acommon6StringD2Ev
	.type	_ZN7acommon6StringD2Ev, @function
_ZN7acommon6StringD2Ev:
	movl      4(%esp), %eax
	movl      $_ZTVN7acommon6StringE+8, (%eax)
	movl      4(%eax), %eax
	testl     %eax, %eax
	je        .L0805C8B0
.L0805C8A1:
	movl      %eax, 4(%esp)
	jmp       free
.L0805C8AA:
	.p2align 4,,10
	.p2align 3
.L0805C8B0:
	rep; ret       
	.size	_ZN7acommon6StringD2Ev, .-_ZN7acommon6StringD2Ev
# ----------------------
.L0805C8B2:
	.p2align 4
# ----------------------
	.weak	_ZN18IstreamEnumerationD2Ev
	.type	_ZN18IstreamEnumerationD2Ev, @function
_ZN18IstreamEnumerationD2Ev:
	pushl     %ebx
	subl      $8, %esp
	movl      16(%esp), %ebx
	movl      44(%ebx), %eax
	movl      $_ZTV18IstreamEnumeration+8, (%ebx)
	movl      $_ZTVN7acommon6StringE+8, 40(%ebx)
	testl     %eax, %eax
	je        .L0805C8E8
.L0805C8DC:
	subl      $12, %esp
	pushl     %eax
	call      free
.L0805C8E5:
	addl      $16, %esp
.L0805C8E8:
	movl      20(%ebx), %eax
	movl      $_ZTVN7acommon17StringEnumerationE+8, (%ebx)
	movl      $_ZTVN7acommon6StringE+8, 16(%ebx)
	testl     %eax, %eax
	je        .L0805C910
.L0805C8FC:
	movl      %eax, 16(%esp)
	addl      $8, %esp
	popl      %ebx
	jmp       free
.L0805C909:
	.p2align 4
.L0805C910:
	addl      $8, %esp
	popl      %ebx
	ret       
	.size	_ZN18IstreamEnumerationD2Ev, .-_ZN18IstreamEnumerationD2Ev
# ----------------------
.L0805C915:
	.p2align 4
# ----------------------
	.weak	_ZNK18IstreamEnumeration6at_endEv
	.type	_ZNK18IstreamEnumeration6at_endEv, @function
_ZNK18IstreamEnumeration6at_endEv:
	pushl     %ebx
	subl      $8, %esp
	movl      16(%esp), %eax
	movl      36(%eax), %ebx
	movl      12(%ebx), %eax
	testl     %eax, %eax
	je        .L0805C942
.L0805C932:
	subl      $12, %esp
	pushl     %eax
	call      feof
.L0805C93B:
	addl      $16, %esp
	testl     %eax, %eax
	je        .L0805C950
.L0805C942:
	addl      $8, %esp
	xorl      %eax, %eax
	popl      %ebx
	ret       
.L0805C949:
	.p2align 4
.L0805C950:
	subl      $12, %esp
	pushl     12(%ebx)
	call      ferror
.L0805C95B:
	addl      $16, %esp
	testl     %eax, %eax
	sete      %al
	addl      $8, %esp
	popl      %ebx
	ret       
	.size	_ZNK18IstreamEnumeration6at_endEv, .-_ZNK18IstreamEnumeration6at_endEv
# ----------------------
.L0805C968:
	.p2align 4
# ----------------------
	.weak	_ZN7acommon9StringMap6removeERKNS_10ParmStringE
	.type	_ZN7acommon9StringMap6removeERKNS_10ParmStringE, @function
_ZN7acommon9StringMap6removeERKNS_10ParmStringE:
	pushl     %ebp
	pushl     %edi
	pushl     %esi
	pushl     %ebx
	subl      $52, %esp
	movl      80(%esp), %eax
	movl      76(%esp), %ebx
	movl      72(%esp), %esi
	movl      (%eax), %eax
	leal      16(%ebx), %ecx
	leal      8(%ebx), %edx
	movl      %eax, 8(%esp)
	movl      %eax, %edi
	leal      39(%esp), %eax
	pushl     %eax
	pushl     %edi
	leal      24(%esp), %eax
	call      _ZN7acommon9HashTableINS_9StringMap5ParmsEE6find_iERKPKcRb.isra.89
.L0805C9A0:
	movl      28(%esp), %eax
	movl      (%eax), %ebp
	movl      %eax, 20(%esp)
	addl      $16, %esp
	testl     %ebp, %ebp
	je        .L0805CA20
.L0805C9B1:
	xorl      %edi, %edi
.L0805C9B3:
	subl      $8, %esp
	pushl     8(%esp)
	pushl     4(%ebp)
	call      strcmp
.L0805C9C2:
	addl      $16, %esp
	testl     %eax, %eax
	je        .L0805C9F0
.L0805C9C9:
	testl     %edi, %edi
	setne     %al
.L0805C9CE:
	movl      4(%esp), %ecx
	movl      %ebp, (%ecx)
	subl      %edi, 4(%ebx)
	movb      %al, 4(%esi)
	movl      $0, (%esi)
	addl      $44, %esp
	popl      %ebx
	movl      %esi, %eax
	popl      %esi
	popl      %edi
	popl      %ebp
	ret       $4
.L0805C9EC:
	.p2align 4,,10
	.p2align 3
.L0805C9F0:
	movl      (%ebp), %eax
	movl      28(%ebx), %edx
	addl      $1, %edi
	testl     %eax, %eax
	movl      %edx, (%ebp)
	movl      %ebp, 28(%ebx)
	je        .L0805CA10
.L0805CA03:
	movl      %eax, %ebp
	jmp       .L0805C9B3
.L0805CA07:
	.p2align 4
.L0805CA10:
	testl     %edi, %edi
	setne     %al
	xorl      %ebp, %ebp
	jmp       .L0805C9CE
.L0805CA19:
	.p2align 4
.L0805CA20:
	xorl      %eax, %eax
	xorl      %edi, %edi
	jmp       .L0805C9CE
	.size	_ZN7acommon9StringMap6removeERKNS_10ParmStringE, .-_ZN7acommon9StringMap6removeERKNS_10ParmStringE
# ----------------------
.L0805CA26:
	.p2align 4
# ----------------------
	.weak	_ZN18IstreamEnumerationD0Ev
	.type	_ZN18IstreamEnumerationD0Ev, @function
_ZN18IstreamEnumerationD0Ev:
	pushl     %ebx
	subl      $8, %esp
	movl      16(%esp), %ebx
	movl      44(%ebx), %eax
	movl      $_ZTV18IstreamEnumeration+8, (%ebx)
	movl      $_ZTVN7acommon6StringE+8, 40(%ebx)
	testl     %eax, %eax
	je        .L0805CA58
.L0805CA4C:
	subl      $12, %esp
	pushl     %eax
	call      free
.L0805CA55:
	addl      $16, %esp
.L0805CA58:
	movl      20(%ebx), %eax
	movl      $_ZTVN7acommon17StringEnumerationE+8, (%ebx)
	movl      $_ZTVN7acommon6StringE+8, 16(%ebx)
	testl     %eax, %eax
	je        .L0805CA78
.L0805CA6C:
	subl      $12, %esp
	pushl     %eax
	call      free
.L0805CA75:
	addl      $16, %esp
.L0805CA78:
	movl      %ebx, 16(%esp)
	addl      $8, %esp
	popl      %ebx
	jmp       _ZdlPv
	.size	_ZN18IstreamEnumerationD0Ev, .-_ZN18IstreamEnumerationD0Ev
# ----------------------
.L0805CA85:
	.p2align 4
# ----------------------
	.weak	_ZNK18IstreamEnumeration5cloneEv
	.type	_ZNK18IstreamEnumeration5cloneEv, @function
_ZNK18IstreamEnumeration5cloneEv:
	pushl     %ebp
	pushl     %edi
	pushl     %esi
	pushl     %ebx
	subl      $24, %esp
	movl      44(%esp), %esi
	pushl     $56
	call      _Znwj
.L0805CAA2:
	movl      %eax, %ebx
	movl      $_ZTVN7acommon17StringEnumerationE+8, (%eax)
	movl      4(%esi), %eax
	addl      $16, %esp
	movl      %eax, 4(%ebx)
	movl      8(%esi), %eax
	movl      %eax, 8(%ebx)
	movl      20(%esi), %ebp
	movl      24(%esi), %edi
	movl      12(%esi), %eax
	movl      $_ZTVN7acommon6StringE+8, 16(%ebx)
	subl      %ebp, %edi
	movl      %eax, 12(%ebx)
	je        .L0805CAD8
.L0805CAD0:
	testl     %ebp, %ebp
	jne       .L0805CB70
.L0805CAD8:
	movl      $0, 20(%ebx)
	movl      $0, 24(%ebx)
	movl      $0, 28(%ebx)
.L0805CAED:
	movl      32(%esi), %eax
	movl      44(%esi), %edi
	movl      $_ZTV18IstreamEnumeration+8, (%ebx)
	movl      %eax, 32(%ebx)
	movl      36(%esi), %eax
	movl      $_ZTVN7acommon6StringE+8, 40(%ebx)
	movl      %eax, 36(%ebx)
	movl      48(%esi), %eax
	subl      %edi, %eax
	movl      %eax, %esi
	je        .L0805CB16
.L0805CB12:
	testl     %edi, %edi
	jne       .L0805CB38
.L0805CB16:
	movl      $0, 44(%ebx)
	movl      $0, 48(%ebx)
	movl      %ebx, %eax
	movl      $0, 52(%ebx)
	addl      $12, %esp
	popl      %ebx
	popl      %esi
	popl      %edi
	popl      %ebp
	ret       
.L0805CB35:
	.p2align 4,,10
	.p2align 3
.L0805CB38:
	leal      1(%eax), %eax
	subl      $12, %esp
	pushl     %eax
	call      malloc
.L0805CB44:
	addl      $12, %esp
	movl      %eax, 44(%ebx)
	pushl     %esi
	pushl     %edi
	pushl     %eax
	call      memcpy
.L0805CB52:
	movl      44(%ebx), %eax
	addl      $16, %esp
	addl      %esi, %eax
	movl      %eax, 48(%ebx)
	addl      $1, %eax
	movl      %eax, 52(%ebx)
	addl      $12, %esp
	movl      %ebx, %eax
	popl      %ebx
	popl      %esi
	popl      %edi
	popl      %ebp
	ret       
.L0805CB6D:
	.p2align 4,,10
	.p2align 3
.L0805CB70:
	leal      1(%edi), %eax
	subl      $12, %esp
	pushl     %eax
	call      malloc
.L0805CB7C:
	addl      $12, %esp
	movl      %eax, 20(%ebx)
	pushl     %edi
	pushl     %ebp
	pushl     %eax
	call      memcpy
.L0805CB8A:
	addl      20(%ebx), %edi
	addl      $16, %esp
	movl      %edi, 24(%ebx)
	addl      $1, %edi
	movl      %edi, 28(%ebx)
	jmp       .L0805CAED
	.size	_ZNK18IstreamEnumeration5cloneEv, .-_ZNK18IstreamEnumeration5cloneEv
# ----------------------
.L0805CB9E:
	.p2align 4,,10
	.p2align 3
# ----------------------
	.weak	_ZN7acommon4ConvD2Ev
	.type	_ZN7acommon4ConvD2Ev, @function
_ZN7acommon4ConvD2Ev:
	pushl     %esi
	pushl     %ebx
	subl      $4, %esp
	movl      16(%esp), %ebx
	movl      32(%ebx), %esi
	testl     %esi, %esi
	je        .L0805CBC4
.L0805CBB0:
	subl      $12, %esp
	pushl     %esi
	call      _ZN7acommon7ConvertD1Ev
.L0805CBB9:
	movl      %esi, (%esp)
	call      _ZdlPv
.L0805CBC1:
	addl      $16, %esp
.L0805CBC4:
	movl      20(%ebx), %eax
	movl      $_ZTVN7acommon6StringE+8, 16(%ebx)
	testl     %eax, %eax
	je        .L0805CBDE
.L0805CBD2:
	subl      $12, %esp
	pushl     %eax
	call      free
.L0805CBDB:
	addl      $16, %esp
.L0805CBDE:
	movl      4(%ebx), %eax
	testl     %eax, %eax
	je        .L0805CBF8
.L0805CBE5:
	movl      %eax, 16(%esp)
	addl      $4, %esp
	popl      %ebx
	popl      %esi
	jmp       _ZdlPv
.L0805CBF3:
	.p2align 4,,10
	.p2align 3
.L0805CBF8:
	addl      $4, %esp
	popl      %ebx
	popl      %esi
	ret       
	.size	_ZN7acommon4ConvD2Ev, .-_ZN7acommon4ConvD2Ev
# ----------------------
.L0805CBFE:
	.p2align 4,,10
	.p2align 3
# ----------------------
	.weak	_ZN7acommon6VectorINS_6StringEED1Ev
	.type	_ZN7acommon6VectorINS_6StringEED1Ev, @function
_ZN7acommon6VectorINS_6StringEED1Ev:
	pushl     %edi
	pushl     %esi
	pushl     %ebx
	movl      16(%esp), %edi
	movl      4(%edi), %esi
	movl      (%edi), %ebx
	cmpl      %ebx, %esi
	jne       .L0805CC38
.L0805CC10:
	jmp       .L0805CC56
.L0805CC12:
	.p2align 4,,10
	.p2align 3
.L0805CC18:
	movl      4(%ebx), %eax
	movl      $_ZTVN7acommon6StringE+8, (%ebx)
	testl     %eax, %eax
	je        .L0805CC31
.L0805CC25:
	subl      $12, %esp
	pushl     %eax
	call      free
.L0805CC2E:
	addl      $16, %esp
.L0805CC31:
	addl      $16, %ebx
	cmpl      %ebx, %esi
	je        .L0805CC54
.L0805CC38:
	movl      (%ebx), %eax
	movl      20(%eax), %eax
	cmpl      $_ZN7acommon6StringD1Ev, %eax
	je        .L0805CC18
.L0805CC44:
	subl      $12, %esp
	pushl     %ebx
	addl      $16, %ebx
	call      *%eax
.L0805CC4D:
	addl      $16, %esp
	cmpl      %ebx, %esi
	jne       .L0805CC38
.L0805CC54:
	movl      (%edi), %esi
.L0805CC56:
	testl     %esi, %esi
	je        .L0805CC70
.L0805CC5A:
	movl      %esi, 16(%esp)
	popl      %ebx
	popl      %esi
	popl      %edi
	jmp       _ZdlPv
.L0805CC66:
	.p2align 4
.L0805CC70:
	popl      %ebx
	popl      %esi
	popl      %edi
	ret       
	.size	_ZN7acommon6VectorINS_6StringEED1Ev, .-_ZN7acommon6VectorINS_6StringEED1Ev
# ----------------------
.L0805CC74:
	.p2align 4
# ----------------------
	.weak	_ZN18IstreamEnumeration6assignEPKN7acommon17StringEnumerationE
	.type	_ZN18IstreamEnumeration6assignEPKN7acommon17StringEnumerationE, @function
_ZN18IstreamEnumeration6assignEPKN7acommon17StringEnumerationE:
	pushl     %ebp
	pushl     %edi
	pushl     %esi
	pushl     %ebx
	subl      $12, %esp
	movl      36(%esp), %esi
	movl      32(%esp), %ebx
	movl      4(%esi), %eax
	movl      %eax, 4(%ebx)
	movl      8(%esi), %eax
	movl      %eax, 8(%ebx)
	movl      12(%esi), %eax
	movl      20(%esi), %ebp
	movl      24(%esi), %edi
	movl      %eax, 12(%ebx)
	movl      20(%ebx), %eax
	subl      %ebp, %edi
	movl      %eax, 24(%ebx)
	je        .L0805CCCE
.L0805CCB1:
	movl      28(%ebx), %edx
	subl      %eax, %edx
	cmpl      %edx, %edi
	jge       .L0805CD28
.L0805CCBA:
	subl      $4, %esp
	pushl     %edi
	pushl     %ebp
	pushl     %eax
	call      memmove
.L0805CCC5:
	addl      20(%ebx), %edi
	addl      $16, %esp
	movl      %edi, 24(%ebx)
.L0805CCCE:
	movl      32(%esi), %eax
	movl      %eax, 32(%ebx)
	movl      36(%esi), %eax
	movl      %eax, 36(%ebx)
	movl      44(%esi), %edi
	movl      48(%esi), %esi
	movl      44(%ebx), %eax
	subl      %edi, %esi
	movl      %eax, 48(%ebx)
	je        .L0805CD07
.L0805CCEA:
	movl      52(%ebx), %edx
	subl      %eax, %edx
	cmpl      %edx, %esi
	jge       .L0805CD10
.L0805CCF3:
	subl      $4, %esp
	pushl     %esi
	pushl     %edi
	pushl     %eax
	call      memmove
.L0805CCFE:
	addl      44(%ebx), %esi
	addl      $16, %esp
	movl      %esi, 48(%ebx)
.L0805CD07:
	addl      $12, %esp
	popl      %ebx
	popl      %esi
	popl      %edi
	popl      %ebp
	ret       
.L0805CD0F:
	.p2align 4,,10
	.p2align 3
.L0805CD10:
	leal      40(%ebx), %eax
	subl      $8, %esp
	pushl     %esi
	pushl     %eax
	call      _ZN7acommon6String9reserve_iEj
.L0805CD1D:
	movl      44(%ebx), %eax
	addl      $16, %esp
	jmp       .L0805CCF3
.L0805CD25:
	.p2align 4,,10
	.p2align 3
.L0805CD28:
	leal      16(%ebx), %eax
	subl      $8, %esp
	pushl     %edi
	pushl     %eax
	call      _ZN7acommon6String9reserve_iEj
.L0805CD35:
	movl      20(%ebx), %eax
	addl      $16, %esp
	jmp       .L0805CCBA
	.size	_ZN18IstreamEnumeration6assignEPKN7acommon17StringEnumerationE, .-_ZN18IstreamEnumeration6assignEPKN7acommon17StringEnumerationE
# ----------------------
	.weak	_ZN18IstreamEnumeration4nextEv
	.type	_ZN18IstreamEnumeration4nextEv, @function
_ZN18IstreamEnumeration4nextEv:
	pushl     %ebx
	subl      $12, %esp
	movl      20(%esp), %ebx
	movl      36(%ebx), %eax
	movl      44(%ebx), %edx
	movl      %edx, 48(%ebx)
	movsbl    4(%eax), %ecx
	movl      (%eax), %edx
	pushl     %ecx
	leal      40(%ebx), %ecx
	pushl     %ecx
	pushl     %eax
	call      *(%edx)
.L0805CD5F:
	addl      $16, %esp
	xorl      %edx, %edx
	testb     %al, %al
	je        .L0805CD78
.L0805CD68:
	movl      44(%ebx), %eax
	testl     %eax, %eax
	je        .L0805CD80
.L0805CD6F:
	movl      48(%ebx), %eax
	movb      $0, (%eax)
	movl      44(%ebx), %edx
.L0805CD78:
	addl      $8, %esp
	movl      %edx, %eax
	popl      %ebx
	ret       
.L0805CD7F:
	.p2align 4,,10
	.p2align 3
.L0805CD80:
	movl      $.LC08063D11, %edx
	jmp       .L0805CD78
	.size	_ZN18IstreamEnumeration4nextEv, .-_ZN18IstreamEnumeration4nextEv
# ----------------------
.L0805CD87:
	.p2align 4
# ----------------------
	.weak	_ZN7acommon8PosibErrIvED1Ev
	.type	_ZN7acommon8PosibErrIvED1Ev, @function
_ZN7acommon8PosibErrIvED1Ev:
	pushl     %ebx
	subl      $8, %esp
	movl      16(%esp), %ebx
	movl      (%ebx), %edx
	testl     %edx, %edx
	je        .L0805CDC0
.L0805CD9E:
	subl      $1, 8(%edx)
	jne       .L0805CDC0
.L0805CDA4:
	cmpb      $0, 4(%edx)
	je        .L0805CDC8
.L0805CDAA:
	movl      %ebx, 16(%esp)
	addl      $8, %esp
	popl      %ebx
	jmp       _ZN7acommon12PosibErrBase3delEv
.L0805CDB7:
	.p2align 4
.L0805CDC0:
	addl      $8, %esp
	popl      %ebx
	ret       
.L0805CDC5:
	.p2align 4,,10
	.p2align 3
.L0805CDC8:
	subl      $12, %esp
	pushl     %ebx
	call      _ZNK7acommon12PosibErrBase10handle_errEv
.L0805CDD1:
	addl      $16, %esp
	movl      %ebx, 16(%esp)
	addl      $8, %esp
	popl      %ebx
	jmp       _ZN7acommon12PosibErrBase3delEv
	.size	_ZN7acommon8PosibErrIvED1Ev, .-_ZN7acommon8PosibErrIvED1Ev
# ----------------------
.L0805CDE1:
	.p2align 4
# ----------------------
	.weak	_ZSt4fillSt13_Bit_iteratorS_RKb
	.type	_ZSt4fillSt13_Bit_iteratorS_RKb, @function
_ZSt4fillSt13_Bit_iteratorS_RKb:
	pushl     %ebp
	pushl     %edi
	pushl     %esi
	pushl     %ebx
	subl      $4, %esp
	movl      24(%esp), %eax
	movl      32(%esp), %ebx
	movl      36(%esp), %esi
	movl      28(%esp), %ecx
	movl      40(%esp), %edx
	cmpl      %eax, %ebx
	movl      %esi, (%esp)
	je        .L0805CEBC
.L0805CE16:
	movzbl    (%edx), %ebp
	leal      4(%eax), %esi
	movl      %esi, %edi
	movl      %ebp, %edx
	negl      %ebp
	cmpl      %ebx, %esi
	je        .L0805CE39
.L0805CE26:
	.p2align 4
.L0805CE30:
	movl      %ebp, (%edi)
	addl      $4, %edi
	cmpl      %ebx, %edi
	jne       .L0805CE30
.L0805CE39:
	movl      $1, %edi
	jmp       .L0805CE4E
.L0805CE40:
	notl      %ebp
	andl      %ebp, (%eax)
	cmpl      $31, %ecx
	leal      1(%ecx), %ebp
	je        .L0805CE64
.L0805CE4C:
	movl      %ebp, %ecx
.L0805CE4E:
	cmpl      %eax, %esi
	je        .L0805CE70
.L0805CE52:
	movl      %edi, %ebp
	sall      %cl, %ebp
	testb     %dl, %dl
	je        .L0805CE40
.L0805CE5A:
	orl       %ebp, (%eax)
	cmpl      $31, %ecx
	leal      1(%ecx), %ebp
	jne       .L0805CE4C
.L0805CE64:
	addl      $4, %eax
	xorb      %cl, %cl
	cmpl      %eax, %esi
	jne       .L0805CE52
.L0805CE6D:
	.p2align 4,,10
	.p2align 3
.L0805CE70:
	testl     %ecx, %ecx
	jne       .L0805CE52
.L0805CE74:
	movl      (%esp), %edi
	movl      %ebx, %eax
	movl      $1, %esi
.L0805CE7E:
	xorl      %ecx, %ecx
	jmp       .L0805CE94
.L0805CE82:
	.p2align 4,,10
	.p2align 3
.L0805CE88:
	addl      $1, %ecx
	notl      %ebp
	andl      %ebp, (%eax)
	cmpl      $32, %ecx
	je        .L0805CEAA
.L0805CE94:
	cmpl      %ebx, %eax
	je        .L0805CEB0
.L0805CE98:
	movl      %esi, %ebp
	sall      %cl, %ebp
	testb     %dl, %dl
	je        .L0805CE88
.L0805CEA0:
	addl      $1, %ecx
	orl       %ebp, (%eax)
	cmpl      $32, %ecx
	jne       .L0805CE94
.L0805CEAA:
	addl      $4, %eax
	jmp       .L0805CE7E
.L0805CEAF:
	.p2align 4,,10
	.p2align 3
.L0805CEB0:
	cmpl      %ecx, %edi
	jne       .L0805CE98
.L0805CEB4:
	addl      $4, %esp
	popl      %ebx
	popl      %esi
	popl      %edi
	popl      %ebp
	ret       
.L0805CEBC:
	movzbl    (%edx), %edx
	movl      %ebx, %eax
	movl      $1, %esi
	jmp       .L0805CEDE
.L0805CEC8:
	.p2align 4
.L0805CED0:
	notl      %edi
	andl      %edi, (%eax)
.L0805CED4:
	cmpl      $31, %ecx
	leal      1(%ecx), %edi
	je        .L0805CEF7
.L0805CEDC:
	movl      %edi, %ecx
.L0805CEDE:
	cmpl      %eax, %ebx
	je        .L0805CEF0
.L0805CEE2:
	movl      %esi, %edi
	sall      %cl, %edi
	testb     %dl, %dl
	je        .L0805CED0
.L0805CEEA:
	orl       %edi, (%eax)
	jmp       .L0805CED4
.L0805CEEE:
	.p2align 4,,10
	.p2align 3
.L0805CEF0:
	cmpl      %ecx, (%esp)
	jne       .L0805CEE2
.L0805CEF5:
	jmp       .L0805CEB4
.L0805CEF7:
	addl      $4, %eax
	xorb      %cl, %cl
	jmp       .L0805CEDE
	.size	_ZSt4fillSt13_Bit_iteratorS_RKb, .-_ZSt4fillSt13_Bit_iteratorS_RKb
# ----------------------
.L0805CEFE:
	.p2align 4,,10
	.p2align 3
# ----------------------
	.weak	_ZN7acommon7OStream6printfEPKcz
	.type	_ZN7acommon7OStream6printfEPKcz, @function
_ZN7acommon7OStream6printfEPKcz:
	subl      $12, %esp
	movl      16(%esp), %eax
	leal      24(%esp), %ecx
	subl      $4, %esp
	movl      (%eax), %edx
	pushl     %ecx
	pushl     28(%esp)
	pushl     %eax
	call      *12(%edx)
.L0805CF19:
	addl      $28, %esp
	ret       
	.size	_ZN7acommon7OStream6printfEPKcz, .-_ZN7acommon7OStream6printfEPKcz
# ----------------------
.L0805CF1D:
	.p2align 4,,10
	.p2align 3
# ----------------------
	.weak	_ZN7acommon6String11assign_onlyEPKc
	.type	_ZN7acommon6String11assign_onlyEPKc, @function
_ZN7acommon6String11assign_onlyEPKc:
	pushl     %ebp
	pushl     %edi
	pushl     %esi
	pushl     %ebx
	subl      $12, %esp
	movl      36(%esp), %esi
	movl      32(%esp), %ebx
	testl     %esi, %esi
	je        .L0805CF38
.L0805CF33:
	cmpb      $0, (%esi)
	jne       .L0805CF58
.L0805CF38:
	movl      $0, 4(%ebx)
	movl      $0, 8(%ebx)
	movl      $0, 12(%ebx)
	addl      $12, %esp
	popl      %ebx
	popl      %esi
	popl      %edi
	popl      %ebp
	ret       
.L0805CF55:
	.p2align 4,,10
	.p2align 3
.L0805CF58:
	subl      $12, %esp
	pushl     %esi
	call      strlen
.L0805CF61:
	movl      %eax, %edi
	leal      1(%eax), %eax
	movl      %eax, (%esp)
	call      malloc
.L0805CF6E:
	addl      $12, %esp
	movl      %eax, 4(%ebx)
	movl      %eax, %ebp
	pushl     %edi
	pushl     %esi
	addl      %ebp, %edi
	pushl     %eax
	call      memcpy
.L0805CF80:
	movl      %edi, 8(%ebx)
	addl      $16, %esp
	addl      $1, %edi
	movl      %edi, 12(%ebx)
	addl      $12, %esp
	popl      %ebx
	popl      %esi
	popl      %edi
	popl      %ebp
	ret       
	.size	_ZN7acommon6String11assign_onlyEPKc, .-_ZN7acommon6String11assign_onlyEPKc
# ----------------------
.L0805CF94:
	.p2align 4
# ----------------------
	.weak	_ZN7acommon6String11assign_onlyEPKcj
	.type	_ZN7acommon6String11assign_onlyEPKcj, @function
_ZN7acommon6String11assign_onlyEPKcj:
	pushl     %ebp
	pushl     %edi
	pushl     %esi
	pushl     %ebx
	subl      $12, %esp
	movl      36(%esp), %edi
	movl      32(%esp), %ebx
	movl      40(%esp), %esi
	testl     %edi, %edi
	je        .L0805CFBB
.L0805CFB7:
	testl     %esi, %esi
	jne       .L0805CFE0
.L0805CFBB:
	movl      $0, 4(%ebx)
	movl      $0, 8(%ebx)
	movl      $0, 12(%ebx)
	addl      $12, %esp
	popl      %ebx
	popl      %esi
	popl      %edi
	popl      %ebp
	ret       
.L0805CFD8:
	.p2align 4
.L0805CFE0:
	leal      1(%esi), %eax
	subl      $12, %esp
	pushl     %eax
	call      malloc
.L0805CFEC:
	addl      $12, %esp
	movl      %eax, 4(%ebx)
	movl      %eax, %ebp
	pushl     %esi
	pushl     %edi
	addl      %ebp, %esi
	pushl     %eax
	call      memcpy
.L0805CFFE:
	movl      %esi, 8(%ebx)
	addl      $16, %esp
	addl      $1, %esi
	movl      %esi, 12(%ebx)
	addl      $12, %esp
	popl      %ebx
	popl      %esi
	popl      %edi
	popl      %ebp
	ret       
	.size	_ZN7acommon6String11assign_onlyEPKcj, .-_ZN7acommon6String11assign_onlyEPKcj
# ----------------------
.L0805D012:
	.p2align 4
# ----------------------
	.weak	_ZNK7acommon6String5c_strEv
	.type	_ZNK7acommon6String5c_strEv, @function
_ZNK7acommon6String5c_strEv:
	movl      4(%esp), %eax
	movl      4(%eax), %edx
	testl     %edx, %edx
	je        .L0805D038
.L0805D02B:
	movl      8(%eax), %edx
	movb      $0, (%edx)
	movl      4(%eax), %eax
	ret       
.L0805D035:
	.p2align 4,,10
	.p2align 3
.L0805D038:
	movl      $.LC08063D11, %eax
	ret       
	.size	_ZNK7acommon6String5c_strEv, .-_ZNK7acommon6String5c_strEv
# ----------------------
.L0805D03E:
	.p2align 4,,10
	.p2align 3
# ----------------------
	.weak	_ZN7acommon6String4mstrEv
	.type	_ZN7acommon6String4mstrEv, @function
_ZN7acommon6String4mstrEv:
	pushl     %ebx
	subl      $8, %esp
	movl      16(%esp), %ebx
	movl      4(%ebx), %edx
	testl     %edx, %edx
	je        .L0805D060
.L0805D04F:
	movl      8(%ebx), %eax
	movb      $0, (%eax)
	movl      4(%ebx), %eax
	addl      $8, %esp
	popl      %ebx
	ret       
.L0805D05D:
	.p2align 4,,10
	.p2align 3
.L0805D060:
	subl      $8, %esp
	pushl     $0
	pushl     %ebx
	call      _ZN7acommon6String9reserve_iEj
.L0805D06B:
	movl      4(%ebx), %eax
	addl      $16, %esp
	testl     %eax, %eax
	jne       .L0805D04F
.L0805D075:
	subl      $8, %esp
	pushl     $0
	pushl     %ebx
	call      _ZN7acommon6String9reserve_iEj
.L0805D080:
	movl      8(%ebx), %eax
	addl      $16, %esp
	movb      $0, (%eax)
	movl      4(%ebx), %eax
	addl      $8, %esp
	popl      %ebx
	ret       
	.size	_ZN7acommon6String4mstrEv, .-_ZN7acommon6String4mstrEv
# ----------------------
.L0805D091:
	.p2align 4
# ----------------------
	.weak	_ZN7acommon6String6assignEPKcj
	.type	_ZN7acommon6String6assignEPKcj, @function
_ZN7acommon6String6assignEPKcj:
	pushl     %esi
	pushl     %ebx
	subl      $4, %esp
	movl      16(%esp), %esi
	movl      24(%esp), %ebx
	movl      4(%esi), %eax
	testl     %ebx, %ebx
	movl      %eax, 8(%esi)
	je        .L0805D0D7
.L0805D0B7:
	movl      12(%esi), %edx
	subl      %eax, %edx
	cmpl      %edx, %ebx
	jge       .L0805D0E0
.L0805D0C0:
	subl      $4, %esp
	pushl     %ebx
	pushl     28(%esp)
	pushl     %eax
	call      memmove
.L0805D0CE:
	addl      4(%esi), %ebx
	addl      $16, %esp
	movl      %ebx, 8(%esi)
.L0805D0D7:
	addl      $4, %esp
	popl      %ebx
	popl      %esi
	ret       
.L0805D0DD:
	.p2align 4,,10
	.p2align 3
.L0805D0E0:
	subl      $8, %esp
	pushl     %ebx
	pushl     %esi
	call      _ZN7acommon6String9reserve_iEj
.L0805D0EA:
	movl      4(%esi), %eax
	addl      $16, %esp
	jmp       .L0805D0C0
	.size	_ZN7acommon6String6assignEPKcj, .-_ZN7acommon6String6assignEPKcj
# ----------------------
.L0805D0F2:
	.p2align 4
# ----------------------
	.weak	_ZN7acommon6String6appendEPKvj
	.type	_ZN7acommon6String6appendEPKvj, @function
_ZN7acommon6String6appendEPKvj:
	pushl     %edi
	pushl     %esi
	pushl     %ebx
	movl      16(%esp), %ebx
	movl      24(%esp), %esi
	movl      8(%ebx), %eax
	movl      4(%ebx), %ecx
	movl      12(%ebx), %edi
	movl      %eax, %edx
	subl      %ecx, %edx
	subl      %ecx, %edi
	addl      %esi, %edx
	cmpl      %edi, %edx
	jge       .L0805D148
.L0805D120:
	testl     %esi, %esi
	je        .L0805D138
.L0805D124:
	subl      $4, %esp
	pushl     %esi
	pushl     28(%esp)
	pushl     %eax
	call      memcpy
.L0805D132:
	movl      8(%ebx), %eax
	addl      $16, %esp
.L0805D138:
	addl      %eax, %esi
	movl      %ebx, %eax
	movl      %esi, 8(%ebx)
	popl      %ebx
	popl      %esi
	popl      %edi
	ret       
.L0805D143:
	.p2align 4,,10
	.p2align 3
.L0805D148:
	subl      $8, %esp
	pushl     %edx
	pushl     %ebx
	call      _ZN7acommon6String9reserve_iEj
.L0805D152:
	movl      8(%ebx), %eax
	addl      $16, %esp
	jmp       .L0805D120
	.size	_ZN7acommon6String6appendEPKvj, .-_ZN7acommon6String6appendEPKvj
# ----------------------
.L0805D15A:
	.p2align 4,,10
	.p2align 3
# ----------------------
	.weak	_ZN7acommon6String6appendEPKc
	.type	_ZN7acommon6String6appendEPKc, @function
_ZN7acommon6String6appendEPKc:
	pushl     %esi
	pushl     %ebx
	subl      $4, %esp
	movl      16(%esp), %ebx
	movl      20(%esp), %esi
	movl      8(%ebx), %edx
	testl     %edx, %edx
	je        .L0805D1D2
.L0805D174:
	movzbl    (%esi), %eax
	testb     %al, %al
	jne       .L0805D195
.L0805D17B:
	jmp       .L0805D1C0
.L0805D17D:
	.p2align 4,,10
	.p2align 3
.L0805D180:
	movb      %al, (%edx)
	movl      8(%ebx), %eax
	addl      $1, %esi
	leal      1(%eax), %edx
	movl      %edx, 8(%ebx)
	movzbl    (%esi), %eax
	testb     %al, %al
	je        .L0805D1C0
.L0805D195:
	movl      12(%ebx), %ecx
	subl      $1, %ecx
	cmpl      %ecx, %edx
	jne       .L0805D180
.L0805D19F:
	subl      $12, %esp
	pushl     %esi
	call      strlen
.L0805D1A8:
	addl      $12, %esp
	pushl     %eax
	pushl     %esi
	pushl     %ebx
	call      _ZN7acommon6String6appendEPKvj
.L0805D1B3:
	addl      $16, %esp
	movl      %ebx, %eax
	addl      $4, %esp
	popl      %ebx
	popl      %esi
	ret       
.L0805D1BE:
	.p2align 4,,10
	.p2align 3
.L0805D1C0:
	movl      12(%ebx), %eax
	subl      $1, %eax
	cmpl      %eax, %edx
	je        .L0805D19F
.L0805D1CA:
	addl      $4, %esp
	movl      %ebx, %eax
	popl      %ebx
	popl      %esi
	ret       
.L0805D1D2:
	subl      $8, %esp
	pushl     $0
	pushl     %ebx
	call      _ZN7acommon6String9reserve_iEj
.L0805D1DD:
	movl      8(%ebx), %edx
	addl      $16, %esp
	jmp       .L0805D174
	.size	_ZN7acommon6String6appendEPKc, .-_ZN7acommon6String6appendEPKc
# ----------------------
.L0805D1E5:
	.p2align 4
# ----------------------
	.weak	_ZN7acommon6String6appendEc
	.type	_ZN7acommon6String6appendEc, @function
_ZN7acommon6String6appendEc:
	pushl     %edi
	pushl     %esi
	pushl     %ebx
	movl      16(%esp), %ebx
	movl      20(%esp), %esi
	movl      8(%ebx), %eax
	movl      4(%ebx), %ecx
	movl      12(%ebx), %edi
	movl      %eax, %edx
	subl      %ecx, %edx
	subl      %ecx, %edi
	addl      $1, %edx
	cmpl      %edi, %edx
	jl        .L0805D221
.L0805D211:
	subl      $8, %esp
	pushl     %edx
	pushl     %ebx
	call      _ZN7acommon6String9reserve_iEj
.L0805D21B:
	movl      8(%ebx), %eax
	addl      $16, %esp
.L0805D221:
	movl      %esi, %edx
	movb      %dl, (%eax)
	addl      $1, 8(%ebx)
	movl      %ebx, %eax
	popl      %ebx
	popl      %esi
	popl      %edi
	ret       
	.size	_ZN7acommon6String6appendEc, .-_ZN7acommon6String6appendEc
# ----------------------
.L0805D22F:
	.p2align 4,,10
	.p2align 3
# ----------------------
	.weak	_ZN7acommon6StringD0Ev
	.type	_ZN7acommon6StringD0Ev, @function
_ZN7acommon6StringD0Ev:
	pushl     %ebx
	subl      $8, %esp
	movl      16(%esp), %ebx
	movl      4(%ebx), %eax
	movl      $_ZTVN7acommon6StringE+8, (%ebx)
	testl     %eax, %eax
	je        .L0805D251
.L0805D245:
	subl      $12, %esp
	pushl     %eax
	call      free
.L0805D24E:
	addl      $16, %esp
.L0805D251:
	movl      %ebx, 16(%esp)
	addl      $8, %esp
	popl      %ebx
	jmp       _ZdlPv
	.size	_ZN7acommon6StringD0Ev, .-_ZN7acommon6StringD0Ev
# ----------------------
.L0805D25E:
	.p2align 4,,10
	.p2align 3
# ----------------------
	.weak	_ZN7acommonplERKNS_10ParmStringES2_
	.type	_ZN7acommonplERKNS_10ParmStringES2_, @function
_ZN7acommonplERKNS_10ParmStringES2_:
	pushl     %ebp
	pushl     %edi
	pushl     %esi
	pushl     %ebx
	subl      $28, %esp
	movl      52(%esp), %ebp
	movl      48(%esp), %esi
	movl      56(%esp), %ebx
	movl      4(%ebp), %edi
	movl      $_ZTVN7acommon6StringE+8, (%esi)
	movl      $0, 4(%esi)
	movl      $0, 8(%esi)
	movl      $0, 12(%esi)
	cmpl      $-1, %edi
	je        .L0805D3D0
.L0805D29A:
	movl      4(%ebx), %eax
	cmpl      $-1, %eax
	je        .L0805D3F0
.L0805D2A6:
	xorl      %edx, %edx
	addl      %eax, %edi
	js        .L0805D2BC
.L0805D2AC:
	subl      $8, %esp
	pushl     %edi
	pushl     %esi
	call      _ZN7acommon6String9reserve_iEj
.L0805D2B6:
	movl      8(%esi), %edx
	addl      $16, %esp
.L0805D2BC:
	movl      4(%ebp), %edi
	cmpl      $-1, %edi
	je        .L0805D408
.L0805D2C8:
	movl      (%ebp), %eax
	movl      4(%esi), %ecx
	movl      12(%esi), %ebp
	movl      %eax, 12(%esp)
	movl      %edx, %eax
	subl      %ecx, %eax
	subl      %ecx, %ebp
	addl      %edi, %eax
	cmpl      %ebp, %eax
	jge       .L0805D358
.L0805D2E1:
	testl     %edi, %edi
	je        .L0805D2F9
.L0805D2E5:
	subl      $4, %esp
	pushl     %edi
	pushl     20(%esp)
	pushl     %edx
	call      memcpy
.L0805D2F3:
	movl      8(%esi), %edx
	addl      $16, %esp
.L0805D2F9:
	addl      %edi, %edx
	movl      %edx, 8(%esi)
.L0805D2FE:
	movl      4(%ebx), %edi
	cmpl      $-1, %edi
	je        .L0805D370
.L0805D306:
	movl      4(%esi), %ecx
	movl      12(%esi), %ebp
	movl      %edx, %eax
	movl      (%ebx), %ebx
	subl      %ecx, %eax
	subl      %ecx, %ebp
	addl      %edi, %eax
	cmpl      %ebp, %eax
	jge       .L0805D340
.L0805D31A:
	testl     %edi, %edi
	je        .L0805D32F
.L0805D31E:
	subl      $4, %esp
	pushl     %edi
	pushl     %ebx
	pushl     %edx
	call      memcpy
.L0805D329:
	movl      8(%esi), %edx
	addl      $16, %esp
.L0805D32F:
	addl      %edi, %edx
	movl      %edx, 8(%esi)
.L0805D334:
	addl      $28, %esp
	movl      %esi, %eax
	popl      %ebx
	popl      %esi
	popl      %edi
	popl      %ebp
	ret       $4
.L0805D340:
	subl      $8, %esp
	pushl     %eax
	pushl     %esi
	call      _ZN7acommon6String9reserve_iEj
.L0805D34A:
	movl      8(%esi), %edx
	addl      $16, %esp
	jmp       .L0805D31A
.L0805D352:
	.p2align 4,,10
	.p2align 3
.L0805D358:
	subl      $8, %esp
	pushl     %eax
	pushl     %esi
	call      _ZN7acommon6String9reserve_iEj
.L0805D362:
	movl      8(%esi), %edx
	addl      $16, %esp
	jmp       .L0805D2E1
.L0805D36D:
	.p2align 4,,10
	.p2align 3
.L0805D370:
	testl     %edx, %edx
	movl      (%ebx), %ebx
	je        .L0805D4A6
.L0805D37A:
	movzbl    (%ebx), %ecx
	testb     %cl, %cl
	jne       .L0805D3A9
.L0805D381:
	jmp       .L0805D460
.L0805D386:
	.p2align 4
.L0805D390:
	movb      %cl, (%edx)
	movl      8(%esi), %eax
	addl      $1, %ebx
	leal      1(%eax), %edx
	movl      %edx, 8(%esi)
	movzbl    (%ebx), %ecx
	testb     %cl, %cl
	je        .L0805D460
.L0805D3A9:
	movl      12(%esi), %eax
	subl      $1, %eax
	cmpl      %eax, %edx
	jne       .L0805D390
.L0805D3B3:
	subl      $12, %esp
	pushl     %ebx
	call      strlen
.L0805D3BC:
	addl      $12, %esp
	pushl     %eax
	pushl     %ebx
	pushl     %esi
	call      _ZN7acommon6String6appendEPKvj
.L0805D3C7:
	addl      $16, %esp
	jmp       .L0805D334
.L0805D3CF:
	.p2align 4,,10
	.p2align 3
.L0805D3D0:
	subl      $12, %esp
	pushl     (%ebp)
	call      strlen
.L0805D3DB:
	movl      %eax, %edi
	movl      %eax, 4(%ebp)
	movl      4(%ebx), %eax
	addl      $16, %esp
	cmpl      $-1, %eax
	jne       .L0805D2A6
.L0805D3EF:
	.p2align 4,,10
	.p2align 3
.L0805D3F0:
	subl      $12, %esp
	pushl     (%ebx)
	call      strlen
.L0805D3FA:
	addl      $16, %esp
	movl      %eax, 4(%ebx)
	jmp       .L0805D2A6
.L0805D405:
	.p2align 4,,10
	.p2align 3
.L0805D408:
	testl     %edx, %edx
	movl      (%ebp), %edi
	je        .L0805D490
.L0805D413:
	movzbl    (%edi), %ecx
	testb     %cl, %cl
	jne       .L0805D435
.L0805D41A:
	jmp       .L0805D478
.L0805D41C:
	.p2align 4,,10
	.p2align 3
.L0805D420:
	movb      %cl, (%edx)
	movl      8(%esi), %eax
	addl      $1, %edi
	leal      1(%eax), %edx
	movl      %edx, 8(%esi)
	movzbl    (%edi), %ecx
	testb     %cl, %cl
	je        .L0805D478
.L0805D435:
	movl      12(%esi), %eax
	subl      $1, %eax
	cmpl      %eax, %edx
	jne       .L0805D420
.L0805D43F:
	subl      $12, %esp
	pushl     %edi
	call      strlen
.L0805D448:
	addl      $12, %esp
	pushl     %eax
	pushl     %edi
	pushl     %esi
	call      _ZN7acommon6String6appendEPKvj
.L0805D453:
	movl      8(%esi), %edx
	addl      $16, %esp
	jmp       .L0805D2FE
.L0805D45E:
	.p2align 4,,10
	.p2align 3
.L0805D460:
	movl      12(%esi), %eax
	subl      $1, %eax
	cmpl      %eax, %edx
	jne       .L0805D334
.L0805D46E:
	jmp       .L0805D3B3
.L0805D473:
	.p2align 4,,10
	.p2align 3
.L0805D478:
	movl      12(%esi), %eax
	subl      $1, %eax
	cmpl      %eax, %edx
	jne       .L0805D2FE
.L0805D486:
	jmp       .L0805D43F
.L0805D488:
	.p2align 4
.L0805D490:
	subl      $8, %esp
	pushl     $0
	pushl     %esi
	call      _ZN7acommon6String9reserve_iEj
.L0805D49B:
	movl      8(%esi), %edx
	addl      $16, %esp
	jmp       .L0805D413
.L0805D4A6:
	subl      $8, %esp
	pushl     $0
	pushl     %esi
	call      _ZN7acommon6String9reserve_iEj
.L0805D4B1:
	movl      8(%esi), %edx
	addl      $16, %esp
	jmp       .L0805D37A
	.size	_ZN7acommonplERKNS_10ParmStringES2_, .-_ZN7acommonplERKNS_10ParmStringES2_
# ----------------------
.L0805D4BC:
	.p2align 4,,10
	.p2align 3
# ----------------------
	.weak	_ZN7acommoneqERKNS_6StringEPKc
	.type	_ZN7acommoneqERKNS_6StringEPKc, @function
_ZN7acommoneqERKNS_6StringEPKc:
	subl      $12, %esp
	movl      16(%esp), %eax
	movl      4(%eax), %edx
	testl     %edx, %edx
	je        .L0805D4F0
.L0805D4CE:
	movl      8(%eax), %edx
	movb      $0, (%edx)
	movl      4(%eax), %eax
.L0805D4D7:
	subl      $8, %esp
	pushl     28(%esp)
	pushl     %eax
	call      strcmp
.L0805D4E4:
	testl     %eax, %eax
	sete      %al
	addl      $28, %esp
	ret       
.L0805D4ED:
	.p2align 4,,10
	.p2align 3
.L0805D4F0:
	movl      $.LC08063D11, %eax
	jmp       .L0805D4D7
	.size	_ZN7acommoneqERKNS_6StringEPKc, .-_ZN7acommoneqERKNS_6StringEPKc
# ----------------------
.L0805D4F7:
	.p2align 4
# ----------------------
	.weak	_ZNK7acommon12PosibErrBase16posib_handle_errEv
	.type	_ZNK7acommon12PosibErrBase16posib_handle_errEv, @function
_ZNK7acommon12PosibErrBase16posib_handle_errEv:
	movl      4(%esp), %edx
	movl      (%edx), %eax
	testl     %eax, %eax
	je        .L0805D510
.L0805D50A:
	cmpb      $0, 4(%eax)
	je        .L0805D518
.L0805D510:
	rep; ret       
.L0805D512:
	.p2align 4,,10
	.p2align 3
.L0805D518:
	jmp       _ZNK7acommon12PosibErrBase10handle_errEv
	.size	_ZNK7acommon12PosibErrBase16posib_handle_errEv, .-_ZNK7acommon12PosibErrBase16posib_handle_errEv
# ----------------------
.L0805D51D:
	.p2align 4,,10
	.p2align 3
# ----------------------
	.weak	_ZN7acommon12PosibErrBase7destroyEv
	.type	_ZN7acommon12PosibErrBase7destroyEv, @function
_ZN7acommon12PosibErrBase7destroyEv:
	pushl     %ebx
	subl      $8, %esp
	movl      16(%esp), %ebx
	movl      (%ebx), %edx
	testl     %edx, %edx
	je        .L0805D550
.L0805D52E:
	subl      $1, 8(%edx)
	jne       .L0805D550
.L0805D534:
	cmpb      $0, 4(%edx)
	je        .L0805D558
.L0805D53A:
	movl      %ebx, 16(%esp)
	addl      $8, %esp
	popl      %ebx
	jmp       _ZN7acommon12PosibErrBase3delEv
.L0805D547:
	.p2align 4
.L0805D550:
	addl      $8, %esp
	popl      %ebx
	ret       
.L0805D555:
	.p2align 4,,10
	.p2align 3
.L0805D558:
	subl      $12, %esp
	pushl     %ebx
	call      _ZNK7acommon12PosibErrBase10handle_errEv
.L0805D561:
	addl      $16, %esp
	movl      %ebx, 16(%esp)
	addl      $8, %esp
	popl      %ebx
	jmp       _ZN7acommon12PosibErrBase3delEv
	.size	_ZN7acommon12PosibErrBase7destroyEv, .-_ZN7acommon12PosibErrBase7destroyEv
# ----------------------
.L0805D571:
	.p2align 4
# ----------------------
	.weak	_ZN7acommon7ConvObjD1Ev
	.type	_ZN7acommon7ConvObjD1Ev, @function
_ZN7acommon7ConvObjD1Ev:
	pushl     %ebx
	subl      $8, %esp
	movl      16(%esp), %eax
	movl      (%eax), %ebx
	testl     %ebx, %ebx
	je        .L0805D5A8
.L0805D58E:
	subl      $12, %esp
	pushl     %ebx
	call      _ZN7acommon7ConvertD1Ev
.L0805D597:
	movl      %ebx, 32(%esp)
	addl      $24, %esp
	popl      %ebx
	jmp       _ZdlPv
.L0805D5A4:
	.p2align 4,,10
	.p2align 3
.L0805D5A8:
	addl      $8, %esp
	popl      %ebx
	ret       
	.size	_ZN7acommon7ConvObjD1Ev, .-_ZN7acommon7ConvObjD1Ev
# ----------------------
.L0805D5AD:
	.p2align 4,,10
	.p2align 3
# ----------------------
	.weak	_ZN7acommon5ConvPclEPc
	.type	_ZN7acommon5ConvPclEPc, @function
_ZN7acommon5ConvPclEPc:
	pushl     %ebp
	pushl     %edi
	pushl     %esi
	pushl     %ebx
	subl      $12, %esp
	movl      32(%esp), %ebx
	movl      36(%esp), %edx
	movl      (%ebx), %esi
	movl      %edx, %eax
	testl     %esi, %esi
	je        .L0805D5F4
.L0805D5C7:
	movl      20(%ebx), %eax
	leal      16(%ebx), %edi
	movl      %eax, 24(%ebx)
	movl      28(%esi), %eax
	testl     %eax, %eax
	je        .L0805D600
.L0805D5D7:
	movl      (%eax), %ecx
	pushl     %edi
	pushl     $-1
	pushl     %edx
	pushl     %eax
	call      *4(%ecx)
.L0805D5E1:
	addl      $16, %esp
.L0805D5E4:
	movl      20(%ebx), %edx
	testl     %edx, %edx
	je        .L0805D630
.L0805D5EB:
	movl      24(%ebx), %eax
	movb      $0, (%eax)
	movl      20(%ebx), %eax
.L0805D5F4:
	addl      $12, %esp
	popl      %ebx
	popl      %esi
	popl      %edi
	popl      %ebp
	ret       
.L0805D5FC:
	.p2align 4,,10
	.p2align 3
.L0805D600:
	movl      4(%ebx), %eax
	leal      4(%ebx), %ebp
	movl      %eax, 8(%ebx)
	movl      8(%esi), %eax
	movl      (%eax), %ecx
	pushl     %ebp
	pushl     $-1
	pushl     %edx
	pushl     %eax
	call      *12(%ecx)
.L0805D616:
	movl      20(%esi), %eax
	movl      (%eax), %edx
	pushl     %edi
	pushl     8(%ebx)
	pushl     4(%ebx)
	pushl     %eax
	call      *12(%edx)
.L0805D626:
	addl      $32, %esp
	jmp       .L0805D5E4
.L0805D62B:
	.p2align 4,,10
	.p2align 3
.L0805D630:
	subl      $8, %esp
	pushl     $0
	pushl     %edi
	call      _ZN7acommon6String9reserve_iEj
.L0805D63B:
	movl      20(%ebx), %eax
	addl      $16, %esp
	testl     %eax, %eax
	jne       .L0805D5EB
.L0805D645:
	subl      $8, %esp
	pushl     $0
	pushl     %edi
	call      _ZN7acommon6String9reserve_iEj
.L0805D650:
	addl      $16, %esp
	jmp       .L0805D5EB
	.size	_ZN7acommon5ConvPclEPc, .-_ZN7acommon5ConvPclEPc
# ----------------------
.L0805D655:
	.p2align 4
# ----------------------
	.weak	_ZN7acommon5ConvPclERKNS_10ParmStringE
	.type	_ZN7acommon5ConvPclERKNS_10ParmStringE, @function
_ZN7acommon5ConvPclERKNS_10ParmStringE:
	pushl     %ebp
	pushl     %edi
	pushl     %esi
	pushl     %ebx
	subl      $12, %esp
	movl      32(%esp), %ebx
	movl      (%ebx), %esi
	testl     %esi, %esi
	je        .L0805D6B0
.L0805D671:
	movl      20(%ebx), %eax
	leal      16(%ebx), %edi
	movl      %eax, 24(%ebx)
	movl      36(%esp), %eax
	movl      (%eax), %edx
	movl      28(%esi), %eax
	testl     %eax, %eax
	je        .L0805D6C0
.L0805D687:
	movl      (%eax), %ecx
	pushl     %edi
	pushl     $-1
	pushl     %edx
	pushl     %eax
	call      *4(%ecx)
.L0805D691:
	addl      $16, %esp
.L0805D694:
	movl      20(%ebx), %edx
	testl     %edx, %edx
	je        .L0805D6F0
.L0805D69B:
	movl      24(%ebx), %eax
	movb      $0, (%eax)
	movl      20(%ebx), %eax
	addl      $12, %esp
	popl      %ebx
	popl      %esi
	popl      %edi
	popl      %ebp
	ret       
.L0805D6AC:
	.p2align 4,,10
	.p2align 3
.L0805D6B0:
	movl      36(%esp), %eax
	movl      (%eax), %eax
	addl      $12, %esp
	popl      %ebx
	popl      %esi
	popl      %edi
	popl      %ebp
	ret       
.L0805D6BE:
	.p2align 4,,10
	.p2align 3
.L0805D6C0:
	movl      4(%ebx), %eax
	leal      4(%ebx), %ebp
	movl      %eax, 8(%ebx)
	movl      8(%esi), %eax
	movl      (%eax), %ecx
	pushl     %ebp
	pushl     $-1
	pushl     %edx
	pushl     %eax
	call      *12(%ecx)
.L0805D6D6:
	movl      20(%esi), %eax
	movl      (%eax), %edx
	pushl     %edi
	pushl     8(%ebx)
	pushl     4(%ebx)
	pushl     %eax
	call      *12(%edx)
.L0805D6E6:
	addl      $32, %esp
	jmp       .L0805D694
.L0805D6EB:
	.p2align 4,,10
	.p2align 3
.L0805D6F0:
	subl      $8, %esp
	pushl     $0
	pushl     %edi
	call      _ZN7acommon6String9reserve_iEj
.L0805D6FB:
	movl      20(%ebx), %eax
	addl      $16, %esp
	testl     %eax, %eax
	jne       .L0805D69B
.L0805D705:
	subl      $8, %esp
	pushl     $0
	pushl     %edi
	call      _ZN7acommon6String9reserve_iEj
.L0805D710:
	addl      $16, %esp
	jmp       .L0805D69B
	.size	_ZN7acommon5ConvPclERKNS_10ParmStringE, .-_ZN7acommon5ConvPclERKNS_10ParmStringE
# ----------------------
.L0805D715:
	.p2align 4
# ----------------------
	.weak	_ZN7acommon5ConvPD1Ev
	.type	_ZN7acommon5ConvPD1Ev, @function
_ZN7acommon5ConvPD1Ev:
	pushl     %ebx
	subl      $8, %esp
	movl      16(%esp), %ebx
	movl      20(%ebx), %eax
	movl      $_ZTVN7acommon6StringE+8, 16(%ebx)
	testl     %eax, %eax
	je        .L0805D742
.L0805D736:
	subl      $12, %esp
	pushl     %eax
	call      free
.L0805D73F:
	addl      $16, %esp
.L0805D742:
	movl      4(%ebx), %eax
	testl     %eax, %eax
	je        .L0805D760
.L0805D749:
	movl      %eax, 16(%esp)
	addl      $8, %esp
	popl      %ebx
	jmp       _ZdlPv
.L0805D756:
	.p2align 4
.L0805D760:
	addl      $8, %esp
	popl      %ebx
	ret       
	.size	_ZN7acommon5ConvPD1Ev, .-_ZN7acommon5ConvPD1Ev
# ----------------------
.L0805D765:
	.p2align 4
# ----------------------
	.weak	_ZN7acommon4Conv5setupERKNS_6ConfigERKNS_10ParmStringES6_NS_9NormalizeE
	.type	_ZN7acommon4Conv5setupERKNS_6ConfigERKNS_10ParmStringES6_NS_9NormalizeE, @function
_ZN7acommon4Conv5setupERKNS_6ConfigERKNS_10ParmStringES6_NS_9NormalizeE:
	pushl     %edi
	pushl     %esi
	pushl     %ebx
	subl      $16, %esp
	movl      36(%esp), %ebx
	movl      32(%ebx), %esi
	testl     %esi, %esi
	je        .L0805D795
.L0805D781:
	subl      $12, %esp
	pushl     %esi
	call      _ZN7acommon7ConvertD1Ev
.L0805D78A:
	movl      %esi, (%esp)
	call      _ZdlPv
.L0805D792:
	addl      $16, %esp
.L0805D795:
	movl      $0, 32(%ebx)
	leal      8(%esp), %esi
	pushl     52(%esp)
	pushl     $1
	movl      56(%esp), %eax
	pushl     4(%eax)
	pushl     (%eax)
	movl      60(%esp), %eax
	pushl     4(%eax)
	pushl     (%eax)
	pushl     64(%esp)
	pushl     %esi
	call      _ZN7acommon20internal_new_convertERKNS_6ConfigENS_10ParmStringES3_bNS_9NormalizeE
.L0805D7C2:
	movl      36(%esp), %eax
	addl      $28, %esp
	testl     %eax, %eax
	je        .L0805D910
.L0805D7D1:
	addl      $1, 8(%eax)
	movl      %eax, 4(%esp)
	movl      8(%eax), %ecx
	leal      -1(%ecx), %edx
	testl     %edx, %edx
	movl      %edx, 8(%eax)
	jne       .L0805D7FC
.L0805D7E6:
	cmpb      $0, 4(%eax)
	je        .L0805D8B8
.L0805D7F0:
	subl      $12, %esp
	pushl     %esi
	call      _ZN7acommon12PosibErrBase3delEv
.L0805D7F9:
	addl      $16, %esp
.L0805D7FC:
	movl      4(%esp), %eax
	testl     %eax, %eax
	movl      %eax, (%esp)
	je        .L0805D8D8
.L0805D80B:
	movl      8(%eax), %edx
	testl     %edx, %edx
	jne       .L0805D838
.L0805D812:
	cmpb      $0, 4(%eax)
	leal      4(%esp), %edi
	je        .L0805D8A0
.L0805D820:
	subl      $12, %esp
	pushl     %edi
	call      _ZN7acommon12PosibErrBase3delEv
.L0805D829:
	movl      16(%esp), %eax
	addl      $16, %esp
	testl     %eax, %eax
	je        .L0805D8D8
.L0805D838:
	movl      8(%eax), %ecx
	movl      %eax, 8(%esp)
	leal      1(%ecx), %edx
	movl      32(%esp), %ecx
	testl     %edx, %edx
	movl      %edx, 8(%eax)
	movl      %eax, (%ecx)
	jne       .L0805D865
.L0805D84F:
	cmpb      $0, 4(%eax)
	je        .L0805D938
.L0805D859:
	subl      $12, %esp
	pushl     %esi
	call      _ZN7acommon12PosibErrBase3delEv
.L0805D862:
	addl      $16, %esp
.L0805D865:
	movl      (%esp), %edx
	testl     %edx, %edx
	je        .L0805D900
.L0805D870:
	subl      $1, 8(%edx)
	jne       .L0805D900
.L0805D87A:
	cmpb      $0, 4(%edx)
	movl      %esp, %ebx
	je        .L0805D950
.L0805D886:
	subl      $12, %esp
	pushl     %ebx
	call      _ZN7acommon12PosibErrBase3delEv
.L0805D88F:
	addl      $16, %esp
	movl      32(%esp), %eax
	addl      $16, %esp
	popl      %ebx
	popl      %esi
	popl      %edi
	ret       $4
.L0805D89F:
	.p2align 4,,10
	.p2align 3
.L0805D8A0:
	subl      $12, %esp
	pushl     %edi
	call      _ZNK7acommon12PosibErrBase10handle_errEv
.L0805D8A9:
	addl      $16, %esp
	jmp       .L0805D820
.L0805D8B1:
	.p2align 4,,10
	.p2align 3
.L0805D8B8:
	subl      $12, %esp
	pushl     %esi
	call      _ZNK7acommon12PosibErrBase10handle_errEv
.L0805D8C1:
	addl      $16, %esp
	subl      $12, %esp
	pushl     %esi
	call      _ZN7acommon12PosibErrBase3delEv
.L0805D8CD:
	addl      $16, %esp
	jmp       .L0805D7FC
.L0805D8D5:
	.p2align 4,,10
	.p2align 3
.L0805D8D8:
	subl      $12, %esp
	leal      12(%esp), %eax
	pushl     %eax
	call      _ZN7acommon12PosibErrBase7destroyEv
.L0805D8E5:
	movl      32(%ebx), %eax
	movl      48(%esp), %ecx
	addl      $16, %esp
	movl      %eax, (%ebx)
	movl      _ZN7acommonL6no_errE....0x806e934, %eax
	testl     %eax, %eax
	movl      %eax, (%ecx)
	je        .L0805D900
.L0805D8FC:
	addl      $1, 8(%eax)
.L0805D900:
	movl      32(%esp), %eax
	addl      $16, %esp
	popl      %ebx
	popl      %esi
	popl      %edi
	ret       $4
.L0805D90D:
	.p2align 4,,10
	.p2align 3
.L0805D910:
	movl      12(%esp), %eax
	movl      %eax, 32(%ebx)
	movl      _ZN7acommonL6no_errE....0x806e934, %eax
	testl     %eax, %eax
	movl      %eax, 4(%esp)
	je        .L0805D7FC
.L0805D928:
	addl      $1, 8(%eax)
	jmp       .L0805D7FC
.L0805D931:
	.p2align 4,,10
	.p2align 3
.L0805D938:
	subl      $12, %esp
	pushl     %esi
	call      _ZNK7acommon12PosibErrBase10handle_errEv
.L0805D941:
	addl      $16, %esp
	jmp       .L0805D859
.L0805D949:
	.p2align 4
.L0805D950:
	subl      $12, %esp
	pushl     %ebx
	call      _ZNK7acommon12PosibErrBase10handle_errEv
.L0805D959:
	addl      $16, %esp
	jmp       .L0805D886
	.size	_ZN7acommon4Conv5setupERKNS_6ConfigERKNS_10ParmStringES6_NS_9NormalizeE, .-_ZN7acommon4Conv5setupERKNS_6ConfigERKNS_10ParmStringES6_NS_9NormalizeE
# ----------------------
.L0805D961:
	.p2align 4
# ----------------------
	.weak	_ZNK8aspeller8Language6expandERKN7acommon10ParmStringES4_RNS1_8ObjStackEi
	.type	_ZNK8aspeller8Language6expandERKN7acommon10ParmStringES4_RNS1_8ObjStackEi, @function
_ZNK8aspeller8Language6expandERKN7acommon10ParmStringES4_RNS1_8ObjStackEi:
	pushl     %edi
	pushl     %esi
	pushl     %ebx
	movl      16(%esp), %edx
	movl      20(%esp), %ecx
	movl      24(%esp), %ebx
	movl      28(%esp), %esi
	movl      32(%esp), %edi
	movl      6044(%edx), %eax
	testl     %eax, %eax
	je        .L0805D9B0
.L0805D991:
	subl      $4, %esp
	pushl     %edi
	pushl     %esi
	pushl     4(%ebx)
	pushl     (%ebx)
	pushl     4(%ecx)
	pushl     (%ecx)
	pushl     %eax
	call      _ZNK8aspeller8AffixMgr6expandEN7acommon10ParmStringES2_RNS1_8ObjStackEi
.L0805D9A6:
	addl      $32, %esp
	popl      %ebx
	popl      %esi
	popl      %edi
	ret       
.L0805D9AD:
	.p2align 4,,10
	.p2align 3
.L0805D9B0:
	popl      %ebx
	popl      %esi
	popl      %edi
	jmp       _ZNK8aspeller8Language11fake_expandERKN7acommon10ParmStringES4_RNS1_8ObjStackE
	.size	_ZNK8aspeller8Language6expandERKN7acommon10ParmStringES4_RNS1_8ObjStackEi, .-_ZNK8aspeller8Language6expandERKN7acommon10ParmStringES4_RNS1_8ObjStackEi
# ----------------------
.L0805D9B8:
	.p2align 4
# ----------------------
	.weak	_ZN7acommon8PosibErrINS_6StringEED1Ev
	.type	_ZN7acommon8PosibErrINS_6StringEED1Ev, @function
_ZN7acommon8PosibErrINS_6StringEED1Ev:
	pushl     %ebx
	subl      $8, %esp
	movl      16(%esp), %ebx
	movl      8(%ebx), %eax
	movl      $_ZTVN7acommon6StringE+8, 4(%ebx)
	testl     %eax, %eax
	je        .L0805D9E2
.L0805D9D6:
	subl      $12, %esp
	pushl     %eax
	call      free
.L0805D9DF:
	addl      $16, %esp
.L0805D9E2:
	movl      (%ebx), %edx
	testl     %edx, %edx
	je        .L0805DA08
.L0805D9E8:
	subl      $1, 8(%edx)
	jne       .L0805DA08
.L0805D9EE:
	cmpb      $0, 4(%edx)
	je        .L0805DA10
.L0805D9F4:
	movl      %ebx, 16(%esp)
	addl      $8, %esp
	popl      %ebx
	jmp       _ZN7acommon12PosibErrBase3delEv
.L0805DA01:
	.p2align 4,,10
	.p2align 3
.L0805DA08:
	addl      $8, %esp
	popl      %ebx
	ret       
.L0805DA0D:
	.p2align 4,,10
	.p2align 3
.L0805DA10:
	subl      $12, %esp
	pushl     %ebx
	call      _ZNK7acommon12PosibErrBase10handle_errEv
.L0805DA19:
	addl      $16, %esp
	movl      %ebx, 16(%esp)
	addl      $8, %esp
	popl      %ebx
	jmp       _ZN7acommon12PosibErrBase3delEv
	.size	_ZN7acommon8PosibErrINS_6StringEED1Ev, .-_ZN7acommon8PosibErrINS_6StringEED1Ev
# ----------------------
.L0805DA29:
	.p2align 4
# ----------------------
	.weak	_ZN10PreSufList5clearEv
	.type	_ZN10PreSufList5clearEv, @function
_ZN10PreSufList5clearEv:
	pushl     %esi
	pushl     %ebx
	subl      $4, %esp
	movl      16(%esp), %esi
	movl      (%esi), %ebx
	testl     %ebx, %ebx
	je        .L0805DA8B
.L0805DA3F:
	movl      32(%ebx), %eax
	movl      %eax, (%esi)
	movl      20(%ebx), %eax
	movl      $_ZTVN7acommon6StringE+8, 16(%ebx)
	testl     %eax, %eax
	je        .L0805DA60
.L0805DA52:
	subl      $12, %esp
	pushl     %eax
	call      free
.L0805DA5B:
	addl      $16, %esp
	.p2align 4,,10
	.p2align 3
.L0805DA60:
	movl      4(%ebx), %eax
	movl      $_ZTVN7acommon6StringE+8, (%ebx)
	testl     %eax, %eax
	je        .L0805DA79
.L0805DA6D:
	subl      $12, %esp
	pushl     %eax
	call      free
.L0805DA76:
	addl      $16, %esp
.L0805DA79:
	subl      $12, %esp
	pushl     %ebx
	call      _ZdlPv
.L0805DA82:
	movl      (%esi), %ebx
	addl      $16, %esp
	testl     %ebx, %ebx
	jne       .L0805DA3F
.L0805DA8B:
	addl      $4, %esp
	popl      %ebx
	popl      %esi
	ret       
	.size	_ZN10PreSufList5clearEv, .-_ZN10PreSufList5clearEv
# ----------------------
.L0805DA91:
	.p2align 4
# ----------------------
	.weak	_ZN9WorkingLtclEP9ExpansionS1_
	.type	_ZN9WorkingLtclEP9ExpansionS1_, @function
_ZN9WorkingLtclEP9ExpansionS1_:
	pushl     %ebp
	pushl     %edi
	pushl     %esi
	pushl     %ebx
	subl      $28, %esp
	movl      52(%esp), %edi
	movl      52(%esp), %eax
	movl      16(%edi), %esi
	movl      8(%eax), %ebx
	movl      20(%eax), %eax
	subl      12(%edi), %eax
	movl      %esi, %edx
	movl      %esi, 12(%esp)
	subl      %ebx, %edx
	leal      (%eax,%edx,8), %esi
	xorl      %eax, %eax
	testl     %esi, %esi
	je        .L0805DAF1
.L0805DACC:
	xorl      %ecx, %ecx
	movl      $1, %edi
	.p2align 4,,10
	.p2align 3
.L0805DAD8:
	movl      %ecx, %ebp
	movl      %edi, %edx
	shrl      $5, %ebp
	sall      %cl, %edx
	andl      (%ebx,%ebp,4), %edx
	cmpl      $1, %edx
	sbbl      $-1, %eax
	addl      $1, %ecx
	cmpl      %esi, %ecx
	jne       .L0805DAD8
.L0805DAF1:
	movl      56(%esp), %esi
	movl      56(%esp), %edi
	movl      20(%esi), %edx
	subl      12(%esi), %edx
	movl      16(%esi), %esi
	movl      8(%edi), %edi
	movl      %esi, %ecx
	movl      %esi, 12(%esp)
	subl      %edi, %ecx
	leal      (%edx,%ecx,8), %esi
	xorl      %edx, %edx
	testl     %esi, %esi
	je        .L0805DB3C
.L0805DB16:
	xorl      %ecx, %ecx
	.p2align 4
.L0805DB20:
	movl      %ecx, %ebp
	movl      $1, %ebx
	shrl      $5, %ebp
	sall      %cl, %ebx
	andl      (%edi,%ebp,4), %ebx
	cmpl      $1, %ebx
	sbbl      $-1, %edx
	addl      $1, %ecx
	cmpl      %esi, %ecx
	jne       .L0805DB20
.L0805DB3C:
	cmpl      %eax, %edx
	je        .L0805DB50
.L0805DB40:
	setb      %al
.L0805DB43:
	addl      $28, %esp
	popl      %ebx
	popl      %esi
	popl      %edi
	popl      %ebp
	ret       
.L0805DB4B:
	.p2align 4,,10
	.p2align 3
.L0805DB50:
	movl      52(%esp), %eax
	subl      $12, %esp
	movl      (%eax), %ebx
	pushl     %ebx
	call      strlen
.L0805DB5F:
	movl      %eax, %edi
	movl      72(%esp), %eax
	movl      (%eax), %esi
	movl      %esi, (%esp)
	call      strlen
.L0805DB6F:
	addl      $16, %esp
	cmpl      %eax, %edi
	jne       .L0805DB40
.L0805DB76:
	movl      52(%esp), %eax
	subl      $12, %esp
	movl      4(%eax), %edi
	pushl     %edi
	call      strlen
.L0805DB86:
	movl      72(%esp), %ecx
	movl      %eax, 28(%esp)
	movl      4(%ecx), %ebp
	movl      %ebp, (%esp)
	call      strlen
.L0805DB99:
	addl      $16, %esp
	cmpl      %eax, 12(%esp)
	je        .L0805DBA7
.L0805DBA2:
	seta      %al
	jmp       .L0805DB43
.L0805DBA7:
	subl      $8, %esp
	pushl     %esi
	pushl     %ebx
	call      strcmp
.L0805DBB1:
	addl      $16, %esp
	testl     %eax, %eax
	jne       .L0805DBC5
.L0805DBB8:
	subl      $8, %esp
	pushl     %ebp
	pushl     %edi
	call      strcmp
.L0805DBC2:
	addl      $16, %esp
.L0805DBC5:
	shrl      $31, %eax
	jmp       .L0805DB43
	.size	_ZN9WorkingLtclEP9ExpansionS1_, .-_ZN9WorkingLtclEP9ExpansionS1_
# ----------------------
.L0805DBCD:
	.p2align 4,,10
	.p2align 3
# ----------------------
	.weak	_ZNSt6vectorIN7acommon6StringESaIS1_EED2Ev
	.type	_ZNSt6vectorIN7acommon6StringESaIS1_EED2Ev, @function
_ZNSt6vectorIN7acommon6StringESaIS1_EED2Ev:
	pushl     %edi
	pushl     %esi
	pushl     %ebx
	movl      16(%esp), %edi
	movl      4(%edi), %esi
	movl      (%edi), %ebx
	cmpl      %ebx, %esi
	jne       .L0805DC08
.L0805DBE0:
	jmp       .L0805DC26
.L0805DBE2:
	.p2align 4,,10
	.p2align 3
.L0805DBE8:
	movl      4(%ebx), %eax
	movl      $_ZTVN7acommon6StringE+8, (%ebx)
	testl     %eax, %eax
	je        .L0805DC01
.L0805DBF5:
	subl      $12, %esp
	pushl     %eax
	call      free
.L0805DBFE:
	addl      $16, %esp
.L0805DC01:
	addl      $16, %ebx
	cmpl      %ebx, %esi
	je        .L0805DC24
.L0805DC08:
	movl      (%ebx), %eax
	movl      20(%eax), %eax
	cmpl      $_ZN7acommon6StringD1Ev, %eax
	je        .L0805DBE8
.L0805DC14:
	subl      $12, %esp
	pushl     %ebx
	addl      $16, %ebx
	call      *%eax
.L0805DC1D:
	addl      $16, %esp
	cmpl      %ebx, %esi
	jne       .L0805DC08
.L0805DC24:
	movl      (%edi), %esi
.L0805DC26:
	testl     %esi, %esi
	je        .L0805DC40
.L0805DC2A:
	movl      %esi, 16(%esp)
	popl      %ebx
	popl      %esi
	popl      %edi
	jmp       _ZdlPv
.L0805DC36:
	.p2align 4
.L0805DC40:
	popl      %ebx
	popl      %esi
	popl      %edi
	ret       
	.size	_ZNSt6vectorIN7acommon6StringESaIS1_EED2Ev, .-_ZNSt6vectorIN7acommon6StringESaIS1_EED2Ev
# ----------------------
.L0805DC44:
	.p2align 4
# ----------------------
	.weak	_ZNSt6vectorIN7acommon6StringESaIS1_EE7reserveEj
	.type	_ZNSt6vectorIN7acommon6StringESaIS1_EE7reserveEj, @function
_ZNSt6vectorIN7acommon6StringESaIS1_EE7reserveEj:
	pushl     %ebp
	pushl     %edi
	pushl     %esi
	pushl     %ebx
	subl      $44, %esp
	movl      68(%esp), %edx
	cmpl      $268435455, %edx
	ja        .L0805DE0B
.L0805DC67:
	movl      64(%esp), %eax
	movl      (%eax), %edi
	movl      8(%eax), %eax
	movl      %eax, 8(%esp)
	subl      %edi, %eax
	sarl      $4, %eax
	cmpl      %eax, %edx
	ja        .L0805DC88
.L0805DC7D:
	addl      $44, %esp
	popl      %ebx
	popl      %esi
	popl      %edi
	popl      %ebp
	ret       
.L0805DC85:
	.p2align 4,,10
	.p2align 3
.L0805DC88:
	movl      64(%esp), %eax
	movl      4(%eax), %eax
	movl      %eax, 8(%esp)
	subl      %edi, %eax
	testl     %edx, %edx
	movl      %eax, 16(%esp)
	je        .L0805DDF0
.L0805DCA1:
	sall      $4, %edx
	subl      $12, %esp
	movl      %edx, 32(%esp)
	pushl     %edx
	call      _Znwj
.L0805DCB1:
	movl      %eax, 28(%esp)
	movl      80(%esp), %eax
	addl      $16, %esp
	movl      4(%eax), %ebp
	movl      64(%esp), %eax
	movl      (%eax), %esi
.L0805DCC5:
	cmpl      8(%esp), %edi
	movl      12(%esp), %ebx
	je        .L0805DD62
.L0805DCD3:
	movl      %ebp, 28(%esp)
	movl      %esi, 24(%esp)
	movl      8(%esp), %ebp
	jmp       .L0805DD07
.L0805DCE1:
	.p2align 4,,10
	.p2align 3
.L0805DCE8:
	movl      $0, 4(%ebx)
	movl      $0, 8(%ebx)
	movl      $0, 12(%ebx)
.L0805DCFD:
	addl      $16, %edi
	addl      $16, %ebx
	cmpl      %edi, %ebp
	je        .L0805DD5A
.L0805DD07:
	testl     %ebx, %ebx
	je        .L0805DCFD
.L0805DD0B:
	movl      $_ZTVN7acommon6StringE+8, (%ebx)
	movl      4(%edi), %edx
	movl      8(%edi), %esi
	subl      %edx, %esi
	je        .L0805DCE8
.L0805DD1B:
	testl     %edx, %edx
	je        .L0805DCE8
.L0805DD1F:
	leal      1(%esi), %eax
	movl      %edx, 8(%esp)
	subl      $12, %esp
	addl      $16, %edi
	addl      $16, %ebx
	pushl     %eax
	call      malloc
.L0805DD35:
	addl      $12, %esp
	movl      %eax, -12(%ebx)
	pushl     %esi
	movl      16(%esp), %edx
	pushl     %edx
	pushl     %eax
	call      memcpy
.L0805DD47:
	addl      -12(%ebx), %esi
	addl      $16, %esp
	movl      %esi, -8(%ebx)
	addl      $1, %esi
	movl      %esi, -4(%ebx)
	cmpl      %edi, %ebp
	jne       .L0805DD07
.L0805DD5A:
	movl      24(%esp), %esi
	movl      28(%esp), %ebp
.L0805DD62:
	cmpl      %esi, %ebp
	jne       .L0805DD90
.L0805DD66:
	jmp       .L0805DDB2
.L0805DD68:
	.p2align 4
.L0805DD70:
	movl      4(%esi), %eax
	movl      $_ZTVN7acommon6StringE+8, (%esi)
	testl     %eax, %eax
	je        .L0805DD89
.L0805DD7D:
	subl      $12, %esp
	pushl     %eax
	call      free
.L0805DD86:
	addl      $16, %esp
.L0805DD89:
	addl      $16, %esi
	cmpl      %ebp, %esi
	je        .L0805DDAC
.L0805DD90:
	movl      (%esi), %eax
	movl      20(%eax), %eax
	cmpl      $_ZN7acommon6StringD1Ev, %eax
	je        .L0805DD70
.L0805DD9C:
	subl      $12, %esp
	pushl     %esi
	addl      $16, %esi
	call      *%eax
.L0805DDA5:
	addl      $16, %esp
	cmpl      %ebp, %esi
	jne       .L0805DD90
.L0805DDAC:
	movl      64(%esp), %eax
	movl      (%eax), %ebp
.L0805DDB2:
	testl     %ebp, %ebp
	je        .L0805DDC2
.L0805DDB6:
	subl      $12, %esp
	pushl     %ebp
	call      _ZdlPv
.L0805DDBF:
	addl      $16, %esp
.L0805DDC2:
	movl      12(%esp), %ecx
	movl      16(%esp), %eax
	movl      64(%esp), %edx
	addl      %ecx, %eax
	movl      %eax, 4(%edx)
	movl      20(%esp), %eax
	movl      %ecx, (%edx)
	addl      %ecx, %eax
	movl      %eax, 8(%edx)
	addl      $44, %esp
	popl      %ebx
	popl      %esi
	popl      %edi
	popl      %ebp
	ret       
.L0805DDE6:
	.p2align 4
.L0805DDF0:
	movl      %edi, %esi
	movl      8(%esp), %ebp
	movl      $0, 20(%esp)
	movl      $0, 12(%esp)
	jmp       .L0805DCC5
.L0805DE0B:
	subl      $12, %esp
	pushl     $.LC08063E8F
	call      _ZSt20__throw_length_errorPKc
	.size	_ZNSt6vectorIN7acommon6StringESaIS1_EE7reserveEj, .-_ZNSt6vectorIN7acommon6StringESaIS1_EE7reserveEj
# ----------------------
.L0805DE18:
	.p2align 4
# ----------------------
	.weak	_ZNSt6vectorIbSaIbEEaSERKS1_
	.type	_ZNSt6vectorIbSaIbEEaSERKS1_, @function
_ZNSt6vectorIbSaIbEEaSERKS1_:
	pushl     %ebp
	pushl     %edi
	pushl     %esi
	pushl     %ebx
	subl      $28, %esp
	movl      52(%esp), %esi
	cmpl      48(%esp), %esi
	je        .L0805DF1A
.L0805DE35:
	movl      12(%esi), %eax
	movl      8(%esi), %edi
	movl      (%esi), %ecx
	movl      %eax, %edx
	subl      4(%esi), %edx
	movl      %edi, %ebp
	subl      %ecx, %ebp
	movl      %edi, 12(%esp)
	movl      48(%esp), %edi
	movl      %eax, 8(%esp)
	movl      48(%esp), %eax
	leal      (%edx,%ebp,8), %ebx
	movl      48(%esp), %edx
	movl      (%edi), %edi
	movl      16(%edx), %edx
	movl      %edx, 4(%esp)
	subl      %edi, %edx
	sall      $3, %edx
	subl      4(%eax), %edx
	cmpl      %edx, %ebx
	ja        .L0805DF30
.L0805DE76:
	movl      12(%esp), %eax
	movl      8(%esp), %ebx
	movl      %eax, 4(%esp)
.L0805DE82:
	movl      %ebp, %eax
	sarl      $2, %eax
	testl     %eax, %eax
	je        .L0805DE99
.L0805DE8B:
	subl      $4, %esp
	pushl     %ebp
	pushl     %ecx
	pushl     %edi
	call      memmove
.L0805DE96:
	addl      $16, %esp
.L0805DE99:
	addl      %ebp, %edi
	xorl      %edx, %edx
	testl     %ebx, %ebx
	jle       .L0805DF10
.L0805DEA1:
	xorl      %eax, %eax
	movl      $1, %ebp
	movl      %ebx, 8(%esp)
	jmp       .L0805DECF
.L0805DEAE:
	.p2align 4,,10
	.p2align 3
.L0805DEB0:
	notl      %esi
	andl      %esi, (%edi)
	cmpl      $31, %eax
	leal      1(%eax), %ecx
	je        .L0805DEEF
.L0805DEBC:
	cmpl      $31, %edx
	movl      %ecx, %eax
	leal      1(%edx), %ecx
	je        .L0805DF00
.L0805DEC6:
	subl      $1, 8(%esp)
	movl      %ecx, %edx
	je        .L0805DF10
.L0805DECF:
	movl      %edx, %ecx
	movl      %ebp, %esi
	movl      %ebp, %ebx
	sall      %cl, %esi
	movl      %eax, %ecx
	sall      %cl, %ebx
	movl      %ebx, %ecx
	movl      4(%esp), %ebx
	testl     %ecx, (%ebx)
	je        .L0805DEB0
.L0805DEE5:
	orl       %esi, (%edi)
	cmpl      $31, %eax
	leal      1(%eax), %ecx
	jne       .L0805DEBC
.L0805DEEF:
	addl      $4, 4(%esp)
	xorb      %al, %al
	cmpl      $31, %edx
	leal      1(%edx), %ecx
	jne       .L0805DEC6
.L0805DEFE:
	.p2align 4,,10
	.p2align 3
.L0805DF00:
	addl      $4, %edi
	xorb      %dl, %dl
	subl      $1, 8(%esp)
	jne       .L0805DECF
.L0805DF0C:
	.p2align 4,,10
	.p2align 3
.L0805DF10:
	movl      48(%esp), %eax
	movl      %edi, 8(%eax)
	movl      %edx, 12(%eax)
.L0805DF1A:
	movl      48(%esp), %eax
	addl      $28, %esp
	popl      %ebx
	popl      %esi
	popl      %edi
	popl      %ebp
	ret       
.L0805DF26:
	.p2align 4
.L0805DF30:
	testl     %edi, %edi
	je        .L0805DF4E
.L0805DF34:
	subl      $12, %esp
	pushl     %edi
	call      _ZdlPv
.L0805DF3D:
	movl      12(%esi), %eax
	movl      8(%esi), %edx
	addl      $16, %esp
	subl      4(%esi), %eax
	subl      (%esi), %edx
	leal      (%eax,%edx,8), %ebx
.L0805DF4E:
	leal      31(%ebx), %ebp
	subl      $12, %esp
	shrl      $5, %ebp
	sall      $2, %ebp
	pushl     %ebp
	call      _Znwj
.L0805DF60:
	movl      %eax, %edi
	addl      %eax, %ebp
	movl      64(%esp), %eax
	addl      $16, %esp
	movl      %ebp, 16(%eax)
	movl      %edi, (%eax)
	movl      $0, 4(%eax)
	movl      %ebx, %eax
	sarl      $31, %eax
	shrl      $27, %eax
	addl      %eax, %ebx
	movl      %ebx, %edx
	andl      $31, %ebx
	sarl      $5, %edx
	subl      %eax, %ebx
	leal      (%edi,%edx,4), %edx
	jns       .L0805DF96
.L0805DF90:
	addl      $32, %ebx
	subl      $4, %edx
.L0805DF96:
	movl      48(%esp), %eax
	movl      %edx, 8(%eax)
	movl      %ebx, 12(%eax)
	movl      8(%esi), %eax
	movl      (%esi), %ecx
	movl      12(%esi), %ebx
	movl      %eax, %ebp
	movl      %eax, 4(%esp)
	subl      %ecx, %ebp
	jmp       .L0805DE82
	.size	_ZNSt6vectorIbSaIbEEaSERKS1_, .-_ZNSt6vectorIbSaIbEEaSERKS1_
# ----------------------
.L0805DFB5:
	.p2align 4
# ----------------------
	.weak	_ZNSt6vectorIbSaIbEEC2EjRKbRKS0_
	.type	_ZNSt6vectorIbSaIbEEC2EjRKbRKS0_, @function
_ZNSt6vectorIbSaIbEEC2EjRKbRKS0_:
	pushl     %edi
	pushl     %esi
	pushl     %ebx
	movl      20(%esp), %ebx
	movl      16(%esp), %esi
	subl      $12, %esp
	leal      31(%ebx), %edx
	movl      $0, (%esi)
	movl      $0, 4(%esi)
	shrl      $5, %edx
	movl      $0, 8(%esi)
	movl      $0, 12(%esi)
	leal      0(,%edx,4), %edi
	movl      $0, 16(%esi)
	pushl     %edi
	call      _Znwj
.L0805E003:
	movl      %ebx, %ecx
	leal      (%eax,%edi), %edx
	addl      $16, %esp
	sarl      $31, %ecx
	movl      %eax, (%esi)
	movl      $0, 4(%esi)
	shrl      $27, %ecx
	movl      %edx, 16(%esi)
	addl      %ecx, %ebx
	movl      %ebx, %edi
	andl      $31, %ebx
	sarl      $5, %edi
	subl      %ecx, %ebx
	leal      (%eax,%edi,4), %edi
	jns       .L0805E034
.L0805E02E:
	addl      $32, %ebx
	subl      $4, %edi
.L0805E034:
	movl      24(%esp), %ecx
	movl      %edi, 8(%esi)
	movl      %ebx, 12(%esi)
	movzbl    (%ecx), %ecx
	negl      %ecx
	cmpl      %eax, %edx
	je        .L0805E059
.L0805E047:
	.p2align 4
.L0805E050:
	movl      %ecx, (%eax)
	addl      $4, %eax
	cmpl      %edx, %eax
	jne       .L0805E050
.L0805E059:
	popl      %ebx
	popl      %esi
	popl      %edi
	ret       
	.size	_ZNSt6vectorIbSaIbEEC2EjRKbRKS0_, .-_ZNSt6vectorIbSaIbEEC2EjRKbRKS0_
# ----------------------
.L0805E05D:
	.p2align 4,,10
	.p2align 3
# ----------------------
	.weak	_ZN7acommon9HashTableINS_9StringMap5ParmsEE3delEv
	.type	_ZN7acommon9HashTableINS_9StringMap5ParmsEE3delEv, @function
_ZN7acommon9HashTableINS_9StringMap5ParmsEE3delEv:
	pushl     %esi
	pushl     %ebx
	subl      $4, %esp
	movl      16(%esp), %ebx
	movl      4(%ebx), %esi
	movl      8(%ebx), %ecx
	cmpl      %ecx, %esi
	je        .L0805E08D
.L0805E073:
	movl      %esi, %edx
	.p2align 4,,10
	.p2align 3
.L0805E078:
	movl      (%edx), %eax
	testl     %eax, %eax
	je        .L0805E086
.L0805E07E:
	.p2align 4,,10
	.p2align 3
.L0805E080:
	movl      (%eax), %eax
	testl     %eax, %eax
	jne       .L0805E080
.L0805E086:
	addl      $4, %edx
	cmpl      %ecx, %edx
	jne       .L0805E078
.L0805E08D:
	subl      $12, %esp
	pushl     %esi
	call      free
.L0805E096:
	movl      20(%ebx), %eax
	addl      $16, %esp
	movl      $0, (%ebx)
	testl     %eax, %eax
	je        .L0805E0C4
.L0805E0A6:
	.p2align 4
.L0805E0B0:
	movl      (%eax), %esi
	subl      $12, %esp
	pushl     %eax
	call      free
.L0805E0BB:
	addl      $16, %esp
	testl     %esi, %esi
	movl      %esi, %eax
	jne       .L0805E0B0
.L0805E0C4:
	movl      $0, 20(%ebx)
	movl      $0, 24(%ebx)
	movl      $0, 4(%ebx)
	movl      $0, 12(%ebx)
	movl      $0, 16(%ebx)
	addl      $4, %esp
	popl      %ebx
	popl      %esi
	ret       
	.size	_ZN7acommon9HashTableINS_9StringMap5ParmsEE3delEv, .-_ZN7acommon9HashTableINS_9StringMap5ParmsEE3delEv
# ----------------------
.L0805E0ED:
	.p2align 4,,10
	.p2align 3
# ----------------------
	.weak	_ZN7acommon9StringMapD1Ev
	.type	_ZN7acommon9StringMapD1Ev, @function
_ZN7acommon9StringMapD1Ev:
	pushl     %ebx
	subl      $20, %esp
	movl      28(%esp), %ebx
	leal      36(%ebx), %eax
	movl      $_ZTVN7acommon9StringMapE+8, (%ebx)
	pushl     %eax
	call      _ZN7acommon8ObjStackD1Ev
.L0805E107:
	leal      4(%ebx), %eax
	movl      %eax, (%esp)
	call      _ZN7acommon9HashTableINS_9StringMap5ParmsEE3delEv
.L0805E112:
	movl      24(%ebx), %eax
	addl      $16, %esp
	testl     %eax, %eax
	je        .L0805E134
.L0805E11C:
	.p2align 4,,10
	.p2align 3
.L0805E120:
	movl      (%eax), %ebx
	subl      $12, %esp
	pushl     %eax
	call      free
.L0805E12B:
	addl      $16, %esp
	testl     %ebx, %ebx
	movl      %ebx, %eax
	jne       .L0805E120
.L0805E134:
	addl      $8, %esp
	popl      %ebx
	ret       
	.size	_ZN7acommon9StringMapD1Ev, .-_ZN7acommon9StringMapD1Ev
# ----------------------
.L0805E139:
	.p2align 4
# ----------------------
	.weak	_ZN7acommon9StringMapD0Ev
	.type	_ZN7acommon9StringMapD0Ev, @function
_ZN7acommon9StringMapD0Ev:
	pushl     %esi
	pushl     %ebx
	subl      $16, %esp
	movl      28(%esp), %esi
	leal      36(%esi), %eax
	movl      $_ZTVN7acommon9StringMapE+8, (%esi)
	pushl     %eax
	call      _ZN7acommon8ObjStackD1Ev
.L0805E158:
	leal      4(%esi), %eax
	movl      %eax, (%esp)
	call      _ZN7acommon9HashTableINS_9StringMap5ParmsEE3delEv
.L0805E163:
	movl      24(%esi), %eax
	addl      $16, %esp
	testl     %eax, %eax
	je        .L0805E184
.L0805E16D:
	.p2align 4,,10
	.p2align 3
.L0805E170:
	movl      (%eax), %ebx
	subl      $12, %esp
	pushl     %eax
	call      free
.L0805E17B:
	addl      $16, %esp
	testl     %ebx, %ebx
	movl      %ebx, %eax
	jne       .L0805E170
.L0805E184:
	movl      %esi, 16(%esp)
	addl      $4, %esp
	popl      %ebx
	popl      %esi
	jmp       _ZdlPv
	.size	_ZN7acommon9StringMapD0Ev, .-_ZN7acommon9StringMapD0Ev
# ----------------------
.L0805E192:
	.p2align 4
# ----------------------
	.weak	_ZNSt6vectorIN7acommon6StringESaIS1_EE8_M_eraseEN9__gnu_cxx17__normal_iteratorIPS1_S3_EE
	.type	_ZNSt6vectorIN7acommon6StringESaIS1_EE8_M_eraseEN9__gnu_cxx17__normal_iteratorIPS1_S3_EE, @function
_ZNSt6vectorIN7acommon6StringESaIS1_EE8_M_eraseEN9__gnu_cxx17__normal_iteratorIPS1_S3_EE:
	pushl     %ebp
	pushl     %edi
	pushl     %esi
	pushl     %ebx
	subl      $12, %esp
	movl      36(%esp), %eax
	movl      40(%esp), %ecx
	movl      4(%eax), %eax
	leal      16(%ecx), %edx
	cmpl      %edx, %eax
	je        .L0805E227
.L0805E1B9:
	movl      %eax, %edi
	subl      %edx, %edi
	cmpl      $15, %edi
	jle       .L0805E227
.L0805E1C2:
	addl      %ecx, %edi
	movl      %ecx, %ebx
	jmp       .L0805E1EB
.L0805E1C8:
	.p2align 4
.L0805E1D0:
	subl      $4, %esp
	pushl     %esi
	pushl     %ebp
	pushl     %eax
	call      memmove
.L0805E1DB:
	addl      4(%ebx), %esi
	addl      $16, %esp
	movl      %esi, 8(%ebx)
.L0805E1E4:
	addl      $16, %ebx
	cmpl      %edi, %ebx
	je        .L0805E220
.L0805E1EB:
	movl      20(%ebx), %ebp
	movl      24(%ebx), %esi
	movl      4(%ebx), %eax
	subl      %ebp, %esi
	movl      %eax, 8(%ebx)
	je        .L0805E1E4
.L0805E1FB:
	movl      12(%ebx), %edx
	subl      %eax, %edx
	cmpl      %edx, %esi
	jl        .L0805E1D0
.L0805E204:
	subl      $8, %esp
	pushl     %esi
	pushl     %ebx
	call      _ZN7acommon6String9reserve_iEj
.L0805E20E:
	movl      4(%ebx), %eax
	addl      $16, %esp
	jmp       .L0805E1D0
.L0805E216:
	.p2align 4
.L0805E220:
	movl      36(%esp), %eax
	movl      4(%eax), %eax
.L0805E227:
	movl      36(%esp), %edi
	movl      -16(%eax), %edx
	leal      -16(%eax), %ecx
	movl      %ecx, 4(%edi)
	movl      20(%edx), %edx
	cmpl      $_ZN7acommon6StringD1Ev, %edx
	jne       .L0805E270
.L0805E23F:
	movl      $_ZTVN7acommon6StringE+8, -16(%eax)
	movl      -12(%eax), %eax
	testl     %eax, %eax
	je        .L0805E259
.L0805E24D:
	subl      $12, %esp
	pushl     %eax
	call      free
.L0805E256:
	addl      $16, %esp
.L0805E259:
	movl      32(%esp), %eax
	movl      40(%esp), %ecx
	movl      %ecx, (%eax)
	addl      $12, %esp
	popl      %ebx
	popl      %esi
	popl      %edi
	popl      %ebp
	ret       $4
.L0805E26D:
	.p2align 4,,10
	.p2align 3
.L0805E270:
	subl      $12, %esp
	pushl     %ecx
	call      *%edx
.L0805E276:
	addl      $16, %esp
	jmp       .L0805E259
	.size	_ZNSt6vectorIN7acommon6StringESaIS1_EE8_M_eraseEN9__gnu_cxx17__normal_iteratorIPS1_S3_EE, .-_ZNSt6vectorIN7acommon6StringESaIS1_EE8_M_eraseEN9__gnu_cxx17__normal_iteratorIPS1_S3_EE
# ----------------------
.L0805E27B:
	.p2align 4,,10
	.p2align 3
# ----------------------
	.weak	_ZNSt6vectorI6ChoiceSaIS0_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS0_S2_EERKS0_
	.type	_ZNSt6vectorI6ChoiceSaIS0_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS0_S2_EERKS0_, @function
_ZNSt6vectorI6ChoiceSaIS0_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS0_S2_EERKS0_:
	pushl     %ebp
	pushl     %edi
	pushl     %esi
	pushl     %ebx
	subl      $28, %esp
	movl      48(%esp), %ebx
	movl      52(%esp), %ebp
	movl      4(%ebx), %edx
	cmpl      8(%ebx), %edx
	je        .L0805E30E
.L0805E297:
	testl     %edx, %edx
	je        .L0805E2A9
.L0805E29B:
	movl      -8(%edx), %esi
	movl      -4(%edx), %edi
	movl      %esi, (%edx)
	movl      %edi, 4(%edx)
	movl      4(%ebx), %edx
.L0805E2A9:
	leal      8(%edx), %eax
	leal      -8(%edx), %ecx
	movl      %eax, 4(%ebx)
	movl      56(%esp), %eax
	movl      %ecx, %esi
	subl      %ebp, %esi
	sarl      $3, %esi
	movzbl    (%eax), %eax
	movl      %esi, %ebx
	negl      %ebx
	movb      %al, 4(%esp)
	movl      56(%esp), %eax
	movl      4(%eax), %edi
	xorl      %eax, %eax
	testl     %esi, %esi
	jle       .L0805E2FB
.L0805E2D5:
	movl      %edi, 8(%esp)
	.p2align 4
.L0805E2E0:
	movl      -8(%ecx,%eax,8), %esi
	movl      -4(%ecx,%eax,8), %edi
	movl      %esi, -8(%edx,%eax,8)
	movl      %edi, -4(%edx,%eax,8)
	subl      $1, %eax
	cmpl      %ebx, %eax
	jne       .L0805E2E0
.L0805E2F7:
	movl      8(%esp), %edi
.L0805E2FB:
	movzbl    4(%esp), %eax
	movl      %edi, 4(%ebp)
	movb      %al, (%ebp)
.L0805E306:
	addl      $28, %esp
	popl      %ebx
	popl      %esi
	popl      %edi
	popl      %ebp
	ret       
.L0805E30E:
	movl      (%ebx), %eax
	subl      %eax, %edx
	sarl      $3, %edx
	testl     %edx, %edx
	jne       .L0805E41F
.L0805E31D:
	movl      %ebp, %edx
	movl      $8, 12(%esp)
	subl      %eax, %edx
.L0805E329:
	movl      %edx, 8(%esp)
	subl      $12, %esp
	pushl     24(%esp)
	call      _Znwj
.L0805E339:
	movl      %eax, 20(%esp)
	addl      $16, %esp
	movl      8(%esp), %edx
	addl      $8, %eax
.L0805E347:
	addl      4(%esp), %edx
	je        .L0805E35B
.L0805E34D:
	movl      56(%esp), %edi
	movl      (%edi), %esi
	movl      4(%edi), %edi
	movl      %esi, (%edx)
	movl      %edi, 4(%edx)
.L0805E35B:
	movl      (%ebx), %edx
	cmpl      %edx, %ebp
	je        .L0805E437
.L0805E365:
	movl      4(%esp), %edi
	movl      %edx, %ecx
	movl      %ebx, 48(%esp)
	movl      %edi, %eax
	.p2align 4,,10
	.p2align 3
.L0805E378:
	testl     %eax, %eax
	je        .L0805E386
.L0805E37C:
	movl      (%ecx), %ebx
	movl      4(%ecx), %esi
	movl      %ebx, (%eax)
	movl      %esi, 4(%eax)
.L0805E386:
	addl      $8, %ecx
	addl      $8, %eax
	cmpl      %ecx, %ebp
	jne       .L0805E378
.L0805E390:
	addl      $8, %edx
	movl      %ebp, %eax
	movl      48(%esp), %ebx
	subl      %edx, %eax
	movl      %edi, 4(%esp)
	andl      $-8, %eax
	leal      16(%edi,%eax), %eax
	movl      %eax, 8(%esp)
.L0805E3AA:
	movl      4(%ebx), %esi
	cmpl      %esi, %ebp
	je        .L0805E3F4
.L0805E3B1:
	movl      8(%esp), %edx
	movl      4(%esp), %eax
	movl      %ebp, %ecx
	movl      %ebp, 52(%esp)
	.p2align 4,,10
	.p2align 3
.L0805E3C0:
	testl     %edx, %edx
	je        .L0805E3CE
.L0805E3C4:
	movl      (%ecx), %edi
	movl      4(%ecx), %ebp
	movl      %edi, (%edx)
	movl      %ebp, 4(%edx)
.L0805E3CE:
	addl      $8, %ecx
	addl      $8, %edx
	cmpl      %ecx, %esi
	jne       .L0805E3C0
.L0805E3D8:
	movl      52(%esp), %ebp
	movl      %eax, 4(%esp)
	leal      8(%ebp), %eax
	subl      %eax, %esi
	movl      8(%esp), %eax
	andl      $-8, %esi
	leal      8(%esi,%eax), %eax
	movl      %eax, 8(%esp)
.L0805E3F4:
	movl      (%ebx), %eax
	testl     %eax, %eax
	je        .L0805E406
.L0805E3FA:
	subl      $12, %esp
	pushl     %eax
	call      _ZdlPv
.L0805E403:
	addl      $16, %esp
.L0805E406:
	movl      4(%esp), %edi
	movl      8(%esp), %eax
	movl      %edi, (%ebx)
	addl      12(%esp), %edi
	movl      %eax, 4(%ebx)
	movl      %edi, 8(%ebx)
	jmp       .L0805E306
.L0805E41F:
	leal      (%edx,%edx), %ecx
	cmpl      %ecx, %edx
	jbe       .L0805E440
.L0805E426:
	movl      %ebp, %edx
	movl      $-8, 12(%esp)
	subl      %eax, %edx
	jmp       .L0805E329
.L0805E437:
	movl      %eax, 8(%esp)
	jmp       .L0805E3AA
.L0805E440:
	cmpl      $536870911, %ecx
	ja        .L0805E426
.L0805E448:
	sall      $4, %edx
	movl      %edx, 12(%esp)
	movl      %ebp, %edx
	subl      %eax, %edx
	testl     %ecx, %ecx
	jne       .L0805E329
.L0805E45B:
	movl      $8, %eax
	movl      $0, 4(%esp)
	jmp       .L0805E347
	.size	_ZNSt6vectorI6ChoiceSaIS0_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS0_S2_EERKS0_, .-_ZNSt6vectorI6ChoiceSaIS0_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS0_S2_EERKS0_
# ----------------------
.L0805E46D:
	.p2align 4,,10
	.p2align 3
# ----------------------
	.weak	_ZNSt6vectorI6ChoiceSaIS0_EE9push_backERKS0_
	.type	_ZNSt6vectorI6ChoiceSaIS0_EE9push_backERKS0_, @function
_ZNSt6vectorI6ChoiceSaIS0_EE9push_backERKS0_:
	pushl     %ebx
	subl      $8, %esp
	movl      16(%esp), %edx
	movl      20(%esp), %ecx
	movl      4(%edx), %eax
	cmpl      8(%edx), %eax
	je        .L0805E4A0
.L0805E484:
	testl     %eax, %eax
	je        .L0805E495
.L0805E488:
	movl      4(%ecx), %ebx
	movl      (%ecx), %ecx
	movl      %ebx, 4(%eax)
	movl      %ecx, (%eax)
	movl      4(%edx), %eax
.L0805E495:
	addl      $8, %eax
	movl      %eax, 4(%edx)
.L0805E49B:
	addl      $8, %esp
	popl      %ebx
	ret       
.L0805E4A0:
	subl      $4, %esp
	pushl     %ecx
	pushl     %eax
	pushl     %edx
	call      _ZNSt6vectorI6ChoiceSaIS0_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS0_S2_EERKS0_
.L0805E4AB:
	addl      $16, %esp
	jmp       .L0805E49B
	.size	_ZNSt6vectorI6ChoiceSaIS0_EE9push_backERKS0_, .-_ZNSt6vectorI6ChoiceSaIS0_EE9push_backERKS0_
# ----------------------
	.weak	_ZNSt6vectorIN7acommon11HT_IteratorI9CML_EntryEESaIS3_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS3_S5_EERKS3_
	.type	_ZNSt6vectorIN7acommon11HT_IteratorI9CML_EntryEESaIS3_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS3_S5_EERKS3_, @function
_ZNSt6vectorIN7acommon11HT_IteratorI9CML_EntryEESaIS3_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS3_S5_EERKS3_:
	pushl     %ebp
	pushl     %edi
	pushl     %esi
	pushl     %ebx
	subl      $28, %esp
	movl      48(%esp), %ebx
	movl      52(%esp), %ebp
	movl      4(%ebx), %edx
	cmpl      8(%ebx), %edx
	je        .L0805E534
.L0805E4C7:
	testl     %edx, %edx
	je        .L0805E4D6
.L0805E4CB:
	movl      -8(%edx), %esi
	movl      -4(%edx), %edi
	movl      %esi, (%edx)
	movl      %edi, 4(%edx)
.L0805E4D6:
	leal      8(%edx), %eax
	leal      -8(%edx), %ecx
	movl      %eax, 4(%ebx)
	movl      56(%esp), %eax
	movl      %ecx, %esi
	subl      %ebp, %esi
	sarl      $3, %esi
	movl      (%eax), %eax
	movl      %esi, %ebx
	negl      %ebx
	movl      %eax, (%esp)
	movl      56(%esp), %eax
	movl      4(%eax), %edi
	xorl      %eax, %eax
	testl     %esi, %esi
	jle       .L0805E523
.L0805E500:
	movl      %edi, 4(%esp)
	.p2align 4,,10
	.p2align 3
.L0805E508:
	movl      -8(%ecx,%eax,8), %esi
	movl      -4(%ecx,%eax,8), %edi
	movl      %esi, -8(%edx,%eax,8)
	movl      %edi, -4(%edx,%eax,8)
	subl      $1, %eax
	cmpl      %ebx, %eax
	jne       .L0805E508
.L0805E51F:
	movl      4(%esp), %edi
.L0805E523:
	movl      (%esp), %eax
	movl      %edi, 4(%ebp)
	movl      %eax, (%ebp)
.L0805E52C:
	addl      $28, %esp
	popl      %ebx
	popl      %esi
	popl      %edi
	popl      %ebp
	ret       
.L0805E534:
	movl      (%ebx), %eax
	movl      %edx, %edi
	subl      %eax, %edi
	sarl      $3, %edi
	testl     %edi, %edi
	jne       .L0805E642
.L0805E545:
	movl      %ebp, %edx
	movl      $8, 8(%esp)
	subl      %eax, %edx
	movl      %edx, %esi
.L0805E553:
	subl      $12, %esp
	pushl     20(%esp)
	call      _Znwj
.L0805E55F:
	movl      %eax, %edi
	movl      4(%ebx), %eax
	movl      %eax, 20(%esp)
	leal      8(%edi), %eax
	movl      %eax, 28(%esp)
	movl      (%ebx), %eax
	addl      $16, %esp
	movl      %eax, (%esp)
.L0805E577:
	movl      %esi, %ecx
	addl      %edi, %ecx
	je        .L0805E58B
.L0805E57D:
	movl      56(%esp), %eax
	movl      4(%eax), %edx
	movl      (%eax), %eax
	movl      %edx, 4(%ecx)
	movl      %eax, (%ecx)
.L0805E58B:
	movl      (%esp), %ecx
	cmpl      %ecx, %ebp
	je        .L0805E65C
.L0805E596:
	movl      4(%esp), %edx
	movl      %edi, %eax
	movl      %ebx, 48(%esp)
.L0805E5A0:
	testl     %eax, %eax
	je        .L0805E5AE
.L0805E5A4:
	movl      (%ecx), %ebx
	movl      4(%ecx), %esi
	movl      %ebx, (%eax)
	movl      %esi, 4(%eax)
.L0805E5AE:
	addl      $8, %ecx
	addl      $8, %eax
	cmpl      %ecx, %ebp
	jne       .L0805E5A0
.L0805E5B8:
	movl      (%esp), %eax
	movl      %ebp, %ecx
	movl      48(%esp), %ebx
	movl      %edx, 4(%esp)
	addl      $8, %eax
	subl      %eax, %ecx
	movl      %ecx, %eax
	andl      $-8, %eax
	leal      16(%edi,%eax), %esi
.L0805E5D3:
	movl      4(%esp), %edx
	cmpl      %edx, %ebp
	je        .L0805E61C
.L0805E5DB:
	movl      %ebp, %ecx
	movl      %esi, %eax
	movl      %esi, 4(%esp)
	movl      %ebx, 48(%esp)
	.p2align 4
.L0805E5F0:
	testl     %eax, %eax
	je        .L0805E5FE
.L0805E5F4:
	movl      (%ecx), %ebx
	movl      4(%ecx), %esi
	movl      %ebx, (%eax)
	movl      %esi, 4(%eax)
.L0805E5FE:
	addl      $8, %ecx
	addl      $8, %eax
	cmpl      %edx, %ecx
	jne       .L0805E5F0
.L0805E608:
	leal      8(%ebp), %eax
	movl      4(%esp), %esi
	movl      48(%esp), %ebx
	subl      %eax, %ecx
	andl      $-8, %ecx
	leal      8(%ecx,%esi), %esi
.L0805E61C:
	movl      (%esp), %eax
	testl     %eax, %eax
	je        .L0805E62F
.L0805E623:
	subl      $12, %esp
	pushl     %eax
	call      _ZdlPv
.L0805E62C:
	addl      $16, %esp
.L0805E62F:
	movl      8(%esp), %ebp
	movl      %edi, (%ebx)
	movl      %esi, 4(%ebx)
	addl      %edi, %ebp
	movl      %ebp, 8(%ebx)
	jmp       .L0805E52C
.L0805E642:
	leal      (%edi,%edi), %ecx
	cmpl      %ecx, %edi
	jbe       .L0805E665
.L0805E649:
	movl      %ebp, %ecx
	movl      $-8, 8(%esp)
	subl      %eax, %ecx
	movl      %ecx, %esi
	jmp       .L0805E553
.L0805E65C:
	movl      12(%esp), %esi
	jmp       .L0805E5D3
.L0805E665:
	cmpl      $536870911, %ecx
	ja        .L0805E649
.L0805E66D:
	sall      $4, %edi
	movl      %edi, 8(%esp)
	movl      %ebp, %edi
	subl      %eax, %edi
	testl     %ecx, %ecx
	movl      %edi, %esi
	jne       .L0805E553
.L0805E682:
	movl      %edx, 4(%esp)
	movl      %eax, (%esp)
	xorl      %edi, %edi
	movl      $8, 12(%esp)
	jmp       .L0805E577
	.size	_ZNSt6vectorIN7acommon11HT_IteratorI9CML_EntryEESaIS3_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS3_S5_EERKS3_, .-_ZNSt6vectorIN7acommon11HT_IteratorI9CML_EntryEESaIS3_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS3_S5_EERKS3_
# ----------------------
.L0805E698:
	.p2align 4
# ----------------------
	.weak	_ZN9ExpansionC1ERKS_
	.type	_ZN9ExpansionC1ERKS_, @function
_ZN9ExpansionC1ERKS_:
	pushl     %ebp
	pushl     %edi
	pushl     %esi
	pushl     %ebx
	subl      $40, %esp
	movl      64(%esp), %ebp
	movl      60(%esp), %edi
	movl      (%ebp), %eax
	movl      %eax, (%edi)
	movl      4(%ebp), %eax
	movl      $0, 8(%edi)
	movl      $0, 12(%edi)
	movl      $0, 16(%edi)
	movl      $0, 20(%edi)
	movl      %eax, 4(%edi)
	movl      16(%ebp), %edx
	movl      20(%ebp), %eax
	subl      8(%ebp), %edx
	subl      12(%ebp), %eax
	movl      $0, 24(%edi)
	leal      (%eax,%edx,8), %esi
	leal      31(%esi), %edx
	shrl      $5, %edx
	sall      $2, %edx
	pushl     %edx
	movl      %edx, 24(%esp)
	call      _Znwj
.L0805E6FF:
	movl      24(%esp), %edx
	movl      %eax, %ebx
	movl      %eax, 8(%edi)
	addl      $16, %esp
	movl      $0, 12(%edi)
	addl      %eax, %edx
	movl      %esi, %eax
	sarl      $31, %eax
	movl      %edx, 24(%edi)
	shrl      $27, %eax
	addl      %eax, %esi
	movl      %esi, %edx
	andl      $31, %esi
	sarl      $5, %edx
	subl      %eax, %esi
	leal      (%ebx,%edx,4), %edx
	jns       .L0805E736
.L0805E730:
	addl      $32, %esi
	subl      $4, %edx
.L0805E736:
	movl      %esi, 20(%edi)
	movl      %edx, 16(%edi)
	movl      16(%ebp), %eax
	movl      20(%ebp), %edx
	movl      %eax, %esi
	movl      %eax, 12(%esp)
	movl      8(%ebp), %eax
	subl      %eax, %esi
	movl      %esi, %ecx
	sarl      $2, %ecx
	testl     %ecx, %ecx
	je        .L0805E76C
.L0805E756:
	movl      %edx, 8(%esp)
	subl      $4, %esp
	pushl     %esi
	pushl     %eax
	pushl     %ebx
	call      memmove
.L0805E765:
	addl      $16, %esp
	movl      8(%esp), %edx
.L0805E76C:
	leal      (%ebx,%esi), %eax
	movl      %edx, %esi
	xorl      %ebx, %ebx
	xorl      %edx, %edx
	testl     %esi, %esi
	jle       .L0805E7F8
.L0805E779:
	movl      %ebp, 52(%esp)
	movl      %edi, 48(%esp)
	movl      %esi, 8(%esp)
	movl      12(%esp), %ebp
	jmp       .L0805E7AF
.L0805E78B:
	.p2align 4,,10
	.p2align 3
.L0805E790:
	notl      %esi
	andl      %esi, (%eax)
	cmpl      $31, %edx
	leal      1(%edx), %ecx
	je        .L0805E7D0
.L0805E79C:
	cmpl      $31, %ebx
	movl      %ecx, %edx
	leal      1(%ebx), %ecx
	je        .L0805E7E0
.L0805E7A6:
	subl      $1, 8(%esp)
	movl      %ecx, %ebx
	je        .L0805E7F0
.L0805E7AF:
	movl      %ebx, %ecx
	movl      $1, %esi
	movl      $1, %edi
	sall      %cl, %esi
	movl      %edx, %ecx
	sall      %cl, %edi
	testl     %edi, (%ebp)
	je        .L0805E790
.L0805E7C6:
	orl       %esi, (%eax)
	cmpl      $31, %edx
	leal      1(%edx), %ecx
	jne       .L0805E79C
.L0805E7D0:
	addl      $4, %ebp
	xorb      %dl, %dl
	cmpl      $31, %ebx
	leal      1(%ebx), %ecx
	jne       .L0805E7A6
.L0805E7DD:
	.p2align 4,,10
	.p2align 3
.L0805E7E0:
	addl      $4, %eax
	xorb      %bl, %bl
	subl      $1, 8(%esp)
	jne       .L0805E7AF
.L0805E7EC:
	.p2align 4,,10
	.p2align 3
.L0805E7F0:
	movl      48(%esp), %edi
	movl      52(%esp), %ebp
.L0805E7F8:
	movl      $0, 28(%edi)
	movl      $0, 32(%edi)
	subl      $12, %esp
	movl      $0, 36(%edi)
	movl      $0, 40(%edi)
	movl      36(%ebp), %edx
	movl      40(%ebp), %eax
	subl      28(%ebp), %edx
	subl      32(%ebp), %eax
	movl      $0, 44(%edi)
	leal      (%eax,%edx,8), %ebx
	leal      31(%ebx), %edx
	shrl      $5, %edx
	sall      $2, %edx
	pushl     %edx
	movl      %edx, 24(%esp)
	call      _Znwj
.L0805E840:
	movl      24(%esp), %edx
	movl      %eax, %esi
	movl      %eax, 28(%edi)
	addl      $16, %esp
	movl      $0, 32(%edi)
	addl      %eax, %edx
	movl      %ebx, %eax
	sarl      $31, %eax
	movl      %edx, 44(%edi)
	shrl      $27, %eax
	addl      %eax, %ebx
	movl      %ebx, %edx
	andl      $31, %ebx
	sarl      $5, %edx
	subl      %eax, %ebx
	leal      (%esi,%edx,4), %edx
	jns       .L0805E877
.L0805E871:
	addl      $32, %ebx
	subl      $4, %edx
.L0805E877:
	movl      %edx, 36(%edi)
	movl      %ebx, 40(%edi)
	movl      36(%ebp), %eax
	movl      40(%ebp), %ebx
	movl      %eax, %edi
	movl      %eax, 8(%esp)
	movl      28(%ebp), %eax
	subl      %eax, %edi
	movl      %edi, %edx
	sarl      $2, %edx
	testl     %edx, %edx
	je        .L0805E8A5
.L0805E897:
	subl      $4, %esp
	pushl     %edi
	pushl     %eax
	pushl     %esi
	call      memmove
.L0805E8A2:
	addl      $16, %esp
.L0805E8A5:
	addl      %esi, %edi
	xorl      %eax, %eax
	xorl      %edx, %edx
	testl     %ebx, %ebx
	movl      $1, %ebp
	jle       .L0805E920
.L0805E8B4:
	movl      %ebx, 12(%esp)
	jmp       .L0805E8DF
.L0805E8BA:
	.p2align 4,,10
	.p2align 3
.L0805E8C0:
	notl      %esi
	andl      %esi, (%edi)
	cmpl      $31, %edx
	leal      1(%edx), %ecx
	je        .L0805E8FF
.L0805E8CC:
	cmpl      $31, %eax
	movl      %ecx, %edx
	leal      1(%eax), %ecx
	je        .L0805E910
.L0805E8D6:
	subl      $1, 12(%esp)
	movl      %ecx, %eax
	je        .L0805E920
.L0805E8DF:
	movl      %eax, %ecx
	movl      %ebp, %esi
	movl      %ebp, %ebx
	sall      %cl, %esi
	movl      %edx, %ecx
	sall      %cl, %ebx
	movl      %ebx, %ecx
	movl      8(%esp), %ebx
	testl     %ecx, (%ebx)
	je        .L0805E8C0
.L0805E8F5:
	orl       %esi, (%edi)
	cmpl      $31, %edx
	leal      1(%edx), %ecx
	jne       .L0805E8CC
.L0805E8FF:
	addl      $4, 8(%esp)
	xorb      %dl, %dl
	cmpl      $31, %eax
	leal      1(%eax), %ecx
	jne       .L0805E8D6
.L0805E90E:
	.p2align 4,,10
	.p2align 3
.L0805E910:
	addl      $4, %edi
	xorb      %al, %al
	subl      $1, 12(%esp)
	jne       .L0805E8DF
.L0805E91C:
	.p2align 4,,10
	.p2align 3
.L0805E920:
	addl      $28, %esp
	popl      %ebx
	popl      %esi
	popl      %edi
	popl      %ebp
	ret       
	.size	_ZN9ExpansionC1ERKS_, .-_ZN9ExpansionC1ERKS_
# ----------------------
.L0805E928:
	.p2align 4
# ----------------------
	.weak	_ZNSt6vectorI9ExpansionSaIS0_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS0_S2_EERKS0_
	.type	_ZNSt6vectorI9ExpansionSaIS0_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS0_S2_EERKS0_, @function
_ZNSt6vectorI9ExpansionSaIS0_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS0_S2_EERKS0_:
	pushl     %ebp
	pushl     %edi
	pushl     %esi
	pushl     %ebx
	subl      $76, %esp
	movl      96(%esp), %esi
	movl      100(%esp), %ebx
	movl      4(%esi), %eax
	cmpl      8(%esi), %eax
	je        .L0805EA32
.L0805E94B:
	testl     %eax, %eax
	leal      -48(%eax), %edx
	je        .L0805E962
.L0805E952:
	subl      $8, %esp
	pushl     %edx
	pushl     %eax
	call      _ZN9ExpansionC1ERKS_
.L0805E95C:
	movl      4(%esi), %eax
	addl      $16, %esp
.L0805E962:
	subl      $8, %esp
	addl      $48, %eax
	movl      %eax, 4(%esi)
	pushl     112(%esp)
	leal      28(%esp), %eax
	pushl     %eax
	call      _ZN9ExpansionC1ERKS_
.L0805E979:
	movl      4(%esi), %eax
	addl      $16, %esp
	leal      -96(%eax), %edx
	leal      -88(%eax), %esi
	subl      %ebx, %edx
	movl      %edx, %ecx
	subl      %edx, %eax
	sarl      $4, %ecx
	leal      -88(%eax), %ebp
	imull     $-1431655765, %ecx, %ecx
	testl     %ecx, %ecx
	jle       .L0805E9D1
.L0805E99B:
	.p2align 4,,10
	.p2align 3
.L0805E9A0:
	movl      -56(%esi), %eax
	leal      -48(%esi), %edi
	subl      $8, %esp
	movl      %eax, -8(%esi)
	movl      -52(%esi), %eax
	movl      %eax, -4(%esi)
	pushl     %edi
	pushl     %esi
	call      _ZNSt6vectorIbSaIbEEaSERKS1_
.L0805E9B9:
	popl      %eax
	leal      -28(%esi), %eax
	addl      $20, %esi
	popl      %edx
	pushl     %eax
	pushl     %esi
	movl      %edi, %esi
	call      _ZNSt6vectorIbSaIbEEaSERKS1_
.L0805E9CA:
	addl      $16, %esp
	cmpl      %ebp, %edi
	jne       .L0805E9A0
.L0805E9D1:
	movl      16(%esp), %eax
	subl      $8, %esp
	movl      %eax, (%ebx)
	movl      28(%esp), %eax
	movl      %eax, 4(%ebx)
	leal      32(%esp), %eax
	pushl     %eax
	leal      8(%ebx), %eax
	addl      $28, %ebx
	pushl     %eax
	call      _ZNSt6vectorIbSaIbEEaSERKS1_
.L0805E9F2:
	popl      %ecx
	popl      %esi
	leal      52(%esp), %eax
	pushl     %eax
	pushl     %ebx
	call      _ZNSt6vectorIbSaIbEEaSERKS1_
.L0805E9FF:
	movl      60(%esp), %eax
	addl      $16, %esp
	testl     %eax, %eax
	je        .L0805EA16
.L0805EA0A:
	subl      $12, %esp
	pushl     %eax
	call      _ZdlPv
.L0805EA13:
	addl      $16, %esp
.L0805EA16:
	movl      24(%esp), %eax
	testl     %eax, %eax
	je        .L0805EA2A
.L0805EA1E:
	subl      $12, %esp
	pushl     %eax
	call      _ZdlPv
.L0805EA27:
	addl      $16, %esp
.L0805EA2A:
	addl      $76, %esp
	popl      %ebx
	popl      %esi
	popl      %edi
	popl      %ebp
	ret       
.L0805EA32:
	movl      (%esi), %edx
	subl      %edx, %eax
	sarl      $4, %eax
	imull     $-1431655765, %eax, %eax
	testl     %eax, %eax
	jne       .L0805EB34
.L0805EA47:
	movl      %ebx, %ebp
	movl      $48, 12(%esp)
	subl      %edx, %ebp
.L0805EA53:
	subl      $12, %esp
	pushl     24(%esp)
	call      _Znwj
.L0805EA5F:
	leal      48(%eax), %edi
	movl      %eax, 24(%esp)
	addl      $16, %esp
.L0805EA69:
	addl      8(%esp), %ebp
	je        .L0805EA7F
.L0805EA6F:
	subl      $8, %esp
	pushl     112(%esp)
	pushl     %ebp
	call      _ZN9ExpansionC1ERKS_
.L0805EA7C:
	addl      $16, %esp
.L0805EA7F:
	movl      (%esi), %ebp
	cmpl      %ebp, %ebx
	je        .L0805EAAE
.L0805EA85:
	movl      8(%esp), %edi
	.p2align 4
.L0805EA90:
	testl     %edi, %edi
	je        .L0805EAA1
.L0805EA94:
	subl      $8, %esp
	pushl     %ebp
	pushl     %edi
	call      _ZN9ExpansionC1ERKS_
.L0805EA9E:
	addl      $16, %esp
.L0805EAA1:
	addl      $48, %ebp
	addl      $48, %edi
	cmpl      %ebp, %ebx
	jne       .L0805EA90
.L0805EAAB:
	addl      $48, %edi
.L0805EAAE:
	movl      4(%esi), %ebp
	cmpl      %ebp, %ebx
	je        .L0805EAD6
.L0805EAB5:
	.p2align 4,,10
	.p2align 3
.L0805EAB8:
	testl     %edi, %edi
	je        .L0805EAC9
.L0805EABC:
	subl      $8, %esp
	pushl     %ebx
	pushl     %edi
	call      _ZN9ExpansionC1ERKS_
.L0805EAC6:
	addl      $16, %esp
.L0805EAC9:
	addl      $48, %ebx
	addl      $48, %edi
	cmpl      %ebx, %ebp
	jne       .L0805EAB8
.L0805EAD3:
	movl      4(%esi), %ebp
.L0805EAD6:
	movl      (%esi), %ebx
	cmpl      %ebp, %ebx
	je        .L0805EB0F
.L0805EADC:
	.p2align 4,,10
	.p2align 3
.L0805EAE0:
	movl      28(%ebx), %eax
	testl     %eax, %eax
	je        .L0805EAF3
.L0805EAE7:
	subl      $12, %esp
	pushl     %eax
	call      _ZdlPv
.L0805EAF0:
	addl      $16, %esp
.L0805EAF3:
	movl      8(%ebx), %eax
	testl     %eax, %eax
	je        .L0805EB06
.L0805EAFA:
	subl      $12, %esp
	pushl     %eax
	call      _ZdlPv
.L0805EB03:
	addl      $16, %esp
.L0805EB06:
	addl      $48, %ebx
	cmpl      %ebp, %ebx
	jne       .L0805EAE0
.L0805EB0D:
	movl      (%esi), %ebp
.L0805EB0F:
	testl     %ebp, %ebp
	je        .L0805EB1F
.L0805EB13:
	subl      $12, %esp
	pushl     %ebp
	call      _ZdlPv
.L0805EB1C:
	addl      $16, %esp
.L0805EB1F:
	movl      8(%esp), %eax
	movl      %edi, 4(%esi)
	movl      %eax, (%esi)
	addl      12(%esp), %eax
	movl      %eax, 8(%esi)
	jmp       .L0805EA2A
.L0805EB34:
	leal      (%eax,%eax), %ecx
	cmpl      %ecx, %eax
	jbe       .L0805EB4C
.L0805EB3B:
	movl      %ebx, %ebp
	movl      $-16, 12(%esp)
	subl      %edx, %ebp
	jmp       .L0805EA53
.L0805EB4C:
	cmpl      $89478485, %ecx
	ja        .L0805EB3B
.L0805EB54:
	leal      (%ecx,%eax,4), %eax
	movl      %ebx, %ebp
	subl      %edx, %ebp
	sall      $4, %eax
	testl     %ecx, %ecx
	movl      %eax, 12(%esp)
	jne       .L0805EA53
.L0805EB6A:
	movl      $48, %edi
	movl      $0, 8(%esp)
	jmp       .L0805EA69
	.size	_ZNSt6vectorI9ExpansionSaIS0_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS0_S2_EERKS0_, .-_ZNSt6vectorI9ExpansionSaIS0_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS0_S2_EERKS0_
# ----------------------
.L0805EB7C:
	.p2align 4,,10
	.p2align 3
# ----------------------
	.weak	_ZNSt6vectorIP9ExpansionSaIS1_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS1_S3_EERKS1_
	.type	_ZNSt6vectorIP9ExpansionSaIS1_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS1_S3_EERKS1_, @function
_ZNSt6vectorIP9ExpansionSaIS1_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS1_S3_EERKS1_:
	pushl     %ebp
	pushl     %edi
	pushl     %esi
	pushl     %ebx
	subl      $28, %esp
	movl      48(%esp), %esi
	movl      52(%esp), %edi
	movl      56(%esp), %ebp
	movl      4(%esi), %eax
	cmpl      8(%esi), %eax
	je        .L0805EBE8
.L0805EB9B:
	testl     %eax, %eax
	je        .L0805EBA7
.L0805EB9F:
	movl      -4(%eax), %edx
	movl      %edx, (%eax)
	movl      4(%esi), %eax
.L0805EBA7:
	leal      4(%eax), %edx
	movl      %edx, 4(%esi)
	leal      -4(%eax), %edx
	movl      (%ebp), %ebx
	subl      %edi, %edx
	movl      %edx, %ecx
	sarl      $2, %ecx
	testl     %ecx, %ecx
	jne       .L0805EBD0
.L0805EBBE:
	movl      %ebx, (%edi)
.L0805EBC0:
	addl      $28, %esp
	popl      %ebx
	popl      %esi
	popl      %edi
	popl      %ebp
	ret       
.L0805EBC8:
	.p2align 4
.L0805EBD0:
	subl      $4, %esp
	subl      %edx, %eax
	pushl     %edx
	pushl     %edi
	pushl     %eax
	call      memmove
.L0805EBDD:
	addl      $16, %esp
	jmp       .L0805EBBE
.L0805EBE2:
	.p2align 4,,10
	.p2align 3
.L0805EBE8:
	movl      (%esi), %edx
	subl      %edx, %eax
	movl      %eax, %ebx
	sarl      $2, %ebx
	testl     %ebx, %ebx
	je        .L0805EC80
.L0805EBF9:
	leal      (%ebx,%ebx), %eax
	cmpl      %eax, %ebx
	jbe       .L0805ECC3
.L0805EC04:
	movl      %edi, %ecx
	movl      $-4, 8(%esp)
	subl      %edx, %ecx
.L0805EC10:
	movl      %ecx, 12(%esp)
	subl      $12, %esp
	pushl     20(%esp)
	call      _Znwj
.L0805EC20:
	addl      $16, %esp
	movl      12(%esp), %ecx
	movl      %eax, %ebx
.L0805EC29:
	addl      %ebx, %ecx
	je        .L0805EC32
.L0805EC2D:
	movl      (%ebp), %eax
	movl      %eax, (%ecx)
.L0805EC32:
	movl      (%esi), %eax
	movl      %edi, %ebp
	subl      %eax, %ebp
	movl      %ebp, %ecx
	sarl      $2, %ecx
	testl     %ecx, %ecx
	jne       .L0805ECB0
.L0805EC41:
	leal      4(%ebx,%ebp), %ecx
	movl      4(%esi), %ebp
	subl      %edi, %ebp
	movl      %ebp, %eax
	sarl      $2, %eax
	testl     %eax, %eax
	jne       .L0805EC90
.L0805EC53:
	movl      (%esi), %eax
	addl      %ecx, %ebp
	testl     %eax, %eax
	je        .L0805EC67
.L0805EC5B:
	subl      $12, %esp
	pushl     %eax
	call      _ZdlPv
.L0805EC64:
	addl      $16, %esp
.L0805EC67:
	movl      %ebx, (%esi)
	addl      8(%esp), %ebx
	movl      %ebp, 4(%esi)
	movl      %ebx, 8(%esi)
	jmp       .L0805EBC0
.L0805EC78:
	.p2align 4
.L0805EC80:
	movl      %edi, %ecx
	movl      $4, 8(%esp)
	subl      %edx, %ecx
	jmp       .L0805EC10
.L0805EC8E:
	.p2align 4,,10
	.p2align 3
.L0805EC90:
	subl      $4, %esp
	pushl     %ebp
	pushl     %edi
	pushl     %ecx
	movl      %ecx, 28(%esp)
	call      memmove
.L0805EC9F:
	addl      $16, %esp
	movl      12(%esp), %ecx
	jmp       .L0805EC53
.L0805ECA8:
	.p2align 4
.L0805ECB0:
	subl      $4, %esp
	pushl     %ebp
	pushl     %eax
	pushl     %ebx
	call      memmove
.L0805ECBB:
	addl      $16, %esp
	jmp       .L0805EC41
.L0805ECC3:
	cmpl      $1073741823, %eax
	ja        .L0805EC04
.L0805ECCE:
	sall      $3, %ebx
	movl      %edi, %ecx
	movl      %ebx, 8(%esp)
	subl      %edx, %ecx
	xorl      %ebx, %ebx
	testl     %eax, %eax
	je        .L0805EC29
.L0805ECE3:
	jmp       .L0805EC10
	.size	_ZNSt6vectorIP9ExpansionSaIS1_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS1_S3_EERKS1_, .-_ZNSt6vectorIP9ExpansionSaIS1_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS1_S3_EERKS1_
# ----------------------
.L0805ECE8:
	.p2align 4
# ----------------------
	.weak	_ZNSt6vectorIjSaIjEE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPjS1_EERKj
	.type	_ZNSt6vectorIjSaIjEE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPjS1_EERKj, @function
_ZNSt6vectorIjSaIjEE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPjS1_EERKj:
	pushl     %ebp
	pushl     %edi
	pushl     %esi
	pushl     %ebx
	subl      $28, %esp
	movl      48(%esp), %esi
	movl      52(%esp), %edi
	movl      4(%esi), %ebx
	cmpl      8(%esi), %ebx
	je        .L0805ED50
.L0805ED07:
	testl     %ebx, %ebx
	je        .L0805ED10
.L0805ED0B:
	movl      -4(%ebx), %eax
	movl      %eax, (%ebx)
.L0805ED10:
	leal      4(%ebx), %eax
	movl      %eax, 4(%esi)
	movl      56(%esp), %eax
	movl      (%eax), %esi
	leal      -4(%ebx), %eax
	subl      %edi, %eax
	movl      %eax, %edx
	sarl      $2, %edx
	testl     %edx, %edx
	jne       .L0805ED38
.L0805ED2A:
	movl      %esi, (%edi)
.L0805ED2C:
	addl      $28, %esp
	popl      %ebx
	popl      %esi
	popl      %edi
	popl      %ebp
	ret       
.L0805ED34:
	.p2align 4,,10
	.p2align 3
.L0805ED38:
	subl      $4, %esp
	subl      %eax, %ebx
	pushl     %eax
	pushl     %edi
	pushl     %ebx
	call      memmove
.L0805ED45:
	addl      $16, %esp
	jmp       .L0805ED2A
.L0805ED4A:
	.p2align 4,,10
	.p2align 3
.L0805ED50:
	movl      (%esi), %eax
	subl      %eax, %ebx
	sarl      $2, %ebx
	testl     %ebx, %ebx
	je        .L0805EDE0
.L0805ED5F:
	leal      (%ebx,%ebx), %ecx
	cmpl      %ecx, %ebx
	jbe       .L0805EE2E
.L0805ED6A:
	movl      %edi, %edx
	movl      $-4, %ebx
	subl      %eax, %edx
.L0805ED73:
	movl      %edx, 12(%esp)
	subl      $12, %esp
	pushl     %ebx
	call      _Znwj
.L0805ED80:
	movl      %eax, %ebp
	movl      (%esi), %eax
	movl      %edi, %ecx
	movl      %eax, 24(%esp)
	addl      $16, %esp
	movl      12(%esp), %edx
	subl      %eax, %ecx
.L0805ED93:
	addl      %ebp, %edx
	je        .L0805ED9F
.L0805ED97:
	movl      56(%esp), %eax
	movl      (%eax), %eax
	movl      %eax, (%edx)
.L0805ED9F:
	movl      %ecx, %edx
	sarl      $2, %edx
	testl     %edx, %edx
	jne       .L0805EE10
.L0805EDA8:
	movl      4(%esi), %edx
	leal      4(%ebp,%ecx), %ecx
	subl      %edi, %edx
	movl      %edx, %eax
	sarl      $2, %eax
	testl     %eax, %eax
	jne       .L0805EDF0
.L0805EDBA:
	movl      (%esi), %eax
	leal      (%ecx,%edx), %edi
	testl     %eax, %eax
	je        .L0805EDCF
.L0805EDC3:
	subl      $12, %esp
	pushl     %eax
	call      _ZdlPv
.L0805EDCC:
	addl      $16, %esp
.L0805EDCF:
	addl      %ebp, %ebx
	movl      %ebp, (%esi)
	movl      %edi, 4(%esi)
	movl      %ebx, 8(%esi)
	jmp       .L0805ED2C
.L0805EDDE:
	.p2align 4,,10
	.p2align 3
.L0805EDE0:
	movl      %edi, %edx
	movl      $4, %ebx
	subl      %eax, %edx
	jmp       .L0805ED73
.L0805EDEB:
	.p2align 4,,10
	.p2align 3
.L0805EDF0:
	subl      $4, %esp
	pushl     %edx
	movl      %edx, 20(%esp)
	pushl     %edi
	pushl     %ecx
	movl      %ecx, 24(%esp)
	call      memmove
.L0805EE03:
	addl      $16, %esp
	movl      12(%esp), %edx
	movl      8(%esp), %ecx
	jmp       .L0805EDBA
.L0805EE10:
	subl      $4, %esp
	pushl     %ecx
	movl      %ecx, 20(%esp)
	pushl     16(%esp)
	pushl     %ebp
	call      memmove
.L0805EE22:
	addl      $16, %esp
	movl      12(%esp), %ecx
	jmp       .L0805EDA8
.L0805EE2E:
	cmpl      $1073741823, %ecx
	ja        .L0805ED6A
.L0805EE3A:
	movl      %edi, %edx
	sall      $3, %ebx
	subl      %eax, %edx
	testl     %ecx, %ecx
	jne       .L0805ED73
.L0805EE49:
	movl      %edx, %ecx
	movl      %eax, 8(%esp)
	xorl      %ebp, %ebp
	jmp       .L0805ED93
	.size	_ZNSt6vectorIjSaIjEE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPjS1_EERKj, .-_ZNSt6vectorIjSaIjEE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPjS1_EERKj
# ----------------------
.L0805EE56:
	.p2align 4
# ----------------------
	.weak	_ZN7acommon9HashTableINS_9StringMap5ParmsEE12create_tableEj
	.type	_ZN7acommon9HashTableINS_9StringMap5ParmsEE12create_tableEj, @function
_ZN7acommon9HashTableINS_9StringMap5ParmsEE12create_tableEj:
	pushl     %esi
	pushl     %ebx
	subl      $12, %esp
	movl      28(%esp), %eax
	movl      24(%esp), %ebx
	movl      _ZN7acommonL6primesE(,%eax,4), %esi
	movl      %eax, 16(%ebx)
	leal      1(%esi), %eax
	movl      %esi, 12(%ebx)
	pushl     $4
	pushl     %eax
	call      calloc
.L0805EE85:
	movl      %eax, 4(%ebx)
	leal      (%eax,%esi,4), %eax
	movl      %eax, 8(%ebx)
	movl      %eax, (%eax)
	addl      $20, %esp
	popl      %ebx
	popl      %esi
	ret       
	.size	_ZN7acommon9HashTableINS_9StringMap5ParmsEE12create_tableEj, .-_ZN7acommon9HashTableINS_9StringMap5ParmsEE12create_tableEj
# ----------------------
.L0805EE96:
	.p2align 4
# ----------------------
	.weak	_ZN7acommon10BlockSListINS_10StringPairEE9add_blockEj
	.type	_ZN7acommon10BlockSListINS_10StringPairEE9add_blockEj, @function
_ZN7acommon10BlockSListINS_10StringPairEE9add_blockEj:
	pushl     %ebp
	pushl     %edi
	pushl     %esi
	pushl     %ebx
	subl      $24, %esp
	movl      48(%esp), %eax
	movl      44(%esp), %ebx
	leal      (%eax,%eax,2), %ebp
	sall      $2, %ebp
	leal      4(%ebp), %eax
	pushl     %eax
	call      malloc
.L0805EEBE:
	leal      4(%eax), %ecx
	movl      (%ebx), %edx
	leal      16(%eax), %esi
	addl      $16, %esp
	movl      %eax, (%ebx)
	addl      %ecx, %ebp
	cmpl      %ebp, %esi
	movl      %edx, (%eax)
	je        .L0805EF11
.L0805EED3:
	movl      %ecx, %edi
	movl      %esi, %edx
	.p2align 4
.L0805EEE0:
	movl      %edx, (%edi)
	addl      $12, %edx
	addl      $12, %edi
	cmpl      %ebp, %edx
	jne       .L0805EEE0
.L0805EEEC:
	addl      $28, %eax
	subl      %eax, %edx
	shrl      $2, %edx
	imull     $715827883, %edx, %edx
	leal      (%edx,%edx,2), %eax
	leal      (%esi,%eax,4), %eax
.L0805EF00:
	movl      $0, (%eax)
	movl      %ecx, 4(%ebx)
	addl      $12, %esp
	popl      %ebx
	popl      %esi
	popl      %edi
	popl      %ebp
	ret       
.L0805EF11:
	movl      %ecx, %eax
	jmp       .L0805EF00
	.size	_ZN7acommon10BlockSListINS_10StringPairEE9add_blockEj, .-_ZN7acommon10BlockSListINS_10StringPairEE9add_blockEj
# ----------------------
.L0805EF15:
	.p2align 4
# ----------------------
	.weak	_ZN7acommon9HashTableINS_9StringMap5ParmsEE6insertERKNS_10StringPairE
	.type	_ZN7acommon9HashTableINS_9StringMap5ParmsEE6insertERKNS_10StringPairE, @function
_ZN7acommon9HashTableINS_9StringMap5ParmsEE6insertERKNS_10StringPairE:
	pushl     %ebp
	pushl     %edi
	pushl     %esi
	pushl     %ebx
	subl      $68, %esp
	leal      55(%esp), %eax
	movl      92(%esp), %esi
	movl      88(%esp), %edi
	pushl     %eax
	movl      100(%esp), %eax
	leal      4(%esi), %edx
	leal      12(%esi), %ecx
	pushl     (%eax)
	leal      40(%esp), %eax
	call      _ZN7acommon9HashTableINS_9StringMap5ParmsEE6find_iERKPKcRb.isra.89
.L0805EF49:
	movl      40(%esp), %ebp
	movl      44(%esp), %edx
	addl      $16, %esp
	cmpb      $0, 47(%esp)
	jne       .L0805EF98
.L0805EF5B:
	movl      24(%esi), %eax
	testl     %eax, %eax
	je        .L0805EFAD
.L0805EF62:
	movl      (%eax), %ebx
	movl      %ebp, (%edi)
	movl      %edx, 4(%edi)
	movb      $1, 8(%edi)
	movl      %ebx, 24(%esi)
	movl      88(%esp), %ebx
	movl      (%ebx), %ecx
	movl      4(%ebx), %ebx
	movl      %ecx, 4(%eax)
	movl      %ebx, 8(%eax)
	movl      (%edx), %ebx
	movl      %ebx, (%eax)
	movl      %eax, (%edx)
	addl      $1, (%esi)
.L0805EF88:
	addl      $60, %esp
	movl      %edi, %eax
	popl      %ebx
	popl      %esi
	popl      %edi
	popl      %ebp
	ret       $4
.L0805EF94:
	.p2align 4,,10
	.p2align 3
.L0805EF98:
	movl      %ebp, (%edi)
	movl      %edx, 4(%edi)
	movl      %edi, %eax
	movb      $0, 8(%edi)
	addl      $60, %esp
	popl      %ebx
	popl      %esi
	popl      %edi
	popl      %ebp
	ret       $4
.L0805EFAD:
	movl      4(%esi), %eax
	subl      $8, %esp
	movl      %eax, 24(%esp)
	movl      %eax, %ebx
	movl      8(%esi), %eax
	movl      %eax, 20(%esp)
	movl      %eax, %ebp
	movl      12(%esi), %eax
	movl      %eax, 28(%esp)
	movl      16(%esi), %eax
	addl      $1, %eax
	pushl     %eax
	pushl     %esi
	call      _ZN7acommon9HashTableINS_9StringMap5ParmsEE12create_tableEj
.L0805EFD6:
	addl      $16, %esp
	cmpl      %ebp, %ebx
	movl      %ebx, 8(%esp)
	je        .L0805F060
.L0805EFE1:
	movl      %edi, 80(%esp)
.L0805EFE5:
	movl      8(%esp), %eax
	movl      (%eax), %ebx
	testl     %ebx, %ebx
	je        .L0805F04D
.L0805EFEF:
	movl      4(%ebx), %ebp
	movl      12(%esi), %edi
	movl      4(%esi), %ecx
	movsbl    (%ebp), %edx
	testb     %dl, %dl
	je        .L0805F03D
.L0805F000:
	xorl      %eax, %eax
	.p2align 4,,10
	.p2align 3
.L0805F008:
	leal      (%eax,%eax,4), %eax
	addl      $1, %ebp
	addl      %edx, %eax
	movsbl    (%ebp), %edx
	testb     %dl, %dl
	jne       .L0805F008
.L0805F018:
	xorl      %edx, %edx
	divl      %edi
	movl      (%ebx), %eax
	sall      $2, %edx
	addl      %edx, %ecx
	testl     %eax, %eax
	movl      (%ecx), %edx
	movl      %edx, (%ebx)
	movl      %ebx, (%ecx)
	je        .L0805F04D
.L0805F02D:
	movl      %eax, %ebx
	movl      4(%esi), %ecx
	movl      4(%ebx), %ebp
	movsbl    (%ebp), %edx
	testb     %dl, %dl
	jne       .L0805F000
.L0805F03D:
	xorl      %edx, %edx
	movl      (%ebx), %eax
	addl      %edx, %ecx
	movl      (%ecx), %edx
	testl     %eax, %eax
	movl      %edx, (%ebx)
	movl      %ebx, (%ecx)
	jne       .L0805F02D
.L0805F04D:
	addl      $4, 8(%esp)
	movl      8(%esp), %eax
	cmpl      %eax, 12(%esp)
	jne       .L0805EFE5
.L0805F05C:
	movl      80(%esp), %edi
.L0805F060:
	subl      $12, %esp
	pushl     28(%esp)
	call      free
.L0805F06C:
	popl      %eax
	popl      %edx
	movl      12(%esi), %eax
	subl      28(%esp), %eax
	pushl     %eax
	leal      20(%esi), %eax
	pushl     %eax
	call      _ZN7acommon10BlockSListINS_10StringPairEE9add_blockEj
.L0805F07F:
	addl      $12, %esp
	pushl     92(%esp)
	pushl     %esi
	pushl     %edi
	call      _ZN7acommon9HashTableINS_9StringMap5ParmsEE6insertERKNS_10StringPairE
.L0805F08D:
	addl      $12, %esp
	jmp       .L0805EF88
	.size	_ZN7acommon9HashTableINS_9StringMap5ParmsEE6insertERKNS_10StringPairE, .-_ZN7acommon9HashTableINS_9StringMap5ParmsEE6insertERKNS_10StringPairE
# ----------------------
.L0805F095:
	.p2align 4
# ----------------------
	.weak	_ZN7acommon9StringMap7replaceERKNS_10ParmStringES3_
	.type	_ZN7acommon9StringMap7replaceERKNS_10ParmStringES3_, @function
_ZN7acommon9StringMap7replaceERKNS_10ParmStringES3_:
	pushl     %ebp
	pushl     %edi
	pushl     %esi
	pushl     %ebx
	subl      $60, %esp
	movl      84(%esp), %edi
	movl      80(%esp), %ebx
	movl      88(%esp), %esi
	movl      $0, 32(%esp)
	movl      (%edi), %eax
	movl      %eax, 28(%esp)
	leal      36(%esp), %eax
	subl      $4, %esp
	leal      32(%esp), %edx
	pushl     %edx
	leal      4(%ebx), %edx
	pushl     %edx
	pushl     %eax
	call      _ZN7acommon9HashTableINS_9StringMap5ParmsEE6insertERKNS_10StringPairE
.L0805F0D7:
	movl      52(%esp), %ebp
	addl      $12, %esp
	cmpb      $0, 44(%esp)
	jne       .L0805F150
.L0805F0E5:
	movl      4(%esi), %eax
	movl      (%ebp), %edi
	movl      (%esi), %ebp
	cmpl      $-1, %eax
	leal      1(%eax), %esi
	je        .L0805F1F0
.L0805F0F9:
	movl      56(%ebx), %edx
	movl      %esi, %eax
	negl      %eax
	addl      %eax, %edx
	cmpl      60(%ebx), %edx
	movl      %edx, 56(%ebx)
	jb        .L0805F130
.L0805F10A:
	subl      $4, %esp
	pushl     %esi
	pushl     %ebp
	pushl     %edx
	call      memcpy
.L0805F115:
	addl      $16, %esp
	movl      %eax, 8(%edi)
	movl      $1, %eax
	addl      $60, %esp
	popl      %ebx
	popl      %esi
	popl      %edi
	popl      %ebp
	ret       
.L0805F128:
	.p2align 4
.L0805F130:
	leal      36(%ebx), %edx
	movl      %eax, (%esp)
	subl      $12, %esp
	pushl     %edx
.L0805F13A:
	call      _ZN7acommon8ObjStack9new_chunkEv
.L0805F13F:
	movl      16(%esp), %eax
	addl      56(%ebx), %eax
	addl      $16, %esp
	movl      %eax, %edx
	movl      %eax, 56(%ebx)
	jmp       .L0805F10A
.L0805F150:
	movl      (%ebp), %eax
	movl      (%edi), %ecx
	movl      %eax, (%esp)
	leal      36(%ebx), %eax
	movl      %eax, 4(%esp)
	movl      4(%edi), %eax
	cmpl      $-1, %eax
	leal      1(%eax), %edi
	je        .L0805F220
.L0805F16E:
	movl      56(%ebx), %edx
	movl      %edi, %eax
	negl      %eax
	addl      %eax, %edx
	cmpl      60(%ebx), %edx
	movl      %edx, 56(%ebx)
	jae       .L0805F1A6
.L0805F17F:
	movl      %ecx, 12(%esp)
	movl      %eax, 8(%esp)
	subl      $12, %esp
	pushl     16(%esp)
	call      _ZN7acommon8ObjStack9new_chunkEv
.L0805F193:
	movl      24(%esp), %eax
	addl      56(%ebx), %eax
	addl      $16, %esp
	movl      12(%esp), %ecx
	movl      %eax, %edx
	movl      %eax, 56(%ebx)
.L0805F1A6:
	subl      $4, %esp
	pushl     %edi
	pushl     %ecx
	pushl     %edx
	call      memcpy
.L0805F1B1:
	movl      16(%esp), %ecx
	addl      $16, %esp
	movl      %eax, 4(%ecx)
	movl      4(%esi), %eax
	movl      (%ebp), %edi
	movl      (%esi), %ebp
	cmpl      $-1, %eax
	leal      1(%eax), %esi
	je        .L0805F208
.L0805F1CB:
	movl      56(%ebx), %edx
	movl      %esi, %eax
	negl      %eax
	addl      %eax, %edx
	cmpl      60(%ebx), %edx
	movl      %edx, 56(%ebx)
	jae       .L0805F10A
.L0805F1E0:
	movl      %eax, (%esp)
	subl      $12, %esp
	pushl     16(%esp)
	jmp       .L0805F13A
.L0805F1EF:
	.p2align 4,,10
	.p2align 3
.L0805F1F0:
	subl      $12, %esp
	pushl     %ebp
	call      strlen
.L0805F1F9:
	addl      $16, %esp
	leal      1(%eax), %esi
	jmp       .L0805F0F9
.L0805F204:
	.p2align 4,,10
	.p2align 3
.L0805F208:
	subl      $12, %esp
	pushl     %ebp
	call      strlen
.L0805F211:
	addl      $16, %esp
	leal      1(%eax), %esi
	jmp       .L0805F1CB
.L0805F219:
	.p2align 4
.L0805F220:
	subl      $12, %esp
	pushl     %ecx
	movl      %ecx, 24(%esp)
	call      strlen
.L0805F22D:
	addl      $16, %esp
	leal      1(%eax), %edi
	movl      8(%esp), %ecx
	jmp       .L0805F16E
	.size	_ZN7acommon9StringMap7replaceERKNS_10ParmStringES3_, .-_ZN7acommon9StringMap7replaceERKNS_10ParmStringES3_
# ----------------------
.L0805F23C:
	.p2align 4,,10
	.p2align 3
# ----------------------
	.weak	_ZN7acommon9StringMap3addERKNS_10ParmStringE
	.type	_ZN7acommon9StringMap3addERKNS_10ParmStringE, @function
_ZN7acommon9StringMap3addERKNS_10ParmStringE:
	pushl     %ebp
	pushl     %edi
	pushl     %esi
	pushl     %ebx
	subl      $60, %esp
	movl      88(%esp), %edi
	movl      84(%esp), %esi
	movl      80(%esp), %ebx
	movl      $0, 32(%esp)
	movl      (%edi), %eax
	movl      %eax, 28(%esp)
	leal      36(%esp), %eax
	subl      $4, %esp
	leal      32(%esp), %edx
	pushl     %edx
	leal      4(%esi), %edx
	pushl     %edx
	pushl     %eax
	call      _ZN7acommon9HashTableINS_9StringMap5ParmsEE6insertERKNS_10StringPairE
.L0805F277:
	movl      52(%esp), %ebp
	addl      $12, %esp
	cmpb      $0, 44(%esp)
	jne       .L0805F2A0
.L0805F285:
	movl      $0, (%ebx)
	movb      $0, 4(%ebx)
	addl      $60, %esp
	movl      %ebx, %eax
	popl      %ebx
	popl      %esi
	popl      %edi
	popl      %ebp
	ret       $4
.L0805F29B:
	.p2align 4,,10
	.p2align 3
.L0805F2A0:
	movl      (%ebp), %eax
	movl      (%edi), %ecx
	movl      %eax, 4(%esp)
	movl      4(%edi), %eax
	cmpl      $-1, %eax
	leal      1(%eax), %edi
	je        .L0805F330
.L0805F2B4:
	movl      56(%esi), %edx
	movl      %edi, %eax
	negl      %eax
	addl      %eax, %edx
	cmpl      60(%esi), %edx
	movl      %edx, 56(%esi)
	jb        .L0805F300
.L0805F2C5:
	subl      $4, %esp
	addl      $68, %esi
	pushl     %edi
	pushl     %ecx
	pushl     %edx
	call      memcpy
.L0805F2D3:
	movl      20(%esp), %ecx
	addl      $16, %esp
	movl      %eax, 4(%ecx)
	movl      (%ebp), %eax
	movl      %esi, 8(%eax)
	movl      $0, (%ebx)
	movl      %ebx, %eax
	movb      $1, 4(%ebx)
	addl      $60, %esp
	popl      %ebx
	popl      %esi
	popl      %edi
	popl      %ebp
	ret       $4
.L0805F2F9:
	.p2align 4
.L0805F300:
	leal      36(%esi), %edx
	movl      %ecx, 12(%esp)
	movl      %eax, 8(%esp)
	subl      $12, %esp
	pushl     %edx
	call      _ZN7acommon8ObjStack9new_chunkEv
.L0805F314:
	movl      24(%esp), %eax
	addl      56(%esi), %eax
	addl      $16, %esp
	movl      12(%esp), %ecx
	movl      %eax, %edx
	movl      %eax, 56(%esi)
	jmp       .L0805F2C5
.L0805F329:
	.p2align 4
.L0805F330:
	subl      $12, %esp
	pushl     %ecx
	movl      %ecx, 24(%esp)
	call      strlen
.L0805F33D:
	addl      $16, %esp
	leal      1(%eax), %edi
	movl      8(%esp), %ecx
	jmp       .L0805F2B4
	.size	_ZN7acommon9StringMap3addERKNS_10ParmStringE, .-_ZN7acommon9StringMap3addERKNS_10ParmStringE
# ----------------------
.L0805F34C:
	.p2align 4,,10
	.p2align 3
# ----------------------
	.weak	_ZN7acommon9StringMap5clearEv
	.type	_ZN7acommon9StringMap5clearEv, @function
_ZN7acommon9StringMap5clearEv:
	pushl     %edi
	pushl     %esi
	pushl     %ebx
	movl      20(%esp), %ebx
	movl      16(%esp), %esi
	subl      $12, %esp
	leal      4(%ebx), %edi
	pushl     %edi
	call      _ZN7acommon9HashTableINS_9StringMap5ParmsEE3delEv
.L0805F367:
	movl      $0, 4(%ebx)
	popl      %eax
	popl      %edx
	pushl     $0
	pushl     %edi
	call      _ZN7acommon9HashTableINS_9StringMap5ParmsEE12create_tableEj
.L0805F378:
	popl      %ecx
	leal      24(%ebx), %eax
	addl      $36, %ebx
	popl      %edi
	pushl     $53
	pushl     %eax
	call      _ZN7acommon10BlockSListINS_10StringPairEE9add_blockEj
.L0805F388:
	movl      %ebx, (%esp)
	call      _ZN7acommon8ObjStack5resetEv
.L0805F390:
	movl      _ZN7acommonL6no_errE....0x806e934, %edx
	addl      $16, %esp
	testl     %edx, %edx
	movl      %edx, (%esi)
	je        .L0805F3A3
.L0805F39F:
	addl      $1, 8(%edx)
.L0805F3A3:
	movl      %esi, %eax
	popl      %ebx
	popl      %esi
	popl      %edi
	ret       $4
	.size	_ZN7acommon9StringMap5clearEv, .-_ZN7acommon9StringMap5clearEv
# ----------------------
.L0805F3AB:
	.p2align 4,,10
	.p2align 3
# ----------------------
	.weak	_ZNSt6vectorI6ChoiceSaIS0_EE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPS0_S2_EEjRKS0_
	.type	_ZNSt6vectorI6ChoiceSaIS0_EE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPS0_S2_EEjRKS0_, @function
_ZNSt6vectorI6ChoiceSaIS0_EE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPS0_S2_EEjRKS0_:
	pushl     %ebp
	pushl     %edi
	pushl     %esi
	pushl     %ebx
	subl      $28, %esp
	movl      56(%esp), %ebp
	movl      48(%esp), %edi
	movl      60(%esp), %ebx
	testl     %ebp, %ebp
	je        .L0805F4A4
.L0805F3CB:
	movl      4(%edi), %eax
	movl      8(%edi), %edx
	subl      %eax, %edx
	sarl      $3, %edx
	cmpl      %edx, %ebp
	ja        .L0805F538
.L0805F3DE:
	movl      %eax, %esi
	subl      52(%esp), %esi
	movzbl    (%ebx), %ecx
	movl      4(%ebx), %ebx
	movl      %esi, %edx
	movl      %esi, 4(%esp)
	sarl      $3, %edx
	cmpl      %edx, %ebp
	jae       .L0805F4B0
.L0805F3FB:
	leal      0(,%ebp,8), %esi
	movl      %esi, %edx
	movl      %esi, 4(%esp)
	movl      %eax, %esi
	subl      %edx, %esi
	cmpl      %esi, %eax
	je        .L0805F691
.L0805F414:
	movl      %esi, %ebp
	movl      %eax, %edx
	movb      %cl, 8(%esp)
	movl      %ebx, 12(%esp)
.L0805F420:
	testl     %edx, %edx
	je        .L0805F42F
.L0805F424:
	movl      (%ebp), %ecx
	movl      4(%ebp), %ebx
	movl      %ecx, (%edx)
	movl      %ebx, 4(%edx)
.L0805F42F:
	addl      $8, %ebp
	addl      $8, %edx
	cmpl      %ebp, %eax
	jne       .L0805F420
.L0805F439:
	movzbl    8(%esp), %ecx
	movl      12(%esp), %ebx
	movl      4(%edi), %edx
.L0805F445:
	movl      %esi, %ebp
	subl      52(%esp), %ebp
	addl      4(%esp), %edx
	sarl      $3, %ebp
	movl      %edx, 4(%edi)
	xorl      %edx, %edx
	movl      %ebp, %edi
	negl      %edi
	testl     %ebp, %ebp
	jle       .L0805F485
.L0805F45F:
	movl      %ecx, %ebp
	movl      %ebx, 8(%esp)
	.p2align 4,,10
	.p2align 3
.L0805F468:
	movl      -8(%esi,%edx,8), %ecx
	movl      -4(%esi,%edx,8), %ebx
	movl      %ecx, -8(%eax,%edx,8)
	movl      %ebx, -4(%eax,%edx,8)
	subl      $1, %edx
	cmpl      %edi, %edx
	jne       .L0805F468
.L0805F47F:
	movl      8(%esp), %ebx
	movl      %ebp, %ecx
.L0805F485:
	movl      4(%esp), %ebp
	addl      52(%esp), %ebp
	movl      52(%esp), %eax
	cmpl      %ebp, %eax
	je        .L0805F4A4
.L0805F495:
	.p2align 4,,10
	.p2align 3
.L0805F498:
	movb      %cl, (%eax)
	movl      %ebx, 4(%eax)
	addl      $8, %eax
	cmpl      %eax, %ebp
	jne       .L0805F498
.L0805F4A4:
	addl      $28, %esp
	popl      %ebx
	popl      %esi
	popl      %edi
	popl      %ebp
	ret       
.L0805F4AC:
	.p2align 4,,10
	.p2align 3
.L0805F4B0:
	subl      %edx, %ebp
	je        .L0805F68A
.L0805F4B8:
	movl      %ebp, %esi
	movl      %eax, %edx
	.p2align 4,,10
	.p2align 3
.L0805F4C0:
	testl     %edx, %edx
	je        .L0805F4C9
.L0805F4C4:
	movb      %cl, (%edx)
	movl      %ebx, 4(%edx)
.L0805F4C9:
	addl      $8, %edx
	subl      $1, %esi
	jne       .L0805F4C0
.L0805F4D1:
	movl      4(%edi), %edx
.L0805F4D4:
	cmpl      52(%esp), %eax
	leal      (%edx,%ebp,8), %edx
	movl      %edx, 4(%edi)
	je        .L0805F698
.L0805F4E4:
	movl      52(%esp), %esi
	movl      %edi, 48(%esp)
	.p2align 4,,10
	.p2align 3
.L0805F4F0:
	testl     %edx, %edx
	je        .L0805F4FE
.L0805F4F4:
	movl      (%esi), %edi
	movl      4(%esi), %ebp
	movl      %edi, (%edx)
	movl      %ebp, 4(%edx)
.L0805F4FE:
	addl      $8, %esi
	addl      $8, %edx
	cmpl      %esi, %eax
	jne       .L0805F4F0
.L0805F508:
	movl      48(%esp), %edi
	movl      4(%esp), %esi
	movl      52(%esp), %edx
	addl      %esi, 4(%edi)
	.p2align 4
.L0805F520:
	movb      %cl, (%edx)
	movl      %ebx, 4(%edx)
	addl      $8, %edx
	cmpl      %edx, %eax
	jne       .L0805F520
.L0805F52C:
	addl      $28, %esp
	popl      %ebx
	popl      %esi
	popl      %edi
	popl      %ebp
	ret       
.L0805F534:
	.p2align 4,,10
	.p2align 3
.L0805F538:
	movl      (%edi), %edx
	movl      $536870911, %ecx
	subl      %edx, %eax
	sarl      $3, %eax
	subl      %eax, %ecx
	cmpl      %ecx, %ebp
	ja        .L0805F6AB
.L0805F54E:
	cmpl      %ebp, %eax
	movl      %eax, %ecx
	jae       .L0805F556
.L0805F554:
	movl      %ebp, %ecx
.L0805F556:
	addl      %ecx, %eax
	jb        .L0805F580
.L0805F55A:
	cmpl      $536870911, %eax
	ja        .L0805F580
.L0805F561:
	movl      52(%esp), %esi
	subl      %edx, %esi
	testl     %eax, %eax
	jne       .L0805F6B8
.L0805F56F:
	movl      $0, 4(%esp)
	jmp       .L0805F59D
.L0805F579:
	.p2align 4
.L0805F580:
	movl      52(%esp), %esi
	movl      $-8, 4(%esp)
	subl      %edx, %esi
.L0805F58E:
	subl      $12, %esp
	pushl     16(%esp)
	call      _Znwj
.L0805F59A:
	addl      $16, %esp
.L0805F59D:
	leal      (%eax,%esi), %edx
	movl      %ebp, %ecx
	movl      %edi, 48(%esp)
	.p2align 4
.L0805F5B0:
	testl     %edx, %edx
	je        .L0805F5BE
.L0805F5B4:
	movl      (%ebx), %esi
	movl      4(%ebx), %edi
	movl      %esi, (%edx)
	movl      %edi, 4(%edx)
.L0805F5BE:
	addl      $8, %edx
	subl      $1, %ecx
	jne       .L0805F5B0
.L0805F5C6:
	movl      48(%esp), %edi
	movl      (%edi), %ebx
	cmpl      %ebx, 52(%esp)
	je        .L0805F6A4
.L0805F5D6:
	movl      52(%esp), %esi
	movl      %ebx, %ecx
	movl      %eax, %edx
	movl      %ebp, 56(%esp)
	.p2align 4,,10
	.p2align 3
.L0805F5E8:
	testl     %edx, %edx
	je        .L0805F5F6
.L0805F5EC:
	movl      (%ecx), %edi
	movl      4(%ecx), %ebp
	movl      %edi, (%edx)
	movl      %ebp, 4(%edx)
.L0805F5F6:
	addl      $8, %ecx
	addl      $8, %edx
	cmpl      %ecx, %esi
	jne       .L0805F5E8
.L0805F600:
	movl      52(%esp), %edx
	addl      $8, %ebx
	movl      48(%esp), %edi
	movl      56(%esp), %ebp
	subl      %ebx, %edx
	andl      $-8, %edx
	leal      8(%edx,%eax), %edx
.L0805F618:
	movl      4(%edi), %ebx
	cmpl      %ebx, 52(%esp)
	leal      (%edx,%ebp,8), %esi
	je        .L0805F65C
.L0805F624:
	movl      52(%esp), %ecx
	movl      %esi, %edx
	movl      %edi, 48(%esp)
	.p2align 4,,10
	.p2align 3
.L0805F630:
	testl     %edx, %edx
	je        .L0805F63E
.L0805F634:
	movl      (%ecx), %edi
	movl      4(%ecx), %ebp
	movl      %edi, (%edx)
	movl      %ebp, 4(%edx)
.L0805F63E:
	addl      $8, %ecx
	addl      $8, %edx
	cmpl      %ecx, %ebx
	jne       .L0805F630
.L0805F648:
	movl      52(%esp), %ecx
	movl      48(%esp), %edi
	leal      8(%ecx), %edx
	subl      %edx, %ebx
	andl      $-8, %ebx
	leal      8(%ebx,%esi), %esi
.L0805F65C:
	movl      (%edi), %edx
	testl     %edx, %edx
	je        .L0805F676
.L0805F662:
	movl      %eax, 8(%esp)
	subl      $12, %esp
	pushl     %edx
	call      _ZdlPv
.L0805F66F:
	addl      $16, %esp
	movl      8(%esp), %eax
.L0805F676:
	movl      %eax, (%edi)
	addl      4(%esp), %eax
	movl      %esi, 4(%edi)
	movl      %eax, 8(%edi)
	addl      $28, %esp
	popl      %ebx
	popl      %esi
	popl      %edi
	popl      %ebp
	ret       
.L0805F68A:
	movl      %eax, %edx
	jmp       .L0805F4D4
.L0805F691:
	movl      %eax, %edx
	jmp       .L0805F445
.L0805F698:
	addl      4(%esp), %edx
	movl      %edx, 4(%edi)
	jmp       .L0805F4A4
.L0805F6A4:
	movl      %eax, %edx
	jmp       .L0805F618
.L0805F6AB:
	subl      $12, %esp
	pushl     $.LC08063E9F
	call      _ZSt20__throw_length_errorPKc
.L0805F6B8:
	sall      $3, %eax
	movl      %eax, 4(%esp)
	jmp       .L0805F58E
	.size	_ZNSt6vectorI6ChoiceSaIS0_EE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPS0_S2_EEjRKS0_, .-_ZNSt6vectorI6ChoiceSaIS0_EE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPS0_S2_EEjRKS0_
# ----------------------
.L0805F6C4:
	.p2align 4
# ----------------------
	.weak	_ZN7acommon9HashTableI9SML_ParmsE12create_tableEj
	.type	_ZN7acommon9HashTableI9SML_ParmsE12create_tableEj, @function
_ZN7acommon9HashTableI9SML_ParmsE12create_tableEj:
	pushl     %esi
	pushl     %ebx
	subl      $12, %esp
	movl      28(%esp), %eax
	movl      24(%esp), %ebx
	movl      _ZN7acommonL6primesE(,%eax,4), %esi
	movl      %eax, 16(%ebx)
	leal      1(%esi), %eax
	movl      %esi, 12(%ebx)
	pushl     $4
	pushl     %eax
	call      calloc
.L0805F6F5:
	movl      %eax, 4(%ebx)
	leal      (%eax,%esi,4), %eax
	movl      %eax, 8(%ebx)
	movl      %eax, (%eax)
	addl      $20, %esp
	popl      %ebx
	popl      %esi
	ret       
	.size	_ZN7acommon9HashTableI9SML_ParmsE12create_tableEj, .-_ZN7acommon9HashTableI9SML_ParmsE12create_tableEj
# ----------------------
.L0805F706:
	.p2align 4
# ----------------------
	.weak	_ZN7acommon10BlockSListI13SML_WordEntryE9add_blockEj
	.type	_ZN7acommon10BlockSListI13SML_WordEntryE9add_blockEj, @function
_ZN7acommon10BlockSListI13SML_WordEntryE9add_blockEj:
	pushl     %ebp
	pushl     %edi
	pushl     %esi
	pushl     %ebx
	subl      $24, %esp
	movl      48(%esp), %ebp
	movl      44(%esp), %ebx
	sall      $4, %ebp
	leal      4(%ebp), %eax
	pushl     %eax
	call      malloc
.L0805F72B:
	leal      4(%eax), %esi
	movl      (%ebx), %edx
	leal      20(%eax), %edi
	addl      $16, %esp
	movl      %eax, (%ebx)
	addl      %esi, %ebp
	cmpl      %ebp, %edi
	movl      %edx, (%eax)
	je        .L0805F76F
.L0805F740:
	movl      %esi, %ecx
	movl      %edi, %edx
	.p2align 4,,10
	.p2align 3
.L0805F748:
	movl      %edx, (%ecx)
	addl      $16, %edx
	addl      $16, %ecx
	cmpl      %ebp, %edx
	jne       .L0805F748
.L0805F754:
	addl      $36, %eax
	subl      %eax, %edx
	andl      $-16, %edx
	addl      %edi, %edx
.L0805F75E:
	movl      $0, (%edx)
	movl      %esi, 4(%ebx)
	addl      $12, %esp
	popl      %ebx
	popl      %esi
	popl      %edi
	popl      %ebp
	ret       
.L0805F76F:
	movl      %esi, %edx
	jmp       .L0805F75E
	.size	_ZN7acommon10BlockSListI13SML_WordEntryE9add_blockEj, .-_ZN7acommon10BlockSListI13SML_WordEntryE9add_blockEj
# ----------------------
.L0805F773:
	.p2align 4
# ----------------------
	.weak	_ZN7acommon9HashTableI9SML_ParmsE6insertERK13SML_WordEntry
	.type	_ZN7acommon9HashTableI9SML_ParmsE6insertERK13SML_WordEntry, @function
_ZN7acommon9HashTableI9SML_ParmsE6insertERK13SML_WordEntry:
	pushl     %ebp
	pushl     %edi
	pushl     %esi
	pushl     %ebx
	subl      $68, %esp
	movl      96(%esp), %edi
	leal      55(%esp), %eax
	movl      92(%esp), %esi
	pushl     %eax
	pushl     (%edi)
	leal      12(%esi), %ecx
	leal      4(%esi), %edx
	leal      40(%esp), %eax
	call      _ZN7acommon9HashTableI9SML_ParmsE6find_iERKPKcRb.isra.73
.L0805F7A5:
	movl      40(%esp), %ecx
	movl      44(%esp), %edx
	addl      $16, %esp
	cmpb      $0, 47(%esp)
	jne       .L0805F800
.L0805F7B7:
	movl      24(%esi), %eax
	testl     %eax, %eax
	je        .L0805F81B
.L0805F7BE:
	movl      (%eax), %ebx
	movl      %ebx, 24(%esi)
	movl      (%edi), %ebx
	movl      %ebx, 4(%eax)
	movl      4(%edi), %ebx
	movl      %ebx, 8(%eax)
	movl      8(%edi), %ebx
	movl      %ebx, 12(%eax)
	movl      (%edx), %ebx
	movl      %ebx, (%eax)
	movl      %eax, (%edx)
	movl      80(%esp), %eax
	addl      $1, (%esi)
	movl      %ecx, (%eax)
	movl      %edx, 4(%eax)
	movb      $1, 8(%eax)
.L0805F7EA:
	movl      80(%esp), %eax
	addl      $60, %esp
	popl      %ebx
	popl      %esi
	popl      %edi
	popl      %ebp
	ret       $4
.L0805F7F8:
	.p2align 4
.L0805F800:
	movl      80(%esp), %eax
	movl      %ecx, (%eax)
	movl      %edx, 4(%eax)
	movb      $0, 8(%eax)
	movl      80(%esp), %eax
	addl      $60, %esp
	popl      %ebx
	popl      %esi
	popl      %edi
	popl      %ebp
	ret       $4
.L0805F81B:
	movl      4(%esi), %eax
	subl      $8, %esp
	movl      %eax, 24(%esp)
	movl      %eax, %ebx
	movl      8(%esi), %eax
	movl      %eax, 20(%esp)
	movl      %eax, %ebp
	movl      12(%esi), %eax
	movl      %eax, 28(%esp)
	movl      16(%esi), %eax
	addl      $1, %eax
	pushl     %eax
	pushl     %esi
	call      _ZN7acommon9HashTableI9SML_ParmsE12create_tableEj
.L0805F844:
	addl      $16, %esp
	cmpl      %ebp, %ebx
	movl      %ebx, 8(%esp)
	je        .L0805F8D8
.L0805F853:
	movl      %edi, 88(%esp)
.L0805F857:
	movl      8(%esp), %eax
	movl      (%eax), %ebx
	testl     %ebx, %ebx
	je        .L0805F8C5
.L0805F861:
	movl      4(%ebx), %ebp
	movl      12(%esi), %edi
	movl      4(%esi), %ecx
	movsbl    (%ebp), %edx
	testb     %dl, %dl
	je        .L0805F8B5
.L0805F872:
	.p2align 4,,10
	.p2align 3
.L0805F878:
	xorl      %eax, %eax
	.p2align 4,,10
	.p2align 3
.L0805F880:
	leal      (%eax,%eax,4), %eax
	addl      $1, %ebp
	addl      %edx, %eax
	movsbl    (%ebp), %edx
	testb     %dl, %dl
	jne       .L0805F880
.L0805F890:
	xorl      %edx, %edx
	divl      %edi
	movl      (%ebx), %eax
	sall      $2, %edx
	addl      %edx, %ecx
	testl     %eax, %eax
	movl      (%ecx), %edx
	movl      %edx, (%ebx)
	movl      %ebx, (%ecx)
	je        .L0805F8C5
.L0805F8A5:
	movl      %eax, %ebx
	movl      4(%esi), %ecx
	movl      4(%ebx), %ebp
	movsbl    (%ebp), %edx
	testb     %dl, %dl
	jne       .L0805F878
.L0805F8B5:
	xorl      %edx, %edx
	movl      (%ebx), %eax
	addl      %edx, %ecx
	movl      (%ecx), %edx
	testl     %eax, %eax
	movl      %edx, (%ebx)
	movl      %ebx, (%ecx)
	jne       .L0805F8A5
.L0805F8C5:
	addl      $4, 8(%esp)
	movl      8(%esp), %eax
	cmpl      %eax, 12(%esp)
	jne       .L0805F857
.L0805F8D4:
	movl      88(%esp), %edi
.L0805F8D8:
	subl      $12, %esp
	pushl     28(%esp)
	call      free
.L0805F8E4:
	popl      %eax
	popl      %edx
	movl      12(%esi), %eax
	subl      28(%esp), %eax
	pushl     %eax
	leal      20(%esi), %eax
	pushl     %eax
	call      _ZN7acommon10BlockSListI13SML_WordEntryE9add_blockEj
.L0805F8F7:
	addl      $12, %esp
	pushl     %edi
	pushl     %esi
	pushl     92(%esp)
	call      _ZN7acommon9HashTableI9SML_ParmsE6insertERK13SML_WordEntry
.L0805F905:
	addl      $12, %esp
	jmp       .L0805F7EA
	.size	_ZN7acommon9HashTableI9SML_ParmsE6insertERK13SML_WordEntry, .-_ZN7acommon9HashTableI9SML_ParmsE6insertERK13SML_WordEntry
# ----------------------
.L0805F90D:
	.p2align 4,,10
	.p2align 3
# ----------------------
	.weak	_ZN7acommon9HashTableI9CML_ParmsE12create_tableEj
	.type	_ZN7acommon9HashTableI9CML_ParmsE12create_tableEj, @function
_ZN7acommon9HashTableI9CML_ParmsE12create_tableEj:
	pushl     %esi
	pushl     %ebx
	subl      $12, %esp
	movl      28(%esp), %eax
	movl      24(%esp), %ebx
	movl      _ZN7acommonL6primesE(,%eax,4), %esi
	movl      %eax, 16(%ebx)
	leal      1(%esi), %eax
	movl      %esi, 12(%ebx)
	pushl     $4
	pushl     %eax
	call      calloc
.L0805F935:
	movl      %eax, 4(%ebx)
	leal      (%eax,%esi,4), %eax
	movl      %eax, 8(%ebx)
	movl      %eax, (%eax)
	addl      $20, %esp
	popl      %ebx
	popl      %esi
	ret       
	.size	_ZN7acommon9HashTableI9CML_ParmsE12create_tableEj, .-_ZN7acommon9HashTableI9CML_ParmsE12create_tableEj
# ----------------------
.L0805F946:
	.p2align 4
# ----------------------
	.weak	_ZN7acommon10BlockSListI9CML_EntryE9add_blockEj
	.type	_ZN7acommon10BlockSListI9CML_EntryE9add_blockEj, @function
_ZN7acommon10BlockSListI9CML_EntryE9add_blockEj:
	pushl     %ebp
	pushl     %edi
	pushl     %esi
	pushl     %ebx
	subl      $24, %esp
	movl      48(%esp), %eax
	movl      44(%esp), %ebx
	leal      (%eax,%eax,2), %ebp
	sall      $3, %ebp
	leal      4(%ebp), %eax
	pushl     %eax
	call      malloc
.L0805F96E:
	leal      4(%eax), %ecx
	movl      (%ebx), %edx
	leal      28(%eax), %esi
	addl      $16, %esp
	movl      %eax, (%ebx)
	addl      %ecx, %ebp
	cmpl      %ebp, %esi
	movl      %edx, (%eax)
	je        .L0805F9C1
.L0805F983:
	movl      %ecx, %edi
	movl      %esi, %edx
	.p2align 4
.L0805F990:
	movl      %edx, (%edi)
	addl      $24, %edx
	addl      $24, %edi
	cmpl      %ebp, %edx
	jne       .L0805F990
.L0805F99C:
	addl      $52, %eax
	subl      %eax, %edx
	shrl      $3, %edx
	imull     $178956971, %edx, %edx
	leal      (%edx,%edx,2), %eax
	leal      (%esi,%eax,8), %eax
.L0805F9B0:
	movl      $0, (%eax)
	movl      %ecx, 4(%ebx)
	addl      $12, %esp
	popl      %ebx
	popl      %esi
	popl      %edi
	popl      %ebp
	ret       
.L0805F9C1:
	movl      %ecx, %eax
	jmp       .L0805F9B0
	.size	_ZN7acommon10BlockSListI9CML_EntryE9add_blockEj, .-_ZN7acommon10BlockSListI9CML_EntryE9add_blockEj
# ----------------------
.L0805F9C5:
	.p2align 4
# ----------------------
	.weak	_ZN7acommon9HashTableI9CML_ParmsE6insertERK9CML_Entry
	.type	_ZN7acommon9HashTableI9CML_ParmsE6insertERK9CML_Entry, @function
_ZN7acommon9HashTableI9CML_ParmsE6insertERK9CML_Entry:
	pushl     %ebp
	pushl     %edi
	pushl     %esi
	pushl     %ebx
	subl      $68, %esp
	movl      96(%esp), %edi
	leal      55(%esp), %eax
	movl      92(%esp), %esi
	pushl     %eax
	pushl     (%edi)
	leal      12(%esi), %ecx
	leal      4(%esi), %edx
	leal      40(%esp), %eax
	call      _ZN7acommon9HashTableI9CML_ParmsE6find_iERKPKcRb.isra.80
.L0805F9F5:
	movl      24(%esi), %eax
	movl      40(%esp), %ecx
	movl      44(%esp), %edx
	addl      $16, %esp
	testl     %eax, %eax
	je        .L0805FA4D
.L0805FA07:
	movl      (%eax), %ebx
	movl      %ebx, 24(%esi)
	movl      (%edi), %ebx
	movl      %ebx, 4(%eax)
	movl      4(%edi), %ebx
	movl      %ebx, 8(%eax)
	movl      8(%edi), %ebx
	movl      %ebx, 12(%eax)
	movl      12(%edi), %ebx
	movl      %ebx, 16(%eax)
	movl      16(%edi), %ebx
	movl      %ebx, 20(%eax)
	movl      (%edx), %ebx
	movl      %ebx, (%eax)
	movl      %eax, (%edx)
	movl      80(%esp), %eax
	addl      $1, (%esi)
	movl      %ecx, (%eax)
	movl      %edx, 4(%eax)
	movb      $1, 8(%eax)
.L0805FA3F:
	movl      80(%esp), %eax
	addl      $60, %esp
	popl      %ebx
	popl      %esi
	popl      %edi
	popl      %ebp
	ret       $4
.L0805FA4D:
	movl      4(%esi), %eax
	subl      $8, %esp
	movl      %eax, 24(%esp)
	movl      %eax, %ebx
	movl      8(%esi), %eax
	movl      %eax, 20(%esp)
	movl      %eax, %ebp
	movl      12(%esi), %eax
	movl      %eax, 28(%esp)
	movl      16(%esi), %eax
	addl      $1, %eax
	pushl     %eax
	pushl     %esi
	call      _ZN7acommon9HashTableI9CML_ParmsE12create_tableEj
.L0805FA76:
	addl      $16, %esp
	cmpl      %ebp, %ebx
	movl      %ebx, 8(%esp)
	je        .L0805FB00
.L0805FA81:
	movl      %edi, 88(%esp)
.L0805FA85:
	movl      8(%esp), %eax
	movl      (%eax), %ebx
	testl     %ebx, %ebx
	je        .L0805FAED
.L0805FA8F:
	movl      4(%ebx), %ebp
	movl      12(%esi), %edi
	movl      4(%esi), %ecx
	movsbl    (%ebp), %edx
	testb     %dl, %dl
	je        .L0805FADD
.L0805FAA0:
	xorl      %eax, %eax
	.p2align 4,,10
	.p2align 3
.L0805FAA8:
	leal      (%eax,%eax,4), %eax
	addl      $1, %ebp
	addl      %edx, %eax
	movsbl    (%ebp), %edx
	testb     %dl, %dl
	jne       .L0805FAA8
.L0805FAB8:
	xorl      %edx, %edx
	divl      %edi
	movl      (%ebx), %eax
	sall      $2, %edx
	addl      %edx, %ecx
	testl     %eax, %eax
	movl      (%ecx), %edx
	movl      %edx, (%ebx)
	movl      %ebx, (%ecx)
	je        .L0805FAED
.L0805FACD:
	movl      %eax, %ebx
	movl      4(%esi), %ecx
	movl      4(%ebx), %ebp
	movsbl    (%ebp), %edx
	testb     %dl, %dl
	jne       .L0805FAA0
.L0805FADD:
	xorl      %edx, %edx
	movl      (%ebx), %eax
	addl      %edx, %ecx
	movl      (%ecx), %edx
	testl     %eax, %eax
	movl      %edx, (%ebx)
	movl      %ebx, (%ecx)
	jne       .L0805FACD
.L0805FAED:
	addl      $4, 8(%esp)
	movl      8(%esp), %eax
	cmpl      %eax, 12(%esp)
	jne       .L0805FA85
.L0805FAFC:
	movl      88(%esp), %edi
.L0805FB00:
	subl      $12, %esp
	pushl     28(%esp)
	call      free
.L0805FB0C:
	popl      %eax
	popl      %edx
	movl      12(%esi), %eax
	subl      28(%esp), %eax
	pushl     %eax
	leal      20(%esi), %eax
	pushl     %eax
	call      _ZN7acommon10BlockSListI9CML_EntryE9add_blockEj
.L0805FB1F:
	addl      $12, %esp
	pushl     %edi
	pushl     %esi
	pushl     92(%esp)
	call      _ZN7acommon9HashTableI9CML_ParmsE6insertERK9CML_Entry
.L0805FB2D:
	addl      $12, %esp
	jmp       .L0805FA3F
	.size	_ZN7acommon9HashTableI9CML_ParmsE6insertERK9CML_Entry, .-_ZN7acommon9HashTableI9CML_ParmsE6insertERK9CML_Entry
# ----------------------
.L0805FB35:
	.p2align 4
# ----------------------
	.weak	_ZNSt6vectorIbSaIbEE14_M_fill_insertESt13_Bit_iteratorjb
	.type	_ZNSt6vectorIbSaIbEE14_M_fill_insertESt13_Bit_iteratorjb, @function
_ZNSt6vectorIbSaIbEE14_M_fill_insertESt13_Bit_iteratorjb:
	pushl     %ebp
	pushl     %edi
	pushl     %esi
	pushl     %ebx
	subl      $60, %esp
	movl      84(%esp), %eax
	movl      92(%esp), %edx
	movl      %eax, %edi
	movl      %eax, 16(%esp)
	movl      88(%esp), %eax
	testl     %edx, %edx
	movl      %edi, 12(%esp)
	movl      %eax, %ebp
	movl      %eax, 20(%esp)
	movl      96(%esp), %eax
	movb      %al, 44(%esp)
	je        .L0805FD76
.L0805FB73:
	movl      80(%esp), %eax
	movl      80(%esp), %edi
	movl      (%eax), %ecx
	movl      4(%eax), %edx
	movl      8(%edi), %edi
	movl      12(%eax), %eax
	movl      %edi, %esi
	movl      %eax, %ebx
	subl      %ecx, %esi
	subl      %edx, %ebx
	leal      (%ebx,%esi,8), %ebx
	movl      80(%esp), %esi
	movl      16(%esi), %esi
	movl      %esi, 24(%esp)
	subl      %ecx, %esi
	movl      %esi, %ecx
	sall      $3, %ecx
	subl      %edx, %ecx
	subl      %ebx, %ecx
	cmpl      %ecx, 92(%esp)
	ja        .L0805FD80
.L0805FBB1:
	movl      92(%esp), %edx
	addl      %eax, %edx
	movl      %edx, %ecx
	sarl      $31, %ecx
	shrl      $27, %ecx
	addl      %ecx, %edx
	movl      %edx, %ebx
	andl      $31, %edx
	sarl      $5, %ebx
	subl      %ecx, %edx
	leal      (%edi,%ebx,4), %esi
	testl     %edx, %edx
	movl      %edx, 32(%esp)
	movl      %edx, 24(%esp)
	movl      %esi, 28(%esp)
	js        .L0805FFF0
.L0805FBE2:
	movl      %eax, %ecx
	movl      %edi, %ebx
	subl      20(%esp), %ecx
	subl      16(%esp), %ebx
	leal      (%ecx,%ebx,8), %ebx
	testl     %ebx, %ebx
	jle       .L0805FC60
.L0805FBF5:
	movl      %ebx, 12(%esp)
	movl      %ebp, 36(%esp)
	jmp       .L0805FC2D
.L0805FBFF:
	.p2align 4,,10
	.p2align 3
.L0805FC00:
	subl      $1, %eax
	movl      $1, %ebp
	movl      %eax, %ecx
	sall      %cl, %ebp
	testl     %edx, %edx
	je        .L0805FC42
.L0805FC10:
	subl      $1, %edx
	movl      $1, %ebx
	movl      %edx, %ecx
	sall      %cl, %ebx
	testl     %ebp, (%edi)
	movl      %ebx, %ecx
	jne       .L0805FC53
.L0805FC22:
	notl      %ecx
	andl      %ecx, (%esi)
	subl      $1, 12(%esp)
	je        .L0805FC5C
.L0805FC2D:
	testl     %eax, %eax
	jne       .L0805FC00
.L0805FC31:
	subl      $4, %edi
	testl     %edx, %edx
	movl      $2147483648, %ebp
	movl      $31, %eax
	jne       .L0805FC10
.L0805FC42:
	subl      $4, %esi
	testl     %ebp, (%edi)
	movl      $2147483648, %ecx
	movl      $31, %edx
	je        .L0805FC22
.L0805FC53:
	orl       %ecx, (%esi)
	subl      $1, 12(%esp)
	jne       .L0805FC2D
.L0805FC5C:
	movl      36(%esp), %ebp
.L0805FC60:
	movl      20(%esp), %edx
	addl      92(%esp), %edx
	movl      16(%esp), %edi
	movl      %edx, %eax
	sarl      $31, %eax
	shrl      $27, %eax
	leal      (%eax,%edx), %ecx
	movl      %ecx, %edx
	sarl      $5, %edx
	leal      (%edi,%edx,4), %ebx
	movl      %ecx, %edx
	andl      $31, %edx
	subl      %eax, %edx
	movl      %edx, 12(%esp)
	js        .L08060000
.L0805FC90:
	movl      16(%esp), %eax
	cmpl      %eax, %ebx
	je        .L08060020
.L0805FC9C:
	movzbl    44(%esp), %ecx
	leal      4(%eax), %esi
	movl      %esi, %eax
	movl      %ecx, %edx
	negl      %ecx
	cmpl      %esi, %ebx
	je        .L0805FCB9
.L0805FCAE:
	.p2align 4,,10
	.p2align 3
.L0805FCB0:
	movl      %ecx, (%eax)
	addl      $4, %eax
	cmpl      %eax, %ebx
	jne       .L0805FCB0
.L0805FCB9:
	movl      16(%esp), %eax
	movl      $1, %edi
	movl      %ebx, 16(%esp)
	jmp       .L0805FCDE
.L0805FCC8:
	.p2align 4
.L0805FCD0:
	notl      %ecx
	andl      %ecx, (%eax)
	cmpl      $31, %ebp
	leal      1(%ebp), %ecx
	je        .L0805FCF8
.L0805FCDC:
	movl      %ecx, %ebp
.L0805FCDE:
	cmpl      %eax, %esi
	je        .L0805FD08
.L0805FCE2:
	movl      %ebp, %ecx
	movl      %edi, %ebx
	sall      %cl, %ebx
	testb     %dl, %dl
	movl      %ebx, %ecx
	je        .L0805FCD0
.L0805FCEE:
	orl       %ecx, (%eax)
	cmpl      $31, %ebp
	leal      1(%ebp), %ecx
	jne       .L0805FCDC
.L0805FCF8:
	addl      $4, %eax
	xorw      %bp, %bp
	cmpl      %eax, %esi
	jne       .L0805FCE2
.L0805FD02:
	.p2align 4,,10
	.p2align 3
.L0805FD08:
	testl     %ebp, %ebp
	jne       .L0805FCE2
.L0805FD0C:
	movl      16(%esp), %ebx
	movl      12(%esp), %edi
	movl      $1, %esi
	movl      %ebx, %eax
.L0805FD1B:
	xorl      %ecx, %ecx
	jmp       .L0805FD2C
.L0805FD1F:
	.p2align 4,,10
	.p2align 3
.L0805FD20:
	addl      $1, %ecx
	notl      %ebp
	andl      %ebp, (%eax)
	cmpl      $32, %ecx
	je        .L0805FD42
.L0805FD2C:
	cmpl      %eax, %ebx
	je        .L0805FD50
.L0805FD30:
	movl      %esi, %ebp
	sall      %cl, %ebp
	testb     %dl, %dl
	je        .L0805FD20
.L0805FD38:
	addl      $1, %ecx
	orl       %ebp, (%eax)
	cmpl      $32, %ecx
	jne       .L0805FD2C
.L0805FD42:
	addl      $4, %eax
	jmp       .L0805FD1B
.L0805FD47:
	.p2align 4
.L0805FD50:
	cmpl      %ecx, %edi
	jne       .L0805FD30
.L0805FD54:
	movl      32(%esp), %eax
	testl     %eax, %eax
	js        .L0805FFBE
.L0805FD60:
	movl      80(%esp), %eax
	movl      28(%esp), %edi
	movl      %edi, 8(%eax)
.L0805FD6B:
	movl      80(%esp), %eax
	movl      24(%esp), %edi
	movl      %edi, 12(%eax)
.L0805FD76:
	addl      $60, %esp
	popl      %ebx
	popl      %esi
	popl      %edi
	popl      %ebp
	ret       
.L0805FD7E:
	.p2align 4,,10
	.p2align 3
.L0805FD80:
	movl      $2147483616, %eax
	subl      %ebx, %eax
	cmpl      %eax, 92(%esp)
	ja        .L0806007A
.L0805FD91:
	cmpl      92(%esp), %ebx
	movl      %ebx, %eax
	jae       .L0805FD9D
.L0805FD99:
	movl      92(%esp), %eax
.L0805FD9D:
	addl      %eax, %ebx
	jb        .L0805FFE0
.L0805FDA5:
	cmpl      $2147483616, %ebx
	ja        .L0805FFE0
.L0805FDB1:
	addl      $31, %ebx
	shrl      $5, %ebx
	leal      0(,%ebx,4), %eax
	movl      %eax, 36(%esp)
.L0805FDC2:
	subl      $12, %esp
	pushl     48(%esp)
	call      _Znwj
.L0805FDCE:
	movl      %eax, 48(%esp)
	movl      96(%esp), %eax
	movl      32(%esp), %ebx
	addl      $16, %esp
	movl      (%eax), %eax
	subl      %eax, %ebx
	movl      %ebx, %edx
	sarl      $2, %edx
	testl     %edx, %edx
	je        .L0805FDFB
.L0805FDEA:
	subl      $4, %esp
	pushl     %ebx
	pushl     %eax
	pushl     44(%esp)
	call      memmove
.L0805FDF8:
	addl      $16, %esp
.L0805FDFB:
	addl      32(%esp), %ebx
	movl      20(%esp), %eax
	testl     %eax, %eax
	movl      %eax, %esi
	movl      %ebx, 24(%esp)
	jle       .L08060073
.L0805FE11:
	movl      16(%esp), %eax
	movl      %ebp, 40(%esp)
	xorl      %edx, %edx
	movl      $1, %edi
	movl      %esi, 28(%esp)
	movl      %ebx, %ebp
	movl      %eax, 24(%esp)
	xorl      %eax, %eax
	jmp       .L0805FE50
.L0805FE2E:
	.p2align 4,,10
	.p2align 3
.L0805FE30:
	notl      %ebx
	andl      %ebx, (%ebp)
	cmpl      $31, %edx
	leal      1(%edx), %ecx
	je        .L0805FE71
.L0805FE3D:
	cmpl      $31, %eax
	movl      %ecx, %edx
	leal      1(%eax), %ecx
	je        .L0805FE80
.L0805FE47:
	subl      $1, 28(%esp)
	movl      %ecx, %eax
	je        .L0805FE90
.L0805FE50:
	movl      %eax, %ecx
	movl      %edi, %ebx
	movl      %edi, %esi
	sall      %cl, %ebx
	movl      %edx, %ecx
	sall      %cl, %esi
	movl      %esi, %ecx
	movl      24(%esp), %esi
	testl     %ecx, (%esi)
	je        .L0805FE30
.L0805FE66:
	orl       %ebx, (%ebp)
	cmpl      $31, %edx
	leal      1(%edx), %ecx
	jne       .L0805FE3D
.L0805FE71:
	addl      $4, 24(%esp)
	xorb      %dl, %dl
	cmpl      $31, %eax
	leal      1(%eax), %ecx
	jne       .L0805FE47
.L0805FE80:
	addl      $4, %ebp
	xorb      %al, %al
	subl      $1, 28(%esp)
	jne       .L0805FE50
.L0805FE8C:
	.p2align 4,,10
	.p2align 3
.L0805FE90:
	movl      %ebp, 24(%esp)
	movl      40(%esp), %ebp
.L0805FE98:
	movl      92(%esp), %edx
	movl      24(%esp), %edi
	addl      %eax, %edx
	movl      %edx, %ecx
	sarl      $31, %ecx
	shrl      $27, %ecx
	addl      %ecx, %edx
	movl      %edx, %ebx
	andl      $31, %edx
	sarl      $5, %ebx
	subl      %ecx, %edx
	leal      (%edi,%ebx,4), %ebx
	movl      %edx, 28(%esp)
	js        .L0806000D
.L0805FEC3:
	movl      28(%esp), %edi
	movl      %ebx, %esi
.L0805FEC9:
	movl      24(%esp), %edx
	subl      $12, %esp
	movl      %eax, %ecx
	leal      56(%esp), %eax
	pushl     %eax
	pushl     %edi
	pushl     %esi
	pushl     %ecx
	pushl     %edx
	call      _ZSt4fillSt13_Bit_iteratorS_RKb
.L0805FEE0:
	addl      $32, %esp
	movl      80(%esp), %edi
	movl      28(%esp), %eax
	movl      12(%edi), %edi
	movl      %edi, %edx
	movl      %edi, 24(%esp)
	movl      80(%esp), %edi
	subl      20(%esp), %edx
	movl      8(%edi), %edi
	movl      %edi, %ecx
	subl      16(%esp), %ecx
	movl      %edi, 20(%esp)
	leal      (%edx,%ecx,8), %esi
	testl     %esi, %esi
	jle       .L0805FF80
.L0805FF10:
	movl      $1, %edi
	movl      %esi, 16(%esp)
	jmp       .L0805FF3F
.L0805FF1B:
	.p2align 4,,10
	.p2align 3
.L0805FF20:
	notl      %edx
	andl      %edx, (%ebx)
	cmpl      $31, %ebp
	leal      1(%ebp), %edx
	je        .L0805FF5F
.L0805FF2C:
	cmpl      $31, %eax
	movl      %edx, %ebp
	leal      1(%eax), %edx
	je        .L0805FF70
.L0805FF36:
	subl      $1, 16(%esp)
	movl      %edx, %eax
	je        .L0805FF80
.L0805FF3F:
	movl      %eax, %ecx
	movl      %edi, %edx
	movl      %edi, %esi
	sall      %cl, %edx
	movl      %ebp, %ecx
	sall      %cl, %esi
	movl      %esi, %ecx
	movl      12(%esp), %esi
	testl     %ecx, (%esi)
	je        .L0805FF20
.L0805FF55:
	orl       %edx, (%ebx)
	cmpl      $31, %ebp
	leal      1(%ebp), %edx
	jne       .L0805FF2C
.L0805FF5F:
	addl      $4, 12(%esp)
	xorw      %bp, %bp
	cmpl      $31, %eax
	leal      1(%eax), %edx
	jne       .L0805FF36
.L0805FF6F:
	.p2align 4,,10
	.p2align 3
.L0805FF70:
	addl      $4, %ebx
	xorb      %al, %al
	subl      $1, 16(%esp)
	jne       .L0805FF3F
.L0805FF7C:
	.p2align 4,,10
	.p2align 3
.L0805FF80:
	movl      80(%esp), %edi
	movl      %eax, 12(%edi)
	movl      (%edi), %eax
	movl      %ebx, 8(%edi)
	testl     %eax, %eax
	je        .L0805FF9C
.L0805FF90:
	subl      $12, %esp
	pushl     %eax
	call      _ZdlPv
.L0805FF99:
	addl      $16, %esp
.L0805FF9C:
	movl      32(%esp), %edi
	movl      36(%esp), %eax
	movl      80(%esp), %esi
	addl      %edi, %eax
	movl      %eax, 16(%esi)
	movl      %edi, (%esi)
	movl      $0, 4(%esi)
	addl      $60, %esp
	popl      %ebx
	popl      %esi
	popl      %edi
	popl      %ebp
	ret       
.L0805FFBE:
	movl      32(%esp), %eax
	movl      80(%esp), %edi
	addl      $32, %eax
	movl      %eax, 24(%esp)
	movl      28(%esp), %eax
	subl      $4, %eax
	movl      %eax, 8(%edi)
	jmp       .L0805FD6B
.L0805FFDC:
	.p2align 4,,10
	.p2align 3
.L0805FFE0:
	movl      $268435452, 36(%esp)
	jmp       .L0805FDC2
.L0805FFED:
	.p2align 4,,10
	.p2align 3
.L0805FFF0:
	movl      28(%esp), %esi
	leal      32(%edx), %edx
	subl      $4, %esi
	jmp       .L0805FBE2
.L0805FFFF:
	.p2align 4,,10
	.p2align 3
.L08060000:
	addl      $32, 12(%esp)
	subl      $4, %ebx
	jmp       .L0805FC90
.L0806000D:
	movl      %edx, %edi
	subl      $4, %ebx
	addl      $32, %edi
	movl      %ebx, %esi
	movl      %edi, 28(%esp)
	jmp       .L0805FEC9
.L08060020:
	movzbl    44(%esp), %esi
	movl      %ebx, %eax
	jmp       .L0806003E
.L08060029:
	.p2align 4
.L08060030:
	notl      %ecx
	andl      %ecx, (%eax)
.L08060034:
	cmpl      $31, %ebp
	leal      1(%ebp), %ecx
	je        .L0806006B
.L0806003C:
	movl      %ecx, %ebp
.L0806003E:
	cmpl      %eax, %ebx
	je        .L08060060
.L08060042:
	movl      %ebp, %ecx
	movl      $1, %edi
	movl      %esi, %edx
	sall      %cl, %edi
	testb     %dl, %dl
	movl      %edi, %ecx
	je        .L08060030
.L08060053:
	orl       %ecx, (%eax)
	jmp       .L08060034
.L08060057:
	.p2align 4
.L08060060:
	cmpl      %ebp, 12(%esp)
	jne       .L08060042
.L08060066:
	jmp       .L0805FD54
.L0806006B:
	addl      $4, %eax
	xorw      %bp, %bp
	jmp       .L0806003E
.L08060073:
	xorl      %eax, %eax
	jmp       .L0805FE98
.L0806007A:
	subl      $12, %esp
	pushl     $.LC08063EC7
	call      _ZSt20__throw_length_errorPKc
	.size	_ZNSt6vectorIbSaIbEE14_M_fill_insertESt13_Bit_iteratorjb, .-_ZNSt6vectorIbSaIbEE14_M_fill_insertESt13_Bit_iteratorjb
# ----------------------
.L08060087:
	.p2align 4
# ----------------------
	.weak	_ZNSt6vectorIbSaIbEE6resizeEjb
	.type	_ZNSt6vectorIbSaIbEE6resizeEjb, @function
_ZNSt6vectorIbSaIbEE6resizeEjb:
	pushl     %ebp
	pushl     %edi
	pushl     %esi
	pushl     %ebx
	subl      $28, %esp
	movl      48(%esp), %edx
	movl      56(%esp), %eax
	movl      12(%edx), %ebx
	movl      8(%edx), %ebp
	movl      %eax, 12(%esp)
	movl      (%edx), %esi
	movl      4(%edx), %eax
	movl      %ebx, %ecx
	movl      %ebp, %edi
	subl      %esi, %edi
	subl      %eax, %ecx
	leal      (%ecx,%edi,8), %ecx
	cmpl      %ecx, 52(%esp)
	jae       .L08060100
.L080600BF:
	addl      52(%esp), %eax
	movl      %eax, %ecx
	sarl      $31, %ecx
	shrl      $27, %ecx
	addl      %ecx, %eax
	movl      %eax, %ebx
	andl      $31, %eax
	sarl      $5, %ebx
	subl      %ecx, %eax
	leal      (%esi,%ebx,4), %ebx
	js        .L080600F0
.L080600DC:
	movl      %ebx, 8(%edx)
	movl      %eax, 12(%edx)
	addl      $28, %esp
	popl      %ebx
	popl      %esi
	popl      %edi
	popl      %ebp
	ret       
.L080600EA:
	.p2align 4,,10
	.p2align 3
.L080600F0:
	addl      $32, %eax
	subl      $4, %ebx
	jmp       .L080600DC
.L080600F8:
	.p2align 4
.L08060100:
	subl      $12, %esp
	movzbl    24(%esp), %eax
	pushl     %eax
	movl      68(%esp), %eax
	subl      %ecx, %eax
	pushl     %eax
	pushl     %ebx
	pushl     %ebp
	pushl     %edx
	call      _ZNSt6vectorIbSaIbEE14_M_fill_insertESt13_Bit_iteratorjb
.L08060118:
	addl      $32, %esp
	addl      $28, %esp
	popl      %ebx
	popl      %esi
	popl      %edi
	popl      %ebp
	ret       
	.size	_ZNSt6vectorIbSaIbEE6resizeEjb, .-_ZNSt6vectorIbSaIbEE6resizeEjb
# ----------------------
.L08060123:
	.p2align 4
# ----------------------
	.weak	_ZNSt6vectorIP9ExpansionSaIS1_EE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPS1_S3_EEjRKS1_
	.type	_ZNSt6vectorIP9ExpansionSaIS1_EE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPS1_S3_EEjRKS1_, @function
_ZNSt6vectorIP9ExpansionSaIS1_EE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPS1_S3_EEjRKS1_:
	pushl     %ebp
	pushl     %edi
	pushl     %esi
	pushl     %ebx
	subl      $28, %esp
	movl      56(%esp), %edx
	movl      48(%esp), %ebp
	testl     %edx, %edx
	je        .L080601C9
.L08060147:
	movl      4(%ebp), %esi
	movl      8(%ebp), %eax
	subl      %esi, %eax
	sarl      $2, %eax
	cmpl      %eax, %edx
	ja        .L08060238
.L0806015A:
	movl      %esi, %ebx
	subl      52(%esp), %ebx
	movl      60(%esp), %eax
	movl      (%eax), %edi
	movl      %ebx, %ecx
	sarl      $2, %ecx
	cmpl      %ecx, %edx
	jae       .L080601D8
.L0806016F:
	leal      0(,%edx,4), %ebx
	movl      %esi, %ecx
	movl      %esi, %edx
	subl      %ebx, %ecx
	subl      %ecx, %edx
	movl      %edx, %eax
	sarl      $2, %eax
	movl      %eax, 8(%esp)
	cmpl      $0, 8(%esp)
	movl      %esi, %eax
	jne       .L080602A0
.L08060194:
	addl      %ebx, %eax
	movl      %eax, 4(%ebp)
	movl      %ecx, %eax
	subl      52(%esp), %eax
	movl      %eax, %edx
	sarl      $2, %edx
	testl     %edx, %edx
	jne       .L08060280
.L080601AC:
	addl      52(%esp), %ebx
	cmpl      %ebx, 52(%esp)
	je        .L080601C9
.L080601B6:
	movl      52(%esp), %eax
	.p2align 4,,10
	.p2align 3
.L080601C0:
	movl      %edi, (%eax)
	addl      $4, %eax
	cmpl      %eax, %ebx
	jne       .L080601C0
.L080601C9:
	addl      $28, %esp
	popl      %ebx
	popl      %esi
	popl      %edi
	popl      %ebp
	ret       
.L080601D1:
	.p2align 4,,10
	.p2align 3
.L080601D8:
	subl      %ecx, %edx
	movl      %esi, %eax
	movl      %edx, 8(%esp)
	je        .L080601F5
.L080601E2:
	.p2align 4,,10
	.p2align 3
.L080601E8:
	movl      %edi, (%eax)
	addl      $4, %eax
	subl      $1, %edx
	jne       .L080601E8
.L080601F2:
	movl      4(%ebp), %eax
.L080601F5:
	movl      8(%esp), %edx
	testl     %ecx, %ecx
	leal      (%eax,%edx,4), %eax
	movl      %eax, 4(%ebp)
	jne       .L080602C0
.L08060207:
	addl      %eax, %ebx
	cmpl      52(%esp), %esi
	movl      %ebx, 4(%ebp)
	je        .L080601C9
.L08060212:
	movl      52(%esp), %eax
	.p2align 4
.L08060220:
	movl      %edi, (%eax)
	addl      $4, %eax
	cmpl      %eax, %esi
	jne       .L08060220
.L08060229:
	addl      $28, %esp
	popl      %ebx
	popl      %esi
	popl      %edi
	popl      %ebp
	ret       
.L08060231:
	.p2align 4,,10
	.p2align 3
.L08060238:
	movl      (%ebp), %eax
	movl      $1073741823, %ecx
	subl      %eax, %esi
	sarl      $2, %esi
	subl      %esi, %ecx
	cmpl      %ecx, %edx
	ja        .L080603BC
.L0806024F:
	cmpl      %edx, %esi
	movl      %esi, %ebx
	jae       .L08060257
.L08060255:
	movl      %edx, %ebx
.L08060257:
	addl      %ebx, %esi
	jb        .L080602E0
.L0806025F:
	cmpl      $1073741823, %esi
	ja        .L080602E0
.L08060267:
	movl      52(%esp), %ecx
	subl      %eax, %ecx
	testl     %esi, %esi
	jne       .L080603B0
.L08060275:
	xorl      %ebx, %ebx
	xorl      %edi, %edi
	jmp       .L08060309
.L0806027E:
	.p2align 4,,10
	.p2align 3
.L08060280:
	subl      $4, %esp
	subl      %eax, %esi
	pushl     %eax
	pushl     60(%esp)
	pushl     %esi
	call      memmove
.L08060290:
	addl      $16, %esp
	jmp       .L080601AC
.L08060298:
	.p2align 4
.L080602A0:
	subl      $4, %esp
	pushl     %edx
	pushl     %ecx
	movl      %ecx, 20(%esp)
	pushl     %esi
	call      memmove
.L080602AF:
	addl      $16, %esp
	movl      4(%ebp), %eax
	movl      8(%esp), %ecx
	jmp       .L08060194
.L080602BE:
	.p2align 4,,10
	.p2align 3
.L080602C0:
	subl      $4, %esp
	pushl     %ebx
	pushl     60(%esp)
	pushl     %eax
	call      memmove
.L080602CE:
	movl      4(%ebp), %eax
	addl      $16, %esp
	jmp       .L08060207
.L080602D9:
	.p2align 4
.L080602E0:
	movl      52(%esp), %ecx
	movl      $-4, %ebx
	subl      %eax, %ecx
.L080602EB:
	movl      %edx, 12(%esp)
	movl      %ecx, 8(%esp)
	subl      $12, %esp
	pushl     %ebx
	call      _Znwj
.L080602FC:
	addl      $16, %esp
	movl      12(%esp), %edx
	movl      8(%esp), %ecx
	movl      %eax, %edi
.L08060309:
	movl      60(%esp), %eax
	addl      %edi, %ecx
	movl      %edx, %esi
	movl      (%eax), %eax
	.p2align 4,,10
	.p2align 3
.L08060318:
	movl      %eax, (%ecx)
	addl      $4, %ecx
	subl      $1, %esi
	jne       .L08060318
.L08060322:
	movl      (%ebp), %eax
	movl      52(%esp), %esi
	subl      %eax, %esi
	movl      %esi, %ecx
	sarl      $2, %ecx
	testl     %ecx, %ecx
	jne       .L08060398
.L08060334:
	leal      (%esi,%edx,4), %esi
	leal      (%edi,%esi), %edx
	movl      4(%ebp), %esi
	subl      52(%esp), %esi
	movl      %esi, %eax
	sarl      $2, %eax
	testl     %eax, %eax
	jne       .L08060378
.L0806034A:
	movl      (%ebp), %eax
	addl      %edx, %esi
	testl     %eax, %eax
	je        .L0806035F
.L08060353:
	subl      $12, %esp
	pushl     %eax
	call      _ZdlPv
.L0806035C:
	addl      $16, %esp
.L0806035F:
	addl      %edi, %ebx
	movl      %edi, (%ebp)
	movl      %esi, 4(%ebp)
	movl      %ebx, 8(%ebp)
	addl      $28, %esp
	popl      %ebx
	popl      %esi
	popl      %edi
	popl      %ebp
	ret       
.L08060372:
	.p2align 4,,10
	.p2align 3
.L08060378:
	subl      $4, %esp
	pushl     %esi
	pushl     60(%esp)
	pushl     %edx
	movl      %edx, 24(%esp)
	call      memmove
.L0806038A:
	addl      $16, %esp
	movl      8(%esp), %edx
	jmp       .L0806034A
.L08060393:
	.p2align 4,,10
	.p2align 3
.L08060398:
	movl      %edx, 8(%esp)
	subl      $4, %esp
	pushl     %esi
	pushl     %eax
	pushl     %edi
	call      memmove
.L080603A7:
	addl      $16, %esp
	movl      8(%esp), %edx
	jmp       .L08060334
.L080603B0:
	leal      0(,%esi,4), %ebx
	jmp       .L080602EB
.L080603BC:
	subl      $12, %esp
	pushl     $.LC08063E9F
	call      _ZSt20__throw_length_errorPKc
	.size	_ZNSt6vectorIP9ExpansionSaIS1_EE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPS1_S3_EEjRKS1_, .-_ZNSt6vectorIP9ExpansionSaIS1_EE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPS1_S3_EEjRKS1_
# ----------------------
.L080603C9:
	.p2align 4
# ----------------------
	.weak	_ZNSt20__uninitialized_copyILb0EE13__uninit_copyIPN7acommon6StringES4_EET0_T_S6_S5_
	.type	_ZNSt20__uninitialized_copyILb0EE13__uninit_copyIPN7acommon6StringES4_EET0_T_S6_S5_, @function
_ZNSt20__uninitialized_copyILb0EE13__uninit_copyIPN7acommon6StringES4_EET0_T_S6_S5_:
	pushl     %ebp
	pushl     %edi
	pushl     %esi
	pushl     %ebx
	subl      $28, %esp
	movl      48(%esp), %edi
	movl      52(%esp), %ebp
	movl      56(%esp), %ebx
	cmpl      %ebp, %edi
	jne       .L0806040F
.L080603E7:
	jmp       .L08060470
.L080603EC:
	.p2align 4,,10
	.p2align 3
.L080603F0:
	movl      $0, 4(%ebx)
	movl      $0, 8(%ebx)
	movl      $0, 12(%ebx)
.L08060405:
	addl      $16, %edi
	addl      $16, %ebx
	cmpl      %edi, %ebp
	je        .L08060470
.L0806040F:
	testl     %ebx, %ebx
	je        .L08060405
.L08060413:
	movl      $_ZTVN7acommon6StringE+8, (%ebx)
	movl      4(%edi), %edx
	movl      8(%edi), %esi
	subl      %edx, %esi
	je        .L080603F0
.L08060423:
	testl     %edx, %edx
	je        .L080603F0
.L08060427:
	leal      1(%esi), %eax
	movl      %edx, 12(%esp)
	subl      $12, %esp
	addl      $16, %edi
	addl      $16, %ebx
	pushl     %eax
	call      malloc
.L0806043D:
	addl      $12, %esp
	movl      %eax, -12(%ebx)
	pushl     %esi
	movl      20(%esp), %edx
	pushl     %edx
	pushl     %eax
	movl      %eax, 28(%esp)
	call      memcpy
.L08060453:
	movl      28(%esp), %ecx
	addl      $16, %esp
	addl      %ecx, %esi
	movl      %esi, -8(%ebx)
	addl      $1, %esi
	movl      %esi, -4(%ebx)
	cmpl      %edi, %ebp
	jne       .L0806040F
.L08060469:
	.p2align 4
.L08060470:
	addl      $28, %esp
	movl      %ebx, %eax
	popl      %ebx
	popl      %esi
	popl      %edi
	popl      %ebp
	ret       
	.size	_ZNSt20__uninitialized_copyILb0EE13__uninit_copyIPN7acommon6StringES4_EET0_T_S6_S5_, .-_ZNSt20__uninitialized_copyILb0EE13__uninit_copyIPN7acommon6StringES4_EET0_T_S6_S5_
# ----------------------
.L0806047A:
	.p2align 4,,10
	.p2align 3
# ----------------------
	.weak	_ZNSt6vectorIN7acommon6StringESaIS1_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS1_S3_EERKS1_
	.type	_ZNSt6vectorIN7acommon6StringESaIS1_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS1_S3_EERKS1_, @function
_ZNSt6vectorIN7acommon6StringESaIS1_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS1_S3_EERKS1_:
	pushl     %ebp
	pushl     %edi
	pushl     %esi
	pushl     %ebx
	subl      $28, %esp
	movl      48(%esp), %ebx
	movl      52(%esp), %edi
	movl      56(%esp), %ebp
	movl      4(%ebx), %esi
	cmpl      8(%ebx), %esi
	je        .L08060670
.L0806049F:
	testl     %esi, %esi
	je        .L080604D0
.L080604A3:
	movl      -12(%esi), %ecx
	movl      -8(%esi), %edx
	movl      $_ZTVN7acommon6StringE+8, (%esi)
	subl      %ecx, %edx
	je        .L080604BB
.L080604B3:
	testl     %ecx, %ecx
	jne       .L08060620
.L080604BB:
	movl      $0, 4(%esi)
	movl      $0, 8(%esi)
	movl      $0, 12(%esi)
.L080604D0:
	leal      16(%esi), %eax
	movl      %eax, 4(%ebx)
	movl      4(%ebp), %ebx
	movl      8(%ebp), %eax
	subl      %ebx, %eax
	movl      %eax, 8(%esp)
	je        .L080604EC
.L080604E4:
	testl     %ebx, %ebx
	jne       .L080605D0
.L080604EC:
	movl      $0, (%esp)
	movl      $0, 8(%esp)
	movl      $0, 4(%esp)
.L08060503:
	leal      -16(%esi), %ebx
	movl      %ebx, %eax
	subl      %edi, %eax
	subl      %eax, %esi
	cmpl      $15, %eax
	jle       .L0806056C
.L08060511:
	movl      %edi, 12(%esp)
	jmp       .L0806053D
.L08060517:
	.p2align 4
.L08060520:
	subl      $4, %esp
	pushl     %ebp
	pushl     %edi
	pushl     4(%ebx)
	call      memmove
.L0806052D:
	addl      4(%ebx), %ebp
	addl      $16, %esp
	movl      %ebp, 8(%ebx)
.L08060536:
	cmpl      %esi, %ebx
	je        .L08060568
.L0806053A:
	subl      $16, %ebx
.L0806053D:
	movl      -12(%ebx), %edi
	movl      -8(%ebx), %ebp
	movl      4(%ebx), %edx
	subl      %edi, %ebp
	movl      %edx, 8(%ebx)
	je        .L08060536
.L0806054D:
	movl      12(%ebx), %eax
	subl      %edx, %eax
	cmpl      %eax, %ebp
	jl        .L08060520
.L08060556:
	subl      $8, %esp
	pushl     %ebp
	pushl     %ebx
	call      _ZN7acommon6String9reserve_iEj
.L08060560:
	addl      $16, %esp
	jmp       .L08060520
.L08060565:
	.p2align 4,,10
	.p2align 3
.L08060568:
	movl      12(%esp), %edi
.L0806056C:
	movl      (%esp), %edx
	movl      4(%edi), %eax
	testl     %edx, %edx
	movl      %eax, 8(%edi)
	je        .L080605B8
.L08060579:
	movl      12(%edi), %edx
	subl      %eax, %edx
	cmpl      %edx, 8(%esp)
	jge       .L08060600
.L08060584:
	subl      $4, %esp
	movl      4(%esp), %ebp
	pushl     %ebp
	pushl     12(%esp)
	pushl     %eax
	call      memmove
.L08060596:
	addl      4(%edi), %ebp
	addl      $16, %esp
	movl      %ebp, 8(%edi)
.L0806059F:
	movl      4(%esp), %eax
	movl      %eax, 48(%esp)
	addl      $28, %esp
	popl      %ebx
	popl      %esi
	popl      %edi
	popl      %ebp
	jmp       free
.L080605B3:
	.p2align 4,,10
	.p2align 3
.L080605B8:
	movl      4(%esp), %eax
	testl     %eax, %eax
	jne       .L0806059F
.L080605C0:
	addl      $28, %esp
	popl      %ebx
	popl      %esi
	popl      %edi
	popl      %ebp
	ret       
.L080605C8:
	.p2align 4
.L080605D0:
	subl      $12, %esp
	movl      20(%esp), %ebp
	movl      %ebp, %eax
	addl      $1, %eax
	pushl     %eax
	call      malloc
.L080605E2:
	movl      %eax, 20(%esp)
	addl      $12, %esp
	pushl     %ebp
	pushl     %ebx
	pushl     %eax
	call      memcpy
.L080605F1:
	movl      %ebp, 16(%esp)
	addl      $16, %esp
	jmp       .L08060503
.L080605FD:
	.p2align 4,,10
	.p2align 3
.L08060600:
	subl      $8, %esp
	pushl     8(%esp)
	pushl     %edi
	call      _ZN7acommon6String9reserve_iEj
.L0806060D:
	movl      4(%edi), %eax
	addl      $16, %esp
	jmp       .L08060584
.L08060618:
	.p2align 4
.L08060620:
	leal      1(%edx), %eax
	movl      %ecx, 4(%esp)
	subl      $12, %esp
	movl      %edx, 12(%esp)
	pushl     %eax
	call      malloc
.L08060634:
	addl      $12, %esp
	movl      4(%esp), %edx
	movl      %eax, 4(%esi)
	pushl     %edx
	movl      12(%esp), %ecx
	movl      %edx, 8(%esp)
	pushl     %ecx
	pushl     %eax
	call      memcpy
.L0806064E:
	movl      16(%esp), %edx
	addl      4(%esi), %edx
	addl      $16, %esp
	movl      %edx, 8(%esi)
	addl      $1, %edx
	movl      %edx, 12(%esi)
	jmp       .L080604D0
.L08060666:
	.p2align 4
.L08060670:
	movl      (%ebx), %eax
	subl      %eax, %esi
	sarl      $4, %esi
	testl     %esi, %esi
	je        .L0806077F
.L0806067F:
	leal      (%esi,%esi), %ecx
	cmpl      %ecx, %esi
	jbe       .L080607D1
.L0806068A:
	movl      %edi, %edx
	movl      $-16, (%esp)
	subl      %eax, %edx
.L08060695:
	movl      %edx, 8(%esp)
	subl      $12, %esp
	pushl     12(%esp)
	call      _Znwj
.L080606A5:
	movl      %eax, %esi
	movl      (%ebx), %eax
	movl      %eax, 20(%esp)
	addl      $16, %esp
	movl      8(%esp), %edx
.L080606B4:
	addl      %esi, %edx
	je        .L080606E5
.L080606B8:
	movl      $_ZTVN7acommon6StringE+8, (%edx)
	movl      4(%ebp), %ecx
	movl      8(%ebp), %ebp
	subl      %ecx, %ebp
	je        .L080606D0
.L080606C8:
	testl     %ecx, %ecx
	jne       .L0806078F
.L080606D0:
	movl      $0, 4(%edx)
	movl      $0, 8(%edx)
	movl      $0, 12(%edx)
.L080606E5:
	subl      $4, %esp
	pushl     %esi
	pushl     %edi
	pushl     16(%esp)
	call      _ZNSt20__uninitialized_copyILb0EE13__uninit_copyIPN7acommon6StringES4_EET0_T_S6_S5_
.L080606F3:
	addl      $12, %esp
	addl      $16, %eax
	pushl     %eax
	pushl     4(%ebx)
	pushl     %edi
	call      _ZNSt20__uninitialized_copyILb0EE13__uninit_copyIPN7acommon6StringES4_EET0_T_S6_S5_
.L08060703:
	movl      4(%ebx), %edi
	movl      (%ebx), %ebp
	movl      %eax, 20(%esp)
	addl      $16, %esp
	cmpl      %ebp, %edi
	jne       .L08060739
.L08060713:
	jmp       .L08060758
.L08060715:
	.p2align 4,,10
	.p2align 3
.L08060718:
	movl      4(%ebp), %eax
	movl      $_ZTVN7acommon6StringE+8, (%ebp)
	testl     %eax, %eax
	je        .L08060732
.L08060726:
	subl      $12, %esp
	pushl     %eax
	call      free
.L0806072F:
	addl      $16, %esp
.L08060732:
	addl      $16, %ebp
	cmpl      %ebp, %edi
	je        .L08060756
.L08060739:
	movl      (%ebp), %eax
	movl      20(%eax), %eax
	cmpl      $_ZN7acommon6StringD1Ev, %eax
	je        .L08060718
.L08060746:
	subl      $12, %esp
	pushl     %ebp
	addl      $16, %ebp
	call      *%eax
.L0806074F:
	addl      $16, %esp
	cmpl      %ebp, %edi
	jne       .L08060739
.L08060756:
	movl      (%ebx), %edi
.L08060758:
	testl     %edi, %edi
	je        .L08060768
.L0806075C:
	subl      $12, %esp
	pushl     %edi
	call      _ZdlPv
.L08060765:
	addl      $16, %esp
.L08060768:
	movl      %esi, (%ebx)
	addl      (%esp), %esi
	movl      4(%esp), %eax
	movl      %esi, 8(%ebx)
	movl      %eax, 4(%ebx)
	addl      $28, %esp
	popl      %ebx
	popl      %esi
	popl      %edi
	popl      %ebp
	ret       
.L0806077F:
	movl      %edi, %edx
	movl      $16, (%esp)
	subl      %eax, %edx
	jmp       .L08060695
.L0806078F:
	leal      1(%ebp), %eax
	movl      %ecx, 12(%esp)
	movl      %edx, 8(%esp)
	subl      $12, %esp
	pushl     %eax
	call      malloc
.L080607A3:
	movl      24(%esp), %edx
	addl      $12, %esp
	movl      %eax, 4(%edx)
	pushl     %ebp
	movl      20(%esp), %ecx
	pushl     %ecx
	pushl     %eax
	call      memcpy
.L080607B9:
	movl      24(%esp), %edx
	addl      $16, %esp
	addl      4(%edx), %ebp
	movl      %ebp, 8(%edx)
	addl      $1, %ebp
	movl      %ebp, 12(%edx)
	jmp       .L080606E5
.L080607D1:
	cmpl      $268435455, %ecx
	ja        .L0806068A
.L080607DD:
	sall      $5, %esi
	movl      %edi, %edx
	movl      %eax, 4(%esp)
	movl      %esi, (%esp)
	subl      %eax, %edx
	xorl      %esi, %esi
	testl     %ecx, %ecx
	je        .L080606B4
.L080607F5:
	jmp       .L08060695
	.size	_ZNSt6vectorIN7acommon6StringESaIS1_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS1_S3_EERKS1_, .-_ZNSt6vectorIN7acommon6StringESaIS1_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS1_S3_EERKS1_
# ----------------------
.L080607FA:
	.p2align 4,,10
	.p2align 3
# ----------------------
	.weak	_ZNSt6vectorIN7acommon6StringESaIS1_EE9push_backERKS1_
	.type	_ZNSt6vectorIN7acommon6StringESaIS1_EE9push_backERKS1_, @function
_ZNSt6vectorIN7acommon6StringESaIS1_EE9push_backERKS1_:
	pushl     %ebp
	pushl     %edi
	pushl     %esi
	pushl     %ebx
	subl      $12, %esp
	movl      32(%esp), %esi
	movl      36(%esp), %eax
	movl      4(%esi), %ebx
	cmpl      8(%esi), %ebx
	je        .L08060858
.L08060817:
	testl     %ebx, %ebx
	je        .L08060846
.L0806081B:
	movl      $_ZTVN7acommon6StringE+8, (%ebx)
	movl      4(%eax), %ebp
	movl      8(%eax), %eax
	subl      %ebp, %eax
	movl      %eax, %edi
	je        .L08060831
.L0806082D:
	testl     %ebp, %ebp
	jne       .L08060870
.L08060831:
	movl      $0, 4(%ebx)
	movl      $0, 8(%ebx)
	movl      $0, 12(%ebx)
.L08060846:
	addl      $16, %ebx
	movl      %ebx, 4(%esi)
	addl      $12, %esp
	popl      %ebx
	popl      %esi
	popl      %edi
	popl      %ebp
	ret       
.L08060854:
	.p2align 4,,10
	.p2align 3
.L08060858:
	subl      $4, %esp
	pushl     %eax
	pushl     %ebx
	pushl     %esi
	call      _ZNSt6vectorIN7acommon6StringESaIS1_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS1_S3_EERKS1_
.L08060863:
	addl      $16, %esp
	addl      $12, %esp
	popl      %ebx
	popl      %esi
	popl      %edi
	popl      %ebp
	ret       
.L0806086E:
	.p2align 4,,10
	.p2align 3
.L08060870:
	leal      1(%eax), %eax
	subl      $12, %esp
	pushl     %eax
	call      malloc
.L0806087C:
	addl      $12, %esp
	movl      %eax, 4(%ebx)
	pushl     %edi
	pushl     %ebp
	pushl     %eax
	call      memcpy
.L0806088A:
	movl      4(%ebx), %eax
	addl      $16, %esp
	addl      %edi, %eax
	movl      %eax, 8(%ebx)
	addl      $1, %eax
	movl      %eax, 12(%ebx)
	jmp       .L08060846
	.size	_ZNSt6vectorIN7acommon6StringESaIS1_EE9push_backERKS1_, .-_ZNSt6vectorIN7acommon6StringESaIS1_EE9push_backERKS1_
# ----------------------
.L0806089D:
	.p2align 4,,10
	.p2align 3
# ----------------------
	.weak	_ZNSt6vectorIN7acommon6StringESaIS1_EE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPS1_S3_EEjRKS1_
	.type	_ZNSt6vectorIN7acommon6StringESaIS1_EE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPS1_S3_EEjRKS1_, @function
_ZNSt6vectorIN7acommon6StringESaIS1_EE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPS1_S3_EEjRKS1_:
	pushl     %ebp
	pushl     %edi
	pushl     %esi
	pushl     %ebx
	subl      $60, %esp
	movl      80(%esp), %eax
	movl      92(%esp), %ecx
	movl      %eax, %esi
	movl      %eax, 20(%esp)
	movl      84(%esp), %eax
	movl      %eax, %ebx
	movl      %eax, 16(%esp)
	movl      88(%esp), %eax
	testl     %eax, %eax
	movl      %eax, %edx
	movl      %eax, 12(%esp)
	je        .L08060B9A
.L080608D1:
	movl      8(%esi), %eax
	movl      4(%esi), %edi
	movl      %eax, 24(%esp)
	subl      %edi, %eax
	sarl      $4, %eax
	cmpl      %eax, %edx
	jbe       .L08060BA8
.L080608E8:
	movl      20(%esp), %eax
	movl      $268435455, %edx
	movl      (%eax), %esi
	movl      %edi, %eax
	subl      %esi, %eax
	sarl      $4, %eax
	subl      %eax, %edx
	cmpl      %edx, 12(%esp)
	ja        .L08060E9C
.L08060906:
	cmpl      12(%esp), %eax
	movl      %eax, %edx
	jb        .L08060D40
.L08060912:
	addl      %edx, %eax
	jb        .L08060921
.L08060916:
	cmpl      $268435455, %eax
	jbe       .L08060E70
.L08060921:
	movl      16(%esp), %ebx
	movl      $-16, 36(%esp)
	subl      %esi, %ebx
.L0806092F:
	movl      %ecx, 28(%esp)
	subl      $12, %esp
	pushl     48(%esp)
	call      _Znwj
.L0806093F:
	movl      %eax, 48(%esp)
	movl      36(%esp), %eax
	movl      4(%eax), %edx
	movl      (%eax), %esi
	movl      %edx, 40(%esp)
	addl      $16, %esp
	movl      28(%esp), %ecx
.L08060957:
	movl      12(%esp), %edx
	movl      %esi, 40(%esp)
	movl      %ecx, %esi
	addl      32(%esp), %ebx
	movl      %edx, %ebp
	jmp       .L0806098D
.L08060969:
	.p2align 4
.L08060970:
	movl      $0, 4(%ebx)
	movl      $0, 8(%ebx)
	movl      $0, 12(%ebx)
.L08060985:
	addl      $16, %ebx
	subl      $1, %ebp
	je        .L080609DE
.L0806098D:
	testl     %ebx, %ebx
	je        .L08060985
.L08060991:
	movl      $_ZTVN7acommon6StringE+8, (%ebx)
	movl      4(%esi), %edx
	movl      8(%esi), %edi
	subl      %edx, %edi
	je        .L08060970
.L080609A1:
	testl     %edx, %edx
	je        .L08060970
.L080609A5:
	leal      1(%edi), %eax
	movl      %edx, 28(%esp)
	subl      $12, %esp
	addl      $16, %ebx
	pushl     %eax
	call      malloc
.L080609B8:
	addl      $12, %esp
	movl      %eax, -12(%ebx)
	pushl     %edi
	movl      36(%esp), %edx
	pushl     %edx
	pushl     %eax
	call      memcpy
.L080609CA:
	addl      -12(%ebx), %edi
	addl      $16, %esp
	movl      %edi, -8(%ebx)
	addl      $1, %edi
	movl      %edi, -4(%ebx)
	subl      $1, %ebp
	jne       .L0806098D
.L080609DE:
	movl      40(%esp), %esi
	movl      16(%esp), %eax
	cmpl      %esi, %eax
	je        .L08060E93
.L080609EE:
	movl      %esi, %ebp
	movl      32(%esp), %ebx
	movl      %eax, %esi
	jmp       .L08060A1F
.L080609F8:
	.p2align 4
.L08060A00:
	movl      $0, 4(%ebx)
	movl      $0, 8(%ebx)
	movl      $0, 12(%ebx)
.L08060A15:
	addl      $16, %ebp
	addl      $16, %ebx
	cmpl      %ebp, %esi
	je        .L08060A72
.L08060A1F:
	testl     %ebx, %ebx
	je        .L08060A15
.L08060A23:
	movl      $_ZTVN7acommon6StringE+8, (%ebx)
	movl      4(%ebp), %ecx
	movl      8(%ebp), %edi
	subl      %ecx, %edi
	je        .L08060A00
.L08060A33:
	testl     %ecx, %ecx
	je        .L08060A00
.L08060A37:
	leal      1(%edi), %eax
	movl      %ecx, 28(%esp)
	subl      $12, %esp
	addl      $16, %ebp
	addl      $16, %ebx
	pushl     %eax
	call      malloc
.L08060A4D:
	addl      $12, %esp
	movl      %eax, -12(%ebx)
	pushl     %edi
	movl      36(%esp), %ecx
	pushl     %ecx
	pushl     %eax
	call      memcpy
.L08060A5F:
	addl      -12(%ebx), %edi
	addl      $16, %esp
	movl      %edi, -8(%ebx)
	addl      $1, %edi
	movl      %edi, -4(%ebx)
	cmpl      %ebp, %esi
	jne       .L08060A1F
.L08060A72:
	movl      40(%esp), %esi
.L08060A76:
	movl      12(%esp), %eax
	movl      24(%esp), %ecx
	sall      $4, %eax
	addl      %eax, %ebx
	movl      16(%esp), %eax
	cmpl      %ecx, %eax
	je        .L08060B16
.L08060A8F:
	movl      %esi, 16(%esp)
	movl      %eax, %ebp
	movl      %ecx, %esi
	jmp       .L08060ABF
.L08060A99:
	.p2align 4
.L08060AA0:
	movl      $0, 4(%ebx)
	movl      $0, 8(%ebx)
	movl      $0, 12(%ebx)
.L08060AB5:
	addl      $16, %ebp
	addl      $16, %ebx
	cmpl      %ebp, %esi
	je        .L08060B12
.L08060ABF:
	testl     %ebx, %ebx
	je        .L08060AB5
.L08060AC3:
	movl      $_ZTVN7acommon6StringE+8, (%ebx)
	movl      4(%ebp), %ecx
	movl      8(%ebp), %edi
	subl      %ecx, %edi
	je        .L08060AA0
.L08060AD3:
	testl     %ecx, %ecx
	je        .L08060AA0
.L08060AD7:
	leal      1(%edi), %eax
	movl      %ecx, 12(%esp)
	subl      $12, %esp
	addl      $16, %ebp
	addl      $16, %ebx
	pushl     %eax
	call      malloc
.L08060AED:
	addl      $12, %esp
	movl      %eax, -12(%ebx)
	pushl     %edi
	movl      20(%esp), %ecx
	pushl     %ecx
	pushl     %eax
	call      memcpy
.L08060AFF:
	addl      -12(%ebx), %edi
	addl      $16, %esp
	movl      %edi, -8(%ebx)
	addl      $1, %edi
	movl      %edi, -4(%ebx)
	cmpl      %ebp, %esi
	jne       .L08060ABF
.L08060B12:
	movl      16(%esp), %esi
.L08060B16:
	movl      24(%esp), %eax
	cmpl      %eax, %esi
	je        .L08060B6E
.L08060B1E:
	movl      %eax, %edi
	jmp       .L08060B48
.L08060B22:
	.p2align 4,,10
	.p2align 3
.L08060B28:
	movl      4(%esi), %eax
	movl      $_ZTVN7acommon6StringE+8, (%esi)
	testl     %eax, %eax
	je        .L08060B41
.L08060B35:
	subl      $12, %esp
	pushl     %eax
	call      free
.L08060B3E:
	addl      $16, %esp
.L08060B41:
	addl      $16, %esi
	cmpl      %edi, %esi
	je        .L08060B64
.L08060B48:
	movl      (%esi), %eax
	movl      20(%eax), %eax
	cmpl      $_ZN7acommon6StringD1Ev, %eax
	je        .L08060B28
.L08060B54:
	subl      $12, %esp
	pushl     %esi
	addl      $16, %esi
	call      *%eax
.L08060B5D:
	addl      $16, %esp
	cmpl      %edi, %esi
	jne       .L08060B48
.L08060B64:
	movl      20(%esp), %eax
	movl      (%eax), %eax
	movl      %eax, 24(%esp)
.L08060B6E:
	movl      24(%esp), %eax
	testl     %eax, %eax
	je        .L08060B82
.L08060B76:
	subl      $12, %esp
	pushl     %eax
	call      _ZdlPv
.L08060B7F:
	addl      $16, %esp
.L08060B82:
	movl      20(%esp), %eax
	movl      32(%esp), %edx
	movl      %eax, %ecx
	movl      %edx, (%eax)
	movl      %ebx, 4(%eax)
	movl      36(%esp), %eax
	addl      %edx, %eax
	movl      %eax, 8(%ecx)
.L08060B9A:
	addl      $60, %esp
	popl      %ebx
	popl      %esi
	popl      %edi
	popl      %ebp
	ret       
.L08060BA2:
	.p2align 4,,10
	.p2align 3
.L08060BA8:
	movl      4(%ecx), %esi
	movl      8(%ecx), %edx
	subl      %esi, %edx
	je        .L08060BF0
.L08060BB2:
	testl     %esi, %esi
	je        .L08060BF0
.L08060BB6:
	leal      1(%edx), %eax
	subl      $12, %esp
	movl      %edx, 36(%esp)
	pushl     %eax
	call      malloc
.L08060BC6:
	addl      $12, %esp
	movl      28(%esp), %edx
	movl      %eax, %ebp
	pushl     %edx
	movl      %edx, 32(%esp)
	pushl     %esi
	pushl     %eax
	call      memcpy
.L08060BDB:
	movl      40(%esp), %edx
	leal      (%ebp,%edx), %eax
	movl      %eax, 40(%esp)
	addl      $16, %esp
	jmp       .L08060BFA
.L08060BEC:
	.p2align 4,,10
	.p2align 3
.L08060BF0:
	movl      $0, 24(%esp)
	xorl      %ebp, %ebp
.L08060BFA:
	movl      %edi, %eax
	subl      16(%esp), %eax
	movl      %eax, 28(%esp)
	sarl      $4, %eax
	cmpl      %eax, 12(%esp)
	jb        .L08060D50
.L08060C11:
	movl      12(%esp), %ecx
	movl      %edi, %esi
	subl      %eax, %ecx
	movl      %ecx, %eax
	movl      %ecx, 32(%esp)
	movl      %ecx, 36(%esp)
	movl      24(%esp), %ecx
	subl      %ebp, %ecx
	testl     %eax, %eax
	leal      1(%ecx), %edx
	movl      %edx, 12(%esp)
	je        .L08060CBC
.L08060C38:
	movl      %ebx, 40(%esp)
	movl      %edi, 44(%esp)
	movl      %ebp, %edi
	movl      36(%esp), %ebx
	movl      %ecx, %ebp
	jmp       .L08060C6D
.L08060C4A:
	.p2align 4,,10
	.p2align 3
.L08060C50:
	movl      $0, 4(%esi)
	movl      $0, 8(%esi)
	movl      $0, 12(%esi)
.L08060C65:
	addl      $16, %esi
	subl      $1, %ebx
	je        .L08060CB2
.L08060C6D:
	testl     %esi, %esi
	je        .L08060C65
.L08060C71:
	testl     %ebp, %ebp
	movl      $_ZTVN7acommon6StringE+8, (%esi)
	je        .L08060C50
.L08060C7B:
	testl     %edi, %edi
	je        .L08060C50
.L08060C7F:
	subl      $12, %esp
	addl      $16, %esi
	pushl     24(%esp)
	call      malloc
.L08060C8E:
	addl      $12, %esp
	movl      %eax, -12(%esi)
	pushl     %ebp
	pushl     %edi
	pushl     %eax
	call      memcpy
.L08060C9C:
	movl      -12(%esi), %eax
	addl      $16, %esp
	addl      %ebp, %eax
	movl      %eax, -8(%esi)
	addl      $1, %eax
	movl      %eax, -4(%esi)
	subl      $1, %ebx
	jne       .L08060C6D
.L08060CB2:
	movl      %edi, %ebp
	movl      40(%esp), %ebx
	movl      44(%esp), %edi
.L08060CBC:
	movl      32(%esp), %eax
	movl      20(%esp), %esi
	subl      $4, %esp
	sall      $4, %eax
	addl      %edi, %eax
	movl      %eax, 4(%esi)
	pushl     %eax
	pushl     %edi
	pushl     28(%esp)
	call      _ZNSt20__uninitialized_copyILb0EE13__uninit_copyIPN7acommon6StringES4_EET0_T_S6_S5_
.L08060CDA:
	movl      44(%esp), %ecx
	addl      $16, %esp
	addl      %ecx, 4(%esi)
	movl      24(%esp), %esi
	subl      %ebp, %esi
	cmpl      16(%esp), %edi
	jne       .L08060D19
.L08060CF0:
	jmp       .L08060E58
.L08060CF5:
	.p2align 4,,10
	.p2align 3
.L08060CF8:
	subl      $4, %esp
	pushl     %esi
	pushl     %ebp
	pushl     %eax
	call      memmove
.L08060D03:
	movl      4(%ebx), %eax
	addl      $16, %esp
	addl      %esi, %eax
	movl      %eax, 8(%ebx)
.L08060D0E:
	addl      $16, %ebx
	cmpl      %ebx, %edi
	je        .L08060E58
.L08060D19:
	movl      4(%ebx), %eax
	testl     %esi, %esi
	movl      %eax, 8(%ebx)
	je        .L08060D0E
.L08060D23:
	movl      12(%ebx), %edx
	subl      %eax, %edx
	cmpl      %esi, %edx
	jg        .L08060CF8
.L08060D2C:
	subl      $8, %esp
	pushl     %esi
	pushl     %ebx
	call      _ZN7acommon6String9reserve_iEj
.L08060D36:
	movl      4(%ebx), %eax
	addl      $16, %esp
	jmp       .L08060CF8
.L08060D3E:
	.p2align 4,,10
	.p2align 3
.L08060D40:
	movl      12(%esp), %edx
	jmp       .L08060912
.L08060D49:
	.p2align 4
.L08060D50:
	movl      12(%esp), %eax
	movl      %edi, %edx
	subl      $4, %esp
	sall      $4, %eax
	movl      %eax, 32(%esp)
	subl      %eax, %edx
	pushl     %edi
	pushl     %edi
	pushl     %edx
	movl      %eax, %esi
	movl      %edx, 28(%esp)
	call      _ZNSt20__uninitialized_copyILb0EE13__uninit_copyIPN7acommon6StringES4_EET0_T_S6_S5_
.L08060D70:
	movl      28(%esp), %edx
	movl      36(%esp), %ecx
	movl      %edx, %eax
	subl      32(%esp), %eax
	addl      %esi, 4(%ecx)
	movl      %edx, %ecx
	addl      $16, %esp
	subl      %eax, %ecx
	cmpl      $15, %eax
	jle       .L08060DF8
.L08060D8D:
	movl      %ebp, 32(%esp)
	movl      %ecx, %esi
	movl      %ebx, 20(%esp)
	movl      %edx, %ebp
	jmp       .L08060DBA
.L08060D9B:
	.p2align 4,,10
	.p2align 3
.L08060DA0:
	subl      $4, %esp
	pushl     %ebx
	pushl     %eax
	pushl     4(%edi)
	call      memmove
.L08060DAD:
	addl      4(%edi), %ebx
	addl      $16, %esp
	movl      %ebx, 8(%edi)
.L08060DB6:
	cmpl      %esi, %ebp
	je        .L08060DF0
.L08060DBA:
	subl      $16, %ebp
	subl      $16, %edi
	movl      4(%ebp), %eax
	movl      8(%ebp), %ebx
	movl      4(%edi), %ecx
	subl      %eax, %ebx
	movl      %ecx, 8(%edi)
	je        .L08060DB6
.L08060DD0:
	movl      12(%edi), %edx
	subl      %ecx, %edx
	cmpl      %edx, %ebx
	jl        .L08060DA0
.L08060DD9:
	movl      %eax, 12(%esp)
	subl      $8, %esp
	pushl     %ebx
	pushl     %edi
	call      _ZN7acommon6String9reserve_iEj
.L08060DE7:
	addl      $16, %esp
	movl      12(%esp), %eax
	jmp       .L08060DA0
.L08060DF0:
	movl      20(%esp), %ebx
	movl      32(%esp), %ebp
.L08060DF8:
	movl      16(%esp), %eax
	movl      28(%esp), %esi
	movl      24(%esp), %edi
	addl      %eax, %esi
	subl      %ebp, %edi
	cmpl      %esi, %eax
	jne       .L08060E2D
.L08060E0C:
	jmp       .L08060E58
.L08060E0E:
	.p2align 4,,10
	.p2align 3
.L08060E10:
	subl      $4, %esp
	pushl     %edi
	pushl     %ebp
	pushl     %eax
	call      memmove
.L08060E1B:
	movl      4(%ebx), %eax
	addl      $16, %esp
	addl      %edi, %eax
	movl      %eax, 8(%ebx)
.L08060E26:
	addl      $16, %ebx
	cmpl      %ebx, %esi
	je        .L08060E58
.L08060E2D:
	movl      4(%ebx), %eax
	testl     %edi, %edi
	movl      %eax, 8(%ebx)
	je        .L08060E26
.L08060E37:
	movl      12(%ebx), %edx
	subl      %eax, %edx
	cmpl      %edi, %edx
	jg        .L08060E10
.L08060E40:
	subl      $8, %esp
	pushl     %edi
	pushl     %ebx
	call      _ZN7acommon6String9reserve_iEj
.L08060E4A:
	movl      4(%ebx), %eax
	addl      $16, %esp
	jmp       .L08060E10
.L08060E52:
	.p2align 4,,10
	.p2align 3
.L08060E58:
	testl     %ebp, %ebp
	je        .L08060B9A
.L08060E60:
	movl      %ebp, 80(%esp)
	addl      $60, %esp
	popl      %ebx
	popl      %esi
	popl      %edi
	popl      %ebp
	jmp       free
.L08060E70:
	movl      16(%esp), %ebx
	subl      %esi, %ebx
	testl     %eax, %eax
	jne       .L08060EA9
.L08060E7A:
	movl      %edi, 24(%esp)
	movl      $0, 36(%esp)
	movl      $0, 32(%esp)
	jmp       .L08060957
.L08060E93:
	movl      32(%esp), %ebx
	jmp       .L08060A76
.L08060E9C:
	subl      $12, %esp
	pushl     $.LC08063E9F
	call      _ZSt20__throw_length_errorPKc
.L08060EA9:
	sall      $4, %eax
	movl      %eax, 36(%esp)
	jmp       .L0806092F
	.size	_ZNSt6vectorIN7acommon6StringESaIS1_EE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPS1_S3_EEjRKS1_, .-_ZNSt6vectorIN7acommon6StringESaIS1_EE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPS1_S3_EEjRKS1_
# ----------------------
.L08060EB5:
	.p2align 4
# ----------------------
	.weak	_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPP9ExpansionSt6vectorIS3_SaIS3_EEEENS0_5__ops14_Val_comp_iterI9WorkingLtEEEvT_T0_
	.type	_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPP9ExpansionSt6vectorIS3_SaIS3_EEEENS0_5__ops14_Val_comp_iterI9WorkingLtEEEvT_T0_, @function
_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPP9ExpansionSt6vectorIS3_SaIS3_EEEENS0_5__ops14_Val_comp_iterI9WorkingLtEEEvT_T0_:
	pushl     %ebp
	pushl     %edi
	pushl     %esi
	pushl     %ebx
	subl      $44, %esp
	movl      64(%esp), %eax
	movl      (%eax), %esi
	movl      %eax, 16(%esp)
	movl      20(%esi), %edx
	subl      12(%esi), %edx
	movl      %esi, 24(%esp)
	movl      %edx, 28(%esp)
	.p2align 4,,10
	.p2align 3
.L08060EE0:
	movl      16(%esp), %eax
	movl      28(%esp), %esi
	movl      -4(%eax), %eax
	movl      %eax, 12(%esp)
	movl      24(%esp), %eax
	movl      8(%eax), %ebx
	movl      16(%eax), %eax
	movl      %eax, 20(%esp)
	subl      %ebx, %eax
	leal      (%esi,%eax,8), %esi
	xorl      %eax, %eax
	testl     %esi, %esi
	je        .L08060F2C
.L08060F08:
	xorl      %ecx, %ecx
	.p2align 4,,10
	.p2align 3
.L08060F10:
	movl      %ecx, %edi
	movl      $1, %edx
	shrl      $5, %edi
	sall      %cl, %edx
	andl      (%ebx,%edi,4), %edx
	cmpl      $1, %edx
	sbbl      $-1, %eax
	addl      $1, %ecx
	cmpl      %esi, %ecx
	jne       .L08060F10
.L08060F2C:
	movl      12(%esp), %esi
	movl      8(%esi), %edi
	movl      20(%esi), %edx
	subl      12(%esi), %edx
	movl      16(%esi), %esi
	movl      %esi, %ecx
	movl      %esi, 20(%esp)
	subl      %edi, %ecx
	leal      (%edx,%ecx,8), %esi
	xorl      %edx, %edx
	testl     %esi, %esi
	je        .L08060F6C
.L08060F4D:
	xorl      %ecx, %ecx
	.p2align 4,,10
	.p2align 3
.L08060F50:
	movl      %ecx, %ebp
	movl      $1, %ebx
	shrl      $5, %ebp
	sall      %cl, %ebx
	andl      (%edi,%ebp,4), %ebx
	cmpl      $1, %ebx
	sbbl      $-1, %edx
	addl      $1, %ecx
	cmpl      %esi, %ecx
	jne       .L08060F50
.L08060F6C:
	cmpl      %eax, %edx
	je        .L08060F90
.L08060F70:
	setb      %al
.L08060F73:
	testb     %al, %al
	movl      16(%esp), %eax
	je        .L08060FED
.L08060F7B:
	movl      12(%esp), %esi
	subl      $4, %eax
	movl      %esi, 4(%eax)
	movl      %eax, 16(%esp)
	jmp       .L08060EE0
.L08060F8E:
	.p2align 4,,10
	.p2align 3
.L08060F90:
	movl      24(%esp), %eax
	subl      $12, %esp
	movl      (%eax), %edi
	pushl     %edi
	call      strlen
.L08060F9F:
	movl      %eax, %ebx
	movl      28(%esp), %eax
	movl      (%eax), %esi
	movl      %esi, (%esp)
	call      strlen
.L08060FAF:
	addl      $16, %esp
	cmpl      %eax, %ebx
	jne       .L08060F70
.L08060FB6:
	movl      24(%esp), %eax
	subl      $12, %esp
	movl      4(%eax), %ebx
	pushl     %ebx
	call      strlen
.L08060FC6:
	movl      28(%esp), %edx
	movl      %eax, 36(%esp)
	movl      4(%edx), %ebp
	movl      %ebp, (%esp)
	call      strlen
.L08060FD9:
	addl      $16, %esp
	cmpl      %eax, 20(%esp)
	je        .L08060FFB
.L08060FE2:
	seta      %al
	testb     %al, %al
	movl      16(%esp), %eax
	jne       .L08060F7B
.L08060FED:
	movl      24(%esp), %esi
	movl      %esi, (%eax)
	addl      $44, %esp
	popl      %ebx
	popl      %esi
	popl      %edi
	popl      %ebp
	ret       
.L08060FFB:
	subl      $8, %esp
	pushl     %esi
	pushl     %edi
	call      strcmp
.L08061005:
	addl      $16, %esp
	testl     %eax, %eax
	jne       .L08061019
.L0806100C:
	subl      $8, %esp
	pushl     %ebp
	pushl     %ebx
	call      strcmp
.L08061016:
	addl      $16, %esp
.L08061019:
	shrl      $31, %eax
	jmp       .L08060F73
	.size	_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPP9ExpansionSt6vectorIS3_SaIS3_EEEENS0_5__ops14_Val_comp_iterI9WorkingLtEEEvT_T0_, .-_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPP9ExpansionSt6vectorIS3_SaIS3_EEEENS0_5__ops14_Val_comp_iterI9WorkingLtEEEvT_T0_
# ----------------------
.L08061021:
	.p2align 4
# ----------------------
	.weak	_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPP9ExpansionSt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterI9WorkingLtEEEvT_SD_T0_
	.type	_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPP9ExpansionSt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterI9WorkingLtEEEvT_SD_T0_, @function
_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPP9ExpansionSt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterI9WorkingLtEEEvT_SD_T0_:
	pushl     %ebp
	pushl     %edi
	pushl     %esi
	pushl     %ebx
	subl      $28, %esp
	movl      48(%esp), %eax
	cmpl      %eax, 52(%esp)
	je        .L08061140
.L08061045:
	addl      $4, %eax
	cmpl      52(%esp), %eax
	je        .L08061140
.L08061052:
	movl      %eax, (%esp)
	.p2align 4,,10
	.p2align 3
.L08061058:
	movl      48(%esp), %eax
	movl      (%eax), %eax
	movl      %eax, 4(%esp)
	movl      (%esp), %eax
	movl      (%eax), %eax
	movl      %eax, %edx
	movl      8(%eax), %ebx
	movl      %eax, 8(%esp)
	movl      20(%eax), %eax
	subl      12(%edx), %eax
	movl      16(%edx), %edx
	movl      %edx, 12(%esp)
	subl      %ebx, %edx
	leal      (%eax,%edx,8), %esi
	xorl      %edx, %edx
	testl     %esi, %esi
	je        .L080610AC
.L08061088:
	xorl      %ecx, %ecx
	.p2align 4,,10
	.p2align 3
.L08061090:
	movl      %ecx, %edi
	movl      $1, %eax
	shrl      $5, %edi
	sall      %cl, %eax
	andl      (%ebx,%edi,4), %eax
	cmpl      $1, %eax
	sbbl      $-1, %edx
	addl      $1, %ecx
	cmpl      %esi, %ecx
	jne       .L08061090
.L080610AC:
	movl      4(%esp), %esi
	movl      8(%esi), %edi
	movl      20(%esi), %eax
	subl      12(%esi), %eax
	movl      16(%esi), %esi
	movl      %esi, %ecx
	movl      %esi, 12(%esp)
	subl      %edi, %ecx
	leal      (%eax,%ecx,8), %esi
	xorl      %eax, %eax
	testl     %esi, %esi
	je        .L080610EC
.L080610CD:
	xorl      %ecx, %ecx
	.p2align 4,,10
	.p2align 3
.L080610D0:
	movl      %ecx, %ebp
	movl      $1, %ebx
	shrl      $5, %ebp
	sall      %cl, %ebx
	andl      (%edi,%ebp,4), %ebx
	cmpl      $1, %ebx
	sbbl      $-1, %eax
	addl      $1, %ecx
	cmpl      %esi, %ecx
	jne       .L080610D0
.L080610EC:
	cmpl      %eax, %edx
	je        .L08061168
.L080610F0:
	seta      %al
.L080610F3:
	testb     %al, %al
	je        .L08061150
.L080610F7:
	movl      (%esp), %eax
	subl      48(%esp), %eax
	movl      %eax, %edx
	sarl      $2, %edx
	testl     %edx, %edx
	je        .L08061125
.L08061107:
	subl      $4, %esp
	movl      $4, %edx
	pushl     %eax
	subl      %eax, %edx
	pushl     56(%esp)
	movl      12(%esp), %eax
	addl      %edx, %eax
	pushl     %eax
	call      memmove
.L08061122:
	addl      $16, %esp
.L08061125:
	movl      48(%esp), %eax
	movl      8(%esp), %edx
	movl      %edx, (%eax)
.L0806112F:
	addl      $4, (%esp)
	movl      (%esp), %eax
	cmpl      %eax, 52(%esp)
	jne       .L08061058
.L08061140:
	addl      $28, %esp
	popl      %ebx
	popl      %esi
	popl      %edi
	popl      %ebp
	ret       
.L08061148:
	.p2align 4
.L08061150:
	subl      $8, %esp
	pushl     $0
	pushl     12(%esp)
	call      _ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPP9ExpansionSt6vectorIS3_SaIS3_EEEENS0_5__ops14_Val_comp_iterI9WorkingLtEEEvT_T0_
.L0806115E:
	addl      $16, %esp
	jmp       .L0806112F
.L08061163:
	.p2align 4,,10
	.p2align 3
.L08061168:
	movl      8(%esp), %eax
	subl      $12, %esp
	movl      (%eax), %edi
	pushl     %edi
	call      strlen
.L08061177:
	movl      %eax, %ebx
	movl      20(%esp), %eax
	movl      (%eax), %esi
	movl      %esi, (%esp)
	call      strlen
.L08061187:
	addl      $16, %esp
	cmpl      %eax, %ebx
	je        .L080611A0
.L0806118E:
	setb      %al
	jmp       .L080610F3
.L08061196:
	.p2align 4
.L080611A0:
	movl      8(%esp), %eax
	subl      $12, %esp
	movl      4(%eax), %ebx
	pushl     %ebx
	call      strlen
.L080611B0:
	movl      20(%esp), %edx
	movl      %eax, 28(%esp)
	movl      4(%edx), %ebp
	movl      %ebp, (%esp)
	call      strlen
.L080611C3:
	addl      $16, %esp
	cmpl      %eax, 12(%esp)
	jne       .L080610F0
.L080611D0:
	subl      $8, %esp
	pushl     %esi
	pushl     %edi
	call      strcmp
.L080611DA:
	addl      $16, %esp
	testl     %eax, %eax
	jne       .L080611EE
.L080611E1:
	subl      $8, %esp
	pushl     %ebp
	pushl     %ebx
	call      strcmp
.L080611EB:
	addl      $16, %esp
.L080611EE:
	shrl      $31, %eax
	jmp       .L080610F3
	.size	_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPP9ExpansionSt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterI9WorkingLtEEEvT_SD_T0_, .-_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPP9ExpansionSt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterI9WorkingLtEEEvT_SD_T0_
# ----------------------
.L080611F6:
	.p2align 4
# ----------------------
	.weak	_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPP9ExpansionSt6vectorIS3_SaIS3_EEEEiS3_NS0_5__ops15_Iter_comp_iterI9WorkingLtEEEvT_T0_SE_T1_T2_
	.type	_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPP9ExpansionSt6vectorIS3_SaIS3_EEEEiS3_NS0_5__ops15_Iter_comp_iterI9WorkingLtEEEvT_T0_SE_T1_T2_, @function
_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPP9ExpansionSt6vectorIS3_SaIS3_EEEEiS3_NS0_5__ops15_Iter_comp_iterI9WorkingLtEEEvT_T0_SE_T1_T2_:
	pushl     %ebp
	pushl     %edi
	pushl     %esi
	pushl     %ebx
	subl      $44, %esp
	movl      72(%esp), %eax
	subl      $1, %eax
	movl      %eax, %edx
	shrl      $31, %edx
	addl      %edx, %eax
	sarl      $1, %eax
	cmpl      %eax, 68(%esp)
	movl      %eax, 24(%esp)
	jge       .L080614CE
.L08061225:
	movl      68(%esp), %edi
	movl      64(%esp), %edx
	jmp       .L08061232
.L0806122F:
	.p2align 4,,10
	.p2align 3
.L08061230:
	movl      %esi, %edi
.L08061232:
	leal      1(%edi), %eax
	movl      %edx, 12(%esp)
	subl      $4, %esp
	leal      (%eax,%eax), %esi
	leal      (%edx,%eax,8), %ebx
	leal      -1(%esi), %ecx
	movl      (%ebx), %ebp
	movl      %ecx, 20(%esp)
	leal      (%edx,%ecx,4), %ecx
	movl      (%ecx), %eax
	movl      %ecx, 12(%esp)
	movl      %eax, 24(%esp)
	pushl     %eax
	pushl     %ebp
	leal      92(%esp), %eax
	pushl     %eax
	call      _ZN9WorkingLtclEP9ExpansionS1_
.L08061264:
	addl      $16, %esp
	testb     %al, %al
	movl      8(%esp), %ecx
	movl      12(%esp), %edx
	je        .L0806127D
.L08061273:
	movl      20(%esp), %ebp
	movl      16(%esp), %esi
	movl      %ecx, %ebx
.L0806127D:
	cmpl      24(%esp), %esi
	movl      %ebp, (%edx,%edi,4)
	jl        .L08061230
.L08061286:
	testb     $1, 72(%esp)
	movl      %esi, 8(%esp)
	jne       .L080612A7
.L08061291:
	movl      72(%esp), %eax
	subl      $2, %eax
	movl      %eax, %edx
	shrl      $31, %edx
	addl      %edx, %eax
	sarl      $1, %eax
	cmpl      %eax, 8(%esp)
	je        .L080612BF
.L080612A7:
	movl      8(%esp), %eax
	cmpl      68(%esp), %eax
	jg        .L080612E2
.L080612B1:
	movl      76(%esp), %eax
	movl      %eax, (%ebx)
	addl      $44, %esp
	popl      %ebx
	popl      %esi
	popl      %edi
	popl      %ebp
	ret       
.L080612BF:
	movl      8(%esp), %eax
	movl      64(%esp), %esi
	leal      1(%eax,%eax), %eax
	movl      %eax, 8(%esp)
	leal      (%esi,%eax,4), %eax
	movl      (%eax), %edx
	movl      %edx, (%ebx)
	movl      %eax, %ebx
	movl      8(%esp), %eax
	cmpl      68(%esp), %eax
	jle       .L080612B1
.L080612E2:
	subl      $1, %eax
	movl      76(%esp), %esi
	movl      %eax, %edx
	shrl      $31, %edx
	addl      %edx, %eax
	sarl      $1, %eax
	movl      %eax, 20(%esp)
	movl      76(%esp), %eax
	movl      20(%eax), %eax
	subl      12(%esi), %eax
	movl      %eax, 28(%esp)
.L08061304:
	movl      20(%esp), %esi
	movl      64(%esp), %eax
	leal      (%eax,%esi,4), %eax
	movl      %eax, 24(%esp)
	movl      (%eax), %eax
	movl      %eax, %esi
	movl      8(%eax), %ebx
	movl      %eax, 12(%esp)
	movl      20(%eax), %eax
	subl      12(%esi), %eax
	movl      16(%esi), %esi
	movl      %esi, %edx
	movl      %esi, 16(%esp)
	subl      %ebx, %edx
	leal      (%eax,%edx,8), %esi
	xorl      %eax, %eax
	testl     %esi, %esi
	je        .L08061405
.L0806133C:
	xorl      %ecx, %ecx
	.p2align 4,,10
	.p2align 3
.L08061340:
	movl      %ecx, %edi
	movl      $1, %edx
	shrl      $5, %edi
	sall      %cl, %edx
	andl      (%ebx,%edi,4), %edx
	cmpl      $1, %edx
	sbbl      $-1, %eax
	addl      $1, %ecx
	cmpl      %esi, %ecx
	jne       .L08061340
.L0806135C:
	movl      76(%esp), %esi
	movl      8(%esi), %edi
	movl      16(%esi), %esi
	movl      %esi, %edx
	movl      %esi, 16(%esp)
	movl      28(%esp), %esi
	subl      %edi, %edx
	leal      (%esi,%edx,8), %esi
	testl     %esi, %esi
	je        .L080614A1
.L0806137D:
	xorl      %edx, %edx
	xorl      %ecx, %ecx
	.p2align 4,,10
	.p2align 3
.L08061388:
	movl      %ecx, %ebp
	movl      $1, %ebx
	shrl      $5, %ebp
	sall      %cl, %ebx
	andl      (%edi,%ebp,4), %ebx
	cmpl      $1, %ebx
	sbbl      $-1, %edx
	addl      $1, %ecx
	cmpl      %esi, %ecx
	jne       .L08061388
.L080613A4:
	cmpl      %eax, %edx
	je        .L08061430
.L080613AC:
	setb      %al
.L080613AF:
	testb     %al, %al
	movl      8(%esp), %esi
	movl      64(%esp), %eax
	jne       .L080613D0
.L080613BB:
	leal      (%eax,%esi,4), %ebx
	movl      76(%esp), %eax
	movl      %eax, (%ebx)
	addl      $44, %esp
	popl      %ebx
	popl      %esi
	popl      %edi
	popl      %ebp
	ret       
.L080613CC:
	.p2align 4,,10
	.p2align 3
.L080613D0:
	movl      12(%esp), %edi
	movl      %edi, (%eax,%esi,4)
	movl      20(%esp), %esi
	movl      %esi, %eax
	subl      $1, %eax
	movl      %eax, %edx
	shrl      $31, %edx
	addl      %edx, %eax
	sarl      $1, %eax
	cmpl      %esi, 68(%esp)
	jl        .L08061490
.L080613F3:
	movl      24(%esp), %ebx
	movl      76(%esp), %eax
	movl      %eax, (%ebx)
	addl      $44, %esp
	popl      %ebx
	popl      %esi
	popl      %edi
	popl      %ebp
	ret       
.L08061405:
	movl      76(%esp), %esi
	movl      8(%esi), %edi
	movl      16(%esi), %esi
	movl      %esi, %edx
	movl      %esi, 16(%esp)
	movl      28(%esp), %esi
	subl      %edi, %edx
	leal      (%esi,%edx,8), %esi
	testl     %esi, %esi
	jne       .L0806137D
.L08061426:
	.p2align 4
.L08061430:
	movl      12(%esp), %eax
	subl      $12, %esp
	movl      (%eax), %ebx
	pushl     %ebx
	call      strlen
.L0806143F:
	movl      %eax, %edi
	movl      92(%esp), %eax
	movl      (%eax), %esi
	movl      %esi, (%esp)
	call      strlen
.L0806144F:
	addl      $16, %esp
	cmpl      %eax, %edi
	jne       .L080613AC
.L0806145A:
	movl      12(%esp), %eax
	subl      $12, %esp
	movl      4(%eax), %edi
	pushl     %edi
	call      strlen
.L0806146A:
	movl      92(%esp), %edx
	movl      %eax, 32(%esp)
	movl      4(%edx), %ebp
	movl      %ebp, (%esp)
	call      strlen
.L0806147D:
	addl      $16, %esp
	cmpl      %eax, 16(%esp)
	je        .L080614A8
.L08061486:
	seta      %al
	jmp       .L080613AF
.L0806148E:
	.p2align 4,,10
	.p2align 3
.L08061490:
	movl      20(%esp), %esi
	movl      %eax, 20(%esp)
	movl      %esi, 8(%esp)
	jmp       .L08061304
.L080614A1:
	xorl      %edx, %edx
	jmp       .L080613A4
.L080614A8:
	subl      $8, %esp
	pushl     %esi
	pushl     %ebx
	call      strcmp
.L080614B2:
	addl      $16, %esp
	testl     %eax, %eax
	jne       .L080614C6
.L080614B9:
	subl      $8, %esp
	pushl     %ebp
	pushl     %edi
	call      strcmp
.L080614C3:
	addl      $16, %esp
.L080614C6:
	shrl      $31, %eax
	jmp       .L080613AF
.L080614CE:
	testb     $1, 72(%esp)
	movl      64(%esp), %eax
	movl      68(%esp), %esi
	leal      (%eax,%esi,4), %ebx
	jne       .L080612B1
.L080614E4:
	movl      %esi, 8(%esp)
	jmp       .L08061291
	.size	_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPP9ExpansionSt6vectorIS3_SaIS3_EEEEiS3_NS0_5__ops15_Iter_comp_iterI9WorkingLtEEEvT_T0_SE_T1_T2_, .-_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPP9ExpansionSt6vectorIS3_SaIS3_EEEEiS3_NS0_5__ops15_Iter_comp_iterI9WorkingLtEEEvT_T0_SE_T1_T2_
# ----------------------
.L080614ED:
	.p2align 4,,10
	.p2align 3
# ----------------------
	.weak	_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPP9ExpansionSt6vectorIS3_SaIS3_EEEEiNS0_5__ops15_Iter_comp_iterI9WorkingLtEEEvT_SD_T0_T1_
	.type	_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPP9ExpansionSt6vectorIS3_SaIS3_EEEEiNS0_5__ops15_Iter_comp_iterI9WorkingLtEEEvT_SD_T0_T1_, @function
_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPP9ExpansionSt6vectorIS3_SaIS3_EEEEiNS0_5__ops15_Iter_comp_iterI9WorkingLtEEEvT_SD_T0_T1_:
	pushl     %ebp
	pushl     %edi
	pushl     %esi
	pushl     %ebx
	subl      $76, %esp
	movl      100(%esp), %eax
	movl      %eax, 28(%esp)
	movl      %eax, 40(%esp)
	subl      96(%esp), %eax
	cmpl      $67, %eax
	jle       .L08061847
.L08061510:
	movl      104(%esp), %ecx
	testl     %ecx, %ecx
	je        .L080617DA
.L0806151C:
	movl      96(%esp), %eax
	movl      $1, %esi
	addl      $4, %eax
	movl      %eax, 44(%esp)
.L0806152C:
	movl      40(%esp), %eax
	subl      96(%esp), %eax
	movl      96(%esp), %edi
	subl      $1, 104(%esp)
	subl      $4, %esp
	sarl      $2, %eax
	movl      %eax, %edx
	shrl      $31, %edx
	addl      %edx, %eax
	sarl      $1, %eax
	leal      (%edi,%eax,4), %edi
	movzbl    112(%esp), %eax
	movl      (%edi), %ebx
	movb      %al, 66(%esp)
	movl      100(%esp), %eax
	movl      4(%eax), %eax
	movl      %eax, 28(%esp)
	pushl     %ebx
	pushl     %eax
	leal      74(%esp), %eax
	pushl     %eax
	call      _ZN9WorkingLtclEP9ExpansionS1_
.L08061571:
	addl      $16, %esp
	testb     %al, %al
	movl      40(%esp), %eax
	movl      -4(%eax), %ebp
	je        .L0806184F
.L08061583:
	subl      $4, %esp
	pushl     %ebp
	pushl     %ebx
	leal      74(%esp), %ecx
	pushl     %ecx
	call      _ZN9WorkingLtclEP9ExpansionS1_
.L08061592:
	addl      $16, %esp
	testb     %al, %al
	je        .L0806188B
.L0806159D:
	movl      96(%esp), %edx
	movl      (%edx), %eax
	movl      %ebx, (%edx)
	movl      %edx, %ecx
	movl      %eax, (%edi)
	movl      (%edx), %edi
	movl      %edi, 24(%esp)
.L080615AF:
	movl      40(%esp), %eax
	movl      -4(%eax), %eax
	movl      %eax, 4(%esp)
	movl      4(%ecx), %eax
.L080615BD:
	movzbl    108(%esp), %ebx
	movl      40(%esp), %edi
	movl      44(%esp), %edx
	movl      %edi, 12(%esp)
	movb      %bl, 63(%esp)
.L080615D2:
	movl      %eax, %edi
	movl      24(%esp), %ebp
	jmp       .L080615E3
.L080615DA:
	.p2align 4,,10
	.p2align 3
.L080615E0:
	movl      4(%ebx), %edi
.L080615E3:
	subl      $4, %esp
	movl      %edx, %ebx
	pushl     %ebp
	pushl     %edi
	leal      75(%esp), %eax
	pushl     %eax
	call      _ZN9WorkingLtclEP9ExpansionS1_
.L080615F4:
	addl      $16, %esp
	testb     %al, %al
	leal      4(%ebx), %edx
	jne       .L080615E0
.L080615FE:
	movl      %edi, 36(%esp)
	movl      24(%esp), %edi
	movl      %ebx, 28(%esp)
	movl      8(%edi), %eax
	movl      %eax, %ebx
	movl      %eax, 20(%esp)
	movl      20(%edi), %eax
	subl      12(%edi), %eax
	movl      16(%edi), %edi
	movl      %edi, %edx
	subl      %ebx, %edx
	leal      (%eax,%edx,8), %eax
	movl      %eax, 16(%esp)
	movl      12(%esp), %eax
	subl      $4, %eax
	movl      %eax, (%esp)
	.p2align 4,,10
	.p2align 3
.L08061638:
	movl      (%esp), %eax
	xorl      %ebx, %ebx
	movl      %eax, 12(%esp)
	movl      16(%esp), %eax
	testl     %eax, %eax
	je        .L08061671
.L08061649:
	movl      20(%esp), %edx
	xorl      %ecx, %ecx
	movl      %eax, %edi
	.p2align 4,,10
	.p2align 3
.L08061658:
	movl      %ecx, %ebp
	movl      %esi, %eax
	shrl      $5, %ebp
	sall      %cl, %eax
	andl      (%edx,%ebp,4), %eax
	cmpl      $1, %eax
	sbbl      $-1, %ebx
	addl      $1, %ecx
	cmpl      %edi, %ecx
	jne       .L08061658
.L08061671:
	movl      4(%esp), %edx
	movl      8(%edx), %edi
	movl      20(%edx), %eax
	subl      12(%edx), %eax
	movl      16(%edx), %edx
	movl      %edx, 8(%esp)
	subl      %edi, %edx
	leal      (%eax,%edx,8), %eax
	testl     %eax, %eax
	movl      %eax, %edx
	movl      $0, %eax
	je        .L080616BD
.L08061695:
	movl      %ebx, 8(%esp)
	xorl      %ecx, %ecx
	movl      %edx, %ebx
	.p2align 4,,10
	.p2align 3
.L080616A0:
	movl      %ecx, %edx
	movl      %esi, %ebp
	shrl      $5, %edx
	sall      %cl, %ebp
	andl      (%edi,%edx,4), %ebp
	cmpl      $1, %ebp
	sbbl      $-1, %eax
	addl      $1, %ecx
	cmpl      %ebx, %ecx
	jne       .L080616A0
.L080616B9:
	movl      8(%esp), %ebx
.L080616BD:
	cmpl      %ebx, %eax
	je        .L080616E0
.L080616C1:
	setb      %al
.L080616C4:
	subl      $4, (%esp)
	testb     %al, %al
	je        .L08061741
.L080616CC:
	movl      (%esp), %eax
	movl      (%eax), %eax
	movl      %eax, 4(%esp)
	jmp       .L08061638
.L080616DA:
	.p2align 4,,10
	.p2align 3
.L080616E0:
	movl      24(%esp), %eax
	subl      $12, %esp
	movl      (%eax), %ebp
	pushl     %ebp
	call      strlen
.L080616EF:
	movl      %eax, %ebx
	movl      20(%esp), %eax
	movl      (%eax), %edi
	movl      %edi, (%esp)
	call      strlen
.L080616FF:
	addl      $16, %esp
	cmpl      %eax, %ebx
	jne       .L080616C1
.L08061706:
	movl      24(%esp), %eax
	subl      $12, %esp
	movl      4(%eax), %ebx
	pushl     %ebx
	call      strlen
.L08061716:
	movl      20(%esp), %ecx
	movl      %eax, 24(%esp)
	movl      4(%ecx), %ecx
	movl      %ecx, 48(%esp)
	movl      %ecx, (%esp)
	call      strlen
.L0806172D:
	addl      $16, %esp
	cmpl      %eax, 8(%esp)
	je        .L0806177B
.L08061736:
	seta      %al
	subl      $4, (%esp)
	testb     %al, %al
	jne       .L080616CC
.L08061741:
	movl      28(%esp), %edi
	cmpl      %edi, 12(%esp)
	jbe       .L080617A4
.L0806174B:
	movl      28(%esp), %eax
	movl      4(%esp), %ebx
	movl      12(%esp), %edi
	movl      %ebx, (%eax)
	movl      36(%esp), %ebx
	leal      4(%eax), %edx
	movl      %ebx, (%edi)
	movl      96(%esp), %ebx
	movl      -4(%edi), %edi
	movl      4(%eax), %eax
	movl      (%ebx), %ebx
	movl      %edi, 4(%esp)
	movl      %ebx, 24(%esp)
	jmp       .L080615D2
.L0806177B:
	subl      $8, %esp
	pushl     %edi
	pushl     %ebp
	call      strcmp
.L08061785:
	addl      $16, %esp
	testl     %eax, %eax
	jne       .L0806179C
.L0806178C:
	subl      $8, %esp
	pushl     40(%esp)
	pushl     %ebx
	call      strcmp
.L08061799:
	addl      $16, %esp
.L0806179C:
	shrl      $31, %eax
	jmp       .L080616C4
.L080617A4:
	movzbl    108(%esp), %eax
	pushl     %eax
	pushl     108(%esp)
	pushl     48(%esp)
	movl      40(%esp), %edi
	pushl     %edi
	call      _ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPP9ExpansionSt6vectorIS3_SaIS3_EEEEiNS0_5__ops15_Iter_comp_iterI9WorkingLtEEEvT_SD_T0_T1_
.L080617BC:
	movl      %edi, %eax
	subl      112(%esp), %eax
	movl      %edi, 56(%esp)
	addl      $16, %esp
	cmpl      $67, %eax
	jle       .L08061847
.L080617CE:
	movl      104(%esp), %edx
	testl     %edx, %edx
	jne       .L0806152C
.L080617DA:
	sarl      $2, %eax
	movl      96(%esp), %edi
	leal      -2(%eax), %ebx
	movl      %eax, %esi
	sarl      $1, %ebx
	jmp       .L080617F3
.L080617EA:
	.p2align 4,,10
	.p2align 3
.L080617F0:
	subl      $1, %ebx
.L080617F3:
	subl      $12, %esp
	movzbl    120(%esp), %eax
	pushl     %eax
	pushl     (%edi,%ebx,4)
	pushl     %esi
	pushl     %ebx
	pushl     %edi
	call      _ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPP9ExpansionSt6vectorIS3_SaIS3_EEEEiS3_NS0_5__ops15_Iter_comp_iterI9WorkingLtEEEvT_T0_SE_T1_T2_
.L08061807:
	addl      $32, %esp
	testl     %ebx, %ebx
	jne       .L080617F0
.L0806180E:
	movl      28(%esp), %ebx
	movl      96(%esp), %esi
	subl      $4, %ebx
.L08061819:
	subl      $12, %esp
	movl      (%ebx), %eax
	movl      (%esi), %edx
	movzbl    120(%esp), %ecx
	movl      %ebx, %edi
	subl      $4, %ebx
	subl      %esi, %edi
	movl      %edx, 4(%ebx)
	pushl     %ecx
	pushl     %eax
	movl      %edi, %eax
	sarl      $2, %eax
	pushl     %eax
	pushl     $0
	pushl     %esi
	call      _ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPP9ExpansionSt6vectorIS3_SaIS3_EEEEiS3_NS0_5__ops15_Iter_comp_iterI9WorkingLtEEEvT_T0_SE_T1_T2_
.L0806183F:
	addl      $32, %esp
	cmpl      $7, %edi
	jg        .L08061819
.L08061847:
	addl      $76, %esp
	popl      %ebx
	popl      %esi
	popl      %edi
	popl      %ebp
	ret       
.L0806184F:
	subl      $4, %esp
	pushl     %ebp
	pushl     32(%esp)
	leal      74(%esp), %edx
	pushl     %edx
	call      _ZN9WorkingLtclEP9ExpansionS1_
.L08061861:
	addl      $16, %esp
	testb     %al, %al
	je        .L080618EC
.L0806186C:
	movl      96(%esp), %ecx
	movl      24(%esp), %ebx
	movl      40(%esp), %edi
	movl      (%ecx), %eax
	movl      %ebx, (%ecx)
	movl      %eax, 4(%ecx)
	movl      -4(%edi), %edi
	movl      %edi, 4(%esp)
	jmp       .L080615BD
.L0806188B:
	subl      $4, %esp
	pushl     %ebp
	pushl     32(%esp)
	leal      74(%esp), %eax
	pushl     %eax
	call      _ZN9WorkingLtclEP9ExpansionS1_
.L0806189D:
	addl      $16, %esp
	testb     %al, %al
	movl      96(%esp), %eax
	jne       .L080618C7
.L080618A8:
	movl      96(%esp), %edi
	movl      (%eax), %eax
	movl      24(%esp), %ebx
	movl      %eax, 4(%edi)
	movl      %ebx, (%edi)
	movl      40(%esp), %edi
	movl      -4(%edi), %edi
	movl      %edi, 4(%esp)
	jmp       .L080615BD
.L080618C7:
	movl      (%eax), %edx
	movl      %ebp, (%eax)
	movl      40(%esp), %eax
	movl      %edx, 4(%esp)
	movl      %edx, -4(%eax)
	movl      96(%esp), %eax
	movl      (%eax), %eax
	movl      %eax, 24(%esp)
	movl      96(%esp), %eax
	movl      4(%eax), %eax
	jmp       .L080615BD
.L080618EC:
	subl      $4, %esp
	pushl     %ebp
	pushl     %ebx
	leal      74(%esp), %eax
	pushl     %eax
	call      _ZN9WorkingLtclEP9ExpansionS1_
.L080618FB:
	addl      $16, %esp
	testb     %al, %al
	movl      96(%esp), %eax
	jne       .L080618C7
.L08061906:
	movl      (%eax), %eax
	movl      96(%esp), %ecx
	movl      %ebx, (%ecx)
	movl      %eax, (%edi)
	movl      (%ecx), %eax
	movl      %eax, 24(%esp)
	jmp       .L080615AF
	.size	_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPP9ExpansionSt6vectorIS3_SaIS3_EEEEiNS0_5__ops15_Iter_comp_iterI9WorkingLtEEEvT_SD_T0_T1_, .-_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPP9ExpansionSt6vectorIS3_SaIS3_EEEEiNS0_5__ops15_Iter_comp_iterI9WorkingLtEEEvT_SD_T0_T1_
# ----------------------
.L0806191B:
	.p2align 4,,10
	.p2align 3
# ----------------------
	.weak	_ZSt6__sortIN9__gnu_cxx17__normal_iteratorIPP9ExpansionSt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterI9WorkingLtEEEvT_SD_T0_
	.type	_ZSt6__sortIN9__gnu_cxx17__normal_iteratorIPP9ExpansionSt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterI9WorkingLtEEEvT_SD_T0_, @function
_ZSt6__sortIN9__gnu_cxx17__normal_iteratorIPP9ExpansionSt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterI9WorkingLtEEEvT_SD_T0_:
	pushl     %ebp
	pushl     %edi
	pushl     %esi
	pushl     %ebx
	subl      $12, %esp
	movl      32(%esp), %edi
	movl      36(%esp), %esi
	movzbl    40(%esp), %ebp
	cmpl      %esi, %edi
	je        .L08061995
.L08061938:
	movl      %esi, %ebx
	movl      $31, %eax
	pushl     %ebp
	subl      %edi, %ebx
	movl      %ebx, %edx
	sarl      $2, %edx
	bsrl      %edx, %edx
	xorl      $31, %edx
	subl      %edx, %eax
	addl      %eax, %eax
	pushl     %eax
	pushl     %esi
	pushl     %edi
	call      _ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPP9ExpansionSt6vectorIS3_SaIS3_EEEEiNS0_5__ops15_Iter_comp_iterI9WorkingLtEEEvT_SD_T0_T1_
.L08061959:
	addl      $16, %esp
	cmpl      $67, %ebx
	jle       .L080619A0
.L08061961:
	leal      64(%edi), %ebx
	subl      $4, %esp
	pushl     %ebp
	pushl     %ebx
	pushl     %edi
	call      _ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPP9ExpansionSt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterI9WorkingLtEEEvT_SD_T0_
.L0806196F:
	addl      $16, %esp
	cmpl      %ebx, %esi
	je        .L08061995
.L08061976:
	.p2align 4
.L08061980:
	subl      $8, %esp
	pushl     $0
	pushl     %ebx
	addl      $4, %ebx
	call      _ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPP9ExpansionSt6vectorIS3_SaIS3_EEEENS0_5__ops14_Val_comp_iterI9WorkingLtEEEvT_T0_
.L0806198E:
	addl      $16, %esp
	cmpl      %ebx, %esi
	jne       .L08061980
.L08061995:
	addl      $12, %esp
	popl      %ebx
	popl      %esi
	popl      %edi
	popl      %ebp
	ret       
.L0806199D:
	.p2align 4,,10
	.p2align 3
.L080619A0:
	subl      $4, %esp
	pushl     %ebp
	pushl     %esi
	pushl     %edi
	call      _ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPP9ExpansionSt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterI9WorkingLtEEEvT_SD_T0_
.L080619AB:
	addl      $16, %esp
	addl      $12, %esp
	popl      %ebx
	popl      %esi
	popl      %edi
	popl      %ebp
	ret       
	.size	_ZSt6__sortIN9__gnu_cxx17__normal_iteratorIPP9ExpansionSt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterI9WorkingLtEEEvT_SD_T0_, .-_ZSt6__sortIN9__gnu_cxx17__normal_iteratorIPP9ExpansionSt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterI9WorkingLtEEEvT_SD_T0_
# ----------------------
.L080619B6:
	.p2align 4
# ----------------------
	.local	_ZL7cleanupv
	.type	_ZL7cleanupv, @function
_ZL7cleanupv:
	subl      $16, %esp
	pushl     $_ZL16saved_attributes
	pushl     $0
	pushl     $0
	call      tcsetattr
.L080619D1:
	addl      $28, %esp
	ret       
	.size	_ZL7cleanupv, .-_ZL7cleanupv
# ----------------------
.L080619D5:
	.p2align 4
# ----------------------
	.local	_ZL14print_truncateP8_IO_FILEPKci
	.type	_ZL14print_truncateP8_IO_FILEPKci, @function
_ZL14print_truncateP8_IO_FILEPKci:
	pushl     %ebp
	pushl     %edi
	movl      %eax, %edi
	pushl     %esi
	movl      %ecx, %eax
	pushl     %ebx
	subl      $1, %eax
	movl      %edx, %esi
	subl      $28, %esp
	testl     %eax, %eax
	movl      %ecx, 8(%esp)
	movl      %eax, 4(%esp)
	jle       .L08061ADF
.L08061A00:
	cmpb      $0, (%edx)
	je        .L08061AEB
.L08061A09:
	movl      %eax, 12(%esp)
	xorl      %ebx, %ebx
	jmp       .L08061A37
.L08061A11:
	.p2align 4,,10
	.p2align 3
.L08061A18:
	pushl     %edi
	pushl     $1
	addl      $1, %ebx
	pushl     %eax
	pushl     %esi
	call      fwrite
.L08061A25:
	addl      $16, %esp
	movl      %ebp, %eax
	addl      %eax, %esi
	cmpl      4(%esp), %ebx
	je        .L08061A72
.L08061A32:
	cmpb      $0, (%esi)
	je        .L08061A9F
.L08061A37:
	call      __ctype_get_mb_cur_max
.L08061A3C:
	subl      $8, %esp
	pushl     %eax
	pushl     %esi
	call      mblen
.L08061A46:
	addl      $16, %esp
	testl     %eax, %eax
	movl      %eax, %ebp
	jg        .L08061A18
.L08061A4F:
	subl      $8, %esp
	addl      $1, %ebx
	movl      $1, %ebp
	pushl     %edi
	pushl     $32
	call      _IO_putc
.L08061A62:
	addl      $16, %esp
	movl      $1, %eax
	addl      %eax, %esi
	cmpl      4(%esp), %ebx
	jne       .L08061A32
.L08061A72:
	movl      12(%esp), %eax
	movl      4(%esp), %edx
	cmpl      %edx, %eax
	movl      %eax, %ebx
	jne       .L08061A9F
.L08061A80:
	testl     %esi, %esi
	je        .L08061AEF
.L08061A84:
	cmpb      $0, (%esi,%ebp)
	je        .L08061AD0
.L08061A8A:
	subl      $8, %esp
	pushl     %edi
	pushl     $36
	call      _IO_putc
.L08061A95:
	addl      $16, %esp
.L08061A98:
	movl      12(%esp), %ebx
	addl      $1, %ebx
.L08061A9F:
	movl      8(%esp), %eax
	cmpl      %ebx, %eax
	jle       .L08061AC5
.L08061AA7:
	movl      %eax, %esi
	.p2align 4
.L08061AB0:
	subl      $8, %esp
	addl      $1, %ebx
	pushl     %edi
	pushl     $32
	call      _IO_putc
.L08061ABE:
	addl      $16, %esp
	cmpl      %esi, %ebx
	jne       .L08061AB0
.L08061AC5:
	addl      $28, %esp
	popl      %ebx
	popl      %esi
	popl      %edi
	popl      %ebp
	ret       
.L08061ACD:
	.p2align 4,,10
	.p2align 3
.L08061AD0:
	pushl     %edi
	pushl     $1
	pushl     %ebp
	pushl     %esi
	call      fwrite
.L08061ADA:
	addl      $16, %esp
	jmp       .L08061A98
.L08061ADF:
	xorl      %ebp, %ebp
	movl      $0, 12(%esp)
	jmp       .L08061A72
.L08061AEB:
	xorl      %ebx, %ebx
	jmp       .L08061A9F
.L08061AEF:
	subl      $8, %esp
	pushl     %edi
	pushl     $32
	call      _IO_putc
.L08061AFA:
	addl      $16, %esp
	jmp       .L08061A98
	.size	_ZL14print_truncateP8_IO_FILEPKci, .-_ZL14print_truncateP8_IO_FILEPKci
# ----------------------
.L08061AFF:
	.p2align 4,,10
	.p2align 3
# ----------------------
	.local	_ZL12display_menuP8_IO_FILEPKN7acommon6VectorI6ChoiceEEiRNS1_4ConvE.part.16.constprop.27
	.type	_ZL12display_menuP8_IO_FILEPKN7acommon6VectorI6ChoiceEEiRNS1_4ConvE.part.16.constprop.27, @function
_ZL12display_menuP8_IO_FILEPKN7acommon6VectorI6ChoiceEEiRNS1_4ConvE.part.16.constprop.27:
	pushl     %ebp
	pushl     %edi
	movl      %eax, %edi
	pushl     %esi
	pushl     %ebx
	movl      %ecx, %ebx
	leal      16(%ecx), %ecx
	subl      $28, %esp
	movl      (%edx), %esi
	cmpl      4(%edx), %esi
	movl      %ecx, 8(%esp)
	leal      4(%ebx), %ecx
	movl      %edx, 4(%esp)
	movl      %ecx, 12(%esp)
	jne       .L08061BB8
.L08061B28:
	jmp       .L08061CA8
.L08061B2D:
	.p2align 4,,10
	.p2align 3
.L08061B30:
	subl      $8, %esp
	pushl     %edi
	movsbl    8(%esi), %eax
	pushl     %eax
	call      _IO_putc
.L08061B3E:
	pushl     %edi
	pushl     $2
	pushl     $1
	pushl     $.LC08065684
	call      fwrite
.L08061B4D:
	movl      (%ebx), %ebp
	addl      $32, %esp
	movl      12(%esi), %edx
	testl     %ebp, %ebp
	je        .L08061B8E
.L08061B59:
	movl      20(%ebx), %eax
	movl      %eax, 24(%ebx)
	movl      28(%ebp), %eax
	testl     %eax, %eax
	je        .L08061CB0
.L08061B6A:
	movl      (%eax), %ecx
	pushl     8(%esp)
	pushl     $-1
	pushl     %edx
	pushl     %eax
	call      *4(%ecx)
.L08061B77:
	movl      20(%ebx), %edx
	addl      $16, %esp
	testl     %edx, %edx
	je        .L08061CE7
.L08061B85:
	movl      24(%ebx), %eax
	movb      $0, (%eax)
	movl      20(%ebx), %edx
.L08061B8E:
	movl      $36, %ecx
	movl      %edi, %eax
	addl      $16, %esi
	call      _ZL14print_truncateP8_IO_FILEPKci
.L08061B9D:
	subl      $8, %esp
	pushl     %edi
	pushl     $10
	call      _IO_putc
.L08061BA8:
	addl      $16, %esp
	movl      4(%esp), %eax
	cmpl      %esi, 4(%eax)
	je        .L08061CA8
.L08061BB8:
	subl      $8, %esp
	pushl     %edi
	movsbl    (%esi), %eax
	pushl     %eax
	call      _IO_putc
.L08061BC5:
	pushl     %edi
	pushl     $2
	pushl     $1
	pushl     $.LC08065684
	call      fwrite
.L08061BD4:
	movl      (%ebx), %ebp
	addl      $32, %esp
	movl      4(%esi), %edx
	testl     %ebp, %ebp
	je        .L08061C0D
.L08061BE0:
	movl      20(%ebx), %eax
	movl      %eax, 24(%ebx)
	movl      28(%ebp), %eax
	testl     %eax, %eax
	je        .L08061C40
.L08061BED:
	movl      (%eax), %ecx
	pushl     8(%esp)
	pushl     $-1
	pushl     %edx
	pushl     %eax
	call      *4(%ecx)
.L08061BFA:
	movl      20(%ebx), %ebp
	addl      $16, %esp
	testl     %ebp, %ebp
	je        .L08061C73
.L08061C04:
	movl      24(%ebx), %eax
	movb      $0, (%eax)
	movl      20(%ebx), %edx
.L08061C0D:
	movl      $36, %ecx
	movl      %edi, %eax
	call      _ZL14print_truncateP8_IO_FILEPKci
.L08061C19:
	subl      $8, %esp
	pushl     %edi
	pushl     $32
	call      _IO_putc
.L08061C24:
	movl      20(%esp), %eax
	leal      8(%esi), %edx
	addl      $16, %esp
	movl      4(%eax), %eax
	cmpl      %edx, %eax
	jne       .L08061B30
.L08061C39:
	movl      %eax, %esi
	jmp       .L08061B9D
.L08061C40:
	movl      4(%ebx), %eax
	movl      %eax, 8(%ebx)
	movl      8(%ebp), %eax
	movl      (%eax), %ecx
	pushl     12(%esp)
	pushl     $-1
	pushl     %edx
	pushl     %eax
	call      *12(%ecx)
.L08061C56:
	movl      20(%ebp), %eax
	movl      (%eax), %edx
	pushl     24(%esp)
	pushl     8(%ebx)
	pushl     4(%ebx)
	pushl     %eax
	call      *12(%edx)
.L08061C69:
	movl      20(%ebx), %ebp
	addl      $32, %esp
	testl     %ebp, %ebp
	jne       .L08061C04
.L08061C73:
	subl      $8, %esp
	pushl     $0
	movl      20(%esp), %ebp
	pushl     %ebp
	call      _ZN7acommon6String9reserve_iEj
.L08061C82:
	movl      20(%ebx), %ecx
	addl      $16, %esp
	testl     %ecx, %ecx
	jne       .L08061C04
.L08061C90:
	subl      $8, %esp
	pushl     $0
	pushl     %ebp
	call      _ZN7acommon6String9reserve_iEj
.L08061C9B:
	addl      $16, %esp
	jmp       .L08061C04
.L08061CA3:
	.p2align 4,,10
	.p2align 3
.L08061CA8:
	addl      $28, %esp
	popl      %ebx
	popl      %esi
	popl      %edi
	popl      %ebp
	ret       
.L08061CB0:
	movl      4(%ebx), %eax
	movl      %eax, 8(%ebx)
	movl      8(%ebp), %eax
	movl      (%eax), %ecx
	pushl     12(%esp)
	pushl     $-1
	pushl     %edx
	pushl     %eax
	call      *12(%ecx)
.L08061CC6:
	movl      20(%ebp), %eax
	movl      (%eax), %edx
	pushl     24(%esp)
	pushl     8(%ebx)
	pushl     4(%ebx)
	pushl     %eax
	call      *12(%edx)
.L08061CD9:
	movl      20(%ebx), %edx
	addl      $32, %esp
	testl     %edx, %edx
	jne       .L08061B85
.L08061CE7:
	subl      $8, %esp
	pushl     $0
	movl      20(%esp), %ebp
	pushl     %ebp
	call      _ZN7acommon6String9reserve_iEj
.L08061CF6:
	movl      20(%ebx), %eax
	addl      $16, %esp
	testl     %eax, %eax
	jne       .L08061B85
.L08061D04:
	subl      $8, %esp
	pushl     $0
	pushl     %ebp
	call      _ZN7acommon6String9reserve_iEj
.L08061D0F:
	addl      $16, %esp
	jmp       .L08061B85
	.size	_ZL12display_menuP8_IO_FILEPKN7acommon6VectorI6ChoiceEEiRNS1_4ConvE.part.16.constprop.27, .-_ZL12display_menuP8_IO_FILEPKN7acommon6VectorI6ChoiceEEiRNS1_4ConvE.part.16.constprop.27
# ----------------------
.L08061D17:
	.p2align 4
# ----------------------
	.globl	_Z11begin_checkv
	.type	_Z11begin_checkv, @function
_Z11begin_checkv:
	subl      $24, %esp
	pushl     $0
	call      isatty
.L08061D2A:
	addl      $16, %esp
	testl     %eax, %eax
	je        .L08061D8B
.L08061D31:
	subl      $8, %esp
	pushl     $_ZL16saved_attributes
	pushl     $0
	call      tcgetattr
.L08061D40:
	movl      $_ZL7cleanupv, (%esp)
	call      atexit
.L08061D4C:
	popl      %eax
	popl      %edx
	pushl     $_ZL14new_attributes
	pushl     $0
	call      tcgetattr
.L08061D5A:
	addl      $12, %esp
	andl      $-3, _ZL14new_attributes+12
	movb      $1, _ZL14new_attributes+23
	pushl     $_ZL14new_attributes
	pushl     $2
	pushl     $0
	movb      $0, _ZL14new_attributes+22
	movb      $0, _ZL14new_attributes+17
	call      tcsetattr
.L08061D87:
	addl      $28, %esp
	ret       
.L08061D8B:
	pushl     %ecx
	pushl     %ecx
	pushl     $.LC08065687
	pushl     $.LC08063D1D
	call      dgettext
.L08061D9C:
	movl      %eax, (%esp)
	call      puts
.L08061DA4:
	movl      $-1, (%esp)
	call      exit
	.size	_Z11begin_checkv, .-_Z11begin_checkv
# ----------------------
	.globl	_Z8get_lineRN7acommon6StringE
	.type	_Z8get_lineRN7acommon6StringE, @function
_Z8get_lineRN7acommon6StringE:
	pushl     %ebp
	pushl     %edi
	pushl     %esi
	pushl     %ebx
	subl      $32, %esp
	movl      52(%esp), %ebx
	pushl     $_ZL16saved_attributes
	pushl     $0
	pushl     $0
	call      tcsetattr
.L08061DC9:
	movl      4(%ebx), %edx
	movl      12(%ebx), %eax
	addl      $16, %esp
	subl      %edx, %eax
	testl     %eax, %eax
	jg        .L08061DE9
.L08061DD8:
	subl      $8, %esp
	pushl     $0
	pushl     %ebx
	call      _ZN7acommon6String9reserve_iEj
.L08061DE3:
	movl      4(%ebx), %edx
	addl      $16, %esp
.L08061DE9:
	movl      %edx, 8(%ebx)
	jmp       .L08061E24
.L08061DEE:
	.p2align 4,,10
	.p2align 3
.L08061DF0:
	movl      8(%ebx), %edx
	movl      4(%ebx), %esi
	movl      12(%ebx), %edi
	movl      %edx, %ecx
	subl      %esi, %ecx
	subl      %esi, %edi
	addl      $1, %ecx
	cmpl      %edi, %ecx
	jl        .L08061E1E
.L08061E06:
	movl      %eax, 12(%esp)
	subl      $8, %esp
	pushl     %ecx
	pushl     %ebx
	call      _ZN7acommon6String9reserve_iEj
.L08061E14:
	addl      $16, %esp
	movl      8(%ebx), %edx
	movl      12(%esp), %eax
.L08061E1E:
	movb      %al, (%edx)
	addl      $1, 8(%ebx)
.L08061E24:
	subl      $12, %esp
	pushl     stdin
	call      _IO_getc
.L08061E32:
	addl      $16, %esp
	cmpb      $10, %al
	jne       .L08061DF0
.L08061E39:
	subl      $4, %esp
	pushl     $_ZL14new_attributes
	pushl     $0
	pushl     $0
	call      tcsetattr
.L08061E4A:
	movl      uiconv, %esi
	addl      $16, %esp
	testl     %esi, %esi
	je        .L08061EF4
.L08061E5B:
	movl      4(%ebx), %ecx
	testl     %ecx, %ecx
	je        .L08061F4B
.L08061E66:
	movl      8(%ebx), %eax
	movb      $0, (%eax)
	movl      uiconv, %esi
	movl      4(%ebx), %edi
	testl     %esi, %esi
	je        .L08061EBB
.L08061E79:
	movl      uiconv+20, %eax
	movl      %eax, uiconv+24
	movl      28(%esi), %eax
	testl     %eax, %eax
	je        .L08061F0E
.L08061E8E:
	movl      (%eax), %edx
	pushl     $uiconv+16
	pushl     $-1
	pushl     %edi
	pushl     %eax
	call      *4(%edx)
.L08061E9C:
	addl      $16, %esp
.L08061E9F:
	movl      uiconv+20, %edx
	testl     %edx, %edx
	je        .L08061F55
.L08061EAD:
	movl      uiconv+24, %eax
	movb      $0, (%eax)
	movl      uiconv+20, %edi
.L08061EBB:
	testl     %edi, %edi
	je        .L08061EF4
.L08061EBF:
	subl      $12, %esp
	movl      4(%ebx), %ebp
	pushl     %edi
	call      strlen
.L08061ECB:
	addl      $16, %esp
	testl     %eax, %eax
	movl      %eax, %esi
	movl      %ebp, 8(%ebx)
	je        .L08061EF4
.L08061ED7:
	movl      12(%ebx), %eax
	subl      %ebp, %eax
	cmpl      %eax, %esi
	jge       .L08061EFC
.L08061EE0:
	subl      $4, %esp
	pushl     %esi
	pushl     %edi
	pushl     %ebp
	call      memmove
.L08061EEB:
	addl      4(%ebx), %esi
	addl      $16, %esp
	movl      %esi, 8(%ebx)
.L08061EF4:
	addl      $28, %esp
	popl      %ebx
	popl      %esi
	popl      %edi
	popl      %ebp
	ret       
.L08061EFC:
	subl      $8, %esp
	pushl     %esi
	pushl     %ebx
	call      _ZN7acommon6String9reserve_iEj
.L08061F06:
	movl      4(%ebx), %ebp
	addl      $16, %esp
	jmp       .L08061EE0
.L08061F0E:
	movl      uiconv+4, %eax
	movl      %eax, uiconv+8
	movl      8(%esi), %eax
	movl      (%eax), %edx
	pushl     $uiconv+4
	pushl     $-1
	pushl     %edi
	pushl     %eax
	call      *12(%edx)
.L08061F29:
	movl      20(%esi), %eax
	movl      (%eax), %edx
	pushl     $uiconv+16
	pushl     uiconv+8
	pushl     uiconv+4
	pushl     %eax
	call      *12(%edx)
.L08061F43:
	addl      $32, %esp
	jmp       .L08061E9F
.L08061F4B:
	movl      $.LC08063D11, %edi
	jmp       .L08061E79
.L08061F55:
	subl      $8, %esp
	pushl     $0
	pushl     $uiconv+16
	call      _ZN7acommon6String9reserve_iEj
.L08061F64:
	movl      uiconv+20, %eax
	addl      $16, %esp
	testl     %eax, %eax
	jne       .L08061EAD
.L08061F74:
	subl      $8, %esp
	pushl     $0
	pushl     $uiconv+16
	call      _ZN7acommon6String9reserve_iEj
.L08061F83:
	addl      $16, %esp
	jmp       .L08061EAD
	.size	_Z8get_lineRN7acommon6StringE, .-_Z8get_lineRN7acommon6StringE
# ----------------------
.L08061F8B:
	.p2align 4,,10
	.p2align 3
# ----------------------
	.globl	_Z10get_choiceRi
	.type	_Z10get_choiceRi, @function
_Z10get_choiceRi:
	subl      $32, %esp
	movl      $0, 16(%esp)
	pushl     $1
	leal      20(%esp), %eax
	pushl     %eax
	pushl     $0
	call      read
.L08061FA9:
	movl      28(%esp), %edx
	movl      48(%esp), %eax
	movl      %edx, (%eax)
	popl      %eax
	popl      %edx
	pushl     stdout
	pushl     $10
	call      _IO_putc
.L08061FC2:
	addl      $44, %esp
	ret       
	.size	_Z10get_choiceRi, .-_Z10get_choiceRi
# ----------------------
.L08061FC6:
	.p2align 4
# ----------------------
	.globl	_Z23display_misspelled_wordv
	.type	_Z23display_misspelled_wordv, @function
_Z23display_misspelled_wordv:
	pushl     %ebp
	pushl     %edi
	pushl     %esi
	pushl     %ebx
	subl      $12, %esp
	movl      state, %eax
	movl      (%eax), %edx
	movl      24(%eax), %ebx
	movl      28(%eax), %ebp
	movl      20(%edx), %esi
	movl      16(%edx), %eax
	movl      %ebx, %edx
	leal      (%ebx,%ebp), %edi
	addl      %eax, %esi
	subl      %edi, %esi
	subl      %eax, %edx
	jne       .L08062050
.L08061FF7:
	subl      $8, %esp
	pushl     stdout
	pushl     $42
	call      _IO_putc
.L08062007:
	pushl     stdout
	pushl     $1
	pushl     %ebp
	pushl     %ebx
	call      fwrite
.L08062016:
	addl      $24, %esp
	pushl     stdout
	pushl     $42
	call      _IO_putc
.L08062026:
	addl      $16, %esp
	testl     %esi, %esi
	je        .L0806203F
.L0806202D:
	pushl     stdout
	pushl     $1
	pushl     %esi
	pushl     %edi
	call      fwrite
.L0806203C:
	addl      $16, %esp
.L0806203F:
	addl      $12, %esp
	popl      %ebx
	popl      %esi
	popl      %edi
	popl      %ebp
	ret       
.L08062047:
	.p2align 4
.L08062050:
	pushl     stdout
	pushl     $1
	pushl     %edx
	pushl     %eax
	call      fwrite
.L0806205F:
	addl      $16, %esp
	jmp       .L08061FF7
	.size	_Z23display_misspelled_wordv, .-_Z23display_misspelled_wordv
# ----------------------
.L08062064:
	.p2align 4
# ----------------------
	.globl	_Z12display_menuv
	.type	_Z12display_menuv, @function
_Z12display_menuv:
	subl      $12, %esp
	movl      word_choices, %edx
	movl      stdout, %eax
	movl      $dconv, %ecx
	call      _ZL12display_menuP8_IO_FILEPKN7acommon6VectorI6ChoiceEEiRNS1_4ConvE.part.16.constprop.27
.L08062088:
	movl      menu_choices, %edx
	movl      stdout, %eax
	movl      $null_conv, %ecx
	addl      $12, %esp
	jmp       _ZL12display_menuP8_IO_FILEPKN7acommon6VectorI6ChoiceEEiRNS1_4ConvE.part.16.constprop.27
	.size	_Z12display_menuv, .-_Z12display_menuv
# ----------------------
	.globl	_Z6promptPKc
	.type	_Z6promptPKc, @function
_Z6promptPKc:
	subl      $20, %esp
	movl      24(%esp), %eax
	pushl     stdout
	pushl     %eax
	movl      %eax, last_prompt
	call      fputs
.L080620B8:
	movl      stdout, %eax
	movl      %eax, 32(%esp)
	addl      $28, %esp
	jmp       fflush
	.size	_Z6promptPKc, .-_Z6promptPKc
# ----------------------
.L080620C9:
	.p2align 4
# ----------------------
	.globl	_Z5errorPKc
	.type	_Z5errorPKc, @function
_Z5errorPKc:
	subl      $20, %esp
	pushl     stdout
	pushl     28(%esp)
	call      fputs
.L080620E2:
	popl      %eax
	popl      %edx
	pushl     stdout
	pushl     last_prompt
	call      fputs
.L080620F5:
	movl      stdout, %eax
	movl      %eax, 32(%esp)
	addl      $28, %esp
	jmp       fflush
	.size	_Z5errorPKc, .-_Z5errorPKc
# ----------------------
.L08062106:
	.p2align 4
# ----------------------
	.weak	_ZN7acommon8StackPtrINS_6VectorI6ChoiceEEED1Ev
	.type	_ZN7acommon8StackPtrINS_6VectorI6ChoiceEEED1Ev, @function
_ZN7acommon8StackPtrINS_6VectorI6ChoiceEEED1Ev:
	pushl     %ebx
	subl      $8, %esp
	movl      16(%esp), %eax
	movl      (%eax), %ebx
	testl     %ebx, %ebx
	je        .L08062140
.L0806211E:
	movl      (%ebx), %eax
	testl     %eax, %eax
	je        .L08062130
.L08062124:
	subl      $12, %esp
	pushl     %eax
	call      _ZdlPv
.L0806212D:
	addl      $16, %esp
.L08062130:
	movl      %ebx, 16(%esp)
	addl      $8, %esp
	popl      %ebx
	jmp       _ZdlPv
.L0806213D:
	.p2align 4,,10
	.p2align 3
.L08062140:
	addl      $8, %esp
	popl      %ebx
	ret       
	.size	_ZN7acommon8StackPtrINS_6VectorI6ChoiceEEED1Ev, .-_ZN7acommon8StackPtrINS_6VectorI6ChoiceEEED1Ev
# ----------------------
.L08062145:
	.p2align 4
# ----------------------
	.weak	_ZN7acommon8StackPtrI13CheckerStringED2Ev
	.type	_ZN7acommon8StackPtrI13CheckerStringED2Ev, @function
_ZN7acommon8StackPtrI13CheckerStringED2Ev:
	pushl     %ebx
	subl      $8, %esp
	movl      16(%esp), %eax
	movl      (%eax), %ebx
	testl     %ebx, %ebx
	je        .L08062178
.L0806215E:
	subl      $12, %esp
	pushl     %ebx
	call      _ZN13CheckerStringD1Ev
.L08062167:
	movl      %ebx, 32(%esp)
	addl      $24, %esp
	popl      %ebx
	jmp       _ZdlPv
.L08062174:
	.p2align 4,,10
	.p2align 3
.L08062178:
	addl      $8, %esp
	popl      %ebx
	ret       
	.size	_ZN7acommon8StackPtrI13CheckerStringED2Ev, .-_ZN7acommon8StackPtrI13CheckerStringED2Ev
# ----------------------
.L0806217D:
	.p2align 4,,10
	.p2align 3
# ----------------------
	.local	_ZL8get_lineP8_IO_FILERN13CheckerString4LineE
	.type	_ZL8get_lineP8_IO_FILERN13CheckerString4LineE, @function
_ZL8get_lineP8_IO_FILERN13CheckerString4LineE:
	pushl     %ebp
	pushl     %edi
	pushl     %esi
	pushl     %ebx
	movl      %eax, %esi
	movl      %edx, %ebx
	subl      $28, %esp
	movl      4(%edx), %eax
	movl      $.LC08063D11, 16(%edx)
	movl      $0, 20(%edx)
	movl      %eax, 8(%edx)
	movl      28(%edx), %eax
	movl      %eax, 32(%edx)
	jmp       .L080621EB
.L080621A7:
	.p2align 4
.L080621B0:
	movl      4(%ebx), %edi
	movl      12(%ebx), %ebp
	movl      %edx, %ecx
	subl      %edi, %ecx
	subl      %edi, %ebp
	addl      $1, %ecx
	cmpl      %ebp, %ecx
	jl        .L080621DB
.L080621C3:
	movl      %eax, 12(%esp)
	subl      $8, %esp
	pushl     %ecx
	pushl     %ebx
	call      _ZN7acommon6String9reserve_iEj
.L080621D1:
	addl      $16, %esp
	movl      8(%ebx), %edx
	movl      12(%esp), %eax
.L080621DB:
	movb      %al, (%edx)
	movl      8(%ebx), %edi
	cmpl      $10, %eax
	leal      1(%edi), %edx
	movl      %edx, 8(%ebx)
	je        .L080621FF
.L080621EB:
	subl      $12, %esp
	pushl     %esi
	call      _IO_getc
.L080621F4:
	addl      $16, %esp
	cmpl      $-1, %eax
	movl      8(%ebx), %edx
	jne       .L080621B0
.L080621FF:
	movl      dconv, %esi
	testl     %esi, %esi
	je        .L08062270
.L08062209:
	movl      4(%ebx), %eax
	movl      %edx, %ecx
	leal      24(%ebx), %edi
	subl      %eax, %ecx
	testl     %eax, %eax
	je        .L080622D0
.L0806221B:
	movb      $0, (%edx)
	movl      4(%ebx), %edx
	movl      dconv, %esi
.L08062227:
	movl      28(%esi), %eax
	testl     %eax, %eax
	je        .L08062298
.L0806222E:
	movl      (%eax), %esi
	pushl     %edi
	pushl     %ecx
	pushl     %edx
	pushl     %eax
	call      *4(%esi)
.L08062237:
	addl      $16, %esp
.L0806223A:
	movl      28(%ebx), %eax
	testl     %eax, %eax
	je        .L080622DA
.L08062245:
	movl      32(%ebx), %eax
	movb      $0, (%eax)
	movl      28(%ebx), %eax
	movl      %eax, %edx
.L08062250:
	movl      %eax, 16(%ebx)
	movl      32(%ebx), %eax
	subl      %edx, %eax
	movl      8(%ebx), %edx
	movl      %eax, 20(%ebx)
	movl      %edx, %eax
	subl      4(%ebx), %eax
	addl      $28, %esp
	popl      %ebx
	popl      %esi
	popl      %edi
	popl      %ebp
	ret       
.L0806226B:
	.p2align 4,,10
	.p2align 3
.L08062270:
	movl      4(%ebx), %ecx
	testl     %ecx, %ecx
	je        .L080622E6
.L08062277:
	movb      $0, (%edx)
	movl      4(%ebx), %eax
	movl      8(%ebx), %edx
	movl      %eax, %ecx
.L08062282:
	movl      %eax, 16(%ebx)
	movl      %edx, %eax
	subl      %ecx, %eax
	movl      %eax, 20(%ebx)
	addl      $28, %esp
	popl      %ebx
	popl      %esi
	popl      %edi
	popl      %ebp
	ret       
.L08062294:
	.p2align 4,,10
	.p2align 3
.L08062298:
	movl      dconv+4, %eax
	movl      %eax, dconv+8
	movl      8(%esi), %eax
	movl      (%eax), %ebp
	pushl     $dconv+4
	pushl     %ecx
	pushl     %edx
	pushl     %eax
	call      *12(%ebp)
.L080622B2:
	movl      20(%esi), %eax
	movl      (%eax), %edx
	pushl     %edi
	pushl     dconv+8
	pushl     dconv+4
	pushl     %eax
	call      *12(%edx)
.L080622C8:
	addl      $32, %esp
	jmp       .L0806223A
.L080622D0:
	movl      $.LC08063D11, %edx
	jmp       .L08062227
.L080622DA:
	xorl      %edx, %edx
	movl      $.LC08063D11, %eax
	jmp       .L08062250
.L080622E6:
	xorl      %ecx, %ecx
	movl      $.LC08063D11, %eax
	jmp       .L08062282
	.size	_ZL8get_lineP8_IO_FILERN13CheckerString4LineE, .-_ZL8get_lineP8_IO_FILERN13CheckerString4LineE
# ----------------------
.L080622EF:
	.p2align 4,,10
	.p2align 3
# ----------------------
	.globl	_ZN13CheckerString14read_next_lineEv
	.type	_ZN13CheckerString14read_next_lineEv, @function
_ZN13CheckerString14read_next_lineEv:
	pushl     %esi
	pushl     %ebx
	subl      $16, %esp
	movl      28(%esp), %ebx
	pushl     32(%ebx)
	call      feof
.L08062301:
	addl      $16, %esp
	testl     %eax, %eax
	jne       .L08062370
.L08062308:
	movl      52(%ebx), %edx
	leal      40(%edx), %esi
	cmpl      8(%ebx), %esi
	je        .L08062380
.L08062313:
	cmpl      %esi, (%ebx)
	je        .L08062370
.L08062317:
	movl      32(%ebx), %eax
	call      _ZL8get_lineP8_IO_FILERN13CheckerString4LineE
.L0806231F:
	testl     %eax, %eax
	je        .L08062370
.L08062323:
	movl      36(%ebx), %ecx
	movl      %esi, 52(%ebx)
	testl     %ecx, %ecx
	je        .L08062388
.L0806232D:
	movl      4(%esi), %edx
	movl      8(%esi), %eax
	cmpl      %edx, %eax
	je        .L0806234C
.L08062337:
	subl      %edx, %eax
	pushl     %ecx
	pushl     $1
	pushl     %eax
	pushl     %edx
	call      fwrite
.L08062343:
	movl      52(%ebx), %esi
	addl      $16, %esp
	movl      4(%esi), %eax
.L0806234C:
	movl      %eax, 8(%esi)
	movl      28(%esi), %eax
	movl      $.LC08063D11, 16(%esi)
	movl      $0, 20(%esi)
	movl      %eax, 32(%esi)
	addl      $4, %esp
	movl      $1, %eax
	popl      %ebx
	popl      %esi
	ret       
.L0806236E:
	.p2align 4,,10
	.p2align 3
.L08062370:
	addl      $4, %esp
	xorl      %eax, %eax
	popl      %ebx
	popl      %esi
	ret       
.L08062378:
	.p2align 4
.L08062380:
	movl      4(%ebx), %esi
	jmp       .L08062313
.L08062385:
	.p2align 4,,10
	.p2align 3
.L08062388:
	movl      4(%esi), %eax
	jmp       .L0806234C
	.size	_ZN13CheckerString14read_next_lineEv, .-_ZN13CheckerString14read_next_lineEv
# ----------------------
.L0806238D:
	.p2align 4,,10
	.p2align 3
# ----------------------
	.globl	_ZN13CheckerStringD1Ev
	.type	_ZN13CheckerStringD1Ev, @function
_ZN13CheckerStringD1Ev:
	pushl     %edi
	pushl     %esi
	pushl     %ebx
	movl      16(%esp), %esi
	movl      36(%esi), %eax
	testl     %eax, %eax
	je        .L080624E0
.L080623A2:
	movl      52(%esi), %ecx
	leal      40(%ecx), %eax
	cmpl      8(%esi), %eax
	je        .L080624D8
.L080623B1:
	movl      %eax, (%esi)
	jmp       .L080623C1
.L080623B5:
	.p2align 4,,10
	.p2align 3
.L080623B8:
	movl      52(%esi), %edx
	cmpl      %eax, %edx
	movl      %edx, %ecx
	je        .L08062418
.L080623C1:
	cmpl      %ecx, %eax
	je        .L08062430
.L080623C5:
	movl      4(%eax), %edx
	pushl     36(%esi)
	pushl     $1
	movl      8(%eax), %eax
	subl      %edx, %eax
	pushl     %eax
	pushl     %edx
	call      fwrite
.L080623D9:
	movl      (%esi), %eax
	addl      $16, %esp
	movl      4(%eax), %edx
	movl      $.LC08063D11, 16(%eax)
	movl      $0, 20(%eax)
	movl      %edx, 8(%eax)
	movl      28(%eax), %edx
	movl      %edx, 32(%eax)
	movl      (%esi), %eax
	addl      $40, %eax
	cmpl      8(%esi), %eax
	movl      %eax, (%esi)
	jne       .L080623B8
.L08062404:
	movl      4(%esi), %eax
	movl      52(%esi), %edx
	cmpl      %eax, %edx
	movl      %eax, (%esi)
	movl      %edx, %ecx
	jne       .L080623C1
.L08062412:
	.p2align 4,,10
	.p2align 3
.L08062418:
	subl      $12, %esp
	pushl     %esi
	call      _ZN13CheckerString14read_next_lineEv
.L08062421:
	movl      (%esi), %eax
	movl      52(%esi), %ecx
	addl      $16, %esp
	cmpl      %ecx, %eax
	jne       .L080623C5
.L0806242D:
	.p2align 4,,10
	.p2align 3
.L08062430:
	movl      32(%esi), %eax
	cmpl      stdin, %eax
	je        .L08062447
.L0806243B:
	subl      $12, %esp
	pushl     %eax
	call      fclose
.L08062444:
	addl      $16, %esp
.L08062447:
	movl      36(%esi), %eax
	testl     %eax, %eax
	je        .L08062462
.L0806244E:
	cmpl      stdout, %eax
	je        .L08062462
.L08062456:
	subl      $12, %esp
	pushl     %eax
	call      fclose
.L0806245F:
	addl      $16, %esp
.L08062462:
	movl      40(%esi), %eax
	testl     %eax, %eax
	je        .L08062475
.L08062469:
	subl      $12, %esp
	movl      (%eax), %edx
	pushl     %eax
	call      *4(%edx)
.L08062472:
	addl      $16, %esp
.L08062475:
	movl      8(%esi), %edi
	movl      4(%esi), %ebx
	cmpl      %ebx, %edi
	je        .L080624BD
.L0806247F:
	.p2align 4,,10
	.p2align 3
.L08062480:
	movl      28(%ebx), %eax
	movl      $_ZTVN7acommon6StringE+8, 24(%ebx)
	testl     %eax, %eax
	je        .L0806249A
.L0806248E:
	subl      $12, %esp
	pushl     %eax
	call      free
.L08062497:
	addl      $16, %esp
.L0806249A:
	movl      4(%ebx), %eax
	movl      $_ZTVN7acommon6StringE+8, (%ebx)
	testl     %eax, %eax
	je        .L080624B3
.L080624A7:
	subl      $12, %esp
	pushl     %eax
	call      free
.L080624B0:
	addl      $16, %esp
.L080624B3:
	addl      $40, %ebx
	cmpl      %ebx, %edi
	jne       .L08062480
.L080624BA:
	movl      4(%esi), %edi
.L080624BD:
	testl     %edi, %edi
	je        .L080624D0
.L080624C1:
	movl      %edi, 16(%esp)
	popl      %ebx
	popl      %esi
	popl      %edi
	jmp       _ZdlPv
.L080624CD:
	.p2align 4,,10
	.p2align 3
.L080624D0:
	popl      %ebx
	popl      %esi
	popl      %edi
	ret       
.L080624D4:
	.p2align 4,,10
	.p2align 3
.L080624D8:
	movl      4(%esi), %eax
	jmp       .L080623B1
.L080624E0:
	movl      32(%esi), %eax
	cmpl      stdin, %eax
	jne       .L0806243B
.L080624EF:
	jmp       .L08062462
	.size	_ZN13CheckerStringD1Ev, .-_ZN13CheckerStringD1Ev
# ----------------------
.L080624F4:
	.p2align 4
# ----------------------
	.globl	_ZN13CheckerString15fix_display_strEv
	.type	_ZN13CheckerString15fix_display_strEv, @function
_ZN13CheckerString15fix_display_strEv:
	pushl     %ebp
	pushl     %edi
	pushl     %esi
	pushl     %ebx
	subl      $28, %esp
	movl      dconv, %edi
	movl      48(%esp), %ebx
	testl     %edi, %edi
	movl      (%ebx), %eax
	je        .L080626C8
.L0806251B:
	movl      28(%eax), %edx
	movl      %edx, 32(%eax)
	movl      (%ebx), %esi
	movl      16(%ebx), %eax
	movl      4(%esi), %edx
	movl      %eax, %ecx
	subl      %edx, %ecx
	testl     %ecx, %ecx
	jle       .L08062556
.L08062531:
	movl      28(%edi), %eax
	addl      $24, %esi
	testl     %eax, %eax
	je        .L08062680
.L0806253F:
	movl      (%eax), %edi
	pushl     %esi
	pushl     %ecx
	pushl     %edx
	pushl     %eax
	call      *4(%edi)
.L08062548:
	movl      16(%ebx), %eax
	movl      dconv, %edi
	addl      $16, %esp
	movl      (%ebx), %esi
.L08062556:
	movl      32(%esi), %edx
	movl      28(%edi), %ecx
	addl      $24, %esi
	subl      4(%esi), %edx
	testl     %ecx, %ecx
	movl      %edx, 12(%esp)
	movl      20(%ebx), %edx
	je        .L08062600
.L08062571:
	movl      (%ecx), %edi
	pushl     %esi
	pushl     %edx
	pushl     %eax
	pushl     %ecx
	call      *4(%edi)
.L0806257A:
	addl      $16, %esp
.L0806257D:
	movl      (%ebx), %ebp
	movl      28(%ebp), %ecx
	movl      32(%ebp), %eax
	movl      8(%ebp), %edx
	subl      %ecx, %eax
	subl      12(%esp), %eax
	movl      %eax, 28(%ebx)
	movl      %edx, %eax
	subl      16(%ebx), %eax
	subl      20(%ebx), %eax
	testl     %eax, %eax
	jle       .L080625C4
.L0806259D:
	movl      dconv, %esi
	addl      $24, %ebp
	subl      %eax, %edx
	movl      28(%esi), %ecx
	testl     %ecx, %ecx
	je        .L08062640
.L080625B3:
	movl      (%ecx), %esi
	pushl     %ebp
	pushl     %eax
	pushl     %edx
	pushl     %ecx
	call      *4(%esi)
.L080625BC:
	movl      (%ebx), %ebp
	addl      $16, %esp
	movl      28(%ebp), %ecx
.L080625C4:
	testl     %ecx, %ecx
	movl      %ebp, %edx
	movl      $.LC08063D11, %eax
	je        .L080625DA
.L080625CF:
	movl      32(%ebp), %eax
	movb      $0, (%eax)
	movl      28(%ebp), %eax
	movl      (%ebx), %edx
.L080625DA:
	movl      %eax, 16(%ebp)
	movl      28(%edx), %eax
	movl      32(%edx), %ecx
	subl      %eax, %ecx
	addl      12(%esp), %eax
	movl      %ecx, 20(%edx)
	movl      %eax, 24(%ebx)
.L080625EF:
	addl      $28, %esp
	popl      %ebx
	popl      %esi
	popl      %edi
	popl      %ebp
	ret       
.L080625F7:
	.p2align 4
.L08062600:
	movl      dconv+4, %ecx
	movl      %ecx, dconv+8
	movl      8(%edi), %ecx
	movl      (%ecx), %ebp
	pushl     $dconv+4
	pushl     %edx
	pushl     %eax
	pushl     %ecx
	call      *12(%ebp)
.L0806261C:
	movl      20(%edi), %eax
	movl      (%eax), %edx
	pushl     %esi
	pushl     dconv+8
	pushl     dconv+4
	pushl     %eax
	call      *12(%edx)
.L08062632:
	addl      $32, %esp
	jmp       .L0806257D
.L0806263A:
	.p2align 4,,10
	.p2align 3
.L08062640:
	movl      dconv+4, %ecx
	movl      %ecx, dconv+8
	movl      8(%esi), %ecx
	movl      (%ecx), %edi
	pushl     $dconv+4
	pushl     %eax
	pushl     %edx
	pushl     %ecx
	call      *12(%edi)
.L0806265C:
	movl      20(%esi), %eax
	movl      (%eax), %edx
	pushl     %ebp
	pushl     dconv+8
	pushl     dconv+4
	pushl     %eax
	call      *12(%edx)
.L08062672:
	movl      (%ebx), %ebp
	addl      $32, %esp
	movl      28(%ebp), %ecx
	jmp       .L080625C4
.L0806267F:
	.p2align 4,,10
	.p2align 3
.L08062680:
	movl      dconv+4, %eax
	movl      %eax, dconv+8
	movl      8(%edi), %eax
	movl      (%eax), %ebp
	pushl     $dconv+4
	pushl     %ecx
	pushl     %edx
	pushl     %eax
	call      *12(%ebp)
.L0806269A:
	movl      20(%edi), %eax
	movl      (%eax), %edx
	pushl     %esi
	pushl     dconv+8
	pushl     dconv+4
	pushl     %eax
	call      *12(%edx)
.L080626B0:
	movl      16(%ebx), %eax
	movl      dconv, %edi
	addl      $32, %esp
	movl      (%ebx), %esi
	jmp       .L08062556
.L080626C3:
	.p2align 4,,10
	.p2align 3
.L080626C8:
	movl      4(%eax), %edx
	testl     %edx, %edx
	je        .L080626F7
.L080626CF:
	movl      8(%eax), %edx
	movb      $0, (%edx)
	movl      4(%eax), %ecx
	movl      (%ebx), %edx
.L080626DA:
	movl      %ecx, 16(%eax)
	movl      8(%edx), %eax
	subl      4(%edx), %eax
	movl      %eax, 20(%edx)
	movl      20(%ebx), %eax
	movl      %eax, 28(%ebx)
	movl      16(%ebx), %eax
	movl      %eax, 24(%ebx)
	jmp       .L080625EF
.L080626F7:
	movl      %eax, %edx
	movl      $.LC08063D11, %ecx
	jmp       .L080626DA
	.size	_ZN13CheckerString15fix_display_strEv, .-_ZN13CheckerString15fix_display_strEv
# ----------------------
	.globl	_ZN13CheckerString16next_misspellingEv
	.type	_ZN13CheckerString16next_misspellingEv, @function
_ZN13CheckerString16next_misspellingEv:
	pushl     %ebp
	pushl     %edi
	pushl     %esi
	pushl     %ebx
	subl      $28, %esp
	movl      48(%esp), %ebx
	movl      (%ebx), %eax
	cmpl      %eax, 52(%ebx)
	je        .L080627B2
.L08062716:
	movzbl    68(%ebx), %ebp
	movl      %ebp, %eax
	testb     %al, %al
	jne       .L080627C0
.L08062724:
	leal      8(%esp), %esi
	jmp       .L08062754
.L0806272A:
	.p2align 4,,10
	.p2align 3
.L08062730:
	cmpl      52(%ebx), %eax
	je        .L08062798
.L08062735:
	movl      $0, 56(%ebx)
.L0806273C:
	movl      4(%eax), %edx
	movl      8(%eax), %eax
	subl      $4, %esp
	subl      %edx, %eax
	pushl     %eax
	pushl     %edx
	pushl     40(%ebx)
	call      _ZN7acommon15DocumentChecker7processEPKci
.L08062751:
	addl      $16, %esp
.L08062754:
	subl      $8, %esp
	pushl     40(%ebx)
	pushl     %esi
	call      _ZN7acommon15DocumentChecker16next_misspellingEv
.L08062760:
	movl      20(%esp), %eax
	movl      24(%esp), %edx
	addl      $12, %esp
	movl      %eax, 60(%ebx)
	movl      %edx, 64(%ebx)
	movl      64(%ebx), %eax
	testl     %eax, %eax
	jne       .L08062818
.L0806277C:
	movl      (%ebx), %eax
	addl      $40, %eax
	cmpl      8(%ebx), %eax
	movl      %eax, (%ebx)
	jne       .L08062730
.L08062788:
	movl      4(%ebx), %eax
	cmpl      52(%ebx), %eax
	movl      %eax, (%ebx)
	jne       .L08062735
.L08062792:
	.p2align 4,,10
	.p2align 3
.L08062798:
	subl      $12, %esp
	pushl     %ebx
	call      _ZN13CheckerString14read_next_lineEv
.L080627A1:
	movl      (%ebx), %eax
	addl      $16, %esp
	cmpl      52(%ebx), %eax
	movl      $0, 56(%ebx)
	jne       .L0806273C
.L080627B2:
	addl      $28, %esp
	xorl      %ebp, %ebp
	popl      %ebx
	movl      %ebp, %eax
	popl      %esi
	popl      %edi
	popl      %ebp
	ret       
.L080627BE:
	.p2align 4,,10
	.p2align 3
.L080627C0:
	movl      16(%ebx), %edi
	movl      20(%ebx), %eax
	movb      $0, 68(%ebx)
	movl      %edi, 4(%esp)
	movl      %edi, %edx
	leal      (%edi,%eax), %esi
	xorl      %edi, %edi
	testl     %eax, %eax
	je        .L08062848
.L080627D9:
	.p2align 4
.L080627E0:
	movzbl    (%edx), %ecx
	cmpb      $32, %cl
	je        .L080627F0
.L080627E8:
	subl      $9, %ecx
	cmpb      $4, %cl
	ja        .L080627F5
.L080627F0:
	movl      $1, %edi
.L080627F5:
	addl      $1, %edx
	cmpl      %esi, %edx
	jne       .L080627E0
.L080627FC:
	movl      %edi, %ecx
	testb     %cl, %cl
	je        .L08062848
.L08062802:
	movl      56(%ebx), %edx
	addl      %eax, %edx
	subl      64(%ebx), %edx
	movl      %eax, 64(%ebx)
	movl      %edx, 56(%ebx)
	jmp       .L08062724
.L08062815:
	.p2align 4,,10
	.p2align 3
.L08062818:
	movl      (%ebx), %ecx
	movl      60(%ebx), %edx
	subl      $12, %esp
	addl      56(%ebx), %edx
	movl      $1, %ebp
	addl      4(%ecx), %edx
	movl      %eax, 20(%ebx)
	movl      %edx, 16(%ebx)
	pushl     %ebx
	call      _ZN13CheckerString15fix_display_strEv
.L08062837:
	addl      $16, %esp
	movl      %ebp, %eax
	addl      $28, %esp
	popl      %ebx
	popl      %esi
	popl      %edi
	popl      %ebp
	ret       
.L08062844:
	.p2align 4,,10
	.p2align 3
.L08062848:
	subl      $4, %esp
	pushl     %eax
	pushl     12(%esp)
	pushl     48(%ebx)
	call      aspell_speller_check
.L08062858:
	movl      20(%ebx), %ecx
	movl      56(%ebx), %edx
	addl      $16, %esp
	addl      %ecx, %edx
	subl      64(%ebx), %edx
	testl     %eax, %eax
	movl      %ecx, 64(%ebx)
	movl      %edx, 56(%ebx)
	jne       .L08062724
.L08062874:
	addl      $28, %esp
	movl      %ebp, %eax
	popl      %ebx
	popl      %esi
	popl      %edi
	popl      %ebp
	ret       
	.size	_ZN13CheckerString16next_misspellingEv, .-_ZN13CheckerString16next_misspellingEv
# ----------------------
.L0806287E:
	.p2align 4,,10
	.p2align 3
# ----------------------
	.globl	_ZN13CheckerString7replaceEN7acommon10ParmStringE
	.type	_ZN13CheckerString7replaceEN7acommon10ParmStringE, @function
_ZN13CheckerString7replaceEN7acommon10ParmStringE:
	pushl     %ebp
	pushl     %edi
	pushl     %esi
	pushl     %ebx
	subl      $28, %esp
	movl      48(%esp), %ebx
	movl      52(%esp), %eax
	movl      56(%esp), %esi
	movl      20(%ebx), %edi
	movl      %eax, 4(%esp)
	testl     %edi, %edi
	jle       .L08062A01
.L080628A2:
	movl      16(%ebx), %ebp
	movl      (%ebx), %eax
	movl      %ebp, %ecx
	subl      4(%eax), %ecx
	cmpl      $-1, %esi
	movl      %ecx, 8(%esp)
	je        .L080629C0
.L080628B9:
	subl      $12, %esp
	pushl     %esi
	pushl     20(%esp)
	pushl     %edi
	pushl     %ebp
	pushl     48(%ebx)
	call      aspell_speller_store_replacement
.L080628CB:
	addl      $32, %esp
.L080628CE:
	movl      (%ebx), %edi
	movl      16(%ebx), %ebp
	movl      20(%ebx), %ecx
	movl      8(%edi), %edx
	leal      (%ebp,%ecx), %eax
	cmpl      %edx, %eax
	jb        .L08062980
.L080628E5:
	cmpl      %ebp, %edx
	ja        .L08062960
.L080628E9:
	movl      %edx, 8(%edi)
.L080628EC:
	movl      4(%edi), %eax
	movl      %edx, %ecx
	subl      %eax, %ebp
	subl      %eax, %ecx
	movl      %ebp, 12(%esp)
	movl      12(%edi), %ebp
	addl      %esi, %ecx
	subl      %eax, %ebp
	cmpl      %ebp, %ecx
	jge       .L08062968
.L08062904:
	movl      12(%esp), %ebp
	addl      %eax, %ebp
	subl      %ebp, %edx
	je        .L08062920
.L0806290E:
	leal      (%ebp,%esi), %eax
	subl      $4, %esp
	pushl     %edx
	pushl     %ebp
	pushl     %eax
	call      memmove
.L0806291D:
	addl      $16, %esp
.L08062920:
	subl      $4, %esp
	pushl     %esi
	pushl     12(%esp)
	pushl     %ebp
	call      memcpy
.L0806292E:
	movl      (%ebx), %eax
	addl      %esi, 8(%edi)
	movl      24(%esp), %edi
	addl      $16, %esp
	addl      4(%eax), %edi
	cmpl      $-1, %esi
	movl      %edi, 16(%ebx)
	je        .L080629A8
.L08062945:
	subl      $12, %esp
	movl      %esi, 20(%ebx)
	pushl     %ebx
	call      _ZN13CheckerString15fix_display_strEv
.L08062951:
	addl      $16, %esp
	movb      $1, 68(%ebx)
	addl      $28, %esp
	popl      %ebx
	popl      %esi
	popl      %edi
	popl      %ebp
	ret       
.L08062960:
	movl      %ebp, %edx
	jmp       .L080628E9
.L08062964:
	.p2align 4,,10
	.p2align 3
.L08062968:
	subl      $8, %esp
	pushl     %ecx
	pushl     %edi
	call      _ZN7acommon6String9reserve_iEj
.L08062972:
	movl      4(%edi), %eax
	movl      8(%edi), %edx
	addl      $16, %esp
	jmp       .L08062904
.L0806297D:
	.p2align 4,,10
	.p2align 3
.L08062980:
	movl      %ecx, 12(%esp)
	subl      %eax, %edx
	subl      $4, %esp
	pushl     %edx
	pushl     %eax
	pushl     %ebp
	call      memmove
.L08062991:
	movl      8(%edi), %edx
	movl      28(%esp), %ecx
	addl      $16, %esp
	subl      %ecx, %edx
	movl      %edx, 8(%edi)
	jmp       .L080628EC
.L080629A5:
	.p2align 4,,10
	.p2align 3
.L080629A8:
	subl      $12, %esp
	pushl     16(%esp)
	call      strlen
.L080629B4:
	addl      $16, %esp
	movl      %eax, %esi
	jmp       .L08062945
.L080629BB:
	.p2align 4,,10
	.p2align 3
.L080629C0:
	subl      $12, %esp
	pushl     16(%esp)
	call      strlen
.L080629CC:
	movl      %eax, (%esp)
	pushl     20(%esp)
	movl      %eax, %esi
	pushl     %edi
	pushl     %ebp
	pushl     48(%ebx)
	call      aspell_speller_store_replacement
.L080629DF:
	addl      $32, %esp
	cmpl      $-1, %esi
	jne       .L080628CE
.L080629EB:
	subl      $12, %esp
	pushl     16(%esp)
	call      strlen
.L080629F7:
	addl      $16, %esp
	movl      %eax, %esi
	jmp       .L080628CE
.L08062A01:
	pushl     $_ZZN13CheckerString7replaceEN7acommon10ParmStringEE19__PRETTY_FUNCTION__
	pushl     $129
	pushl     $.LC080656A4
	pushl     $.LC080656BC
	call      __assert_fail
	.size	_ZN13CheckerString7replaceEN7acommon10ParmStringE, .-_ZN13CheckerString7replaceEN7acommon10ParmStringE
# ----------------------
.L08062A1A:
	.p2align 4,,10
	.p2align 3
# ----------------------
	.globl	_ZN13CheckerStringC1EP13AspellSpellerP8_IO_FILES3_i
	.type	_ZN13CheckerStringC1EP13AspellSpellerP8_IO_FILES3_i, @function
_ZN13CheckerStringC1EP13AspellSpellerP8_IO_FILES3_i:
	pushl     %ebp
	pushl     %edi
	pushl     %esi
	pushl     %ebx
	subl      $84, %esp
	movl      104(%esp), %esi
	movl      112(%esp), %eax
	movl      %eax, 32(%esi)
	movl      116(%esp), %eax
	movl      $0, (%esi)
	movl      $0, 4(%esi)
	movl      $0, 8(%esi)
	movl      $0, 12(%esi)
	movl      %eax, 36(%esi)
	movl      108(%esp), %eax
	movl      $0, 40(%esi)
	movl      $0, 52(%esi)
	movl      %eax, 48(%esi)
	leal      4(%esi), %eax
	movl      %eax, 20(%esp)
	movl      %eax, %ecx
	movl      120(%esp), %eax
	addl      $1, %eax
	pushl     %eax
	pushl     %ecx
	call      _ZNSt6vectorIN13CheckerString4LineESaIS1_EE7reserveEj
.L08062A80:
	addl      $16, %esp
	movl      112(%esp), %eax
	testl     %eax, %eax
	jle       .L08062B73
.L08062A8F:
	.p2align 4,,10
	.p2align 3
.L08062A90:
	movl      8(%esi), %ebx
	leal      24(%esp), %edi
	movl      4(%esi), %edx
	xorl      %eax, %eax
	movl      $10, %ecx
	rep stosl     
	movl      %ebx, %eax
	movl      $_ZTVN7acommon6StringE+8, 24(%esp)
	movl      $_ZTVN7acommon6StringE+8, 48(%esp)
	subl      %edx, %eax
	sarl      $3, %eax
	imull     $-858993459, %eax, %eax
	leal      1(%eax), %ecx
	cmpl      %eax, %ecx
	ja        .L08062CF8
.L08062ACB:
	jae       .L08062B3A
.L08062ACD:
	leal      (%ecx,%ecx,4), %eax
	leal      (%edx,%eax,8), %edi
	cmpl      %edi, %ebx
	je        .L08062D15
.L08062ADB:
	movl      %edi, %ebp
	.p2align 4,,10
	.p2align 3
.L08062AE0:
	movl      28(%ebp), %eax
	movl      $_ZTVN7acommon6StringE+8, 24(%ebp)
	testl     %eax, %eax
	je        .L08062AFA
.L08062AEE:
	subl      $12, %esp
	pushl     %eax
	call      free
.L08062AF7:
	addl      $16, %esp
.L08062AFA:
	movl      4(%ebp), %eax
	movl      $_ZTVN7acommon6StringE+8, (%ebp)
	testl     %eax, %eax
	je        .L08062B14
.L08062B08:
	subl      $12, %esp
	pushl     %eax
	call      free
.L08062B11:
	addl      $16, %esp
.L08062B14:
	addl      $40, %ebp
	cmpl      %ebp, %ebx
	jne       .L08062AE0
.L08062B1B:
	movl      52(%esp), %eax
.L08062B1F:
	movl      %edi, 8(%esi)
.L08062B22:
	testl     %eax, %eax
	movl      $_ZTVN7acommon6StringE+8, 48(%esp)
	je        .L08062B3A
.L08062B2E:
	subl      $12, %esp
	pushl     %eax
	call      free
.L08062B37:
	addl      $16, %esp
.L08062B3A:
	movl      28(%esp), %eax
	movl      $_ZTVN7acommon6StringE+8, 24(%esp)
	testl     %eax, %eax
	je        .L08062B56
.L08062B4A:
	subl      $12, %esp
	pushl     %eax
	call      free
.L08062B53:
	addl      $16, %esp
.L08062B56:
	movl      8(%esi), %eax
	leal      -40(%eax), %edx
	movl      32(%esi), %eax
	call      _ZL8get_lineP8_IO_FILERN13CheckerString4LineE
.L08062B64:
	testl     %eax, %eax
	je        .L08062B73
.L08062B68:
	subl      $1, 112(%esp)
	jne       .L08062A90
.L08062B73:
	movl      8(%esi), %ebx
	movl      -36(%ebx), %eax
	cmpl      %eax, -32(%ebx)
	je        .L08062C49
.L08062B82:
	leal      24(%esp), %edi
	movl      4(%esi), %edx
	xorl      %eax, %eax
	movl      $10, %ecx
	rep stosl     
	movl      %ebx, %eax
	movl      $_ZTVN7acommon6StringE+8, 24(%esp)
	movl      $_ZTVN7acommon6StringE+8, 48(%esp)
	subl      %edx, %eax
	sarl      $3, %eax
	imull     $-858993459, %eax, %eax
	leal      1(%eax), %ecx
	cmpl      %eax, %ecx
	ja        .L08062D2E
.L08062BBA:
	jae       .L08062C2A
.L08062BBC:
	leal      (%ecx,%ecx,4), %eax
	leal      (%edx,%eax,8), %edi
	cmpl      %edi, %ebx
	je        .L08062D4B
.L08062BCA:
	movl      %edi, %ebp
	.p2align 4,,10
	.p2align 3
.L08062BD0:
	movl      28(%ebp), %eax
	movl      $_ZTVN7acommon6StringE+8, 24(%ebp)
	testl     %eax, %eax
	je        .L08062BEA
.L08062BDE:
	subl      $12, %esp
	pushl     %eax
	call      free
.L08062BE7:
	addl      $16, %esp
.L08062BEA:
	movl      4(%ebp), %eax
	movl      $_ZTVN7acommon6StringE+8, (%ebp)
	testl     %eax, %eax
	je        .L08062C04
.L08062BF8:
	subl      $12, %esp
	pushl     %eax
	call      free
.L08062C01:
	addl      $16, %esp
.L08062C04:
	addl      $40, %ebp
	cmpl      %ebp, %ebx
	jne       .L08062BD0
.L08062C0B:
	movl      52(%esp), %eax
.L08062C0F:
	movl      %edi, 8(%esi)
.L08062C12:
	testl     %eax, %eax
	movl      $_ZTVN7acommon6StringE+8, 48(%esp)
	je        .L08062C2A
.L08062C1E:
	subl      $12, %esp
	pushl     %eax
	call      free
.L08062C27:
	addl      $16, %esp
.L08062C2A:
	movl      28(%esp), %eax
	movl      $_ZTVN7acommon6StringE+8, 24(%esp)
	testl     %eax, %eax
	je        .L08062C46
.L08062C3A:
	subl      $12, %esp
	pushl     %eax
	call      free
.L08062C43:
	addl      $16, %esp
.L08062C46:
	movl      8(%esi), %ebx
.L08062C49:
	movl      4(%esi), %eax
	subl      $8, %esp
	subl      $40, %ebx
	movl      %ebx, 52(%esi)
	movl      $0, 56(%esi)
	movb      $0, 68(%esi)
	movl      %eax, (%esi)
	pushl     108(%esp)
	leal      36(%esp), %eax
	pushl     %eax
	call      _ZN7acommon20new_document_checkerEPNS_7SpellerE
.L08062C70:
	movl      36(%esp), %eax
	addl      $12, %esp
	testl     %eax, %eax
	je        .L08062C91
.L08062C7B:
	cmpb      $0, 4(%eax)
	jne       .L08062C91
.L08062C81:
	subl      $12, %esp
	leal      36(%esp), %eax
	pushl     %eax
	call      _ZNK7acommon12PosibErrBase10handle_errEv
.L08062C8E:
	addl      $16, %esp
.L08062C91:
	movl      40(%esi), %eax
	movl      28(%esp), %ebx
	testl     %eax, %eax
	je        .L08062CA8
.L08062C9C:
	subl      $12, %esp
	movl      (%eax), %edx
	pushl     %eax
	call      *4(%edx)
.L08062CA5:
	addl      $16, %esp
.L08062CA8:
	movl      24(%esp), %edx
	movl      %ebx, 40(%esi)
	testl     %edx, %edx
	je        .L08062CCF
.L08062CB3:
	subl      $1, 8(%edx)
	jne       .L08062CCF
.L08062CB9:
	cmpb      $0, 4(%edx)
	je        .L08062D1C
.L08062CBF:
	subl      $12, %esp
	leal      36(%esp), %eax
	pushl     %eax
	call      _ZN7acommon12PosibErrBase3delEv
.L08062CCC:
	addl      $16, %esp
.L08062CCF:
	movl      (%esi), %eax
	movl      4(%eax), %edx
	movl      8(%eax), %eax
	cmpl      %edx, %eax
	je        .L08062CED
.L08062CDB:
	subl      $4, %esp
	subl      %edx, %eax
	pushl     %eax
	pushl     %edx
	pushl     40(%esi)
	call      _ZN7acommon15DocumentChecker7processEPKci
.L08062CEA:
	addl      $16, %esp
.L08062CED:
	addl      $76, %esp
	popl      %ebx
	popl      %esi
	popl      %edi
	popl      %ebp
	ret       
.L08062CF5:
	.p2align 4,,10
	.p2align 3
.L08062CF8:
	leal      24(%esp), %eax
	pushl     %eax
	pushl     $1
	pushl     %ebx
	pushl     24(%esp)
	call      _ZNSt6vectorIN13CheckerString4LineESaIS1_EE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPS1_S3_EEjRKS1_
.L08062D09:
	movl      68(%esp), %eax
	addl      $16, %esp
	jmp       .L08062B22
.L08062D15:
	xorl      %eax, %eax
	jmp       .L08062B1F
.L08062D1C:
	subl      $12, %esp
	leal      36(%esp), %eax
	pushl     %eax
	call      _ZNK7acommon12PosibErrBase10handle_errEv
.L08062D29:
	addl      $16, %esp
	jmp       .L08062CBF
.L08062D2E:
	leal      24(%esp), %eax
	pushl     %eax
	pushl     $1
	pushl     %ebx
	pushl     24(%esp)
	call      _ZNSt6vectorIN13CheckerString4LineESaIS1_EE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPS1_S3_EEjRKS1_
.L08062D3F:
	movl      68(%esp), %eax
	addl      $16, %esp
	jmp       .L08062C12
.L08062D4B:
	xorl      %eax, %eax
	jmp       .L08062C0F
	.size	_ZN13CheckerStringC1EP13AspellSpellerP8_IO_FILES3_i, .-_ZN13CheckerStringC1EP13AspellSpellerP8_IO_FILES3_i
# ----------------------
.L08062D52:
	.p2align 4
# ----------------------
	.weak	_ZNSt6vectorIN13CheckerString4LineESaIS1_EE7reserveEj
	.type	_ZNSt6vectorIN13CheckerString4LineESaIS1_EE7reserveEj, @function
_ZNSt6vectorIN13CheckerString4LineESaIS1_EE7reserveEj:
	pushl     %ebp
	pushl     %edi
	pushl     %esi
	pushl     %ebx
	subl      $28, %esp
	movl      52(%esp), %ecx
	movl      48(%esp), %ebp
	cmpl      $107374182, %ecx
	ja        .L08062F84
.L08062D7B:
	movl      (%ebp), %esi
	movl      8(%ebp), %eax
	subl      %esi, %eax
	sarl      $3, %eax
	imull     $-858993459, %eax, %eax
	cmpl      %eax, %ecx
	ja        .L08062DA0
.L08062D90:
	addl      $28, %esp
	popl      %ebx
	popl      %esi
	popl      %edi
	popl      %ebp
	ret       
.L08062D98:
	.p2align 4
.L08062DA0:
	movl      4(%ebp), %edx
	movl      %edx, %eax
	subl      %esi, %eax
	testl     %ecx, %ecx
	movl      %eax, 8(%esp)
	je        .L08062F70
.L08062DB3:
	leal      (%ecx,%ecx,4), %eax
	movl      %edx, 4(%esp)
	subl      $12, %esp
	sall      $3, %eax
	movl      %eax, 24(%esp)
	pushl     %eax
	call      _Znwj
.L08062DCA:
	movl      %eax, 16(%esp)
	addl      $16, %esp
	movl      4(%esp), %edx
.L08062DD5:
	cmpl      %edx, %esi
	movl      (%esp), %ebx
	je        .L08062EEC
.L08062DE0:
	movl      %edx, %edi
	movl      %ebp, 48(%esp)
	jmp       .L08062E49
.L08062DE8:
	.p2align 4
.L08062DF0:
	movl      $0, 4(%ebx)
	movl      $0, 8(%ebx)
	movl      $0, 12(%ebx)
.L08062E05:
	movl      16(%esi), %eax
	movl      20(%esi), %edx
	movl      $_ZTVN7acommon6StringE+8, 24(%ebx)
	movl      %eax, 16(%ebx)
	movl      %edx, 20(%ebx)
	movl      28(%esi), %ecx
	movl      32(%esi), %ebp
	subl      %ecx, %ebp
	je        .L08062E26
.L08062E22:
	testl     %ecx, %ecx
	jne       .L08062EA0
.L08062E26:
	movl      $0, 28(%ebx)
	movl      $0, 32(%ebx)
	movl      $0, 36(%ebx)
.L08062E3B:
	addl      $40, %esi
	addl      $40, %ebx
	cmpl      %esi, %edi
	je        .L08062EE8
.L08062E49:
	testl     %ebx, %ebx
	je        .L08062E3B
.L08062E4D:
	movl      $_ZTVN7acommon6StringE+8, (%ebx)
	movl      4(%esi), %ecx
	movl      8(%esi), %ebp
	subl      %ecx, %ebp
	je        .L08062DF0
.L08062E5D:
	testl     %ecx, %ecx
	je        .L08062DF0
.L08062E61:
	leal      1(%ebp), %eax
	movl      %ecx, 4(%esp)
	subl      $12, %esp
	pushl     %eax
	call      malloc
.L08062E71:
	addl      $12, %esp
	movl      %eax, 4(%ebx)
	pushl     %ebp
	movl      12(%esp), %ecx
	pushl     %ecx
	pushl     %eax
	call      memcpy
.L08062E83:
	movl      4(%ebx), %edx
	addl      $16, %esp
	addl      %ebp, %edx
	movl      %edx, 8(%ebx)
	addl      $1, %edx
	movl      %edx, 12(%ebx)
	jmp       .L08062E05
.L08062E99:
	.p2align 4
.L08062EA0:
	leal      1(%ebp), %eax
	movl      %ecx, 4(%esp)
	subl      $12, %esp
	addl      $40, %esi
	addl      $40, %ebx
	pushl     %eax
	call      malloc
.L08062EB6:
	addl      $12, %esp
	movl      %eax, -12(%ebx)
	pushl     %ebp
	movl      12(%esp), %ecx
	pushl     %ecx
	pushl     %eax
	call      memcpy
.L08062EC8:
	movl      -12(%ebx), %edx
	addl      $16, %esp
	addl      %ebp, %edx
	movl      %edx, -8(%ebx)
	addl      $1, %edx
	movl      %edx, -4(%ebx)
	cmpl      %esi, %edi
	jne       .L08062E49
.L08062EE1:
	.p2align 4,,10
	.p2align 3
.L08062EE8:
	movl      48(%esp), %ebp
.L08062EEC:
	movl      4(%ebp), %ebx
	movl      (%ebp), %esi
	cmpl      %esi, %ebx
	je        .L08062F3D
.L08062EF6:
	.p2align 4
.L08062F00:
	movl      28(%esi), %eax
	movl      $_ZTVN7acommon6StringE+8, 24(%esi)
	testl     %eax, %eax
	je        .L08062F1A
.L08062F0E:
	subl      $12, %esp
	pushl     %eax
	call      free
.L08062F17:
	addl      $16, %esp
.L08062F1A:
	movl      4(%esi), %eax
	movl      $_ZTVN7acommon6StringE+8, (%esi)
	testl     %eax, %eax
	je        .L08062F33
.L08062F27:
	subl      $12, %esp
	pushl     %eax
	call      free
.L08062F30:
	addl      $16, %esp
.L08062F33:
	addl      $40, %esi
	cmpl      %esi, %ebx
	jne       .L08062F00
.L08062F3A:
	movl      (%ebp), %ebx
.L08062F3D:
	testl     %ebx, %ebx
	je        .L08062F4D
.L08062F41:
	subl      $12, %esp
	pushl     %ebx
	call      _ZdlPv
.L08062F4A:
	addl      $16, %esp
.L08062F4D:
	movl      (%esp), %edi
	movl      8(%esp), %eax
	addl      %edi, %eax
	movl      %edi, (%ebp)
	movl      %eax, 4(%ebp)
	movl      12(%esp), %eax
	addl      %edi, %eax
	movl      %eax, 8(%ebp)
	addl      $28, %esp
	popl      %ebx
	popl      %esi
	popl      %edi
	popl      %ebp
	ret       
.L08062F6D:
	.p2align 4,,10
	.p2align 3
.L08062F70:
	movl      $0, 12(%esp)
	movl      $0, (%esp)
	jmp       .L08062DD5
.L08062F84:
	subl      $12, %esp
	pushl     $.LC08063E8F
	call      _ZSt20__throw_length_errorPKc
	.size	_ZNSt6vectorIN13CheckerString4LineESaIS1_EE7reserveEj, .-_ZNSt6vectorIN13CheckerString4LineESaIS1_EE7reserveEj
# ----------------------
.L08062F91:
	.p2align 4
# ----------------------
	.weak	_ZNSt6vectorIN13CheckerString4LineESaIS1_EE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPS1_S3_EEjRKS1_
	.type	_ZNSt6vectorIN13CheckerString4LineESaIS1_EE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPS1_S3_EEjRKS1_, @function
_ZNSt6vectorIN13CheckerString4LineESaIS1_EE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPS1_S3_EEjRKS1_:
	pushl     %ebp
	pushl     %edi
	pushl     %esi
	pushl     %ebx
	subl      $76, %esp
	movl      104(%esp), %esi
	movl      96(%esp), %eax
	movl      100(%esp), %edx
	movl      108(%esp), %edi
	testl     %esi, %esi
	movl      %eax, 16(%esp)
	movl      %edx, 24(%esp)
	je        .L08063180
.L08062FC7:
	movl      4(%eax), %ecx
	movl      8(%eax), %eax
	movl      %eax, 8(%esp)
	subl      %ecx, %eax
	sarl      $3, %eax
	imull     $-858993459, %eax, %eax
	cmpl      %eax, %esi
	jbe       .L08063190
.L08062FE4:
	movl      16(%esp), %eax
	movl      (%eax), %edx
	movl      %ecx, %eax
	movl      $107374182, %ecx
	subl      %edx, %eax
	sarl      $3, %eax
	imull     $-858993459, %eax, %eax
	subl      %eax, %ecx
	cmpl      %ecx, %esi
	ja        .L08063B7D
.L08063006:
	cmpl      %esi, %eax
	movl      %eax, %ecx
	jb        .L080635B0
.L08063010:
	addl      %ecx, %eax
	jb        .L0806301F
.L08063014:
	cmpl      $107374182, %eax
	jbe       .L08063B50
.L0806301F:
	movl      24(%esp), %ebx
	movl      $-16, 20(%esp)
	subl      %edx, %ebx
.L0806302D:
	subl      $12, %esp
	pushl     32(%esp)
	call      _Znwj
.L08063039:
	movl      %eax, 28(%esp)
	addl      $16, %esp
.L08063040:
	addl      12(%esp), %ebx
	movl      %esi, %ebp
	movl      %esi, 28(%esp)
	jmp       .L080630AB
.L0806304C:
	.p2align 4,,10
	.p2align 3
.L08063050:
	movl      $0, 4(%ebx)
	movl      $0, 8(%ebx)
	movl      $0, 12(%ebx)
.L08063065:
	movl      16(%edi), %eax
	movl      20(%edi), %edx
	movl      $_ZTVN7acommon6StringE+8, 24(%ebx)
	movl      28(%edi), %ecx
	movl      32(%edi), %esi
	movl      %eax, 16(%ebx)
	movl      %edx, 20(%ebx)
	subl      %ecx, %esi
	je        .L0806308A
.L08063082:
	testl     %ecx, %ecx
	jne       .L08063348
.L0806308A:
	movl      $0, 28(%ebx)
	movl      $0, 32(%ebx)
	movl      $0, 36(%ebx)
.L0806309F:
	addl      $40, %ebx
	subl      $1, %ebp
	je        .L08063387
.L080630AB:
	testl     %ebx, %ebx
	je        .L0806309F
.L080630AF:
	movl      $_ZTVN7acommon6StringE+8, (%ebx)
	movl      4(%edi), %ecx
	movl      8(%edi), %esi
	subl      %ecx, %esi
	je        .L08063050
.L080630BF:
	testl     %ecx, %ecx
	je        .L08063050
.L080630C3:
	leal      1(%esi), %eax
	movl      %ecx, 8(%esp)
	subl      $12, %esp
	pushl     %eax
	call      malloc
.L080630D3:
	addl      $12, %esp
	movl      %eax, 4(%ebx)
	pushl     %esi
	movl      16(%esp), %ecx
	pushl     %ecx
	pushl     %eax
	call      memcpy
.L080630E5:
	movl      4(%ebx), %edx
	addl      $16, %esp
	addl      %esi, %edx
	movl      %edx, 8(%ebx)
	addl      $1, %edx
	movl      %edx, 12(%ebx)
	jmp       .L08063065
.L080630FB:
	.p2align 4,,10
	.p2align 3
.L08063100:
	movl      16(%esp), %eax
	movl      4(%eax), %esi
.L08063107:
	movl      16(%esp), %eax
	movl      (%eax), %edi
	cmpl      %esi, %edi
	je        .L08063158
.L08063111:
	.p2align 4,,10
	.p2align 3
.L08063118:
	movl      28(%edi), %eax
	movl      $_ZTVN7acommon6StringE+8, 24(%edi)
	testl     %eax, %eax
	je        .L08063132
.L08063126:
	subl      $12, %esp
	pushl     %eax
	call      free
.L0806312F:
	addl      $16, %esp
.L08063132:
	movl      4(%edi), %eax
	movl      $_ZTVN7acommon6StringE+8, (%edi)
	testl     %eax, %eax
	je        .L0806314B
.L0806313F:
	subl      $12, %esp
	pushl     %eax
	call      free
.L08063148:
	addl      $16, %esp
.L0806314B:
	addl      $40, %edi
	cmpl      %esi, %edi
	jne       .L08063118
.L08063152:
	movl      16(%esp), %eax
	movl      (%eax), %esi
.L08063158:
	testl     %esi, %esi
	je        .L08063168
.L0806315C:
	subl      $12, %esp
	pushl     %esi
	call      _ZdlPv
.L08063165:
	addl      $16, %esp
.L08063168:
	movl      16(%esp), %eax
	movl      12(%esp), %ecx
	movl      %eax, %edx
	movl      %ecx, (%eax)
	movl      %ebx, 4(%eax)
	movl      20(%esp), %eax
	addl      %ecx, %eax
	movl      %eax, 8(%edx)
.L08063180:
	addl      $76, %esp
	popl      %ebx
	popl      %esi
	popl      %edi
	popl      %ebp
	ret       
.L08063188:
	.p2align 4
.L08063190:
	movl      %edx, %ebx
	movl      8(%edi), %ebp
	movl      4(%edi), %edx
	subl      %edx, %ebp
	je        .L080631E0
.L0806319C:
	testl     %edx, %edx
	je        .L080631E0
.L080631A0:
	leal      1(%ebp), %eax
	movl      %ecx, 12(%esp)
	movl      %edx, 8(%esp)
	subl      $12, %esp
	pushl     %eax
	call      malloc
.L080631B4:
	addl      $12, %esp
	pushl     %ebp
	movl      16(%esp), %edx
	pushl     %edx
	movl      %eax, 32(%esp)
	pushl     %eax
	call      memcpy
.L080631C7:
	addl      36(%esp), %ebp
	movl      %ebp, 44(%esp)
	addl      $16, %esp
	movl      12(%esp), %ecx
	jmp       .L080631F0
.L080631D8:
	.p2align 4
.L080631E0:
	movl      $0, 28(%esp)
	movl      $0, 20(%esp)
.L080631F0:
	movl      16(%edi), %eax
	movl      28(%edi), %ebp
	movl      %eax, 8(%esp)
	movl      20(%edi), %eax
	movl      32(%edi), %edi
	movl      %eax, 32(%esp)
	subl      %ebp, %edi
	je        .L08063240
.L08063208:
	testl     %ebp, %ebp
	je        .L08063240
.L0806320C:
	leal      1(%edi), %eax
	movl      %ecx, 40(%esp)
	subl      $12, %esp
	pushl     %eax
	call      malloc
.L0806321C:
	movl      %eax, 28(%esp)
	addl      $12, %esp
	pushl     %edi
	pushl     %ebp
	movl      %eax, %ebp
	pushl     %eax
	addl      %ebp, %edi
	call      memcpy
.L0806322F:
	movl      %edi, 52(%esp)
	addl      $16, %esp
	movl      40(%esp), %ecx
	jmp       .L08063250
.L0806323C:
	.p2align 4,,10
	.p2align 3
.L08063240:
	movl      $0, 36(%esp)
	movl      $0, 12(%esp)
.L08063250:
	movl      %ecx, %eax
	subl      24(%esp), %eax
	movl      %eax, 48(%esp)
	sarl      $3, %eax
	imull     $-858993459, %eax, %eax
	cmpl      %eax, %esi
	jae       .L080635C0
.L0806326B:
	leal      (%esi,%esi,4), %edi
	leal      0(,%edi,8), %eax
	movl      %ecx, %edi
	subl      %eax, %edi
	movl      %eax, 44(%esp)
	cmpl      %edi, %ecx
	je        .L08063B6F
.L08063285:
	movl      %edi, %ebp
	movl      %edi, 52(%esp)
	movl      %ecx, %esi
	movl      %ebx, 48(%esp)
	movl      %ecx, %edi
	jmp       .L080632F5
.L08063295:
	.p2align 4,,10
	.p2align 3
.L08063298:
	movl      $0, 4(%esi)
	movl      $0, 8(%esi)
	movl      $0, 12(%esi)
.L080632AD:
	movl      20(%ebp), %edx
	movl      16(%ebp), %eax
	movl      $_ZTVN7acommon6StringE+8, 24(%esi)
	movl      %eax, 16(%esi)
	movl      %edx, 20(%esi)
	movl      28(%ebp), %edx
	movl      32(%ebp), %ebx
	subl      %edx, %ebx
	je        .L080632D2
.L080632CA:
	testl     %edx, %edx
	jne       .L080636A0
.L080632D2:
	movl      $0, 28(%esi)
	movl      $0, 32(%esi)
	movl      $0, 36(%esi)
.L080632E7:
	addl      $40, %ebp
	addl      $40, %esi
	cmpl      %ebp, %edi
	je        .L080636DF
.L080632F5:
	testl     %esi, %esi
	je        .L080632E7
.L080632F9:
	movl      $_ZTVN7acommon6StringE+8, (%esi)
	movl      4(%ebp), %edx
	movl      8(%ebp), %ebx
	subl      %edx, %ebx
	je        .L08063298
.L08063309:
	testl     %edx, %edx
	je        .L08063298
.L0806330D:
	leal      1(%ebx), %eax
	movl      %edx, 40(%esp)
	subl      $12, %esp
	pushl     %eax
	call      malloc
.L0806331D:
	addl      $12, %esp
	movl      %eax, 4(%esi)
	pushl     %ebx
	movl      48(%esp), %edx
	pushl     %edx
	pushl     %eax
	call      memcpy
.L0806332F:
	addl      4(%esi), %ebx
	addl      $16, %esp
	movl      %ebx, 8(%esi)
	addl      $1, %ebx
	movl      %ebx, 12(%esi)
	jmp       .L080632AD
.L08063343:
	.p2align 4,,10
	.p2align 3
.L08063348:
	leal      1(%esi), %eax
	movl      %ecx, 8(%esp)
	subl      $12, %esp
	addl      $40, %ebx
	pushl     %eax
	call      malloc
.L0806335B:
	addl      $12, %esp
	movl      %eax, -12(%ebx)
	pushl     %esi
	movl      16(%esp), %ecx
	pushl     %ecx
	pushl     %eax
	call      memcpy
.L0806336D:
	movl      -12(%ebx), %edx
	addl      $16, %esp
	addl      %esi, %edx
	movl      %edx, -8(%ebx)
	addl      $1, %edx
	movl      %edx, -4(%ebx)
	subl      $1, %ebp
	jne       .L080630AB
.L08063387:
	movl      16(%esp), %eax
	movl      28(%esp), %esi
	movl      12(%esp), %ebx
	movl      (%eax), %edi
	movl      24(%esp), %eax
	cmpl      %edi, %eax
	je        .L080634A4
.L080633A1:
	movl      %eax, %ebp
	jmp       .L08063401
.L080633A5:
	.p2align 4,,10
	.p2align 3
.L080633A8:
	movl      $0, 4(%ebx)
	movl      $0, 8(%ebx)
	movl      $0, 12(%ebx)
.L080633BD:
	movl      16(%edi), %eax
	movl      20(%edi), %edx
	movl      $_ZTVN7acommon6StringE+8, 24(%ebx)
	movl      %eax, 16(%ebx)
	movl      %edx, 20(%ebx)
	movl      28(%edi), %ecx
	movl      32(%edi), %esi
	subl      %ecx, %esi
	je        .L080633DE
.L080633DA:
	testl     %ecx, %ecx
	jne       .L08063458
.L080633DE:
	movl      $0, 28(%ebx)
	movl      $0, 32(%ebx)
	movl      $0, 36(%ebx)
.L080633F3:
	addl      $40, %edi
	addl      $40, %ebx
	cmpl      %edi, %ebp
	je        .L080634A0
.L08063401:
	testl     %ebx, %ebx
	je        .L080633F3
.L08063405:
	movl      $_ZTVN7acommon6StringE+8, (%ebx)
	movl      4(%edi), %ecx
	movl      8(%edi), %esi
	subl      %ecx, %esi
	je        .L080633A8
.L08063415:
	testl     %ecx, %ecx
	je        .L080633A8
.L08063419:
	leal      1(%esi), %eax
	movl      %ecx, 8(%esp)
	subl      $12, %esp
	pushl     %eax
	call      malloc
.L08063429:
	addl      $12, %esp
	movl      %eax, 4(%ebx)
	pushl     %esi
	movl      16(%esp), %ecx
	pushl     %ecx
	pushl     %eax
	call      memcpy
.L0806343B:
	movl      4(%ebx), %edx
	addl      $16, %esp
	addl      %esi, %edx
	movl      %edx, 8(%ebx)
	addl      $1, %edx
	movl      %edx, 12(%ebx)
	jmp       .L080633BD
.L08063451:
	.p2align 4,,10
	.p2align 3
.L08063458:
	leal      1(%esi), %eax
	movl      %ecx, 8(%esp)
	subl      $12, %esp
	addl      $40, %edi
	addl      $40, %ebx
	pushl     %eax
	call      malloc
.L0806346E:
	addl      $12, %esp
	movl      %eax, -12(%ebx)
	pushl     %esi
	movl      16(%esp), %ecx
	pushl     %ecx
	pushl     %eax
	call      memcpy
.L08063480:
	movl      -12(%ebx), %edx
	addl      $16, %esp
	addl      %esi, %edx
	movl      %edx, -8(%ebx)
	addl      $1, %edx
	movl      %edx, -4(%ebx)
	cmpl      %edi, %ebp
	jne       .L08063401
.L08063499:
	.p2align 4
.L080634A0:
	movl      28(%esp), %esi
.L080634A4:
	leal      (%esi,%esi,4), %eax
	leal      (%ebx,%eax,8), %ebx
	movl      16(%esp), %eax
	movl      4(%eax), %esi
	movl      24(%esp), %eax
	cmpl      %esi, %eax
	je        .L08063107
.L080634BD:
	movl      %eax, %edi
	jmp       .L08063521
.L080634C1:
	.p2align 4,,10
	.p2align 3
.L080634C8:
	movl      $0, 4(%ebx)
	movl      $0, 8(%ebx)
	movl      $0, 12(%ebx)
.L080634DD:
	movl      20(%edi), %edx
	movl      16(%edi), %eax
	movl      $_ZTVN7acommon6StringE+8, 24(%ebx)
	movl      %eax, 16(%ebx)
	movl      %edx, 20(%ebx)
	movl      28(%edi), %edx
	movl      32(%edi), %ebp
	subl      %edx, %ebp
	je        .L080634FE
.L080634FA:
	testl     %edx, %edx
	jne       .L08063570
.L080634FE:
	movl      $0, 28(%ebx)
	movl      $0, 32(%ebx)
	movl      $0, 36(%ebx)
.L08063513:
	addl      $40, %edi
	addl      $40, %ebx
	cmpl      %edi, %esi
	je        .L08063100
.L08063521:
	testl     %ebx, %ebx
	je        .L08063513
.L08063525:
	movl      $_ZTVN7acommon6StringE+8, (%ebx)
	movl      4(%edi), %edx
	movl      8(%edi), %ebp
	subl      %edx, %ebp
	je        .L080634C8
.L08063535:
	testl     %edx, %edx
	je        .L080634C8
.L08063539:
	leal      1(%ebp), %eax
	movl      %edx, 8(%esp)
	subl      $12, %esp
	pushl     %eax
	call      malloc
.L08063549:
	addl      $12, %esp
	movl      %eax, 4(%ebx)
	pushl     %ebp
	movl      16(%esp), %edx
	pushl     %edx
	pushl     %eax
	call      memcpy
.L0806355B:
	addl      4(%ebx), %ebp
	addl      $16, %esp
	movl      %ebp, 8(%ebx)
	addl      $1, %ebp
	movl      %ebp, 12(%ebx)
	jmp       .L080634DD
.L0806356F:
	.p2align 4,,10
	.p2align 3
.L08063570:
	leal      1(%ebp), %eax
	movl      %edx, 8(%esp)
	subl      $12, %esp
	pushl     %eax
	call      malloc
.L08063580:
	addl      $12, %esp
	movl      %eax, 28(%ebx)
	pushl     %ebp
	movl      16(%esp), %edx
	pushl     %edx
	pushl     %eax
	call      memcpy
.L08063592:
	addl      28(%ebx), %ebp
	addl      $16, %esp
	movl      %ebp, 32(%ebx)
	addl      $1, %ebp
	movl      %ebp, 36(%ebx)
	jmp       .L08063513
.L080635A6:
	.p2align 4
.L080635B0:
	movl      %esi, %ecx
	jmp       .L08063010
.L080635B7:
	.p2align 4
.L080635C0:
	subl      %eax, %esi
	movl      %esi, 52(%esp)
	je        .L08063B76
.L080635CC:
	movl      36(%esp), %edx
	subl      12(%esp), %edx
	movl      %esi, %edi
	movl      %ebx, 56(%esp)
	movl      %ecx, %esi
	movl      20(%esp), %ebx
	movl      %ecx, 60(%esp)
	leal      1(%edx), %eax
	movl      %edx, %ebp
	movl      %eax, 44(%esp)
	jmp       .L0806364B
.L080635EF:
	.p2align 4,,10
	.p2align 3
.L080635F0:
	movl      $0, 4(%esi)
	movl      $0, 8(%esi)
	movl      $0, 12(%esi)
.L08063605:
	movl      8(%esp), %eax
	testl     %ebp, %ebp
	movl      $_ZTVN7acommon6StringE+8, 24(%esi)
	movl      %eax, 16(%esi)
	movl      32(%esp), %eax
	movl      %eax, 20(%esi)
	je        .L0806362A
.L0806361E:
	movl      12(%esp), %eax
	testl     %eax, %eax
	jne       .L080637C8
.L0806362A:
	movl      $0, 28(%esi)
	movl      $0, 32(%esi)
	movl      $0, 36(%esi)
.L0806363F:
	addl      $40, %esi
	subl      $1, %edi
	je        .L08063802
.L0806364B:
	testl     %esi, %esi
	je        .L0806363F
.L0806364F:
	movl      28(%esp), %ecx
	movl      $_ZTVN7acommon6StringE+8, (%esi)
	subl      %ebx, %ecx
	je        .L080635F0
.L0806365D:
	testl     %ebx, %ebx
	je        .L080635F0
.L08063661:
	leal      1(%ecx), %eax
	subl      $12, %esp
	movl      %ecx, 52(%esp)
	pushl     %eax
	call      malloc
.L08063671:
	addl      $12, %esp
	movl      44(%esp), %ecx
	movl      %eax, 4(%esi)
	pushl     %ecx
	movl      %ecx, 48(%esp)
	pushl     %ebx
	pushl     %eax
	call      memcpy
.L08063687:
	movl      56(%esp), %ecx
	addl      4(%esi), %ecx
	addl      $16, %esp
	movl      %ecx, 8(%esi)
	addl      $1, %ecx
	movl      %ecx, 12(%esi)
	jmp       .L08063605
.L0806369F:
	.p2align 4,,10
	.p2align 3
.L080636A0:
	leal      1(%ebx), %eax
	movl      %edx, 40(%esp)
	subl      $12, %esp
	addl      $40, %ebp
	addl      $40, %esi
	pushl     %eax
	call      malloc
.L080636B6:
	addl      $12, %esp
	movl      %eax, -12(%esi)
	pushl     %ebx
	movl      48(%esp), %edx
	pushl     %edx
	pushl     %eax
	call      memcpy
.L080636C8:
	addl      -12(%esi), %ebx
	addl      $16, %esp
	movl      %ebx, -8(%esi)
	addl      $1, %ebx
	movl      %ebx, -4(%esi)
	cmpl      %ebp, %edi
	jne       .L080632F5
.L080636DF:
	movl      16(%esp), %eax
	movl      %edi, %ecx
	movl      48(%esp), %ebx
	movl      52(%esp), %edi
	movl      4(%eax), %eax
.L080636F0:
	addl      44(%esp), %eax
	movl      16(%esp), %edx
	movl      %edi, %esi
	movl      %eax, 4(%edx)
	movl      %edi, %edx
	subl      24(%esp), %edx
	movl      %edx, %eax
	subl      %edx, %esi
	sarl      $3, %eax
	imull     $-858993459, %eax, %eax
	testl     %eax, %eax
	jle       .L08063A14
.L08063718:
	movl      %ebx, 40(%esp)
	movl      %ecx, %ebp
	jmp       .L08063783
.L08063720:
	subl      $4, %esp
	pushl     %ebx
	pushl     %eax
	pushl     4(%ebp)
	call      memmove
.L0806372D:
	movl      4(%ebp), %edx
	addl      $16, %esp
	addl      %ebx, %edx
	movl      %edx, 8(%ebp)
.L08063738:
	movl      16(%edi), %eax
	movl      20(%edi), %edx
	movl      28(%ebp), %ecx
	movl      %eax, 16(%ebp)
	movl      %edx, 20(%ebp)
	movl      28(%edi), %eax
	movl      32(%edi), %edx
	movl      %ecx, 32(%ebp)
	subl      %eax, %edx
	movl      %edx, %ebx
	je        .L0806377B
.L08063756:
	movl      36(%ebp), %edx
	subl      %ecx, %edx
	cmpl      %edx, %ebx
	jge       .L080639F0
.L08063763:
	subl      $4, %esp
	pushl     %ebx
	pushl     %eax
	pushl     28(%ebp)
	call      memmove
.L08063770:
	movl      28(%ebp), %edx
	addl      $16, %esp
	addl      %ebx, %edx
	movl      %edx, 32(%ebp)
.L0806377B:
	cmpl      %esi, %edi
	je        .L08063A10
.L08063783:
	subl      $40, %edi
	subl      $40, %ebp
	movl      4(%edi), %eax
	movl      8(%edi), %edx
	movl      4(%ebp), %ecx
	subl      %eax, %edx
	movl      %ecx, 8(%ebp)
	movl      %edx, %ebx
	je        .L08063738
.L0806379B:
	movl      12(%ebp), %edx
	subl      %ecx, %edx
	cmpl      %edx, %ebx
	jl        .L08063720
.L080637A8:
	movl      %eax, 16(%esp)
	subl      $8, %esp
	pushl     %ebx
	pushl     %ebp
	call      _ZN7acommon6String9reserve_iEj
.L080637B6:
	addl      $16, %esp
	movl      16(%esp), %eax
	jmp       .L08063720
.L080637C2:
	.p2align 4,,10
	.p2align 3
.L080637C8:
	subl      $12, %esp
	addl      $40, %esi
	pushl     56(%esp)
	call      malloc
.L080637D7:
	addl      $12, %esp
	movl      %eax, -12(%esi)
	pushl     %ebp
	pushl     20(%esp)
	pushl     %eax
	call      memcpy
.L080637E8:
	movl      -12(%esi), %eax
	addl      $16, %esp
	addl      %ebp, %eax
	movl      %eax, -8(%esi)
	addl      $1, %eax
	movl      %eax, -4(%esi)
	subl      $1, %edi
	jne       .L0806364B
.L08063802:
	movl      16(%esp), %eax
	movl      56(%esp), %ebx
	movl      60(%esp), %ecx
	movl      4(%eax), %eax
.L08063811:
	movl      52(%esp), %edx
	leal      (%edx,%edx,4), %edx
	leal      (%eax,%edx,8), %esi
	movl      16(%esp), %eax
	movl      %esi, 4(%eax)
	movl      24(%esp), %eax
	cmpl      %eax, %ecx
	je        .L08063ACC
.L0806382E:
	movl      %eax, %edi
	movl      %ebx, 40(%esp)
	movl      %ecx, %ebp
	jmp       .L08063899
.L08063838:
	.p2align 4
.L08063840:
	movl      $0, 4(%esi)
	movl      $0, 8(%esi)
	movl      $0, 12(%esi)
.L08063855:
	movl      16(%edi), %eax
	movl      20(%edi), %edx
	movl      $_ZTVN7acommon6StringE+8, 24(%esi)
	movl      %eax, 16(%esi)
	movl      %edx, 20(%esi)
	movl      28(%edi), %ecx
	movl      32(%edi), %ebx
	subl      %ecx, %ebx
	je        .L08063876
.L08063872:
	testl     %ecx, %ecx
	jne       .L080638F0
.L08063876:
	movl      $0, 28(%esi)
	movl      $0, 32(%esi)
	movl      $0, 36(%esi)
.L0806388B:
	addl      $40, %edi
	addl      $40, %esi
	cmpl      %edi, %ebp
	je        .L08063938
.L08063899:
	testl     %esi, %esi
	je        .L0806388B
.L0806389D:
	movl      $_ZTVN7acommon6StringE+8, (%esi)
	movl      4(%edi), %ecx
	movl      8(%edi), %ebx
	subl      %ecx, %ebx
	je        .L08063840
.L080638AD:
	testl     %ecx, %ecx
	je        .L08063840
.L080638B1:
	leal      1(%ebx), %eax
	movl      %ecx, 24(%esp)
	subl      $12, %esp
	pushl     %eax
	call      malloc
.L080638C1:
	addl      $12, %esp
	movl      %eax, 4(%esi)
	pushl     %ebx
	movl      32(%esp), %ecx
	pushl     %ecx
	pushl     %eax
	call      memcpy
.L080638D3:
	movl      4(%esi), %edx
	addl      $16, %esp
	addl      %ebx, %edx
	movl      %edx, 8(%esi)
	addl      $1, %edx
	movl      %edx, 12(%esi)
	jmp       .L08063855
.L080638E9:
	.p2align 4
.L080638F0:
	leal      1(%ebx), %eax
	movl      %ecx, 24(%esp)
	subl      $12, %esp
	addl      $40, %edi
	addl      $40, %esi
	pushl     %eax
	call      malloc
.L08063906:
	addl      $12, %esp
	movl      %eax, -12(%esi)
	pushl     %ebx
	movl      32(%esp), %ecx
	pushl     %ecx
	pushl     %eax
	call      memcpy
.L08063918:
	movl      -12(%esi), %edx
	addl      $16, %esp
	addl      %ebx, %edx
	movl      %edx, -8(%esi)
	addl      $1, %edx
	movl      %edx, -4(%esi)
	cmpl      %edi, %ebp
	jne       .L08063899
.L08063931:
	.p2align 4,,10
	.p2align 3
.L08063938:
	movl      40(%esp), %ebx
	movl      16(%esp), %eax
	movl      %ebp, %ecx
	movl      48(%esp), %edx
	movl      28(%esp), %ebp
	movl      36(%esp), %esi
	subl      20(%esp), %ebp
	movl      %ebx, %edi
	addl      %edx, 4(%eax)
	subl      12(%esp), %esi
	movl      %ecx, 16(%esp)
	movl      32(%esp), %ebx
	jmp       .L080639C8
.L08063965:
	.p2align 4,,10
	.p2align 3
.L08063968:
	subl      $4, %esp
	pushl     %ebp
	pushl     28(%esp)
	pushl     %eax
	call      memmove
.L08063976:
	movl      4(%edi), %eax
	addl      $16, %esp
	addl      %ebp, %eax
	movl      %eax, 8(%edi)
.L08063981:
	movl      8(%esp), %eax
	testl     %esi, %esi
	movl      %ebx, 20(%edi)
	movl      %eax, 16(%edi)
	movl      28(%edi), %eax
	movl      %eax, 32(%edi)
	je        .L080639BB
.L08063995:
	movl      36(%edi), %ecx
	subl      %eax, %ecx
	cmpl      %ecx, %esi
	jge       .L08063B30
.L080639A2:
	subl      $4, %esp
	pushl     %esi
	pushl     20(%esp)
	pushl     %eax
	call      memmove
.L080639B0:
	movl      28(%edi), %eax
	addl      $16, %esp
	addl      %esi, %eax
	movl      %eax, 32(%edi)
.L080639BB:
	addl      $40, %edi
	cmpl      %edi, 16(%esp)
	je        .L08063AE0
.L080639C8:
	movl      4(%edi), %eax
	testl     %ebp, %ebp
	movl      %eax, 8(%edi)
	je        .L08063981
.L080639D2:
	movl      12(%edi), %ecx
	subl      %eax, %ecx
	cmpl      %ecx, %ebp
	jl        .L08063968
.L080639DB:
	subl      $8, %esp
	pushl     %ebp
	pushl     %edi
	call      _ZN7acommon6String9reserve_iEj
.L080639E5:
	movl      4(%edi), %eax
	addl      $16, %esp
	jmp       .L08063968
.L080639F0:
	leal      24(%ebp), %ecx
	movl      %eax, 16(%esp)
	subl      $8, %esp
	pushl     %ebx
	pushl     %ecx
	call      _ZN7acommon6String9reserve_iEj
.L08063A01:
	addl      $16, %esp
	movl      16(%esp), %eax
	jmp       .L08063763
.L08063A0D:
	.p2align 4,,10
	.p2align 3
.L08063A10:
	movl      40(%esp), %ebx
.L08063A14:
	movl      24(%esp), %eax
	movl      44(%esp), %edi
	movl      28(%esp), %ebp
	movl      36(%esp), %esi
	subl      20(%esp), %ebp
	subl      12(%esp), %esi
	addl      %eax, %edi
	cmpl      %edi, %eax
	je        .L08063AE0
.L08063A36:
	movl      %edi, 16(%esp)
	movl      %ebx, %edi
	movl      32(%esp), %ebx
	jmp       .L08063AA4
.L08063A42:
	.p2align 4,,10
	.p2align 3
.L08063A48:
	subl      $4, %esp
	pushl     %ebp
	pushl     28(%esp)
	pushl     %eax
	call      memmove
.L08063A56:
	movl      4(%edi), %eax
	addl      $16, %esp
	addl      %ebp, %eax
	movl      %eax, 8(%edi)
.L08063A61:
	movl      8(%esp), %eax
	testl     %esi, %esi
	movl      %ebx, 20(%edi)
	movl      %eax, 16(%edi)
	movl      28(%edi), %eax
	movl      %eax, 32(%edi)
	je        .L08063A9B
.L08063A75:
	movl      36(%edi), %ecx
	subl      %eax, %ecx
	cmpl      %esi, %ecx
	jle       .L08063B10
.L08063A82:
	subl      $4, %esp
	pushl     %esi
	pushl     20(%esp)
	pushl     %eax
	call      memmove
.L08063A90:
	movl      28(%edi), %eax
	addl      $16, %esp
	addl      %esi, %eax
	movl      %eax, 32(%edi)
.L08063A9B:
	addl      $40, %edi
	cmpl      %edi, 16(%esp)
	je        .L08063AE0
.L08063AA4:
	movl      4(%edi), %eax
	testl     %ebp, %ebp
	movl      %eax, 8(%edi)
	je        .L08063A61
.L08063AAE:
	movl      12(%edi), %ecx
	subl      %eax, %ecx
	cmpl      %ebp, %ecx
	jg        .L08063A48
.L08063AB7:
	subl      $8, %esp
	pushl     %ebp
	pushl     %edi
	call      _ZN7acommon6String9reserve_iEj
.L08063AC1:
	movl      4(%edi), %eax
	addl      $16, %esp
	jmp       .L08063A48
.L08063ACC:
	addl      48(%esp), %esi
	movl      16(%esp), %eax
	movl      %esi, 4(%eax)
	.p2align 4
.L08063AE0:
	movl      12(%esp), %eax
	testl     %eax, %eax
	je        .L08063AF4
.L08063AE8:
	subl      $12, %esp
	pushl     %eax
	call      free
.L08063AF1:
	addl      $16, %esp
.L08063AF4:
	movl      20(%esp), %eax
	testl     %eax, %eax
	je        .L08063180
.L08063B00:
	movl      %eax, 96(%esp)
	addl      $76, %esp
	popl      %ebx
	popl      %esi
	popl      %edi
	popl      %ebp
	jmp       free
.L08063B10:
	leal      24(%edi), %eax
	subl      $8, %esp
	pushl     %esi
	pushl     %eax
	call      _ZN7acommon6String9reserve_iEj
.L08063B1D:
	movl      28(%edi), %eax
	addl      $16, %esp
	jmp       .L08063A82
.L08063B28:
	.p2align 4
.L08063B30:
	leal      24(%edi), %eax
	subl      $8, %esp
	pushl     %esi
	pushl     %eax
	call      _ZN7acommon6String9reserve_iEj
.L08063B3D:
	movl      28(%edi), %eax
	addl      $16, %esp
	jmp       .L080639A2
.L08063B48:
	.p2align 4
.L08063B50:
	movl      24(%esp), %ebx
	subl      %edx, %ebx
	testl     %eax, %eax
	jne       .L08063B8A
.L08063B5A:
	movl      $0, 20(%esp)
	movl      $0, 12(%esp)
	jmp       .L08063040
.L08063B6F:
	movl      %ecx, %eax
	jmp       .L080636F0
.L08063B76:
	movl      %ecx, %eax
	jmp       .L08063811
.L08063B7D:
	subl      $12, %esp
	pushl     $.LC08063E9F
	call      _ZSt20__throw_length_errorPKc
.L08063B8A:
	imull     $40, %eax, %eax
	movl      %eax, 20(%esp)
	jmp       .L0806302D
	.size	_ZNSt6vectorIN13CheckerString4LineESaIS1_EE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPS1_S3_EEjRKS1_, .-_ZNSt6vectorIN13CheckerString4LineESaIS1_EE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPS1_S3_EEjRKS1_
# ----------------------
	.section       .rodata
.LC08063C88:
	.string	"prog/aspell.cpp"
.LC08063C98:
	.string	"setvbuf(stdin, 0, 1, 0) == 0"
.LC08063CB5:
	.string	"setvbuf(stdout, 0, 1, 0) == 0"
.LC08063CD3:
	.string	"./common/stack_ptr.hpp"
.LC08063CEA:
	.string	"ptr==0"
.LC08063CF1:
	.string	"x.size() == y.size()"
.LC08063D06:
	.string	"-\n"
.LC08063D09:
	.string	"+ %s\n"
.LC08063D0F:
	.byte	42
.LC08063D10:
	.byte	10
.LC08063D11:
	.byte	0
.LC08063D12:
	.string	"Error: %s\n"
.LC08063D1D:
	.string	"aspell"
.LC08063D24:
	.string	"encoding"
.LC08063D2D:
	.string	"none"
.LC08063D32:
	.string	"Error: "
.LC08063D3A:
	.string	"Invalid Input"
.LC08063D48:
	.string	", "
.LC08063D4B:
	.string	"utf-8"
.LC08063D51:
	.string	"true"
.LC08063D56:
	.string	"normalize"
.LC08063D60:
	.string	"false"
.LC08063D66:
	.string	"internal"
.LC08063D6F:
	.ascii	"norm-"
.LC08063D74:
	.string	"strict"
.LC08063D7B:
	.string	"norm-form"
.LC08063D85:
	.string	"validate-words"
.LC08063D94:
	.string	"validate-affixes"
.LC08063DA5:
	.string	"clean-words"
.LC08063DB1:
	.string	"clean-affixes"
.LC08063DBF:
	.string	"skip-invalid-words"
.LC08063DD2:
	.value	29477
.LC08063DD4:
	.string	"/%s\n"
.LC08063DD9:
	.string	"master"
.LC08063DE0:
	.string	"master-path"
.LC08063DEC:
	.string	"personal"
.LC08063DF5:
	.string	"aspeller"
.LC08063DFE:
	.string	"module"
.LC08063E05:
	.string	"personal-path"
.LC08063E13:
	.string	"repl"
.LC08063E18:
	.string	"repl-path"
.LC08063E22:
	.ascii	"%s\t"
.LC08063E25:
	.long	684837
.LC08063E29:
	.string	"--"
.LC08063E2C:
	.string	"[dont-]"
.LC08063E34:
	.string	"add|rem-"
.LC08063E3D:
	.string	"=<str>"
.LC08063E44:
	.string	"=<int>"
.LC08063E4B:
	.string	"  %-27s %s\n"
.LC08063E57:
	.string	"0.60.6.1"
.LC08063E60:
	.string	"mode"
.LC08063E65:
	.string	"  %s\n"
.LC08063E6B:
	.string	"\n  %s filter: %s\n"
.LC08063E7D:
	.string	"dont-"
.LC08063E83:
	.value	8224
.LC08063E85:
	.string	"%-14s %s\n"
.LC08063E8F:
	.string	"vector::reserve"
.LC08063E9F:
	.string	"vector::_M_fill_insert"
.LC08063EB6:
	.string	"b != table.end()"
.LC08063EC7:
	.string	"vector<bool>::_M_fill_insert"
.LC08063EE4:
	.value	44
.LC08063EE6:
	.string	"time"
.LC08063EEB:
	.string	"suggest"
.LC08063EF3:
	.string	"filter"
.LC08063EFA:
	.string	"byte-offsets"
.LC08063F07:
	.string	"Time to load word list: "
.LC08063F20:
	.string	"lang"
.LC08063F25:
	.string	" %s%s"
.LC08063F2B:
	.string	"# %s %u\n"
.LC08063F34:
	.ascii	"? %s 0 "
.LC08063F3B:
	.string	"%u: %s\n"
.LC08063F43:
	.ascii	"Suggestion Time:"
.LC08063F53:
	.string	" %f\n"
.LC08063F58:
	.string	"& %s %u %u:"
.LC08063F64:
	.string	"reverse"
.LC08063F6C:
	.string	"You must specify a file name."
.LC08063F8A:
	.ascii	".ne"
.LC08063F8D:
	.value	119
.LC08063F8F:
	.string	"keymapping"
.LC08063F9A:
	.string	"ispell"
.LC08063FA1:
	.ascii	"Invalid keymapping:"
.LC08063FB4:
	.long	7546144
.LC08063FB8:
	.string	"Ignore"
.LC08063FBF:
	.string	"Ignore all"
.LC08063FCA:
	.string	"Replace"
.LC08063FD2:
	.string	"Replace all"
.LC08063FDE:
	.long	6579265
.LC08063FE2:
	.string	"Add Lower"
.LC08063FEC:
	.string	"Abort"
.LC08063FF2:
	.string	"Exit"
.LC08063FF7:
	.string	"? "
.LC08063FFA:
	.string	"Yy"
.LC08063FFD:
	.long	1752459607
.LC08064001:
	.string	": "
.LC08064004:
	.string	".bak"
.LC08064009:
	.string	"q - tmp == s"
.LC08064016:
	.string	"ps"
.LC08064019:
	.string	"!entries[i]->aff"
.LC0806402A:
	.string	"simple"
.LC08064031:
	.string	"single"
.LC08064038:
	.string	"multi"
.LC0806403E:
	.string	"keep"
.LC08064043:
	.string	"Invalid Option: %s"
.LC08064056:
	.string	"You must specify an action"
.LC08064071:
	.string	"Unknown Action: %s"
.LC08064084:
	.string	"usage"
.LC0806408A:
	.string	"help"
.LC0806408F:
	.string	"version"
.LC08064097:
	.string	"config"
.LC0806409E:
	.string	"dicts"
.LC080640A4:
	.string	"check"
.LC080640AA:
	.string	"pipe"
.LC080640AF:
	.string	"conv"
.LC080640B4:
	.string	"norm"
.LC080640B9:
	.string	"soundslike"
.LC080640C4:
	.string	"munch"
.LC080640CA:
	.string	"expand"
.LC080640D1:
	.string	"combine"
.LC080640D9:
	.ascii	"munch-"
.LC080640DF:
	.string	"list"
.LC080640E4:
	.string	"clean"
.LC080640EA:
	.string	"filters"
.LC080640F2:
	.string	"modes"
.LC080640F8:
	.string	"dump"
.LC080640FD:
	.string	"create"
.LC08064104:
	.string	"merge"
.LC0806410A:
	.string	"affix"
.LC08064110:
	.string	"<command> is one of:"
.LC08064125:
	.string	"mode=email"
.LC08064130:
	.string	"enter Email mode."
.LC08064142:
	.string	"mode=html"
.LC0806414C:
	.string	"enter HTML mode."
.LC0806415D:
	.ascii	"mode="
.LC08064162:
	.long	7890292
.LC08064166:
	.string	"enter TeX mode."
.LC08064176:
	.ascii	"mode="
.LC0806417B:
	.string	"nroff"
.LC08064181:
	.string	"enter Nroff mode."
.LC08064193:
	.string	"ignore"
.LC0806419A:
	.ascii	"dont-"
.LC0806419F:
	.string	"backup"
.LC080641A6:
	.ascii	"dont-"
.LC080641AB:
	.ascii	"run-togethe"
.LC080641B6:
	.value	114
.LC080641B8:
	.ascii	"dont-"
.LC080641BD:
	.string	"guess"
# ----------------------
.LC080641C3:
	.byte	0
	.align 2
.LC080641C4:
	.string	"smaller.size() == larger.size()"
.LC080641E4:
	.string	"Error: bind_textdomain_codeset != nl_langinfo(CODESET)\n"
.LC0806421C:
	.string	"Sorry \"filter\" is currently unimplemented.\n"
.LC08064248:
	.string	"@(#) International Ispell Version 3.1.20 (but really Aspell 0.60.6.1)\n"
# ----------------------
.LC0806428F:
	.byte	0
	.align 2
.LC08064290:
	.string	"Can't merge a master word list yet. Sorry."
# ----------------------
.LC080642BB:
	.byte	0
	.align 2
.LC080642BC:
	.string	"Sorry \"create/merge personal\" is currently unimplemented.\n"
# ----------------------
.LC080642F7:
	.byte	0
	.align 2
.LC080642F8:
	.string	"Sorry \"create/merge repl\" is currently unimplemented.\n"
# ----------------------
.LC0806432F:
	.byte	0
	.align 2
.LC08064330:
	.string	"\nAspell %s.  Copyright 2000-2011 by Kevin Atkinson.\n\n"
# ----------------------
.LC08064366:
	.value	0
	.align 4
.LC08064368:
	.string	"Available Dictionaries:\n    Dictionaries can be selected directly via the \"-d\" or \"master\"\n    option.  They can also be selected indirectly via the \"lang\",\n    \"variety\", and \"size\" options.\n"
# ----------------------
.LC08064429:
	.zero	3
	.align 4
.LC0806442C:
	.string	"Available Filters (and associated options):\n    Filters can be added or removed via the \"filter\" option.\n"
# ----------------------
.LC08064496:
	.value	0
	.align 4
.LC08064498:
	.string	"Available Filter Modes:\n    Filter Modes are reconfigured combinations of filters optimized for\n    files of a specific type. A mode is selected via the \"mode\" option.\n    This will happen implicitly if Aspell is able to identify the file\n    type from the extension, and possibility the contents, of the file.\n"
.LC080645D0:
	.string	"WARNING: Unable to enter Nroff mode: %s\n"
# ----------------------
.LC080645F9:
	.zero	3
	.align 4
.LC080645FC:
	.string	"Only one file name may be specified."
# ----------------------
.LC08064621:
	.zero	3
	.align 4
.LC08064624:
	.string	"Could not open the file \"%s\" for reading"
# ----------------------
.LC0806464D:
	.zero	3
	.align 4
.LC08064650:
	.string	"Could not open the file \"%s\" for writing. File not saved."
# ----------------------
.LC0806468A:
	.value	0
	.align 4
.LC0806468C:
	.string	"Are you sure you want to abort (y/n)? "
# ----------------------
.LC080646B3:
	.byte	0
	.align 2
.LC080646B4:
	.string	"Sorry that is an invalid choice!"
# ----------------------
.LC080646D5:
	.zero	3
	.align 4
.LC080646D8:
	.string	"!(ci->pre_flag && ci->suf_flag)"
.LC080646F8:
	.string	"0 <= e->rank && e->rank < (int)entries.size()"
# ----------------------
.LC08064726:
	.value	0
	.align 4
.LC08064728:
	.string	"\"%s\" is not a valid flag for the \"munch-list\" command."
# ----------------------
.LC0806475F:
	.byte	0
	.align 2
.LC08064760:
	.string	" does not take any parameters."
# ----------------------
.LC0806477F:
	.byte	0
	.align 64
.LC08064780:
	.string	"You must specify a parameter for \"%s\"."
# ----------------------
.LC080647A7:
	.byte	0
	.align 2
.LC080647A8:
	.string	"Error: You must specify at least %d parameters for \"%s\".\n"
# ----------------------
.LC080647E2:
	.value	0
	.align 4
.LC080647E4:
	.string	"Usage: aspell [options] <command>"
# ----------------------
.LC08064806:
	.value	0
	.align 4
.LC08064808:
	.string	"  -?|usage         display a brief usage message"
# ----------------------
.LC08064839:
	.zero	3
	.align 4
.LC0806483C:
	.string	"  help             display a detailed help message"
# ----------------------
.LC0806486F:
	.byte	0
	.align 2
.LC08064870:
	.string	"  -c|check <file>  to check a file"
# ----------------------
.LC08064893:
	.byte	0
	.align 2
.LC08064894:
	.string	"  -a|pipe          \"ispell -a\" compatibility mode"
# ----------------------
.LC080648C6:
	.value	0
	.align 4
.LC080648C8:
	.string	"  [dump] config    dumps the current configuration to stdout"
# ----------------------
.LC08064905:
	.zero	3
	.align 4
.LC08064908:
	.string	"  config <key>     prints the current value of an option"
# ----------------------
.LC08064941:
	.zero	3
	.align 4
.LC08064944:
	.string	"  [dump] dicts | filters | modes"
# ----------------------
.LC08064965:
	.zero	3
	.align 4
.LC08064968:
	.string	"    lists available dictionaries / filters / filter modes"
# ----------------------
.LC080649A2:
	.value	0
	.align 4
.LC080649A4:
	.string	"[options] is any of the following:"
# ----------------------
.LC080649C7:
	.byte	0
	.align 2
.LC080649C8:
	.string	"  list             produce a list of misspelled words from standard input"
# ----------------------
.LC08064A12:
	.value	0
	.align 4
.LC08064A14:
	.string	"  soundslike       returns the sounds like equivalent for each word entered"
.LC08064A60:
	.string	"  munch            generate possible root words and affixes"
.LC08064A9C:
	.string	"  expand [1-4]     expands affix flags"
# ----------------------
.LC08064AC3:
	.byte	0
	.align 2
.LC08064AC4:
	.string	"  clean [strict]   cleans a word list so that every line is a valid word"
# ----------------------
.LC08064B0D:
	.zero	3
	.align 4
.LC08064B10:
	.string	"  -v|version       prints a version line"
# ----------------------
.LC08064B39:
	.zero	3
	.align 4
.LC08064B3C:
	.string	"  munch-list [simple] [single|multi] [keep]"
.LC08064B68:
	.string	"    reduce the size of a word list via affix compression"
# ----------------------
.LC08064BA1:
	.zero	3
	.align 4
.LC08064BA4:
	.string	"  conv <from> <to> [<norm-form>]"
# ----------------------
.LC08064BC5:
	.zero	3
	.align 4
.LC08064BC8:
	.string	"    converts from one encoding to another"
# ----------------------
.LC08064BF2:
	.value	0
	.align 4
.LC08064BF4:
	.string	"  norm (<norm-map> | <from> <norm-map> <to>) [<norm-form>]"
# ----------------------
.LC08064C2F:
	.byte	0
	.align 2
.LC08064C30:
	.string	"    perform Unicode normalization"
# ----------------------
.LC08064C52:
	.value	0
	.align 4
.LC08064C54:
	.string	"  dump|create|merge master|personal|repl [<name>]"
# ----------------------
.LC08064C86:
	.value	0
	.align 4
.LC08064C88:
	.string	"    dumps, creates or merges a master, personal, or replacement dictionary."
.LC08064CD4:
	.string	"  <norm-form>      normalization form to use, either none, internal, or strict"
# ----------------------
.LC08064D23:
	.zero	29
.LC08064D40:
	.long	.L08057699
	.long	.L08057895
	.long	.L08057895
	.long	.L08057895
	.long	.L08057895
	.long	.L08057895
	.long	.L08057895
	.long	.L08057895
	.long	.L08057895
	.long	.L08057895
	.long	.L08057895
	.long	.L08057895
	.long	.L08057895
	.long	.L08057895
	.long	.L08057895
	.long	.L08057895
	.long	.L08057895
	.long	.L08057895
	.long	.L08057895
	.long	.L08057895
	.long	.L08057895
	.long	.L08057895
	.long	.L08057895
	.long	.L0805768C
	.long	.L08057895
	.long	.L08057640
	.long	.L080575A8
	.long	.L0805759B
	.long	.L0805752C
	.long	.L08057895
	.long	.L08057895
	.long	.L08057895
	.long	.L08057408
	.long	.L08057738
	.long	.L08057895
	.long	.L080576A9
	.long	.L08057895
	.long	.L08057895
	.long	.L08057895
	.long	.L08057895
	.long	.L08057895
	.long	.L08057895
	.long	.L08057895
	.long	.L08057895
	.long	.L08057895
	.long	.L08057895
	.long	.L08057895
	.long	.L08057895
	.long	.L08057895
	.long	.L08057895
	.long	.L08057895
	.long	.L08057895
	.long	.L08057895
	.long	.L08057895
	.long	.L0805782F
	.long	.L08057895
	.long	.L08057895
	.long	.L08057895
	.long	.L08057895
	.long	.L08057895
	.long	.L08057895
	.long	.L08057895
	.long	.L08057895
	.long	.L08057895
	.long	.L08057895
	.long	.L08057895
	.long	.L08057895
	.long	.L08057895
	.long	.L08057895
	.long	.L08057895
	.long	.L08057895
	.long	.L08057895
	.long	.L08057895
	.long	.L08057895
	.long	.L08057895
	.long	.L08057895
	.long	.L08057895
	.long	.L08057895
	.long	.L08057895
	.long	.L08057895
	.long	.L08057895
	.long	.L08057895
	.long	.L08057895
	.long	.L08057895
	.long	.L08056E7C
	.long	.L08057895
	.long	.L08057895
	.long	.L08057895
	.long	.L08057895
	.long	.L08057895
	.long	.L08057895
	.long	.L08057895
	.long	.L08057895
	.long	.L08057895
	.long	.L08057895
	.long	.L08057895
	.long	.L08057895
	.long	.L08057895
	.long	.L08057895
	.long	.L08057895
	.long	.L08057895
	.long	.L08057895
	.long	.L08057895
	.long	.L08057895
	.long	.L08057895
	.long	.L08057895
	.long	.L08057895
	.long	.L08057895
	.long	.L08057895
	.long	.L08057895
	.long	.L08057895
	.long	.L08057895
	.long	.L08057895
	.long	.L08057895
	.long	.L08057895
	.long	.L08057895
	.long	.L08056E61
.LC08064F14:
	.long	.L080596E0
	.long	.L08058B8B
	.long	.L080596C0
	.long	.L080595F8
	.long	.L080595F8
	.long	.L080595D8
	.long	.L08059510
	.long	.L08059090
	.long	.L08059460
.LC08064F38:
	.long	.L0805970F
	.long	.L08058B8B
	.long	.L080596C0
	.long	.L080595F8
	.long	.L080595F8
	.long	.L080595D8
	.long	.L08059510
	.long	.L08059090
	.long	.L08059460
	.long	0
# ----------------------
	.local	_ZZL5mergeRSt6vectorIbSaIbEERKS1_E19__PRETTY_FUNCTION__
	.type	_ZZL5mergeRSt6vectorIbSaIbEERKS1_E19__PRETTY_FUNCTION__, @object
_ZZL5mergeRSt6vectorIbSaIbEERKS1_E19__PRETTY_FUNCTION__:
	.string	"void merge(std::vector<bool>&, const std::vector<bool>&)"
	.size	_ZZL5mergeRSt6vectorIbSaIbEERKS1_E19__PRETTY_FUNCTION__, 57
# ----------------------
.LC08064F99:
	.zero	7
# ----------------------
	.align 8
	.local	_ZZL5purgeRSt6vectorIbSaIbEERKS1_E19__PRETTY_FUNCTION__
	.type	_ZZL5purgeRSt6vectorIbSaIbEERKS1_E19__PRETTY_FUNCTION__, @object
_ZZL5purgeRSt6vectorIbSaIbEERKS1_E19__PRETTY_FUNCTION__:
	.string	"void purge(std::vector<bool>&, const std::vector<bool>&)"
	.size	_ZZL5purgeRSt6vectorIbSaIbEERKS1_E19__PRETTY_FUNCTION__, 57
# ----------------------
.LC08064FD9:
	.zero	39
# ----------------------
	.local	_ZZL6subsetRKSt6vectorIbSaIbEES3_E19__PRETTY_FUNCTION__
	.type	_ZZL6subsetRKSt6vectorIbSaIbEES3_E19__PRETTY_FUNCTION__, @object
_ZZL6subsetRKSt6vectorIbSaIbEES3_E19__PRETTY_FUNCTION__:
	.string	"bool subset(const std::vector<bool>&, const std::vector<bool>&)"
	.size	_ZZL6subsetRKSt6vectorIbSaIbEES3_E19__PRETTY_FUNCTION__, 64
# ----------------------
	.local	_ZZL9add_affixN7acommon11HT_IteratorI9CML_EntryEEcbE19__PRETTY_FUNCTION__
	.type	_ZZL9add_affixN7acommon11HT_IteratorI9CML_EntryEEcbE19__PRETTY_FUNCTION__, @object
_ZZL9add_affixN7acommon11HT_IteratorI9CML_EntryEEcbE19__PRETTY_FUNCTION__:
	.string	"void add_affix(acommon::HashTable<CML_Parms>::iterator, char, bool)"
	.size	_ZZL9add_affixN7acommon11HT_IteratorI9CML_EntryEEcbE19__PRETTY_FUNCTION__, 68
# ----------------------
.LC08065084:
	.zero	28
# ----------------------
	.local	_ZZ19munch_list_completebbE19__PRETTY_FUNCTION__
	.type	_ZZ19munch_list_completebbE19__PRETTY_FUNCTION__, @object
_ZZ19munch_list_completebbE19__PRETTY_FUNCTION__:
	.string	"void munch_list_complete(bool, bool)"
	.size	_ZZ19munch_list_completebbE19__PRETTY_FUNCTION__, 37
# ----------------------
	.local	_ZZ17munch_list_simplevE19__PRETTY_FUNCTION__
	.type	_ZZ17munch_list_simplevE19__PRETTY_FUNCTION__, @object
_ZZ17munch_list_simplevE19__PRETTY_FUNCTION__:
	.string	"void munch_list_simple()"
	.size	_ZZ17munch_list_simplevE19__PRETTY_FUNCTION__, 25
# ----------------------
.LC080650DE:
	.zero	34
# ----------------------
	.local	_ZZN7acommon8StackPtrINS_6VectorI6ChoiceEEE5resetEPS3_E19__PRETTY_FUNCTION__
	.type	_ZZN7acommon8StackPtrINS_6VectorI6ChoiceEEE5resetEPS3_E19__PRETTY_FUNCTION__, @object
_ZZN7acommon8StackPtrINS_6VectorI6ChoiceEEE5resetEPS3_E19__PRETTY_FUNCTION__:
	.string	"void acommon::StackPtr<T>::reset(T*) [with T = acommon::Vector<Choice>]"
	.size	_ZZN7acommon8StackPtrINS_6VectorI6ChoiceEEE5resetEPS3_E19__PRETTY_FUNCTION__, 72
# ----------------------
.LC08065148:
	.zero	24
# ----------------------
	.local	_ZZN7acommon8StackPtrI13CheckerStringE5resetEPS1_E19__PRETTY_FUNCTION__
	.type	_ZZN7acommon8StackPtrI13CheckerStringE5resetEPS1_E19__PRETTY_FUNCTION__, @object
_ZZN7acommon8StackPtrI13CheckerStringE5resetEPS1_E19__PRETTY_FUNCTION__:
	.string	"void acommon::StackPtr<T>::reset(T*) [with T = CheckerString]"
	.size	_ZZN7acommon8StackPtrI13CheckerStringE5resetEPS1_E19__PRETTY_FUNCTION__, 62
# ----------------------
	.local	_ZZL11line_buffervE19__PRETTY_FUNCTION__
	.type	_ZZL11line_buffervE19__PRETTY_FUNCTION__, @object
_ZZL11line_buffervE19__PRETTY_FUNCTION__:
	.string	"void line_buffer()"
	.size	_ZZL11line_buffervE19__PRETTY_FUNCTION__, 19
# ----------------------
.LC080651B1:
	.zero	15
# ----------------------
	.local	_ZZN7acommon8StackPtrINS_6ConfigEE5resetEPS1_E19__PRETTY_FUNCTION__
	.type	_ZZN7acommon8StackPtrINS_6ConfigEE5resetEPS1_E19__PRETTY_FUNCTION__, @object
_ZZN7acommon8StackPtrINS_6ConfigEE5resetEPS1_E19__PRETTY_FUNCTION__:
	.string	"void acommon::StackPtr<T>::reset(T*) [with T = acommon::Config]"
	.size	_ZZN7acommon8StackPtrINS_6ConfigEE5resetEPS1_E19__PRETTY_FUNCTION__, 64
# ----------------------
	.local	_ZN7acommonL6primesE
	.type	_ZN7acommonL6primesE, @object
_ZN7acommonL6primesE:
	.long	53
	.long	97
	.long	193
	.long	389
	.long	769
	.long	1543
	.long	3079
	.long	6151
	.long	12289
	.long	24593
	.long	49157
	.long	98317
	.long	196613
	.long	393241
	.long	786433
	.long	1572869
	.long	3145739
	.long	6291469
	.long	12582917
	.long	25165843
	.long	50331653
	.long	100663319
	.long	201326611
	.long	402653189
	.long	805306457
	.long	-1
	.size	_ZN7acommonL6primesE, 104
# ----------------------
.LC08065268:
	.zero	24
# ----------------------
	.local	_ZL10mode_abrvs
	.type	_ZL10mode_abrvs, @object
_ZL10mode_abrvs:
	.long	101
	.long	.LC08064125
	.long	.LC08064130
	.long	72
	.long	.LC08064142
	.long	.LC0806414C
	.long	116
	.long	.LC0806415D
	.long	.LC08064166
	.long	110
	.long	.LC08064176
	.long	.LC08064181
.LC080652B0:
	.zero	16
	.size	_ZL10mode_abrvs, 48
# ----------------------
	.local	_ZL16possible_options
	.type	_ZL16possible_options, @object
_ZL16possible_options:
	.long	.LC08063DD9
	.long	100
	.long	1
	.long	0
	.long	.LC08063DEC
	.long	112
	.long	1
	.long	0
	.long	.LC08064193
	.long	87
	.long	1
	.long	0
	.long	.LC08063F20
	.long	108
	.long	1
	.long	0
	.long	.LC0806419F
	.long	98
	.long	0
	.long	0
	.long	.LC0806419A
	.long	120
	.long	0
	.long	0
	.long	.LC080641AB
	.long	67
	.long	0
	.long	0
	.long	.LC080641A6
	.long	66
	.long	0
	.long	0
	.long	.LC080641BD
	.long	109
	.long	0
	.long	0
	.long	.LC080641B8
	.long	80
	.long	0
	.long	0
	.long	.LC08064084
	.long	63
	.long	0
	.long	1
	.long	.LC0806408A
	.long	0
	.long	0
	.long	1
	.long	.LC0806408F
	.long	118
	.long	0
	.long	1
	.long	.LC08064097
	.long	0
	.long	0
	.long	1
	.long	.LC0806409E
	.long	0
	.long	0
	.long	1
	.long	.LC080640A4
	.long	99
	.long	0
	.long	1
	.long	.LC080640AA
	.long	97
	.long	0
	.long	1
	.long	.LC080640DF
	.long	0
	.long	0
	.long	1
	.long	.LC080640AF
	.long	0
	.long	2
	.long	1
	.long	.LC080640B4
	.long	0
	.long	1
	.long	1
	.long	.LC08063EF3
	.long	0
	.long	0
	.long	1
	.long	.LC080640B9
	.long	0
	.long	0
	.long	1
	.long	.LC080640C4
	.long	0
	.long	0
	.long	1
	.long	.LC080640CA
	.long	0
	.long	0
	.long	1
	.long	.LC080640D1
	.long	0
	.long	0
	.long	1
	.long	.LC080640D9
	.long	0
	.long	0
	.long	1
	.long	.LC080640E4
	.long	0
	.long	0
	.long	1
	.long	.LC080640EA
	.long	0
	.long	0
	.long	1
	.long	.LC080640F2
	.long	0
	.long	0
	.long	1
	.long	.LC080640F8
	.long	0
	.long	1
	.long	1
	.long	.LC080640FD
	.long	0
	.long	1
	.long	1
	.long	.LC08064104
	.long	0
	.long	1
	.long	1
	.long	.LC08063D11
	.long	83
	.long	0
	.long	0
	.long	.LC08063D11
	.long	119
	.long	1
	.long	0
	.long	.LC08063D11
	.long	84
	.long	1
	.long	0
	.long	.LC08063D11
	.long	0
	.long	0
	.long	0
	.long	.LC08063D11
	.long	0
	.long	0
	.long	0
	.size	_ZL16possible_options, 592
# ----------------------
.LC08065510:
	.zero	16
# ----------------------
	.local	_ZL10usage_text
	.type	_ZL10usage_text, @object
_ZL10usage_text:
	.long	.LC080647E4
	.long	.LC08064110
	.long	.LC08064808
	.long	.LC0806483C
	.long	.LC08064870
	.long	.LC08064894
	.long	.LC080648C8
	.long	.LC08064908
	.long	.LC08064944
	.long	.LC08064968
	.long	.LC080649A4
	.size	_ZL10usage_text, 44
# ----------------------
	.weak	_ZTIN7acommon17StringEnumerationE
	.type	_ZTIN7acommon17StringEnumerationE, @object
_ZTIN7acommon17StringEnumerationE:
	.long	8+_ZTVN10__cxxabiv117__class_type_infoE
	.long	_ZTSN7acommon17StringEnumerationE
	.size	_ZTIN7acommon17StringEnumerationE, 8
# ----------------------
	.weak	_ZTSN7acommon17StringEnumerationE
	.type	_ZTSN7acommon17StringEnumerationE, @object
_ZTSN7acommon17StringEnumerationE:
	.string	"N7acommon17StringEnumerationE"
	.size	_ZTSN7acommon17StringEnumerationE, 30
# ----------------------
.LC08065572:
	.value	0
# ----------------------
	.align 4
	.weak	_ZTIN7acommon16AddableContainerE
	.type	_ZTIN7acommon16AddableContainerE, @object
_ZTIN7acommon16AddableContainerE:
	.long	8+_ZTVN10__cxxabiv117__class_type_infoE
	.long	_ZTSN7acommon16AddableContainerE
	.size	_ZTIN7acommon16AddableContainerE, 8
# ----------------------
	.weak	_ZTSN7acommon16AddableContainerE
	.type	_ZTSN7acommon16AddableContainerE, @object
_ZTSN7acommon16AddableContainerE:
	.string	"N7acommon16AddableContainerE"
	.size	_ZTSN7acommon16AddableContainerE, 29
# ----------------------
.LC08065599:
	.zero	3
# ----------------------
	.align 4
	.weak	_ZTIN7acommon16MutableContainerE
	.type	_ZTIN7acommon16MutableContainerE, @object
_ZTIN7acommon16MutableContainerE:
	.long	8+_ZTVN10__cxxabiv120__si_class_type_infoE
	.long	_ZTSN7acommon16MutableContainerE
	.long	_ZTIN7acommon16AddableContainerE
	.size	_ZTIN7acommon16MutableContainerE, 12
# ----------------------
	.weak	_ZTSN7acommon16MutableContainerE
	.type	_ZTSN7acommon16MutableContainerE, @object
_ZTSN7acommon16MutableContainerE:
	.string	"N7acommon16MutableContainerE"
	.size	_ZTSN7acommon16MutableContainerE, 29
# ----------------------
.LC080655C5:
	.zero	3
# ----------------------
	.align 4
	.weak	_ZTIN7acommon9StringMapE
	.type	_ZTIN7acommon9StringMapE, @object
_ZTIN7acommon9StringMapE:
	.long	8+_ZTVN10__cxxabiv120__si_class_type_infoE
	.long	_ZTSN7acommon9StringMapE
	.long	_ZTIN7acommon16MutableContainerE
	.size	_ZTIN7acommon9StringMapE, 12
# ----------------------
	.weak	_ZTSN7acommon9StringMapE
	.type	_ZTSN7acommon9StringMapE, @object
_ZTSN7acommon9StringMapE:
	.string	"N7acommon9StringMapE"
	.size	_ZTSN7acommon9StringMapE, 21
# ----------------------
.LC080655E9:
	.zero	3
# ----------------------
	.align 4
	.weak	_ZTI18IstreamEnumeration
	.type	_ZTI18IstreamEnumeration, @object
_ZTI18IstreamEnumeration:
	.long	8+_ZTVN10__cxxabiv120__si_class_type_infoE
	.long	_ZTS18IstreamEnumeration
	.long	_ZTIN7acommon17StringEnumerationE
	.size	_ZTI18IstreamEnumeration, 12
# ----------------------
	.weak	_ZTS18IstreamEnumeration
	.type	_ZTS18IstreamEnumeration, @object
_ZTS18IstreamEnumeration:
	.string	"18IstreamEnumeration"
	.size	_ZTS18IstreamEnumeration, 21
# ----------------------
.LC0806560D:
	.zero	19
# ----------------------
	.weak	_ZTVN7acommon17StringEnumerationE
	.type	_ZTVN7acommon17StringEnumerationE, @object
_ZTVN7acommon17StringEnumerationE:
	.long	0
	.long	_ZTIN7acommon17StringEnumerationE
	.long	__cxa_pure_virtual
	.long	__cxa_pure_virtual
	.long	__cxa_pure_virtual
	.long	__cxa_pure_virtual
	.long	0
	.long	0
	.size	_ZTVN7acommon17StringEnumerationE, 32
# ----------------------
	.weak	_ZTVN7acommon9StringMapE
	.type	_ZTVN7acommon9StringMapE, @object
_ZTVN7acommon9StringMapE:
	.long	0
	.long	_ZTIN7acommon9StringMapE
	.long	_ZN7acommon9StringMap3addERKNS_10ParmStringE
	.long	_ZN7acommon9StringMapD1Ev
	.long	_ZN7acommon9StringMapD0Ev
	.long	_ZN7acommon9StringMap6removeERKNS_10ParmStringE
	.long	_ZN7acommon9StringMap5clearEv
	.long	0
	.size	_ZTVN7acommon9StringMapE, 32
# ----------------------
	.weak	_ZTV18IstreamEnumeration
	.type	_ZTV18IstreamEnumeration, @object
_ZTV18IstreamEnumeration:
	.long	0
	.long	_ZTI18IstreamEnumeration
	.long	_ZNK18IstreamEnumeration6at_endEv
	.long	_ZN18IstreamEnumeration4nextEv
	.long	_ZNK18IstreamEnumeration5cloneEv
	.long	_ZN18IstreamEnumeration6assignEPKN7acommon17StringEnumerationE
	.long	_ZN18IstreamEnumerationD1Ev
	.long	_ZN18IstreamEnumerationD0Ev
.LC08065680:
	.long	1232348160
.LC08065684:
	.byte	41
.LC08065685:
	.value	32
.LC08065687:
	.string	"Error: Stdin not a terminal."
.LC080656A4:
	.string	"prog/checker_string.cpp"
.LC080656BC:
	.string	"real_word_size_ > 0"
	.size	_ZTV18IstreamEnumeration, 32
# ----------------------
.LC080656D0:
	.zero	16
# ----------------------
	.local	_ZZN13CheckerString7replaceEN7acommon10ParmStringEE19__PRETTY_FUNCTION__
	.type	_ZZN13CheckerString7replaceEN7acommon10ParmStringEE19__PRETTY_FUNCTION__, @object
_ZZN13CheckerString7replaceEN7acommon10ParmStringEE19__PRETTY_FUNCTION__:
	.string	"void CheckerString::replace(acommon::ParmString)"
	.size	_ZZN13CheckerString7replaceEN7acommon10ParmStringEE19__PRETTY_FUNCTION__, 49
# ----------------------
	.section       .init_array,"wa",@init_array
.LD.init_array.4:
	.long	_GLOBAL__sub_I__Z11print_errorN7acommon10ParmStringE
.LD.init_array.8:
	.long	_GLOBAL__sub_I_state
.LD.init_array.12:
	.long	_GLOBAL__sub_I__ZN13CheckerStringC2EP13AspellSpellerP8_IO_FILES3_i
# ----------------------
	.data
.LD0806E388:
	.zero	56
# ----------------------
	.local	_ZL9help_text
	.type	_ZL9help_text, @object
_ZL9help_text:
	.long	0
	.long	.LC08063D11
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	.LC080649C8
	.long	0
	.long	0
	.long	.LC08064A14
	.long	.LC08064A60
	.long	.LC08064A9C
	.long	.LC08064AC4
	.long	.LC08064B10
	.long	.LC08064B3C
	.long	.LC08064B68
	.long	.LC08064BA4
	.long	.LC08064BC8
	.long	.LC08064BF4
	.long	.LC08064C30
	.long	0
	.long	0
	.long	.LC08064C54
	.long	.LC08064C88
	.long	.LC08063D11
	.long	.LC08064CD4
	.long	.LC08063D11
	.long	0
	.long	.LC08063D11
	.size	_ZL9help_text, 120
# ----------------------
	.globl	possible_options_end
	.type	possible_options_end, @object
possible_options_end:
	.long	_ZL16possible_options+560
	.size	possible_options_end, 4
# ----------------------
	.globl	action
	.type	action, @object
action:
	.long	4
	.size	action, 4
# ----------------------
	.bss
	.globl	uiconv
	.type	uiconv, @object
uiconv:
	.zero	4
	.zero	4
	.zero	4
	.zero	4
	.zero	4
	.zero	4
	.zero	4
	.zero	4
	.zero	4
	.size	uiconv, 36
# ----------------------
	.globl	dconv
	.type	dconv, @object
dconv:
	.zero	4
	.zero	4
	.zero	4
	.zero	4
	.zero	4
	.zero	4
	.zero	4
	.zero	4
	.zero	4
	.size	dconv, 36
# ----------------------
	.globl	options
	.type	options, @object
options:
	.zero	4
	.size	options, 4
# ----------------------
	.globl	args
	.type	args, @object
args:
	.zero	4
	.zero	4
	.zero	4
	.size	args, 12
# ----------------------
	.globl	null_conv
	.type	null_conv, @object
null_conv:
	.zero	4
	.zero	4
	.zero	4
	.zero	4
	.zero	4
	.zero	4
	.zero	4
	.zero	4
	.zero	4
	.size	null_conv, 36
# ----------------------
	.globl	menu_choices
	.type	menu_choices, @object
menu_choices:
	.zero	4
	.size	menu_choices, 4
# ----------------------
	.globl	word_choices
	.type	word_choices, @object
word_choices:
	.zero	4
	.size	word_choices, 4
# ----------------------
	.globl	last_prompt
	.type	last_prompt, @object
last_prompt:
	.zero	4
	.size	last_prompt, 4
# ----------------------
	.globl	state
	.type	state, @object
state:
	.zero	4
	.size	state, 4
# ----------------------
	.local	_ZN7acommonL6no_errE....0x806e934
	.comm	_ZN7acommonL6no_errE....0x806e934,4,4
# ----------------------
	.local	_ZN7acommonL18invalid_expressionE....0x806e938
	.comm	_ZN7acommonL18invalid_expressionE....0x806e938,4,4
# ----------------------
	.local	_ZN7acommonL16expression_errorE....0x806e93c
	.comm	_ZN7acommonL16expression_errorE....0x806e93c,4,4
# ----------------------
	.local	_ZN7acommonL9bad_magicE....0x806e940
	.comm	_ZN7acommonL9bad_magicE....0x806e940,4,4
# ----------------------
	.local	_ZN7acommonL13missing_magicE....0x806e944
	.comm	_ZN7acommonL13missing_magicE....0x806e944,4,4
# ----------------------
	.local	_ZN7acommonL16file_magic_rangeE....0x806e948
	.comm	_ZN7acommonL16file_magic_rangeE....0x806e948,4,4
# ----------------------
	.local	_ZN7acommonL14file_magic_posE....0x806e94c
	.comm	_ZN7acommonL14file_magic_posE....0x806e94c,4,4
# ----------------------
	.local	_ZN7acommonL23filter_mode_magic_errorE....0x806e950
	.comm	_ZN7acommonL23filter_mode_magic_errorE....0x806e950,4,4
# ----------------------
	.local	_ZN7acommonL18mode_extend_expandE....0x806e954
	.comm	_ZN7acommonL18mode_extend_expandE....0x806e954,4,4
# ----------------------
	.local	_ZN7acommonL12unknown_modeE....0x806e958
	.comm	_ZN7acommonL12unknown_modeE....0x806e958,4,4
# ----------------------
	.local	_ZN7acommonL24filter_mode_expand_errorE....0x806e95c
	.comm	_ZN7acommonL24filter_mode_expand_errorE....0x806e95c,4,4
# ----------------------
	.local	_ZN7acommonL14empty_file_extE....0x806e960
	.comm	_ZN7acommonL14empty_file_extE....0x806e960,4,4
# ----------------------
	.local	_ZN7acommonL24missing_magic_expressionE....0x806e964
	.comm	_ZN7acommonL24missing_magic_expressionE....0x806e964,4,4
# ----------------------
	.local	_ZN7acommonL16bad_mode_versionE....0x806e968
	.comm	_ZN7acommonL16bad_mode_versionE....0x806e968,4,4
# ----------------------
	.local	_ZN7acommonL22confusing_mode_versionE....0x806e96c
	.comm	_ZN7acommonL22confusing_mode_versionE....0x806e96c,4,4
# ----------------------
	.local	_ZN7acommonL24mode_version_requirementE....0x806e970
	.comm	_ZN7acommonL24mode_version_requirementE....0x806e970,4,4
# ----------------------
	.local	_ZN7acommonL15expect_mode_keyE....0x806e974
	.comm	_ZN7acommonL15expect_mode_keyE....0x806e974,4,4
# ----------------------
	.local	_ZN7acommonL12bad_mode_keyE....0x806e978
	.comm	_ZN7acommonL12bad_mode_keyE....0x806e978,4,4
# ----------------------
	.local	_ZN7acommonL19no_filter_to_optionE....0x806e97c
	.comm	_ZN7acommonL19no_filter_to_optionE....0x806e97c,4,4
# ----------------------
	.local	_ZN7acommonL16mode_option_nameE....0x806e980
	.comm	_ZN7acommonL16mode_option_nameE....0x806e980,4,4
# ----------------------
	.local	_ZN7acommonL22filter_mode_file_errorE....0x806e984
	.comm	_ZN7acommonL22filter_mode_file_errorE....0x806e984,4,4
# ----------------------
	.local	_ZN7acommonL20cant_describe_filterE....0x806e988
	.comm	_ZN7acommonL20cant_describe_filterE....0x806e988,4,4
# ----------------------
	.local	_ZN7acommonL23invalid_option_modifierE....0x806e98c
	.comm	_ZN7acommonL23invalid_option_modifierE....0x806e98c,4,4
# ----------------------
	.local	_ZN7acommonL12options_onlyE....0x806e990
	.comm	_ZN7acommonL12options_onlyE....0x806e990,4,4
# ----------------------
	.local	_ZN7acommonL16identical_optionE....0x806e994
	.comm	_ZN7acommonL16identical_optionE....0x806e994,4,4
# ----------------------
	.local	_ZN7acommonL11bad_versionE....0x806e998
	.comm	_ZN7acommonL11bad_versionE....0x806e998,4,4
# ----------------------
	.local	_ZN7acommonL17confusing_versionE....0x806e99c
	.comm	_ZN7acommonL17confusing_versionE....0x806e99c,4,4
# ----------------------
	.local	_ZN7acommonL14no_such_filterE....0x806e9a0
	.comm	_ZN7acommonL14no_such_filterE....0x806e9a0,4,4
# ----------------------
	.local	_ZN7acommonL12empty_filterE....0x806e9a4
	.comm	_ZN7acommonL12empty_filterE....0x806e9a4,4,4
# ----------------------
	.local	_ZN7acommonL16cant_dlopen_fileE....0x806e9a8
	.comm	_ZN7acommonL16cant_dlopen_fileE....0x806e9a8,4,4
# ----------------------
	.local	_ZN7acommonL12filter_errorE....0x806e9ac
	.comm	_ZN7acommonL12filter_errorE....0x806e9ac,4,4
# ----------------------
	.local	_ZN7acommonL18bad_version_stringE....0x806e9b0
	.comm	_ZN7acommonL18bad_version_stringE....0x806e9b0,4,4
# ----------------------
	.local	_ZN7acommonL21version_control_errorE....0x806e9b4
	.comm	_ZN7acommonL21version_control_errorE....0x806e9b4,4,4
# ----------------------
	.local	_ZN7acommonL17conflicting_flagsE....0x806e9b8
	.comm	_ZN7acommonL17conflicting_flagsE....0x806e9b8,4,4
# ----------------------
	.local	_ZN7acommonL12invalid_flagE....0x806e9bc
	.comm	_ZN7acommonL12invalid_flagE....0x806e9bc,4,4
# ----------------------
	.local	_ZN7acommonL21word_list_flags_errorE....0x806e9c0
	.comm	_ZN7acommonL21word_list_flags_errorE....0x806e9c0,4,4
# ----------------------
	.local	_ZN7acommonL15unknown_unicharE....0x806e9c4
	.comm	_ZN7acommonL15unknown_unicharE....0x806e9c4,4,4
# ----------------------
	.local	_ZN7acommonL18inapplicable_affixE....0x806e9c8
	.comm	_ZN7acommonL18inapplicable_affixE....0x806e9c8,4,4
# ----------------------
	.local	_ZN7acommonL13invalid_affixE....0x806e9cc
	.comm	_ZN7acommonL13invalid_affixE....0x806e9cc,4,4
# ----------------------
	.local	_ZN7acommonL12invalid_wordE....0x806e9d0
	.comm	_ZN7acommonL12invalid_wordE....0x806e9d0,4,4
# ----------------------
	.local	_ZN7acommonL14invalid_stringE....0x806e9d4
	.comm	_ZN7acommonL14invalid_stringE....0x806e9d4,4,4
# ----------------------
	.local	_ZN7acommonL15bad_input_errorE....0x806e9d8
	.comm	_ZN7acommonL15bad_input_errorE....0x806e9d8,4,4
# ----------------------
	.local	_ZN7acommonL12process_diedE....0x806e9dc
	.comm	_ZN7acommonL12process_diedE....0x806e9dc,4,4
# ----------------------
	.local	_ZN7acommonL16cant_create_pipeE....0x806e9e0
	.comm	_ZN7acommonL16cant_create_pipeE....0x806e9e0,4,4
# ----------------------
	.local	_ZN7acommonL10pipe_errorE....0x806e9e4
	.comm	_ZN7acommonL10pipe_errorE....0x806e9e4,4,4
# ----------------------
	.local	_ZN7acommonL24conversion_not_supportedE....0x806e9e8
	.comm	_ZN7acommonL24conversion_not_supportedE....0x806e9e8,4,4
# ----------------------
	.local	_ZN7acommonL22encoding_not_supportedE....0x806e9ec
	.comm	_ZN7acommonL22encoding_not_supportedE....0x806e9ec,4,4
# ----------------------
	.local	_ZN7acommonL16unknown_encodingE....0x806e9f0
	.comm	_ZN7acommonL16unknown_encodingE....0x806e9f0,4,4
# ----------------------
	.local	_ZN7acommonL14encoding_errorE....0x806e9f4
	.comm	_ZN7acommonL14encoding_errorE....0x806e9f4,4,4
# ----------------------
	.local	_ZN7acommonL18incorrect_encodingE....0x806e9f8
	.comm	_ZN7acommonL18incorrect_encodingE....0x806e9f8,4,4
# ----------------------
	.local	_ZN7acommonL18invalid_cond_stripE....0x806e9fc
	.comm	_ZN7acommonL18invalid_cond_stripE....0x806e9fc,4,4
# ----------------------
	.local	_ZN7acommonL12invalid_condE....0x806ea00
	.comm	_ZN7acommonL12invalid_condE....0x806ea00,4,4
# ----------------------
	.local	_ZN7acommonL13corrupt_affixE....0x806ea04
	.comm	_ZN7acommonL13corrupt_affixE....0x806ea04,4,4
# ----------------------
	.local	_ZN7acommonL11affix_errorE....0x806ea08
	.comm	_ZN7acommonL11affix_errorE....0x806ea08,4,4
# ----------------------
	.local	_ZN7acommonL19mismatched_languageE....0x806ea0c
	.comm	_ZN7acommonL19mismatched_languageE....0x806ea0c,4,4
# ----------------------
	.local	_ZN7acommonL20no_wordlist_for_langE....0x806ea10
	.comm	_ZN7acommonL20no_wordlist_for_langE....0x806ea10,4,4
# ----------------------
	.local	_ZN7acommonL22language_not_supportedE....0x806ea14
	.comm	_ZN7acommonL22language_not_supportedE....0x806ea14,4,4
# ----------------------
	.local	_ZN7acommonL18unknown_soundslikeE....0x806ea18
	.comm	_ZN7acommonL18unknown_soundslikeE....0x806ea18,4,4
# ----------------------
	.local	_ZN7acommonL16unknown_languageE....0x806ea1c
	.comm	_ZN7acommonL16unknown_languageE....0x806ea1c,4,4
# ----------------------
	.local	_ZN7acommonL22language_related_errorE....0x806ea20
	.comm	_ZN7acommonL22language_related_errorE....0x806ea20,4,4
# ----------------------
	.local	_ZN7acommonL14no_value_clearE....0x806ea24
	.comm	_ZN7acommonL14no_value_clearE....0x806ea24,4,4
# ----------------------
	.local	_ZN7acommonL16no_value_disableE....0x806ea28
	.comm	_ZN7acommonL16no_value_disableE....0x806ea28,4,4
# ----------------------
	.local	_ZN7acommonL15no_value_enableE....0x806ea2c
	.comm	_ZN7acommonL15no_value_enableE....0x806ea2c,4,4
# ----------------------
	.local	_ZN7acommonL14no_value_resetE....0x806ea30
	.comm	_ZN7acommonL14no_value_resetE....0x806ea30,4,4
# ----------------------
	.local	_ZN7acommonL12key_not_listE....0x806ea34
	.comm	_ZN7acommonL12key_not_listE....0x806ea34,4,4
# ----------------------
	.local	_ZN7acommonL12key_not_boolE....0x806ea38
	.comm	_ZN7acommonL12key_not_boolE....0x806ea38,4,4
# ----------------------
	.local	_ZN7acommonL11key_not_intE....0x806ea3c
	.comm	_ZN7acommonL11key_not_intE....0x806ea3c,4,4
# ----------------------
	.local	_ZN7acommonL14key_not_stringE....0x806ea40
	.comm	_ZN7acommonL14key_not_stringE....0x806ea40,4,4
# ----------------------
	.local	_ZN7acommonL9duplicateE....0x806ea44
	.comm	_ZN7acommonL9duplicateE....0x806ea44,4,4
# ----------------------
	.local	_ZN7acommonL9bad_valueE....0x806ea48
	.comm	_ZN7acommonL9bad_valueE....0x806ea48,4,4
# ----------------------
	.local	_ZN7acommonL7bad_keyE....0x806ea4c
	.comm	_ZN7acommonL7bad_keyE....0x806ea4c,4,4
# ----------------------
	.local	_ZN7acommonL17cant_change_valueE....0x806ea50
	.comm	_ZN7acommonL17cant_change_valueE....0x806ea50,4,4
# ----------------------
	.local	_ZN7acommonL11unknown_keyE....0x806ea54
	.comm	_ZN7acommonL11unknown_keyE....0x806ea54,4,4
# ----------------------
	.local	_ZN7acommonL12config_errorE....0x806ea58
	.comm	_ZN7acommonL12config_errorE....0x806ea58,4,4
# ----------------------
	.local	_ZN7acommonL13cant_read_dirE....0x806ea5c
	.comm	_ZN7acommonL13cant_read_dirE....0x806ea5c,4,4
# ----------------------
	.local	_ZN7acommonL9dir_errorE....0x806ea60
	.comm	_ZN7acommonL9dir_errorE....0x806ea60,4,4
# ----------------------
	.local	_ZN7acommonL15bad_file_formatE....0x806ea64
	.comm	_ZN7acommonL15bad_file_formatE....0x806ea64,4,4
# ----------------------
	.local	_ZN7acommonL12invalid_nameE....0x806ea68
	.comm	_ZN7acommonL12invalid_nameE....0x806ea68,4,4
# ----------------------
	.local	_ZN7acommonL15cant_write_fileE....0x806ea6c
	.comm	_ZN7acommonL15cant_write_fileE....0x806ea6c,4,4
# ----------------------
	.local	_ZN7acommonL14cant_read_fileE....0x806ea70
	.comm	_ZN7acommonL14cant_read_fileE....0x806ea70,4,4
# ----------------------
	.local	_ZN7acommonL20cant_open_file_errorE....0x806ea74
	.comm	_ZN7acommonL20cant_open_file_errorE....0x806ea74,4,4
# ----------------------
	.local	_ZN7acommonL10file_errorE....0x806ea78
	.comm	_ZN7acommonL10file_errorE....0x806ea78,4,4
# ----------------------
	.local	_ZN7acommonL20unimplemented_methodE....0x806ea7c
	.comm	_ZN7acommonL20unimplemented_methodE....0x806ea7c,4,4
# ----------------------
	.local	_ZN7acommonL9cant_copyE....0x806ea80
	.comm	_ZN7acommonL9cant_copyE....0x806ea80,4,4
# ----------------------
	.local	_ZN7acommonL29operation_not_supported_errorE....0x806ea84
	.comm	_ZN7acommonL29operation_not_supported_errorE....0x806ea84,4,4
# ----------------------
	.local	_ZN7acommonL11other_errorE....0x806ea88
	.comm	_ZN7acommonL11other_errorE....0x806ea88,4,4
# ----------------------
	.local	_ZL16saved_attributes
	.comm	_ZL16saved_attributes,60,4
# ----------------------
	.local	_ZL14new_attributes
	.comm	_ZL14new_attributes,60,8
# ----------------------
	.local	_ZN7acommonL6no_errE....0x806eb5c
	.comm	_ZN7acommonL6no_errE....0x806eb5c,4,4
# ----------------------
	.local	_ZN7acommonL18invalid_expressionE....0x806eb60
	.comm	_ZN7acommonL18invalid_expressionE....0x806eb60,4,4
# ----------------------
	.local	_ZN7acommonL16expression_errorE....0x806eb64
	.comm	_ZN7acommonL16expression_errorE....0x806eb64,4,4
# ----------------------
	.local	_ZN7acommonL9bad_magicE....0x806eb68
	.comm	_ZN7acommonL9bad_magicE....0x806eb68,4,4
# ----------------------
	.local	_ZN7acommonL13missing_magicE....0x806eb6c
	.comm	_ZN7acommonL13missing_magicE....0x806eb6c,4,4
# ----------------------
	.local	_ZN7acommonL16file_magic_rangeE....0x806eb70
	.comm	_ZN7acommonL16file_magic_rangeE....0x806eb70,4,4
# ----------------------
	.local	_ZN7acommonL14file_magic_posE....0x806eb74
	.comm	_ZN7acommonL14file_magic_posE....0x806eb74,4,4
# ----------------------
	.local	_ZN7acommonL23filter_mode_magic_errorE....0x806eb78
	.comm	_ZN7acommonL23filter_mode_magic_errorE....0x806eb78,4,4
# ----------------------
	.local	_ZN7acommonL18mode_extend_expandE....0x806eb7c
	.comm	_ZN7acommonL18mode_extend_expandE....0x806eb7c,4,4
# ----------------------
	.local	_ZN7acommonL12unknown_modeE....0x806eb80
	.comm	_ZN7acommonL12unknown_modeE....0x806eb80,4,4
# ----------------------
	.local	_ZN7acommonL24filter_mode_expand_errorE....0x806eb84
	.comm	_ZN7acommonL24filter_mode_expand_errorE....0x806eb84,4,4
# ----------------------
	.local	_ZN7acommonL14empty_file_extE....0x806eb88
	.comm	_ZN7acommonL14empty_file_extE....0x806eb88,4,4
# ----------------------
	.local	_ZN7acommonL24missing_magic_expressionE....0x806eb8c
	.comm	_ZN7acommonL24missing_magic_expressionE....0x806eb8c,4,4
# ----------------------
	.local	_ZN7acommonL16bad_mode_versionE....0x806eb90
	.comm	_ZN7acommonL16bad_mode_versionE....0x806eb90,4,4
# ----------------------
	.local	_ZN7acommonL22confusing_mode_versionE....0x806eb94
	.comm	_ZN7acommonL22confusing_mode_versionE....0x806eb94,4,4
# ----------------------
	.local	_ZN7acommonL24mode_version_requirementE....0x806eb98
	.comm	_ZN7acommonL24mode_version_requirementE....0x806eb98,4,4
# ----------------------
	.local	_ZN7acommonL15expect_mode_keyE....0x806eb9c
	.comm	_ZN7acommonL15expect_mode_keyE....0x806eb9c,4,4
# ----------------------
	.local	_ZN7acommonL12bad_mode_keyE....0x806eba0
	.comm	_ZN7acommonL12bad_mode_keyE....0x806eba0,4,4
# ----------------------
	.local	_ZN7acommonL19no_filter_to_optionE....0x806eba4
	.comm	_ZN7acommonL19no_filter_to_optionE....0x806eba4,4,4
# ----------------------
	.local	_ZN7acommonL16mode_option_nameE....0x806eba8
	.comm	_ZN7acommonL16mode_option_nameE....0x806eba8,4,4
# ----------------------
	.local	_ZN7acommonL22filter_mode_file_errorE....0x806ebac
	.comm	_ZN7acommonL22filter_mode_file_errorE....0x806ebac,4,4
# ----------------------
	.local	_ZN7acommonL20cant_describe_filterE....0x806ebb0
	.comm	_ZN7acommonL20cant_describe_filterE....0x806ebb0,4,4
# ----------------------
	.local	_ZN7acommonL23invalid_option_modifierE....0x806ebb4
	.comm	_ZN7acommonL23invalid_option_modifierE....0x806ebb4,4,4
# ----------------------
	.local	_ZN7acommonL12options_onlyE....0x806ebb8
	.comm	_ZN7acommonL12options_onlyE....0x806ebb8,4,4
# ----------------------
	.local	_ZN7acommonL16identical_optionE....0x806ebbc
	.comm	_ZN7acommonL16identical_optionE....0x806ebbc,4,4
# ----------------------
	.local	_ZN7acommonL11bad_versionE....0x806ebc0
	.comm	_ZN7acommonL11bad_versionE....0x806ebc0,4,4
# ----------------------
	.local	_ZN7acommonL17confusing_versionE....0x806ebc4
	.comm	_ZN7acommonL17confusing_versionE....0x806ebc4,4,4
# ----------------------
	.local	_ZN7acommonL14no_such_filterE....0x806ebc8
	.comm	_ZN7acommonL14no_such_filterE....0x806ebc8,4,4
# ----------------------
	.local	_ZN7acommonL12empty_filterE....0x806ebcc
	.comm	_ZN7acommonL12empty_filterE....0x806ebcc,4,4
# ----------------------
	.local	_ZN7acommonL16cant_dlopen_fileE....0x806ebd0
	.comm	_ZN7acommonL16cant_dlopen_fileE....0x806ebd0,4,4
# ----------------------
	.local	_ZN7acommonL12filter_errorE....0x806ebd4
	.comm	_ZN7acommonL12filter_errorE....0x806ebd4,4,4
# ----------------------
	.local	_ZN7acommonL18bad_version_stringE....0x806ebd8
	.comm	_ZN7acommonL18bad_version_stringE....0x806ebd8,4,4
# ----------------------
	.local	_ZN7acommonL21version_control_errorE....0x806ebdc
	.comm	_ZN7acommonL21version_control_errorE....0x806ebdc,4,4
# ----------------------
	.local	_ZN7acommonL17conflicting_flagsE....0x806ebe0
	.comm	_ZN7acommonL17conflicting_flagsE....0x806ebe0,4,4
# ----------------------
	.local	_ZN7acommonL12invalid_flagE....0x806ebe4
	.comm	_ZN7acommonL12invalid_flagE....0x806ebe4,4,4
# ----------------------
	.local	_ZN7acommonL21word_list_flags_errorE....0x806ebe8
	.comm	_ZN7acommonL21word_list_flags_errorE....0x806ebe8,4,4
# ----------------------
	.local	_ZN7acommonL15unknown_unicharE....0x806ebec
	.comm	_ZN7acommonL15unknown_unicharE....0x806ebec,4,4
# ----------------------
	.local	_ZN7acommonL18inapplicable_affixE....0x806ebf0
	.comm	_ZN7acommonL18inapplicable_affixE....0x806ebf0,4,4
# ----------------------
	.local	_ZN7acommonL13invalid_affixE....0x806ebf4
	.comm	_ZN7acommonL13invalid_affixE....0x806ebf4,4,4
# ----------------------
	.local	_ZN7acommonL12invalid_wordE....0x806ebf8
	.comm	_ZN7acommonL12invalid_wordE....0x806ebf8,4,4
# ----------------------
	.local	_ZN7acommonL14invalid_stringE....0x806ebfc
	.comm	_ZN7acommonL14invalid_stringE....0x806ebfc,4,4
# ----------------------
	.local	_ZN7acommonL15bad_input_errorE....0x806ec00
	.comm	_ZN7acommonL15bad_input_errorE....0x806ec00,4,4
# ----------------------
	.local	_ZN7acommonL12process_diedE....0x806ec04
	.comm	_ZN7acommonL12process_diedE....0x806ec04,4,4
# ----------------------
	.local	_ZN7acommonL16cant_create_pipeE....0x806ec08
	.comm	_ZN7acommonL16cant_create_pipeE....0x806ec08,4,4
# ----------------------
	.local	_ZN7acommonL10pipe_errorE....0x806ec0c
	.comm	_ZN7acommonL10pipe_errorE....0x806ec0c,4,4
# ----------------------
	.local	_ZN7acommonL24conversion_not_supportedE....0x806ec10
	.comm	_ZN7acommonL24conversion_not_supportedE....0x806ec10,4,4
# ----------------------
	.local	_ZN7acommonL22encoding_not_supportedE....0x806ec14
	.comm	_ZN7acommonL22encoding_not_supportedE....0x806ec14,4,4
# ----------------------
	.local	_ZN7acommonL16unknown_encodingE....0x806ec18
	.comm	_ZN7acommonL16unknown_encodingE....0x806ec18,4,4
# ----------------------
	.local	_ZN7acommonL14encoding_errorE....0x806ec1c
	.comm	_ZN7acommonL14encoding_errorE....0x806ec1c,4,4
# ----------------------
	.local	_ZN7acommonL18incorrect_encodingE....0x806ec20
	.comm	_ZN7acommonL18incorrect_encodingE....0x806ec20,4,4
# ----------------------
	.local	_ZN7acommonL18invalid_cond_stripE....0x806ec24
	.comm	_ZN7acommonL18invalid_cond_stripE....0x806ec24,4,4
# ----------------------
	.local	_ZN7acommonL12invalid_condE....0x806ec28
	.comm	_ZN7acommonL12invalid_condE....0x806ec28,4,4
# ----------------------
	.local	_ZN7acommonL13corrupt_affixE....0x806ec2c
	.comm	_ZN7acommonL13corrupt_affixE....0x806ec2c,4,4
# ----------------------
	.local	_ZN7acommonL11affix_errorE....0x806ec30
	.comm	_ZN7acommonL11affix_errorE....0x806ec30,4,4
# ----------------------
	.local	_ZN7acommonL19mismatched_languageE....0x806ec34
	.comm	_ZN7acommonL19mismatched_languageE....0x806ec34,4,4
# ----------------------
	.local	_ZN7acommonL20no_wordlist_for_langE....0x806ec38
	.comm	_ZN7acommonL20no_wordlist_for_langE....0x806ec38,4,4
# ----------------------
	.local	_ZN7acommonL22language_not_supportedE....0x806ec3c
	.comm	_ZN7acommonL22language_not_supportedE....0x806ec3c,4,4
# ----------------------
	.local	_ZN7acommonL18unknown_soundslikeE....0x806ec40
	.comm	_ZN7acommonL18unknown_soundslikeE....0x806ec40,4,4
# ----------------------
	.local	_ZN7acommonL16unknown_languageE....0x806ec44
	.comm	_ZN7acommonL16unknown_languageE....0x806ec44,4,4
# ----------------------
	.local	_ZN7acommonL22language_related_errorE....0x806ec48
	.comm	_ZN7acommonL22language_related_errorE....0x806ec48,4,4
# ----------------------
	.local	_ZN7acommonL14no_value_clearE....0x806ec4c
	.comm	_ZN7acommonL14no_value_clearE....0x806ec4c,4,4
# ----------------------
	.local	_ZN7acommonL16no_value_disableE....0x806ec50
	.comm	_ZN7acommonL16no_value_disableE....0x806ec50,4,4
# ----------------------
	.local	_ZN7acommonL15no_value_enableE....0x806ec54
	.comm	_ZN7acommonL15no_value_enableE....0x806ec54,4,4
# ----------------------
	.local	_ZN7acommonL14no_value_resetE....0x806ec58
	.comm	_ZN7acommonL14no_value_resetE....0x806ec58,4,4
# ----------------------
	.local	_ZN7acommonL12key_not_listE....0x806ec5c
	.comm	_ZN7acommonL12key_not_listE....0x806ec5c,4,4
# ----------------------
	.local	_ZN7acommonL12key_not_boolE....0x806ec60
	.comm	_ZN7acommonL12key_not_boolE....0x806ec60,4,4
# ----------------------
	.local	_ZN7acommonL11key_not_intE....0x806ec64
	.comm	_ZN7acommonL11key_not_intE....0x806ec64,4,4
# ----------------------
	.local	_ZN7acommonL14key_not_stringE....0x806ec68
	.comm	_ZN7acommonL14key_not_stringE....0x806ec68,4,4
# ----------------------
	.local	_ZN7acommonL9duplicateE....0x806ec6c
	.comm	_ZN7acommonL9duplicateE....0x806ec6c,4,4
# ----------------------
	.local	_ZN7acommonL9bad_valueE....0x806ec70
	.comm	_ZN7acommonL9bad_valueE....0x806ec70,4,4
# ----------------------
	.local	_ZN7acommonL7bad_keyE....0x806ec74
	.comm	_ZN7acommonL7bad_keyE....0x806ec74,4,4
# ----------------------
	.local	_ZN7acommonL17cant_change_valueE....0x806ec78
	.comm	_ZN7acommonL17cant_change_valueE....0x806ec78,4,4
# ----------------------
	.local	_ZN7acommonL11unknown_keyE....0x806ec7c
	.comm	_ZN7acommonL11unknown_keyE....0x806ec7c,4,4
# ----------------------
	.local	_ZN7acommonL12config_errorE....0x806ec80
	.comm	_ZN7acommonL12config_errorE....0x806ec80,4,4
# ----------------------
	.local	_ZN7acommonL13cant_read_dirE....0x806ec84
	.comm	_ZN7acommonL13cant_read_dirE....0x806ec84,4,4
# ----------------------
	.local	_ZN7acommonL9dir_errorE....0x806ec88
	.comm	_ZN7acommonL9dir_errorE....0x806ec88,4,4
# ----------------------
	.local	_ZN7acommonL15bad_file_formatE....0x806ec8c
	.comm	_ZN7acommonL15bad_file_formatE....0x806ec8c,4,4
# ----------------------
	.local	_ZN7acommonL12invalid_nameE....0x806ec90
	.comm	_ZN7acommonL12invalid_nameE....0x806ec90,4,4
# ----------------------
	.local	_ZN7acommonL15cant_write_fileE....0x806ec94
	.comm	_ZN7acommonL15cant_write_fileE....0x806ec94,4,4
# ----------------------
	.local	_ZN7acommonL14cant_read_fileE....0x806ec98
	.comm	_ZN7acommonL14cant_read_fileE....0x806ec98,4,4
# ----------------------
	.local	_ZN7acommonL20cant_open_file_errorE....0x806ec9c
	.comm	_ZN7acommonL20cant_open_file_errorE....0x806ec9c,4,4
# ----------------------
	.local	_ZN7acommonL10file_errorE....0x806eca0
	.comm	_ZN7acommonL10file_errorE....0x806eca0,4,4
# ----------------------
	.local	_ZN7acommonL20unimplemented_methodE....0x806eca4
	.comm	_ZN7acommonL20unimplemented_methodE....0x806eca4,4,4
# ----------------------
	.local	_ZN7acommonL9cant_copyE....0x806eca8
	.comm	_ZN7acommonL9cant_copyE....0x806eca8,4,4
# ----------------------
	.local	_ZN7acommonL29operation_not_supported_errorE....0x806ecac
	.comm	_ZN7acommonL29operation_not_supported_errorE....0x806ecac,4,4
# ----------------------
	.local	_ZN7acommonL11other_errorE....0x806ecb0
	.comm	_ZN7acommonL11other_errorE....0x806ecb0,4,4
# ----------------------
	.local	_ZN7acommonL6no_errE....0x806ecb4
	.comm	_ZN7acommonL6no_errE....0x806ecb4,4,4
# ----------------------
	.local	_ZN7acommonL18invalid_expressionE....0x806ecb8
	.comm	_ZN7acommonL18invalid_expressionE....0x806ecb8,4,4
# ----------------------
	.local	_ZN7acommonL16expression_errorE....0x806ecbc
	.comm	_ZN7acommonL16expression_errorE....0x806ecbc,4,4
# ----------------------
	.local	_ZN7acommonL9bad_magicE....0x806ecc0
	.comm	_ZN7acommonL9bad_magicE....0x806ecc0,4,4
# ----------------------
	.local	_ZN7acommonL13missing_magicE....0x806ecc4
	.comm	_ZN7acommonL13missing_magicE....0x806ecc4,4,4
# ----------------------
	.local	_ZN7acommonL16file_magic_rangeE....0x806ecc8
	.comm	_ZN7acommonL16file_magic_rangeE....0x806ecc8,4,4
# ----------------------
	.local	_ZN7acommonL14file_magic_posE....0x806eccc
	.comm	_ZN7acommonL14file_magic_posE....0x806eccc,4,4
# ----------------------
	.local	_ZN7acommonL23filter_mode_magic_errorE....0x806ecd0
	.comm	_ZN7acommonL23filter_mode_magic_errorE....0x806ecd0,4,4
# ----------------------
	.local	_ZN7acommonL18mode_extend_expandE....0x806ecd4
	.comm	_ZN7acommonL18mode_extend_expandE....0x806ecd4,4,4
# ----------------------
	.local	_ZN7acommonL12unknown_modeE....0x806ecd8
	.comm	_ZN7acommonL12unknown_modeE....0x806ecd8,4,4
# ----------------------
	.local	_ZN7acommonL24filter_mode_expand_errorE....0x806ecdc
	.comm	_ZN7acommonL24filter_mode_expand_errorE....0x806ecdc,4,4
# ----------------------
	.local	_ZN7acommonL14empty_file_extE....0x806ece0
	.comm	_ZN7acommonL14empty_file_extE....0x806ece0,4,4
# ----------------------
	.local	_ZN7acommonL24missing_magic_expressionE....0x806ece4
	.comm	_ZN7acommonL24missing_magic_expressionE....0x806ece4,4,4
# ----------------------
	.local	_ZN7acommonL16bad_mode_versionE....0x806ece8
	.comm	_ZN7acommonL16bad_mode_versionE....0x806ece8,4,4
# ----------------------
	.local	_ZN7acommonL22confusing_mode_versionE....0x806ecec
	.comm	_ZN7acommonL22confusing_mode_versionE....0x806ecec,4,4
# ----------------------
	.local	_ZN7acommonL24mode_version_requirementE....0x806ecf0
	.comm	_ZN7acommonL24mode_version_requirementE....0x806ecf0,4,4
# ----------------------
	.local	_ZN7acommonL15expect_mode_keyE....0x806ecf4
	.comm	_ZN7acommonL15expect_mode_keyE....0x806ecf4,4,4
# ----------------------
	.local	_ZN7acommonL12bad_mode_keyE....0x806ecf8
	.comm	_ZN7acommonL12bad_mode_keyE....0x806ecf8,4,4
# ----------------------
	.local	_ZN7acommonL19no_filter_to_optionE....0x806ecfc
	.comm	_ZN7acommonL19no_filter_to_optionE....0x806ecfc,4,4
# ----------------------
	.local	_ZN7acommonL16mode_option_nameE....0x806ed00
	.comm	_ZN7acommonL16mode_option_nameE....0x806ed00,4,4
# ----------------------
	.local	_ZN7acommonL22filter_mode_file_errorE....0x806ed04
	.comm	_ZN7acommonL22filter_mode_file_errorE....0x806ed04,4,4
# ----------------------
	.local	_ZN7acommonL20cant_describe_filterE....0x806ed08
	.comm	_ZN7acommonL20cant_describe_filterE....0x806ed08,4,4
# ----------------------
	.local	_ZN7acommonL23invalid_option_modifierE....0x806ed0c
	.comm	_ZN7acommonL23invalid_option_modifierE....0x806ed0c,4,4
# ----------------------
	.local	_ZN7acommonL12options_onlyE....0x806ed10
	.comm	_ZN7acommonL12options_onlyE....0x806ed10,4,4
# ----------------------
	.local	_ZN7acommonL16identical_optionE....0x806ed14
	.comm	_ZN7acommonL16identical_optionE....0x806ed14,4,4
# ----------------------
	.local	_ZN7acommonL11bad_versionE....0x806ed18
	.comm	_ZN7acommonL11bad_versionE....0x806ed18,4,4
# ----------------------
	.local	_ZN7acommonL17confusing_versionE....0x806ed1c
	.comm	_ZN7acommonL17confusing_versionE....0x806ed1c,4,4
# ----------------------
	.local	_ZN7acommonL14no_such_filterE....0x806ed20
	.comm	_ZN7acommonL14no_such_filterE....0x806ed20,4,4
# ----------------------
	.local	_ZN7acommonL12empty_filterE....0x806ed24
	.comm	_ZN7acommonL12empty_filterE....0x806ed24,4,4
# ----------------------
	.local	_ZN7acommonL16cant_dlopen_fileE....0x806ed28
	.comm	_ZN7acommonL16cant_dlopen_fileE....0x806ed28,4,4
# ----------------------
	.local	_ZN7acommonL12filter_errorE....0x806ed2c
	.comm	_ZN7acommonL12filter_errorE....0x806ed2c,4,4
# ----------------------
	.local	_ZN7acommonL18bad_version_stringE....0x806ed30
	.comm	_ZN7acommonL18bad_version_stringE....0x806ed30,4,4
# ----------------------
	.local	_ZN7acommonL21version_control_errorE....0x806ed34
	.comm	_ZN7acommonL21version_control_errorE....0x806ed34,4,4
# ----------------------
	.local	_ZN7acommonL17conflicting_flagsE....0x806ed38
	.comm	_ZN7acommonL17conflicting_flagsE....0x806ed38,4,4
# ----------------------
	.local	_ZN7acommonL12invalid_flagE....0x806ed3c
	.comm	_ZN7acommonL12invalid_flagE....0x806ed3c,4,4
# ----------------------
	.local	_ZN7acommonL21word_list_flags_errorE....0x806ed40
	.comm	_ZN7acommonL21word_list_flags_errorE....0x806ed40,4,4
# ----------------------
	.local	_ZN7acommonL15unknown_unicharE....0x806ed44
	.comm	_ZN7acommonL15unknown_unicharE....0x806ed44,4,4
# ----------------------
	.local	_ZN7acommonL18inapplicable_affixE....0x806ed48
	.comm	_ZN7acommonL18inapplicable_affixE....0x806ed48,4,4
# ----------------------
	.local	_ZN7acommonL13invalid_affixE....0x806ed4c
	.comm	_ZN7acommonL13invalid_affixE....0x806ed4c,4,4
# ----------------------
	.local	_ZN7acommonL12invalid_wordE....0x806ed50
	.comm	_ZN7acommonL12invalid_wordE....0x806ed50,4,4
# ----------------------
	.local	_ZN7acommonL14invalid_stringE....0x806ed54
	.comm	_ZN7acommonL14invalid_stringE....0x806ed54,4,4
# ----------------------
	.local	_ZN7acommonL15bad_input_errorE....0x806ed58
	.comm	_ZN7acommonL15bad_input_errorE....0x806ed58,4,4
# ----------------------
	.local	_ZN7acommonL12process_diedE....0x806ed5c
	.comm	_ZN7acommonL12process_diedE....0x806ed5c,4,4
# ----------------------
	.local	_ZN7acommonL16cant_create_pipeE....0x806ed60
	.comm	_ZN7acommonL16cant_create_pipeE....0x806ed60,4,4
# ----------------------
	.local	_ZN7acommonL10pipe_errorE....0x806ed64
	.comm	_ZN7acommonL10pipe_errorE....0x806ed64,4,4
# ----------------------
	.local	_ZN7acommonL24conversion_not_supportedE....0x806ed68
	.comm	_ZN7acommonL24conversion_not_supportedE....0x806ed68,4,4
# ----------------------
	.local	_ZN7acommonL22encoding_not_supportedE....0x806ed6c
	.comm	_ZN7acommonL22encoding_not_supportedE....0x806ed6c,4,4
# ----------------------
	.local	_ZN7acommonL16unknown_encodingE....0x806ed70
	.comm	_ZN7acommonL16unknown_encodingE....0x806ed70,4,4
# ----------------------
	.local	_ZN7acommonL14encoding_errorE....0x806ed74
	.comm	_ZN7acommonL14encoding_errorE....0x806ed74,4,4
# ----------------------
	.local	_ZN7acommonL18incorrect_encodingE....0x806ed78
	.comm	_ZN7acommonL18incorrect_encodingE....0x806ed78,4,4
# ----------------------
	.local	_ZN7acommonL18invalid_cond_stripE....0x806ed7c
	.comm	_ZN7acommonL18invalid_cond_stripE....0x806ed7c,4,4
# ----------------------
	.local	_ZN7acommonL12invalid_condE....0x806ed80
	.comm	_ZN7acommonL12invalid_condE....0x806ed80,4,4
# ----------------------
	.local	_ZN7acommonL13corrupt_affixE....0x806ed84
	.comm	_ZN7acommonL13corrupt_affixE....0x806ed84,4,4
# ----------------------
	.local	_ZN7acommonL11affix_errorE....0x806ed88
	.comm	_ZN7acommonL11affix_errorE....0x806ed88,4,4
# ----------------------
	.local	_ZN7acommonL19mismatched_languageE....0x806ed8c
	.comm	_ZN7acommonL19mismatched_languageE....0x806ed8c,4,4
# ----------------------
	.local	_ZN7acommonL20no_wordlist_for_langE....0x806ed90
	.comm	_ZN7acommonL20no_wordlist_for_langE....0x806ed90,4,4
# ----------------------
	.local	_ZN7acommonL22language_not_supportedE....0x806ed94
	.comm	_ZN7acommonL22language_not_supportedE....0x806ed94,4,4
# ----------------------
	.local	_ZN7acommonL18unknown_soundslikeE....0x806ed98
	.comm	_ZN7acommonL18unknown_soundslikeE....0x806ed98,4,4
# ----------------------
	.local	_ZN7acommonL16unknown_languageE....0x806ed9c
	.comm	_ZN7acommonL16unknown_languageE....0x806ed9c,4,4
# ----------------------
	.local	_ZN7acommonL22language_related_errorE....0x806eda0
	.comm	_ZN7acommonL22language_related_errorE....0x806eda0,4,4
# ----------------------
	.local	_ZN7acommonL14no_value_clearE....0x806eda4
	.comm	_ZN7acommonL14no_value_clearE....0x806eda4,4,4
# ----------------------
	.local	_ZN7acommonL16no_value_disableE....0x806eda8
	.comm	_ZN7acommonL16no_value_disableE....0x806eda8,4,4
# ----------------------
	.local	_ZN7acommonL15no_value_enableE....0x806edac
	.comm	_ZN7acommonL15no_value_enableE....0x806edac,4,4
# ----------------------
	.local	_ZN7acommonL14no_value_resetE....0x806edb0
	.comm	_ZN7acommonL14no_value_resetE....0x806edb0,4,4
# ----------------------
	.local	_ZN7acommonL12key_not_listE....0x806edb4
	.comm	_ZN7acommonL12key_not_listE....0x806edb4,4,4
# ----------------------
	.local	_ZN7acommonL12key_not_boolE....0x806edb8
	.comm	_ZN7acommonL12key_not_boolE....0x806edb8,4,4
# ----------------------
	.local	_ZN7acommonL11key_not_intE....0x806edbc
	.comm	_ZN7acommonL11key_not_intE....0x806edbc,4,4
# ----------------------
	.local	_ZN7acommonL14key_not_stringE....0x806edc0
	.comm	_ZN7acommonL14key_not_stringE....0x806edc0,4,4
# ----------------------
	.local	_ZN7acommonL9duplicateE....0x806edc4
	.comm	_ZN7acommonL9duplicateE....0x806edc4,4,4
# ----------------------
	.local	_ZN7acommonL9bad_valueE....0x806edc8
	.comm	_ZN7acommonL9bad_valueE....0x806edc8,4,4
# ----------------------
	.local	_ZN7acommonL7bad_keyE....0x806edcc
	.comm	_ZN7acommonL7bad_keyE....0x806edcc,4,4
# ----------------------
	.local	_ZN7acommonL17cant_change_valueE....0x806edd0
	.comm	_ZN7acommonL17cant_change_valueE....0x806edd0,4,4
# ----------------------
	.local	_ZN7acommonL11unknown_keyE....0x806edd4
	.comm	_ZN7acommonL11unknown_keyE....0x806edd4,4,4
# ----------------------
	.local	_ZN7acommonL12config_errorE....0x806edd8
	.comm	_ZN7acommonL12config_errorE....0x806edd8,4,4
# ----------------------
	.local	_ZN7acommonL13cant_read_dirE....0x806eddc
	.comm	_ZN7acommonL13cant_read_dirE....0x806eddc,4,4
# ----------------------
	.local	_ZN7acommonL9dir_errorE....0x806ede0
	.comm	_ZN7acommonL9dir_errorE....0x806ede0,4,4
# ----------------------
	.local	_ZN7acommonL15bad_file_formatE....0x806ede4
	.comm	_ZN7acommonL15bad_file_formatE....0x806ede4,4,4
# ----------------------
	.local	_ZN7acommonL12invalid_nameE....0x806ede8
	.comm	_ZN7acommonL12invalid_nameE....0x806ede8,4,4
# ----------------------
	.local	_ZN7acommonL15cant_write_fileE....0x806edec
	.comm	_ZN7acommonL15cant_write_fileE....0x806edec,4,4
# ----------------------
	.local	_ZN7acommonL14cant_read_fileE....0x806edf0
	.comm	_ZN7acommonL14cant_read_fileE....0x806edf0,4,4
# ----------------------
	.local	_ZN7acommonL20cant_open_file_errorE....0x806edf4
	.comm	_ZN7acommonL20cant_open_file_errorE....0x806edf4,4,4
# ----------------------
	.local	_ZN7acommonL10file_errorE....0x806edf8
	.comm	_ZN7acommonL10file_errorE....0x806edf8,4,4
# ----------------------
	.local	_ZN7acommonL20unimplemented_methodE....0x806edfc
	.comm	_ZN7acommonL20unimplemented_methodE....0x806edfc,4,4
# ----------------------
	.local	_ZN7acommonL9cant_copyE....0x806ee00
	.comm	_ZN7acommonL9cant_copyE....0x806ee00,4,4
# ----------------------
	.local	_ZN7acommonL29operation_not_supported_errorE....0x806ee04
	.comm	_ZN7acommonL29operation_not_supported_errorE....0x806ee04,4,4
# ----------------------
	.local	_ZN7acommonL11other_errorE....0x806ee08
	.comm	_ZN7acommonL11other_errorE....0x806ee08,4,4
# ----------------------
	.weak	_ZN7acommon8StackPtrINS_6VectorI6ChoiceEEED2Ev
	.set	_ZN7acommon8StackPtrINS_6VectorI6ChoiceEEED2Ev,_ZN7acommon8StackPtrINS_6VectorI6ChoiceEEED1Ev
	.weak	_ZN7acommon8StackPtrINS_6ConfigEED2Ev
	.set	_ZN7acommon8StackPtrINS_6ConfigEED2Ev,_ZN7acommon8StackPtrINS_6ConfigEED1Ev
	.weak	_ZN7acommon8PosibErrIvED2Ev
	.set	_ZN7acommon8PosibErrIvED2Ev,_ZN7acommon8PosibErrIvED1Ev
	.weak	_ZN7acommon8StackPtrI13CheckerStringED1Ev
	.set	_ZN7acommon8StackPtrI13CheckerStringED1Ev,_ZN7acommon8StackPtrI13CheckerStringED2Ev
	.weak	_ZTVN10__cxxabiv117__class_type_infoE
	.hidden	__dso_handle
	.weak	_ZN7acommon8PosibErrINS_6StringEED2Ev
	.set	_ZN7acommon8PosibErrINS_6StringEED2Ev,_ZN7acommon8PosibErrINS_6StringEED1Ev
	.weak	_ZTVN10__cxxabiv120__si_class_type_infoE
	.weak	_ZN7acommon5ConvPD2Ev
	.set	_ZN7acommon5ConvPD2Ev,_ZN7acommon5ConvPD1Ev
	.weak	_ZN7acommon4ConvD1Ev
	.set	_ZN7acommon4ConvD1Ev,_ZN7acommon4ConvD2Ev
	.weak	_ZN18IstreamEnumerationD1Ev
	.set	_ZN18IstreamEnumerationD1Ev,_ZN18IstreamEnumerationD2Ev
	.weak	_ZNSt6vectorIN7acommon6StringESaIS1_EED1Ev
	.set	_ZNSt6vectorIN7acommon6StringESaIS1_EED1Ev,_ZNSt6vectorIN7acommon6StringESaIS1_EED2Ev
	.weak	_ZN7acommon6VectorINS_6StringEED2Ev
	.set	_ZN7acommon6VectorINS_6StringEED2Ev,_ZN7acommon6VectorINS_6StringEED1Ev
	.weak	_ZN7acommon7ConvObjD2Ev
	.set	_ZN7acommon7ConvObjD2Ev,_ZN7acommon7ConvObjD1Ev
	.globl	_ZN13CheckerStringD2Ev
	.set	_ZN13CheckerStringD2Ev,_ZN13CheckerStringD1Ev
	.weak	_ZN7acommon9StringMapD2Ev
	.set	_ZN7acommon9StringMapD2Ev,_ZN7acommon9StringMapD1Ev
	.weak	_ZN7acommon6StringD1Ev
	.set	_ZN7acommon6StringD1Ev,_ZN7acommon6StringD2Ev
	.globl	_ZN13CheckerStringC2EP13AspellSpellerP8_IO_FILES3_i
	.set	_ZN13CheckerStringC2EP13AspellSpellerP8_IO_FILES3_i,_ZN13CheckerStringC1EP13AspellSpellerP8_IO_FILES3_i
	.weak	_ZN9ExpansionC2ERKS_
	.set	_ZN9ExpansionC2ERKS_,_ZN9ExpansionC1ERKS_
	.weak	_ZN7acommon19DictInfoEnumerationD1Ev
	.set	_ZN7acommon19DictInfoEnumerationD1Ev,_ZN7acommon19DictInfoEnumerationD2Ev
	.weak	_ZNSt6vectorIbSaIbEEC1EjRKbRKS0_
	.set	_ZNSt6vectorIbSaIbEEC1EjRKbRKS0_,_ZNSt6vectorIbSaIbEEC2EjRKbRKS0_
	.ident	"GCC: (Debian 4.9.2-10) 4.9.2"
	.section	.note.GNU-stack,"",@progbits
