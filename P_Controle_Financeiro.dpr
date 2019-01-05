program P_Controle_Financeiro;

uses
  System.StartUpCopy,
  FMX.Forms,
  U_Principal in 'U_Principal.pas' {Frm_Principal},
  UDM in 'UDM.pas' {DM: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TFrm_Principal, Frm_Principal);
  Application.CreateForm(TDM, DM);
  Application.Run;
end.
