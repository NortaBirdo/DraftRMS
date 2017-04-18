unit QuickEditFormUnit;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.DBCtrls, Vcl.StdCtrls, Vcl.ComCtrls,
  Vcl.Mask;

type
  TQuickEditForm = class(TForm)
    DBText1: TDBText;
    DBLookupComboBox2: TDBLookupComboBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBRichEdit1: TDBRichEdit;
    DBMemo1: TDBMemo;
    CancelBtn: TButton;
    SaveBtn: TButton;
    procedure SaveBtnClick(Sender: TObject);
    procedure CancelBtnClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  QuickEditForm: TQuickEditForm;

implementation

{$R *.dfm}

uses DataModuleUnit;

procedure TQuickEditForm.CancelBtnClick(Sender: TObject);
begin
  MSSQLDataModule.ReqFromBacklog.Cancel;
  QuickEditForm.Close;
end;

procedure TQuickEditForm.SaveBtnClick(Sender: TObject);
begin
  MSSQLDataModule.ReqFromBacklog.Edit;
  MSSQLDataModule.ReqFromBacklog.Post;
  QuickEditForm.Close;
end;

end.
