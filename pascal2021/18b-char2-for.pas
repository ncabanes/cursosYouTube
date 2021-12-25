(* Ejemplo de "char" 2: incremento y recorrido con "for" *)

program caracteres2;

var
  letra1, letra2, letra : char;

begin
  write('Dime una letra ');
  readln(letra1);
  inc(letra1);

  letra2 := 'b';
  writeln('Las letras son ', letra1, ' y ', letra2);

  for letra := 'a' to 'z' do
      write(letra);
end.

