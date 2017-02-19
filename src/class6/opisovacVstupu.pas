program opisovacVstupu;

var c : char;

begin
  while not(EOF) do { Nacitame kym nenarazime na koniec vstupu, na klavesnici sa zada ako Ctrl + Z}
    begin
      read(c);
      write(c);
    end;
end.
