unit listaobras;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.Bind.EngExt, Vcl.Bind.DBEngExt,
  System.Rtti, System.Bindings.Outputs, Vcl.Bind.Editors, Data.Bind.Components,System.DateUtils,
  Data.Bind.DBScope, Vcl.StdCtrls, Vcl.ToolWin, Vcl.ComCtrls, Vcl.ExtCtrls;

type
  Tlistobras = class(TForm)
    ListView1: TListView;
    Panel1: TPanel;
    GroupBox2: TGroupBox;
    beBuscar: TButtonedEdit;
    rbcliente: TRadioButton;
    rbnumero: TRadioButton;
    GroupBox4: TGroupBox;
    Label2: TLabel;
    Label3: TLabel;
    DateTimePicker1: TDateTimePicker;
    DateTimePicker2: TDateTimePicker;
    Button1: TButton;
    CoolBar1: TCoolBar;
    GroupBox1: TGroupBox;
    GroupBox3: TGroupBox;
    Label1: TLabel;
    Label4: TLabel;
    DateTimePicker3: TDateTimePicker;
    DateTimePicker4: TDateTimePicker;
    Button2: TButton;
    BindSourceDB1: TBindSourceDB;
    BindingsList1: TBindingsList;
    LinkFillControlToField1: TLinkFillControlToField;
    rbEjecutado: TRadioButton;
    rbNoEjecutado: TRadioButton;
    rbTodas: TRadioButton;
    procedure FormCreate(Sender: TObject);
    procedure beBuscarChange(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure ListView1ColumnClick(Sender: TObject; Column: TListColumn);
    procedure rbEjecutadoClick(Sender: TObject);
    procedure rbNoEjecutadoClick(Sender: TObject);
    procedure rbTodasClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  listobras: Tlistobras;

implementation

{$R *.dfm}

uses DModule1;

procedure Tlistobras.beBuscarChange(Sender: TObject);
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

    li:=DataModule1.BuscarSubItem(listView1,beBuscar.Text,1);
     if li <> nil then
         begin
         listview1.Selected:=li;
         li.MakeVisible(True);
         end
     else     showmessage('No existen resultados.');
    end;
end;


procedure Tlistobras.Button1Click(Sender: TObject);
var SQLstr,SQLstr2:string;
begin
LinkFillControlToField1.Active:=false;
 SQLstr:='Select C.nombre, O.Id_Cliente, O.id_Obra, O.descripcion, O.Ejecutado, O.FechaComienzo, O.ImporteObra, O.FechaFin ';
 SQLstr2:='From obras O, clientes C where C.idContactos=O.id_Cliente and O.FechaComienzo>=:FechaIni and O.FechaComienzo<=:FechaFin';
 DataModule1.fdObras.Close;
 DataModule1.fdObras.SQL.Clear;
 DataModule1.fdObras.SQL.Add(SQLstr+SQLstr2);
 DataModule1.fdObras.ParamByName('FechaIni').AsDateTime:=DateTimePicker1.DateTime;
 DataModule1.fdObras.ParamByName('FechaFin').AsDateTime:=DateTimePicker2.DateTime;
 DataModule1.fdObras.Active:=true;
 LinkFillControlToField1.Active:=true;
end;

procedure Tlistobras.Button2Click(Sender: TObject);
var SQLstr,SQLstr2:string;
begin
LinkFillControlToField1.Active:=false;
 SQLstr:='Select C.nombre, O.Id_Cliente, O.id_Obra, O.descripcion, O.Ejecutado, O.FechaComienzo, O.ImporteObra, O.FechaFin ';
 SQLstr2:='From obras O, clientes C where C.idContactos=O.id_Cliente and O.FechaFin>=:FechaIni and O.FechaFin<=:FechaFin';
 DataModule1.fdObras.Close;
 DataModule1.fdObras.SQL.Clear;
 DataModule1.fdObras.SQL.Add(SQLstr+SQLstr2);
 DataModule1.fdObras.ParamByName('FechaIni').AsDateTime:=DateTimePicker3.DateTime;
 DataModule1.fdObras.ParamByName('FechaFin').AsDateTime:=DateTimePicker4.DateTime;
 DataModule1.fdObras.Active:=true;
 LinkFillControlToField1.Active:=true;
end;


procedure Tlistobras.FormCreate(Sender: TObject);
begin
     DateTimePicker1.Date:=Date;
     DateTimePicker2.Date:=Date;
     DateTimePicker3.Date:=Date;
     DateTimePicker4.Date:=Date;

     rbcliente.checked:=true;
     DataModule1.fdobras.Active:=true;
end;

procedure Tlistobras.ListView1ColumnClick(Sender: TObject; Column: TListColumn);
begin
  if Column.Caption='Cliente' then
        begin
        LinkFillControlToField1.Active:=false;
        DataModule1.fdObras.IndexFieldNames:='nombre';
        DataModule1.fdObras.indexesActive:=true;
        LinkFillControlToField1.Active:=true;
        end;

        if Column.Caption='Fecha Comienzo' then
        begin
        LinkFillControlToField1.Active:=false;
        DataModule1.fdObras.IndexFieldNames:='FechaComienzo';
        DataModule1.fdObras.indexesActive:=true;
        LinkFillControlToField1.Active:=true;
        end;

         if Column.Caption='Fecha Fin' then
        begin
        LinkFillControlToField1.Active:=false;
        DataModule1.fdObras.IndexFieldNames:='FechaFin';
        DataModule1.fdObras.indexesActive:=true;
        LinkFillControlToField1.Active:=true;
        end;

        if Column.Caption='N� Obra' then
        begin
        LinkFillControlToField1.Active:=false;
        DataModule1.fdObras.IndexFieldNames:='id_Obra';
        DataModule1.fdObras.indexesActive:=true;
        LinkFillControlToField1.Active:=true;
        end;
end;

procedure Tlistobras.rbEjecutadoClick(Sender: TObject);
begin
    if rbEjecutado.Checked then
       begin
       LinkFillControlToField1.Active:=false;
       DataModule1.fdobras.filter:= 'Ejecutado=True';
       DataModule1.fdobras.filtered:=True;
       LinkFillControlToField1.Active:=True;
       end;

end;

procedure Tlistobras.rbNoEjecutadoClick(Sender: TObject);
begin
       if rbNoEjecutado.Checked then
       begin
       LinkFillControlToField1.Active:=false;
       DataModule1.fdobras.filter:= 'Ejecutado=False';
       DataModule1.fdobras.filtered:=True;
       LinkFillControlToField1.Active:=True;
       end;
end;

procedure Tlistobras.rbTodasClick(Sender: TObject);
begin
      if rbTodas.Checked then
       begin
       LinkFillControlToField1.Active:=false;
       DataModule1.fdobras.filtered:=False;
       LinkFillControlToField1.Active:=True;
       end;

end;

end.