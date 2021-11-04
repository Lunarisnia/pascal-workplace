program rioArswendo;
uses crt;

var
    specialReward: string;
    customerName: string;
    bikePrice: integer;
    bikeCode: char;
    bikeName: string;

    paymentNumberCount: integer = 0;
    bikeInstallment: integer = 0;
    totalPrice: real = 0.0;
    discount: real = 0.0;

begin
    clrscr;
    write('Masukan nama anda: ');
    readln(customerName);
    writeln('List Kode Motor: ');
    writeln('B. Beat (1000) Cicilan 100/Bulan (10Bulan)');
    writeln('S. Scoopy (1500) Cicilan 150/Bulan (10Bulan)');
    writeln('N. NMax (3000) Cicilan 250/Bulan (12Bulan)');
    writeln('V. Vario 125 (2100) Cicilan 185/Bulan (12Bulan)');
    writeln('G. Gear (1900) Cicilan 160/Bulan (12 Bulan)');
    writeln('L. Lexi (2000) Cicilan 175/Bulan (12 Bulan)');
    write('Masukan Kode Motor Anda: ');
    readln(bikeCode);
    bikeCode := LowerCase(bikeCode);
    write('Masukan Periode Pembayaran Cicilan Anda: ');
    readln(paymentNumberCount);

    if(paymentNumberCount < 1) then
        begin
            writeln('Nomor cicilan tidak boleh kurang dari 1');
            exit;
        end;

    if (bikeCode = 'b' ) then
        begin
            bikeName := 'Beat';
            bikePrice := 1000;
            bikeInstallment := 100;
            specialReward := 'Helm';
        end
    else if (bikeCode = 's') then
        begin
            bikeName := 'Scoopy';
            bikePrice := 1500;
            bikeInstallment := 150;
            specialReward := 'Helm dan Sarung Tangan';
        end
    else if (bikeCode = 'n') then
        begin
            bikeName := 'NMax';
            bikePrice := 3000;
            bikeInstallment := 250;
            specialReward := 'Helm, Sarung Tangan dan Oli Mesin';
        end
    else if (bikeCode = 'v') then
        begin
            bikeName := 'Vario 125';
            bikePrice := 2100;
            bikeInstallment := 185;
            specialReward := 'Helm dan Sarung Tangan';
        end
    else if (bikeCode = 'g') then
        begin
            bikeName := 'Gear';
            bikePrice := 1900;
            bikeInstallment := 160;
            specialReward := 'Helm';
        end
    else if (bikeCode = 'l') then
        begin
            bikeName := 'Lexi';
            bikePrice := 2000;
            bikeInstallment := 175;
            specialReward := 'Helm, Sarung Tangan dan Oli Mesin';
        end
    else
        begin
            writeln('Kode yang anda masukan tidak valid.');
            exit;
        end;

    if (((bikeInstallment * paymentNumberCount) - bikePrice) < bikeInstallment) then
        begin
            // Count the price on last day of installment payment.
            // Ex: 2100 (185) on day 12 should only pay 65 instead of 185.
            if((bikePrice mod (bikeInstallment * paymentNumberCount)) = bikePrice) then
                begin
                    totalPrice := bikePrice mod bikeInstallment;
                end
            else 
                begin
                    totalPrice := bikeInstallment;
                end;


            if(((bikeCode = 'b') OR (bikeCode = 's')) AND (paymentNumberCount > 7)) then
                begin
                    discount := totalPrice * 0.02;
                end
            else if (((bikeCode = 'n') OR (bikeCode = 'v')) AND (paymentNumberCount > 8)) then
                begin
                    discount := totalPrice * 0.04;
                end
            else if (((bikeCode = 'g') OR (bikeCode = 'l')) AND (paymentNumberCount > 9)) then
                begin
                    discount := totalPrice * 0.03;
                end;

            totalPrice := totalPrice - discount;
        end
    else 
        begin
            writeln('Melebihi Batas Periode Cicilan Anda');
            exit;
        end;

    writeln;
    writeln('Nama Customer: ', customerName);
    writeln('Nama Motor: ', bikeName);
    writeln('Harga Motor: ', bikePrice);
    writeln('Hadiah: ', specialReward);
    writeln('Pembayaran Cicilan Ke: ', paymentNumberCount);
    writeln('Discount: ', discount:2:1);
    writeln('================================================');
    writeln('Jumlah Pembayaran: ', totalPrice:2:1);
    writeln('================================================');
    readln;
end.