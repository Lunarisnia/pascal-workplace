
Program dealer_motor_jaya;

Uses crt;

Var 
  kode: char;
  hadiah,nama_motor,nama_customer: string;
  cicilan_ke,harga_motor,harga_cicilan,sisa_bayar: integer;
  diskon,jumlah_pembayaran: real;
  valid: boolean = true;

Begin
  clrscr();

  write('Masukkan Nama Customer: ');
  readln(nama_customer);
  write('Masukkan Kode Motor: ');
  readln(kode);
  write('Masukkan Periode Pembayaran Cicilan: ');
  readln(cicilan_ke);

  If (kode = 'B') Then
    Begin
      nama_motor := 'Beat';
      harga_motor := 1000;
      harga_cicilan := 100;
      hadiah := 'Helm';

      sisa_bayar := harga_motor - (harga_cicilan * cicilan_ke);
      If (sisa_bayar<0) Then
        Begin
          diskon := 0;
          jumlah_pembayaran := 0;
        End
      Else
        Begin
          If (sisa_bayar < harga_cicilan) Then
            harga_cicilan := sisa_bayar;
          If (cicilan_ke > 7) Then
            Begin
              diskon := harga_cicilan * 2/100;
              jumlah_pembayaran := harga_cicilan - diskon;
            End
          Else
            Begin
              diskon := 0;
              jumlah_pembayaran := harga_cicilan;
            End
        End
    End
  Else If (kode = 'S') Then
         Begin
           nama_motor := 'Scopy';
           harga_motor := 1500;
           harga_cicilan := 150;
           hadiah := 'Helm dan Sarung Tangan';

           sisa_bayar := harga_motor - (harga_cicilan * cicilan_ke);
           If (sisa_bayar<0) Then
             Begin
               diskon := 0;
               jumlah_pembayaran := 0;
             End
           Else
             Begin
               If (sisa_bayar < harga_cicilan) Then
                 harga_cicilan := sisa_bayar;
               If (cicilan_ke > 7) Then
                 Begin
                   diskon := harga_cicilan * 2/100;
                   jumlah_pembayaran := harga_cicilan - diskon;
                 End
               Else
                 Begin
                   diskon := 0;
                   jumlah_pembayaran := harga_cicilan;
                 End
             End
         End
  Else If (kode = 'N') Then
         Begin
           nama_motor := 'Nmax';
           harga_motor := 3000;
           harga_cicilan := 250;
           hadiah := 'Helm, Sarung Tangan dan Oil Mesin';

           sisa_bayar := harga_motor - (harga_cicilan * cicilan_ke);
           If (sisa_bayar<0) Then
             Begin
               diskon := 0;
               jumlah_pembayaran := 0;
             End
           Else
             Begin
               If (sisa_bayar < harga_cicilan) Then
                 harga_cicilan := sisa_bayar;
               If (cicilan_ke > 8) Then
                 Begin
                   diskon := harga_cicilan * 4/100;
                   jumlah_pembayaran := harga_cicilan - diskon;
                 End
               Else
                 Begin
                   diskon := 0;
                   jumlah_pembayaran := harga_cicilan;
                 End
             End
         End
  Else If (kode = 'V') Then
         Begin
           nama_motor := 'Vario 125';
           harga_motor := 2100;
           harga_cicilan := 185;
           hadiah := 'Helm dan Sarung Tangan';

           sisa_bayar := harga_motor - (harga_cicilan * cicilan_ke);
           If (sisa_bayar<0) Then
             Begin
               diskon := 0;
               jumlah_pembayaran := 0;
             End
           Else
             Begin
               If (sisa_bayar < harga_cicilan) Then
                 harga_cicilan := sisa_bayar;
               If (cicilan_ke > 8) Then
                 Begin
                   diskon := harga_cicilan * 4/100;
                   jumlah_pembayaran := harga_cicilan - diskon;
                 End
               Else
                 Begin
                   diskon := 0;
                   jumlah_pembayaran := harga_cicilan;
                 End
             End
         End
  Else If (kode = 'G') Then
         Begin
           nama_motor := 'Gear';
           harga_motor := 1900;
           harga_cicilan := 160;
           hadiah := 'Helm';

           sisa_bayar := harga_motor - (harga_cicilan * cicilan_ke);
           If (sisa_bayar<0) Then
             Begin
               diskon := 0;
               jumlah_pembayaran := 0;
             End
           Else
             Begin
               If (sisa_bayar < harga_cicilan) Then
                 harga_cicilan := sisa_bayar;
               If (cicilan_ke > 9) Then
                 Begin
                   diskon := harga_cicilan * 3/100;
                   jumlah_pembayaran := harga_cicilan - diskon;
                 End
               Else
                 Begin
                   diskon := 0;
                   jumlah_pembayaran := harga_cicilan;
                 End
             End
         End
  Else If (kode = 'L') Then
         Begin
           nama_motor := 'Lexi';
           harga_motor := 2000;
           harga_cicilan := 175;
           hadiah := 'Helm, Sarung Tangan dan Oil Mesin';

           sisa_bayar := harga_motor - (harga_cicilan * cicilan_ke);
           If (sisa_bayar<0) Then
             Begin
               diskon := 0;
               jumlah_pembayaran := 0;
             End
           Else
             Begin
               If (sisa_bayar < harga_cicilan) Then
                 harga_cicilan := sisa_bayar;
               If (cicilan_ke > 9) Then
                 Begin
                   diskon := harga_cicilan * 3/100;
                   jumlah_pembayaran := harga_cicilan - diskon;
                 End
               Else
                 Begin
                   diskon := 0;
                   jumlah_pembayaran := harga_cicilan;
                 End
             End
         End
  Else
    Begin
      valid := false;
    End;

  writeln();
  writeln();
  If (valid) Then
    Begin
      writeln('Nama Customer: ',nama_customer);
      writeln('Nama Motor: ',nama_motor);
      writeln('Harga motor: ',harga_motor);
      writeln('Hadiah: ',hadiah);
      writeln('Pembayaran cicilan ke: ',cicilan_ke);
      writeln('Discount: ',diskon:2:2);
      writeln('=========================================================');
      writeln('Jumlah Pembayaran: ',jumlah_pembayaran:2:2);
      writeln('=========================================================');
    End
  Else
    Begin
      writeln('Kode Motor Tidak Diketahui');
    End;
  readln();
End.
