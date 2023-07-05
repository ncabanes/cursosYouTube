(* 
Ejercicio propuesto 12c:
 
Pide al usuario su código de usuario y su contraseña (ambos números 
enteros), y no le permitas seguir hasta que introduzca como código 
"1000" y como contraseña "1234", usando "repeat". Versión mejorada: 
sólo tres intentos.

Parte del curso de Pascal por Nacho Cabanes:
https://www.youtube.com/playlist?list=PL0bfr51v6JJGVLw3jppSPuEm1Dy2Irj5r
*)

program LoginRepeat3Intentos;

var
  intentos , cod , clave : integer;
  
begin
    intentos := 1;    
    
    repeat
        writeln('intento numero: ',intentos);

        writeln('ingrese el codigo de ususario para luego ingresar la clave');
        readln(cod);
        writeln ('ahora ingrese la clave para acceder');
        readln(clave);

        inc(intentos);

        if (cod <> 1000) or (clave <> 1234) then
            writeln('el codigo o la clave es incorrecta')

    until ((cod = 1000) and (clave = 1234)) or (intentos = 4) ;
  
    if (cod = 1000) and (clave = 1234) then
        writeln('excelente! ahora puede proseguir')
    else
        writeln('acceso denegado')
end.
