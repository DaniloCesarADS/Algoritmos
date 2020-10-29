program Aula06Ex06;
uses crt;
var i : integer;
    n : integer;
    f : integer;
begin
  write('Digite o valor de n: ');
  readln(n);
  f:=1;
  for i:=n downto 1 do
     f:= f * i;
  writeln(n, '! = ', f);
  readkey;
end.

