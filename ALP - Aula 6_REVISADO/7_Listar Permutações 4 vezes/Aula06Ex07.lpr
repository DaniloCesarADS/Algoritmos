program Aula06Ex07;
uses crt;
var d1, d2, d3, d4 : char;
begin
  for d1:='A' to 'C' do
     for d2:='A' to 'C' do
        for d3:='A' to 'C' do
           for d4:='A' to 'C' do
           begin
              writeln(d1, d2, d3, d4);
              delay(100);
           end;
  readkey;
end.

