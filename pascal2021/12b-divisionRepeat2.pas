(* Division con "repeat", 2: mejorado con aviso al usuario *)

program divisionRepeat2;

var
  n1, n2: integer;

begin
  write('Dime el primer numero ');
  readln(n1);

  repeat
    write('Dime el segundo numero ');
    readln(n2);

    if n2 = 0 then
      writeln('No debe ser cero.');

  until n2 <> 0;

  writeln('Su division es ', n1/n2);
end.

