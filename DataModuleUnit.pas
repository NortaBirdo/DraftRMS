unit DataModuleUnit;

interface

uses
  System.SysUtils, System.Classes, Data.DB, Datasnap.DBClient, Data.Win.ADODB;

type
  TMSSQLDataModule = class(TDataModule)
    MSSQLConnection: TADOConnection;
    RequirementDS: TDataSource;
    RequirementTable: TADOTable;
    GroupDS: TDataSource;
    GroupTable: TADOTable;
    GroupTableId: TAutoIncField;
    GroupTableCaption: TWideStringField;
    RequirementTableId: TAutoIncField;
    RequirementTableRawText: TWideMemoField;
    RequirementTableTypeId: TIntegerField;
    RequirementTablePriority: TIntegerField;
    RequirementTableStatusId: TIntegerField;
    RequirementTableGroupId: TIntegerField;
    RequirementTableComment: TWideMemoField;
    RequirementTableElicitationDate: TDateTimeField;
    RequirementTableChangeRequestLink: TWideStringField;
    TypeDS: TDataSource;
    TypeTable: TADOTable;
    TypeTableId: TAutoIncField;
    TypeTableCaption: TWideStringField;
    StatusTable: TADOTable;
    StatusDS: TDataSource;
    StatusTableId: TAutoIncField;
    StatusTableCaption: TWideStringField;
    RequirementTableShort: TWideStringField;
    RequirementTableStatus: TStringField;
    RequirementTableType: TStringField;
    BacklogSQL: TADOQuery;
    BacklogSQLDS: TDataSource;
    GroupForRCDS: TDataSource;
    GroupForRC: TADOTable;
    AutoIncField2: TAutoIncField;
    WideStringField3: TWideStringField;
    RequirementTableAuthors: TWideStringField;
    RequirementTableSource: TWideStringField;
    procedure DataModuleCreate(Sender: TObject);


  private
    { Private declarations }
  public
    { Public declarations }
  end;


var
  MSSQLDataModule: TMSSQLDataModule;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

procedure TMSSQLDataModule.DataModuleCreate(Sender: TObject);
var
 f: TStringList;
begin
  if FileExists('Setting.txt') then
  begin
    f := TStringList.Create;
    f.LoadFromFile('setting.txt');
    MSSQLConnection.Connected := false;
    MSSQLConnection.ConnectionString := 'Provider=SQLOLEDB.1;Integrated Security=SSPI'+
  //  'Persist Security Info=False;'+
    'Initial Catalog=' + f.Strings[1] + ';'+
    'Data Source=' + f.Strings[0] + ';' +
    'Use Procedure for Prepare=1;Auto Translate=True;Packet Size=4096;'+
    'Workstation ID=NSOKOLOVSKIY;'+
    'Use Encryption for Data=False;Tag with column collation when possible=False;';
    MSSQLConnection.Connected := true;
    GroupTable.Active := true;
    RequirementTable.Active := true;
    TypeTable.Active := true;
    StatusTable.Active := true;
    GroupForRC.Active := true;
    BacklogSQL.Active := true;
  end;
end;

end.
