	.file	"(extract)pyexpat.c"
	.file 1 "/home/user/Desktop/Python-2.4.5/Modules/pyexpat.c"
	.section	.rodata.str1.1
.LC55:
	.string	"NiNNNNN"
.LC56:
	.string	"EntityDecl"
	.text
	.p2align 4,,15
	.type	my_EntityDeclHandler, @function
my_EntityDeclHandler:
.LFB164:
	.loc 1 677 0
	.cfi_startproc
.LVL1100:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	pushl	%edi
	.cfi_def_cfa_offset 12
	.cfi_offset 7, -12
	pushl	%esi
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushl	%ebx
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	subl	$76, %esp
	.cfi_def_cfa_offset 96
	movl	96(%esp), %esi
.LVL1101:
	call	__x86.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
.LBB1072:
.LBB1073:
	.loc 1 146 0
	movl	48(%esi), %eax
.LBE1073:
.LBE1072:
	.loc 1 677 0
	movl	68(%eax), %ecx
	testl	%ecx, %ecx
	je	.L1115
.LVL1102:
.LBB1074:
.LBB1075:
	.loc 1 481 0
	movl	32(%esi), %edx
	testl	%edx, %edx
	je	.L1121
	movl	40(%esi), %eax
	testl	%eax, %eax
	jne	.L1203
.LVL1103:
.L1121:
.LBE1075:
.LBE1074:
.LBB1077:
.LBB1078:
.LBB1079:
.LBB1080:
	.loc 1 418 0
	movl	12(%esi), %edx
	leal	conv_string_to_utf8@GOTOFF(%ebx), %eax
	testl	%edx, %edx
	leal	conv_string_to_unicode@GOTOFF(%ebx), %edx
	cmovne	%edx, %eax
	movl	128(%esp), %edx
	movl	%edx, (%esp)
	call	*%eax
.LVL1104:
	.loc 1 421 0
	testl	%eax, %eax
	.loc 1 418 0
	movl	%eax, %ebp
.LVL1105:
	.loc 1 421 0
	je	.L1126
	.loc 1 423 0
	movl	44(%esi), %eax
.LVL1106:
	movl	%ebp, %edi
	testl	%eax, %eax
	je	.L1124
	.loc 1 425 0
	movl	%ebp, 4(%esp)
	movl	%eax, (%esp)
	call	PyDict_GetItem@PLT
.LVL1107:
	.loc 1 426 0
	testl	%eax, %eax
	.loc 1 425 0
	movl	%eax, %edx
.LVL1108:
	.loc 1 426 0
	je	.L1204
	.loc 1 432 0
	addl	$1, (%eax)
	.loc 1 433 0
	movl	%edx, %edi
	movl	0(%ebp), %eax
.LVL1109:
	subl	$1, %eax
	testl	%eax, %eax
	movl	%eax, 0(%ebp)
	je	.L1205
.LVL1110:
.L1124:
.LBE1080:
.LBE1079:
.LBB1083:
.LBB1084:
	.loc 1 418 0
	movl	12(%esi), %ebp
.LVL1111:
	leal	conv_string_to_utf8@GOTOFF(%ebx), %edx
	leal	conv_string_to_unicode@GOTOFF(%ebx), %eax
	testl	%ebp, %ebp
	cmove	%edx, %eax
	movl	124(%esp), %edx
	movl	%edx, (%esp)
	call	*%eax
.LVL1112:
	.loc 1 421 0
	testl	%eax, %eax
	.loc 1 418 0
	movl	%eax, %ebp
.LVL1113:
	.loc 1 421 0
	je	.L1131
	.loc 1 423 0
	movl	44(%esi), %eax
.LVL1114:
	movl	%ebp, 44(%esp)
	testl	%eax, %eax
	je	.L1129
	.loc 1 425 0
	movl	%ebp, 4(%esp)
	movl	%eax, (%esp)
	call	PyDict_GetItem@PLT
.LVL1115:
	.loc 1 426 0
	testl	%eax, %eax
	.loc 1 425 0
	movl	%eax, %edx
.LVL1116:
	.loc 1 426 0
	je	.L1206
	.loc 1 433 0
	movl	44(%esp), %ecx
	.loc 1 432 0
	addl	$1, (%eax)
	.loc 1 433 0
	movl	%edx, 44(%esp)
	movl	(%ecx), %eax
.LVL1117:
	subl	$1, %eax
	testl	%eax, %eax
	movl	%eax, (%ecx)
	je	.L1207
.LVL1118:
.L1129:
.LBE1084:
.LBE1083:
.LBB1087:
.LBB1088:
	.loc 1 418 0
	movl	12(%esi), %ecx
	leal	conv_string_to_utf8@GOTOFF(%ebx), %edx
	leal	conv_string_to_unicode@GOTOFF(%ebx), %eax
	testl	%ecx, %ecx
	cmove	%edx, %eax
	movl	120(%esp), %edx
	movl	%edx, (%esp)
	call	*%eax
.LVL1119:
	.loc 1 421 0
	testl	%eax, %eax
	.loc 1 418 0
	movl	%eax, %ebp
.LVL1120:
	.loc 1 421 0
	je	.L1136
	.loc 1 423 0
	movl	44(%esi), %eax
.LVL1121:
	movl	%ebp, 48(%esp)
	testl	%eax, %eax
	je	.L1134
	.loc 1 425 0
	movl	%ebp, 4(%esp)
	movl	%eax, (%esp)
	call	PyDict_GetItem@PLT
.LVL1122:
	.loc 1 426 0
	testl	%eax, %eax
	.loc 1 425 0
	movl	%eax, %edx
.LVL1123:
	.loc 1 426 0
	je	.L1208
	.loc 1 433 0
	movl	48(%esp), %ecx
	.loc 1 432 0
	addl	$1, (%eax)
	.loc 1 433 0
	movl	%edx, 48(%esp)
	movl	(%ecx), %eax
.LVL1124:
	subl	$1, %eax
	testl	%eax, %eax
	movl	%eax, (%ecx)
	je	.L1209
.LVL1125:
.L1134:
.LBE1088:
.LBE1087:
.LBB1091:
.LBB1092:
	.loc 1 418 0
	movl	12(%esi), %edx
	leal	conv_string_to_unicode@GOTOFF(%ebx), %eax
	testl	%edx, %edx
	leal	conv_string_to_utf8@GOTOFF(%ebx), %edx
	cmove	%edx, %eax
	movl	116(%esp), %edx
	movl	%edx, (%esp)
	call	*%eax
.LVL1126:
	.loc 1 421 0
	testl	%eax, %eax
	.loc 1 418 0
	movl	%eax, %ebp
.LVL1127:
	.loc 1 421 0
	je	.L1141
	.loc 1 423 0
	movl	44(%esi), %eax
.LVL1128:
	movl	%ebp, 52(%esp)
	testl	%eax, %eax
	je	.L1139
	.loc 1 425 0
	movl	%ebp, 4(%esp)
	movl	%eax, (%esp)
	call	PyDict_GetItem@PLT
.LVL1129:
	.loc 1 426 0
	testl	%eax, %eax
	.loc 1 425 0
	movl	%eax, %edx
.LVL1130:
	.loc 1 426 0
	je	.L1210
	.loc 1 433 0
	movl	52(%esp), %ecx
	.loc 1 432 0
	addl	$1, (%eax)
	.loc 1 433 0
	movl	%edx, 52(%esp)
	movl	(%ecx), %eax
.LVL1131:
	subl	$1, %eax
	testl	%eax, %eax
	movl	%eax, (%ecx)
	je	.L1211
.LVL1132:
.L1139:
.LBE1092:
.LBE1091:
	.loc 1 677 0
	movl	12(%esi), %edx
	testl	%edx, %edx
	je	.L1142
.LVL1133:
.LBB1095:
.LBB1096:
	.loc 1 186 0
	movl	108(%esp), %eax
	testl	%eax, %eax
	je	.L1201
	.loc 1 190 0
	leal	.LC7@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	112(%esp), %eax
	movl	%eax, 4(%esp)
	movl	108(%esp), %eax
	movl	%eax, (%esp)
	call	PyUnicodeUCS2_DecodeUTF8@PLT
.LVL1134:
	movl	12(%esi), %edx
	jmp	.L1147
.LVL1135:
	.p2align 4,,7
	.p2align 3
.L1142:
.LBE1096:
.LBE1095:
.LBB1097:
.LBB1098:
	.loc 1 216 0
	movl	108(%esp), %ebp
.LVL1136:
	testl	%ebp, %ebp
	je	.L1201
	.loc 1 220 0
	movl	112(%esp), %eax
	movl	%eax, 4(%esp)
	movl	108(%esp), %eax
	movl	%eax, (%esp)
	call	PyString_FromStringAndSize@PLT
.LVL1137:
	movl	12(%esi), %edx
.LVL1138:
.L1147:
.LBE1098:
.LBE1097:
.LBB1102:
.LBB1103:
	.loc 1 418 0
	testl	%edx, %edx
.LBE1103:
.LBE1102:
	.loc 1 677 0
	movl	%eax, 56(%esp)
.LVL1139:
.LBB1107:
.LBB1104:
	.loc 1 418 0
	leal	conv_string_to_utf8@GOTOFF(%ebx), %edx
	leal	conv_string_to_unicode@GOTOFF(%ebx), %eax
	cmove	%edx, %eax
	movl	100(%esp), %edx
	movl	%edx, (%esp)
	call	*%eax
.LVL1140:
	.loc 1 421 0
	testl	%eax, %eax
	.loc 1 418 0
	movl	%eax, %ecx
.LVL1141:
	.loc 1 421 0
	je	.L1152
	.loc 1 423 0
	movl	44(%esi), %eax
.LVL1142:
	movl	%ecx, %ebp
	movl	%ecx, 60(%esp)
	testl	%eax, %eax
	je	.L1150
	.loc 1 425 0
	movl	%ecx, 4(%esp)
	movl	%eax, (%esp)
	call	PyDict_GetItem@PLT
.LVL1143:
	.loc 1 426 0
	movl	60(%esp), %ecx
	testl	%eax, %eax
	.loc 1 425 0
	movl	%eax, %edx
.LVL1144:
	.loc 1 426 0
	je	.L1212
	.loc 1 432 0
	addl	$1, (%eax)
	.loc 1 433 0
	movl	0(%ebp), %eax
.LVL1145:
	subl	$1, %eax
	testl	%eax, %eax
	movl	%eax, 0(%ebp)
	movl	%edx, %ebp
.LVL1146:
	je	.L1213
.LVL1147:
.L1150:
.LBE1104:
.LBE1107:
	.loc 1 677 0
	movl	44(%esp), %eax
	movl	%edi, 28(%esp)
	movl	%ebp, 4(%esp)
	movl	%eax, 24(%esp)
	movl	48(%esp), %eax
	movl	%eax, 20(%esp)
	movl	52(%esp), %eax
	movl	%eax, 16(%esp)
	movl	56(%esp), %eax
	movl	%eax, 12(%esp)
	movl	104(%esp), %eax
	movl	%eax, 8(%esp)
	leal	.LC55@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	Py_BuildValue@PLT
.LVL1148:
	testl	%eax, %eax
	movl	%eax, %edi
.LVL1149:
	je	.L1214
	movl	48(%esi), %eax
.LVL1150:
	leal	.LC56@GOTOFF(%ebx), %edx
	movl	$1, 24(%esi)
	movl	68(%eax), %ebp
	movl	$17, %eax
	movl	$694, (%esp)
	call	getcode
.LVL1151:
	leal	8(%esi), %edx
	movl	%edx, 4(%esp)
	movl	%edi, (%esp)
	movl	%ebp, %edx
	call	call_with_frame.isra.9
.LVL1152:
	movl	$0, 24(%esi)
	movl	(%edi), %ecx
	leal	-1(%ecx), %edx
	testl	%edx, %edx
	movl	%edx, (%edi)
	je	.L1215
.LVL1153:
.L1160:
	testl	%eax, %eax
	je	.L1216
	movl	(%eax), %edi
.LVL1154:
	leal	-1(%edi), %edx
	testl	%edx, %edx
	movl	%edx, (%eax)
	jne	.L1115
	movl	4(%eax), %edx
	movl	%eax, (%esp)
	call	*24(%edx)
.LVL1155:
.L1115:
.LBE1078:
.LBE1077:
	addl	$76, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 12
.LVL1156:
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
.LVL1157:
	.p2align 4,,7
	.p2align 3
.L1203:
	.cfi_restore_state
.LBB1128:
.LBB1076:
	.loc 1 483 0
	movl	%eax, (%esp)
	movl	%esi, %eax
	call	call_character_handler
.LVL1158:
	.loc 1 484 0
	movl	$0, 40(%esi)
.LBE1076:
.LBE1128:
	.loc 1 677 0
	testl	%eax, %eax
	jns	.L1121
	addl	$76, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 12
.LVL1159:
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
.LVL1160:
	.p2align 4,,7
	.p2align 3
.L1201:
	.cfi_restore_state
.LBB1129:
.LBB1127:
.LBB1108:
.LBB1101:
.LBB1099:
.LBB1100:
	.loc 1 217 0
	movl	_Py_NoneStruct@GOT(%ebx), %eax
	addl	$1, (%eax)
	jmp	.L1147
.LVL1161:
.L1204:
.LBE1100:
.LBE1099:
.LBE1101:
.LBE1108:
.LBB1109:
.LBB1081:
	.loc 1 427 0
	movl	%ebp, 8(%esp)
	movl	%ebp, 4(%esp)
	movl	44(%esi), %eax
.LVL1162:
	movl	%eax, (%esp)
	call	PyDict_SetItem@PLT
.LVL1163:
	testl	%eax, %eax
	je	.L1124
.LVL1164:
	.p2align 4,,7
	.p2align 3
.L1126:
	.loc 1 418 0
	xorl	%edi, %edi
	jmp	.L1124
.LVL1165:
	.p2align 4,,7
	.p2align 3
.L1215:
.LBE1081:
.LBE1109:
	.loc 1 677 0
	movl	4(%edi), %edx
	movl	%eax, 44(%esp)
	movl	%edi, (%esp)
	call	*24(%edx)
.LVL1166:
	movl	44(%esp), %eax
	jmp	.L1160
.LVL1167:
	.p2align 4,,7
	.p2align 3
.L1211:
.LBB1110:
.LBB1093:
	.loc 1 433 0
	movl	4(%ebp), %eax
	movl	%ebp, (%esp)
	call	*24(%eax)
.LVL1168:
	jmp	.L1139
.LVL1169:
	.p2align 4,,7
	.p2align 3
.L1213:
.LBE1093:
.LBE1110:
.LBB1111:
.LBB1105:
	movl	4(%ecx), %eax
	movl	%ecx, (%esp)
	call	*24(%eax)
.LVL1170:
	.p2align 4,,4
	jmp	.L1150
.LVL1171:
	.p2align 4,,7
	.p2align 3
.L1209:
.LBE1105:
.LBE1111:
.LBB1112:
.LBB1089:
	movl	4(%ebp), %eax
	movl	%ebp, (%esp)
	call	*24(%eax)
.LVL1172:
	.p2align 4,,4
	jmp	.L1134
.LVL1173:
	.p2align 4,,7
	.p2align 3
.L1207:
.LBE1089:
.LBE1112:
.LBB1113:
.LBB1085:
	movl	4(%ebp), %eax
	movl	%ebp, (%esp)
	call	*24(%eax)
.LVL1174:
	.p2align 4,,4
	jmp	.L1129
.LVL1175:
	.p2align 4,,7
	.p2align 3
.L1205:
.LBE1085:
.LBE1113:
.LBB1114:
.LBB1082:
	movl	4(%ebp), %eax
	movl	%ebp, (%esp)
	call	*24(%eax)
.LVL1176:
	.p2align 4,,4
	jmp	.L1124
.LVL1177:
.L1208:
.LBE1082:
.LBE1114:
.LBB1115:
.LBB1090:
	.loc 1 427 0
	movl	48(%esp), %eax
.LVL1178:
	movl	%eax, 8(%esp)
	movl	%eax, 4(%esp)
	movl	44(%esi), %eax
	movl	%eax, (%esp)
	call	PyDict_SetItem@PLT
.LVL1179:
	testl	%eax, %eax
	je	.L1134
	.p2align 4,,7
	.p2align 3
.L1136:
	.loc 1 418 0
	movl	$0, 48(%esp)
	jmp	.L1134
.LVL1180:
.L1206:
.LBE1090:
.LBE1115:
.LBB1116:
.LBB1086:
	.loc 1 427 0
	movl	44(%esp), %eax
.LVL1181:
	movl	%eax, 8(%esp)
	movl	%eax, 4(%esp)
	movl	44(%esi), %eax
	movl	%eax, (%esp)
	call	PyDict_SetItem@PLT
.LVL1182:
	testl	%eax, %eax
	je	.L1129
	.p2align 4,,7
	.p2align 3
.L1131:
	.loc 1 418 0
	movl	$0, 44(%esp)
	jmp	.L1129
.LVL1183:
.L1212:
.LBE1086:
.LBE1116:
.LBB1117:
.LBB1106:
	.loc 1 427 0
	movl	%ebp, 8(%esp)
	movl	%ebp, 4(%esp)
	movl	44(%esi), %eax
.LVL1184:
	movl	%eax, (%esp)
	call	PyDict_SetItem@PLT
.LVL1185:
	testl	%eax, %eax
	je	.L1150
.LVL1186:
	.p2align 4,,7
	.p2align 3
.L1152:
	.loc 1 418 0
	xorl	%ebp, %ebp
	jmp	.L1150
.LVL1187:
.L1210:
.LBE1106:
.LBE1117:
.LBB1118:
.LBB1094:
	.loc 1 427 0
	movl	52(%esp), %eax
.LVL1188:
	movl	%eax, 8(%esp)
	movl	%eax, 4(%esp)
	movl	44(%esi), %eax
	movl	%eax, (%esp)
	call	PyDict_SetItem@PLT
.LVL1189:
	testl	%eax, %eax
	je	.L1139
	.p2align 4,,7
	.p2align 3
.L1141:
	.loc 1 418 0
	movl	$0, 52(%esp)
	jmp	.L1139
.LVL1190:
	.p2align 4,,7
	.p2align 3
.L1214:
.LBE1094:
.LBE1118:
.LBB1119:
.LBB1120:
.LBB1121:
.LBB1122:
	.loc 1 2027 0
	movl	handler_info@GOTOFF(%ebx), %edi
	testl	%edi, %edi
	je	.L1166
	leal	4+handler_info@GOTOFF(%ebx), %edi
	xorl	%ebp, %ebp
	jmp	.L1159
.LVL1191:
	.p2align 4,,7
	.p2align 3
.L1156:
	.loc 1 2034 0
	movl	$0, 4(%esp)
	movl	8(%esi), %edx
	addl	$4, %ebp
	movl	%edi, 44(%esp)
	movl	%edx, (%esp)
	call	*(%edi)
.LVL1192:
	.loc 1 2027 0
	movl	44(%esp), %eax
	addl	$20, %edi
	movl	16(%eax), %ecx
	testl	%ecx, %ecx
	je	.L1166
.L1159:
	.loc 1 2031 0
	movl	48(%esi), %edx
	addl	%ebp, %edx
	movl	(%edx), %eax
.LVL1193:
	.loc 1 2032 0
	movl	$0, (%edx)
	.loc 1 2033 0
	testl	%eax, %eax
	je	.L1156
	movl	(%eax), %ecx
	leal	-1(%ecx), %edx
	testl	%edx, %edx
	movl	%edx, (%eax)
	jne	.L1156
	movl	4(%eax), %edx
	movl	%eax, (%esp)
	call	*24(%edx)
.LVL1194:
	jmp	.L1156
	.p2align 4,,7
	.p2align 3
.L1166:
.LBE1122:
.LBE1121:
.LBE1120:
.LBE1119:
.LBB1123:
.LBB1124:
	.loc 1 244 0
	leal	error_external_entity_ref_handler@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	8(%esi), %eax
	movl	%eax, (%esp)
	call	XML_SetExternalEntityRefHandler@PLT
.LVL1195:
	jmp	.L1115
.LVL1196:
.L1216:
.LBB1125:
.LBB1126:
	.loc 1 2027 0
	movl	handler_info@GOTOFF(%ebx), %edx
	testl	%edx, %edx
	je	.L1166
	leal	4+handler_info@GOTOFF(%ebx), %edi
.LVL1197:
	xorl	%ebp, %ebp
	jmp	.L1167
.LVL1198:
	.p2align 4,,7
	.p2align 3
.L1164:
	.loc 1 2034 0
	movl	$0, 4(%esp)
	movl	8(%esi), %edx
	addl	$4, %ebp
	movl	%edi, 44(%esp)
	movl	%edx, (%esp)
	call	*(%edi)
.LVL1199:
	.loc 1 2027 0
	movl	44(%esp), %eax
	addl	$20, %edi
	movl	16(%eax), %eax
	testl	%eax, %eax
	je	.L1166
.L1167:
	.loc 1 2031 0
	movl	48(%esi), %edx
	addl	%ebp, %edx
	movl	(%edx), %eax
.LVL1200:
	.loc 1 2032 0
	movl	$0, (%edx)
	.loc 1 2033 0
	testl	%eax, %eax
	je	.L1164
	movl	(%eax), %ecx
	leal	-1(%ecx), %edx
	testl	%edx, %edx
	movl	%edx, (%eax)
	jne	.L1164
	movl	4(%eax), %edx
	movl	%eax, (%esp)
	call	*24(%edx)
.LVL1201:
	jmp	.L1164
.LBE1126:
.LBE1125:
.LBE1124:
.LBE1123:
.LBE1127:
.LBE1129:
	.cfi_endproc
.LFE164:
	.size	my_EntityDeclHandler, .-my_EntityDeclHandler
	.hidden	__stack_chk_fail_local
	.ident	"GCC: (Ubuntu 4.8.4-2ubuntu1~14.04.3) 4.8.4"
	.section	.note.GNU-stack,"",@progbits
