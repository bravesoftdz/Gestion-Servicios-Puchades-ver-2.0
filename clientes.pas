unit clientes;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.ComCtrls,
  VclTee.TeeGDIPlus, VCLTee.TeEngine, VCLTee.TeeProcs, VCLTee.Chart,
  VCLTee.DBChart, framePresupuestos, frameFacturas, frameObras, frameContactos,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, System.Rtti, System.Bindings.Outputs,
  Vcl.Bind.Editors, Data.Bind.EngExt, Vcl.Bind.DBEngExt, Data.Bind.Components,
  Data.Bind.DBScope, Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  Data.Bind.Controls, Vcl.Buttons, Vcl.Bind.Navigator, Vcl.ToolWin;

type
  TFClientes = class(TForm)
    GroupBox1: TGroupBox;
    GridPanel1: TGridPanel;
    Panel1: TPanel;
    GridPanel2: TGridPanel;
    GroupBox4: TGroupBox;
    LabeledEdit1: TLabeledEdit;
    LabeledEdit2: TLabeledEdit;
    LabeledEdit3: TLabeledEdit;
    GroupBox2: TGroupBox;
    LabeledEdit4: TLabeledEdit;
    LabeledEdit5: TLabeledEdit;
    GroupBox5: TGroupBox;
    ComboBox1: TComboBox;
    Label1: TLabel;
    Label2: TLabel;
    ComboBox2: TComboBox;
    Frame11: TFrame1;
    Frame21: TFrame2;
    Frame31: TFrame3;
    Frame41: TFrame4;
    GroupBox3: TGroupBox;
    LabeledEdit6: TLabeledEdit;
    LabeledEdit7: TLabeledEdit;
    LabeledEdit8: TLabeledEdit;
    fdclientes: TFDQuery;
    fdpresupuestos: TFDQuery;
    fdfacturas: TFDQuery;
    fdobras: TFDQuery;
    fdContactos: TFDQuery;
    BindSourceDB1: TBindSourceDB;
    BindingsList1: TBindingsList;
    LinkControlToField1: TLinkControlToField;
    LinkControlToField2: TLinkControlToField;
    LinkControlToField3: TLinkControlToField;
    LinkControlToField4: TLinkControlToField;
    LinkControlToField5: TLinkControlToField;
    LinkControlToField6: TLinkControlToField;
    LinkControlToField7: TLinkControlToField;
    LinkControlToField8: TLinkControlToField;
    fdAdministradores: TFDQuery;
    LinkPropertyToFieldItemIndex: TLinkPropertyToField;
    BindSourceDB2: TBindSourceDB;
    LinkListControlToField2: TLinkListControlToField;
    BindSourceDB3: TBindSourceDB;
    LinkListControlToField1: TLinkListControlToField;
    BindSourceDB4: TBindSourceDB;
    LinkListControlToField3: TLinkListControlToField;
    BindSourceDB5: TBindSourceDB;
    LinkListControlToField4: TLinkListControlToField;
    BindSourceDB6: TBindSourceDB;
    LinkFillControlToField1: TLinkFillControlToField;
    NavigatorBindSourceDB2: TBindNavigator;
    CoolBar1: TCoolBar;
    ToolBar1: TToolBar;
    ToolButton1: TToolButton;
    procedure FormCreate(Sender: TObject);
    procedure GridPanel2Resize(Sender: TObject);
    procedure Frame21ListView1Resize(Sender: TObject);
    procedure LinkListControlToField1EvalError(Sender: TObject;
      AException: Exception);
    procedure Frame11ListView1AdvancedCustomDrawItem(Sender: TCustomListView;
      Item: TListItem; State: TCustomDrawState; Stage: TCustomDrawStage;
      var DefaultDraw: Boolean);
    procedure Frame11Button2Click(Sender: TObject);
    procedure Frame11Button1Click(Sender: TObject);
    procedure ToolButton1Click(Sender: TObject);
    procedure Frame11Button3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FClientes: TFClientes;

implementation

{$R *.dfm}

uses DModule1, presupuestos, FPrincipal, listaclientes;

procedure TFClientes.FormCreate(Sender: TObject);
begin


      fdclientes.ParamByName('id_cliente').AsInteger:=DataModule1.fdClientes.FieldByName('IdContactos').AsInteger;
      fdclientes.Active:=true;

      (Sender as TFClientes).Caption:='Cliente ' + fdclientes.FieldByName('nombre').AsString;

      fdAdministradores.Active:=true;

      fdpresupuestos.ParamByName('id_cliente').AsInteger:=fdclientes.FieldByName('IdContactos').AsInteger;
      fdpresupuestos.Active:=true;

     if fdpresupuestos.RecordCount > 0 then LinkListControlToField2.Active:=true
              else LinkListControlToField2.AutoActivate:=true;


      fdfacturas.ParamByName('id_cliente').AsInteger:=fdclientes.FieldByName('IdContactos').AsInteger;
      fdfacturas.Active:=true;

      if fdfacturas.RecordCount > 0 then LinkListControlToField1.Active:=true
              else LinkListControlToField1.AutoActivate:=true;

      fdobras.ParamByName('id_cliente').AsInteger:=fdclientes.FieldByName('IdContactos').AsInteger;
      fdobras.Active:=true;

      if fdobras.RecordCount > 0 then LinkListControlToField3.Active:=true
              else LinkListControlToField3.AutoActivate:=true;

       fdcontactos.ParamByName('id_cliente').AsInteger:=fdclientes.FieldByName('IdContactos').AsInteger;
      fdcontactos.Active:=true;

      if fdcontactos.RecordCount > 0 then LinkListControlToField4.Active:=true
              else LinkListControlToField4.AutoActivate:=true;

      end;

procedure TFClientes.Frame11Button1Click(Sender: TObject);
begin
DataModule1.insertarpresupuestoExecute(fdclientes);
end;

procedure TFClientes.Frame11Button2Click(Sender: TObject);
begin
  DataModule1.editarpresupuestoExecute(fdpresupuestos);
end;

procedure TFClientes.Frame11Button3Click(Sender: TObject);
begin
DataModule1.borrarpresupuestosExecute(fdpresupuestos);
end;

procedure TFClientes.Frame11ListView1AdvancedCustomDrawItem(
  Sender: TCustomListView; Item: TListItem; State: TCustomDrawState;
  Stage: TCustomDrawStage; var DefaultDraw: Boolean);
begin

 if item.Index mod 2 <> 0 then
         begin
        (Sender as TListview).Canvas.Brush.Color:=cl3DLight ;
         end
      else
        (Sender as TListview).Canvas.Brush.Color:=clWindow;

     if (cdsSelected in State) then
        begin
         (Sender as TListview).Canvas.font.Style:=[fsbold];
        end;
end;

procedure TFClientes.Frame21ListView1Resize(Sender: TObject);
begin
  Frame21.ListView1Resize(Sender);

end;

procedure TFClientes.GridPanel2Resize(Sender: TObject);
begin
     ComboBox1.Width:=GroupBox5.Width-100;
      ComboBox2.Width:=GroupBox5.Width-100;
end;

procedure TFClientes.LinkListControlToField1EvalError(Sender: TObject;
  AException: Exception);
begin
        ShowException(Sender, AException);
end;

procedure TFClientes.ToolButton1Click(Sender: TObject);
begin
  DataModule1.editarclienteExecute(fdclientes);
end;

end.
