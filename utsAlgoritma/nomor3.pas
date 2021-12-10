program nomor3;

deklarasi:
    statusKelulusan: string;
    namaMahasiswa: string;
    nilai: integer;

deskripsi:
    write('Masukan nama: ');
    readln(namaMahasiswa);

    write('Masukan Nilai Anda: ');
    readln(nilai);

    statusKelulusan <- 'Tidak Lulus';
    if (nilai >= 70) then
        statusKelulusan <- 'Lulus';
    endif

    write('Nama: ', namaMahasiswa);
    write('Nilai: ', nilai);
    write('Status: ', statusKelulusan);