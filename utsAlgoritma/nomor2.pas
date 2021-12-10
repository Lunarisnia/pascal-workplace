program nomor2;

deklarasi:
    jariJariLingkaran: real;
    keliling: real;
    luas: real;

deskripsi:
    write('Masukan Jari Jari Lingkaran (r): ');
    readln(jariJariLingkaran);

    luas <- 3.14 * (jariJariLingkaran * jariJariLingkaran);
    keliling <- 2 * 3.14 * jariJariLingkaran;

    write('Luas Lingkaran: ', luas);
    write('Keliling Lingkaran: ', keliling);
    