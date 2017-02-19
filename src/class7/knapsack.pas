program knapsack;

Uses sysutils; { kvoli funkcii IntToStr() }

type
    tArray = array[1..1000] of integer;

procedure findSolutions(coins: tArray;
                        numCoins, targetSum, idx, sum: integer;
                        solution: String);
begin
  if idx <= numCoins then begin
    { prvok na pozici idx pridam do riesenia }
    findSolutions(coins, numCoins, targetSum, idx + 1,
                  sum + coins[idx], solution + IntToStr(idx) + ' ');

    { prvok na pozici idx NEpridam do riesenia }
    findSolutions(coins, numCoins,
                  targetSum, idx + 1, sum, solution);
  end else begin
    if sum = targetSum then
      writeln(solution);
  end;
end;

var coins: tArray;
begin
  coins[1] := 1;
  coins[2] := 2;
  coins[3] := 2;
  coins[4] := 1;
  coins[5] := 2;
  findSolutions(coins, 5, 4, 1, 0, '');
end.
