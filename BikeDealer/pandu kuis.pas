program pembayaran_cicilan;
uses crt;

var
        nama_customer : string ;
        nama_motor : string ;
        harga_motor : integer;
        kode: string;
        jumlah_pembayaran :real;
        hadiah : string ;
        cicilan,ck: integer ;
        discount : real ;
begin
        clrscr;
        write('masukan nama anda: ');
        readln(nama_customer);

        writeln('masukkan kode motor anda : ');
        writeln('"B" Beat  = cicilan:100per bulan  (1000)');
        writeln('"S" scopy = cicilan:150per bulan  (1500)');
        writeln('"N" Nmax  = cicilan:250per bulan  (3000)');
        writeln('"V" Vario = cicilan:185per bulan  (2100)');
        writeln('"G" Gear  = cicilan:160per bulan  (1900)');
        writeln('"L" lexi  = cicilan:175per bulan  (2000)');
        write('masukan kode motor anda:');
        readln(kode);

         if kode ='B' then
          begin
           nama_motor:='Beat';
           harga_motor :=1000;
           cicilan:=100;
           hadiah:='helm';
           discount:=(0.2);
          end
        else if kode = 'S' then
           begin
           nama_motor:='scopy';
           harga_motor :=1500;
           cicilan:=150;
           hadiah:='helm dan sarung tangan';
          end
        else if kode ='N'then
           begin
           nama_motor:='Nmax';
           harga_motor :=3000;
           cicilan:=250;
           hadiah:='helm, sarung tangan,dan oli mesin';
          end
         else if kode ='V' then
            begin
           nama_motor :='vario125';
           harga_motor :=2100;
           cicilan:=160;
           hadiah:='helm dan sarung tangan';
          end
         else if kode ='G' then
            begin
           nama_motor :='Gear';
           harga_motor :=1900;
           cicilan:=160;
           hadiah:='helm';
          end
         else if kode ='L' then
            begin
           nama_motor :='Lexi';
           harga_motor :=2000;
           cicilan:=175;
           hadiah:='helm, sarung tangan,dan oli mesin';
          end
         else
           begin
           writeln('kode yang anda masukan salah');
        end;
          writeln('cicilan keberapa:');
          readln(ck);


                if (((kode = 'B') OR (kode = 'S')) AND (ck>7))then
                 begin
                  discount:= cicilan*0.02;
            end
                 else if (((kode = 'N') OR (kode = 'V')) AND (ck>8))then
                  begin
                   discount:= cicilan*0.04;
            end
                 else if (((kode = 'G') OR (kode = 'L')) AND (ck>9))then
                  begin
                   discount:= cicilan*0.03;
            end;

            jumlah_pembayaran := cicilan-discount;

             writeln;
             writeln('Nama Customer:',nama_customer);
             writeln('Nama Motor:',nama_motor);
             writeln('Harga Motor:',harga_motor);
             writeln('Hadiah:',hadiah);
             writeln('Cicilan ke:',ck);
             writeln('discount:',discount:4:2);

             writeln('============================');
             Writeln('jumlah pembayaran:',jumlah_pembayaran:4:2);

             writeln('============================');
            readkey;

            end.
