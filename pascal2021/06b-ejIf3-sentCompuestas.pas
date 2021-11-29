program ejemploIf3;

var
  n : integer;

begin
  WriteLn('Dime un dato');
  readln(n);
  if n > 0 then
  begin
    writeln('Es positivo');
    writeln('Lo sabias?');
  end
  else
    begin
    writeln('Es negativo');
    writeln('o quiza sea cero');
    end;
end.
