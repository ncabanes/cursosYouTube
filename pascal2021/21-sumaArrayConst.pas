(* Suma de los elementos de un "array", con "const" *)

program sumaDeArrayConst;

const
  TAMANYO = 10;

var
  datos: array[1..TAMANYO] of integer;
  i: integer;
  suma: integer;

begin
  for i := 1 to TAMANYO do
  begin
    write('Dime el dato ', i, ' ');
    readln(datos[i]);
  end;

  suma := 0;
  for i := 1 to TAMANYO do
    suma := suma + datos[i];
  writeln('La suma es: ', suma);
end.

