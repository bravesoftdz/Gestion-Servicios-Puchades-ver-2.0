unit facturas;

interface

uses
    Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.ComCtrls,
  Vcl.Buttons, Vcl.Grids, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, System.Rtti,
  System.Bindings.Outputs, Vcl.Bind.Editors, Data.Bind.EngExt,
  Vcl.Bind.DBEngExt, Data.Bind.Components, Data.Bind.DBScope, Vcl.Bind.Grid,
  Data.Bind.Grid, Vcl.ToolWin,shellapi, System.Actions,System.DateUtils,
  Vcl.ActnList, Vcl.PlatformDefaultStyleActnCtrls, Vcl.ActnMan,System.Win.COMObj,
  Vcl.DBGrids, Vcl.Bind.Navigator, Data.Bind.Controls, Vcl.StdActns, Vcl.ImgList,
  System.ImageList, ShellCtrls, RzPanel, RzDBNav, RzDBGrid, rDBGrid, rDBGrid_MS,
  Vcl.Mask, Vcl.DBCtrls, rDBComponents;


type
  TStado=(mInsertar,mEditar);

  TFFacturas = class(TForm)
    Panel1: TPanel;
    GroupBox1: TGroupBox;
    GroupBox4: TGroupBox;
    GroupBox2: TGroupBox;
    PageControl1: TPageControl;
    lineas: TTabSheet;
    fdCliente: TFDQuery;
    fdfacturas: TFDQuery;
    fdlineas: TFDQuery;
    ControlBar2: TControlBar;
    dialruta: TOpenDialog;
    ToolBar1: TToolBar;
    ToolButton1: TToolButton;
    ToolButton2: TToolButton;
    ToolButton3: TToolButton;
    ToolButton4: TToolButton;
    ToolButton5: TToolButton;
    ToolButton6: TToolButton;
    ToolButton7: TToolButton;
    ToolButton8: TToolButton;
    ToolButton9: TToolButton;
    ToolButton10: TToolButton;
    Label7: TLabel;
    BTBuscarCliente: TButton;
    Label9: TLabel;
    Shape2: TShape;
    ToolBar2: TToolBar;
    ImageList1: TImageList;
    ActionManager2: TActionManager;
    ToolButton11: TToolButton;
    EditCopy: TEditCopy;
    EditCut: TEditCut;
    EditPaste: TEditPaste;
    ToolButton12: TToolButton;
    ToolButton13: TToolButton;
    AprobarTodos: TAction;
    Label12: TLabel;
    GroupBox3: TGroupBox;
    GroupBox5: TGroupBox;
    Shape1: TShape;
    Guardar: TButton;
    Aceptar: TButton;
    cerrar: TButton;
    fdClienteidcontactos: TFDAutoIncField;
    fdClientenombre: TStringField;
    fdClientecif: TStringField;
    fdClientefamilia: TIntegerField;
    bndngslst1: TBindingsList;
    fdfacturasidFactura: TIntegerField;
    fdfacturasidCliente: TIntegerField;
    fdfacturasFechaFactura: TDateTimeField;
    fdfacturasConcepto: TMemoField;
    fdfacturasTotalBruto: TFloatField;
    fdfacturasIva: TSmallintField;
    fdfacturasTotal: TFloatField;
    fdfacturasEmisorFactura: TIntegerField;
    fdfacturaspagada: TBooleanField;
    fdfacturasano: TIntegerField;
    dsFacturas: TDataSource;
    dsCliente: TDataSource;
    fdlineasid_lineafactura: TFDAutoIncField;
    fdlineasdescripcion: TStringField;
    fdlineastotal: TFloatField;
    fdlineasfacturas_ano: TIntegerField;
    fdlineasfacturas_idfactura: TIntegerField;
    fdlineascantidad: TFloatField;
    fdlineasimporte: TFloatField;
    fdlineasiva: TFloatField;
    FDSchemaAdapter1: TFDSchemaAdapter;
    RzDBNavigator1: TRzDBNavigator;
    dslineas: TDataSource;
    rDBGridClientes1: TrDBGrid_MS;
    fdlineasdescuento: TIntegerField;
    mfldfdfacturasobservaciones: TMemoField;
    rDBEdit1: TrDBEdit;
    rDBEdit2: TrDBEdit;
    rDBEdit3: TrDBEdit;
    rDBEdit4: TrDBEdit;
    rDBEdit5: TrDBEdit;
    rDBEdit6: TrDBEdit;
    rDBEdit7: TrDBEdit;
    rDBDateTimePicker1: TrDBDateTimePicker;
    rDBEdit8: TrDBEdit;
    rDBEdit9: TrDBEdit;
    rDBMemoEx1: TrDBMemoEx;
    fdfacturascantidad: TIntegerField;
    fltfldIVA: TFloatField;
    rDBEdit10: TrDBEdit;
    procedure GuardarClick(Sender: TObject);

    procedure cerrarClick(Sender: TObject);
  
   
    procedure cerrarpresExecute(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BTBuscarClienteClick(Sender: TObject);
    procedure fdfacturasAfterInsert(DataSet: TDataSet);
    procedure fdlineasAfterOpen(DataSet: TDataSet);
    procedure fdlineasimporteChange(Sender: TField);
    procedure fdlineascantidadChange(Sender: TField);
    procedure fdfacturasTotalBrutoChange(Sender: TField);
    procedure fdlineasAfterInsert(DataSet: TDataSet);
    procedure fdlineasAfterPost(DataSet: TDataSet);
    procedure FDSchemaAdapter1BeforeApplyUpdate(Sender: TObject);
    procedure FDSchemaAdapter1AfterApplyUpdate(Sender: TObject);
    procedure AceptarClick(Sender: TObject);
    procedure fdlineasAfterEdit(DataSet: TDataSet);
    procedure fdlineasAfterDelete(DataSet: TDataSet);
    procedure fdfacturasAfterEdit(DataSet: TDataSet);
    procedure fdfacturasAfterDelete(DataSet: TDataSet);
    procedure fdlineasBeforeInsert(DataSet: TDataSet);
    procedure fdlineasdescuentoChange(Sender: TField);



    
  private
    { Private declarations }


  public
    { Public declarations }
    RowAct:integer;
    cargando:boolean;
    estado:TDataSetState;
   
    procedure luces(aprobado:boolean);

  end;



var
  FFacturas: TFFacturas;

implementation

{$R *.dfm}

uses DModule1, listaclientes, SelectLineasPresupuestos;


 procedure TFFacturas.luces(aprobado:boolean);
 begin
    
 end;








procedure TFFacturas.AceptarClick(Sender: TObject);
begin
Guardar.Click;
Close;
end;

procedure TFFacturas.BTBuscarClienteClick(Sender: TObject);
var lclientes:Tlistclientes; fdclen:TfdQuery;
begin



fdclen:=TFDQuery.Create(Sender as TControl);
    fdclen.Connection:=DataModule1.FDConnection1;
    fdclen.SQL.Add('Select c.idContactos, c.nombre, c.CIF, c.direccion, c.CodigoPostal, c.Ciudad, a.nombreapellidos,c.idAdministrador from clientes c, administradores a where c.idAdministrador=a.idAdministrador order by c.idAdministrador,c.nombre');
    fdclen.IndexFieldNames:='idAdministrador;nombre';
    fdclen.Active:=true;

    lclientes:=Tlistclientes.Create(fdclen);
    lclientes.DragMode:=dmManual;
    lclientes.ShowModal;

    fdcliente.Close;
    fdcliente.ParamByName('id_cliente').AsInteger:=fdclen.FieldByName('IdContactos').AsInteger;
    fdcliente.Active:=true;
    fdclen.Close;

    if fdfacturas.State in [dsInsert,dsEdit] then
    begin
         FDfacturas.FieldByName('Idcliente').AsInteger:=FDCliente.FieldByName('IdContactos').AsInteger
    end
    else begin
              fdfacturas.Edit;
              FDfacturas.FieldByName('Idcliente').AsInteger:=FDCliente.FieldByName('IdContactos').AsInteger;
              fdfacturas.Post;
         end;
    Self.Caption:='F. '+fdfacturas.FieldByName('idfactura').AsString+ ' - ' +fdfacturas.FieldByName('ano').AsString+' '+fdCliente.FieldByName('nombre').Asstring;

end;

procedure TFFacturas.cerrarClick(Sender: TObject);
begin
   if (fdfacturas.UpdatesPending) or (fdlineas.UpdatesPending)  then
       if Application.MessageBox('�Guardar los cambios en la factura?','Guardar',MB_YESNO)=IDYES then
       begin
           Close;
       end
       else begin
            FDSchemaAdapter1.CancelUpdates;
            end;
       Close;
end;


procedure TFFacturas.cerrarpresExecute(Sender: TObject);
begin
cerrarClick(Sender);
end;







procedure TFFacturas.fdfacturasAfterDelete(DataSet: TDataSet);
begin
Guardar.Enabled:=true;
Shape1.Brush.Color:=cllime;
end;

procedure TFFacturas.fdfacturasAfterEdit(DataSet: TDataSet);
begin
  Guardar.Enabled:=true;
Shape1.Brush.Color:=cllime;
end;

procedure TFFacturas.fdfacturasAfterInsert(DataSet: TDataSet);
begin
fdfacturasidFactura.Value:=-200;
fdfacturasidCliente.Value:=fdClienteidcontactos.Value;
fdfacturasFechaFactura.Value:=Date;
fdfacturasano.Value:=YearOf(Date);
fdfacturasEmisorFactura.Value:=0;
fdfacturaspagada.Value:=False;
fdfacturasIva.Value:=Trunc((DataModule1.IVA(fdClientefamilia.value)-1)*100);
fdfacturasTotal.Value:=0;
fdfacturasTotalBruto.Value:=0;
fdfacturasConcepto.Value:='Concepto';


Guardar.Enabled:=true;
Shape1.Brush.Color:=cllime;
GroupBox2.Enabled:=True;
end;

procedure TFFacturas.fdfacturasTotalBrutoChange(Sender: TField);
begin
fltfldIVA.asfloat:=fdfacturasTotalBruto.asfloat*(fdfacturasIva.asfloat/100);
fdfacturasTotal.asfloat:=fdfacturasTotalBruto.asfloat*(fdfacturasIva.asfloat/100)+fdfacturasTotalBruto.asfloat;
end;

procedure TFFacturas.fdlineasAfterDelete(DataSet: TDataSet);
begin
rDBGridClientes1.RecalculateSummaryResults(true);
end;

procedure TFFacturas.fdlineasAfterEdit(DataSet: TDataSet);
begin
Guardar.Enabled:=true;
Shape1.Brush.Color:=cllime;
end;

procedure TFFacturas.fdlineasAfterInsert(DataSet: TDataSet);
begin


Guardar.Enabled:=true;
Shape1.Brush.Color:=cllime;
fdlineascantidad.Value:=1;
fdlineastotal.Value:=0;
fdlineasiva.Value:=0;
fdlineasdescuento.Value:=0;

end;

procedure TFFacturas.fdlineasAfterOpen(DataSet: TDataSet);
begin

PageControl1.Enabled:=True;
rDBGridClientes1.RecalculateSummaryResults(true);
end;

procedure TFFacturas.fdlineasAfterPost(DataSet: TDataSet);
begin

fdfacturas.Edit;
fdfacturasTotalBruto.asfloat:=fdlineas.Aggregates[0].Value;
fdfacturas.Post;
rDBGridClientes1.RecalculateSummaryResults(true);
end;

procedure TFFacturas.fdlineasBeforeInsert(DataSet: TDataSet);
begin
  if fdfacturas.State in [dsInsert, dsEdit] then fdfacturas.Post;

end;

procedure TFFacturas.fdlineascantidadChange(Sender: TField);
begin
 fdlineastotal.asfloat:=(fdlineasimporte.asfloat*fdlineascantidad.asfloat)-((fdlineasdescuento.AsFloat/100)*(fdlineasimporte.AsFloat*fdlineascantidad.asfloat));
fdlineasiva.asfloat:=fdlineastotal.asfloat*(fdfacturasiva.asfloat/100);
end;

procedure TFFacturas.fdlineasdescuentoChange(Sender: TField);
begin
 fdlineastotal.asfloat:=(fdlineasimporte.asfloat*fdlineascantidad.asfloat)-((fdlineasdescuento.AsFloat/100)*(fdlineasimporte.AsFloat*fdlineascantidad.asfloat));
fdlineasiva.asfloat:=fdlineastotal.asfloat*(fdfacturasiva.asfloat/100);
end;

procedure TFFacturas.fdlineasimporteChange(Sender: TField);
begin
fdlineastotal.asfloat:=(fdlineasimporte.asfloat*fdlineascantidad.asfloat)-((fdlineasdescuento.AsFloat/100)*(fdlineasimporte.AsFloat*fdlineascantidad.asfloat));
fdlineasiva.asfloat:=fdlineastotal.asfloat*(fdfacturasiva.asfloat/100);

end;

procedure TFFacturas.GuardarClick(Sender: TObject);

begin

if (fdfacturas.state in [dsInsert, dsEdit]) then
 begin
   fdfacturas.post;
 end;
  
if (fdlineas.state in [dsEdit,dsInsert]) then
 begin
   fdlineas.post;
 end;

 if FDSchemaAdapter1.UpdatesPending then
    begin
         FDSchemaAdapter1.ApplyUpdates(1);

    end;

end;






procedure TFFacturas.FDSchemaAdapter1AfterApplyUpdate(Sender: TObject);
begin

with Sender as TFDSchemaAdapter do CommitUpdates;
 if ( not fdfacturas.UpdatesPending) and (not FDlineas.UpdatesPending) then
            begin

             guardar.Enabled:=false;
              shape1.Brush.Color:=clwhite;

            end;
end;

procedure TFFacturas.FDSchemaAdapter1BeforeApplyUpdate(Sender: TObject);
begin
 if YearOf(fdfacturasFechaFactura.AsDateTime) <> fdfacturasano.asinteger then
   begin
     ShowMessage('El a�o de la fecha de factura no coincide con la serie');
     fdfacturas.CancelUpdates;
   end
   else begin
          if fdlineasfacturas_idfactura.CurValue=-200 then
           begin
           fdfacturas.Edit;
           fdfacturasidFactura.AsInteger:=DataModule1.ObtenerNFactura(fdfacturasano.asinteger);
           fdfacturas.Post;   end;
   end;
    Self.Caption:='F. '+fdfacturas.FieldByName('idfactura').AsString+ ' - ' +fdfacturas.FieldByName('ano').AsString+' '+fdCliente.FieldByName('nombre').Asstring;

end;

procedure TFFacturas.FormClose(Sender: TObject; var Action: TCloseAction);
begin

action:=caFree;
end;

procedure TFFacturas.FormResize(Sender: TObject);
begin
  GroupBox5.Margins.Bottom:=GroupBox5.Height-Guardar.Height-20;
end;



end.