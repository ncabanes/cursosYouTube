#include <stdio.h>

int main()
{
    int a, b;
    
    printf("Dime el primer número ");
    scanf("%d", &a);
    printf("Dime el segundo número");
    scanf("%d", &b);
    
    if ( a > b )
    {
        printf("%d es el mayor", a);
    }
    else
    {
        printf("%d es el mayor", b);
    }
    
    return 0;
}
