/* Ejemplo de operador módulo: ver si un número es par */

/* Parte del curso "C para (casi) todos", por Nacho Cabanes
Playlist: 
https://www.youtube.com/playlist?list=PL0bfr51v6JJGo2lStTn89ZMt6JmGQQjWx
*/

#include <stdio.h>

int main()
{
    int n = 10;

    if (n % 2 == 0)
    {
        printf("Es par");
    }
    else
    {
        printf("Es impar");
    }

    return 0;
}
