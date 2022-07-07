program nomor2;

var
    i, j: integer;
    matrix: array[0..2, 0..2] of integer;
    mat: array[0..2, 0..2] of integer;

begin
    for i := 0 to 2 do
    begin
        for j := 0 to 2 do
        begin
            matrix[i, j] := j;
            mat[i, j] := i;
        end;
    end;

    writeln(matrix + mat);
    for i := 0 to 2 do
    begin
        for j := 0 to 2 do
        begin
            write(matrix[i, j], ' ');
        end;
        writeln;
    end;
end.