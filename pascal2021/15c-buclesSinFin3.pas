(* Bucles sin fin 3: alternativa con logica correcta *)

program sinFin3;

var
  clave : integer;

begin
  write('Dime tu clave ');
  readln(clave);
  while clave <> 1234 do
    begin
    writeln('Acceso denegado');
    write('Dime tu clave ');
    readln(clave);
    end;
end.

