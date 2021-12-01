(*
Nombre del dia de la semana a partir de su numero (1 al 7)
Version 2: case
*)

program diaCase;

var
  dia : integer;

begin
  WriteLn('Dime un dia (1 al 7)');
  readln(dia);

  case dia of
    1: writeln('Lunes');
    2: writeln('Martes');
    3: writeln('Miercoles');
    4: writeln('Jueves');
    5: writeln('Viernes');
    6: writeln('Sabado');
    7: writeln('Domingo');
    else writeln('Dia incorrecto');
  end;

end.
