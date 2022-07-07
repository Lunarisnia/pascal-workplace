program bubbleSort;

type
    SortedArray = array[0..2] of integer;

var
    i: integer;
    amount: integer;
    unsortedNum: array[0..2] of integer;
    sorted: SortedArray;
    query: integer;
    iStart, iEnd, cursor: integer;
    found: boolean = false;
    
function bubbleSort(unsorted: array of integer): SortedArray;
var
    lElement, rElement: integer;
    swapped: boolean = true;
begin
    while (swapped) do
    begin
        swapped := false;
        for i := 0 to amount do
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
    write('Data setelah diurutkan: ');
    for i := 0 to amount - 1 do
    begin
        write(unsorted[i], ' ');
    end;
    writeln;
    bubbleSort := unsorted;
end;

begin
    write('Jumlah data: ');
    readln(amount);

    for i := 0 to amount - 1 do
    begin
        write('Indeks [', i + 1 ,']',': ');
        readln(unsortedNum[i]);
    end;

    sorted := bubbleSort(unsortedNum);

    write('Cari: ');
    readln(query);

    writeln('Data yang dicari: ', query);
    iStart := 0;
    iEnd := 2;
    while (not found) and (iStart <= iEnd) do
    begin
        cursor := (iStart + iEnd) div 2;
        if (sorted[cursor] = query) then
        begin
            found := true; 
        end
        else if (sorted[cursor] < query) then
        begin
            iStart := cursor + 1;
        end
        else 
        begin
            iEnd := cursor - 1;
        end;
    end;

    if (found) then
    begin
        writeln('Ditemukan pada indeks ke-', cursor + 1);
    end
    else 
    begin
        writeln(query, ' tidak ditemukan didalam array.');    
    end;
end.