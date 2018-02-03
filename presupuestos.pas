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
  Data.Bind.Controls, Vcl.Bind.Navigator, Vcl.DBGrids;

type
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
    BindSourceDB3: TBindSourceDB;
    LinkGridToDataSourceBindSourceDB3: TLinkGridToDataSource;
    DateTimePicker1: TDateTimePicker;
    Label1: TLabel;
    LinkControlToField8: TLinkControlToField;
    CheckBox1: TCheckBox;
    CheckBox2: TCheckBox;
    fdlineasId_Partida: TIntegerField;
    fdlineasId_Presupuesto: TIntegerField;
    fdlineasDescripcion: TStringField;
    fdlineasTotal: TFloatField;
    fdlineasAprovado: TBooleanField;
    fdlineasEjecutado: TBooleanField;
    fdlineasFechaPresupuesto: TDateTimeField;
    ShellListView1: TShellListView;
    ShellListView2: TShellListView;
    ControlBar2: TControlBar;
    LabeledEdit10: TLabeledEdit;
    LabeledEdit9: TLabeledEdit;
    Guardar: TButton;
    Aceptar: TButton;
    cerrar: TButton;
    LabeledEdit5: TLabeledEdit;
    LabeledEdit11: TLabeledEdit;
    LinkControlToField9: TLinkControlToField;
    dialruta: TOpenDialog;
    LinkControlToField12: TLinkControlToField;
    LinkControlToField10: TLinkControlToField;
    LinkControlToField11: TLinkControlToField;
    Shape1: TShape;
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
    procedure CheckBox1Exit(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure PageControl1Resize(Sender: TObject);
    procedure StringGrid1Exit(Sender: TObject);
    procedure CheckBox2Exit(Sender: TObject);

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
  private
    { Private declarations }
  public
    { Public declarations }
    procedure carpetasdocumentacion(var ruta:string; var ok:boolean);
  end;

var
  FPresupuestos: TFPresupuestos;

implementation

{$R *.dfm}

uses DModule1, listaclientes;

procedure TFPresupuestos.abrircarpetaExecute(Sender: TObject);
var ruta:string;
begin
      ruta:= ExtractfilePath(PATHUSER+fdpresupuesto.fieldbyname('path').asstring);

      if DirectoryExists(ruta) then

      ShellExecute(0, 'open', nil, nil, Pchar(ruta), SW_SHOW)
      else
      showmessage('El directorio de presupuestos no existe.');
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

procedure TFPresupuestos.AceptarClick(Sender: TObject);
begin
  GuardarClick(Sender);
  Close;
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

procedure TFPresupuestos.CheckBox1Exit(Sender: TObject);
begin
    if fdlineas.state in [dsEdit,dsInsert] then fdlineas.Post;
    (Sender as TCheckBox).Visible:=false;

end;

procedure TFPresupuestos.CheckBox2Exit(Sender: TObject);
begin
     if fdlineas.state in [dsEdit,dsInsert] then fdlineas.Post;
    (Sender as TCheckBox).Visible:=false;
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

procedure TFPresupuestos.fdlineasAfterApplyUpdates(DataSet: TFDDataSet;
  AErrors: Integer);
begin
      if AErrors = 0 then
         if not fdpresupuesto.UpdatesPending then
            begin
            guardarpresupuesto.Enabled:=false;
             guardar.Enabled:=false;
             shape1.Brush.Color:=clwhite;
            end;

         
end;

procedure TFPresupuestos.fdlineasAfterDelete(DataSet: TDataSet);
var i:integer;
begin
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
   fdlineas.FieldByName('Id_Presupuesto').AsInteger:=fdpresupuesto.FieldByName('id_presupuesto').AsInteger;
   fdlineas.FieldByName('FechaPresupuesto').asdateTime:= fdpresupuesto.FieldByName('FechaPresupuesto').AsDateTime;
   fdlineas.FieldByName('Id_partida').AsInteger:=StringGrid1.rowcount-1;
     guardarpresupuesto.Enabled:=True;
     Guardar.Enabled:=true;
     shape1.Brush.Color:=cllime;
end;

procedure TFPresupuestos.fdlineasBeforePost(DataSet: TDataSet);
begin
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
         if not fdlineas.UpdatesPending then
            begin

            guardarpresupuesto.Enabled:=false;
            guardar.Enabled:=false;
            shape1.Brush.Color:=clwhite;
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
      fdpresupuesto.CommitUpdates;
 end;


 if (fdlineas.state in [dsEdit,dsInsert]) then
 begin
   fdlineas.post;
 end;

 if fdlineas.UpdatesPending then
    begin
         fdlineas.ApplyUpdates(1);
         fdlineas.CommitUpdates;
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

procedure TFPresupuestos.guardarpresupuestoExecute(Sender: TObject);
begin
GuardarClick(Sender);
end;

procedure TFPresupuestos.LabeledEdit10Change(Sender: TObject);
begin
      labeledEdit12.Text:= floattostr((DataModule1.IVA(fdCliente.FieldByName('familia').Asinteger)-1)* fdpresupuesto.FieldByName('TotalAprobado').Asfloat)+' �';
     labeledEdit9.Text:= floattostr(DataModule1.IVA(fdCliente.FieldByName('familia').Asinteger)* fdpresupuesto.FieldByName('TotalAprobado').Asfloat);
end;

procedure TFPresupuestos.LabeledEdit5Change(Sender: TObject);
begin
     labeledEdit13.Text:= floattostr((DataModule1.IVA(fdCliente.FieldByName('familia').Asinteger)-1)* fdpresupuesto.FieldByName('Total').Asfloat)+' �';
     labeledEdit11.Text:= floattostr(DataModule1.IVA(fdCliente.FieldByName('familia').Asinteger)* fdpresupuesto.FieldByName('Total').Asfloat)+' �';

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

procedure TFPresupuestos.PageControl1Resize(Sender: TObject);
begin
LinkGridToDataSourceBindSourceDB3.Columns[1].Width:=StringGrid1.Width-LinkGridToDataSourceBindSourceDB3.Columns[0].Width-20-LinkGridToDataSourceBindSourceDB3.Columns[4].Width-LinkGridToDataSourceBindSourceDB3.Columns[2].Width-LinkGridToDataSourceBindSourceDB3.Columns[3].Width;

end;

procedure TFPresupuestos.StringGrid1DrawCell(Sender: TObject; ACol,
  ARow: Integer; Rect: TRect; State: TGridDrawState);
  var cb:TCheckbox;
begin
if Arow = 0 then
   begin
 (Sender as TStringGrid).Canvas.Brush.Color:=cl3DLight;
   (Sender as TStringGrid).Canvas.Font.Style:=[fsbold];
   (Sender as TStringGrid).Canvas.Font.size:=10;


    end
   else begin
           (Sender as TStringGrid).Canvas.Brush.Color:=clwindow;
           (Sender as TStringGrid).Canvas.Font.Style:=[];
           (Sender as TStringGrid).Canvas.Font.size:=9;

        end;
      (Sender as TStringGrid).Canvas.FillRect(Rect);

     (Sender as TStringGrid).Canvas.TextRect(Rect,Rect.Left,Rect.Top+3,(Sender as TStringGrid).Cells[Acol,Arow]);

   if (gdSelected in State) then
      begin
         (Sender as TStringGrid).Canvas.Font.style:=[fsBold];
      end;


   if (((Acol=4) or (ACol=3)) and (ARow>0) ) then  begin
            if (Sender as TStringGrid).Objects[Acol,Arow]=nil then
               begin
               cb:=TCheckBox.Create(Sender as TControl);
               (Sender as TStringGrid).Objects[Acol,Arow]:=cb;
               cb.OnExit:=CheckBox1Exit;
               cb.parent:=lineas;
               cb.Left:=checkbox1.Left;
               cb.Top:=checkbox1.top;
               cb.Height:=25;
               cb.Width:=25;
               cb.Left:=  Rect.Left+20;
               cb.Top:= Rect.Top+45;
              if ACol=3 then cb.checked:=fdlineas.fieldbyname('Aprovado').asboolean;
              if ACol=4 then cb.checked:=fdlineas.fieldbyname('ejecutado').asboolean;

               end;
             end;


end;

procedure TFPresupuestos.StringGrid1Exit(Sender: TObject);
begin
if fdlineas.State in [dsEdit,dsInsert] then      fdlineas.Post;
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
                      fdlineas.Insert;
end;

procedure TFPresupuestos.StringGrid1MouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
   var Col,Row:integer;
begin

     (Sender as TStringGrid).MouseToCell(X,Y,Col,Row);

     if (Col=3) and (Row>0)   then
      begin
             linkControltofield10.Active:=false;
             linkControltofield10.control:=(StringGrid1.Objects[Col,Row] as TCheckBox);
             linkControltofield10.FieldName:='Aprovado';
            linkControltofield10.Active:=true;
      end;

      if (Col=4) and (Row>0)   then
      begin
             linkControltofield11.Active:=false;
             linkControltofield11.control:=(StringGrid1.Objects[Col,Row] as TCheckBox);
             linkControltofield11.FieldName:='Ejecutado';
            linkControltofield11.Active:=true;
      end;

end;

procedure TFPresupuestos.StringGrid1SelectCell(Sender: TObject; ACol,
  ARow: Integer; var CanSelect: Boolean);
var  Rect:TRect;
begin
{  if ACol=3 then
     begin
    Rect:=(Sender  as TStringGrid).CellRect(Acol,Arow);
    (Sender  as TStringGrid).Canvas.FillRect(Rect);
    (Sender  as TStringGrid).Canvas.Font.Style:=[fsbold];

    checkBox1.top:=Rect.Top+45;
    checkBox1.Left:=Rect.Left+20;
    checkBox1.Visible:=true;
    end  ;
    if ACol=4 then
     begin
    Rect:=(Sender  as TStringGrid).CellRect(Acol,Arow);
    checkBox2.top:=Rect.Top+45;
    checkBox2.Left:=Rect.Left+20;
    checkBox2.Visible:=true;
    end ;
    if Acol=2 then  begin

            DrawFrameControl((Sender as TstringGrid).Handle,Rect,DFC_BUTTON, DFCS_BUTTONCHECK);
             end;   }
   { if (ACol=3)  then
      begin
             linkControltofield10.Active:=false;
           linkControltofield10.control:=((Sender as TStringGrid).Objects[Acol,Arow] as TCheckBox);
         linkControltofield10.FieldName:='Aprovado';
            linkControltofield10.Active:=true;
      end;    }
end;

procedure TFPresupuestos.fdpresupuestoAfterInsert(DataSet: TDataSet);
begin
      guardarpresupuesto.Enabled:=True;
     Guardar.Enabled:=true;
     shape1.Brush.Color:=cllime;
end;

end.
