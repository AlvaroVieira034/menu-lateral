program MenuLateral;

uses
  Vcl.Forms,
  umain in 'View\umain.pas' {FrmMain},
  ucadastropadrao in 'View\ucadastropadrao.pas' {FrmCadastroPadrao};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFrmMain, FrmMain);
  Application.Run;
end.
