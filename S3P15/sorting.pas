program sorting;
uses math;

var
    arr, A: array of integer;
    arrLength, i: integer;

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

procedure selectionSort(unsorted: array of integer);
var
    i, j, minIdx, temp: integer;
begin
    for i := 0 to arrLength - 1 do
    begin
        minIdx := i;
        for j := i + 1 to arrLength do
        begin
            if (unsorted[j] < unsorted[minIdx]) then
            begin
                minIdx := j;
            end; 
        end;
        temp := unsorted[i];
        unsorted[i] := unsorted[minIdx];
        unsorted[minIdx] := temp;
    end;

    write('Selection Sort: ');
    for i := 0 to arrLength - 1 do
    begin
        write(unsorted[i], ' ');
    end;
    writeln;
end;

procedure insertionSort(unsorted: array of integer);
var
    i, j, key: integer;
begin
    for i := 0 to arrLength do
    begin
        key := unsorted[i];
        j := i - 1;

        while ((j >= 0) AND (unsorted[j] > key)) do
        begin
            unsorted[j + 1] := unsorted[j];
            j := j - 1;
        end;
        unsorted[j + 1] := key;
    end;

    write('Insertion Sort: ');
    for i := 0 to arrLength - 1 do
    begin
        write(unsorted[i], ' ');
    end;
    writeln;
end;

procedure print();
var
    i: integer;
begin
    write('Quick Sort: ');
    for i := 0 to arrLength - 1 do
        Write(A[i], ' ');
    Writeln();
end;

function partition(start: integer; _end: integer):integer; 
var
    pivot, i, j, temp: integer;
begin
    pivot := A[(start + _end) div 2];
    i := start;
    j := _end;
    
    while i <= j do
    begin
        while A[i] < pivot do
            inc(i);
        while A[j] > pivot do
            dec(j);
        if i <= j then
        begin
            temp := A[i];
            A[i] := A[j];
            A[j] := temp;
            
            inc(i);
            dec(j);
        end;      
    end;
    
    partition := i;
end;

procedure qSort(start: integer; _end: integer);
var
    temp: integer;
begin
    if start < _end then
    begin
        temp := partition(start, _end);
        
        qSort(start, temp - 1);
        qSort(temp, _end);
    end;

end;


begin
    write('Input jumlah data: ');
    readln(arrLength);
    setlength(arr, arrLength);
    setlength(A, arrLength);
    for i := 0 to arrLength - 1 do
    begin
        write('Data ke-', i + 1, ': ');
        readln(arr[i]);
        A[i] := arr[i];
    end;
    selectionSort(arr);
    insertionSort(arr);
    bubbleSort(true);
    qSort(0, arrLength - 1);
    print();
end.

