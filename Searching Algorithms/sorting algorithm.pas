program SortingAlgo;
type
    TAB = array [0..50] of integer; {define the list}
var
    T : TAB; 
    n, i: integer;

    procedure fill(var T:TAB; n:integer);
    {procedure to fill the list}
    begin
        for i:=1 to n do
        begin
            write('T[',i,'] = ');
            readln(T[i]);
        end;
    end;


    Function Max(T:TAB; i,n:integer):integer;
    {function take 3 arg : T type TAB => the array to do the process on
                   i var integer => the variable of where the no sorting part start
                   n var integer => taille of the array }
        var
        {local variable => inside the function}
        {maximum var integer => the maximum value in the array (no sorting part)}
        {index var integer => the index of maximum element in the array (no sorting part)}
        {j var integer => the counter of for loop}
                   maximum, index, j : integer;
        begin
        {the maximum variable take the first element in the array (no sorting part)
        and start to find the bigger element in this part}
        {for loop start from the var i => i is the index of first item in (no sorting part} 
                maximum := T[i];
        index := i; {here be carefull this statment is very important !}
                {if the index don't get the i as default value will get a bug in the program}
                {because there is a case when the next condition never come true.. that's the bug}
                for j:=i to n do
                        if T[j] > maximum then
                                begin
                                maximum := T[j];
                                index := j;
                                end;

                Max := index; {return the index of maximum item in the array (no sorting part)}
        end;
    
    procedure replace(var T:TAB; i, m:integer);
    {procedure to replace the value}
    var item : integer;
    begin
        item := T[i];
        T[i] := T[m];
        T[m] := item;
    end;


        procedure Sort(var T:TAB; n:integer);
    {procedure Sort => to change the item position in the array to sorted it in order}
    {item var integer => to put the variable change into - it's the one way to do that !}
    {m var integer => the return value from the Max function}
        var m : integer;
        begin
                for i:=1 to (n - 1) do
        begin
            m := Max(T, i, n);
            if m <> i then
                replace(T, i, m);
        end;
        end;

    procedure show(T:TAB; n:integer);
    {to show the sorted list}
    begin
    for i:=1 to n do
        write(T[i], ' | ');
    end;

begin

    writeln('Hi From Sort Algorithm');
    writeln();
    write('First well will fill an array of integer, please input the length of the array :  ');        readln(n);
    
    writeln();    
    writeln('Fill the list with integer element');
    fill(T, n);
    
    writeln('Let the process work...');
    Sort(T, n);

    writeln();
        writeln('And now I will show you the sorting array');

    show(T, n);

    writeln();

end.

  
