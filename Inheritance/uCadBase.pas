unit uCadBase;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uBase, Vcl.ComCtrls, Vcl.ExtCtrls,
  Data.DB, Datasnap.DBClient;

type
  TModoRegistro = (mrInsert, mrEdit);

type
  TfrmCadBase = class(TfrmBase)
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCadBase: TfrmCadBase;

implementation

{$R *.dfm}

end.
