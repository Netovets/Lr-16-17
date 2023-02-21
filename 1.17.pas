const
 n = 10;
 
var
 mas1: array[1..n] of string;
 mas2: array[1..n] of integer;
 i, j, kur, trek : integer;
 
begin
 writeln('Введите ', n, ' слов: ');
 
 for i:= 1 to n do
  readln (mas1[i]);
    
 for i := 1 to n do
 begin
  kur := 0;
  for j := 1 to n do
   if mas1[i] = mas1[j] then
    kur := kur + 1;
  mas2[i] := kur;
 end;

trek := n;

for i := 1 to n - 1 do
 for j := i + 1 to n do
  if mas1[i] = mas1[j] then
   trek := trek - 1;
   
writeln('Частотный словарь:');
for i := 1 to n do
 begin
  writeln('Слово: ', mas1[i], '; Встречается: ', mas2[i]);
 end;

writeln('Количество различных слов: ', trek);

end.