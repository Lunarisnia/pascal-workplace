program tanyaNama;    

var
    personName: string;

procedure sayHello(personName: string); 
begin
    writeln('Hello, ', personName);
end;


begin
    write('Who is your name? ');
    readln(personName);
    sayHello(personName);
end.