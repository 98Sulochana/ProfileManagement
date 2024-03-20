unit uAddProfile;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TaddProfileForm = class(TForm)
    Label1: TLabel;
    Edit1: TEdit;
    Label2: TLabel;
    Edit2: TEdit;
    Label3: TLabel;
    Edit3: TEdit;
    Label4: TLabel;
    Edit4: TEdit;
    Button1: TButton;
    Button2: TButton;
    Label5: TLabel;
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  addProfileForm: TaddProfileForm;

implementation

{$R *.dfm}

//Save button funtion for add profile
procedure TaddProfileForm.Button2Click(Sender: TObject);
var gasit:boolean;
begin
//Validation for form fields
gasit:=true;
if edit1.Text='' then gasit:=false; // Not null fields
if edit2.Text='' then gasit:=false;
if edit3.Text='' then gasit:=false;
if edit4.Text='' then gasit:=false;
if gasit then
  begin
  close;
  modalresult:=mrok;
  end;
end;

end.
