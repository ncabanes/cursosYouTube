(*
Ejemplo de como:

- Declarar varias variables con una unica orden "var"
- Escribir varios textos con una unica orden "write"

*)

program millasAMetros;

var
  millas, metros, metrosPorMilla: integer;

begin
  metrosPorMilla := 1609;
  write('Dime cuantas millas quieres convertir: ');
  readln(millas);

  metros := millas * metrosPorMilla;
  writeln('En metros son: ', metros);
end.
