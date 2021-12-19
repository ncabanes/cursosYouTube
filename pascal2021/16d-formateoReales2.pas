(* 
 * Ejemplo de formateo de numeros reales y de cantidad
 * de cifras significativas
 *)

var
  n1, n2, n3 : single;

begin
  n1 := 300;
  n2 := 0.000003;
  n3 := 3000000003;

  writeln(n1:20:8);
  writeln(n2:20:8);
  writeln(n3:20:8);
end.

