program searching;

var
    arr: array of integer;
    arrLength, i, userQuery: integer;

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
    write('Bubble Sort: ');
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

    writeln('-----------SEQUENTIAL SEARCH--------------');
    if (found) then
    begin
        writeln('Angka ', query, ' ditemukan dalam data yang di input');
    end
    else
    begin
        writeln('Angka ', query, ' tidak ditemukan dalam data yang di input');
    end;
    writeln('-----------SEQUENTIAL SEARCH--------------');
end;

procedure binarySearch(myArray: array of integer);
var
    kiri    : integer;
    kanan   : integer;
    tengah  : integer;
    cari    : boolean;
    masukan : integer;

begin
    kiri    := 0;
    kanan   := arrLength-1;
    tengah  := 0;
    cari    := false;
    masukan := userQuery;

    while ((cari = false) and (kanan >= kiri)) do
    begin
        tengah := (kanan + kiri) div 2;

        if (myArray[tengah] = masukan) then
        begin
            cari := true;
        end
        else if (myArray[tengah] > masukan) then
        begin
            kanan := kanan-1;
        end
        else
        begin
            kiri := kiri + 1;
        end;
    end;

    writeln('-----------BINARY SEARCH--------------');
    if (cari) then
    begin
        writeln('Data ketemu di indeks : ', tengah);
    end
    else
    begin
        writeln('Data tidak ditemukan!');
    end;
    writeln('-----------BINARY SEARCH--------------');
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

    write('Input data yang anda cari: ');
    readln(userQuery);
    sequentialSearch(userQuery);
    writeln;
    binarySearch(arr);
end.

