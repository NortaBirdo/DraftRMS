unit BacklogUnit;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Grids, Vcl.DBGrids, Vcl.Menus,
  Vcl.ComCtrls, Vcl.StdCtrls, Vcl.ToolWin, Vcl.ExtCtrls, Vcl.DBCtrls;

type
  TBacklogForm = class(TForm)
    DBGrid1: TDBGrid;
    TypeFilterList: TComboBox;
    ControlBar1: TControlBar;
    DescriptionEdit: TEdit;
    InitSQL: TMemo;
    StatusList: TComboBox;
    Label1: TLabel;
    IDEdit: TEdit;
    DBRichEdit1: TDBRichEdit;
    procedure FormCreate(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure TypeFilterListChange(Sender: TObject);
    procedure Find;
    procedure ShowArchiveChBClick(Sender: TObject);
    procedure DescriptionEditChange(Sender: TObject);
    procedure ExcludeCRChBClick(Sender: TObject);
    procedure StatusListChange(Sender: TObject);
    procedure IDEditChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  BacklogForm: TBacklogForm;

implementation

{$R *.dfm}

uses DataModuleUnit, RequirementCardUnit, QuickEditFormUnit;

procedure TBacklogForm.DescriptionEditChange(Sender: TObject);
begin
  Find
end;

procedure TBacklogForm.ExcludeCRChBClick(Sender: TObject);
begin
  Find
end;

procedure TBacklogForm.Find;
var
 query: String;
begin
query := '';

//include type of requirement in sql
  case TypeFilterList.ItemIndex of
  0: query := 'Where (r.TypeId = 1 OR r.TypeId = 3)'; //SR + SolR
  1: query := 'Where r.TypeId = 2'; //SR + SolR
  2: query := 'Where (r.TypeId = 1 OR r.TypeId = 2 OR r.TypeId = 3)'; //SR + SolR
  end;

//include description of requirement in sql
if DescriptionEdit.Text <> '' then
  query := query + ' and r.RawText Like ' + QuotedStr('%' + DescriptionEdit.Text + '%');

//eclude archive and rejected requirement in sql
case StatusList.ItemIndex of
  0: query := query + ' and (r.StatusId = 1 or r.StatusId = 2 or r.StatusId = 3)';
  1: query := query + ' and (r.StatusId = 1 or r.StatusId = 2)';
end;

//include ID of requirement in sql
if IDEdit.Text <> '' then
  query := ' Where r.Id = ' + IDEdit.Text;

  with MSSQLDataModule.BacklogSQL do
  begin
    Active := false;
    SQL.Clear;
    SQl.Text := InitSQL.Text;
    SQL.Add(query);
    SQL.Add('order by r.[Priority] DESC');
    Active := true;
  end;

end;

procedure TBacklogForm.StatusListChange(Sender: TObject);
begin
  Find
end;

procedure TBacklogForm.DBGrid1DblClick(Sender: TObject);
begin
  QuickEditForm.ShowModal;
  MSSQLDataModule.BacklogSQL.Refresh;
  BacklogForm.Refresh;
end;

procedure TBacklogForm.FormCreate(Sender: TObject);
begin
 Find;
end;

procedure TBacklogForm.IDEditChange(Sender: TObject);
begin
  Find;
end;

procedure TBacklogForm.ShowArchiveChBClick(Sender: TObject);
begin
  find;
end;

procedure TBacklogForm.TypeFilterListChange(Sender: TObject);
begin
  Find;
end;

end.
