program nomor3;

var
    i, j: integer;
    number: integer;
    cSym: char;
    aSym: char;

begin
    write('Input jumlah baris : ');
    readln(number);

    writeln('====================================');
    cSym := 'X';
    i := 0;
    while (i < number) do
    begin
        write(cSym);
        if (cSym = 'X') then
            begin
                cSym := 'O';    
            end
        else
            begin
                cSym := 'X';
            end;

        j := 0;
        aSym := cSym;
        while (j < i) do
        begin
            write(' ', aSym);
            if (aSym = 'X') then
                begin
                    aSym := 'O';    
                end
            else
                begin
                    aSym := 'X';
                end;
            j := j + 1;
        end;

        writeln;
        i := i + 1;
    end;
end.
