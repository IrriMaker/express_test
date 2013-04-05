unit DataUnt;

interface

uses Vcl.Graphics,system.types,system.sysUtils,
LineUnt, AreaUnt,BlockUnt, CircleUnt, ImageUnt, DtmUnt, PointUnt, NodeUnt;

type
   str10 = string[10];

  LineObj = object
     No,current : integer;
     line : array[0..100] of LineC;
     active : boolean;
     procedure AddPoint(number : integer; x,y : double);  //Start a new 2pt line //-1=new line  -2=last line
     procedure AddInterNode(var BaseNo,BasePoint : integer; x,y : double);        // a new node on existing line
     procedure AddLine(x1,y1,x2,y2 : double);
     procedure AddLastNode(BaseNo : integer; x,y : double);       //setlengh for new node  used when adding polyline
     procedure DeleteLastNode(BaseNo:integer);
     function LastLine : LineC;
     procedure Delete(number : integer);
  end;

  AreaObj = Object
     No   : integer;
     Area : array[0..100] of AreaC;
     procedure AddArea(x1,y1 : double);
     function LastArea : AreaC;
     procedure Delete(number : integer);
  end;

  BlockObj = Object            //irrigation blocks
     No     : integer;
     Blok   : integer;          //active irri block
     Block  : array[0..100] of BlockC;

     display_nodes : array[0..5] of boolean;
     display_pipes : array[0..2] of boolean;

     procedure AddArea(x1,y1 : double);
     function LastArea : AreaC;
     procedure Delete(number : integer);
     function CountAllNodeType(_type : NodeType) : integer; // Count number of _type nodes in all blocks
  End;

  CircleObj = object
     No,current : integer;
     Circle : array[0..100] of CircC;
     active : boolean;
     procedure Add(x1,y1,z1,r1 : double);
     procedure Add3;     //add according to Mouse Base coordinates
     procedure Radius(J : integer; xp,yp : double);
     function LastCircle : CircC;
     procedure Delete(number : integer);
  end;

  ImageObj = object
     No,current : integer;
     Image : array[1..100] of ImageC;
  end;

  DtmObj = object
     Dtm : array of DtmC;
     No : integer;
     procedure Add(code,tag : str10; x1,y1,z1 : double);
     procedure Delete(number : integer);
  end;

  TriObj = object
     Tri : array of TriC;
     No : integer;
     procedure Add(p0,p1,p2,p3,p4,p5,p6 : integer);
     procedure Delete(number : integer);
  end;

  DbaseObj = object
     Lines : LineObj;
     Circles : CircleObj;
     Images : ImageObj;
     Areas  : AreaObj;
     Blocks : BlockObj;       //irrgation blocks
     Dtms   : DtmObj;
     Tris   : TriObj;
     TxtFile : Text;
     cad_active : boolean;

     procedure draw;
     procedure Select(Select_,Area:boolean);       //false=deselect   //area=select inside area
     Function CloseShape(x,y : double; var PType,PId,PPoint : integer; ExcludeType,ExcludeId : integer) : boolean;
     Function ClosePoint(x,y : double; var snapx,snapy : double; var ParentType_,ParentId_,ParentPoint_ : integer) : boolean;
     procedure dxdy(dx,dy : double; Ptype:integer=0; Pid:integer=0);
     procedure pxpy(dx,dy : double; ParentType,ParentId,ParentPoint : integer);
     procedure DeleteSelected(All : boolean);    //all=true = everything not just selected
     procedure LoadTot(Filename : string);
     procedure Save(Filename : string);
     procedure Load(Tip : integer; Filename : string);
     Function Is_Selected : boolean;
     Procedure Rotate(x,y,Angle : double; Home : boolean; DoDraw : boolean=false);

     procedure update_state;
     function  count_on_layer(layer_name : string) : integer; //number of elements on layer
     procedure delete_on_layer(layer_name : string);
     procedure edit_on_layer(layer_name, new_layer_name : string);    //edit layer name

  end;

  procedure getcenter(x1,y1,x2,y2,sxp,syp : double; var x3,y3,radi,r1,r2:double);

var
   Dbase : DbaseObj;
   line : LineC;
   circle : CircC;

implementation

uses GloUnt,PlotUnt,MouseUnt,Main,UndoUnt,form2unt, obj_insp_unt,triunt;

procedure getcenter(x1,y1,x2,y2,sxp,syp : double; var x3,y3,radi,r1,r2:double);   //calculate center of circle for 3 points
var  xm,ym,rm : array[1..3] of double;
     xi1,yi1,xi2,yi2,afst1 : double;
     pii,r3,afst    : double;
     draai : integer;
     links : boolean;
begin
   radi:=10000;
   x3:=sxp;
   y3:=syp;
   r1:=1;
   r2:=2;

   vrb(x1,y1,x2,y2,afst1,rm[1]);
   pol(x1,y1,afst1/2,rm[1],xm[1],ym[1]);

   vrb(x2,y2,sxp,syp,afst,rm[2]);
   pol(x2,y2,afst/2,rm[2],xm[2],ym[2]);

   vrb(sxp,syp,x1,y1,afst,rm[3]);
   pol(sxp,syp,afst/2,rm[3],xm[3],ym[3]);

   intersek(xm[1],ym[1],xm[3],ym[3],rm[1]+90,rm[3]+90,xi2,yi2);

   x3:=xi2;
   y3:=yi2;

   vrb(x3,y3,x1,y1,radi,r1);
   vrb(x3,y3,x2,y2,afst,r2);
   vrb(x3,y3,sxp,syp,afst,r3);

   kleinste(r1,r2);   {swap sodat r1 kleinste is}
   if (r3<r1) then    {kyk of r3 aan regte kant is}
   begin
      r2:=r2-360;
      kleinste(r1,r2);
   end;

   if (r3>r2) then    {kyk of r3 aan regte kant is}
   begin
      r1:=r1+360;
      kleinste(r1,r2);
   end;
end;

procedure LineObj.AddPoint(number : integer; x,y : double);
begin
   if number=-2  then number:=Dbase.Lines.No;    //polylines?
   if number=-1 then
   begin
      inc(Dbase.Lines.No);
      number:=Dbase.Lines.No;
   end;

   Dbase.lines.line[number]:=lineC.Create(x,y,0,x,y,0,clred,1);
end;

procedure LineObj.AddLastNode(BaseNo : integer; x,y : double);
begin
   with Line[BaseNo] do
   begin
      inc(no_p);
      setlength(Lp,No_p+1);
      Lp[No_p].x:=x;
      Lp[No_p].y:=y;
   end;
end;

procedure LineObj.DeleteLastNode(BaseNo : integer);
begin
   with Line[BaseNo] do
   begin
      draw(-1);
      dec(no_p);
      draw(0);
   end;
end;

procedure LineObj.AddInterNode(var BaseNo,BasePoint : integer; x,y : double);
var  naaste,afst : double;            //base point will be changed to new node so move can happen
     p : integer;

     procedure MoveNodes(N : integer);
     var j : integer;
     begin
        with Line[BaseNo] do
        for j:=No_p+1 downto N+1 do
           Lp[j]:=Lp[j-1];
     end;
    // Basepoint  //variable holding node number after GetcloseShape
                  //this is used by lines, areas and blocks when div2 or adding new nodes to start or end.
                  //if positive then node. negative means mid node of segment number,number+1
begin
   with Line[BaseNo] do
   begin
      Draw(-1);
      Setlength(Lp,No_p+2);
      if BasePoint=1 then
      begin
         Mouse.Move(lp[1].x,lp[1].y);

         MoveNodes(1);
         Lp[1].x:=x;
         Lp[1].y:=y;
      end
      else
         if BasePoint=No_p then
         begin
            Lp[No_p+1].x:=x;
            Lp[No_p+1].y:=y;
            Mouse.Move(lp[No_p].x,lp[No_p].y);
            BasePoint:=No_p+1;     //updated so click>0 can move it around in actions
         end
         else
         begin
            BasePoint:=abs(BasePoint);
            MoveNodes(BasePoint);
            Lp[abs(Basepoint)+1].x:=x;
            Lp[abs(Basepoint)+1].y:=y;
            Inc(BasePoint);
         end;
      inc(No_p);
      Draw(0);
   end;
end;

procedure LineObj.AddLine(x1,y1,x2,y2 : double);
begin
   AddPoint(-1,x1,y1);
   Lastline.Lp[2].x:=x2;
   Lastline.Lp[2].y:=y2;
end;

function LineObj.LastLine : LineC;
begin
   result:=line[No];
end;

procedure LineObj.Delete(number:integer);
var j : integer;
begin
   if number=-1 then number:=No;
   line[number].draw(-1);
   for j:=number to No-1 do
      Line[j]:=line[j+1];
   dec(no);
end;

//-------------Area and blocks------------
procedure AreaObj.AddArea(x1,y1 : double);
begin
   inc(No); //Dbase.Areas.No);
   area[No]:=AreaC.Create(x1,y1,0,x1,y1,0,clred,1);
end;

function AreaObj.LastArea : AreaC;
begin
   result:=Area[No];
end;

procedure AreaObj.Delete(number:integer);
var j : integer;
begin
   if number=-1 then number:=No;
   Area[number].draw(-1); Setlength(Area[number].Ap,0);
   for j:=number to No-1 do
      Area[j]:=Area[j+1];
   dec(no);
end;

procedure BlockObj.AddArea(x1,y1 : double);
begin
   inc(No);
   Block[No]:=BlockC.Create(x1,y1,0,x1,y1,0,clyellow,1);
  // Mainform.ablock.Value:=No;
//   Dbase.Blocks.Blok:=No;    //set last to active blok number
end;

function BlockObj.CountAllNodeType(_type : NodeType) : integer;
var count, j : integer;
begin

   count := 0;

   for j:=0 to No do
   begin
      count := Block[j].CountNodeType(_type) + count;
   end;

   result := count;

end;

function BlockObj.LastArea : AreaC;
begin
   result:=Block[No];
end;

procedure BlockObj.Delete(number:integer);
var j : integer;
begin
   if number=-1 then number:=No;
   Block[number].draw(-1); Setlength(Block[number].Ap,0);
   for j:=number to No-1 do
      Block[j]:=Block[j+1];
   dec(no);
end;

//---------------DTM-----------------------

procedure DtmObj.Add(code,tag : str10; x1,y1,z1 : double);
begin
   inc(no);
   if high(dtm)<No+1 then SetLength(dtm,No+100);
   dtm[no]:=Dtmc.create(code,tag,x1,y1,z1);
end;

procedure DtmObj.Delete(number:integer);
var j : integer;
begin
   if number=-1 then number:=No;
   Dtm[number].draw(-1);
   for j:=number to No-1 do
      Dtm[j]:=Dtm[j+1];
   dec(no);
end;

//----------TRIANGLEs--------------------------------------------
procedure TriObj.Add(p0,p1,p2,p3,p4,p5,p6 : integer);
begin
   inc(no);
   if high(tri)<No+1 then SetLength(tri,No+100);
   tri[no]:=Tric.create(p0,p1,p2,p3,p4,p5,p6);
   tri[no].width:=no;   //to be used when drawing
end;

procedure TriObj.Delete(number:integer);
var j : integer;
begin
   if number=-1 then number:=No;
   Tri[number].draw(-1);
   for j:=number to No-1 do
      Tri[j].dh:=Tri[j+1].dh;
   dec(no);
end;


//--------CIRCLE---------------
procedure CircleObj.Radius(J : integer; xp,yp : double);
begin
   with Dbase.Circles do
   begin
      If j=-2 then j:=No;
      Circle[j].draw(-1);
      Circle[j].radius:=potago(xp,yp,Circle[j].p1.x,Circle[j].p1.y);
      Circle[j].draw(0);
   end;
end;

function CircleObj.LastCircle : CircC;
begin
   result:=Circle[No];
end;

procedure CircleObj.Add(x1,y1,z1,r1: Double);
begin
   with Dbase.Circles do
   begin
      Inc(No);
      Circle[no]:=CircC.Create(x1,y1,z1,r1,clred,1);
   end;
end;

procedure CircleObj.Delete(number:integer);
var j : integer;
begin
   if number=-1 then number:=No;
   circle[number].draw(-1);
   for j:=number to No-1 do
      Circle[j]:=Circle[j+1];
   dec(no);
end;

procedure CircleObj.Add3;
var cenx,ceny,straal,r1,r2 : double;
begin
   with Dbase.Circles do
   begin
      Inc(No);
      with Mouse do
         getcenter(base[1].x,base[1].y,base[2].x,base[2].y,base[3].x,base[3].y,cenx,ceny,straal,r1,r2);
      Circle[no]:=CircC.Create(cenx,ceny,0,straal,clred,1);
      Circle[no].draw(0);
   end;
end;

//----------CLOSE functions---------------------------
Function DbaseObj.ClosePoint(x,y : double; var snapx,snapy : double; var ParentType_,ParentId_,ParentPoint_ : integer) : boolean;
var a,dx,dy,afst,rigt : double;                  //get closest snap base point of shapes
      j,i        : integer;
      pr         : pointc;
      SnapMode   : integer;

   function closep(p0 : pointC; Ptype,Pid,Ppoint : integer) : boolean;
   var af : double;
   begin
      af:=potago(x,y,p0.x,p0.y);
      result:=false;
      if af<a then
      begin
         a:=af;
         result:=true;
         snapx:=p0.x; snapy:=p0.y;
         ParentType_:=Ptype; Parentid_:=Pid; ParentPoint_:=Ppoint;
      end;
   end;

begin
   a:=1e6;
   result:=true;
   ParentType_:=0; ParentId_:=0;  ParentPoint_:=0;
   snapx:=x;
   snapy:=y;
   SnapMode:=Mouse.GetSnapMode;   //check which snap type can be performed

   if Snapmode in [1,2,3,4] then
   for j:=1 to Dbase.Lines.No do
      if (Mouse.ParentType<>100) or (Mouse.ParentId<>j) then      // do not jump to current element
      with Dbase.lines.line[j] do
      if (Mouse.ParentType<>-1) or (not selected) then
      for I:=1 to No_p do
      begin
         if (snapmode=1) or ((snapmode in [2,4]) and ((i=1) or (i=No_p))) then
            closep(Lp[i],100,j,I);
         if (snapmode in [1,3,4]) and (I<No_p) then
         begin
            pr.x:=(Lp[i].x+Lp[i+1].x)/2; pr.y:=(Lp[i].y+Lp[i+1].y)/2;
            closep(Pr,100,j,-I);                                     //negative means middle of segment
         end;
      end;

   if snapmode in [1] then
   for j:=1 to Dbase.Circles.No do
      if (Mouse.ParentType<>200) or (Mouse.ParentId<>j) then
      with Dbase.Circles.circle[j] do
      if (Mouse.ParentType<>-1) or (not selected) then

      begin
         closep(p1,200,j,1);
         vrb(p1.x,p1.y,x,y,afst,rigt);
         pol(p1.x,p1.y,radius,rigt,pr.x,pr.y);
         closep(pr,200,j,2);
      end;

   if snapmode in [1] then
   for j:=1 to Dbase.Areas.No do
      if (Mouse.ParentType<>800) or (Mouse.ParentId<>j) then
      with Dbase.Areas.Area[j] do
      if (Mouse.ParentType<>-1) or (not selected) then
      for I:=1 to No_p do
      begin
         closep(Ap[i],800,j,I);
         if I<No_p then
         begin
            pr.x:=(Ap[i].x+Ap[i+1].x)/2; pr.y:=(Ap[i].y+Ap[i+1].y)/2;
            closep(Pr,800,j,I);
         end;
      end;

   if snapmode in [1] then
   for j:=1 to Dbase.Dtms.No do
      if (Mouse.ParentType<>900) or (Mouse.ParentId<>j) then
      with Dbase.Dtms.dtm[j] do
      if (Mouse.ParentType<>-1) or (not selected) then
      begin
         closep(p1.xyz,900,j,1);
      end;

   if snapmode in [1] then
   for j:=1 to Dbase.Blocks.No do
      if (Mouse.ParentType<>1000) or (Mouse.ParentId<>j) then
      with Dbase.Blocks.Block[j] do
      if (Mouse.ParentType<>-1) or (not selected) then
      for I:=1 to No_p do
      begin
         closep(Ap[i],1000,j,I);
         if I<No_p then
         begin
            pr.x:=(Ap[i].x+Ap[i+1].x)/2; pr.y:=(Ap[i].y+Ap[i+1].y)/2;
            closep(Pr,1000,j,I);
         end;
      end;

   if snapmode in [1] then
   for j:=1 to Dbase.Images.No do
      if (Mouse.ParentType<>700) or (Mouse.ParentId<>j) then
      with Dbase.Images.Image[j] do
      if (Mouse.ParentType<>-1) or (not selected) then
         closep(p0,3,j,1);
end;

Function DbaseObj.CloseShape(x,y : double; var PType,PId,PPoint : integer; ExcludeType,ExcludeId : integer) : boolean;
var   a,dx,dy,b  : double;                                    //get closest shape
      Dist,Dir,Dist2,Dir2  : double;
      j,i       : integer;
      pB        : PointC;

   function CheckDistance(tipe_,nommer_,point_ : integer) : boolean;
   var af : double;
   begin
      if (tipe_=ExcludeType) and (nommer_=ExcludeId) then exit;  //do not jump to exluded (current) element
      af:=potago(x,y,dx,dy);
      result:=false;
      if af<a then
      begin
         result:=true;
         a:=af;
         Pid    :=nommer_;
         PType  :=tipe_;
         PPoint :=Point_;
         Mouse.ParentCoord.x:=dx;      // use this when moving single elements for anchors
         Mouse.ParentCoord.y:=dy;
      end;
   end;

   function closeB(p0 : pointC; NodeNumber:integer) : boolean;
   var af : double;
   begin
      af:=potago(x,y,p0.x,p0.y);
      result:=false;
      if af<b then
      begin
         b:=af;
         result:=true;
         Mouse.ParentCoord.x:=p0.x;      // use this when moving single elements for anchors
         Mouse.ParentCoord.y:=p0.y;
         //SegmentNodeNumber:=NodeNumber;   //holding close node position for lines,area,blocks
         Ppoint:=NodeNumber;
      end;
   end;

   function Online(x1,y1,x2,y2 : double) : boolean;
   begin
      result:=false;
      vrb(x1,y1,x2,y2,Dist,Dir);
      intersek(x1,y1,x,y,Dir,Dir+90,dX,dY);   //dx dy will be used to get CheckDistance
      Vrb(x1,y1,dx,dy,dist2,dir2);
      result:=(dist2<=Dist) and KykRigt(Dir,Dir2,1);
   end;


begin
   Pid  :=0;
   PType:=0;
   a:=1e6;
   //SegmentNodeNumber:=0;

   for j:=1 to Lines.No do
      with lines.line[j] do
      for i:=1 to No_p-1 do
         if OnLine(Lp[i].x,Lp[i].y,Lp[i+1].x,Lp[i+1].y) then    //dx dy are the snap coords on line
            if CheckDistance(100,j,0) then      // check for endpoint1,2 of middle
            begin
               Mouse.ShapeCc:=Lines.line[j];  ////
               b:=1e6;
               closeB(Lp[i],i);
               if i<No_p-1 then
                  closeB(Lp[i+1],i) else   //on segment i to i+1
                  closeB(Lp[i+1],i+1);     //close to last point
               pB.x:=(Lp[i].x+Lp[i+1].x)/2; pB.y:=(Lp[i].y+Lp[i+1].y)/2;
               closeB(pB,-i);              //close to middle of segment
            end;
   for j:=1 to Circles.No do
      with Circles.circle[j] do
      begin
         dx:=p1.x;
         dy:=p1.y;
         if CheckDistance(200,j,1) then Mouse.ShapeCc:=Circles.circle[j];
         vrb(p1.x,p1.y,x,y,Dist,Dir);
         pol(p1.x,p1.y,radius,Dir,dx,dy);
         if CheckDistance(200,j,2) then Mouse.ShapeCc:=Circles.circle[j];  ////
      end;

   for j:=1 to Areas.No do
      with Areas.area[j] do
      for i:=1 to No_p-1 do
         if OnLine(Ap[i].x,Ap[i].y,Ap[i+1].x,Ap[i+1].y) then
            if CheckDistance(800,j,i) then      // check for endpoint1,2 of middle
            begin
               Mouse.ShapeCc:=Areas.Area[j];
               b:=1e6;
               closeB(Ap[i],i);
               closeB(Ap[i+1],i+1);
               pB.x:=(Ap[i].x+Ap[i+1].x)/2; pB.y:=(Ap[i].y+Ap[i+1].y)/2;
               closeB(pB,-i);
            end;

//------ Irrigation-------------
   with Blocks do
   begin
      for j:=1 to No do
         with Block[j] do
         for i:=1 to No_p-1 do
            if OnLine(Ap[i].x,Ap[i].y,Ap[i+1].x,Ap[i+1].y) then
               if CheckDistance(1000,j,i) then      // check for endpoint1,2 of middle
               begin
                  Mouse.ShapeCc:=Block[j];
                  b:=1e6;
                  closeB(Ap[i],i);
                  closeB(Ap[i+1],i+1);
                  pB.x:=(Ap[i].x+Ap[i+1].x)/2; pB.y:=(Ap[i].y+Ap[i+1].y)/2;
                  closeB(pB,-i);
               end;

      for j:=0 to No do
         for i:=1 to Block[j].nonode do
         begin
            dx:=Block[j].node[i].p1.x;
            dy:=Block[j].node[i].p1.y;
            if CheckDistance(1010,j,1) then Mouse.ShapeCc:=Block[j].node[i];
         end;
   end;
//--------------------------------


      for j:=1 to Dtms.No do
      with Dtms.dtm[j] do
      begin
         dx:=p1.xyz.x;
         dy:=p1.xyz.y;
         CheckDistance(900,j,1);
      end;
   for j:=1 to Images.No do
      with Images.Image[j] do
      begin
         dx:=p0.x;
         dy:=p0.y;
         CheckDistance(700,j,1);
      end;

   result:=(Ptype>0) and (a<50);
end;

//------------Point and Shape move---------------------------
Procedure DbaseObj.Rotate(x,y,Angle : double; Home:boolean; DoDraw : boolean=false);
Label Skip;
var j : integer;

   Procedure GetHomeAngle;
   var I : integer;
       Dist0 : double;
   begin
      dist0:=1e8;
      Angle:=0;
      for i:=1 to Lines.No do if Lines.line[i].selected then begin Angle:=Lines.Line[i].Home(x,y,Dist0); end;
   end;

begin
   if Home then GetHomeAngle;
  // with Mouse do
 //  begin
      for J:=1 to Lines.No do Lines.line[j].Rotate(x,y,Angle,DoDraw);
 //  end;
end;

procedure DbaseObj.dxdy(dx,dy : double; Ptype:integer=0; Pid:integer=0);  //move selected or ptype,pid (if defined) shapes
var j,i,s,p,n : integer;
    bmp : tbitmap;
begin
   //draw unselected to backbmp;
 {  Bmp:=tbitmap.Create;
   bmp.Width:=Mainform.pbox.width;
   bmp.Height:=Mainform.pbox.height;

   kanvas:=bmp.Canvas;       }

   for j:=1 to Images.No do
   with Images.Image[j] do
   if selected or ((ptype=700) and (Pid=j)) then
   begin
      draw(-1);
      p1.Change(dx,dy,1);
      p2.Change(dx,dy,1);
      draw(-1);
   end;

   for j:=1 to Lines.No do
   with Lines.line[j] do
   if selected or ((ptype=100) and (Pid=j)) then
   begin
      draw(-1);
      for i:=1 to No_p do
         Lp[i].Change(dx,dy,1);
      draw(-1);
   end;

   for j:=1 to areas.No do
   with Areas.Area[j] do
   if selected or ((ptype=800) and (Pid=j)) then
   begin
      draw(-1);
      for i:=1 to No_p do
         Ap[i].Change(dx,dy,1);
      draw(-1);
   end;


   for j:=1 to Blocks.No do
   with Blocks.Block[j] do
   if selected or ((ptype=1000) and (Pid=j)) then
   begin
      draw(-1);
      for i:=1 to No_p do
         Ap[i].Change(dx,dy,1);
      draw(-1);
   end;

   for j:=1 to Circles.No do
   with Circles.circle[j] do
   if selected or ((ptype=200) and (Pid=j)) then
   begin
      draw(-1);
      p1.Change(dx,dy,1);
      draw(-1);
   end;

   //------DTM----------------
   s:=0;
   for j:=1 to Dtms.No do
   with Dtms.Dtm[j] do
   if selected or ((ptype=900) and (Pid=j)) then
   for i:=1 to Tris.No do
      for p:=1 to 3 do
         if Tris.Tri[i].dh[p]=j then
         begin
            inc(s); Skyn.Put(s,I);
         end;
   for j:=1 to s do
      Tris.Tri[skyn.Get(j)].draw(-1);    //hide triangles that will move

   for j:=1 to Dtms.No do
   with Dtms.Dtm[j] do
   if selected or ((ptype=900) and (Pid=j)) then
   begin
      draw(-1);
      p1.xyz.Change(dx,dy,1);
      draw(-1);
   end;
   for j:=1 to s do
      Tris.Tri[skyn.Get(j)].draw(-1);    //hide triangles that will move

   //-irrigation------------

   for j:=0 to Blocks.No do
      for n:=1 to Blocks.Block[j].nonode do
      with Blocks.Block[j].node[n] do
      if selected or ((ptype=1001) and (Pid=j)) then
      begin
         draw(-1);
         Blocks.Block[j].Node_Pipes_draw(Blocks.Block[j].node[n],-1);
         p1.Change(dx,dy,1);
         draw(-1);
         Blocks.Block[j].Node_Pipes_draw(Blocks.Block[j].node[n],-1);
      end;



(*   kanvas:=Mainform.PBox.canvas;
   kanvas.CopyRect(rect(0,0,bmp.width,bmp.height),bmp.canvas,rect(0,0,bmp.width,bmp.Height));
   bmp.free;

   for j:=1 to Images.No do
   with Images.Image[j] do if not selected then draw(0); *)

end;

procedure DbaseObj.pxpy(dx,dy : double; ParentType,ParentId,ParentPoint : integer );   //move current point
var j,i : integer;
begin
   case ParentType of
   100 : with Lines.line[ParentId] do
       begin
          draw(-1);
          Lp[ParentPoint].Change(dx,dy,0);
          draw(-1);
       end;
   200 : with Circles.circle[ParentId] do
       begin
          if ParentPoint=1 then
          begin
             draw(-1);
             p1.Change(dx,dy,0);
             draw(-1);
          end
          else
             Circles.Radius(ParentId,dx,dy);
       end;
   700 : with Images.Image[ParentId] do
       begin
          draw(-1);
          case ParentPoint of
          1 :  p1.Change(dx,dy,0);
          2 :  p2.Change(dx,dy,0);
          end;
          draw(-1);
       end;
   800 : with Areas.Area[ParentId] do
         begin
            draw(-1);
            Ap[ParentPoint].Change(dx,dy,0);
            draw(-1);
          end;
   900 : with Dtms.Dtm[ParentId] do
         begin
            draw(-1);
            p1.xyz.Change(dx,dy,0);
            draw(-1);
          end;
   1000 : with Blocks.Block[ParentId] do
         begin
            draw(-1);
            Ap[ParentPoint].Change(dx,dy,0);
            draw(-1);
          end;
   end;
end;

//----------------DBASE functions-----------------------
procedure DbaseObj.draw;
label Skip;
var j,n : integer;
begin

//exit;

   mainform.Memo1.Lines.Add('blocks '+inttostr(blocks.no));
 //  kanvas.Brush.Color:=mainform.Color;
   Ghost.Draw(true);              //make sure ghost is not carried over
   Mouse.Wait;

   kanvas.FillRect(rect(0,0,wind.canvasw,wind.canvash));

   for j:=1 to Lines.No do Lines.line[j].draw(0);
   for j:=1 to Circles.No do Circles.circle[j].draw(0);
   for j:=1 to Images.No do Images.Image[j].draw(0);
   for j:=1 to Dtms.No do if not Dtms.Dtm[j].draw(0) then goto skip;
   for j:=1 to Tris.No do if not Tris.Tri[j].draw(0) then goto skip;
   for j:=1 to Areas.No do Areas.Area[j].draw(0);
   with Blocks do
   begin
      for j:=1 to No do Block[j].draw(0);

      for j:=0 to No do
      begin
         for n:=1 to Block[j].nonode do
            Block[j].node[n].draw(0);
         for n:=1 to Block[j].nopipe do
            Block[j].pipe[n].draw(0);
      end;
   end;

   quickcon(1,0); //0=gewoon   1=abrie3d   2=GMaps

   Skip:
   Mouse.Go;

   mainform.Memo1.Lines.Add(i_s(Dtms.No,6));
end;

procedure DbaseObj.Select(Select_,Area : Boolean);  //unselect all and remove grips
var j,n,grip : integer;
begin
   Grip:=1;
   if not Select_ then Grip:=2;

   for j:=1 to Lines.No do   if Area then Lines.line[j].Area     else Lines.line[j].draw(Grip);
   for j:=1 to Dtms.No  do   if Area then Dtms.Dtm[j].Area       else Dtms.Dtm[j].draw(Grip);
   for j:=1 to Circles.No do if Area then Circles.circle[j].Area else Circles.circle[j].draw(Grip);
   for j:=0 to Blocks.No do
      for n:=1 to Blocks.Block[j].nonode do
         if Area then Blocks.block[j].node[n].Area else Blocks.block[j].node[n].draw(Grip);

   if area then exit;

   for j:=1 to Images.No do Images.Image[j].draw(Grip);

   for j:=1 to Tris.No do Tris.Tri[j].draw(Grip);
   for j:=1 to Areas.No do  Areas.Area[j].draw(Grip);
   for j:=1 to Blocks.No do Blocks.Block[j].draw(Grip);
end;

Function DbaseObj.count_on_layer(layer_name : string) : integer;    //count number of elements on layer
var j,n : integer;
begin

   n:=0;

   for j:=1 to Lines.No   do if Lines.line[j].layer = layer_name then inc(n);
   for j:=1 to Circles.No do if Circles.circle[j].layer = layer_name then inc(n);

   result := n;
end;

procedure DbaseObj.delete_on_layer(layer_name : string);    //delete elements on layer
var j : integer;
begin

   for j:=1 to Lines.No   do if Lines.line[j].layer = layer_name then Lines.Delete(j);
   for j:=1 to Circles.No do if Circles.circle[j].layer = layer_name then Circles.Delete(j);

end;

procedure DbaseObj.edit_on_layer(layer_name, new_layer_name : string);    //edit layer name
var j : integer;
begin

   for j:=1 to Lines.No   do if Lines.line[j].layer = layer_name then Lines.line[j].layer := new_layer_name;
   for j:=1 to Circles.No do if Circles.circle[j].layer = layer_name then Circles.circle[j].layer := new_layer_name;

end;

Function DbaseObj.Is_Selected : boolean;    //when moving to know if moving single or selecteds
var j,n : integer;
begin
   result:=false;
   for j:=1 to Lines.No do if Lines.line[j].selected then Result:=true;
   if result then Exit;

   for j:=1 to Areas.No do if Areas.area[j].selected then Result:=true;
   if result then Exit;

   for j:=1 to Blocks.No do if Blocks.Block[j].selected then Result:=true;
   if result then Exit;

   for j:=1 to Circles.No do if Circles.circle[j].selected then Result:=true;
   if result then Exit;

   for j:=1 to Dtms.No do if Dtms.dtm[j].selected then Result:=true;
   if result then Exit;

   for j:=1 to Images.No do if Images.Image[j].selected then Result:=true;
   if result then Exit;

   for j:=0 to Blocks.No do
      for n:=1 to Blocks.block[j].nonode do
         if Blocks.block[j].node[n].selected then Result:=true;
end;

procedure DbaseObj.DeleteSelected(All : boolean);
var j,i : integer;

   procedure DeleteInodes(blkNo,NodeNo : integer);
   var n1,n2,i,k : integer;
   begin
      n1:=NodeNo; n2:=NodeNo;
      if NodeNo=0 then begin N1:=Blocks.block[blkNo].nonode; n2:=1 end;
      for i:=n1 downto n2 do
      begin
         Undo.SaveUndo(Blocks.block[blkNo].node[i],i);
         Blocks.block[blkNo].node[i].draw(-1);
         if NodeNo<>0 then
         for k:=i to Blocks.block[blkNo].Nonode-1 do
            Blocks.block[blkNo].node[k]:=Blocks.block[blkNo].node[k+1];
         Dec(Blocks.block[blkNo].nonode);
      end;
   end;
   procedure DeleteIPipes(blkNo,PipeNo : integer);
   var n1,n2,i,k : integer;
   begin
      n1:=PipeNo; n2:=PipeNo;
      if PipeNo=0 then begin N1:=Blocks.block[blkNo].noPipe; n2:=1 end;
      for i:=n1 downto n2 do
      begin
         Undo.SaveUndo(Blocks.block[blkNo].Pipe[i],i);
         Blocks.block[blkNo].Pipe[i].draw(-1);
         if PipeNo<>0 then
         for k:=i to Blocks.block[blkNo].NoPipe-1 do
            Blocks.block[blkNo].Pipe[k]:=Blocks.block[blkNo].Pipe[k+1];
         Dec(Blocks.block[blkNo].noPipe);
      end;
   end;

begin
   Undo.StartGroup(3);
   mouse.wait;
   with Lines do
      for j:=No downto 1 do
         if All or line[j].selected then
         begin
            Undo.SaveUndo(line[j],j);
            line[j].draw(-1);
            for i:=1 to Line[No].no_p do
            begin
               line[j].Lp[i].x:=line[No].Lp[i].x;
               line[j].Lp[i].y:=line[No].Lp[i].y;
            end;
            Line[j].No_p:=Line[No].no_p;
            Dec(No);
         end;
   Mouse.Pause_plot;
   with Circles do
      for j:=No downto 1 do
         if All or Circle[j].selected then
         begin
            Undo.SaveUndo(circle[j],j);
            circle[j].draw(-1);
            circle[j].p1.x  :=circle[No].p1.x;
            circle[j].p1.y  :=circle[No].p1.y;
            circle[j].radius:=circle[No].radius;
            Dec(No);
         end;
   Mouse.Pause_plot;
   with areas do
      for j:=No downto 1 do
         if All or Area[j].selected then
         begin
            Undo.SaveUndo(Area[j],j);
            Area[j].draw(-1);
            for i:=1 to Area[no].no_p do
            begin
               Area[j].Ap[i].x:=Area[No].Ap[i].x;
               Area[j].Ap[i].y:=Area[No].Ap[i].y;
            end;
            Area[j].No_p:=Area[no].no_p;
            Dec(No);
         end;
   Mouse.Pause_plot;
   with Dtms do
      for j:=No downto 1 do
         if All or Dtm[j].selected then
         begin
            Undo.SaveUndo(Dtm[j],j);
            dtm[j].draw(-1);
            dtm[j].p1.xyz.x :=dtm[No].p1.xyz.x;
            dtm[j].p1.xyz.y :=dtm[No].p1.xyz.y;
            dtm[j].p1.xyz.z :=dtm[No].p1.xyz.z;
            Dec(No);
         end;
   Mouse.Pause_plot;
   with Tris do
      for j:=No downto 1 do
         if All or Tri[j].selected then
         begin
            Undo.SaveUndo(Tri[j],j);
            Tri[j].draw(-1);
            Tri[j].dh :=Tri[No].dh;
            Dec(No);
         end;
   Mouse.Pause_plot;
      with Blocks do
      begin
         for j:=No downto 1 do
         if All or Block[j].selected then
         begin
            DeleteIPipes(j,0);       //delete elements first
            DeleteINodes(j,0);
            Undo.SaveUndo(block[j],j);
            Block[j].draw(-1);
            for i:=1 to Block[no].no_p do
            begin
               Block[j].Ap[i].x:=Block[No].Ap[i].x;
               Block[j].Ap[i].y:=Block[No].Ap[i].y;
            end;
            Block[j].No_p:=Block[no].no_p;
            Dec(No);
         end;

         for j:=No downto 0 do
            for i := block[j].nonode Downto 1 do
               if All or block[j].node[i].selected then DeleteINodes(j,i);
         for j:=No downto 0 do
            for i := block[j].noPipe Downto 1 do
               if All or block[j].Pipe[i].selected then DeleteIPipes(j,i);

      end;

   Mouse.go;
   //for j:=1 to Images.No do Images.Image[j].draw(2);
end;

// Update active/inactive
procedure DbaseObj.update_state;
var j, total : integer;
begin

   for j:=1 to Lines.no do
   begin
      lines.line[j].switch_active(Dbase.Lines.active);
   end;

   for j:=1 to Circles.no do
   begin
      circles.circle[j].switch_active(Dbase.Circles.active);
   end;

   {for j:=1 to Points.total do
   begin
      point := point._get(j, false);
     // if point.layer = layer then
     //    point.active := false;
   end;}

end;


//------------Load and Save------------------------------
procedure DbaseObj.Save(Filename : string);
var SFile : file;
    version : double;
    j,elm,i   : integer;
begin
   Assign(Sfile,Filename);
   rewrite(Sfile,1);
   Version:=1;
   blockWrite(Sfile,Version,Sizeof(double));

   Elm:=100;
   with Lines do
   for j:=1 to No do
   begin
      blockWrite(Sfile,Elm,sizeof(Elm));
      Line[j].WriteToFile(Sfile);
   end;
   Elm:=200;
   with Circles do
   for j:=1 to No do
   begin
      blockWrite(Sfile,Elm,sizeof(Elm));
      Circle[j].WriteToFile(Sfile);
   end;
   Elm:=900;
   with Dtms do
   for j:=1 to No do
   begin
      blockWrite(Sfile,Elm,sizeof(Elm));
      Dtm[j].WriteToFile(Sfile);
   end;
   Elm:=910;
   with Tris do
   for j:=1 to No do
   begin
      blockWrite(Sfile,Elm,sizeof(Elm));
      Tri[j].WriteToFile(Sfile);
   end;
   Elm:=800;
   with Areas do
   for j:=1 to No do
   begin
      blockWrite(Sfile,Elm,sizeof(Elm));
      Area[j].WriteToFile(Sfile);
   end;

   with Blocks do
   for j:=0 to No do
   begin
      Elm:=1000;
      blockWrite(Sfile,Elm,sizeof(Elm));
      Block[j].WriteToFile(Sfile);

      Elm:=1010;
      blockWrite(Sfile,Elm,sizeof(Elm));
      blockWrite(Sfile,J,sizeof(J));      //block number
      blockWrite(Sfile,block[j].nonode,sizeof(integer));
      for i:=1 to block[j].nonode do block[j].node[i].WriteToFile(Sfile);

      Elm:=1020;
      blockWrite(Sfile,Elm,sizeof(Elm));
      blockWrite(Sfile,J,sizeof(J));      //block number
      blockWrite(Sfile,block[j].noPipe,sizeof(integer));
      for i:=1 to block[j].noPipe do
      with block[j].Pipe[i] do
      begin
         Num1:=Block[j].Node_Number(n1);
         Num2:=Block[j].Node_Number(n2);    //get node numbers
         WriteToFile(Sfile);
      end;
   end;
   closefile(Sfile);
end;


procedure DbaseObj.Load(tip : integer; Filename : string);
var SFile : file;
    version : double;
    j,Elm,i,NoNode,NoPipe : integer;
begin
   if tip=2 then
   begin
      LoadTot(Filename);
      exit;
   end;

   if Not FileExists(filename) then exit;


   Assign(Sfile,Filename);
   reset(Sfile,1);
   blockRead(Sfile,Version,Sizeof(double));
   if Version<>1 then exit;

   Lines.No:=0;
   Circles.No:=0;
   areas.No:=0;
   Blocks.No:=-1;   //first one read will be 0

   While not Eof(Sfile) do
   begin
      blockRead(Sfile,Elm,sizeof(Elm));
      case Elm of
      100 : with Lines do
          begin
             inc(No);
             if line[No]=nil then Line[no]:=lineC.Create(0,0,0,1,1,0,clred,1);
             Line[No].ReadfromFile(Sfile);
          end;
      200 : with Circles do
          begin
             inc(No);
             if Circle[no]=nil then Circle[no]:=circC.Create(0,0,0,0,clyellow,1);
             Circle[No].ReadfromFile(Sfile);
          end;
      800:  with Areas do
            begin
               inc(no);
               if area[No]=nil then area[no]:=areaC.Create(0,0,0,1,1,0,clred,1);
               Area[No].ReadfromFile(Sfile);
            end;
      900:  with Dtms do
            begin
               add('','',0,0,0);
               dtm[No].ReadfromFile(Sfile);
            end;
      910:  with Tris do
            begin
               add(0,0,0,0,0,0,0);
               tri[No].ReadfromFile(Sfile);
            end;
     1000:  with Blocks do
            begin
               inc(no);
               if block[No]=nil then block[no]:=blockC.Create(0,0,0,1,1,0,clred,1);
               block[No].ReadfromFile(Sfile);
            end;
      1010: begin
               blockRead(Sfile,J,sizeof(J));      //block number
               blockRead(Sfile,NoNode,sizeof(integer));
               for i:=1 to Nonode do
               begin
                  Blocks.block[j].AddNode(0,0,0,10,10,'1','2','3',sprinkler);
                  Blocks.block[j].node[i].ReadfromFile(Sfile);
               end;
            end;
      1020: begin
               blockRead(Sfile,J,sizeof(J));      //block number
               blockRead(Sfile,NoPipe,sizeof(integer));
               for i:=1 to NoPipe do
               with Blocks.block[j] do
               begin
                  AddPipe(nil,nil);
                  Pipe[i].ReadfromFile(Sfile);
                  Pipe[i].n1:=Number_Node(Pipe[i].Num1);
                  Pipe[i].n2:=Number_Node(Pipe[i].Num2);
               end;
            end;
      end;
   end;
   closefile(Sfile);
   Wind.NormalLimits;
end;

procedure DbaseObj.LoadTot(Filename : string);
var j : integer;
    s,s2,code,tag : Shortstring;
    x,y,z : double;
    tri_  : boolean;
    v0,v1,v2,v3,v4,v5,v6  : string;
begin
   assignfile(txtfile,Filename);
   reset(txtfile);
   j:=1;
   tri_:=false;
   while not eof(txtfile) do
   begin
      readln(txtfile,S);
      if s='TRIANGLE' then
         tri_:=true
      else
         if (j>1) then
         if tri_ then
         with Tris do
         begin
            getvaloftext(s,v0,v1,v2,v3,v4,v5,v6);
            add(strtoint(v0),strtoint(v1),strtoint(v2),strtoint(v3),strtoint(v4),strtoint(v5),strtoint(v6));
         end
         else
         with Dtms do
         begin
            getvtxt(S,' ','5',y,code,true);
            getvtxt(S,' ','4',y,tag,true);
            getvtxt(S,' ','3',y,s2,true);
            getvtxt(S,' ','2',x,s2,true);
            getvtxt(S,' ','1',z,s2,true);
            add(code,tag,x,y,z);
         end;
      inc(j);
   end;
   closefile(txtfile);
end;

end.
