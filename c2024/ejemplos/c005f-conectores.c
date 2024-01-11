/*
Ejemplo de conectores:

Vamos a pedir dos números al usuario. Le responderemos si los dos son 
positivos, si lo es uno de ellos o si no lo es ninguno.
*/

#include <stdio.h>

int main()
{
    int n1, n2;
    
    printf("Dime un número ");
    scanf("%d", &n1);

    printf("Dime otro número ");
    scanf("%d", &n2);

    if ((n1 > 0) && (n2 > 0))
        printf("Los dos son positivos\n");
    else if ((n1 > 0) || (n2 > 0))
        printf("Uno es positivo\n");
    else
        printf("Ninguno es positivo\n");
}
