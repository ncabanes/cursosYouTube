(* 
 * Ejemplo de desbordamiento: si se introduce 200,
 * la respuesta no sera 400, que no cabe en un byte,
 * sino 144
 *)

var
  i : byte;

begin
  readln(i);
  i := i * 2;
  writeln( i );
end.

