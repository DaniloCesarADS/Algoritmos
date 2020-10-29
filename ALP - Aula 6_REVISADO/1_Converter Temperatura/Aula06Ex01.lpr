program Aula06Ex01;
uses crt;
var i : integer;
    f : real;
begin
  for i:=0 to 100 do
  begin
      f := (9/5 * i) + 32;
      writeln(i, ' - ', f:0:2);
      if(i mod 20 = 0) then readkey;
  end;
end.

