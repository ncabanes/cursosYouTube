(* Procedimiento con parametros, version mejorada *)

program Procedimientos2;

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

begin
    subrayar( 'Hola, bienvenido/a al curso' );
    subrayar( 'Espero que te resulte util');
    subrayar( 'No tengas miedo de preguntar' );
end.
