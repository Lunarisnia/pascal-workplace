program sayaKamu;

var
    number: integer;
    output: string;
    i: integer;

begin
    write('Input batasan angka : ');
    readln(number);
    i := 1;
    writeln('====================================');
    
    while (i <= number) do
    begin
        output := '';
        if ((i mod 3) = 0) then
            begin
                output := output + 'Saya';           
            end;
        if ((i mod 5) = 0) then
            begin
                output := output + 'Kamu';           
            end;

        if(output = 'SayaKamu') then
            begin
                output := 'Kita';
            end;

        if(output = '') then
            begin
                writeln(i);
            end 
        else
            begin
                writeln(output);
            end;

        i := i + 1;
    end;
end.