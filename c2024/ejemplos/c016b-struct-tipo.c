/* Los "struct": creación de un nuevo tipo de datos */

/* Parte del curso "C para (casi) todos", por Nacho Cabanes

Playlist: 
https://www.youtube.com/playlist?list=PL0bfr51v6JJGo2lStTn89ZMt6JmGQQjWx

*/

#include <stdio.h>

int main()
{
    struct datosPersona
    {
        char inicial;
        int edad;
        float nota;
    };
    
    struct datosPersona ficha;
    
    ficha.inicial = 'H';
    ficha.edad = 18;
    ficha.nota = 9.9;
    
    printf("Nota: %f\n", ficha.nota);

    return 0;
}
