program square;

uses Crt;

procedure writeSquare(x, y, size: integer; c: char);
var i, j: integer;
begin
  if size > 0 then begin
    for i := 0 to size - 1 do
      for j:= 0 to size - 1 do begin
        gotoXY(x + i, y + j);
        write(c);
      end;
    if c = '+' then
      c := 'o'
    else
      c := '+';
    writeSquare(x + 1, y + 1, size - 2, c);
  end;
end;

var size: integer;
begin
  readln(size);
  ClrScr;
  writeSquare(1, 1, size, '+');
  gotoXY(1,size + 1);
end.
