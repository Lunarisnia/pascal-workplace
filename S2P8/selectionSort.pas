program selectionSort;

var
    ind: integer;
    unsortedNpm: array[0..12] of integer;
    
procedure selectionSort(unsorted: array of integer);
var
    i, j, minIdx, temp: integer;
begin
    for i := 0 to 10 do
    begin
        minIdx := i;
        for j := i + 1 to 11 do
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

    write('NPM Anda Dengan Angka berurut: ');
    for i := 0 to 11 do
    begin
        write(unsorted[i], ' ');
    end;
    writeln;
end;

begin
    for ind := 0 to 11 do
    begin
        write('Masukan Digit NPM Anda yang ke-', ind + 1, ': ');
        readln(unsortedNpm[ind]);
    end;

    selectionSort(unsortedNpm);
end.