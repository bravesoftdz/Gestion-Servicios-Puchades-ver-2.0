unit listaclientes;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ComCtrls, System.Rtti,
  System.Bindings.Outputs, Vcl.Bind.Editors, Data.Bind.EngExt,
  Vcl.Bind.DBEngExt, Data.Bind.Components, Data.Bind.DBScope, Vcl.StdCtrls,DB,
  Vcl.ExtCtrls, Vcl.ToolWin, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client;

type
  Tlistclientes = class(TForm)
    ListView1: TListView;
    BindSourceDB1: TBindSourceDB;
    BindingsList1: TBindingsList;
    cbAgruparAdmin: TCheckBox;
    LinkListControlToField1: TLinkListControlToField;
    LinkControlToPropertyGroupView: TLinkControlToProperty;
    Panel1: TPanel;
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    beBuscar: TButtonedEdit;
    Label1: TLabel;
    GroupBox4: TGroupBox;
    cbOrdenarC: TCheckBox;
    ControlBar1: TControlBar;
    ToolBar1: TToolBar;
    procedure FormCreate(Sender: TObject);
    procedure cbAgruparAdminClick(Sender: TObject);
    procedure beBuscarChange(Sender: TObject);
    procedure cbOrdenarCClick(Sender: TObject);
    procedure ListView1DblClick(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  listclientes: Tlistclientes;

implementation

{$R *.dfm}

uses DModule1, clientes, FPrincipal;

procedure Tlistclientes.beBuscarChange(Sender: TObject);
var li:TListItem;
begin
li:=listview1.FindCaption(0,beBuscar.Text,true,true,false);
if li <> nil then
      begin
      listview1.Selected:=li;
      li.MakeVisible(True);
      end
else     showmessage('No existen resultados.');
end;

procedure Tlistclientes.cbAgruparAdminClick(Sender: TObject);
begin

   if (cbAgruparAdmin.Checked) and not (LinkListControlToField1.FillHeaderFieldName='nombreapellidos') then
   begin
      LinkListControlToField1.Active:=false;
      cbOrdenarC.Checked:=false;
      cbOrdenarC.Enabled:=true;
      LinkListControlToField1.FillHeaderFieldName:='nombreapellidos';
      DataModule1.fdClientes.IndexFieldNames:='';
      DataModule1.fdClientes.IndexesActive:=false;
      listview1.Clear;
      LinkListControlToField1.Active:=true;
   end
   else listview1.GroupView:=true;


end;

procedure Tlistclientes.cbOrdenarCClick(Sender: TObject);
begin
   if (Sender as TCheckBox).Checked then
   begin
        listview1.GroupView:=false;
        cbAgruparAdmin.Checked:=listview1.GroupView;
        LinkListControlToField1.Active:=false;
        LinkListControlToField1.FillHeaderFieldName:='';
        DataModule1.fdClientes.IndexFieldNames:='nombre';
        DataModule1.fdClientes.indexesActive:=true;
       cbOrdenarC.Enabled:=false;
        LinkListControlToField1.Active:=true;
   end;
end;

procedure Tlistclientes.FormCreate(Sender: TObject);
begin
     cbAgruparAdmin.Checked:=listview1.GroupView;
     cbOrdenarC.Checked:=false;
     DataModule1.fdClientes.Active:=true;
end;



procedure Tlistclientes.ListView1DblClick(Sender: TObject);
var cliente:TFclientes;
begin
     cliente:=TFclientes.Create(Self);
     cliente.Show;
     cliente.ManualDock(principal.PageControl2);
end;

end.
