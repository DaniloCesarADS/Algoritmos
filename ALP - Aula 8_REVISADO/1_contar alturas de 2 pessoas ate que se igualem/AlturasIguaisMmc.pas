program AlturasIguaisMmc;

uses crt;

var Hfulano      :      integer;           //Alturas e crescimentos em cm
    Hciclano     :      integer;
    GrowFu       :      integer;
    GrowCi       :      integer;
    Cont         :      integer;
begin
  //Atualizar os valores de H até que hfulano = hciclano.
  writeln('Inicio: Digite qualquer tecla para continuar');
  readkey;
  Cont := 0;
  GrowFu := 2;
  GrowCi := 3;
  Hfulano := 150;
  Hciclano := 110;
  repeat
    Hfulano := Hfulano + GrowFu;
    Hciclano := Hciclano + GrowCi;
    Cont := Cont + 1;
    writeln(Hfulano,' ',Hciclano,' ',Cont);
    if (Cont = 20) then
       readkey;
  until (Hfulano = Hciclano);
  writeln('Foram necessarios ',Cont,' anos para as alturas se igualarem');
  readkey;
end.

