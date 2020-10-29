program Aula06Ex04;
uses crt;
var i : integer;
    n : integer;
begin
  for n:=1 to 10 do
  begin
      for i:=0 to 10 do
         writeln(n, ' x ', i, ' = ', (n*i));
      writeln();
      readkey;
  end;
end.

