unit MouseUnt;

interface

uses DataUnt,dxbar,system.classes,types,
     winapi.windows, PointUnt,ShapeUnt;

type

Action_Type = (Neutral,Select,Moving,Line2Pnt,LinePoly,LineParallel,CadNodePlus,Circle1,Circle3Pnt,Block,Area,DtmPnt,
              Image,IrrNode,IrrPipe);

MouseC = Object
     Clicked : integer;    //0=none 1... clicked without escape
     Down    : boolean;    //if moving and down, then busy selecting in area
     Moved   : boolean;    //mouse was moved while active
     Single  : boolean;    //selecting end points when moving
     x,y     : double;     //mouse down world coordinate
     Cx,Cy   : integer;    //mouse screen coordinate

     Snap       : PointC;    //closest snap coordinate - endpoints, intersections etc.
     Snapped    : boolean;   //tooltip was placed on snap point                                           //source snap eg. add line node start,end,middle
     SnapOk     : integer;   //0=no snapping; 1=if snapped is checked is an action busy that needs snap?  2=when source snap is needed
     SnapSType   : integer;   //source      //1=AnyPoint; 2=Line End  3=Line Middle  4=Line end and middle
     SnapDType   : integer;   //destination //1=AnyPoint; 2=Line End  3=Line Middle

     //when working with an element add, move etc.
     ParentType  : integer;   //100=line 200=circle 700=image 800=area 900=dtmp 1000=irriblock
     ParentId    : integer;   //Database entry number
     ParentPoint : integer;   //p1 or p2 (-1 begin, 1 mid, 2 end)
     ParentCoord : PointC;    //when jumping in close shape, the coordinate of the shape anchor

     HighlightType : integer;  //highlight element type
     HighLightId   : integer;  //highlight element number

     Busy          : Boolean;  //true when program is busy plotting or working
     KeyPress      : Boolean;  //Was a key pressed during plotting
     KeyInterval   : integer;  //check for abort key every Intervals
     KeyChecked    : integer;  //How many times has the mouse checked the key press

     ShapeCc       : ShapeC;

     Base : array[1..3] of PointC;    //base coordiantes for 3pnt arc etc.

     Mode          : Action_Type;
                                                                                   //default to destination if not defined
     Procedure Clean(ButtonDown:boolean; Mmode : Action_Type; MaySnap : boolean; SourceORdestination:integer=2);   //second character of button keytip indicates if snap can be used
     Procedure AddBase(nom : integer; mx,my : double);
     procedure Move(mx,my : double);
     procedure MoveSnap;
     procedure highlight(mx,my : double; active : boolean);
     procedure RemoveHighLight;

     function GetSnapMode : integer;       //return snap code based on source or destination type
     function GripShape  : GripShapeVal;   //return if grip shape is block, cross, dot etc.
     function Pause_plot : boolean;         //checks if key was pressed and abort plotting
     procedure sendmessage_;
     procedure Skoon;
     procedure Skoon24(s:string);
     procedure Skoon25(s:string);
     procedure Warning(s1,s2,s3:string; Buttons : integer);
     procedure Wait;
     procedure Go;

  End;

  Procedure Display(ss : string; Counter,Interval : integer);
  Function Tag_ActionType(tag : integer) : Action_Type;

var

   Mouse : MouseC;

implementation

uses main,ActionUnt,form2unt,plotunt;

Function Tag_ActionType(tag : integer) : Action_Type;
begin
   result:=Neutral;
   case tag of
   0   : Result:=Neutral;
   1   : Result:=Select;
   10  : Result:=Moving;
   100 : Result:=Line2Pnt;
   101 : Result:=LineParallel;
   102 : Result:=CadNodePlus;
   104 : Result:=LinePoly;
   200 : Result:=Circle1;
   201 : Result:=Circle3Pnt;

   700 : Result:=Image;
   800 : Result:=Area;
   900 : Result:=DtmPnt;
   1000: Result:=Block;
   1010: Result:=IrrNode;
   1020: Result:=IrrPipe;
   end;
end;


procedure MouseC.sendmessage_;
var  M: TMsg;
begin
   {mm_main_58.application.processmessages;}

   if PeekMessage(M, 0, 0, 0, pm_Remove) then
   begin
      TranslateMessage(M);
      DispatchMessage(M);
   end;
end;

Procedure Display(ss : string; Counter,Interval : integer);
begin
   if frac(Counter/Interval)=0 then
      //Mainform.displayLabel.caption:=ss;
      Mainform.status_bar.Panels[1].Text := ss;
end;

procedure ResetButtons;
var j    : integer;
   tcomp : tcomponent;
   s     : string;
begin
   with Mainform do
   for j := 0 to BarManager.ItemCount - 1 do
      if BarManager.Items[j].ClassType=TdxBarButton then
      begin
         s:=BarManager.Items[j].KeyTip;
         if copy(s,1,1)='1' then          //first character of keytip =1 then it is an action toolbutton
         begin                            //second character of keytip indicates if snap may be active
            tcomp:=BarManager.Items[j];
            (tcomp as tdxbarbutton).Down:=false;
         end;
      end;
end;

function MouseC.GripShape  : GripShapeVal;
begin
   result:=square;
   if SnapOk=1 then    //source
      result:=dot
   else
      case SnapDtype of
      1,2,3,4,5 : result:=square;
      end;
end;

function MouseC.GetSnapMode : integer;
begin
   result:=0;
   if SnapOk=1 then
      result:=SnapSType
   else
      result:=SnapDType;
end;

function MouseC.Pause_plot : boolean;
begin
   Result:=false;

   //exit;

   Inc(KeyChecked);

   if not busy then Exit;
   if frac(KeyChecked/KeyInterval)=0 then SendMessage_;

   if KeyPress then
   begin
      KeyPress:=false;
      Result:=true;
      exit;        // a key was pressed in Mainform.
   end;
end;

procedure MouseC.Skoon;
begin
end;
procedure MouseC.Warning(s1,s2,s3:string; Buttons : integer);
begin
   Skoon24(S1);
end;
procedure MouseC.Skoon24(s:string);
begin
end;
procedure MouseC.Skoon25(s:string);
begin
end;

procedure MouseC.Wait;
begin
   KeyInterval:=500;
   KeyChecked:=0;
   KeyPress:=false;
   Busy:=true;
end;

procedure MouseC.Go;
begin
   Busy:=false;
end;

procedure mouseC.RemoveHighLight;
begin
   if (HighLightType<>0) and (HighLightId<>0) then
   begin
      case HighLightType of
      100  : begin
              Dbase.Lines.line[HighLightId].draw(100);
              Dbase.Lines.line[HighLightId].draw(0);
           end;
      200  : begin
              Dbase.Circles.circle[HighLightId].draw(100);
              Dbase.Circles.Circle[HighLightId].draw(0);
           end;
      800: begin
              Dbase.Areas.Area[HighLightId].draw(100);
              Dbase.Areas.Area[HighLightId].draw(0);
           end;
      900: begin
              Dbase.Dtms.Dtm[HighLightId].draw(100);
              Dbase.Dtms.Dtm[HighLightId].draw(0);
           end;
     1000: begin
              Dbase.Blocks.Block[HighLightId].draw(100);
              Dbase.Blocks.Block[HighLightId].draw(0);
           end;
      end;
   end;
   HighLightType:=0;
end;

procedure mouseC.highlight(mx,my : double; active: Boolean);
var Ptype,Pid,Ppoint : integer;
    NewClose : boolean;
begin
   if not active then exit;

   NewClose:=Dbase.CloseShape(mx,my,Ptype,Pid,Ppoint,ParentType,ParentId);
   if NewClose and (HighLightType=Ptype) and (HighLightId=PId) then exit;  //the same element

   if not NewClose or ((HighLightType<>Ptype) or (HighLightId<>PId)) then
   begin
      //mainform.Memo1.Lines.Add('not close '+i_s(HighLightId,5));
      case HighLightType of
      100  : begin
              Dbase.Lines.line[HighLightId].draw(100);
              Dbase.Lines.line[HighLightId].draw(0);
           end;
      200  : begin
              Dbase.Circles.circle[HighLightId].draw(100);
              Dbase.Circles.Circle[HighLightId].draw(0);
           end;
      800: begin
              Dbase.Areas.Area[HighLightId].draw(100);
              Dbase.Areas.Area[HighLightId].draw(0);
           end;
      900: begin
              Dbase.Dtms.Dtm[HighLightId].draw(100);
              Dbase.Dtms.Dtm[HighLightId].draw(0);
           end;
     1000: with Dbase.Blocks.Block[HighLightId] do begin draw(100); draw(0); end;
      end;
      HighLightType:=0;
   end;

   if NewClose then
   begin
      //mainform.Memo1.Lines.Add('close'+i_s(PId,5));
      HighLightType:=Ptype; HighLightId:=Pid;
      case HighLightType of
      100  : begin
              Dbase.Lines.line[HighLightId].draw(0);
              Dbase.Lines.line[HighLightId].draw(100);
           end;
      200  : begin
              Dbase.Circles.circle[HighLightId].draw(0);
              Dbase.Circles.Circle[HighLightId].draw(100);
           end;
      800: begin
              Dbase.Areas.Area[HighLightId].draw(0);
              Dbase.Areas.Area[HighLightId].draw(100);
           end;
      900: begin
              Dbase.Dtms.Dtm[HighLightId].draw(0);
              Dbase.Dtms.Dtm[HighLightId].draw(100);
           end;
     1000: with Dbase.Blocks.Block[HighLightId] do begin draw(0); draw(100); end;
      end;
      mainform.Memo1.Lines.Add(i_s(ptype,5));
   end;
end;

procedure MouseC.MoveSnap;
begin
   move(snap.x,snap.y);
end;

procedure MouseC.Move(mx,my : double);
var pt : tpoint;
    xcrt,ycrt : integer;
begin
   x:=mx; y:=my;
   wind.world_screen(mx,my,xcrt,ycrt);
   pt := Mainform.pbox.ClientToScreen(point(xcrt,ycrt));
   SetCursorPos(pt.x, pt.y) ;
end;

Procedure MouseC.AddBase(nom : integer; mx,my : double);
begin
   Base[nom].x:=mx;
   Base[nom].y:=my;
end;

procedure MouseC.Clean(ButtonDown:boolean; Mmode : Action_Type; MaySnap : boolean; SourceORdestination:integer=2);
begin

   if MMode=Neutral then
   begin
      Actions.Stop(true);

      //if Mouse.Mode=-1 then resetButtons;  //first, only exit function, If no function, reset buttons
      if Clicked=0 then
         resetButtons
      else
         Mmode:=Mouse.Mode;
   end;

   if Snapped then Snap.grip(old);    //erase last snap point
   Snapped:=false;
   Clicked:=0;

   SnapOk:=0;
   if MaySnap then SnapOk:=SourceORdestination;   //1=source 2=destination

   if not ButtonDown then Mmode:=Neutral;   // Neutral

   Mouse.Mode:=Mmode;
   Parentid:=0;

   case Mouse.Mode of
   CadNodePlus : begin
                 SnapOk:=1;            //override snap mode back to source
                 Snap.grip(old);
                 end;
   end;
end;



end.
