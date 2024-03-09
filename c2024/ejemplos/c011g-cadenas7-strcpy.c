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
