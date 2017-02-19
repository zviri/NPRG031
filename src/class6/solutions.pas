program solutions;


var znak : char;


function isDigit(c: char): boolean;
begin
  isDigit := (c >= '0') and (c <= '9');
  { ekvivalentne mozeme podmienku napisat ako (ord(c) >= ord('0')) and (ord(c) <= ord('9')) }
end;

function toUpperCase(c: char): char;
begin
  if (c >= 'a') and (c <= 'z') then
    toUpperCase := chr(ord(c) - (ord ('a') - ord('A')))
  else
    toUpperCase := c;
end;

function toInt(s: string): integer;
var i: integer;
begin
  i := 1;
  toInt := 0;
  while (i <= length(s)) and isDigit(s[i]) do begin
    toInt := toInt * 10 + ord(s[i]) - ord('0');
    inc(i);
  end;
  if i <> length(s) + 1 then
    toInt := -1;
end;

function dec2bin(num: integer): string;
var rem: integer;
begin
  if num = 0 then begin
    dec2bin := '0';
  end else begin
    dec2bin := '';
    while num > 0 do begin
      rem := num mod 2;
      dec2bin := chr(ord('0') + rem) + dec2bin;
      num := num div 2;
    end;
  end;
end;

begin
  writeln(dec2bin(0));
  writeln(dec2bin(123));
  writeln(dec2bin(53));
  writeln(dec2bin(124));
  writeln(dec2bin(1));
  writeln(dec2bin(7));
end.
