/* Acercamiento a los bucles anidados:
una tabla de multiplicar */

#include <stdio.h>

int main() 
{
    int tabla = 5;
    
    int i;
    for (i = 0; i <= 10; i++)
    {
        printf("%d x %d = %d\n", tabla, i, tabla*i);
    }

    return 0;
}
