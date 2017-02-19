program test3;

var x,y : integer;

begin
  x:=1;
  y:=2;
  if (x > 0 and 0 < y) then
    write('foo 1')
  else
    write('foo 2');
end.
