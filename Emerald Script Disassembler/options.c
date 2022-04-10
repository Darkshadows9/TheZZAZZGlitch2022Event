#include "options.h"

void parseTerminalOptions(int argc, char *argv[], struct options_s *options)
{
	int i;
	for (i = 1; i < argc && argv[i][0] == '-'; ++i)
	{
		switch (argv[i][1])
		{
		case 'h':
			options->help = TRUE;
			break;
		}
	}
	return;
}

void printHelp(int argc, char *argv[])
{
	int i;
	printf("Your command:\n");
	for (i = 0; i < argc; ++i)
	{
		printf("%s ", argv[i]);
	}
	printf("\n\n");
	printf("Use the following format:\n");
	printf("[filename] [flags] [input] [output]\n\n");
	printf("Flags:\n");
	printf("[-h]elp: Display this help message.\n");
	printf("\n");
	printf("Examples:\n");
	printf("%s \"RawScript.txt\" \"TranslatedScript.txt\"\n", argv[0]);
	return;
}
