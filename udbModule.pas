unit udbModule;

interface

uses
  System.SysUtils, System.Classes, Data.DBXMySQL, Data.DB, Data.SqlExpr,
  Data.FMTBcd, Datasnap.DBClient, SimpleDS;

type
  TdbModule = class(TDataModule)
    SQLConnection1: TSQLConnection;
    profilesDataset: TSimpleDataSet;
    profilesDatasetid: TIntegerField;
    profilesDatasetname: TStringField;
    profilesDatasetaddress: TStringField;
    profilesDatasettel: TStringField;
    profilesDatasetdob: TStringField;
    profilesSource: TDataSource;
    SQLQuery1: TSQLQuery;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dbModule: TdbModule;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

end.
