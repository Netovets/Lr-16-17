var
  s : integer;
  function sumto (d : integer) : integer;
  begin
    if d <= 1 then
      d := 1
      else
        d := d + sumto(d - 1);
      sumto := d;
  end;
  begin
    readln(s);
    writeln('sumto = ', sumto(s));
  end.