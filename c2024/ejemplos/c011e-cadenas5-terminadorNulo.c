#include <stdio.h>

int main()
{
    char texto1[5] = "hola";
    printf("El texto 1 es %s\n", texto1);
    
    texto1[3] = '\0';
    printf("El texto 1 ahora es %s\n", texto1);

    return 0;
}
