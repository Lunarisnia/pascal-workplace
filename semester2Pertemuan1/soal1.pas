program soal1;

const
    alphabets: array[0..5] of char = ('A', 'B', 'C', 'D', 'E', 'F');

var
    i: integer;

begin
    for i := 0 to 5 do
        begin
            writeln('Nilai konstan array ke ', i, ' = ',alphabets[i]);
        end;
end.