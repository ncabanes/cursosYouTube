/* Creación de funciones "matemáticas": función real "cuadrado" */

/* Parte del curso "C para (casi) todos", por Nacho Cabanes

Playlist: 
https://www.youtube.com/playlist?list=PL0bfr51v6JJGo2lStTn89ZMt6JmGQQjWx

*/

#include <stdio.h>

float cuadrado(float x)
{
	return x * x;
}

int main()
{
	printf("%f", cuadrado(4.5));
}
