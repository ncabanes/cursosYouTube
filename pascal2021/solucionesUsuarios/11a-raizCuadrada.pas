(* 
Ejercicio propuesto 11a:
 
La raíz cuadrada de un número x se puede calcular con "sqrt(x)". Pide 
al usuario un número y muestra su raíz cuadrada, luego otro, hasta que 
el número introducido sea negativo. Entonces se mostrará el mensaje "No 
se puede hallar la raíz de un número negativo" y terminará el programa.

Parte del curso de Pascal por Nacho Cabanes:
https://www.youtube.com/playlist?list=PL0bfr51v6JJGVLw3jppSPuEm1Dy2Irj5r
*)

program Raiz;

var
  x: real;

begin
    x:=0;
  
    while x >= 0 do
    begin
        write ('Ingrese un numero: ');
        readln (x);
        if x >= 0 then
           writeln ('La raiz es igual a ', sqrt(X));
    end;
    writeln ('No se puede hallar la raiz de un numero negativo');
end.
