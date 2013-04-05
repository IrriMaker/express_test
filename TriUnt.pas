Unit TriUNT;

Interface

uses  Dataunt, DtmUnt,System.Sysutils,Graphics,Vcl.Forms;

type Ptpoint3 = array[1..3] of DtmP;
     Arr3Real = array[1..3] of double;

{   SidesRec = record
        : integer;    //Triangle number and side number of triangle
   end;}

   DistObj = object
      DistVal : array of Double;
      DistNo  : integer;
      procedure Put(No : integer; Value : double);
      function  Get(No : integer) : double;
   end;

   SkynObj = object
      SkynVal : array of Integer;
      SkynNo  : integer;
      procedure Put(No : integer; Value : integer);
      function  Get(No : integer) : integer;
   end;


   TriSidesObj = object
      Sides : array of array[-1..3] of integer;    //0=triNo 1,2 = pointno  3=side no
      No : integer;                 //how many sides

      PrevTri : array[0..3] of integer;  //last triangles where Z was found

      procedure MakeSides;          //Scan triangles to build sides rec
   end;


var
   TriSides : TriSidesObj;
   Dist     : DistObj;
   Skyn     : SkynObj;

   procedure wipepoint(nom:integer);

   procedure qsearch;

   function DtmZ(x,y : double) : double;         //get elevation on triangle model  used when moving mouse

   procedure quickcon(wat:integer;  V3D : integer); //0=gewoon   1=abrie3d   2=GMaps
{===========================================================================}

Implementation

Uses Mouseunt,Plotunt,Glount;

const maxstack=40;

function deelbaar(u1,u2 : extended) : boolean;
begin
   deelbaar:=(abs(frac(u1/u2))<0.0000123) or (abs(frac(u1/u2))>0.9999);
end;

procedure DistObj.Put(No : integer; Value : double);
begin
   if DistNo<No+2 then
   begin
      Setlength(DistVal,No+100);
      DistNo:=No+100;
   end;
   DistVal[No]:=Value;
end;

function DistObj.Get(No : integer) : double;
begin
   Result:=DistVal[No];
end;

procedure SkynObj.Put(No : integer; Value : integer);
begin
   if SkynNo<No+2 then
   begin
      Setlength(SkynVal,No+100);
      SkynNo:=No+100;
   end;
   SkynVal[No]:=Value;
end;

function SkynObj.Get(No : integer) : integer;
begin
   Result:=SkynVal[No];
end;

Function Ptin3(Nom : integer) : Ptpoint3;    //load 3 dtm points of this triangle
var Dh : Dhp;
    j : integer;
begin
   Dh:=Dbase.Tris.Tri[nom].dh;
   for j:=1 to 3 do result[j]:=Dbase.Dtms.Dtm[Dh[j]].p1;
end;

function getbuite3(drhk:integer):boolean;
var zx,n : integer;
    p3 : ptpoint3;
begin
   result:=false;

   P3:=Ptin3(drhk);
   with Wind.Screen do
   begin
      zx:=0;
      for n:=1 to 3 do if (p3[n].xyz.x<minx) then inc(zx);
      if zx=3 then exit;
      zx:=0;
      for n:=1 to 3 do if (p3[n].xyz.x>maxx) then inc(zx);
      if zx=3 then exit;
      zx:=0;
      for n:=1 to 3 do if (p3[n].xyz.y<miny) then inc(zx);
      if zx=3 then exit;
      zx:=0;
      for n:=1 to 3 do if (p3[n].xyz.y>maxy) then inc(zx);
      if zx=3 then exit;
   end;
   result:=true;
end;


procedure checkpunte;
var n  : integer;
    pt : DtmP;
begin
   for n:=1 to Dbase.Dtms.No do
   begin
      pt:=Dbase.Dtms.Dtm[n].p1;
      if wind.Screen.InScreen(pt.xyz) then
         Skyn.Put(n,1)
      else
         Skyn.Put(n,0);
   end;
end;



procedure puntin1drie(bbb : integer; xa,ya:double; var drhk : integer);

var
     bo,_on     : boolean;
     nn,zx     : integer;
     aantal    : integer;
     hel       : double;
     xaf       : array[1..2] of double;
     xx,yy,zz  : Arr3Real;
          dh   : dhp;
          p3   : PtPoint3;
begin
   {dhin(bbb,dh);}

   p3:=Ptin3(bbb);
   for zx:=1 to 3 do
   begin
      xx[zx]:=p3[zx].xyz.x;
      yy[zx]:=p3[zx].xyz.y;
      zz[zx]:=p3[zx].xyz.z;
   end;

   bo:=false;
   _on:=false;
   nn:=1;
   repeat
      if yy[nn]>=ya then bo:=true;
      if yy[nn]<=ya then _on:=true;
      nn:=nn+1;
   until (nn=4) or ( (bo) and (_on) );


   if (bo) and (_on) then
   begin
      bo:=false;
      _on:=false;
      nn:=1;
      repeat
         if xx[nn]>=xa then bo:=true;
         if xx[nn]<=xa then _on:=true;
         nn:=nn+1;
      until (nn=4) or ( (bo) and (_on) );

      if bo and _on then
      begin
         nn:=0;
         aantal:=0;
         repeat
            nn:=nn+1;
            zx:=nn+1;   if zx=4 then zx:=1;
            if (yy[nn]<=ya) and (yy[zx]>=ya) or
               (yy[nn]>=ya) and (yy[zx]<=ya) then
            begin
               aantal:=aantal+1;
               hel:=xx[nn]-xx[zx];
               if hel=0 then hel:=0.001;
               hel:=(yy[nn]-yy[zx])/(hel);
               if hel=0 then hel:=0.001;
               xaf[aantal]:=xx[zx]+(ya-yy[zx])/hel;
            end;
         until (aantal=2) or (nn=3);

         if (xaf[1]<=xa) and (xaf[2]>=xa) or
            (xaf[1]>=xa) and (xaf[2]<=xa) then
         begin
            //dtmh:=10;
            drhk:=bbb;
            dh:=Dbase.Tris.Tri[bbb].dh;
           // drhkvas[0] := bbb;
           // for nn:=4 to 6 do     {kry kleinste dh nommer}
           //    drhkvas[nn-3]:=dh.dh[nn];
            exit;
         end;
      end;
   end;
end;




function indrie_onder(dh:dhp; p3:ptpoint3; xa,ya : double ; var hoogte : double) : boolean;
var  xr,xl                        : double;
      j,n                          : integer;
      cy,cx,cz,m,c                 : arr3real;
      hl,hr                        : double;
begin
   indrie_onder:=false;

   {---word in getdrie herhaal---}
   ya:=ya+0.0006;
   xa:=xa+0.0007;
   {--------}

   for j:=1 to 3 do
   begin
      with p3[j] do
      begin
         cy[j]:=xyz.y;
         cx[j]:=xyz.x;
         cz[j]:=xyz.z;
      end;
   end;

   hoogte:=p3[1].xyz.Z;   {nie 0 nie anders is fout groot}

   for j:=1 to 3 do
   begin
      for n:=j to 3 do
      begin
         if cy[j]>cy[n] then
         begin
            xr:=cx[j]; cx[j]:=cx[n]; cx[n]:=xr;
            xr:=cy[j]; cy[j]:=cy[n]; cy[n]:=xr;
            xr:=cz[j]; cz[j]:=cz[n]; cz[n]:=xr;
         end;
      end;
   end;

   if (ya<cy[1]) or (ya>cy[3]) then exit;

   m[1]:=(cy[3]-cy[1])/(cx[3]-cx[1]+0.00001); if m[1]=0 then m[1]:=0.001;
   c[1]:=cy[1]-m[1]*cx[1];

   m[2]:=(cy[2]-cy[1])/(cx[2]-cx[1]+0.00001); if m[2]=0 then m[2]:=0.001;
   c[2]:=cy[1]-m[2]*cx[1];

   m[3]:=(cy[3]-cy[2])/(cx[3]-cx[2]+0.00001); if m[3]=0 then m[3]:=0.001;
   c[3]:=cy[2]-m[3]*cx[2];

   xr:=(ya-c[1])/m[1];
   if cx[1]=cx[3] then xr:=cx[1];
   hr:=(ya-cy[1])/(cy[3]-cy[1]+0.00001)*(cz[3]-cz[1])+cz[1];

   if ya<cy[2] then
   begin
      xl:=(ya-c[2])/m[2];
      if cx[1]=cx[2] then xl:=cx[1];
      hl:=(ya-cy[1])/(cy[2]-cy[1]+0.00001)*(cz[2]-cz[1])+cz[1];
   end
   else
   begin
      xl:=(ya-c[3])/m[3];
      if cx[2]=cx[3] then xl:=cx[2];
      hl:=(ya-cy[2])/(cy[3]-cy[2]+0.00001)*(cz[3]-cz[2])+cz[2];
   end;

   hoogte:=(xa-xl)/(xr-xl+0.000013123446)*(hr-hl)+hl;  {sit buite vir veilig}

   if ( (xr>=xa-0.0000001) and (xl<xa+0.0000001) ) or
      ( (xr<xa+0.0000001) and (xl>=xa-0.0000001) ) then
   begin
      hoogte:=(xa-xl)/(xr-xl+0.000013123446)*(hr-hl)+hl;
      indrie_onder:=true;
   end;
end;

function indriehoek(drhk : integer; xa,ya : double; var hoogte : double):boolean;
var   dh  : dhp;
      p3  : ptpoint3;
begin
   Dh:=Dbase.Tris.Tri[drhk].dh;
   p3:=Ptin3(drhk);
   result:=indrie_onder(dh,p3,xa,ya,hoogte);
end;


procedure getindrie(xa,ya : double ; var drhk : integer);
var zx,jj,j1,j2 : longint;
    pt    : Dtmp;
    dh_d1 : dhp;
    minste,meeste   : double;
    xint,yint,z,tmp : double;
    x1,y1,x2,y2     : double;
    sy1,sy2,sy3,oud : integer;
    i,toets,p1,p2,p3 : integer;
    aantal,loop    : longint;
    pp3 : ptpoint3;
    drie1 : integer;
begin
   drhk:=0;
   aantal:=0;

   drhk:=0;

   {-------word in indrie_onder herhaal-}
   ya:=ya+0.0006;
   xa:=xa+0.0007;
   {-------}



   minste:=0;
   meeste:=0;

   if TriSides.No=0 then exit;
   if Dbase.Tris.No=0 then exit;

   for loop:=0 to 3 do
      if (TriSides.PrevTri[loop]>0) and (TriSides.PrevTri[loop]<=Dbase.Tris.No) then  {test old ones first}
         if InDriehoek(TriSides.PrevTri[loop],xa,ya,Z) then
         begin
            drhk:=TriSides.PrevTri[loop];
            exit;
         end;

{   writeln('na loop');}

   for zx:=1 to TriSides.No do
   begin
{      writeln('kt ',zx,'   ',kt);}
      pt:=Dbase.Dtms.Dtm[TriSides.Sides[zx,1]].p1;
      x1:=pt.xyz.x;
      y1:=pt.xyz.y;

      pt:=Dbase.Dtms.Dtm[TriSides.Sides[zx,2]].p1;
      x2:=pt.xyz.x;
      y2:=pt.xyz.y;

      minste:=y1; if y2<minste then minste:=y2;
      meeste:=y1; if y2>meeste then meeste:=y2;

      if (ya>minste) and (ya<=meeste) then
      begin

         {if abs(ya-meeste)<0.0001 then ya:=ya-0.001;}

         interseksie(xa-5e6,ya,xa+5e6,ya,x1,y1,x2,y2,xint,yint,toets);

         if toets=1 then
         begin
            inc(aantal);

            TriSides.Sides[aantal,-1]:=zx;
            Dist.put(aantal,xint-xa);
         end;
      end;
   end;


   if aantal=0 then exit;

{   writeln('aantal ',aantal);}

   j1:=1;

   {gotoxy(1,1); writeln(aantal:9);}

   for jj:=1 to aantal do
   begin
      {writeln(jj:4,dist(jj):9:3,dist(j1):9:3);}
      if abs(dist.get(jj))<abs(dist.get(j1)) then j1:=jj;
   end;


{   drie1:=kant^[watter^[j1],0];
   sy1:=kant^[watter^[j1],3];}

   i:=TriSides.Sides[j1,-1];

   drie1:=TriSides.Sides[i,0];
   sy1  :=TriSides.Sides[i,3];

   dh_d1:=Dbase.Tris.Tri[drie1].dh;
   oud:=-1;

   loop:=0;

   while drie1>0 do
   begin

      //If IndrieHoek(drie1,xa,ya,tmp) then
      puntin1drie(Drie1,xa,ya,drhk);
      if drhk<>0 then
      begin
         //Drhk:=Drie1;
         TriSides.PrevTri[0]:=Drie1;
         TriSides.PrevTri[1]:=dh_d1[4];
         TriSides.PrevTri[2]:=dh_d1[5];
         TriSides.PrevTri[3]:=dh_d1[6];
         exit;
      end;

      if loop>Dbase.Tris.No then exit;  //break;

      sy2:=sy1+1;
      if sy2=7 then sy2:=4;
      sy3:=sy2+1;
      if sy3=7 then sy3:=4;

      p1:=sy1-3;
      p2:=sy1-2;
      if p2=4 then p2:=1;
      p3:=0;
      repeat
         p3:=p3+1;
      until (p3<>p2) and (p3<>p1) ;

      pp3:=Ptin3(drie1);

      j1:=drie1;

      if ((pp3[p1].xyz.y>ya) and (pp3[p3].xyz.y<=ya)) or
         ((pp3[p3].xyz.y>ya) and (pp3[p1].xyz.y<=ya)) then
         drie1:=dh_d1[sy3]
      else
         drie1:=dh_d1[sy2];

      if oud=drie1 then
         display('Model has errors, press Escape and run the error check in the TRI menu',1,1);
      oud:=j1;

      if drie1>0 then
      begin
         dh_d1:=Dbase.Tris.Tri[drie1].dh;
         sy1:=0;
         for j2:=4 to 6 do
            if dh_d1[j2]=j1 then sy1:=j2;
         if sy1=0 then drie1:=0;
      end;
      inc(loop);
   end;
end;

procedure TriSidesObj.MakeSides;
var j,i,p : integer;
begin
   No:=0;
   for j:=1 to Dbase.Tris.No do
      for i := 4 to 6 do
         if Dbase.Tris.Tri[j].dh[i]<=0 then
         begin
            inc(No);
            SetLength(Sides,No+2);
            Sides[No,0]:=j;
            Sides[No,1]:=Dbase.Tris.Tri[j].dh[i-3];
            p:=i-2; if i=6 then p:=1;
            Sides[No,2]:=Dbase.Tris.Tri[j].dh[p];
            Sides[No,3]:=i;
         end;
   fillchar(PrevTri,sizeof(PrevTri),0);
end;

function DtmZ(x,y : double) : double;
var drhk : integer;
begin
   result:=0;
   getindrie(x,y,drhk);
   if drhk>0 then InDrieHoek(drhk,x,y,result);
end;

procedure veeuit(drhk,trek : integer);
var    j,n    : integer;
       dh     : dhp;
begin
   if trek=1 then dbase.Tris.Tri[drhk].draw(0);

   dh:=dbase.Tris.Tri[drhk].dh;

   with Dbase.Tris do
   begin
      for j:=4 to 6 do
         if dh[j]>0 then             //let neighbor know that it is now an open side
            for n := 4 to 6 do
               if Tri[dh[j]].dh[n]=drhk then Dbase.Tris.Tri[dh[j]].dh[n]:=0;  //outside tri

      if drhk<No then
      begin
         for j := 1 to No do
            for n:=4 to 6 do
               if Tri[j].dh[n]=No then Tri[j].dh[n]:=Drhk;
         Tri[drhk].dh:=Tri[No].dh;
      end;
      dec(No);
   end;
end;



procedure LongLeg(leng:double);
label loop;
var j,drh,n,d1,d2 : integer;
    d3 : ptpoint3;
    dh : dhp;
    doen,no_del : boolean;
    p1,p2,p3,kod,ll2 : integer;
    afst1,afst2,afst3,langste,langste2,lang1 : double;
    Lesslongleg : boolean;
begin

   Lesslongleg:=false; //true; //waarde.readbool('Tri_parameters','LongLegs',false);

   if Dbase.Tris.No<=0 then exit;

   mouse.wait;

   langste2:=1e6;

   repeat

      ll2:=0;
      langste:=0;
      lang1:=0;

      drh:=Dbase.Tris.No;

      no_del:=true;

      display('Legs',drh,1);

      repeat
         dh:=dbase.Tris.Tri[drh].dh;
         //display('Legs',drh,5000);
         for n:=4 to 6 do
            if dh[n]<=0 then
            begin
               D3:=Ptin3(drh);
               case n of
               4 : begin  p1:=1; p2:=2; p3:=3; end;
               5 : begin  p1:=2; p2:=3; p3:=1; end;
               6 : begin  p1:=3; p2:=1; p3:=2; end;
               end;
               afst1:=sqrt(sqr(d3[p1].xyz.x-d3[p2].xyz.x)+sqr(d3[p1].xyz.y-d3[p2].xyz.y));
               afst2:=sqrt(sqr(d3[p1].xyz.x-d3[p3].xyz.x)+sqr(d3[p1].xyz.y-d3[p3].xyz.y));
               afst3:=sqrt(sqr(d3[p3].xyz.x-d3[p2].xyz.x)+sqr(d3[p3].xyz.y-d3[p2].xyz.y));

               langste:=langste+(afst1+afst2+afst3);
               inc(ll2);

               if afst1>lang1 then lang1:=afst1;   //langste buite been

               if leng=0 then doen:=(afst2+afst3<afst1*1.009) or (afst1>langste2*2);   //8  7
               if leng>0 then doen:=(afst1>leng);

               if doen then
               begin
                  veeuit(drh,1);
                  no_del:=false;
                  break;
               end;
            end;
         if Mouse.Pause_plot then
         begin
            mouse.go;
            exit;
         end;

         dec(drh);
      until (drh<=0);

      if (ll2>0) and not lessLongLeg then
      begin
         langste2:=langste/ll2;
      //   langste2:=(langste2*3+lang1)/4;   //neem lansget buite sy ook in ag.
      end;

   until no_del;

   mouse.go;

end;



procedure wipepoint(nom:integer);
label uit2;
var drhkw,n : integer;
    dh : dhp;
begin
   //hidecursor;
   drhkw:=dbase.Tris.No;
   if drhkw<=0 then exit;
   repeat
      dh:=Dbase.Tris.Tri[drhkw].dh;
      display('Triangle',drhkw,5000);
      n:=1;
      repeat
         if dh[n]=nom then
         begin
            veeuit(drhkw,1);
            n:=5;
         end;
         n:=n+1;
      until n>3;
      drhkw:=drhkw-1;
   until (drhkw<=0);
end;


procedure qsearch;
var  pt : DtmP;
  //  dh  : dhp;
xa,ya   : double;
telpunt,punt,mj : integer;


stacdh : array[1..maxstack] of integer;
stacno : integer;
Xdh    : dhp;


   function step3(var ptn,dhv : integer) : boolean;
   label  weer;
   var start,j,i,next,zx : integer;
      voor1,voor2  : integer;
      laf : double;
      mx,my,binne : integer;
      xx1,xx2,xx33,yy1,yy2,yy33 : double;
      hel12,c12,ym,yzx : double;
      pt  : DtmC;
      pt3 : ptpoint3;
   begin

      step3:=true;
      dhv:=1;

      if Dbase.Tris.No=1 then exit;

      start:=Dbase.Tris.No;
      dhv  :=start;

      step3:=false;

      if Mouse.pause_plot then exit;

      weer:

      Xdh:=Dbase.Tris.Tri[Start].dh;

      Pt3:=Ptin3(Start);
      for j:=1 to 3 do
      begin
        // i:=j mod 3 + 1;
         i:=j+1; if j=3 then i:=1;

         yy2:=pt3[j].xyz.y;
         xx2:=pt3[j].xyz.x;

         yy1:=pt3[i].xyz.y;
         xx1:=pt3[i].xyz.x;

         if (yy1-ya)*(xx2-xa)<(xx1-xa)*(yy2-ya) then
         begin
            start:=Xdh[j+3];

            goto weer;
         end;
      end;

      if (start<1) then
      begin
         ///beep;
         (*
         writeln('Uit model uit ');
         ch:=readkey;
         *)
         dhv:=0;
         exit;
      end;

      step3:=true;
      dhv:=start;

   end;

   procedure adddh(p1,p2,p3,s1,s2,s3 : integer);
   begin
      Xdh[1]:=p1;
      Xdh[2]:=p2;
      Xdh[3]:=p3;
      Xdh[4]:=s1;
      Xdh[5]:=s2;
      Xdh[6]:=s3;
      Dbase.Tris.Add(0,p1,p2,p3,s1,s2,s3);
   end;


   function swap3d(x_1,y_1,x_3,y_3,x_2,y_2:double):boolean;
   var
      x13,y13,x23,y23,x1p,y1p,x2p,y2p,
      cosa,cosb,sina,sinb : double;
      reg : boolean;
   begin
      reg:=false;
      x13:=x_1-x_3;
      y13:=y_1-y_3;
      x23:=x_2-x_3;
      y23:=y_2-y_3;
      x1p:=x_1-xa;
      y1p:=y_1-ya;
      x2p:=x_2-xa;
      y2p:=y_2-ya;

      cosa:=x13*x23+y13*y23;
      cosb:=x2p*x1p+y1p*y2p;
      sina:=x13*y23-x23*y13;
      sinb:=x2p*y1p-x1p*y2p;

      reg:=false;
      if (cosa*sinb)+(cosb*sina)<0 then reg:=true;
      if (cosa<0) or (sina<0) then
      begin
         reg:=not(reg);
         if sina>0 then reg:=not(reg);
      end;

      swap3d:=reg;

      /////result:=false; //??
   end;



   function edg(dhr:dhp; l:integer):integer;
   var j :integer;
   begin
      for j:=4 to 6 do
      begin
         edg:=j;
         if dhR[j]=l then exit;
      end;

      //sfout;
      //writeln('edg error '); readln;
   end;

   procedure push(dhS:integer);
   begin
      if stacno>=maxstack then exit;

      inc(stacno);
      stacdh[stacno]:=dhS;
   end;

   procedure writedh(jj:integer);
   begin
      (*
      with dh[jj] do
      writeln(jj,'--',dh[1]:4,dh[2]:4,dh[3]:4,dh[4]:4,dh[5]:4,dh[6]:4);
      *)
   end;

   procedure emptystack;
   var r,l : integer;
       a,b,c : integer;
       v1,v2,v3 : integer;
       erl,era,erb : integer;
       dhl,dhr,dha,dhc  : dhp;
       pt1,pt2,pt3  : DtmP;
   begin
      while stacno>0 do
      begin
        l:=stacdh[stacno];
        dec(stacno);

        dhl:=Dbase.Tris.Tri[l].dh;
        r:=dhl[5];
        dhr:=Dbase.Tris.Tri[r].dh;

        erl:=edg(dhr,l);     {4,5,6 ?}
        era:=erl mod 3 + 4;
        erb:=era mod 3 + 4;

        v1:=dhr[erl-3];    {punte van sy}
        v2:=dhr[era-3];
        v3:=dhr[erb-3];

        pt1:=Dbase.Dtms.Dtm[v1].p1;
        pt2:=Dbase.Dtms.Dtm[v2].p1;
        pt3:=Dbase.Dtms.Dtm[v3].p1;

        if  swap3d(pt1.xyz.x,pt1.xyz.y,pt3.xyz.x,pt3.xyz.y,pt2.xyz.x,pt2.xyz.y) then
        begin
           //pen:=0;

           xdh:=dhl;
           {showdh;}  {(l);}

           xdh:=dhr;
           {showdh;}  {(r);}

           a:=dhr[era];
           b:=dhr[erb];
           c:=dhl[6];

           dhl[3]:=v3;
           dhl[5]:=a;
           dhl[6]:=r;

           dhr[1]:=punt;
           dhr[2]:=v3;
           dhr[3]:=v1;
           dhr[4]:=l;
           dhr[5]:=b;
           dhr[6]:=c;
           dhr[0]:=0;

           Dbase.Tris.Tri[r].dh:=Dhr;
           Dbase.Tris.Tri[l].dh:=Dhl;

           ///pen:=yellow;

           Xdh:=dhl;
           {showdh;}

           Xdh:=dhr;
           {showdh;}

           if a<>0 then
           begin
              dha:=Dbase.Tris.Tri[a].dh;
              dha[edg(dha,r)]:=l;
              Dbase.Tris.Tri[a].dh:=dha;

              push(l);
           end;


           if b<>0 then push(r);


           if c<>0 then
           begin
              dhc:=Dbase.Tris.Tri[c].dh;
              dhc[edg(dhc,l)]:=r;
              Dbase.Tris.Tri[c].dh:=dhc;
           end;

        end;

      end;
   end;


   procedure split3;

      function doensoek(punt:integer):boolean;
      label skip;
      var j,n,i,zz,d3,b3 : integer;
          a,b,c,v1,v2,v3 : integer;
          dn1,dn2 : integer;
          dd1,dd2 : integer;
          dh3 : dhp;
          dhzz : dhp;
          dhc,dhb : dhp;
          pt : dtmC;
          boty,stepy : double;
      begin
         pt:=Dbase.Dtms.Dtm[punt];

         result:=false;

         if Mouse.pause_plot then exit;

         {if (pt.yy<boty) or (pt.yy>=boty+stepy) then goto skip;}

         if  (punt>0) and (punt<=Dbase.Dtms.No-3) then
         begin
            xa:=pt.p1.xyz.x;
            ya:=pt.p1.xyz.y;

           /// pen:=white;
          ///  movem(xa,ya,pen);
          ///  drawm(xa+1,ya,pen);


            if not(step3(punt,zz)) then exit;

            if zz>0 then
            begin

               stacno:=0;

               dhzz:=Dbase.Tris.Tri[zz].dh;

               a:=dhzz[4];
               b:=dhzz[5];
               c:=dhzz[6];

               v1:=dhzz[1];
               v2:=dhzz[2];
               v3:=dhzz[3];

               dhzz[1]:=punt;      {verander zz na binne 3hoek}
               dhzz[2]:=v1;
               dhzz[3]:=v2;
               dhzz[4]:=Dbase.Tris.No+2;
               dhzz[5]:=a;     {grens aan 2 nuwe 3hke}
               dhzz[6]:=Dbase.Tris.no+1;
               dhzz[0]:=0;

               Dbase.Tris.Tri[zz].dh:=dhzz;

               Xdh[1]:=punt;
               Xdh[2]:=v2;
               Xdh[3]:=v3;
               Xdh[4]:=zz;
               Xdh[5]:=b;
               Xdh[6]:=Dbase.Tris.no+1+1;
               Xdh[0]:=0;
               {showdh;}
               Dbase.Tris.Add(0,Punt,v2,v3,zz,b,Dbase.Tris.No+1+1);

                  Xdh[1]:=punt;
                  Xdh[2]:=v3;
                  Xdh[3]:=v1;
                  Xdh[4]:=Dbase.Tris.no; //-1-1;
                  Xdh[5]:=c;
                  Xdh[6]:=zz;
                  Xdh[0]:=0;
                  {showdh;}
               Dbase.Tris.Add(0,Punt,v3,v1,Dbase.Tris.No,c,zz);

               if a<>0 then push(zz);

               if b<>0 then
               begin
                  dhb:=Dbase.Tris.Tri[B].dh;
                  dhb[edg(dhb,zz)]:=Dbase.Tris.No-1;
                  Dbase.Tris.Tri[B].dh:=dhb;
                  push(Dbase.Tris.No-1);
               end;

               if c<>0 then
               begin
                  dhc:=Dbase.Tris.Tri[c].dh;
                  dhc[edg(dhc,zz)]:=Dbase.Tris.No;
                  Dbase.Tris.Tri[c].dh:=Dhc;
                  push(Dbase.Tris.No);
               end;

               emptystack;

            end;
         end;
         result:=true;
         skip:
      end;

   var pt1,pt2,j,i : integer;
       pt : DtmC;


   begin
      Mouse.skoon;
      Mouse.skoon25('Hit any key to abort');


      for j:=1 to Dbase.Dtms.No do
      begin
         telpunt:=j;


          ///  punt:=watter[j];   //werk volgens watter maar SortX(true) sit hul in volgenorde
          ///
          ///  as punt = watter is, werk reg vir alles maar maak nog lang 3hke
          ///
            punt:=j;    //nie volgens watter nie, op 'n grid maak dit lang 3hke

        ///    punt:=watter[j];


            /// as punt=j is, maak hy nie lang 3hke nie maar met geleentheid maak iets anders nie reg nie 11/2010
            ///   hom nou 11/2010 so gemaak. sal kyk wanneer hy dalk nie reg is nie.
            if not doensoek(punt) then exit;
   {      end;}
      end;
   end;


begin

   stacno:=0;

   with pt do
   begin
      with wind.Data do
      begin
         Dbase.Dtms.Add('01','01',minx-1e7-56.3455,maxy+1e7+102.12340,0);
         Dbase.Dtms.Add('01','01',minx-1e7-253.12345,miny-1e7-104.12435,0);
         Dbase.Dtms.Add('01','01',maxx+1e7+255.3236,(miny+maxy)/2+0.24,0);
      end;
   end;

 ///  mouse.ktime(100);
   mouse.wait;

   Dbase.Tris.No:=0;

   with Dbase.Dtms do
      adddh(No-2,No-1,No,0,0,0);

   split3;

   ///line3(false);    {???}

   Mouse.skoon;
   Mouse.skoon24('Deleting triangles from base points');


   Dbase.Dtms.No:=Dbase.Dtms.No-3;

   for mj:=Dbase.Dtms.No+1 to Dbase.Dtms.No+3 do
      wipepoint(mj);

   mouse.go;
   LongLeg(0);
   {----------}
end;

////////////Contours=--------------------------------
              //general and major intervals
procedure qcon(GenCon,MajCon : Double; p3:ptpoint3; qpen : integer; var uit : integer; kkk,lpix,lpiy:double; var warn:boolean; V3D,Gen_Maj : integer);
label skip;
var     zz            : arr3real;
        hoogte        : array[1..3] of integer;
        n,j,zx        : integer;
        oupen,maxcon,pen      : integer;
        xp,yp,xx1,yy1         : double;
        kont,topk,toets1,temp     : extended;
        dz            : array[1..3] of double;
        cx,cy,dx,dy   : array[1..3] of double;
        do_GM : boolean;

   procedure trekaf(na,van:integer; var dx,dy:double; var dz:double);
   begin
      dz:=zz[hoogte[na]]-zz[hoogte[van]]+0.0001;
      dx:=cx[hoogte[na]]-cx[hoogte[van]];
      dy:=cy[hoogte[na]]-cy[hoogte[van]];
   end;

   procedure telop(v,j:integer; kont:double; var xp,yp:double);
   var dd : double;
   begin
      dd:=(kont-zz[hoogte[v]])/dz[j];
      xp:=cx[hoogte[v]]+(dd*dx[j]);
      yp:=cy[hoogte[v]]+(dd*dy[j]);
   end;

begin
   uit:=0;

   zx:=1;
   j:=1;

   if (lpix=0) and (lpiy=0) then       //copy to bmp - do all the 3hke
   begin
      zx:=0;
      repeat
         if wind.Screen.InScreen(p3[j].xyz) then zx:=1;
         j:=j+1;
      until (j=4) or (zx=1);
   end;

   for j:=1 to 3 do
   begin
      with p3[j] do
      begin
         cx[j]:=xyz.x;
         cy[j]:=xyz.y;
      end;
      zz[j]:=p3[j].xyz.z;
      hoogte[j]:=j;
   end;

   for j:=1 to 3 do
      for n:=j to 3 do
         if zz[hoogte[j]]>zz[hoogte[n]] then
         begin
            zx:=hoogte[j]; hoogte[j]:=hoogte[n]; hoogte[n]:=zx;
         end;

   trekaf(2,1,dx[1],dy[1],dz[1]);
   trekaf(3,1,dx[3],dy[3],dz[3]);
   trekaf(3,2,dx[2],dy[2],dz[2]);

   temp:=zz[hoogte[1]];
   if kkk=0 then
   begin

      kont:=trunc(temp/GenCon);
      kont:=kont*GenCon;
      while kont<temp do kont:=kont+GenCon;
   end
   else
   begin
      kont:=kkk;
      if kont<temp then exit;
   end;

   oupen:=50;

   topk:=zz[hoogte[3]];

   maxcon:=0;

   while (kont<=topk) and (maxcon<2000) do
   begin
      maxcon:=maxcon+1;

      if maxcon>1999 then
      begin
          if not warn then
          Mouse.Warning('ERROR. More than '+inttostr(maxcon)+' contour intervals required.',
                        ' Please inspect the model or increase the interval','',1);
          warn:=true;
          maxcon:=5000;
      end;

      pen:=General.GenConPen;  {lightred;}

      if deelbaar(kont,MajCon) then
      begin
         pen:=General.MajConPen;
         SetmLineStyle(1,clgreen,0.2);
      end
      else
         SetmLineStyle(2,clred,0.15);

//      if qpen=-1 then pen:=rubber;

      telop(1,3,kont,xp,yp);

//      if pen<>oupen then
//         setpen(pen);
//      oupen:=pen;

{      moveto(kanvas.handle,xp,yp);}
      if V3D=0 then
         movetoX(xp+lpix,yp+lpiy);

      xx1:=xp+lpix;
      yy1:=yp+lpiy;

      if kont<zz[hoogte[2]] then
         telop(1,1,kont,xp,yp)
      else
         telop(2,2,kont,xp,yp);

{      case V3D of
      //abrie 3d
      1 : V3D_AddLine(9,-yy1,-xx1,kont+0.05,-(yp+lpiy),-(xp+lpix),kont+0.05,kanvas.pen.color);
      2 : begin
             if Gen_Maj=1 then
                do_GM:=not deelbaar(kont,MajKon);
             if Gen_Maj=2 then
                do_GM:=deelbaar(kont,MajKon);

             if do_GM then
             begin
                if GeV3=1 then frmGe.StartNewSet(4,'',kont,true);
                if GeV3=2 then frmGe.StartNewSet(5,'',kont,true);
                frmGE.GoogleDoenLyn(xx1,yy1,kont,(xp+lpix),(yp+lpiy),kont);
                frmGE.EndSet(true);
             end;
          end;
      else}
         LinetoX(xp+lpix,yp+lpiy);
      //end;

      kont:=GenCon+kont;

      if kkk<>0 then goto skip;

      if (V3D=0) and Mouse.Pause_plot then
      begin
         uit:=1;
         goto skip;
      end;
   end;
   skip:
   SetmLineStyle(-1,0,1);
end;



procedure quickcon(wat:integer;  V3D : integer); //0=gewoon   1=abrie3d   2=GMaps
label skip;
var
   aantal,j,zx,drhk,weer,V3 : integer;
   uit  : integer;
   dh : dhp;
   pt3 : ptpoint3;
   warn : boolean;
begin
   aantal:=Dbase.Tris.No;

   if aantal=0 then exit;

   if General.GenCon=0 then General.GenCon:=1;
   if V3D=0 then mouse.wait;
   checkpunte;
   warn:=false;

   weer:=1;
   if V3D=2 then weer:=2;

   for v3:=1 to weer do
   begin
      {geV3:=V3;
      if V3D=2 then
      begin
         //if V3=1 then frmGe.StartNewSet(4,'',-999);
         //if V3=2 then frmGe.StartNewSet(5,'',-999);
      end;}

      for drhk:=1 to aantal do
      begin
         display('Quick',drhk,5000);

      {   if (V3D=2) and (drhk mod 100=0) then
         begin
            application.processmessages;

            frmGE.info.Caption:='Contour (triangle) '+inttostr(drhk);
            if frmge.stop then
            begin
             //  frmGe.EndSet;
               goto Skip;
            end;
         end; }

         dh:=Dbase.Tris.Tri[drhk].dh;

         for j:=1 to 3 do
         if dh[j]>Dbase.Dtms.No then
            dh[j]:=1;

         zx:=0;
         for j:=1 to 3 do zx:=zx+skyn.Get(dh[j]);

         uit:=0;
         if (zx>0) or getbuite3(drhk) then
         begin
            pt3:=ptin3(drhk);

            if V3D=1 then
            begin
               for j:=1 to 3 do pt3[j].xyz.z:=pt3[j].xyz.z+0.00123445;  //5/2011 sodat zero kontoere nie oor platform wys nie.
            end;

            qcon(1,5,pt3,wat,uit,0,0,0,warn,V3D,V3);
         end;
         if uit=1 then goto skip;
      end;

      if V3D=2 then
      begin
        // frmGe.EndSet;
      end;
   end;

   skip:
   if V3D=0 then mouse.go;
end;



End.
