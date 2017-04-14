unit DataModuleUnit;

interface

uses
  System.SysUtils, System.Classes, Data.DB, Datasnap.DBClient, Data.Win.ADODB;

type
  TMSSQLDataModule = class(TDataModule)
    LinkTypeDS: TDataSource;
    MSSQLConnection: TADOConnection;
    LinkTypeTable: TADOTable;
    LinkTypeTableId: TAutoIncField;
    LinkTypeTableText: TMemoField;
    RequirementDS: TDataSource;
    RequirementTable: TADOTable;
    RequirementTableId: TAutoIncField;
    RequirementTableText: TMemoField;
    RequirementTableTypeId: TIntegerField;
    RequirementTablePriority: TIntegerField;
    RequirementTableStatusId: TIntegerField;
    RequirementTableGroupId: TIntegerField;
    GroupDS: TDataSource;
    GroupTable: TADOTable;
    GroupTableId: TAutoIncField;
    GroupTableCaption: TWideStringField;
    StakehodlerDS: TDataSource;
    StakehodlerTable: TADOTable;
    StakehodlerTableId: TAutoIncField;
    StakehodlerTablePersonName: TWideStringField;


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
