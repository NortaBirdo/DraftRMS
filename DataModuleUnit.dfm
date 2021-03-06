object MSSQLDataModule: TMSSQLDataModule
  OldCreateOrder = False
  Height = 416
  Width = 643
  object MSSQLConnection: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=SQLOLEDB.1;Password=dYlk69FNsdfh;Persist Security Info=' +
      'True;User ID=budgetUser;Initial Catalog=DraftRMS;Data Source=PM4' +
      ';Use Procedure for Prepare=1;Auto Translate=True;Packet Size=409' +
      '6;Workstation ID=NSOKOLOVSKIY;Use Encryption for Data=False;Tag ' +
      'with column collation when possible=False'
    LoginPrompt = False
    Provider = 'SQLOLEDB.1'
    Left = 56
    Top = 88
  end
  object RequirementDS: TDataSource
    DataSet = RequirementTable
    Left = 280
    Top = 88
  end
  object RequirementTable: TADOTable
    Active = True
    Connection = MSSQLConnection
    CursorType = ctStatic
    IndexFieldNames = 'GroupId'
    MasterFields = 'Id'
    MasterSource = GroupDS
    TableName = 'Requirement'
    Left = 176
    Top = 88
    object RequirementTableId: TAutoIncField
      FieldName = 'Id'
      ReadOnly = True
    end
    object RequirementTableTypeId: TIntegerField
      FieldName = 'TypeId'
    end
    object RequirementTablePriority: TIntegerField
      FieldName = 'Priority'
    end
    object RequirementTableStatusId: TIntegerField
      FieldName = 'StatusId'
    end
    object RequirementTableGroupId: TIntegerField
      FieldName = 'GroupId'
    end
    object RequirementTableComment: TWideMemoField
      FieldName = 'Comment'
      BlobType = ftWideMemo
    end
    object RequirementTableElicitationDate: TDateTimeField
      FieldName = 'ElicitationDate'
      EditMask = '!99/99/00;1;_'
    end
    object RequirementTableChangeRequestLink: TWideStringField
      FieldName = 'ChangeRequestLink'
      Size = 500
    end
    object RequirementTableStatus: TStringField
      FieldKind = fkLookup
      FieldName = 'Status'
      LookupDataSet = StatusTable
      LookupKeyFields = 'Id'
      LookupResultField = 'Caption'
      KeyFields = 'StatusId'
      Lookup = True
    end
    object RequirementTableType: TStringField
      FieldKind = fkLookup
      FieldName = 'Type'
      LookupDataSet = TypeTable
      LookupKeyFields = 'Id'
      LookupResultField = 'Caption'
      KeyFields = 'TypeId'
      Lookup = True
    end
    object RequirementTableAuthors: TWideStringField
      FieldName = 'Authors'
      Size = 100
    end
    object RequirementTableSource: TWideStringField
      FieldName = 'Source'
      Size = 500
    end
    object RequirementTableRawDataPlant: TWideMemoField
      FieldName = 'RawDataPlant'
      BlobType = ftWideMemo
    end
  end
  object GroupDS: TDataSource
    DataSet = GroupTable
    Left = 280
    Top = 24
  end
  object GroupTable: TADOTable
    Active = True
    Connection = MSSQLConnection
    CursorType = ctStatic
    TableName = 'ReqGroup'
    Left = 176
    Top = 24
    object GroupTableId: TAutoIncField
      FieldName = 'Id'
      ReadOnly = True
    end
    object GroupTableCaption: TWideStringField
      FieldName = 'Caption'
      Size = 100
    end
  end
  object TypeDS: TDataSource
    DataSet = TypeTable
    Left = 280
    Top = 176
  end
  object TypeTable: TADOTable
    Active = True
    Connection = MSSQLConnection
    CursorType = ctStatic
    TableName = 'RequirementType'
    Left = 176
    Top = 168
    object TypeTableId: TAutoIncField
      FieldName = 'Id'
      ReadOnly = True
    end
    object TypeTableCaption: TWideStringField
      FieldName = 'Caption'
      Size = 30
    end
  end
  object StatusTable: TADOTable
    Active = True
    Connection = MSSQLConnection
    CursorType = ctStatic
    TableName = 'RequirementStatus'
    Left = 176
    Top = 240
    object StatusTableId: TAutoIncField
      FieldName = 'Id'
      ReadOnly = True
    end
    object StatusTableCaption: TWideStringField
      FieldName = 'Caption'
      Size = 30
    end
  end
  object StatusDS: TDataSource
    DataSet = StatusTable
    Left = 280
    Top = 240
  end
  object BacklogSQL: TADOQuery
    Active = True
    Connection = MSSQLConnection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select '
      ' r.Id, '
      ' r.RawDataPlant,'
      ' r.[Priority], '
      ' r.[Comment],'
      ' r.[ElicitationDate],'
      ' r.ChangeRequestLink,'
      ' g.Caption as GroupName,'
      ' st.Caption as StatuName,'
      ' t.Caption as TypeName'
      'from requirement as r'
      'join ReqGroup as g on g.[Id] = r.[GroupId]'
      'join RequirementStatus as st on st.Id = r.[StatusId]'
      'join RequirementType as t on t.Id = r.TypeId')
    Left = 176
    Top = 312
  end
  object BacklogSQLDS: TDataSource
    DataSet = BacklogSQL
    Left = 280
    Top = 312
  end
  object GroupForRCDS: TDataSource
    DataSet = GroupForRC
    Left = 528
    Top = 24
  end
  object GroupForRC: TADOTable
    Active = True
    Connection = MSSQLConnection
    CursorType = ctStatic
    TableName = 'ReqGroup'
    Left = 424
    Top = 24
    object AutoIncField2: TAutoIncField
      FieldName = 'Id'
      ReadOnly = True
    end
    object WideStringField3: TWideStringField
      FieldName = 'Caption'
      Size = 100
    end
  end
  object ReqFromBacklogDS: TDataSource
    DataSet = ReqFromBacklog
    Left = 528
    Top = 96
  end
  object ReqFromBacklog: TADOTable
    Active = True
    Connection = MSSQLConnection
    CursorType = ctStatic
    IndexFieldNames = 'Id'
    MasterFields = 'Id'
    MasterSource = BacklogSQLDS
    TableName = 'Requirement'
    Left = 424
    Top = 96
    object AutoIncField1: TAutoIncField
      FieldName = 'Id'
      ReadOnly = True
    end
    object IntegerField1: TIntegerField
      FieldName = 'TypeId'
    end
    object IntegerField2: TIntegerField
      FieldName = 'Priority'
    end
    object IntegerField3: TIntegerField
      FieldName = 'StatusId'
    end
    object IntegerField4: TIntegerField
      FieldName = 'GroupId'
    end
    object WideMemoField2: TWideMemoField
      FieldName = 'Comment'
      BlobType = ftWideMemo
    end
    object DateTimeField1: TDateTimeField
      FieldName = 'ElicitationDate'
      EditMask = '!99/99/00;1;_'
    end
    object WideStringField1: TWideStringField
      FieldName = 'ChangeRequestLink'
      Size = 500
    end
    object StringField1: TStringField
      FieldKind = fkLookup
      FieldName = 'Status'
      LookupDataSet = StatusTable
      LookupKeyFields = 'Id'
      LookupResultField = 'Caption'
      KeyFields = 'StatusId'
      Lookup = True
    end
    object StringField2: TStringField
      FieldKind = fkLookup
      FieldName = 'Type'
      LookupDataSet = TypeTable
      LookupKeyFields = 'Id'
      LookupResultField = 'Caption'
      KeyFields = 'TypeId'
      Lookup = True
    end
    object WideStringField4: TWideStringField
      FieldName = 'Authors'
      Size = 100
    end
    object WideStringField5: TWideStringField
      FieldName = 'Source'
      Size = 500
    end
    object ReqFromBacklogRawDataPlant: TWideMemoField
      FieldName = 'RawDataPlant'
      BlobType = ftWideMemo
    end
  end
end
