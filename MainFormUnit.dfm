object MainForm: TMainForm
  Left = 0
  Top = 0
  Caption = 'Draft RMS'
  ClientHeight = 687
  ClientWidth = 1100
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'Tahoma'
  Font.Style = [fsBold]
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 16
  object Splitter1: TSplitter
    Left = 181
    Top = 29
    Height = 545
    ExplicitLeft = 208
    ExplicitTop = 288
    ExplicitHeight = 100
  end
  object DBGrid1: TDBGrid
    Left = 184
    Top = 29
    Width = 916
    Height = 545
    Align = alClient
    DataSource = MSSQLDataModule.RequirementDS
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    PopupMenu = PopupMenu1
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -13
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = [fsBold]
    OnDblClick = DBGrid1DblClick
    Columns = <
      item
        Expanded = False
        FieldName = 'Id'
        Width = 40
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Type'
        ReadOnly = True
        Width = 59
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Authors'
        ReadOnly = True
        Width = 363
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Priority'
        Width = 59
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Status'
        ReadOnly = True
        Width = 84
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ElicitationDate'
        Width = 103
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ChangeRequestLink'
        PopupMenu = PopupMenu1
        Width = 138
        Visible = True
      end>
  end
  object ToolBar1: TToolBar
    Left = 0
    Top = 0
    Width = 1100
    Height = 29
    ButtonHeight = 24
    ButtonWidth = 121
    Caption = 'ToolBar1'
    ShowCaptions = True
    TabOrder = 1
    object CreateNewRequirementBtn: TToolButton
      Left = 0
      Top = 0
      Caption = 'New Requirement'
      ImageIndex = 0
      OnClick = CreateNewRequirementBtnClick
    end
    object ToolButton1: TToolButton
      Left = 121
      Top = 0
      Width = 8
      Caption = 'ToolButton1'
      ImageIndex = 1
      Style = tbsSeparator
    end
    object NewGroupBtn: TToolButton
      Left = 129
      Top = 0
      Caption = 'New Group'
      ImageIndex = 1
      OnClick = NewGroupBtnClick
    end
    object SaveGroupBtn: TToolButton
      Left = 250
      Top = 0
      Caption = 'Save Group'
      ImageIndex = 2
      OnClick = SaveGroupBtnClick
    end
    object DeleteGroupBtn: TToolButton
      Left = 371
      Top = 0
      Caption = 'Delete Group'
      ImageIndex = 3
      OnClick = DeleteGroupBtnClick
    end
    object ToolButton3: TToolButton
      Left = 492
      Top = 0
      Width = 8
      Caption = 'ToolButton3'
      ImageIndex = 5
      Style = tbsSeparator
    end
    object Backlog: TToolButton
      Left = 500
      Top = 0
      Caption = 'Backlog'
      ImageIndex = 5
      OnClick = BacklogClick
    end
    object ToolButton2: TToolButton
      Left = 621
      Top = 0
      Width = 8
      Caption = 'ToolButton2'
      ImageIndex = 6
      Style = tbsSeparator
    end
    object RefreshBtn: TToolButton
      Left = 629
      Top = 0
      Caption = 'Refresh'
      ImageIndex = 6
      OnClick = RefreshBtnClick
    end
  end
  object DBGrid2: TDBGrid
    Left = 0
    Top = 29
    Width = 181
    Height = 545
    Align = alLeft
    DataSource = MSSQLDataModule.GroupDS
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -13
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = [fsBold]
    OnTitleClick = DBGrid2TitleClick
    Columns = <
      item
        Expanded = False
        FieldName = 'Id'
        Visible = False
      end
      item
        Expanded = False
        FieldName = 'Caption'
        Title.Caption = 'Name of Group'
        Width = 149
        Visible = True
      end>
  end
  object DBRichEdit1: TDBRichEdit
    Left = 0
    Top = 574
    Width = 1100
    Height = 113
    Align = alBottom
    DataField = 'RawText'
    DataSource = MSSQLDataModule.RequirementDS
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ReadOnly = True
    TabOrder = 3
  end
  object PopupMenu1: TPopupMenu
    Left = 728
    Top = 104
    object OpenURL1: TMenuItem
      Caption = 'Open URL'
      OnClick = OpenURL1Click
    end
    object CopyURL1: TMenuItem
      Caption = 'Copy URL'
      OnClick = CopyURL1Click
    end
  end
end
