program recursion_basic;


procedure stars(n: integer);
begin
  if n = 0 then begin
    ;  { ukoncovacia podmienka rekurzie }
  end else begin
    write('*');
    stars(n - 1);   { rekurzivne volanie}
  end;
end;

var num, i: integer;
begin
  readln(num);

  { vypisanie num hviezdiciek cyklom }
  for i := 1 to num do
    write('*');
  writeln;

  { vypisanie num hviezdiciek rekurziou}
  stars(num);
  writeln;
end.
