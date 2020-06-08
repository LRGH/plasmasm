/* Compiled with clang-900 (Xcode 9.2), with no optimization */

int test(void *f)
{
	register int opcode;
	for (;;) {
		switch (opcode) {
		case 0:
		case 1:
		case 2:
		case 3:
		case 4:
		case 5:
		case 6:
		case 7:
		case 8:
		case 9:
		case 10:
		case 11:
		case 12:
		case 13:
		case 14:
		case 15:
		case 16:
		case 17:
		case 180:
			break;
		case 130:
			switch (opcode) {
			case 3: break;
			case 2: break;
			case 1: break;
			case 0: break;
			default: break;
			}
			break;
		case 106:
			switch (opcode) {
			case 0: break;
			case 1: break;
			case 2: break;
			case 3: break;
			case 4: break;
			default: break;
			}
			continue;
		default:
			opcode = 1;
			break;
		}
		if (opcode != 1)
			break;
	}
	return 0;
}

void empty() { }
