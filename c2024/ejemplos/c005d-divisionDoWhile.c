/* 
División de dos enteros, comprobando de forma repetitiva
que el segundo no sea cero (versión con "do-while")
*/

#include <stdio.h>

int main()
{
    int n1, n2;
    
    printf("Dime un número ");
    scanf("%d", &n1);
    do
    {
        printf("Dime otro número ");
        scanf("%d", &n2);
    }
    while (n2 == 0);
    printf("Su división es %d", n1/n2);
}
