unit irrvar0;

interface

uses glount;

type

 stdnode = record
      tipe      : integer;  //1=pump 2=valve  3=emitter  4=fitting  5=reg  6=booster
      series    : str40;
      model     : str40;
      nozzle    : str40;
      cluster   : byte;       {0=part 1=cluster}
      part      : str20;
      patname   : str20;
      color     : integer;
      punit,dunit,funit,lunit : integer;   {pressure diameter flow}
      sprayareafactor         : integer;   {1=radius 2=diameter}
      secloss,Cv,cost,endArc  : double;
      press,radi,flow         : array[1..20] of double;
   end;

    unitsobj=object
        lenunit1,pressunit1,flowunit1,diamunit1 : integer;
        {nom<0 meen gebruik default unit item}
        function len_si(ll:double;nom:integer):double;    {mm werk in meters}
        function press_SI(ll:double;nom:integer):double;   {MM werk in meter water hoogte}
        function flow_SI(ll:double;nom:integer):double;     {MM werk in l/s}
        function diam_SI(ll:double;nom:integer):double;
        function sdr_SI(ll:double;nom:integer):double;    {flow/sec/len = l/s/m}
        function precip_si(ll:double; nom:integer):double;   {mm werk in mm/h}
        function ha_si(ll:double; nom,units:integer):double;   {mm werk in ha}

        function SI_len(ll:double;nom:integer):double;    {mm werk in meters}
        function SI_press(ll:double;nom:integer):double;   {MM werk in meter water hoogte}
        function SI_flow(ll:double;nom:integer):double;     {MM werk in l/s}
        function SI_diam(ll:double;nom:integer):double;
        function SI_sdr(ll:double;nom:integer):double;    {l/s/m = flow/sec/len}
        function si_precip(ll:double;nom:integer):double;
        function si_ha(ll:double;nom,units:integer):double;

        function press(nom:integer):string;
        function flow(nom:integer):string;
        function leng(nom:integer):string;
        function diam(nom:integer):string;
        function velo(nom:integer):string;
        function precip(nom:integer):string;
        function Harea(nom:integer):string;
    end;

var
    units : unitsobj;

implementation

uses form2unt;

{-------user unit to SI unit-----}
function unitsobj.press(nom:integer):string;
begin
   if nom<0 then nom:=pressunit1;
   case nom of
   0 : result:='m';
   1 : result:='ft';
   2 : result:='Bars';
   3 : result:='psi';
   end;
end;
function unitsobj.flow(nom:integer):string;
begin
   if nom=-2 then
   begin
      case flowunit1 of
      0 : nom:=3;        //l/s  >l/h
      1 : nom:=3;        //m3/h > l/h
      2 : nom:=4;        //gpm > gph
      end;
   end;
   if nom<0 then nom:=flowunit1;
   case nom of
   0 : result:='l/s';
   1 : result:='m3/h';
   2 : result:='gpm';
   3 : result:='l/h';
   4 : result:='gph';
   5 : result:='l/m';
   end;
end;
function unitsobj.leng(nom:integer):string;
begin
   if nom<0 then nom:=lenunit1;
   case nom of
   0 : result:='m';
   1 : result:='ft';
   end;
end;
function unitsobj.velo(nom:integer):string;
begin
   result:=leng(nom)+'/sec';
end;

function unitsobj.diam(nom:integer):string;
begin
   if nom<0 then nom:=diamunit1;
   case nom of
   0 : result:='mm';
   1 : result:='inch';
   end;
end;

function unitsobj.precip(nom:integer):string;
begin
   if nom<0 then nom:=flowunit1;
   case nom of
   0,1,3 : result:='mm/h';
   2,4 : result:='inch/h';
   end;
end;

function unitsobj.Harea(nom:integer):string;
begin
   if hem.units=1 then
         result:='ha'
      else
         result:=hem.m2;
end;

function unitsobj.len_si(ll:double;nom:integer):double;    {mm werk in meters}
begin
   if nom<0 then nom:=lenunit1;
   case nom of
   0 : result:=ll;           {meters=meters}
   1 : result:=ll*0.305;     {1 ft =.305 m}
   end;
end;

function unitsobj.press_SI(ll:double;nom:integer):double;   {MM werk in meter water hoogte}
begin
   if nom<0 then nom:=pressunit1;
   case nom of
   0 : result:=ll;                    {meter = meter}
   1 : result:=ll*0.305;              {vt of water .305=meter}
   2 : result:=ll*10;  //*14.5*2.307*0.305;   {bars to psi to vt to meters}
   3 : result:=ll*2.307*0.305;        {Psi (2.307) ft of water (.305) to meters}
   end;
end;
function unitsobj.flow_SI(ll:double;nom:integer):double;     {MM werk in l/s}
begin
   if nom<0 then nom:=flowunit1;
   case nom of
   0 : result:=ll;                  {l/s=l/s}
   1 : result:=ll/0.227/15.852;     {m3/h 264.2 =gpm 0.063 =l/s}
   2 : result:=ll*0.063;            {GPM 0.063 =l/s}
   3 : result:=ll/3600;
   4 : result:=ll*0.063/60;          {GPH}
   5 : result:=ll/60;
   end;
end;
function unitsobj.diam_SI(ll:double;nom:integer):double;
begin
   if nom<0 then nom:=diamunit1;
   case nom of
   0 : result:=ll;                  {mm=mm}
   1 : result:=ll*25.4;             {inch 25.4 = mm}
   end;
end;
function unitsobj.sdr_SI(ll:double;nom:integer):double;    {l/s/m = flow/sec/len}
begin
   result:=ll/len_SI(1,-1)*flow_SI(1,-1);
end;
function unitsobj.precip_SI(ll:double;nom:integer):double;
begin
   if nom<0 then nom:=flowunit1;
   case nom of
   0,1,3,5 : result:=ll;                  {mm=mm}
   2,4     : result:=ll*25.4;             {inch 25.4 = mm}
   end;
end;
function unitsobj.HA_SI(ll:double;nom,units:integer):double;
begin
   if nom<0 then nom:=units;
   result:=ll;
   if nom<>1 then result:=ll*0.405;     {0.405ha = 1acres}
end;


function unitsobj.SI_len(ll:double;nom:integer):double;    {mm werk in meters}
begin
   if nom<0 then nom:=lenunit1;
   case nom of
   0 : result:=ll;           {meters=meters}
   1 : result:=ll/0.305;     {1 ft =.305 m}
   end;
end;
function unitsobj.SI_press(ll:double;nom:integer):double;   {MM werk in meter water hoogte}
begin
   if nom<0 then nom:=pressunit1;
   case nom of
   0 : result:=ll;                    {meter = meter}
   1 : result:=ll/0.305;              {vt of water .305=meter}
   2 : result:=ll/10; // /14.5/2.307/0.305;   {bars to psi to vt to meters}
   3 : result:=ll/2.307/0.305;        {Psi (2.307) ft of water (.305) to meters}
   end;
end;
function unitsobj.SI_flow(ll:double;nom:integer):double;     {MM werk in l/s}
begin
   if nom=-2 then
   begin
      case flowunit1 of
      0 : nom:=3;        //l/s  >l/h
      1 : nom:=3;        //m3/h > l/h
      2 : nom:=4;        //gpm > gph
      end;
   end;
   if nom<0 then nom:=flowunit1;
   case nom of
   0 : result:=ll;                  {l/s=l/s}
   1 : result:=ll*15.852*0.227;      {m3/h 264.2 =gpm 0.063 =l/s}
   2 : result:=ll/0.063;            {GPM 0.063 =l/s}
   3 : result:=ll*3600;
   4 : result:=ll/0.063*60;         {gph}
   5 : result:=ll*60;
   end;
end;
function unitsobj.SI_diam(ll:double;nom:integer):double;
begin
   if nom<0 then nom:=diamunit1;
   case nom of
   0 : result:=ll;                  {mm=mm}
   1 : result:=ll/25.4;             {inch 25.4 = mm}
   end;
end;
function unitsobj.SI_sdr(ll:double;nom:integer):double;    {l/s/m = flow/sec/len}
begin
   result:=ll/si_len(1,-1)*si_flow(1,-1);
end;
function unitsobj.SI_precip(ll:double;nom:integer):double;
begin
   if nom<0 then nom:=flowunit1;
   case nom of
   0,1,3,5 : result:=ll;                  {mm=mm}
   2,4     : result:=ll/25.4;             {inch 25.4 = mm}
   end;
end;
function unitsobj.SI_ha(ll:double;nom,units:integer):double;
begin
   if nom<0 then nom:=units;
   result:=ll;
   if nom<>1 then result:=ll/0.405;     {0.405 acres=1ha}
end;
{===================}


end.
