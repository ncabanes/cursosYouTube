/* Los "struct": contacto con los arrays de structs (1, con "gets") */

/* Parte del curso "C para (casi) todos", por Nacho Cabanes

Playlist: 
https://www.youtube.com/playlist?list=PL0bfr51v6JJGo2lStTn89ZMt6JmGQQjWx

*/

#include <stdio.h>

int main()
{
    struct tipoPersona
    {
        char nombre[41];
        int anyoNac;
    };
    
    struct tipoPersona datos[3];
    char textoTemporal[10];
    int i;
    
    for (i=0; i < 3; i++)
    {
        printf("Introduce el nombre %d: ", i+1);
        gets(datos[i].nombre);
        printf("Año de nacimiento: ");
        scanf("%d", &datos[i].anyoNac);
        gets(textoTemporal);
    }
    
    for(i=0; i < 3; i++)
    {
        printf("%s %d\n", datos[i].nombre, datos[i].anyoNac);
    }

    return 0;
}
