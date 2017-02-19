program decompose;

Uses sysutils; { kvoli funkcii IntToStr() }

procedure decompose(n: integer; decomposition: string);
var i: integer;
    s: string;
begin
  if n = 0 then
    writeln(decomposition)
  else begin
    for i := 1 to n do begin
      if length(decomposition) = 0 then
        s := IntToStr(i)
      else
        s := decomposition + ' + ' + IntToStr(i);
      decompose(n - i, s);
    end;
  end;
end;

var num: integer;
begin
  readln(num);
  decompose(num, '');
end.
