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
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object DBGrid1: TDBGrid
    Left = 0
    Top = 33
    Width = 1000
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
        FieldName = 'Short'
        Title.Caption = 'Short Description'
        Width = 456
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
    ExplicitTop = 8
    ExplicitWidth = 967
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
    object ShowArchiveChB: TCheckBox
      Left = 303
      Top = 2
      Width = 167
      Height = 22
      Caption = 'Show archive and rejected'
      TabOrder = 1
      OnClick = ShowArchiveChBClick
    end
    object DescriptionEdit: TEdit
      Left = 169
      Top = 2
      Width = 121
      Height = 22
      TabOrder = 2
      OnChange = DescriptionEditChange
    end
  end
  object InitSQL: TMemo
    Left = 203
    Top = 344
    Width = 382
    Height = 225
    Lines.Strings = (
      'select '
      ' r.Id, '
      ' r.[Short], '
      ' r.RawText,'
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
