(* Procedimiento con parametros *)

program Procedimientos2;

procedure subrayar(texto: string);
begin
  writeLn(texto);
  writeLn('--==-------------------==--' );
  WriteLn;
end;

begin
    subrayar( 'Hola, bienvenido/a al curso' );
    subrayar( 'Espero que te resulte util');
    subrayar( 'No tengas miedo de preguntar' );
end.
