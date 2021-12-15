(* Ejemplo de bucles anidados 3: triangulo alineado a la derecha *)

program forAnidados3;
{

   *
  **
 ***
****

}

var
  fila, columna: integer;
  tamanyo : integer;
  espacios, asteriscos : integer;

begin
  write('Tamano del triangulo? ');
  readln(tamanyo);

  espacios := tamanyo - 1;
  asteriscos := 1;

  for fila := 1 to tamanyo do
  begin
    for columna := 1 to espacios do
      write(' ');
    for columna := 1 to asteriscos do
      write('*');
    writeln;

    dec(espacios);
    inc(asteriscos);
  end;

end.

