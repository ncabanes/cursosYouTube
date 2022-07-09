unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls;

type

  { TForm1 }

  TForm1 = class(TForm)
    btPrueba: TButton;
    procedure btPruebaClick(Sender: TObject);
  private

  public

  end;

var
  Form1: TForm1;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.btPruebaClick(Sender: TObject);

var
  resultado: integer;
  respuesta: string;
  aceptado: boolean;

begin
   ShowMessage('Hola!');

   resultado := MessageDlg('Aviso', '¿Debemos proseguir?',
     mtWarning, mbYesNo, 0);

   if resultado = mrYes then ShowMessage('Aceptado')
   else ShowMessage('Rechazado');

   respuesta := InputBox('Registro', 'Indique su país',
     'España');
   ShowMessage(respuesta);

   aceptado := InputQuery('Acceso', 'Dígame su nombre',
     respuesta);

   if aceptado then ShowMessage('Bienvenido' + respuesta)
   else ShowMessage('Cancelado');



end;

end.

