/* Algunas de las funciones matemáticas existentes en C */

/* Parte del curso "C para (casi) todos", por Nacho Cabanes

Playlist: 
https://www.youtube.com/playlist?list=PL0bfr51v6JJGo2lStTn89ZMt6JmGQQjWx

*/

#include <stdio.h>
#include <math.h>

int main()
{
    double d1 = 8.2;
    double d2 = 7.9;
    double d3 = -7.9;
    
    printf("Cuadrado: %lf\n", pow(d1,2));
    printf("Raíz: %lf\n", sqrt(d2));
    
    printf("Entero: %d\n", (int) d1);
    printf("%d\n", (int) d2);
    printf("%d\n", (int) d3);
    
    printf("round: %lf\n", round(d1));
    printf("%lf\n", round(d2));
    printf("%lf\n", round(d3));    

    printf("ceil: %lf\n", ceil(d1));
    printf("%lf\n", ceil(d2));
    printf("%lf\n", ceil(d3));
    
    printf("floor: %lf\n", floor(d1));
    printf("%lf\n", floor(d2));
    printf("%lf\n", floor(d3));
    
    printf("Exp2: %lf\n", exp(2));
    printf("log10(1000): %lf\n", log10(1000));
    
    double grados = 45;
    double radianes = grados * M_PI / 180;
    printf("Coseno de %lf grados = %lf\n", grados, cos(radianes));
    
    printf("Raíz de 2, partido por 2 = %lf\n", sqrt(2)/2);

    return 0;
}
