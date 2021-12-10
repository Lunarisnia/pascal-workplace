program gajiKaryawan;

deklarasi:
    totalGajiLembur : integer;
    gajiSeminggu    : integer;
    golongan        : char;
    lembur          : integer;

deskripsi:
    golongan <- 'A';
    lembur <- 2;

    if (golongan = 'A') then
        gajiSeminggu <- 4000 * 48;
    else if (golongan = 'B') then
        gajiSeminggu <- 5000 * 48;
    else if (golongan = 'C') then
        gajiSeminggu <- 6000 * 48;
    else if (golongan = 'D') then
        gajiSeminggu <- 7500 * 48;
    else
        write('Kode yang anda masukan salah');

    totalGajiLembur <- 3000 * lembur;
    gajiSeminggu <- gajiSeminggu + totalGajiLembur;

    write('Gaji anda minggu ini adalah: ', gajiSeminggu);


