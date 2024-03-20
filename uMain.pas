unit uMain;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, System.Actions, Vcl.ActnList,
  Vcl.PlatformDefaultStyleActnCtrls, Vcl.ActnMan, Vcl.ToolWin, Vcl.ActnCtrls,
  Vcl.ActnMenus, Data.DB, Vcl.Grids, Vcl.DBGrids;

type
  TmainForm = class(TForm)
    ActionManager1: TActionManager;
    actconnect: TAction;
    actdisconnect: TAction;
    actexitapp: TAction;
    actaddprofile: TAction;
    acteditprofile: TAction;
    actdeleteprofile: TAction;
    ActionMainMenuBar1: TActionMainMenuBar;
    DBGrid1: TDBGrid;
    actrefreshdata: TAction;
    procedure actexitappExecute(Sender: TObject);
    procedure actconnectExecute(Sender: TObject);
    procedure actdisconnectExecute(Sender: TObject);
    procedure actaddprofileExecute(Sender: TObject);
    procedure actrefreshdataExecute(Sender: TObject);
    procedure acteditprofileExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  mainForm: TmainForm;

implementation

{$R *.dfm}

uses udbModule, uAddProfile, uEditProfile;

//'Add Profile' option implementation  for add a profile to database
procedure TmainForm.actaddprofileExecute(Sender: TObject);
begin
if dbModule.SQLConnection1.Connected then
  begin

  // Clear fields  addProfileForm
  addProfileForm.Edit1.Text:='';
  addProfileForm.Edit2.Text:='';
  addProfileForm.Edit3.Text:='';
  addProfileForm.Edit4.Text:='';
  if addProfileForm.ShowModal=mrok then
    begin

      //Sql quary implementation for adding data to database
      dbModule.SQLQuery1.SQL.Clear;
      dbModule.SQLQuery1.SQL.Add('INSERT INTO `delphi_dev`.`profiles` (`name`, `address`, `tel`, `dob`)');
      dbModule.SQLQuery1.SQL.Add('VALUES ('''+addProfileForm.Edit1.Text+''', '''+addProfileForm.Edit2.Text+''', '''+addProfileForm.Edit3.Text+''', '''+addProfileForm.Edit4.Text+''')');
      dbModule.SQLQuery1.ExecSQL(true);

      //Refresh data
      actrefreshdata.Execute;

    end;
  end;
end;

//'Connect to DB' option implementation for connect application with database
procedure TmainForm.actconnectExecute(Sender: TObject);
begin
dbModule.SQLConnection1.Connected:=true;
dbModule.profilesDataset.Active:=true;
end;

//'Disconnect' option implementation for disconnect application from database
procedure TmainForm.actdisconnectExecute(Sender: TObject);
begin
dbModule.SQLConnection1.Connected:=false;
dbModule.profilesDataset.Active:=false;
end;

//'Edit Profile' option implementation for edit profile details
procedure TmainForm.acteditprofileExecute(Sender: TObject);
begin
if (dbModule.SQLConnection1.Connected) and (dbModule.profilesDataset.IsEmpty=false) then
  begin

  editProfileForm.Edit1.Text:=dbModule.profilesDatasetname.Value;
  editProfileForm.Edit2.Text:=dbModule.profilesDatasetaddress.Value;
  editProfileForm.Edit3.Text:=dbModule.profilesDatasettel.Value;
  editProfileForm.Edit4.Text:=dbModule.profilesDatasetdob.Value;
  if editProfileForm.ShowModal=mrok then
    begin

      //Sql quary implementation for edit data in database
      dbModule.SQLQuery1.SQL.Clear;
      dbModule.SQLQuery1.SQL.Add('UPDATE `delphi_dev`.`profiles` SET `name` = '''+editProfileForm.Edit1.Text+''', `address` = '''+editProfileForm.Edit2.Text+''', `tel` = '''+editProfileForm.Edit3.Text+''', `dob` = '''+editProfileForm.Edit4.Text+''' WHERE (`id` = '''+inttostr(dbModule.profilesDatasetid.Value)+''')');
      dbModule.SQLQuery1.ExecSQL(true);

      //Refresh data
      actrefreshdata.Execute;

    end;

  end;
end;

//'Exit application' option implementation for exit from application
procedure TmainForm.actexitappExecute(Sender: TObject);
begin
application.Terminate;
end;

//'Refresh Data' option implementation for data refresh
procedure TmainForm.actrefreshdataExecute(Sender: TObject);
begin
dbModule.profilesDataset.MergeChangeLog;
dbModule.profilesDataset.ApplyUpdates(-1);
dbModule.profilesDataset.Refresh;
end;

end.
