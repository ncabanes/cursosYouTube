(* Ejemplo de contador con "while", 1: escribir el numero *)

program ContadorWile1;

var
  i: integer;

begin
  i := 1;
  while i <= 5 do
    begin
      write(i, ' ');
      i := i+1;
    end;
end.
