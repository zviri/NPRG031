program linked_list_example;

type TData = integer;
     TNode = record
      data: TData;
      next: ^TNode;
     end;
    TLinkedList = record
      root: ^TNode;
    end;

procedure init(var list: TLinkedList);
var newNode: ^TNode;
begin
    new(newNode);
    newNode^.data := 0;
    newNode^.next := nil;
    list.root := newNode;
end;

procedure print(var list: TLinkedList);
var iterNode: ^TNode;
begin
  iterNode := list.root;
  while iterNode^.next <> nil do begin
    write(iterNode^.data, ' ');
    iterNode := iterNode^.next;
  end;
end;

procedure append(var list: TLinkedList; val: TData);
var newNode, iterNode: ^TNode;
begin
    new(newNode);
    newNode^.data := 0;
    newNode^.next := nil;

    iterNode := list.root;
    while iterNode^.next <> nil do begin
      iterNode := iterNode^.next;
    end;

    iterNode^.data := val;
    iterNode^.next := newNode;
end;

procedure prepend(var list: TLinkedList; val: TData);
begin

end;

procedure remove(var list: TLinkedList; val: TData);
begin

end;

procedure member(var list: TLinkedList; val: TData);
begin

end;

procedure length(var list: TLinkedList; val: TData);
begin

end;

procedure concat(var list1, list2: TLinkedList);
begin

end;

procedure insertSorted(var list1: TLinkedList; val: TData);
begin

end;

var list: TLinkedList;

begin
  init(list);
  append(list, 3);
  append(list, 2);
  append(list, 1);


  print(list);
  writeln('');
end.
