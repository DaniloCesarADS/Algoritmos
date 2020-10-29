program mediavariosnumerospositivos;

uses crt;

var n      :       integer;
    soma   :       integer;
    media  :       real;
    cont   :       integer;
    nmaior :       integer;
    nmenor :       integer;
begin
  n := 0;
  nmenor := n;
  cont := 0;
  soma := 0;
  media := 0;
  repeat
    writeln('Digite um numero n');
    readln(n);
    if (n > nmenor) then
       nmaior := n;
    if (n < nmaior) and (n > 0) then
       nmenor := n;
    soma := soma + n;
    cont := cont + 1;
  until (n < 0);
  writeln('negativo nao pode');
  cont := cont - 1;
  soma := soma - n;
  media := soma / cont;
  writeln('media vale: ',media:0:2);
  writeln('O maior num da seq vale ',nmaior,' e o menor vale ',nmenor);
  readkey;
end.

