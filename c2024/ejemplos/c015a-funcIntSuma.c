/* Creación de funciones "matemáticas": función entera "suma" */

/* Parte del curso "C para (casi) todos", por Nacho Cabanes

Playlist: 
https://www.youtube.com/playlist?list=PL0bfr51v6JJGo2lStTn89ZMt6JmGQQjWx

*/

#include <stdio.h>

int suma(int n1, int n2)
{
	return n1+n2;
}

int main()
{
	printf("%d", suma(3, 5));
}
