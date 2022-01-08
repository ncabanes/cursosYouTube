(* Concatenacion de cadenas de texto *)

program Cadenas3;

var
    nombre: string[100];
    saludo: string[30];
    respuesta: string[200];

begin
    writeLn('Introduce tu nombre, por favor');
    readLn(nombre);
    saludo := 'Hola';
    //respuesta := saludo + ' ' + nombre;
    respuesta := concat(saludo, ' ', nombre);
    writeln(respuesta);

    writeln('Tu nombre tiene ', length(nombre), ' letras');
    writeln('La segunda letra es ', nombre[2]);
end.
