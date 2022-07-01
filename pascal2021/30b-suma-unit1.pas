unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls;

type

  { TForm1 }

  TForm1 = class(TForm)
    botonSumar: TButton;
    EditPrimerNumero: TEdit;
    EditSegundoNumero: TEdit;
    LabelResultado: TLabel;
    procedure botonSumarClick(Sender: TObject);
  private

  public

  end;

var
  Form1: TForm1;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.botonSumarClick(Sender: TObject);
var
  n1, n2, resultado: integer;
  codigoError: integer;
begin
  // val(EditPrimerNumero.Txt, n1, codigoError);
  n1 := strToInt( EditPrimerNumero.Text );
  n2 := strToInt( EditSegundoNumero.Text );
  resultado := n1 + n2;
  LabelResultado.Caption := intToStr(resultado);
end;
end.

