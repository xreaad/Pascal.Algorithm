program TriBulles;
type 
	TAB = array [1..50] of integer;
var 
	T : TAB;
	n, i : integer;

	procedure remplir(var T:TAB; n:integer);
	begin 
		for i:=1 to n do
		begin
			write('T[',i,'] = ');
			readln(T[i]);
		end;
	end;
	
	
	procedure Affiche(T:TAB; n:integer);
	begin
		for i:=1 to n do
			write(T[i], ' | ');
	end;
	
