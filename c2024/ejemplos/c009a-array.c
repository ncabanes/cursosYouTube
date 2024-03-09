/*
 * Contacto con arrays
 */


#include <stdio.h>

int main()
{
	int i;
	int datos[10];
	
	for (i = 0; i < 10; i++)
	{
		printf("Dime el dato %d: ", i+1);
		scanf("%d", &datos[i]);
	}
	
	for (i = 9; i >= 0; i--)
	{
		printf("%d ", datos[i]);
	}
	
	return 0;
}

