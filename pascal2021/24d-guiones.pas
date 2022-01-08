(* Creacion de una cadena de texto repetitiva *)

program Guiones;

var
    texto: string;
    i: integer;

begin
    texto := '';
    for i := 1 to 30 do
      texto := texto + '-';

    writeLn(texto);
end.
