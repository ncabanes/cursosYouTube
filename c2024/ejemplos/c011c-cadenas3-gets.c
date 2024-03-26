/* Cadenas de texto (char[]), lectura con "gets" (no seguro) */

/* Parte del curso "C para (casi) todos", por Nacho Cabanes

Playlist: 
https://www.youtube.com/playlist?list=PL0bfr51v6JJGo2lStTn89ZMt6JmGQQjWx

*/

#include <stdio.h>

int main()
{
    char nombre[6];
    printf("Dime tu nombre: ");
    gets(nombre);
    printf("Hola %s\n", nombre);

    return 0;
}
