/* Cadenas de texto (char[]), comparación con "strcmp" */

/* Parte del curso "C para (casi) todos", por Nacho Cabanes

Playlist: 
https://www.youtube.com/playlist?list=PL0bfr51v6JJGo2lStTn89ZMt6JmGQQjWx

*/

#include <stdio.h>
#include <string.h>

int main()
{
    char nombre[7];
    char saludo[20];
    
    printf("Dime tu nombre: ");
    fgets(nombre, 7, stdin);
    strcpy(saludo, "Hola");
    
    /* Nota: la comparación fallará, porque "fgets" conserva el
     * salto de línea (pulsación de "Intro") al introducir el texto 
     * */
    
    if (strcmp(nombre, "Hector") == 0)
    {
        printf("%s %s\n", saludo, nombre);
    }
    else
    {
        printf("Hola, desconocido");
    }
    
    return 0;
}
