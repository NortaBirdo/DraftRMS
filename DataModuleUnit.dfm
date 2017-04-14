object MSSQLDataModule: TMSSQLDataModule
  OldCreateOrder = False
  Height = 345
  Width = 385
  object LinkTypeDS: TDataSource
    DataSet = LinkTypeTable
    Left = 152
    Top = 184
  end
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
  object LinkTypeTable: TADOTable
    Connection = MSSQLConnection
    CursorType = ctStatic
    TableName = 'LinkType'
    Left = 48
    Top = 184
    object LinkTypeTableId: TAutoIncField
      FieldName = 'Id'
      ReadOnly = True
    end
    object LinkTypeTableText: TMemoField
      FieldName = 'Text'
      BlobType = ftMemo
    end
  end
  object RequirementDS: TDataSource
    DataSet = RequirementTable
    Left = 152
    Top = 248
  end
  object RequirementTable: TADOTable
    Connection = MSSQLConnection
    CursorType = ctStatic
    TableName = 'Requirement'
    Left = 48
    Top = 248
    object RequirementTableId: TAutoIncField
      FieldName = 'Id'
      ReadOnly = True
    end
    object RequirementTableText: TMemoField
      FieldName = 'Text'
      BlobType = ftMemo
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
end
