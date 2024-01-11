/*
Solución al ejercicio propuesto 5a:

Pide al usuario su contraseña. No le dejes continuar hasta que no 
introduzca 1234.

(Versión 1, con "while")
*/

#include <stdio.h>

int main()
{
    int password;
    
    printf("Introduce tu password: ");
    scanf("%d", &password);
    while (password != 1234)
    {
      printf("Incorrecta. Introduce tu password: ");
      scanf("%d", &password);
    }
    printf("Acceso permitido");
}
