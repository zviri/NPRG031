program tail_recursion;

function recursiveSum(n: integer): integer;
begin
  if n = 0 then
    recursiveSum := n
  else
    recursiveSum := n + recursiveSum(n - 1);
end;

function tailRecursiveSum(n, sum_accumulator: integer): integer;
begin
  if n = 0 then
    tailRecursiveSum := sum_accumulator
  else
    tailRecursiveSum := tailRecursiveSum(n - 1, sum_accumulator + n);
end;

var num: integer;
begin
  readln(num);
  writeln(recursiveSum(num));
  writeln(tailRecursiveSum(num, 0));
end.
