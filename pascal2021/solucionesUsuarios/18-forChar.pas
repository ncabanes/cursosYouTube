(* 
Ejercicio propuesto 18:
 
Pide al usuario una letra mayúscula (entre la A y la Z) y 
muestra todas las que hay entre ella y la A, descendiendo, ambas incluidas.

Parte del curso de Pascal por Nacho Cabanes:
https://www.youtube.com/playlist?list=PL0bfr51v6JJGVLw3jppSPuEm1Dy2Irj5r
*)

var
  letra, i: char;

begin
  writeln('Letra mayuscula: ');
  readln(letra);

  for i := letra downto 'A' do
    writeln(i);

  readln;
end.
