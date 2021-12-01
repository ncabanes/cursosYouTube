(*
Nombre del dia de la semana a partir de su numero (1 al 7)
Version 1: if
*)

program diaIf;

var
  dia : integer;

begin
  WriteLn('Dime un dia (1 al 7)');
  readln(dia);

  if dia = 1 then writeln('Lunes')
  else if dia = 2 then writeln('Martes')
  else if dia = 3 then writeln('Miercoles')
  else if dia = 4 then writeln('Jueves')
  else if dia = 5 then writeln('Viernes')
  else if dia = 6 then writeln('Sabado')
  else if dia = 7 then writeln('Domingo')
  else writeln('Dia incorrecto');
end.
