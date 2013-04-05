unit GloUnt;

interface

Uses Vcl.Graphics;

const
   feet = 3.28084;

type
   str10 = string[10];
   str20 = string[20];
   str30 = string[30];
   str40 = string[40];


   hemistype = (noord,suid,wiskundig);

   Rgeneral = Record
      fullcirc : integer;
      GenConPen,MajConPen : integer;
      GenCon,MajCon       : Double;

   End;

   cadlinetype = record        //## 2
      vanx,vany,vanZ : double;
      nax,nay,naz    : double;
      pen            : integer;  //<<<<<<<<<
      ltipe          : byte;
      width          : double;   //0=pen color     >0 = mm size
      layer          : integer;
      id             : byte;
      blok9          : integer;         ///????????????
   end;

   cadarctype = record          //## 3
      cenx,ceny,cenz      : double;
      straal,starta,enda  : double;
      width     : double;
      pen       : integer;       //<<<<<<<<<
      ltipe     : byte;
      layer     : Integer;
      id        : byte;
      blok9      : integer;       //<<<<<<<<<
   end;



function swap_angle(angle:double):double;
function potago(x1,y1,x2,y2 : double):double;
function SameXY(x1,y1,x2,y2 : double) : boolean;
function r_s(wat : double; l,d : integer) : Shortstring;
procedure pol(x,y,afst,rigt : double;  var xp,yp : double);
procedure kleinste(var r1,r2 : double);

procedure vrb(x1,y1,x2,y2: double; var afst,rigt: double);
                   external 'mm1.dll';
procedure intersek(x1,y1,x2,y2,hoek1,hoek2:double; var xp,yp : double);
                   external 'mm1.dll';
procedure interseksie(x3,y3,x4,y4,x1,y1,x2,y2: double; var xp,yp : double; var toets : integer);

var
   kanvas : tcanvas;
   watter   : array of integer;
   General : Rgeneral;

   IrrDrive : string;
   TmpDrive : string;

implementation

procedure kleinste(var r1,r2 : double);
var af : double;
begin
   if r1>r2 then
   begin
      af:=r1;
      r1:=r2;
      r2:=af;
   end;
end;


procedure pol(x,y,afst,rigt : double;  var xp,yp : double);
begin
   xp:=x+afst*cos(rigt*pi/180);
   yp:=y+afst*sin(rigt*pi/180);
end;

function potago(x1,y1,x2,y2 : double):double;
begin
   result:=sqrt(sqr(x1-x2)+sqr(y1-y2));
end;

function SameXY(x1,y1,x2,y2 : double) : boolean;
begin
   result:=(x1=x2) and (y1=y2);
end;

function swap_angle(angle:double):double;
begin
        if angle > 180 then
         result := angle - 180
      else
         result := angle + 180;

end;

function s_s(wat : string; l : integer) : Shortstring;    {pad string}
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

procedure interseksie(x3,y3,x4,y4,x1,y1,x2,y2: double; var xp,yp : double; var toets : integer);
var dum : double;
    md,cd,mk,ck,dxd,dxk : double;

begin

   xp:=0; yp:=0;
   toets:=1;

   if Samexy(x3,y3,x1,y1) then
   begin
      xp:=x3;  yp:=y3;
      exit;
   end;

   if Samexy(x3,y3,x2,y2) then
   begin
      xp:=x3;  yp:=y3;
      exit;
   end;

   if Samexy(x4,y4,x1,y1) then
   begin
      xp:=x4;  yp:=y4;
      exit;
   end;

   if Samexy(x4,y4,x2,y2) then
   begin
      xp:=x4;  yp:=y4;
      exit;
   end;

   toets:=0;

   if x1=x2 then x2:=x2+0.00015656;
   if y1=y2 then y2:=y2+0.000133567;
   if x3=x4 then x4:=x4+0.000134624;
   if y3=y4 then y3:=y4+0.000163456;

   if x2<x1 then
   begin
      dum:=x2; x2:=x1; x1:=dum;
      dum:=y2; y2:=y1; y1:=dum;
   end;

   dxd:=x2-x1; if dxd=0 then dxd:=0.000156245;
   md:=(y2-y1)/dxd;
   cd:=y1-x1*md;

   if x4<x3 then
   begin
      dum:=x4; x4:=x3; x3:=dum;
      dum:=y4; y4:=y3; y3:=dum;
   end;


   dxk:=x4-x3; if dxk=0 then dxk:=0.000145645;
   mk:=(y4-y3)/dxk;
   ck:=y3-x3*mk;

   if md<>mk then
   begin
      xp:=(ck-cd)/(md-mk);
      if abs(md)<abs(mk) then
         yp:=md*xp+cd
      else
         yp:=mk*xp+ck;


      if (x1<=xp+0.00001) and (x2>=xp-0.00001) and (x3<=xp+0.00001) and (x4>=xp-0.00001) then
      begin
         if y2<y1 then
         begin
            dum:=y2; y2:=y1; y1:=dum;
         end;
         if (yp>=y1) and (yp<=y2) then
         begin
            if y4<y3 then                      //5/2002 ekstra check
            begin
               dum:=y3; y3:=y4; y4:=dum;
            end;
            if (yp>=y3) and (yp<=y4) then toets:=1;
         end;
      end;
   end;
end;



end.
