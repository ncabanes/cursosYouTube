/*
Solución al ejercicio propuesto 5b:

Pide al usuario su login y su contraseña. No debe acceder hasta que 
introduzca bien ambos datos (el login debe ser 9999 y la contraseña 
debe ser 1234).

(Versión 2, con "do-while")
*/

#include <stdio.h>

int main()
{
    int login, password;
    
    do
    {
        printf("Introduce tu login: ");
        scanf("%d", &login);
        printf("Introduce tu password: ");
        scanf("%d", &password);
        if ((login != 9999) || (password != 1234))
            printf("Acceso denegado\n");
    }
    while ((login != 9999) || (password != 1234));
    printf("Acceso permitido");
}
