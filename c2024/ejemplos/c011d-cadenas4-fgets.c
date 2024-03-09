#include <stdio.h>

int main()
{
    char nombre[6];
    printf("Dime tu nombre: ");
    fgets(nombre, 6, stdin);
    printf("Hola %s\n", nombre);

    return 0;
}
