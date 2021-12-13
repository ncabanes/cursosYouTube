(* Clave de acceso con "repeat", 2: mejorado con aviso al usuario *)

program claveDeAcceso2;

var
  clave: integer;

begin
  repeat
    write('Dime tu password ');
    readln(clave);
    if clave <> 1234 then writeln('Clave incorrecta');
  until clave = 1234;

  writeln('Bienvenido');
end.

