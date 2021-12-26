(* Ejemplo de "boolean" 2: division, formato compacto *)

program divisionRepeatBooleano;

var
  n1, n2: integer;
  divisible: boolean;

begin
  write('Dime el primer numero ');
  readln(n1);

  divisible := false;
  repeat
    write('Dime el segundo numero ');
    readln(n2);
    divisible := n2 <> 0;
  until divisible;

  writeln('Su division es ', n1/n2);
end.
