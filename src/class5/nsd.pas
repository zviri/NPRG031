program NSD1;

var a,b,pom : integer;
begin
  read(a,b);
  while (a <> b) do
    begin
      if (a < b) then
        begin
          pom := a;
          a := b;
          b := pom;
        end;
      a := a-b;
    end;
  writeln(a);
end.
