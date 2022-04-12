#include "input.h"

void loadInput(int argc, char *argv[], struct input_s *input)
{
	FILE *file_pointer;
	printf("Loading input file: %s.\n", argv[argc - INPUT_OFFSET]);
	file_pointer = fopen(argv[argc - INPUT_OFFSET], "rb");
	if (!file_pointer)
	{
		printf("Failed to open file: %s.\n", argv[argc - INPUT_OFFSET]);
		exit(EXIT_FAILURE);
	}
	fseek(file_pointer, 0, SEEK_END);
	input->size = ftell(file_pointer);
	rewind(file_pointer);
	input->buffer = malloc(sizeof(*input->buffer) * input->size);
	if (!input->buffer)
	{
		exit(EXIT_FAILURE);
	}
	fread(input->buffer, input->size, 1, file_pointer);
	fclose(file_pointer);
	return;
}
