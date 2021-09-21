program addition;

var
    x,y,result: integer;

begin
    write('Insert first integer: ');
    readln(x);

    write('Insert second integer: ');
    readln(y);

    result := x + y;

    writeln(x, ' + ', y, ' = ', result);
    readln;
end.