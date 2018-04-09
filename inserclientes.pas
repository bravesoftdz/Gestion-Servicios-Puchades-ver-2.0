unit inserclientes;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.ComCtrls,
  Vcl.Grids, Vcl.ToolWin, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, Data.Bind.EngExt,
  Vcl.Bind.DBEngExt, Vcl.Bind.Grid, System.Rtti, System.Bindings.Outputs,
  Vcl.Bind.Editors, Data.Bind.Controls, Data.Bind.Components, Vcl.Buttons,
  Vcl.Bind.Navigator, Data.Bind.Grid, Data.Bind.DBScope;

type
  TFInsertarCliente = class(TForm)
    GridPanel1: TGridPanel;
    GroupBox4: TGroupBox;
    LabeledEdit1: TLabeledEdit;
    LabeledEdit2: TLabeledEdit;
    LabeledEdit3: TLabeledEdit;
    LabeledEdit6: TLabeledEdit;
    LabeledEdit7: TLabeledEdit;
    LabeledEdit8: TLabeledEdit;
    GridPanel2: TGridPanel;
    GroupBox5: TGroupBox;
    Label2: TLabel;
    Label1: TLabel;
    ComboBox1: TComboBox;
    ComboBox2: TComboBox;
    GroupBox2: TGroupBox;
    LabeledEdit4: TLabeledEdit;
    LabeledEdit5: TLabeledEdit;
    GridPanel3: TGridPanel;
    PageControl1: TPageControl;
    datosFacturacion: TTabSheet;
    datoscontactos: TTabSheet;
    GroupBox1: TGroupBox;
    LabeledEdit9: TLabeledEdit;
    LabeledEdit10: TLabeledEdit;
    LabeledEdit11: TLabeledEdit;
    LabeledEdit12: TLabeledEdit;
    LabeledEdit13: TLabeledEdit;
    LabeledEdit14: TLabeledEdit;
    Button1: TButton;
    StringGrid1: TStringGrid;
    fdinsertarClientes: TFDQuery;
    fdadministradores: TFDQuery;
    fdcontactos: TFDQuery;
    BindSourceDB1: TBindSourceDB;
    BindingsList1: TBindingsList;
    LinkGridToDataSourceBindSourceDB1: TLinkGridToDataSource;
    CoolBar1: TCoolBar;
    NavigatorBindSourceDB1: TBindNavigator;
    BindSourceDB2: TBindSourceDB;
    LinkControlToField1: TLinkControlToField;
    LinkControlToField2: TLinkControlToField;
    LinkControlToField3: TLinkControlToField;
    LinkControlToField4: TLinkControlToField;
    LinkControlToField5: TLinkControlToField;
    LinkControlToField6: TLinkControlToField;
    LinkControlToField7: TLinkControlToField;
    LinkControlToField8: TLinkControlToField;
    BindSourceDB3: TBindSourceDB;
    linklistaadministradores: TLinkFillControlToField;
    LinkPropertyToFieldItemIndex: TLinkPropertyToField;
    LinkControlToField9: TLinkControlToField;
    LinkControlToField10: TLinkControlToField;
    LinkControlToField11: TLinkControlToField;
    LinkControlToField12: TLinkControlToField;
    LinkControlToField13: TLinkControlToField;
    LinkControlToField14: TLinkControlToField;
    Panel1: TPanel;
    btaceptar: TButton;
    btcancelar: TButton;
    procedure Button1Click(Sender: TObject);
    procedure btcancelarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btaceptarClick(Sender: TObject);
    procedure PageControl1Changing(Sender: TObject; var AllowChange: Boolean);
    procedure PageControl1Change(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure LabeledEdit10Change(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FInsertarCliente: TFInsertarCliente;

implementation

{$R *.dfm}

uses DModule1;

procedure TFInsertarCliente.btaceptarClick(Sender: TObject);
begin
    if fdinsertarClientes.State in [dsInsert,dsEdit] then
    begin
       fdinsertarClientes.Post;
       btcancelar.Caption:='Cerrar';
    end;
end;

procedure TFInsertarCliente.Button1Click(Sender: TObject);
begin


LabeledEdit10.Text:=LabeledEdit2.text;
LabeledEdit11.Text:=LabeledEdit3.text;
LabeledEdit12.Text:=LabeledEdit6.text;
LabeledEdit13.Text:=LabeledEdit7.text;
LabeledEdit14.Text:=LabeledEdit8.text;


end;

procedure TFInsertarCliente.btcancelarClick(Sender: TObject);
begin
Close;
end;

procedure TFInsertarCliente.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if fdinsertarClientes.State in [dsInsert,dsEdit] then fdinsertarClientes.cancel;
  fdinsertarClientes.close;
  fdadministradores.close;
  fdcontactos.close;
  Action:=caFree;
end;

procedure TFInsertarCliente.FormCreate(Sender: TObject);
begin
     ComboBox1.Clear;
     if not fdadministradores.Active then fdadministradores.Active:=true;

end;

procedure TFInsertarCliente.LabeledEdit10Change(Sender: TObject);
var suma:integer;
begin

end;

procedure TFInsertarCliente.PageControl1Change(Sender: TObject);
begin
 if (PageControl1.ActivePageIndex = 1) and (fdcontactos.Active=false) then
   begin
        fdcontactos.ParamByName('id_cliente').AsInteger:=fdinsertarClientes.FieldByName('idContactos').AsInteger;
        if not fdcontactos.Active then fdcontactos.Active:=true;
    end;
 end;

procedure TFInsertarCliente.PageControl1Changing(Sender: TObject;
  var AllowChange: Boolean);
begin
       if fdinsertarClientes.state in [dsInsert] then AllowChange:=false;

end;

end.