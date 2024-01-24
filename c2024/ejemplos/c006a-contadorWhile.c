#include <stdio.h>

/* Contador con "while", primera aproximación */

int main() 
{
    int i;
    
    i = 1;
    while (i <= 10)
    {
        printf("*");
        i = i + 1;
    }
    return 0;
}
