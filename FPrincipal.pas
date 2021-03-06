unit FPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ComCtrls, Vcl.Menus, Vcl.ExtCtrls,
  Vcl.ActnMan, Vcl.ActnCtrls, Vcl.ActnMenus, Vcl.ToolWin, Data.DB, Vcl.Grids,
  Vcl.DBGrids, Vcl.StdCtrls, Vcl.AppEvnts, RzGroupBar, RzTabs, RzSplit, RzPanel,
  RzStatus, RzDBStat, VclTee.TeeGDIPlus, VCLTee.TeEngine, VCLTee.TeeProcs,
  VCLTee.Chart, VCLTee.DBChart;

type
  Tprincipal = class(TForm)
    AppEvent1: TApplicationEvents;
    RzStatusBar1: TRzStatusBar;
    RzToolbar1: TRzToolbar;
    RzSplitter1: TRzSplitter;
    RzGroupBar1: TRzGroupBar;
    pagecontrol2: TRzPageControl;
    RzClientes: TRzGroup;
    RzGroup1: TRzGroup;
    RzGroup2: TRzGroup;
    RzGroup3: TRzGroup;
    RzGroup4: TRzGroup;
    RzDBStatusPane1: TRzDBStatusPane;
    RzProgressStatus1: TRzProgressStatus;
    RzDBStateStatus1: TRzDBStateStatus;
    RzFieldStatus1: TRzFieldStatus;
    RzVersionInfoStatus1: TRzVersionInfoStatus;
    RzClockStatus1: TRzClockStatus;
    RzGroup7: TRzGroup;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure pagecontrol2Close(Sender: TObject; var AllowClose: Boolean);
    procedure RzClientesItems0Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  principal: Tprincipal;

implementation

{$R *.dfm}

uses  listaclientes, DModule1;

procedure Tprincipal.FormClose(Sender: TObject; var Action: TCloseAction);
var I:Integer; f:TCustomForm;
begin
for I :=0 to PageControl2.PageCount - 1 do
   begin
     f:=TCustomForm(PageControl2.Pages[I].Controls[0]);
    f.Close;
   end;
end;

procedure Tprincipal.FormCreate(Sender: TObject);
begin

    DataModule1.FDConnection1.Connected:=True;
end;



procedure Tprincipal.FormShow(Sender: TObject);
begin
principal.Resizing(wsMaximized);
end;

procedure Tprincipal.pagecontrol2Close(Sender: TObject;
  var AllowClose: Boolean);
var f:TCustomForm;
begin
f:=TCustomForm((Sender as TRzPageControl).ActivePage.Controls[0]);
f.Close;
AllowClose:=True;
end;




procedure Tprincipal.RzClientesItems0Click(Sender: TObject);
begin
DataModule1.listaclientesExecute(DataModule1.fdClientes)
end;

end.
