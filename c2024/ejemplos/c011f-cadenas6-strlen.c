/* Cadenas de texto (char[]), tamaño con "strlen" */

/* Parte del curso "C para (casi) todos", por Nacho Cabanes

Playlist: 
https://www.youtube.com/playlist?list=PL0bfr51v6JJGo2lStTn89ZMt6JmGQQjWx

*/

#include <stdio.h>
#include <string.h>

int main()
{
    char nombre[20];
    printf("Dime tu nombre: ");
    fgets(nombre, 20, stdin);
    printf("Hola %s\n", nombre);
    printf("Tu nombre tiene %ld letras", strlen(nombre));
    
    /* Nota: contará uno de más, porque "fgets" conserva el
     * salto de línea (pulsación de "Intro") al introducir el texto 
     * */

    return 0;
}
