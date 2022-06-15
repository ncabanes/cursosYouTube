program Records2;

var
  dato: record
    nombre: string;
    edad: byte;
  end;

begin
  with dato do
  begin
    nombre := 'Hector';
    edad := 14;

    write( nombre, ' tiene ', edad, ' años');
  end;

  readln;
end.
