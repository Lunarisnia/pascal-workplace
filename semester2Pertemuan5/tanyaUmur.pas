program tanyaUmur;    

var
    personAge: integer;

procedure checkAge(personAge: integer); 
begin
    if personAge >= 18 then
    begin
        writeln('Welcome in sir!');
    end
    else
    begin
        writeln('You are not allowed for entry! 18+ Only!');
    end;
end;


begin
    write('How old are you? ');
    readln(personAge);
    checkAge(personAge);
end.