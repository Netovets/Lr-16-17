procedure fics(s, d, f :integer);
begin
  if s = 0 then
      exit;
    writeln(d);
    fics(s - 1, d + f, d);
end;
begin
  fics(readinteger, 0,1);
end.