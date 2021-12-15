(* Ejemplo de bucles anidados 1: rectangulo *)

program forAnidados1;

var
  fila, columna: integer;
  filas, columnas : integer;

begin
  write('Cuantas filas? ');
  readln(filas);

  write('Cuantas columnas en cada fila? ');
  readln(columnas);

  for fila := 1 to filas do
  begin
    for columna := 1 to columnas do
      write('*');
    writeln;
  end;

end.

