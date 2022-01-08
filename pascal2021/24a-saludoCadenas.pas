(* Contacto con las cadenas de texto (string) *)

program Cadenas1;

var
    nombre: string[10];

begin
    writeLn('Introduce tu nombre, por favor');
    readLn(nombre);
    write('Hola ',nombre);
end.
