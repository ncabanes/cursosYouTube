/* Creación de funciones: una función que recibe y devuelve un texto */

/* Parte del curso "C para (casi) todos", por Nacho Cabanes

Playlist: 
https://www.youtube.com/playlist?list=PL0bfr51v6JJGo2lStTn89ZMt6JmGQQjWx

*/

#include <stdio.h>
#include <string.h>

char* mayusculas(char texto[])
{
    int i;
    for (i = 0; i < strlen(texto); i++)
    {
        if ((texto[i] >= 'a') && (texto[i] <= 'z'))
        {
            texto[i] -= 32;
        }
    }
    return texto;
}

int main()
{
    char saludo[] = "Hola, que tal?";
    
    printf("%s\n", mayusculas(saludo));
    
    return 0;
}
