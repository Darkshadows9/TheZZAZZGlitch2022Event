#include <stdio.h>
#include <stdlib.h>
#include <stdbool.h>

#define valid_chars_count 74
const unsigned char valid_chars[valid_chars_count] = {0x00, 0xA1, 0xA2, 0xA3, 0xA4, 0xA5, 0xA6, 0xA7, 0xA8, 0xA9, 0xAA, 0xAB, 0xAC, 0xAD, 0xAE, 0xB1, 0xB2, 0xB3, 0xB4, 0xB5, 0xB6, 0xB8, 0xBA, 0xBB, 0xBC, 0xBD, 0xBE, 0xC0, 0xC1, 0xC2, 0xC3, 0xC4, 0xC5, 0xC6, 0xC7, 0xC8, 0xC9, 0xCA, 0xCB, 0xCC, 0xCD, 0xCE, 0xCF, 0xD0, 0xD1, 0xD2, 0xD3, 0xD4, 0xD5, 0xD6, 0xD7, 0xD8, 0xD9, 0xDA, 0xDB, 0xDC, 0xDD, 0xDE, 0xDF, 0xE0, 0xE1, 0xE2, 0xE3, 0xE4, 0xE5, 0xE6, 0xE7, 0xE8, 0xE9, 0xEA, 0xEB, 0xEC, 0xED, 0xEE};
unsigned char input_buffer[10] = {0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00};
unsigned short var_8001 = 0x00;
unsigned short var_8002 = 0x00;
unsigned short var_8003 = 0x00;

struct data
{
	unsigned char buffer_index;
	unsigned short addvar_initial;
	unsigned short iterations;
};

void setup_data(struct data *memory_values, unsigned char buffer_index, unsigned short addvar_initial, unsigned short iterations)
{
	memory_values->buffer_index = buffer_index;
	memory_values->addvar_initial = addvar_initial;
	memory_values->iterations = iterations;
	return;
}

void doThing(struct data *memory_values)
{
	var_8001 += memory_values->addvar_initial;
	var_8001 += valid_chars[input_buffer[memory_values->buffer_index]];
	var_8002 = memory_values->iterations;
	var_8001 *= var_8002;
	return;
}

int main()
{
	struct data memory_values[20] = {0};
	setup_data(&memory_values[0], 0, 0x1B39, 0x0049);
	setup_data(&memory_values[1], 1, 0x18DF, 0x0061);
	setup_data(&memory_values[2], 2, 0x13EB, 0x000D);
	setup_data(&memory_values[3], 3, 0x11EF, 0x0029);
	setup_data(&memory_values[4], 4, 0x1145, 0x0043);
	setup_data(&memory_values[5], 5, 0x12DF, 0x0065);
	setup_data(&memory_values[6], 6, 0x0DFD, 0x0059);
	setup_data(&memory_values[7], 7, 0x13AF, 0x008B);
	setup_data(&memory_values[8], 8, 0x149F, 0x0047);
	setup_data(&memory_values[9], 9, 0x0FEF, 0x0053);
	setup_data(&memory_values[10], 0, 0x0539, 0x003B);
	setup_data(&memory_values[11], 1, 0x0E75, 0x00B5);
	setup_data(&memory_values[12], 2, 0x11FB, 0x007F);
	setup_data(&memory_values[13], 3, 0x1237, 0x00A3);
	setup_data(&memory_values[14], 4, 0x125F, 0x0067);
	setup_data(&memory_values[15], 5, 0x107B, 0x00A3);
	setup_data(&memory_values[16], 6, 0x1951, 0x0095);
	setup_data(&memory_values[17], 7, 0x1B47, 0x00C1);
	setup_data(&memory_values[18], 8, 0x151F, 0x00D3);
	setup_data(&memory_values[19], 9, 0x14B1, 0x0097);
	
	do
	{
		bool print_status = false;
		//Increment buffer
		input_buffer[0]++;
		for(int index = 0; index < 10; index++)
		{
			if(input_buffer[index] == valid_chars_count)
			{
				if(index == 9)
				{
					printf("Finished searching.\n");
					return 0;
				}
				input_buffer[index + 1]++;
				input_buffer[index] = 0;
				if(index == 4)
				{
					print_status = true;
				}
			}
			else break;
		}
		
		//Print status
		if(print_status)
		{
			printf("Still working at: 0x");
			for (int i = 0; i < 10; i++)
			{
				printf("%02X", valid_chars[input_buffer[i]]);
			}
			printf("\n");
			print_status = false;
		}

		//Process input buffer
		var_8001 = 0x0000;
		for (int struct_index = 0; struct_index < 20; struct_index++)
		{
			doThing(&memory_values[struct_index]);
			if(struct_index == 9)
			{
				var_8001 += 0x0FB5;
				var_8003 = var_8001;
				if(var_8003 != 0xB0EF) break;
				var_8001 = 0x0000;
			}
		}

		//See if we have a match
		var_8001 += 0x13EB;
		if(var_8003 == 0xB0EF && var_8001 == 0xD4B9)
		{
			printf("Found match: ");
			for (int index = 0; index < 10; index++)
			{
				printf("%02X, ", valid_chars[input_buffer[index]]);
			}
			printf("\n");
		}
	}while(true);
	return 0;
}
