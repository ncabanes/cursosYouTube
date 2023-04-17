(* 
Ejercicio propuesto 5:
 
Pide al usuario un número y di si es par (pista: usa "mod").

Parte del curso de Pascal por Nacho Cabanes:
https://www.youtube.com/playlist?list=PL0bfr51v6JJGVLw3jppSPuEm1Dy2Irj5r
*)

program numeroPar;
var
    n:integer;

begin
    writeln('ingrese un numero');
    readln(n);
    if n mod 2 = 0  then writeln('es par')
end.
