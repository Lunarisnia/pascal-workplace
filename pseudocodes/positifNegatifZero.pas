program positifNegatifNol;

deklarasi:
    inputNumber: integer;

deskripsi:
    inputNumber <- 0;

    if (inputNumber > 0) then
        write('Nilai adalah Nilai Positif');
    else if (inputNumber < 0) then
        write('Nilai Adalah Nilai Negatif');    
    else
        write('Nilai Adalah 0');
