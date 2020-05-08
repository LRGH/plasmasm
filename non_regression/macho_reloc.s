	.section	__TEXT,__text,regular,pure_instructions
	.section	__DWARF,__debug_info,regular,debug
Lsection_info:
	.section	__DWARF,__debug_abbrev,regular,debug
Lsection_abbrev:
	.section	__DWARF,__debug_aranges,regular,debug
	.section	__DWARF,__debug_macinfo,regular,debug
	.section	__DWARF,__debug_line,regular,debug
Lsection_line:
	.section	__DWARF,__debug_loc,regular,debug
	.section	__DWARF,__debug_str,regular,debug
Linfo_string:
	.section	__DWARF,__debug_ranges,regular,debug
Ldebug_range:
	.section	__DWARF,__debug_loc,regular,debug
Lsection_debug_loc:
	.file	1 "src/whoami.c"
	.file	2 "src/system.h"
	.section	__TEXT,__text,regular,pure_instructions
	.globl	_usage
	.align	4, 0x90
_usage:                                 ## @usage
Lfunc_begin0:
	.loc	1 39 0                  ## src/whoami.c:39:0
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp3:
	.cfi_def_cfa_offset 16
Ltmp4:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp5:
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
Ltmp6:
	.cfi_offset %rbx, -48
Ltmp7:
	.cfi_offset %r12, -40
Ltmp8:
	.cfi_offset %r14, -32
Ltmp9:
	.cfi_offset %r15, -24
	##DEBUG_VALUE: usage:status <- EDI
	movl	%edi, %r14d
Ltmp10:
	##DEBUG_VALUE: usage:status <- R14D
	.loc	1 40 0 prologue_end     ## src/whoami.c:40:0
	testl	%r14d, %r14d
	jne	LBB0_1
## BB#2:
	##DEBUG_VALUE: usage:status <- R14D
	.loc	1 44 0                  ## src/whoami.c:44:0
Ltmp11:
	movq	_program_name@GOTPCREL(%rip), %rax
	movq	(%rax), %rsi
	leaq	L_.str(%rip), %rdi
	xorl	%eax, %eax
	callq	_printf
	.loc	1 45 0                  ## src/whoami.c:45:0
	movq	___stdoutp@GOTPCREL(%rip), %rbx
	movq	(%rbx), %rsi
	leaq	L_.str1(%rip), %rdi
	callq	_fputs
	.loc	1 50 0                  ## src/whoami.c:50:0
	movq	(%rbx), %rsi
	leaq	L_.str2(%rip), %rdi
	callq	_fputs
	.loc	1 51 0                  ## src/whoami.c:51:0
	movq	(%rbx), %rsi
	leaq	L_.str3(%rip), %rdi
	callq	_fputs
	leaq	_emit_ancillary_info.infomap(%rip), %rbx
	leaq	L_.str10(%rip), %rsi
	.loc	2 584 0                 ## src/system.h:584:0
Ltmp12:
	leaq	L_.str4(%rip), %r12
	.align	4, 0x90
LBB0_4:                                 ## =>This Inner Loop Header: Depth=1
	##DEBUG_VALUE: usage:status <- R14D
	movq	%r12, %rdi
	callq	_strcmp
	testl	%eax, %eax
	je	LBB0_5
## BB#3:                                ##   in Loop: Header=BB0_4 Depth=1
	##DEBUG_VALUE: usage:status <- R14D
Ltmp13:
	##DEBUG_VALUE: map_prog <- RBX
	movq	16(%rbx), %rsi
	.loc	2 585 0                 ## src/system.h:585:0
	addq	$16, %rbx
Ltmp14:
	.loc	2 584 0                 ## src/system.h:584:0
	testq	%rsi, %rsi
	jne	LBB0_4
LBB0_5:                                 ## %.critedge.i
	##DEBUG_VALUE: usage:status <- R14D
	.loc	2 587 0                 ## src/system.h:587:0
	movq	8(%rbx), %r15
Ltmp15:
	##DEBUG_VALUE: node <- R15
	testq	%r15, %r15
	cmoveq	%r12, %r15
Ltmp16:
	.loc	2 590 0                 ## src/system.h:590:0
	leaq	L_.str19(%rip), %rdi
	leaq	L_.str6(%rip), %rsi
	leaq	L_.str20(%rip), %rdx
	xorl	%eax, %eax
	callq	_printf
	movl	$6, %edi
	xorl	%esi, %esi
	.loc	2 594 0                 ## src/system.h:594:0
	callq	_setlocale
Ltmp17:
	##DEBUG_VALUE: lc_messages <- RAX
	.loc	2 595 0                 ## src/system.h:595:0
	testq	%rax, %rax
	je	LBB0_8
## BB#6:
	##DEBUG_VALUE: usage:status <- R14D
Ltmp18:
	##DEBUG_VALUE: lc_messages <- RAX
	leaq	L_.str21(%rip), %rsi
	movl	$3, %edx
	movq	%rax, %rdi
	callq	_strncmp
Ltmp19:
	testl	%eax, %eax
	je	LBB0_8
## BB#7:
	##DEBUG_VALUE: usage:status <- R14D
	.loc	2 601 0                 ## src/system.h:601:0
	leaq	L_.str22(%rip), %rdi
	leaq	L_.str4(%rip), %rsi
	xorl	%eax, %eax
	callq	_printf
LBB0_8:                                 ## %emit_ancillary_info.exit
	##DEBUG_VALUE: usage:status <- R14D
	.loc	2 604 0                 ## src/system.h:604:0
	leaq	L_.str23(%rip), %rdi
	leaq	L_.str20(%rip), %rsi
	xorl	%eax, %eax
	movq	%r12, %rdx
	callq	_printf
	.loc	2 606 0                 ## src/system.h:606:0
	cmpq	%r12, %r15
	leaq	L_.str25(%rip), %rax
	leaq	L_.str5(%rip), %rdx
	cmoveq	%rax, %rdx
	leaq	L_.str24(%rip), %rdi
	xorl	%eax, %eax
	movq	%r15, %rsi
	callq	_printf
	##DEBUG_VALUE: usage:status <- R14D
Ltmp20:
	.loc	1 54 0                  ## src/whoami.c:54:0
	movl	%r14d, %edi
	callq	_exit
LBB0_1:
	##DEBUG_VALUE: usage:status <- R14D
	.loc	2 613 0                 ## src/system.h:613:0
Ltmp21:
	movq	___stderrp@GOTPCREL(%rip), %rax
	movq	(%rax), %rcx
	movq	_program_name@GOTPCREL(%rip), %rax
	movq	(%rax), %rdx
	leaq	L_.str26(%rip), %rsi
	xorl	%eax, %eax
	movq	%rcx, %rdi
	callq	_fprintf
Ltmp22:
	##DEBUG_VALUE: usage:status <- R14D
	.loc	1 54 0                  ## src/whoami.c:54:0
	movl	%r14d, %edi
	callq	_exit
Ltmp23:
Lfunc_end0:
	.cfi_endproc

	.globl	_main
	.align	4, 0x90
_main:                                  ## @main
Lfunc_begin1:
	.loc	1 59 0                  ## src/whoami.c:59:0
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp27:
	.cfi_def_cfa_offset 16
Ltmp28:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp29:
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	subq	$24, %rsp
Ltmp30:
	.cfi_offset %rbx, -40
Ltmp31:
	.cfi_offset %r14, -32
Ltmp32:
	.cfi_offset %r15, -24
	##DEBUG_VALUE: main:argc <- EDI
	##DEBUG_VALUE: main:argv <- RSI
	movq	%rsi, %r14
Ltmp33:
	##DEBUG_VALUE: main:argv <- R14
	movl	%edi, %ebx
Ltmp34:
	##DEBUG_VALUE: main:NO_UID <- -1
	##DEBUG_VALUE: main:argc <- EBX
	.loc	1 65 0 prologue_end     ## src/whoami.c:65:0
	movq	(%r14), %rdi
	callq	_set_program_name
	.loc	1 66 0                  ## src/whoami.c:66:0
	leaq	L_.str5(%rip), %r15
	xorl	%edi, %edi
	movq	%r15, %rsi
	callq	_setlocale
	.loc	1 70 0                  ## src/whoami.c:70:0
	movq	_close_stdout@GOTPCREL(%rip), %rdi
	callq	_atexit
	.loc	1 72 0                  ## src/whoami.c:72:0
	movq	_Version@GOTPCREL(%rip), %rax
	movq	(%rax), %r8
	leaq	L_.str7(%rip), %rax
	movq	%rax, (%rsp)
	movq	$0, 8(%rsp)
	leaq	L_.str4(%rip), %rdx
	leaq	L_.str6(%rip), %rcx
	leaq	_usage(%rip), %r9
	xorl	%eax, %eax
	movl	%ebx, %edi
	movq	%r14, %rsi
	callq	_parse_long_options
	xorl	%ecx, %ecx
	xorl	%r8d, %r8d
	.loc	1 74 0                  ## src/whoami.c:74:0
Ltmp35:
	movl	%ebx, %edi
	movq	%r14, %rsi
	movq	%r15, %rdx
	callq	_rpl_getopt_long
	cmpl	$-1, %eax
	jne	LBB1_6
Ltmp36:
## BB#1:
	##DEBUG_VALUE: main:argc <- EBX
	##DEBUG_VALUE: main:argv <- R14
	##DEBUG_VALUE: main:NO_UID <- -1
	.loc	1 77 0                  ## src/whoami.c:77:0
	movq	_rpl_optind@GOTPCREL(%rip), %rax
	.loc	1 79 0                  ## src/whoami.c:79:0
Ltmp37:
	movslq	(%rax), %rax
Ltmp38:
	.loc	1 77 0                  ## src/whoami.c:77:0
	cmpl	%ebx, %eax
	jne	LBB1_7
Ltmp39:
## BB#2:
	##DEBUG_VALUE: main:NO_UID <- -1
	.loc	1 83 0                  ## src/whoami.c:83:0
	callq	___error
	movl	$0, (%rax)
	.loc	1 84 0                  ## src/whoami.c:84:0
	callq	_geteuid
	movl	%eax, %ebx
Ltmp40:
	##DEBUG_VALUE: main:uid <- EBX
	.loc	1 85 0                  ## src/whoami.c:85:0
	cmpl	$-1, %ebx
	jne	LBB1_4
## BB#3:
	##DEBUG_VALUE: main:NO_UID <- -1
	##DEBUG_VALUE: main:uid <- EBX
	callq	___error
	cmpl	$0, (%rax)
	jne	LBB1_8
LBB1_4:
	##DEBUG_VALUE: main:NO_UID <- -1
	##DEBUG_VALUE: main:uid <- EBX
	movl	%ebx, %edi
	callq	_getpwuid
Ltmp41:
	##DEBUG_VALUE: main:pw <- RAX
	.loc	1 86 0                  ## src/whoami.c:86:0
	testq	%rax, %rax
	je	LBB1_8
Ltmp42:
## BB#5:
	##DEBUG_VALUE: main:NO_UID <- -1
	##DEBUG_VALUE: main:pw <- RAX
	.loc	1 89 0                  ## src/whoami.c:89:0
	movq	(%rax), %rdi
	callq	_puts
Ltmp43:
	xorl	%eax, %eax
	.loc	1 90 0                  ## src/whoami.c:90:0
	addq	$24, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
LBB1_6:
	##DEBUG_VALUE: main:NO_UID <- -1
	movl	$1, %edi
	.loc	1 75 0                  ## src/whoami.c:75:0
Ltmp44:
	callq	_usage
Ltmp45:
LBB1_7:
	##DEBUG_VALUE: main:argv <- R14
	##DEBUG_VALUE: main:NO_UID <- -1
	.loc	1 79 0                  ## src/whoami.c:79:0
	movq	(%r14,%rax,8), %rax
	movq	%rax, %rdi
	callq	_quote
	movq	%rax, %rcx
	leaq	L_.str8(%rip), %rdx
	xorl	%edi, %edi
	xorl	%esi, %esi
	xorl	%eax, %eax
	callq	_error
	movl	$1, %edi
	.loc	1 80 0                  ## src/whoami.c:80:0
	callq	_usage
Ltmp46:
LBB1_8:                                 ## %.thread
	##DEBUG_VALUE: main:NO_UID <- -1
	##DEBUG_VALUE: main:uid <- EBX
	.loc	1 87 0                  ## src/whoami.c:87:0
	callq	___error
	movl	(%rax), %ecx
	movl	%ebx, %ebx
Ltmp47:
	leaq	L_.str9(%rip), %rdx
	movl	$1, %edi
	xorl	%eax, %eax
	movl	%ecx, %esi
	movq	%rbx, %rcx
	callq	_error
Ltmp48:
Lfunc_end1:
	.file	3 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX10.10.sdk/usr/include/i386/_types.h"
	.file	4 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX10.10.sdk/usr/include/sys/_types.h"
	.file	5 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX10.10.sdk/usr/include/sys/_types/_uid_t.h"
	.file	6 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX10.10.sdk/usr/include/pwd.h"
	.file	7 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX10.10.sdk/usr/include/sys/_types/_gid_t.h"
	.cfi_endproc

	.section	__TEXT,__cstring,cstring_literals
L_.str:                                 ## @.str
	.asciz	"Usage: %s [OPTION]...\n"

L_.str1:                                ## @.str1
	.asciz	"Print the user name associated with the current effective user ID.\nSame as id -un.\n\n"

L_.str2:                                ## @.str2
	.asciz	"      --help     display this help and exit\n"

L_.str3:                                ## @.str3
	.asciz	"      --version  output version information and exit\n"

L_.str4:                                ## @.str4
	.asciz	"whoami"

L_.str5:                                ## @.str5
	.space	1

L_.str6:                                ## @.str6
	.asciz	"GNU coreutils"

L_.str7:                                ## @.str7
	.asciz	"Richard Mlynarik"

L_.str8:                                ## @.str8
	.asciz	"extra operand %s"

L_.str9:                                ## @.str9
	.asciz	"cannot find name for user ID %lu"

	.section	__DATA,__const
	.align	4                       ## @emit_ancillary_info.infomap
_emit_ancillary_info.infomap:
	.quad	L_.str10
	.quad	L_.str11
	.quad	L_.str12
	.quad	L_.str13
	.quad	L_.str14
	.quad	L_.str15
	.quad	L_.str16
	.quad	L_.str15
	.quad	L_.str17
	.quad	L_.str15
	.quad	L_.str18
	.quad	L_.str15
	.space	16

	.section	__TEXT,__cstring,cstring_literals
L_.str10:                               ## @.str10
	.asciz	"["

L_.str11:                               ## @.str11
	.asciz	"test invocation"

L_.str12:                               ## @.str12
	.asciz	"coreutils"

L_.str13:                               ## @.str13
	.asciz	"Multi-call invocation"

L_.str14:                               ## @.str14
	.asciz	"sha224sum"

L_.str15:                               ## @.str15
	.asciz	"sha2 utilities"

L_.str16:                               ## @.str16
	.asciz	"sha256sum"

L_.str17:                               ## @.str17
	.asciz	"sha384sum"

L_.str18:                               ## @.str18
	.asciz	"sha512sum"

L_.str19:                               ## @.str19
	.asciz	"\n%s online help: <%s>\n"

L_.str20:                               ## @.str20
	.asciz	"http://www.gnu.org/software/coreutils/"

L_.str21:                               ## @.str21
	.asciz	"en_"

L_.str22:                               ## @.str22
	.asciz	"Report %s translation bugs to <http://translationproject.org/team/>\n"

L_.str23:                               ## @.str23
	.asciz	"Full documentation at: <%s%s>\n"

L_.str24:                               ## @.str24
	.asciz	"or available locally via: info '(coreutils) %s%s'\n"

L_.str25:                               ## @.str25
	.asciz	" invocation"

L_.str26:                               ## @.str26
	.asciz	"Try '%s --help' for more information.\n"

	.section	__DATA,__const
Ldebug_end0:
	.section	__TEXT,__text,regular,pure_instructions
Ldebug_end1:
	.section	__DWARF,__debug_str,regular,debug
Linfo_string0:
	.asciz	"Apple LLVM version 6.0 (clang-600.0.54) (based on LLVM 3.5svn)"
Linfo_string1:
	.asciz	"src/whoami.c"
Linfo_string2:
	.asciz	"/tmp/coreutils-8.24"
Linfo_string3:
	.asciz	"emit_ancillary_info"
Linfo_string4:
	.asciz	"infomap"
Linfo_string5:
	.asciz	"program"
Linfo_string6:
	.asciz	"char"
Linfo_string7:
	.asciz	"node"
Linfo_string8:
	.asciz	"int"
Linfo_string9:
	.asciz	"usage"
Linfo_string10:
	.asciz	"main"
Linfo_string11:
	.asciz	"emit_try_help"
Linfo_string12:
	.asciz	"status"
Linfo_string13:
	.asciz	"map_prog"
Linfo_string14:
	.asciz	"lc_messages"
Linfo_string15:
	.asciz	"argc"
Linfo_string16:
	.asciz	"argv"
Linfo_string17:
	.asciz	"NO_UID"
Linfo_string18:
	.asciz	"unsigned int"
Linfo_string19:
	.asciz	"__uint32_t"
Linfo_string20:
	.asciz	"__darwin_uid_t"
Linfo_string21:
	.asciz	"uid_t"
Linfo_string22:
	.asciz	"uid"
Linfo_string23:
	.asciz	"pw"
Linfo_string24:
	.asciz	"pw_name"
Linfo_string25:
	.asciz	"pw_passwd"
Linfo_string26:
	.asciz	"pw_uid"
Linfo_string27:
	.asciz	"pw_gid"
Linfo_string28:
	.asciz	"__darwin_gid_t"
Linfo_string29:
	.asciz	"gid_t"
Linfo_string30:
	.asciz	"pw_change"
Linfo_string31:
	.asciz	"long int"
Linfo_string32:
	.asciz	"__darwin_time_t"
Linfo_string33:
	.asciz	"pw_class"
Linfo_string34:
	.asciz	"pw_gecos"
Linfo_string35:
	.asciz	"pw_dir"
Linfo_string36:
	.asciz	"pw_shell"
Linfo_string37:
	.asciz	"pw_expire"
Linfo_string38:
	.asciz	"passwd"
	.section	__DWARF,__debug_info,regular,debug
L__DWARF__debug_info_begin0:
	.long	755                     ## Length of Unit
	.short	2                       ## DWARF version number
Lset0 = Lsection_abbrev-Lsection_abbrev ## Offset Into Abbrev. Section
	.long	Lset0
	.byte	8                       ## Address Size (in bytes)
	.byte	1                       ## Abbrev [1] 0xb:0x2ec DW_TAG_compile_unit
Lset1 = Linfo_string0-Linfo_string      ## DW_AT_producer
	.long	Lset1
	.short	12                      ## DW_AT_language
Lset2 = Linfo_string1-Linfo_string      ## DW_AT_name
	.long	Lset2
	.long	0                       ## DW_AT_stmt_list
Lset3 = Linfo_string2-Linfo_string      ## DW_AT_comp_dir
	.long	Lset3
	.byte	1                       ## DW_AT_APPLE_optimized
	.quad	0                       ## DW_AT_low_pc
	.byte	2                       ## Abbrev [2] 0x27:0x7c DW_TAG_subprogram
Lset4 = Linfo_string3-Linfo_string      ## DW_AT_name
	.long	Lset4
	.byte	2                       ## DW_AT_decl_file
	.short	569                     ## DW_AT_decl_line
	.byte	1                       ## DW_AT_prototyped
	.byte	1                       ## DW_AT_accessibility
                                        ## DW_ACCESS_public
	.byte	1                       ## DW_AT_inline
	.byte	3                       ## Abbrev [3] 0x32:0x16 DW_TAG_variable
Lset5 = Linfo_string4-Linfo_string      ## DW_AT_name
	.long	Lset5
	.long	163                     ## DW_AT_type
	.byte	2                       ## DW_AT_decl_file
	.short	571                     ## DW_AT_decl_line
	.byte	9                       ## DW_AT_location
	.byte	3
	.quad	_emit_ancillary_info.infomap
	.byte	4                       ## Abbrev [4] 0x48:0x2a DW_TAG_structure_type
Lset6 = Linfo_string4-Linfo_string      ## DW_AT_name
	.long	Lset6
	.byte	16                      ## DW_AT_byte_size
	.byte	2                       ## DW_AT_decl_file
	.short	571                     ## DW_AT_decl_line
	.byte	5                       ## Abbrev [5] 0x51:0x10 DW_TAG_member
Lset7 = Linfo_string5-Linfo_string      ## DW_AT_name
	.long	Lset7
	.long	180                     ## DW_AT_type
	.byte	2                       ## DW_AT_decl_file
	.short	571                     ## DW_AT_decl_line
	.byte	2                       ## DW_AT_data_member_location
	.byte	35
	.byte	0
	.byte	1                       ## DW_AT_accessibility
                                        ## DW_ACCESS_public
	.byte	5                       ## Abbrev [5] 0x61:0x10 DW_TAG_member
Lset8 = Linfo_string7-Linfo_string      ## DW_AT_name
	.long	Lset8
	.long	180                     ## DW_AT_type
	.byte	2                       ## DW_AT_decl_file
	.short	571                     ## DW_AT_decl_line
	.byte	2                       ## DW_AT_data_member_location
	.byte	35
	.byte	8
	.byte	1                       ## DW_AT_accessibility
                                        ## DW_ACCESS_public
	.byte	0                       ## End Of Children Mark
	.byte	6                       ## Abbrev [6] 0x72:0xc DW_TAG_formal_parameter
Lset9 = Linfo_string5-Linfo_string      ## DW_AT_name
	.long	Lset9
	.byte	2                       ## DW_AT_decl_file
	.short	569                     ## DW_AT_decl_line
	.long	180                     ## DW_AT_type
	.byte	7                       ## Abbrev [7] 0x7e:0xc DW_TAG_variable
Lset10 = Linfo_string7-Linfo_string     ## DW_AT_name
	.long	Lset10
	.byte	2                       ## DW_AT_decl_file
	.short	581                     ## DW_AT_decl_line
	.long	180                     ## DW_AT_type
	.byte	7                       ## Abbrev [7] 0x8a:0xc DW_TAG_variable
Lset11 = Linfo_string13-Linfo_string    ## DW_AT_name
	.long	Lset11
	.byte	2                       ## DW_AT_decl_file
	.short	582                     ## DW_AT_decl_line
	.long	499                     ## DW_AT_type
	.byte	7                       ## Abbrev [7] 0x96:0xc DW_TAG_variable
Lset12 = Linfo_string14-Linfo_string    ## DW_AT_name
	.long	Lset12
	.byte	2                       ## DW_AT_decl_file
	.short	594                     ## DW_AT_decl_line
	.long	180                     ## DW_AT_type
	.byte	0                       ## End Of Children Mark
	.byte	8                       ## Abbrev [8] 0xa3:0xc DW_TAG_array_type
	.long	175                     ## DW_AT_type
	.byte	9                       ## Abbrev [9] 0xa8:0x6 DW_TAG_subrange_type
	.long	197                     ## DW_AT_type
	.byte	6                       ## DW_AT_upper_bound
	.byte	0                       ## End Of Children Mark
	.byte	10                      ## Abbrev [10] 0xaf:0x5 DW_TAG_const_type
	.long	72                      ## DW_AT_type
	.byte	11                      ## Abbrev [11] 0xb4:0x5 DW_TAG_pointer_type
	.long	185                     ## DW_AT_type
	.byte	10                      ## Abbrev [10] 0xb9:0x5 DW_TAG_const_type
	.long	190                     ## DW_AT_type
	.byte	12                      ## Abbrev [12] 0xbe:0x7 DW_TAG_base_type
Lset13 = Linfo_string6-Linfo_string     ## DW_AT_name
	.long	Lset13
	.byte	6                       ## DW_AT_encoding
	.byte	1                       ## DW_AT_byte_size
	.byte	13                      ## Abbrev [13] 0xc5:0x7 DW_TAG_base_type
Lset14 = Linfo_string8-Linfo_string     ## DW_AT_name
	.long	Lset14
	.byte	4                       ## DW_AT_byte_size
	.byte	5                       ## DW_AT_encoding
	.byte	14                      ## Abbrev [14] 0xcc:0xa3 DW_TAG_subprogram
Lset15 = Linfo_string9-Linfo_string     ## DW_AT_name
	.long	Lset15
	.byte	1                       ## DW_AT_decl_file
	.byte	38                      ## DW_AT_decl_line
	.byte	1                       ## DW_AT_prototyped
	.byte	1                       ## DW_AT_external
	.byte	1                       ## DW_AT_accessibility
                                        ## DW_ACCESS_public
	.quad	Lfunc_begin0            ## DW_AT_low_pc
	.quad	Lfunc_end0              ## DW_AT_high_pc
	.byte	1                       ## DW_AT_frame_base
	.byte	86
	.byte	15                      ## Abbrev [15] 0xe8:0xf DW_TAG_formal_parameter
Lset16 = Linfo_string12-Linfo_string    ## DW_AT_name
	.long	Lset16
	.byte	1                       ## DW_AT_decl_file
	.byte	38                      ## DW_AT_decl_line
	.long	481                     ## DW_AT_type
Lset17 = Ldebug_loc0-Lsection_debug_loc ## DW_AT_location
	.long	Lset17
	.byte	16                      ## Abbrev [16] 0xf7:0x77 DW_TAG_lexical_block
Lset18 = Ldebug_ranges0-Ldebug_range    ## DW_AT_ranges
	.long	Lset18
	.byte	17                      ## Abbrev [17] 0xfc:0x5a DW_TAG_lexical_block
	.quad	Ltmp11                  ## DW_AT_low_pc
	.quad	Ltmp20                  ## DW_AT_high_pc
	.byte	18                      ## Abbrev [18] 0x10d:0x48 DW_TAG_inlined_subroutine
	.long	39                      ## DW_AT_abstract_origin
	.quad	Ltmp12                  ## DW_AT_low_pc
	.quad	Ltmp20                  ## DW_AT_high_pc
	.byte	1                       ## DW_AT_call_file
	.byte	52                      ## DW_AT_call_line
	.byte	19                      ## Abbrev [19] 0x124:0x10 DW_TAG_variable
Lset19 = Linfo_string13-Linfo_string    ## DW_AT_name
	.long	Lset19
	.byte	2                       ## DW_AT_decl_file
	.short	582                     ## DW_AT_decl_line
	.long	499                     ## DW_AT_type
Lset20 = Ldebug_loc3-Lsection_debug_loc ## DW_AT_location
	.long	Lset20
	.byte	19                      ## Abbrev [19] 0x134:0x10 DW_TAG_variable
Lset21 = Linfo_string7-Linfo_string     ## DW_AT_name
	.long	Lset21
	.byte	2                       ## DW_AT_decl_file
	.short	581                     ## DW_AT_decl_line
	.long	180                     ## DW_AT_type
Lset22 = Ldebug_loc5-Lsection_debug_loc ## DW_AT_location
	.long	Lset22
	.byte	19                      ## Abbrev [19] 0x144:0x10 DW_TAG_variable
Lset23 = Linfo_string14-Linfo_string    ## DW_AT_name
	.long	Lset23
	.byte	2                       ## DW_AT_decl_file
	.short	594                     ## DW_AT_decl_line
	.long	180                     ## DW_AT_type
Lset24 = Ldebug_loc7-Lsection_debug_loc ## DW_AT_location
	.long	Lset24
	.byte	0                       ## End Of Children Mark
	.byte	0                       ## End Of Children Mark
	.byte	20                      ## Abbrev [20] 0x156:0x17 DW_TAG_inlined_subroutine
	.long	488                     ## DW_AT_abstract_origin
	.quad	Ltmp21                  ## DW_AT_low_pc
	.quad	Ltmp22                  ## DW_AT_high_pc
	.byte	1                       ## DW_AT_call_file
	.byte	41                      ## DW_AT_call_line
	.byte	0                       ## End Of Children Mark
	.byte	0                       ## End Of Children Mark
	.byte	21                      ## Abbrev [21] 0x16f:0x72 DW_TAG_subprogram
Lset25 = Linfo_string10-Linfo_string    ## DW_AT_name
	.long	Lset25
	.byte	1                       ## DW_AT_decl_file
	.byte	58                      ## DW_AT_decl_line
	.byte	1                       ## DW_AT_prototyped
	.long	481                     ## DW_AT_type
	.byte	1                       ## DW_AT_external
	.byte	1                       ## DW_AT_accessibility
                                        ## DW_ACCESS_public
	.quad	Lfunc_begin1            ## DW_AT_low_pc
	.quad	Lfunc_end1              ## DW_AT_high_pc
	.byte	1                       ## DW_AT_frame_base
	.byte	86
	.byte	15                      ## Abbrev [15] 0x18f:0xf DW_TAG_formal_parameter
Lset26 = Linfo_string15-Linfo_string    ## DW_AT_name
	.long	Lset26
	.byte	1                       ## DW_AT_decl_file
	.byte	58                      ## DW_AT_decl_line
	.long	481                     ## DW_AT_type
Lset27 = Ldebug_loc9-Lsection_debug_loc ## DW_AT_location
	.long	Lset27
	.byte	15                      ## Abbrev [15] 0x19e:0xf DW_TAG_formal_parameter
Lset28 = Linfo_string16-Linfo_string    ## DW_AT_name
	.long	Lset28
	.byte	1                       ## DW_AT_decl_file
	.byte	58                      ## DW_AT_decl_line
	.long	504                     ## DW_AT_type
Lset29 = Ldebug_loc12-Lsection_debug_loc ## DW_AT_location
	.long	Lset29
	.byte	22                      ## Abbrev [22] 0x1ad:0x15 DW_TAG_variable
Lset30 = Linfo_string17-Linfo_string    ## DW_AT_name
	.long	Lset30
	.byte	1                       ## DW_AT_decl_file
	.byte	62                      ## DW_AT_decl_line
	.long	514                     ## DW_AT_type
	.ascii	"\377\377\377\377\377\377\377\377\377\001" ## DW_AT_const_value
	.byte	23                      ## Abbrev [23] 0x1c2:0xf DW_TAG_variable
Lset31 = Linfo_string22-Linfo_string    ## DW_AT_name
	.long	Lset31
	.byte	1                       ## DW_AT_decl_file
	.byte	61                      ## DW_AT_decl_line
	.long	514                     ## DW_AT_type
Lset32 = Ldebug_loc16-Lsection_debug_loc ## DW_AT_location
	.long	Lset32
	.byte	23                      ## Abbrev [23] 0x1d1:0xf DW_TAG_variable
Lset33 = Linfo_string23-Linfo_string    ## DW_AT_name
	.long	Lset33
	.byte	1                       ## DW_AT_decl_file
	.byte	60                      ## DW_AT_decl_line
	.long	554                     ## DW_AT_type
Lset34 = Ldebug_loc19-Lsection_debug_loc ## DW_AT_location
	.long	Lset34
	.byte	0                       ## End Of Children Mark
	.byte	12                      ## Abbrev [12] 0x1e1:0x7 DW_TAG_base_type
Lset35 = Linfo_string8-Linfo_string     ## DW_AT_name
	.long	Lset35
	.byte	5                       ## DW_AT_encoding
	.byte	4                       ## DW_AT_byte_size
	.byte	24                      ## Abbrev [24] 0x1e8:0xb DW_TAG_subprogram
Lset36 = Linfo_string11-Linfo_string    ## DW_AT_name
	.long	Lset36
	.byte	2                       ## DW_AT_decl_file
	.short	611                     ## DW_AT_decl_line
	.byte	1                       ## DW_AT_prototyped
	.byte	1                       ## DW_AT_accessibility
                                        ## DW_ACCESS_public
	.byte	1                       ## DW_AT_inline
	.byte	11                      ## Abbrev [11] 0x1f3:0x5 DW_TAG_pointer_type
	.long	175                     ## DW_AT_type
	.byte	11                      ## Abbrev [11] 0x1f8:0x5 DW_TAG_pointer_type
	.long	509                     ## DW_AT_type
	.byte	11                      ## Abbrev [11] 0x1fd:0x5 DW_TAG_pointer_type
	.long	190                     ## DW_AT_type
	.byte	25                      ## Abbrev [25] 0x202:0xb DW_TAG_typedef
	.long	525                     ## DW_AT_type
Lset37 = Linfo_string21-Linfo_string    ## DW_AT_name
	.long	Lset37
	.byte	5                       ## DW_AT_decl_file
	.byte	30                      ## DW_AT_decl_line
	.byte	25                      ## Abbrev [25] 0x20d:0xb DW_TAG_typedef
	.long	536                     ## DW_AT_type
Lset38 = Linfo_string20-Linfo_string    ## DW_AT_name
	.long	Lset38
	.byte	4                       ## DW_AT_decl_file
	.byte	75                      ## DW_AT_decl_line
	.byte	25                      ## Abbrev [25] 0x218:0xb DW_TAG_typedef
	.long	547                     ## DW_AT_type
Lset39 = Linfo_string19-Linfo_string    ## DW_AT_name
	.long	Lset39
	.byte	3                       ## DW_AT_decl_file
	.byte	45                      ## DW_AT_decl_line
	.byte	12                      ## Abbrev [12] 0x223:0x7 DW_TAG_base_type
Lset40 = Linfo_string18-Linfo_string    ## DW_AT_name
	.long	Lset40
	.byte	7                       ## DW_AT_encoding
	.byte	4                       ## DW_AT_byte_size
	.byte	11                      ## Abbrev [11] 0x22a:0x5 DW_TAG_pointer_type
	.long	559                     ## DW_AT_type
	.byte	26                      ## Abbrev [26] 0x22f:0x9f DW_TAG_structure_type
Lset41 = Linfo_string38-Linfo_string    ## DW_AT_name
	.long	Lset41
	.byte	72                      ## DW_AT_byte_size
	.byte	6                       ## DW_AT_decl_file
	.byte	84                      ## DW_AT_decl_line
	.byte	27                      ## Abbrev [27] 0x237:0xf DW_TAG_member
Lset42 = Linfo_string24-Linfo_string    ## DW_AT_name
	.long	Lset42
	.long	509                     ## DW_AT_type
	.byte	6                       ## DW_AT_decl_file
	.byte	85                      ## DW_AT_decl_line
	.byte	2                       ## DW_AT_data_member_location
	.byte	35
	.byte	0
	.byte	1                       ## DW_AT_accessibility
                                        ## DW_ACCESS_public
	.byte	27                      ## Abbrev [27] 0x246:0xf DW_TAG_member
Lset43 = Linfo_string25-Linfo_string    ## DW_AT_name
	.long	Lset43
	.long	509                     ## DW_AT_type
	.byte	6                       ## DW_AT_decl_file
	.byte	86                      ## DW_AT_decl_line
	.byte	2                       ## DW_AT_data_member_location
	.byte	35
	.byte	8
	.byte	1                       ## DW_AT_accessibility
                                        ## DW_ACCESS_public
	.byte	27                      ## Abbrev [27] 0x255:0xf DW_TAG_member
Lset44 = Linfo_string26-Linfo_string    ## DW_AT_name
	.long	Lset44
	.long	514                     ## DW_AT_type
	.byte	6                       ## DW_AT_decl_file
	.byte	87                      ## DW_AT_decl_line
	.byte	2                       ## DW_AT_data_member_location
	.byte	35
	.byte	16
	.byte	1                       ## DW_AT_accessibility
                                        ## DW_ACCESS_public
	.byte	27                      ## Abbrev [27] 0x264:0xf DW_TAG_member
Lset45 = Linfo_string27-Linfo_string    ## DW_AT_name
	.long	Lset45
	.long	718                     ## DW_AT_type
	.byte	6                       ## DW_AT_decl_file
	.byte	88                      ## DW_AT_decl_line
	.byte	2                       ## DW_AT_data_member_location
	.byte	35
	.byte	20
	.byte	1                       ## DW_AT_accessibility
                                        ## DW_ACCESS_public
	.byte	27                      ## Abbrev [27] 0x273:0xf DW_TAG_member
Lset46 = Linfo_string30-Linfo_string    ## DW_AT_name
	.long	Lset46
	.long	740                     ## DW_AT_type
	.byte	6                       ## DW_AT_decl_file
	.byte	89                      ## DW_AT_decl_line
	.byte	2                       ## DW_AT_data_member_location
	.byte	35
	.byte	24
	.byte	1                       ## DW_AT_accessibility
                                        ## DW_ACCESS_public
	.byte	27                      ## Abbrev [27] 0x282:0xf DW_TAG_member
Lset47 = Linfo_string33-Linfo_string    ## DW_AT_name
	.long	Lset47
	.long	509                     ## DW_AT_type
	.byte	6                       ## DW_AT_decl_file
	.byte	90                      ## DW_AT_decl_line
	.byte	2                       ## DW_AT_data_member_location
	.byte	35
	.byte	32
	.byte	1                       ## DW_AT_accessibility
                                        ## DW_ACCESS_public
	.byte	27                      ## Abbrev [27] 0x291:0xf DW_TAG_member
Lset48 = Linfo_string34-Linfo_string    ## DW_AT_name
	.long	Lset48
	.long	509                     ## DW_AT_type
	.byte	6                       ## DW_AT_decl_file
	.byte	91                      ## DW_AT_decl_line
	.byte	2                       ## DW_AT_data_member_location
	.byte	35
	.byte	40
	.byte	1                       ## DW_AT_accessibility
                                        ## DW_ACCESS_public
	.byte	27                      ## Abbrev [27] 0x2a0:0xf DW_TAG_member
Lset49 = Linfo_string35-Linfo_string    ## DW_AT_name
	.long	Lset49
	.long	509                     ## DW_AT_type
	.byte	6                       ## DW_AT_decl_file
	.byte	92                      ## DW_AT_decl_line
	.byte	2                       ## DW_AT_data_member_location
	.byte	35
	.byte	48
	.byte	1                       ## DW_AT_accessibility
                                        ## DW_ACCESS_public
	.byte	27                      ## Abbrev [27] 0x2af:0xf DW_TAG_member
Lset50 = Linfo_string36-Linfo_string    ## DW_AT_name
	.long	Lset50
	.long	509                     ## DW_AT_type
	.byte	6                       ## DW_AT_decl_file
	.byte	93                      ## DW_AT_decl_line
	.byte	2                       ## DW_AT_data_member_location
	.byte	35
	.byte	56
	.byte	1                       ## DW_AT_accessibility
                                        ## DW_ACCESS_public
	.byte	27                      ## Abbrev [27] 0x2be:0xf DW_TAG_member
Lset51 = Linfo_string37-Linfo_string    ## DW_AT_name
	.long	Lset51
	.long	740                     ## DW_AT_type
	.byte	6                       ## DW_AT_decl_file
	.byte	94                      ## DW_AT_decl_line
	.byte	2                       ## DW_AT_data_member_location
	.byte	35
	.byte	64
	.byte	1                       ## DW_AT_accessibility
                                        ## DW_ACCESS_public
	.byte	0                       ## End Of Children Mark
	.byte	25                      ## Abbrev [25] 0x2ce:0xb DW_TAG_typedef
	.long	729                     ## DW_AT_type
Lset52 = Linfo_string29-Linfo_string    ## DW_AT_name
	.long	Lset52
	.byte	7                       ## DW_AT_decl_file
	.byte	30                      ## DW_AT_decl_line
	.byte	25                      ## Abbrev [25] 0x2d9:0xb DW_TAG_typedef
	.long	536                     ## DW_AT_type
Lset53 = Linfo_string28-Linfo_string    ## DW_AT_name
	.long	Lset53
	.byte	4                       ## DW_AT_decl_file
	.byte	60                      ## DW_AT_decl_line
	.byte	25                      ## Abbrev [25] 0x2e4:0xb DW_TAG_typedef
	.long	751                     ## DW_AT_type
Lset54 = Linfo_string32-Linfo_string    ## DW_AT_name
	.long	Lset54
	.byte	3                       ## DW_AT_decl_file
	.byte	120                     ## DW_AT_decl_line
	.byte	12                      ## Abbrev [12] 0x2ef:0x7 DW_TAG_base_type
Lset55 = Linfo_string31-Linfo_string    ## DW_AT_name
	.long	Lset55
	.byte	5                       ## DW_AT_encoding
	.byte	8                       ## DW_AT_byte_size
	.byte	0                       ## End Of Children Mark
L__DWARF__debug_info_end0:
	.section	__DWARF,__debug_abbrev,regular,debug
	.byte	1                       ## Abbreviation Code
	.byte	17                      ## DW_TAG_compile_unit
	.byte	1                       ## DW_CHILDREN_yes
	.byte	37                      ## DW_AT_producer
	.byte	14                      ## DW_FORM_strp
	.byte	19                      ## DW_AT_language
	.byte	5                       ## DW_FORM_data2
	.byte	3                       ## DW_AT_name
	.byte	14                      ## DW_FORM_strp
	.byte	16                      ## DW_AT_stmt_list
	.byte	6                       ## DW_FORM_data4
	.byte	27                      ## DW_AT_comp_dir
	.byte	14                      ## DW_FORM_strp
	.ascii	"\341\177"              ## DW_AT_APPLE_optimized
	.byte	12                      ## DW_FORM_flag
	.byte	17                      ## DW_AT_low_pc
	.byte	1                       ## DW_FORM_addr
	.byte	0                       ## EOM(1)
	.byte	0                       ## EOM(2)
	.byte	2                       ## Abbreviation Code
	.byte	46                      ## DW_TAG_subprogram
	.byte	1                       ## DW_CHILDREN_yes
	.byte	3                       ## DW_AT_name
	.byte	14                      ## DW_FORM_strp
	.byte	58                      ## DW_AT_decl_file
	.byte	11                      ## DW_FORM_data1
	.byte	59                      ## DW_AT_decl_line
	.byte	5                       ## DW_FORM_data2
	.byte	39                      ## DW_AT_prototyped
	.byte	12                      ## DW_FORM_flag
	.byte	50                      ## DW_AT_accessibility
	.byte	11                      ## DW_FORM_data1
	.byte	32                      ## DW_AT_inline
	.byte	11                      ## DW_FORM_data1
	.byte	0                       ## EOM(1)
	.byte	0                       ## EOM(2)
	.byte	3                       ## Abbreviation Code
	.byte	52                      ## DW_TAG_variable
	.byte	0                       ## DW_CHILDREN_no
	.byte	3                       ## DW_AT_name
	.byte	14                      ## DW_FORM_strp
	.byte	73                      ## DW_AT_type
	.byte	19                      ## DW_FORM_ref4
	.byte	58                      ## DW_AT_decl_file
	.byte	11                      ## DW_FORM_data1
	.byte	59                      ## DW_AT_decl_line
	.byte	5                       ## DW_FORM_data2
	.byte	2                       ## DW_AT_location
	.byte	10                      ## DW_FORM_block1
	.byte	0                       ## EOM(1)
	.byte	0                       ## EOM(2)
	.byte	4                       ## Abbreviation Code
	.byte	19                      ## DW_TAG_structure_type
	.byte	1                       ## DW_CHILDREN_yes
	.byte	3                       ## DW_AT_name
	.byte	14                      ## DW_FORM_strp
	.byte	11                      ## DW_AT_byte_size
	.byte	11                      ## DW_FORM_data1
	.byte	58                      ## DW_AT_decl_file
	.byte	11                      ## DW_FORM_data1
	.byte	59                      ## DW_AT_decl_line
	.byte	5                       ## DW_FORM_data2
	.byte	0                       ## EOM(1)
	.byte	0                       ## EOM(2)
	.byte	5                       ## Abbreviation Code
	.byte	13                      ## DW_TAG_member
	.byte	0                       ## DW_CHILDREN_no
	.byte	3                       ## DW_AT_name
	.byte	14                      ## DW_FORM_strp
	.byte	73                      ## DW_AT_type
	.byte	19                      ## DW_FORM_ref4
	.byte	58                      ## DW_AT_decl_file
	.byte	11                      ## DW_FORM_data1
	.byte	59                      ## DW_AT_decl_line
	.byte	5                       ## DW_FORM_data2
	.byte	56                      ## DW_AT_data_member_location
	.byte	10                      ## DW_FORM_block1
	.byte	50                      ## DW_AT_accessibility
	.byte	11                      ## DW_FORM_data1
	.byte	0                       ## EOM(1)
	.byte	0                       ## EOM(2)
	.byte	6                       ## Abbreviation Code
	.byte	5                       ## DW_TAG_formal_parameter
	.byte	0                       ## DW_CHILDREN_no
	.byte	3                       ## DW_AT_name
	.byte	14                      ## DW_FORM_strp
	.byte	58                      ## DW_AT_decl_file
	.byte	11                      ## DW_FORM_data1
	.byte	59                      ## DW_AT_decl_line
	.byte	5                       ## DW_FORM_data2
	.byte	73                      ## DW_AT_type
	.byte	19                      ## DW_FORM_ref4
	.byte	0                       ## EOM(1)
	.byte	0                       ## EOM(2)
	.byte	7                       ## Abbreviation Code
	.byte	52                      ## DW_TAG_variable
	.byte	0                       ## DW_CHILDREN_no
	.byte	3                       ## DW_AT_name
	.byte	14                      ## DW_FORM_strp
	.byte	58                      ## DW_AT_decl_file
	.byte	11                      ## DW_FORM_data1
	.byte	59                      ## DW_AT_decl_line
	.byte	5                       ## DW_FORM_data2
	.byte	73                      ## DW_AT_type
	.byte	19                      ## DW_FORM_ref4
	.byte	0                       ## EOM(1)
	.byte	0                       ## EOM(2)
	.byte	8                       ## Abbreviation Code
	.byte	1                       ## DW_TAG_array_type
	.byte	1                       ## DW_CHILDREN_yes
	.byte	73                      ## DW_AT_type
	.byte	19                      ## DW_FORM_ref4
	.byte	0                       ## EOM(1)
	.byte	0                       ## EOM(2)
	.byte	9                       ## Abbreviation Code
	.byte	33                      ## DW_TAG_subrange_type
	.byte	0                       ## DW_CHILDREN_no
	.byte	73                      ## DW_AT_type
	.byte	19                      ## DW_FORM_ref4
	.byte	47                      ## DW_AT_upper_bound
	.byte	11                      ## DW_FORM_data1
	.byte	0                       ## EOM(1)
	.byte	0                       ## EOM(2)
	.byte	10                      ## Abbreviation Code
	.byte	38                      ## DW_TAG_const_type
	.byte	0                       ## DW_CHILDREN_no
	.byte	73                      ## DW_AT_type
	.byte	19                      ## DW_FORM_ref4
	.byte	0                       ## EOM(1)
	.byte	0                       ## EOM(2)
	.byte	11                      ## Abbreviation Code
	.byte	15                      ## DW_TAG_pointer_type
	.byte	0                       ## DW_CHILDREN_no
	.byte	73                      ## DW_AT_type
	.byte	19                      ## DW_FORM_ref4
	.byte	0                       ## EOM(1)
	.byte	0                       ## EOM(2)
	.byte	12                      ## Abbreviation Code
	.byte	36                      ## DW_TAG_base_type
	.byte	0                       ## DW_CHILDREN_no
	.byte	3                       ## DW_AT_name
	.byte	14                      ## DW_FORM_strp
	.byte	62                      ## DW_AT_encoding
	.byte	11                      ## DW_FORM_data1
	.byte	11                      ## DW_AT_byte_size
	.byte	11                      ## DW_FORM_data1
	.byte	0                       ## EOM(1)
	.byte	0                       ## EOM(2)
	.byte	13                      ## Abbreviation Code
	.byte	36                      ## DW_TAG_base_type
	.byte	0                       ## DW_CHILDREN_no
	.byte	3                       ## DW_AT_name
	.byte	14                      ## DW_FORM_strp
	.byte	11                      ## DW_AT_byte_size
	.byte	11                      ## DW_FORM_data1
	.byte	62                      ## DW_AT_encoding
	.byte	11                      ## DW_FORM_data1
	.byte	0                       ## EOM(1)
	.byte	0                       ## EOM(2)
	.byte	14                      ## Abbreviation Code
	.byte	46                      ## DW_TAG_subprogram
	.byte	1                       ## DW_CHILDREN_yes
	.byte	3                       ## DW_AT_name
	.byte	14                      ## DW_FORM_strp
	.byte	58                      ## DW_AT_decl_file
	.byte	11                      ## DW_FORM_data1
	.byte	59                      ## DW_AT_decl_line
	.byte	11                      ## DW_FORM_data1
	.byte	39                      ## DW_AT_prototyped
	.byte	12                      ## DW_FORM_flag
	.byte	63                      ## DW_AT_external
	.byte	12                      ## DW_FORM_flag
	.byte	50                      ## DW_AT_accessibility
	.byte	11                      ## DW_FORM_data1
	.byte	17                      ## DW_AT_low_pc
	.byte	1                       ## DW_FORM_addr
	.byte	18                      ## DW_AT_high_pc
	.byte	1                       ## DW_FORM_addr
	.byte	64                      ## DW_AT_frame_base
	.byte	10                      ## DW_FORM_block1
	.byte	0                       ## EOM(1)
	.byte	0                       ## EOM(2)
	.byte	15                      ## Abbreviation Code
	.byte	5                       ## DW_TAG_formal_parameter
	.byte	0                       ## DW_CHILDREN_no
	.byte	3                       ## DW_AT_name
	.byte	14                      ## DW_FORM_strp
	.byte	58                      ## DW_AT_decl_file
	.byte	11                      ## DW_FORM_data1
	.byte	59                      ## DW_AT_decl_line
	.byte	11                      ## DW_FORM_data1
	.byte	73                      ## DW_AT_type
	.byte	19                      ## DW_FORM_ref4
	.byte	2                       ## DW_AT_location
	.byte	6                       ## DW_FORM_data4
	.byte	0                       ## EOM(1)
	.byte	0                       ## EOM(2)
	.byte	16                      ## Abbreviation Code
	.byte	11                      ## DW_TAG_lexical_block
	.byte	1                       ## DW_CHILDREN_yes
	.byte	85                      ## DW_AT_ranges
	.byte	6                       ## DW_FORM_data4
	.byte	0                       ## EOM(1)
	.byte	0                       ## EOM(2)
	.byte	17                      ## Abbreviation Code
	.byte	11                      ## DW_TAG_lexical_block
	.byte	1                       ## DW_CHILDREN_yes
	.byte	17                      ## DW_AT_low_pc
	.byte	1                       ## DW_FORM_addr
	.byte	18                      ## DW_AT_high_pc
	.byte	1                       ## DW_FORM_addr
	.byte	0                       ## EOM(1)
	.byte	0                       ## EOM(2)
	.byte	18                      ## Abbreviation Code
	.byte	29                      ## DW_TAG_inlined_subroutine
	.byte	1                       ## DW_CHILDREN_yes
	.byte	49                      ## DW_AT_abstract_origin
	.byte	19                      ## DW_FORM_ref4
	.byte	17                      ## DW_AT_low_pc
	.byte	1                       ## DW_FORM_addr
	.byte	18                      ## DW_AT_high_pc
	.byte	1                       ## DW_FORM_addr
	.byte	88                      ## DW_AT_call_file
	.byte	11                      ## DW_FORM_data1
	.byte	89                      ## DW_AT_call_line
	.byte	11                      ## DW_FORM_data1
	.byte	0                       ## EOM(1)
	.byte	0                       ## EOM(2)
	.byte	19                      ## Abbreviation Code
	.byte	52                      ## DW_TAG_variable
	.byte	0                       ## DW_CHILDREN_no
	.byte	3                       ## DW_AT_name
	.byte	14                      ## DW_FORM_strp
	.byte	58                      ## DW_AT_decl_file
	.byte	11                      ## DW_FORM_data1
	.byte	59                      ## DW_AT_decl_line
	.byte	5                       ## DW_FORM_data2
	.byte	73                      ## DW_AT_type
	.byte	19                      ## DW_FORM_ref4
	.byte	2                       ## DW_AT_location
	.byte	6                       ## DW_FORM_data4
	.byte	0                       ## EOM(1)
	.byte	0                       ## EOM(2)
	.byte	20                      ## Abbreviation Code
	.byte	29                      ## DW_TAG_inlined_subroutine
	.byte	0                       ## DW_CHILDREN_no
	.byte	49                      ## DW_AT_abstract_origin
	.byte	19                      ## DW_FORM_ref4
	.byte	17                      ## DW_AT_low_pc
	.byte	1                       ## DW_FORM_addr
	.byte	18                      ## DW_AT_high_pc
	.byte	1                       ## DW_FORM_addr
	.byte	88                      ## DW_AT_call_file
	.byte	11                      ## DW_FORM_data1
	.byte	89                      ## DW_AT_call_line
	.byte	11                      ## DW_FORM_data1
	.byte	0                       ## EOM(1)
	.byte	0                       ## EOM(2)
	.byte	21                      ## Abbreviation Code
	.byte	46                      ## DW_TAG_subprogram
	.byte	1                       ## DW_CHILDREN_yes
	.byte	3                       ## DW_AT_name
	.byte	14                      ## DW_FORM_strp
	.byte	58                      ## DW_AT_decl_file
	.byte	11                      ## DW_FORM_data1
	.byte	59                      ## DW_AT_decl_line
	.byte	11                      ## DW_FORM_data1
	.byte	39                      ## DW_AT_prototyped
	.byte	12                      ## DW_FORM_flag
	.byte	73                      ## DW_AT_type
	.byte	19                      ## DW_FORM_ref4
	.byte	63                      ## DW_AT_external
	.byte	12                      ## DW_FORM_flag
	.byte	50                      ## DW_AT_accessibility
	.byte	11                      ## DW_FORM_data1
	.byte	17                      ## DW_AT_low_pc
	.byte	1                       ## DW_FORM_addr
	.byte	18                      ## DW_AT_high_pc
	.byte	1                       ## DW_FORM_addr
	.byte	64                      ## DW_AT_frame_base
	.byte	10                      ## DW_FORM_block1
	.byte	0                       ## EOM(1)
	.byte	0                       ## EOM(2)
	.byte	22                      ## Abbreviation Code
	.byte	52                      ## DW_TAG_variable
	.byte	0                       ## DW_CHILDREN_no
	.byte	3                       ## DW_AT_name
	.byte	14                      ## DW_FORM_strp
	.byte	58                      ## DW_AT_decl_file
	.byte	11                      ## DW_FORM_data1
	.byte	59                      ## DW_AT_decl_line
	.byte	11                      ## DW_FORM_data1
	.byte	73                      ## DW_AT_type
	.byte	19                      ## DW_FORM_ref4
	.byte	28                      ## DW_AT_const_value
	.byte	15                      ## DW_FORM_udata
	.byte	0                       ## EOM(1)
	.byte	0                       ## EOM(2)
	.byte	23                      ## Abbreviation Code
	.byte	52                      ## DW_TAG_variable
	.byte	0                       ## DW_CHILDREN_no
	.byte	3                       ## DW_AT_name
	.byte	14                      ## DW_FORM_strp
	.byte	58                      ## DW_AT_decl_file
	.byte	11                      ## DW_FORM_data1
	.byte	59                      ## DW_AT_decl_line
	.byte	11                      ## DW_FORM_data1
	.byte	73                      ## DW_AT_type
	.byte	19                      ## DW_FORM_ref4
	.byte	2                       ## DW_AT_location
	.byte	6                       ## DW_FORM_data4
	.byte	0                       ## EOM(1)
	.byte	0                       ## EOM(2)
	.byte	24                      ## Abbreviation Code
	.byte	46                      ## DW_TAG_subprogram
	.byte	0                       ## DW_CHILDREN_no
	.byte	3                       ## DW_AT_name
	.byte	14                      ## DW_FORM_strp
	.byte	58                      ## DW_AT_decl_file
	.byte	11                      ## DW_FORM_data1
	.byte	59                      ## DW_AT_decl_line
	.byte	5                       ## DW_FORM_data2
	.byte	39                      ## DW_AT_prototyped
	.byte	12                      ## DW_FORM_flag
	.byte	50                      ## DW_AT_accessibility
	.byte	11                      ## DW_FORM_data1
	.byte	32                      ## DW_AT_inline
	.byte	11                      ## DW_FORM_data1
	.byte	0                       ## EOM(1)
	.byte	0                       ## EOM(2)
	.byte	25                      ## Abbreviation Code
	.byte	22                      ## DW_TAG_typedef
	.byte	0                       ## DW_CHILDREN_no
	.byte	73                      ## DW_AT_type
	.byte	19                      ## DW_FORM_ref4
	.byte	3                       ## DW_AT_name
	.byte	14                      ## DW_FORM_strp
	.byte	58                      ## DW_AT_decl_file
	.byte	11                      ## DW_FORM_data1
	.byte	59                      ## DW_AT_decl_line
	.byte	11                      ## DW_FORM_data1
	.byte	0                       ## EOM(1)
	.byte	0                       ## EOM(2)
	.byte	26                      ## Abbreviation Code
	.byte	19                      ## DW_TAG_structure_type
	.byte	1                       ## DW_CHILDREN_yes
	.byte	3                       ## DW_AT_name
	.byte	14                      ## DW_FORM_strp
	.byte	11                      ## DW_AT_byte_size
	.byte	11                      ## DW_FORM_data1
	.byte	58                      ## DW_AT_decl_file
	.byte	11                      ## DW_FORM_data1
	.byte	59                      ## DW_AT_decl_line
	.byte	11                      ## DW_FORM_data1
	.byte	0                       ## EOM(1)
	.byte	0                       ## EOM(2)
	.byte	27                      ## Abbreviation Code
	.byte	13                      ## DW_TAG_member
	.byte	0                       ## DW_CHILDREN_no
	.byte	3                       ## DW_AT_name
	.byte	14                      ## DW_FORM_strp
	.byte	73                      ## DW_AT_type
	.byte	19                      ## DW_FORM_ref4
	.byte	58                      ## DW_AT_decl_file
	.byte	11                      ## DW_FORM_data1
	.byte	59                      ## DW_AT_decl_line
	.byte	11                      ## DW_FORM_data1
	.byte	56                      ## DW_AT_data_member_location
	.byte	10                      ## DW_FORM_block1
	.byte	50                      ## DW_AT_accessibility
	.byte	11                      ## DW_FORM_data1
	.byte	0                       ## EOM(1)
	.byte	0                       ## EOM(2)
	.byte	0                       ## EOM(3)
	.section	__DWARF,__debug_loc,regular,debug
Ldebug_loc0:
	.quad	Lfunc_begin0
	.quad	Ltmp10
Lset56 = Ltmp50-Ltmp49                  ## Loc expr size
	.short	Lset56
Ltmp49:
	.byte	85                      ## DW_OP_reg5
	.byte	147                     ## DW_OP_piece
	.byte	4                       ## 4
Ltmp50:
	.quad	Ltmp10
	.quad	Lfunc_end0
Lset57 = Ltmp52-Ltmp51                  ## Loc expr size
	.short	Lset57
Ltmp51:
	.byte	94                      ## DW_OP_reg14
	.byte	147                     ## DW_OP_piece
	.byte	4                       ## 4
Ltmp52:
	.quad	0
	.quad	0
Ldebug_loc3:
	.quad	Ltmp13
	.quad	Ltmp14
Lset58 = Ltmp54-Ltmp53                  ## Loc expr size
	.short	Lset58
Ltmp53:
	.byte	83                      ## DW_OP_reg3
Ltmp54:
	.quad	0
	.quad	0
Ldebug_loc5:
	.quad	Ltmp15
	.quad	Ltmp16
Lset59 = Ltmp56-Ltmp55                  ## Loc expr size
	.short	Lset59
Ltmp55:
	.byte	95                      ## DW_OP_reg15
Ltmp56:
	.quad	0
	.quad	0
Ldebug_loc7:
	.quad	Ltmp17
	.quad	Ltmp19
Lset60 = Ltmp58-Ltmp57                  ## Loc expr size
	.short	Lset60
Ltmp57:
	.byte	80                      ## DW_OP_reg0
Ltmp58:
	.quad	0
	.quad	0
Ldebug_loc9:
	.quad	Lfunc_begin1
	.quad	Ltmp34
Lset61 = Ltmp60-Ltmp59                  ## Loc expr size
	.short	Lset61
Ltmp59:
	.byte	85                      ## DW_OP_reg5
	.byte	147                     ## DW_OP_piece
	.byte	4                       ## 4
Ltmp60:
	.quad	Ltmp34
	.quad	Ltmp39
Lset62 = Ltmp62-Ltmp61                  ## Loc expr size
	.short	Lset62
Ltmp61:
	.byte	83                      ## DW_OP_reg3
	.byte	147                     ## DW_OP_piece
	.byte	4                       ## 4
Ltmp62:
	.quad	0
	.quad	0
Ldebug_loc12:
	.quad	Lfunc_begin1
	.quad	Ltmp33
Lset63 = Ltmp64-Ltmp63                  ## Loc expr size
	.short	Lset63
Ltmp63:
	.byte	84                      ## DW_OP_reg4
Ltmp64:
	.quad	Ltmp33
	.quad	Ltmp39
Lset64 = Ltmp66-Ltmp65                  ## Loc expr size
	.short	Lset64
Ltmp65:
	.byte	94                      ## DW_OP_reg14
Ltmp66:
	.quad	Ltmp45
	.quad	Ltmp46
Lset65 = Ltmp68-Ltmp67                  ## Loc expr size
	.short	Lset65
Ltmp67:
	.byte	94                      ## DW_OP_reg14
Ltmp68:
	.quad	0
	.quad	0
Ldebug_loc16:
	.quad	Ltmp40
	.quad	Ltmp42
Lset66 = Ltmp70-Ltmp69                  ## Loc expr size
	.short	Lset66
Ltmp69:
	.byte	83                      ## DW_OP_reg3
	.byte	147                     ## DW_OP_piece
	.byte	4                       ## 4
Ltmp70:
	.quad	Ltmp46
	.quad	Ltmp47
Lset67 = Ltmp72-Ltmp71                  ## Loc expr size
	.short	Lset67
Ltmp71:
	.byte	83                      ## DW_OP_reg3
	.byte	147                     ## DW_OP_piece
	.byte	4                       ## 4
Ltmp72:
	.quad	0
	.quad	0
Ldebug_loc19:
	.quad	Ltmp41
	.quad	Ltmp43
Lset68 = Ltmp74-Ltmp73                  ## Loc expr size
	.short	Lset68
Ltmp73:
	.byte	80                      ## DW_OP_reg0
Ltmp74:
	.quad	0
	.quad	0
Ldebug_loc21:
	.section	__DWARF,__debug_aranges,regular,debug
	.long	60                      ## Length of ARange Set
	.short	2                       ## DWARF Arange version number
Lset69 = L__DWARF__debug_info_begin0-Lsection_info ## Offset Into Debug Info Section
	.long	Lset69
	.byte	8                       ## Address Size (in bytes)
	.byte	0                       ## Segment Size (in bytes)
	.space	4,255
	.quad	_emit_ancillary_info.infomap
Lset70 = Ldebug_end0-_emit_ancillary_info.infomap
	.quad	Lset70
	.quad	Lfunc_begin0
Lset71 = Ldebug_end1-Lfunc_begin0
	.quad	Lset71
	.quad	0                       ## ARange terminator
	.quad	0
	.section	__DWARF,__debug_ranges,regular,debug
Lgnu_ranges0:
Ldebug_ranges0:
	.quad	Ltmp10
	.quad	Ltmp20
	.quad	Ltmp21
	.quad	Ltmp22
	.quad	0
	.quad	0
	.section	__DWARF,__apple_names,regular,debug
Lnames_begin:
	.long	1212240712              ## Header Magic
	.short	1                       ## Header Version
	.short	0                       ## Header Hash Function
	.long	5                       ## Header Bucket Count
	.long	5                       ## Header Hash Count
	.long	12                      ## Header Data Length
	.long	0                       ## HeaderData Die Offset Base
	.long	1                       ## HeaderData Atom Count
	.short	1                       ## DW_ATOM_die_offset
	.short	6                       ## DW_FORM_data4
	.long	0                       ## Bucket 0
	.long	1                       ## Bucket 1
	.long	-1                      ## Bucket 2
	.long	2                       ## Bucket 3
	.long	3                       ## Bucket 4
	.long	-846433126              ## Hash in Bucket 0
	.long	2090499946              ## Hash in Bucket 1
	.long	-1636926513             ## Hash in Bucket 3
	.long	277146874               ## Hash in Bucket 4
	.long	-1443556867             ## Hash in Bucket 4
	.long	LNames1-Lnames_begin    ## Offset in Bucket 0
	.long	LNames4-Lnames_begin    ## Offset in Bucket 1
	.long	LNames3-Lnames_begin    ## Offset in Bucket 3
	.long	LNames0-Lnames_begin    ## Offset in Bucket 4
	.long	LNames2-Lnames_begin    ## Offset in Bucket 4
LNames1:
Lset72 = Linfo_string11-Linfo_string    ## emit_try_help
	.long	Lset72
	.long	1                       ## Num DIEs
	.long	342
	.long	0
LNames4:
Lset73 = Linfo_string10-Linfo_string    ## main
	.long	Lset73
	.long	1                       ## Num DIEs
	.long	367
	.long	0
LNames3:
Lset74 = Linfo_string4-Linfo_string     ## infomap
	.long	Lset74
	.long	1                       ## Num DIEs
	.long	50
	.long	0
LNames0:
Lset75 = Linfo_string9-Linfo_string     ## usage
	.long	Lset75
	.long	1                       ## Num DIEs
	.long	204
	.long	0
LNames2:
Lset76 = Linfo_string3-Linfo_string     ## emit_ancillary_info
	.long	Lset76
	.long	1                       ## Num DIEs
	.long	269
	.long	0
	.section	__DWARF,__apple_objc,regular,debug
Lobjc_begin:
	.long	1212240712              ## Header Magic
	.short	1                       ## Header Version
	.short	0                       ## Header Hash Function
	.long	1                       ## Header Bucket Count
	.long	0                       ## Header Hash Count
	.long	12                      ## Header Data Length
	.long	0                       ## HeaderData Die Offset Base
	.long	1                       ## HeaderData Atom Count
	.short	1                       ## DW_ATOM_die_offset
	.short	6                       ## DW_FORM_data4
	.long	-1                      ## Bucket 0
	.section	__DWARF,__apple_namespac,regular,debug
Lnamespac_begin:
	.long	1212240712              ## Header Magic
	.short	1                       ## Header Version
	.short	0                       ## Header Hash Function
	.long	1                       ## Header Bucket Count
	.long	0                       ## Header Hash Count
	.long	12                      ## Header Data Length
	.long	0                       ## HeaderData Die Offset Base
	.long	1                       ## HeaderData Atom Count
	.short	1                       ## DW_ATOM_die_offset
	.short	6                       ## DW_FORM_data4
	.long	-1                      ## Bucket 0
	.section	__DWARF,__apple_types,regular,debug
Ltypes_begin:
	.long	1212240712              ## Header Magic
	.short	1                       ## Header Version
	.short	0                       ## Header Hash Function
	.long	12                      ## Header Bucket Count
	.long	12                      ## Header Hash Count
	.long	20                      ## Header Data Length
	.long	0                       ## HeaderData Die Offset Base
	.long	3                       ## HeaderData Atom Count
	.short	1                       ## DW_ATOM_die_offset
	.short	6                       ## DW_FORM_data4
	.short	3                       ## DW_ATOM_die_tag
	.short	5                       ## DW_FORM_data2
	.short	4                       ## DW_ATOM_type_flags
	.short	11                      ## DW_FORM_data1
	.long	0                       ## Bucket 0
	.long	1                       ## Bucket 1
	.long	-1                      ## Bucket 2
	.long	-1                      ## Bucket 3
	.long	2                       ## Bucket 4
	.long	4                       ## Bucket 5
	.long	-1                      ## Bucket 6
	.long	5                       ## Bucket 7
	.long	6                       ## Bucket 8
	.long	-1                      ## Bucket 9
	.long	7                       ## Bucket 10
	.long	9                       ## Bucket 11
	.long	-1880351968             ## Hash in Bucket 0
	.long	-243996567              ## Hash in Bucket 1
	.long	-136368420              ## Hash in Bucket 4
	.long	260187628               ## Hash in Bucket 4
	.long	-1304652851             ## Hash in Bucket 5
	.long	-1636926513             ## Hash in Bucket 7
	.long	193495088               ## Hash in Bucket 8
	.long	276790522               ## Hash in Bucket 10
	.long	-152971314              ## Hash in Bucket 10
	.long	339549335               ## Hash in Bucket 11
	.long	-2056763333             ## Hash in Bucket 11
	.long	2090147939              ## Hash in Bucket 11
	.long	Ltypes9-Ltypes_begin    ## Offset in Bucket 0
	.long	Ltypes1-Ltypes_begin    ## Offset in Bucket 1
	.long	Ltypes4-Ltypes_begin    ## Offset in Bucket 4
	.long	Ltypes10-Ltypes_begin   ## Offset in Bucket 4
	.long	Ltypes5-Ltypes_begin    ## Offset in Bucket 5
	.long	Ltypes7-Ltypes_begin    ## Offset in Bucket 7
	.long	Ltypes8-Ltypes_begin    ## Offset in Bucket 8
	.long	Ltypes2-Ltypes_begin    ## Offset in Bucket 10
	.long	Ltypes6-Ltypes_begin    ## Offset in Bucket 10
	.long	Ltypes0-Ltypes_begin    ## Offset in Bucket 11
	.long	Ltypes3-Ltypes_begin    ## Offset in Bucket 11
	.long	Ltypes11-Ltypes_begin   ## Offset in Bucket 11
Ltypes9:
Lset77 = Linfo_string31-Linfo_string    ## long int
	.long	Lset77
	.long	1                       ## Num DIEs
	.long	751
	.short	36
	.byte	0
	.long	0
Ltypes1:
Lset78 = Linfo_string32-Linfo_string    ## __darwin_time_t
	.long	Lset78
	.long	1                       ## Num DIEs
	.long	740
	.short	22
	.byte	0
	.long	0
Ltypes4:
Lset79 = Linfo_string20-Linfo_string    ## __darwin_uid_t
	.long	Lset79
	.long	1                       ## Num DIEs
	.long	525
	.short	22
	.byte	0
	.long	0
Ltypes10:
Lset80 = Linfo_string29-Linfo_string    ## gid_t
	.long	Lset80
	.long	1                       ## Num DIEs
	.long	718
	.short	22
	.byte	0
	.long	0
Ltypes5:
Lset81 = Linfo_string18-Linfo_string    ## unsigned int
	.long	Lset81
	.long	1                       ## Num DIEs
	.long	547
	.short	36
	.byte	0
	.long	0
Ltypes7:
Lset82 = Linfo_string4-Linfo_string     ## infomap
	.long	Lset82
	.long	1                       ## Num DIEs
	.long	72
	.short	19
	.byte	2
	.long	0
Ltypes8:
Lset83 = Linfo_string8-Linfo_string     ## int
	.long	Lset83
	.long	1                       ## Num DIEs
	.long	481
	.short	36
	.byte	0
	.long	0
Ltypes2:
Lset84 = Linfo_string21-Linfo_string    ## uid_t
	.long	Lset84
	.long	1                       ## Num DIEs
	.long	514
	.short	22
	.byte	0
	.long	0
Ltypes6:
Lset85 = Linfo_string28-Linfo_string    ## __darwin_gid_t
	.long	Lset85
	.long	1                       ## Num DIEs
	.long	729
	.short	22
	.byte	0
	.long	0
Ltypes0:
Lset86 = Linfo_string38-Linfo_string    ## passwd
	.long	Lset86
	.long	1                       ## Num DIEs
	.long	559
	.short	19
	.byte	2
	.long	0
Ltypes3:
Lset87 = Linfo_string19-Linfo_string    ## __uint32_t
	.long	Lset87
	.long	1                       ## Num DIEs
	.long	536
	.short	22
	.byte	0
	.long	0
Ltypes11:
Lset88 = Linfo_string6-Linfo_string     ## char
	.long	Lset88
	.long	1                       ## Num DIEs
	.long	190
	.short	36
	.byte	0
	.long	0

.subsections_via_symbols
