type
 node = record
 treker: integer;
 t: ^node;
 end;
 s = ^node;
 var
    freq: s;
    min, max: integer;
    procedure kur1(var head: s);
    var
       inputvalue: integer;
       lastnode, newnode: s;
       begin
       head := nil;
       lastnode := nil;
       write('Введите числа: (Введите 0, чтобы остановиться): ');
       writeln();
       read(inputvalue);
       while (inputvalue <> 0) do
          begin
          new(newnode);
          newnode^.treker := inputvalue;
          newnode^.t := nil;
          if (head = nil) then
             begin
             head := newnode;
             end
             else
                begin
                lastnode^.t := newnode;
                end;
                lastnode := newnode;
                read(inputValue);
                end;
                end;
    procedure kur2(head: s; var minvalue: integer; var maxvalue: integer);
    var
      current: s;
        begin 
           current := head;
           min := current^.treker;
           max := current^.treker;
           current := current^.t;
           while (current <> nil) do
              begin
              if (current^.treker < min) then
                 begin
                 min := current^.treker;
                 end;
                 if (current^.treker > max) then
                    begin
                    max := current^.treker;
                    end;
                    current := current^.t; 
               end;
       end;
begin 
  kur1(freq);
  kur2(freq, min, max); 
  writeln('min: ', min); 
  writeln('max: ', max); 
end.
