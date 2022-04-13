program nomor1;

var
    i, j: integer;
    matrix: array[0..5, 0..5] of char;

begin
    for i := 0 to 4 do
    begin
        for j := 0 to 4 do
        begin
            if (((i + 1) mod 2) = 0) then
            begin
                matrix[i, j] := 'O';
            end
            else 
            begin
                matrix[i, j] := 'X';
            end;
        end;
    end;
    
    for i := 0 to 4 do
    begin
        for j := 0 to 4 do
        begin
            write(matrix[i, j], ' ');
        end;
        writeln;
    end;
    
end.