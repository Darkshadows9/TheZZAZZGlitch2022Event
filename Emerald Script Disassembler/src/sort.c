#include "sort.h"

int qsortSizeCmp(const void *a, const void *b)
{
	const size_t ai = *(const size_t*)a;
	const size_t bi = *(const size_t*)b;
	if(ai > bi)
	{
		return 1;
	}
	else if(ai < bi)
	{
		return -1;
	}
	else
	{
		return 0;
	}
}

void deleteDuplicateValuesUnsigned(struct array_s *u_array)
{
	size_t i;
	size_t j = 0;
	for (i = 0; i < u_array->size - 1; ++i, ++j)
	{
		u_array->array[j] = u_array->array[i];
		if (u_array->array[i] == u_array->array[i + 1])
		{
			--j;
		}
	}
	u_array->array[j] = u_array->array[i];
	++j;
	u_array->size = j;
	return;
}

void shrinkArray(struct array_s *u_array)
{
	size_t *array_temp = realloc(u_array->array, sizeof(u_array->array) * u_array->size);
	if (!array_temp)
	{
		printf("Failed to reallocate memory when shrinking array.\n");
		exit(EXIT_FAILURE);
	}
	u_array->array = array_temp;
	return;
}

void sortUnsigned(struct array_s *u_array)
{
	if (u_array->size > 1)
	{
		qsort(u_array->array, u_array->size, sizeof(u_array->array[0]), qsortSizeCmp);
		deleteDuplicateValuesUnsigned(u_array);
		shrinkArray(u_array);
	}
	return;
}

/* Based off: http://alienryderflex.com/quicksort/ */
/* Pretty sure this implementation is broken somehow.
void quickSortUnsigned(size_t *array, size_t elements)
{
	size_t pivot;
	size_t beg[300];
	size_t end[300];
	size_t i = 0;
	size_t swap;
	beg[0] = 0;
	end[0] = elements;
	while (i <= 299)
	{
		size_t left = beg[i];
		size_t right = end[i] - 1;
		if (left < right && right < elements)
		{
			pivot = array[left];
			while (left < right)
			{
				while (array[right] >= pivot && left < right)
				{
					--right;
				}
				if (left < right)
				{
					array[left] = array[right];
					++left;
				}
				while (left < elements && array[left] <= pivot && left < right)
				{
					++left;
				}
				if (left < right)
				{
					array[right] = array[left];
					--right;
				}
			}
			array[left] = pivot;
			beg[i + 1] = left + 1;
			end[i + 1] = end[i];
			end[i] = left;
			++i;
			if (end[i] - beg[i] > end[i - 1] - beg[i - 1])
			{
				swap = beg[i];
				beg[i] = beg[i - 1];
				beg[i - 1] = swap;
				swap = end[i];
				end[i] = end[i - 1];
				end[i - 1] = swap;
			}
		}
		else
		{
			i--;
		}
	}
}
*/
