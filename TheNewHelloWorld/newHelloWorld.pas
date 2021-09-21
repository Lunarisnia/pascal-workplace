program newHelloWorld;

var
    personName: string;
    personAge: integer;

begin
    write('What is your name? ');
    readln(personName);

    write('How Old are you? ');
    readln(personAge);

    writeln('So you are ', personName, ' Nice to meet ya!');
    writeln('Oh you are, ', personAge, ' years old! Awesome');
end.