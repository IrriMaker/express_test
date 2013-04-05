unit irrvar2;

interface

uses glount;

const maxpipe=65;

type
   headpipe=record
      name : str40;         {senninger}
      Tipe : str20;         {oPVC}
      Code : str20;         {senn-A100}
      OD,dw,hw  : double;
   end;

   stdpipe = record
      head : headpipe;
      punit,dunit,lunit,funit : integer;
      lll            : array[1..maxpipe] of cadlinetype;        {pen & layer}
      classn,partn   : array[1..maxpipe] of str20;
      ID,Maxp,cost,od,hw,KD   : array[1..maxpipe] of double;
   end;


implementation

end.

