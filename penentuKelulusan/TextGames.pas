program TextGames;

var
    i: integer;

begin
   
    writeln('anda sedang berenang di sungai, tiba-tiba ada seekor buaya yang mengahampiri anda. apa yang akan adan lakukan? ');
    writeln('1. berenang sekenceng kenceng nya');
    writeln('2. menyerahkan diri menjadi santapan buaya');
    readln(jawaban);
    
     if(jawaban = 1) then
        begin
           writeln('Mungkin anda akan selamat');
        end
    else
        begin
            writeln('Anda hilang selama lamanya');
        end;
    readln;
end.