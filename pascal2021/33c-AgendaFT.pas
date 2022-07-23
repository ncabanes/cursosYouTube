program AgendaFT;

uses SysUtils;

type
  tipoGente = record
    nombre: string[60];
    email: string[100];
    nacimiento: byte;
  end;

var
  dato: tipoGente;
  fichero: file of tipoGente;

  cantidad: integer;
  opcion: integer;
  i: integer;

begin
  cantidad := 0;

  assign(fichero, 'agenda.dat');
  if (not fileExists('agenda.dat')) then
  begin
    rewrite(fichero);
    close(fichero);
  end;

  repeat
    writeln('Agenda');
    writeln;
    writeln('1. Nuevo dato');
    writeln('2. Ver todos');
    writeln('0. Salir');

    readln(opcion);

    case opcion of
      1:
        begin
          writeln('Dime el nombre de la persona ');
          readln( dato.nombre );
          writeln('Dime el e-mail de la persona ');
          readln( dato.email );
          writeln('Dime el anyo de nacimiento de la persona ');
          readln( dato.nacimiento );

          reset(fichero);
          seek(fichero, filesize(fichero));
          write(fichero, dato);
          close(fichero);
        end;
      2:
        begin
          reset(fichero);
          cantidad := filesize(fichero);
          if cantidad = 0 then
            writeln('No hay datos que mostrar')
          else
            for i := 1 to cantidad do
            begin
              read(fichero, dato);
              writeln(i, ': ', dato.nombre);
            end;
          close(fichero);
        end;
    end;

  until opcion = 0;
end.

