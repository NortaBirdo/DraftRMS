object RequirementCardForm: TRequirementCardForm
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Card of Requirement'
  ClientHeight = 557
  ClientWidth = 981
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
  object Label1: TLabel
    Left = 8
    Top = 8
    Width = 35
    Height = 13
    Caption = 'Status:'
  end
  object Label2: TLabel
    Left = 8
    Top = 99
    Width = 99
    Height = 13
    Caption = 'Text of Requirement'
  end
  object Label3: TLabel
    Left = 687
    Top = 75
    Width = 38
    Height = 13
    Caption = 'Authors'
  end
  object Label4: TLabel
    Left = 304
    Top = 11
    Width = 34
    Height = 13
    Caption = 'Proirity'
  end
  object Label5: TLabel
    Left = 8
    Top = 35
    Width = 24
    Height = 13
    Caption = 'Type'
  end
  object Label6: TLabel
    Left = 687
    Top = 8
    Width = 88
    Height = 13
    Caption = 'Date of Elicitation:'
  end
  object Label7: TLabel
    Left = 687
    Top = 200
    Width = 23
    Height = 13
    Caption = 'Links'
  end
  object Label8: TLabel
    Left = 8
    Top = 75
    Width = 105
    Height = 13
    Caption = 'Change Request Link:'
  end
  object Label9: TLabel
    Left = 687
    Top = 358
    Width = 45
    Height = 13
    Caption = 'Comment'
  end
  object Label10: TLabel
    Left = 304
    Top = 35
    Width = 29
    Height = 13
    Caption = 'Group'
  end
  object Button1: TButton
    Left = 901
    Top = 520
    Width = 71
    Height = 25
    Caption = 'Save'
    TabOrder = 0
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 8
    Top = 520
    Width = 75
    Height = 25
    Caption = 'Cancel'
    TabOrder = 1
    OnClick = Button2Click
  end
  object ReqTextEdit: TDBRichEdit
    Left = 8
    Top = 128
    Width = 673
    Height = 386
    DataField = 'RawText'
    DataSource = MSSQLDataModule.RequirementDS
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ScrollBars = ssVertical
    TabOrder = 2
  end
  object DBEdit1: TDBEdit
    Left = 792
    Top = 8
    Width = 184
    Height = 21
    DataField = 'ElicitationDate'
    DataSource = MSSQLDataModule.RequirementDS
    MaxLength = 8
    TabOrder = 3
  end
  object DBEdit2: TDBEdit
    Left = 119
    Top = 72
    Width = 562
    Height = 21
    DataField = 'ChangeRequestLink'
    DataSource = MSSQLDataModule.RequirementDS
    TabOrder = 4
  end
  object PriorityEdit: TDBEdit
    Left = 344
    Top = 8
    Width = 201
    Height = 21
    DataField = 'Priority'
    DataSource = MSSQLDataModule.RequirementDS
    TabOrder = 5
  end
  object DBLookupComboBox1: TDBLookupComboBox
    Left = 49
    Top = 35
    Width = 145
    Height = 21
    DataField = 'TypeId'
    DataSource = MSSQLDataModule.RequirementDS
    KeyField = 'Id'
    ListField = 'Caption'
    ListSource = MSSQLDataModule.TypeDS
    TabOrder = 6
  end
  object DBLookupComboBox2: TDBLookupComboBox
    Left = 49
    Top = 8
    Width = 145
    Height = 21
    DataField = 'StatusId'
    DataSource = MSSQLDataModule.RequirementDS
    KeyField = 'Id'
    ListField = 'Caption'
    ListSource = MSSQLDataModule.StatusDS
    TabOrder = 7
  end
  object DBMemo1: TDBMemo
    Left = 687
    Top = 377
    Width = 289
    Height = 137
    DataField = 'Comment'
    DataSource = MSSQLDataModule.RequirementDS
    TabOrder = 8
  end
  object DBLookupComboBox3: TDBLookupComboBox
    Left = 344
    Top = 35
    Width = 201
    Height = 21
    DataField = 'GroupId'
    DataSource = MSSQLDataModule.RequirementDS
    KeyField = 'Id'
    ListField = 'Caption'
    ListSource = MSSQLDataModule.GroupForRCDS
    TabOrder = 9
  end
end
