program penjumlahan;

deklarasi:
    i, i2: integer;
    arr1, arr2, hasil: integer(array[0..2]);

deskripsi:
    arr1 <- [[1, 2, 3],[4, 5, 6],[3, 2, 1]]
    arr2 <- [[6, 5, 4],[3, 2, 1],[4, 5, 6]]
    i <- 0;
    while i < 3:
        i2 <- 0;
        while i2 < 3:
            hasil[i, i2] <- arr1[i, i2] + arr2[i, i2];
        i <- i + 1;

    // [[7,7,7],[7,7,7],[7,7,7]]
    write(hasil);