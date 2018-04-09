unit presupuestos;

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
  Data.Bind.Grid, Vcl.Shell.ShellCtrls, Vcl.ToolWin,shellapi, System.Actions,System.DateUtils,
  Vcl.ActnList, Vcl.PlatformDefaultStyleActnCtrls, Vcl.ActnMan,System.Win.COMObj,
  Vcl.DBGrids, Vcl.Bind.Navigator, Data.Bind.Controls, Vcl.StdActns, Vcl.ImgList;


type
  TStado=(mInsertar,mEditar);

  TFPresupuestos = class(TForm)
    Panel1: TPanel;
    GroupBox1: TGroupBox;
    GroupBox4: TGroupBox;
    LabeledEdit1: TLabeledEdit;
    LabeledEdit2: TLabeledEdit;
    LabeledEdit3: TLabeledEdit;
    GroupBox2: TGroupBox;
    LabeledEdit4: TLabeledEdit;
    LabeledEdit6: TLabeledEdit;
    LabeledEdit7: TLabeledEdit;
    LabeledEdit8: TLabeledEdit;
    PageControl1: TPageControl;
    lineas: TTabSheet;
    documentacion: TTabSheet;
    fotografias: TTabSheet;
    StringGrid1: TStringGrid;
    fdCliente: TFDQuery;
    fdpresupuesto: TFDQuery;
    fdlineas: TFDQuery;
    BindSourceDB1: TBindSourceDB;
    BindingsList1: TBindingsList;
    LinkControlToField2: TLinkControlToField;
    LinkControlToField3: TLinkControlToField;
    LinkControlToField1: TLinkControlToField;
    BindSourceDB2: TBindSourceDB;
    LinkControlToField4: TLinkControlToField;
    LinkControlToField5: TLinkControlToField;
    LinkControlToField6: TLinkControlToField;
    LinkControlToField7: TLinkControlToField;
    DateTimePicker1: TDateTimePicker;
    Label1: TLabel;
    LinkControlToField8: TLinkControlToField;
    fdlineasId_Partida: TIntegerField;
    fdlineasDescripcion: TStringField;
    fdlineasTotal: TFloatField;
    fdlineasAprovado: TBooleanField;
    fdlineasEjecutado: TBooleanField;
    ShellListView1: TShellListView;
    ShellListView2: TShellListView;
    ControlBar2: TControlBar;
    LabeledEdit10: TLabeledEdit;
    LabeledEdit9: TLabeledEdit;
    LabeledEdit5: TLabeledEdit;
    LabeledEdit11: TLabeledEdit;
    LinkControlToField9: TLinkControlToField;
    dialruta: TOpenDialog;
    LinkControlToField12: TLinkControlToField;
    spaprobado: TShape;
    spNoaprobado: TShape;
    spcarpetas: TShape;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    ToolBar1: TToolBar;
    ToolButton1: TToolButton;
    ToolButton2: TToolButton;
    ToolButton3: TToolButton;
    ToolButton4: TToolButton;
    ToolButton5: TToolButton;
    ToolButton6: TToolButton;
    ToolButton7: TToolButton;
    ToolButton8: TToolButton;
    ActionManager1: TActionManager;
    abrircarpeta: TAction;
    abrirpresupuesto: TAction;
    guardarpresupuesto: TAction;
    guardarPDF: TAction;
    mail: TAction;
    FDQuery1: TFDQuery;
    IntegerField1: TIntegerField;
    IntegerField2: TIntegerField;
    StringField1: TStringField;
    FloatField1: TFloatField;
    BooleanField1: TBooleanField;
    BooleanField2: TBooleanField;
    DateTimeField1: TDateTimeField;
    ToolButton9: TToolButton;
    cerrarpres: TAction;
    ToolButton10: TToolButton;
    carpetadocumentacion: TAction;
    LabeledEdit12: TLabeledEdit;
    LabeledEdit13: TLabeledEdit;
    Label5: TLabel;
    NavigatorBindSourceDB3: TBindNavigator;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    DataSource1: TDataSource;
    DBGrid1: TDBGrid;
    Button1: TButton;
    Button2: TButton;
    BindSourceDB3: TBindSourceDB;
    LinkGridToDataSourceBindSourceDB3: TLinkGridToDataSource;
    fdlineaspresupuestos_id_presupuesto: TIntegerField;
    fdlineaspresupuestos_grupo: TIntegerField;
    LabeledEdit14: TLabeledEdit;
    LabeledEdit15: TLabeledEdit;
    Label9: TLabel;
    LabeledEdit16: TLabeledEdit;
    Shape2: TShape;
    LabeledEdit17: TLabeledEdit;
    LinkControlToField13: TLinkControlToField;
    Label10: TLabel;
    Label11: TLabel;
    ToolBar2: TToolBar;
    ImageList1: TImageList;
    ActionManager2: TActionManager;
    ToolButton11: TToolButton;
    EditCopy: TEditCopy;
    EditCut: TEditCut;
    EditPaste: TEditPaste;
    ToolButton12: TToolButton;
    ToolButton13: TToolButton;
    ToolBar3: TToolBar;
    ToolButton14: TToolButton;
    AprobarTodos: TAction;
    LinkControlToField10: TLinkControlToField;
    Label12: TLabel;
    GroupBox3: TGroupBox;
    Memo1: TMemo;
    GroupBox5: TGroupBox;
    Shape1: TShape;
    Guardar: TButton;
    Aceptar: TButton;
    cerrar: TButton;
    LinkControlToField11: TLinkControlToField;

    procedure StringGrid1DrawCell(Sender: TObject; ACol, ARow: Integer;
      Rect: TRect; State: TGridDrawState);
    procedure StringGrid1SelectCell(Sender: TObject; ACol, ARow: Integer;
      var CanSelect: Boolean);
    procedure GuardarClick(Sender: TObject);
    procedure AceptarClick(Sender: TObject);
    procedure cerrarClick(Sender: TObject);
    procedure fdlineasAfterEdit(DataSet: TDataSet);
    procedure fdlineasAfterInsert(DataSet: TDataSet);
    procedure DateTimePicker1Change(Sender: TObject);
    procedure fdpresupuestoAfterEdit(DataSet: TDataSet);
    procedure fdpresupuestoAfterInsert(DataSet: TDataSet);
    procedure fdlineasAfterApplyUpdates(DataSet: TFDDataSet; AErrors: Integer);
    procedure fdpresupuestoAfterApplyUpdates(DataSet: TFDDataSet;
      AErrors: Integer);
    procedure BitBtn1Click(Sender: TObject);
    procedure LabeledEdit10Change(Sender: TObject);
    procedure LabeledEdit5Change(Sender: TObject);

    procedure BitBtn2Click(Sender: TObject);
    procedure PageControl1Resize(Sender: TObject);
    procedure StringGrid1Exit(Sender: TObject);


    procedure StringGrid1MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure abrircarpetaExecute(Sender: TObject);
    procedure abrirpresupuestoExecute(Sender: TObject);
    procedure guardarpresupuestoExecute(Sender: TObject);
    procedure guardarPDFExecute(Sender: TObject);
    procedure mailExecute(Sender: TObject);
    procedure cerrarpresExecute(Sender: TObject);
    procedure carpetadocumentacionExecute(Sender: TObject);
    procedure StringGrid1KeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure fdlineasBeforePost(DataSet: TDataSet);
    procedure fdlineasAfterDelete(DataSet: TDataSet);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure fdClienteAfterOpen(DataSet: TDataSet);
    procedure fdlineasAfterPost(DataSet: TDataSet);
    procedure NavigatorBindSourceDB3BeforeAction(Sender: TObject;
      Button: TNavigateButton);
    procedure StringGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure StringGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure LinkGridToDataSourceBindSourceDB3AssigningValue(Sender: TObject;
      AssignValueRec: TBindingAssignValueRec; var Value: TValue;
      var Handled: Boolean);
    procedure CheckBox1Click(Sender: TObject);
    procedure CheckBox2Click(Sender: TObject);
    procedure fdlineasBeforeDelete(DataSet: TDataSet);
    procedure fdlineasAprovadoChange(Sender: TField);
    procedure CheckBox1Mouseup(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure StringGrid1GetEditText(Sender: TObject; ACol, ARow: Integer;
      var Value: string);
    procedure AprobarTodosExecute(Sender: TObject);
    procedure StringGrid1Click(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure abrircarpetaUpdate(Sender: TObject);
    procedure abrirpresupuestoUpdate(Sender: TObject);
    procedure guardarPDFUpdate(Sender: TObject);
    procedure mailUpdate(Sender: TObject);
    procedure carpetadocumentacionUpdate(Sender: TObject);
  private
    { Private declarations }


  public
    { Public declarations }
    RowAct:integer;
    cargando:boolean;
    procedure carpetasdocumentacion(var ruta:string; var ok:boolean);
    procedure existelineasaprobados(dataset:TDataSet; var nlineas:integer);
    procedure luces(aprobado:boolean);
  end;



var
  FPresupuestos: TFPresupuestos;

implementation

{$R *.dfm}

uses DModule1, listaclientes;


 procedure TFPresupuestos.luces(aprobado:boolean);
 begin
    if aprobado then
                    begin
                     spaprobado.Brush.Color:=cllime;
                     spnoaprobado.Brush.Color:=clred;
                    end
                     else begin
                      spaprobado.Brush.Color:=clred;
                      spnoaprobado.Brush.Color:=cllime;
                      end;
 end;

procedure TFPresupuestos.existelineasaprobados(dataset:TDataSet; var nlineas:integer);
var qy:TFDMemTable;
begin
     qy:=TFDMemTable.Create(Self);

    qy.CopyDataSet(dataset,[coStructure,coRestart,coAppend]);
    qy.Active:=true;
    qy.Filter:='Aprovado = true';
    qy.Filtered:=true;
    nlineas:=qy.RecordCount;
    qy.Active:=false;
    qy.free;
end;

procedure TFPresupuestos.abrircarpetaExecute(Sender: TObject);
var ruta:string;
begin
      ruta:= ExtractfilePath(PATHUSER+fdpresupuesto.fieldbyname('path').asstring);

      if DirectoryExists(ruta) then

      ShellExecute(0, 'open', nil, nil, Pchar(ruta), SW_SHOW)
      else
      showmessage('El directorio de presupuestos no existe.');
end;

procedure TFPresupuestos.abrircarpetaUpdate(Sender: TObject);
begin
   ToolButton8.Enabled:=FileExists(PATHUSER+fdpresupuesto.FieldByName('path').AsString);
end;

procedure TFPresupuestos.abrirpresupuestoExecute(Sender: TObject);
var fichero:string; MSWord:Variant;
begin

 fichero:=PATHUSER+fdpresupuesto.FieldByName('path').AsString;

if FileExists(fichero) then
  begin
  try
    MSWord:=GetActiveOleOBject('Word.Application');
    except
      MsWord:=CreateOleObject('Word.Application');

    end;
     MSWord.Documents.Open(fichero);
     MsWord.Visible:=True;
  end
  else if application.MessageBox('El presupuesto no existe. �Desea crearlo?', 'Aviso',(MB_OKCANCEL+MB_ICONQUESTION))=IDOK      then
      begin
         try
            MSWord:=GetActiveOleOBject('Word.Application');
         except
            MsWord:=CreateOleObject('Word.Application');

         end;

         MSWord.Documents.Add(ExtractFilePath(application.ExeName)+PATHPLANTILLAS);
         MSWord.ActiveDocument.SaveAs(fichero);
         MsWord.Visible:=True;
      end;
end;

procedure TFPresupuestos.abrirpresupuestoUpdate(Sender: TObject);
begin
 ToolButton6.Enabled:=not (fdpresupuesto.State in [dsInsert])
end;

procedure TFPresupuestos.AceptarClick(Sender: TObject);
begin
  GuardarClick(Sender);
  Close;
end;

procedure TFPresupuestos.AprobarTodosExecute(Sender: TObject);
var cb:TObject;  row:integer;
begin
      fdlineas.First;
      while not fdlineas.eof do
      begin
        fdlineas.Edit;
        fdlineas.FieldByName('aprovado').AsBoolean:=true;
        fdlineas.post;
        fdlineas.next;
      end;

      StringGrid1.Repaint;

     { for row:=1 to StringGrid1.RowCount-1 do
      begin
          if StringGrid1.Objects[3,row] <> nil then
           begin
               fdlineas.RecNo:=row;
               cb:=StringGrid1.Objects[3,row];
               (cb as TCheckBox).Checked:=True;
           end;

      end;   }
end;

procedure TFPresupuestos.BitBtn1Click(Sender: TObject);
var posicion:integer; ruta:string;
begin
  if dialruta.Execute then
          begin
               if fdpresupuesto.State in [dsbrowse] then
               begin
                    fdpresupuesto.Edit;
               end;
               if fdpresupuesto.State in [dsEdit, dsInsert] then
               begin
                    posicion:=pos('PRESUPUESTOS', dialruta.FileName);
                    ruta:=copy(dialruta.FileName,posicion-1,length(dialruta.FileName));
                    fdpresupuesto.FieldByName('path').Asstring:=ruta;
                    labelededit8.Text:=ruta;

               end;

              if fdpresupuesto.State in [dsEdit] then fdpresupuesto.Post;


          end;
end;

procedure TFPresupuestos.BitBtn2Click(Sender: TObject);
var lclientes:Tlistclientes; fd,fdclen:TfdQuery;
begin
    fdclen:=TFDQuery.Create(Sender as TControl);
    fdclen.Connection:=DataModule1.FDConnection1;
    fdclen.SQL.Add('Select c.idContactos, c.nombre, c.CIF, c.direccion, c.CodigoPostal, c.Ciudad, a.nombreapellidos,c.idAdministrador from clientes c, administradores a where c.idAdministrador=a.idAdministrador order by c.idAdministrador,c.nombre');
    fdclen.IndexFieldNames:='idAdministrador;nombre';
    fdclen.Active:=true;

    lclientes:=Tlistclientes.Create(Sender as TControl);
    lclientes.DragMode:=dmManual;
    lclientes.BindSourceDB1.DataSet:=fdclen;
    lclientes.ShowModal;

    fdcliente.Close;
    fdcliente.ParamByName('id_cliente').AsInteger:=fdclen.FieldByName('IdContactos').AsInteger;
    fdcliente.Active:=true;

    if fdcliente.RecordCount >0 then
    begin
         if fdpresupuesto.State in [dsBrowse] then
         begin
         fdpresupuesto.Edit;
         fdpresupuesto.FieldByName('id_ClientePrev').AsInteger:=fdcliente.FieldByName('IdContactos').AsInteger;
         fdpresupuesto.Post;
         end
         else begin
                   if not fdpresupuesto.Active then  fdpresupuesto.Active:=true;

                   fd:=TFDQuery.Create(Self);
                   fdpresupuesto.Insert;
                   fdpresupuesto.FieldByName('id_presupuesto').AsInteger:=DataModule1.ObtenerNPresupuesto(fd);
                   fdpresupuesto.FieldByName('fechapresupuesto').AsDateTime:=date;
                   fdpresupuesto.FieldByName('Id_ClientePrev').AsInteger:=fdcliente.FieldByName('idContactos').AsInteger;
                   fdpresupuesto.FieldByName('path').AsString:=DataModule1.ObtenerPathPresupuesto(fdcliente.fieldByName('nombre').Asstring,fdpresupuesto.FieldByName('id_presupuesto').AsInteger,fdpresupuesto.FieldByName('fechapresupuesto').AsDateTime);
              end;

              if not fdlineas.Active then
              begin
              fdlineas.Active:=true;

         end;
    end;

    fdclen.Close;
    fdclen.Free;
    lclientes.Free;
end;

procedure TFPresupuestos.Button1Click(Sender: TObject);
var lclientes:Tlistclientes; fdclen:TfdQuery;
begin
    fdclen:=TFDQuery.Create(Sender as TControl);
    fdclen.Connection:=DataModule1.FDConnection1;
    fdclen.SQL.Add('Select c.idContactos, c.nombre, c.CIF, c.direccion, c.CodigoPostal, c.Ciudad, a.nombreapellidos,c.idAdministrador from clientes c, administradores a where c.idAdministrador=a.idAdministrador order by c.idAdministrador,c.nombre');
    fdclen.IndexFieldNames:='idAdministrador;nombre';
    fdclen.Active:=true;

    lclientes:=Tlistclientes.Create(Sender as TControl);
    lclientes.DragMode:=dmManual;
    lclientes.BindSourceDB1.DataSet:=fdclen;
    if fdclen.RecordCount >0 then lclientes.linklistaclientes.active:=true;
    lclientes.ShowModal;

    fdcliente.Close;
    fdcliente.ParamByName('id_cliente').AsInteger:=fdclen.FieldByName('IdContactos').AsInteger;
    fdcliente.Active:=true;


    fdclen.Close;
    fdclen.Free;
    lclientes.Free;
    labeledEdit5Change(Sender);
    labeledEdit10Change(Sender);

end;

procedure TFPresupuestos.Button2Click(Sender: TObject);
var posicion:integer; ruta:string;
begin
  if dialruta.Execute then
          begin
               if fdpresupuesto.State in [dsbrowse] then
               begin
                    fdpresupuesto.Edit;
               end;
               if fdpresupuesto.State in [dsEdit, dsInsert] then
               begin
                    posicion:=pos('PRESUPUESTOS', dialruta.FileName);
                    ruta:=copy(dialruta.FileName,posicion-1,length(dialruta.FileName));
                    fdpresupuesto.FieldByName('path').Asstring:=ruta;
                    labelededit8.Text:=ruta;

               end;

              if fdpresupuesto.State in [dsEdit] then fdpresupuesto.Post;


          end;

end;

procedure TFPresupuestos.carpetadocumentacionExecute(Sender: TObject);
var ruta:string;
begin
      if not DirectoryExists(PATHDOCPRESUPUESTOS) then
      begin
        showmessage('El directorio PRESUPUESTOS no existe.');
        exit;
      end;

  ruta:= PATHDOCPRESUPUESTOS+'\'+fdpresupuesto.fieldbyname('id_presupuesto').asstring+IntToStr(YearOf(fdpresupuesto.fieldbyname('FechaPresupuesto').asdatetime));



      if DirectoryExists(ruta) then

      ShellExecute(0, 'open', nil, nil, Pchar(ruta), SW_SHOW)

      else if application.MessageBox('El directorio de la documentaci�n del  presupuesto no existe. �Desea crearlo?', 'Aviso',(MB_OKCANCEL+MB_ICONQUESTION))=IDOK      then
      begin
         mkdir(ruta);
         mkdir(ruta+'\Fotos');
         mkdir(ruta+'\Documentacion');
         if DirectoryExists(ruta) then
         begin
          spcarpetas.Brush.Color:=cllime;
          ShellListView1.Enabled:=True;
          ShellListView2.Enabled:=True;

          ShellListView1.Root:=ruta+'\Documentacion';
          ShellListView2.Root:=ruta+'\Fotos';
          showmessage('El directorio se ha creado con exito.');

         end
         else  showmessage('No se ha podido crear el directorio para la documentaci�n del presupuesto.');

      end;



end;

procedure TFPresupuestos.carpetadocumentacionUpdate(Sender: TObject);
begin
ToolButton10.Enabled:=  not (fdpresupuesto.State in [dsInsert]);
end;

procedure TFPresupuestos.cerrarClick(Sender: TObject);
begin
   if (fdpresupuesto.UpdatesPending) or (fdlineas.UpdatesPending)  then
       if Application.MessageBox('�Guardar los cambios del presupuesto?','Guardar',MB_YESNO)=IDYES then
       begin
           GuardarClick(Sender);
       end
       else begin
            fdlineas.CancelUpdates;
            end;
       Close;
end;


procedure TFPresupuestos.cerrarpresExecute(Sender: TObject);
begin
cerrarClick(Sender);
end;

procedure TFPresupuestos.CheckBox1Click(Sender: TObject);
begin
       if not (fdlineas.State in [dsEdit,dsInsert]) and (not cargando) then
       begin
            fdlineas.RecNo:=RowAct;
            fdlineas.Edit;
            fdlineas.FieldByName('Aprovado').AsBoolean:=(Sender as TCheckBox).Checked;
            fdlineas.post;
       end;
end;

procedure TFPresupuestos.CheckBox1Mouseup(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
     if Button= mbLeft then

     if not (fdlineas.State in [dsEdit,dsInsert]) then
       begin
             fdlineas.Edit;
             fdlineas.FieldByName('Aprovado').AsBoolean:=(Sender as TCheckBox).Checked;
             fdlineas.post;
       end;
end;

procedure TFPresupuestos.CheckBox2Click(Sender: TObject);
begin
       if not (fdlineas.State in [dsEdit,dsInsert]) then
       begin
             fdlineas.Edit;
             fdlineas.FieldByName('Ejecutado').AsBoolean:=(Sender as TCheckBox).Checked;
             fdlineas.post;
       end;
end;

procedure TFPresupuestos.DateTimePicker1Change(Sender: TObject);
begin
if fdpresupuesto.State in [dsbrowse] then
   begin
        fdpresupuesto.Edit;
   end;
   if fdpresupuesto.State in [dsEdit,dsInsert] then
     begin
        fdpresupuesto.FieldByName('FechaPresupuesto').AsDateTime:=(Sender as TDateTimePicker).Date;
        fdpresupuesto.Post;
     end;
end;

procedure TFPresupuestos.fdClienteAfterOpen(DataSet: TDataSet);

begin
if DataSet.RecordCount > 0 then
         begin
              if fdpresupuesto.State in [dsInsert] then
              begin
                   fdpresupuesto.FieldByName('Id_ClientePrev').AsInteger:=fdcliente.FieldByName('idContactos').AsInteger;
                   fdpresupuesto.FieldByName('path').AsString:=DataModule1.ObtenerPathPresupuesto(fdcliente.fieldByName('nombre').Asstring,fdpresupuesto.FieldByName('id_presupuesto').AsInteger,fdpresupuesto.FieldByName('fechapresupuesto').AsDateTime);
              end;
         end;
end;

procedure TFPresupuestos.fdlineasAfterApplyUpdates(DataSet: TFDDataSet;
  AErrors: Integer);
begin
      if AErrors = 0 then
         begin
          fdlineas.CommitUpdates;
         if not fdpresupuesto.UpdatesPending then
            begin

            guardarpresupuesto.Enabled:=false;
             guardar.Enabled:=false;
             shape1.Brush.Color:=clwhite;
              DataModule1.RefrescarDataSet(0);
            end;

         end;

end;

procedure TFPresupuestos.fdlineasAfterDelete(DataSet: TDataSet);
var i:integer; nl:integer;
begin





     existelineasaprobados(dataset,nl);
      fdpresupuesto.FieldByName('partidasAprobadas').asinteger:=nl;

     if nl>0 then fdpresupuesto.FieldByName('Aprovado').AsBoolean:=true
     else
          fdpresupuesto.FieldByName('Aprovado').AsBoolean:=false;

      luces(fdpresupuesto.FieldByName('Aprovado').AsBoolean);

    for i:=DataSet.RecNo to DataSet.RecordCount do
          begin
          DataSet.edit;
          DataSet.FieldByName('id_partida').AsInteger:=i;
          DataSet.Post;

          DataSet.Next;
          end;


     guardarpresupuesto.Enabled:=True;
     Guardar.Enabled:=true;
     shape1.Brush.Color:=cllime;
end;



procedure TFPresupuestos.fdlineasAfterEdit(DataSet: TDataSet);
begin

     guardarpresupuesto.Enabled:=True;
     Guardar.Enabled:=true;
     shape1.Brush.Color:=cllime;



end;

procedure TFPresupuestos.fdlineasAfterInsert(DataSet: TDataSet);
begin
   DataSet.FieldByName('presupuestos_Id_Presupuesto').AsInteger:=fdpresupuesto.FieldByName('id_presupuesto').AsInteger;
   DataSet.FieldByName('presupuestos_grupo').asinteger:= YearOf(fdpresupuesto.FieldByName('FechaPresupuesto').AsDateTime);
   DataSet.FieldByName('Id_partida').AsInteger:=StringGrid1.rowcount-1;
   DataSet.FieldByName('Aprovado').AsBoolean:=false;
   DataSet.FieldByName('Ejecutado').asboolean:=false;
   DataSet.FieldByName('Total').AsFloat:=0;
 //  totalold:=DataSet.FieldByName('Total').asfloat;

     guardarpresupuesto.Enabled:=True;
     Guardar.Enabled:=true;
     shape1.Brush.Color:=cllime;
end;

procedure TFPresupuestos.fdlineasAfterPost(DataSet: TDataSet);
 var nl:integer;
begin

     fdpresupuesto.FieldByName('partidas').asinteger:=fdlineas.RecordCount;
     fdpresupuesto.FieldByName('descripcion').asstring:='descripcion';

      fdpresupuesto.FieldByName('total').asstring:=VarToStr(fdlineas.Aggregates.AggregateByName('SUMATOTAL').Value);
      fdpresupuesto.FieldByName('totalAprobado').asstring:=VarToStr(fdlineas.Aggregates.AggregateByName('SUMAPROBADOS').Value);

     existelineasaprobados(dataset,nl);
      fdpresupuesto.FieldByName('partidasAprobadas').asinteger:=nl;

     if nl>0 then
                   fdpresupuesto.FieldByName('Aprovado').AsBoolean:=true

             else             fdpresupuesto.FieldByName('Aprovado').AsBoolean:=false;



          luces(fdpresupuesto.FieldByName('Aprovado').AsBoolean);
end;

procedure TFPresupuestos.fdlineasAprovadoChange(Sender: TField);
begin
     if not (fdpresupuesto.state in [dsInsert,dsEdit]) then  fdpresupuesto.Edit;

     if Sender.AsBoolean then
                 fdpresupuesto.FieldByName('TotalAprobado').asfloat:=fdpresupuesto.FieldByName('TotalAprobado').asfloat+Sender.DataSet.FieldByName('Total').asfloat
                 else
                 fdpresupuesto.FieldByName('TotalAprobado').asfloat:=fdpresupuesto.FieldByName('TotalAprobado').asfloat-Sender.DataSet.FieldByName('Total').asfloat;

end;

procedure TFPresupuestos.fdlineasBeforeDelete(DataSet: TDataSet);
begin
     StringGrid1.Objects[3,DataSet.RecordCount].Free;
     StringGrid1.Objects[4,DataSet.RecordCount].Free;

end;

procedure TFPresupuestos.fdlineasBeforePost(DataSet: TDataSet);
begin
if StringGrid1.EditorMode then StringGrid1.EditorMode:=false;



label8.caption:=inttostr(fdlineas.RecordCount);
label5.Caption:=inttostr(fdlineas.RecNo);
label6.Caption:=inttostr(StringGrid1.Row);
label7.Caption:=inttostr(StringGrid1.RowCount);

end;

procedure TFPresupuestos.fdpresupuestoAfterApplyUpdates(DataSet: TFDDataSet;
  AErrors: Integer);
  var ruta:string; existe:boolean;
begin
if AErrors = 0 then
    begin
         DataSet.CommitUpdates;
         if not fdlineas.UpdatesPending then
            begin

            guardarpresupuesto.Enabled:=false;
            guardar.Enabled:=false;
            shape1.Brush.Color:=clwhite;
            DataModule1.RefrescarDataSet(0);
            end;

            carpetasdocumentacion(ruta,existe);
            if existe then
            begin
                 if DirectoryExists(ruta) then
                 begin
                      spcarpetas.brush.color:=cllime;
                      ShellListView1.Visible:=true;
                      ShellListView2.Visible:=true;
                      ShellListView1.Root:=ruta+'\Documentacion';
                      ShellListView2.Root:=ruta+'\Fotos';
                 end;
            end
            else  begin
                 spcarpetas.brush.color:=clred;
                  end;

    end;
end;

procedure TFPresupuestos.fdpresupuestoAfterEdit(DataSet: TDataSet);
begin
Guardar.Enabled:=true;
end;

procedure TFPresupuestos.carpetasdocumentacion(var ruta:string; var ok:boolean);
begin

     ok:=false;
     ruta:='';
     if not DirectoryExists(PATHDOCPRESUPUESTOS) then
      begin
        showmessage('El directoria PRESUPUESTOS no existe.');
        exit;
      end;

  ruta:= PATHDOCPRESUPUESTOS+'\'+fdpresupuesto.fieldbyname('id_presupuesto').asstring+IntToStr(YearOf(fdpresupuesto.fieldbyname('FechaPresupuesto').asdatetime));



      if DirectoryExists(ruta) then
        begin
          ok:=True;
        end
      else   begin

                  mkdir(ruta);
                  mkdir(ruta+'\Fotos');
                  mkdir(ruta+'\Documentacion');
                  if DirectoryExists(ruta) then ok:=True;

             end;
end;

procedure TFPresupuestos.GuardarClick(Sender: TObject);

begin


if (fdpresupuesto.state in [dsInsert, dsEdit]) then
 begin
   fdpresupuesto.post;
 end;

 if fdpresupuesto.UpdatesPending then
 begin
      fdpresupuesto.ApplyUpdates(1);

 end;

if (fdlineas.state in [dsEdit,dsInsert]) then
 begin
   fdlineas.post;
 end;

 if fdlineas.UpdatesPending then
    begin
         fdlineas.ApplyUpdates(1);

    end;

end;

procedure TFPresupuestos.guardarPDFExecute(Sender: TObject);
var nombresinext,extension,ruta,nombre,fichero:string; MSWord:Variant;
begin

 fichero:=PATHUSER+fdpresupuesto.FieldByName('path').AsString;
 ruta:=ExtractFilePath(fichero);
 nombre:=ExtractFileName(fichero);
 extension:=ExtractFileExt(fichero);
 nombresinext:=copy(nombre,0,pos(extension,nombre)-1);

if FileExists(fichero) then
  begin
  try
    MSWord:=GetActiveOleOBject('Word.Application');
    except
      MsWord:=CreateOleObject('Word.Application');
    end;

     MSWord.Documents.Open(fichero);
     MSWord.ActiveDocument.SaveAs2(ruta+nombresinext+'.pdf',17);
     ShellExecute(0, 'open', nil, nil, Pchar(ruta), SW_SHOW);
     MSWord.ActiveDocument.close;

  end
  else showmessage('El documento Word que contine el presupuesto, no existe.')

end;

procedure TFPresupuestos.guardarPDFUpdate(Sender: TObject);
begin
     ToolButton2.Enabled:= FileExists(PATHUSER+fdpresupuesto.FieldByName('path').AsString);
end;

procedure TFPresupuestos.guardarpresupuestoExecute(Sender: TObject);
begin
GuardarClick(Sender);
end;

procedure TFPresupuestos.LabeledEdit10Change(Sender: TObject);
begin
     if fdCliente.Active then
     begin
          labeledEdit12.Text:= floattostr((DataModule1.IVA(fdCliente.FieldByName('familia').Asinteger)-1)* fdpresupuesto.FieldByName('TotalAprobado').Asfloat)+' �';
          labeledEdit15.Text:= floattostr((DataModule1.IVA(fdCliente.FieldByName('familia').Asinteger)-1)*100)+' %';
          labeledEdit9.Text:= floattostr(DataModule1.IVA(fdCliente.FieldByName('familia').Asinteger)* fdpresupuesto.FieldByName('TotalAprobado').Asfloat);
     end
     else
     begin
          labeledEdit12.Text:= floattostr((IVADEFECTO-1)* fdpresupuesto.FieldByName('TotalAprobado').Asfloat)+' �';
          labeledEdit15.Text:= floattostr((IVADEFECTO - 1)*100)+' %';
          labeledEdit9.Text:= floattostr(IVADEFECTO * fdpresupuesto.FieldByName('TotalAprobado').Asfloat);
     end;
end;

procedure TFPresupuestos.LabeledEdit5Change(Sender: TObject);
begin
     if fdCliente.Active then
     begin
     labeledEdit14.Text:= floattostr((DataModule1.IVA(fdCliente.FieldByName('familia').Asinteger)-1)*100)+' %';
     labeledEdit13.Text:= floattostr((DataModule1.IVA(fdCliente.FieldByName('familia').Asinteger)-1)* fdpresupuesto.FieldByName('Total').Asfloat)+' �';
     labeledEdit11.Text:= floattostr(DataModule1.IVA(fdCliente.FieldByName('familia').Asinteger)* fdpresupuesto.FieldByName('Total').Asfloat)+' �';
     end
     else
     begin
         labeledEdit14.Text:= floattostr((IVADEFECTO - 1)*100)+' %';
         labeledEdit13.Text:= FloatToStr((IVADEFECTO - 1) * fdpresupuesto.FieldByName('Total').Asfloat)+' �';
         labeledEdit11.Text:= floattostr(IVADEFECTO * fdpresupuesto.FieldByName('Total').Asfloat)+' �';
     end;
end;

procedure TFPresupuestos.LinkGridToDataSourceBindSourceDB3AssigningValue(
  Sender: TObject; AssignValueRec: TBindingAssignValueRec; var Value: TValue;
  var Handled: Boolean);
begin
  label9.caption:=Sender.ClassName;
end;

procedure TFPresupuestos.mailExecute(Sender: TObject);
var mail, parametro,nombresinext,extension,ruta,nombre,destinatario,asunto,cuerpo,adjunto,fichero:string; MSWord:Variant;  fdq:TFDQuery;
begin

 fichero:=PATHUSER+fdpresupuesto.FieldByName('path').AsString;
 ruta:=ExtractFilePath(fichero);
 nombre:=ExtractFileName(fichero);
 extension:=ExtractFileExt(fichero);
 nombresinext:=copy(nombre,0,pos(extension,nombre)-1);

if FileExists(fichero) then
  begin
  try
    MSWord:=GetActiveOleOBject('Word.Application');
    except
      MsWord:=CreateOleObject('Word.Application');
    end;

     MSWord.Documents.Open(fichero);
     MSWord.ActiveDocument.SaveAs2(ruta+nombresinext+'.pdf',17);
     MSWord.ActiveDocument.close;

     fdq:=TFDQuery.Create(Self);
     fdq.connection:=DataModule1.FDConnection1;
     fdq.SQL.Add('SELECT correo FROM clientes C, administradores A, presupuestos P WHERE P.id_presupuesto=412 AND P.id_ClientePrev=C.idContactos AND C.idAdministrador=A.idAdministrador');
    // fdq.ParamByName('idpresupuesto').AsInteger:=fdpresupuesto.FieldByName('id_presupuesto').AsInteger;
     fdq.Active:=true;

     if fdq.RecordCount > -1 then
        begin

       destinatario:='to='+fdq.fieldbyname('correo').asstring+',';
       Asunto:='subject='+nombre+',';
       Cuerpo:='body=Hola%20env�o%20presupuesto solicitado.%0D%0A%0D%0A Saludos cordiales.'+',';
       adjunto:='attachment=file:///'+DataModule1.cambiarbarras(ruta)+nombresinext+'.pdf'+'"';
        mail:='C:\Program Files (x86)\Mozilla Thunderbird\thunderbird';
        parametro:= '-compose "'+destinatario+Asunto+Cuerpo+adjunto;
       shellExecute(0,'open',PChar(mail),Pchar(parametro),nil,SW_SHOWNORMAL);

        end
        else
        showmessage('No existe destinatario de correo electronico.');

         fdq.close;
         fdq.free;
        end
  else showmessage('No se puede enviar el presupuesto porque el fichero Word no existe.')
end;

procedure TFPresupuestos.mailUpdate(Sender: TObject);
begin
ToolButton3.Enabled:= FileExists(PATHUSER+fdpresupuesto.FieldByName('path').AsString);
end;

procedure TFPresupuestos.NavigatorBindSourceDB3BeforeAction(Sender: TObject;
  Button: TNavigateButton);

begin
 if Button = nbInsert then
    begin
         BindSourceDB3.DataSet.Append;
         Abort;
    end;

 if Button =nbDelete then
    begin
       if MessageDlg('Esta seguro de borrar la linea de presupuesto?', mtConfirmation, [mbYes,mbNo], 0) = mrYes then
        begin

           if BindSourceDB3.DataSet.FieldByName('Aprovado').AsBoolean then
              begin
               ShowMessage('La linea de presupuesto esta aprobada, no se puede eliminar.');
               Abort;
              end;

        end
        else Abort;
    end;

end;

procedure TFPresupuestos.PageControl1Resize(Sender: TObject);
begin
LinkGridToDataSourceBindSourceDB3.Columns[1].Width:=StringGrid1.Width-LinkGridToDataSourceBindSourceDB3.Columns[0].Width-20-LinkGridToDataSourceBindSourceDB3.Columns[4].Width-LinkGridToDataSourceBindSourceDB3.Columns[2].Width-LinkGridToDataSourceBindSourceDB3.Columns[3].Width;

end;

procedure TFPresupuestos.StringGrid1Click(Sender: TObject);
begin
   // (Sender as TStringGrid).EditorMode:=not  (Sender as TStringGrid).EditorMode;
                         //(Sender as TStringGrid).Options:= (Sender as TStringGrid).Options+[goRowSelect];
end;

procedure TFPresupuestos.StringGrid1DrawCell(Sender: TObject; ACol,
  ARow: Integer; Rect: TRect; State: TGridDrawState);
  var cb:TObject; Dr:TRect; Valor:Extended;
begin


if Arow = 0 then
   begin
 (Sender as TStringGrid).Canvas.Brush.Color:=cl3DLight;
   (Sender as TStringGrid).Canvas.Font.Style:=[fsbold];
   (Sender as TStringGrid).Canvas.Font.size:=10;


    end
   else begin
           (Sender as TStringGrid).Canvas.Brush.Color:=clWindow;
           (Sender as TStringGrid).Canvas.Font.Style:=[];
           (Sender as TStringGrid).Canvas.Font.size:=9;

        end;


    if Arow mod 2 =0 then     (Sender as TStringGrid).Canvas.Brush.Color:=clSilver;

    if (ACol=2) and (Arow >0)then
              begin
                   if tryStrToFloat((Sender as TStringGrid).Cells[Acol,Arow],Valor) then
                      if Valor > 80 then
                                          (Sender as TStringGrid).Canvas.Font.color:=clblue;
              end
    else   (Sender as TStringGrid).Canvas.Font.color:=clblack ;



  if (gdSelected in state) or (gdFocused in state) then
      begin
         (Sender as TStringGrid).Canvas.Font.style:=[fsBold];
         (Sender as TStringGrid).Canvas.Brush.Color:=clMenu;
      end;



     if (Sender as TStringGrid).Cells[3,Arow] = 'True' then
                    begin
                        (Sender as TStringGrid).Canvas.Font.color:=clred;
                        (Sender as TStringGrid).canvas.font.Style:=[fsBold]



                    end ;


      if ((ACol=3) or (ACol=4)) and (Arow>0) then  begin

                        if (Sender as TStringGrid).Objects[Acol,Arow]=nil then
                        begin
                             cb:=TCheckBox.Create(Sender as TControl);
                             (Sender as TStringGrid).Objects[Acol,Arow]:=cb;
                             (cb as TCheckBox).parent:=lineas;
                              if ACol=3 then (cb as TCheckBox).OnClick:=CheckBox1Click;
                               // if ACol=3 then  (cb as TCheckBox).OnMouseup:= CheckBox1Mouseup;

                             if ACol=4 then (cb as TCheckBox).OnClick:=CheckBox2Click;
                             (cb as TCheckBox).AllowGrayed:=False;
                             (cb as TCheckBox).Checked:=False;
                             (cb as TCheckBox).Height:=20;
                             (cb as TCheckBox).Width:=15;


                        end  else cb:=(Sender as TStringGrid).Objects[Acol,Arow];

                            if ACol=3 then  if (Sender as TStringGrid).Cells[3,Arow] = 'True' then
                            begin
                                  RowAct:=Arow;
                                (cb as TCheckBox).Checked:=true;

                            end;

                            if Acol=4 then  if (Sender as TStringGrid).Cells[4,Arow] = 'True' then (cb as TCheckBox).Checked:=True;



                               (cb as TCheckBox).color:=(Sender as TStringGrid).Canvas.Brush.Color;
                               (cb as TCheckBox).Left:=  Rect.Left+20;
                               (cb as TCheckBox).Top:= Rect.Top+45;


                        end;

               (Sender as TStringGrid).Canvas.FillRect(Rect);

  if ((Acol <> 3) and (Acol<>4)) or (ARow = 0) then (Sender as TStringGrid).Canvas.TextRect(Rect,Rect.Left,Rect.Top+3,(Sender as TStringGrid).Cells[Acol,Arow]);

  // (Sender as TStringGrid).Canvas.TextRect(Rect,Rect.Left,Rect.Top+3,(Sender as TStringGrid).Cells[Acol,Arow]);


end;

procedure TFPresupuestos.StringGrid1Exit(Sender: TObject);
begin
if fdlineas.State in [dsEdit,dsInsert] then      fdlineas.Post;
end;

procedure TFPresupuestos.StringGrid1GetEditText(Sender: TObject; ACol,
  ARow: Integer; var Value: string);
begin
if not (fdlineas.State in [dsInsert,dsEdit]) then fdlineas.edit;

Value:=Value;
end;

procedure TFPresupuestos.StringGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
     if key= VK_ESCAPE then fdlineas.cancel;

     
end;

procedure TFPresupuestos.StringGrid1KeyPress(Sender: TObject; var Key: Char);
begin
if ((Sender as Tstringgrid).col=2) and (key='.') then
      Key:=',';

if (key=#13) then fdlineas.post;


end;

procedure TFPresupuestos.StringGrid1KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
label8.caption:=inttostr(fdlineas.RecordCount);
label5.Caption:=inttostr(fdlineas.RecNo);
label6.Caption:=inttostr(StringGrid1.Row);
label7.Caption:=inttostr(StringGrid1.RowCount);

if key=40 then
            if (Sender as TStringGrid).Row=(Sender as TStringGrid).RowCount-1 then
                   if not (fdlineas.State  in [dsInsert]) then
                      fdlineas.Append;

end;

procedure TFPresupuestos.StringGrid1MouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
   var Col,Row:integer;
begin

     (Sender as TStringGrid).MouseToCell(X,Y,Col,Row);
    if not (fdlineas.state in [dsInsert, dsEdit]) and (Row<>-1)then

      begin
            RowAct:=Row;
            label10.caption:=inttostr(Col);
            label11.caption:=inttostr(Row);
          // fdlineas.RecNo:=Row;

      end;



end;

procedure TFPresupuestos.StringGrid1SelectCell(Sender: TObject; ACol,
  ARow: Integer; var CanSelect: Boolean);
var  Rect:TRect;  cb:TObject;
begin

  CanSelect:=true;
  if Acol=3 then CanSelect:=false;

end;

procedure TFPresupuestos.fdpresupuestoAfterInsert(DataSet: TDataSet);
begin
      guardarpresupuesto.Enabled:=True;
     Guardar.Enabled:=true;
     shape1.Brush.Color:=cllime;
end;

procedure TFPresupuestos.FormClose(Sender: TObject; var Action: TCloseAction);
begin
action:=caFree;
end;

procedure TFPresupuestos.FormResize(Sender: TObject);
begin
  GroupBox5.Margins.Bottom:=GroupBox5.Height-Guardar.Height-20;
end;

end.