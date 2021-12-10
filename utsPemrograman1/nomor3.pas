//Sebuah perusahaan ojek online menentukan tarif berdasarkan jarak tempuh, dimana untuk
// minimal 4Km pertama adalah Rp. 9.500,- sedangkan untuk Km selanjutnya adalah Rp.
// 2.500,- per Km. Buatlah sebuah program dari studi kasus tersebut, dimana program
// menerima 2 buah inputan, yaitu nama customer dan jarak yang akan ditempuh. Kemudian
// menampilkan besaran biaya yang harus dibayar customer!

// Tony, 3km = 9500
// Tony, 2km = 9500
// Tony, 4km = 9500
// Tony, 1km = 9500

// Tony, 5km = 9500 + 2500 = 12000
// Tony, 6km = 9500 + 2500 + 2500 = 14500
// Tony, 7km = 9500 + 2500 + 2500 + 2500 = 17000
// if jarak > 4 maka, jarak = jarak - 4; totalHarga = 2500 * jarak;

program nomor3;

var
    namaKustomer: string;
    jarakTempuh: integer;
    totalTarif: integer;

begin
    write('Nama Customer: ');
    readln(namaKustomer);

    write('Jarak yang akan ditempuh (Km): ');
    readln(jarakTempuh);
    
    totalTarif := 9500;
    if (jarakTempuh > 4) then
        begin
            totalTarif := totalTarif + ((jarakTempuh - 4) * 2500);
        end;
    write('Tarif yang harus dibayarkan ', namaKustomer,' adalah sebesar ', totalTarif);
end.
