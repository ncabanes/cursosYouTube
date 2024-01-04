#include <stdio.h>

int main()
{
    int n;
    
    printf("Dime un número ");
    scanf("%d", &n);
    
    if ( n > 0 )
    {
        printf("Es positivo");
    }
    else
    {
        if ( n < 0 )
        {
            printf("Es negativo");
        }
        else
        {
            printf("Es cero");
        }
        
    }
    
    return 0;
}
