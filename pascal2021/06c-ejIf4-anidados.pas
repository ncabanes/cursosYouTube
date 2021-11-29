program ejemploIf4;

var
  n : integer;

begin
  WriteLn('Dime un dato');
  readln(n);
  if n > 0 then
    writeln('Es positivo')
  else if n < 0 then
    writeln('Es negativo')
  else
    writeln('Es cero');
end.
