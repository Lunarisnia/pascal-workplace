program ultimateCalculator;

var
    angkaPertama : real;
    angkaKedua : real;

    hasilJumlah, hasilKali, hasilBagi, hasilKurang : real;
    {jumlah, kali, bagi, kurang}

begin
    write('Masukan angka pertama: ');
    readln(angkaPertama);

    write('Masukan angka kedua: ');
    readln(angkaKedua);
    
    writeln;

    hasilJumlah := angkaPertama + angkaKedua;
    writeln('Hasil Penjumlahan: ', hasilJumlah:2:1);

    hasilKali := angkaPertama * angkaKedua;
    writeln('Hasil Perkalian: ', hasilKali:2:1);

    hasilBagi := angkaPertama / angkaKedua;
    writeln('Hasil Pembagian: ', hasilBagi:2:1);

    hasilKurang := angkaPertama - angkaKedua;
    writeln('Hasil Pengurangan: ', hasilKurang:2:1);
    
    {writeln('Angka Pertama adalah: ', angkaPertama:2:1);}
end.