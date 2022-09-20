program nomor1;

function fungsi_kali(a, b: integer): integer;
var 
    hasil_kali: integer;
begin
    hasil_kali := a * b;
    fungsi_kali := hasil_kali;
end;

begin 
    writeln(fungsi_kali(1, 2));
end.

==================================================================================================
==================================================================================================

Nomor 2:
36, 90, 18, 72, 81, 45
90, 36, 72, 81, 45, 18
90, 72, 81, 45, 36, 18
90, 81, 72, 45, 36, 18

==================================================================================================
==================================================================================================

program nomor3;

var
    arr: array[0..50] of integer;
    nilaitinggi: integer = 0;
    nilairendah: integer;
    rata_rata: integer = 0;
    i: integer;
    l, r: integer;
    tukar: boolean = true;

begin
    for i := 0 to 49 do
    begin
        write('masukan data: ');
        readln(arr[i]);
    end;

    nilairendah := arr[0];
    writeln('Data yang diinput: ');
    for i := 0 to 49 do
    begin
        write(arr[i], ' ');
    end;
    writeln;
    while (tukar) do
    begin
        tukar := false;
        for i := 0 to 48 do
        begin
            l := arr[i];
            r := arr[i + 1];
            if (l > r) then
            begin
                arr[i] := r;
                arr[i + 1] := l;
                tukar := true;
            end;
        end
    end;
    writeln('Data setelah diurutkan: ');
    for i := 0 to 49 do
    begin
        write(arr[i], ' ');
    end;
    writeln;

    for i := 0 to 49 do
    begin
        if (nilaitinggi < arr[i]) then
        begin
            nilaitinggi := arr[i];
        end;
    end;
    for i := 0 to 49 do
    begin
        if (nilairendah > arr[i]) then
        begin
            nilairendah := arr[i];
        end;
    end;
    for i := 0 to 49 do
    begin
        rata_rata := rata_rata + arr[i];
    end;
    writeln('Nilai Terbesar: ', nilaitinggi);
    writeln('Nilai Terkecil: ', nilairendah);
    writeln('Ratarata: ', (rata_rata / 3):2);
end.

==================================================================================================
==================================================================================================

program nomor4;

var
    arr: array[0..4] of integer;
    i: integer;
    cari: string;
    hasilKali: integer;

function kali(a, b: integer): integer;
begin
    kali := a * b;
end;

begin
    for i := 0 to 3 do
    begin
        write('Masukan angka ke [', i,'] : ');
        readln(arr[i]);
    end;

    for i := 0 to 3 do
    begin
        if ((arr[i] % 2) = 0) then
        begin
            hasilKali := kali(arr[i], arr[i] + 30);
            writeln(arr[i], ' x ', arr[i] + 30, ' = ', hasilKali);
        end;
    end;
end.