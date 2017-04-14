object MainForm: TMainForm
  Left = 0
  Top = 0
  Caption = 'Draft RMS'
  ClientHeight = 633
  ClientWidth = 816
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
    Left = 201
    Top = 29
    Height = 604
    ExplicitLeft = 208
    ExplicitTop = 288
    ExplicitHeight = 100
  end
  object DBGrid1: TDBGrid
    Left = 204
    Top = 29
    Width = 612
    Height = 604
    Align = alClient
    DataSource = MSSQLDataModule.RequirementDS
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -13
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = [fsBold]
    Columns = <
      item
        Expanded = False
        FieldName = 'Id'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Text'
        Width = 64
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TypeId'
        Width = 64
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Priority'
        Width = 64
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'StatusId'
        Width = 64
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'GroupId'
        Visible = False
      end>
  end
  object DBGrid2: TDBGrid
    Left = 0
    Top = 29
    Width = 201
    Height = 604
    Align = alLeft
    DataSource = MSSQLDataModule.GroupDS
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
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
  object ToolBar1: TToolBar
    Left = 0
    Top = 0
    Width = 816
    Height = 29
    ButtonHeight = 24
    ButtonWidth = 121
    Caption = 'ToolBar1'
    ShowCaptions = True
    TabOrder = 2
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
    object ToolButton2: TToolButton
      Left = 492
      Top = 0
      Width = 8
      Caption = 'ToolButton2'
      ImageIndex = 4
      Style = tbsSeparator
    end
    object StakeholderBtn: TToolButton
      Left = 500
      Top = 0
      Caption = 'Stakeholders'
      ImageIndex = 4
      OnClick = StakeholderBtnClick
    end
  end
end
