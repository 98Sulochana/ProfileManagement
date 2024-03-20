unit uEditProfile;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TeditProfileForm = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Button1: TButton;
    Button2: TButton;
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  editProfileForm: TeditProfileForm;

implementation

{$R *.dfm}

procedure TeditProfileForm.Button2Click(Sender: TObject);
var gasit:boolean;
begin
//Validation for fields
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
