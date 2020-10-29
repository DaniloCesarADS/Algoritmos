program Aula05Ex03;
uses crt;
var frase : string;
begin
  writeln('Digite uma frase em minusculas: ');
  readln(frase);
  frase[1] := upcase(frase[1]);
  writeln(frase);
  readkey;
end.

