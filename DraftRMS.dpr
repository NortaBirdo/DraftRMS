program DraftRMS;

uses
  Vcl.Forms,
  MainFormUnit in 'MainFormUnit.pas' {MainForm},
  DataModuleUnit in 'DataModuleUnit.pas' {MSSQLDataModule: TDataModule},
  RequirementCardUnit in 'RequirementCardUnit.pas' {RequirementCardForm},
  BacklogUnit in 'BacklogUnit.pas' {BacklogForm},
  QuickEditFormUnit in 'QuickEditFormUnit.pas' {QuickEditForm};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TMSSQLDataModule, MSSQLDataModule);
  Application.CreateForm(TMainForm, MainForm);
  Application.CreateForm(TBacklogForm, BacklogForm);
  Application.CreateForm(TQuickEditForm, QuickEditForm);
  Application.Run;
end.
