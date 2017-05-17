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
    ReqFromBacklogDS: TDataSource;
    ReqFromBacklog: TADOTable;
    AutoIncField1: TAutoIncField;
    IntegerField1: TIntegerField;
    IntegerField2: TIntegerField;
    IntegerField3: TIntegerField;
    IntegerField4: TIntegerField;
    WideMemoField2: TWideMemoField;
    DateTimeField1: TDateTimeField;
    WideStringField1: TWideStringField;
    StringField1: TStringField;
    StringField2: TStringField;
    WideStringField4: TWideStringField;
    WideStringField5: TWideStringField;
    RequirementTableRawDataPlant: TWideMemoField;
    ReqFromBacklogRawDataPlant: TWideMemoField;


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

end.
