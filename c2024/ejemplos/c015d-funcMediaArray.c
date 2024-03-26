/* Creación de funciones "matemáticas": un array como parámetro */

/* Parte del curso "C para (casi) todos", por Nacho Cabanes

Playlist: 
https://www.youtube.com/playlist?list=PL0bfr51v6JJGo2lStTn89ZMt6JmGQQjWx

*/

#include <stdio.h>

float media(int datos[], int cantidad)
{
    int i;
    float suma = 0;
    
    for (i = 0; i < cantidad; i++)
    {
        suma += datos[i];
    }
    return suma / cantidad;
}

int main()
{
    int datos[4] = {1, 3, 5, 8};
    
    printf("%f\n", media(datos, 4));
    
    return 0;
}
