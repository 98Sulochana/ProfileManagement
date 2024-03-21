unit uDeleteProfile;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TdeleteProfileForm = class(TForm)
    Label1: TLabel;
    btndelete: TButton;
    btncancel: TButton;
    procedure btndeleteClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  deleteProfileForm: TdeleteProfileForm;

implementation

{$R *.dfm}

procedure TdeleteProfileForm.btndeleteClick(Sender: TObject);
begin
  close;
  modalresult := mrok;
end;

end.
