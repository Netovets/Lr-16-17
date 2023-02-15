type
  s = record
    count : integer;
    f : array [1..100] of integer;
  end;    
procedure trek(var list : s);
begin
  list.count := 0;
end; 
procedure addlist(n : integer; var list : s);
begin
  inc(list.count);
  list.f[list.count] := n;
end; 
procedure outlist(i : integer; list : s);
begin
  write(list.f[i]:3);
end;
var
  a : s;
  i : integer;
begin
  trek(a);
  randomize;
  for i := 1 to 10 do
    addlist(random(100), a);
  for i := 1 to 10 do
    outlist(i, a);
  writeLn;
  for i := 1 to 10 do
    if not odd(a.f[i]) then
      outlist(i, a);
end.