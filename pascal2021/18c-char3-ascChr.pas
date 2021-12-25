(* Ejemplo de "char" 3: código ASCII, conversión con "ord" y "chr" *)

program caracteres3;

var
  letra1, letra2, letra : char;
  i: byte;

begin
  write('Dime una letra ');
  readln(letra1);
  inc(letra1);

  letra2 := 'b';
  writeln('Las letras son ', letra1, ' y ', letra2);

  for letra := 'a' to 'z' do
      write(letra);
  writeln;

  writeln('El codigo ASCII de la A es ', ord('A'));
  writeln('La letra 97 es ', chr(97));

  for i := 32 to 127 do
      write(chr(i));
  writeln;
end.

