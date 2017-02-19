program predavanie_parametrov;


procedure parameter_hodnotou(parameter: integer);
begin
  parameter:=20;
end;

procedure parameter_odkazom(var parameter: integer);
begin
  parameter:=20;
end;


var v: integer;
begin
  v:=10;

  parameter_hodnotou(v);
  writeln(v);

  parameter_odkazom(v);
  writeln(v);
end.
