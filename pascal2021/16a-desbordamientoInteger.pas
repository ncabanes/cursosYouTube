(* 
 * Ejemplo del riesgo de desbordamiento en Pascal:
 * en versiones de Turbo Pascal para MS-DOS, al
 * introducir el numero 20000 es probable que la
 * respuesta no sea 40000 sino -25536 
 *)

var
  i : integer;

begin
  readln(i);
  writeln( i * 2);
end.
