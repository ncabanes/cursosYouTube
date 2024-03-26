/* Creación de funciones "void": paso de un parámetro */

/* Parte del curso "C para (casi) todos", por Nacho Cabanes

Playlist: 
https://www.youtube.com/playlist?list=PL0bfr51v6JJGo2lStTn89ZMt6JmGQQjWx

*/

#include <stdio.h>

void subrayar(int guiones)
{
    int i;
    
    for(i = 0; i < guiones; i++)
    {
        printf("-");
    }
    printf("\n\n");
}

int main()
{
    printf("Hola, que tal\n");
    subrayar(13);
    
    printf("Espero que bien\n");
    subrayar(15);
    
    printf("Me despido por hoy\n");
    subrayar(18);
}
