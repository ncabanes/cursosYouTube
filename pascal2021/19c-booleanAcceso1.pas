(* Ejemplo de "boolean" 3: password, formato (innecesariamente) largo *)

program claveDeAccesoBoolean;

var
  clave: integer;
  accesoPermitido: boolean;

begin
  accesoPermitido := false;
  repeat
    write('Dime tu password ');
    readln(clave);
    if clave = 1234 then
       accesoPermitido := true;

    if accesoPermitido = false then
       writeln('Clave incorrecta');

  until accesoPermitido = true;

  writeln('Bienvenido');
end.
