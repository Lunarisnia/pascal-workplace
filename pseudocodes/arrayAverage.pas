program arrayAverage;

deklarasi:
    numbers: integer(array[]);
    i: integer;
    jumlah: integer;

deskripsi:
    numbers <- [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
    i <- 0;
    jumlah <- 0;

    while i < 10:
        jumlah <- jumlah + numbers[i];
        i <- i + 1;

    write('Rata-Rata = ', jumlah / 10);