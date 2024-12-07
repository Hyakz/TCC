unit uBase;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TfrmBase = class(TForm)
    procedure LimparComboBoxKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmBase: TfrmBase;

implementation

{$R *.dfm}   { Sempre usar o ComboBox com o "Style" csDropDownList }

procedure TfrmBase.LimparComboBoxKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
var
  ComboBox: TComboBox;
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


end.
