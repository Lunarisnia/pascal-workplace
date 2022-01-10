program perkalianLoop;

var
    i: integer;
    number: integer;

begin
    write('Input sebuah angka : ');
    readln(number);
    i := 1;
    writeln('====================================');
    while i <= 10 do
    begin
        writeln(number, ' x ', i, ' = ', number * i);
        i := i + 1;
    end;
end.