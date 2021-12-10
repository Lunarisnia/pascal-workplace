program penjualan_motor_jaya;
uses crt;

var
        namaCustomer : string;
        namaMotor : string;
        hargaMotor : integer;
        kode : string;
        jumlahPembayaran : real;
        hadiah : string;
        cicilan, ck : integer;
        discount : real;

begin
        clrscr;
        write('Masukan nama anda : ');
        readln(namaCustomer);
        writeln('Masukan kode motor anda : ');
        writeln('"B" Beat = cicilan: 100/bulan (1000) ');
        writeln('"S" Scoopy = cicilan: 150/bulan (1500) ');
        writeln('"N" Nmax = cicilan: 250/bulan (3000) ');
        writeln('"V" Vario = cicilan: 185/bulan (2100) ');
        writeln('"G" Gear = cicilan: 160/bulan (1900) ');
        writeln('"L" Lexi = cicilan: 175/bulan (2000) ');
        write('Masukan kode motor anda : ');

        if kode ='B' then
         begin
            namaMotor:='Beat';
            hargaMotor:=1000;
            cicilan:=100;
            hadiah:='Helm';
            discount:=(0.2);
         end
       else if kode = 'S' then
         begin
         namaMotor :='Scoopy';
         hargaMotor :=1500;
         cicilan :=150;
         hadiah :='Helm dan Sarung tangan';
         end
       else if kode = 'N' then
         namaMotor :='Nmax';
         hargaMotor :=3000;
         cicilan :=250;
         hadiah :='helm, sarung tangan dan oli mesin';
         end
       else if kode = 'V' then
         namaMotor :='Vario';
         hargaMotor :=2100;
         cicilan :=160;
         hadiah :='Helm dan sarung tangan';
         end
       else if kode = 'G' then
         namaMotor :='Gear';
         hargaMotor :=1900;
         cicilan :=160;
         hadiah :='Helm';
         end
       else if kode = 'L';
         begin
         namaMotor :='Lexi';
         hargaMotor :=2000;
         cicilan :=175;
         hadiah :='Helm, sarung tangan, dan oli mesin';
         end
       else
          begin
          writeln('Kode yang anda masukan salah');
          end;
          writeln('cicilan ke berapa : ');
          readln(ck);
            jumlahPembayaran :=hargaMotor-Cicilan*ck;
                if (ck);
                jumlahPembayaran :=hargaMotor - cicilan * ck;
                if(ck>7) then
                begin
                discount :=(jumlahPembayaran*0.2);
                jumlahPembayaran :=jumlahPembayaran-discount;
                end;
                
                writeln;
                writeln('Nama Customer : ',namaCustomer);
                writeln('Nama Motor : ',namaMotor);
                writeln('Harga Motor : ',hargaMotor);
                writeln('Hadiah : ',hadiah);
                writeln('Cicilan ke : ',ck);
                writeln('discount : ',discount:4:2);

                writeln('=======================================');
                writeln('jumlah pembayaran : ',jumlahPembayaran:4:2);

        writeln('=======================================');
            readkey;

end.