procedure github(s : integer);
begin
  if s >= 1 then
  begin
    write( s, ' ');
    github(s - 2)
    end;
end;
begin
  github(25)
end.