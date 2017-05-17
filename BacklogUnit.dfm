object BacklogForm: TBacklogForm
  Left = 0
  Top = 0
  Caption = 'Backlog'
  ClientHeight = 694
  ClientWidth = 1000
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object DBMemo1: TDBMemo
    Left = 544
    Top = 33
    Width = 456
    Height = 661
    Align = alRight
    DataField = 'RawDataPlant'
    DataSource = MSSQLDataModule.BacklogSQLDS
    TabOrder = 3
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 33
    Width = 544
    Height = 661
    Align = alClient
    DataSource = MSSQLDataModule.BacklogSQLDS
    ReadOnly = True
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnDblClick = DBGrid1DblClick
    Columns = <
      item
        Expanded = False
        FieldName = 'Id'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'GroupName'
        Title.Caption = 'Name of Group'
        Width = 173
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TypeName'
        Title.Caption = 'Type of Requirement'
        Width = 118
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Priority'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'StatuName'
        Title.Caption = 'Status'
        Width = 77
        Visible = True
      end>
  end
  object ControlBar1: TControlBar
    Left = 0
    Top = 0
    Width = 1000
    Height = 33
    Align = alTop
    TabOrder = 1
    object Label1: TLabel
      Left = 461
      Top = 2
      Width = 18
      Height = 22
      Caption = 'ID: '
    end
    object TypeFilterList: TComboBox
      Left = 11
      Top = 2
      Width = 145
      Height = 21
      ItemIndex = 0
      TabOrder = 0
      Text = 'SR+SolR'
      OnChange = TypeFilterListChange
      Items.Strings = (
        'SR+SolR'
        'BR'
        'All')
    end
    object DescriptionEdit: TEdit
      Left = 169
      Top = 2
      Width = 121
      Height = 22
      TabOrder = 1
      OnChange = DescriptionEditChange
    end
    object StatusList: TComboBox
      Left = 303
      Top = 2
      Width = 145
      Height = 21
      ItemIndex = 0
      TabOrder = 2
      Text = 'All Active'
      OnChange = StatusListChange
      Items.Strings = (
        'All Active'
        'Exclude CR'
        'All')
    end
    object IDEdit: TEdit
      Left = 492
      Top = 2
      Width = 121
      Height = 22
      TabOrder = 3
      OnChange = IDEditChange
    end
  end
  object InitSQL: TMemo
    Left = 587
    Top = 424
    Width = 382
    Height = 225
    Lines.Strings = (
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
    TabOrder = 2
    Visible = False
  end
end
