unit uBase;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, System.AnsiStrings, DTUtil.Validacao;

type
  TfrmBase = class(TForm)
    procedure LimparComboBoxKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormatarCPFeCNPJ(Sender: TObject; var Key: Char);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmBase: TfrmBase;

implementation

{$R *.dfm}

procedure TfrmBase.LimparComboBoxKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
var
  ComboBox: TComboBox;  { Sempre usar o ComboBox com o "Style" csDropDownList }
begin
  if Sender is TComboBox then
  begin
    ComboBox := TComboBox(Sender);

    if (Key = VK_BACK) or (Key = VK_DELETE) then
    begin
      ComboBox.DroppedDown := False;
      ComboBox.ItemIndex   := -1;
    end;
  end;
end;

procedure TfrmBase.FormatarCPFeCNPJ(Sender: TObject; var Key: Char);
var
  iPosicaoCursor, iTamanhoTextoAntigo: Integer;
  cTexto, cTextoFormatado: string;
begin
  if Key = #8 then
    Exit;

  cTexto              := (Sender as TEdit).Text;
  iTamanhoTextoAntigo := Length(cTexto);
  iPosicaoCursor      := (Sender as TEdit).SelStart;

  cTexto := StringReplace(cTexto, '.', '', [rfReplaceAll]);
  cTexto := StringReplace(cTexto, '/', '', [rfReplaceAll]);
  cTexto := StringReplace(cTexto, '-', '', [rfReplaceAll]);

  if Length(cTexto) <= 11 then
  begin
    if Length(cTexto) <= 3 then
      cTextoFormatado := cTexto
    else
    if Length(cTexto) <= 6 then
      cTextoFormatado := Copy(cTexto, 1, 3) + '.' + Copy(cTexto, 4, 3)
    else
    if Length(cTexto) <= 9 then
      cTextoFormatado := Copy(cTexto, 1, 3) + '.' + Copy(cTexto, 4, 3) + '.' + Copy(cTexto, 7, 3)
    else
      cTextoFormatado := Copy(cTexto, 1, 3) + '.' + Copy(cTexto, 4, 3) + '.' + Copy(cTexto, 7, 3) + '-' + Copy(cTexto, 10, 2);
  end
  else if Length(cTexto) <= 14 then
  begin
    if Length(cTexto) <= 4 then
      cTextoFormatado := cTexto
    else
    if Length(cTexto) <= 7 then
      cTextoFormatado := Copy(cTexto, 1, 2) + '.' + Copy(cTexto, 3, 3)
    else
    if Length(cTexto) <= 11 then
      cTextoFormatado := Copy(cTexto, 1, 2) + '.' + Copy(cTexto, 3, 3) + '.' + Copy(cTexto, 6, 3)
    else
      cTextoFormatado := Copy(cTexto, 1, 2) + '.' + Copy(cTexto, 3, 3) + '.' + Copy(cTexto, 6, 3) + '/' + Copy(cTexto, 9, 4) + '-' + Copy(cTexto, 13, 2);
  end;

  (Sender as TEdit).Text := cTextoFormatado;

  if Length(cTextoFormatado) > iTamanhoTextoAntigo then
    (Sender as TEdit).SelStart := iPosicaoCursor + 1
  else
    (Sender as TEdit).SelStart := iPosicaoCursor;
end;


end.
