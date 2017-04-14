unit StakehodlerUnit;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ComCtrls, Vcl.ToolWin, Vcl.Grids,
  Vcl.DBGrids;

type
  TStakeholderForm = class(TForm)
    DBGrid1: TDBGrid;
    ToolBar1: TToolBar;
    AddNewStakeholderBtn: TToolButton;
    SaveStakehodlerBtn: TToolButton;
    DeleteStakholderBtn: TToolButton;
    procedure AddNewStakeholderBtnClick(Sender: TObject);
    procedure SaveStakehodlerBtnClick(Sender: TObject);
    procedure DeleteStakholderBtnClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  StakeholderForm: TStakeholderForm;

implementation

{$R *.dfm}

uses DataModuleUnit;

procedure TStakeholderForm.AddNewStakeholderBtnClick(Sender: TObject);
begin
  MSSQLDataModule.StakehodlerTable.Insert;
end;

procedure TStakeholderForm.DeleteStakholderBtnClick(Sender: TObject);
begin
  try
    MSSQLDataModule.StakehodlerTable.Delete;
  except
    ShowMessage('This stakehodler is used now. You can not delete one.');
  end;
end;

procedure TStakeholderForm.SaveStakehodlerBtnClick(Sender: TObject);
begin
  MSSQLDataModule.StakehodlerTable.Post;
end;

end.
