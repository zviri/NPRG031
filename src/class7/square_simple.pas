program square_simple;

uses Crt;

var size, x, y: integer;
begin
  readln(size);
  clrScr; {vycistime konzolu }

  for x := 1 to size do
    for y :=1 to size do begin
      gotoXY(x, y); {pred vypisom sa posunieme sa na poziciu x,y}
      write('*');
    end;

  { presunieme kurzor na koniec,
   aby neprekazal na vyslednom obrazku}
  gotoXY(1, size + 1);
end.
