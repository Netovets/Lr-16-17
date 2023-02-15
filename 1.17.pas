const
  al = 'абвгдеёжзийклмнопрстуфхцчшщъыьэюя';
type
  z = array of integer;
var
  i, j, k, l, n, count: Integer;
  s: string;
  freq: z;
begin
  writeln('Введите слово или текст');
  readln(s);
  n := length(s);
  setlength(freq, 50);
  for i := 1 to n do
  begin
    j := pos(s[i], al) - 1;
    if j >= 0 then 
      freq[j] := freq[j] + 1;
  end;
  count := 0;
  for i := 0 to 25 do
  begin
    if freq[i] > 0 then
    begin
      writeLn('Буква ', al[i + 1], ' встречается ', freq[i], ' раз.');
      inc(count);
    end;
  end;
  writeLn('Количество различных слов: ', count);

end.