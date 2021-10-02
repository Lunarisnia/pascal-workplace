program tempratureCalculator;

var
    kelvin:     real;
    celcius:    real;
    fahrenheit: real;
    reamur:     real;

begin
    write('Insert Celcius: ');
    readln(celcius);

    fahrenheit := (celcius * 1.8) + 32;
    writeln(celcius:2:1, ' Celcius is equal to ', fahrenheit:2:1, ' degree Fahrenheit');

    kelvin := celcius + 273.15;
    writeln(celcius:2:1, ' Celcius is equal to ', kelvin:2:1, ' degree Kelvin');

    reamur := (celcius * 4) / 5;
    writeln(celcius:2:1, ' Celcius is equal to ', reamur:2:1, ' degree Reamur');
end.