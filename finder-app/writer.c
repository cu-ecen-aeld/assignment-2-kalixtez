#include <stdio.h>
#include <syslog.h>

int main(int argc, char** argv)
{
	if(argc == 3)
	{
		FILE* file;

		file = fopen(argv[1], "w+");
		fputs(argv[2], file);

		fclose(file);
	}
	
	else
	{
		openlog(NULL, 0, LOG_USER);
		syslog(LOG_ERR, "Invalid number of arguments, %d provided, 3 expected", argc);
		return 1;
	}
		
	return 0;
}