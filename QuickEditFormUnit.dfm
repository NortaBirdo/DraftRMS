object QuickEditForm: TQuickEditForm
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Quick Edit'
  ClientHeight = 480
  ClientWidth = 870
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object DBText1: TDBText
    Left = 94
    Top = 8
    Width = 57
    Height = 17
    DataField = 'Id'
    DataSource = MSSQLDataModule.ReqFromBacklogDS
  end
  object Label1: TLabel
    Left = 8
    Top = 8
    Width = 11
    Height = 13
    Caption = 'ID'
  end
  object Label2: TLabel
    Left = 8
    Top = 37
    Width = 34
    Height = 13
    Caption = 'Priority'
  end
  object Label3: TLabel
    Left = 8
    Top = 96
    Width = 86
    Height = 13
    Caption = 'Requirement Text'
  end
  object Label4: TLabel
    Left = 254
    Top = 37
    Width = 31
    Height = 13
    Caption = 'Status'
  end
  object Label5: TLabel
    Left = 563
    Top = 200
    Width = 45
    Height = 13
    Caption = 'Comment'
  end
  object Label6: TLabel
    Left = 8
    Top = 66
    Width = 80
    Height = 13
    Caption = 'Change Request'
  end
  object Label7: TLabel
    Left = 483
    Top = 37
    Width = 24
    Height = 13
    Caption = 'Type'
  end
  object Label8: TLabel
    Left = 686
    Top = 66
    Width = 29
    Height = 13
    Caption = 'Group'
  end
  object Label9: TLabel
    Left = 483
    Top = 66
    Width = 71
    Height = 13
    Caption = 'Elicitation Date'
  end
  object Label11: TLabel
    Left = 563
    Top = 96
    Width = 38
    Height = 13
    Caption = 'Authors'
  end
  object Label12: TLabel
    Left = 563
    Top = 333
    Width = 33
    Height = 13
    Caption = 'Source'
  end
  object DBLookupComboBox2: TDBLookupComboBox
    Left = 302
    Top = 31
    Width = 145
    Height = 21
    DataField = 'StatusId'
    DataSource = MSSQLDataModule.ReqFromBacklogDS
    KeyField = 'Id'
    ListField = 'Caption'
    ListSource = MSSQLDataModule.StatusDS
    TabOrder = 0
  end
  object DBEdit1: TDBEdit
    Left = 94
    Top = 31
    Width = 121
    Height = 21
    DataField = 'Priority'
    DataSource = MSSQLDataModule.ReqFromBacklogDS
    TabOrder = 1
  end
  object DBEdit2: TDBEdit
    Left = 94
    Top = 58
    Width = 353
    Height = 21
    DataField = 'ChangeRequestLink'
    DataSource = MSSQLDataModule.ReqFromBacklogDS
    TabOrder = 2
  end
  object DBMemo1: TDBMemo
    Left = 563
    Top = 219
    Width = 279
    Height = 108
    DataField = 'Comment'
    DataSource = MSSQLDataModule.ReqFromBacklogDS
    TabOrder = 3
  end
  object CancelBtn: TButton
    Left = 8
    Top = 447
    Width = 75
    Height = 25
    Caption = 'Cancel'
    TabOrder = 4
    OnClick = CancelBtnClick
  end
  object SaveBtn: TButton
    Left = 767
    Top = 447
    Width = 75
    Height = 25
    Caption = 'Save'
    TabOrder = 5
    OnClick = SaveBtnClick
  end
  object DBMemo2: TDBMemo
    Left = 563
    Top = 115
    Width = 279
    Height = 79
    DataField = 'Authors'
    DataSource = MSSQLDataModule.ReqFromBacklogDS
    TabOrder = 6
  end
  object DBMemo3: TDBMemo
    Left = 563
    Top = 352
    Width = 279
    Height = 89
    DataField = 'Source'
    DataSource = MSSQLDataModule.ReqFromBacklogDS
    TabOrder = 7
  end
  object DBEdit3: TDBEdit
    Left = 560
    Top = 58
    Width = 118
    Height = 21
    DataField = 'ElicitationDate'
    DataSource = MSSQLDataModule.ReqFromBacklogDS
    MaxLength = 8
    TabOrder = 8
  end
  object DBLookupComboBox1: TDBLookupComboBox
    Left = 560
    Top = 31
    Width = 118
    Height = 21
    DataField = 'TypeId'
    DataSource = MSSQLDataModule.ReqFromBacklogDS
    KeyField = 'Id'
    ListField = 'Caption'
    ListSource = MSSQLDataModule.TypeDS
    TabOrder = 9
  end
  object DBLookupComboBox3: TDBLookupComboBox
    Left = 721
    Top = 58
    Width = 118
    Height = 21
    DataField = 'GroupId'
    DataSource = MSSQLDataModule.ReqFromBacklogDS
    KeyField = 'Id'
    ListField = 'Caption'
    ListSource = MSSQLDataModule.GroupForRCDS
    TabOrder = 10
  end
  object DBMemo4: TDBMemo
    Left = 8
    Top = 115
    Width = 549
    Height = 326
    DataField = 'RawDataPlant'
    DataSource = MSSQLDataModule.ReqFromBacklogDS
    TabOrder = 11
  end
end
