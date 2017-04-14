unit MainFormUnit;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Grids, Vcl.DBGrids, Vcl.StdCtrls,
  Vcl.ComCtrls, Vcl.ToolWin, ManagmentGroupUnit, Vcl.ExtCtrls;

type
  TMainForm = class(TForm)
    DBGrid1: TDBGrid;
    DBGrid2: TDBGrid;
    ToolBar1: TToolBar;
    CreateNewRequirementBtn: TToolButton;
    ToolButton1: TToolButton;
    NewGroupBtn: TToolButton;
    SaveGroupBtn: TToolButton;
    DeleteGroupBtn: TToolButton;
    Splitter1: TSplitter;
    ToolButton2: TToolButton;
    StakeholderBtn: TToolButton;
    procedure CreateNewRequirementBtnClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure NewGroupBtnClick(Sender: TObject);
    procedure SaveGroupBtnClick(Sender: TObject);
    procedure DBGrid2TitleClick(Column: TColumn);
    procedure DeleteGroupBtnClick(Sender: TObject);
    procedure StakeholderBtnClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    ManagerGroup: TManagmentGroup;
  end;

var
  MainForm: TMainForm;

implementation

{$R *.dfm}

uses DataModuleUnit, RequirementCardUnit, StakehodlerUnit;

procedure TMainForm.CreateNewRequirementBtnClick(Sender: TObject);
begin
  Application.CreateForm(TRequirementCardForm, RequirementCardForm);
  RequirementCardForm.Show;
end;

procedure TMainForm.DBGrid2TitleClick(Column: TColumn);
begin
  if Pos('ASC', string(MSSQLDataModule.GroupTable.Sort)) <> 0 then
      MSSQLDataModule.GroupTable.Sort := 'Caption DESC'
    else
      MSSQLDataModule.GroupTable.Sort := 'Caption ASC';
end;

procedure TMainForm.DeleteGroupBtnClick(Sender: TObject);
begin
  if MessageDlg('Are you sure to want to delete the group: '+MSSQLDataModule.GroupTable.FieldByName('Caption').AsString,
       mtConfirmation, [mbYes, mbNo], 0) = mrYes then
    MSSQLDataModule.GroupTable.Delete;
end;

procedure TMainForm.FormCreate(Sender: TObject);
begin
  MSSQLDataModule.GroupTable.Sort := 'Caption ASC';
end;

procedure TMainForm.NewGroupBtnClick(Sender: TObject);
begin
  MSSQLDataModule.GroupTable.Insert;
end;

procedure TMainForm.SaveGroupBtnClick(Sender: TObject);
begin
 MSSQLDataModule.GroupTable.Post;
end;

procedure TMainForm.StakeholderBtnClick(Sender: TObject);
begin
  Application.CreateForm(TStakeholderForm, StakeholderForm);
  StakeholderForm.ShowModal;
  StakeholderForm.Free;
end;

end.
