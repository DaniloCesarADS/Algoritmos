program Aula06Ex05;

uses
  crt;

var
  n: integer;
  l: integer;
  c: integer;
  e: integer;
  d: integer;
begin
  Write('Digite o valor de n: ');
  readln(n);
  if (n mod 2 = 0) then
    writeln('Tem que ser impar!')
  else
  if (n < 3) or (n > 19) then
    writeln('Tem que ser entre 3 e 19!')
  else
  begin
    // primeira forma
    for l := 1 to n do
    begin
      if (l = 1) or (l = n) then
        for c := 1 to n do
          Write('#')
      else
      begin
        Write('#');
        for c := 1 to n - 2 do
          Write(' ');
        Write('#');
      end;
      writeln();
    end;
    readkey;
    // segunda forma
    for l := 1 to n do
    begin
      if (l = 1) or (l = n) then
      begin
        Write(' ');
        for c := 1 to n - 2 do
          Write('#');
      end
      else
      begin
        Write('#');
        for c := 1 to n - 2 do
          Write(' ');
        Write('#');
      end;
      writeln();
    end;
    readkey;
    // terceira forma
    for l := 1 to n do
    begin
      for c := 1 to l do
        Write('#');
      writeln();
    end;
    readkey;
    // quarta forma
    for l := 1 to n do
    begin
      for c := 1 to n - l do
        Write(' ');
      for c := 1 to l do
        Write('#');
      writeln();
    end;
    readkey;
    writeln();
    // quinta forma
    for l := 1 to n do
    begin
      for c := 1 to l - 1 do
        Write(' ');
      for c := 1 to n - l + 1 do
        Write('#');
      writeln();
    end;
    readkey;
    // sexta forma
    for l := 1 to n do
    begin
      if (l = (n div 2) + 1) then
        for c := 1 to n do
           write('#')
      else
        for c := 1 to n do
        begin
          if (c = (n div 2) + 1) then
            Write('#')
          else
            Write(' ');
        end;
      writeln();
    end;
    readkey;
    // setima forma
    e := (n div 2) + 1;
    d := e;
    for l := 1 to n do
    begin
      for c := 1 to n do
      begin
        if (c = e) or (c = d) then
           write('#')
        else
           write(' ');
      end;
      if (l < (n div 2) + 1) then
      begin
        e:=e-1;
        d:=d+1;
      end
      else
      begin
        e:=e+1;
        d:=d-1;
      end;
      writeln();
    end;
    readkey;
  end;
end.
