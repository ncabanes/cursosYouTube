/* Contacto con el tipo de datos "char", ejemplo básico */

/* Parte del curso "C para (casi) todos", por Nacho Cabanes

Playlist: 
https://www.youtube.com/playlist?list=PL0bfr51v6JJGo2lStTn89ZMt6JmGQQjWx

*/

#include <stdio.h>

int main() 
{
    char letra1 = 'a';
    char letra2;
    
    printf("Dime una letra: ");
    scanf("%c", &letra2);
    
    printf("%c%c", letra1, letra2);
    
    return 0;
}
