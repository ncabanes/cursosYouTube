(* 
Ejercicio propuesto 7b:
 
Pide al usuario el número de un mes (1 al 12) y escribe su nombre en 
pantalla.

Parte del curso de Pascal por Nacho Cabanes:
https://www.youtube.com/playlist?list=PL0bfr51v6JJGVLw3jppSPuEm1Dy2Irj5r
*)

program Ejemplo_Case_2;
var
    mes:integer;
begin
    write('Dime el numero de un mes: ');
    readln(mes);
    case mes of
        1 : writeln('Enero');
        2 : writeln('Febrero');
        3 : writeln('Marzo');
        4 : writeln('Abril');
        5 : writeln('Mayo');
        6 : writeln('Junio');
        7 : writeln('Julio');
        8 : writeln('Agosto');
        9 : writeln('Septiembre');
        10 : writeln('Octubre');
        11 : writeln('Noviembre');
        12 : writeln('Diciembre');
    else
        writeln('El numero indicado no pertenece a un mes')
    end;
end.
