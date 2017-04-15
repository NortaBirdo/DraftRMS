object MSSQLDataModule: TMSSQLDataModule
  OldCreateOrder = False
  Height = 468
  Width = 425
  object MSSQLConnection: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=SQLOLEDB.1;Integrated Security=SSPI;Persist Security In' +
      'fo=False;Initial Catalog=DraftRMS;Data Source=NSOKOLOVSKIY\SQLEX' +
      'PRESS'
    LoginPrompt = False
    Provider = 'SQLOLEDB.1'
    Left = 56
    Top = 88
  end
  object RequirementDS: TDataSource
    DataSet = RequirementTable
    Left = 280
    Top = 168
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
    Top = 168
    object RequirementTableId: TAutoIncField
      FieldName = 'Id'
      ReadOnly = True
    end
    object RequirementTableRawText: TWideMemoField
      FieldName = 'RawText'
      BlobType = ftWideMemo
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
    object RequirementTableShort: TWideStringField
      FieldName = 'Short'
      Size = 80
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
  object StakehodlerDS: TDataSource
    DataSet = StakehodlerTable
    Left = 280
    Top = 88
  end
  object StakehodlerTable: TADOTable
    Active = True
    Connection = MSSQLConnection
    CursorType = ctStatic
    TableName = 'Stakeholder'
    Left = 176
    Top = 88
    object StakehodlerTableId: TAutoIncField
      FieldName = 'Id'
      ReadOnly = True
    end
    object StakehodlerTablePersonName: TWideStringField
      FieldName = 'PersonName'
      Size = 100
    end
  end
  object TypeDS: TDataSource
    DataSet = TypeTable
    Left = 280
    Top = 256
  end
  object TypeTable: TADOTable
    Active = True
    Connection = MSSQLConnection
    CursorType = ctStatic
    TableName = 'RequirementType'
    Left = 176
    Top = 248
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
    Top = 320
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
    Top = 320
  end
end
