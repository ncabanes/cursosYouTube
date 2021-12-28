(* Suma de los elementos de un "array" *)

program sumaDeArray;

var
  datos: array[1..5] of integer;
  i: integer;
  suma: integer;

begin
  for i := 1 to 5 do
  begin
    write('Dime el dato ', i, ' ');
    readln(datos[i]);
  end;

  suma := 0;
  for i := 1 to 5 do
    suma := suma + datos[i];
  write('La suma es: ', suma);
end.

