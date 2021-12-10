(* Ejemplo de contador con "while", 2: escribir un texto prefijado *)

program contadorWhile2;

var
  i: integer;

begin
  i := 1;
  while i <= 5 do
    begin
      write('Hola');
      i := i+1;
    end;
end.
