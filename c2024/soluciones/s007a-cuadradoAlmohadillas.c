/* Ejercicio 7.1:
Dibuja un cuadrado de "almohadillas" (#), 
del tamaño que indique el usuario.
*/

/* Parte del curso "C para (casi) todos", por Nacho Cabanes
Playlist: 
https://www.youtube.com/playlist?list=PL0bfr51v6JJGo2lStTn89ZMt6JmGQQjWx
*/

#include <stdio.h>

int main() 
{
    int fila, columna, tamano;

    printf("Dime el tamaño del cuadrado ");
    scanf("%d", &tamano);
    
    for (fila = 1; fila <= tamano; fila++)
    {
        for (columna = 1; columna <= tamano; columna ++)
        {
            printf("#");
        }
        printf("\n");
    }
    
    return 0;
}
