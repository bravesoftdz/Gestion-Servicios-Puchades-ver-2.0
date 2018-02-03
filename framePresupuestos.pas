unit framePresupuestos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ComCtrls, Vcl.ExtCtrls,
  Vcl.ToolWin, Vcl.ActnMan, Vcl.ActnCtrls, Vcl.StdCtrls;

type
  TFrame1 = class(TFrame)
    Panel1: TPanel;
    HeaderControl1: THeaderControl;
    ListView1: TListView;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    procedure FrameResize(Sender: TObject);
    procedure ListView1Resize(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

procedure TFrame1.FrameResize(Sender: TObject);
begin
Button1.Left:=HeaderControl1.Width-96;
Button2.Left:=HeaderControl1.Width-64;
Button3.Left:=HeaderControl1.Width-32;

end;

procedure TFrame1.ListView1Resize(Sender: TObject);
begin
(Sender as TListView).Columns[1].Width:= HeaderControl1.Width - 175;
end;

end.
