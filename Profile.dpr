program Profile;

uses
  Vcl.Forms,
  uMain in 'uMain.pas' {mainForm},
  udbModule in 'udbModule.pas' {dbModule: TDataModule},
  uAddProfile in 'uAddProfile.pas' {addProfileForm},
  uEditProfile in 'uEditProfile.pas' {editProfileForm},
  uDeleteProfile in 'uDeleteProfile.pas' {deleteProfileForm};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TmainForm, mainForm);
  Application.CreateForm(TdbModule, dbModule);
  Application.CreateForm(TaddProfileForm, addProfileForm);
  Application.CreateForm(TeditProfileForm, editProfileForm);
  Application.CreateForm(TdeleteProfileForm, deleteProfileForm);
  Application.Run;
end.
