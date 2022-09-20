program nomor4;

var 
    drinks: array[0..3] of string;
    query: string;
    i, ageQuery: integer;

procedure AllowedToBuy(age: integer; drink: string);
begin
    if (age >= 18) then
    begin
        writeln('Ini ', drink, 'nya. Silahkan datang kembali!');
    end else
    begin
       writeln('Anak kecil gaboleh jajan.'); 
    end;
end;

begin
    for i := 0 to 2 do
    begin
        write('Masukan minuman ke kulkas [', i,'] : ');
        readln(drinks[i]);
    end;

    write('Berapa umur anda: ');
    readln(ageQuery);
    write('Apa yang ingin dibeli: ');
    readln(query);

    for i := 0 to 2 do
    begin
        if (query = drinks[i]) then
        begin
            AllowedToBuy(ageQuery, query);
            exit;
        end;
    end;
    writeln('Kita tidak menjual minuman tersebut.');
    exit;
end.

