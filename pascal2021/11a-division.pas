(* Acercamiento a "while", 1: 
   division sin comprobaciones  *)

program divisionSinComprobaciones;

var
  n1, n2: integer;

begin
  write('Dime el primer numero ');
  readln(n1);
  write('Dime el segundo numero ');
  readln(n2);

  writeln('Su division es ', n1/n2);
end.
