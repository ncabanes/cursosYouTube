/* Cadenas de texto (char[]), uso del terminador nulo */

/* Parte del curso "C para (casi) todos", por Nacho Cabanes

Playlist: 
https://www.youtube.com/playlist?list=PL0bfr51v6JJGo2lStTn89ZMt6JmGQQjWx

*/

#include <stdio.h>

int main()
{
    char texto1[5] = "hola";
    printf("El texto 1 es %s\n", texto1);
    
    texto1[3] = '\0';
    printf("El texto 1 ahora es %s\n", texto1);

    return 0;
}
