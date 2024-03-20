program Profile;

uses
  Vcl.Forms,
  uMain in 'uMain.pas' {mainForm},
  udbModule in 'udbModule.pas' {dbModule: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TmainForm, mainForm);
  Application.CreateForm(TdbModule, dbModule);
  Application.Run;
end.
