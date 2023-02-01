procedure github (s : string; d, f : integer);
begin
  writeln(s);
  if d < f then
    github(s, d + 1, f);
end;
var
  d : integer;
  begin
    github('Привет рекурсия', 1, 5);
  end.