program Ejemplocrt;

uses crt;

var
 i: integer;
 tecla: char;
 
begin
  clrscr;
  TextColor(YELLOW);
  TextBackground(RED);
  GotoXY(40, 12);
  write('Ho1a');
  Delay(1000);
  
  TextBackground(BLUE);
  ClrScr;
  for i := 1 to 100 do
    write (i, ' ');

  write('Pulsa una tecla... ');
  tecla := readkey;
  write('Has pulsado ', tecla);
  
  TextColor(LIGHTGRAY);
  TextBackground(BLACK);
end.
