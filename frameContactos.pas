unit frameContactos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls,
  Vcl.ComCtrls, Vcl.ExtCtrls;

type
  TFrame4 = class(TFrame)
    Panel1: TPanel;
    ListView1: TListView;
    HeaderControl1: THeaderControl;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    procedure FrameResize(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

procedure TFrame4.FrameResize(Sender: TObject);
begin
Button1.Left:=HeaderControl1.Width-96;
Button2.Left:=HeaderControl1.Width-64;
Button3.Left:=HeaderControl1.Width-32;


end;

end.
