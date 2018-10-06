unit Unit21;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus, Vcl.StdCtrls, Vcl.ComCtrls,
  System.ImageList, Vcl.ImgList, Vcl.ToolWin, Vcl.ActnList, Vcl.StdActns,
  System.Actions, Vcl.PlatformDefaultStyleActnCtrls, Vcl.ActnMan, Vcl.ActnCtrls,
  Vcl.ActnMenus;

type
  TForm21 = class(TForm)
    ImageList1: TImageList;
    RichEdit1: TRichEdit;
    ActionManager1: TActionManager;
    FileOpen1: TFileOpen;
    FileSaveAs1: TFileSaveAs;
    FileExit1: TFileExit;
    new: TAction;
    block_1: TAction;
    Block_3: TAction;
    PopupMenu1: TPopupMenu;
    MainMenu1: TMainMenu;
    N1: TMenuItem;
    open: TMenuItem;
    save: TMenuItem;
    N4: TMenuItem;
    N5: TMenuItem;
    Exit: TMenuItem;
    N7: TMenuItem;
    N8: TMenuItem;
    N9: TMenuItem;
    black_p1: TMenuItem;
    N11: TMenuItem;
    help: TMenuItem;
    N2: TMenuItem;
    black_p2: TMenuItem;
    N3: TMenuItem;
    ToolBar1: TToolBar;
    ToolButton1: TToolButton;
    ToolButton2: TToolButton;
    ToolButton3: TToolButton;
    ToolButton7: TToolButton;
    ToolButton4: TToolButton;
    ToolButton5: TToolButton;
    SaveDialog1: TSaveDialog;
    ToolButton8: TToolButton;
    action2: TAction;
    StatusBar1: TStatusBar;
    RichEdit2: TRichEdit;
    N6: TMenuItem;
    emphazsize: TMenuItem;
    N12: TMenuItem;
    unravel: TMenuItem;
    a1: TMenuItem;
    b1: TMenuItem;
    N10: TMenuItem;
    Block_2: TAction;
    Block_4: TAction;
    N13: TMenuItem;
    N14: TMenuItem;
    N_find: TMenuItem;
    N_replace: TMenuItem;
    FindDialog1: TFindDialog;
    ReplaceDialog1: TReplaceDialog;
    Memo1: TMemo;
    EditUndo1: TEditUndo;
    EditCopy1: TEditCopy;
    EditSelectAll1: TEditSelectAll;
    N15: TMenuItem;
    N16: TMenuItem;
    N17: TMenuItem;
    RichEdit3: TRichEdit;
    unlock: TMenuItem;
    block_op: TMenuItem;
    N18: TMenuItem;
    block_op_: TAction;
    OpenDialog1: TOpenDialog;
    N19: TMenuItem;
    block_uload: TAction;
    N20: TMenuItem;
    procedure newExecute(Sender: TObject);
    procedure helpClick(Sender: TObject);
    procedure FileOpen1BeforeExecute(Sender: TObject);
    procedure FileOpen1Accept(Sender: TObject);
    procedure FileSaveAs1BeforeExecute(Sender: TObject);
    procedure FileSaveAs1Accept(Sender: TObject);
    procedure black_p1Click(Sender: TObject);
    procedure action2Execute(Sender: TObject);
    procedure black_p2Click(Sender: TObject);
    procedure emphazsizeClick(Sender: TObject);
    procedure unravelClick(Sender: TObject);
    procedure block_1Execute(Sender: TObject);
    procedure Block_3Execute(Sender: TObject);
    procedure Block_2Execute(Sender: TObject);
    procedure Block_4Execute(Sender: TObject);
    procedure N_findClick(Sender: TObject);
    procedure N_replaceClick(Sender: TObject);
    procedure FindDialog1Find(Sender: TObject);
    procedure ReplaceDialog1Replace(Sender: TObject);
    procedure N11Click(Sender: TObject);
    procedure block_opClick(Sender: TObject);
    procedure block_op_Execute(Sender: TObject);
    procedure RichEdit1KeyPress(Sender: TObject; var Key: Char);
    procedure block_uloadExecute(Sender: TObject);
    procedure N20Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form21: TForm21;

implementation

{$R *.dfm}


uses unit1,unit2,unit3,unit4;

var
 CodeCount : integer;

 procedure TForm21.block_1Execute(Sender: TObject);
var
 i,j,len : integer;
begin
    i := richedit1.Perform(EM_LINEFROMCHAR, form21.richedit1.SelStart, 0);
  len := 0;
  showmessage(inttostr(i));
  richedit3.Lines[0]:= richedit1.SelText;
  RichEdit2.Clear;
  richedit2.Lines[0]:=richedit1.selText;
  j := richedit2.Lines.Count;

  j := j+i;

  for len := i+1 to j-1 do
     form21.richedit1.Lines[len] :='';
end;

procedure TForm21.block_op_Execute(Sender: TObject);
var
   cout : integer;
    st : string;
begin
    st := '';

    for cout := 0 to richedit3.Lines.Count-1 do
    begin
        st := st + inttostr(cout)+ ' : ' + richedit3.Lines[cout]+chr(13);
    end;

    showmessage(st);

end;

procedure TForm21.block_uloadExecute(Sender: TObject);
var
   i,j,len,len2 : integer; // 반복문과 길이를 나타내기위하여 사용한 변수
   st : string;            // 블록화된 내용을 저장할 문자형 변수
   r_len, r_len2 : integer;  //사용자가 원하는 부분을 나타내기위하여사용한 부분.
begin
  i := richedit1.Perform(EM_LINEFROMCHAR, form21.richedit1.SelStart, 0); //사용자가 넣고 싶은 줄에 대한 블록을 풀기위하여 사용.
  j := richedit3.Lines.Count;
  st := '';
  j := j+i;
  len2 := 0;
  len  :=0;

  for len2 := 0 to 2 do
    begin
       st := st+richedit3.Lines[len2]+chr(13);

    end;

    form4.Show;
     //richedit1.Lines[i]:=st;

   {richedit1.Lines.Clear;
    richedit1.Lines.Append(st);  사용자가 원하는 부분에 기존에 블록화된내용을 집어넣는다 다만 기존의 내용은 사라진다.}

   //richedit1.Lines[i]:=richedit3.Lines.Text;  richedit3 에있는내용을 사용자가 원하는 부분에 집어 넣게 하는 부분 .

  {for len := i+1 to j-1 do
    richedit1.Lines[len] := '1'; 사용자가 원하는부분을 1로 체우기. 이부분을 내용을 1이 아닌 사용자가 원하는 richeidt3에있는 내용으로 바꿔야함.}

end;

procedure TForm21.action2Execute(Sender: TObject);
var
 txtf : textfile;
begin
     SaveDialog1.Execute; //SaveDialog를 실행시킵니다.
      richedit1.Lines.SaveToFile(SaveDialog1.Filename);
    showmessage(SaveDialog1.Filename);
end;

procedure TForm21.Block_2Execute(Sender: TObject);
begin
     form2.Show;
end;

procedure TForm21.black_p1Click(Sender: TObject);
var
 i,j,len : integer;
begin
    i := richedit1.Perform(EM_LINEFROMCHAR, form21.richedit1.SelStart, 0);
  len := 0;

  RichEdit2.Clear;
  richedit3.Lines[0]:=richedit1.SelText;
  richedit2.Lines[0]:=richedit1.selText;
  j := richedit2.Lines.Count;

  j := j+i;

  for len := i+1 to j-1 do
     form21.richedit1.Lines[len] :='';
end;

procedure TForm21.black_p2Click(Sender: TObject);
begin
   form2.Show;
end;

procedure TForm21.Block_3Execute(Sender: TObject);
begin
    richedit1.SelAttributes.Color := clblue;
    richedit1.SelAttributes.Style := richedit1.SelAttributes.Style+[fsBold];
end;

procedure TForm21.Block_4Execute(Sender: TObject);
begin
        richedit1.SelAttributes.Color := clblack;
        richedit1.SelAttributes.Style := richedit1.SelAttributes.Style-[fsBold];
end;

procedure TForm21.block_opClick(Sender: TObject);
var
   cout : integer;
    st : string;
begin
    st := '';

    for cout := 0 to richedit3.Lines.Count do
    begin
        st := st + richedit3.Lines[cout]+chr(13);
    end;

    showmessage(st);
end;

procedure TForm21.FileOpen1Accept(Sender: TObject);
begin
    richedit1.Lines.LoadFromFile(fileopen1.Dialog.FileName);
end;

procedure TForm21.FileOpen1BeforeExecute(Sender: TObject);
begin
   fileopen1.Dialog.InitialDir := 'C:\';
   fileopen1.Dialog.Filter := 'c프로그램|*.cpp|텍스트화일|*.txt';
end;

procedure TForm21.FileSaveAs1Accept(Sender: TObject);
begin
 richedit1.Lines.SaveToFile(filesaveas1.Dialog.FileName+'.cpp');
end;

procedure TForm21.FileSaveAs1BeforeExecute(Sender: TObject);
begin
     filesaveas1.Dialog.InitialDir := 'C:\';
end;

procedure TForm21.FindDialog1Find(Sender: TObject);
var
  Options: TSearchTypes;
  nPos: Integer;
  Dlg: TFindDialog;
begin
  Dlg := TFindDialog(Sender); // Replace와 find 이벤트를 공유하므로

  // Set up the options.
  Options := [];
  if frWholeWord in Dlg.Options then
    Options := Options + [stWholeWord];
  if frMatchCase in Dlg.Options then
    Options := Options + [stMatchCase]; // 사용자가 선택한 option

  if RichEdit1.SelLength <> 0 then // block 표시가 있으면 다음부터 검사한다
  begin
    RichEdit1.SelStart := RichEdit1.SelStart + RichEdit1.SelLength;
    RichEdit1.SelLength := 0;
  end;

  // Find the text.
  nPos := RichEdit1.FindText(Dlg.FindText, RichEdit1.SelStart, RichEdit1.GetTextLen, Options);

  if nPos = -1 then
  begin
    // Dismiss the Replace dialog.
    Dlg.CloseDialog; // modeless이므로 명시적으로 닫아야 한다
    MessageDlg('문서 검색을 완료하였습니다.',mtInformation,[mbOk],0);
  end
  else
  begin
    RichEdit1.SelStart := nPos;
    RichEdit1.SelLength := Length(Dlg.FindText);
    RichEdit1.Perform(EM_SCROLLCARET, 0, 0); // editor window 를 caret 까지 scroll 시킨다
  end;
   RichEdit1.SetFocus;
end;

function GetCurrline(richedit :Trichedit):
integer;
begin
   result := richedit.Perform(EM_LINEFROMCHAR, richedit.SelStart, 0);

end;
function GetCurrcul(richedit : Trichedit):
integer;
begin
   result :=richedit.SelStart-richedit.Perform(EM_LINEINDEX, GetCurrLine(richedit),0);

end;

procedure TForm21.RichEdit1KeyPress(Sender: TObject; var Key: Char);
begin
    if key =#13 then
    begin
      if CodeCount <1 then
      begin
          memo1.Lines[0] := '1 ';
          CodeCount :=1;
      end;
      CodeCount :=CodeCount+1;
      memo1.Lines.Add(inttostr(CodeCount)+' ');
    end;

    if GetCurrCul(richedit1) =0 then
    begin
      if key = #8 then
      begin
        codecount :=codecount-1;
        memo1.Lines.Delete(codeCount);
      end;
    end;
end;

procedure TForm21.helpClick(Sender: TObject);
begin
        form1.Show;
end;

//실행버튼을 눌렀을떄 일어나는 프로시져
procedure TForm21.N11Click(Sender: TObject);
var
 handle : Thandle;
 i,j,len,FileLen : integer;
 CurrFileName : string;
 ReversFile, Directory, FileReName, FileName : string;
 ofname,oreslt : string;
begin
     winexec('cmd /k',SW_SHOWNORMAL);


     {winexec('cmd.exe', PWideChar('/K cd' + Directory +'&&gcc'+FileName+'&&a.exe'),
                 nil,SW_SHOWNORMAL);
      }
     CurrFileName := OpenDialog1.FileName;

     {*shellExecute(Handle,nil, 'cmd.exe', PWideChar('/K cd '+ Directory +
      +'&&gcc'+FileName+'&& a.exe'),nil,SW_SHOWNORMAL);
       *}
    //WinExec(Pchar('text.c'),SW_SHOW);
end;



procedure TForm21.N20Click(Sender: TObject);
begin
    richedit3.Lines.Clear;
end;

procedure TForm21.N_findClick(Sender: TObject);
begin
  if (finddialog1.FindText = '') and (ReplaceDialog1.FindText <> '') then
      FindDialog1.FindText := ReplaceDialog1.FindText;
      FindDialog1.Execute;
end;

procedure TForm21.N_replaceClick(Sender: TObject);
begin
 if (ReplaceDialog1.FindText = '') and (FindDialog1.FindText <> '') then
    ReplaceDialog1.FindText := FindDialog1.FindText;
  ReplaceDialog1.Execute;
end;

procedure TForm21.ReplaceDialog1Replace(Sender: TObject);
var
  cnt: Integer;
  Options: TSearchTypes;
  nPos: Integer;
begin
  // If user clicked Replace All, then do find/replace
  // operation until no more matches are found.
  Options := [];
  if frWholeWord in ReplaceDialog1.Options then
    Options := Options + [stWholeWord];
  if frMatchCase in ReplaceDialog1.Options then
    Options := Options + [stMatchCase]; // 사용자가 선택한 option

  if frReplaceAll in ReplaceDialog1.Options then
  begin
    cnt := 0;  // 바꾼 문자열의 갯수

    // Find the first match.
    nPos := RichEdit1.FindText(ReplaceDialog1.FindText, RichEdit1.SelStart,
                              RichEdit1.GetTextLen, Options);

    // Loop while we are still finding text.
    while (nPos <> -1) do
    begin
      // Same code as in the OnFind event handler.
      RichEdit1.SelStart  := nPos;
      RichEdit1.SelLength := Length(ReplaceDialog1.FindText);

      // Replace the found text with the new text.
      RichEdit1.SetSelTextBuf(PChar(ReplaceDialog1.ReplaceText));
      RichEdit1.Perform(EM_SCROLLCARET, 0, 0);

      // Increment the counter so we can tell the user
      // how many replacements we made.
      Inc(cnt);

      // Do another search.
      nPos := RichEdit1.FindText(ReplaceDialog1.FindText, RichEdit1.SelStart,
                                RichEdit1.GetTextLen, Options);
    end;
    // Dismiss the Replace dialog.
    ReplaceDialog1.CloseDialog();

    // Tell the user what we did.
    MessageDlg(IntToStr(cnt)+'개의 문자열을 바꾸었습니다.',mtInformation,[mbOk],0);
  end
  else
  begin
    // Find the first match.
    nPos := RichEdit1.FindText(ReplaceDialog1.FindText, RichEdit1.SelStart,
                              RichEdit1.GetTextLen, Options);
    if nPos = -1 then
    begin
      // Dismiss the Replace dialog.
      ReplaceDialog1.CloseDialog; // modeless이므로 명시적으로 닫아야 한다
      MessageDlg('문서 검색을 완료하였습니다.',mtInformation,[mbOk],0);
    end
    else
    begin
      // Same code as in the OnFind event handler.
      RichEdit1.SelStart := nPos;
      RichEdit1.SelLength := Length(ReplaceDialog1.FindText);

      // Replace the found text with the new text.
      RichEdit1.SetSelTextBuf(PChar(ReplaceDialog1.ReplaceText));
      RichEdit1.Perform(EM_SCROLLCARET, 0, 0);
    end;
  end;

  // Set focus to the RichEdit.
  RichEdit1.SetFocus;
end;


procedure TForm21.unravelClick(Sender: TObject);
begin
        richedit1.SelAttributes.Color := clblack;
        richedit1.SelAttributes.Style := richedit1.SelAttributes.Style-[fsBold];
end;
//줄번호 현재줄에 몇줄 읽어 for 첨음부터 받기.

procedure TForm21.emphazsizeClick(Sender: TObject);
begin
    richedit1.SelAttributes.Color := clblue;
    richedit1.SelAttributes.Style := richedit1.SelAttributes.Style+[fsBold];
end;

procedure TForm21.newExecute(Sender: TObject);
begin
           richedit1.clear;
end;

end.
