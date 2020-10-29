program Aula04Ex02;
uses crt;
var
  a : integer;
  b : integer;
  c : integer;
  delta : integer;
  x1 : real;
  x2 : real;
begin
  write('Digite o valor de a: ');
  readln(a);
  if(a = 0) then
     writeln('Nao eh equacao do segundo grau!')
  else
    begin
       write('Digite o valor de b: ');
       readln(b);
       write('Digite o valor de c: ');
       readln(c);
       delta := (b * b) - (4 * a * c);
       if(delta < 0) then
          writeln('Nao existem raizes reais')
       else
         begin
            x1 := ((-b) + sqrt(delta)) / (2 * a);
            x2 := ((-b) - sqrt(delta)) / (2 * a);

            writeln('x1 - ', x1:0:2);
            writeln('x2 - ', x2:0:2);
         end;
    end;
  readkey;
end.

