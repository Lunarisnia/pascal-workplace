program superOperational;
uses crt;

var
    a, b, c : Integer;
    d : real;

begin
    clrscr;
    a := 10 div 5 * 4 + 4 - 3;
    b := 5 * 10 div 2 - 13 + 7;
    c := (10 mod 3) + (5 * 3 + 3);
    d := 4.5 * (2 mod 2);
  
    writeln('a: ',a);
    writeln('b: ',b);
    writeln('c: ',c);
    writeln('d: ',d:2:0);
    readln;
end.