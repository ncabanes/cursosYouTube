(* Acercamiento a "while", 3: 
   division con "while"  *)

program divisionWhile;

var
  n1, n2: integer;

begin
  write('Dime el primer numero ');
  readln(n1);
  write('Dime el segundo numero ');
  readln(n2);

  while n2 = 0 do
    begin
      write('No debe ser cero. Dime el segundo numero ');
      readln(n2);
    end;

  writeln('Su division es ', n1/n2);
end.
