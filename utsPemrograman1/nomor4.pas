program nomor4;

var
    jenisKelas: string;
    jumlahPenumpang: integer;
    totalTarif: real;

begin
    write('Jenis Kelas: ');
    readln(jenisKelas);

    jenisKelas := LowerCase(jenisKelas);

    write('Jumlah Penumpang: ');
    readln(jumlahPenumpang);

    if (jenisKelas = 'ekonomi') then
        begin
            if(jumlahPenumpang > 5) then
                begin
                    totalTarif := 80000;
                end
            else if (jumlahPenumpang > 0) then
                begin
                    totalTarif := 1000009;
                end;
        end
    else if (jenisKelas = 'eksekutif') then
        begin
            if(jumlahPenumpang > 5) then
                begin
                    totalTarif := 400000;
                end
            else if (jumlahPenumpang > 0) then
                begin
                    totalTarif := 500000;
                end;
        end
    else
        begin
            writeln('Masukan Jenis Kelas yang benar.');
            exit;
        end;

    writeln('Total tarif tiket yang harus dibayarkan adalah Rp. ', totalTarif:2:1);         
end.