program soal234;

type
    NameChars = array[0..3] of char;
    NpmIntegers = array[0..13] of integer;

var
    i: integer;
    nama: NameChars;
    npm: NpmIntegers;

begin
    for i := 0 to 2 do
        begin
            write('Masukan huruf ke ', i + 1, ' nama anda: ');
            readln(nama[i]);
        end;

    writeln('========================================');

    for i := 0 to 11 do
        begin
            write('Masukan digit ke ', i + 1, ' NPM anda: ');
            readln(npm[i]);
        end;

    writeln('=================');
    for i := 0 to 2 do
        begin
            writeln('Huruf ke ', i + 1, ' Nama anda: ', nama[i]);
        end;
    writeln('========================================');
    for i := 0 to 11 do
        begin
            writeln('Digit ke ', i + 1, ' NPM anda: ', npm[i]);
        end;
        
    writeln('=================');
end.