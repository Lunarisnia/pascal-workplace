program array1;

var
    dataArray: array[1..50] of integer;
    n, i: integer;

begin
    write('Input banyaknya digit NPM: ');
    readln(n);

    for i := 1 to n do
    begin
        write('Input digit NPM ke-', i, ' = ');
        readln(dataArray[i]);
    end;
    
    for i := 1 to n do
    begin
        write(dataArray[i]);
    end;
    readln;

end.
