#ifndef SORT_INC
#define SORT_INC

#include <stdio.h>
#include <stdlib.h>

struct array_s
{
	size_t *array;
	size_t index;
	size_t size;
};

void sortUnsigned(struct array_s *u_array);

#endif /*SORT_INC*/
