program Aula04Ex01;
uses crt;
var numero : integer;
begin
  write('Digite um numero: ');
  readln(numero);
  write('O numero ', numero,' eh ');
  if(numero = 0) then
     write('igual a zero')
  else
     if(numero > 0) then
        write('maior que zero')
     else
        write('menor que zero');
  readkey;
end.

