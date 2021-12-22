(* Ejemplo de funciones matematicas incluidas en Pascal estandar *)

program funcMatematicas1;

var
  numero : double;

begin
  write('Dime un numero ');
  readln(numero);

  writeln('Su raiz es ', sqrt(numero) :5:2);
  writeln('Se puede redondear a ', round(numero));
  writeln('Su seno, si son radianes, es ', sin(numero):5:2);
  writeln('Su coseno, si son grados, es ', cos(numero * pi / 180):5:2);
  writeln('Su cuadrado es ', numero*numero :5:2 );
  writeln('Elevado a 3.5 es ', exp( 3.5 * ln(numero)):5:2);

  readln;
end.

