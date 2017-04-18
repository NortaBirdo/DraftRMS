object QuickEditForm: TQuickEditForm
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Quick Edit'
  ClientHeight = 480
  ClientWidth = 725
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
    Left = 528
    Top = 96
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
    Width = 619
    Height = 21
    DataField = 'ChangeRequestLink'
    DataSource = MSSQLDataModule.ReqFromBacklogDS
    TabOrder = 2
  end
  object DBRichEdit1: TDBRichEdit
    Left = 8
    Top = 115
    Width = 514
    Height = 326
    DataField = 'RawText'
    DataSource = MSSQLDataModule.ReqFromBacklogDS
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ScrollBars = ssVertical
    TabOrder = 3
  end
  object DBMemo1: TDBMemo
    Left = 528
    Top = 115
    Width = 185
    Height = 89
    DataField = 'Comment'
    DataSource = MSSQLDataModule.ReqFromBacklogDS
    TabOrder = 4
  end
  object CancelBtn: TButton
    Left = 8
    Top = 447
    Width = 75
    Height = 25
    Caption = 'Cancel'
    TabOrder = 5
    OnClick = CancelBtnClick
  end
  object SaveBtn: TButton
    Left = 638
    Top = 447
    Width = 75
    Height = 25
    Caption = 'Save'
    TabOrder = 6
    OnClick = SaveBtnClick
  end
end
