#include "disassemble.h"

size_t decodeOp(FILE *file_pointer, struct input_s *input, struct options_s *options)
{
	unsigned char op;
	unsigned char a;
	unsigned char b;
	unsigned char c;
	unsigned char d;
	unsigned char e;
	unsigned char f;
	unsigned char g;
	unsigned char h;
	size_t extra_increment = 0;

	op = input->buffer[input->index];
	a = input->buffer[input->index + 1];
	b = input->buffer[input->index + 2];
	c = input->buffer[input->index + 3];
	d = input->buffer[input->index + 4];
	e = input->buffer[input->index + 5];
	f = input->buffer[input->index + 6];
	g = input->buffer[input->index + 7];
	h = input->buffer[input->index + 8];
	
	fprintf(file_pointer, "0x%08X:	", DISASSEMBLE_OFFSET + input->index);
	
	/*Switch statement for all Emerald Script opcodes.*/
	switch (op)
	{
	case 0x00:
		fprintf(file_pointer, "nop");
		break;
	case 0x01:
		fprintf(file_pointer, "nop1");
		break;
	case 0x02:
		fprintf(file_pointer, "end");
		break;
	case 0x03:
		fprintf(file_pointer, "return");
		break;
	case 0x04:
		fprintf(file_pointer, "call					destination:0x%02X%02X%02X%02X", d, c, b, a);
		extra_increment = 4;
		break;
	case 0x05:
		fprintf(file_pointer, "goto					destination:0x%02X%02X%02X%02X", d, c, b, a);
		extra_increment = 4;
		break;
	case 0x06:
		fprintf(file_pointer, "goto_if					condition:0x%02X, destination:0x%02X%02X%02X%02X", a, e, d, c, b);
		extra_increment = 5;
		break;
	case 0x07:
		fprintf(file_pointer, "call_if					condition:0x%02X, destination:0x%02X%02X%02X%02X", a, e, d, c, b);
		extra_increment = 5;
		break;
	case 0x08:
		fprintf(file_pointer, "gotostd					function:0x%02X", a);
		extra_increment = 1;
		break;
	case 0x09:
		fprintf(file_pointer, "callstd					function:0x%02X", a);
		extra_increment = 1;
		break;
	case 0x0A:
		fprintf(file_pointer, "gotostd_if				condition:0x%02X, function:0x%02X", a, b);
		extra_increment = 2;
		break;
	case 0x0B:
		fprintf(file_pointer, "callstd_if				condition:0x%02X, function:0x%02X", a, b);
		extra_increment = 2;
		break;
	case 0x0C:
		fprintf(file_pointer, "returnram");
		break;
	case 0x0D:
		fprintf(file_pointer, "endram");
		break;
	case 0x0E:
		fprintf(file_pointer, "setmysteryeventstatus	value:0x%02X", a);
		extra_increment = 1;
		break;
	case 0x0F:
		fprintf(file_pointer, "loadword				destIndex:0x%02X, value:0x%02X%02X%02X%02X", a, e, d, c, b);
		extra_increment = 5;
		break;
	case 0x10:
		fprintf(file_pointer, "loadbyte				destIndex:0x%02X, value:0x%02X", a, b);
		extra_increment = 2;
		break;
	case 0x11:
		fprintf(file_pointer, "setptr					value:0x%02X, ptr:0x%02X%02X%02X%02X", a, e, d, c, b);
		extra_increment = 5;
		break;
	case 0x12:
		fprintf(file_pointer, "loadbytefromptr			destIndex:0x%02X, source:0x%02X%02X%02X%02X", a, e, d, c, b);
		extra_increment = 5;
		break;
	case 0x13:
		fprintf(file_pointer, "setptrbyte				srcIndex:0x%02X, destination:0x%02X%02X%02X%02X", a, e, d, c, b);
		extra_increment = 5;
		break;
	case 0x14:
		fprintf(file_pointer, "copylocal				destIndex:0x%02X, srcIndex:0x%02X", a, b);
		extra_increment = 2;
		break;
	case 0x15:
		fprintf(file_pointer, "copybyte				destination:0x%02X%02X%02X%02X, source:0x%02X%02X%02X%02X", d, c, b, a, h, g, f, e);
		extra_increment = 8;
		break;
	case 0x16:
		fprintf(file_pointer, "setvar					destination:0x%02X%02X, value:0x%02X%02X", b, a, d, c);
		extra_increment = 4;
		break;
	case 0x17:
		fprintf(file_pointer, "addvar					destination:0x%02X%02X, value:0x%02X%02X", b, a, d, c);
		extra_increment = 4;
		break;
	case 0x18:
		fprintf(file_pointer, "subvar					destination:0x%02X%02X, value:0x%02X%02X", b, a, d, c);
		extra_increment = 4;
		break;
	case 0x19:
		fprintf(file_pointer, "copyvar					destination:0x%02X%02X, source:0x%02X%02X", b, a, d, c);
		extra_increment = 4;
		break;
	case 0x1A:
		fprintf(file_pointer, "setorcopyvar				destination:0x%02X%02X, source:0x%02X%02X", b, a, d, c);
		extra_increment = 4;
		break;
	case 0x1B:
		fprintf(file_pointer, "compare_local_to_local	local1:0x%02X, local2:0x%02X", a, b);
		extra_increment = 2;
		break;
	case 0x1C:
		fprintf(file_pointer, "compare_local_to_value	local:0x%02X, value:0x%02X", a, b);
		extra_increment = 2;
		break;
	case 0x1D:
		fprintf(file_pointer, "compare_local_to_ptr		local:0x%02X, ptr:0x%02X%02X%02X%02X", a, e, d, c, b);
		extra_increment = 5;
		break;
	case 0x1E:
		fprintf(file_pointer, "compare_ptr_to_local		ptr:0x%02X%02X%02X%02X, local:0x%02X", d, c, b, a, e);
		extra_increment = 5;
		break;
	case 0x1F:
		fprintf(file_pointer, "compare_ptr_to_value	ptr:0x%02X%02X%02X%02X, value:0x%02X", d, c, b, a, e);
		extra_increment = 5;
		break;
	case 0x20:
		fprintf(file_pointer, "compare_ptr_to_ptr		ptr1:0x%02X%02X%02X%02X, ptr2:0x%02X%02X%02X%02X", d, c, b, a, h, g, f, e);
		extra_increment = 8;
		break;
	case 0x21:
		fprintf(file_pointer, "compare_var_to_value	var:0x%02X%02X, value:0x%02X%02X", b, a, d, c);
		extra_increment = 4;
		break;
	case 0x22:
		fprintf(file_pointer, "compare_var_to_var		var1:0x%02X%02X, var2:0x%02X%02X", b, a, d, c);
		extra_increment = 4;
		break;
	case 0x23:
		fprintf(file_pointer, "callnative				func:0x%02X%02X%02X%02X", d, c, b, a);
		extra_increment = 4;
		break;
	case 0x25:
		fprintf(file_pointer, "special					function:0x%02X%02X", b, a);
		extra_increment = 2;
		break;
	case 0x26:
		fprintf(file_pointer, "specialvar				output:0x%02X%02X, function:0x%02X%02X", b, a, d, c);
		extra_increment = 4;
		break;
	case 0x27:
		fprintf(file_pointer, "waitstate");
		break;
	case 0x28:
		fprintf(file_pointer, "delay					frames:0x%02X%02X", b, a);
		extra_increment = 2;
		break;
	case 0x2F:
		fprintf(file_pointer, "playse					song:0x%02X%02X", b, a);
		extra_increment = 2;
		break;
	case 0x30:
		fprintf(file_pointer, "waitse");
		break;
	case 0x31:
		fprintf(file_pointer, "playfanfare				song:0x%02X%02X", b, a);
		extra_increment = 2;
		break;
	case 0x32:
		fprintf(file_pointer, "waitfanfare");
		break;
	case 0x4F:
		fprintf(file_pointer, "applymovement				localId:0x%02X%02X, movements:0x%02X%02X%02X%02X", b, a, f, e, d, c);
		extra_increment = 6;
		break;
	case 0x50:
		fprintf(file_pointer, "applymovement				localId:0x%02X%02X, movements:0x%02X%02X%02X%02X, map", b, a, f, e, d, c);
		extra_increment = 6;
		break;
	case 0x51:
		fprintf(file_pointer, "waitmovement				localId:0x%02X%02X", b, a);
		extra_increment = 2;
		break;
	case 0x52:
		fprintf(file_pointer, "waitmovement				localId:0x%02X%02X, map", b, a);
		extra_increment = 2;
		break;
	case 0x5A:
		fprintf(file_pointer, "faceplayer");
		break;
	case 0x5D:
		fprintf(file_pointer, "dotrainerbattle");
		break;
	case 0x5E:
		fprintf(file_pointer, "gotopostbattlescript");
		break;
	case 0x66:
		fprintf(file_pointer, "waitmessage");
		break;
	case 0x67:
		fprintf(file_pointer, "message					text:0x%02X%02X%02X%02X", d, c, b, a);
		extra_increment = 4;
		break;
	case 0x68:
		fprintf(file_pointer, "closemessage");
		break;
	case 0x69:
		fprintf(file_pointer, "lockall");
		break;
	case 0x6A:
		fprintf(file_pointer, "lock");
		break;
	case 0x6B:
		fprintf(file_pointer, "releaseall");
		break;
	case 0x6C:
		fprintf(file_pointer, "release");
		break;
	case 0x6D:
		fprintf(file_pointer, "waitbuttonpress");
		break;
	case 0x6E:
		fprintf(file_pointer, "yesnobox				x:0x%02X, y:0x%02X", a, b);
		extra_increment = 2;
		break;
	case 0x80:
		fprintf(file_pointer, "bufferitemname				stringVarId:0x%02X, item:0x%02X%02X", a, c, b);
		extra_increment = 3;
		break;
	case 0x85:
		fprintf(file_pointer, "bufferstring			stringvar:0x%02X, value:0x%02X%02X%02X%02X", a, e, d, c, b);
		extra_increment = 5;
		break;
	case 0xD8:
		fprintf(file_pointer, "selectapproachingtrainer");
		break;
	case 0xD9:
		fprintf(file_pointer, "lockfortrainer");
		break;
	case 0xDF:
		fprintf(file_pointer, "pokenavcall			text:0x%02X%02X%02X%02X", d, c, b, a);
		extra_increment = 4;
		break;
	default:
		fprintf(file_pointer, "%02X", op);
	}
	fprintf(file_pointer, "\n");
	return extra_increment;
}

void simpleDisassemble(FILE *file_pointer, struct input_s *input, struct options_s *options)
{
	printf("Starting dump...\n");
	fprintf(file_pointer, "SECTION \"Start\"\n");
	for (input->index = 0x0; input->index < input->size; ++input->index)
	{
		input->index += decodeOp(file_pointer, input, options);
	}
	return;
}
