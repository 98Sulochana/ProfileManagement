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
    procedure actexitappExecute(Sender: TObject);
    procedure actconnectExecute(Sender: TObject);
    procedure actdisconnectExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  mainForm: TmainForm;

implementation

{$R *.dfm}

uses udbModule;

procedure TmainForm.actconnectExecute(Sender: TObject);
begin
dbModule.SQLConnection1.Connected:=true;
dbModule.profilesDataset.Active:=true;
end;

procedure TmainForm.actdisconnectExecute(Sender: TObject);
begin
dbModule.SQLConnection1.Connected:=false;
dbModule.profilesDataset.Active:=false;
end;

procedure TmainForm.actexitappExecute(Sender: TObject);
begin
application.Terminate;
end;

end.
