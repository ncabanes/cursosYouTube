#include <stdio.h>
int main()
{
    int numeroDia;
    
    printf("Dime el número del día (1 a 7): ");
    scanf("%d", &numeroDia);
    
    if (numeroDia == 1)
    {
        printf("Lunes");
    }
    else
    {
        if (numeroDia == 2)
        {
            printf("Martes");
        }
        else
        {
            if (numeroDia == 3)
            {
                printf("Miércoles");
            }
            else
            {
                if (numeroDia == 4)
                {
                    printf("Jueves");
                }
                else
                {
                    if (numeroDia == 5)
                    {
                        printf("Viernes");
                    }
                    else
                    {
                        if (numeroDia == 6)
                        {
                            printf("Sábado");
                        }
                        else
                        {
                            if (numeroDia == 7)
                            {
                                printf("Domingo");
                            }
                            else
                            {
                                printf("Día incorrecto");
                            }   
                        }   
                    }   
                }   
            }   
        }
    }
    
    return 0;
    
}
