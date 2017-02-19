program test1;

var a : integer;

begin
  a := 4;
  if (a > 2) then
    writeln('foo 1')
  else
    a := a + 1;
    writeln('foo 2');
end.
