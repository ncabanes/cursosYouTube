/* Creación de funciones "matemáticas": 
   función con variables locales y varios "return" */

/* Parte del curso "C para (casi) todos", por Nacho Cabanes

Playlist: 
https://www.youtube.com/playlist?list=PL0bfr51v6JJGo2lStTn89ZMt6JmGQQjWx

*/

#include <stdio.h>

int raiz(int n)
{
    int i;
    
    for (i = 0; i <= n; i++)
    {
        if (i*i == n)
            return i;
            
        if (i*i > n)
            return i-1;
    }
    return -1;
}

int main()
{
    printf("%d\n", raiz(82));
    printf("%d\n", raiz(100));
    printf("%d\n", raiz(0));
    printf("%d\n", raiz(25));
    printf("%d\n", raiz(24));
    
    return 0;
}
