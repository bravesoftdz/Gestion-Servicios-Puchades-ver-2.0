unit navegador;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ComCtrls;

type
  Tfnavegador = class(TForm)
    TreeView1: TTreeView;
    procedure FormCreate(Sender: TObject);
    procedure TreeView1DblClick(Sender: TObject);
  private
    { Private declarations }
    procedure NodosClientes;
  public
    { Public declarations }
  end;

var
  fnavegador: Tfnavegador;

implementation

{$R *.dfm}

uses listaclientes, FPrincipal;

procedure Tfnavegador.FormCreate(Sender: TObject);

begin
    NodosClientes;
end;

procedure Tfnavegador.NodosClientes;
var node1:TTreeNode;
begin
     TreeView1.Items.Clear;
     node1:=TreeView1.Items.Add(nil,'Clientes');
     TreeView1.Items.AddChild(node1,'Lista Clientes');
     TreeView1.Items.AddChild(node1,'A�adir Cliente');
     TreeView1.Items.AddChild(node1,'Editar Clientes');
     TreeView1.AutoExpand:=true;
end;

procedure Tfnavegador.TreeView1DblClick(Sender: TObject);
var listaclientes:TlistClientes;
begin
    if (Sender is TTreeView) then
    begin
       if (Sender as TTreeView).Selected.Text='Lista Clientes' then
       begin
            listaclientes:=TlistClientes.Create(principal);
            listaclientes.Width:=principal.Panel1.Width-10;
            listaclientes.Show;
            listaclientes.ManualDock(principal.PageControl2);
       end;
    end;
end;

end.