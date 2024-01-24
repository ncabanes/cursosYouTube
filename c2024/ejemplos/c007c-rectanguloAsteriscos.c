/* Bucles anidados 2:
rectángulo de asteriscos */

#include <stdio.h>

int main() 
{
    int fila, columna;
    
    for (fila = 1; fila <= 8; fila++)
    {
        for (columna = 1; columna <= 20; columna ++)
        {
            printf("*");
        }
        printf("\n");
    }
    
    return 0;
}
