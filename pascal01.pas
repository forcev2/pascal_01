Program Zadanie1_Sortowanie;
type
    vector = array [ 1..100] of integer;
var
    liczby: vector;
    length: integer;

procedure generateRandom();
var
    randomized, i: integer;

begin
    writeln('Randomized numbers BEFORE sorting:');
    for i:=1 to length do 

    begin
        randomized := random(100);
        Write(' ',randomized);
        liczby[i] := randomized;
    end;
    writeln(' ');
    writeln(' ');
end;

procedure sortArray();
var
    i, j, temp: integer;
begin

    for i:=1 to length do

    begin
        for j:=1 to length - i do

        begin
            IF ( liczby[j] > liczby[j + 1] ) THEN
            begin
                temp := liczby[j];
                liczby[j] := liczby[j+1];
                liczby[j+1] := temp;
            end;
        end;
    end;

    writeln('AFTER sorting:');

    for i:=1 to length do

    begin
        Write(' ', liczby[i]);
    end;

    writeln(' ');
    writeln(' ');

end;



Begin
    length := 100;
    generateRandom();
    sortArray();
End.