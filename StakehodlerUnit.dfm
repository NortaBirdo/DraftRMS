object StakeholderForm: TStakeholderForm
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Stakeholders'
  ClientHeight = 309
  ClientWidth = 424
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'Tahoma'
  Font.Style = [fsBold]
  OldCreateOrder = False
  Position = poMainFormCenter
  PixelsPerInch = 96
  TextHeight = 16
  object DBGrid1: TDBGrid
    Left = 0
    Top = 25
    Width = 424
    Height = 284
    Align = alClient
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
        FieldName = 'PersonName'
        Title.Caption = 'Name Of Stakeholder'
        Width = 296
        Visible = True
      end>
  end
  object ToolBar1: TToolBar
    Left = 0
    Top = 0
    Width = 424
    Height = 25
    ButtonHeight = 24
    ButtonWidth = 64
    Caption = 'ToolBar1'
    ShowCaptions = True
    TabOrder = 1
    object AddNewStakeholderBtn: TToolButton
      Left = 0
      Top = 0
      Caption = 'Add New'
      ImageIndex = 0
    end
    object SaveStakehodlerBtn: TToolButton
      Left = 64
      Top = 0
      Caption = 'Save'
      ImageIndex = 1
    end
    object DeleteStakholderBtn: TToolButton
      Left = 128
      Top = 0
      Caption = 'Delete'
      ImageIndex = 2
    end
  end
end
