program Agenda;

var
  gente : array[1..1000] of record
    nombre: string;
    email: string;
    nacimiento: byte;
  end;

  cantidad: integer;
  opcion: integer;
  i: integer;

begin
  cantidad := 0;

  repeat
    writeln('Agenda');
    writeln;
    writeln('1. Nuevo dato');
    writeln('2. Ver todos');
    writeln('0. Salir');

    readln(opcion);

    case opcion of
      1:
        if cantidad < 1000 then
        begin
          cantidad := cantidad + 1;

          writeln('Dime el nombre de la persona ', cantidad);
          readln( gente[cantidad].nombre );
          writeln('Dime el e-mail de la persona ', cantidad);
          readln( gente[cantidad].email );
          writeln('Dime el anyo de nacimiento de la persona ', cantidad);
          readln( gente[cantidad].nacimiento );
        end
        else
          writeln('Base de datos llena');
      2:if cantidad = 0 then
          writeln('No hay datos que mostrar')
        else
          for i := 1 to cantidad do
            writeln(i, ': ', gente[i].nombre);
    end;

  until opcion = 0;
end.
