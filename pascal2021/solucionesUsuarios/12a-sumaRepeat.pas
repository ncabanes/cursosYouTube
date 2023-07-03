(* 
Ejercicio propuesto 12a:
 
Pide números positivos al usuario, y ve calculando la suma de todos 
ellos, usando "repeat". Termina cuando se teclee un número negativo o 
cero.

Parte del curso de Pascal por Nacho Cabanes:
https://www.youtube.com/playlist?list=PL0bfr51v6JJGVLw3jppSPuEm1Dy2Irj5r
*)

program SumaRepeat;

var
    num, suma: integer;

begin
    suma:=0;
    repeat
        writeln('Ingrese un numero positivo:');
        readln(num);
        suma := suma + num;
    until num <=0;
    
    writeln('La suma total de los numeros es: ', suma);
end.
