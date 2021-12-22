(* Ejemplo de funciones matematicas 2: usando la biblioteca "math" *)

program funcMatematicas2;

uses math;

var
  numero : double;

begin
  write('Dime un numero ');
  readln(numero);

  writeln('Su raiz es ', sqrt(numero) :5:2);
  writeln('Se puede redondear a ', round(numero));
  writeln('Su seno, si son radianes, es ', sin(numero):5:2);
  writeln('Su coseno, si son grados, es ', cos(degToRad(numero)):5:2);
  writeln('Su cuadrado es ', numero*numero :5:2 );
  writeln('Elevado a 3.5 es ', power(numero, 3.5):5:2);

  readln;
end.

