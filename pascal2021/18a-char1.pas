(* Ejemplo basico de lectura, escritura y asignacion de datos tipo "char" *)

program caracteres1;

var
  letra1, letra2 : char;

begin
  write('Dime una letra ');
  readln(letra1);

  letra2 := 'b';
  writeln('Las letras son ', letra1, ' y ', letra2);
end.

