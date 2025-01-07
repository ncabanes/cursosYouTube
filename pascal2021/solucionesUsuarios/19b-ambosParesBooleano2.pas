(*
Ejercicio propuesto 19:
 
Pide al usuario dos números enteros. 
Crea una variable booleana llamada “ambosPares” 
que será verdadera si los dos números son pares, o falsa en caso contrario.

Versión 2: repite hasta que la respuesta sea correcta

Parte del curso de Pascal por Nacho Cabanes:
https://www.youtube.com/playlist?list=PL0bfr51v6JJGVLw3jppSPuEm1Dy2Irj5r
*)

program NumerosPares2;
var 
  n2, n1 : integer;
  ambospares : boolean;
begin
  repeat
    write('Dime un numero: ');
    readln(n1);
    write('Dime otro numero: ');
    readln(n2);
    ambospares:=  (n1 mod 2 = 0) and (n2 mod 2 =0);
    if not ambospares then
      writeln('No son numeros pares');
  until ambospares;
  writeln('Son numeros pares');
end.
