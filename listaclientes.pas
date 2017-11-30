unit listaclientes;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ComCtrls, System.Rtti,
  System.Bindings.Outputs, Vcl.Bind.Editors, Data.Bind.EngExt,
  Vcl.Bind.DBEngExt, Data.Bind.Components, Data.Bind.DBScope, Vcl.StdCtrls,DB,
  Vcl.ExtCtrls;

type
  Tlistclientes = class(TForm)
    ListView1: TListView;
    BindSourceDB1: TBindSourceDB;
    BindingsList1: TBindingsList;
    LinkListControlToField1: TLinkListControlToField;
    beBuscar: TButtonedEdit;
    cbAgruparAdmin: TCheckBox;
    procedure FormCreate(Sender: TObject);
    procedure cbAgruparAdminClick(Sender: TObject);
    procedure beBuscarChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  listclientes: Tlistclientes;

implementation

{$R *.dfm}

uses DModule1;

procedure Tlistclientes.beBuscarChange(Sender: TObject);
begin
DataModule1.fdclientes.Locate('nombre',beBuscar.Text,[loPartialKey]);
end;

procedure Tlistclientes.cbAgruparAdminClick(Sender: TObject);
begin
listView1.GroupView:=cbAgruparAdmin.Checked;
end;

procedure Tlistclientes.FormCreate(Sender: TObject);
begin
cbAgruparAdmin.Checked:=listview1.GroupView;
end;

end.
