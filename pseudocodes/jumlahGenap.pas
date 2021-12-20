program jumlahGenap;

deklarasi:
    i: integer;
    totalGenap: integer;

deskripsi:
    i <- 1;
    totalGenap <- 0;
    while (i <= 10)
        i <- i + 1;
        if((i mod 2) = 0) then
            totalGenap <- totalGenap + 1;
    
    write('Jumlah Bilangan genap: ', totalGenap)