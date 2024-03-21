unit uMain;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, System.Actions, Vcl.ActnList,
  Vcl.PlatformDefaultStyleActnCtrls, Vcl.ActnMan, Vcl.ToolWin, Vcl.ActnCtrls,
  Vcl.ActnMenus, Data.DB, Vcl.Grids, Vcl.DBGrids, Vcl.Menus, Vcl.ActnPopup;

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
    PopupActionBar1: TPopupActionBar;
    AddProfile1: TMenuItem;
    EditProfile1: TMenuItem;
    DeleteProfile1: TMenuItem;
    procedure actexitappExecute(Sender: TObject);
    procedure actconnectExecute(Sender: TObject);
    procedure actdisconnectExecute(Sender: TObject);
    procedure actaddprofileExecute(Sender: TObject);
    procedure actrefreshdataExecute(Sender: TObject);
    procedure acteditprofileExecute(Sender: TObject);
    procedure actdeleteprofileExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  mainForm: TmainForm;

implementation

{$R *.dfm}

uses udbModule, uAddProfile, uEditProfile, uDeleteProfile;

// 'Add Profile' option implementation  for add a profile to database
procedure TmainForm.actaddprofileExecute(Sender: TObject);
var
  TelNumber: string;
  TelValid: Boolean;
begin
  if dbModule.SQLConnection1.Connected then
  begin
    // Clear fields in addProfileForm
    addProfileForm.editname.Text := '';
    addProfileForm.editaddress.Text := '';
    addProfileForm.edittel.Text := '';
    addProfileForm.editdob.Text := '';

    while addProfileForm.ShowModal = mrok do
    begin

      // Validate telephone number
      TelNumber := addProfileForm.edittel.Text;
      TelValid := (Length(TelNumber) = 10) and
        (StrToIntDef(TelNumber, -1) >= 0);

      if not TelValid then
      begin
        ShowMessage('Please enter a valid 10-digit telephone number.');
        // If telephone number is invalid, continue showing the form
        Continue;
      end;

      // SQL query implementation for adding data to database
      dbModule.SQLQuery1.SQL.Clear;
      dbModule.SQLQuery1.SQL.Add
        ('INSERT INTO `delphi_dev`.`profiles` (`name`, `address`, `tel`, `dob`)');
      dbModule.SQLQuery1.SQL.Add('VALUES (''' + addProfileForm.editname.Text +
        ''', ''' + addProfileForm.editaddress.Text + ''', ''' + TelNumber +
        ''', ''' + addProfileForm.editdob.Text + ''')');
      dbModule.SQLQuery1.ExecSQL(true);

      // Refresh data
      actrefreshdata.Execute;

      // Exit the loop
      Break;
    end;
  end;
end;

// 'Connect to DB' option implementation for connect application with database
procedure TmainForm.actconnectExecute(Sender: TObject);
begin
  dbModule.SQLConnection1.Connected := true;
  dbModule.profilesDataset.Active := true;
end;

// 'Delete Profile' option implementation for delete profile details from database
procedure TmainForm.actdeleteprofileExecute(Sender: TObject);
begin
  if (dbModule.SQLConnection1.Connected) and
    (dbModule.profilesDataset.IsEmpty = false) then
    if deleteProfileForm.ShowModal = mrok then
    begin
      // Sql quary implementation for delete data from database
      dbModule.SQLQuery1.SQL.Clear;
      dbModule.SQLQuery1.SQL.Add
        ('DELETE FROM `delphi_dev`.`profiles` WHERE (`id` = ''' +
        inttostr(dbModule.profilesDatasetid.Value) + ''');');
      dbModule.SQLQuery1.ExecSQL(true);

      // Refresh data
      actrefreshdata.Execute;

    end;

end;

// 'Disconnect' option implementation for disconnect application from database
procedure TmainForm.actdisconnectExecute(Sender: TObject);
begin
  dbModule.SQLConnection1.Connected := false;
  dbModule.profilesDataset.Active := false;
end;

// 'Edit Profile' option implementation for edit profile details
procedure TmainForm.acteditprofileExecute(Sender: TObject);
var
  TelNumber: string;
  TelValid: Boolean;
begin
  if (dbModule.SQLConnection1.Connected) and
    (not dbModule.profilesDataset.IsEmpty) then
  begin
    repeat
      editProfileForm.editname.Text := dbModule.profilesDatasetname.Value;
      editProfileForm.editaddress.Text := dbModule.profilesDatasetaddress.Value;
      editProfileForm.edittel.Text := dbModule.profilesDatasettel.Value;
      editProfileForm.editdob.Text := dbModule.profilesDatasetdob.Value;

      if editProfileForm.ShowModal = mrok then
      begin
        // Validate telephone number
        TelNumber := editProfileForm.edittel.Text;
        TelValid := (Length(TelNumber) = 10) and
          (StrToIntDef(TelNumber, -1) >= 0);

        if not TelValid then
        begin
          ShowMessage('Please enter a valid 10-digit telephone number.');
          Continue; // Show the edit form again if telephone number is not valid
        end;

        // SQL query implementation for edit data in database
        dbModule.SQLQuery1.SQL.Clear;
        dbModule.SQLQuery1.SQL.Add
          ('UPDATE `delphi_dev`.`profiles` SET `name` = ''' +
          editProfileForm.editname.Text + ''', `address` = ''' +
          editProfileForm.editaddress.Text + ''', `tel` = ''' +
          editProfileForm.edittel.Text + ''', `dob` = ''' +
          editProfileForm.editdob.Text + ''' WHERE (`id` = ''' +
          inttostr(dbModule.profilesDatasetid.Value) + ''')');
        dbModule.SQLQuery1.ExecSQL(true);

        // Refresh data
        actrefreshdata.Execute;

        // Exit the loop if the operation is successful
        Break;
      end
      else
      begin
        // User canceled the operation, exit the loop
        Break;
      end;
    until false;
    // Loop indefinitely until the user cancels or provides valid data
  end;
end;

// 'Exit application' option implementation for exit from application
procedure TmainForm.actexitappExecute(Sender: TObject);
begin
  application.Terminate;
end;

// 'Refresh Data' option implementation for data refresh
procedure TmainForm.actrefreshdataExecute(Sender: TObject);
begin
  dbModule.profilesDataset.MergeChangeLog;
  dbModule.profilesDataset.ApplyUpdates(-1);
  dbModule.profilesDataset.Refresh;
end;

end.
