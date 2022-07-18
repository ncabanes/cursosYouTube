program Tipos1mal;

var
  dato: record
    nombre: string;
    edad: byte;
  end;

  dato2: record
    nombre: string;
    edad: byte;
  end;

begin
  dato.nombre := 'Hector';
  dato.edad := 14;

  write( dato.nombre, ' tiene ', dato.edad, ' años');

  (* La siguiente línea falla *)
  dato2 := dato;

  readln;
end.

