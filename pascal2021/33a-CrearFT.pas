program CrearFicheroTipo;

uses SysUtils;

type
  tipoGente = record
    nombre: string[100];
    edad: byte;
  end;

var
  dato: tipoGente;
  i: integer;
  fichero: file of tipoGente;

begin
  assign(fichero, 'datos.dat');
  rewrite(fichero);

  for i := 1 to 4 do
  begin
    dato.nombre := 'Hector' + IntToStr(i);
    dato.edad := 14 + i;
    write(fichero, dato);
  end;

  close(fichero);

  readln;
end.

