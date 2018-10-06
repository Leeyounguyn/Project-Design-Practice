unit Unit4;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm4 = class(TForm)
    Edit1: TEdit;
    Edit2: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form4: TForm4;

implementation

{$R *.dfm}

uses unit21;

procedure TForm4.Button1Click(Sender: TObject);
var
   i,len2 : integer; // 반복문과 길이를 나타내기위하여 사용한 변수
   st : string;            // 블록화된 내용을 저장할 문자형 변수
   r_len, r_len2 : integer;  //사용자가 원하는 부분을 나타내기위하여사용한 부분.
begin
  i := form21.richedit1.Perform(EM_LINEFROMCHAR, form21.richedit1.SelStart, 0); //사용자가 넣고 싶은 줄에 대한 블록을 풀기위하여 사용.
  st := '';
  len2 := 0;

  r_len:= strtoint(edit1.Text);
  r_len2:= strtoint(edit2.Text);

  for len2 := r_len to r_len2 do
    begin
       st := st+form21.richedit3.Lines[len2]+chr(13);
    end;
        form21.richedit1.Lines[i]:=st;
end;

end.
