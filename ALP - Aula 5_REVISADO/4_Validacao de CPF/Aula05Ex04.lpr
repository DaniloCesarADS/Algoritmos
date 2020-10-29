program Aula05Ex04;
uses crt;
var cpf   : string; // numero do cpf
    dd    : string; // digitos do cpf digitados
    dc    : string; // digitos do cpf calculados
    d1    : integer;
    d2    : integer;
    d3    : integer;
    d4    : integer;
    d5    : integer;
    d6    : integer;
    d7    : integer;
    d8    : integer;
    d9    : integer;
    d10   : integer;
    d11   : integer;
    erro  : integer;
    soma  : integer;
    resto : integer;
    aux1  : string;
    aux2  : string;
begin
  write('Digite o cpf: ');
  readln(cpf);
  dd := copy(cpf,10,2);
  val(cpf[1],d1,erro);
  val(cpf[2],d2,erro);
  val(cpf[3],d3,erro);
  val(cpf[4],d4,erro);
  val(cpf[5],d5,erro);
  val(cpf[6],d6,erro);
  val(cpf[7],d7,erro);
  val(cpf[8],d8,erro);
  val(cpf[9],d9,erro);
  soma := (d1*10) + (d2*9) + (d3*8) +
          (d4*7)  + (d5*6) + (d6*5) +
          (d7*4)  + (d8*3) + (d9*2);
  resto := soma mod 11;
  if(resto < 2) then
    d10 := 0
  else
    d10 := 11 - resto;
  soma := (d1*11) + (d2*10) + (d3*9) +
          (d4*8)  + (d5*7)  + (d6*6) +
          (d7*5)  + (d8*4)  + (d9*3) + (d10*2);
  resto := soma mod 11;
  if(resto < 2) then
    d11 := 0
  else
    d11 := 11 - resto;
  str(d10, aux1);
  str(d11, aux2);
  dc := aux1 + aux2;
  if(dd = dc) then
    writeln('CPF valido!')
  else
    writeln('CPF invalido!');
  readkey;
end.

