#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <limits.h>

#include "bool.h"
#include "input.h"
#include "options.h"
#include "disassemble.h"

int main(int argc, char *argv[])
{
	struct input_s input;
	struct options_s options = {FALSE};
	FILE *output_file_pointer;

	/*Get command line options.*/
	parseTerminalOptions(argc, argv, &options);

	/*Check if we're flagged to display help, if there aren't enough arguments, or if the last two arguments are options.*/
	if(options.help || argc < 3 || argv[argc - INPUT_OFFSET][0] == '-' || argv[argc - OUTPUT_OFFSET][0] == '-')
	{
		printHelp(argc, argv);
		return EXIT_FAILURE;
	}

	/*Read binary input file into memory.*/
	loadInput(argc, argv, &input);

	output_file_pointer = fopen(argv[argc - OUTPUT_OFFSET], "wb");
	/*Open script output file.*/
	if(!output_file_pointer)
	{
		printf("Failed to open file: %s.\n", argv[argc - OUTPUT_OFFSET]);
		exit(EXIT_FAILURE);
	}

	/*Do the thing*/
	simpleDisassemble(output_file_pointer, &input, &options);

	/*Cleanup and exit.*/
	fprintf(output_file_pointer, "; End of output.\n");
	fclose(output_file_pointer);
	free(input.buffer);
	printf("Done.\n");
	return EXIT_SUCCESS;
}
