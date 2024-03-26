/* Los "struct": ejemplo básico */

/* Parte del curso "C para (casi) todos", por Nacho Cabanes

Playlist: 
https://www.youtube.com/playlist?list=PL0bfr51v6JJGo2lStTn89ZMt6JmGQQjWx

*/

#include <stdio.h>

int main()
{
    struct
    {
        char inicial;
        int edad;
        float nota;
    } persona;
    
    persona.inicial = 'H';
    persona.edad = 18;
    persona.nota = 9.9;
    
    printf("Nota: %f\n", persona.nota);

    return 0;
}

