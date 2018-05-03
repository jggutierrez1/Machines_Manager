unit claves_automaticas;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.MySQL,
  FireDAC.Phys.MySQLDef, FireDAC.VCLUI.Wait, FireDAC.Stan.Param, FireDAC.DatS,
  FireDAC.DApt.Intf, FireDAC.DApt, DBGridEh, Vcl.StdCtrls, Vcl.Mask, DBCtrlsEh,
  DBLookupEh, Data.DB, FireDAC.Comp.Client, FireDAC.Comp.DataSet, Vcl.ComCtrls,
  Vcl.Buttons, PngBitBtn, Vcl.ExtCtrls, Vcl.DBCtrls;

type
  Tfclaves_automaticas = class(TForm)
    oConection: TFDConnection;
    oQry_Equipos: TFDTable;
    oDs_Equipos: TDataSource;
    oLst_Equipos: TDBLookupComboboxEh;
    StatusBar1: TStatusBar;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    oBtnExit: TPngBitBtn;
    DBNumberEditEh1: TDBNumberEditEh;
    DBNumberEditEh2: TDBNumberEditEh;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    DBDateTimeEditEh1: TDBDateTimeEditEh;
    DBDateTimeEditEh2: TDBDateTimeEditEh;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    DBEdit1: TDBEdit;
    Shape1: TShape;
    procedure oBtnExitClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fclaves_automaticas: Tfclaves_automaticas;

implementation

uses utilesv20;
{$R *.dfm}

procedure Tfclaves_automaticas.FormShow(Sender: TObject);
begin
  freeandnil(oConection);
  // self.ResizeKit1.Enabled := utiles.Ctrl_Resize;
  self.PageControl1.ActivePageIndex := 0;
  self.oQry_Equipos.Connection := futilesv20.oPublicCnn;
  self.oQry_Equipos.Active := true;
  self.oDs_Equipos.Enabled := true;
  self.oQry_Equipos.First;
  self.oLst_Equipos.Value := self.oQry_Equipos.FieldByName('id').Value;
end;

procedure Tfclaves_automaticas.oBtnExitClick(Sender: TObject);
begin
  close;
end;

end.
