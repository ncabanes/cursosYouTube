(* Ejemplo de uso de "arrays" bidimensionales *)

program arrayBidim;

const
  BLOQUES = 2;
  TAMANYO = 3;

var
  datos: array[1..BLOQUES, 1..TAMANYO] of integer;
  bloque, dato: integer;
  suma: integer;

begin
  for bloque := 1 to BLOQUES do
    for dato := 1 to TAMANYO do
    begin
      write('Dime el dato ', dato, ' del bloque ', bloque,' ');
      readln(datos[bloque, dato]);
    end;

  suma := 0;
  for bloque := 1 to BLOQUES do
    for dato := 1 to TAMANYO do
        suma := suma + datos[bloque, dato];
  write('La suma es: ', suma);
end.

