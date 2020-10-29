program Aula04Ex03;
uses crt;
var num1 : integer;
    num2 : integer;
    res  : integer;
    op   : char;
begin
  write('Digite o primeiro numero: ');
  readln(num1);
  write('Digite o segundo numero: ');
  readln(num2);
  write('Digite a operacao: ');
  readln(op);

  case op of
    '+' : res := num1 + num2;
    '-' : res := num1 - num2;
    '*' : res := num1 * num2;
    '/' : res := num1 div num2
    else writeln('opcao errada, seu jumento');
  end;
  writeln('resultado = ', res);
  readkey;
end.

