(* Ejemplo de "boolean" 1: division, formato (innecesariamente) largo *)

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
    if n2 <> 0 then divisible := true;
  until divisible = true;

  writeln('Su division es ', n1/n2);
end.
