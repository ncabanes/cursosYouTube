(* 
Ejercicio propuesto 7a:
 
Haz un programa que pida al usuario un número entero del 1 al 3, y 
escriba "Uno", "Dos", "Tres" o "Número incorrecto" según corresponda. 
Hazlo primero con "if" y luego con "case".

Parte del curso de Pascal por Nacho Cabanes:
https://www.youtube.com/playlist?list=PL0bfr51v6JJGVLw3jppSPuEm1Dy2Irj5r
*)


program Ejemplo_Case_1;
var
    n:integer;
begin
    write('Dime un numero entero del 1 al 3: ');
    readln(n);
    
    (* Planteamiento con "if" *)
    if n = 1 then
        writeln('Uno')
    else if n = 2 then
        writeln('Dos')
    else if n = 3 then
        writeln('Tres')
    else
        writeln('Numero incorrecto')

    (* Planteamiento con "case" *)
    case n of
        1 : writeln('Uno');
        2 : writeln('Dos');
        3 : writeln('Tres');
    else
        writeln('Numero incorrecto')
    end;
end.
