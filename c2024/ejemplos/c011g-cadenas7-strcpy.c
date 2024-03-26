/* Cadenas de texto (char[]), asignación de valor con "strcpy" */

/* Parte del curso "C para (casi) todos", por Nacho Cabanes

Playlist: 
https://www.youtube.com/playlist?list=PL0bfr51v6JJGo2lStTn89ZMt6JmGQQjWx

*/

#include <stdio.h>
#include <string.h>

int main()
{
    char nombre[20];
    char saludo[20];
    
    printf("Dime tu nombre: ");
    fgets(nombre, 20, stdin);
    strcpy(saludo, "Hola");
    printf("%s %s\n", saludo, nombre);
    printf("Tu nombre tiene %ld letras", strlen(nombre));

    return 0;
}
