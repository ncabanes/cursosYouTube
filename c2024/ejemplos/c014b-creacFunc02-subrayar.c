/* Creación de funciones "void": función "subrayar" */

/* Parte del curso "C para (casi) todos", por Nacho Cabanes

Playlist: 
https://www.youtube.com/playlist?list=PL0bfr51v6JJGo2lStTn89ZMt6JmGQQjWx

*/

#include <stdio.h>

void subrayar()
{
    int i;
    
    for(i = 0; i < 20; i++)
    {
        printf("-");
    }
    printf("\n\n");
}

int main()
{
    printf("Hola, que tal\n");
    subrayar();
    
    printf("Espero que bien\n");
    subrayar();
    
    printf("Me despido por hoy\n");
    subrayar();
}
