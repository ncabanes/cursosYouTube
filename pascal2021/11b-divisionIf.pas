(* Acercamiento a "while", 2: 
   division solo con "if" *)

program divisionIf;

var
  n1, n2: integer;

begin
  write('Dime el primer numero ');
  readln(n1);
  write('Dime el segundo numero ');
  readln(n2);

  if n2 = 0 then
    begin
      write('No debe ser cero. Dime el segundo numero ');
      readln(n2);
    end;

  writeln('Su division es ', n1/n2);
end.
