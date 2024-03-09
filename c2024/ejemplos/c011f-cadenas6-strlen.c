#include <stdio.h>
#include <string.h>

int main()
{
    char nombre[20];
    printf("Dime tu nombre: ");
    fgets(nombre, 20, stdin);
    printf("Hola %s\n", nombre);
    printf("Tu nombre tiene %ld letras", strlen(nombre));

    return 0;
}
