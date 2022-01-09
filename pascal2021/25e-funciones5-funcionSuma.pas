(* Ejemplo de funcion simple, para sumar dos numeros *)

program ProcedimientosYFunciones;

var
  a, b: integer;

procedure subrayar(texto: string);
var
  i: integer;
begin
  writeLn(texto);
  for i := 1 to length(texto) do
    write('-');
  WriteLn;

  WriteLn;
end;

function suma(n1, n2: integer) : integer;
begin
  suma := n1 + n2;
end;

begin
    subrayar( 'Hola, bienvenido/a al curso' );
    subrayar( 'Espero que te resulte util');
    subrayar( 'No tengas miedo de preguntar' );

    a := 5;
    b := 6;
    writeLn( suma(a, b) );
    writeLn( a+b );
end.
