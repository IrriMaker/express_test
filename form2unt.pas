unit Form2unt;

////%{$H-}

interface

uses inifiles,  windows,
     // ,                                                                   l
      vcl.Graphics,
     buttons,
    // WinAPI.Windows,
     sysutils,
     extctrls,
     classes,
     glount,
     dxBar,
      vcl.Forms,
     System.Win.registry,
     IniFileunt,
     stdctrls;

     const
     maxlay2 =50;  {15;}

type
     valobj = object   //class (Tobject)

        waar : array[1..10] of integer;
        waarno : integer;

        foutjie : boolean;
        procedure popw;

        procedure sef;
        function exten(edit : Shortstring; var vval : extended; min,max : double) : boolean;
        function r(edit : Shortstring; var vval : double; min,max : double) :boolean;

        function i(edit : Shortstring; var vval : integer; min,max : double) :boolean;
        function si(edit : Shortstring; var vval : smallint; min,max : double) :boolean;

        function readbool(w1,w2 : Shortstring; bool : boolean) : boolean;
        function readstring(w1,w2,w3 : Shortstring) : Shortstring;
        function readint(w1,w2 : Shortstring; w3 : longint) : longint;
        function readreal(w1,w2 : Shortstring; w3 : double) : double;
        procedure writebool(w1,w2 : Shortstring; bool : boolean);
        procedure writestring(w1,w2,w3 : Shortstring);
        procedure writeint(w1,w2 : Shortstring; w3 : longint);
        procedure writereal(w1,w2 : Shortstring; w3 : double);
        procedure erasesec(ss:Shortstring);
        procedure Updatefile;
     end;


    hemobj = object
       hemis : hemistype;
       Utm09 : boolean;   //Lo of UTM//8/2009
       WGS84 : byte;   //1 (true)=WGS  2=Cape clarke  3=OSGB36
       units : integer;
       CM    : integer;   //cm of zone

       function Hemis_ : HemisType;

       function stx : str10;
       function sty : str10;

       function m3 : str10;   {m3 /yards}
       function m2 : str10;   {m2 / cf}
       function m  : str10;   {m / ft}
       function mm : str10;   {mm / ft}
       function vol(v:double) : double;

       function aha(ll:double):double;
       function sha : Shortstring;


       function y(sy,sx:double):double;    {y=y  e=-y}    {ptin ens}
       function x(sy,sx:double):double;    {x=x  n=-x}
       function iny(sy,sx:double):double;    {y=y  e=-x}   {pointinfo ens}
       function inx(sy,sx:double):double;    {x=x  n=-y}
       function ruy(sy,sx:double):double;    {y=y  e=x}   {lees ens}
       function rux(sy,sx:double):double;    {x=x  n=y}
       function h(hok : double; decimalangle:boolean):double;
       function adjust : double;
       procedure sett(hem : hemistype);
    end;

function i360(hh : double; decimalangle : boolean):double;
function strtor(Swat : Shortstring) : double;
function i_s(wat : integer; l : integer) : Shortstring;
function s_s(wat : string; l : integer) : Shortstring;  {pad string}
function s__s(wat : string; l : integer) : Shortstring;  {str regs aligned}
function r_s(wat : double; l,d : integer) : Shortstring;   {rtostr sonder outspace}
function packspace(wat:string; cc:char):Shortstring;
function doublespace(wat:Shortstring):Shortstring;      //2 strings for every one
function rtostr(wat : double; l,d : integer) : Shortstring;
function rtostr4(wat : double; l,d : integer) : Shortstring; //with atleast 4 desimal
function rtostr_(wat : double; l,d : integer) : Shortstring; {met 0 deci indin frac=0}
function mergecol(col1,col2 : tcolor; nom,max:double) : tcolor;

function ValEx(ss:string):extended;

function gelyk(x1,x2 : double):boolean;

procedure outspace(var vra:ShortString);

function loadglyph(wat : Shortstring):hBitmap;
function outchar(tr:string; c1,c2 : char) : Shortstring;

procedure aanaf(var but : tspeedbutton; aan,aanaf_false : boolean);
procedure aanafDx(but : tDXBarbutton; aan,aanaf_false : boolean);

procedure picaanaf(var but : timage; aan : boolean);
function min2int(i1,i2:integer):integer;

function Standardfont(tt:ShortString):boolean;

function numdec :integer;

function TimeBetween:string;   //seconds between time1 and current;

procedure CheckWatter(no,StaMax:integer);

function GetCurrency : string;

Procedure Get_today(var mnd,jar,dg : integer);

function div360(a1,a2:double) : boolean;

procedure APPLICATIONMESSAGEBOX(s1,s2:string; i : integer);

function Last80(s:string):string;

function ShortStr(ss : shortstring) : ShortString;

function uitspas(vra : Shortstring):string;

function inccode(pk,vv : string; suffix : boolean; AlphaType:boolean) : string;

function LargerText(t1,t2 : string): boolean;

(*function Ini_readstring(w1,w2,w3 : Shortstring) : Shortstring;
procedure Ini_writestring(w1,w2,w3 : Shortstring);
function Ini_readbool(w1,w2 : Shortstring; bool : boolean) : boolean;
procedure Ini_writebool(w1,w2 : Shortstring; bool : boolean);
procedure Ini_erasesection(ss:Shortstring);
procedure Ini_UpdateFile;*)

function GetEnvVarValue(const VarName: string): string;

function mag(a1,a2:double):double;        {X^Y     a1^a2}

function kykrigt(rigt1,rigt2,toller : double):boolean;

function getvtxt(trans : Shortstring; wat,kar : str10 ; var value : double; var stri:Shortstring; regs:boolean):boolean;
procedure getvaloftext(transline1 : string; var v0,v1,v2,v3,v4,v5,v6 : String);

function trimstr(s:string):string;

var waarde : valobj;
    hem    : hemobj;
    Time1  : tdatetime;
    GetShortTxt : boolean;
    GetvTxt1 : double;

implementation

procedure getvaloftext(transline1 : string; var v0,v1,v2,v3,v4,v5,v6 : String);
var r2,zx1 , zx2 , i, len, plek, r: integer;
    tmpD : double;
    vv : string;
begin

   tmpD:=0.0; zx1:=0; zx2:=0; len:=0; plek:=0; r:=0;

   for r:=1 to length(transline1) do
   begin
      if (transline1[r]=',') or (transline1[r]=AnsiChar(#9)) then transline1[r]:=' ';
   end;
   v0:='';v1:='';v2:='';v3:='';v4:='';v5:='';v6:='';

   if copy(transline1,1,1)<>' ' then transline1:=' '+transline1;
   transline1:=transline1+' ';
   len:=0;
   r:=length(transline1);
   r2:=r;
   repeat
      r:=r-1;
      if (transline1[r]<>' ') and (transline1[r+1]=' ') then r2:=r;
      if (transline1[r]<>' ') and (transline1[r-1]=' ') then
      begin
         len:=len+1;
         vv:=copy(transline1,r,r2-r+1);
         case len of
         1: v6:=vv;
         2: v5:=vv;
         3: v4:=vv;
         4: v3:=vv;
         5: v2:=vv;
         6: v1:=vv;
         7: v0:=vv;
         end;

      end;
   until (r=1);
end;


function getvtxt(trans : Shortstring; wat,kar : str10 ; var value : double; var stri:Shortstring; regs:boolean):boolean;
var j,zx1 , zx2 , r,i, len, plek,addd: integer;
    TEMP : extended;
    ss:ansichar;
    tr2,tr3 : string;
    spas : boolean;
begin

  { value:=1;
   stri:='1';
   result:=true;
   exit;}

 {  if GetShortTxt then
   begin
      Result:=true;
      getvaloftext(trans,kar,value,stri);  //carel se spoed routine
      exit;
   end;}

   spas:=false;

   if Not GetShorttxt then
   begin
         for j:=1 to length(trans)-1 do
            if (trans[j]=wat) and (trans[j+1]=wat) then
            begin
               spas:=true;
               break;
            end;
         addd:=0;

         if spas and (wat=',') then    //vir corne file wat -50824.51,-3754006.27,-14.01
                                       // 01,,3753759.200,51068.710,-14.220
         begin
            tr2:='';
            for j:=1 to length(trans) do
            begin
               if (j>1) and (tr2[length(tr2)]=wat) and (trans[j]=wat) then
               begin
                  tr2:=tr2+' ';
                  inc(addd);
               end;
               tr2:=tr2+trans[j];
            end;

            trans:=tr2;
         end; ///3/2011 nie meer nie, het probeer om spasies in PID se pi naam te lees, werk nie*)
              //5/2011 terug gesit om ,, te kan hanteer
   end;

   stri:='';
   result:=false;

   val(kar,plek,r);
   value:=0;
   ss:=wat[1];

  // result:=true;
  // exit;

  GetVTxt1:=0;


   if (plek>0) and (r=0) then
   begin
      {val(kar,plek,r);
      if copy(trans,1,1)<>' ' then trans:=' '+trans;}
      {trans:=uitspas(trans);}
      if trans[length(trans)]<>ss then
      trans:=trans+ss;
      len:=0;

      if regs then
      begin
         (*
         r:=length(trans);

         tr2:='';
         for i:=1 to r do
         begin
            tr2:=tr2+trans[i];
            if (i<r) and (trans[i]=ss) and (trans[i+1]=ss) and (ss<>' ') then
               if ss='_' then
                  tr2:=tr2+' '
               else
                  tr2:=tr2+'_';   //to try and sort out 2 ,, after each other

         end;                     //takes tooooo long
         trans:=tr2;  *)

         r:=length(trans);

         repeat
            if ss<>' ' then
            begin
               if (trans[r-1]=ss) then len:=len+1
            end
            else
               if (trans[r]<>ss) and (trans[r-1]=ss) then len:=len+1;
            r:=r-1;
         until (len=plek) or (r<=0);
         zx1:=r+1;
      end
      else
      begin
         if trans[1]<>ss then trans:=ss+trans;
         r:=1;
         repeat
            if (trans[r]=ss) and (trans[r+1]<>ss) then len:=len+1;
            r:=r+1;
         until (len=plek) or (r>=length(trans));
         zx1:=r-1;
      end;

      r:=zx1;  if not regs then inc(r);

     repeat
         r:=r+1;
      until (r>length(trans)) or (trans[r]=ss);

    //  r:=(r-1)+pos(ss,copy(trans,r,200));

      zx2:=r;

   end
   else
   begin
      len:=length(kar);
      zx1:=pos(kar,trans)+len;
      zx2:=pos(kar,copy(trans,zx1,80))-len+zx1;
   end;

   temp:=0;

   GetVTxt1:=zx1;  //-addd;   5/2011 uitgehaal om ,, te kan hanteer. add sal altyd=0 bly vir kar=spasie in PID

   if zx2>length(trans) then
      exit;

   for i:=zx1 to zx2 do
   begin
      if trans[i]<>ss then
      begin
         tr2:=copy(trans,i,zx2-i);

         {tr2:='';
         for r:=i to zx2-1 do tr2:=tr2+trans[r];}

       //  val(tr2,temp,r);

         stri:=tr2;

        // if r<>0 then
       //  begin
            for r:=1 to length(tr2) do
               if tr2[r] in ['+','-','.','1','2','3','4','5','6','7','8','9','0'] then
               else tr2[r]:=' ';
            tr3:=uitspas(tr2);
            val(tr3,temp,r);
        // end;

         //stri:=copy(trans,i,zx2-i);


         if r=0 then result:=true;

         if abs(temp)<1e12 then value:=temp;

         exit;
      end;
   end;
end;



function kykrigt(rigt1,rigt2,toller : double):boolean;
begin
   kykrigt:=false;
   if  ( (abs(rigt1-rigt2)>360-toller) and (abs(rigt1-rigt2)<360+toller) ) then
   kykrigt:=true;
   if  ( (abs(rigt1-rigt2)>-toller) and (abs(rigt1-rigt2)<toller) ) then
   kykrigt:=true;
end;




function mag(a1,a2:double):double;        {X^Y     a1^a2}
begin
   result:=0;

   if a1<>0 then result:=exp(a2*ln(a1));
end;



function trimstr(s:string):string;
var j,l : integer;
begin
   l:=0;   //length(s);
   for j:=1 to length(s) do
      if (s[j]<>' ') then l:=j;
   result:=copy(s,1,l);
end;


function LargerText(t1,t2 : string): boolean;
var j,k1,k2,f : integer;
    r1,r2     : double;
    s1,s2     : string;
begin
   k1:=0;
   k2:=0;
   for j:=1 to length(t1) do
      if t1[j] in ['0'..'9'] then
      //
      else k1:=j;
   for j:=1 to length(t2) do
      if t2[j] in ['0'..'9'] then
      //
      else k2:=j;

   result:=false;
   if copy(t1,1,k1)>copy(t2,1,k2) then
   begin
      result:=true;
      exit;
   end;
   if copy(t1,1,k1)=copy(t2,1,k2) then
   begin
      s1:=copy(t1,k1+1,length(t1));
      s2:=copy(t2,k2+1,length(t2));
      val(s1,r1,f);
      val(s2,r2,f);

      if r1>r2 then
         result:=true;
   end;
end;

function uitspas(vra : Shortstring):string;
begin
   outspace(vra);
   result:=vra;
end;

function inccode(pk,vv:string; suffix:boolean; AlphaType:boolean) : string;
var l,j,f,d1,d2 : integer;
    v,vval : double;
    ss : String;
begin
   l:=length(pk);
   ss:='';

   RESULT:='';  if l=0 then exit;


   val(vv,vval,j);

   d1:=pos('.',pk);

   if d1>1 then
      if pk[d1-1] in ['0'..'9'] then else d1:=0;
   if d1>0 then
      for j:=d1+1 to length(pk) do
         if pk[j] in ['0'..'9'] then else d1:=0;

   if d1>0 then d1:=length(pk)-d1;

   d2:=pos('.',vv);   if d2>0 then d2:=length(vv)-d2;

   if d1>d2 then d2:=d1;


   if AlphaType then
   begin
      if suffix then
      begin
         if pk[l] in ['A'..'Z','a'..'z'] then
            pk[l]:=char(ord(pk[l])+1)
         else
            pk:=pk+'A';
      end
      else
      begin
         j:=1;
         while (j<=l) and (pk[j] in ['A'..'Z','a'..'z']) do
         begin
            inc(j);
         end;
         j:=j-1;
         if (j>0) and (j<=l) then pk[j]:=char(ord(pk[j])+1);
      end;
      result:=pk;
      exit;
   end;

   if suffix then
   begin
      j:=l;
      while (j>0) and ((ord(pk[j])>47) and (ord(pk[j])<58) or (ord(pk[j])=46)) do
      begin
         ss:=pk[j]+ss;
         dec(j);
      end;
      val(ss,v,f);
      if f=0 then
      begin
         v:=v+vval;
         str(v:10:d2,ss);
         ss:=uitspas(ss);
         result:=copy(pk,0,j)+ss;
      end
      else
         result:=pk+vv;
   end
   else
   begin

      j:=1;
      while (j<=l) and (ord(pk[j])>47) and (ord(pk[j])<58) do
      begin
         ss:=ss+pk[j];
         inc(j);
      end;
      val(ss,v,f);
      if f=0 then
      begin
         v:=v+vval;
         if frac(v)=0 then
            ss:=inttostr(trunc(v))
         else
            str(v,ss);
         result:=ss+copy(pk,j,l);
      end
      else
         result:=pk;
   end;
end;



function ShortStr(ss : shortstring) : ShortString;
begin
   result:=ss;
end;

function Last80(s:string):string;
var j,i : integer;
begin
   result:=s;
   if length(s)>40 then
   begin
      j:=length(s);
      i:=0;
      while (j>1) do
      begin
         if (i>40) and (s[j]='\') then break;
         inc(i);
         dec(j);
      end;
      if (i>=40) and (i<length(s)) then
         result:='..'+copy(s,length(s)-i,length(s));
   end;
end;



function div360(a1,a2:double) : boolean;
var dd : double;
begin
   dd:=abs(a2-a1);
   result:=(dd>=359.99) and (dd<=360.01);
end;

Procedure Get_today(var mnd,jar,dg : integer);
var jaar,maand,dag   :word;
    dates : TDateTime;
begin
  dates:=date;
  Decodedate(Dates,jaar,maand,dag);
  mnd:=maand; jar:=jaar; dg:=dag;
end;


function Standardfont(tt:ShortString):boolean;
begin
   result:= (tt='MM-STANDARD') or (tt='MM Standard');
end;

function TimeBetween:string;   //seconds between time1 and current;
var
  Present: TDateTime;
  Hour1, Min1, Sec1, MSec1: Word;
  Hour, Min, Sec, MSec: Word;
begin
  DecodeTime(Time1, Hour1, Min1, Sec1, MSec1);
  time1:=Now;
  DecodeTime(Time1, Hour, Min, Sec, MSec);
  result:=rtostr((hour*3600+min*60+sec+msec/1000)-(hour1*3600+min1*60+sec1+msec1/1000),10,3);
end;

function gelyk(x1,x2 : double):boolean;
begin
   result:=abs(x1-x2)<0.0001;
end;

procedure CheckWatter(no,staMax:integer);
begin

   if high(watter)<no+10 then
   begin
      if high(watter)<StaMax then
         setlength(watter,staMax+101)
      else
         setlength(watter,no+500000);
   end;
end;

function i360(hh : double; decimalangle : boolean):double;
var cc : integer;
begin
   cc:=general.fullcirc;
   if decimalangle then cc:=360;     //not decimal angle. check against 360 or 400
   while hh>cc do hh:=hh-cc;
   while hh<0 do hh:=cc+hh;
   result:=hh;
end;

function numdec :integer;
begin
   result:=waarde.readint('General','Pnt edit',3);
end;


function valobj.si(edit : Shortstring; var vval : smallint; min,max : double) :boolean;
var j : integer;
begin
   j:=vval;
   result:=i(edit,j,min,max);
   vval:=j;
end;


function loadglyph(wat : Shortstring):hBitmap;
var g : array[0..79] of char;
    j : integer;
begin
   fillchar(g,sizeof(g),' ');
   for j:=1 to length(wat) do wat[j]:=upcase(wat[j]);
   strpcopy(g,wat);
   result:=LoadBitmap(HINSTANCE,g);
end;

function min2int(i1,i2:integer):integer;
begin
   result:=i1;
   if i2<i1 then result:=i2;
end;



function outchar(tr:string; c1,c2 : char) : Shortstring;
var j,i,l,tt : integer;
    c3 : char;
begin
   tt:=8;
   result:='';
   c3:='_';
   if c1=c3 then c3:='=';

   {if c1<>' ' then
      for j:=1 to length(tr) do
         if tr[j]=' ' then tr[j]:=c3;}

   for j:=1 to length(tr) do
   begin
      if c1=#9 then   {tab}
      begin
         if tr[j]<>c1 then
            result:=result+tr[j]
         else
         begin
            L:=length(result);
            for i:=L+1 to (L div tt +2)*tt do
               result:=result+c2;
         end;
      end
      else
         if tr[j]=c1 then tr[j]:=c2;
   end;
   if c1<>#9 then result:=tr;
end;

function doublespace(wat:Shortstring):Shortstring;
var j : integer;
begin
   result:='';
   for j:=1 to length(wat) do
   begin
      result:=result+wat[j];
      if wat[j]=' ' then result:=result+' ';
   end;   
end;

function packspace(wat:string; cc:char):Shortstring;
var j : integer;
begin
   for j:=1 to length(wat) do
      if wat[j]=' ' then wat[j]:=cc;
   result:=wat;
end;

procedure sfout;
begin
   {messagebeep(MB_ICONEXCLAMATION);}   {1}
end;

procedure outspace(var vra:Shortstring);
var j : integer;
    tem : string;
begin
   if pos(' ',vra)=0 then exit;
   tem:='';
   for j:=1 to length(vra) do if vra[j]<>' ' then tem:=tem+vra[j];
   vra:=tem;
end;

function i_s(wat : integer; l : integer) : Shortstring;
var tmp : string;
begin
   str(wat:l,tmp);
   result:=s_s(tmp,l);
end;

function s_s(wat : string; l : integer) : Shortstring;    {pad string}
begin
   wat:=wat+'                                                                          ';
   s_s:=copy(wat,1,l);
end;

function s__s(wat : string; l : integer) : Shortstring;    {pad string}
var ll : integer;
begin
   ll:=length(wat);
   if ll<l then
      result:=copy('                                                           ',1,l-ll)+wat
   else
      result:=copy(wat,1,l);
end;

function r_s(wat : double; l,d : integer) : Shortstring;
var tmp : Shortstring;
begin
   str(wat:l:d,tmp);
   result:=s_s(tmp,l);
end;

function rtostr(wat : double; l,d : integer) : Shortstring;
var tmp : Shortstring;
begin
   tmp:=r_s(wat,l,d);
   outspace(tmp);
   rtostr:=tmp;
end;

function rtostr4(wat : double; l,d : integer) : Shortstring;
var tmp : Shortstring;
    j : integer;
begin
   if d<4 then d:=4;
   tmp:=r_s(wat,l,d);
   outspace(tmp);
   //100.3400
   l:=length(tmp);

   j:=l; //while (tmp[j]='0') and (tmp[j-1]<>'.') and (j>1) do dec (j);
   tmp:=copy(tmp,1,j);

   result:=tmp;
end;

function rtostr_(wat : double; l,d : integer) : Shortstring;
var tmp : Shortstring;
    dd : double;
begin
  // dd:=mag(0.1,d+1);       2/2009 nie verkeerd nie, kon net nie volledig toets nie
  { dd:=0;

   if frac(wat)<dd then d:=0;}

   if frac(wat)=0 then d:=0;

   result:=rtostr(wat,l,d);
end;

(*
procedure valobj.pushw(ww:integer);
begin
   {3=text
    4=pattern
    5=area define
    20=genstring z
    21=alignstring chainage
    die res = line lenght & angle}

  { if waarno<10 then
   begin
      inc(waarno);
      waar[waarno]:=ww;
      layer^.waar:=ww;
   end;}
   waarno:=1;
   layer^.waar:=ww;
end;
 *)
procedure valobj.popw;
begin
   {
   if waarno>=1 then
   begin
      dec(waarno);
      if waarno=0 then
         layer^.waar:=0
      else
         layer^.waar:=waar[waarno];
   end;
   }
end;

procedure valobj.sef;
begin
   if foutjie then
   begin
      foutjie:=false;
{      messagebeep(1);}
   end;
end;

procedure valobj.erasesec(ss:Shortstring);
begin
   ini_erasesection(ss);
end;

procedure valobj.UpdateFile;
begin
   ini_UpdateFile;
end;

function valobj.readbool(w1,w2 : Shortstring; bool : boolean) : boolean;
begin
   result:=ini_readbool(w1,w2,bool);
end;

function valobj.readstring(w1,w2,w3 : Shortstring) : Shortstring;
var ss : Shortstring;
begin
   ///result:=w3;  exit;
   //////////2010
  // ss:=(w1+' / '+w2);
 //  APPLICATION.MESSAGEBOX(pchar(ss), 'ERROR', MB_OK);


 //result:=''; exit;

   ss:=ini_readstring(w1,w2,w3);
   result:=ss;


   (*
   if length(result)>40 then
   begin
      result:='123';
   end;*)

   //ss:=(result);
   //APPLICATION.MESSAGEBOX(pchar(ss), 'ERROR', MB_OK);

end;

function valobj.readint(w1,w2 : Shortstring; w3 : longint) : longint;
var ww : Shortstring;
    vv : Shortstring;
    j : integer;
begin
   str(w3,vv);
   ww:=ini_readstring(w1,w2,vv);
   val(ww,w3,j);

   result:=w3;
end;

function valobj.readreal(w1,w2 : Shortstring; w3 : double) : double;
var ww : Shortstring;
    vv : Shortstring;
    j : integer;
begin
   str(w3:12:4,vv);
   outspace(vv);
   ww:=ini_readstring(w1,w2,vv);
   val(ww,w3,j);
   result:=w3;
end;

procedure valobj.writebool(w1,w2 : Shortstring; bool : boolean);
begin
   // APPLICATIONMESSAGEBOX(w1, w2, 1);
   ini_writebool(w1,w2,bool);
end;

procedure valobj.writestring(w1,w2,w3 : Shortstring);
//var ss : string;
begin
  // ss:=(w1+' / '+w2+' / '+w3);
  // APPLICATION.MESSAGEBOX(pchar(ss), 'ERROR', MB_OK);
   ini_writestring(w1,w2,w3);
end;

procedure valobj.writeint(w1,w2 : Shortstring; w3 : longint);
var vv : Shortstring;
begin
   str(w3,vv);
   ini_writestring(w1,w2,vv);
end;

procedure valobj.writereal(w1,w2 : Shortstring; w3 : double);
var vv : Shortstring;
begin
   str(w3:14:5,vv);
   outspace(vv);
   ini_writestring(w1,w2,vv);
end;


function valobj.r(edit : Shortstring; var vval : double; min,max : double) : boolean;
var j : integer;
    t : double;
    tmp : Shortstring;
begin
   result:=true;
   tmp:=edit;
   outspace(tmp);
   val(tmp,t,j);
   vval:=0;
   if j=0 then
   begin
      if min=max then
      begin
         vval:=t;
         sef;
         exit;
      end;
      if min<max then
      begin
         if (t>=min) and (t<=max) then
         begin
            vval:=t;
            sef;

            exit;
         end;
      end;
      if min>max then
      begin
         if t<abs(max) then
         begin
            vval:=t;
            sef;
            exit;
         end;
      end;
   end;
   sfout;
   foutjie:=true;
   result:=false;
end;


function valobj.exten(edit : Shortstring; var vval : extended; min,max : double) : boolean;
var j : integer;
    t : extended;
    tmp : Shortstring;
begin
   result:=true;
   tmp:=edit;
   outspace(tmp);
   val(tmp,t,j);
   if j=0 then
   begin
      if min=max then
      begin
         vval:=t;
         sef;
         exit;
      end;
      if min<max then
      begin
         if (t>=min) and (t<=max) then
         begin
            vval:=t;
            sef;

            exit;
         end;
      end;
      if min>max then
      begin
         if t<abs(max) then
         begin
            vval:=t;
            sef;
            exit;
         end;
      end;
   end;
   sfout;
   foutjie:=true;
   result:=false;
end;


function valobj.i(edit : Shortstring; var vval : integer; min,max : double) : boolean;
var j : integer;
    t : integer;
    tmp : Shortstring;
begin
   i:=true;
   tmp:=edit;
   outspace(tmp);
   val(tmp,t,j);
   if j=0 then
   begin
      if min=max then
      begin
         vval:=t;
         sef;
         exit;
      end;
      if min<max then
      begin
         if (t>=min) and (t<=max) then
         begin
            vval:=t;
            sef;
            exit;
         end;
      end;
      if min>max then
      begin
         if t<abs(max) then
         begin
            vval:=t;
            sef;
            exit;
         end;
      end;
   end;
   sfout;
   foutjie:=true;
   i:=false;
end;

function mergecol(col1,col2 : tcolor; nom,max:double) : tcolor;
var r1,g1,b1,r2,g2,b2 : longint;
    fak : double;
begin

   nom:=abs(nom);      //10/2001

   if col1<0 then col1:=0;
   if col2<0 then col2:=0;

   r1:=getrvalue(col1);
   g1:=getgvalue(col1);
   b1:=getbvalue(col1);

   r2:=getrvalue(col2);
   g2:=getgvalue(col2);
   b2:=getbvalue(col2);

   if max<2 then max:=2;
   if nom>=max-1 then nom:=max-1;


   fak:=nom/(max-1);

   result:=rgb(r1+trunc((r2-r1)*fak),
               g1+trunc((g2-g1)*fak),
               b1+trunc((b2-b1)*fak));

end;

procedure picaanaf(var but : timage; aan : boolean);
begin
   if aan then
      but.picture.bitmap.handle:=loadglyph('AAN') {LoadBitmap(HINSTANCE,'AAN')}
   else
      but.picture.bitmap.handle:=loadglyph('AF'); {LoadBitmap(HINSTANCE,'AF');}
end;

procedure aanaf(var but : tspeedbutton; aan,aanaf_false : boolean);
begin
   but.glyph:=nil;
   if aan then
   begin
      but.font.color:=clred;
      {if not aanaf_false then} but.glyph.handle:=loadglyph('AAN');
      but.down:=true;
   end
   else
   begin
     // if not aanaf_false then
         but.down:=false;
         //but.glyph:=nil
     // else                                  {af}
      //   but.down:=false;
      if not aanaf_false then
         but.glyph.handle:=loadglyph('AANCIR')
      else
         but.glyph:=nil;
      but.font.color:=clgreen;
   end;
end;


procedure aanafDx(but : tDXBarbutton; aan,aanaf_false : boolean);
begin

   //exit;

   but.ImageIndex:=-1;

   but.glyph:=nil;


   if aan then
   begin
      //but.font.color:=clred;
      //but.ImageIndex:=39;

      but.glyph.handle:=loadglyph('AAN');

      but.down:=true;
   end
   else
   begin
      but.down:=false;

      if not aanaf_false then but.glyph.handle:=loadglyph('AANCIR');


//         but.ImageIndex:=40;
      //but.font.color:=clgreen;
   end;
end;


function hemobj.adjust : double;
begin
   result:=1;
   if units=2 then result:=feet;
end;

function HemObj.Hemis_ : HemisType;
begin
   result:=hemis;
   if UTM09 then result:=noord;
end;


function hemobj.stx : str10;
begin
   case hemis_ of
   suid : stx:='X';
   noord: stx:='N';
    else  stx:='X';
   end;
end;

function hemobj.m3 : str10;
begin
   result:='m3';
   if units=2 then result:='yards';
end;

function hemobj.mm : str10;
begin
   result:='mm';
   if units=2 then result:='ft';
end;

function hemobj.m2 : str10;
begin

   result:='m2';
   if units=2 then result:='sf';
end;

function hemobj.m : str10;
begin
   result:='m';
   if units=2 then result:='ft';
end;

function hemobj.aha(ll:double):double;
begin
   result:=ll/10000;                          //m2 to ha
   if units<>1 then result:=ll/43560;         //ft2 acres
end;

function hemobj.sha : Shortstring;
begin
   result:='ha';
   if units<>1 then result:='acres';
end;

function hemobj.vol(v:double) : double;
begin
   result:=v;
   if units=2 then result:=v/(3*3*3);   {feet*feet*feet); to cub yards}
end;




function hemobj.sty : str10;
begin
   case hemis_ of
   suid : sty:='Y';

   noord: sty:='E';
   else   sty:='Y';
   end;
end;


function hemobj.y(sy,sx:double):double;
begin   {die regte suid coordinaat word gestuur }
   case hemis_ of
   suid : y:=sy;
   noord: y:=-sy;
   else   y:=sy;
   end;
end;

function hemobj.x(sy,sx:double):double;
begin
   case hemis_ of
   suid : x:=sx;
   noord: x:=-sx;
   else   x:=sx;
   end;
end;

function hemobj.iny(sy,sx:double):double;    {y=y  e=-x}   {pointinfo ens}
begin
   case hemis_ of
   suid : iny:=sy;
   noord: iny:=-sx;
   else   iny:=sy;
   end;
end;

function hemobj.inx(sy,sx:double):double;    {x=x  n=-y}
begin
   case hemis_ of
   suid : inx:=sx;
   noord: inx:=-sy;
   else   inx:=sx;
   end;
end;

function hemobj.ruy(sy,sx:double):double;    {y=y  e=x}   {lees ens}
begin
   case hemis_ of
   suid : ruy:=sy;
   noord: ruy:=sx;
   else   ruy:=sy;
   end;
end;

function hemobj.rux(sy,sx:double):double;    {x=x  n=y}
begin
   case hemis_ of
   suid : rux:=sx;
   noord: rux:=sy;
   else   rux:=sx;
   end;
end;

function hemobj.h(hok : double; decimalangle:boolean):double;
var cc : double;
begin
   cc:=general.fullcirc;
   if decimalangle then cc:=360;
   if (hemis_=noord) or (hemis=wiskundig) then hok:=hok+cc/2;
   hok:=i360(hok,decimalangle);
   h:=hok;
end;

procedure hemobj.sett(hem : hemistype);
begin
   hemis:=hem;
end;

function ValEx(ss:string):extended;
var j,k : integer;
    maal : extended;
begin
   j:=pos('.',ss);
   result:=0;
   maal:=1;
   if j>0 then
   begin
      for k:=j-1 downto 1 do
      begin
         result:=result+strtoint(ss[k])*maal;
         maal:=maal*10;
      end;

      maal:=10;
      for k:=j+1 to length(ss) do
      begin
         result:=result+strtoint(ss[k])/maal;
         maal:=maal*10;
      end;
   end
   else
      for k:=length(ss) downto 1 do
      begin
         result:=result+strtoint(ss[k])*maal;
         maal:=maal*10;
      end;
end;


function strtor(Swat : Shortstring) : double;
var rr : double;
    ff,j : integer;
    wat : shortstring;
begin
   wat:=Swat;
   outspace(wat);

  { for j:=1 to length(wat) do
      if ansichar(wat[j])=general.deliml then wat[j]:='.';}

   val(wat,rr,ff);
   strtor:=rr;
end;



function GetRegistryValue(KeyName: string): string;
var
  Registry: TRegistry;
begin
  Registry := TRegistry.Create(KEY_READ);
  try
    Registry.RootKey := HKEY_CURRENT_USER;
    Registry.OpenKey(KeyName, False); 
    Result := Registry.ReadString('sCurrency');
  finally
    Registry.Free;
  end;
end;


function GetCurrency : string;
begin
   result:=GetRegistryValue('Control Panel\International');
end;



      procedure APPLICATIONMESSAGEBOX(s1,s2:string; i : integer);
      begin
      {   if er then
         begin
            writeln(ferr,s2);
            flush(ferr);
         end;}
      end;



function GetEnvVarValue(const VarName: string): string;
var
  BufSize: Integer;  // buffer size required for value
begin
  // Get required buffer size (inc. terminal #0)
  BufSize := GetEnvironmentVariable(PChar(VarName), nil, 0);
  if BufSize > 0 then begin
    // Read env var value into result string
    SetLength(Result, BufSize - 1);
    GetEnvironmentVariable(PChar(VarName),
      PChar(Result), BufSize);
  end
  else
    // No such environment variable
    Result := '';

{--- Complete List of Values -----------
ALLUSERSPROFILE
APPDATA
CLIENTNAME
CommonProgramFiles
COMPUTERNAME
ComSpec
HOMEDRIVE
HOMEPATH
LOGONSERVER
NUMBER_OF_PROCESSORS
OS
Path
PATHEXT
PCToolsDir
PROCESSOR_ARCHITECTURE
PROCESSOR_IDENTIFIER
PROCESSOR_LEVEL
PROCESSOR_REVISION
ProgramFiles
SESSIONNAME
SystemDrive
SystemRoot
TEMP
TMP
USERDOMAIN
USERNAME
USERPROFILE
WINDIR
LOCALAPPDATA
---- Complete List of Values -----------}
end;



end.
