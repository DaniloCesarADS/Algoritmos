program Aula10Ex02;
uses crt;
var
  dados : array[1..10, 1.. 4] of integer;
  linha : integer;
begin
  for linha:=1 to 10 do
  begin
    write('Digite o RA: ');
    readln(dados[linha, 1]);
    write('Digite a primeira nota: ');
    readln(dados[linha, 2]);
    write('Digite a segunda nota: ');
    readln(dados[linha, 3]);
    dados[linha, 4] := (dados[linha, 2] + dados[linha, 3]) div 2;
  end;

  for linha := 1 to 10 do
  begin
    writeln('RA: ', dados[linha, 1]);
    writeln('Nota 1: ', dados[linha, 2]);
    writeln('Nota 2: ', dados[linha, 3]);
    writeln('Media: ', dados[linha, 4]);
  end;

  readkey;
end.
