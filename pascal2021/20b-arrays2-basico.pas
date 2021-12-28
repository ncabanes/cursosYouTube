(* Ejemplo basico de manejo de "arrays" *)

program contactoConArrays;

var
  datos: array[1..5] of integer;
  i: integer;

begin
  for i := 1 to 5 do
  begin
    write('Dime el dato ', i, ' ');
    readln(datos[i]);
  end;

  write('Los datos al reves son: ');
  for i := 5 downto 1 do
    write(datos[i], ' ');
end.

