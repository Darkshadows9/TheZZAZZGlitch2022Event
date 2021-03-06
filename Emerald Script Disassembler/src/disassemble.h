#ifndef DISASSEMBLE_INC
#define DISASSEMBLE_INC

#include <stdio.h>

#include "bool.h"
#include "input.h"
#include "sort.h"
#include "options.h"

#define DISASSEMBLE_OFFSET	0x00000000

void simpleDisassemble(FILE *file_pointer, struct input_s *input, struct options_s *options);

#endif /*DISASSEMBLE_INC*/
