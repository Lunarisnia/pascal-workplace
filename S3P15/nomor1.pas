program halo;

type
    biaya = record
        noDaf: longint;
        nama: string;
        nilai: integer;
    end;

var 
    siswas: array of biaya;
    n, i: integer;

procedure printGrade(siswa: biaya);
var
    grade: string;
    bayaran: longint;
begin
    if (siswa.nilai <= 50) then
    begin
        grade := '0';
        bayaran := 5500000;
    end
    else if (siswa.nilai <= 55) then
    begin
        grade := 'E';
        bayaran := 4500000;
    end
    else if (siswa.nilai <= 60) then
    begin
        grade := 'D';
        bayaran := 4000000;
    end
    else if (siswa.nilai <= 70) then
    begin
        grade := 'C';
        bayaran := 3500000;
    end
    else if (siswa.nilai <= 85) then
    begin
        grade := 'B';
        bayaran := 2500000;
    end 
    else if (siswa.nilai <= 100) then
    begin
        grade := 'A';
        bayaran := 1500000;
    end;

    writeln(grade, '   |    ', bayaran);
end;


procedure printSummary();
begin
    for i := 0 to n - 1 do
    begin
        write(siswas[i].noDaf, '   |    ', siswas[i].nama, '   |    ', siswas[i].nilai, '   |    ');
        printGrade(siswas[i]);
    end;    
end;

begin
    write('Masukan Jumlah Siswa Kursus yang akan diinput: '); readln(n);
    setLength(siswas, n);
    writeln('-------------------------------------------------------');
    for i := 0 to n - 1 do
    begin
        writeln('Siswa Ke-', i + 1);
        write('No Pendaftaran: '); readln(siswas[i].noDaf);
        write('Nama: '); readln(siswas[i].nama);
        write('Nilai: '); readln(siswas[i].nilai);
        writeln();
    end;

    writeln('DAFTAR SISWA KURSUS');
    writeln('========================================');
    writeln('No Pendaftaran |   Nama       | Nilai    | Grade    |  Biaya');
    printSummary();
end.