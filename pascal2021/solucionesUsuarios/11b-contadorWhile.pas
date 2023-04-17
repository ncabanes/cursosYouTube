(* 
Ejercicio propuesto 11b:
 
Escribe los números pares del 2 al 10, creando un contador (con "while")

Parte del curso de Pascal por Nacho Cabanes:
https://www.youtube.com/playlist?list=PL0bfr51v6JJGVLw3jppSPuEm1Dy2Irj5r
*)

program ejFinalContadorWhile;
var
  i:integer;
  
begin
  i := 2;
  while i <= 10 do
    begin
      write(i, ' ');
      i := i+2;
    end;
end.
