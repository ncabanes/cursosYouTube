(* Ejemplo de como buscar en un "array" *)

program BuscarArray;

const
  TAMANYO = 5;

var
  datos: array[1..TAMANYO] of integer;
  i: integer;
  encontrado: boolean;

begin
  datos[1] := 40;
  datos[2] := 30;
  datos[3] := 50;
  datos[4] := 20;
  datos[5] := 10;

  encontrado := false;
  for i := 1 to TAMANYO do
    begin
      if datos[i] = 30 then
        encontrado := true
    end;

    if encontrado then
      writeln('30 encontrado')
    else
      writeln('30 no encontrado');
end.
