program procedures_and_functions;

{Procedura nemá návratovú hodnotu}
procedure procedura(parameter: integer);
var  a : byte;
begin
  a:=10;
  writeln(a);
  writeln(parameter)
end;

{Funkcia musí vrátiť nejakú hodnotu}
function funkcia(parameter: integer): integer;
begin
  funkcia:=parameter * parameter;
end;

var tmp: integer;
begin
  writeln('Volame proceduru...');
  procedura(20);

  writeln('Volame funkciu...');
  tmp:=funkcia(9);
  writeln(tmp)
end.
