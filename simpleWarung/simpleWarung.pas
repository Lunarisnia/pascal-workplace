program simpleWarung;
uses crt;

var
    customerName: string;
    grossPrice  : integer;
    itemAmount  : integer;
    totalPrice  : real;
    itemCode    : char;
    itemName    : string;
    discount    : real;

begin
    clrscr;
    write('Mohon masukan nama anda: ');
    readln(customerName);

    writeln('Mohon masukan kode barang yang anda ingin beli: ');
    writeln('G. Gula            (1000)');
    writeln('K. Kopi            (500)');
    writeln('B. Beras           (700)');
    writeln('M. Minyak Goreng   (550)');
    write('Masukan kode anda: ');
    readln(itemCode);

    write('Masukan jumlah barang: ');
    readln(itemAmount);

    if (LowerCase(itemCode) = 'g') then
        begin
            grossPrice := 1000;
            itemName := 'Gula';
        end
    else if (LowerCase(itemCode) = 'k') then
        begin
            grossPrice := 500;
            itemName := 'Kopi';
        end
    else if (LowerCase(itemCode) = 'b') then
        begin
            grossPrice := 700;
            itemName := 'Beras';
        end
    else if (LowerCase(itemCode) = 'm') then
        begin
            grossPrice := 550;
            itemName := 'Minyak Goreng';
        end
    else
        begin
            writeln('Kode yang anda masukan salah.');
        end;

    totalPrice := grossPrice * itemAmount;

    if (itemAmount > 4) then
        begin
            discount := (totalPrice * 0.3);
            totalPrice := totalPrice - discount;
        end;

    writeln;
    writeln('Nama Customer: ', customerName);   
    writeln('Nama Barang: ', itemName);
    writeln('Jumlah Barang: ', itemAmount);
    writeln('Discount: ',  discount:2:1);

    writeln('=======================================');
    writeln('Total Keseluruhan: ', totalPrice:2:1);
    writeln('=======================================');
    writeln('Terimakasih atas kunjungan anda.');
end.