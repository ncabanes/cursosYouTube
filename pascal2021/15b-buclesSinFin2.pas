(* Ejemplo de bucles sin fin 2: error en la logica *)

program sinFin2;

var
  clave : integer;

begin
  write('Dime tu clave ');
  readln(clave);
  while clave <> 1234 do
    writeln('Acceso denegado');
end.

