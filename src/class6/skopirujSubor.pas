program skopirujSubor;

var c:char;
    f:text;
    g:text;

begin
    assign(f,'in.txt');
    assign(g,'out.txt');
    reset( f );
    rewrite( g );

    while not EOF(f) do
        begin
            read(f,c);
            write(g, c);
        end;
    close(f);
    close(g);
end.
