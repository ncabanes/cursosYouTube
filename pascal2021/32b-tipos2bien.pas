program Tipos2bien;

type
  tipoGente = record
    nombre: string;
    edad: byte;
  end;

var
  dato: tipoGente;
  dato2: tipoGente;

begin
  dato.nombre := 'Hector';
  dato.edad := 14;

  write( dato.nombre, ' tiene ', dato.edad, ' años');

  dato2 := dato;

  readln;
end.

