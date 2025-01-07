(*
Ejercicio propuesto 19:
 
Pide al usuario dos números enteros. 
Crea una variable booleana llamada “ambosPares” 
que será verdadera si los dos números son pares, o falsa en caso contrario.

Parte del curso de Pascal por Nacho Cabanes:
https://www.youtube.com/playlist?list=PL0bfr51v6JJGVLw3jppSPuEm1Dy2Irj5r
*)

program NumerosPares;
var
  a, b : integer;
  ambosPares : boolean;
begin
  write ('Dime un número entero: ');
  readln (a);
  write ('Dime otro número entero: ');
  readln (b);
  ambosPares := (a mod 2 = 0) and (b mod 2 = 0);
  write (ambosPares);
end.
