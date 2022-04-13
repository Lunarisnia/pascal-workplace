program nomor2;

var
    i, j: integer;
    matrix: array[0..5, 0..5] of char;

begin
    for i := 0 to 4 do
    begin
        for j := 4 downto 0 do
        begin
            matrix[i, j] := 'O';
            if (j = i) then
            begin
                matrix[i, j] := 'X'; 
            end
            else if (j < i) then
            begin
                matrix[i, j] := ' ';
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