program Aula04Ex04;
uses crt;
var
  opcao : integer;
begin
  writeln('1. Listagem dos dados');
  writeln('2. Insercao de dados');
  writeln('3. Alteracao de dados');
  writeln('4. Exclusao de dados');
  writeln('5. Relatorio geral');
  writeln('6. Sair do sistema');
  write('Digite sua opcao: ');
  readln(opcao);
  case opcao of
     1 : writeln('1. Listagem dos dados');
     2 : writeln('2. Insercao de dados');
     3 : writeln('3. Alteracao de dados');
     4 : writeln('4. Exclusao de dados');
     5 : writeln('5. Relatorio geral');
     6 : writeln('6. Sair do sistema')
     else writeln('Opcao invalida');
  end;
  readkey;
end.

