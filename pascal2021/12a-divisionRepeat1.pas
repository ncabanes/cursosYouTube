(* Division con "repeat", 1: ejemplo basico *)

program divisionRepeat1;

var
  n1, n2: integer;

begin
  write('Dime el primer numero ');
  readln(n1);

  repeat
    write('Dime el segundo numero ');
    readln(n2);
  until n2 <> 0;

  writeln('Su division es ', n1/n2);
end.

