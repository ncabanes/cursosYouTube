/* División de dos enteros, sin comprobaciones */

#include <stdio.h>

int main()
{
    int n1, n2;
    
    printf("Dime un número ");
    scanf("%d", &n1);
    printf("Dime otro número ");
    scanf("%d", &n2);
    printf("Su división es %d", n1/n2);
}
