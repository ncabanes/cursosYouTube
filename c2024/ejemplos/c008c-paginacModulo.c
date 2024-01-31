/* Paginación usando el "operador módulo" (resto de la división) */

/* Parte del curso "C para (casi) todos", por Nacho Cabanes
Playlist: 
https://www.youtube.com/playlist?list=PL0bfr51v6JJGo2lStTn89ZMt6JmGQQjWx
*/

#include <stdio.h>

int main()
{
    int i;

    for (i = 1; i <= 20; i++)
    {
        printf("%d ", i);
        if (i % 5 == 0)
        {
            printf("\n");
        }
    }

    return 0;
}
