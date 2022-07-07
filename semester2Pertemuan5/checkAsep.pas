program checkAsep;
uses sysutils;

function checkIfAsep(personName: string): boolean;
begin
    checkIfAsep := (LowerCase(personName) = 'asep');
end;

var
    personName: string;

begin
    write('Who is your name? ');
    readln(personName);

    if (checkIfAsep(personName)) then
    begin
        writeln('Welcome to the house Asep!');
    end
    else 
    begin
        writeln('You are not Asep! Go Away!');
    end;
end.