program insertionSort;

var
    ind: integer;
    unsortedNpm: array[0..12] of integer;
    
procedure insertionSort(unsorted: array of integer);
var
    i, j, key: integer;
begin
    for i := 0 to 11 do
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

    insertionSort(unsortedNpm);
end.