unit UHPI;

interface

type
  THPI = record
    Caption: String;
    Model: String;
    InterfaceType: String;
    MediaType: String;
    PNPDeviceID: String;
    DeviceID: String;
    Size: String;
    Partitions: String;
    BytesPerSector: String;
    SectorsPerTrack: String;
    TotalCylinders: String;
    TotalHeads: String;
    TotalSectors: String;
    TotalTracks: String;
    TracksPerCylinder: String;
    FirmwareRevision: String;
    SerialNumber: String;
  end;

function GetHPI(aVolume: Char): THPI;

implementation

uses
  Winapi.ActiveX, System.Win.ComObj, System.SysUtils, Winapi.Windows,
  System.Classes, System.Variants;

function GetWMIInfo(const aWMIProperty, aWMIClass: String; const aDeviceId: String = ''): String;
const
  wbemFlagForwardOnly = $00000020;
var
  SWbemLocator: OleVariant;
  SWbemService: OleVariant;
  SWbemObjectSet: OleVariant;
  WbemObject: OleVariant;
  oEnum        : IEnumvariant;
  iValue       : Cardinal;
begin;
  Result := '';

  SWbemLocator := CreateOleObject('WbemScripting.SWbemLocator');
  SWbemService := SWbemLocator.ConnectServer('.', 'root\CIMV2', '', '');

  if Trim(aDeviceId) <> '' then
    SWbemObjectSet := SWbemService.ExecQuery(Format('Select %s from %s where %s',[aWMIProperty, aWMIClass, 'Tag = ' + aDeviceId]),'WQL',wbemFlagForwardOnly)
  else
    SWbemObjectSet := SWbemService.ExecQuery(Format('Select %s from %s',[aWMIProperty, aWMIClass]),'WQL',wbemFlagForwardOnly);

  oEnum := IUnknown(SWbemObjectSet._NewEnum) as IEnumVariant;

  if oEnum.Next(1, WbemObject, iValue) = 0 then
    Result := WbemObject.Properties_.Item(aWMIProperty).Value;
end;

function GetHPI(aVolume: Char): THPI;
////////////////////////////////////////////////////////////////////////////////
function GetFirmwareRevision(aDiskDrive: OleVariant): String;
begin
  try
    Result := aDiskDrive.FirmwareRevision;
  except
    Result := 'n/a';
  end;
end;

function GetSerialNumber(aDiskDrive: OleVariant; aDeviceId: String): String;
begin
  try
    Result := aDiskDrive.SerialNumber;
  except
    try
      Result := GetWMIInfo('SerialNumber', 'Win32_PhysicalMedia',QuotedStr(aDeviceId));
    except
      Result := 'n/a';
    end;
  end;
end;
////////////////////////////////////////////////////////////////////////////////
const
  wbemFlagForwardOnly = $00000020;
var
  SWbemLocator: OleVariant;
  SWbemServices: OleVariant;

  DiskDrives: IEnumVARIANT;
  DiskDrive: OleVariant;
  DiskDrivesFetched: Cardinal;

  DiskPartitions: IEnumVARIANT;
  DiskPartition: OleVariant;
  DiskPartitionsFetched: Cardinal;

  DiskVolumes: IEnumVARIANT;
  DiskVolume: OleVariant;
  DiskVolumesFetched: Cardinal;

  EscapedDeviceID: String;
  HDDInformation: String;
begin
  ZeroMemory(@Result,SizeOf(THPI));

  CoInitialize(nil);
  with TStringList.Create do
    try
      { Realiza a conexão }
      SWbemLocator := CreateOleObject('WbemScripting.SWbemLocator');

      SWbemServices := SWbemLocator.ConnectServer('.', 'root\CIMV2', '', '');

      { Obtém uma lista de drives físicos e circula por ela }
      DiskDrives := IUnknown(SWbemServices.ExecQuery('SELECT * FROM Win32_DiskDrive','WQL',wbemFlagForwardOnly)._NewEnum) as IEnumVariant;
      while DiskDrives.Next(1, DiskDrive, DiskDrivesFetched) = 0 do
      begin
        EscapedDeviceID := StringReplace(String(DiskDrive.DeviceID),'\','\\',[rfReplaceAll]);

        { Para o drive físico atual, obtém uma lista de partições e circula por ela }
        DiskPartitions := IUnknown(SWbemServices.ExecQuery('ASSOCIATORS OF {Win32_DiskDrive.DeviceID="' + EscapedDeviceID + '"} WHERE AssocClass = Win32_DiskDriveToDiskPartition','WQL',wbemFlagForwardOnly)._NewEnum) as IEnumVariant;
        while DiskPartitions.Next(1, DiskPartition, DiskPartitionsFetched) = 0 do
        begin

          { Para a partição atual, obtém uma lista de volumes (letras) e circula por ela }
          DiskVolumes := IUnknown(SWbemServices.ExecQuery('ASSOCIATORS OF {Win32_DiskPartition.DeviceID="' + String(DiskPartition.DeviceID) + '"} WHERE AssocClass = Win32_LogicalDiskToPartition','WQL',wbemFlagForwardOnly)._NewEnum) as IEnumVariant;
          while DiskVolumes.Next(1, DiskVolume, DiskVolumesFetched) = 0 do
          begin
            { Adiciona ao StringlList uma linha com as informações disponíveis indexada pela letra do volume }
            Add(String(DiskVolume.DeviceID)[1] + '=<' + DiskDrive.Caption + '><'
                                                      + DiskDrive.Model + '><'
                                                      + DiskDrive.InterfaceType + '><'
                                                      + DiskDrive.MediaType + '><'
                                                      + DiskDrive.PNPDeviceID + '><'
                                                      + DiskDrive.DeviceID + '><'
                                                      + String(DiskDrive.Size) + '><'
                                                      + String(DiskDrive.Partitions) + '><'
                                                      + String(DiskDrive.BytesPerSector) + '><'
                                                      + String(DiskDrive.SectorsPerTrack) + '><'
                                                      + String(DiskDrive.TotalCylinders) + '><'
                                                      + String(DiskDrive.TotalHeads) + '><'
                                                      + String(DiskDrive.TotalSectors) + '><'
                                                      + String(DiskDrive.TotalTracks) + '><'
                                                      + String(DiskDrive.TracksPerCylinder) + '><'
                                                      + GetFirmwareRevision(DiskDrive) + '><'
                                                      + GetSerialNumber(DiskDrive,EscapedDeviceID) + '>');

            DiskVolume := Unassigned;
          end;

          DiskPartition := Unassigned;
        end;

        DiskDrive := Unassigned;
      end;

      { Busca no StringList a letra passada como parâmetro }
      HDDInformation := Values[aVolume];

      with TStringList.Create do
        try
          Text := StringReplace(Copy(HDDInformation,2,Length(HDDInformation) - 2),'><',#13#10,[rfReplaceAll]);
          if Count > 0 then
            with Result do
            begin
              Caption := Trim(Strings[0]);
              Model := Trim(Strings[1]);
              InterfaceType := Trim(Strings[2]);
              MediaType := Trim(Strings[3]);
              PNPDeviceID := Trim(Strings[4]);
              DeviceID := Trim(Strings[5]);
              Size := Trim(Strings[6]);
              Partitions := Trim(Strings[7]);
              BytesPerSector := Trim(Strings[8]);
              SectorsPerTrack := Trim(Strings[9]);
              TotalCylinders := Trim(Strings[10]);
              TotalHeads := Trim(Strings[11]);
              TotalSectors := Trim(Strings[12]);
              TotalTracks := Trim(Strings[13]);
              TracksPerCylinder := Trim(Strings[14]);
              FirmwareRevision := Trim(Strings[15]);
              SerialNumber := Trim(Strings[16]);
            end;
        finally
          Free;
        end;

    finally
      Free;
      CoUninitialize;
    end;
end;

end.
