program s2p10;

var
    arr, desc, asc: array of integer;
    arrLength, userQuery, i: integer;

procedure bubbleSort(isAsc: boolean);
var
    temp: integer;
    check: boolean;
    swapped: boolean = true;
begin
    while (swapped) do
    begin
        swapped := false;
        for i := 0 to arrLength - 2 do
        begin
            if (isAsc) then
            begin
                check := arr[i] > arr[i + 1];
            end else 
            begin
                check := arr[i] < arr[i + 1];
            end;
            if (check) then
            begin
                temp := arr[i];
                arr[i] := arr[i + 1];
                arr[i + 1] := temp;
                
                swapped := true;
            end;
        end
    end;
    if (isAsc) then
    begin
        write('Urutan data ascending: ');
    end else 
    begin
        write('Urutan data descending: ');
    end;
    for i := 0 to arrLength - 1 do
    begin
        write(arr[i], ' ');
    end;
    writeln;
end;

procedure sequentialSearch(query: integer);
var
    found: boolean = false;
begin
    for i := 0 to arrLength - 1 do
    begin
        if(arr[i] = query) then
        begin
            found := true;
            break;
        end;
    end;

    if (found) then
    begin
        writeln('Angka ', query, ' ditemukan dalam data yang diinput');
    end
    else
    begin
        writeln('Angka ', query, ' tidak ditemukan dalam data yang diinput');
    end;
end;

begin
    write('Input jumlah data: ');
    readln(arrLength);
    setlength(arr, arrLength);
    for i := 0 to arrLength - 1 do
    begin
        write('Data ke-', i + 1, ': ');
        readln(arr[i]);
    end;
    bubbleSort(true);
    bubbleSort(false);

    write('Input data yang anda cari: ');
    readln(userQuery);
    sequentialSearch(userQuery);
end.
