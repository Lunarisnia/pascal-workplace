program nomor3;

var
    i, j: integer;
    matrix: array[1..6, 1..6] of char;

begin
    for i := 1 to 5 do
    begin
        for j := 1 to 5 do
        begin
            if (((j + i) mod 2) = 0) then
            begin
                matrix[i, j] := 'X';
            end
            else 
            begin
                matrix[i, j] := 'O';
            end;
        end;
    end;
    
    for i := 1 to 5 do
    begin
        for j := 1 to 5 do
        begin
            write(matrix[i, j], ' ');
        end;
        writeln;
    end;
    
end.