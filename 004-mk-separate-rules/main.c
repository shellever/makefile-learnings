#include<stdio.h>

#include "add.h"
#include "sub.h"


int main(int argc, char *argv[])
{
	int a = 10, b = 12;
	float x = 1.23f, y = 9.87f;

	printf("int   a+b is: %d\n", add_int(a, b));
	printf("int   a-b is: %d\n", sub_int(a, b));
	printf("float x+y is: %f\n", add_float(x, y));
	printf("float x-y is: %f\n", sub_float(x, y));

	return 0;
}
