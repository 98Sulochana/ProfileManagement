unit uEditProfile;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TeditProfileForm = class(TForm)
    lblname: TLabel;
    lbladdress: TLabel;
    lblphone: TLabel;
    lbldob: TLabel;
    Label5: TLabel;
    editname: TEdit;
    editaddress: TEdit;
    edittel: TEdit;
    editdob: TEdit;
    btncancel: TButton;
    btnedit: TButton;
    procedure btneditClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  editProfileForm: TeditProfileForm;

implementation

{$R *.dfm}

procedure TeditProfileForm.btneditClick(Sender: TObject);
var
  gasit: boolean;
begin
  // Validation for fields
  gasit := true;
  if editname.Text = '' then
    gasit := false; // Not null fields
  if editaddress.Text = '' then
    gasit := false;
  if edittel.Text = '' then
    gasit := false;
  if editdob.Text = '' then
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
