unit Unit3;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm3 = class(TForm)
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form3: TForm3;

implementation

uses unit21;
{$R *.dfm}

procedure TForm3.Button1Click(Sender: TObject);
var
 i,j,len : integer;
begin

  i := strtoint(edit2.Text)+1;
  j := strtoint(edit3.Text);

  showmessage(inttostr(i));
  showmessage(inttostr(j));
  for len := i to j do
  begin
      form21.RichEdit1.Lines[len]:='';
  end;
  form21.RichEdit1.Lines[i] := edit1.Text+'{}';
end;

end.
