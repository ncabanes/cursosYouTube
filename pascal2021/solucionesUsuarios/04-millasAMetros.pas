(* 
Ejercicio propuesto 4:
 
Crea un programa que pida una cantidad de millas al usuario y 
muestre la equivalencia en metros (1 milla = 1609 metros) 

Parte del curso de Pascal por Nacho Cabanes:
https://www.youtube.com/playlist?list=PL0bfr51v6JJGVLw3jppSPuEm1Dy2Irj5r
*)

program ejercicioPropuesto4;

var
    n:integer;

begin
    writeln('Ingrese una cantidad de millas');
    readln(n);
    writeln('Su equivalencia en metros es');
    writeln(n*1609);
end.
