// ************************************************************************ //
// The types declared in this file were generated from data read from the
// WSDL File described below:
// WSDL     : https://tckimlik.nvi.gov.tr/Service/KPSPublicYabanciDogrula.asmx?WSDL
//  >Import : https://tckimlik.nvi.gov.tr/Service/KPSPublicYabanciDogrula.asmx?WSDL>0
// Encoding : utf-8
// Version  : 1.0
// (11.01.2019 01:37:51 - - $Rev: 90173 $)
// ************************************************************************ //

unit KPSPublicYabanciDogrula;

interface

uses Soap.InvokeRegistry, Soap.SOAPHTTPClient, System.Types, Soap.XSBuiltIns;

const
  IS_OPTN = $0001;
  IS_NLBL = $0004;
  IS_REF  = $0080;


type

  // ************************************************************************ //
  // The following types, referred to in the WSDL document are not being represented
  // in this file. They are either aliases[@] of other types represented or were referred
  // to but never[!] declared in the document. The types from the latter category
  // typically map to predefined/known XML or Embarcadero types; however, they could also
  // indicate incorrect WSDL documents that failed to declare or import a schema type.
  // ************************************************************************ //
  // !:boolean         - "http://www.w3.org/2001/XMLSchema"[Gbl]
  // !:int             - "http://www.w3.org/2001/XMLSchema"[Gbl]
  // !:long            - "http://www.w3.org/2001/XMLSchema"[Gbl]
  // !:string          - "http://www.w3.org/2001/XMLSchema"[Gbl]



  // ************************************************************************ //
  // Namespace : http://tckimlik.nvi.gov.tr/WS
  // soapAction: http://tckimlik.nvi.gov.tr/WS/YabanciKimlikNoDogrula
  // transport : http://schemas.xmlsoap.org/soap/http
  // style     : document
  // use       : literal
  // binding   : KPSPublicYabanciDogrulaSoap
  // service   : KPSPublicYabanciDogrula
  // port      : KPSPublicYabanciDogrulaSoap
  // URL       : https://tckimlik.nvi.gov.tr/Service/KPSPublicYabanciDogrula.asmx
  // ************************************************************************ //
  KPSPublicYabanciDogrulaSoap = interface(IInvokable)
  ['{1D01A909-2CA5-F1AE-EAE0-3273F3C665C9}']
    function  YabanciKimlikNoDogrula(const KimlikNo: Int64; const Ad: string; const Soyad: string; const DogumGun: Integer; const DogumAy: Integer; const DogumYil: Integer
                                     ): Boolean; stdcall;
  end;

function GetKPSPublicYabanciDogrulaSoap(UseWSDL: Boolean=System.False; Addr: string=''; HTTPRIO: THTTPRIO = nil): KPSPublicYabanciDogrulaSoap;


implementation
  uses System.SysUtils;

function GetKPSPublicYabanciDogrulaSoap(UseWSDL: Boolean; Addr: string; HTTPRIO: THTTPRIO): KPSPublicYabanciDogrulaSoap;
const
  defWSDL = 'https://tckimlik.nvi.gov.tr/Service/KPSPublicYabanciDogrula.asmx?WSDL';
  defURL  = 'https://tckimlik.nvi.gov.tr/Service/KPSPublicYabanciDogrula.asmx';
  defSvc  = 'KPSPublicYabanciDogrula';
  defPrt  = 'KPSPublicYabanciDogrulaSoap';
var
  RIO: THTTPRIO;
begin
  Result := nil;
  if (Addr = '') then
  begin
    if UseWSDL then
      Addr := defWSDL
    else
      Addr := defURL;
  end;
  if HTTPRIO = nil then
    RIO := THTTPRIO.Create(nil)
  else
    RIO := HTTPRIO;
  try
    Result := (RIO as KPSPublicYabanciDogrulaSoap);
    if UseWSDL then
    begin
      RIO.WSDLLocation := Addr;
      RIO.Service := defSvc;
      RIO.Port := defPrt;
    end else
      RIO.URL := Addr;
  finally
    if (Result = nil) and (HTTPRIO = nil) then
      RIO.Free;
  end;
end;


initialization
  { KPSPublicYabanciDogrulaSoap }
  InvRegistry.RegisterInterface(TypeInfo(KPSPublicYabanciDogrulaSoap), 'http://tckimlik.nvi.gov.tr/WS', 'utf-8');
  InvRegistry.RegisterDefaultSOAPAction(TypeInfo(KPSPublicYabanciDogrulaSoap), 'http://tckimlik.nvi.gov.tr/WS/YabanciKimlikNoDogrula');
  InvRegistry.RegisterInvokeOptions(TypeInfo(KPSPublicYabanciDogrulaSoap), ioDocument);
  { KPSPublicYabanciDogrulaSoap.YabanciKimlikNoDogrula }
  InvRegistry.RegisterMethodInfo(TypeInfo(KPSPublicYabanciDogrulaSoap), 'YabanciKimlikNoDogrula', '',
                                 '[ReturnName="YabanciKimlikNoDogrulaResult"]');
  InvRegistry.RegisterParamInfo(TypeInfo(KPSPublicYabanciDogrulaSoap), 'YabanciKimlikNoDogrula', 'DogumGun', '',
                                '', IS_NLBL);
  InvRegistry.RegisterParamInfo(TypeInfo(KPSPublicYabanciDogrulaSoap), 'YabanciKimlikNoDogrula', 'DogumAy', '',
                                '', IS_NLBL);

end.