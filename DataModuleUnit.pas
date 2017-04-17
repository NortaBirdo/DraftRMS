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
    StakehodlerDS: TDataSource;
    StakehodlerTable: TADOTable;
    StakehodlerTableId: TAutoIncField;
    StakehodlerTablePersonName: TWideStringField;
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
    Backlog: TADOTable;
    AutoIncField1: TAutoIncField;
    WideMemoField1: TWideMemoField;
    IntegerField1: TIntegerField;
    IntegerField2: TIntegerField;
    IntegerField3: TIntegerField;
    IntegerField4: TIntegerField;
    WideMemoField2: TWideMemoField;
    DateTimeField1: TDateTimeField;
    WideStringField1: TWideStringField;
    WideStringField2: TWideStringField;
    StringField1: TStringField;
    StringField2: TStringField;
    BacklogDS: TDataSource;
    BacklogSQL: TADOQuery;
    BacklogSQLDS: TDataSource;
    GroupForRCDS: TDataSource;
    GroupForRC: TADOTable;
    AutoIncField2: TAutoIncField;
    WideStringField3: TWideStringField;


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
