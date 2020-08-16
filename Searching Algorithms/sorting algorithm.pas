{
Sorting Algorithm & Pascal Code
-------------------------------

Overview : 
    In computer science, a sorting algorithm is an algorithm that puts elements of a list in a certain order.
    The most frequently used orders are numerical order and lexicographical order.
    Efficient sorting is important for optimizing the efficiency of other algorithms (such as search and merge algorithms) that
    require input data to be in sorted lists.
    Sorting is also often useful for canonicalizing data and for producing human-readable output

The idea :
    In the list the item are not in order. This algorithm put the value in order, How it?
    First will find the max value in the list and replace it with the first value (if the max value is the first value we don't to do this step just skip)
    And now start check the list from the second index of the list and get the max value next change it with the second value in the list

     * Now we get a list with two phase (first phase is the sorting part and the other phase is the no sorting part of list)

    Next will start check the list from the first index of no sorting part and find the index of max value and replace it like the other operation ...

 

Process:
    - Goal => on end the program we need to sorting an list on order (from max to min).    

    1) we need a function to search the index of max value in the list
       this function take 3 argument : 1. list => it stored the value
                                       2. i     => the index of where start the no sorting part of list
                                       3. n     => the number of item in list

    2) we need a procedure to replace the element if the idex of max value and the first value in no sorting part in the list
        this procedure take 3 argument: 1. list
                                        2. i  => the index of the bad value
                                        3. m  => the index of the max value in the no sorting part

    3) we need a procedure sort to do the process into :
            - for loop to do the process step to step
            - get the index of max value in the no sorting part in the list
            - if the index of max value different to the index of the first index in the no sorting part in the list call the procedure replace 

        * the for loop of this procedure count to (n-1) because automaticly the last value in the list will be the min value and will get the last index

Algorithm :
    1) input the number of item in the list
    2) fill the list
    3) procedure sort
    4) show the sorted list



Enjoy guys !

}

program SortingAlgo;
uses wincrt;
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
    write('First well will fill an array of integer, please input the length of the array :  ');        
    readln(n);
    
    writeln();    
    writeln('Fill the list with integer element');
    fill(T, n);
    
    writeln('Let the processing work...');
    Sort(T, n);

    writeln();
        writeln('And now I will show you the sorting array');

    show(T, n);

    writeln();

end.
