program bubbleSort;

var
    i: integer;
    unsortedNpm: array[0..12] of integer;
    unsortedName: array[0..11] of char;
    
procedure bubbleSort(unsorted: array of integer);
var
    lElement, rElement: integer;
    swapped: boolean = true;
begin
    while (swapped) do
    begin
        swapped := false;
        for i := 0 to 10 do
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
    write('NPM Anda Dengan Angka berurut: ');
    for i := 0 to 11 do
    begin
        write(unsorted[i], ' ');
    end;
    writeln;
end;

procedure bubbleSort(unsorted: array of char);
var
    lElement, rElement: char;
    swapped: boolean = true;
begin
    while (swapped) do
    begin
        swapped := false;
        for i := 0 to 9 do
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

    write('Nama Anda Dengan Alphabet berurut: ');
    for i := 0 to 10 do
    begin
        write(unsorted[i], ' ');
    end;
    writeln;
end;

begin
    for i := 0 to 11 do
    begin
        write('Masukan Digit NPM Anda yang ke-', i + 1, ': ');
        readln(unsortedNpm[i]);
    end;

    for i := 0 to 10 do
    begin
        write('Masukan Huruf Nama Anda yang ke-', i + 1, ': ');
        readln(unsortedName[i]);
    end;
    bubbleSort(unsortedNpm);
    bubbleSort(unsortedName);
end.