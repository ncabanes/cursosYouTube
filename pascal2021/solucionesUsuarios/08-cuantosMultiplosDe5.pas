(* 
Ejercicio propuesto 8:
 
Crea un programa que pida al usuario dos números y responda cuántos de 
ellos son múltiplos de 5... usando Lazarus.

Parte del curso de Pascal por Nacho Cabanes:
https://www.youtube.com/playlist?list=PL0bfr51v6JJGVLw3jppSPuEm1Dy2Irj5r
*)

program EjercicioPropuesto8;

var
  n1 : integer;
  n2 : integer;

begin
  writeln('Dime un numero');
  readln(n1);
  writeln('Dime otro numero');
  readln(n2);

  if (n1 mod 5=0) and (n2 mod 5=0) then
  writeln('Los dos son multiplos de 5')
  
  else if(n1 mod 5=0) or (n2 mod 5=0) then
  writeln('Solo uno es multiplo de 5')
  
  else writeln('Ninguno es multiplo de 5')
end.
