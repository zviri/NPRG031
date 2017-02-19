program bst_example;

type TData = integer;
     TNode = record
      data: TData;
      left: ^TNode;
      right: ^TNode;
     end;
    TBinaryTree = record
      root: ^TNode;
    end;

{ zinicializuje novy strom }
procedure init(var tree: TBinaryTree);
begin

end;

{ vykresli strom v peknom formate, napr: }
{         2
         / \
        /   \
       /     \
      /       \
     7       5
    / \       \
   /   \       \
  2   6       9
 / \         /
5 8         4  
}
procedure pretty_print(var tree: TBinaryTree);
begin

end;

procedure insert(var tree: TBinaryTree; val: TData);
begin

end;

function member(var tree: TBinaryTree; val: TData): boolean;
begin

end;

procedure remove(var tree: TBinaryTree; val: TData);
begin

end;

function size(var tree: TBinaryTree): integer;
begin

end;

procedure delete(var tree: TBinaryTree);
begin

end;

procedure print_preorder(var tree: TBinaryTree);
begin

end;

procedure print_inorder(var tree: TBinaryTree);
begin

end;

procedure print_post(var tree: TBinaryTree);
begin

end;


var tree: TBinaryTree;
    tmp: ^integer;
begin
  new(tmp);
  new(tmp);
  dispose(tmp);
  dispose(tmp);
end.
