program tail_fibonacci;

function tailFibonaci(n, prev1, prev2: integer): integer;
begin
  if n = 0 then
    tailFibonaci := prev1
  else
    tailFibonaci := tailFibonaci(n - 1, prev2, prev1 + prev2);
end;

var num: integer;
begin
  readln(num);
  writeln(tailFibonaci(num, 0, 1));
end.
