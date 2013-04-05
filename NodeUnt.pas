unit NodeUnt;

interface

uses CircleUnt,Glount,Vcl.Graphics,system.types,system.sysUtils, PointUnt,
  cxLookAndFeels, cxLookAndFeelPainters, cxStyles, cxEdit, cxTextEdit, cxVGrid,
  cxInplaceContainer, dxDockControl, dxDockPanel, Vcl.ExtCtrls, dxBar, cxClasses;

const
   NodeTypeName : array[0..5] of string = ('Pump','Sprinkler','Valve','Fitting','Regs','Booster');

type
   NodeType = (pump,sprinkler,valve,fitting,regs,booster);

  (* pkoppel=record
      pnom : integer;
      flow1,flow2,fric : double;
      pres : double;    {net vir table record}
   end;*)


   NodeC=Class(CircC)
   Published
      function get_property_value(_type:string):string;  Override;
      procedure set_property_value(_property : string; _value : TcxCustomEditorRowProperties);  Override;

      function NodeTypeToString : string;

   Public
      Unumber    : string[10];  {user number/name}
      number     : integer;     {number in database}
      nblok      : integer;     {behoort aan blok No.}

      series     : str30;      {20 series}
      model      : str30;      {2023-1-1/2"M}        //40
      nozzle     : str30;      {name  press etc}     //40

      part1      : string[15];
      part2      : string[15];
      part3      : string[15];
      part4      : string[15];
      tipeT      : string[8];    {Full Half Quarter}   //3/2005 now holds LORG
      patname    : string[20];   //20    {pattern name}

   //   id1,id2    : integer;       {identify}
      soort      : NodeType;     {1=pump 2=sprink 3=valve 4=fittin 5=other  6=booster pump}
                                   //for booster 6, if outflowdes>0 then pressure is added otherwise press = abs
                                   //old mir format (< ver13) type5 with negative press was = outflowdes=0 =absolute

      PressAvail,FlowAvail     : double;  {press and flow available at node entrance}
 //     fric           : double;  {friction in all the pipes below}
      OutflowDes     : double;  {consumption at node >>  designed for this outflow}
      PressDes       : double;  {desired pressure >> design for this pressure}
      OutflowAct     : double;  {uitvloei met press beskikbaar}
      PressAct       : double;  {calculated pressure}
 //     pipes          : integer;
 //     PipesConnected  : array[1..4] of pkoppel;  {maks 4 pype / node}

      Open_Shift,Demand_Shift : byte;  //open and demand shift number

   //   marc       : circC;         //cadarctype;   {cenx,ceny,starta,enda,radius,pen,ltipe,layer}
   //   z          : double;       {Z}
   //   width      : double;       {wydte vir reghoek spreier}
      Loss       : double;       {Wrywings verliese}
  //    Precip     : double;       {water lewering /uur}

      Open,Demand : boolean;   {valve open na onder en in shift 0, se of blok aan is}
                               {demand waarde is outflowdes}
   end;


implementation

uses form2unt;

function NodeC.NodeTypeToString : string;
begin

   case soort of
      pump : result := NodeTypeName[0];
      sprinkler : result := NodeTypeName[1];

   end;

end;

// Show Node info
function NodeC.get_property_value(_type:string):string;
var value : string;
begin

   if _type = 'Title' then
      value := NodeTypeToString;

   if _type = 'Pressure_' then
      value := rtostr(PressAct,10,2);

   if _type = 'Flow_' then
      value := rtostr(OutflowAct,10,2);

   if _type = 'Pressure' then
      value := rtostr(PressDes,10,2);

   if _type = 'Flow' then
      value := rtostr(OutflowDes,10,2);

  { if _type = 'Pen Width' then
      value := rtostr(self.width,10,2); // get_pen_width;

   if _type = 'Pen Color' then
      value := inttostr(self.pen); // get_pen_color;

   if _type = 'Layer' then
      value := layer;  }

   result := value;

end;

// Change node's property value
procedure NodeC.set_property_value(_property : string; _value : TcxCustomEditorRowProperties);
begin

   if _property = 'Pressure_' then
      PressAct := _value.values[0];

   if _property = 'Flow_' then
      OutflowAct := _value.values[0];

   if _property = 'Pressure' then
      PressDes := _value.values[0];

   if _property = 'Flow' then
      OutflowDes := _value.values[0];

end;


end.

