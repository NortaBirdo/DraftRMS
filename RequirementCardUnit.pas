unit RequirementCardUnit;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ComCtrls, Vcl.DBCtrls,
  Vcl.Mask;

type
  TRequirementCardForm = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    ReqTextEdit: TDBRichEdit;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    PriorityEdit: TDBEdit;
    DBLookupComboBox1: TDBLookupComboBox;
    DBLookupComboBox2: TDBLookupComboBox;
    DBMemo1: TDBMemo;
    Label10: TLabel;
    DBLookupComboBox3: TDBLookupComboBox;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  RequirementCardForm: TRequirementCardForm;

implementation

{$R *.dfm}

uses DataModuleUnit;

procedure TRequirementCardForm.Button1Click(Sender: TObject);
begin
  with MSSQLDataModule do
    begin
      RequirementTable.Edit;
      RequirementTable.FieldByName('Short').Value := copy(string(ReqTextEdit.Text), 0, 80);
      RequirementTable.Post;
    end;
    RequirementCardForm.Close;
end;

procedure TRequirementCardForm.Button2Click(Sender: TObject);
begin
  MSSQLDataModule.RequirementTable.Cancel;
  RequirementCardForm.Close;
end;

end.
