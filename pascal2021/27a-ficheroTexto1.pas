(* Ficheros de texto, ejemplo 1: forma de volcar de uno a otro *)

program FicherosDeTexto1;

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
      writeln(salida, linea);
    end;

    close(salida);
    close(entrada);
end.
