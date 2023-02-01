var
  s, d : integer;
  function github (z, x : integer): integer;
  var 
    s : real;
  begin
    if x = 0 then
      github := 1
      else
        github := github (z, x - 1)* z;
  end;
  begin
    writeln('Введите число');
    readln(s);
    writeln('Введите степень');
    readln(d);
    writeln(github(s, d));
  end.