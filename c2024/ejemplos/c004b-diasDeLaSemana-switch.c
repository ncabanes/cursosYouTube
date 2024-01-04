/* Prueba de la orden "switch" */

#include <stdio.h>
int main()
{
    int numeroDia;
    
    printf("Dime el número del día (1 a 7): ");
    scanf("%d", &numeroDia);
    
    switch(numeroDia)
    {
        case 1: printf("Lunes"); break;
        case 2: printf("Martes"); break;
        case 3: printf("Miércoles"); break;
        case 4: printf("Jueves"); break;
        case 5: printf("Viernes"); break;
        case 6: printf("Sábado"); break;
        case 7: printf("Domingo"); break;
        default: printf("Día incorrecto"); break;
    }
    return 0;
}
