unit uEditProfile;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
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
var
  gasit: boolean;
begin
  // Validation for fields
  gasit := true;
  if Edit1.Text = '' then
    gasit := false; // Not null fields
  if Edit2.Text = '' then
    gasit := false;
  if Edit3.Text = '' then
    gasit := false;
  if Edit4.Text = '' then
    gasit := false;
  if gasit then
  begin
    Close;
    ModalResult := mrOk;
  end
  else
  begin
    ShowMessage('Please fill in all fields.');
  end;
end;

end.
