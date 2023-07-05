(* 
Ejercicio propuesto 14:
 
Dibuja un triángulo descendente, del tamaño indicado por el usuario, así:

****
***
**
*

Parte del curso de Pascal por Nacho Cabanes:
https://www.youtube.com/playlist?list=PL0bfr51v6JJGVLw3jppSPuEm1Dy2Irj5r
*)

program triangulo;
var
  fila, columna:integer;
  filas, columnas:integer;

begin
  write('Tamano del triangulo? ');
  readln(filas);
  columnas := filas;

  for fila:= 1 to filas do
  begin
    for columna:= 1 to columnas do
        write('*');
    writeln;
    dec(columnas);
  end;
end.
