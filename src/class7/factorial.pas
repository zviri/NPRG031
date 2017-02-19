program factorial;

function factorial(n: integer): integer;
begin
  if n = 0 then
    factorial := 1
  else
    factorial := n * factorial(n - 1);
end;

var num: integer;
begin
  readln(num);
  writeln(factorial(num));
end.
