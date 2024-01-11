/*
Solución al ejercicio propuesto 5a:

Pide al usuario su contraseña. No le dejes continuar hasta que no 
introduzca 1234.

(Versión 2, con "do-while")
*/

#include <stdio.h>

int main()
{
    int password;
    
    do
    {
        printf("Introduce tu password: ");
        scanf("%d", &password);
        if (password != 1234)
            printf("Incorrecta. ");
    }
    while (password != 1234);
    printf("Acceso permitido");
}
