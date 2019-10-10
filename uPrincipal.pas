unit uPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus, uDTMConexao, Enter;

type
  TfrmPrincipal = class(TForm)
    mainPrincipal: TMainMenu;
    Cadastro1: TMenuItem;
    MOVIMENTAO1: TMenuItem;
    RELATRIOS1: TMenuItem;
    CLIENTES1: TMenuItem;
    N1: TMenuItem;
    CATEGORIA1: TMenuItem;
    PRODUTO1: TMenuItem;
    N2: TMenuItem;
    mnFechar: TMenuItem;
    VENDAS1: TMenuItem;
    CLIENTES2: TMenuItem;
    N3: TMenuItem;
    PRODUTO2: TMenuItem;
    N4: TMenuItem;
    VENDAPORDATA1: TMenuItem;
    procedure mnFecharClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure CATEGORIA1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
    TeclaEnter: TMREnter; //andar no proj. apertando ENTER do teclado
  public
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

{$R *.dfm}

uses uCadCategorias;


procedure TfrmPrincipal.CATEGORIA1Click(Sender: TObject);
begin
  frmCadCategoria := TfrmCadCategoria.create(self); //cria na memoria
  frmCadCategoria.showModal; // mostra na tela
  frmCadCategoria.Release;  //limpa formulario da memoria

end;

procedure TfrmPrincipal.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  //Necessidade de destruir aplicação ao fechar tela principal
  FreeAndNil(TeclaEnter);
  FreeAndNil(dtmPrincipal);
end;

procedure TfrmPrincipal.FormCreate(Sender: TObject);
begin

  dtmPrincipal := TdtmPrincipal.Create(self); //self = formulário

  with dtmPrincipal.conexaoDB do begin
    SQLHourGlass := true; //mudar ampulienta quando tiver conxão no banco
    Protocol := 'mssql';
    LibraryLocation := 'G:\NOTEBOOK\TOTVS\Documentos\Embarcadero\Studio\Projects\ProjetoDelphi\ntwdblib.dll';
    HostName := 'DESKTOP-CLKPL43';
    Port := 1433;
    User := 'sa';
    Password := 'sa';
    Database := 'VENDAS';
    Connected := true;    //conexão com o banco de dados
  end;

  TeclaEnter := TMREnter.Create(self);
  TeclaEnter.FocusEnabled := true;  //focusEnable controla cor
  TeclaEnter.FocusColor := clinfoBk; //Amarelo Claro
end;

procedure TfrmPrincipal.mnFecharClick(Sender: TObject);
begin
  //Close;
  Application.Terminate;
end;

end.
