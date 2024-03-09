#include <stdio.h>

int main()
{
    char nombre[6];
    printf("Dime tu nombre: ");
    gets(nombre);
    printf("Hola %s\n", nombre);

    return 0;
}
