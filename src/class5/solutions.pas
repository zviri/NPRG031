program faktorial;

type
    tArray = array[1..1000] of integer;


var cislo : integer;
    arr: tArray;


function faktorial(n: integer): integer;
var i: integer;
begin
  faktorial := 1;
  for i:=1 to n do
    faktorial := faktorial * i;
end;

function fibonacci(n: integer): integer;
var i, f0, f1, tmp: integer;
begin
  if n >= 1 then begin
    f0 := 0;
    f1 := 1;
    for i := 2 to n do begin
      tmp := f1;
      f1 := f0 + f1;
      f0 := tmp;
    end;
    fibonacci := f1;
  end else
    fibonacci := 0;
end;

procedure swap(var v1, v2: integer);
var tmp: integer;
begin
  tmp := v1;
  v1 := v2;
  v2 := tmp;
end;

function nsd(a, b: integer): integer;
begin
  while (a <> b) do begin
      if (a < b) then begin
          swap(a, b);
        end;
      a := a - b;
    end;
  nsd := a;
end;

function second_smallest(arr: tArray; len: integer): integer;
var first, second, i: integer;
begin
  first := arr[1];
  second := arr[2];
  if (first > second) then
    swap(first, second);

  for i := 3 to len do begin
		if (arr[i] < first) then begin
			second := first;
			first := arr[i];
		end else begin
			if (arr[i] < second) then
				second := arr[i];
		end;
	end;
  second_smallest := second
end;

function min(v1, v2: integer): integer;
begin
    if v1 < v2 then
      min := v1
    else
      min := v2;
end;

function kth_smallest(arr: tArray; len, k: integer): integer;
var smallest: tArray;
    i, j: integer;
begin
  for i := 1 to len do begin
		j := min(i, k + 1) - 1;
		while (j > 0) and (smallest[j] > arr[i]) do begin
			smallest[j + 1] := smallest[j];
			dec(j);
		end;
		inc(j);
		if (j <= min(i, k)) then
			smallest[j] := arr[i];
	end;

	kth_smallest := smallest[k];
end;


begin
  arr[1] := 25;
  arr[2] := 24;
  arr[3] := 43;
  arr[4] := 41;
  arr[5] := 6;
  arr[6] := 60;

  writeln(kth_smallest(arr, 6, 5));
end.
