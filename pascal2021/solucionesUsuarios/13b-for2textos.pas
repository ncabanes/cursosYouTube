(* 
Ejercicio propuesto 13b:
 
Escribe "Hola" (en una línea) y luego "Adios" (en otra línea). Esta 
estructura debe repetirse 4 veces.

Parte del curso de Pascal por Nacho Cabanes:
https://www.youtube.com/playlist?list=PL0bfr51v6JJGVLw3jppSPuEm1Dy2Irj5r
*)

program For2textos;

var
    repeticion : integer;

begin
    for repeticion := 1 to 4 do
    begin
        writeln ('Hola'); 
        writeln ('Adios');
    end;
end.
