program beliMangga;

function mangoPrice(amount: integer): integer;
begin
    mangoPrice := amount * 2000;
end; 

procedure mangoSeller();
var 
    amountOfMango: integer;

begin
    write('How many Mango (2000/pcs) are you looking to buy? ');
    readln(amountOfMango);

    if(amountOfMango < 1) then
    begin
        writeln('I have no time for your jokes, go away!');
        exit;
    end;

    writeln('Thank you for purchasing ', amountOfMango, ' Mango! The total is ', mangoPrice(amountOfMango));
end;

begin
    mangoSeller();
end.