(* Clave de acceso con "repeat", 1: ejemplo basico *)

program claveDeAcceso1;

var
  clave: integer;

begin
  repeat
    write('Dime tu password ');
    readln(clave);
  until clave = 1234;

  writeln('Bienvenido');
end.

