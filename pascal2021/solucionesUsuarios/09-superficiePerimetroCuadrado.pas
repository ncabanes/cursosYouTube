(* 
Ejercicio propuesto 9:
 
Pide al usuario el lado de un cuadrado y calcula (y guarda en las 
correspondientes variables) la superficie de dicho cuadrado y su 
perímetro.

Parte del curso de Pascal por Nacho Cabanes:
https://www.youtube.com/playlist?list=PL0bfr51v6JJGVLw3jppSPuEm1Dy2Irj5r
*)

program EjercicioPropuesto9;
var
    lado: integer;
    superficie: integer;
    perimetro: integer;
begin
    write('Dime el lado de un cuadrado: ');
    readln(lado);
    superficie := lado*lado;
    perimetro := lado*4;
    writeln('La superficie es: ', superficie);
    writeln('El perimetro es: ', perimetro);
end.
