/* Ejercicio 7.2:
Dibuja un rectángulo hueco de 10 filas y 30 columnas. */

/* Parte del curso "C para (casi) todos", por Nacho Cabanes
Playlist: 
https://www.youtube.com/playlist?list=PL0bfr51v6JJGo2lStTn89ZMt6JmGQQjWx
*/

#include <stdio.h>

int main() 
{
    int fila, columna;

    for (fila = 1; fila <= 10; fila++)
    {
        for (columna = 1; columna <= 30; columna ++)
        {
            if ((fila == 1) || (fila == 10) 
                || (columna == 1) || (columna == 30))
            {
                printf("*");
            }
            else
            {
                printf(" ");
            }
        }
        printf("\n");
    }
    
    return 0;
}
