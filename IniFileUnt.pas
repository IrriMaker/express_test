unit IniFileUnt;

interface

uses iniFiles;


Var

Waarde10 : tMeminifile;

function  Ini_readstring(w1,w2,w3 : Shortstring) : Shortstring;
procedure Ini_writestring(w1,w2,w3 : Shortstring);

function  Ini_readbool(w1,w2 : Shortstring; bool : boolean) : boolean;
procedure Ini_writebool(w1,w2 : shortstring; bool : boolean);

procedure Ini_UpdateFile;
procedure Ini_erasesection(ss:Shortstring);

Procedure CreateWaarde10;

procedure ReleaseIni;

implementation

Procedure CreateWaarde10;
begin
   WAARDE10:=TMEMINIFILE.CREATE('MM_Express.INI');
end;


procedure ReleaseIni;
begin
   ini_UpdateFile;
   waarde10.Free;
 //  waarde10:=nil;
end;

procedure Ini_UpdateFile;
begin
   waarde10.UpdateFile;
end;

function Ini_readstring(w1,w2,w3 : Shortstring) : Shortstring;
begin
   result:=waarde10.readstring(w1,w2,w3);
end;
procedure Ini_writestring(w1,w2,w3 : Shortstring);
begin
  // try
   waarde10.WriteString(w1,w2,w3);
 //  except
      //showmessage('');
  // end;
end;

function Ini_readbool(w1,w2 : Shortstring; bool : boolean) : boolean;
begin
   result:=waarde10.readbool(w1,w2,bool);
end;
procedure Ini_writebool(w1,w2 : shortstring; bool : boolean);
begin
   waarde10.WriteBool(w1,w2,bool);
end;


procedure Ini_erasesection(ss:Shortstring);
begin
   waarde10.EraseSection(ss);
end;

end.
