program FicheroBinario1;

type
  cabeceraBasicaGif = record
    firmaGif: array[1..3] of char;
    version: array[1..3] of char;
    ancho: word;
    alto: word;
  end;

var
  nombre: string;
  fichero: file;
  cabecera: cabeceraBasicaGif;

begin
  write('Nombre del fichero? ');
  readln(nombre);

  assign(fichero, nombre);
  reset(fichero, 1);
  blockread(fichero, cabecera, sizeOf(cabecera));
  close(fichero);

  writeln('Version: ', cabecera.firmaGif, ' ', cabecera.version);
  writeln('Ancho y alto: ', cabecera.ancho, ' x ', cabecera.alto);

  readln;
end.

