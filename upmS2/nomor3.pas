program nomor3;

var
    datas: array[0..50] of integer;
    highestNum: integer = 0;
    median: integer = 0;
    lowestNum, i: integer;

procedure bubbleSort(unsorted: array of integer);
var
    lElement, rElement: integer;
    swapped: boolean = true;
begin
    while (swapped) do
    begin
        swapped := false;
        for i := 0 to 48 do
        begin
            lElement := unsorted[i];
            rElement := unsorted[i + 1];
            if (lElement > rElement) then
            begin
                unsorted[i] := rElement;
                unsorted[i + 1] := lElement;
                swapped := true;
            end;
        end
    end;
    writeln('Data setelah diurutkan: ');
    for i := 0 to 49 do
    begin
        write(unsorted[i], ' ');
    end;
    writeln;
end;


begin
    for i := 0 to 49 do
    begin
        write('Input Data: ');
        readln(datas[i]);
    end;

    lowestNum := datas[0];
    writeln('Data yang diinput: ');
    for i := 0 to 49 do
    begin
        write(datas[i], ' ');
        if (highestNum < datas[i]) then
            highestNum := datas[i];
        if (lowestNum > datas[i]) then
        begin
            lowestNum := datas[i];
        end;
        median := median + datas[i];
    end;
    writeln;
    bubbleSort(datas);

    writeln('Nilai Terbesar: ', highestNum);
    writeln('Nilai Terkecil: ', lowestNum);
    writeln('Rata-rata: ', (median / 3):2:2);
end.