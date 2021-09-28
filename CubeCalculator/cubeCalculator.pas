program cubeCalculator;

var
    length: real;
    height: real;
    base:   real;

begin
    write('Insert Cube length: ');
    readln(length);

    write('Insert Cube height: ');
    readln(height);

    write('insert Cube base: ');
    readln(base);

    writeln;

    writeln('The Cube volume is ', (length * base * height):2:1);
end.