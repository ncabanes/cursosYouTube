program FicheroBinario2;

var
  nombreEntrada, nombreSalida: string;
  ficheroEntrada, ficheroSalida: file;
  datos: array[1..32768] of byte;
  cantidadLeida: word;

begin
  write('Nombre del fichero de entrada? ');
  readln(nombreEntrada);
  write('Nombre del fichero de salida? ');
  readln(nombreSalida);

  assign(ficheroEntrada, nombreEntrada);
  reset(ficheroEntrada, 1);

  assign(ficheroSalida, nombreSalida);
  rewrite(ficheroSalida, 1);

  repeat

    blockread(ficheroEntrada, datos, 32768, cantidadLeida);
    blockwrite(ficheroSalida, datos, cantidadLeida);

  until cantidadLeida < 32768;

  Close(ficheroSalida);
  Close(ficheroEntrada);

  writeln('Copia terminada');

  readln;
end.

