program uas1;

var 
    A: array of integer;
    arrLength, i: integer;

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

procedure print();
var
    i: integer;
begin
    for i := 0 to arrLength - 1 do
        write(A[i], ' ');
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
    write('Jumlah elemen array Data: '); readln(arrLength);
    setlength(A, arrLength);
    
    for i := 0 to arrLength - 1 do
    begin
        write('Data ke-', i + 1, ': ');
        readln(A[i]);
    end;

    writeln('Hasil pengurutan Quick Sort - Ascending:');
    writeln('===========================================');
    qSort(0, arrLength - 1);
    print();
end.