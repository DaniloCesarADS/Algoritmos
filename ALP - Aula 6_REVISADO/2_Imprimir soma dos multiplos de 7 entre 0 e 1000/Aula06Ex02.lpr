program Aula06Ex02;
uses crt;
var i : integer;
    soma : integer;
begin
  for i:=1 to 1000 do
     if(i mod 7 = 0) then
        soma := soma + i;
  writeln(soma);
  readkey;
end.

