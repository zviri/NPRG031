program pracaSoStringami;

var str1, str2: string; {dlzka 255}
    str3: string[10]; {dlzka 10}
    c: char;
    n: integer;
begin
    readln(str1);
    readln(str2);

    writeln('Retazec str1:');
    writeln(str1);

    writeln('Konkatenacia str1 a str2');
    writeln(str1 + str2);

    writeln('Znak na pozicii 1 v retazci str1:');
    c := str1[1];
    writeln(c);

    writeln('Dlzka str1:');
    n:=length(str1);
    writeln(n);
end.
