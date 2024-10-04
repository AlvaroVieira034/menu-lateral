unit ucadastropadrao;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls;

type
  TFrmCadastroPadrao = class(TForm)
    PnlTopo: TPanel;
    BtnInserir: TSpeedButton;
    BtnAlterar: TSpeedButton;
    BtnExcluir: TSpeedButton;
    BtnGravar: TSpeedButton;
    BtnCancelar: TSpeedButton;
    BtnSair: TSpeedButton;
    PnlFundo: TPanel;
    PnlDados: TPanel;
    GrbDados: TGroupBox;
    PnlGrid: TPanel;
    GrbGrid: TGroupBox;
    LblTotRegistros: TLabel;
    procedure BtnSairClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure ButtonMouseEnter(Sender: TObject);
    procedure ButtonMouseLeave(Sender: TObject);
  private
    procedure ConfigureButton(Button: TSpeedButton; const ACaption: string);
  public
    { Public declarations }
  end;

var
  FrmCadastroPadrao: TFrmCadastroPadrao;

implementation

{$R *.dfm}


procedure TFrmCadastroPadrao.FormCreate(Sender: TObject);
begin
  // Configura os bot�es com a cor padr�o do texto
  ConfigureButton(BtnInserir, 'Incluir');
  ConfigureButton(BtnAlterar, 'Alterar');
  ConfigureButton(BtnExcluir, 'Excluir');
  ConfigureButton(BtnExcluir, 'Gravar');
  ConfigureButton(BtnExcluir, 'Cancelar');
  ConfigureButton(BtnSair, 'Sair');
end;

procedure TFrmCadastroPadrao.ConfigureButton(Button: TSpeedButton; const ACaption: string);
begin
  Button.Caption := ACaption;
  Button.Flat := True; // Deixa o bot�o sem borda
  Button.Transparent := True; // Deixa o bot�o invis�vel (somente o texto aparece)
  Button.Font.Color := clBlack; // Define a cor padr�o do texto
  Button.OnMouseEnter := ButtonMouseEnter; // Define o evento OnMouseEnter
  Button.OnMouseLeave := ButtonMouseLeave; // Define o evento OnMouseLeave
end;

procedure TFrmCadastroPadrao.ButtonMouseEnter(Sender: TObject);
begin
  (Sender as TSpeedButton).Font.Color := clBlue; // Altera a cor do texto ao passar o mouse
end;

procedure TFrmCadastroPadrao.ButtonMouseLeave(Sender: TObject);
begin
  (Sender as TSpeedButton).Font.Color := clBlack; // Restaura a cor padr�o do texto ao retirar o mouse
end;

procedure TFrmCadastroPadrao.BtnSairClick(Sender: TObject);
begin
  Close;
end;

end.
