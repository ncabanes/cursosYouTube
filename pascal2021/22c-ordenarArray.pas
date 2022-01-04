(* Ejemplo de ordenacion simple en un "array" *)

program OrdenarArray;

const
  TAMANYO = 5;

var
  datos: array[1..TAMANYO] of integer;
  i, j: integer;
  auxiliar: integer;

begin
  datos[1] := 40;
  datos[2] := 30;
  datos[3] := 50;
  datos[4] := 20;
  datos[5] := 10;

  for i := 1 to TAMANYO - 1 do
    for j := i+1 to TAMANYO do
    begin
      if datos[i] > datos[j] then
        (* Intercambiar *)
        begin
        auxiliar := datos[i];
        datos[i] := datos[j];
        datos[j] := auxiliar;
        end;
    end;

  for i := 1 to TAMANYO do
    writeln(datos[i]);
end.

