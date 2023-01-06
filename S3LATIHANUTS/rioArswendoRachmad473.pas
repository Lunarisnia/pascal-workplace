program rioArswendoRachmad473;

type
    food = record
        foodName: string;
        amount: integer;
        price: longint;
    end;

var
    buyerName: string;
    i, itemAmount: integer;
    items: array[1..5] of food;

procedure askFoodData(ind: integer);
begin
    writeln;
    writeln('Masukan data ke ', ind);
    write('Nama Makanan: '); readln(items[ind].foodName);
    write('Banyaknya: '); readln(items[ind].amount);
    write('Harga: '); readln(items[ind].price);
    writeln;
end;

procedure printSummary();
begin
    for i := 1 to itemAmount do
        writeln(i, '.          ', items[i].foodName, '            ', items[i].amount, '            ', items[i].price, '            ', items[i].amount * items[i].price);
end;

function getTotal():longint;
var
    tempPrice: longint = 0;
begin
    for i := 1 to itemAmount do
    begin
        tempPrice := (items[i].price * items[i].amount) + tempPrice;
    end;

    getTotal := tempPrice;
end;

begin
    write('Nama Pembeli: ');
    readln(buyerName);

    write('Masukan jumlah pesanan: ');
    readln(itemAmount);

    for i := 1 to itemAmount do
    begin
        askFoodData(i);
    end;
    
    writeln('                           Warung Makan 89                           ');
    writeln('                      Jl. Siliwangi 1, No.113                        ');
    writeln('                               Bandung                               ');
    writeln('=====================================================================');
    writeln('Nama Pembeli: ', buyerName);
    writeln('No.        Nama Makanan      Banyaknya     Harga           Jumlah');
    printSummary();
    writeln('=====================================================================');
    writeln('Total      :                                               ', getTotal());
    writeln('Pembayaran :                                               200000');
    writeln('Kembalian  :                                               ', 200000 - getTotal());
    writeln('=====================================================================');
    writeln('                            Terima Kasih                             ');
end.