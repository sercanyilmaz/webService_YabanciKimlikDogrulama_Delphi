program YabanciKimlikDogrulama;

uses
  Vcl.Forms,
  unitMain in 'unitMain.pas' {frmMain},
  KPSPublicYabanciDogrula in 'KPSPublicYabanciDogrula.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmMain, frmMain);
  Application.Run;
end.
