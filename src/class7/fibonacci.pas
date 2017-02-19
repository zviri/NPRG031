program fibonacci;

function fibonacci(n: integer): integer;
begin
  if n = 0 then
    fibonacci := 0
  else if n = 1 then
    fibonacci := 1
  else
    fibonacci := fibonacci(n - 1) + fibonacci(n - 2);
end;

var num: integer;
begin
  readln(num);
  writeln(fibonacci(num));
end.
