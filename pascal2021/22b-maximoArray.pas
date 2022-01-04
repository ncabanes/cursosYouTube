(* Ejemplo de como calcular el maximo de un "array" *)

program MaximoArray;

const
  TAMANYO = 5;

var
  datos: array[1..TAMANYO] of integer;
  i: integer;
  maximo: integer;

begin
  datos[1] := 40;
  datos[2] := 30;
  datos[3] := 50;
  datos[4] := 20;
  datos[5] := 10;

  maximo := datos[1];
  for i := 2 to TAMANYO do
    begin
      if datos[i] > maximo then
        maximo := datos[i];
    end;

  writeln('El maximo es ', maximo);
end.

