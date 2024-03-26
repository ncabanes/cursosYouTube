/*
 * Contacto con arrays
 */

/* Parte del curso "C para (casi) todos", por Nacho Cabanes

Playlist: 
https://www.youtube.com/playlist?list=PL0bfr51v6JJGo2lStTn89ZMt6JmGQQjWx
*/

#include <stdio.h>

int main()
{
    int i;
    int datos[10];
    
    for (i = 0; i < 10; i++)
    {
        printf("Dime el dato %d: ", i+1);
        scanf("%d", &datos[i]);
    }
    
    for (i = 9; i >= 0; i--)
    {
        printf("%d ", datos[i]);
    }
    
    return 0;
}

