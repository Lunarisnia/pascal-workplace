program arrayIndex;

var
    numbers: array[1..4] of integer;

begin
    write('Input bilangan ke-1 : ');
    readln(numbers[1]);
    write('Input bilangan ke-2 : ');
    readln(numbers[2]);
    write('Input bilangan ke-3 : ');
    readln(numbers[3]);
    write('Input bilangan ke-4 : ');
    readln(numbers[4]);

    writeln('====================================');

    writeln(numbers[1] ,' x ', 1, ' = ', numbers[1] * 1);
    writeln(numbers[2] ,' x ', 2, ' = ', numbers[2] * 2);
    writeln(numbers[3] ,' x ', 3, ' = ', numbers[3] * 3);
    writeln(numbers[4] ,' x ', 4, ' = ', numbers[4] * 4);
end.