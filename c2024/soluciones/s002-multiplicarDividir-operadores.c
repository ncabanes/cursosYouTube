#include <stdio.h>

int main()
{
    int numero1, numero2;
    
    printf("Dime un número ");
    scanf("%d", &numero1);
    printf("Dime otro número ");
    scanf("%d", &numero2);
    printf("Su producto es %d\n", numero1*numero2);
    printf("Su división es %d\n", numero1/numero2);
}
