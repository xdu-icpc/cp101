#include <stdio.h>

int f = 0;

int g()
{
	return f++;
}

int main()
{
	printf("%d %d\n", g(), g());
}
