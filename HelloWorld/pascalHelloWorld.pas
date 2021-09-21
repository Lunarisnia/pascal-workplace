program pascalHelloWorld;

var
    age: integer = 20;
    myName: String;
    listOfNumbers: array [0..9, 0..8] of integer;
    i, j, x, y: integer;

begin
    myName := 'Luna';
    writeln('Hello, ', myName, ' Your age is: ', age);

    for i := 0 to 9 do
    begin
        for x := 0 to 8 do
            listOfNumbers[i, x] := i + x; 
    end;

    for j := 0 to 9 do
    begin
        for y := 0 to 8 do
            write(listOfNumbers[j, y]:2, '  ');
        writeln;
    end;
end.