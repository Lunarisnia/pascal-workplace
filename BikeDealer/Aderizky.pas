program Aderizky;
uses crt;
var
    customerName : string;
    grossPrice   : integer;
    itemAmount   : integer;
    totalPrice   : real;
    itemCode     : char;
    itemName     : string;
    discount     : real;
    cicilan      : integer;
    paymentCount : integer;
    hadiah       : string;
begin
    clrscr;
    write('Mohon masukan nama anda: ');
    readln(customerName);

    writeln('Mohon masukan kode type motor yang anda ingin beli: ');
    writeln('B. Beat            (1000 dengan cicilan 100 perbulan serta dapat hadiah helm)');
    writeln('S. Scopy           (1500 dengan cicilan 150 per bulan serta  dapat hadiah Helm dan sarung tangan)');
    writeln('N. Nmax            (3000 dengan cicilan 250 per bulan serta dapat hadiah Helm, sarung tangan dan oil mesin)');
    writeln('V. Vario           (2100 dengan cicilan 185 per bulan serta dapat hadiah Helm dan sarung tangan)');
    writeln('G. Gear            (1900 dengan cicilan 160 per bulan dapat hadiah Helm)');
    writeln('L. Lexi            (2000 dengan cicilan 175 per bulan serta dapat hadiah Helm, sarung tangan dan oil mesin)');

    write('Masukan type motor: ');
    readln(itemCode);

    if (itemCode = 'b') then
        begin
            grossPrice := 1000;
            cicilan := 100;
            itemName := 'Beat';
        end
    else if (itemCode = 's') then
        begin
            grossPrice := 1500;
            cicilan := 150;
            itemName := 'Scopy';
        end
    else if (itemCode = 'n') then
        begin
            grossPrice := 3000;
            cicilan := 250;
            itemName := 'Nmax';
        end
    else if (itemCode = 'v') then
        begin
            grossPrice := 2100;
            cicilan := 185;
            itemName := 'Vario';
        end
    else if (itemCode = 'g') then
        begin
            grossPrice := 1900;
            cicilan := 160;
            itemName := 'Gear';
        end
    else if (itemCode = 'l') then
        begin
            grossPrice := 2000;
            cicilan := 175;
            itemName := 'Lexi';
        end
    else
        begin
            writeln('Kode yang anda masukan salah.');
        end;

    totalPrice := cicilan - discount;

    if ((itemCode = 'B') OR (itemCode = 'S')) AND (paymentCount > 7)then
        begin
            discount := (0.02);
            totalPrice := totalPrice - discount;
        end;

    writeln;
    writeln('Nama Customer         : ', customerName);   
    writeln('Nama type motor       : ', itemName);
    writeln('Grossprice            : ', grossprice);
    writeln('Hadiah                : ', hadiah);
    writeln('PaymentCount          : ', paymentCount);
    writeln('Discount              : ', discount:2:1);

    writeln('=======================================');
    writeln('Total Keseluruhan: ', totalPrice:2:1);
    writeln('=======================================');
    writeln('Terimakasih atas kunjungan anda.');
  
  readln;
end.
