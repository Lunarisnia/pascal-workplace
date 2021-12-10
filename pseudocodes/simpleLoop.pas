program simpleLoop;

deskripsi:
    i: integer;

deskripsi:
    i <- 5;
    while i > 1
        write('Anak ayam turun', i, ', mati satu tinggal ', i - 1);
        i <- i - 1;
        if i = 1 then
            write('Anak ayam turun 1, mati satu tinggal induknya');