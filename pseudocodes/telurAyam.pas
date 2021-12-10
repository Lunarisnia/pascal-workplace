program telurAyam;

deklarasi:
    i: integer;

deskripsi:
    i <- 5;

    while (i > 0)
        i <- i - 1;
        if ((i - 1) = 0) then
            write('Anak ayam turun 1, mati satu tinggal induknya');
        else
            write('Anak ayam turun ', i , ', mati satu tinggal ', i - 1);