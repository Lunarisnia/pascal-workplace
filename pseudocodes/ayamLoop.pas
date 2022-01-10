program ayamLoop;

deklarasi:
    i: integer;

deskripsi:
    i <- 5;
    while (i > 1) // Kenapa ini harus lebih dari?
        write('Anak ayam turun ', i, ', nati satu tinggal ', i - 1);
        i <- i - 1;
        if(i = 1) then
            write('Anak ayam turun 1, mati satu tinggal induknya');