program raiseToPower;

function power(number: integer): integer;
begin
    power := number * number;
end;

var
    number: integer;

begin
    write('Enter a number you want to raise to the power of 2: ');
    readln(number);

    writeln(number, ' to the power of 2 is ', power(number));
end.