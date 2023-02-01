var
  s, d , f, tre : integer;
  function hub(z, x : integer) : integer;
  var
    oct1 : integer;
    begin
      oct1 := z mod x;
      if oct1 = 0 then
        hub := x
      else
        hub := hub(x, oct1);
    end;
    begin
      writeln('Вводите 3430 и 1365');
      readln(s, d);
      if s < d then
      begin
        f := s;
        s := d;
        d := f
      end;
      tre := hub(s, d);
      writeln(tre);
    end.