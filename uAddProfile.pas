unit uAddProfile;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
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

// Save button function for adding a profile
procedure TaddProfileForm.Button2Click(Sender: TObject);
var
  gasit: Boolean;
begin
  // Validation for form fields
  gasit := True;
  if Trim(Edit1.Text) = '' then
    gasit := False; // Not null fields
  if Trim(Edit2.Text) = '' then
    gasit := False;
  if Trim(Edit3.Text) = '' then
    gasit := False;
  if Trim(Edit4.Text) = '' then
    gasit := False;

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

// procedure TaddProfileForm.FormShow(Sender: TObject);
// begin
// edit1.SetFocus;
// end;

end.
