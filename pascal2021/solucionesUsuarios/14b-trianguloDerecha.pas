(* 
Ejercicio propuesto 14 (variante):
 
Dibuja un triángulo descendente, del tamaño indicado por el usuario, 
* alineado a la derecha, así:

****
 ***
  **
   *

Parte del curso de Pascal por Nacho Cabanes:
https://www.youtube.com/playlist?list=PL0bfr51v6JJGVLw3jppSPuEm1Dy2Irj5r
*)

program Triangulitos;

var
  ancho : integer;
  fila, columna, espacios, asteriscos : integer;
begin

  writeln('Ancho del triangulo?');
  readln(ancho);
  writeln;

  asteriscos := ancho;

  for fila := 1 to ancho do
  begin
       for columna := 1 to espacios do
       begin
           write('  ');
       end;
       for columna := 1 to asteriscos do
       begin
           write('*');
           write(' ');
       end;

       dec(asteriscos);
       inc(espacios);
       writeln;
  end;
end.
