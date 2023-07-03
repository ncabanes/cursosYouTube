(* 
Ejercicio propuesto 12b:
 
Pide al usuario su código de usuario y su contraseña (ambos números 
enteros), y no le permitas seguir hasta que introduzca como código 
"1000" y como contraseña "1234", usando "repeat".

Parte del curso de Pascal por Nacho Cabanes:
https://www.youtube.com/playlist?list=PL0bfr51v6JJGVLw3jppSPuEm1Dy2Irj5r
*)

program LoginRepeat;

var
    clave: integer;
    usuario: integer;

begin
    repeat
        writeln('Indique su Usuario:');
        readln(usuario);
        writeln('Indique su clave:');
        readln(clave);

        if (usuario <> 1000) or (clave <> 1234) then
            writeln('Usuario o Contraseña incorrecta, intentelo de nuevo')
  
    until (usuario = 1000) and (clave = 1234);

    writeln('Acceso concedido');
end.
