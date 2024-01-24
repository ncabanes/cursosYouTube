/* Bucles anidados 1:
varias tablas de multiplicar */

#include <stdio.h>

int main() 
{
    int tabla, i;
    
    for (tabla = 3; tabla <= 5; tabla++)
    {
        for (i = 0; i <= 10; i++)
        {
            printf("%d x %d = %d\n", tabla, i, tabla*i);
        }
        printf("\n");
    }

    return 0;
}
