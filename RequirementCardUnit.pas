unit RequirementCardUnit;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ComCtrls, Vcl.DBCtrls,
  Vcl.Mask, Vcl.Grids, Vcl.DBGrids, Data.Win.ADODB;

type
  TRequirementCardForm = class(TForm)
    SaveBtn: TButton;
    CancelBtn: TButton;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    PriorityEdit: TDBEdit;
    DBLookupComboBox1: TDBLookupComboBox;
    DBLookupComboBox2: TDBLookupComboBox;
    DBMemo1: TDBMemo;
    Label10: TLabel;
    DBLookupComboBox3: TDBLookupComboBox;
    Label12: TLabel;
    DBEdit3: TDBEdit;
    Author: TDBMemo;
    Label7: TLabel;
    DBMemo2: TDBMemo;
    DBMemo3: TDBMemo;
    procedure CancelBtnClick(Sender: TObject);
    procedure SaveBtnClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    Table: TADOTable;
  end;

var
  RequirementCardForm: TRequirementCardForm;


implementation

{$R *.dfm}

uses DataModuleUnit;


procedure TRequirementCardForm.SaveBtnClick(Sender: TObject);
var
  str: string;
begin
  with MSSQLDataModule.RequirementTable do begin
    edit;
    Post;
  end;

  RequirementCardForm.Close;
end;

procedure TRequirementCardForm.CancelBtnClick(Sender: TObject);
begin
  MSSQLDataModule.RequirementTable.Cancel;
  RequirementCardForm.Close;
end;


end.
