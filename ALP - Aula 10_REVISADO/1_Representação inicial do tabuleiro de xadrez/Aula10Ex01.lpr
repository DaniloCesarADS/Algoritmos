program Aula10Ex01;
uses crt;
var tabuleiro : array[1..8,1..8] of integer;
    x : integer;
    y : integer;
    b : integer;
begin
    // montar casas
    for x:=1 to 8 do
    begin
        if (x mod 2 = 0)
        then
            b:=1
        else
            b:=-1;
        for y:=1 to 8 do
        begin
            tabuleiro[x,y] := b;
            b:=b * -1;
        end;
    end;

    // torres
    tabuleiro[1,1] := 16;
    tabuleiro[1,8] := 16;
    tabuleiro[8,1] :=-16;
    tabuleiro[8,8] :=-16;

    // cavalos
    tabuleiro[1,2] := 4;
    tabuleiro[1,7] := 4;
    tabuleiro[8,2] :=-4;
    tabuleiro[8,7] :=-4;

    // bispo
    tabuleiro[1,3] := 8;
    tabuleiro[1,6] := 8;
    tabuleiro[8,3] :=-8;
    tabuleiro[8,6] :=-8;

    // rainhas
    tabuleiro[1,5] := 32;
    tabuleiro[8,4] :=-32;

    // reis
    tabuleiro[1,4] := 64;
    tabuleiro[8,5] :=-64;

    // peoes
    for y:=1 to 8 do
    begin
        tabuleiro[2,y] := 2;
        tabuleiro[7,y] :=-2;
    end;

    // impressao
    writeln('+---+---+---+---+---+---+---+---+');
    for x:=1 to 8 do
    begin
        write('|');
        for y:=1 to 8 do
            write(tabuleiro[x,y]:3,'|');
        writeln();
        writeln('+---+---+---+---+---+---+---+---+');
    end;
    readkey;
end.
