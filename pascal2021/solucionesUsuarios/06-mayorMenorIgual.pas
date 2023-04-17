(* 
Ejercicio propuesto 6:
 
Crea un programa que pida dos números al usuario y diga si el primero 
es mayor, el segundo es mayor o son iguales

Parte del curso de Pascal por Nacho Cabanes:
https://www.youtube.com/playlist?list=PL0bfr51v6JJGVLw3jppSPuEm1Dy2Irj5r
*)

program MayorMenorIgual;
var
    n1:integer;
    n2:integer;

begin
    writeln('ingrese el primer numero');
    readln(n1);
    writeln('ingrese el segundo numero');
    readln(n2);

    if n1 > n2 then 
        writeln('el primer numero es mayor')
    else if n2 > n1 then
        writeln('el segundo numero es mayor')
    else 
        writeln('son iguales')
end.
