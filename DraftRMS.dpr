program DraftRMS;

uses
  Vcl.Forms,
  MainFormUnit in 'MainFormUnit.pas' {MainForm},
  DataModuleUnit in 'DataModuleUnit.pas' {MSSQLDataModule: TDataModule},
  RequirementCardUnit in 'RequirementCardUnit.pas' {RequirementCardForm},
  StakehodlerUnit in 'StakehodlerUnit.pas' {StakeholderForm};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TMSSQLDataModule, MSSQLDataModule);
  Application.CreateForm(TMainForm, MainForm);
  Application.Run;
end.
