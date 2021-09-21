program divisionCalculator;

var
    x,y,result: real;

begin
    write('Insert first real: ');
    readln(x);

    write('Insert second real: ');
    readln(y);

    result := x / y;

    writeln(x:2:2, ' / ', y:2:2, ' = ', result:2:2);
end.