/* Contacto con los números reales ("float") */

/* Parte del curso "C para (casi) todos", por Nacho Cabanes

Playlist: 
https://www.youtube.com/playlist?list=PL0bfr51v6JJGo2lStTn89ZMt6JmGQQjWx

*/

#include <stdio.h>

int main()
{
    float n1 = 0.3;
    float n2 = 0.2;
    float n3 = n1 - n2;
    printf("n3 = %f\n", n3);
    if (n3 == 0.1)
        printf("n3 vale 0.1");
    else
        printf("n3 NO vale 0.1");

    return 0;
}
