(* Ejemplo de "boolean" 4: password, formato compacto *)

program claveDeAccesoBoolean;

var
  clave: integer;
  accesoPermitido: boolean;

begin
  accesoPermitido := false;
  repeat
    write('Dime tu password ');
    readln(clave);
    accesoPermitido := clave = 1234;

    if not accesoPermitido then
       writeln('Clave incorrecta');

  until accesoPermitido;

  writeln('Bienvenido');
end.
