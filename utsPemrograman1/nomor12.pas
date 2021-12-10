//1. Konstanta adalah nilai nilai tetap dan sedangkan Variabel adalah himpunan
//   Operasi yang diberikan.


program nomor12; // ini sesuain aja

var
    namaSales: string;
    nilaiPenjualan: real;
    totalKomisi: real;

begin
    write('Nama Karyawan: ');
    readln(namaSales);

    write('Nilai Penjualan: ');
    readln(nilaiPenjualan);

    totalKomisi := nilaiPenjualan * 0.05;
    writeln('Komisi yang didapat oleh ', namaSales,' adalah sebesar: ', totalKomisi:2:1)
end.



// Buatlah sebuah program dengan menggunakan Bahasa Pemrograman Pascal, untuk
// menghitung besaran komisi yang diterima seorang salesman berdasarkan 
// nilai penjualan yang dicapainya.
//  Dengan ketentuan, komisi yang diterima adalah sebesar 5% dari hasil
// penjualan. Program menerima 2 buah inputan berupa nama salesman dan nilai penjualan
// yang dicapai!

//Input: 
    // Nama sales: Anam
    // Nilai Penjualan: 0

// Rumus:
    // nilaiPenjualan * 5 / 100 = totalUntung