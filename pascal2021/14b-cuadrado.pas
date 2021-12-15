(* Ejemplo de bucles anidados 2: cuadrado *)

program forAnidados2;

var
  fila, columna: integer;
  tamanyo : integer;

begin
  write('Tamano del cuadrado? ');
  readln(tamanyo);

  for fila := 1 to tamanyo do
  begin
    for columna := 1 to tamanyo do
      write('*');
    writeln;
  end;

end.

