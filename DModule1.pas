unit DModule1;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.MySQL,
  FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf, FireDAC.DApt,
  FireDAC.VCLUI.Wait, FireDAC.Comp.UI, Data.DB, FireDAC.Comp.DataSet,System.DateUtils ,
  FireDAC.Comp.Client, Vcl.ImgList, Vcl.Controls, System.Actions, Vcl.ActnList,
  Vcl.PlatformDefaultStyleActnCtrls, Vcl.ActnMan,Vcl.Graphics,Vcl.ComCtrls;

type
  TDataModule1 = class(TDataModule)
    FDPhysMySQLDriverLink1: TFDPhysMySQLDriverLink;
    FDConnection1: TFDConnection;
    FDGUIxWaitCursor1: TFDGUIxWaitCursor;
    ImageList1: TImageList;
    navegador: TActionManager;
    listaclientes: TAction;
    crearclientes: TAction;
    accionespresupuestos: TActionManager;
    insertarpresupuesto: TAction;
    editarpresupuesto: TAction;
    fdClientes: TFDQuery;
    fdClientesidContactos: TFDAutoIncField;
    fdClientesnombre: TStringField;
    fdClientesidAdministrador: TIntegerField;
    fdClientesnombreapellidos: TStringField;
    fdClientesCIF: TStringField;
    fdClientesdireccion: TStringField;
    fdClientesCodigoPostal: TStringField;
    fdClientesCiudad: TStringField;
    fdpresupuestos: TFDQuery;
    listapresupuestos: TAction;
    editarcliente: TAction;
    icopeque: TImageList;
    borrarpresupuestos: TAction;
    procedure crearclientesExecute(Sender: TObject);
    procedure listaclientesExecute(Sender: TObject);
    procedure insertarpresupuestoExecute(Sender: TObject);
    procedure editarpresupuestoExecute(Sender: TObject);
    procedure DataModuleCreate(Sender: TObject);
    procedure listapresupuestosExecute(Sender: TObject);
    procedure editarclienteExecute(Sender: TObject);
    procedure borrarpresupuestosExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    function IVA(tipo:integer):real;
    function cambiarbarras(str:string):string;
    function ObtenerNPresupuesto(fd:TFDQuery):integer;
    function ObtenerPathPresupuesto(cliente:string;numero:integer;fecha:TDateTime):string;


  end;

var
PATHUSER:string;
PATHPLANTILLAS:string;
PATHDOCPRESUPUESTOS:string;
DataModule1:TDataModule1;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses InsertarClientes, FPrincipal, listaclientes, presupuestos,
  listapresupuestos, inserclientes;

{$R *.dfm}

procedure TDataModule1.borrarpresupuestosExecute(Sender: TObject);
begin
 try
    if  ((Sender as TFDQuery).active) and ((Sender as TFDQuery).RecordCount > 0)   then
                     (Sender as TFDQuery).Delete;
 except
      on E:Exception do ErrorDialog(E.Message,E.HelpContext) ;
 end;
end;

function TDataModule1.cambiarbarras(str:string):string;
var i:integer;
begin
     for i := 0 to Length(str) do  if str[i]='\' then str[i]:='/';
     Result:=str;
end;

function TDataModule1.IVA(tipo:integer):real;
begin
  case tipo of
    0: Result:=1.1;
    1: Result:=1.21;
    2: Result:=1.21;
    3: Result:=1.1;
    4: Result:=1.21;
  end;
end;

procedure TDataModule1.crearclientesExecute(Sender: TObject);
var inserCliente:TFinsertarCliente;
begin
      inserCliente:=TFInsertarCliente.Create(Sender as TComponent);
      if not inserCliente.fdinsertarClientes.Active then  inserCliente.fdinsertarClientes.Active:=true;
      if not inserCliente.fdadministradores.Active then inserCliente.fdadministradores.Active:=true;

       if (Sender is TTreeview) then
         if inserCliente.fdinsertarClientes.State in [dsbrowse] then inserCliente.fdinsertarClientes.Insert;

      inserCliente.ShowModal;

end;

procedure TDataModule1.DataModuleCreate(Sender: TObject);
begin
PATHUSER:=GetEnvironmentVariable('USERPROFILE');
PATHUSER:=PATHUSER+'\Dropbox\SERVICIOS INTEGRALES PUCHADES';
PATHPLANTILLAS:='\Plantillas\Presupuestos.dot';
PATHDOCPRESUPUESTOS:=PATHUSER+'\PRESUPUESTOS' ;
end;

procedure TDataModule1.editarclienteExecute(Sender: TObject);
var inserCliente:TFInsertarCliente;
begin
      inserCliente:=TFInsertarCliente.Create(Sender as TComponent);
      inserCliente.fdinsertarClientes.ParamByName('id_cliente').AsInteger:=(Sender as TFDQuery).FieldByName('idContactos').asinteger;
      if not inserCliente.fdinsertarClientes.Active then  inserCliente.fdinsertarClientes.Active:=true;
      if not inserCliente.fdadministradores.Active then inserCliente.fdadministradores.Active:=true;

     inserCliente.caption:='Editar Cliente';
     inserCliente.ShowModal;
end;

procedure TDataModule1.editarpresupuestoExecute(Sender: TObject);
var pres:TFPresupuestos;  ruta:string;
begin

pres:=TFPresupuestos.Create(Self);
    with pres do
    begin

         fdcliente.ParamByName('id_cliente').AsInteger:=(Sender as TFDQuery).FieldByName('id_ClientePrev').AsInteger;
              fdcliente.Active:=true;

         if fdcliente.RecordCount > 0 then
         begin
              GroupBox2.Enabled:=True;
              PageControl1.Enabled:=true;

               if not fdpresupuesto.active then
               begin
               fdpresupuesto.ParamByName('id_cliente').AsInteger:=fdcliente.FieldByName('idContactos').AsInteger;
               fdpresupuesto.ParamByName('id_Presupuesto').AsInteger:=(Sender as TFDQuery).FieldByName('id_Presupuesto').AsInteger;
               fdpresupuesto.ParamByName('fecha').AsDateTime:=(Sender as TFDQuery).FieldByName('FechaPresupuesto').AsDateTime;
               fdpresupuesto.Active:=true;


              if fdpresupuesto.FieldByName('Aprovado').AsBoolean then spaprobado.Brush.Color:=cllime
                     else begin
                      spaprobado.Brush.Color:=clred;
                      spnoaprobado.Brush.Color:=cllime;
                      end;

                ruta:= PATHDOCPRESUPUESTOS+'\'+fdpresupuesto.fieldbyname('id_presupuesto').asstring+IntToStr(YearOf(fdpresupuesto.fieldbyname('FechaPresupuesto').asdatetime));

                if DirectoryExists(ruta) then
                begin
                  spcarpetas.brush.color:=cllime;
                  ShellListView1.Visible:=True;
                  ShellListView2.Visible:=True;
                  ShellListView1.Root:=ruta+'\Documentacion';
                  ShellListView2.Root:=ruta+'\Fotos';
                end
                else  spcarpetas.brush.color:=clred;
             end;



         if not fdlineas.Active then
         begin
             fdlineas.ParamByName('id_presupuesto').AsInteger:=fdpresupuesto.FieldByName('id_presupuesto').AsInteger;
             fdlineas.ParamByName('fechapresupuesto').AsDateTime:=fdpresupuesto.FieldByName('FechaPresupuesto').AsDateTime;
             fdlineas.Active:=true;

         end;

            Show;
            ManualDock(principal.PageControl2);
         end;
      end;

end;

function TDataModule1.ObtenerPathPresupuesto(cliente:string;numero:integer;fecha:TDateTime):string;
begin
     Result:='\PRESUPUESTOS '+IntToStr(YearOf(fecha))+'\'+inttostr(numero)+'.'+cliente+'.doc';

end;


function TDataModule1.ObtenerNPresupuesto(fd:TFDQuery):integer;
begin
     fd.Connection:=FDConnection1;
     fd.SQL.Clear;
     fd.SQL.Add('Select Max(id_presupuesto) from presupuestos where YEAR(FechaPresupuesto)=Year(Now())');
     fd.Active:=True;
     Result:=fd.Fields[0].AsInteger+1;
     fd.Active:=false;
     fd.Free;
end;


procedure TDataModule1.insertarpresupuestoExecute(Sender: TObject);
  var pres:TFPresupuestos;  fd:TFDQuery;
begin
pres:=TFPresupuestos.Create(TControl(Sender));
    with pres do
    begin
         if Sender.ClassName='TFDQuery' then
         begin
         fdcliente.ParamByName('id_cliente').AsInteger:=fdClientes.FieldByName('IdContactos').AsInteger;
         fdcliente.Active:=true;
         end;
         if fdcliente.RecordCount > 0 then
         begin
              GroupBox2.Enabled:=True;
              PageControl1.Enabled:=true;
              if not fdpresupuesto.Active then
              begin
                   fd:=TFDQuery.Create(Self);
                   fdpresupuesto.Active:=true;
                   fdpresupuesto.Insert;
                   fdpresupuesto.FieldByName('id_presupuesto').AsInteger:=ObtenerNPresupuesto(fd);
                   fdpresupuesto.FieldByName('fechapresupuesto').AsDateTime:=date;
                   fdpresupuesto.FieldByName('Id_ClientePrev').AsInteger:=fdcliente.FieldByName('idContactos').AsInteger;

                   fdpresupuesto.FieldByName('path').AsString:=ObtenerPathPresupuesto(fdcliente.fieldByName('nombre').Asstring,fdpresupuesto.FieldByName('id_presupuesto').AsInteger,fdpresupuesto.FieldByName('fechapresupuesto').AsDateTime);
              end;

              if not fdlineas.Active then
              begin
              fdlineas.Active:=true;

              end;
          end;
      Show;
            ManualDock(principal.PageControl2);
      end;
end;

procedure TDataModule1.listaclientesExecute(Sender: TObject);
var listaclientes:TlistClientes;
begin

            listaclientes:=TlistClientes.Create(principal);
            listaclientes.Width:=principal.Panel1.Width-10;
            listaclientes.Show;
            listaclientes.ManualDock(principal.PageControl2);
end;



procedure TDataModule1.listapresupuestosExecute(Sender: TObject);
var listapresupuestos:Tlistpresupuestos;
begin

            listapresupuestos:=Tlistpresupuestos.Create(principal);
            listapresupuestos.Width:=principal.Panel1.Width-10;
            listapresupuestos.Show;
            listapresupuestos.ManualDock(principal.PageControl2);

end;

end.
