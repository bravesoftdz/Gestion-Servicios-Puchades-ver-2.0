unit listapresupuestos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ComCtrls, System.Rtti,
  System.Bindings.Outputs, Vcl.Bind.Editors, Data.Bind.EngExt,System.StrUtils ,
  Vcl.Bind.DBEngExt, Data.Bind.Components, Data.Bind.DBScope, Vcl.StdCtrls,DB,
  Vcl.ExtCtrls, Vcl.ToolWin, FireDAC.Stan.Intf, FireDAC.Stan.Option, System.DateUtils ,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, Vcl.Grids, Vcl.DBGrids;

type
  Tlistpresupuestos = class(TForm)
    ListView1: TListView;
    Panel1: TPanel;
    GroupBox2: TGroupBox;
    beBuscar: TButtonedEdit;
    GroupBox4: TGroupBox;
    CoolBar1: TCoolBar;
    GroupBox1: TGroupBox;
    cbaprobado: TCheckBox;
    cbnombre: TCheckBox;
    DateTimePicker1: TDateTimePicker;
    DateTimePicker2: TDateTimePicker;
    Label2: TLabel;
    Label3: TLabel;
    BindSourceDB1: TBindSourceDB;
    BindingsList1: TBindingsList;
    LinkListControlToField1: TLinkListControlToField;
    rbcliente: TRadioButton;
    rbnumero: TRadioButton;
    Button1: TButton;
    procedure FormCreate(Sender: TObject);
    procedure cbAgruparAdminClick(Sender: TObject);
    procedure beBuscarChange(Sender: TObject);
    procedure cbOrdenarCClick(Sender: TObject);
    procedure ListView1DblClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure cbaprobadoClick(Sender: TObject);
    procedure ListView1ColumnClick(Sender: TObject; Column: TListColumn);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  listpresupuestos: Tlistpresupuestos;
  function BuscarSubItem(lv: TListView; const S: string; column: Integer): TListItem;


implementation

{$R *.dfm}

uses DModule1, clientes, FPrincipal;

procedure Tlistpresupuestos.beBuscarChange(Sender: TObject);
var li:TListItem;
begin
   if rbnumero.Checked then
     begin
     li:=listview1.FindCaption(0,beBuscar.Text,true,true,false);
     if li <> nil then
         begin
         listview1.Selected:=li;
         li.MakeVisible(True);
         end
     else     showmessage('No existen resultados.');
    end;

     if rbcliente.Checked then
     begin

    li:=BuscarSubItem(listView1,beBuscar.Text,1);
     if li <> nil then
         begin
         listview1.Selected:=li;
         li.MakeVisible(True);
         end
     else     showmessage('No existen resultados.');
    end;


end;

function BuscarSubItem(lv: TListView; const S: string; column: Integer): TListItem;
var
  i: Integer;
  found: Boolean; s1:string;
begin
  for i := 0 to lv.Items.Count - 1 do
  begin
    Result := lv.Items[i];
    s1:=LeftStr(Result.SubItems[column - 1],Length(S));
    found:=AnsicompareStr(S,s1)=0;

    if found then
      Exit;
  end;

  Result := nil;
end;


procedure Tlistpresupuestos.Button1Click(Sender: TObject);
var SQLstr,SQLstr2:string;
begin
 LinkListControlToField1.Active:=false;
 SQLstr:='Select C.nombre, P.Id_ClientePrev, P.id_presupuesto, P.descripcion, P.Aprovado, P.FechaPresupuesto, P.Total, P.TotalAprobado ';
 SQLstr2:='From presupuestos P, clientes C where C.idContactos=P.id_ClientePrev and P.FechaPresupuesto>=:FechaIni and P.FechaPresupuesto<=:FechaFin';
 DataModule1.fdpresupuestos.Close;
 DataModule1.fdpresupuestos.SQL.Clear;
 DataModule1.fdpresupuestos.SQL.Add(SQLstr+SQLstr2);
 DataModule1.fdpresupuestos.ParamByName('FechaIni').AsDateTime:=DateTimePicker1.DateTime;
 DataModule1.fdpresupuestos.ParamByName('FechaFin').AsDateTime:=DateTimePicker2.DateTime;
 DataModule1.fdpresupuestos.Active:=true;
 LinkListControlToField1.Active:=true;


end;

procedure Tlistpresupuestos.cbAgruparAdminClick(Sender: TObject);
begin

   {if (cbAgruparAdmin.Checked) and not (LinkListControlToField1.FillHeaderFieldName='nombreapellidos') then
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

                   }
end;

procedure Tlistpresupuestos.cbaprobadoClick(Sender: TObject);
begin
     if (Sender as TCheckBox).Checked then
   begin

        LinkListControlToField1.Active:=false;
        DataModule1.fdpresupuestos.Filter:='aprovado=True';
        DataModule1.fdpresupuestos.Filtered:=true;
        LinkListControlToField1.Active:=true;
   end
   else begin
        LinkListControlToField1.Active:=false;
        DataModule1.fdpresupuestos.Filtered:=false;
        DataModule1.fdpresupuestos.Filter:='';
        LinkListControlToField1.Active:=true;
        end;

end;

procedure Tlistpresupuestos.cbOrdenarCClick(Sender: TObject);
begin
   if (Sender as TCheckBox).Checked then
   begin


   end;
end;

procedure Tlistpresupuestos.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
DataModule1.fdpresupuestos.Active:=false;
Action:=cafree;
end;

procedure Tlistpresupuestos.FormCreate(Sender: TObject);
begin
     DateTimePicker1.Date:=StrToDate('01/01/'+IntToStr(YearOf(Date)));
     DateTimePicker2.Date:=Date;
     rbcliente.checked:=true;
     DataModule1.fdpresupuestos.Active:=true;
end;



procedure Tlistpresupuestos.ListView1ColumnClick(Sender: TObject;
  Column: TListColumn);
begin
        if Column.Caption='Cliente' then
        begin
        LinkListControlToField1.Active:=false;
        DataModule1.fdpresupuestos.IndexFieldNames:='nombre';
        DataModule1.fdpresupuestos.indexesActive:=true;
        LinkListControlToField1.Active:=true;
        end;

        if Column.Caption='Fecha' then
        begin
        LinkListControlToField1.Active:=false;
        DataModule1.fdpresupuestos.IndexFieldNames:='FechaPresupuesto';
        DataModule1.fdpresupuestos.indexesActive:=true;
        LinkListControlToField1.Active:=true;
        end;

        if Column.Caption='N� Presupuesto' then
        begin
        LinkListControlToField1.Active:=false;
        DataModule1.fdpresupuestos.IndexFieldNames:='id_presupuesto';
        DataModule1.fdpresupuestos.indexesActive:=true;
        LinkListControlToField1.Active:=true;
        end;


end;

procedure Tlistpresupuestos.ListView1DblClick(Sender: TObject);

begin
     DataModule1.editarpresupuestoExecute(DataModule1.fdpresupuestos);
end;

end.
