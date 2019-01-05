unit U_Principal;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.TabControl,
  FMX.Controls.Presentation, FMX.StdCtrls, FMX.Objects, FMX.Edit, FMX.Layouts,
  System.ImageList, FMX.ImgList, System.Actions, FMX.ActnList, FMX.MultiView,
  FMX.ListBox, System.Rtti, System.Bindings.Outputs, Fmx.Bind.Editors,
  Data.Bind.EngExt, Fmx.Bind.DBEngExt, Data.Bind.Components, Data.Bind.DBScope;

type
  TFrm_Principal = class(TForm)
    Pnl_Principal: TPanel;
    TabControl: TTabControl;
    Tab_Login: TTabItem;
    Rect_TabLogin: TRectangle;
    Rect_ImgLogin: TRectangle;
    Image1: TImage;
    Layout_Campos: TLayout;
    Label1: TLabel;
    Edit_Usuario: TEdit;
    Label2: TLabel;
    Edit_Senha: TEdit;
    ImgLst: TImageList;
    TabMain: TTabItem;
    Rect_Botao: TRectangle;
    Btn_Acessar: TButton;
    ActLst: TActionList;
    ActMain: TChangeTabAction;
    Ract_tabMain: TRectangle;
    Layout1: TLayout;
    Img_receita: TImage;
    Img_despesa: TImage;
    Layout2: TLayout;
    Layout3: TLayout;
    Label5: TLabel;
    Label6: TLabel;
    Layout4: TLayout;
    Layout5: TLayout;
    Layout6: TLayout;
    Layout7: TLayout;
    Label3: TLabel;
    Label4: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    ToolBar1: TToolBar;
    Rectangle1: TRectangle;
    MultiView: TMultiView;
    Rect_Menu: TRectangle;
    Img_menu: TImage;
    LstBxMenu: TListBox;
    Lstbx_PnlGerencial: TListBoxItem;
    Lstbx_BtnLanc: TListBoxItem;
    Lstbx_BtnCat: TListBoxItem;
    Lstbx_BtnPerfil: TListBoxItem;
    StyleBook1: TStyleBook;
    Btn_menu: TSpeedButton;
    Tab_Lancamento: TTabItem;
    Rectangle2: TRectangle;
    ToolBar2: TToolBar;
    Rectangle3: TRectangle;
    Btn_VoltarLanc: TSpeedButton;
    Label9: TLabel;
    Layout8: TLayout;
    Label10: TLabel;
    Btn_MesAnterior: TSpeedButton;
    Btn_MesProximo: TSpeedButton;
    LstBx_Lancamentos: TListBox;
    Rectangle4: TRectangle;
    Label11: TLabel;
    Label12: TLabel;
    Layout9: TLayout;
    Layout10: TLayout;
    Label13: TLabel;
    Label14: TLabel;
    ActLanc: TChangeTabAction;
    Tab_Categoria: TTabItem;
    Rectangle5: TRectangle;
    Label15: TLabel;
    Btn_VoltarCat: TSpeedButton;
    Btn_AddCat: TSpeedButton;
    BindSourceDB1: TBindSourceDB;
    BindingsList1: TBindingsList;
    LinkFillControlToField1: TLinkFillControlToField;
    Tab_CadCategoria: TTabItem;
    ActCadCategoria: TChangeTabAction;
    ActCategoria: TChangeTabAction;
    Rectangle6: TRectangle;
    Label16: TLabel;
    Btn_VoltarCadCat: TSpeedButton;
    Btn_salvarCat: TSpeedButton;
    Label17: TLabel;
    Edit_CadCategoria: TEdit;
    LinkControlToField1: TLinkControlToField;
    Lstbx_Categorias: TListBox;
    procedure Btn_AcessarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Lstbx_BtnLancClick(Sender: TObject);
    procedure Lstbx_BtnCatClick(Sender: TObject);
    procedure Lstbx_CategoriasItemClick(const Sender: TCustomListBox;
      const Item: TListBoxItem);
    procedure Btn_AddCatClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_Principal: TFrm_Principal;

implementation

{$R *.fmx}

uses UDM;
{$R *.XLgXhdpiTb.fmx ANDROID}
{$R *.Macintosh.fmx MACOS}
{$R *.SmXhdpiPh.fmx ANDROID}

//  OnCreate do formul�rio.
procedure TFrm_Principal.FormCreate(Sender: TObject);
begin
    TabControl.ActiveTab := Tab_Login;
    TabControl.TabPosition := TTabPosition.None;
end;

//  Bot�o login da tela de login.
procedure TFrm_Principal.Btn_AcessarClick(Sender: TObject);
begin
    ActMain.ExecuteTarget(self);
end;

//  Bot�o para cadastrar uma nova categoria
procedure TFrm_Principal.Btn_AddCatClick(Sender: TObject);
begin
    ActCadCategoria.ExecuteTarget(Self);
end;

//  Bot�o Lancamento do menu
procedure TFrm_Principal.Lstbx_BtnLancClick(Sender: TObject);
begin
    MultiView.Visible := False;
    TabControl.ActiveTab:= Tab_Login;
    ActLanc.ExecuteTarget(Self);
end;

//  Bot�o categoria do menu
procedure TFrm_Principal.Lstbx_BtnCatClick(Sender: TObject);
begin
    ActCategoria.ExecuteTarget(Self);
    MultiView.Visible := False;
end;

//  ItemClick do listbox de categorias
procedure TFrm_Principal.Lstbx_CategoriasItemClick(const Sender: TCustomListBox;
  const Item: TListBoxItem);
begin
//    dm.QRYCategoria.Edit;
    ActCadCategoria.ExecuteTarget(Sender);
end;

end.
