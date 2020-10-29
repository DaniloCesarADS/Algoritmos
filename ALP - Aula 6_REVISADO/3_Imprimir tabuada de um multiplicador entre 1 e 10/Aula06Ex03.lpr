program Aula06Ex03;
uses crt;
var i : integer;
    n : integer;
begin
  write('Digite o valor de n (0 < n < 11): ');
  readln(n);
  if(n < 1) or (n > 10) then
     writeln('Digita certo seu lerdo!')
  else
      for i:=0 to 10 do
         writeln(n, ' x ', i, ' = ', (n*i));
  readkey;
end.

