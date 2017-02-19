program binary_search;

type
    tArray = array[1..1000] of integer;

function binarySearch(arr: tArray;    { vstupne pole}
                      element,        { hladany prvok}
                      left,           { lava hranica intervalu }
                      right: integer  { prava hranica intervalu }
                      ): boolean;
var half: integer;
begin
  if right < left then
    binarySearch := false
  else begin
    half := (left + right) div 2;
    if arr[half] = element then
      binarySearch := true
    else if element < arr[half] then
      binarySearch := binarySearch(arr, element, left, half - 1)
    else
      binarySearch := binarySearch(arr, element, half + 1, right);
  end;
end;

var arr: tArray;

begin
  arr[1] := 1;
  arr[2] := 4;
  arr[3] := 6;
  arr[4] := 10;
  arr[5] := 12;
  writeln(binarySearch(arr, 1, 1, 5));
  writeln(binarySearch(arr, 4, 1, 5));
  writeln(binarySearch(arr, 6, 1, 5));
  writeln(binarySearch(arr, 10, 1, 5));
  writeln(binarySearch(arr, 12, 1, 5));

  writeln(binarySearch(arr, 0, 1, 5));
  writeln(binarySearch(arr, 5, 1, 5));
  writeln(binarySearch(arr, 122, 1, 5));
end.
