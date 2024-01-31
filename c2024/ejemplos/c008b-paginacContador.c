/* Aproximación a la paginación: segundo contador */

/* Parte del curso "C para (casi) todos", por Nacho Cabanes
Playlist: 
https://www.youtube.com/playlist?list=PL0bfr51v6JJGo2lStTn89ZMt6JmGQQjWx
*/

#include <stdio.h>

int main()
{
    int i, contadorHastaSalto;

    contadorHastaSalto = 0;
    for (i = 1; i <= 20; i++)
    {
        printf("%d ", i);
        contadorHastaSalto++;
        if (contadorHastaSalto == 5)
        {
            printf("\n");
            contadorHastaSalto = 0;
        }
    }

    return 0;
}
