(* Ejemplo de declaracion de variables *)

program millasAMetros;

var millas: integer;
var metros: integer;
var metrosPorMilla: integer;

begin
  metrosPorMilla := 1609;
  write('Dime cuantas millas quieres convertir: ');
  readln(millas);

  metros := millas * metrosPorMilla;
  write('En metros son: ');
  writeln(metros);
end.
