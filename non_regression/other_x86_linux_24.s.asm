	.file	"(extract)pyexpat.c"
	.section       .rodata.str1.1
.LC55:
	.string	"NiNNNNN"
.LC56:
	.string	"EntityDecl"
# ----------------------
	.text
	.p2align 4,,15
# ----------------------
	.local	my_EntityDeclHandler
	.type	my_EntityDeclHandler, @function
my_EntityDeclHandler:
	.cfi_startproc
	pushl     %ebp
	pushl     %edi
	pushl     %esi
	pushl     %ebx
	subl      $76, %esp
	movl      96(%esp), %esi
	call      __x86.get_pc_thunk.bx
	addl      $_GLOBAL_OFFSET_TABLE_, %ebx
	movl      48(%esi), %eax
	movl      68(%eax), %ecx
	testl     %ecx, %ecx
	je        .L1115
	movl      32(%esi), %edx
	testl     %edx, %edx
	je        .L1121
	movl      40(%esi), %eax
	testl     %eax, %eax
	jne       .L1203
.L1121:
	movl      12(%esi), %edx
	leal      conv_string_to_utf8@GOTOFF(%ebx), %eax
	testl     %edx, %edx
	leal      conv_string_to_unicode@GOTOFF(%ebx), %edx
	cmovne    %edx, %eax
	movl      128(%esp), %edx
	movl      %edx, (%esp)
	call      *%eax
	testl     %eax, %eax
	movl      %eax, %ebp
	je        .L1126
	movl      44(%esi), %eax
	movl      %ebp, %edi
	testl     %eax, %eax
	je        .L1124
	movl      %ebp, 4(%esp)
	movl      %eax, (%esp)
	call      PyDict_GetItem@PLT
	testl     %eax, %eax
	movl      %eax, %edx
	je        .L1204
	addl      $1, (%eax)
	movl      %edx, %edi
	movl      (%ebp), %eax
	subl      $1, %eax
	testl     %eax, %eax
	movl      %eax, (%ebp)
	je        .L1205
.L1124:
	movl      12(%esi), %ebp
	leal      conv_string_to_utf8@GOTOFF(%ebx), %edx
	leal      conv_string_to_unicode@GOTOFF(%ebx), %eax
	testl     %ebp, %ebp
	cmove     %edx, %eax
	movl      124(%esp), %edx
	movl      %edx, (%esp)
	call      *%eax
	testl     %eax, %eax
	movl      %eax, %ebp
	je        .L1131
	movl      44(%esi), %eax
	movl      %ebp, 44(%esp)
	testl     %eax, %eax
	je        .L1129
	movl      %ebp, 4(%esp)
	movl      %eax, (%esp)
	call      PyDict_GetItem@PLT
	testl     %eax, %eax
	movl      %eax, %edx
	je        .L1206
	movl      44(%esp), %ecx
	addl      $1, (%eax)
	movl      %edx, 44(%esp)
	movl      (%ecx), %eax
	subl      $1, %eax
	testl     %eax, %eax
	movl      %eax, (%ecx)
	je        .L1207
.L1129:
	movl      12(%esi), %ecx
	leal      conv_string_to_utf8@GOTOFF(%ebx), %edx
	leal      conv_string_to_unicode@GOTOFF(%ebx), %eax
	testl     %ecx, %ecx
	cmove     %edx, %eax
	movl      120(%esp), %edx
	movl      %edx, (%esp)
	call      *%eax
	testl     %eax, %eax
	movl      %eax, %ebp
	je        .L1136
	movl      44(%esi), %eax
	movl      %ebp, 48(%esp)
	testl     %eax, %eax
	je        .L1134
	movl      %ebp, 4(%esp)
	movl      %eax, (%esp)
	call      PyDict_GetItem@PLT
	testl     %eax, %eax
	movl      %eax, %edx
	je        .L1208
	movl      48(%esp), %ecx
	addl      $1, (%eax)
	movl      %edx, 48(%esp)
	movl      (%ecx), %eax
	subl      $1, %eax
	testl     %eax, %eax
	movl      %eax, (%ecx)
	je        .L1209
.L1134:
	movl      12(%esi), %edx
	leal      conv_string_to_unicode@GOTOFF(%ebx), %eax
	testl     %edx, %edx
	leal      conv_string_to_utf8@GOTOFF(%ebx), %edx
	cmove     %edx, %eax
	movl      116(%esp), %edx
	movl      %edx, (%esp)
	call      *%eax
	testl     %eax, %eax
	movl      %eax, %ebp
	je        .L1141
	movl      44(%esi), %eax
	movl      %ebp, 52(%esp)
	testl     %eax, %eax
	je        .L1139
	movl      %ebp, 4(%esp)
	movl      %eax, (%esp)
	call      PyDict_GetItem@PLT
	testl     %eax, %eax
	movl      %eax, %edx
	je        .L1210
	movl      52(%esp), %ecx
	addl      $1, (%eax)
	movl      %edx, 52(%esp)
	movl      (%ecx), %eax
	subl      $1, %eax
	testl     %eax, %eax
	movl      %eax, (%ecx)
	je        .L1211
.L1139:
	movl      12(%esi), %edx
	testl     %edx, %edx
	je        .L1142
	movl      108(%esp), %eax
	testl     %eax, %eax
	je        .L1201
	leal      .LC7@GOTOFF(%ebx), %eax
	movl      %eax, 8(%esp)
	movl      112(%esp), %eax
	movl      %eax, 4(%esp)
	movl      108(%esp), %eax
	movl      %eax, (%esp)
	call      PyUnicodeUCS2_DecodeUTF8@PLT
	movl      12(%esi), %edx
	jmp       .L1147
	.p2align 4,,7
	.p2align 3
.L1142:
	movl      108(%esp), %ebp
	testl     %ebp, %ebp
	je        .L1201
	movl      112(%esp), %eax
	movl      %eax, 4(%esp)
	movl      108(%esp), %eax
	movl      %eax, (%esp)
	call      PyString_FromStringAndSize@PLT
	movl      12(%esi), %edx
.L1147:
	testl     %edx, %edx
	movl      %eax, 56(%esp)
	leal      conv_string_to_utf8@GOTOFF(%ebx), %edx
	leal      conv_string_to_unicode@GOTOFF(%ebx), %eax
	cmove     %edx, %eax
	movl      100(%esp), %edx
	movl      %edx, (%esp)
	call      *%eax
	testl     %eax, %eax
	movl      %eax, %ecx
	je        .L1152
	movl      44(%esi), %eax
	movl      %ecx, %ebp
	movl      %ecx, 60(%esp)
	testl     %eax, %eax
	je        .L1150
	movl      %ecx, 4(%esp)
	movl      %eax, (%esp)
	call      PyDict_GetItem@PLT
	movl      60(%esp), %ecx
	testl     %eax, %eax
	movl      %eax, %edx
	je        .L1212
	addl      $1, (%eax)
	movl      (%ebp), %eax
	subl      $1, %eax
	testl     %eax, %eax
	movl      %eax, (%ebp)
	movl      %edx, %ebp
	je        .L1213
.L1150:
	movl      44(%esp), %eax
	movl      %edi, 28(%esp)
	movl      %ebp, 4(%esp)
	movl      %eax, 24(%esp)
	movl      48(%esp), %eax
	movl      %eax, 20(%esp)
	movl      52(%esp), %eax
	movl      %eax, 16(%esp)
	movl      56(%esp), %eax
	movl      %eax, 12(%esp)
	movl      104(%esp), %eax
	movl      %eax, 8(%esp)
	leal      .LC55@GOTOFF(%ebx), %eax
	movl      %eax, (%esp)
	call      Py_BuildValue@PLT
	testl     %eax, %eax
	movl      %eax, %edi
	je        .L1214
	movl      48(%esi), %eax
	leal      .LC56@GOTOFF(%ebx), %edx
	movl      $1, 24(%esi)
	movl      68(%eax), %ebp
	movl      $17, %eax
	movl      $694, (%esp)
	call      getcode
	leal      8(%esi), %edx
	movl      %edx, 4(%esp)
	movl      %edi, (%esp)
	movl      %ebp, %edx
	call      call_with_frame.isra.9
	movl      $0, 24(%esi)
	movl      (%edi), %ecx
	leal      -1(%ecx), %edx
	testl     %edx, %edx
	movl      %edx, (%edi)
	je        .L1215
.L1160:
	testl     %eax, %eax
	je        .L1216
	movl      (%eax), %edi
	leal      -1(%edi), %edx
	testl     %edx, %edx
	movl      %edx, (%eax)
	jne       .L1115
	movl      4(%eax), %edx
	movl      %eax, (%esp)
	call      *24(%edx)
.L1115:
	addl      $76, %esp
	popl      %ebx
	popl      %esi
	popl      %edi
	popl      %ebp
	ret       
	.p2align 4,,7
	.p2align 3
.L1203:
	movl      %eax, (%esp)
	movl      %esi, %eax
	call      call_character_handler
	movl      $0, 40(%esi)
	testl     %eax, %eax
	jns       .L1121
	addl      $76, %esp
	popl      %ebx
	popl      %esi
	popl      %edi
	popl      %ebp
	ret       
	.p2align 4,,7
	.p2align 3
.L1201:
	movl      _Py_NoneStruct@GOT(%ebx), %eax
	addl      $1, (%eax)
	jmp       .L1147
.L1204:
	movl      %ebp, 8(%esp)
	movl      %ebp, 4(%esp)
	movl      44(%esi), %eax
	movl      %eax, (%esp)
	call      PyDict_SetItem@PLT
	testl     %eax, %eax
	je        .L1124
	.p2align 4,,7
	.p2align 3
.L1126:
	xorl      %edi, %edi
	jmp       .L1124
	.p2align 4,,7
	.p2align 3
.L1215:
	movl      4(%edi), %edx
	movl      %eax, 44(%esp)
	movl      %edi, (%esp)
	call      *24(%edx)
	movl      44(%esp), %eax
	jmp       .L1160
	.p2align 4,,7
	.p2align 3
.L1211:
	movl      4(%ebp), %eax
	movl      %ebp, (%esp)
	call      *24(%eax)
	jmp       .L1139
	.p2align 4,,7
	.p2align 3
.L1213:
	movl      4(%ecx), %eax
	movl      %ecx, (%esp)
	call      *24(%eax)
	.p2align 4,,4
	jmp       .L1150
	.p2align 4,,7
	.p2align 3
.L1209:
	movl      4(%ebp), %eax
	movl      %ebp, (%esp)
	call      *24(%eax)
	.p2align 4,,4
	jmp       .L1134
	.p2align 4,,7
	.p2align 3
.L1207:
	movl      4(%ebp), %eax
	movl      %ebp, (%esp)
	call      *24(%eax)
	.p2align 4,,4
	jmp       .L1129
	.p2align 4,,7
	.p2align 3
.L1205:
	movl      4(%ebp), %eax
	movl      %ebp, (%esp)
	call      *24(%eax)
	.p2align 4,,4
	jmp       .L1124
.L1208:
	movl      48(%esp), %eax
	movl      %eax, 8(%esp)
	movl      %eax, 4(%esp)
	movl      44(%esi), %eax
	movl      %eax, (%esp)
	call      PyDict_SetItem@PLT
	testl     %eax, %eax
	je        .L1134
	.p2align 4,,7
	.p2align 3
.L1136:
	movl      $0, 48(%esp)
	jmp       .L1134
.L1206:
	movl      44(%esp), %eax
	movl      %eax, 8(%esp)
	movl      %eax, 4(%esp)
	movl      44(%esi), %eax
	movl      %eax, (%esp)
	call      PyDict_SetItem@PLT
	testl     %eax, %eax
	je        .L1129
	.p2align 4,,7
	.p2align 3
.L1131:
	movl      $0, 44(%esp)
	jmp       .L1129
.L1212:
	movl      %ebp, 8(%esp)
	movl      %ebp, 4(%esp)
	movl      44(%esi), %eax
	movl      %eax, (%esp)
	call      PyDict_SetItem@PLT
	testl     %eax, %eax
	je        .L1150
	.p2align 4,,7
	.p2align 3
.L1152:
	xorl      %ebp, %ebp
	jmp       .L1150
.L1210:
	movl      52(%esp), %eax
	movl      %eax, 8(%esp)
	movl      %eax, 4(%esp)
	movl      44(%esi), %eax
	movl      %eax, (%esp)
	call      PyDict_SetItem@PLT
	testl     %eax, %eax
	je        .L1139
	.p2align 4,,7
	.p2align 3
.L1141:
	movl      $0, 52(%esp)
	jmp       .L1139
	.p2align 4,,7
	.p2align 3
.L1214:
	movl      handler_info@GOTOFF(%ebx), %edi
	testl     %edi, %edi
	je        .L1166
	leal      handler_info@GOTOFF+4(%ebx), %edi
	xorl      %ebp, %ebp
	jmp       .L1159
	.p2align 4,,7
	.p2align 3
.L1156:
	movl      $0, 4(%esp)
	movl      8(%esi), %edx
	addl      $4, %ebp
	movl      %edi, 44(%esp)
	movl      %edx, (%esp)
	call      *(%edi)
	movl      44(%esp), %eax
	addl      $20, %edi
	movl      16(%eax), %ecx
	testl     %ecx, %ecx
	je        .L1166
.L1159:
	movl      48(%esi), %edx
	addl      %ebp, %edx
	movl      (%edx), %eax
	movl      $0, (%edx)
	testl     %eax, %eax
	je        .L1156
	movl      (%eax), %ecx
	leal      -1(%ecx), %edx
	testl     %edx, %edx
	movl      %edx, (%eax)
	jne       .L1156
	movl      4(%eax), %edx
	movl      %eax, (%esp)
	call      *24(%edx)
	jmp       .L1156
	.p2align 4,,7
	.p2align 3
.L1166:
	leal      error_external_entity_ref_handler@GOTOFF(%ebx), %eax
	movl      %eax, 4(%esp)
	movl      8(%esi), %eax
	movl      %eax, (%esp)
	call      XML_SetExternalEntityRefHandler@PLT
	jmp       .L1115
.L1216:
	movl      handler_info@GOTOFF(%ebx), %edx
	testl     %edx, %edx
	je        .L1166
	leal      handler_info@GOTOFF+4(%ebx), %edi
	xorl      %ebp, %ebp
	jmp       .L1167
	.p2align 4,,7
	.p2align 3
.L1164:
	movl      $0, 4(%esp)
	movl      8(%esi), %edx
	addl      $4, %ebp
	movl      %edi, 44(%esp)
	movl      %edx, (%esp)
	call      *(%edi)
	movl      44(%esp), %eax
	addl      $20, %edi
	movl      16(%eax), %eax
	testl     %eax, %eax
	je        .L1166
.L1167:
	movl      48(%esi), %edx
	addl      %ebp, %edx
	movl      (%edx), %eax
	movl      $0, (%edx)
	testl     %eax, %eax
	je        .L1164
	movl      (%eax), %ecx
	leal      -1(%ecx), %edx
	testl     %edx, %edx
	movl      %edx, (%eax)
	jne       .L1164
	movl      4(%eax), %edx
	movl      %eax, (%esp)
	call      *24(%edx)
	jmp       .L1164
	.cfi_endproc
	.size	my_EntityDeclHandler, .-my_EntityDeclHandler
# ----------------------
	.hidden	__stack_chk_fail_local
	.ident	"GCC: (Ubuntu 4.8.4-2ubuntu1~14.04.3) 4.8.4"
	.section	.note.GNU-stack,"",@progbits
