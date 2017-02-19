program tail_factorial;

function tailFactorial(n, accumulator: integer): integer;
begin
  if n = 1 then
    tailFactorial := accumulator
  else
    tailFactorial := tailFactorial(n - 1, accumulator * n);
end;

var num: integer;
begin
  readln(num);
  writeln(tailFactorial(num, 1));
end.
