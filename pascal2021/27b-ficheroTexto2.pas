(* Ficheros de texto, ejemplo 2: volcado convirtiendo a mayusculas *)

program FicherosDeTexto2;

uses sysutils;

var
  entrada, salida: text;
  linea: string;

begin
    assign(entrada, 'saludo.txt');
    assign(salida, 'saludo2.txt');

    reset(entrada);
    rewrite(salida);

    while not eof(entrada) do
    begin
      readln(entrada, linea);
      linea := upcase(linea);
      writeln(salida, linea);

      writeln(linea);
    end;

    close(salida);
    close(entrada);
    writeln('Volcado terminado');
end.
