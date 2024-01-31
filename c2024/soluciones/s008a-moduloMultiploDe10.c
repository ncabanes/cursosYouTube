/* Ejercicio 8.1: Pide un número al usuario y responde si es múltiplo de 10. */

/* Parte del curso "C para (casi) todos", por Nacho Cabanes
Playlist: 
https://www.youtube.com/playlist?list=PL0bfr51v6JJGo2lStTn89ZMt6JmGQQjWx
*/

#include <stdio.h>

int main()
{
    int numero;

    printf("Dime un número: ");
    scanf("%d", &numero);

    if (numero % 10 == 0)
    {
        printf("Es múltiplo de 10\n");
    }
    else
    {
        printf("No es múltiplo de 10\n");
    }

    return 0;
}
