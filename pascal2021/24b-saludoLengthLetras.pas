(* Cadenas de texto 2:
   - Definicion
   - Lectura
   - Asignacion
   - Longitud
   - Extraccion de letras
*)

program Cadenas2;

var
    nombre: string[100];
    saludo: string[30];

begin
    writeLn('Introduce tu nombre, por favor');
    readLn(nombre);
    saludo := 'Hola';
    writeln(saludo, ' ', nombre);

    writeln('Tu nombre tiene ', length(nombre), ' letras');
    writeln('La segunda letra es ', nombre[2]);
end.
