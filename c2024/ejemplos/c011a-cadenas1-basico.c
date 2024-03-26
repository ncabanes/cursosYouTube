/* Cadenas de texto (char[]), ejemplo básico */

/* Parte del curso "C para (casi) todos", por Nacho Cabanes

Playlist: 
https://www.youtube.com/playlist?list=PL0bfr51v6JJGo2lStTn89ZMt6JmGQQjWx

*/

#include <stdio.h>

int main()
{
    char nombre[6] = "Nacho";
    printf("Hola %s\n", nombre);
    puts(nombre);

    return 0;
}
