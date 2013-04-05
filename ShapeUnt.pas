unit ShapeUnt;

interface

uses Vcl.Graphics,system.types,system.sysUtils, PointUnt,
  cxLookAndFeels, cxLookAndFeelPainters, cxStyles, cxEdit, cxTextEdit, cxVGrid,
  cxInplaceContainer, dxDockControl, dxDockPanel, Vcl.ExtCtrls, dxBar, cxClasses,
  Vcl.Buttons, Vcl.ImgList, cxCheckComboBox, cxCheckGroup, cxBarEditItem,
  Vcl.ComCtrls, cxCustomData, cxTL, cxTLdxBarBuiltInMenu;

type

  ShapeC = class
  published
     function  get_oi_title : string;
     function  get_layer:string; Virtual; Abstract;

     function  get_property_value(_type:string):string; Virtual; Abstract;
     procedure set_property_value(_property : string; _value : TcxCustomEditorRowProperties); Virtual; Abstract;

     function draw(gripN:integer) : boolean;
     procedure SaveUndo(Id : integer);
     procedure WriteToFile(var FFile : file);
     procedure ReadFromFile(var FFile: file);
     procedure Area;            //id element if inside Ghost Area
     Procedure Rotate(x,y,Angle : double; DoDraw : boolean=false);  //rotate the element, relative angle degrees arounf x,y pageup and down
     Function Home(x,y : double; var Dist0 : double) : Double;      //calculate the angle to set the element at horizontal
     constructor Create; overload;   // This constructor uses defaults
     procedure switch_active(elements_active : boolean);
     Function ShapeToCode : integer;

  public
     pen : tcolor;
     width : integer;
     selected  : boolean;
     active    : boolean;
  end;

implementation

uses UndoUnt, LineUnt, CircleUnt, PlotUnt, DtmUnt, AreaUnt,NodeUnt,BlockUnt,
     obj_insp_unt, GloUnt, Main, ImageUnt, DataUnt,MouseUnt, layers_unt,pipeunt;

//---------SHAPEC-------------------------------------

// Create Shape
constructor ShapeC.Create();
begin
   self.active := true;
end;

Function ShapeC.ShapeToCode : integer;
begin
{   result:=0;
   if Shape.ClassType=LineC  then result:=100;
   if Shape.ClassType=CircC  then result:=200;
   if Shape.ClassType=ImageC then result:=700;
   if Shape.ClassType=AreaC  then result:=Shape(Self).Index;     //800 1000 already defined
   if Shape.ClassType=DtmC   then result:=900;
   910=tri}
end;



procedure ShapeC.SaveUndo(Id : integer);
begin
   Undo.SaveUndo(self,ID);
end;

procedure ShapeC.Area;    //Select the element when it falls inside ghost area
var DoIt : boolean;
    j : integer;
begin
   if Self.ClassType=LineC then
      with LineC(Self) do
      begin
         Doit:=false;
         for j:=1 to No_p do DoIt:=Doit or Ghost.InArea(Lp[j]);    //ask the Ghost Object if point is inside
         if Doit then Draw(1);
      end;
   if (Self.ClassType=CircC) or (Self.ClassType=NodeC) then
      with CircC(Self) do
      begin
         DoIt:=Ghost.InArea(p1);       //ask the Ghost Object if point is inside
         if Doit then Draw(1);
      end;
   if Self.ClassType=DtmC then
      with DtmC(Self) do
      begin
         DoIt:=Ghost.InArea(p1.xyz);       //ask the Ghost Object if point is inside
         if Doit then Draw(1);
      end;

end;

procedure ShapeC.WriteToFile(var FFile: file);
var j,i,p : integer;
begin
   if Self.ClassType=LineC then
   with Linec(Self) do
   begin
      BlockWrite(FFile,No_p,Sizeof(integer),j);
      for p:=1 to No_p do
      begin
         BlockWrite(FFile,Lp[p].x,Sizeof(double),j);
         BlockWrite(FFile,Lp[p].y,Sizeof(double),j);
      end;
   end;
  
   if Self.ClassType=CircC then
   begin
      BlockWrite(FFile,Circc(Self).p1.x,Sizeof(double),j);
      BlockWrite(FFile,Circc(Self).p1.y,Sizeof(double),j);
      BlockWrite(FFile,Circc(Self).Radius,Sizeof(double),j);
   end;
   if Self.ClassType=DtmC then
   begin
      Blockwrite(FFile,Dtmc(Self).p1.xyz.x,Sizeof(double));
      Blockwrite(FFile,Dtmc(Self).p1.xyz.y,Sizeof(double));
      Blockwrite(FFile,Dtmc(Self).p1.xyz.z,Sizeof(double));
   end;
   if Self.ClassType=TriC then
   begin
      Blockwrite(FFile,Tric(Self).dh,Sizeof(dhp));
   end;


   if Self.ClassType=AreaC then
   begin
      Blockwrite(FFile,Areac(self).no_p,Sizeof(integer));
      for i:=1 to Areac(self).no_p do
      begin
         BlockWrite(FFile,Areac(Self).Ap[i].x,Sizeof(double));
         BlockWrite(FFile,Areac(Self).Ap[i].y,Sizeof(double));
      end;
   end;
   if Self.ClassType=BlockC then
   begin
      Blockwrite(FFile,Blockc(self).no_p,Sizeof(integer));
      for i:=1 to Blockc(self).no_p do
      begin
         BlockWrite(FFile,Blockc(Self).Ap[i].x,Sizeof(double));
         BlockWrite(FFile,Blockc(Self).Ap[i].y,Sizeof(double));
      end;
   end;
   if Self.ClassType=NodeC then
   begin
      BlockWrite(FFile,NodeC(self).p1.x,Sizeof(double),j);
      BlockWrite(FFile,NodeC(Self).p1.y,Sizeof(double),j);
      BlockWrite(FFile,NodeC(Self).Radius,Sizeof(double),j);
   end;
   if Self.ClassType=PipeC then
   begin
      BlockWrite(FFile,PipeC(self).Num1,Sizeof(integer),j);
      BlockWrite(FFile,PipeC(Self).Num2,Sizeof(integer),j);
   end;
end;

procedure ShapeC.ReadFromFile(var FFile: file);
var i,p : integer;
begin
    if Self.ClassType=LineC THEN
    with Linec(Self) do
    begin
       BlockRead(FFile,No_p,Sizeof(integer));
       if high(Lp)<no_p+1 then Setlength(Lp,no_p+1);
       for p:=1 to No_p do
       begin
          BlockRead(FFile,Linec(Self).Lp[p].x,Sizeof(Double));
          BlockRead(FFile,Linec(Self).Lp[p].y,Sizeof(Double));
       end;
   end;
   if Self.ClassType=AreaC then
   begin
      BlockRead(FFile,Areac(self).no_p,Sizeof(integer));
      if high(Areac(self).AP)<Areac(self).no_p+1 then Setlength(Areac(self).Ap,Areac(self).no_p+1);
      for i:=1 to Areac(self).no_p do
      begin
         BlockRead(FFile,Areac(Self).Ap[i].x,Sizeof(double));
         BlockRead(FFile,Areac(Self).Ap[i].y,Sizeof(double));
      end;
   end;
   if Self.ClassType=BlockC then
   begin
      BlockRead(FFile,BlockC(self).no_p,Sizeof(integer));
      if high(Blockc(self).AP)<Blockc(self).no_p+1 then Setlength(Blockc(self).Ap,Blockc(self).no_p+1);
      for i:=1 to Blockc(self).no_p do
      begin
         BlockRead(FFile,Blockc(Self).Ap[i].x,Sizeof(double));
         BlockRead(FFile,Blockc(Self).Ap[i].y,Sizeof(double));
      end;
   end;
   if Self.ClassType=CircC then
   begin
      BlockRead(FFile,Circc(Self).p1.x,Sizeof(double));
      BlockRead(FFile,Circc(Self).p1.y,Sizeof(double));
      BlockRead(FFile,Circc(Self).Radius,Sizeof(double));
   end;
   if Self.ClassType=DtmC then
   begin
      BlockRead(FFile,Dtmc(Self).p1.xyz.x,Sizeof(double));
      BlockRead(FFile,Dtmc(Self).p1.xyz.y,Sizeof(double));
      BlockRead(FFile,Dtmc(Self).p1.xyz.z,Sizeof(double));
   end;
   if Self.ClassType=TriC then
   begin
      Blockread(FFile,Tric(Self).dh,Sizeof(dhp));
   end;
   if Self.ClassType=NodeC then
   begin
      BlockRead(FFile,NodeC(self).p1.x,Sizeof(double));
      BlockRead(FFile,NodeC(Self).p1.y,Sizeof(double));
      BlockRead(FFile,NodeC(Self).Radius,Sizeof(double));
   end;
   if Self.ClassType=PipeC then
   begin
      BlockRead(FFile,PipeC(self).Num1,Sizeof(integer));
      BlockRead(FFile,PipeC(Self).Num2,Sizeof(integer));
   end;
end;



// Get Object Inspector title
function ShapeC.get_oi_title : string;
var
type_name : string;
begin

  { if self.ClassType = PointC then
   begin
      type_name := 'Point';
   end;      }

   if self.ClassType = LineC then
   begin
      type_name := 'Line';
   end;

   if self.ClassType = CircC then
   begin
      type_name := 'Circle';
   end;

   if self.ClassType = NodeC then
   begin
      type_name := 'Node';
   end;

   if length(ObjInsp._ss) = 2 then
      result := type_name + ' Info'
   else
      result := inttostr(length(ObjInsp._ss) - 1) + ' items selected';

end;

procedure ShapeC.switch_active(elements_active : boolean);
var switch, group_active, layer_active : boolean;
i : integer;
begin

    // layer_active =
    // Loop through layers -- check if self.layer is active
    for i := 1 to Layers.total do
    begin
       if self.get_layer = Layers.list[i].name then layer_active :=  Layers.list[i].active;
    end;

    // Check based on:
    // Group (Cad, DTM, Irrigation etc)
    // Elements (Lines, Circles, Pipes etc)
    // Layers

    switch := elements_active and layer_active;// or not Dbase.cad_active;

    // Switch true, active true -- nothing
    if switch and active then
       exit;

    // Switch true, active false -- show
    if switch and not active then
    begin
       self.active := true;
       self.draw(0);
       exit;
    end;

    // Switch false, active false -- nothing
    if switch and not active then
    exit;

    // Switch false, active true -- hide
    if not switch and active then
    begin
       self.draw(-1);
       self.active := false;
       exit;
    end;

end;


{procedure ShapeC.info;         //Display shape info
begin

end; }

function ShapeC.draw(GripN : integer) : boolean;         //draw the Shape but stop is abort key was pressed
var bmp:Tbitmap;
    bmpCreated : integer;
    Kanvas_ : tcanvas;
    dh : dhp;
    p1,p2,p3 : pointC;
    Doit : boolean;

   procedure Circle(x,y,r : double);
   var hoek,cx,cy : double;
       xcrt,ycrt  : integer;
   begin
      hoek:=0;
      with kanvas do
      begin
         while hoek<=360 do
         begin
            pol(x,y,r,hoek,cx,cy);
            if hoek=0 then
               movetoX(cx,cy)
            else
               linetoX(cx,cy);
            hoek:=hoek+10;
         end;
         if circC(Self).Inode then
         begin
            wind.world_screen(x,y,xcrt,ycrt);
            textout(xcrt,ycrt,'n');
         end;
      end;
   end;

   procedure Cross(x,y,r : double);
   var  xcrt,ycrt  : integer;
   begin
      with kanvas do
      begin
         wind.world_screen(x,y,xcrt,ycrt);

         //exit;

         kanvas.Pixels[xcrt,ycrt]:=clred;
        // movetoX(x-r,y);
        // linetoX(x+r,y);
        // movetoX(x,y-r);
        // linetoX(x,y+r);
      end;
   end;

   procedure DrawArea(Area : AreaC);
   var j : integer;
   begin
      for j:=1 to Area.no_p do
      begin
         if j=1 then
            movetoX(Area.Ap[1].x,Area.Ap[1].y)
         else
            LinetoX(Area.Ap[j].x,Area.Ap[j].y);
         if (Area.no_p>2) and (j=Area.no_p) then
         //if (not gelyk(Area.Ap[j].x,Area.Ap[j-1].x)) then
               LinetoX(Area.Ap[1].x,Area.Ap[1].y)
      end;
   end;

   procedure DrawPipe(pipe : PipeC);
   begin
      with Pipe do
      begin
         Movetox(n1.p1.x,n1.p1.y);
         Linetox(n2.p1.x,n2.p1.y);
      end;
   end;

   procedure DrawLine(Line : LineC);
   var j : integer;
   begin
      for j:=1 to Line.no_p do
         if j=1 then
            movetoX(Line.Lp[1].x,Line.Lp[1].y)
         else
            LinetoX(Line.Lp[j].x,Line.Lp[j].y);
   end;

   procedure Setselected(GripN_ : Integer; var Select : boolean);  //Change selected by codes 0,1,2,3
   begin
      case GripN_ of
      -1,0 : ;                                           //just draw, do not changed selected status
      1 : selected:=true;                                //draw and set status to true
      2 : selected:=false;                               //draw and set status to false
      3 : selected:=not selected;                        //draw and invert selected
      end;
   end;

   procedure CreateGhost(How_ : integer);       //double buffer canvas?
   begin
      bmp:=tbitmap.Create;
      bmp.Width:=mainform.PBox.Width;
      bmp.Height:=mainform.PBox.Height;
      bmpCreated:=How_;
      if how_=2 then
      begin
         kanvas_:=kanvas;
         bmp.Transparent:=true;
         bmp.TransparentMode := tmAuto;
         kanvas:=bmp.Canvas;
      end;
   end;

begin

   Result:=false;
   if Mouse.Pause_plot then exit;
   Result:=true;

   bmpCreated:=0;
   with kanvas do
   begin
      Pen.Color:=self.pen;
      pen.Mode :=pmCopy;
      if GripN<>0 then   //=-1 then
         pen.Mode :=pmNotXor;
      pen.Style:=psSolid;
      pen.Width:=self.width;
   end;
   if gripN=100 then                           //Draw highlight shape in dotted
   begin
      //CreateGhost(2);
      kanvas.pen.Color:=clgreen;
     // kanvas.pen.style:=psDot;
   end;

   if active then
   begin

      if Self.ClassType = lineC then
      begin
         if Selected then kanvas.Pen.Width:=3;
         DrawLine(linec(self));
         SetSelected(GripN,Selected);
         if GripN in [1,2,3] then
         begin
            kanvas.Pen.Width:=1;
            if Selected then kanvas.Pen.Width:=3;
            DrawLine(linec(self));
         end;
      end;

      if Self.ClassType = PipeC then
      begin
         if Selected then kanvas.Pen.Width:=3;
         DrawPipe(PipeC(self));
         SetSelected(GripN,Selected);
         if GripN in [1,2,3] then
         begin
            kanvas.Pen.Width:=1;
            if Selected then kanvas.Pen.Width:=3;
            DrawPipe(PipeC(self));
         end;
      end;

      if (Self.ClassType=CircC) or (Self.ClassType=NodeC) then
      begin
         if Selected then kanvas.Pen.Width:=3;
         circle(circC(self).p1.x,circC(self).p1.y,circC(self).radius);
         SetSelected(GripN,Selected);
         if GripN in [1,2,3] then
         begin
            kanvas.Pen.Width:=1;
            if Selected then kanvas.Pen.Width:=3;
            circle(circC(self).p1.x,circC(self).p1.y,circC(self).radius);
         end;
      end;

   end; // Active


   if Self.ClassType = DtmC then
   begin
      if Selected then kanvas.Pen.Width:=3;
      Doit:=wind.Screen.InScreen(DtmC(self).p1.xyz);
      if Doit then cross(DtmC(self).p1.xyz.x,DtmC(self).p1.xyz.y,1); //Wind.PixelTometer(2));
      SetSelected(GripN,Selected);
      if GripN in [1,2,3] then
      begin
         kanvas.Pen.Width:=1;
         if Selected then kanvas.Pen.Width:=3;
         if Doit then cross(DtmC(self).p1.xyz.x,DtmC(self).p1.xyz.y,1); //Wind.PixelTometer(2));
      end;
   end;

   if Self.ClassType = TriC then
   begin
      //exit;
      if Selected then kanvas.Pen.Width:=3 else kanvas.Pen.Width:=1;
      dh:=Tric(self).dh;
      p1:=Dbase.Dtms.Dtm[dh[1]].p1.xyz;
      p2:=Dbase.Dtms.Dtm[dh[2]].p1.xyz;
      p3:=Dbase.Dtms.Dtm[dh[3]].p1.xyz;

      movetoX(p1.x,p1.y);
      if dh[4]<TriC(self).width then LinetoX(p2.x,p2.y) else movetoX(p2.x,p2.y);
      if dh[5]<TriC(self).width then LinetoX(p3.x,p3.y) else movetoX(p3.x,p3.y);
      if dh[6]<TriC(self).width then LinetoX(p1.x,p1.y);

      SetSelected(GripN,Selected);
      if GripN in [1,2,3] then
      begin
         kanvas.Pen.Width:=1;
         if Selected then kanvas.Pen.Width:=3;
         movetoX(p1.x,p1.y); LinetoX(p2.x,p2.y); LinetoX(p3.x,p3.y); LinetoX(p1.x,p1.y);
      end;
   end;

   if (Self.ClassType = AreaC) or (Self.ClassType = BlockC) then
   begin
      if Selected then kanvas.Pen.Width:=3;
      DrawArea(areaC(self));
      SetSelected(GripN,Selected);
      if GripN in [1,2,3] then
      begin
         kanvas.Pen.Width:=1;
         if Selected then kanvas.Pen.Width:=3;
         DrawArea(areaC(self));
      end;
   end;

   if Self.ClassType = ImageC then
   begin
      if GripN in [0,100] then
      begin
         CreateGhost(1);
         bmp.LoadFromFile(ImageC(Self).Name);
         with ImageC(Self) do
         begin
            p0.x:=(p1.x+p2.x)/2;
            p0.y:=(p1.y+p2.y)/2;
            kanvas.CopyRect(rect(trunc(p1.x),trunc(p1.y),trunc(p2.x),trunc(p2.y)),bmp.Canvas,rect(0,0,bmp.width,bmp.Height));
         end;
      end;
      if selected then Imagec(self).p0.grip(old);
      SetSelected(GripN,Selected);
      if selected and (GripN>0) then ImageC(self).p0.grip(old);
   end;

   if bmpCreated=2 then
   begin
      kanvas:=Kanvas_;
     // kanvas.CopyMode:= cmWhiteness;
     // kanvas.CopyRect(rect(0,0,bmp.width,bmp.Height),bmp.canvas,rect(0,0,bmp.width,bmp.Height));
      kanvas.Draw(0,0,bmp);
   end;
   if bmpCreated>0 then Bmp.Free;
end;

Function ShapeC.Home(x,y : double; Var Dist0 : double) : Double;
var dist,dir,dist1,dist2,dist3,DistRef : double;
    j : integer;
begin
   DistRef:=Dist0;                     //calculate the angle to rotate moving elements so one segment is horizontal
   if Self.ClassType = lineC then
      with LineC(self) do
      for j:=1 to No_p-1 do
      begin
         Vrb(Lp[j].x,Lp[j].y,Lp[j+1].x,Lp[j+1].y,dist,dir);
         Dist1:=potago(x,y,Lp[j].x,Lp[j].y);
         Dist2:=potago(x,y,Lp[j+1].x,Lp[j+1].y);
         Dist3:=potago(x,y,(Lp[j].x+Lp[j+1].x)/2,(Lp[j].y+Lp[j+1].y)/2);
         if Dist1<Dist0 then Dist0:=Dist1;
         if j=No_p-1 then       //only last node
            if Dist2<Dist0 then Dist0:=Dist2;
         if Dist3<Dist0 then Dist0:=Dist3;
         if Dist0<DistRef then
         begin
            DistRef:=Dist0;
            if Dir<=180 then Result:=90-Dir else Result:=270-Dir;
         end;
      end;
end;

Procedure ShapeC.Rotate(x,y,Angle : double; DoDraw : boolean=false);
var dist,dir : double;
    j : integer;
begin
   if Self.ClassType = lineC then
   with LineC(self) do
   if selected then
   begin
      if DoDraw then draw(-1);
      for j:=1 to No_p do
      begin
         Vrb(x,y,Lp[j].x,Lp[j].y,dist,dir);
         Pol(x,y,Dist,Dir+Angle,Lp[j].x,Lp[j].y)
      end;
      if DoDraw then Draw(-1);
   end;
end;


end.
