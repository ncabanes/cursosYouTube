program ejemploIf5;

var
  n1 : integer;
  n2 : integer;

begin
  WriteLn('Dime un dato');
  readln(n1);
  WriteLn('Dime otro dato');
  readln(n2);

  if (n1 > 0) and (n2 > 0) then
    writeln('Los dos son positivos')
  else if (n1 > 0) or (n2 > 0) then
    writeln('Uno es positivo')
  else
    writeln('Ninguno es positivo');
end.
