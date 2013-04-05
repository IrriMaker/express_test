unit FirstUnt;

interface

uses System.SysUtils;

procedure MakeDrives;

implementation

uses form2unt,Glount;

procedure MakeDrives;
var nRoot : string;
begin
   nRoot := GetEnvVarValue('USERPROFILE');
   //oRoot := Trim(InstPath);
   //if (oRoot[Length(oRoot)] = '\') then Delete(oRoot, Length(oRoot), 1);

   // Make Sure the MMSystems & All Other Exist
   ForceDirectories(nRoot + '\.MMSystems\Express');

   TmpDrive:=nRoot + '\.MMSystems\Express\TmpDrive\';
   ForceDirectories(TmpDrive);
end;

end.

