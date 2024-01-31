/* Ejercicio 8.2: Muestra los números del 1 al 100. En principio, 
todos aparecerán en la misma línea, pero, tras cada 10 datos, 
se saltará de línea. */

/* Parte del curso "C para (casi) todos", por Nacho Cabanes
Playlist: 
https://www.youtube.com/playlist?list=PL0bfr51v6JJGo2lStTn89ZMt6JmGQQjWx
*/

#include <stdio.h>

int main()
{
    int i;

    for(i = 1; i <= 100; i++)
    {
        printf("%d ", i);
        if (i % 10 == 0)
        {
            printf("\n");
        }
    }

    return 0;
}
