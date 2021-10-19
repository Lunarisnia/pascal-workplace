program penentuKelulusan;
uses crt;

var 
    nilaiTugas, nilaiUts, nilaiUas: integer;
    kriteriaKelulusan:integer = 56;
    nilaiAkhir: real;
    namaPelajar: string;

begin
    clrscr;
    write('Masukan Nama Anda: ');
    readln(namaPelajar);

    write('Berapa Nilai Tugas anda? ');
    readln(nilaiTugas);

    write('Berapa Nilai UTS anda? ');
    readln(nilaiUts);

    write('Berapa Nilai UAS anda? ');
    readln(nilaiUas);

    nilaiAkhir := (nilaiTugas + nilaiUts + nilaiUas) / 3;
    
    writeln;
    writeln(namaPelajar, ', Nilai akhir anda: ', nilaiAkhir:2:1);
    if (nilaiAkhir > kriteriaKelulusan) then 
        begin
            writeln('Anda Lulus');
        end
    else
        begin
            writeln('Anda Tidak Lulus');
        end;
end.