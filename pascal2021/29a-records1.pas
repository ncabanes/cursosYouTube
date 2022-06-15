program Records1;

var
  dato: record
    nombre: string;
    edad: byte;
  end;

begin
  dato.nombre := 'Hector';
  dato.edad := 14;

  write( dato.nombre, ' tiene ', dato.edad, ' años');

  readln;
end.
