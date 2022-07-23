program LeerFicheroTipo;

type
  tipoGente = record
    nombre: string[100];
    edad: byte;
  end;

var
  dato: tipoGente;
  i: integer;
  cantidad: integer;
  fichero: file of tipoGente;

begin
  assign(fichero, 'datos.dat');
  reset(fichero);
  cantidad := filesize(fichero);

  for i := 1 to cantidad do
  begin
    read(fichero, dato);
    writeln(dato.nombre, ' ', dato.edad);
  end;

  close(fichero);

  readln;
end.

