program stack_example;

const MAX = 100;

type TData = char;

type TStack = record
  items: array[1..MAX] of TData;
  size: 0..MAX;
end;

function isEmpty(var stack: TStack): boolean;
begin
  isEmpty := stack.size = 0;
end;

procedure init(var stack: TStack);
begin
  stack.size := 0;
end;

procedure push(var stack: TStack; item: TData);
begin
  inc(stack.size);
  stack.items[stack.size] := item;
end;

function pop(var stack: TStack): TData;
begin
  dec(stack.size);
  pop := stack.items[stack.size + 1];
end;

function peek(var stack: TStack): TData;
begin
  peek := stack.items[stack.size];
end;

function isOpening(c: char): boolean;
begin
  isOpening := (c = '(') or (c = '[') or ( c = '{');
end;

function isClosing(op, cl: char): boolean;
begin
  isClosing := ((op = '(') and (cl = ')')) or
               ((op = '[') and (cl = ']')) or
               ((op = '{') and (cl = '}'));
end;

function checkParenthesis(str: String): boolean;
var stack: TStack;
    i: integer;
    current: char;
    ret: boolean;
begin
  init(stack);
  ret := True;
  for i := 1 to length(str) do begin
    current := str[i];
    if isOpening(current) then
      push(stack, current)
    else if not isEmpty(stack) and isClosing(peek(stack), current) then
      pop(stack)
    else begin
      ret := False;
      break; { nezaujima ma co ste o breaku poculi na prednaske ^_^ }
    end;
  end;
  checkParenthesis := ret and isEmpty(stack);
end;

var s: string;
begin
  readln(s);
  writeln(checkParenthesis(s));
end.
