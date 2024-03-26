/* Contacto con el tipo de datos "char": recorrer con "for" */

/* Parte del curso "C para (casi) todos", por Nacho Cabanes

Playlist: 
https://www.youtube.com/playlist?list=PL0bfr51v6JJGo2lStTn89ZMt6JmGQQjWx

*/

#include <stdio.h>

int main() 
{
    char l;
    
    for (l = 'a'; l <= 'z'; l++)
    {
        printf("%c", l);
    }
    
    return 0;
}
