unit DTUtil.Validacao;

interface

uses
  System.SysUtils, Vcl.Controls, Vcl.StdCtrls, Vcl.CheckLst, Vcl.ComCtrls, Vcl.Dialogs, System.Classes;

//Validar, Validar Email, Validar CPF/CNPJ,

function ValidarCPF(const CPF: string): Boolean;
//function ValidarCNPJ(const CNPJ: string): Boolean;

implementation

function ValidarCPF(const CPF: string): Boolean;
var
  i, iSoma, iResto, iD1, iD2: Integer;
  cCPF: string;
begin
  cCPF := '';

  for i := 1 to Length(CPF) do
  begin
    if CPF[i] in ['0'..'9'] then
      cCPF := cCPF + CPF[i];
  end;

  if Length(cCPF) <> 11 then
    Exit(False);

  if (cCPF = StringOfChar(cCPF[1], 11)) then
    Exit(False);

  iSoma := 0;
  for i := 1 to 9 do
    iSoma := iSoma + StrToInt(cCPF[i]) * (11 - i);

  iResto := iSoma mod 11;

  if (iResto < 2) then
    iD1 := 0
  else
    iD1 := 11 - iResto;

  iSoma := 0;
  for i := 1 to 9 do
    iSoma := iSoma + StrToInt(cCPF[i]) * (12 - i);

  iSoma  := iSoma + iD1 * 2;
  iResto := iSoma mod 11;

  if (iResto < 2) then
    iD2 := 0
  else
    iD2 := 11 - iResto;

  Result := (iD1 = StrToInt(cCPF[10])) and (iD2 = StrToInt(cCPF[11]));
end;

//function ValidarCNPJ(const CNPJ: string): Boolean;  {Ainda n funciona o CNPJ}
//var
//  i, iSoma, iResto, iD1, iD2: Integer;
//  cCNPJ: string;
//begin
//  cCNPJ := '';
//
//  for i := 1 to Length(CNPJ) do
//  begin
//    if CNPJ[i] in ['0'..'9'] then
//      cCNPJ := cCNPJ + CNPJ[i];
//  end;
//
//  if Length(cCNPJ) <> 14 then
//    Exit(False);
//
//  if (cCNPJ = StringOfChar(cCNPJ[1], 14)) then
//    Exit(False);
//
//  iSoma := 0;
//  for i := 1 to 12 do
//    iSoma := iSoma + StrToInt(cCNPJ[i]) * (13 - i);
//  iResto := iSoma mod 11;
//
//  if (iResto < 2) then
//    iD1 := 0
//  else
//    iD1 := 11 - iResto;
//
//  iSoma := 0;
//  for i := 1 to 13 do
//    iSoma := iSoma + StrToInt(cCNPJ[i]) * (14 - i);
//
//  iSoma  := iSoma + iD1 * 2;
//  iResto := iSoma mod 11;
//
//  if (iResto < 2) then
//    iD2 := 0
//  else
//    iD2 := 11 - iResto;
//
//  Result := (iD1 = StrToInt(cCNPJ[13])) and (iD2 = StrToInt(cCNPJ[14]));
//end;

end.

