unit uPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uBase, Vcl.ExtCtrls, Vcl.Buttons,
  Vcl.CategoryButtons, Vcl.WinXCtrls, Vcl.StdCtrls, Vcl.Imaging.pngimage,
  System.ImageList, Vcl.ImgList, System.Actions, Vcl.ActnList;

type
  TfrmPrincipal = class(TfrmBase)
    actlst1: TActionList;
    actCadastro: TAction;
    actVendas: TAction;
    actRelatorios: TAction;
    actAcoes: TAction;
    actGrafico: TAction;
    actSubCategoria: TAction;
    actlst2: TActionList;
    actCliente: TAction;
    actCategoria: TAction;
    actProdutos: TAction;
    actUsuarios: TAction;
    actAlterarSenha: TAction;
    actlst3: TActionList;
    actRelCategoria: TAction;
    actRelCliente: TAction;
    actRelFichaDeCliente: TAction;
    actRelProduto: TAction;
    actReltProdutosPorCategoria: TAction;
    actRelVendaPorData: TAction;
    actlst4: TActionList;
    actAcoesGerais: TAction;
    actAcoesUsuarios: TAction;
    actlst5: TActionList;
    actVendasDOIS: TAction;
    actCaixaPDV: TAction;
    imgList1: TImageList;
    imgList2: TImageList;
    imgList3: TImageList;
    imgList4: TImageList;
    imgList5: TImageList;
    pnlCabecalho: TPanel;
    pnl2: TPanel;
    pnl3: TPanel;
    img2: TImage;
    img1: TImage;
    pnl4: TPanel;
    edt2: TLabel;
    lbledt1: TLabel;
    pnlPrincipal: TPanel;
    SplitView1: TSplitView;
    CategoryButtons1: TCategoryButtons;
    pnl8: TPanel;
    btnSair: TSpeedButton;
    SplitView2: TSplitView;
    pnl9: TPanel;
    lbledt5: TLabel;
    FlowPanel1: TFlowPanel;
    btnCliente: TSpeedButton;
    btnCategoria: TSpeedButton;
    btnSubCategoria: TSpeedButton;
    btnProdutos: TSpeedButton;
    btnUsuarios: TSpeedButton;
    SplitView3: TSplitView;
    pnl10: TPanel;
    lbledt6: TLabel;
    FlowPanel2: TFlowPanel;
    btnRelCategoria: TSpeedButton;
    btnRelFichaDeCliente: TSpeedButton;
    btnRelCliente1: TSpeedButton;
    btnRelFichaDeCliente1: TSpeedButton;
    btnReltProdutosPorCategoria: TSpeedButton;
    btnRelCliente: TSpeedButton;
    SplitView4: TSplitView;
    pnl11: TPanel;
    lbl1: TLabel;
    FlowPanel3: TFlowPanel;
    btnReltProdutosPorCategoria1: TSpeedButton;
    btnRelVendaPorData: TSpeedButton;
    btnAlterarSenha: TSpeedButton;
    SplitView5: TSplitView;
    pnl12: TPanel;
    lbl2: TLabel;
    FlowPanel4: TFlowPanel;
    btnVendasDOIS: TSpeedButton;
    btnCaixaPDV: TSpeedButton;
    procedure btnSairClick(Sender: TObject);
    procedure img1MouseEnter(Sender: TObject);
    procedure img2MouseLeave(Sender: TObject);
    procedure img2Click(Sender: TObject);
    procedure actCadastroExecute(Sender: TObject);
    procedure actVendasExecute(Sender: TObject);
    procedure actRelatoriosExecute(Sender: TObject);
    procedure actGraficoExecute(Sender: TObject);
    procedure actAcoesExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

{$R *.dfm}

procedure TfrmPrincipal.btnSairClick(Sender: TObject);
begin
  inherited;
  Application.Terminate;
end;

// Image

procedure TfrmPrincipal.img1MouseEnter(Sender: TObject);
begin
  img1.Visible := False;
  img2.Visible := True;
end;

procedure TfrmPrincipal.img2MouseLeave(Sender: TObject);
begin
  img1.Visible := True;
  img2.Visible := False;
end;

procedure TfrmPrincipal.img2Click(Sender: TObject);
begin
  if SplitView2.Opened then
     SplitView2.Opened := False;

  if SplitView3.Opened then
     SplitView3.Opened := False;

  if SplitView4.Opened then
     SplitView4.Opened := False;

  if SplitView1.Opened then
     SplitView1.Close
  else
     SplitView1.Open;
end;

// SPLIT VIEWS

procedure TfrmPrincipal.actCadastroExecute(Sender: TObject);
begin
  if SplitView3.Opened then
     SplitView3.Opened := False;

  if SplitView4.Opened then
     SplitView4.Opened := False;

  if SplitView5.Opened then
     SplitView5.Opened := False;

  SplitView2.Opened := not SplitView2.Opened;
end;

procedure TfrmPrincipal.actRelatoriosExecute(Sender: TObject);
begin
  if SplitView2.Opened then
     SplitView2.Opened := False;

  if SplitView4.Opened then
     SplitView4.Opened := False;

  if SplitView5.Opened then
     SplitView5.Opened := False;

  SplitView3.Opened := not SplitView3.Opened;
end;

procedure TfrmPrincipal.actAcoesExecute(Sender: TObject);
begin
  if SplitView2.Opened then
     SplitView2.Opened := False;

  if SplitView3.Opened then
     SplitView3.Opened := False;

  if SplitView5.Opened then
     SplitView5.Opened := False;

  SplitView4.Opened := not SplitView4.Opened;
end;

procedure TfrmPrincipal.actVendasExecute(Sender: TObject);
begin
  if SplitView2.Opened then
     SplitView2.Opened := False;

  if SplitView3.Opened then
     SplitView3.Opened := False;

  if SplitView4.Opened then
     SplitView4.Opened := False;

  SplitView5.Opened := not SplitView5.Opened;
end;

procedure TfrmPrincipal.actGraficoExecute(Sender: TObject);
begin
  if SplitView2.Opened then
     SplitView2.Opened := False;

  if SplitView3.Opened then
     SplitView3.Opened := False;

  if SplitView4.Opened then
     SplitView4.Opened := False;

  if SplitView5.Opened then
     SplitView5.Opened := False;
end;

end.
