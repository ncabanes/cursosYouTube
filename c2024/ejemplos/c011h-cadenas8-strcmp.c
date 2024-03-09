#include <stdio.h>
#include <string.h>

int main()
{
    char nombre[7];
    char saludo[20];
    
    printf("Dime tu nombre: ");
    fgets(nombre, 7, stdin);
    strcpy(saludo, "Hola");
    
    if (strcmp(nombre, "Hector") == 0)
    {
        printf("%s %s\n", saludo, nombre);
    }
    else
    {
        printf("Hola, desconocido");
    }
    
    return 0;
}
