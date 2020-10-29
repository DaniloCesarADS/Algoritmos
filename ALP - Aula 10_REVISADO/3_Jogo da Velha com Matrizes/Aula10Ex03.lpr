program Aula10Ex03;
var
  tabuleiro : array [1..3, 1..3] of char;
  linha : integer;
  coluna : integer;
  novamente : char;
  venceu : char;
  jogadas : integer;
  turno : char;
begin
  novamente := 'S';
  while(novamente = 'S') do
  begin
    // inicialização
    venceu := 'n';
    jogadas := 0;
    turno := 'O';
    for linha:=1 to 3 do
       for coluna :=1 to 3 do
          tabuleiro[linha, coluna]:=' ';

    // jogo
    while(venceu='n') and (jogadas<>9) do
    begin
      for linha:=1 to 3 do
      begin
        for coluna:=1 to 3 do
        begin
           write(' ', tabuleiro[linha, coluna], ' ');
           if(coluna <> 3) then
              write('|');
        end;
        writeln();
        if(linha <> 3) then
           writeln('---+---+---');
      end;
      // entrada de dados
      repeat
         repeat
            write('Digite a linha (1-3): ');
            readln(linha);
            if(linha < 1) or (linha > 3) then
               writeln('Linha invalida');
         until (linha>=1) and (linha <=3);
         repeat
            write('Digite a coluna (1-3): ');
            readln(coluna);
            if(coluna < 1) or (coluna > 3) then
               writeln('Coluna invalida');
         until (coluna>=1) and (coluna <=3);
         if (tabuleiro[linha, coluna] <> ' ') then
            writeln('Joga invalida! Casa ja usada!');
      until tabuleiro[linha, coluna] = ' ';

      // processamento
      tabuleiro[linha, coluna] := turno;
      if(turno='O') then
         turno := 'X'
      else
         turno := 'O';
      jogadas := jogadas + 1;
      if(tabuleiro[1, 1] <> ' ') and
        (tabuleiro[1, 1] = tabuleiro[1, 2]) and
        (tabuleiro[1, 2] = tabuleiro[1, 3]) then
           venceu := tabuleiro[1, 1];
      if(tabuleiro[2, 1] <> ' ') and
        (tabuleiro[2, 1] = tabuleiro[2, 2]) and
        (tabuleiro[2, 2] = tabuleiro[2, 3]) then
           venceu := tabuleiro[2, 1];
      if(tabuleiro[3, 1] <> ' ') and
        (tabuleiro[3, 1] = tabuleiro[3, 2]) and
        (tabuleiro[3, 2] = tabuleiro[3, 3]) then
           venceu := tabuleiro[3, 1];
      if(tabuleiro[1, 1] <> ' ') and
        (tabuleiro[1, 1] = tabuleiro[2, 1]) and
        (tabuleiro[2, 1] = tabuleiro[3, 1]) then
           venceu := tabuleiro[1, 1];
      if(tabuleiro[1, 2] <> ' ') and
        (tabuleiro[1, 2] = tabuleiro[2, 2]) and
        (tabuleiro[2, 2] = tabuleiro[3, 2]) then
           venceu := tabuleiro[1, 2];
      if(tabuleiro[1, 3] <> ' ') and
        (tabuleiro[1, 3] = tabuleiro[2, 3]) and
        (tabuleiro[2, 3] = tabuleiro[3, 3]) then
           venceu := tabuleiro[1, 3];
      if(tabuleiro[1, 1] <> ' ') and
        (tabuleiro[1, 1] = tabuleiro[2, 2]) and
        (tabuleiro[2, 2] = tabuleiro[3, 3]) then
           venceu := tabuleiro[1, 1];
      if(tabuleiro[1, 3] <> ' ') and
        (tabuleiro[1, 3] = tabuleiro[2, 2]) and
        (tabuleiro[2, 2] = tabuleiro[3, 1]) then
           venceu := tabuleiro[1, 3];
    end;
    for linha:=1 to 3 do
      begin
        for coluna:=1 to 3 do
        begin
           write(' ', tabuleiro[linha, coluna], ' ');
           if(coluna <> 3) then
              write('|');
        end;
        writeln();
        if(linha <> 3) then
           writeln('---+---+---');
      end;
    if(venceu = 'n') then
       writeln('Deu velha!')
    else
       writeln(venceu, ' venceu!');

    // verifica se jogador que jogar novamente
    repeat
       write('Deseja jogar novamente (S/N): ');
       readln(novamente);
       novamente := upcase(novamente);
    until (novamente='S') or (novamente ='N');
  end;
end.
