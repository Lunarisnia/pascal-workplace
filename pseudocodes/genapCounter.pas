program genapCounter;

deklarasi:
    i: integer;
    totalGenap: integer;

deskripsi:
    i <- 0;
    totalGenap <- 0;

    while (i < 10)
        i <- i + 1;
        if ((i mod 2) = 0) then
            totalGenap <- totalGenap + 1;
        
    write('Total bilangan genap muncul: ', totalGenap);
