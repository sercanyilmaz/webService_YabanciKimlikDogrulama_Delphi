unit unitMain;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls,
  // add
  KPSPublicYabanciDogrula
  ;

type
  TfrmMain = class(TForm)
    GroupBox1: TGroupBox;
    Label1: TLabel;
    editKimlikNo: TEdit;
    editAd: TEdit;
    Label2: TLabel;
    editSoyad: TEdit;
    Label3: TLabel;
    Label4: TLabel;
    cmbGun: TComboBox;
    cmbAy: TComboBox;
    cmbYil: TComboBox;
    btnSorgula: TButton;
    procedure FormCreate(Sender: TObject);
    procedure btnSorgulaClick(Sender: TObject);
  private
    { Private declarations }
    // add
    fService:KPSPublicYabanciDogrulaSoap;
  public
    { Public declarations }
  end;

var
  frmMain: TfrmMain;

implementation

{$R *.dfm}

procedure TfrmMain.btnSorgulaClick(Sender: TObject);
var ad,soyad:String;
kimlikNo:Int64;
dogumGun,dogumAy,dogumYil:Integer;
result:Boolean;
begin
kimlikNo:=StrToInt(editKimlikNo.Text);
ad:=editAd.Text;
soyad:=editSoyad.Text;
dogumGun:=StrToInt(cmbGun.Text);
dogumAy:=StrToInt(cmbAy.Text);
dogumYil:=StrToInt(cmbYil.Text);


fService:=GetKPSPublicYabanciDogrulaSoap();
result:=fService.YabanciKimlikNoDogrula(kimlikNo,ad.ToLower.Trim,soyad.ToLower.Trim,dogumGun,dogumAy,dogumYil);
if result=true then
begin
ShowMessage('true');
end
else
ShowMessage('false');
end;

procedure TfrmMain.FormCreate(Sender: TObject);
var i:Integer;
begin
for i := 1 to 31 do
cmbGun.AddItem(IntToStr(i),nil);

for i := 1 to 12 do
cmbAy.AddItem(IntToStr(i),nil);

for i := 1900 to 2999 do
cmbYil.AddItem(IntToStr(i),nil);


cmbGun.ItemIndex:=0;
cmbAy.ItemIndex:=0;
cmbYil.ItemIndex:=0;
end;

end.
