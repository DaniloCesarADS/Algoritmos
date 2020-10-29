program Aula05Ex01;
uses crt;
var usuario : string;
    senha : string;
begin
  write('Digite o nome do usuario: ');
  readln(usuario);
  write('Digite a senha: ');
  readln(senha);
  if(usuario = 'ronaldo') and
    (senha = 'fenomeno') then
     writeln('Seja benvindo!')
  else
     writeln('Sai pra la');
  readkey;
end.

