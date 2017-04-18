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


end.
