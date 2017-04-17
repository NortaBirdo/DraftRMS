unit BacklogUnit;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Grids, Vcl.DBGrids, Vcl.Menus,
  Vcl.ComCtrls, Vcl.StdCtrls, Vcl.ToolWin, Vcl.ExtCtrls;

type
  TBacklogForm = class(TForm)
    DBGrid1: TDBGrid;
    TypeFilterList: TComboBox;
    ControlBar1: TControlBar;
    ShowArchiveChB: TCheckBox;
    DescriptionEdit: TEdit;
    InitSQL: TMemo;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure TypeFilterListChange(Sender: TObject);
    procedure findBtnClick(Sender: TObject);
    procedure Find;
    procedure ShowArchiveChBClick(Sender: TObject);
    procedure DescriptionEditChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  BacklogForm: TBacklogForm;

implementation

{$R *.dfm}

uses DataModuleUnit, RequirementCardUnit;

procedure TBacklogForm.DescriptionEditChange(Sender: TObject);
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
  query := query + ' and r.Short Like ' + QuotedStr('%' + DescriptionEdit.Text + '%');

//eclude archive and rejected requirement in sql
if not ShowArchiveChB.Checked then
 query := query + ' and (r.StatusId = 1 or r.StatusId = 2 or r.StatusId = 3)';

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

procedure TBacklogForm.DBGrid1DblClick(Sender: TObject);
begin
  Application.CreateForm(TRequirementCardForm, RequirementCardForm);
  RequirementCardForm.ShowModal;
  RequirementCardForm.Free;
  BacklogForm.Refresh;
end;

procedure TBacklogForm.findBtnClick(Sender: TObject);
begin
  Find;
end;

procedure TBacklogForm.FormCreate(Sender: TObject);
begin
 Find;
end;

procedure TBacklogForm.FormShow(Sender: TObject);
begin
  MSSQLDataModule.Backlog.Refresh;
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
