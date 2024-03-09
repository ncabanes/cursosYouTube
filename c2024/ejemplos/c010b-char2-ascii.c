#include <stdio.h>

int main() 
{
	char letra1 = 'a';
	char letra2;
	
	printf("Dime una letra: ");
	scanf("%c", &letra2);
	
	printf("%c%c %d%d", letra1, letra2, letra1, letra2);
	
	return 0;
}
